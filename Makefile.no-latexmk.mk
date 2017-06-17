include Makefile.mk

NAME = thesis

all: $(NAME).pdf

$(NAME).pdf:
	$(PDFLATEX) $(NAME).tex
	$(BIBTEX) $(NAME)
	$(MAKEINDEX) -s coppetex/coppe.ist -o $(NAME).lab $(NAME).abx
	$(MAKEINDEX) -s coppetex/coppe.ist -o $(NAME).los $(NAME).syx
	$(PDFLATEX) $(NAME).tex
	$(PDFLATEX) $(NAME).tex

clean:
	$(RM) *.nlo *.lol *.lod *.tdo *.ilg *.los *.lab *.out *.syx *.toc *.aux *.abx *.dvi *.ps *.lof *.log *.lot *.bbl *.blg *.fdb_latexmk *.synctex.gz *.fls *.nav *.snm *.pdfsync

clean-all: clean
	$(RM) *.pdf

.PHONY: all $(NAME).pdf clean clean-all
