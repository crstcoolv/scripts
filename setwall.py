#!/usr/bin/env python3

import sys
import os
from datetime import datetime

file = sys.argv[1]
new_name = datetime.now().strftime("%m_%d_%Y_%H_%M_%S_%f")


os.system(f"mv ~/.config/wall.jpg ~/.config/wall/{new_name}.jpg")
os.system(f"mv {file} ~/.config/wall.jpg")
os.system(f"feh --bg-scale ~/.config/wall.jpg")
