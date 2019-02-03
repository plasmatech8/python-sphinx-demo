@echo off

:: Creates a seperate project folder, copies the docs/build/html/ folder into it and pushes to gh-pages. 

:: Go outside of project folder
cd ../..

:: Create a new folder outside of the current project
set  counter=0
:TryNext
set /a counter+=1
mkdir "new folder (%counter%)" 2>nul || goto :TryNext
set dir="new folder (%counter%)"

:: TODO: Clone repo, clean it and push to branch gh-pages
@echo folder is: %dir%
cd %dir%

pause