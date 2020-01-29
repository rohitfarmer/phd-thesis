#!/bin/sh
pdflatex main.tex; makeindex -s nomencl.ist -t main.nlg -o main.nls main.nlo; pdflatex main.tex

