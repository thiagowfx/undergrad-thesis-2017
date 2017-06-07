NAME = main

LATEXMK = latexmk
MAKEINDEX = makeindex
PDFLATEX_OPTS = lualatex -file-line-error -shell-escape -synctex=1 -interaction=nonstopmode

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXMK) -pdf -pdflatex="$(PDFLATEX_OPTS)" -use-make $<

clean:
	$(LATEXMK) -CA

UNAME := $(shell uname)
ifeq ($(UNAME), Darwin)
	OPEN = open
endif
ifeq ($(UNAME), Linux)
	OPEN = xdg-open
endif

view: $(NAME).pdf
	$(OPEN) $<

main.lab:
	$(MAKEINDEX) -s coppetex/coppe.ist -o $@ $(NAME).abx

.PHONY: $(NAME).pdf all clean view
