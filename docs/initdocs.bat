@echo off

:: Adds/updates .rst files to docs/source/
:: for /r "../mypackage/" %%d in (.) do (
::	sphinx-apidoc -f -o source/ "%%d"
:: )


:: Adds/updates .rst files to docs/source/
sphinx-apidoc -f -o source/ ../mypackage/

:: Finishing message
:: echo Your .rst files in docs/source/ have been initialised for python files in mypackage/.
pause