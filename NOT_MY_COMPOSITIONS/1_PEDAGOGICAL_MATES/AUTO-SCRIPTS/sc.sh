#!/bin/sh

cd ..
for f in *; do
	if [ -d $f ];
	then
		cd $f;
		echo "CHANGING NAME chess.pdf to $f.pdf";
		mv chess.pdf "$f".pdf;
		mv chess.tex "$f".tex;
		cd ..;
	fi
done;
