# -*- python -*-

import xml.etree.cElementTree as ET
pdevtree = ET.ElementTree(file='/Users/demo/pdev/manifest/default.xml')
pdghtree = ET.ElementTree(file='/Users/demo/pdgh/manifest/default.xml')

from sets import Set

pdghset = set()
pdevset = set()

for elem in pdevtree.iter('project'):
    pdevset.add(elem.attrib['name'])

for elem in pdghtree.iter('project'):
    pdghset.add(elem.attrib['name'])

for project in pdghset.intersection(pdevset):
    print "already merged: %s" % project

for project in pdevset.difference(pdghset):
    print "need to merge: %s" % project
