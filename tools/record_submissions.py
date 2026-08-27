# -*- coding: utf-8 -*-
"""玩家提交建库: 扫描 reviews/校对_<名字>.csv -> player_submissions.json(幂等, 按文件mtime更新)
用法: python tools/record_submissions.py
"""
import io, csv, os, sys, glob, json, datetime, collections
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REVIEWS = os.path.join(BASE, 'reviews')
DB = os.path.join(REVIEWS, 'player_submissions.json')


# ---- 容错分类(emoji+文字+错字) 2026-08-18 ----
_DISPUTE_KEYS = ['⚠', '争议', '不确定', '待定', '待确认', '没把握', '难说', '存疑', '说不准', '争异', '待议']
_MISSING_KEYS = ['➕', '缺失', '未收录', '没收录', '缺少', '漏收', '建议增加', '建议收录']
_DISAGREE_KEYS = ['❓', '异议', '疑问', '有问', '不对', '错误', '不符', '有导', '异意', '有义', '疑异']
_DONE_KEYS = ['✅', '已校', '完成', '校完', '校对完', 'done', 'ok', 'OK', 'Ok', '✓', '✔', '对']

def classify_status(s):
    s = (s or '').strip()
    if not s or s in ('待校对', '待校', '未校'):
        return None
    for k in _MISSING_KEYS:
        if k in s:
            return 'missing'
    for k in _DISPUTE_KEYS:
        if k in s:
            return 'dispute'
    for k in _DISAGREE_KEYS:
        if k in s:
            return 'disagree'
    for k in _DONE_KEYS:
        if k in s:
            return 'done'
    return 'unknown'

def classify_verify(s):
    s = (s or '').strip()
    if not s:
        return None
    if '🅰' in s or '游戏文件' in s or '文件' in s or s.strip().lower() in ('a', '游戏'):
        return 'game'
    if '🅱' in s or '实测' in s or '实侧' in s or s.strip().lower() in ('b', '实测'):
        return 'test'
    if '🅲' in s or '社区' in s or s.strip().lower() in ('c',):
        return 'community'
    return 'unknown'

def read_csv(path):
    rows = []
    try:
        with io.open(path, encoding='utf-8-sig', newline='') as f:
            r = csv.reader(f)
            next(r, None)
            for row in r:
                if row and any(c.strip() for c in row):
                    rows.append(row)
    except Exception as e:
        print('  !! 读取失败 %s: %s' % (path, e))
    return rows

def load_db():
    if os.path.exists(DB):
        try:
            with io.open(DB, encoding='utf-8') as f:
                return json.load(f)
        except Exception:
            pass
    return {'players': {}, 'term_stats': {}, 'files': {}, 'updated': ''}

def save_db(db):
    db['updated'] = datetime.datetime.now().strftime('%Y-%m-%dT%H:%M:%S')
    with io.open(DB, 'w', encoding='utf-8') as f:
        json.dump(db, f, ensure_ascii=False, indent=1)

def main():
    db = load_db()
    files = sorted(glob.glob(os.path.join(REVIEWS, '校对_*.csv')))
    if not files:
        print('没有玩家提交文件(reviews/校对_<名字>.csv)')
        return
    new_cnt = 0
    for fp in files:
        fname = os.path.basename(fp)
        mtime = os.path.getmtime(fp)
        # 去重: 文件+mtime 已入库则跳过
        if db['files'].get(fname) == mtime:
            continue
        rows = read_csv(fp)
        # 跳过模板行(状态默认待校对且无意见)
        valid = []
        for row in rows:
            if len(row) < 7:
                continue
            if '示例' in (row[0] or '') or '示例' in (row[1] or ''):
                continue
            status = (row[6] or '').strip()
            opinion = (row[7] or '').strip()
            if classify_status(status) is None and not opinion:
                continue
            valid.append(row)
        reviewer = fname.replace('校对_', '').replace('.csv', '')
        done = sum(1 for r in valid if classify_status(r[6]) == 'done')
        disagree = sum(1 for r in valid if classify_status(r[6]) == 'disagree')
        dispute = sum(1 for r in valid if classify_status(r[6]) == 'dispute')
        verify = collections.Counter()
        terms = []
        for r in valid:
            v = (r[8] or '').strip()
            cv = classify_verify(v)
            if cv:
                verify[cv] += 1
            tname = (r[1] or '').strip()
            if tname and tname not in terms:
                terms.append(tname)
        sub = {'date': datetime.date.today().strftime('%Y-%m-%d'), 'file': fname,
               'rows': len(valid), 'done': done, 'disagree': disagree, 'dispute': dispute,
               'verify': dict(verify), 'terms': terms}
        # 入库
        players = db['players']
        if reviewer not in players:
            players[reviewer] = {'first_seen': sub['date'], 'submissions': []}
        players[reviewer]['submissions'].append(sub)
        players[reviewer]['total_rows'] = sum(s['rows'] for s in players[reviewer]['submissions'])
        # 词条统计
        for tname in terms:
            ts = db['term_stats'].setdefault(tname, {'times': 0, 'done': 0, 'disagree': 0, 'dispute': 0, 'reviewers': []})
            ts['times'] += 1
            if reviewer not in ts['reviewers']:
                ts['reviewers'].append(reviewer)
        for r in valid:
            tname = (r[1] or '').strip()
            if not tname:
                continue
            ts = db['term_stats'].setdefault(tname, {'times': 0, 'done': 0, 'disagree': 0, 'dispute': 0, 'reviewers': []})
            cs = classify_status(r[6])
            if cs == 'done':
                ts['done'] += 1
            if cs == 'disagree':
                ts['disagree'] += 1
            if cs == 'dispute':
                ts['dispute'] += 1
        db['files'][fname] = mtime
        new_cnt += 1
        print('已入库: %s (%s 条, 完成%s/异议%s/争议%s)' % (fname, len(valid), done, disagree, dispute))
    save_db(db)
    print('\n玩家数: %d | 词条覆盖: %d | 本次新增/更新: %d 个文件' % (len(db['players']), len(db['term_stats']), new_cnt))
    print('库文件: %s' % DB)

if __name__ == '__main__':
    main()
