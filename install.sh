#!/bin/bash

path=$1

if [[ ! -d $path ]]; then
    echo "$path isn't a directory"
    exit 1
fi

echo -ne "$path is correct? [y] "; read in
if [[ $in = "y" ]]; then
    # cfg copy
    cp .gitignore .npmignore .travis.yml appveyor.yml Gruntfile.js CHANGELOG.md LICENSE README.md index.js package.json $path

    # mkdir init
    cd $path
    mkdir examples/ test/
    
    echo "done"
fi
