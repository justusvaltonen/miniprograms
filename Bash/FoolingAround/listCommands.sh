#!/bin/bash

##Some vars
myStr1="lolleroOOOIIIllasII";
myStr2="Kissa";

##Creating an array of dirnames and pushing one additional dir to the list. Then connecting 2 arrays as one.
ArrayDir1=('dir1' 'dir2' 'dir3');
echo ${ArrayDir1[2]};
ArrayDir1+=('dir4');
echo ${ArrayDir1[3]};
ArrayDir2=('dir5' 'dir6');
echo ${ArrayDir2[1]};
ArrayDir1=("${ArrayDir1[@]}" "${ArrayDir2[@]}");
echo ${ArrayDir1[5]};

for i in "${ArrayDir1[@]}"; do
	echo $i;
done;

echo ${ArrayDir1[@]};

##The following is not usually smart I guess..
echo $PWD;

##If the folder doesn't exist, this guy executes just fine
mkdir $PWD/folder1;

##This runs just fine
test1="$(mkdir folder2)";

##This doesn't execute the way I would've hoped
echo $test1;

##Read from a file for some reason doesn't read a lot. Stops at whitespace.
lines=(`cat "logSuccessClean.txt"`);
echo $lines;

##Create random number 0-100 and output it
rnumb=$(($RANDOM%101));
echo "Number is: $rnumb";

##Subshell stuff
(cd ..; echo "Subshell pwd after command cd .. $PWD;" echo "DollahDollah PID from myself: $$";);
echo "Current shell pwd: $PWD";
echo "PID of last background task: $!";
echo "PID of current shell: $$";
echo "Last argument of the previous command: $_";
echo 'Return value of piped commands (array): ${PIPESTATUS[n]}';


echo "$0 = arg0";
echo "$1 = arg1 (need to insert an argument for this)";

##Need to give 2 args to tr. Makes lowercase to uppercase
echo $myStr1 | tr '[:lower:]' '[:upper:]';

##Source relative. Don't understands
#source "${0%/*}/../share/foo.sh"

##How to export ArrayDir so cleaninglady can read it also? If not possible, how to import the list from somewhere?

