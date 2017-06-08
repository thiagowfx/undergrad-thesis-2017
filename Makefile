include Makefile.mk

NAME = thesis

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXMK) $<

clean:
	$(LATEXMK) -CA

view: $(NAME).pdf
	$(OPEN) $<

.PHONY: $(NAME).pdf all clean view
