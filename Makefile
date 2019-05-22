MAINFILE = thesis

.PHONY: all
all: pdf #dvi

#dvi: $(EXTRA_FILES) bib
#	latex $(MAINFILE)
#	latex $(MAINFILE)

# *** build recipes
pdf: bib
	pdflatex $(MAINFILE)

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
