from PyQt5.QtWidgets import (
    QApplication,
    QLabel,
    QLineEdit,
    QPushButton,
    QFileDialog,
    QMessageBox,
    QProgressBar,
    QHBoxLayout,
    QVBoxLayout,
    QGroupBox,
    QMainWindow,
)

import os
import sys
import openpyxl
import re


def extract_chinese(text: str) -> list:
    """
    获取字符串中中文
    :param text:
    :return:
    """
    pattern = re.compile(r"[\u4e00-\u9fff]+")
    chinese_chars = re.findall(pattern, text)
    return chinese_chars


def remove_space(str) -> str:
    """
    去除空格
    :param str:
    :return:
    """
    return "".join(str.split())


def ERROR(msg):
    print("\033[31m{0}\033[0m".format(msg))


"""
究极翻译脚本
"""


class MainQWidget(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)

        self.put_xlsx_path = ""
        self.put_path = ""
        self.include_last = [".ts"]

        self.__sheet_name = "word"
        self.__out_path = "Extract.xlsx"

        self.setWindowTitle("文字提取工具-测试版")
        self.root_box = QVBoxLayout()
        group_box = QGroupBox("文字提取", self)
        self.write_layout = QHBoxLayout()
        self.read_layout = QHBoxLayout()
        self.progress_layout = QHBoxLayout()
        group_box.setLayout(self.root_box)
        self.root_box.addLayout(self.read_layout)
        self.root_box.addLayout(self.write_layout)
        self.root_box.addLayout(self.progress_layout)

        self.label_write = QLabel()
        self.label_write.setText("写入文字:")
        self.label_read = QLabel()
        self.label_read.setText("提取文字:")
        self.qlineEdit_selectfile = QLineEdit("Excel路径")
        self.qlineEdit_selectfile.setReadOnly(True)
        self.qpush_selectfile = QPushButton("选择Excel")

        self.write_layout.addWidget(self.label_write)
        self.write_layout.addWidget(self.qlineEdit_selectfile)
        self.write_layout.addWidget(self.qpush_selectfile)
        self.write_btn = QPushButton("开始写入")
        self.write_layout.addWidget(self.write_btn)
        self.qlineEdit_selectfolder = QLineEdit("目录路径")
        self.qlineEdit_selectfolder.setReadOnly(True)
        self.qpush_selectfolder = QPushButton("选择目录")
        self.read_btn = QPushButton("开始提取")
        self.read_layout.addWidget(self.label_read)
        self.read_layout.addWidget(self.qlineEdit_selectfolder)
        self.read_layout.addWidget(self.qpush_selectfolder)
        self.read_layout.addWidget(self.read_btn)

        self.label_load = QLabel()
        self.label_load.setText("进度:")
        self.progress = QProgressBar()
        self.progress_layout.addWidget(self.label_load)
        self.progress_layout.addWidget(self.progress)

        self.qpush_selectfile.clicked.connect(self.select_file)
        self.qpush_selectfolder.clicked.connect(self.select_folder)
        self.read_btn.clicked.connect(self.extract)
        self.write_btn.clicked.connect(self.write)

        self.setCentralWidget(group_box)

    def select_file(self):
        self.put_xlsx_path, _ = QFileDialog.getOpenFileName(
            self,
            "getOpenFileName",
            "./",
            "Excel(*.xlsx);;",
        )
        self.qlineEdit_selectfile.setText(self.put_xlsx_path)

    def select_folder(self):
        self.put_path = QFileDialog.getExistingDirectory(self, "Select Directory", "./")
        self.qlineEdit_selectfolder.setText(self.put_path)

    def extract(self):
        if not os.path.exists(self.put_path):
            QMessageBox.warning(
                self,
                "警告",
                "无效路径",
                QMessageBox.Yes,
            )
            return
        dict_file = {}
        for root, _, files in os.walk(self.put_path):
            for file in files:
                if os.path.splitext(file)[-1] in self.include_last:
                    file_path = os.path.join(root, file)
                    dict_temp = read_word(file_path=file_path)
                    if len(dict_temp) > 1:
                        dict_file[file_path] = dict_temp
        self.progress.setMaximum(len(dict_file.keys()))

        # 写入excel
        write2excel(
            self.__out_path,
            self.__sheet_name,
            dict_file,
            call_back=lambda i: self.progress.setValue(i),
        )
        result = QMessageBox.information(
            self, "提示", "成功,是否打开文件？", QMessageBox.Yes, QMessageBox.No
        )
        if result:
            os.startfile("Extract.xlsx")

    def write(self):
        if not os.path.exists(self.put_xlsx_path):
            QMessageBox.warning(
                self,
                "警告",
                "无效路径",
                QMessageBox.Yes,
            )
            return
        dict_file = read_excel(self.put_xlsx_path, self.__sheet_name)
        self.progress.setMaximum(len(dict_file.keys()))
        count = 0
        for i in dict_file.keys():
            replace2file(i, dict_file[i])
            count = count + 1
            self.progress.setValue(count)
        QMessageBox.information(
            self,
            "提示",
            "成功",
            QMessageBox.Yes,
        )


