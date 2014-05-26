# -*- python -*-

import xml.etree.cElementTree as ET
tree = ET.ElementTree(file='/Users/demo/pdev/manifest/default.xml')

for elem in tree.iter('project'):
    if 'name' in elem.attrib:
        print elem.attrib['name']

