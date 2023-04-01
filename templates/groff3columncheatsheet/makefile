out.pdf: new.ms my.bib
	refer -p my.bib new.ms | groff -ms -jt -dpaper=letterl -P-l -T pdf > out.pdf
