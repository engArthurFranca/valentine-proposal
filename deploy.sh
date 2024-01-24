﻿# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init --initial-branch=main
git add -A
git commit -m 'deploy'
git push -f git@github.com:engArthurFranca/valentine-proposal.git main:gh-pages
cd -