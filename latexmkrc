@default_files = ("thesis.tex");

$pdf_mode = 1;

$use_make_for_missing_files = 1;

# -interaction=nonstopmode
$pdflatex = 'lualatex -halt-on-error -file-line-error -shell-escape -synctex=1 --interaction=nonstopmode %O %S';

$pdf_previewer = "open -a /Applications/Skim.app" if -e "/Applications/Skim.app";

$clean_ext = "log los lab bbl nav out snm syx abx pdfsync synctex.gz";

# vim: ft=perl
