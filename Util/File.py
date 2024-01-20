import os.path
import re
import shutil

import openpyxl


# TODO: 需要不断完善
class Excel:
    def __init__(self, excel_path: str):
        self.excel_path = excel_path
        self.is_create = os.path.isfile(excel_path)
        self.workbook: openpyxl.workbook.Workbook = (
            openpyxl.load_workbook(excel_path)
            if self.is_create
            else openpyxl.workbook()
        )

    def get_sheet_names(self) -> list:
        """
        获取所有sheet名
        :return: list
        """
        return self.workbook.get_sheet_names()

    def get_sheet_by_name(self, name: str):
        """
        通过sheet名获取sheet对象
        :param name:
        :return:
        """
        return self.workbook.get_sheet_by_name(name)

    def close(self):
        """
        关闭Excel
        :return:
        """
        self.workbook.save(self.excel_path)
        self.workbook.close()


# 移动文件
def copy(file_path, target_path):
    shutil.copyfile(file_path, target_path)


def replace(file_path: str, old_text: str, new_text: str):
    lines = ""
    with open(file_path, "r", encoding="utf-8") as file:
        lines = file.readlines()

    with open(file_path, "w+", encoding="utf-8") as file:
        line = ""
        for i in lines:
            # 转义特殊字符
            line = line + re.sub(re.escape(old_text), new_text, i)
        file.write(line)


def change_file_by_tag(file: str, tag: str, content: str):
    """
    通过tag修改文件
    tag会去除所有空格，并被扩展tag_START,tag_END两种字段，包含在Start-End的文件内容都将被替换
    :param file: 文件路径
    :param tag: 标识
    :param content: 替换的内容
    """
    assert os.path.isfile(file), "{} not a file".format(file)
    file_data = ""

    with open(file, "r", encoding="utf-8") as f:
        lines = f.readlines()
        is_change_block = False
        is_changed = False
        for line in lines:
            temp_line = "".join(line.split())
            if temp_line == tag + "_START":
                # 进入修改块
                is_change_block = True
                file_data += line
                continue
            if temp_line == tag + "_END":
                # 退出修改块
                is_change_block = False
            if is_changed and is_change_block:
                continue
            if is_change_block:
                file_data += content
                is_changed = True
                continue
            file_data += line
    with open(file, "w", encoding="utf-8") as f:
        f.write(file_data)

