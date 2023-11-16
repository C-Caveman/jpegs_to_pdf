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

#1: Name your images like so:
1.jpg, 2.jpg, 3.jpg, ect.

#2: Run the jpg_to_pdf script like so:
./jpg_to_pdf.sh <number of pages>

#3: Your images are now merged into a single PDF document:
finished_pdf.pdf





=================
Advanced Info:
==============

You can merge images and pre-existing pdf documents together.

Say you want to sandwich some PDF document "report.pdf" between two images:
    > rename the first image to:
        "1.jpg"
    > rename the PDF document from "report.pdf" to:
        "2"
    > rename the second image to:
        "3.jpg"
    > Run: ./jpg_to_pdf 3

This works because jpg_to_pdf converts all images
in the range "1.jpg" to "N.jpg" into their own pdf files,
naming them "1" to "N" respectively.

Then, all pdf files named "1" to "N" are merged into one pdf file.
