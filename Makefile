
all: thesis.pdf

thesis.pdf: thesis.tex thesis.glsdefs thesis.bbl
	pdflatex thesis

thesis.bbl: thesis.tex
	pdflatex thesis
	bibtex thesis

thesis.glsdefs: thesis.tex
	rm -f thesis.glsdefs
	pdflatex thesis
	makeglossaries thesis

clean:
	rm -fv *.swp *.autosave *.aux *.lof *.log *.lot *.fls *.out *.toc *.dvi *-converted-to.* *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.brf *.run.xml *.fdb_latexmk *.synctex.gz *.pdfsync *.alg *.loa *.thm *.nav *.snm *.vrb *.acn *.acr *.glg *.glo *.gls *.glsdefs *.brf *.lol *.idx *.ilg *.ind *.ist *.maf *.mtc *.mtc0 *.pyg *.mw *.nlo *.sagetex.sage *.sagetex.py *.sagetex.scmd *.sout *.sympy *.tdo *.xdy 
