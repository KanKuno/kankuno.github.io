#!/bin/bash

set -euo pipefail

repo_root="$(cd "$(dirname "$0")" && pwd)"
cd "$repo_root/cv"

# Build the published CV PDF from the local LaTeX source.
latexmk -pdf -jobname=kankuno_cv -outdir="$repo_root/assets/pdf" main.tex
