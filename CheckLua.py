import os
import subprocess
import sys

# 路径，可以是文件和文件夹
path = "D:\\LOVietnamese\\config\\packet\\client\\data"
# 检索文件夹时，设置被检查文件后缀
include_file = ["lua", "config"]


def ERROR(msg):
    print("\033[31m{0}\033[0m".format(msg))


def INFO(msg):
    print("\033[32m{0}\033[0m".format(msg))


def check_lua(file_path):
    INFO("Check:" + os.path.basename(file_path))
    child_process = subprocess.Popen("luac -p {}".format(file_path), shell=True,
                                     stdout=subprocess.PIPE)
    error_msg = ""
    for line in iter(child_process.stdout.readline, b''):
        error_msg = error_msg + line.strip().decode("GB2312")
    if child_process.wait() == 0:
        INFO("OK")
        ERROR("ERROR:{}".format(error_msg))


if __name__ == "__main__":
    assert sys.version_info[0] == 3, "当前环境为Python{}.{},请安装Python3后重试".format(sys.version_info[0],
                                                                                        sys.version_info[1])
    if os.path.isfile(path):
        check_lua(path)
    elif os.path.isdir(path):
        for root, dirs, files in os.walk(path):
            for file in files:
                if file.split(".")[-1] in include_file:
                    check_lua(os.path.join(root, file))
    input("输入任意键继续..")