#!/bin/bash
# Publish site/ to the gh-pages branch, which GitHub Pages serves at
# https://portraitxo.github.io/ember/
# Uses a branch rather than an Actions workflow, so no `workflow` OAuth scope is needed.
set -euo pipefail
cd "$(dirname "$0")"
git push origin main
git push origin "$(git subtree split --prefix site main)":refs/heads/gh-pages --force
echo "Deployed. https://portraitxo.github.io/ember/"
