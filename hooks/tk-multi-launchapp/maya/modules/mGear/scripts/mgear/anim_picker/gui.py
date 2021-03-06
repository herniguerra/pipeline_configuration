# Copyright (c) 2018 Guillaume Barlier
# This file is part of "anim_picker" and covered by MIT,
# read LICENSE.md and COPYING.md for details.
# PyQt4 user interface for anim_picker

# python
import os

# dcc
from maya import cmds
import pymel.core as pm
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin

# mgear
from mgear.core import pyqt, callbackManager
from mgear.vendor.Qt import QtCore, QtWidgets, QtOpenGL, QtGui

# module
from . import picker_node
from mgear.anim_picker.widgets import basic
from mgear.anim_picker.widgets import picker_widgets
from mgear.anim_picker.widgets import overlay_widgets

from handlers import __EDIT_MODE__
from handlers import __SELECTION__

reload(basic)
reload(picker_node)
reload(picker_widgets)
reload(overlay_widgets)


# =============================================================================
# Dependencies ---
# =============================================================================
class OrderedGraphicsScene(QtWidgets.QGraphicsScene):
    '''
    Custom QGraphicsScene with x/y axis line options for origin
    feedback in edition mode
    (provides a center reference to work from, view will fit what ever
    is the content in use mode).

    Had to add z_index support since there was a little z
    conflict when "moving" items to back/front in edit mode
    '''
    __DEFAULT_SCENE_WIDTH__ = 4000
    __DEFAULT_SCENE_HEIGHT__ = 4000

    def __init__(self, parent=None):
        QtWidgets.QGraphicsScene.__init__(self, parent=parent)

        self.set_default_size()
        self._z_index = 0

    def set_size(self, width, heith):
        '''Will set scene size with proper center position
        '''
        self.setSceneRect(-width / 2, -heith / 2, width, heith)

    def set_default_size(self):
        self.set_size(self.__DEFAULT_SCENE_WIDTH__,
                      self.__DEFAULT_SCENE_HEIGHT__)

    def get_bounding_rect(self, margin=0, selection=False):
        '''
        Return scene content bounding box with specified margin
        Warning: In edit mode, will return default scene rectangle
        '''
        # Return default size in edit mode
        # if __EDIT_MODE__.get():
        #     return self.sceneRect()

        # Get item boundingBox
        if selection:
            # scene_rect = self.selectionArea().boundingRect()
            sel_items = self.get_selected_items()
            if not sel_items:
                return
            scene_rect = QtCore.QRectF()

            #init coordinates with the first element
            rec = sel_items[0].boundingRect().getCoords()
            x1 = (rec[0] + sel_items[0].x())
            y1 = (rec[1] + sel_items[0].y())
            x2 = (rec[2] + sel_items[0].x())
            y2 = (rec[3] + sel_items[0].y())

            for item in sel_items[1:]:
                rec = item.boundingRect().getCoords()
                if (rec[0] + item.x()) < x1:
                    x1 = (rec[0] + item.x())
                if (rec[1] + item.y()) < y1:
                    y1 = (rec[1] + item.y())
                if (rec[2] + item.x()) > x2:
                    x2 = (rec[2] + item.x())
                if (rec[3] + item.y()) > y2:
                    y2 = (rec[3] + item.y())
            scene_rect.setCoords(x1, y1, x2, y2)

        else:
            scene_rect = self.itemsBoundingRect()

        # Stop here if no margin
        if not margin:
            return scene_rect

        # Add margin
        scene_rect.setX(scene_rect.x() - margin)
        scene_rect.setY(scene_rect.y() - margin)
        scene_rect.setWidth(scene_rect.width() + margin)
        scene_rect.setHeight(scene_rect.height() + margin)

        return scene_rect

    def clear(self):
        '''Reset default z index on clear
        '''
        QtWidgets.QGraphicsScene.clear(self)
        self._z_index = 0

    def set_picker_items(self, items):
        '''Will set picker items
        '''
        self.clear()
        for item in items:
            QtWidgets.QGraphicsScene.addItem(self, item)
            self.set_z_value(item)
        self.add_axis_lines()

    def get_picker_items(self):
        '''Will return all scenes' picker items
        '''
        picker_items = []
        # Filter picker items (from handles etc)
        for item in self.items():
            if not isinstance(item, picker_widgets.PickerItem):
                continue
            picker_items.append(item)
        return picker_items

    def picker_at(self, scene_pos, transform):
        item_at = self.itemAt(scene_pos, transform)
        if isinstance(item_at, picker_widgets.PickerItem):
            return item_at
        elif item_at and not isinstance(item_at, picker_widgets.PickerItem):
            return item_at.parentItem()
        else:
            return None

    def get_selected_items(self):
        return [item for item in self.get_picker_items()
                if item.polygon.selected]

    def clear_picker_selection(self):
        for picker in self.get_picker_items():
            picker.set_selected_state(False)
        self.update()

    def select_picker_items(self, picker_items, event=None):
        if event is None:
            modifiers = None
        else:
            modifiers = event.modifiers()

        # Shift cases (toggle)
        if modifiers == QtCore.Qt.ShiftModifier:
            for picker in picker_items:
                picker.set_selected_state(True)

        # Controls case
        elif modifiers == QtCore.Qt.ControlModifier:
            for picker in picker_items:
                picker.set_selected_state(False)

        # Alt case (remove)
        # elif modifiers == QtCore.Qt.AltModifier:
        else:
            self.clear_picker_selection()
            for picker in picker_items:
                picker.set_selected_state(True)

    def set_z_value(self, item):
        '''set proper z index for item
        '''
        item.setZValue(self._z_index)
        self._z_index += 1

    def addItem(self, item):
        '''Overload to keep axis on top
        '''
        QtWidgets.QGraphicsScene.addItem(self, item)
        self.set_z_value(item)


