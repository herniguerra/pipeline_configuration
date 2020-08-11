"""
Many Worlds run script module.

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

from Collections import mw_maya_utils, mw_pyside_utils
from Widgets import mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel, mw_QComboBox

reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)


class MWQRunScript(QtWidgets.QWidget):
    """ Many Worlds custom import joint module. """
    def __init__(self, parent=None):
        super(MWQRunScript, self).__init__(parent)
        self.mw_type_id = "MWQRunScript"
        self.mw_long_type_id = "mw_QRunScript.MWQRunScript"
        self.serialize_type = "text"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        self.create_connections()


    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        scripts_frame = mw_QFrame.MWQFrame()
        self.base_layout = QtWidgets.QHBoxLayout(scripts_frame)
        self.base_layout.setMargin(1.5)
        self.base_layout.setSpacing(3)

        # Add the widgets.
        self.base_layout.addWidget(self.scripts_libraries)
        self.base_layout.addWidget(self.file_path)
        self.base_layout.addWidget(self.build_state)
        self.main_layout.addWidget(scripts_frame)

    def create_widgets(self):
        """ Widgets definition. """

        self.scripts_libraries = mw_QComboBox.MWQComboBox(
            self.main_parent,
            item_list=["Maya", "Ziva", "mGear"]
        )
        self.file_path = mw_QLineEdit.MWQLineEdit("Set Scripts...")
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)


    def create_connections(self):
        """ Create the connection for the widgets signals. """
        # Connect
        pass

    def load_scrips_libraries(self):
        """ From user library selection load methods."""
        pass

