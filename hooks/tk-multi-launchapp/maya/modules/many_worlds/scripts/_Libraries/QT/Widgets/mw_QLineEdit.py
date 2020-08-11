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


from Collections import mw_pyside_utils

reload(mw_pyside_utils)


class MWQLineEdit(QtWidgets.QLineEdit):
    """ Many Worlds custom QDialog class. """
    def __init__(self, place_holder_text=None):
        super(MWQLineEdit, self).__init__()
        self.mw_type_id = "none"
        self.serialize_type = "text"
        if not place_holder_text:
            place_holder_text = "Many-Worlds line edit"
        self.setPlaceholderText(place_holder_text)
        self.setMinimumSize(QtCore.QSize(16777215, 23))