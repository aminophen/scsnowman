KANJI = -kanji=utf8
#FONTMAP = -f ipaex.map -f ptex-ipaex.map
FONTMAP = -f haranoaji.map -f ptex-haranoaji.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: scsnowman.pdf scsnowman-sample.pdf

scsnowman.pdf: scsnowman.sty scsnowman.tex
	lualatex scsnowman.tex
	lualatex scsnowman.tex
	lualatex scsnowman.tex
scsnowman-sample.pdf: scsnowman.sty scsnowman-sample.tex
	platex scsnowman-sample.tex
	platex scsnowman-sample.tex
	dvipdfmx scsnowman-sample.dvi

.PHONY: install clean
install:
	mkdir -p ${TEXMF}/doc/latex/scsnowman
	cp ./LICENSE ${TEXMF}/doc/latex/scsnowman/
	cp ./README.md ${TEXMF}/doc/latex/scsnowman/
	cp ./*.pdf ${TEXMF}/doc/latex/scsnowman/
	cp ./*.tex ${TEXMF}/doc/latex/scsnowman/
	mkdir -p ${TEXMF}/tex/latex/scsnowman
	cp ./*.sty ${TEXMF}/tex/latex/scsnowman/
	cp ./*.def ${TEXMF}/tex/latex/scsnowman/
clean:
	rm -f *.dvi *.pdf
