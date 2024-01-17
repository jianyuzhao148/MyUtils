def ASSERT(msg):
    print("\033[30m{0}\033[0m".format(msg))


def ERROR(msg):
    print("\033[31m{0}\033[0m".format(msg))


def INFO(msg):
    print("\033[32m{0}\033[0m".format(msg))


def WARN(msg):
    print("\033[33m{0}\033[0m".format(msg))


def DEBUG(msg):
    print("\033[34m{0}\033[0m".format(msg))


def VERBOSE(msg):
    print(msg)
