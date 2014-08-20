BUILD_DIR=build
LATEXMK_OPTIONS=--pdf --output-directory=${BUILD_DIR} --pdflatex="pdflatex -interaction=nonstopmode"

.PHONY: all main clean

all: main

main: | ${BUILD_DIR}
	latexmk ${LATEXMK_OPTIONS} main.tex

clean:
	rm -rf ${BUILD_DIR}

${BUILD_DIR}:
	mkdir -p ${BUILD_DIR}
