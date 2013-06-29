ROOT=$(realpath $(dir $(lastword $(MAKEFILE_LIST))))/..
SRC=$(ROOT)/src
BLD=$(ROOT)/build

all: $(BLD)/CV.pdf

$(BLD)/CV.pdf: CV.tex $(BLD)/CV.aux
	cd $(BLD) && BIBINPUTS=$(SRC) bibtex CV.aux
	pdflatex -output-directory $(BLD) CV.tex
	pdflatex -output-directory $(BLD) CV.tex

$(BLD)/CV.aux: CV.tex papers.bib
	mkdir -p $(BLD)
	pdflatex -output-directory $(BLD) CV.tex

view: $(BLD)/CV.pdf
	evince $(BLD)/CV.pdf

clean:
	rm -rf $(BLD)/*
