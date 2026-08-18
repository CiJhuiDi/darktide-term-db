# -*- coding: utf-8 -*-
"""校对表邮件收发工具(QQ 邮箱 IMAP/SMTP)
- 收: 拉取邮箱中附件名为 校对_*.csv 的邮件附件, 存到 reviews/
- 发: 发送校对清单给指定邮箱(可选, 校对者不固定时可由用户自行发送)
用法:
  python tools/mail_review.py fetch [--days 7] [--merge]   # 收件(近N天, 默认7)
  python tools/mail_review.py fetch --all                  # 收件(全部邮件)
  python tools/mail_review.py send <收件人> [--attach 文件] # 发信
  python tools/mail_review.py send_batch <邮箱列表.txt> [--attach 清单] [--delay 秒]  # 批量发信
  python tools/mail_review.py signups [--keyword 参与校对] [--days 7] [--output 文件]  # 收集报名邮件→邮箱列表
  python tools/mail_review.py autoreply [--keyword 参与校对] [--days 7] [--attach 清单 demo] [--dry-run]  # 自动回复报名邮件
配置: reviews/.mail_config.json (已 gitignore)
  {"user": "xxx@qq.com", "auth_code": "IMAP/SMTP授权码"}
首次使用: 需在 QQ 邮箱设置→账户→开启 IMAP/SMTP 服务并生成授权码
"""
import imaplib, email, os, sys, json, argparse
from email.header import decode_header
from email.utils import parsedate_to_datetime
sys.stdout.reconfigure(encoding='utf-8', errors='replace')

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
REVIEWS = os.path.join(BASE, 'reviews')
CONFIG = os.path.join(REVIEWS, '.mail_config.json')

IMAP_HOST = 'imap.qq.com'
IMAP_PORT = 993
SMTP_HOST = 'smtp.qq.com'
SMTP_PORT = 465

# 常用邮箱服务商(配置里 host 可覆盖)
SERVICES = {
    'qq': {'imap': ('imap.qq.com', 993), 'smtp': ('smtp.qq.com', 465)},
    '163': {'imap': ('imap.163.com', 993), 'smtp': ('smtp.163.com', 465)},
    '126': {'imap': ('imap.126.com', 993), 'smtp': ('smtp.126.com', 465)},
    'outlook': {'imap': ('outlook.office365.com', 993), 'smtp': ('smtp.office365.com', 587)},
}


def _imap_host_port(cfg):
    svc = cfg.get('service', 'qq')
    if svc in SERVICES:
        return SERVICES[svc]['imap']
    return (cfg.get('imap_host', IMAP_HOST), cfg.get('imap_port', IMAP_PORT))


def _smtp_host_port(cfg):
    svc = cfg.get('service', 'qq')
    if svc in SERVICES:
        return SERVICES[svc]['smtp']
    return (cfg.get('smtp_host', SMTP_HOST), cfg.get('smtp_port', SMTP_PORT))

# 附件名匹配模式(校对者填写的校对表)
ATTACH_PREFIX = '校对_'
ATTACH_SUFFIX = '.csv'


def load_config():
    if not os.path.exists(CONFIG):
        print('!! 未找到配置', CONFIG)
        print('   创建并填写: {"user": "你的QQ邮箱", "auth_code": "IMAP/SMTP授权码"}')
        sys.exit(1)
    cfg = json.load(io_open(CONFIG))
    if not cfg.get('user') or not cfg.get('auth_code'):
        print('!! 配置缺少 user 或 auth_code')
        sys.exit(1)
    return cfg


def io_open(p, mode='r'):
    return open(p, mode, encoding='utf-8')


def decode_mime(s):
    if not s:
        return ''
    parts = decode_header(s)
    out = []
    for text, charset in parts:
        if isinstance(text, bytes):
            out.append(text.decode(charset or 'utf-8', errors='replace'))
        else:
            out.append(text)
    return ''.join(out)


