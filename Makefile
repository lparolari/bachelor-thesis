MAINFILE = thesis
SRC = $(shell pwd)
BUILD_DIR = _build


# ***********************************************************
# ****** MAIN

.PHONY: all
all:  # all do nothing by default

pdf: pdf1  # default
pdf1: pdflatex bib pdflatex
pdf2: pdfdocker


# ***********************************************************
# ****** BUILD RECIPES

# build using docker
pdfdocker:
	docker pull dxjoke/tectonic-docker
	docker run --mount src=$(SRC),target=/usr/src/tex,type=bind dxjoke/tectonic-docker /bin/sh -c "tectonic --keep-intermediates --reruns 0 thesis.tex; biber thesis; tectonic thesis.tex"

# build using pdflatex
pdflatex: 
	pdflatex $(MAINFILE)
bib:
	biber $(MAINFILE)

# read
read:
	evince $(MAINFILE).pdf &


# ***********************************************************
# ****** CLEAN RECIPES
.PHONY: clean
clean:
	-rm -f *.aux
	-rm -f *.log
	-rm -f *.toc
	-rm -f *.bbl
	-rm -f *.blg
	-rm -f *.out
	-rm -f make/bib

.PHONY: cleanall
cleanall: clean
	-rm -f *.pdf
	-rm -f *.ps
	-rm -f *.dvi
	-rm -rf ./make
	-rm -f *.mtc*
	-rm -f *.maf
	-rm -f *.listing
	-rm -f *.loa
	-rm -f *.lof
	-rm -f *.lot
	-rm -f *.bcf
	-rm -f *.fls
	-rm -f *.pyg
	-rm -f *.run.xml
	-rm -rf $(BUILD_DIR)
