"""
Many Worlds qt widgets collections.

:created: 12/05/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# Qt Libraries
from PySide2 import QtCore, QtUiTools, QtWidgets, QtGui

class Serializable():
    def __init__(self):
        self.id = id(self)

    def serialize(self, main_widget):
        """ From give widget generate a file with childer widget session data.

        Arguments:
            main_widget {[type]} -- [description]

        Returns:
            [type] -- [description]
        """
        tab_widget = mw_pyside_utils.MWWidgetsFunctions.return_widget_from_id_type(
                main_widget,
                QT,
                "mw_type_id",
                "MWQAssetsTreeView")
        
        for item_widget in main_widget.findChildren(main_widget):
            if hasattr(item_widget, "mw_type_id"):
                if item_widget.mw_type_id == "MWTabWidget":
                    pass


        demo_dict = {
            "main_tab_widget": "creature_builder_panel",
            "tabs" : {
                "skeleton_rig_builder_LOD200" : {"mw_creature_apkg":demo_path, "mw_import_joints":demo_path1},
                "skeleton_rig_builder_LOD100" : {"mw_skin_":demo_path3, "mw_scrips_file":demo_path4}
            }
        }
    
    
    def deserializable(self, data, hasmap={}):
        raise NotImplementedError()