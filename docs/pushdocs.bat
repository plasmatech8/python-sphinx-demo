@echo off

:: Pushes docs/build/html to branch gh-pages. These commands will unstage any staged changes.

REM git add docs/build/html/
REM git commit -m "Updated gh-pages branch."
REM git subtree push --prefix docs/build/html/ origin gh-pages
REM :: git push -f --prefix docs/build/html/ origin gh-pages
REM git reset --mixed HEAD~1

REM git subtree split --prefix docs/build/html/ -b gh-pages
REM git add docs/build/html/
REM git commit -m "Updated gh-pages branch."
REM git push -f origin gh-pages:gh-pages
REM git reset --mixed HEAD~1

REM rm -rf docs/build/html/


cd build/html/
git add --all
git commit -m "Updated gh-pages branch."
git push origin gh-pages --force
git reset HEAD~1
cd ../../


:: Finishing Message
:: echo The changes under docs/build/html should have been pushed to the gh-pages branch.
pause