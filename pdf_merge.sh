#!/bin/bash
# Join a list of pdf files into one document.

# Expects files to be named: "1", "2", "3", ect. 
# then pass the number of pages as an argument
# like this: ./pdf_merge 4

# Generate a list of file names to merge:
mystring=""
for (( each = 1; $each <= $1; each++ )); do
    mystring="${mystring} $each"
done

# Merge all the files in one go:
pdfunite $mystring finished_pdf.pdf

echo "PDF files 1 - $1 merged."
