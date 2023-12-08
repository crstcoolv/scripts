#!/usr/bin/env python3

import glob
import subprocess
from pathlib import Path
import sys

def find_dot_cabal(path):
    return glob.glob(f"{path}/*.cabal")


def go_up_tree(path, n=0):
    if n > 5:
        return "no cabal file"

    if find_dot_cabal(path) == []:
        return go_up_tree(path.parent, n+1)
    
    return path


if len(sys.argv) == 2:

    dir = go_up_tree(Path(sys.argv[1]))

    if Path.is_dir(dir):
           subprocess.Popen(["kitty","--class=ghcid","ghcid", "-C",dir, "--allow-eval"]) 

