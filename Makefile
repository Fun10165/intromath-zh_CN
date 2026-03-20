MAIN := ladwcn
LATEXMK := latexmk

.PHONY: all pdf clean distclean

all: pdf

pdf:
	$(LATEXMK) $(MAIN).tex

clean:
	$(LATEXMK) -c $(MAIN).tex
	rm -f $(MAIN).synctex.gz $(MAIN).synctex\(busy\)

distclean:
	$(LATEXMK) -C $(MAIN).tex
	rm -f $(MAIN).synctex.gz $(MAIN).synctex\(busy\)
