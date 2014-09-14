#!/bin/bash

module=(
../arc4/ 
../autokey/ 
../basic-authentication/ 
../browser-language/ 
../cookie-encryption/ 
#../filename/
../dir2xml/ 
../express-sitemap/ 
#../grunt-endline/ 
../logger-request/ 
../logger-request-cli/ 
../mod_autoindex/ 
#../monitode/ 
../server-signature/ 
../startline/ 
#../supergiovane/ 
../tickle/ 
../timeout-request/ 
../top-vhost/ 
../transfer-rate/ 
)

path=$1

if [[ ! -f $path ]]; then
    echo "$path isn't a file"
    exit 1
fi

echo -ne "$path is correct? [y] "; read in
if [[ $in = "y" ]]; then
    # list above
    for i in ${module[@]}; do
        cp $path ${i}
    done
    
    echo "done"
fi
