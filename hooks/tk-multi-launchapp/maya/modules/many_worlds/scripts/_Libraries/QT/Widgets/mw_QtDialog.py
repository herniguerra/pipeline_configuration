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


from Collections import mw_pyside_utils, mw_serializer

reload(mw_pyside_utils)
reload(mw_serializer)


serializer = mw_serializer.Serializable()


class MWQDialog(QtWidgets.QDialog):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=mw_pyside_utils.maya_main_window()):
        super(MWQDialog, self).__init__(parent)

    class Serializable:
        def __init__(self):
            self.id = id(self)

        @classmethod
        def serializable(self):
            print("NotImplementedError")

        @classmethod
        def deserializable(self, data, hasmap={}):
            print("NotImplementedError")