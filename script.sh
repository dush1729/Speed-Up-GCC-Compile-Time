#!/bin/bash

if [ $# -eq 0 ]
then
    echo Error: You need to specify the .cpp file
    exit 1 # Error exit code
fi

file=$(g++ -std=c++17 $1 -H 2>&1 | grep bits/stdc++.h | tail -1)
g++ -std=c++17 $file
if [ $? -eq 0 ]; then
    echo Success: bits/stdc++.h precompiled successfully! Enjoy godspeed compilation!
else
    echo Error: Either you have precompiled bits/stdc++.h or you are not using bits/stdc++.h in $1. Please include it.
fi