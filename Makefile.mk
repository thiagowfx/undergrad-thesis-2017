BIBTEX = bibtex
LATEXMK = latexmk
MAKEINDEX = makeindex
PDFLATEX = pdflatex

OPEN := $(shell hash xdg-open &>/dev/null && echo xdg-open || echo open)
