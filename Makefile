include Makefile.mk

NAME = thesis

all: $(NAME).pdf

$(NAME).pdf:
	$(LATEXMK)

clean:
	$(LATEXMK) -CA

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
