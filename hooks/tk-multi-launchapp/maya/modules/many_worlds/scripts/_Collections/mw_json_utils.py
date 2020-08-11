"""
Many Worlds JSON file format functions.

:created: 14/04/2020
:author: Jhon Ricardo Vasquez ricardo.v@many-worlds.com
:version: 1.0
:documentation: */

Notes:

To Do:
"""

import os
import json

from _Collections import mw_maya_utils 


def mw_write_json(data, file_path, indent=4, sort_keys=True):
    """Write given data to json to path."""

    # Checks.
    if type(data) == dict:
        with open(file_path, 'w') as json_file:
            json.dump(data, json_file, indent=indent, sort_keys=sort_keys)

    print("{} saved with exit".format(file_path))
        
def mw_load_json(file_path):
    """Write given data to json to path."""

    # Checks.
    with open(file_path, 'r') as json_file:
        data = json.load(json_file) or None

        if data != None:
            return data

def load_json_from_file():
    """ Open a Maya dialog to load a file path. """

    file_path = mw_maya_utils.open_file(
            1,
            filters="JSON file (*.json)",
        )
    if file_path:
        return mw_load_json(file_path[0])


def create_project_data(path):
    """ Base on give path and rules, defines a project data file. """

    store_path = "M:\Many-Worlds\Maya\Documents\Projects"
    demo_path = "M:\Many-Worlds\Maya\Projects"
    
    project_data = {

        "projects":["BigBang", "Eternauta"],
        
        "BigBang_data":{"Project_name":"BigBang",
                        "Assets" : {"Creatures":[""],
                                    "Props":[""],
                                    "Vehicles":[""]
                                    }
                        },
        "Eternauta_data":{"Project_name":"BigBang",
                        "Assets" : {"Creatures":[""],
                                    "Props":[""],
                                    "Vehicles":[""]
                                    }
                        }
        
    }
    

    demo_path = "M:\Many-Worlds\Maya\Projects"
    data = subprocess.run(["tree", "-Jd", "M:/Many-Worlds/Maya/Projects"], stdout=subprocess.PIPE)
    print(data.stdout)


    for folder in next(os.walk(demo_path))[1]:
        if "Projects" in project_data:
            project_data["Projects"][folder] = os.path.join(demo_path, folder)
        else:
            project_data["Projects"] = {folder:os.path.join(demo_path, folder)}
    

    project_one = project_data["projects"][0]

    project_data["{}_data".format(project_one)]["Assets"]["Creatures"]
