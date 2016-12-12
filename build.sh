#! /bin/bash

if [ ! -d "docs/" ]; then 
    git clone https://github.com/andmos/coffee docs
    mv docs/README.md docs/index.md
else 
    cd docs/ && git pull && cd ..
fi
mkdocs build
