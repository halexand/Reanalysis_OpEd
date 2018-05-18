all: Alexander_etal_OpEd_Reanalaysis.pdf Alexander_etal_OpEd_Reanalaysis.tex Oped_Reanalysis.bib

clean:
	rm -rf *aux
	cp /Users/halexand/mendeley_bibtex/Oped_Reanalysis.bib .

Alexander_etal_OpEd_Reanalaysis.pdf: Alexander_etal_OpEd_Reanalaysis.tex Oped_Reanalysis.bib
	pdflatex Alexander_etal_OpEd_Reanalaysis
	bibtex Alexander_etal_OpEd_Reanalaysis
	bibtex Alexander_etal_OpEd_Reanalaysis
	pdflatex Alexander_etal_OpEd_Reanalaysis
	pdflatex Alexander_etal_OpEd_Reanalaysis
	open Alexander_etal_OpEd_Reanalaysis.pdf -a /Applications/Preview.app
