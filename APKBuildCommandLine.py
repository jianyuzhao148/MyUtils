"""
1) 升级版本号
"""

import os
import sys


def build(name):
    cur_dir = os.path.abspath(__file__).rsplit("/", 1)[0]
    channel_dir = os.path.join(cur_dir, name)
    if os.path.exists(channel_dir):
        os.chdir(channel_dir)
        if sys.platform == "win32":
            if not os.path.isfile("gradlew.bat"):
                print("win32环境下没有可用的gradlew.bat文件!")
                return
            else:
                os.system("./gradlew.bat assemblerelease")
        else:
            if not os.path.isfile("gradlew"):
                print("没有可用的gradlew文件!")
                return
            else:
                os.system("./gradlew assemblerelease")
    else:
        print("当前文件夹中没有指定的渠道!")
        return
    os.startfile(r"app\build\outputs\apk\release")


if __name__ == "__main__":
    build("gk")