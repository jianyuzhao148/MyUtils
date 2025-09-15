import re

from ppadb.client import Client as AdbClient

"""
imgui
拆包和封包
logcat
"""

class ADBHelp:
    def __init__(self):
        self.__client = None

    def init(self, host="127.0.0.1", port=5037):
        self.__client = AdbClient(host, port)

    def get_devices(self) -> list:
        if not self.__client:
            print("")
        return self.__client.devices()

    def dump_logcat(self, device):
        def dump_logcat_by_line(connect):
            logcat_pattern = re.compile(
                r'^(?P<date>\d{2}-\d{2})\s(?P<time>\d{2}:\d{2}:\d{2}\.\d{3})\s+(?P<pid>\d+)\s+(?P<tid>\d+)\s+(?P<level>[VDIWEF])\s+(?P<tag>\S+):\s+(?P<message>.*)$'
            )

            file_obj = connect.socket.makefile(encoding="latin-1")
            while True:
                str_log = file_obj.readline()
                match = logcat_pattern.match(str_log)
                if match:
                    date = match.group('date')
                    time = match.group('time')
                    pid = match.group('pid')
                    tid = match.group('tid')
                    level = match.group('level')
                    tag = match.group('tag')
                    message = match.group('message')
                    print(
                        f"Date: {date}, Time: {time}, PID: {pid}, TID: {tid}, Level: {level}, Tag: {tag}, Message: {message}")
                else:
                    print(str_log)
            file_obj.close()
            connect.close()

        device.shell("logcat", handler=dump_logcat_by_line)


if __name__ == "__main__":
    adb = ADBHelp()
    adb.init()
    adb.dump_logcat(adb.get_devices()[0])