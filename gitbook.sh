git checkout master
git add .
git commit -m $1
git push -u origin master
git branch  -r -d  origin/gh-pages
git push origin :gh-pages
git branch  -b gh-pages
cp -r _book/* .
git add .
git commit -m $1
git push -u origin gh-pages
git checkout master
