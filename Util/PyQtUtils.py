from PyQt5.QtWidgets import QLineEdit


class DragLineEdit(QLineEdit):
    """
    支持文件拖动的LineEdit
    """

    def __init__(self):
        super().__init__()
        self.setAcceptDrops(True)

    def dragEnterEvent(self, e):
        if e.mimeData().hasText():
            e.accept()
        else:
            e.ignore()

    def dropEvent(self, e):
        file_path_list = e.mimeData().text()
        file_path = file_path_list.split('\n')[0]
        file_path = file_path.replace('file:///', '', 1)
        self.setText(file_path)
