#!/bin/bash

cut -f3 -d":" /etc/passwd | sort -n | uniq -c | while read x; do
    [ -z "$x" ] && break
    set - $x
    if [ $1 -gt 1 ]; then
        users=$(awk -F: '($3 == n) { print $1 }' n=$2 /etc/passwd | xargs)
        echo "Duplicate UID ($2): $users"
    fi
done

cut -d: -f1 /etc/passwd | sort | uniq -d | while read -r x; do
    echo "Duplicate login name $x in /etc/passwd"
done

cut -d: -f3 /etc/group | sort | uniq -d | while read x; do
    echo "Duplicate GID ($x) in /etc/group"
done

cut -d: -f1 /etc/group | sort | uniq -d | while read -r x; do
    echo "Duplicate group name $x in /etc/group"
done
