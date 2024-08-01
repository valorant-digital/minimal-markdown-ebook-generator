#!/bin/bash

##

set -e

set -x

##

reset

clear

##

rm -rf export/

mkdocs build -f mkdocs.pdf.yml

firefox export/minimal-markdown-ebook.pdf
