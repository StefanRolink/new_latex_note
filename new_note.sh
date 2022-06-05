#!/bin/bash

# Small script to create a new latex note. 

mkdir $1
cd $1
touch $1.tex
cat <<EOT >> $1.tex
\documentclass[paper=a4,oneside,fontsize=12pt,parskip=full]{scrartcl} 
\begin{document}
  Hier wat tekst
\end{document}
EOT

nvim +3 $1.tex
