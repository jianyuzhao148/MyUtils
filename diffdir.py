import hashlib
import json
import os
import shutil
from pathlib import Path
from typing import Callable


def file_copy(file_path: str, target_path: str) -> None:
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
        os.makedirs(target_path)
    shutil.copy2(file_path, target_path)


def read_json_file(file_path: str):
    """
    读取json文件
    :param file_path: 文件路径
    :return: None
    """
    if not os.path.isfile(file_path):
        return None
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)
            return data
    except json.JSONDecodeError:
        return None


def write_json_to_file(data, file_path) -> None:
    """
    写入json文件
    :param data: json数据
    :param file_path: 写入的文件路径
    :return: None
    """
    try:
        with open(file_path, 'w', encoding='utf-8') as file:
            json.dump(data, file, ensure_ascii=False, indent=4)
        print(f"JSON 数据已写入文件: {file_path}")
    except Exception as e:
        print(f"写入文件失败: {e}")


def get_file_md5(file_path: str) -> str:
    """
    获取文件md5
    :param file_path: 文件路径
    :return:
    """
    md5_hash = hashlib.md5()
    with open(file_path, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            md5_hash.update(chunk)
    return md5_hash.hexdigest()


def compare_files(root_path: str, target_path: str, part_suffix: list = None) -> bool:
    """
    对比两个文件
    :param root_path: 输入文件
    :param target_path: 对比文件
    :param part_suffix: 参与比对的文件后缀
    :return:bool
    """
    if part_suffix is None:
        part_suffix = []
    if (os.path.basename(root_path).split('.')[-1] in part_suffix and
            os.path.basename(target_path).split('.')[-1] in part_suffix):
        md5_1 = get_file_md5(root_path)
        md5_2 = get_file_md5(target_path)
        return md5_1 == md5_2
    return True


def path_compare(root_path: str, target_path: str, part_suffix: list = None,
                 file_same_call: Callable[[str, str], None] = None,
                 file_diff_call: Callable[[str, str], None] = None,
                 file_miss_call: Callable[[str], None] = None) -> None:
    """
    目录文件对比
    :param part_suffix: 参与比对的文件后缀
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
                if compare_files(root_file_path, target_file_path, part_suffix):
                    file_same_call and file_same_call(root_file_path, target_file_path)
                else:
                    file_diff_call and file_diff_call(root_file_path, target_file_path)
            else:
                file_miss_call and file_miss_call(root_file_path)


if __name__ == "__main__":
    root_path = r"D:\LoVN\client\main\resource"
    target_path = r"D:\Lo\client\main\resource"
    res_json_path = r"D:\LoVN\client\main\resource\default_cn.res.json"

    json_data = read_json_file(res_json_path)


    def copy_change_res(root_file, target):
        file_copy(root_file, target)
        file_name_arr = os.path.basename(root_file).split('.')
        relative_target_path = os.path.relpath(root_file, target_path)
        for i in json_data["resources"]:
            if i["name"] == f"{file_name_arr[-2]}_{file_name_arr[-1]}":
                i["url"] = "cn/" + relative_target_path.replace('\\', '/')


    def diffCall(root, comp) -> None:
        print("diff" + root, comp)
        relative_target_path = os.path.relpath(comp, target_path)
        full_target_path = os.path.join(root_path, "cn" + os.sep + os.path.dirname(relative_target_path))
        copy_change_res(comp, full_target_path)
        same_json_file = Path(comp).with_suffix(".json")
        if os.path.exists(same_json_file):
            # 如果有同名的json文件一起移动过来
            copy_change_res(str(same_json_file), full_target_path)


    path_compare(root_path, target_path, part_suffix=["png", "json", "jpg"], file_diff_call=diffCall)
    write_json_to_file(json_data, res_json_path)
