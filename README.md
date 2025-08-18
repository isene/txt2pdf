# txt2pdf

[![Gem Version](https://badge.fury.io/rb/txt2pdf.svg)](https://badge.fury.io/rb/txt2pdf)
[![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=flat&logo=ruby&logoColor=white)](https://www.ruby-lang.org/)
[![GitHub stars](https://img.shields.io/github/stars/isene/txt2pdf.svg)](https://github.com/isene/txt2pdf/stargazers)
[![Stay Amazing](https://img.shields.io/badge/Stay-Amazing-blue.svg)](https://isene.org)

Converts plain text (file or from STDIN) to pdf via pdflatex

### SYNOPSIS
txt2pdf [-h] (filename)

### DESCRIPTION
Reads a text file (if supplied as the first argument) and creates
a pdf file with the same name but with .pdf as extension in the
current directory via the program pdflatex (the only requirement
besides ruby itself). If "-h" is the first argument, then the program
displays the helptext and exits.

The program can also read the input text from STDIN (STanDard IN) and
create the pdf file in the user's home directory. When this method is
used, no argument is given to the program and the text is simply piped
directly into the program like this:
```
  $ echo "Hello" | txt2pdf
```
This would create a pdf file with only "Hello" and the page number
at the bottom of the resulting pdf page.

With this, you could map a key binding in your window manager to
create a pdf file from the text you selected in any program, be it the
terminal, your browser or your text editor. In my wm of choice, i3,
I have added the following to my i3 config:
```
  bindsym $mod+p exec xclip -o | txt2pdf
```
This would create a pdf file from the text I have selected as I hit
the "Window button" and "p".

### OPTIONS
`-h` Show this help text

### COPYRIGHT
By Geir Isene (https://isene.org) 2019. No rights reserved.
