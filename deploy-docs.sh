#!/usr/bin/env bash
cd docs
rm -rf _book
gitbook build
cd _book
git init
git add -A
git commit -m 'update book'
git push -f git@github.com:hq5544/vue-webpack.git master:gh-pages
