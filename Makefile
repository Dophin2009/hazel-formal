LATEXMK ?= latexmk

PRELUDE = $(wildcard prelude/*.tex)
SOURCES = $(wildcard *.tex)
TARGETS = $(patsubst %.tex,%.pdf,$(SOURCES))

.PHONY : clean

all : $(TARGETS)

%.pdf : %.tex $(PRELUDE)
	$(LATEXMK) $*.tex
	mv target/$*.pdf $*.pdf

clean : clean-aux
	rm *.pdf

clean-aux :
	rm -rf target
