#!/bin/sh

proj=$(python ~/pdev/python-practice/add-remove-xml-nodes/t.py -f ~/pdev/manifest/default.xml --rand)
echo "export proj=$proj && cd ~/pdev/$proj && git co -t dev/master ||:"
echo python ~/pdgh/move_projects_to_github/create_move_script_from_template.py -p $proj
