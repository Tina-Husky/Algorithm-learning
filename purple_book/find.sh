#!/bin/bash
dir=$(ls -1 -F | grep -v '[/$]')

for file in $dir
do
#    echo -e $file
    grep "upper" $file
    if [ $? -eq 0 ]; then
        echo -e $file
    fi
done
