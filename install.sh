#!/bin/bash

path=$1

if [[ ! -d $path ]]; then
    echo "$path isn't a directory"
    exit 1
fi

echo -ne "$path is correct? [y] "; read in
if [[ $in = "y" ]]; then
    # cfg copy
    cp .gitignore .jsdoc.json .npmignore .travis.yml Gruntfile.js History.md LICENSE README.md index.js package.json $path

    # mkdir init
    cd $path
    mkdir examples/ doc/ test/
    
    echo "done"
fi