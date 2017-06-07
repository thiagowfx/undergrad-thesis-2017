NAME = main

LATEXMK = latexmk
MAKEINDEX = makeindex

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXMK) -pdf -pdflatex="pdflatex -shell-escape -synctex=1 -interaction=nonstopmode" -use-make $<

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

main.los:
	touch main.los

.PHONY: $(NAME).pdf all clean view
