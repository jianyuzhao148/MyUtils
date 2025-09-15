import sys
import time
from PyQt5.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
                             QTableWidget, QLineEdit, QPushButton, QComboBox, QLabel,
                             QCheckBox, QHeaderView, QTableWidgetItem)
from PyQt5.QtCore import (Qt, QThread, pyqtSignal, QTimer)
from PyQt5.QtGui import QColor, QFont
from ppadb.client import Client as AdbClient


class LogcatThread(QThread):
    new_log = pyqtSignal(str)
    connection_lost = pyqtSignal()

    def __init__(self, device, package_filter=None):
        super().__init__()
        self.device = device
        self.package_filter = package_filter
        self._running = True

    def run(self):
        try:
            # Start logcat with raw output
            if self.package_filter and self.package_filter != "All":
                # Get PID of the package
                pid = self.device.shell(f"pidof -s {self.package_filter}").strip()
                if pid:
                    stream = self.device.shell(f"logcat --pid={pid}", stream=True)
                else:
                    self.connection_lost.emit()
                    return
            else:
                stream = self.device.shell("logcat -v time", stream=True)

            while self._running:
                line = stream.readline()
                if not line:
                    break
                self.new_log.emit(line.strip())

        except Exception as e:
            print(f"Logcat error: {e}")
            self.connection_lost.emit()

    def stop(self):
        self._running = False


