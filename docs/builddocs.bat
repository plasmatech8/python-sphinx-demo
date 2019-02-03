@echo off

cd ../
rm -rf "docs/build/html/"
echo "docs/build/html/" >> .gitignore
git worktree add docs/build/html/ gh-pages
cd docs/

:: Builds .html from .rst files and settings from docs/source/.
make html

:: Finishing message (doesn't work after make html)
:: echo Your .html files in docs/build/html have been updated to reflect changes in docs/source/
pause