"""
Many Worlds qt widgets collections.

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


class MWQFrame(QtWidgets.QFrame):
    """ Many Worlds custom QDialog class. """
    def __init__(self, orientation=None):
        super(MWQFrame, self).__init__()

        if orientation == "vertical":
            self.setFrameShape(QtWidgets.QFrame.VLine)
        else:
            self.setFrameShape(QtWidgets.QFrame.HLine)
        self.setFrameShadow(QtWidgets.QFrame.Sunken)