#!/bin/sh

proj=$(python ~/pdev/python-practice/add-remove-xml-nodes/t.py -f ~/pdev/manifest/default.xml --rand)
echo "export proj=$proj && cd ~/pdev/$proj && git co -t dev/master ||:"
