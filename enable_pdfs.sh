#!/bin/sh
# See license file for licensing/copyright details.
# allow imagemagick to read/write pdf files by changing  /etc/ImageMagick-6/policy.xml



echo "Moving to /etc/ImageMagick-6/"
cd /etc/ImageMagick-6/ || echo "No dir /etc/ImageMagick-6/" && exit 1
echo "Making a backup of policy.xml: policy.xml_backup"
cp policy.xml policy.xml_backup  || echo "No file /etc/ImageMagick-6/policy.xml" && exit 1
echo "Updating policy.xml"
awk '/PDF/ {gsub("none", "read | write")}1' policy.xml_backup > policy.xml
