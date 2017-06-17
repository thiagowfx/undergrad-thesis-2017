About
=====

This repository contains Thiago Barroso Perrotta's undergrad thesis, from his
Computer and Information Engineering Bachelor's degree.

It uses the [Coppetex](http://coppetex.sourceforge.net/) standard.

How to produce the PDF
======================

- Step 1. install `texlive`
- Step 2. run `make`

How to edit continuously on macOS
=================================

- Step 1. install `TextMate.app`, install the `latex` and `latex font settings` bundles
- Step 2. install `Skim.app`, enable synctex support, set the synctex program to textmate, enable automatic reloading
- Step 3. run `make watch`
- Step 4. for synctex, cmd + shift + click on Skim.app

If you don't want to install `texlive` directly, use the pre-installed package in the `thiagowfx/latex` docker image.

References
==========

* https://github.com/LeoGardel/ModeloPG_1autor
* http://coppetex.sourceforge.net/
* https://www.overleaf.com/help/230-how-do-i-push-a-new-project-to-overleaf-via-git
