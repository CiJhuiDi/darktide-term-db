# -*- coding: utf-8 -*-
"""mail_autoreply_daemon watchdog
由 Windows 计划任务每 N 分钟调用一次:
  1. 检查 mail_autoreply_daemon.py 进程是否在跑
  2. 不在 -> 隐藏窗口拉起, 等 8s 确认
  3. 拉起成功后补跑一次 autoreply(days=7, 去重), 收掉进程死亡期间漏掉的报名
日志: reviews/mail_watchdog.log
"""
import subprocess, sys, os, time, io, datetime, traceback

BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(BASE, 'tools'))
REVIEWS = os.path.join(BASE, 'reviews')
LOG = os.path.join(REVIEWS, 'mail_watchdog.log')
PYEXE = r'C:\Users\123\AppData\Local\Programs\Python\Python312\python.exe'
DAEMON = os.path.join(BASE, 'tools', 'mail_autoreply_daemon.py')


def log(msg):
    line = '[%s] %s' % (datetime.datetime.now().strftime('%m-%d %H:%M:%S'), msg)
    with io.open(LOG, 'a', encoding='utf-8') as f:
        f.write(line + '\n')
    if sys.stdout is not None:  # pythonw 下 stdout 为 None，print 会崩
        print(line, flush=True)


def daemon_alive():
    """查命令行里带 mail_autoreply_daemon.py 的 python 进程"""
    ps = '(Get-CimInstance Win32_Process -Filter "Name=\'python.exe\' or Name=\'pythonw.exe\'").CommandLine'
    try:
        out = subprocess.run(['powershell', '-NoProfile', '-Command', ps],
                             capture_output=True, text=True, timeout=30,
                             creationflags=0x08000000)  # CREATE_NO_WINDOW：防止从 pythonw 拉起时闪黑框（2026-08-22 修复）
    except Exception:
        return False
    for line in (out.stdout or '').splitlines():
        if 'mail_autoreply_daemon.py' in line:
            return True
    return False


def catchup_reply():
    """补收: 近7天报名邮件, 对未回复的补发清单+demo(与守护进程同一去重名单)"""
    import mail_review
    cfg = mail_review.load_config()
    attach = [
        os.path.join(REVIEWS, '校对清单_20260818.csv'),
        os.path.join(BASE, 'demo', 'index.html'),
    ]
    attach = [a for a in attach if os.path.exists(a)]
    uniq = mail_review.collect_signups(cfg, keyword=['我想参与', '参与校对', '帮忙看看'], days=7, output=None)
    replied_file = os.path.join(REVIEWS, '.replied_emails.txt')
    replied = set()
    if os.path.exists(replied_file):
        with open(replied_file, encoding='utf-8') as f:
            replied = set(l.strip().lower() for l in f if l.strip())
    new = [u for u in uniq if u['addr'].lower() not in replied]
    n = 0
    for u in new:
        try:
            mail_review.send(cfg, u['addr'], subject='暗潮术语库校对清单(demo+清单)', attach=attach)
            replied.add(u['addr'].lower())
            with open(replied_file, 'w', encoding='utf-8') as f:
                f.write('\n'.join(sorted(replied)))
            n += 1
        except Exception as e:
            log('!! 发送失败 %s: %s' % (u['addr'], e))
    return n


def main():
    if daemon_alive():
        log('守护进程在跑, 无需动作')
        return
    log('守护进程不在, 拉起...')
    subprocess.Popen([PYEXE, DAEMON], creationflags=0x08000000)  # CREATE_NO_WINDOW
    time.sleep(8)
    if not daemon_alive():
        log('!! 拉起失败(8s 内未见进程), 等待下轮重试')
        return
    log('已拉起, 补跑 autoreply 收漏报')
    try:
        n = catchup_reply()
        log('补收完成, 新回复 %d 封' % n)
    except Exception:
        log('补收异常: ' + traceback.format_exc().splitlines()[-1])


if __name__ == '__main__':
    main()