class GraphicViewWidget(QtWidgets.QGraphicsView):
    '''Graphic view widget that display the "polygons" picker items
    '''
    __DEFAULT_SCENE_WIDTH__ = 4000
    __DEFAULT_SCENE_HEIGHT__ = 4000

    def __init__(self,
                 namespace=None,
                 main_window=None):
        QtWidgets.QGraphicsView.__init__(self)

        self.setScene(OrderedGraphicsScene(parent=self))

        self.namespace = namespace
        self.main_window = main_window
        self.setParent(self.main_window)

        # Scale view in Y for positive Y values (maya-like)
        self.scale(1, -1)

        # Open GL render, to check...
        if basic.__USE_OPENGL__:
            # make that view use OpenGL
            gl_format = QtOpenGL.QGLFormat()
            gl_format.setSampleBuffers(True)
            gl_widget = QtOpenGL.QGLWidget(gl_format)

            # use the GL widget for viewing
            self.setViewport(gl_widget)

        self.setResizeAnchor(self.AnchorViewCenter)

        # TODO
        # Set selection mode
        self.setRubberBandSelectionMode(QtCore.Qt.IntersectsItemBoundingRect)
        self.setDragMode(self.RubberBandDrag)
        self.scene_mouse_origin = QtCore.QPointF()
        self.drag_active = False
        self.pan_active = False

        # Disable scroll bars
        self.setHorizontalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)
        self.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)

        # Set background color
        brush = QtGui.QBrush(QtGui.QColor(70, 70, 70, 255))
        self.setBackgroundBrush(brush)
        self.background_image = None
        self.background_image_path = None

    def get_center_pos(self):
        return self.mapToScene(QtCore.QPoint(self.width() / 2,
                                             self.height() / 2))

    def mousePressEvent(self, event):
        self.modified_select = False
        self.item_selected = False
        QtWidgets.QGraphicsView.mousePressEvent(self, event)
        if event.buttons() == QtCore.Qt.LeftButton:
            self.scene_mouse_origin = self.mapToScene(event.pos())
            # Get current viewport transformation
            transform = self.viewportTransform()
            scene_pos = self.mapToScene(event.pos())
            # Clear selection if no picker item below mouse
            picker_at = self.scene().picker_at(scene_pos, transform) or []
            if not picker_at:
                self.modified_select = False
                if not event.modifiers():
                    self.scene().clear_picker_selection()
                    cmds.select(cl=True)
            else:
                if not __EDIT_MODE__.get():
                    self.modified_select = True
                    picker_widgets.select_picker_controls([picker_at], event)
                else:
                    self.item_selected = True
                    if event.modifiers():
                        # this allows for shift selecting in edit
                        self.modified_select = False

        elif event.buttons() == QtCore.Qt.MidButton:
            self.setDragMode(self.ScrollHandDrag)
            self.pan_active = True
            self.scene_mouse_origin = self.mapToScene(event.pos())

    def mouseMoveEvent(self, event):
        result = QtWidgets.QGraphicsView.mouseMoveEvent(self, event)

        if event.buttons() == QtCore.Qt.LeftButton and not self.item_selected:
            self.drag_active = True

        if self.pan_active:
            current_center = self.get_center_pos()
            scene_paning = self.mapToScene(event.pos())

            new_center = current_center - (scene_paning -
                                           self.scene_mouse_origin)
            self.centerOn(new_center)

        return result

    def mouseReleaseEvent(self, event):
        '''Overload to clear selection on empty area
        '''
        result = QtWidgets.QGraphicsView.mouseReleaseEvent(self, event)
        if (not self.drag_active and
            event.button() == QtCore.Qt.LeftButton and not
                self.modified_select):
            self.modified_select = False
            scene_pos = self.mapToScene(event.pos())

            # Get current viewport transformation
            transform = self.viewportTransform()

            # Clear selection if no picker item below mouse
            picker_at = self.scene().picker_at(scene_pos, transform) or []
            if not picker_at:
                if not event.modifiers():
                    self.scene().clear_picker_selection()
                    cmds.select(cl=True)
            else:
                self.scene().select_picker_items([picker_at], event)

        # Area selection
        if self.drag_active and event.button() == QtCore.Qt.LeftButton:
            # self.drag_active = False
            scene_drag_end = self.mapToScene(event.pos())

            sel_area = QtCore.QRectF(self.scene_mouse_origin, scene_drag_end)
            transform = self.viewportTransform()
            if not sel_area.size().isNull():
                items = self.scene().items(sel_area,
                                           QtCore.Qt.IntersectsItemShape,
                                           QtCore.Qt.AscendingOrder,
                                           deviceTransform=transform)

                picker_items = []
                for item in items:
                    if not isinstance(item, picker_widgets.PickerItem):
                        continue
                    picker_items.append(item)
                if __EDIT_MODE__.get():
                    self.scene().select_picker_items(picker_items)
                else:
                    picker_widgets.select_picker_controls(picker_items, event)

        # Middle mouse view panning
        if (self.pan_active and event.button() == QtCore.Qt.MidButton):
            current_center = self.get_center_pos()
            scene_drag_end = self.mapToScene(event.pos())

            new_center = current_center - (scene_drag_end -
                                           self.scene_mouse_origin)
            self.centerOn(new_center)
            self.pan_active = False
            self.setDragMode(self.RubberBandDrag)
        self.drag_active = False
        return result

    def wheelEvent(self, event):
        '''Wheel event to add zoom support
        '''
        self.setTransformationAnchor(QtWidgets.QGraphicsView.AnchorUnderMouse)

        # Run default event
        # QtWidgets.QGraphicsView.wheelEvent(self, event)

        # Define zoom factor
        factor = 1.1
        if event.delta() < 0:
            factor = 0.9

        # Apply zoom
        self.scale(factor, factor)

    def contextMenuEvent(self, event, mapped_pos=None):
        '''Right click menu options
        '''
        # Item area
        picker_item = [item for item in self.get_picker_items()
                       if item._hovered]
        if picker_item:
            # Run default method that call on childs
            mapped_pos = event.globalPos()
            evnt_type = QtGui.QContextMenuEvent.Mouse
            contextEvent = QtGui.QContextMenuEvent(evnt_type, mapped_pos)
            return picker_item[0].contextMenuEvent(contextEvent)

        # Init context menu
        menu = QtWidgets.QMenu(self)

        # Build Edit move options
        if __EDIT_MODE__.get():
            add_action = QtWidgets.QAction("Add Item", None)
            add_action.triggered.connect(self.add_picker_item)
            menu.addAction(add_action)

            toggle_handles_action = QtWidgets.QAction("Toggle all handles",
                                                      None)
            func = self.toggle_all_handles_event
            toggle_handles_action.triggered.connect(func)
            menu.addAction(toggle_handles_action)

            menu.addSeparator()

            background_action = QtWidgets.QAction("Set background image", None)
            background_action.triggered.connect(self.set_background_event)
            menu.addAction(background_action)

            reset_background_action = QtWidgets.QAction("Reset background",
                                                        None)
            func = self.reset_background_event
            reset_background_action.triggered.connect(func)
            menu.addAction(reset_background_action)

            menu.addSeparator()

        if __EDIT_MODE__.get_main():
            toggle_mode_action = QtWidgets.QAction("Toggle Mode", None)
            toggle_mode_action.triggered.connect(self.toggle_mode_event)
            menu.addAction(toggle_mode_action)

            menu.addSeparator()

        # Common actions
        reset_view_action = QtWidgets.QAction("Reset view", None)
        reset_view_action.triggered.connect(self.fit_scene_content)
        menu.addAction(reset_view_action)
        frame_selection_view_action = QtWidgets.QAction(
            "Frame Selection", None)
        frame_selection_view_action.triggered.connect(
            self.fit_selection_content)
        menu.addAction(frame_selection_view_action)

        # Open context menu under mouse
        menu.exec_(event.globalPos())

    def resizeEvent(self, *args, **kwargs):
        '''Overload to force scale scene content to fit view
        '''
        # Fit scene content to view
        self.fit_scene_content()

        # Run default resizeEvent
        return QtWidgets.QGraphicsView.resizeEvent(self, *args, **kwargs)

    def fit_scene_content(self):
        '''Will fit scene content to view, by scaling it
        '''
        scene_rect = self.scene().get_bounding_rect(margin=8)
        self.fitInView(scene_rect, QtCore.Qt.KeepAspectRatio)

    def fit_selection_content(self):
        '''Will fit the selected item to view, by scaling it
        '''
        scene_rect = self.scene().get_bounding_rect(margin=8, selection=True)
        if scene_rect:
            self.fitInView(scene_rect, QtCore.Qt.KeepAspectRatio)
        # self.fitInView(self.scene().selectionArea().boundingRect(),
        #                QtCore.Qt.KeepAspectRatio)

    def add_picker_item(self, event=None):
        '''Add new PickerItem to current view
        '''
        ctrl = picker_widgets.PickerItem(main_window=self.main_window,
                                         namespace=self.namespace)
        ctrl.setParent(self)
        self.scene().addItem(ctrl)

        # Move ctrl
        if event:
            ctrl.setPos(event.pos())
        else:
            ctrl.setPos(0, 0)

        return ctrl

    def toggle_all_handles_event(self, event=None):
        new_status = None
        for item in self.scene().items():
            # Skip non picker items
            if not isinstance(item, picker_widgets.PickerItem):
                continue

            # Get first status
            if new_status is None:
                new_status = not item.get_edit_status()

            # Set item status
            item.set_edit_status(new_status)

    def toggle_mode_event(self, event=None):
        '''Will toggle UI edition mode
        '''
        if not self.main_window:
            return

        # Check for possible data change/loss
        if __EDIT_MODE__.get():
            if not self.main_window.check_for_data_change():
                return

        # Toggle mode
        __EDIT_MODE__.toggle()

        # Reset size to default
        self.main_window.reset_default_size()
        self.main_window.refresh()

    def set_background(self, path=None):
        '''Set tab index widget background image
        '''
        if not path:
            return
        path = unicode(path)

        # Check that path exists
        if not (path and os.path.exists(path)):
            print "# background image not found: '{}'".format(path)
            return

        self.background_image_path = path

        # Load image and mirror it vertically
        self.background_image = QtGui.QImage(path).mirrored(False, True)

        # Set scene size to background picture
        width = self.background_image.width()
        height = self.background_image.height()
        self.scene().set_size(width, height)

        # Update display
        self.fit_scene_content()

    def set_background_event(self, event=None):
        '''Set background image pick dialog window
        '''
        # Open file dialog
        img_dir = basic.get_images_folder_path()
        file_path = QtWidgets.QFileDialog.getOpenFileName(self,
                                                          "Pick a background",
                                                          img_dir)

        # Filter return result (based on qt version)
        if isinstance(file_path, tuple):
            file_path = file_path[0]

        # Abort on cancel
        if not file_path:
            return

        # Set background
        self.set_background(file_path)

    def reset_background_event(self, event=None):
        '''Reset background to default
        '''
        self.background_image = None
        self.background_image_path = None
        self.scene().set_default_size()

        # Update display
        self.fit_scene_content()

    def get_background(self, index):
        '''Return background for tab index
        '''
        return self.background_image

    def clear(self):
        '''Clear view, by replacing scene with a new one
        '''
        old_scene = self.scene()
        self.setScene(OrderedGraphicsScene(parent=self))
        old_scene.deleteLater()

    def get_picker_items(self):
        '''Return scene picker items in proper order (back to front)
        '''
        items = []
        for item in self.scene().items():
            # Skip non picker graphic items
            if not isinstance(item, picker_widgets.PickerItem):
                continue

            # Add picker item to filtered list
            items.append(item)

        # Reverse list order (to return back to front)
        items.reverse()

        return items

    def get_data(self):
        '''Return view data
        '''
        data = {}

        # Add background to data
        if self.background_image_path:
            data["background"] = self.background_image_path

        # Add items to data
        items = []
        for item in self.get_picker_items():
            items.append(item.get_data())
        if items:
            data["items"] = items

        return data

    def set_data(self, data):
        '''Set/load view data
        '''
        self.clear()

        # Set backgraound picture
        background = data.get("background", None)
        if background:
            self.set_background(background)

        # Add items to view
        for item_data in data.get("items", []):
            item = self.add_picker_item()
            item.set_data(item_data)

    def drawBackground(self, painter, rect):
        '''Default method override to draw view custom background image
        '''
        # Run default method
        result = QtWidgets.QGraphicsView.drawBackground(self, painter, rect)

        # Stop here if view has no background
        if not self.background_image:
            return result

        # Draw background image
        painter.drawImage(self.sceneRect(),
                          self.background_image,
                          QtCore.QRectF(self.background_image.rect()))

        return result

    def drawForeground(self, painter, rect):
        '''Default method override to draw origin axis in edit mode
        '''
        # Run default method
        result = QtWidgets.QGraphicsView.drawForeground(self, painter, rect)

        # Paint axis in edit mode
        if __EDIT_MODE__.get():
            self.draw_overlay_axis(painter, rect)

        return result

    def draw_overlay_axis(self, painter, rect):
        '''Draw x and y origin axis
        '''
        # Set Pen
        pen = QtGui.QPen(QtGui.QColor(160, 160, 160, 120),
                         1,
                         QtCore.Qt.DashLine)
        painter.setPen(pen)

        # Get event rect in scene coordinates
        # Draw x line
        if rect.y() < 0 and (rect.height() - rect.y()) > 0:
            x_line = QtCore.QLine(rect.x(),
                                  0,
                                  rect.width() + rect.x(),
                                  0)
            painter.drawLine(x_line)

        # Draw y line
        if rect.x() < 0 and (rect.width() - rect.x()) > 0:
            y_line = QtCore.QLineF(0, rect.y(),
                                   0, rect.height() + rect.y())
            painter.drawLine(y_line)


