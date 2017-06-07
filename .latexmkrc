# Main command line options
# -pdf : generate pdf using pdflatex
# -pv  : run file previewer
# -pvc : run file previewer and continually recompile on change
# -C   : clean up by removing all regeneratable files

# always process the following tex files
@default_files = ("main.tex");

# Generate pdf using pdflatex (-pdf)
$pdf_mode = 1;

# Define command to compile with pdfsync support and nonstopmode
$pdflatex = 'pdflatex -shell-escape -synctex=1 --interaction=nonstopmode';

$latex = 'latex -shell-escape';

$clean_ext = "los lab bbl nav out snm syx abx pdfsync synctex.gz";
