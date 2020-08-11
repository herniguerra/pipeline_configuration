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


class MWQComment(QtWidgets.QWidget):
    """ Many Worlds custom import joint module. """
    def __init__(self, parent=None):
        super(MWQComment, self).__init__(parent)
        self.mw_type_id = "MWQComment"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        self.create_connections()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        main_layout = QtWidgets.QVBoxLayout(self)
        scripts_frame = mw_QFrame.MWQFrame()
        base_layout = QtWidgets.QHBoxLayout(scripts_frame)
        base_layout.setMargin(1.5)
        base_layout.setSpacing(3)

        # Add the widgets.
        base_layout.addWidget(self.comment_field)
        base_layout.addWidget(self.comment_line)
        base_layout.addWidget(self.build_state)
        main_layout.addWidget(scripts_frame)

    def create_widgets(self):
        """ Widgets definition. """

        self.comment_line = mw_QLineEdit.MWQLineEdit("Publish Comment...")
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)


    def create_connections(self):
        """ Create the connection for the widgets signals. """
        # Connect
        pass

    def load_scrips_libraries(self):
        """ From user library selection load methods."""
        pass

