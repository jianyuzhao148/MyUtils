import os
import shutil
from filecmp import cmp
from typing import Callable

def file_copy(file_path:str,target_path:str)->None:
    """
    文件拷贝
    :param file_path: 文件路径
    :param target_path: 目标路径
    :return: None
    """
    # 检查目录
    if not os.path.isfile(file_path):
        print(f"{file_path}不是一个有效文件")
        return
    if not os.path.exists(target_path):
        # 创建目录
        os.mkdir(target_path)
    shutil.copy2(file_path, target_path)


def path_compare(root_path: str, target_path: str, file_same_call: Callable[[str, str], None] = None,
                 file_diff_call: Callable[[str, str], None] = None, file_miss_call: Callable[[str], None] = None)->None:
    """
    目录文件对比
    :param root_path: 输入目录，所有文件以该目录为准
    :param target_path: 对比目录
    :param file_same_call: 文件相同回调，每有一个文件相同时就会回调
    :param file_diff_call: 文件不同回调，每有一个文件不同时就会回调
    :param file_miss_call: 文件缺失回调，每有一个文件缺失时就会回调
    :return:None
    """
    # 检查目录
    if not os.path.exists(root_path):
        print(f"目录{root_path}不存在")
        return
    if not os.path.exists(target_path):
        print(f"目录{target_path}不存在")
        return

    for root, dirs, files in os.walk(root_path):
        # 获取相对路径
        relative_path = os.path.relpath(root, root_path)
        target_base_path = os.path.join(target_path, relative_path)

        for file in files:
            # 两个文件的路径
            root_file_path = os.path.join(root, file)
            target_file_path = os.path.join(target_base_path, file)

            if os.path.isfile(target_file_path):
                if cmp(root_file_path, target_file_path):
                    file_same_call and file_same_call(root_file_path, target_file_path)
                else:
                    file_diff_call and file_diff_call(root_file_path, target_file_path)
            else:
                file_miss_call and file_miss_call(root_file_path)


# 使用方法
dir1 = r"/Users/zhaojyu/Documents/MyUtils"
dir2 = r"/Users/zhaojyu/Documents"

# # 创建多语言目录
# localDir = dir1 + "\\cn"
# os.path.exists(localDir) or os.mkdir(localDir)


def diffCall(root_path, com_path)->None:
    print("diff"+root_path,com_path)
    # shutil.copy2(com_path, com_path);

def missCall(root_path)->None:
    print("miss"+root_path)

# def nofindCall():
#     pass


path_compare(dir1, dir2,file_diff_call=diffCall,file_miss_call=missCall)
