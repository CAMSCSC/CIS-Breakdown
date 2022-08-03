#!/usr/bin/bash

for file in /etc/sysctl.conf /etc/sysctl.d/*.conf /usr/lib/sysctl.d/*.conf /usr/local/lib/sysctl.d/*.conf /run/sysctl.d/*.conf; do
    if [ -f "$file" ]; then
        grep -Esq "^\s*kernel\.randomize_va_space\s*-\s*([0-1]|[3-9]|[1-9][0-9]+)" "$file" && sed -ri 's/^\s*kernel\.randomize_va_space\s*-\s*([0-1]|[3-9]|[1-9][0-9]+)/# &/gi' "$file"
    fi
done