#!/bin/sh

cd ..
cd 1_SURE/
for f in *; do
	if [ -d $f ];
	then
		cd $f;
		mv chess.pdf "$f".pdf;
		mv chess.tex "$f".tex;
		cd ..;
	fi
done;
