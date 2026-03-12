#!/bin/bash

set -e

SRC_DIR="src"
OUT_DIR="output"
TEMPLATE="template/cv-template.tex"

mkdir -p $OUT_DIR

echo "Building Spanish CV..."
pandoc $SRC_DIR/Carlos_Montero_CV_ES.md \
  --template=$TEMPLATE \
  --pdf-engine=xelatex \
  -o $OUT_DIR/Carlos_Montero_CV_ES.pdf

echo "Building English CV..."
pandoc $SRC_DIR/Carlos_Montero_CV_EN.md \
  --template=$TEMPLATE \
  --pdf-engine=xelatex \
  -o $OUT_DIR/Carlos_Montero_CV_EN.pdf

echo "Building Spanish Cover Letter..."
pandoc $SRC_DIR/cover_letter_es.md \
  --template=$TEMPLATE \
  --pdf-engine=xelatex \
  -o $OUT_DIR/Carlos_Montero_Cover_Letter_es.pdf

echo "Building English Cover Letter..."
pandoc $SRC_DIR/cover_letter_en.md \
  --template=$TEMPLATE \
  --pdf-engine=xelatex \
  -o $OUT_DIR/Carlos_Montero_Cover_Letter_en.pdf

echo "Done."