"""
Many Worlds qt widgets collections.

:created: 07/05/2020
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

from _Builders import mw_creature_manager_lib
from _Collections import mw_json_utils, mw_maya_utils, mw_pyside_utils
from _Libraries.QT.Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel, mw_QComboBox, mw_QSeparator
    
# Get the main Many Worlds skin cluster class manager
from _Collections.mw_skin_manager import MWSkinClusterManager

from _Libraries.QT.Widgets.Modules import mw_QSkeletonModule

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_QComboBox)
reload(mw_QSkeletonModule)


class MWQModuleConstructor(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(self, parent=None):
        super(MWQModuleConstructor, self).__init__(parent)
        self.mw_type_id = "MWQModuleConstructor"
        self.main_parent = parent
        self.create_widgets()
        self.create_layouts()
        #self.create_connections()
        self.create_skeleton_module()

    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.main_layout.setMargin(6)
        self.main_layout.setSpacing(3)

        # Frames
        self.module_frame = mw_QFrame.MWQFrame(self)
        self.module_frame_layout = QtWidgets.QVBoxLayout(self.module_frame)

        # Adde the widgets.
        self.module_frame_layout.addWidget(self.tittle)
        self.module_frame_layout.addWidget(self.module_type)

        self.main_layout.addWidget(self.module_frame)
        self.main_layout.addItem(self.spacer)

    def create_widgets(self):
        """ Define the object widgets. """

        # Headers.
        self.tittle = mw_QLabel.MWQLabel(
            custom_text="Many-Worlds Module Builder",
            aligment="rigth",
        )
        self.create_custom_label()

        # Combo Boxes
        self.module_type = mw_QComboBox.MWQComboBox(
            item_list= ["Puppet", "Skeleton", "Muscles", "Cloth"]
        )

        self.spacer = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)

    def create_connections(self):
        pass

    def create_puppet_module(self):
        print("Not Implemented")

    def create_skeleton_module(self):
        """ Create the skeleton modules  builder. """

        # Clear
        #mw_pyside_utils.MWWidgetsFunctions.clear_layout(self.modules_layout)

        # Create the module.
        self.skeleton_modules = mw_QSkeletonModule.MWQSkeletonModule(self.main_parent)
        self.module_frame_layout.addWidget(self.skeleton_modules)


    def create_muscle_module(self):
        print("Not Implemented")

    def create_cloth_module(self):
        print("Not Implemented")

    def create_custom_label(self):
        """ Create a custom label for the window."""

        image_path = "M:/Many-Worlds/Resources/Images/Manage_Modules_icons/skeleton01.png"
        image_object = QtGui.QImage(image_path).scaled(
            25, 25,
            QtCore.Qt.IgnoreAspectRatio, QtCore.Qt.SmoothTransformation
        )

        pixmap = QtGui.QPixmap()
        pixmap.convertFromImage(image_object)

        # Labels creation.
        self.main_label = mw_QLabel.MWQLabel(
            custom_text="Many-Worlds Creature Manager",
            aligment="rigth",
        )

        self.main_label.setPixmap(pixmap)
        self.main_label.setMaximumSize(17600, 25)

