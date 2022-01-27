#!/bin/bash
mkdir -p bin
latexmk -f -pdf -output-directory=../bin -cd src/*.tex
latexmk -f -pdf -output-directory=../bin -cd src/*.tex
latexmk -f -c -output-directory=../bin -cd src/*.tex