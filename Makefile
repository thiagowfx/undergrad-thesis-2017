NAME = thesis

BIBTEX = bibtex
LATEXMK = latexmk
MAKEINDEX = makeindex
PDFLATEX = pdflatex

all: $(NAME).pdf

$(NAME).pdf:
	$(LATEXMK)
	# $(PDFLATEX) $(NAME).tex
	# $(BIBTEX) $(NAME)
	# $(MAKEINDEX) -s coppetex/coppe.ist -o $(NAME).lab $(NAME).abx
	# $(MAKEINDEX) -s coppetex/coppe.ist -o $(NAME).los $(NAME).syx
	# $(PDFLATEX) $(NAME).tex
	# $(PDFLATEX) $(NAME).tex

clean:
	$(LATEXMK) -CA
	# $(RM) *.nlo *.lol *.lod *.tdo *.ilg *.los *.lab *.out *.syx *.toc *.aux *.abx *.dvi *.ps *.lof *.log *.lot *.bbl *.blg *.fdb_latexmk *.synctex.gz *.fls *.nav *.snm *.pdfsync *.pdf

view:
	$(LATEXMK) -pv

watch:
	$(LATEXMK) -pvc

# abbreviations
$(NAME).lab: $(NAME).abx
	$(MAKEINDEX) -s coppetex/coppe.ist -o $@ $(NAME).abx

# symbols
$(NAME).los: $(NAME).syx
	$(MAKEINDEX) -s coppetex/coppe.ist -o $@ $(NAME).syx

.PHONY: $(NAME).pdf all clean view watch
