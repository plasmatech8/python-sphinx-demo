cd ..

git add docs/build/html/
git commit -m "Updated gh-pages subtree commit"
git subtree push --prefix docs/build/html/ origin gh-pages
git reset --mixed HEAD~1

pause