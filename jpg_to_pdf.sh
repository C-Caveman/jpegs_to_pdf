#!/bin/bash
# Make a list of .jpg images into a list of pdf files.
# All pdf files are then merged into a single pdf document.
# Use: Use: ./jpg_to_pdf <num files>

# Expects images to be named "1.jpg", "2.jpg", ect.
# Outputs pdf files named: "1", "2", ect.


[ "$1" = "" ] && echo 'Use: ./jpg_to_pdf <num files>' && exit 1

echo "Converting 1.jpg - $1.jpg into pdf format..."
for (( each = 1; $each <= $1; each++ )); do
    convert $each.jpg $each.pdf
    mv $each.pdf $each
    echo "jpg $each converted"
done

# merge the pdf files
./pdf_merge $1
