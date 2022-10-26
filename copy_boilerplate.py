# 1. Given source and target directories
# 2. Copy all files to target dir
# 3. (Optional) run shell commands, like open `.tex` file or run `main.py`, etc.
import os, sys, shutil
from rich import print as rprint
basepath = os.getcwd() 
source = os.path.join(basepath, "templates/note")
rprint("From:", source)
files = os.listdir(source)
rprint("File list:", [file for file in files if not file[0]=="."])
target = sys.argv[1]

# copy (recurisively)
shutil.copytree(source, target, dirs_exist_ok=True)
rprint(f"Copy completed to [italic red]{target}[/italic red]!\n")
