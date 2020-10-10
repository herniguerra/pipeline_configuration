import maya.cmds as cmds
import mw_main_utils
import sgtk
import os
import shutil
import re
import glob
import shotgun_api3


def consolidateTextureFiles():
    sg = shotgun_api3.Shotgun(
        "https://many-worlds.shotgunstudio.com",
        script_name="mw_main_script",
        api_key="wmNnyhwfdpuecdstofw0^gjkk",
    )

    # Searches and copies all texture files into the project's file sctructure. Points all texture nodes to the newly copied files.
    current_task = mw_main_utils.getTask()
    current_task_id = mw_main_utils.getTask(returnId=True)
    if current_task != "Shading":
        cmds.warning(
            "Can only consolidate texture files in Shading thask. Current task is "+current_task+".")
        return

    # gets images path
    current_engine = sgtk.platform.current_engine()
    context = current_engine.context
    tk = current_engine.sgtk

    template_name = "maya_asset_work"

    template = tk.templates[template_name]
    fields = context.as_template_fields(template)

    r = sg.summarize(entity_type="PublishedFile",
                     filters=[
                         ["task", "is", {"type": "Task", "id": current_task_id}]],
                     summary_fields=[{"field": "version_number", "type": "maximum"}])

    fields["version"] = r["summaries"]["version_number"]+1

    work_path = template.apply_fields(fields)

    textures_path = (work_path.split("maya")[
                     0]+"textures").replace(os.sep, '/')+"/v"+str(fields["version"]).zfill(3)+"/"

    if not os.path.exists(textures_path):
        os.mkdir(textures_path)

    # gets all directories with texture files
    cmds.filePathEditor(refresh=1)
    dirs = cmds.filePathEditor(
        query=True, listDirectories="", byType="texture")

    for dir in dirs:
        if textures_path not in dir:
            nodeList = cmds.filePathEditor(
                query=True, listFiles=dir, withAttribute=1)
            for node in nodeList[1::2]:
                files = get_file_node_files(node.split(".fileTextureName")[0])
                for f in files:
                    filePath, fileName = os.path.split(f)
                    folderName = os.path.split(filePath)[1]

                    # create folder in images path
                    newPath = os.path.join(textures_path, folderName)
                    print newPath
                    if not os.path.exists(newPath):
                        os.mkdir(newPath)
                    shutil.copy2(f, newPath)
                    print "COPIED:"
                    print f
                    print "TO:"
                    print newPath
                    print "********"

                    cmds.setAttr(node, cmds.getAttr(node).replace(
                        filePath, newPath), type="string")

    return textures_path


def seq_to_glob(path):
    """Takes an image sequence path and returns it in glob format,
    with the frame number replaced by a '*'.

    Image sequences may be numerical sequences, e.g. /path/to/file.1001.exr
    will return as /path/to/file.*.exr.

    Image sequences may also use tokens to denote sequences, e.g.
    /path/to/texture.<UDIM>.tif will return as /path/to/texture.*.tif.

    Args:
        path (str): the image sequence path

    Returns:
        str: Return glob string that matches the filename pattern.

    """

    if path is None:
        return path

    # If any of the patterns, convert the pattern
    patterns = {
        "<udim>": "<udim>",
        "<tile>": "<tile>",
        "<uvtile>": "<uvtile>",
        "#": "#",
        "u<u>_v<v>": "<u>|<v>",
        "<frame0": "<frame0\d+>",
        "<f>": "<f>"
    }

    lower = path.lower()
    has_pattern = False
    for pattern, regex_pattern in patterns.items():
        if pattern in lower:
            path = re.sub(regex_pattern, "*", path, flags=re.IGNORECASE)
            has_pattern = True

    if has_pattern:
        return path

    base = os.path.basename(path)
    matches = list(re.finditer(r'\d+', base))
    if matches:
        match = matches[-1]
        new_base = '{0}*{1}'.format(base[:match.start()],
                                    base[match.end():])
        head = os.path.dirname(path)
        return os.path.join(head, new_base)
    else:
        return path


def get_file_node_path(node):
    """Get the file path used by a Maya file node.

    Args:
        node (str): Name of the Maya file node

    Returns:
        str: the file path in use

    """
    # if the path appears to be sequence, use computedFileTextureNamePattern,
    # this preserves the <> tag
    if cmds.attributeQuery('computedFileTextureNamePattern', node=node, exists=True):
        texture_pattern = cmds.getAttr(
            '{0}.computedFileTextureNamePattern'.format(node))

        patterns = ["<udim>", "<tile>", "u<u>_v<v>",
                    "<f>", "<frame0", "<uvtile>"]
        lower = texture_pattern.lower()
        if any(pattern in lower for pattern in patterns):
            return texture_pattern

    # otherwise use fileTextureName
    return cmds.getAttr('{0}.fileTextureName'.format(node))


def get_file_node_files(node):
    """Return the file paths related to the file node

    Note:
        Will only return existing files. Returns an empty list
        if not valid existing files are linked.

    Returns:
        list: List of full file paths.

    """

    path = get_file_node_path(node)
    path = cmds.workspace(expandName=path)
    if node_uses_image_sequence(node):
        glob_pattern = seq_to_glob(path)
        return glob.glob(glob_pattern)
    elif os.path.exists(path):
        return [path]
    else:
        return []


def node_uses_image_sequence(node):
    """Return whether file node uses an image sequence or single image.

    Determine if a node uses an image sequence or just a single image,
    not always obvious from its file path alone.

    Args:
        node (str): Name of the Maya node

    Returns:
        bool: True if node uses an image sequence

    """

    # useFrameExtension indicates an explicit image sequence
    node_path = get_file_node_path(node).lower()

    # The following tokens imply a sequence
    patterns = ["<udim>", "<tile>", "<uvtile>", "u<u>_v<v>", "<frame0"]

    return (cmds.getAttr('%s.useFrameExtension' % node) == True or
            any(pattern in node_path for pattern in patterns))
