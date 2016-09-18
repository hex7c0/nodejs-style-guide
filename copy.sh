#!/bin/bash

module=(
../arc4/ 
../autokey/ 
../basic-authentication/ 
../browser-language/ 
../compression-zlib/ 
../console-override/ 
../cookie-encryption/ 
../dir2xml/ 
../express-sitemap/ 
../filename/ 
../grunt-endline/ 
../grunt-safer-regex/ 
../json-decrypt/ 
../logger-request/ 
../logger-request-cli/ 
../mamma/ 
../mkdir-recursive/ 
../mod_autoindex/ 
../mongodb-backup/ 
../mongodb-backup-cli/ 
../mongodb-restore/ 
../mongodb-restore-cli/ 
../monitode/ 
../nodejs-cipher-performance/ 
../nodejs-hash-performance/ 
../prerouting/ 
../protect/ 
../regex-safer/ 
../remove_connection/ 
../remove_date/ 
../server-signature/ 
../setheaders/ 
../startline/ 
../supergiovane/ 
../task-manager/ 
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