class LogcatViewer(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Android Logcat Viewer (Direct ADB)")
        self.setGeometry(100, 100, 1200, 800)

        self.client = AdbClient(host="127.0.0.1", port=5037)
        self.device = None
        self.logcat_thread = None
        self.package_names = []
        self.current_package = ""

        self.init_ui()
        self.refresh_devices()

    def init_ui(self):
        main_widget = QWidget()
        main_layout = QVBoxLayout()

        # Device selection
        device_layout = QHBoxLayout()
        device_layout.addWidget(QLabel("Device:"))

        self.device_combo = QComboBox()
        self.device_combo.setMinimumWidth(200)
        device_layout.addWidget(self.device_combo)

        refresh_btn = QPushButton("Refresh Devices")
        refresh_btn.clicked.connect(self.refresh_devices)
        device_layout.addWidget(refresh_btn)

        device_layout.addStretch()
        main_layout.addLayout(device_layout)

        # Package selection
        package_layout = QHBoxLayout()
        package_layout.addWidget(QLabel("Package:"))

        self.package_combo = QComboBox()
        self.package_combo.setMinimumWidth(300)
        self.package_combo.setEditable(True)
        self.package_combo.currentTextChanged.connect(self.package_changed)
        package_layout.addWidget(self.package_combo)

        refresh_pkgs_btn = QPushButton("Refresh Packages")
        refresh_pkgs_btn.clicked.connect(self.refresh_packages)
        package_layout.addWidget(refresh_pkgs_btn)

        package_layout.addStretch()
        main_layout.addLayout(package_layout)

        # Log level filter
        filter_layout = QHBoxLayout()
        filter_layout.addWidget(QLabel("Log Level:"))

        self.log_level_combo = QComboBox()
        self.log_level_combo.addItems(["All", "Verbose", "Debug", "Info", "Warning", "Error", "Fatal"])
        filter_layout.addWidget(self.log_level_combo)

        filter_layout.addWidget(QLabel("Search:"))
        self.search_edit = QLineEdit()
        self.search_edit.setPlaceholderText("Search logs...")
        filter_layout.addWidget(self.search_edit)

        clear_btn = QPushButton("Clear")
        clear_btn.clicked.connect(self.clear_logs)
        filter_layout.addWidget(clear_btn)

        filter_layout.addStretch()
        main_layout.addLayout(filter_layout)

        # Log display
        self.log_table = QTableWidget()
        self.log_table.setColumnCount(6)
        self.log_table.setHorizontalHeaderLabels(['Time', 'PID', 'TID', 'Level', 'Tag', 'Message'])
        self.log_table.horizontalHeader().setSectionResizeMode(5, QHeaderView.Stretch)
        self.log_table.setAlternatingRowColors(True)
        self.log_table.setEditTriggers(QTableWidget.NoEditTriggers)
        self.log_table.setSelectionBehavior(QTableWidget.SelectRows)

        # Set column widths
        self.log_table.setColumnWidth(0, 150)  # Time
        self.log_table.setColumnWidth(1, 80)  # PID
        self.log_table.setColumnWidth(2, 80)  # TID
        self.log_table.setColumnWidth(3, 50)  # Level
        self.log_table.setColumnWidth(4, 150)  # Tag

        # Control buttons
        control_layout = QHBoxLayout()

        self.start_btn = QPushButton("Start")
        self.start_btn.clicked.connect(self.start_logcat)
        control_layout.addWidget(self.start_btn)

        self.stop_btn = QPushButton("Stop")
        self.stop_btn.clicked.connect(self.stop_logcat)
        self.stop_btn.setEnabled(False)
        control_layout.addWidget(self.stop_btn)

        self.pause_btn = QPushButton("Pause")
        self.pause_btn.clicked.connect(self.toggle_pause)
        self.pause_btn.setEnabled(False)
        control_layout.addWidget(self.pause_btn)

        self.clear_on_start = QCheckBox("Clear on start")
        self.clear_on_start.setChecked(True)
        control_layout.addWidget(self.clear_on_start)

        control_layout.addStretch()
        main_layout.addLayout(control_layout)

        main_layout.addWidget(self.log_table)
        main_widget.setLayout(main_layout)
        self.setCentralWidget(main_widget)

        # Status bar
        self.status_bar = self.statusBar()
        self.status_bar.showMessage("Ready")

        # Buffered logs and update timer
        self.buffered_logs = []
        self.update_timer = QTimer()
        self.update_timer.setInterval(500)  # Update every 500ms
        self.update_timer.timeout.connect(self.update_table)
        self.is_paused = False

        # Color map for log levels
        self.color_map = {
            'V': QColor(150, 150, 150),  # Verbose - gray
            'D': QColor(0, 0, 255),  # Debug - blue
            'I': QColor(0, 150, 0),  # Info - green
            'W': QColor(255, 165, 0),  # Warning - orange
            'E': QColor(255, 0, 0),  # Error - red
            'F': QColor(150, 0, 150)  # Fatal - purple
        }

    def refresh_devices(self):
        self.device_combo.clear()
        try:
            devices = self.client.devices()
            for device in devices:
                self.device_combo.addItem(device.serial)
            self.status_bar.showMessage(f"Found {len(devices)} devices")
        except Exception as e:
            self.status_bar.showMessage(f"Error connecting to ADB: {str(e)}")

    def refresh_packages(self):
        self.package_combo.clear()
        self.package_combo.addItem("All")
        self.package_names = ["All"]

        if not self.device_combo.count():
            self.status_bar.showMessage("No device selected")
            return

        try:
            device_serial = self.device_combo.currentText()
            self.device = self.client.device(device_serial)

            # Get package list using direct ADB command
            result = self.device.shell("pm list packages")
            packages = result.splitlines()

            for pkg in packages:
                if pkg.startswith('package:'):
                    pkg_name = pkg[8:]  # Remove 'package:' prefix
                    self.package_combo.addItem(pkg_name)
                    self.package_names.append(pkg_name)
            self.status_bar.showMessage(f"Found {len(self.package_names) - 1} packages")
        except Exception as e:
            self.status_bar.showMessage(f"Error getting packages: {str(e)}")

    def package_changed(self, package):
        self.current_package = package
        if self.logcat_thread and self.logcat_thread.isRunning():
            self.restart_logcat()

    def start_logcat(self):
        if self.clear_on_start.isChecked():
            self.log_table.setRowCount(0)
            self.buffered_logs = []

        if not self.device_combo.count():
            self.status_bar.showMessage("No device selected")
            return

        try:
            device_serial = self.device_combo.currentText()
            self.device = self.client.device(device_serial)

            self.logcat_thread = LogcatThread(self.device, self.current_package)
            self.logcat_thread.new_log.connect(self.buffer_log)
            self.logcat_thread.connection_lost.connect(self.connection_lost)
            self.logcat_thread.start()

            self.start_btn.setEnabled(False)
            self.stop_btn.setEnabled(True)
            self.pause_btn.setEnabled(True)
            self.update_timer.start()
            self.status_bar.showMessage("Logcat started")
        except Exception as e:
            self.status_bar.showMessage(f"Error starting logcat: {str(e)}")

    def stop_logcat(self):
        if self.logcat_thread:
            self.logcat_thread.stop()
            self.logcat_thread.wait()
            self.logcat_thread = None

        self.update_timer.stop()
        self.start_btn.setEnabled(True)
        self.stop_btn.setEnabled(False)
        self.pause_btn.setEnabled(False)
        self.is_paused = False
        self.pause_btn.setText("Pause")
        self.status_bar.showMessage("Logcat stopped")

    def toggle_pause(self):
        self.is_paused = not self.is_paused
        if self.is_paused:
            self.pause_btn.setText("Resume")
            self.status_bar.showMessage("Logcat paused")
        else:
            self.pause_btn.setText("Pause")
            self.status_bar.showMessage("Logcat resumed")

    def restart_logcat(self):
        self.stop_logcat()
        QTimer.singleShot(100, self.start_logcat)

    def connection_lost(self):
        self.stop_logcat()
        self.status_bar.showMessage("Logcat connection lost")

    def buffer_log(self, log):
        if not self.is_paused:
            self.buffered_logs.append(log)

    def update_table(self):
        if not self.buffered_logs or self.is_paused:
            return

        level_map = {
            "All": None,
            "Verbose": "V",
            "Debug": "D",
            "Info": "I",
            "Warning": "W",
            "Error": "E",
            "Fatal": "F"
        }
        level_filter = level_map.get(self.log_level_combo.currentText())
        search_text = self.search_edit.text().lower()

        self.log_table.setSortingEnabled(False)

        row_count = self.log_table.rowCount()
        self.log_table.setRowCount(row_count + len(self.buffered_logs))

        added_rows = 0
        for log in self.buffered_logs:
            if not log.strip():
                continue

            try:
                # Parse log line
                time_part = log[:18]
                remaining = log[18:].strip()

                # Split PID and TID
                pid_tid = remaining.split(maxsplit=2)
                if len(pid_tid) < 2:
                    continue

                pid = pid_tid[0]
                tid = pid_tid[1]
                remaining = pid_tid[2] if len(pid_tid) > 2 else ""

                # Split level and tag
                level_tag = remaining.split(maxsplit=1)
                if len(level_tag) < 1:
                    continue

                level = level_tag[0][0]  # First character (V/D/I/W/E/F)
                remaining = level_tag[1] if len(level_tag) > 1 else ""

                # Apply level filter
                if level_filter and level != level_filter:
                    continue

                # Split tag and message
                tag_msg = remaining.split(':', 1)
                tag = tag_msg[0]
                message = tag_msg[1] if len(tag_msg) > 1 else ""

                # Apply package filter
                if self.current_package and self.current_package != "All":
                    if self.current_package not in tag and self.current_package not in message:
                        continue

                # Apply search filter
                if search_text and search_text not in log.lower():
                    continue

                # Add to table
                self.log_table.setItem(row_count + added_rows, 0, QTableWidgetItem(time_part))
                self.log_table.setItem(row_count + added_rows, 1, QTableWidgetItem(pid))
                self.log_table.setItem(row_count + added_rows, 2, QTableWidgetItem(tid))

                level_item = QTableWidgetItem(level)
                level_item.setForeground(self.color_map.get(level, QColor(0, 0, 0)))
                self.log_table.setItem(row_count + added_rows, 3, level_item)

                self.log_table.setItem(row_count + added_rows, 4, QTableWidgetItem(tag))
                self.log_table.setItem(row_count + added_rows, 5, QTableWidgetItem(message.strip()))

                added_rows += 1
            except Exception as e:
                print(f"Error parsing log: {e}")
                # Add as raw line if parsing fails
                self.log_table.setItem(row_count + added_rows, 5, QTableWidgetItem(log.strip()))
                added_rows += 1

        # Adjust row count to only show actually added rows
        if added_rows < len(self.buffered_logs):
            self.log_table.setRowCount(row_count + added_rows)

        self.buffered_logs = []

        # Auto-scroll to bottom
        if added_rows > 0:
            self.log_table.scrollToBottom()

        self.log_table.setSortingEnabled(True)

    def clear_logs(self):
        self.log_table.setRowCount(0)
        self.buffered_logs = []

    def closeEvent(self, event):
        self.stop_logcat()
        event.accept()


if __name__ == "__main__":
    # Install pure-python-adb if not available: pip install pure-python-adb
    try:
        from ppadb.client import Client as AdbClient
    except ImportError:
        print("Please install pure-python-adb: pip install pure-python-adb")
        sys.exit(1)

    app = QApplication(sys.argv)
    viewer = LogcatViewer()
    viewer.show()
    sys.exit(app.exec_())