def fetch(cfg, days=None, all_mail=False, do_merge=False):
    os.makedirs(REVIEWS, exist_ok=True)
    host, port = _imap_host_port(cfg)
    print('连接', host, '...')
    M = imaplib.IMAP4_SSL(host, port)
    M.login(cfg['user'], cfg['auth_code'])
    M.select('INBOX')

    # 搜索策略: 全部(或按日期过滤, 再按附件名过滤)
    if all_mail:
        typ, data = M.search(None, 'ALL')
    else:
        days = days or 7
        typ, data = M.search(None, f'(SINCE "{_date_days_ago(days)}")')
    ids = data[0].split() if typ == 'OK' and data[0] else []
    print(f'候选邮件 {len(ids)} 封(近{days}天)' if not all_mail else f'候选邮件 {len(ids)} 封(全部)')

    saved = []
    skipped = []
    for num in reversed(ids):  # 旧的在前, 反序处理最新的在前
        try:
            typ, msg_data = M.fetch(num, '(RFC822)')
            msg = email.message_from_bytes(msg_data[0][1])
            subject = decode_mime(msg.get('Subject'))
            from_ = decode_mime(msg.get('From'))
            date = parsedate_to_datetime(msg.get('Date')) if msg.get('Date') else None
            for part in msg.walk():
                if part.get_content_maintype() != 'multipart' and part.get_filename():
                    fname = decode_mime(part.get_filename())
                    if fname.startswith(ATTACH_PREFIX) and fname.endswith(ATTACH_SUFFIX):
                        dest = os.path.join(REVIEWS, fname)
                        data_bytes = part.get_payload(decode=True)
                        if not data_bytes:
                            skipped.append((fname, '附件内容为空'))
                            continue
                        if os.path.exists(dest):
                            # 已存在: 对比内容, 相同跳过, 不同加时间戳
                            with open(dest, 'rb') as f:
                                if f.read() == data_bytes:
                                    skipped.append((fname, '已存在且内容相同'))
                                    continue
                            stamp = date.strftime('%Y%m%d_%H%M%S') if date else 'dup'
                            dest = os.path.join(REVIEWS, fname.replace('.csv', f'_{stamp}.csv'))
                        with open(dest, 'wb') as f:
                            f.write(data_bytes)
                        saved.append((fname, dest, subject, from_))
        except Exception as e:
            skipped.append(('?', f'解析失败: {e}'))

    print('\n===== 收到的校对表 =====')
    for fname, dest, subject, from_ in saved:
        print(f'  ✅ {fname} <- {from_[:40]} | {subject[:30]}')
        print(f'     存到 {os.path.relpath(dest, BASE)}')
    if not saved:
        print('  (无新校对表)')
    if skipped:
        print('\n跳过:')
        for fname, why in skipped:
            print(f'  - {fname}: {why}')
    M.logout()

    if do_merge and saved:
        merge_py = os.path.join(BASE, 'tools', 'merge_review.py')
        if os.path.exists(merge_py):
            print('\n调用 merge_review.py ...')
            os.system(f'python "{merge_py}"')
    return saved


def _date_days_ago(days):
    from datetime import date, timedelta
    return (date.today() - timedelta(days=days)).strftime('%d-%b-%Y')


def send(cfg, to_addr, subject='暗潮术语库校对清单', attach=None, body=None):
    import smtplib
    from email.mime.multipart import MIMEMultipart
    from email.mime.text import MIMEText
    from email.mime.application import MIMEApplication
    from email.header import Header
    if attach and isinstance(attach, str):
        attach = [attach]
    attach = attach or []
    if body is None:
        body = ('你好!感谢参与暗潮术语库校对。\n\n'
                '【附件1 校对清单】174条术语, Excel/WPS 可直接打开。填写方法:\n'
                '- 状态列: ✅已校对 / ❓有异议 / ⚠️争议\n'
                '- 验证方式: 🅰️游戏文件 / 🅱️实测 / 🅲️社区\n'
                '- 有争议的词条双方意见都保留, 我会查证定夺\n'
                '填完后保存文件, 重命名为 **校对_你的昵称.csv**, 直接回复本邮件即可, 我会自动收取合并。\n\n'
                '【附件2 术语库演示页 demo/index.html】\n'
                '这是暗潮机制术语库的可视化页面(97个词条: 伤害/防御/攻击/装备/敌人/任务词条/状态), 用来预览词条效果、校对前先了解全貌。\n'
                '- **打开方式**: 双击文件用浏览器打开即可, 无需联网/安装(数据内嵌在文件里)\n'
                '- **功能**: 左侧分类浏览、顶部搜索(支持中文/英文/拼音)、点击词条看详情、关联术语可点击跳转、Boss招式悬停看说明\n'
                '- 校对时可以先浏览一遍, 对术语背景有数; 发现 demo 里的错误也可以直接写进校对表意见列\n\n'
                '感谢贡献!——暗潮术语库项目')
    msg = MIMEMultipart()
    msg['From'] = cfg['user']
    msg['To'] = to_addr
    msg['Subject'] = Header(subject, 'utf-8')
    msg.attach(MIMEText(body, 'plain', 'utf-8'))
    if attach:
        for a in attach:
            fname = os.path.basename(a)
            with open(a, 'rb') as f:
                part = MIMEApplication(f.read())
            part.add_header('Content-Disposition', 'attachment', filename=('utf-8', '', fname))
            msg.attach(part)
    print('发送到', to_addr, '...')
    h, p = _smtp_host_port(cfg)
    with smtplib.SMTP_SSL(h, p) as smtp:
        smtp.login(cfg['user'], cfg['auth_code'])
        smtp.send_message(msg)
    print('✅ 已发送')


