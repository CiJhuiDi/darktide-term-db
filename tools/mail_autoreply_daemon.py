# -*- coding: utf-8 -*-
"""报名邮件即时自动回复守护进程
- 优先 IMAP IDLE(新邮件即时唤醒), 不支持则回落 60s 轮询
- 新邮件到达 → autoreply(关键词匹配+按地址去重+自动回信)
- 日志: reviews/autoreply_daemon.log
"""
import email, os, sys, time, io, json, datetime, traceback

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(BASE, 'tools'))
REVIEWS = os.path.join(BASE, 'reviews')
LOG = os.path.join(REVIEWS, 'autoreply_daemon.log')

def log(msg):
    line = '[%s] %s' % (datetime.datetime.now().strftime('%m-%d %H:%M:%S'), msg)
    with io.open(LOG, 'a', encoding='utf-8') as f:
        f.write(line + '\n')
    print(line, flush=True)

def cfg():
    with io.open(os.path.join(REVIEWS, '.mail_config.json'), encoding='utf-8') as f:
        return json.load(f)

def run_autoreply():
    """跑一次 autoreply, 返回新回复数"""
    try:
        import mail_review
        c = cfg()
        attach = [
            os.path.join(BASE, 'reviews', '校对清单_20260818.csv'),
            os.path.join(BASE, 'demo', 'index.html'),
        ]
        attach = [a for a in attach if os.path.exists(a)]
        uniq = mail_review.collect_signups(c, keyword=['我想参与', '参与校对', '帮忙看看'], days=3, output=None)
        replied_file = os.path.join(REVIEWS, '.replied_emails.txt')
        replied = set()
        if os.path.exists(replied_file):
            with open(replied_file, encoding='utf-8') as f:
                replied = set(l.strip().lower() for l in f if l.strip())
        new = [u for u in uniq if u['addr'].lower() not in replied]
        for u in new:
            mail_review.send(c, u['addr'], subject='暗潮术语库词条体检表(demo+清单)', attach=attach)
            replied.add(u['addr'].lower())
            with open(replied_file, 'w', encoding='utf-8') as f:
                f.write('\n'.join(sorted(replied)))
            log('✅ 已自动回复: %s (%s)' % (u['addr'], u['name']))
        return len(new)
    except Exception:
        log('autoreply 异常: ' + traceback.format_exc().splitlines()[-1])
        return 0

def watch():
    from imapclient import IMAPClient
    c = cfg()
    while True:
        client = None
        try:
            client = IMAPClient('imap.qq.com', ssl=True, timeout=600)
            client.login(c['user'], c['auth_code'])
            client.select_folder('INBOX')
            log('已连接, IDLE 监听模式(7.5分钟自动续连)')
            while True:
                try:
                    client.idle()
                    responses = client.idle_check(timeout=450)  # 7.5min, 服务器踢之前续
                    client.idle_done()
                    if responses:
                        log('收到新邮件通知 %s, 检查报名...' % responses)
                        run_autoreply()
                except Exception as e:
                    log('IDLE 异常(%s), 5s 后重连' % e)
                    try:
                        client.idle_done()
                    except Exception:
                        pass
                    time.sleep(5)
                    break  # 跳出内层循环 -> 外层重连
        except Exception:
            log('连接异常: ' + traceback.format_exc().splitlines()[-1])
            log('30s 后重连...')
            time.sleep(30)
        finally:
            if client:
                try:
                    client.logout()
                except Exception:
                    pass

if __name__ == '__main__':
    log('===== 守护进程启动 =====')
    watch()
