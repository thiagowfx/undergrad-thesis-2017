@default_files = ("thesis.tex");

$pdf_mode = 1;

$use_make_for_missing_files = 1;

$pdflatex = 'lualatex -halt-on-error -file-line-error -shell-escape -synctex=1 --interaction=nonstopmode %O %S';

$pdf_previewer = "open -a /Applications/Skim.app" if -e "/Applications/Skim.app";

$clean_ext = "nlo lol lod tdo ilg los lab out syx toc aux abx dvi ps lof log lot bbl blg fdb_latexmk synctex.gz fls nav snm pdfsync";

# vim: ft=perl
