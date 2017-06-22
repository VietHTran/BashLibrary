#!/bin/bash
#Quick way to compile and check error of simple C program
if [[ -z "$1" ]]; then
    echo "Please provide filename as argument in order to perform test"
    exit
fi
rm test
gcc "$1" -o test
if [[ $(ls "test") ]]; then
    echo "Compile Successfully"
    ./test
    valgrind --tool=memcheck ./test
else
    echo "Compile Failed"
fi

