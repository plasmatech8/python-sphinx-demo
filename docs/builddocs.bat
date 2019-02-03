@echo off

REM cd ../
REM rm -rf "docs/build/html/"
REM echo "docs/build/html/" >> .gitignore
REM git worktree add docs/build/html/ gh-pages
REM cd docs/

:: Builds .html from .rst files and settings from docs/source/.
make html

:: Finishing message (doesn't work after make html)
:: echo Your .html files in docs/build/html have been updated to reflect changes in docs/source/
pause