#!/usr/bin/env bash

printf '%s\n' "=== Linux System Information Report ==="
printf '\n'

printf 'Date and time: '
date

printf 'Username: '
whoami

printf 'Hostname: '
hostname

printf 'Kernel version: '
uname -r

printf '\n%s\n' "--- Disk Usage ---"
df -h "$HOME"

printf '\n%s\n' "--- Memory Usage ---"
if command -v free >/dev/null 2>&1; then
    free -h
else
    printf '%s\n' "Memory information is unavailable."
fi
