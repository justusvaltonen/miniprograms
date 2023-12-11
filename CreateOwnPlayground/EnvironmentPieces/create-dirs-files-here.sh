#!/bin/bash

##This script creates some random files and folders to test on. Feel free to comment/uncomment stuff.

##First create a list of dirs and files to make and prove they are there. {} are needed. @ stands for the whole array.
##Every time echo is called, also 'enter' is called after the argument, thus different formats for the arrays.
AlvlDirs=('ad1' 'ad2' 'ad3' 'ad4' 'ad5' 'ad6');
BlvlDirs=('bd1' 'bd2' 'bd3' 'bd4' 'bd5' '.bd6h');
AlvlFiles=('af1' 'af2' 'af3' 'af4' 'af5' '.af6h');
BlvlFiles=('bf1' 'bf2' 'bf3' 'bf4' '.bf5h' '.af6h');

##Variables
K=0;
me="$PWD${0:1}";

##Demonstration. Feel free to comment out
#echo "${AlvlDirs[@]}";
#echo -e "\nMinus e is needed to add newlines\nNext thing makes a newline-separated list";
#for i in "${BlvlDirs[@]}"; do
#	echo $i;
#done;

##Next to create a dir where the stuff happens to avoid accidental harakiri
if ! [[ -d "data" ]]; then
	mkdir data;
fi;
cd data;

#<<'MultilineComment'
##Next to create AlvlDirs(rootdirs) and for each entry we are going to create every instance of BlvlDirs(subdirs)
##For each B, we're creating bFiles.. Not perfect, but they are there now sort of.
for i in "${AlvlDirs[@]}"; do
	$(mkdir $i);
	for j in "${BlvlDirs[@]}"; do
		$(mkdir $i/$j);
		for k in "${BlvlFiles[@]}"; do
			echo "I am a file named ${BlvlFiles[$K]}" >> $i/$j/${BlvlFiles[$K]};
			echo -e "\n\n##This file was created by: $me\n" >> $i/$j/${BlvlFiles[$K]};
			let "K++";
		done;
		K=0;
	done;
	K=0;
	echo "I am a file named ${AlvlFiles[$i]}" >> $i/${AlvlFiles[$i]};
	echo -e "\n\n##This file was created by: $me\n" >> $i/${AlvlFiles[$i]};
done;

##Cleaning based on the argument that user gives
if [[ $1 == "clean" ]]; then
	for i in "${AlvlDirs[@]}"; do
		$(rm -r -v $i);
	done;
fi;

##Cleanup if the things are no longer neccessary. Put '#' infront of both MultilineComment field enable cleaning
<<'MultilineComment'
for i in "${AlvlDirs[@]}"; do
	$(rm -r -v $i);
done;
MultilineComment

