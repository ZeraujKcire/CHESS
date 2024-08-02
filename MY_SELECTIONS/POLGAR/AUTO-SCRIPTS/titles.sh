#!/bin/sh

cd ..
cd 1_SURE/
for f in *; do
	if [ -d $f ];
	then
		cd $f;
		sed -i '1s/.*/\\documentclass\[border=\{0pt 0pt 0pt 3mm\},convert,varwidth\]\{standalone\}/' "$f".tex;
		sed -i "6s/.*/\n\\\\hspace\{8mm\} \{\\\\huge \\\\bfseries $f \} \\\\\\\\ \[-1cm\]\n/" "$f".tex;
		echo "\n\n\nCOMPILING $f.tex\n\n\n";
		pdflatex -interaction=batchmode "$f".tex;
		cd ..;
	fi
done

