# Copyright (c) 2017 Shotgun Software Inc.
#
# CONFIDENTIAL AND PROPRIETARY
#
# This work is provided "AS IS" and subject to the Shotgun Pipeline Toolkit
# Source Code License included in this distribution package. See LICENSE.
# By accessing, using, copying or modifying this work you indicate your
# agreement to the Shotgun Pipeline Toolkit Source Code License. All rights
# not expressly granted therein are reserved by Shotgun Software Inc.

import fnmatch
import os

import maya.cmds as cmds
import maya.mel as mel

import sgtk

# this method returns the evaluated hook base class. This could be the Hook
# class defined in Toolkit core or it could be the publisher app's base publish
# plugin class as defined in the configuration.
HookBaseClass = sgtk.get_hook_baseclass()


class MayaOutSetPublishPlugin(HookBaseClass):
    """
    This class defines the required interface for a publish plugin. Publish
    plugins are responsible for operating on items collected by the collector
    plugin. Publish plugins define which items they will operate on as well as
    the execution logic for each phase of the publish process.
    """

    @property
    def description(self):
        """
        Verbose, multi-line description of what the plugin does (:class:`str`).

        The string can contain html for formatting for display in the UI (any
        html tags supported by Qt's rich text engine).
        """
        return """
        <p>This plugin handles publishing of out_set members from maya.
        A publish template is required to define the destination of the output
        file.
        </p>
        """

    @property
    def settings(self):
        """
        A :class:`dict` defining the configuration interface for this plugin.

        The dictionary can include any number of settings required by the
        plugin, and takes the form::

            {
                <setting_name>: {
                    "type": <type>,
                    "default": <default>,
                    "description": <description>
                },
                <setting_name>: {
                    "type": <type>,
                    "default": <default>,
                    "description": <description>
                },
                ...
            }

        The keys in the dictionary represent the names of the settings. The
        values are a dictionary comprised of 3 additional key/value pairs.

        * ``type``: The type of the setting. This should correspond to one of
          the data types that toolkit accepts for app and engine settings such
          as ``hook``, ``template``, ``string``, etc.
        * ``default``: The default value for the settings. This can be ``None``.
        * ``description``: A description of the setting as a string.

        The values configured for the plugin will be supplied via settings
        parameter in the :meth:`accept`, :meth:`validate`, :meth:`publish`, and
        :meth:`finalize` methods.

        The values also drive the custom UI defined by the plugin whick allows
        artists to manipulate the settings at runtime. See the
        :meth:`create_settings_widget`, :meth:`set_ui_settings`, and
        :meth:`get_ui_settings` for additional information.

        .. note:: See the hooks defined in the publisher app's ``hooks/`` folder
           for additional example implementations.
        """
        # inherit the settings from the base publish plugin
        plugin_settings = super(MayaOutSetPublishPlugin, self).settings or {}

        # settings specific to this class
        maya_outSet_publish_settings = {
            "Publish Template": {
                "type": "template",
                "default": None,
                "description": "Template path for published out_set. Should"
                "correspond to a template defined in "
                "templates.yml.",
            },
        }

        # update the base settings
        plugin_settings.update(maya_outSet_publish_settings)

        return plugin_settings

    @property
    def item_filters(self):
        """
        A :class:`list` of item type wildcard :class:`str` objects that this
        plugin is interested in.

        As items are collected by the collector hook, they are given an item
        type string (see :meth:`~.processing.Item.create_item`). The strings
        provided by this property will be compared to each collected item's
        type.

        Only items with types matching entries in this list will be considered
        by the :meth:`accept` method. As such, this method makes it possible to
        quickly identify which items the plugin may be interested in. Any
        sophisticated acceptance logic is deferred to the :meth:`accept` method.

        Strings can contain glob patters such as ``*``, for example ``["maya.*",
        "file.maya"]``.
        """
        return ["maya.session.out_set"]

    def accept(self, settings, item):
        """
        This method is called by the publisher to see if the plugin accepts the
        supplied item for processing.

        Only items matching the filters defined via the :data:`item_filters`
        property will be presented to this method.

        A publish task will be generated for each item accepted here.

        This method returns a :class:`dict` of the following form::

            {
                "accepted": <bool>,
                "enabled": <bool>,
                "visible": <bool>,
                "checked": <bool>,
            }

        The keys correspond to the acceptance state of the supplied item. Not
        all keys are required. The keys are defined as follows:

        * ``accepted``: Indicates if the plugin is interested in this value at all.
          If ``False``, no task will be created for this plugin. Required.
        * ``enabled``: If ``True``, the created task will be enabled in the UI,
          otherwise it will be disabled (no interaction allowed). Optional,
          ``True`` by default.
        * ``visible``: If ``True``, the created task will be visible in the UI,
          otherwise it will be hidden. Optional, ``True`` by default.
        * ``checked``: If ``True``, the created task will be checked in the UI,
          otherwise it will be unchecked. Optional, ``True`` by default.

        In addition to the item, the configured settings for this plugin are
        supplied. The information provided by each of these arguments can be
        used to decide whether to accept the item.

        For example, the item's ``properties`` :class:`dict` may house meta data
        about the item, populated during collection. This data can be used to
        inform the acceptance logic.

        :param dict settings: The keys are strings, matching the keys returned
            in the :data:`settings` property. The values are
            :class:`~.processing.Setting` instances.
        :param item: The :class:`~.processing.Item` instance to process for
            acceptance.

        :returns: dictionary with boolean keys accepted, required and enabled
        """

        publisher = self.parent
        template_name = settings["Publish Template"].value

        # ensure a work file template is available on the parent item
        work_template = item.parent.properties.get("work_template")
        if not work_template:
            self.logger.debug(
                "A work template is required for the session item in order to "
                "publish the out_set. Not accepting session out_set item."
            )
            return {"accepted": False}

        # ensure the publish template is defined and valid and that we also have
        publish_template = publisher.get_template_by_name(template_name)
        if publish_template:
            item.properties["publish_template"] = publish_template
            # because a publish template is configured, disable context change.
            # This is a temporary measure until the publisher handles context
            # switching natively.
            item.context_change_allowed = False
        else:
            self.logger.debug(
                "The valid publish template could not be determined for the "
                "session out_set item. Not accepting the item."
            )
            return {"accepted": False}

        # all good!
        return {"accepted": True, "checked": True}

    def validate(self, settings, item):
        """
        Validates the given item, ensuring it is ok to publish.

        Returns a boolean to indicate whether the item is ready to publish.
        Returning ``True`` will indicate that the item is ready to publish. If
        ``False`` is returned, the publisher will disallow publishing of the
        item.

        An exception can also be raised to indicate validation failed.
        When an exception is raised, the error message will be displayed as a
        tooltip on the task as well as in the logging view of the publisher.

        :param dict settings: The keys are strings, matching the keys returned
            in the :data:`settings` property. The values are
            :class:`~.processing.Setting` instances.
        :param item: The :class:`~.processing.Item` instance to validate.

        :returns: True if item is valid, False otherwise.
        """

        path = _session_path()

        # ---- ensure the session has been saved

        if not path:
            # the session still requires saving. provide a save button.
            # validation fails.
            error_msg = "The Maya session has not been saved."
            self.logger.error(error_msg, extra=_get_save_as_action())
            raise Exception(error_msg)

        # get the normalized path
        path = sgtk.util.ShotgunPath.normalize(path)

        # get the configured work file template
        work_template = item.parent.properties.get("work_template")
        publish_template = item.properties.get("publish_template")

        # get the current scene path and extract fields from it using the work
        # template:
        work_fields = work_template.get_fields(path)

        # include the out_set name in the fields
        work_fields["name"] = "out_set"

        # ensure the fields work for the publish template
        missing_keys = publish_template.missing_keys(work_fields)
        if missing_keys:
            error_msg = (
                "Work file '%s' missing keys required for the "
                "publish template: %s" % (path, missing_keys)
            )
            self.logger.error(error_msg)
            raise Exception(error_msg)

        # create the publish path by applying the fields. store it in the item's
        # properties. This is the path we'll create and then publish in the base
        # publish plugin. Also set the publish_path to be explicit.

        publish_path = publish_template.apply_fields(work_fields)
        item.properties["path"] = publish_path
        item.properties["publish_path"] = publish_path

        # use the work file's version number when publishing
        if "version" in work_fields:
            item.properties["publish_version"] = work_fields["version"]

        # run the base class validation
        return super(MayaOutSetPublishPlugin, self).validate(settings, item)

    def publish(self, settings, item):
        """
        Executes the publish logic for the given item and settings.

        Any raised exceptions will indicate that the publish pass has failed and
        the publisher will stop execution.

        :param dict settings: The keys are strings, matching the keys returned
            in the :data:`settings` property. The values are
            :class:`~.processing.Setting` instances.
        :param item: The :class:`~.processing.Item` instance to validate.
        """

        # keep track of everything currently selected. we will restore at the
        # end of the publish method
        cur_selection = cmds.ls(selection=True)

        # get the path to create and publish
        publish_path = item.properties["publish_path"]

        # ensure the publish folder exists:
        publish_folder = os.path.dirname(publish_path)
        self.parent.ensure_folder_exists(publish_folder)

        start_frame, end_frame = _find_scene_animation_range()
        end_frame = 120

        # build AbcExport command

        yeti = False
        roots = ""
        combinedOutSets = []
        if cmds.objExists("out_set"):
            combinedOutSets.append("out_set")
        if cmds.objExists("*:out_set"):
            combinedOutSets += cmds.ls("*:out_set")

        for o in cmds.sets(combinedOutSets, q=1):
            roots = roots + ("-root " + o + " ")
            if cmds.objectType(cmds.listRelatives(o, s=1)[0]) == "pgYetiMaya":
                yeti = True

        if not yeti:
            args = (
                "-worldSpace -dataFormat ogawa -attrPrefix 'connect' -frameRange '%s' '%s' %s -file '%s'"
                % (
                    start_frame,
                    end_frame,
                    roots,
                    publish_path.replace(os.path.sep, "/"),
                )
            )
            export_cmd = 'AbcExport -j "' + args + '";'

        elif yeti:
            roots = roots.replace("-root", "")
            samples = 1

            args = '-writeAlembic "%s" -range %s %s -samples %s %s' % (
                publish_path.replace(os.path.sep, "/"),
                start_frame,
                end_frame,
                samples,
                roots,
            )

            export_cmd = "pgYetiCommand " + args + ";"

        # ...and execute it:
        try:
            self.logger.debug("Executing command: %s" % export_cmd)
            mel.eval(export_cmd)

        except Exception, e:
            self.logger.error("Failed to export out_set: %s" % e)
            return

        # set the publish type in the item's properties. the base plugin will
        # use this when registering the file with Shotgun
        item.properties["publish_type"] = "Alembic Cache"

        # Now that the path has been generated, hand it off to the
        super(MayaOutSetPublishPlugin, self).publish(settings, item)

        # restore selection
        cmds.select(cur_selection)


