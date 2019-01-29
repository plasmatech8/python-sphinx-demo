# Python-Sphinx-Demo
A demonstration on how to automatically create documentation.

Getting started:
1. mkdir docs
2. cd docs
3. sphinx-quickstart
4. make html
5. Inspect the pages at docs/build/html/index.html

Manually updating or adding custom pages:
1. Update docs/source/conf.py whenever you please.
	* Change html_theme = 'nature'
2. Update the rst files to add more webpages.
	* Add stuff to docs/source/index.rst
	* Add more rst files and add it to docs/source/index.rst
3. make html

Automatically python documentation files:
1. Open docs/source/conf.py
2. Make sure that the following lines are not commented:
	```
	import os
	import sys
	sys.path.insert(0, os.path.abspath('.'))
	```
3. Insert the reletive path to your code.
i.e.
	```
	sys.path.insert(0, os.path.abspath('../../mypackage/'))
	```
4. sphinx-apidoc -f -o source/ ../mypackage/

	mypackage contains all code that we want to document.
5. make html


# Quickstart Command

Command:

	> sphinx-quickstart

Options:

	Welcome to the Sphinx 1.8.2 quickstart utility.

	Please enter values for the following settings (just press Enter to
	accept a default value, if one is given in brackets).

	Selected root path: .

	You have two options for placing the build directory for Sphinx output.
	Either, you use a directory "_build" within the root path, or you separate
	"source" and "build" directories within the root path.
	> Separate source and build directories (y/n) [n]: y

	Inside the root directory, two more directories will be created; "_templates"
	for custom HTML templates and "_static" for custom stylesheets and other static
	files. You can enter another prefix (such as ".") to replace the underscore.
	> Name prefix for templates and static dir [_]:

	The project name will occur in several places in the built documentation.
	> Project name: Python-Sphinx-Demo
	> Author name(s): Mark Connelly
	> Project release []: 0.0.1

	If the documents are to be written in a language other than English,
	you can select a language here by its language code. Sphinx will then
	translate text that it generates into that language.

	For a list of supported codes, see
	http://sphinx-doc.org/config.html#confval-language.
	> Project language [en]:

	The file name suffix for source files. Commonly, this is either ".txt"
	or ".rst".  Only files with this suffix are considered documents.
	> Source file suffix [.rst]:

	One document is special in that it is considered the top node of the
	"contents tree", that is, it is the root of the hierarchical structure
	of the documents. Normally, this is "index", but if your "index"
	document is a custom template, you can also set this to another filename.
	> Name of your master document (without suffix) [index]:
	Indicate which of the following Sphinx extensions should be enabled:
	> autodoc: automatically insert docstrings from modules (y/n) [n]: y
	> doctest: automatically test code snippets in doctest blocks (y/n) [n]:
	> intersphinx: link between Sphinx documentation of different projects (y/n) [n]:
	> todo: write "todo" entries that can be shown or hidden on build (y/n) [n]: y
	> coverage: checks for documentation coverage (y/n) [n]:
	> imgmath: include math, rendered as PNG or SVG images (y/n) [n]: n
	> mathjax: include math, rendered in the browser by MathJax (y/n) [n]: y
	> ifconfig: conditional inclusion of content based on config values (y/n) [n]:
	> viewcode: include links to the source code of documented Python objects (y/n) [n]: y
	> githubpages: create .nojekyll file to publish the document on GitHub pages (y/n) [n]: y

	A Makefile and a Windows command file can be generated for you so that you
	only have to run e.g. `make html' instead of invoking sphinx-build
	directly.
	> Create Makefile? (y/n) [y]: y
	> Create Windows command file? (y/n) [y]: y

	Creating file .\source\conf.py.
	Creating file .\source\index.rst.
	Creating file .\Makefile.
	Creating file .\make.bat.

	Finished: An initial directory structure has been created.

	You should now populate your master file .\source\index.rst and create other documentation
	source files. Use the Makefile to build the docs, like so:
	make builder
	where "builder" is one of the supported builders, e.g. html, latex or linkcheck.

# See also
Full tutorial: https://gisellezeno.com/tutorials/sphinx-for-python-documentation.html

Full tutorial: https://medium.freecodecamp.org/the-riddle-of-sphinx-how-to-document-your-code-easily-bf09a9a1804c

Github pages: https://stackoverflow.com/questions/35227274/how-to-port-python-sphinx-doc-to-github-pages

Mathjax equations: https://build-me-the-docs-please.readthedocs.io/en/latest/Using_Sphinx/UsingMathEquationsInSphinx.html