def collect_signups(cfg, keyword='参与校对', days=7, output=None):
    """收集报名邮件: 搜索主题/正文含关键词的邮件, 提取发件人邮箱, 输出去重列表"""
    import re as _re
    output = output or os.path.join(REVIEWS, 'player_emails.txt')
    host, port = _imap_host_port(cfg)
    print('连接', host, '...')
    M = imaplib.IMAP4_SSL(host, port)
    M.login(cfg['user'], cfg['auth_code'])
    M.select('INBOX')
    since = _date_days_ago(days)
    typ, data = M.search(None, f'(SINCE "{since}")')
    ids = data[0].split() if typ == 'OK' and data[0] else []
    print(f'近{days}天邮件 {len(ids)} 封, 搜索关键词「{keyword}」...')

    found = []
    for num in reversed(ids):
        try:
            typ, msg_data = M.fetch(num, '(RFC822)')
            msg = email.message_from_bytes(msg_data[0][1])
            subject = decode_mime(msg.get('Subject')) or ''
            from_ = decode_mime(msg.get('From')) or ''
            # 正文(纯文本部分)
            body = ''
            for part in msg.walk():
                if part.get_content_type() == 'text/plain':
                    try:
                        body = part.get_payload(decode=True).decode(part.get_content_charset() or 'utf-8', errors='replace')
                    except Exception:
                        pass
                    break
            if keyword in subject or keyword in body:
                m = _re.search(r'[\w.+-]+@[\w-]+\.[\w.]+', from_)
                addr = m.group(0) if m else None
                if addr:
                    # 昵称: From 显示名
                    name = _re.split(r'[<>]', from_)[0].strip().strip('"\'')
                    found.append({'addr': addr, 'name': name, 'subject': subject})
        except Exception:
            pass
    M.logout()

    # 去重(按地址)
    seen = set()
    uniq = []
    for f in found:
        if f['addr'].lower() not in seen:
            seen.add(f['addr'].lower())
            uniq.append(f)

    print(f'\n报名 {len(uniq)} 人:')
    with open(output, 'w', encoding='utf-8') as fh:
        for u in uniq:
            print(f'  {u["addr"]}  ({u["name"]})  [{u["subject"][:20]}]')
            fh.write(u['addr'] + '\n')
    print(f'\n已写入 {output} (可直接用于 send_batch)')
    return uniq


def autoreply(cfg, keyword='参与校对', days=7, attach=None, dry_run=False):
    """自动回复报名邮件: 找含关键词的报名邮件, 给新发件人自动发送清单+demo(按地址去重, 防重复轰炸)"""
    uniq = collect_signups(cfg, keyword=keyword, days=days, output=None)
    replied_file = os.path.join(REVIEWS, '.replied_emails.txt')
    replied = set()
    if os.path.exists(replied_file):
        with open(replied_file, encoding='utf-8') as f:
            replied = set(line.strip().lower() for line in f if line.strip())
    new = [u for u in uniq if u['addr'].lower() not in replied]
    print(f'\n新报名 {len(new)} 人(已回复过 {len(uniq) - len(new)})')
    if dry_run:
        for u in new:
            print('  [试跑] 将发送 ->', u['addr'], '(', u['name'], ')')
        print('试跑模式, 未实际发送')
        return
    ok = 0
    for u in new:
        try:
            send(cfg, u['addr'], subject='暗潮术语库校对清单(demo+清单)', attach=attach)
            replied.add(u['addr'].lower())
            with open(replied_file, 'w', encoding='utf-8') as f:
                f.write('\n'.join(sorted(replied)))
            ok += 1
            print('  ✅', u['addr'])
        except Exception as e:
            print('  !!', u['addr'], '发送失败:', e)
    print(f'完成: 发送 {ok}, 失败 {len(new) - ok}')


