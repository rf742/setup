# .local/bin

This is a repository of scripts I use. You may find some useful, but some are geared
towards my particular setup

## getstruct

Python program: Takes one command line parameter, the name of a chemical and fetches
an image of that chemical from the internet.

I use this from a keyboard shortcut in vim that automatically calls this program
with the word currently under the cursor as the argument. This allows, at least for
simple molecules, the program to automatically get the images I want to include
in markdown files.

## gms

Wrapper script for compiling groff MS documents, takes two required arguments:

- `-i INPUTFILE`
- `-o OUTPUTFILE`

It can optionally take the name of a file after the `-p` flag, which will run
the ms file through refer using the bibliography file specified.

## beamd

Wrapper script to turn markdown files into beamerfiles. Planning on either
adding functionality to initialize md files (yaml + template) or creating
a new script to accomplish this.


