#!/bin/bash
# Build D headers binding for XCB
# command line: dbuild.sh
destdir="$PWD/xcb"
mkdir -p "$destdir"
cd xml
for i in *.xml; 
do
  dest="$(basename "$i" .xml).d"
  echo Building $dest from $(basename "$i")
  xsltproc --stringparam mode header d-client.xsl "$i" > "$destdir/$dest"
done
