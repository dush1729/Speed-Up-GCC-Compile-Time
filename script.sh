#!/bin/bash

if [[ ! "$1" ]]; then
    echo "You need to specify the .cpp file"
    exit 1 # Error exit code
fi

x=$(g++ -std=c++11 $1 -H 2>&1 | grep bits/stdc++.h)
directory=`echo $x | awk '{ print $NF }'`

mkdir bits
cp $directory bits/
cd bits
g++ -std=c++11 stdc++.h
