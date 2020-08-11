"""
Many Worlds qt widgets collections.

:created: 11/05/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# System and Python Libraries
import logging
import importlib
import sys, inspect

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui
from shiboken2 import wrapInstance

from _Builders import mw_creature_manager_lib
from _Collections import mw_json_utils, mw_maya_utils, mw_pyside_utils
from _Widgets import mw_QPushButton, mw_QLineEdit, mw_QFrame, mw_QCheckBox,\
     mw_QLabel, mw_QComboBox, mw_QSeparator

reload(mw_QPushButton)
reload(mw_QLineEdit)
reload(mw_QFrame)
reload(mw_QCheckBox)
reload(mw_QLabel)
reload(mw_creature_manager_lib)
reload(mw_QComboBox)


class MWQTabWidgetBuilder(QtWidgets.QTabWidget):
    """ Many Worlds custom QTabWidget class. """
    def __init__(self, parent=None):
        super(MWQTabWidgetBuilder, self).__init__(parent)
        self.mw_type_id = "MWQTabWidgetBuilder"
        self.main_parent = parent
        self.setObjectName("creature_builder_panel")


    def add_tab(self, tab_widget, contents, tab_name):
        """Add tab to the main tab widget.

        Arguments:
            content {QtWidget} -- The widget contents of the tab
            name {[str]} -- The tab name
        """

        # Create the tab.
        new_tab = QtWidgets.QWidget()
        new_tab.setObjectName("sssss")
        new_tab_layout = QtWidgets.QVBoxLayout(new_tab)

        # Layouts.
        scroll_Area = QtWidgets.QScrollArea(new_tab)
        scroll_Area.setWidgetResizable(True)

        scroll_area_contents = QtWidgets.QWidget()
        scroll_area_contents.setGeometry(QtCore.QRect(0, 0, 833, 452))
        scroll_area_contents.setObjectName("scrollAreaWidgetContents")

        scroll_area_layout = QtWidgets.QVBoxLayout(scroll_area_contents)

        for item in contents:
            scroll_area_layout.addWidget(item)

        scroll_Area.setWidget(scroll_area_contents)
        new_tab_layout.addWidget(scroll_Area)
        tab_widget.addTab(new_tab, tab_name)

        return new_tab

    def serialize(self):
        """From give widget generate a file with childer widget session data.
        """
        # Define the main dictionary to hold the information
        demo_dict = {
            "main_tab_widget": "creature_builder_panel",
            "tabs":{}
        }

        for tab_index in xrange(0, self.count()): # pylint: disable=undefined-variable
            child_tab = self.widget(tab_index)
            tab_name = child_tab.tab_name
            # Check for valid modules
            for module_index in xrange(0, child_tab.contents_layout.count()): # pylint: disable=undefined-variable
                module_data = []
                tab_children = child_tab.contents_layout.itemAt(module_index).widget()
                if hasattr(tab_children, "mw_long_type_id"):
                    if hasattr(tab_children, "serialize_type"):
                        module_data = [
                            tab_children.file_path.text(),
                            tab_children.build_state.isChecked().capitalize()
                        ]
                        if demo_dict["tabs"].has_key(tab_name): # pylint: disable=maybe-no-member
                            demo_dict["tabs"][tab_name].update({"{0}_{1}".format(
                                str(module_index), tab_children.mw_long_type_id): module_data}
                            )
                        else:
                            demo_dict["tabs"][tab_name] = {"{0}_{1}".format(
                                str(module_index), tab_children.mw_long_type_id): module_data
                            }
                        continue

        # Save the data to given path from user.
        file_path = mw_maya_utils.open_file(
            0,
            filters="Json Files (*.json)",
            dialogStyle=2
        )[0]
        if file_path:
            mw_json_utils.mw_write_json(demo_dict, file_path)



    def deserializable(self):
        """Create a CM session base on given data.
        """
        file_path = mw_json_utils.load_json_from_file()
        if "tabs" in file_path.keys():
            session_components = []
            for tab in file_path["tabs"].keys():
                for child_widget in file_path["tabs"][tab].keys():
                    _widget = child_widget.split("_", 1)[1]
                    file, state = file_path["tabs"][tab][child_widget]
                    _module = importlib.import_module("Widgets.{}".format(_widget.split(".")[0]))
                    #new_class = "{}.{}".format(_module, _widget.split(".")[1])

                    #loaded_class = self.class_for_name('foo.bar', 'Baz')
                    
                    
                    #print(_module._widget.split(".")[1])
                    #continue

                    #new_class = self.str_to_class(_module, _widget.split(".")[1])
 
                    loaded_class = self.class_for_name(_module.__file__, _widget.split(".")[1])
                    
                    
                    
                    
                    continue
                #clsmembers = inspect.getmembers(sys.modules[_module], inspect.isclass)
                #print (clsmembers)

        """
        session_components.append("{}.{}".format(_widget, widget.split(".", 1)[1]))

        mw_pyside_utils.MWWidgetsFunctions.add_tab(
            self,
            session_components,
            "skeleton_rig_builder_LOD_{}".format(self.lod_type.currentText())
        )
        """

    def str_to_class(self, module, classname):
        return getattr(sys.modules[module], classname)

    def class_for_name(self, module_name, class_name):
        # load the module, will raise ImportError if module cannot be loaded
        m = __import__(module_name, globals(), locals(), class_name)
        # get the class, will raise AttributeError if class cannot be found
        c = getattr(m, class_name)
        return c

