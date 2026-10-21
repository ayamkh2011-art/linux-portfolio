#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 /path/to/directory" >&2
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "Error: directory does not exist: $1" >&2
    exit 1
fi

source_dir="$(cd -- "$1" && pwd -P)"
backup_dir="$HOME/linux-backups"

mkdir -p "$backup_dir"

# Prevent the backup from including itself.
case "$backup_dir/" in
    "$source_dir/"*)
        echo "Error: backup destination is inside the source directory." >&2
        exit 1
        ;;
esac

folder_name="$(basename "$source_dir")"
timestamp="$(date +%Y%m%d_%H%M%S)"
archive="$backup_dir/${folder_name}_${timestamp}.tar.gz"

tar -czf "$archive" -C "$(dirname "$source_dir")" "$folder_name"

echo "Backup created successfully:"
echo "$archive"