def replace2file(file_path, line_word_map: dict) -> bool:
    """
    指定格式写入文件
    :param file_path:
    :param line_word_map:
    line_word_map形如:
    {
        line_number:[[old_word_list],[new_word_list]]
    }
    :return: bool
    """
    lines = ""
    with open(file_path, encoding="utf8") as f:
        line_number = 0
        for line in f.readlines():
            line_number = line_number + 1
            if line_number in line_word_map.keys():
                line_word_list: list = line_word_map[line_number]
                old_word_list = line_word_list[0]
                new_word_list = line_word_list[1]
                if len(old_word_list) == len(new_word_list):
                    for index in range(len(old_word_list)):
                        old_word = str(old_word_list[index])
                        new_word = str(new_word_list[index])

                        old_word_len = len(old_word)
                        start_index = line.find(old_word)
                        if start_index != -1:
                            end_index = start_index + old_word_len
                            # 拼接新line
                            line = line[:start_index] + new_word + line[end_index:]
                        else:
                            ERROR(
                                "File:{} Line:{}\n\t Info:{} not this line".format(
                                    file_path, line_number, old_word
                                )
                            )
                            return False
            lines = lines + line
    with open(file_path, "w", encoding="utf8") as f:
        f.write(lines)
    return True


def read_word(file_path) -> dict:
    """
    读取文字
    :param file_path:
    :return:dict 形如:
    {
        line_number:[word,...]
    }
    """
    with open(file_path, encoding="utf8") as f:
        dict_word = {}
        in_comment = False
        line_number = 0
        for line in f.readlines():
            line_number = line_number + 1
            # 处理注释
            if "/*" in line and "*/" in line:
                continue
            if "/**" in line and "*/" in line:
                continue
            if "/**" in remove_space(line):
                in_comment = True
            if in_comment and remove_space(line) == "*/":
                in_comment = False
            if "/*" in remove_space(line):
                in_comment = True
            if in_comment and remove_space(line) == "*/":
                in_comment = False
            if in_comment:
                continue
            if "//" in line:
                line = line[: line.index("//")]

            str_list = extract_chinese(line)
            if len(str_list) > 0:
                dict_word[line_number] = str_list
                # print("\n\tline: {} {}".format(line_number, str_list))
        return dict_word


def write2excel(excel_name, sheet_name, dict_file, call_back):
    workbook: openpyxl.Workbook = openpyxl.Workbook()
    worksheet = workbook.create_sheet(sheet_name)
    row = 1
    count = 0
    for file_name in dict_file.keys():
        for file_line in dict_file[file_name].keys():
            for word in dict_file[file_name][file_line]:
                worksheet.cell(row, 1).value = file_name
                worksheet.cell(row, 2).value = file_line
                worksheet.cell(row, 3).value = word
                row = row + 1
        count = count + 1
        call_back(count)
    workbook.save(excel_name)


def read_excel(excel_name, sheet_name) -> dict:
    workbook: openpyxl.Workbook = openpyxl.load_workbook(excel_name)
    worksheet = workbook[sheet_name]
    dict_file = {}
    for i in worksheet.iter_rows():
        file_path = i[0].value
        line_number = i[1].value
        old_word = i[2].value
        new_word = i[3].value
        if not dict_file.get(file_path):
            dict_file[file_path] = {}
        if not dict_file[file_path].get(line_number):
            dict_file[file_path][line_number] = []
            dict_file[file_path][line_number].append([])
            dict_file[file_path][line_number].append([])
        dict_file[file_path][line_number][0].append(old_word)
        dict_file[file_path][line_number][1].append(new_word)
    return dict_file


if __name__ == "__main__":
    app = QApplication(sys.argv)
    dlg = MainQWidget()
    dlg.show()
    sys.exit(app.exec_())
    #     # 单文件提取
    #     with open(param, encoding="utf8") as f:
    #         print(read_word(file_path=param))
