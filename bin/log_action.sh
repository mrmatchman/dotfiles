#!/bin/bash

if [ -z "$1" ];
then
    exit 1
fi

date "+%Y-%m-%d %H:%M" >> ~/bin/$1.dat;
