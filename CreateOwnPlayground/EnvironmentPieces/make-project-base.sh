#!/bin/bash

## This file is one part of a bigger set of scripts. It will eventually create an environment for testing all sorts of stuff you learn
## I do know that I repeate myself a bit, but that's life.'

## Replace with a sourced variable or if all fails, then hardcoded path
base="<absolute-path>/TestEnvironment";

## Source list
source $base/SourcesCreate/project_global_variables;
source $base/linker.sh;

## Create some dirs from a prefixed list of directory names
while read -r kansiot; do
	if [[ ! -d "$base/$kansiot" ]]; then
		mkdir $base/$kansiot; echo -e "$base/$kansiot summoned";
	fi;
done < $base/SourcesCreate/dir_list;

## Backup doesn't take long if the dirs are empty and all works.' Variables fotten from: $base/SourcesCreate/project_global_variables
## We try to get access to parent dir of project root to make backups there. There has to be a better way, but I'm in a rush'
echo "Starting backups";
echo -e "$(date)\n" >> $LogEnv/backups_testenvironment_full.log

## It's been too long, I don't know what I was after here. Not working and I don't wodner'
## Maybe there are bull bakcups and partials and this tries to combine them. I really don't remember'
#find $base -maxdepth 1 -mindepth 1 -exec cp -r {} $base/../Backups/ \; >> $LogEnv/backups_testenvironment_full.log
find $base -maxdepth 1 -mindepth 1 >> $LogEnv/backups_testenvironment_full.log
echo -e "\n=============\n\n";

## Retain
<<TodO
Create a method to reverse the whole weird process. Well, it's an excersise..
TodO

##Cleaning: Use <<YourKeyWordHere "This is commented out" YourKeyWordHere. Or :' "This is commented out" and so is this'
##The following will remove all dirs
<<myComment
while read -r kansiot; do
	if [[ -d "$base/$kansiot" ]]; then
		rm -r $base/$kansiot; echo -e "$base/$kansiot expelled";
	fi;
done < $base/sourceCreate/dirList;
myComment

##Testing (works)
#echo $logEnv;
#echo $subber;
