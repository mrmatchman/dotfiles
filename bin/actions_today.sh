#!/bin/bash

if [ -z "$1" ];
then
    exit 1
fi

grep `date "+%Y-%m-%d"` ~/bin/$1.dat | wc -l
