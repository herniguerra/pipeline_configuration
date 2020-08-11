"""
Many Worlds PySide libraries.

:created: 13/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# System and Python Libraries
import logging

#Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui
from shiboken2 import wrapInstance

# Maya libraries
from maya import cmds, OpenMayaUI
from _Collections import mw_ui_files_manager
from _Collections.mw_maya_utils import *
from _Collections import mw_skin_manager
from _Builders.mw_creature_manager_lib import *

reload(mw_ui_files_manager)
reload(mw_maya_utils)
reload(mw_skin_manager)


def maya_main_window():
    """Returns the maya main widnow widget."""

    window_pointer = OpenMayaUI.MQtUtil.mainWindow()
    if window_pointer:
        # pylint: disable=undefined-variable
        return wrapInstance(long(window_pointer), QtWidgets.QWidget)



class MWWidgetsFunctions(object):
    """ Main class that gives custom functionalitty to Many-Worlds widgets."""

    def __init__(self):
        print("Pyside utils initiate")
        pass

    @staticmethod
    def execute_session(custom_widget, type_widget):
        """ Iterate the current main section and run base on type data."""

        """
        COMMAND_CATEGORIES = {
            "anatomical_libraries": mw_creature_manager_lib.import_creature_package(),
            "guides_files": mw_maya_utils.import_multiples_files()
        }"""

        # Get types loop.
        maya_files_filters = ["MWQImportJoints", "MWQImportModule"]
        for widget_item in custom_widget.findChildren(type_widget):
            if hasattr(widget_item, "mw_type_id"):
                if widget_item.text() != "":
                    if widget_item.mw_type_id == "none":
                        continue

                    if widget_item.mw_type_id == "MWQPackage":
                        widget_data = serialize_creature_package_to_maya(
                            widget_item.text()
                        )
                        import_creature_package(widget_data)
                        continue

                    if widget_item.mw_type_id in maya_files_filters:
                        import_multiples_files([widget_item.text()])
                        continue

                    if widget_item.mw_type_id == "mw_maya_skin_file":
                        # Get the Skelton node
                        skeleton_node = mw_maya_utils.get_custom_nodes("skeleton_node")

                        for item in skeleton_node.listConnections(type="mesh"):
                            file_path = "{0}/{1}.mwSkin".format(
                                widget_item.text(), item.name())
                            mw_skin_manager.MWSkinClusterManager.createAndImport(
                                file_path, item.name()
                            )
                        continue

                    if widget_item.mw_type_id == "mw_QLineEditScript":
                        command = widget_item.text()
                        if command:
                            exec(command)
                            continue


    @staticmethod
    def return_widget_from_id_type(custom_widget, type_widget, type_id, type_id_name=None):
        """ From given widget type return type_id items. """
        item_widgets = []
        if hasattr(custom_widget, "findChildren"):
            for item_widget in custom_widget.findChildren(type_widget):
                if hasattr(item_widget, type_id):
                    if item_widget.mw_type_id == type_id_name:
                        if item_widget not in item_widgets:
                            item_widgets.append(item_widget)
                            return item_widget


    @staticmethod
    def get_item_from_list(widget):
        """ From given list return selection. """
        item = widget.selectedItems()[0]
        return item.text(0)


    @staticmethod
    def select_item_list_widget(QListWidget):
        """From given list widget select items in Maya scene."""
        if mw_maya_utils.get_modifier == 'shift':
            for item in QListWidget.selectedItems():
                 cmds.select(item.text(), add=True)
        elif mw_maya_utils.get_modifier == 'ctrl':
            for item in QListWidget.selectedItems():
                 cmds.select(item.text(), add=True)
        else:
            cmds.select(QListWidget.currentItem().text())

    @staticmethod
    def select_item_tree_list_widget(QTreetWidget):
        """From given list widget select items in Maya scene."""

        if mw_maya_utils.get_modifier == 'shift':
            for item in QTreetWidget.selectedItems():
                if cmds.objExists(item.text(0)):
                    cmds.select(item.text(0), add=True)

        elif mw_maya_utils.get_modifier == 'ctrl':
            for item in QTreetWidget.selectedItems():
                if cmds.objExists(item.text(0)):
                    cmds.select(item.text(0), add=True)
        else:
            if cmds.objExists(QTreetWidget.currentItem().text(0)):
                cmds.select(QTreetWidget.currentItem().text(0))


    @staticmethod
    def _setColor(text, state):
        """ Function to set a custom color to given text."""

        def _create_color(text, color, backgroundColor=None):
            """ Create custom color item. """
            fileItem = QtWidgets.QListWidgetItem(text)
            fileItem.setForeground(color)
            return fileItem

        # Predefine colors.
        STATUSCOLORS = {
            'updated': QtCore.QBrush(QtGui.QColor(50, 150, 50)),
            'updateBackground': QtCore.QBrush(QtGui.QColor(165, 165, 165)),
            'notUpdated': QtCore.QBrush(QtGui.QColor(150, 50, 50)),
            'notUpdateBackground': QtCore.QBrush(QtGui.QColor(35, 35, 35)),
            'process': QtCore.QBrush(QtGui.QColor(29, 116, 250))}

        # Set the color.
        item = _create_color(text, STATUSCOLORS[state])
        return item


    @staticmethod
    def clear_layout(layout):
        while layout.count():
            child = layout.takeAt(0)
            if child.widget() is not None:
                child.widget().deleteLater()
            elif child.layout() is not None:
                clear_layout(child.layout())

    @staticmethod
    def get_widget_by_name(name):
        widgets = QtWidgets.QApplication.instance().topLevelWidgets()
        widgets = widgets + QtWidgets.QApplication.instance().allWidgets()
        for x in widgets:
            if str(x.objectName) == name:
                return x


    @staticmethod
    def _clickable(widget):

        class Filter(QtCore.QObject):
            clicked = QtCore.Signal()
            def eventFilter(self, obj, event):
                if obj == widget:
                    if event.type() == QtCore.QEvent.MouseButtonRelease:
                        if obj.rect().contains(event.pos()):
                            self.clicked.emit()
                            # The developer can opt for .emit(obj) to get the object within the slot.
                            return True
                
                return False
        
        filter = Filter(widget)
        widget.installEventFilter(filter)
        return filter.clicked


    @staticmethod
    def add_tab(tab_widget, contents, tab_name):
        """Add tab to the main tab widget.

        Arguments:
            content {QtWidget} -- The widget contents of the tab
            name {[str]} -- The tab name
        """

        # Create the tab.
        new_tab = QtWidgets.QWidget()
        new_tab.setObjectName("")
        new_tab.mw_type_id = "MWTabWidget"
        new_tab.tab_name = tab_name

        new_tab_layout = QtWidgets.QVBoxLayout(new_tab)
        new_tab_layout.setMargin(1)
        new_tab_layout.setSpacing(1)

        # Layouts.
        scroll_Area = QtWidgets.QScrollArea(new_tab)
        scroll_Area.setWidgetResizable(True)

        scroll_area_contents = QtWidgets.QWidget()
        scroll_area_contents.setGeometry(QtCore.QRect(0, 0, 833, 452))
        scroll_area_contents.setObjectName("scrollAreaWidgetContents")

        scroll_area_layout = QtWidgets.QVBoxLayout(scroll_area_contents)
        scroll_area_layout.setMargin(1)
        scroll_area_layout.setSpacing(1)

        for item in contents:
            scroll_area_layout.addWidget(item)
        
        spacer = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        scroll_area_layout.addItem(spacer)

        scroll_Area.setWidget(scroll_area_contents)
        new_tab_layout.addWidget(scroll_Area)
        new_tab.contents_layout = scroll_area_layout
        tab_widget.addTab(new_tab, tab_name)

        return new_tab


    @staticmethod
    def create_custom_label(image_path, aligment="rigth",scale_w=60, scale_h=60):
        """ Create a custom label for the window."""

        image_object = QtGui.QImage(image_path).scaled(
            scale_w, scale_h,
            QtCore.Qt.IgnoreAspectRatio, QtCore.Qt.SmoothTransformation
        )

        pixmap = QtGui.QPixmap()
        pixmap.convertFromImage(image_object)

        # Labels creation.
        main_label = QtWidgets.QLabel()
        if aligment == "rigth":
            main_label.setAlignment(QtCore.Qt.AlignRight)

        main_label.setPixmap(pixmap)
        main_label.setStyleSheet("QLabel{\n"
            "\n"
            "border: 1px solid rgb(78, 78, 78);\n"
            "border-radius: 1px;\n"
            "border-color: rgb(98, 98, 98);\n"
            "background-color: rgb(15, 15, 15);\n"
            "\n"
            "}")
        main_label.setMinimumSize(scale_w, scale_h)

        return main_label


class QtUILoader(QtWidgets.QDialog):

    def __init__(
        self,
        ui_file,
        window_tittle,
        parent=maya_main_window(),
        style=True
    ):
        super(QtUILoader, self).__init__(parent)

        #Constants
        self.UIFILE = ui_file
        self.WINDOWTITLE = window_tittle
        self.setWindowTitle(self.WINDOWTITLE)
        self.style = style

        self.init_ui()
        self.create_layout()
        self.create_connections()
        self.aesthetics_definition(load_style=self.style)

    def init_ui(self):
        """Initialize the Qt Desinger file UI."""

        # From file path generate a qt file object
        ui_file = QtCore.QFile(self.UIFILE)
        ui_file.open(QtCore.QFile.ReadOnly)

        # Parent the ui file widget to the main class.
        loader = QtUiTools.QUiLoader()
        self.ui = loader.load(ui_file, parentWidget=self)

        # Close the ui widget file.
        ui_file.close()

    def create_layout(self):
        """ Creat the base layout  for the window."""
        main_layout = QtWidgets.QVBoxLayout(self)
        main_layout.setContentsMargins(6, 6, 6, 6)
        main_layout.addWidget(self.ui)

    def create_connections(self):
        pass


    def aesthetics_definition(self, load_style=True):
        """ Define the overall look of the window. """

        #Set stylesheet
        if load_style:
            sshFile = mw_ui_files_manager.mw_ui_stylesheets["generic"]
            with open(sshFile,"r") as fh:
                self.setStyleSheet(fh.read())

    




"""
if  __name__ == "__main__":    
    try:
        QtUILoader_ui.close() # pylint: disable=used-before-assignment
        QtUILoader_ui.deleteLater()
    except:
        pass

WINDOWTITLE = "Many-Worlds Creature Builder"
UIFILE = "M:/Many-Worlds/Code/mw-Modules/Python/UIFiles/MWSkeletonBuilder.ui"


QtUILoader_ui = QtUILoader(UIFILE, WINDOWTITLE)
QtUILoader_ui.show()

logger = logging.getLogger(__name__)
logger.info("Custom windows was created.")
"""