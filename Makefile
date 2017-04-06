SRC=$(wildcard *.md)
DOCX = $(SRC:.md=.docx)
RTF = $(SRC:.md=.rtf)
PDF = $(SRC:.md=.pdf)


all: $(DOCX) $(RTF) $(PDF)	

%.docx: %.md
	pandoc -s $< -o $@  --latex-engine=xelatex -V mainfont='Arial' -V fontsize=11pt -V geometry:margin=1in --bibliography=library.bib --csl very-basic-stripped-down.csl

%.rtf: %.md
	pandoc -s $< -o $@  --latex-engine=xelatex -V mainfont='Arial' -V fontsize=11pt -V geometry:margin=1in --bibliography=library.bib --csl very-basic-stripped-down.csl

%.pdf: %.md
	pandoc -s $< -o $@  --latex-engine=xelatex -V mainfont='Arial' -V fontsize=11pt -V geometry:margin=1in --bibliography=library.bib --csl very-basic-stripped-down.csl --template=report.latex 

