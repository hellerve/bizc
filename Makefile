all: front back cleanup

front:
	lualatex src/bizc.front.tex
	make move

back:
	lualatex src/bizc.back.tex
	make move

# --output-directory does not work with MikTeX
move:
	mv *.pdf out/

cleanup:
	rm *.log *.aux
