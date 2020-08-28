"""
Many Worlds package manager.

:created: 15/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

# Maya libraries
from maya import cmds, OpenMayaUI, OpenMaya
import pymel.core as pymel

def open_file(file_mode, filters=None, dialogStyle=2, initial_path=None):
    """Open a Maya file selection dialogue.
        Note:
        0 Any file, whether it exists or not.
        1 A single existing file.
        2 The name of a directory. Both directories and files are displayed\
             in the dialog.
        3 The name of a directory. Only directories are displayed\
             in the dialog.
        4 Then names of one or more existing files.

    """
    if filter is None:
        filters = "Maya Files (*.ma *.mb);;\
            Maya ASCII (*.ma);;\
            Maya Binary (*.mb);;All Files (*.*)"
    
    file_path = cmds.fileDialog2(
        fileMode=file_mode,
        fileFilter=filters,
        dialogStyle=dialogStyle,
        startingDirectory=initial_path

    )

    return file_path


def maya_valid_formats():
    """ Return Autodesk Maya valid file formats."""
    return ["ma", "mb", "abc", "fbx"]


def import_multiples_files(files_path):
    """Receive a list of Maya files to be imported in the scene. """

    for maya_file in files_path:
        place_holder_name = "anatomical_component"
        try:
            cmds.file(
                maya_file,
                i=True,
                renameAll=True,
                mergeNamespacesOnClash=False,
                namespace=place_holder_name,
                mergeNamespaceWithRoot=True,
                options="v=0;"
            )
            pymel.namespace(
                removeNamespace=place_holder_name,
                mergeNamespaceWithRoot=True
            )
            cmds.refresh(currentView=True)
        except Exception as error:
            print(error)
            continue
    cmds.viewFit()


def get_closest_vertex(maya_mesh, pos=[0,0,0]):
    mVector = OpenMaya.MVector(pos)#using MVector type to represent position
    selection_list = OpenMaya.MSelectionList()
    selection_list.add(maya_mesh)
    dag_path= selection_list.getDagPath(0)
    mesh_handler=OpenMaya.MFnMesh(dag_path)
    ID = mesh_handler.getClosestPoint(OpenMaya.MPoint(mVector),space=OpenMaya.MSpace.kWorld)[1] #getting closest_point face ID
    list=cmds.ls( cmds.polyListComponentConversion (maya_mesh+'.f['+str(ID)+']',ff=True,tv=True),flatten=True)#face's vertices list
    #setting vertex [0] as the closest_point one
    d=mVector-OpenMaya.MVector(cmds.xform(list[0],t=True,ws=True,q=True))
    closets_distance=d.x*d.x+d.y*d.y+d.z*d.z #using distance squared to compare distance
    closest_point=list[0]
    #iterating from vertex [1]
    for i in range(1,len(list)) :
        d=mVector-OpenMaya.MVector(cmds.xform(list[i],t=True,ws=True,q=True))
        d2=d.x*d.x+d.y*d.y+d.z*d.z
        if d2<closets_distance:
            closets_distance=d2
            closest_point=list[i]
    return closest_point


def generate_component_node(component_type):
    """ Generate a relationship with the current mesh components of the scene
    Needs to be refactored. hardcode for the monment.
    """

    skeleton_group = pymel.PyNode("body_grp")
    skeleton_node = pymel.createNode("network", name="body_node")
    skeleton_node_meshes = [mesh for mesh in skeleton_group.listRelatives(type="mesh", allDescendents=True) if not "ShapeOrig" in mesh.name()]

    for item in skeleton_node_meshes:
        item.addAttr(item.getParent().name(), attributeType='message')
        skeleton_node.addAttr(item.getParent().name(), attributeType='message')
        pymel.connectAttr("{}.{}".format(item.name(), item.getParent().name()), "{}.{}".format(skeleton_node, item.getParent().name()))

    skeleton_node.addAttr("componentsGroup", attributeType='message')
    skeleton_group.addAttr(skeleton_group.name(), attributeType='message')
    pymel.connectAttr("{}.{}".format(skeleton_group.name(), skeleton_group.name()), "{}.componentsGroup".format(skeleton_node))


def edit_maya_scene(method):
    """ Edit current Maya scene. This method would be extended. """

    if method == "new":
        cmds.file(new=True, force=True)


def get_modifier():
    '''
    return the modifier key pressed
    '''
    mods = cmds.getModifiers()
    if (mods & 1) > 0:
        return 'Shift'
    if (mods & 2) > 0:
        return 'CapsLock'
    if (mods & 4) > 0:
        return 'Ctrl'
    if (mods & 8) > 0:
        return 'Alt'
    else:
        return False


def get_custom_nodes(type_node):
    """ Traverse the scene and return requested type node.

    Arguments:
        type {[Maya node]} -- [description]
    """
    return pymel.PyNode(type_node)

def attach_cam_to_mesh():
    """ Create a camera attached to edges component selection."""

    # Create the rivet node.
    rivet = CreateRivet()
    locator = rivet.node['locator'].getParent()

    # Create and attach the camera.
    camera = pymel.camera(name="{}_cam".format(locator.name()))[0]
    pymel.parent(camera, locator)
    for type_attribute in ["translate"]:
        for atribute in ["X", "Y", "Z"]:
            pymel.setAttr("{}.{}{}".format(
                camera,
                type_attribute, atribute), 0
            )

    pymel.lookThru(camera)
    cmds.viewFit()


def _print():
    print("holaaaaaaaa")


class CreateRivet:
    def __init__(self, rotation=False):
        self.rotation = rotation
        selection = pymel.ls(sl=1, fl=1)
        if len(selection) == 2 and isinstance(
            selection[0], pymel.MeshEdge
        ) and isinstance(selection[1], pymel.MeshEdge):
            self.main = {'meshObject': selection[0].node().getParent(),
               'edgeIndex1': selection[0].indices()[0],
               'edgeIndex2': selection[1].indices()[0]}
            self.createNodes()
            self.createConnections(rotation=self.rotation)
            self.setAttributes()
        else:
            pymel.warning('Please make sure you select two edges only.')

        self.node['locator'].getParent().rename(
            "{}_rivet".format(selection[0].node().getParent().name())
        )

    def setAttributes(self):
        self.node['meshEdgeNode1'].isHistoricallyInteresting.set(1)
        self.node['meshEdgeNode2'].isHistoricallyInteresting.set(1)
        self.node['meshEdgeNode1'].edgeIndex[0].set(self.main['edgeIndex1'])
        self.node['meshEdgeNode2'].edgeIndex[0].set(self.main['edgeIndex2'])
        self.node['loftNode'].reverseSurfaceNormals.set(1)
        self.node['loftNode'].inputCurve.set(size=2)
        self.node['loftNode'].uniform.set(True)
        self.node['loftNode'].sectionSpans.set(3)
        self.node['loftNode'].caching.set(True)
        self.node['ptOnSurfaceIn'].turnOnPercentage.set(True)
        self.node['ptOnSurfaceIn'].parameterU.set(0.5)
        self.node['ptOnSurfaceIn'].parameterV.set(0.5)
        self.node['ptOnSurfaceIn'].caching.set(True)

    def createNodes(self, *args):
        self.node = {'meshEdgeNode1': pymel.createNode('curveFromMeshEdge'),
           'meshEdgeNode2': pymel.createNode('curveFromMeshEdge'),
           'ptOnSurfaceIn': pymel.createNode('pointOnSurfaceInfo'),
           'matrixNode': pymel.createNode('fourByFourMatrix'),
           'decomposeMatrix': pymel.createNode('decomposeMatrix'),
           'loftNode': pymel.createNode('loft'),
           'locator': pymel.createNode('locator')}

    def createConnections(self, rotation=None, *args):
        """# Connect our main object's world mesh information. """
        self.main['meshObject'].worldMesh.connect(
            self.node['meshEdgeNode1'].inputMesh
        )
        self.main['meshObject'].worldMesh.connect(
            self.node['meshEdgeNode2'].inputMesh
        )
        self.node['meshEdgeNode1'].outputCurve.connect(
            self.node['loftNode'].inputCurve[0]
        )
        self.node['meshEdgeNode2'].outputCurve.connect(
            self.node['loftNode'].inputCurve[1]
        )
        self.node['loftNode'].outputSurface.connect(
            self.node['ptOnSurfaceIn'].inputSurface
        )
        self.node['ptOnSurfaceIn'].normalizedNormalX.connect(
            self.node['matrixNode'].in00
        )
        self.node['ptOnSurfaceIn'].normalizedNormalY.connect(
            self.node['matrixNode'].in01
        )
        self.node['ptOnSurfaceIn'].normalizedNormalZ.connect(
            self.node['matrixNode'].in02
        )
        self.node['ptOnSurfaceIn'].normalizedTangentUX.connect(
            self.node['matrixNode'].in10
        )
        self.node['ptOnSurfaceIn'].normalizedTangentUY.connect(
            self.node['matrixNode'].in11
        )
        self.node['ptOnSurfaceIn'].normalizedTangentUZ.connect(
            self.node['matrixNode'].in12
        )
        self.node['ptOnSurfaceIn'].normalizedTangentVX.connect(
            self.node['matrixNode'].in20
        )
        self.node['ptOnSurfaceIn'].normalizedTangentVY.connect(
            self.node['matrixNode'].in21
        )
        self.node['ptOnSurfaceIn'].normalizedTangentVZ.connect(
            self.node['matrixNode'].in22
        )
        self.node['ptOnSurfaceIn'].positionX.connect(
            self.node['matrixNode'].in30
        )
        self.node['ptOnSurfaceIn'].positionY.connect(
            self.node['matrixNode'].in31
        )
        self.node['ptOnSurfaceIn'].positionZ.connect(
            self.node['matrixNode'].in32
        )
        self.node['matrixNode'].output.connect(
            self.node['decomposeMatrix'].inputMatrix
        )
        self.node['decomposeMatrix'].outputTranslate.connect(
            self.node['locator'].getParent().translate
        )
        if rotation is True:
            self.node['decomposeMatrix'].outputRotate.connect(
                self.node['locator'].getParent().rotate
            )