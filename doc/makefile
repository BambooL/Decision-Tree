WHAT = main

fast: $(WHAT).tex
	pdflatex $(WHAT).tex

$(WHAT): $(WHAT).tex $(WHAT).bib
	pdflatex $(WHAT).tex

best: $(WHAT).tex
	pdflatex $(WHAT).tex
	bibtex $(WHAT)
	pdflatex $(WHAT).tex
	pdflatex $(WHAT).tex

#	dvips -t letter $(WHAT).dvi
#	ps2pdf $(WHAT).ps

clean:
	rm *.log *.aux *.bbl *.blg $(WHAT).dvi $(WHAT).ps $(WHAT).pdf
