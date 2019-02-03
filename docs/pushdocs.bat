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

REM cd build/html/
REM git add --all
REM git commit -m "Updated gh-pages branch."
REM git push origin gh-pages --force
REM git reset HEAD~1
REM cd ../../

REM cd ..
REM git checkout master
REM git subtree split --prefix docs/build/html/ -b gh-pages
REM git subtree push --prefix docs/build/html/ origin gh-pages
REM :: git push -f origin gh-pages:gh-pages
REM :: git branch -D gh-pages
REM cd docs

:: Unstages all files, Stages gh-pages files, makes a commit, pushes subtree to the gh-pages branch
git reset
git add build/html/
git commit -m "Updated gh-pages documentation."
cd ../
git subtree push --prefix docs/build/html/ origin gh-pages
git push origin
cd docs

pause