#!/usr/bin/env bash
AUTHOR="Jasper Chan"

mkdir -p bin

tectonic -k -o bin src/resume.tex
exiftool -Author="$AUTHOR" -Revision="$BUILD_NAME" bin/resume.pdf
rm bin/resume.pdf_original

tectonic -k -o bin src/transcript.tex
exiftool -Author="$AUTHOR" -Revision="$BUILD_NAME" bin/transcript.pdf
rm bin/transcript.pdf_original
