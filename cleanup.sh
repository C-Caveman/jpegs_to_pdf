#!/bin/bash
# Remove temporary .jpg files and pdf files.
# See license file for licensing/copyright details.

[ "$1" = "" ] && echo 'Use: ./cleanup.sh <num pages>' && exit 1

for (( each = 1; $each <= $1; each++ )); do
    rm -v $each
    rm -v $each.jpg
done
