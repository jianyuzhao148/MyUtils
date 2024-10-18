import os
import shutil
import sys
import json
import tempfile
from PyQt5.QtWidgets import QApplication, QMainWindow, QListWidget, QPushButton, QVBoxLayout, QWidget, QMessageBox, \
    QLineEdit, QHBoxLayout, QLabel

data_path = os.path.expanduser("~") + os.sep + ".fileselect.json"


class MLineEdit(QLineEdit):
    def __init__(self):
        super().__init__()
        self.setAcceptDrops(True)

    def dragEnterEvent(self, e):
        if e.mimeData().hasText():
            e.accept()
        else:
            e.ignore()

    def dropEvent(self, e):
        filePathList = e.mimeData().text()
        filePath = filePathList.split('\n')[0]
        filePath = filePath.replace('file:///', '', 1)
        self.setText(filePath)


class FileSelector(QMainWindow):
    def __init__(self):
        super().__init__()

        self.temp_dir = None
        data = None
        if os.path.exists(data_path):
            with open(data_path, "r") as f:
                try:
                    data = json.load(f)
                except:
                    data = None

        self.setWindowTitle("XLSM File Selector")
        self.setGeometry(100, 100, 400, 300)

        # 创建主窗口的布局
        layout = QVBoxLayout()
        layoutH = QHBoxLayout()

        self.text = QLabel("xml输出路径:")
        self.input = MLineEdit()

        # 创建 QListWidget 用于显示文件，设置为支持多选
        self.file_list = QListWidget()
        self.file_list.setSelectionMode(QListWidget.MultiSelection)
        self.load_xlsm_files()

        # 创建执行按钮
        self.execute_button = QPushButton("执行")
        self.execute_button.clicked.connect(self.execute_selection)

        # 将控件添加到布局
        layout.addWidget(self.file_list)
        layout.addLayout(layoutH)
        layoutH.addWidget(self.text)
        layoutH.addWidget(self.input)
        layout.addWidget(self.execute_button)

        if data:
            self.input.setText(data["path"])

        # 创建中心窗口小部件
        central_widget = QWidget()
        central_widget.setLayout(layout)
        self.setCentralWidget(central_widget)

    def load_xlsm_files(self):
        # 获取当前脚本目录
        current_directory = os.getcwd()

        # 遍历目录，添加所有的 .xlsm 文件到 QListWidget
        for filename in os.listdir(current_directory):
            if filename.endswith('.xlsm'):
                self.file_list.addItem(filename)

    def execute_selection(self):
        # 获取选中的文件
        selected_items = self.file_list.selectedItems()
        selected_files = [item.text() for item in selected_items]

        if not os.path.exists(self.input.text()):
            QMessageBox.warning(self, "未填写输出路径", "请填写输出目录。")
            return
        if selected_files:
            kv = {"path": self.input.text()}
            with open(data_path, "w") as f:
                f.write(json.dumps(kv))
            QMessageBox.information(self, "选择的文件", "\n".join(selected_files))
            self.temp_dir = tempfile.mkdtemp()
            for source_file in selected_files:
                temp_file_path = os.path.join(self.temp_dir, os.path.basename(source_file))
                shutil.copy2(source_file, temp_file_path)
            command = "start ExcelToXml/jre7/bin/java -jar ExcelToXml/ExcelToXml.jar {} {}".format(self.temp_dir, kv["path"])
            os.system(command)
        else:
            QMessageBox.warning(self, "未选择文件", "请至少选择一个文件。")

    def closeEvent(self, a0):
        if self.temp_dir:
            shutil.rmtree(self.temp_dir)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = FileSelector()
    window.show()
    sys.exit(app.exec_())
