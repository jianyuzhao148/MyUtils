import subprocess
from PyQt5.QtCore import QThread, pyqtSignal
from PyQt5.QtGui import QTextCursor

from PyQt5.QtWidgets import QApplication, QPushButton, QDesktopWidget, QCheckBox, QHBoxLayout, \
    QVBoxLayout, QGroupBox, QMainWindow, QPlainTextEdit, QMessageBox, QComboBox, QLineEdit, QTextBrowser, QWidget

import socket
import asyncio

from Util import Log, File, System
from Util.File import Excel

# -----------------------------------配置-----------------------------------
channel = {
    "gfkvnAfu1": "gfkvnAfu1",
    "gfkvnAfu2": "gfkvnAfu2",
    "gfkvnAfu3": "gfkvnAfu3"
}

language = ["请选择语言", '繁中', '越文', '泰文']
# SDK参数，APK显示名称参数，Android多语言支持的参数，游戏语言参数
language2android = [["zh-tw", "zh", "zh", "zh-tw"], ["vn", "vi", "vi", "vi"], ["th", "th", "th", "th"]]

app_title = "FK出包"

gradle_properties = ("D:\\FK_VN\\client\\AndroidProject_File\\framework\\client_core\\frameworks\\runtime-src\\proj"
                     ".android_en\\gradle.properties")

config_demo_luac = ("D:\\FK_VN\\client\\AndroidProject_File\\framework\\client_core\\frameworks\\runtime-src\\proj"
                    ".android_en\\app\\assets\\src\\config_demo.luac")

proj_path = "D:\\FK_VN\\client\\AndroidProject_File\\framework\\client_core\\frameworks\\runtime-src\\proj.android_en"


# -----------------------------------配置-----------------------------------

class UIController:
    UIStack = []

    @staticmethod
    def show(className):
        elementIndex = UIController.__index(className)
        if elementIndex != -1:
            for ui in UIController.__pops(elementIndex):
                ui.destroy()
        else:
            if len(UIController.UIStack) > 0:
                UIController.UIStack[-1].close()
            new = className()
            UIController.UIStack.append(new)
        UIController.UIStack[-1].show()

    @staticmethod
    def __index(className):
        count = -1
        for i in reversed(UIController.UIStack):
            count = count + 1
            if i.__class__.__name__ == className.__name__:
                return count
        return -1

    @staticmethod
    def __pops(nums):
        lists = []
        for i in range(nums):
            lists.append(UIController.UIStack.pop())
        return lists


