#!/usr/bin/env python3


import json
import os
import subprocess

c = subprocess.check_output(['i3-msg','-t','get_tree'])
actual = subprocess.check_output(['i3-msg','-t','get_workspaces'])


wks = json.loads(actual)


st = ""
focused=""
max_id=0

for w in wks:
    if int(w['name']) > max_id:
        max_id = int(w['name'])

    if w["focused"]:
        focused=w["name"]
        st+= f" [{w['name']}]"
    else:
        st+= f" {w['name']}"


workspaces = json.loads(c)["nodes"][1]["nodes"][1]["nodes"]

c = dict()
for workspace in workspaces:
    c[workspace["name"]] = len(workspace["nodes"])

if c[focused] == 0:
    subprocess.run(['i3-msg','workspace','back_and_forth'])
    subprocess.run(['i3spaces'])
else:
    subprocess.run(['i3-msg','workspace',f"{max_id + 1}"])
    subprocess.run(['i3spaces'])
