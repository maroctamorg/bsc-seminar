CC=latexmk
CARGS=-pdf -quiet
CTARGET=-jobname=build/seminar
CSOURCE=seminar.tex

all: compile present

compile:
	${CC} ${CARGS} ${CTARGET} ${CSOURCE}
	mv build/seminar.pdf ./ 

present:
	${PDFVIEWER} seminar.pdf

cleanup:
	rm build/*

