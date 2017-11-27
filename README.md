About
=====

This repository contains Thiago Barroso Perrotta's undergrad thesis, from his
Computer and Information Engineering Bachelor's degree.

It uses the [Coppetex](http://coppetex.sourceforge.net/) standard as its template.

How to build the PDF
====================

- Step 1. install `texlive` (usually through your preferred package manager, e.g. homebrew, pacman)
- Step 2. run `make` (or, alternatively, `latexmk`)

MacOS Workflow
==============

Installing
----------

- Step 1. install `TextMate.app` and then install the (i) `latex` and (ii) `latex font settings` bundles
- Step 2. install `Skim.app`, and then (i) enable synctex support, (ii) set the synctex program to `TextMate.app` and (iii) enable automatic document reloading
- Step 3. run `make watch`

Editing
-------

Edit your document in TextMate. The output PDF will be automatically and continuously updated in the background.

**Note**: for synctex support, press `cmd + shift + mouse click` on Skim.app in the desired area.

**Note**: if you opt-out of installing `texlive` on your system, you can use the `thiagowfx/texlive` docker image.

Alternative text editing setup: `VSCode.app` + LaTeX extension + Built-in preview.

Recommendations
===============

These tips are not mandatory, however they might enhance your experience:

* Use lualatex engine instead of the default latex one;
* Use 'Fira Mono' as the default monospace font.

References
==========

* https://github.com/LeoGardel/ModeloPG_1autor
* http://coppetex.sourceforge.net/
* https://www.overleaf.com/help/230-how-do-i-push-a-new-project-to-overleaf-via-git
