import math
import sys

from PyQt5.QtWidgets import QTableWidgetItem, QTableWidget, QMainWindow, QApplication, QDesktopWidget
import xml.etree.ElementTree as ElementTree


class XmlHelper:
    def __init__(self, file_path: str):
        self.data = {}
        self.xml_tree = ElementTree.parse(file_path)
        self.root = self.xml_tree.getroot()
        self.render(self.root)

    def get_data(self):
        return self.data

    def render(self, node: ElementTree.Element):
        self.data = {}
        # if len(node) > 0:
        #     for child in node:
        #         self.render(child)
        # else:
        #     if not (node.tag in self.data.keys()):
        #         self.data[node.tag] = []
        #     self.data[node.tag].append(node.text)

        for child in node:
            if not (child.tag in self.data.keys()):
                self.data[child.tag] = []
            self.data[child.tag].append(child if len(child) > 0 else child.text)


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.screen = QDesktopWidget().screenGeometry()
        self.xml_table = None
        self.col = None
        self.row = None
        self.xml = None
        self.object = {}
        self.__init_ui()

    def __init_ui(self):
        self.setWindowTitle("FakeEngine - XML Editor")

    def setFile(self, file_path: str):
        self.xml = XmlHelper(file_path)
        self.row = 100
        self.col = 100
        self.xml_table = QTableWidget(self.row, self.col)
        self.xml_table.itemDoubleClicked.connect(self.click)
        self.setCentralWidget(self.xml_table)
        self.resize(math.floor(self.screen.width()), math.floor(self.screen.height()))
        self.__render(self.xml.get_data())
        self.show()

    def click(self, item: QTableWidgetItem):
        temp = item.text()
        if temp in self.object:
            self.xml_table.clear()
            self.xml.render(self.object.get(temp))
            self.object = {}
            self.__render(self.xml.get_data())

    def __render(self, data: dict):
        """
        :param data:{tag:[],tag2:[],...}
        :return:
        """
        self.xml_table.setHorizontalHeaderLabels(list(data.keys()))
        values_list = list(data.values())
        max_row = max([len(lst) for lst in values_list])
        object = {}
        for row in range(max_row):
            for col in range(len(values_list)):
                item_value = values_list[col][row] if len(values_list[col]) > row else ""
                if type(item_value) != str:
                    temp = "Object{}{}".format(row, col)
                    self.object[temp] = item_value
                    item_value = temp
                item = QTableWidgetItem(item_value)
                self.xml_table.setItem(row, col, item)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    main_app = MainWindow()
    main_app.setFile(r"E:\Project\client\rs_main\Assets\ConfigJson\out\Hero.xml")
    sys.exit(app.exec_())