class LogcatUI(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Logcat")
        self.resize(500, 500)
        self.text: QTextBrowser = QTextBrowser(self)
        self.text.resize(500, 500)
        self.device_name=""
        self.connect()
        self.on_response()

    def get_devices(self):
        if self.sock:
            self.sock.sendall("000Chost:devices".encode())

    def connect_devices(self):
        self.sock.sendall("001Fhost:transport:CLB7N18822003963".encode())

    def show_logcat(self):
        str_buffer: str = ""

    def on_response(self):
        while True:
            self.sock.sendall("000Cshell:logcat".encode())
            server_reply = self.sock.recv(2048).decode()
            # 处理标识位
            if server_reply == "OKAY":
                continue
            # 拼接为完整句子
            server_reply = str_buffer + server_reply
            # 是否完整句子
            is_full: bool = server_reply.endswith("\n", len(server_reply) - 3, len(server_reply) - 1)
            lines = server_reply.split("\n")
            str_buffer = "" if is_full else lines[-1]
            for i in range(len(lines) - 1 if is_full else len(lines) - 2):
                try:
                    # 去除重复空格
                    i = " ".join(lines[i].split())
                    level = i.split(" ")[4]
                    if level == "E":
                        Log.ERROR(i)
                    elif level == "I":
                        Log.INFO(i)
                    elif level == "W":
                        Log.WARN(i)
                    elif level == "V":
                        Log.VERBOSE(i)
                    elif level == "A":
                        Log.ASSERT(i)
                    elif level == "D":
                        Log.DEBUG(i)
                    else:
                        print(i)
                except:
                    print(i)

    # def ASSERT(self, msg):
    #     self.text.append("<font color=\"#F00000\">" + msg + "</font> ")

    # def ERROR(msg):
    #
    # def INFO(msg):
    #
    # def WARN(msg):
    #
    # def DEBUG(msg):
    #
    # def VERBOSE(msg):

    def connect(self):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.connect(("127.0.0.1", 5037))
        # sock.sendall("000Chost:version".encode())
        # sock.sendall("001ACLB7N18822003963:get-state".encode())



class AndroidUI(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle(app_title)
        self.setFixedSize(600, 500)
        qr = self.frameGeometry()
        qr.moveCenter(QDesktopWidget().availableGeometry().center())
        self.move(qr.topLeft())

        # 变量
        self.dirPath = proj_path
        self.checkBoxList = []
        self.taskThread = None

        # 布局
        self.channelRootBox = None
        self.channelBox = None

        # 控件
        self.startBtn = None
        self.plainTextEdit = None
        self.stopBtn = None
        self.idx = 0

        # 菜单
        self.androidAction = None
        self.unityAction = None
        self.toolMenu = None
        self.copyFileAction = None

        self.__add_layout()
        self.__add_element()
        self.__add_menu()

        self.__show_msg("")

    def __add_layout(self):
        channel_group_box = QGroupBox("Android", self)
        # 第一层 layout
        self.channelRootBox = QHBoxLayout()
        # 第二层 layout
        self.channelBox = QVBoxLayout()
        # 第二层 layout
        self.consoleBox = QVBoxLayout()
        # 第三层 layout
        self.btnBox = QHBoxLayout()
        self.logBox = QVBoxLayout()

        channel_group_box.setLayout(self.channelRootBox)
        self.channelRootBox.addLayout(self.channelBox)
        self.channelRootBox.addLayout(self.consoleBox)
        self.consoleBox.addLayout(self.logBox)
        self.consoleBox.addLayout(self.btnBox)
        self.setCentralWidget(channel_group_box)

    def __add_menu(self):
        self.androidAction = self.menuBar().addAction("Android")
        self.logAction = self.menuBar().addAction("Logcat")
        self.androidAction.triggered.connect(lambda: UIController.show(AndroidUI))
        # self.logAction.triggered.connect(lambda: UIController.show(LogcatUI))

    def __add_element(self):
        self.taskThread = TaskThread()
        self.plainTextEdit = QPlainTextEdit()
        self.language_cb = QComboBox(self)
        self.language_cb.addItems(language)
        self.startBtn = QPushButton("开始")
        self.clearBtn = QPushButton("清空控制台")
        self.stopBtn = QPushButton("终止")
        self.input_text = QLineEdit(self)
        self.input_text.setMaximumWidth(100)
        properties = Properties(gradle_properties).get_properties()
        self.input_text.setText(properties.get("APKVersion"))
        self.input_text.setPlaceholderText("请输入版本号")
        self.plainTextEdit.setReadOnly(True)
        # 设置事件
        self.stopBtn.clicked.connect(self.__on_click_stop)
        self.startBtn.clicked.connect(self.__on_click_start)
        self.clearBtn.clicked.connect(self.__on_clear)
        self.taskThread.update_console.connect(self.__handle_console)
        self.taskThread.update_statusBar.connect(self.__show_msg)
        self.taskThread.setBtnEnable.connect(lambda b: self.startBtn.setEnabled(b))
        self.language_cb.currentIndexChanged[int].connect(self.__on_language_change)
        # 填充渠道,设置语言
        for key in channel.keys():
            cb = QCheckBox(key, self)
            self.checkBoxList.append(cb)
            self.channelBox.addWidget(cb)
        self.channelBox.addWidget(self.language_cb)
        self.channelBox.addWidget(self.input_text)
        # 填充控制台部分
        self.logBox.addWidget(self.plainTextEdit)
        self.btnBox.addWidget(self.startBtn)
        self.btnBox.addWidget(self.stopBtn)
        self.btnBox.addWidget(self.clearBtn)

    def __handle_console(self, date, color):
        self.plainTextEdit.setStyleSheet(color if color else "color:rgb(0,0,0)")
        self.plainTextEdit.appendPlainText(date)
        self.plainTextEdit.moveCursor(QTextCursor.End)

    def __show_msg(self, msg):
        self.statusBar().showMessage(msg)

    def __on_clear(self):
        self.plainTextEdit.setPlainText("")  # 清空控制台

    def __on_click_start(self):
        list = self.__get_select_channel()
        if self.idx == 0:
            self.__show_msg("请选择语言")
            return
        if len(list) > 0 and self.dirPath:
            self.__on_clear()

            self.taskThread.case = "build"
            self.taskThread.dirPath = self.dirPath
            self.taskThread.selectedList = list
            self.taskThread.set_version(self.input_text.text())
            self.taskThread.start()
        else:
            self.__show_msg("请选择渠道和Android项目目录")

    def __on_click_stop(self):
        if self.taskThread.childProcess and QMessageBox.warning(self, "警告", "是否终止构建？",
                                                                QMessageBox.Yes | QMessageBox.No) == QMessageBox.Yes:
            self.taskThread.stop_process()

    def __on_language_change(self, idx):
        self.idx = idx
        if self.idx == 0:
            return
        select_language = language2android[self.idx - 1]
        # 修改gradle.properties语言配置
        File.change_file_by_tag(gradle_properties, "#Language",
                                "SDKLanguage=\"{}\"\nApkLanguage={}\nAndroidLanguage=\"{}\"\n"
                                .format(select_language[0], select_language[1], select_language[2]))
        # 修改config_demo.luac语言配置
        File.change_file_by_tag(config_demo_luac,
                                "--LANGUAGE", "Language                    = \"{}\"\n"
                                .format(select_language[3]))
        self.__show_msg("渠道已切换到：{}".format(language[self.idx]))

    def __get_select_channel(self):
        selectedList = []
        for cb in self.checkBoxList:
            if cb.isChecked():
                selectedList.append(cb.text())
        return selectedList


class TaskThread(QThread):
    update_console = pyqtSignal(str, str)
    update_statusBar = pyqtSignal(str)
    setBtnEnable = pyqtSignal(bool)

    def __init__(self):
        super().__init__()
        self.version = None
        self.selectedList = None
        self.childProcess = None
        self.dirPath = None
        self.case = None

    def stop_process(self):
        if self.childProcess:
            System.kill_proc_tree(self.childProcess.pid)

    def run(self):
        if self.case == "build":
            self.__build_pkg()

    def set_version(self, version):
        self.version = version.strip()

    def __build_pkg(self):
        self.__set_btn_enable(False)
        self.__show_status_msg("Clear Project...")
        self.childProcess = subprocess.Popen("gradlew clean", cwd=self.dirPath, shell=True, stdout=subprocess.PIPE)
        for line in iter(self.childProcess.stdout.readline, b''):
            self.__show_console_msg(line.strip().decode("GB2312"), None)
        self.__show_status_msg("Clear Success!") if self.childProcess.wait() == 0 else self.__show_status_msg(
            "Clear Success!")

        for i in self.selectedList:
            channel_name = channel.get(i)
            # if os.path.isdir(self.dirPath + os.sep + channel_name):
            self.__show_status_msg("Building " + channel_name + "...")
            # 修改渠道名
            File.change_file_by_tag(config_demo_luac,
                                    "--CHANNEL", "APP_ROUTE                   = \"{}\"\n".format(channel_name))
            # 修改版本号
            File.change_file_by_tag(gradle_properties,
                                    "#Version", "APKVersion={}\n".format(self.version))
            self.childProcess = subprocess.Popen("gradlew " + "assemble" + channel_name + "Release",
                                                 cwd=self.dirPath,
                                                 shell=True,
                                                 stdout=subprocess.PIPE)
            for line in iter(self.childProcess.stdout.readline, b''):
                self.__show_console_msg(line.strip().decode("GB2312"), None)
            if self.childProcess.wait() == 0:
                self.__show_status_msg("Build " + channel_name + " Success!")
                self.__set_btn_enable(True)
                # os.startfile(self.dirPath + os.sep + "apk" + os.sep + "outputs")
            else:
                self.__show_status_msg("Build " + channel_name + " Fail!")
                self.__set_btn_enable(True)
                break  # 中断
            # else:
            #     self.__showStatusMsg(self.dirPath + os.sep + channel_name + "不存在")
        self.childProcess = None

    def __show_status_msg(self, msg):
        self.update_statusBar.emit(str(msg))

    def __show_console_msg(self, msg, color):
        self.update_console.emit(msg, color)

    def __set_btn_enable(self, bool):
        self.setBtnEnable.emit(bool)


if __name__ == "__main__":
    # app = QApplication(sys.argv)
    # UIController.show(AndroidUI)
    # UIController.show(LogcatUI)
    # sys.exit(app.exec_())
    excel = Excel(r"D:\LOVietnamese\config\c_cdk.xlsx")
    print(excel.get_sheet_names())
