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


class MWQComboBox(QtWidgets.QComboBox):
    def __init__(self, custom_name="importPackageFrame", parent=None, item_list=None):
        super(MWQComboBox, self).__init__(parent)
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Fixed
            )
        )

        if item_list:
            self.addItems(item_list)