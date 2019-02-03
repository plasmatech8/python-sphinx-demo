@echo off

:: Creates a seperate project folder, copies the docs/build/html/ folder into it and pushes to gh-pages. 

:: html directory, docs directory, git URL
set "htmlDir=%cd%\build\html"
set "docsDir=%cd%"
set /p url="Enter repo URL: "
cd ../
for %%I in (.) do set "projName=%%~nxI"

:: Go outside of project folder
cd ../

:: Folder name, gh-pages directory
set "dir=%projName%-docs"

:: Clone the gh-pages branch of the repo
rd "%dir%" /s /q
git clone -b gh-pages "%url%" "%dir%"
cd "%dir%"

:: Copy/overwrite all files and subdirectories
echo "%htmlDir%"
xcopy "%htmlDir%" . /s /y

:: Git commit and push
git add .
git commit -m "Updated gh-pages documentation..."
git push origin gh-pages

cd "%docsDir%"
pause