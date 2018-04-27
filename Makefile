KANJI = -kanji=utf8
FONTMAP = -f ipaex.map -f ptex-ipaex.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: scsnowman.pdf \
	scsnowman-sample.pdf scsnowman-zrtest.pdf

scsnowman.pdf: scsnowman.sty scsnowman.tex
	lualatex scsnowman.tex
	lualatex scsnowman.tex
	lualatex scsnowman.tex
scsnowman-sample.pdf: scsnowman.sty scsnowman-sample.tex
	platex scsnowman-sample.tex
	platex scsnowman-sample.tex
	dvipdfmx scsnowman-sample.dvi
scsnowman-zrtest.pdf: scsnowman.sty scsnowman-zrtest.tex
	pdflatex scsnowman-zrtest.tex
	pdflatex scsnowman-zrtest.tex

.PHONY: install clean
install:
	mkdir -p ${TEXMF}/doc/latex/scsnowman
	cp ./Makefile ${TEXMF}/doc/latex/scsnowman/
	cp ./LICENSE ${TEXMF}/doc/latex/scsnowman/
	cp ./README.md ${TEXMF}/doc/latex/scsnowman/
	cp ./*.pdf ${TEXMF}/doc/latex/scsnowman/
	cp ./*.tex ${TEXMF}/doc/latex/scsnowman/
	mkdir -p ${TEXMF}/tex/latex/scsnowman
	cp ./*.sty ${TEXMF}/tex/latex/scsnowman/
	cp ./*.def ${TEXMF}/tex/latex/scsnowman/
clean:
	rm -f *.dvi *.pdf
