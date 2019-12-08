## Basic Stuff
- Merge multiple files into one: `pdftk in1.pdf in2.pdf cat output out.pdf`
- Rotate: `pdftk out.pdf cat 1-endS output final.pdf`


## Edit metada
1. `pdftk document.pdf dump_data output document.dat`
2. Edit the text file `document.dat` and change the values you want to edit
3. `pdftk document.pdf update_info output newdocument.pdf`

## Change the background of a PDF file
1. Create a PDF document with the same size as the original one, and make it have whatever background you want to insert
2. `pdftk original.pdf background background.pdf output modified.pdf`

## Split double-page PDF files down the middle
1. Use `pdfshuffler` and take the original file and crop it at 50% from the right, and save as `file1.pdf`
2. Do the same thing, but cropping from the left, and save as `file 2.pdf`
3. `ptftk file1.pdf burst`, and rename all new files as increasing odd numbers (`1.pdf`, `3.pdf`, etc.)
4. `pdftk file2.pdf burst`, and rename all new files as increasing odd numbers (`2.pdf`, `4.pdf`, etc.)
5. Merge all the files