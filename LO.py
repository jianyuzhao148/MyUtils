import os
import sys

from PyQt5.QtCore import QStringListModel
from PyQt5.QtWidgets import (QAbstractItemView, QApplication, QComboBox,
                             QCompleter, QFileDialog, QGroupBox, QHBoxLayout,
                             QLabel, QLineEdit, QListView, QMainWindow,
                             QMessageBox, QProgressBar, QPushButton,
                             QVBoxLayout)

include_file_path = r"D:\LOVietnamese\config\packet\表格导出"
include_file_last = ".xlsx"


class MainQWidget(QMainWindow):

    def __transform(self):
        if len(self.file_list) == 0:
            return
        for i in self.listview.selectedIndexes():
            print(i.data())

    def __translate_all(self):
        if len(self.file_list) == 0:
            return
        for i in self.listview.selectedIndexes():
            print(i.data())

    def __check_excel(self):
        all_items = os.listdir(include_file_path)
        self.file_list = [
            f
            for f in all_items
            if (
                os.path.isfile(
                    os.path.join(include_file_path, f)
                    and os.path.splitext(f)[-1] == include_file_last
                )
            )
        ]

    def __init__(self, parent=None):
        super().__init__(parent)

        self.put_xlsx_path = ""
        self.put_translate_xlsx_path = ""
        self.put_path = ""
        self.include_last = [".m", ".mm"]
        self.file_list = []

        self.__check_excel()

        # ----------------------------UI----------------------------
        self.setWindowTitle("文本转换工具")
        group_box = QGroupBox("文本转换", self)
        self.parent_layout = QHBoxLayout()
        group_box.setLayout(self.parent_layout)

        self.search_layout = QHBoxLayout()
        self.search_label = QLabel()
        self.search_label.setText("搜索:")
        self.search_completer = QCompleter(self.file_list)
        self.search_lineEdit = QLineEdit()
        self.search_lineEdit.setCompleter(self.search_completer)
        self.search_layout.addWidget(self.search_label)
        self.search_layout.addWidget(self.search_lineEdit)
        self.select_layout = QVBoxLayout()
        self.listview = QListView()
        self.string_list = QStringListModel()
        self.string_list.setStringList(self.file_list)
        self.listview.setSelectionMode(QAbstractItemView.ExtendedSelection)
        self.listview.setModel(self.string_list)
        self.select_layout.addLayout(self.search_layout)
        self.select_layout.addWidget(self.listview)

        self.opation_layout = QVBoxLayout()
        self.opation_button = QPushButton("开始转换")
        self.opation_all_button = QPushButton("全部转换")
        self.opation_layout.addWidget(self.opation_button)
        self.opation_layout.addWidget(self.opation_all_button)
        self.opation_button.clicked.connect(self.__transform)
        self.opation_all_button.clicked.connect(self.__translate_all)

        self.parent_layout.addLayout(self.select_layout)
        self.parent_layout.addLayout(self.opation_layout)

        # TODO:选择后给出提示
        # self.listview.selectedIndexes()

        # self.read_layout = QHBoxLayout()
        # self.translate_layout = QHBoxLayout()
        # self.progress_layout = QHBoxLayout()
        # self.root_box.addLayout(self.read_layout)
        # self.root_box.addLayout(self.write_layout)
        # self.root_box.addLayout(self.translate_layout)
        # self.root_box.addLayout(self.progress_layout)
        # self.root_box.addLayout(self.select_layout)
        #
        # self.label_write = QLabel()
        # self.label_write.setText("写入文字:")
        # self.label_read = QLabel()
        # self.label_read.setText("提取文字:")
        # self.label_translate = QLabel()
        # self.label_translate.setText("AI  翻译:")
        # self.qlineEdit_selectfile = QLineEdit("Excel路径")
        # self.qlineEdit_selectfile.setReadOnly(True)
        # self.qpush_selectfile = QPushButton("选择Excel")
        #
        # self.write_layout.addWidget(self.label_write)
        # self.write_layout.addWidget(self.qlineEdit_selectfile)
        # self.write_layout.addWidget(self.qpush_selectfile)
        # self.write_btn = QPushButton("开始写入")
        # self.write_layout.addWidget(self.write_btn)
        # self.qlineEdit_selectfolder = QLineEdit("目录路径")
        # self.qlineEdit_selectfolder.setReadOnly(True)
        # self.qpush_selectfolder = QPushButton("选择目录")
        # self.read_btn = QPushButton("开始提取")
        # self.read_layout.addWidget(self.label_read)
        # self.read_layout.addWidget(self.qlineEdit_selectfolder)
        # self.read_layout.addWidget(self.qpush_selectfolder)
        # self.read_layout.addWidget(self.read_btn)
        #
        # self.translate_selectfile = QLineEdit("Excel路径")
        # self.translate_selectfile.setReadOnly(True)
        # self.qpush_translate_selectfile = QPushButton("选择Excel")
        # self.translate_btn = QPushButton("开始翻译")
        # self.translate_layout.addWidget(self.label_translate)
        # self.translate_layout.addWidget(self.translate_selectfile)
        # self.translate_layout.addWidget(self.qpush_translate_selectfile)
        # self.translate_layout.addWidget(self.translate_btn)
        #
        # self.label_load = QLabel()
        # self.label_load.setText("进度:")
        # self.progress = QProgressBar()
        # self.progress_layout.addWidget(self.label_load)
        # self.progress_layout.addWidget(self.progress)
        #
        # self.qpush_selectfile.clicked.connect(self.select_file)
        # self.qpush_translate_selectfile.clicked.connect(self.select_translate_file)
        # self.qpush_selectfolder.clicked.connect(self.select_folder)
        # self.read_btn.clicked.connect(self.extract)
        # self.write_btn.clicked.connect(self.write)
        # self.translate_btn.clicked.connect(self.translate)
        self.setCentralWidget(group_box)
        # ----------------------------UI----------------------------

    def translate(self):
        pass

    def select_file(self):
        pass

    def select_translate_file(self):
        pass

    def select_folder(self):
        pass

    def extract(self):
        pass

    def write(self):
        pass


if __name__ == "__main__":
    app = QApplication(sys.argv)
    dlg = MainQWidget()
    dlg.show()
    sys.exit(app.exec_())
