import subprocess

UNKNOWN = 'UNKNOWN'
UP = 'UP'
DOWN = 'DOWN'
BRING_UP_VPN_CMD = '/Users/dan/bin/vpn'


def get_vpn_state():
    stdout, stderr = (
        subprocess.Popen(['scutil', '--nc', 'status', 'Counsyl VPN'],
                         stdout=subprocess.PIPE,
                         stderr=subprocess.PIPE)
        .communicate())
    assert not stderr
    return UP if stdout.startswith('Connected') else DOWN


def notify(state):
    subprocess.check_call([
        'terminal-notifier',
        '-title', 'VPN alert',
        '-message', 'VPN is %s' % state,
        '-execute', BRING_UP_VPN_CMD,
    ])


def bring_up_vpn():
    subprocess.check_call([BRING_UP_VPN_CMD])


def sleep():
    subprocess.check_call(['sleep', '2'])


def notify_if_vpn_has_gone_down():
    state = UNKNOWN
    while True:
        last_known_state, state = state, get_vpn_state()
        if last_known_state != state:
            print "%s -> %s" % (last_known_state, state)
            if state == DOWN:
                bring_up_vpn()
        sleep()


if __name__ == '__main__':
    notify_if_vpn_has_gone_down()