def send_batch(cfg, addr_file, attach=None, delay=5, subject='暗潮术语库校对清单'):
    """批量发送: 读邮箱列表文件(每行一个), 逐个发送, 间隔 delay 秒防限流"""
    import time
    if not os.path.exists(addr_file):
        print('!! 邮箱列表不存在:', addr_file)
        sys.exit(1)
    with open(addr_file, encoding='utf-8') as f:
        addrs = [line.strip() for line in f if line.strip() and not line.strip().startswith('#')]
    print(f'待发送 {len(addrs)} 个邮箱, 间隔 {delay}s (预计 {(len(addrs)-1)*delay}s)')
    ok, fail = 0, []
    for i, addr in enumerate(addrs):
        try:
            send(cfg, addr, subject=subject, attach=attach)
            ok += 1
        except Exception as e:
            fail.append((addr, str(e)))
            print(f'  !! {addr} 发送失败: {e}')
        if i < len(addrs) - 1:
            time.sleep(delay)
    print(f'\n完成: 成功 {ok}, 失败 {len(fail)}')
    for addr, err in fail:
        print(f'  - {addr}: {err}')
    if fail:
        print('\n失败的地址可重试(QQ 邮箱有频率限制, 建议单批 ≤30 封、间隔 ≥5s)')


if __name__ == '__main__':
    ap = argparse.ArgumentParser(description='校对表邮件收发')
    sub = ap.add_subparsers(dest='cmd', required=True)
    p1 = sub.add_parser('fetch', help='收校对表附件')
    p1.add_argument('--days', type=int, default=7, help='近N天(默认7)')
    p1.add_argument('--all', action='store_true', help='全部邮件')
    p1.add_argument('--merge', action='store_true', help='收完自动合并')
    p2 = sub.add_parser('send', help='发校对清单')
    p2.add_argument('to', help='收件人邮箱')
    p2.add_argument('--attach', action='append', help='附件(可多次指定)')
    p2.add_argument('--subject', default='暗潮术语库校对清单')
    p3 = sub.add_parser('send_batch', help='批量发校对清单(读邮箱列表文件)')
    p3.add_argument('addrs', help='邮箱列表文件(每行一个, # 注释)')
    p3.add_argument('--attach', action='append', help='附件(可多次指定)')
    p3.add_argument('--delay', type=int, default=5, help='间隔秒(默认5, 防限流)')
    p3.add_argument('--subject', default='暗潮术语库校对清单')
    p4 = sub.add_parser('signups', help='收集报名邮件→邮箱列表')
    p4.add_argument('--keyword', default='参与校对', help='邮件主题/正文关键词(默认:参与校对)')
    p4.add_argument('--days', type=int, default=7, help='近N天(默认7)')
    p4.add_argument('--output', help='输出邮箱列表文件(默认 reviews/player_emails.txt)')
    p5 = sub.add_parser('autoreply', help='自动回复报名邮件(发清单+demo, 按地址去重)')
    p5.add_argument('--keyword', default='参与校对')
    p5.add_argument('--days', type=int, default=7)
    p5.add_argument('--attach', action='append', help='附件(可多次: 清单+demo)')
    p5.add_argument('--dry-run', action='store_true', help='试跑(只列出将发送的, 不实际发送)')
    args = ap.parse_args()

    cfg = load_config()
    if args.cmd == 'fetch':
        fetch(cfg, days=args.days, all_mail=args.all, do_merge=args.merge)
    elif args.cmd == 'send':
        send(cfg, args.to, subject=args.subject, attach=args.attach)
    elif args.cmd == 'send_batch':
        send_batch(cfg, args.addrs, attach=args.attach, delay=args.delay, subject=args.subject)
    elif args.cmd == 'signups':
        collect_signups(cfg, keyword=args.keyword, days=args.days, output=args.output)
    elif args.cmd == 'autoreply':
        autoreply(cfg, keyword=args.keyword, days=args.days, attach=args.attach, dry_run=args.dry_run)
