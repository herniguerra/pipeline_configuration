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


class MWQCheckBox(QtWidgets.QCheckBox):
    """ Many Worlds custom QDialog class. """
    def __init__(self, text=None, checked=None, parent=None):
        super(MWQCheckBox, self).__init__(parent)
        self.mw_type_id = "MWQCheckBox"
        self.serialize_type = "checkBox"
        self.main_parent = parent
        if not text:
            self.setText(text)

        if checked == True:
            self.setChecked(True)
