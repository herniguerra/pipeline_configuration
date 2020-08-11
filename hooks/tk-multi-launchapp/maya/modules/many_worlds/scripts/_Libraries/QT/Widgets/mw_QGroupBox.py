"""
Many Worlds qt widgets collections.

:created: 24/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui


class MWQGroupBox(QtWidgets.QWidget):
    def __init__(self, custom_name="importPackageFrame", parent=None):
        super(MWQGroupBox, self).__init__(parent)
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Fixed
            )
        )

        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setObjectName("main_layout")
        self.group_box = QtWidgets.QGroupBox()

        self.base_layout = QtWidgets.QVBoxLayout(self.group_box)
        self.base_layout.setObjectName("base_layout")
        self.base_layout.setSpacing(1)
        self.base_layout.setContentsMargins(1, 1, 1, 1)

        self.main_layout.addWidget(self.group_box)

        self.setStyleSheet("QGroupBox {\n"
                        "  border: 1px solid gray;\n"
                        "  border-radius: 5px;\n"
                        "  margin-top: 0.5em;\n"
                        "}\n"
                        "\n"
                        "QGroupBox::title {\n"
                        "  background-color: transparent;\n"
                        "  padding-top: -24px;\n"
                        "  padding-left: 8px;\n"
                        "}")
                        
        self.verticalLayout = QtWidgets.QVBoxLayout(self)
        #self.setStyleSheet("background-color: rgb(46, 54, 64); border: 1px solid white;")
