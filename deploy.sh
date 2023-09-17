#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://HandrianW.github.io
# git push -f git@github.com:HandrianW/HandrianW.github.io.git main

# if you are deploying to https://HandrianW.github.io/testingprivate
git push -f git@github.com:HandrianW/testingprivate.git main:gh-pages

cd -