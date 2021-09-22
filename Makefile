LATEXMK ?= latexmk

PRELUDE = prelude.tex symbols.tex

.PHONY : clean

%.pdf : %.tex $(PRELUDE)
	$(LATEXMK) $*.tex
	mv target/$*.pdf $*.pdf

clean : clean-aux
	rm *.pdf

clean-aux :
	rm -rf target
