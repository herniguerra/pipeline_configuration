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


def clean_model_scene(model_name, cache_type=None):
    """Clean up scene to be publish.

    Args:
        model_name ([str]): Anatomy part name.

    Returns:
        [Pymel Object]: Maya set that contain the render meshes.
    """
    # Main checks.
    if not pymel.objExists(model_name):
        return
    
    # Define the net info node.
    network_node = ""
    if not cmds.objExists("{}_mdln".format(model_name)):
        network_node = pymel.createNode("network", name="{}_net".format(model_name))
    else:
        network_node = pymel.PyNode("{}_net".format(model_name))

    if not network_node.type() == "network":
        pymel.select(network_node)
        OpenMaya.MGlobal.error("Name conflict with the name.")

    clean_meshes = []
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

        if cache_type:
            if not hasattr(mesh_transform, "output_type"):
                pymel.addAttr(
                    mesh_transform,
                    longName="output_type",
                    dataType="string"
                )

        mesh_transform.object_name.set(lock=True)
        clean_meshes.append(mesh_transform)

    if not hasattr(network_node, "{}_meshes".format(model_name)):
        pymel.addAttr(network_node, longName="{}_meshes".format(model_name), numberOfChildren=int(len(clean_meshes)), attributeType="compound")

    for mesh in clean_meshes:
        _name = mesh.name()
        pymel.addAttr(network_node, longName=_name, dataType="string", parent="{}_meshes".format(model_name))
        attr_name = "{}.{}".format("{}_meshes".format(model_name), mesh.name())
        print(hasattr(network_node, "{}".format(_name)))
        continue

    for mesh in clean_meshes:
        attr_name = "{}.{}".format("{}_meshes".format(model_name), mesh.name())   
        pymel.connectAttr(mesh.object_name, "{}.{}".format(network_node, attr_name))


    """
    if not hasattr(network_node, "output_type"):
        pymel.addAttr(
            mesh_transform,
            longName="output_type",
            dataType="string"
        )
    """


    #return pymel.sets(model_name, name="{}_output".format(model_name))