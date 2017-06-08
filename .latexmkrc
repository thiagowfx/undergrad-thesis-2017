@default_files = ("thesis.tex");

$pdf_mode = 1;

$use_make_for_missing_files = 0;

# useful for debugging: -halt-on-error
$pdflatex = 'lualatex -halt-on-error -file-line-error -shell-escape -synctex=1 --interaction=nonstopmode %O %S';

$clean_ext = "los lab bbl nav out snm syx abx pdfsync synctex.gz";

# vim: ft=perl
