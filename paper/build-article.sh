#!/bin/bash

pdflatex appendices.tex
bibtex appendices.aux
pdflatex appendices.tex
pdflatex appendices.tex

pdflatex main_text.tex
bibtex main_text.tex
pdflatex main_text.tex
pdflatex main_text.tex

open main_text.pdf &
open appendices.pdf &
