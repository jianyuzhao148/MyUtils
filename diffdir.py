import os
import shutil
import sys
from filecmp import cmp


def compare_directories(dir1, dir2, diffCall, notfindCall):
    # 检查目录是否存在
    if not os.path.exists(dir1) or not os.path.exists(dir2):
        print(f"目录不存在: {dir1} 或 {dir2}")
        return

    # 遍历目录1中的所有文件和子目录
    for root, dirs, files in os.walk(dir1):
        # 计算相对路径，用于匹配目录2中的相同路径
        relative_path = os.path.relpath(root, dir1)
        dir2_path = os.path.join(dir2, relative_path)

        # 对比文件
        for file in files:
            file1_path = os.path.join(root, file)
            file2_path = os.path.join(dir2_path, file)

            if os.path.isfile(file2_path):
                if cmp(file1_path, file2_path):
                    # print(f"文件一致: {file1_path} {file2_path}")
                    pass
                else:
                    # print(f"code -d {file1_path} {file2_path}")
                    print(f"文件不一致: {file1_path} {file2_path}")
                    diffCall({file1_path},{file2_path})
                    # 创建多语言目录
                    # shutil.copy2(file2_path, file1_path)
            else:
                print(f"在 {dir2_path} 中找不到文件: {file}")
                notfindCall(file)
        # 对比子目录
        for directory in dirs:
            dir1_subdir = os.path.join(root, directory)
            dir2_subdir = os.path.join(dir2_path, directory)
            if not os.path.isdir(dir2_subdir):
                print(f"目录 {dir2_subdir} 不存在")


# 使用方法
dir1 = r"D:\LoVN\client\main\resource\image"
dir2 = r"D:\Lo\client\main\resource\image"

# 创建多语言目录
localDir = dir1 + "\\cn"
os.path.exists(localDir) or os.mkdir(localDir)


def diffCall(root_path,com_path):
    shutil.copy2(com_path,localDir);


def nofindCall():
    pass


compare_directories(dir1, dir2, diffCall, nofindCall)
