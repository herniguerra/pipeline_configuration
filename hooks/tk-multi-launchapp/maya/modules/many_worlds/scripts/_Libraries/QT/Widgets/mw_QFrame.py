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


class MWQFrame(QtWidgets.QFrame):
    def __init__(self, custom_name="importPackageFrame", parent=None):
        super(MWQFrame, self).__init__(parent)
        self.setLineWidth(1)
        self.setFrameStyle(QtWidgets.QFrame.Box|QtWidgets.QFrame.Raised)
        self.setSizePolicy(
            QtWidgets.QSizePolicy(
                QtWidgets.QSizePolicy.Expanding,
                QtWidgets.QSizePolicy.Fixed
            )
        )
