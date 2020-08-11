"""
Many Worlds qt widgets collections.

:created: 09/08/2020
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
     mw_QLabel

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_pyside_utils)


class MWQImportModule(QtWidgets.QWidget):
    """ Many Worlds custom QDialog class. """
    def __init__(
        self,
        mw_type_id,
        mw_long_type_id,
        serialize_type,
        name,
        parent=None
    ):
        super(MWQImportModule, self).__init__(parent)

        self.main_parent = parent
        self.mw_type_id = mw_type_id
        self.mw_long_type_id = mw_long_type_id
        self.serialize_type = serialize_type
        self.file_name = name
        self.create_widgets()
        self.create_layouts()
        self.create_connections()
        self.show()

        print(self.objectName)


    def create_layouts(self):
        """ Create the main layout for the widget."""

        # Layouts definition
        self.main_layout = QtWidgets.QVBoxLayout(self)
        self.frame = mw_QFrame.MWQFrame()

        self.base_layout = QtWidgets.QHBoxLayout(self.frame)
        self.base_layout.setMargin(1)
        self.base_layout.setSpacing(3)

        self.main_layout.addWidget(self.label)
        self.base_layout.addWidget(self.import_file)
        self.base_layout.addWidget(self.file_path)
        self.base_layout.addWidget(self.set_path_button)
        self.base_layout.addWidget(self.set_load_from_list_button)
        self.base_layout.addWidget(self.build_state)
        
        # Adde the widgets.
        self.main_layout.addWidget(self.frame)
        self.main_layout.addWidget(self.separator)


    def create_widgets(self):
        """ Define the default widgets of the module. """

        # Layout definition.
        self.label = mw_QLabel.MWQLabel(
            custom_text="Build {} Components".format(self.file_name)
        )

        self.separator = QtWidgets.QFrame()
        self.separator.setFrameShape(QtWidgets.QFrame.HLine)
        self.separator.setFrameShadow(QtWidgets.QFrame.Sunken)

        self.import_file = mw_QPushButton.MWQPushButton(
            "Import File"
        )
        self.import_file.setMaximumSize(16777215, 35)
        self.file_path = mw_QLineEdit.MWQLineEdit(
            "{} File Path...".format(self.file_name)
        )
        self.file_path.mw_type_id = "MWQImportModule"
        
        self.set_path_button = mw_QPushButton.MWQPushButton(
            icon_type="file_open"
        )
        self.set_path_button.setMaximumSize(36, 20)

        self.set_load_from_list_button = mw_QPushButton.MWQPushButton(
            text=">>>"
        )
        self.set_load_from_list_button.setMaximumSize(36, 20)
        self.build_state = mw_QCheckBox.MWQCheckBox(" ", True)


    def create_connections(self):
        self.import_file.clicked.connect(self.import_current_file)
        self.set_path_button.clicked.connect(self.set_anatomy_package)
        self.set_load_from_list_button.clicked.connect(
            self.set_path_from_tree_widget
        )


    def set_anatomy_package(self):
        """Define package location base on given file. """

        package_file = mw_maya_utils.open_file(
            1,
        )
        if package_file:
            self.file_path.clear()
            self.file_path.setText(package_file[0])


    def import_current_file(self):
        """
        """
        mw_maya_utils.import_multiples_files([self.file_path.text()])


    def set_path_from_tree_widget(self):
        """ Set path from list. """

        valid_formats = ["ma", "mb", "apkg", "obj"]


        data = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
            self.main_parent,
            QtWidgets.QTreeWidget,
            "mw_type_id",
            "MWQAssetsTreeView")

        selected_item = data.selectedItems()
        if selected_item:
            tree_item = selected_item[0]
            file_path = (tree_item.data(0, QtCore.Qt.UserRole))

        if file_path:
            file_info = QtCore.QFileInfo(file_path)
            if file_info.suffix().lower() in valid_formats:
                self.file_path.clear()
                self.file_path.setText(file_path)
            else:
                from maya import OpenMaya
                OpenMaya.MGlobal.displayError(
                    "Please select a valid file. Ej {}".format(valid_formats)
                )

"""
if  __name__ == "__main__":
    
    try:
        QtUILoader_ui.close() # pylint: disable=used-before-assignment
        QtUILoader_ui.deleteLater()
    except:
        pass


logger = logging.getLogger(__name__)
logger.info("An instance of the class {} was created".format(__name__))
"""