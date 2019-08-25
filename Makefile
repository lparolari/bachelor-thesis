MAINFILE = thesis
BUILD_DIR = _build

.PHONY: all
all: pdf #dvi

pdflatex: 
	pdflatex $(MAINFILE)

# *** build recipes
pdf: pdflatex bib pdflatex
	
bib:
	biber $(MAINFILE)

read:
	evince $(MAINFILE).pdf &

# *** clean recipes
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
