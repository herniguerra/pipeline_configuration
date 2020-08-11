"""
Many Worlds qt widgets colelctions.

:created: 24/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# System and Python Libraries
import logging

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui
from shiboken2 import wrapInstance


from _Collections import mw_pyside_utils

reload(mw_pyside_utils)


class MWQPushButton(QtWidgets.QPushButton):
    """ Many Worlds custom QDialog class. """
    def __init__(self, text=None, icon_type=None, width=None, heigth=None):
        super(MWQPushButton, self).__init__()

        if text:
            self.setText(text)

        if icon_type == "file_open":
            self.setIcon(QtGui.QIcon(":fileOpen.png"))

        if width and heigth:
            self.setMinimumSize(width, heigth)