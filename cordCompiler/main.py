# TODO: Add support for different block doors.

import os
import json
import shutil


with open("cords.json", "r") as f:
    a = f.read()
cordsjson = {}

cordsjson = json.loads(f"{a}")

left_door = cordsjson["doors"][0]["left_door"]
right_door = cordsjson["doors"][1]["right_door"]
bottom_door = cordsjson["doors"][2]["bottom_door"]
top_door = cordsjson["doors"][3]["top_door"]

left_light = cordsjson["doors"][4]["left_light"]
right_light = cordsjson["doors"][5]["right_light"]
bottom_light = cordsjson["doors"][6]["bottom_light"]
top_light = cordsjson["doors"][7]["top_light"]

cameras = cordsjson["cameras"]



game_name = input("The name of the game folder in 'functions/game/'\nFolder name: ")
compile_path = int(input("\nCompile in builds directory or directely into BP folder?\n0 = builds\n1 = BP\n>"))

if compile_path == 0:
    compile_path = "../builds/mc-fnaf-engine BP/"
    shutil.copytree(src="../BP", dst="../builds/mc-fnaf-engine BP", dirs_exist_ok=True)
    shutil.copytree(src="../RP", dst="../builds/mc-fnaf-engine RP", dirs_exist_ok=True)

elif compile_path == 1:
    compile_path = "../BP/"
    
else:
    exit()

path = f"{compile_path}functions/game/{game_name}/loops/"

def compile_camera():
    with open(f"{path}camera/teleport.mcfunction", "r") as f:
        raw = f.read()

    for i in range(20):
        fname = i + 1
        cam_pos = cameras[i][f"{fname}"]["pos"]
        cam_rot = cameras[i][f"{fname}"]["rot"]
        raw = raw.replace(f"CORD_CAM{fname}POS", f"{cam_pos}")
        raw = raw.replace(f"CORD_CAM{fname}ROT", f"{cam_rot}")

        with open(f"{path}camera/teleport.mcfunction", "w") as f:
            f.write(raw)

    print("Compiled cameras")


def compile_door():
    with open(f"{path}door/controller.mcfunction", "r") as f:
        raw = f.read()

    raw = raw.replace("CORD_LEFTDOOR", left_door)
    raw = raw.replace("CORD_RIGHTDOOR", right_door)
    raw = raw.replace("CORD_BOTTOMDOOR", bottom_door)
    raw = raw.replace("CORD_TOPDOOR", top_door)

    raw = raw.replace("CORD_LEFTLIGHT", left_light)
    raw = raw.replace("CORD_RIGHTLIGHT", right_light)
    raw = raw.replace("CORD_BOTTOMLIGHT", bottom_light)
    raw = raw.replace("CORD_TOPLIGHT", top_light)

    with open(f"{path}door/controller.mcfunction", "w") as f:
        f.write(raw)

    print("Compiled doors")

compile_camera()
compile_door()

print("\nCompilation done!\n\nKeep in mind that the compiler can only compile 20 cameras.\nIf you had more than 20 cameras in cords.json, they have not been compiled!")

input("\nPress enter to exit......")
exit()