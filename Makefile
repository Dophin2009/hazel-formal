LATEXMK ?= latexmk

.PHONY : clean

%.pdf :
	$(LATEXMK) $*.tex
	mv target/$*.pdf $*.pdf

clean : clean-aux
	rm *.pdf

clean-aux :
	rm -rf target