class ContextMenuTabWidget(QtWidgets.QTabWidget):
    '''Custom tab widget with specific context menu support
    '''

    def __init__(self,
                 parent,
                 main_window=None,
                 *args, **kwargs):
        QtWidgets.QTabWidget.__init__(self, parent, *args, **kwargs)
        self.main_window = main_window

    def contextMenuEvent(self, event):
        '''Right click menu options
        '''
        # Abort out of edit mode
        if not __EDIT_MODE__.get():
            return

        # Init context menu
        menu = QtWidgets.QMenu(self)

        # Build context menu
        rename_action = QtWidgets.QAction("Rename", None)
        rename_action.triggered.connect(self.rename_event)
        menu.addAction(rename_action)

        add_action = QtWidgets.QAction("Add Tab", None)
        add_action.triggered.connect(self.add_tab_event)
        menu.addAction(add_action)

        remove_action = QtWidgets.QAction("Remove Tab", None)
        remove_action.triggered.connect(self.remove_tab_event)
        menu.addAction(remove_action)

        # Open context menu under mouse
        menu.exec_(self.mapToGlobal(event.pos()))

    def fit_contents(self):
        '''Will resize views content to match views size
        '''
        for i in range(self.count()):
            widget = self.widget(i)
            if not isinstance(widget, GraphicViewWidget):
                continue
            widget.fit_scene_content()

    def rename_event(self):
        '''Will open dialog to rename tab
        '''
        # Get current tab index
        index = self.currentIndex()

        # Open input window
        name, ok = QtWidgets.QInputDialog.getText(self,
                                                  self.tr("Tab name"),
                                                  self.tr('New name'),
                                                  QtWidgets.QLineEdit.Normal,
                                                  self.tr(self.tabText(index)))
        if not (ok and name):
            return

        # Update influence name
        self.setTabText(index, name)

    def add_tab_event(self):
        '''Will open dialog to get tab name and create a new tab
        '''
        # Open input window
        name, ok = QtWidgets.QInputDialog.getText(self,
                                                  self.tr("Create new tab"),
                                                  self.tr("Tab name"),
                                                  QtWidgets.QLineEdit.Normal,
                                                  self.tr(""))
        if not (ok and name):
            return

        # Add tab
        self.addTab(GraphicViewWidget(main_window=self.main_window), name)

        # Set new tab active
        self.setCurrentIndex(self.count() - 1)

    def remove_tab_event(self):
        '''Will remove tab from widget
        '''
        # Get current tab index
        index = self.currentIndex()

        # Open confirmation
        reply = QtWidgets.QMessageBox.question(self,
                                               "Delete",
                                               "Delete tab '{}'?".format(
                                                   self.tabText(index)),
                                               QtWidgets.QMessageBox.Yes | QtWidgets.QMessageBox.No,
                                               QtWidgets.QMessageBox.No)
        if reply == QtWidgets.QMessageBox.No:
            return

        # Remove tab
        self.removeTab(index)

    def get_namespace(self):
        '''Return data_node namespace
        '''
        # Proper parent
        if self.main_window and isinstance(self.main_window, MainDockWindow):
            return self.main_window.get_current_namespace()

        return None

    def get_current_picker_items(self):
        '''Return all picker items for current active tab
        '''
        return self.currentWidget().get_picker_items()

    def get_all_picker_items(self):
        '''Returns all picker items for all tabs
        '''
        items = []
        for i in range(self.count()):
            items.extend(self.widget(i).get_picker_items())
        return items

    def get_data(self):
        '''Will return all tabs data
        '''
        data = []
        for i in range(self.count()):
            name = unicode(self.tabText(i))
            tab_data = self.widget(i).get_data()
            data.append({"name": name, "data": tab_data})
        return data

    def set_data(self, data):
        '''Will, set/load tabs data
        '''
        self.clear()
        for tab in data:
            view = GraphicViewWidget(namespace=self.get_namespace(),
                                     main_window=self.main_window)
            self.addTab(view, tab.get('name', 'default'))

            tab_content = tab.get('data', None)
            if tab_content:
                view.set_data(tab_content)


