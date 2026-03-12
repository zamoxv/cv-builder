# CV Builder – Carlos Montero

This repository contains the source code for my professional CV, built using Markdown, Pandoc and LaTeX.

The goal of this project is to maintain the CV as version-controlled source code and generate PDF outputs automatically.

## Features

- CV written in Markdown
- PDF generation using Pandoc + XeLaTeX
- Custom LaTeX template
- Bash scripts to automate builds
- Live rebuild using file watchers
- Spanish and English versions

## Project Structure

```text
CV/
├─ src/
│  ├─ Carlos_Montero_CV_ES.md
│  ├─ Carlos_Montero_CV_EN.md
│  └─ cover_letter.md
│
├─ template/
│  └─ cv-template.tex
│
├─ output/
│  ├─ Carlos_Montero_CV_ES.pdf
│  ├─ Carlos_Montero_CV_EN.pdf
│  └─ Carlos_Montero_Cover_Letter.pdf
│
├─ build.sh
├─ watch.sh
└─ README.md
```

## Requirements

- pandoc
- texlive
- inotify-tools
- xelatex

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