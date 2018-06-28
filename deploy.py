#! python

""" Factorio mod deploy script """

import os
import sys
import shutil
import glob
import zipfile
import json

## Configuration Section
mod_name = "Landmarks"

##Get version from info.json
version = ""

with open("src/info.json") as info:
    version = json.load(info)["version"]
    print ("Found version " + version + ".")

if (version == ""):
    print ("No version found. Aborting")
    sys.exit(-1)

directory = mod_name + "_" + version

if not os.path.exists(directory):
    os.makedirs(directory)
    print ("Directory " + directory + " created.")
else:
    print ("Directory " + directory + " already exists. Aborting...")
    sys.exit(-2)

for file in glob.glob(r'src/*.lua'):
    print ("Copying " + file + "...")
    shutil.copy(file, directory)

print ("Copying locales")
shutil.copytree("src/locale", directory + "/locale")

print ("Copying info.json")
shutil.copy("src/info.json", directory)

print ("Creating zipfile...")
zipf = zipfile.ZipFile(directory + '.zip', 'w', zipfile.ZIP_DEFLATED)

for root, dirs, files in os.walk(directory):
    for file in files:
        zipf.write(os.path.join(root, file))
zipf.close()

print ("Removing directory...")
shutil.rmtree(directory)

print ("Release " + version + " completed.")