# class MainDockWindow(QtWidgets.QWidget):
class MainDockWindow(MayaQWidgetDockableMixin, QtWidgets.QWidget):
    __OBJ_NAME__ = "ctrl_picker_window"
    __TITLE__ = "Anim Picker"

    def __init__(self,
                 parent=None,
                 edit=False,
                 dockable=True):
        super(MainDockWindow, self).__init__(parent=parent)
        self.setAttribute(QtCore.Qt.WA_DeleteOnClose, True)
        self.ready = False

        # Window size
        # (default size to provide a 450/700 for tab area and proper img size)
        self.default_width = 476
        self.default_height = 837

        # Default vars
        self.childs = []
        self.status = False
        self.script_jobs = []

        __EDIT_MODE__.set_init(edit)
        self.is_dockable = dockable

        # Setup ui
        self.cb_manager = callbackManager.CallbackManager()
        self.setup()

    def setup(self):
        '''Setup interface
        '''
        # Main window setting
        # Setting object name makes docking not useable? da fuck
        # self.setObjectName(self.__OBJ_NAME__)
        self.setWindowTitle(self.__TITLE__)
        self.resize(self.default_width, self.default_height)

        # Add main widget and vertical layout
        self.main_vertical_layout = QtWidgets.QVBoxLayout()
        self.setLayout(self.main_vertical_layout)

        # Add window fields
        self.add_character_selector()
        self.add_tab_widget()

        # TODO remove temporary addition of the space otpions
        # self.spaces_widget = basic.SpaceSwitcher()
        # self.main_vertical_layout.addWidget(self.spaces_widget)
        # self.spaces_widget.set_tab_widget(self.tab_widget)

        # if the window is not dockable we can control the opacity
        # MayaQWidgetDockableMixin overrides setWindowsOpacity
        if not self.is_dockable:
            self.opacity_slider = QtWidgets.QSlider(QtCore.Qt.Horizontal)
            self.opacity_slider.setRange(10, 100)
            self.opacity_slider.setValue(100)
            self.opacity_slider.valueChanged.connect(self.change_opacity)
            self.main_vertical_layout.addWidget(self.opacity_slider)

        self.add_overlays()

        # Creating is done (workaround for signals being fired
        # off before everything is created)
        self.ready = True

    def change_opacity(self):
        """Change the  windows opacity
        """
        o = self.opacity_slider.value()
        self.setWindowOpacity(o / 100.0)

    def reset_default_size(self):
        '''Reset window size to default
        '''
        self.resize(self.default_width, self.default_height)

    def add_character_selector(self):
        '''Add Character comboBox selector
        '''
        # Create layout
        layout = QtWidgets.QHBoxLayout()
        self.main_vertical_layout.addLayout(layout)

        # Create group box
        box = QtWidgets.QGroupBox()
        box.setTitle("Character Selector")
        box.setFixedHeight(80)

        layout.addWidget(box)

        # Add layout
        box_layout = QtWidgets.QVBoxLayout(box)

        # Add combo box
        self.char_selector_cb = basic.CallbackComboBox(
            callback=self.selector_change_event)
        box_layout.addWidget(self.char_selector_cb)

        # Init combo box data
        self.char_selector_cb.nodes = []

        # Add option buttons
        btns_layout = QtWidgets.QHBoxLayout()
        box_layout.addLayout(btns_layout)

        # Add horizont spacer
        spacer = QtWidgets.QSpacerItem(10,
                                       0,
                                       QtWidgets.QSizePolicy.Expanding,
                                       QtWidgets.QSizePolicy.Minimum)
        btns_layout.addItem(spacer)

        # sync checkbox
        self.checkbox = QtWidgets.QCheckBox("Sync Namespace")
        if not __EDIT_MODE__.get():
            btns_layout.addWidget(self.checkbox)


        # About btn
        about_btn = basic.CallbackButton(callback=self.show_about_infos)
        about_btn.setText("?")
        about_btn.setToolTip("Show help/about informations")
        btns_layout.addWidget(about_btn)

        # laod btn
        load_btn = basic.CallbackButton(callback=self.show_load_widget)
        load_btn.setText("Load")
        load_btn.setToolTip("Load from file")
        btns_layout.addWidget(load_btn)

        # Load from node
        # if not __EDIT_MODE__.get():
        #     self.char_from_node_btn = basic.CallbackButton(
        #         callback=self.load_from_sel_node)
        #     self.char_from_node_btn.setText("Load from selection")
        #     btns_layout.addWidget(self.char_from_node_btn)

        # Refresh button
        self.char_refresh_btn = basic.CallbackButton(callback=self.refresh)
        self.char_refresh_btn.setText("Refresh")
        # self.char_refresh_btn.setFixedWidth(60)
        btns_layout.addWidget(self.char_refresh_btn)

        # Edit buttons
        self.new_char_btn = None
        self.save_char_btn = None
        if __EDIT_MODE__.get():
            # Add New  button
            self.new_char_btn = basic.CallbackButton(callback=self.new_character)
            self.new_char_btn.setText("New")
            self.new_char_btn.setFixedWidth(40)

            btns_layout.addWidget(self.new_char_btn)

            # Add Save  button
            self.save_char_btn = basic.CallbackButton(callback=self.save_character)
            self.save_char_btn.setText("Save")
            self.save_char_btn.setFixedWidth(40)

            btns_layout.addWidget(self.save_char_btn)

        # Create character picture widget
        self.pic_widget = basic.SnapshotWidget()
        layout.addWidget(self.pic_widget)

    def add_tab_widget(self, name="default"):
        '''Add control display field
        '''
        self.tab_widget = ContextMenuTabWidget(self, main_window=self)
        self.main_vertical_layout.addWidget(self.tab_widget)

        # Add default first tab
        view = GraphicViewWidget(main_window=self)
        self.tab_widget.addTab(view, name)

    def add_overlays(self):
        '''Add transparent overlay widgets
        '''
        self.about_widget = overlay_widgets.AboutOverlayWidget(self)
        self.load_widget = overlay_widgets.LoadOverlayWidget(self)
        self.save_widget = overlay_widgets.SaveOverlayWidget(self)

    def get_picker_items(self):
        '''Return picker items for current active tab
        '''
        return self.tab_widget.get_current_picker_items()

    def get_all_picker_items(self):
        '''Return all picker items for current picker
        '''
        return self.tab_widget.get_all_picker_items()

    def dockCloseEventTriggered(self):
        self.close()

    def closeEvent(self, evnt):
        self.close()

    def close(self):
        '''Overwriting close event to close child windows too
        '''
        # Delete script jobs
        self.cb_manager.removeAllManagedCB()
        # Close childs
        for child in self.childs:
            try:
                child.close()
            except Exception:
                pass

        # Close ctrls options windows
        for item in self.get_all_picker_items():
            try:
                if not item.edit_window:
                    continue
                item.edit_window.close()
            except Exception:
                pass

        # Default close
        # mayaMixin bug that i need to correct for
        corrected_for_dashes = self.objectName().replace("_", "-")
        corrected_for_initial_dash = corrected_for_dashes.replace("-", "_", 1)
        work_name = "{}WorkspaceControl".format(corrected_for_initial_dash)
        try:
            cmds.workspaceControl(work_name, e=True, close=True)
        except ValueError:
            pass
        except RuntimeError:
            pass
        self.deleteLater()

    def showEvent(self, *args, **kwargs):
        '''Default showEvent overload
        '''
        # Prevent firing this event before the window is set up
        if not self.ready:
            return

        # Default close
        super(MainDockWindow, self).showEvent(*args, **kwargs)

        # Force char load
        self.refresh()

        # Add script jobs
        self.add_callback()

    def resizeEvent(self, event):
        '''Resize about overlay on resize event
        '''
        # Prevent firing this event before the window is set up
        if not self.ready:
            return

        size = self.size()
        pos = self.pos()

        self.about_widget.resize(size)
        self.about_widget.move(pos)

        self.save_widget.resize(size)
        self.save_widget.move(pos)

        self.load_widget.resize(size)
        self.save_widget.move(pos)

        return super(MainDockWindow, self).resizeEvent(event)

    def show_about_infos(self):
        '''Open animation picker about and help infos
        '''
        self.about_widget.show()

    def show_load_widget(self):
        '''Open animation picker about and help infos
        '''
        self.load_widget.show()

    # =========================================================================
    # Character selector handlers ---
    def selector_change_event(self, index):
        '''Will load data node relative to selector index
        '''
        self.load_character()

    def populate_char_selector(self):
        '''Will populate char selector combo box
        '''
        # Get char nodes
        nodes = picker_node.get_nodes()
        self.char_selector_cb.nodes = nodes

        # Empty combo box
        self.char_selector_cb.clear()

        # Populate
        for data_node in nodes:
            text = data_node.get_namespace() or data_node.name
            self.char_selector_cb.addItem(text)

        # Set elements active status
        self.set_field_status()

    def set_field_status(self):
        '''Will toggle elements active status
        '''
        # Define status from node list
        self.status = False
        if self.char_selector_cb.count():
            self.status = True

        # Set status
        self.char_selector_cb.setEnabled(self.status)
        self.tab_widget.setEnabled(self.status)
        if self.save_char_btn:
            self.save_char_btn.setEnabled(self.status)

        # Reset tabs
        if not self.status:
            self.load_default_tabs()

    def load_default_tabs(self):
        '''Will reset and load default empty tabs
        '''
        self.tab_widget.clear()
        self.tab_widget.addTab(GraphicViewWidget(main_window=self), "None")

    def refresh(self):
        '''Refresh char selector and window
        '''
        # Get current active node
        current_node = None
        data_node = self.get_current_data_node()
        if data_node and data_node.exists():
            current_node = data_node.name

        # Check/abort on possible data changes
        if __EDIT_MODE__.get() and current_node:
            if not self.check_for_data_change():
                return

        # Re-populate selector
        self.populate_char_selector()

        # Set proper index
        if current_node:
            self.make_node_active(current_node)

        # Refresh selection check
        self.selection_change_event()

        # Force view resize
        self.tab_widget.fit_contents()

        # Set focus on view
        self.tab_widget.currentWidget().setFocus()

    def load_from_sel_node(self):
        '''Will try to load character for selected node
        '''
        sel = cmds.ls(sl=True)
        if not sel:
            return
        data_node = picker_node.get_node_for_object(sel[0])
        if not data_node:
            return
        self.make_node_active(data_node.name)

    def make_node_active(self, data_node):
        '''Will set character selector to specified data_node
        '''
        index = 0
        for i in range(len(self.char_selector_cb.nodes)):
            node = self.char_selector_cb.nodes[i]
            if not data_node == node.name or data_node == node:
                continue
            index = i
            break
        self.char_selector_cb.setCurrentIndex(index)

    def new_character(self):
        '''
        Will create a new data node, and init a new window
        (edit mode only)
        '''
        # Open input window
        name, ok = QtWidgets.QInputDialog.getText(self,
                                                  self.tr("New character"),
                                                  self.tr('Node name'),
                                                  QtWidgets.QLineEdit.Normal,
                                                  self.tr('PICKER_DATA'))
        if not (ok and name):
            return

        # Check for possible data changes/loss
        if not self.check_for_data_change():
            return

        # Create new data node
        data_node = picker_node.DataNode(name=unicode(name))
        data_node.create()
        self.refresh()
        self.make_node_active(data_node)

    # =========================================================================
    # Data ---
    def check_for_data_change(self):
        '''
        Check if data changed
        If changes are detected will ask user if he wants to proceed any
        way and loose thoses changes
        Return user answer
        '''
        # Get current data node
        data_node = self.get_current_data_node()
        if not (data_node and data_node.exists()):
            return True

        # Return true if no changes were detected
        if data_node == self.get_character_data():
            return True

        # Open question window
        msg = "Any changes will be lost, proceed any way ?"
        answer = QtWidgets.QMessageBox.question(self,
                                                "Changes detected",
                                                msg,
                                                buttons=QtWidgets.QMessageBox.No | QtWidgets.QMessageBox.Yes)
        return answer == QtWidgets.QMessageBox.Yes

    def get_current_namespace(self):
        return self.get_current_data_node().get_namespace()

    def get_current_data_node(self):
        '''Return current character data node
        '''
        # Empty list case
        if not self.char_selector_cb.count():
            return None

        # Return node from combo box index
        index = self.char_selector_cb.currentIndex()
        return self.char_selector_cb.nodes[index]

    def load_character(self):
        '''Load currently selected data node
        '''
        # Get DataNode
        data_node = self.get_current_data_node()
        if not data_node:
            return
        picker_data = data_node.get_data()

        # Load snapshot
        path = picker_data.get("snapshot", None)
        self.pic_widget.set_background(path)

        # load tabs
        tabs_data = picker_data.get("tabs", {})
        self.tab_widget.set_data(tabs_data)

        # Default tab
        if not self.tab_widget.count():
            self.tab_widget.addTab(GraphicViewWidget(main_window=self),
                                   "default")
        else:
            # Return to first tab
            self.tab_widget.setCurrentIndex(0)

        # Fit content
        self.tab_widget.fit_contents()

        # Update selection states
        self.selection_change_event()

    def save_character(self):
        '''Save data to current selected data_node
        '''
        # Get DataNode
        data_node = self.get_current_data_node()
        assert data_node, "No data_node found/selected"

        # Block save in anim mode
        if not __EDIT_MODE__.get():
            QtWidgets.QMessageBox.warning(self,
                                          "Warning",
                                          "Save is not permited in anim mode")
            return

        # Block save on referenced nodes
        if data_node.is_referenced():
            msg = "Save is not permited on referenced nodes"
            QtWidgets.QMessageBox.warning(self, "Warning", msg)
            return

        self.save_widget.show()

    def get_character_data(self):
        '''Return window data
        '''
        picker_data = {}

        # Add snapshot path data
        snapshot_data = self.pic_widget.get_data()
        if snapshot_data:
            picker_data["snapshot"] = snapshot_data

        # Add tabs data
        tabs_data = self.tab_widget.get_data()
        if tabs_data:
            picker_data["tabs"] = tabs_data

        return picker_data

    # =========================================================================
    # Script jobs handling ---
    def add_callback(self):
        '''Will add maya scripts job events
        '''
        # Clear any existing scrip jobs
        self.cb_manager.removeAllManagedCB()

        # Add selection change event
        self.cb_manager.selectionChangedCB("anim_picker_selection",
                                           self.selection_change_event)
        # Add scene open event
        self.cb_manager.newSceneCB("anim_picker_newScene",
                                   self.selection_change_event)

    def selection_change_event(self, *args):
        '''
        Event called with a script job from maya on selection change.
        Will properly parse poly_ctrls associated node, and set border
        visible if content is selected
        '''
        # Abort in Edit mode
        if __EDIT_MODE__.get():
            return

        # Update selection data
        __SELECTION__.update()

        # sync with namespce
        if not __EDIT_MODE__.get():
            sel = pm.selected()
            sync = self.checkbox.isChecked()
            if sel and sync:
                ns = sel[0].namespace()
                if ns:
                    for i, n in enumerate(self.char_selector_cb.nodes):
                        if ns in str(n):
                            self.char_selector_cb.setCurrentIndex(i)
                            break
        # Update controls for active tab
        for item in self.get_picker_items():
             item.run_selection_check()


# # =============================================================================
# # Load user interface function
# # =============================================================================
def load(edit=False, dockable=True):
    """To launch the ui and not get the same instance

    Returns:
        Anim_picker: instance

    Args:
        edit (bool, optional): Description
        dockable (bool, optional): Description

    """
    # global ANIM_PKR_UI
    # if 'ANIM_PKR_UI' in globals():
    #     try:
    #         ANIM_PKR_UI.close()
    #         ANIM_PKR_UI.deleteLater()
    #     except Exception:
    #         pass
    ANIM_PKR_UI = MainDockWindow(parent=None,
                                 edit=edit,
                                 dockable=dockable)

    # NOTE: if instedad with set dockable to false the window doesn't get
    # parented to Maya UI
    # TODO: Dockable breaks the interface when docks. For the moment this
    # option is not available from the menu
    if dockable:
        ANIM_PKR_UI.show(dockable=True)
    else:
        ANIM_PKR_UI.show()
    return ANIM_PKR_UI