def _find_scene_animation_range():
    """
    Find the animation range from the current scene.
    """
    # look for any animation in the scene:
    animation_curves = cmds.ls(typ="animCurve")

    # if there aren't any animation curves then just return
    # a single frame:
    if not animation_curves:
        return 1, 1

    # something in the scene is animated so return the
    # current timeline.  This could be extended if needed
    # to calculate the frame range of the animated curves.
    start = int(cmds.playbackOptions(q=True, min=True))
    end = int(cmds.playbackOptions(q=True, max=True))

    return start, end


def _session_path():
    """
    Return the path to the current session
    :return:
    """
    path = cmds.file(query=True, sn=True)

    if isinstance(path, unicode):
        path = path.encode("utf-8")

    return path


def _get_save_as_action():
    """
    Simple helper for returning a log action dict for saving the session
    """

    engine = sgtk.platform.current_engine()

    # default save callback
    callback = cmds.SaveScene

    # if workfiles2 is configured, use that for file save
    if "tk-multi-workfiles2" in engine.apps:
        app = engine.apps["tk-multi-workfiles2"]
        if hasattr(app, "show_file_save_dlg"):
            callback = app.show_file_save_dlg

    return {
        "action_button": {
            "label": "Save As...",
            "tooltip": "Save the current session",
            "callback": callback,
        }
    }
