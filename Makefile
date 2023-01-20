MAIN=main.tex
SECTIONS=$(wildcard sections/*.tex)
SOURCE=$(MAIN) $(SECTIONS) $(AUX)
ROOTS=$(wildcard main-*.tex)
REFS=$(wildcard ./refs/*)
FIGS=$(wildcard ./figures/*)
PROOFS=$(wildcard ./proofs/*)

.PHONY: clean all conf arxiv init

all: conf arxiv

conf: main-conf.pdf
arxiv: main-arxiv.pdf

init:
	git submodule update --init

main-%.pdf: main-%.tex $(MAIN) $(SECTIONS) $(AUX) $(REFS) $(FIGS) $(PROOFS)
	latexmk -pdf $(basename $@).tex

cleanaux:
	rm -f *aux *bcf *fdb_latexmk *log *bbl *blg *fls *out *run.xml *vtc *xcp *synctex.gz

tidy: cleanaux
	@for tex in $(ROOTS); do \
		latexmk -c $(tex); \
	done

clean: cleanaux
	@for tex in $(ROOTS); do \
		latexmk -C $(tex); \
	done