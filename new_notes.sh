#!/bin/bash
# Simple bash script for generating the file structure for a 
# new guided notes document.

prefix="Courses/$1/$2"

# Create the directory structure:

mkdir $prefix
mkdir "$prefix/Extras"

# Create symbolic links to the `Includes` and `Files` folders:

ln -rs Templates/Files "$prefix/Files"
ln -rs Templates/Includes "$prefix/Includes"


# Create a copy of the template.tex file with the guided notes name:
cp Templates/Guided_Notes.tex "$prefix/$2.tex"
