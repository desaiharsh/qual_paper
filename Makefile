PAPER = paper
BIB = bib.bib
TEX = $(wildcard *.tex)

.PHONY: all clean

all: $(PAPER).pdf

$(PAPER).pdf : $(TEX) $(BIB) IEEEtran.cls
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean :
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
