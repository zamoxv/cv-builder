# CV Builder – Carlos Montero

![Build CV](https://github.com/zamoxv/cv-builder/actions/workflows/build-cv.yml/badge.svg)

Automated CV generation using Markdown, Pandoc and LaTeX.

This repository contains the source code for my professional CV, built using Markdown, Pandoc and LaTeX.

The goal of this project is to maintain the CV as version-controlled source code and generate PDF outputs automatically.

## Features

- CV written in Markdown
- PDF generation using Pandoc + XeLaTeX
- Custom LaTeX template
- Bash scripts to automate builds
- Live rebuild using file watchers
- Spanish and English versions

## CI

PDF files are generated automatically using GitHub Actions.  
Each commit triggers a CI workflow that compiles the Markdown CVs into PDFs using Pandoc and XeLaTeX.

## Example CV

Spanish CV  
[src/Carlos_Montero_CV_ES.md](src/Carlos_Montero_CV_ES.md)

English CV  
[src/Carlos_Montero_CV_EN.md](src/Carlos_Montero_CV_EN.md)

These files are compiled into PDF using Pandoc and a custom LaTeX template.

## Project Structure

```text
cv-builder/
├── src/
|   ├── cover_letter_es.md
|   ├── cover_letter_en.md
│   ├── Carlos_Montero_CV_ES.md
│   └── Carlos_Montero_CV_EN.md
├── template/
│   └── cv-template.tex
├── .github/workflows/
│   └── build-cv.yml
├── build.sh
├── watch.sh
└── README.md
```

## Requirements

- pandoc
- texlive (XeLaTeX)
- inotify-tools

Install on Fedora:

```bash
sudo dnf install pandoc texlive-scheme-medium inotify-tools
```

## Build the CV

```bash
./build.sh
```

## Watch for changes

```bash
./watch.sh
```

## Output

Generated PDFs are stored in the output directory.

## Portfolio

Portfolio:
https://zamoxv.github.io/cv-carlos-montero/

GitHub:
https://github.com/zamoxv

LinkedIn:
https://linkedin.com/in/carlosmontero-dev