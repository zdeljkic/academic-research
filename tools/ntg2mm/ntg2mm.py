#!/usr/bin/python

import sys
import zipfile
import xml.etree.ElementTree as ET

if len(sys.argv) != 3:
	print "Usage: ntg2mm infile outfile"
	sys.exit(1)

infile = sys.argv[1]
outfile = sys.argv[2]

data = {}

with zipfile.ZipFile(infile) as zf:
	with zf.open("graph.ntgxml") as ntg:
		instr = ntg.read()
		root = ET.fromstring(instr)

		for child in root[0]:
			nt = child.attrib["type"]
			nv = child[0].attrib["value"]

			if nt in data:
				data[nt].append(nv)
			else:
				data[nt] = [nv]
				

root = ET.Element("map", version="0.9.0")
main = ET.SubElement(root, "node", TEXT="mapa")
pos = "left"

for l in data:
	cat = ET.SubElement(main, "node", TEXT=l, POSITION=pos)
	for d in data[l]:
		ET.SubElement(cat, "node", TEXT=d)
		
	if pos == "left":
		pos = "right"
	else:
		pos = "left"
		
ET.ElementTree(root).write(outfile)
