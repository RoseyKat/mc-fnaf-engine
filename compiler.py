import shutil
import os
from time import sleep


def compile():

    shutil.rmtree(path=os.path.expanduser("~\\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\\development_behavior_packs\\fnafengine BP"),ignore_errors=True)

    shutil.rmtree(path=os.path.expanduser("~\\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\\development_resource_packs\\fnafengine RP"),ignore_errors=True)

    sleep(1)


    shutil.copytree(src="BP",dst=os.path.expanduser("~\\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\\development_behavior_packs\\fnafengine BP"),dirs_exist_ok=True)

    shutil.copytree(src="RP",dst=os.path.expanduser("~\\AppData\\Local\\Packages\\Microsoft.MinecraftUWP_8wekyb3d8bbwe\\LocalState\\games\\com.mojang\\development_resource_packs\\fnafengine RP"),dirs_exist_ok=True)

compile()