========================
Installation:
=============

#1: Install the required tools with this command:
sudo apt install imagemagick poppler-utils

#2: Allow imagemagick to open PDF's using the provided script:
./enable_pdfs.sh

========================
Instructions:
=============

#1: Name your images like so: 1.jpg, 2.jpg, 3.jpg, ect.

#2: Run the script:
./jpg_to_pdf.sh <number of pages>

#3: Your images are now merged into a single PDF document: finished_pdf.pdf





=================
Advanced Info:
==============

You can merge images and pre-existing pdf documents together.

Say you want to sandwich some PDF document "report.pdf" between two images:
    #1: rename the first image to:  1.jpg
    #2: rename the PDF document to: 2
    #3: rename the second image to: 3.jpg
    #4: Run:
    ./jpg_to_pdf.sh 3

This works because jpg_to_pdf.sh converts a given
"<number>.jpg" image file to an equivalent
"<number>"     pdf file,
then merges "1" to "<number of pages>" into a single PDF.
