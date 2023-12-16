#!/bin/bash

## Find an IP-Addresses from a catted file. Filters unique addresses and writes to a file specified.
## Print to stdout by deleting anything after >

inputfile="${1}";
outputfile="${2}";

cat $inputfile | grep -n -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | sort -n > $outputfile

## Not tested. Also all (if any) exceptions are not handled. Just for demo at the moment
## If you don't want the linenumber then do not pass -n to grep
## How does one want things to be sorted, now its based on some numeric value.

