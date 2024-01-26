import signal

import psutil
import os


def kill_proc_tree(
    proc_id: int,
    sig=signal.SIGTERM,
    include_parent=True,
    timeout=None,
    on_terminate=None,
):
    """
    杀死进程及其子进程
    :param proc_id:
    :param sig:
    :param include_parent:
    :param timeout:
    :param on_terminate:
    :return:
    """
    assert proc_id != os.getpid(), "won't kill myself"
    parent = psutil.Process(proc_id)
    children = parent.children(recursive=True)
    if include_parent:
        children.append(parent)
    for p in children:
        try:
            p.send_signal(sig)
        except psutil.NoSuchProcess:
            pass
    gone, alive = psutil.wait_procs(children, timeout=timeout, callback=on_terminate)
    return gone, alive


def open(path):
    """
    打开路径
    :param path:
    """
    if os.path.exists(path=path):
        os.startfile(path)


def set_env(key: str, value: str):
    """
    设置环境变量
    :param key:
    :param value:
    :return:
    """
    os.environ[key] = value


def get_env(key: str) -> str | None:
    """
    获取环境变量
    :param key:
    :return:
    """
    return os.getenv(key)


def del_env(key: str):
    """
    删除环境变量
    :param key:
    :return:
    """
    del os.environ[key]
