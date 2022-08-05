#!/bin/bash

awk -F: '($1!~/(halt|sync|shutdown)/ && $7!~/^(\/usr)?\/sbin\/nologin(\/)?$/ && $7!~/(\/usr)?\/bin\/false(\/)?$/) { print $1 " " $6 }' /etc/passwd | while read -r user dir
do
    if [ -d "$dir" ]; then
        for file in "$dir"/.*; do
            if [ ! -h "$file" ] && [ -f "$file" ]; then
                fileperm=$(stat -L -c "%A" "$file")
                if [ "$(echo "$fileperm" | cut -c6)" != "-" ] || [ "$(echo "$fileperm" | cut -c9)" != "-" ]; then
                    echo "User: \"$user\" file: \"$file\" has permissions:\"$fileperm\""
                    chmod go-w "$file"
                fi
            fi
        done
        file="$dir/.netrc"
        if [ ! -h "$file" ] && [ -f "$file" ]; then
            rm -f "$file"
            echo ".netrc file found and removed in $user\'s home directory."
        fi
        file="$dir/.forward"
        if [ ! -h "$file" ] && [ -f "$file" ]; then
            rm -r "$file"
            echo ".forward file found and removed in $user\'s home directory."
        fi
        file="$dir/.rhosts"
        if [ ! -h "$file" ] && [ -f "$file" ]; then 
            rm -r "$file"
            echo ".rhosts file found and removed in $user\'s home directory."
        fi
    fi
done
