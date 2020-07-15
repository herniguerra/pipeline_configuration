import sys
import os


def upload(source, dest):
    rclonePath = os.path.join(
        os.path.dirname(os.path.realpath(__file__)), "rclone", "rclone.exe"
    )
    command = rclonePath + " copyto " + source + " sg_publishes:mw-testbucket/" + dest
    os.popen(command)


def download(source, dest):
    rclonePath = os.path.join(
        os.path.dirname(os.path.realpath(__file__)), "rclone", "rclone.exe"
    )
    command = rclonePath + " copyto sg_publishes:mw-testbucket/" + source + " " + dest
    os.popen(command)


def exists(source):
    rclonePath = os.path.join(
        os.path.dirname(os.path.realpath(__file__)), "rclone", "rclone.exe"
    )
    existsPath = os.path.join(
        os.path.dirname(os.path.realpath(__file__)), "rclone", "exists.tmp"
    )

    command = rclonePath + " lsf sg_publishes:mw-testbucket/" + source
    os.system(command + " > " + existsPath)
    result = open(existsPath, "r").readline().strip()

    if result == source:
        return True
    else:
        return False
