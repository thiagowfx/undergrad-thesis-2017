include Makefile.mk

NAME = thesis

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXMK) $<

clean:
	$(LATEXMK) -CA

view: $(NAME).pdf
	$(OPEN) $<

$(NAME).lab:
	$(MAKEINDEX) -s coppetex/coppe.ist -o $@ $(NAME).abx

$(NAME).los:
	$(MAKEINDEX) -s coppetex/coppe.ist -o $@ $(NAME).syx

.PHONY: $(NAME).pdf all clean view
