"""
通过Json和PyQt 命令可视化
{
    title:type
}
"""
import json
import math
import os
import sys

from PyQt5.QtWidgets import QLineEdit, QMainWindow, QGroupBox, QVBoxLayout, QHBoxLayout, QLabel, QPushButton, \
    QMessageBox, QApplication

config_cmd = ""
config_params = {}

cols = 4


def show_message(msg):
    msg_box = QMessageBox()
    msg_box.setWindowTitle("提示")
    msg_box.setText(msg)
    msg_box.setStandardButtons(QMessageBox.Ok)
    msg_box.exec_()


class MainQWidget(QMainWindow):
    def __init__(self):
        super().__init__()

        type_map = {"LineEdit": QLineEdit}

        box = QGroupBox("View", self)
        self.setCentralWidget(box)
        self.root = QVBoxLayout()
        box.setLayout(self.root)

        # 生成layout
        self.layout_list = []
        for i in range(math.ceil(len(config_params) / cols)):
            layout = QHBoxLayout()
            self.layout_list.append(layout)
            self.root.addLayout(layout)

        self.setWindowTitle("CommandView")

        self.content_list = []
        # 生成全部控件
        for i, (k, v) in enumerate(config_params.items()):
            text = QLabel(f"{k}:")
            content = type_map[v]()
            self.layout_list[math.floor(i / cols)].addWidget(text)
            self.layout_list[math.floor(i / cols)].addWidget(content)
            self.content_list.append(content)
        self.startBtn = QPushButton("执行")
        self.root.addWidget(self.startBtn)
        self.startBtn.clicked.connect(self.__on_click_start)

    def __on_click_start(self):
        code = os.system(config_cmd.format(self.content_list))
        show_message("执行失败" if code == 0 else "执行成功")


if __name__ == "__main__":
    with open("CommandViewConfig.json") as f:
        temp_map = json.load(f)
        config_cmd = temp_map["Command"]
        config_params = temp_map[1:]
    app = QApplication(sys.argv)
    dlg = MainQWidget()
    dlg.show()
    sys.exit(app.exec_())
