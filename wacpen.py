#!/usr/bin/env python3

import subprocess
import os


cl = subprocess.check_output(['xdotool','getactivewindow','getwindowclassname'])

if cl == b"Brave-browser\n":
    os.system(f"xdotool key F10")
elif cl == b"Xournalpp\n":
    os.system(f"wac x")
