NAME = main

LATEXMK = latexmk
MAKEINDEX = makeindex

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXMK)

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

$(NAME).lab: ;
	$(MAKEINDEX) -s coppetex/coppe.ist -o $@ $(NAME).abx

$(NAME).los: ;

.PHONY: $(NAME).pdf all clean view
