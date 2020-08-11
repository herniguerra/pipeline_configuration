"""
Ziva utility functions.

:created: 15/05/2019
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:

- Finish the documentations for the tools.
- Code review. * coding standars.
- Review functions logic. Avoid dumb things...

"""

# System and Python Libraries
import os
import re
import logging

# Maya related imports.
from maya import cmds, mel, OpenMaya
import pymel.core as pymel


def read_anatomical_package():
    """Read
    """

def clean_up_anatomy_scene(asset_name):
    """Clean up scene to be publish.

    Args:
        asset_name ([str]): Anatomy part name.

    Returns:
        [Pymel Object]: Maya set that contain the render meshes.
    """
    # Main checks.
    if not pymel.objExists(asset_name):
        return

    for mesh in pymel.ls(type="mesh"):
        # Clean up the scene.
        if "Orig" in mesh.name():
            pymel.delete(mesh)
            continue
        # Ensure naming convention and add name attribute.
        mesh_transform = mesh.getParent()
        mesh.rename("{}Shape".format(mesh_transform.name()))
        if not hasattr(mesh_transform, "object_name"):
            pymel.addAttr(
                mesh_transform,
                longName="object_name",
                dataType="string"
            )
            mesh_transform.object_name.set(mesh_transform.name())
        mesh_transform.object_name.set(lock=True)

    return pymel.sets(asset_name, name="{}_output".format(asset_name))
