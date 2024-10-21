#!/bin/bash

<< readme
This is a script for backup with 5 day rotation

Usage:
./backup.sh <path to your source> <path to backup folder>
readme

function display_usage {
    echo "Usage: ./backup.sh <path to your source> <path to backup folder>"
}

if [ $# -ne 2 ]; then
    display_usage
    exit 1
fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

# Check if source and backup directories exist
if [ ! -d "$source_dir" ]; then
    echo "Error: Source directory $source_dir does not exist."
    exit 1
fi

if [ ! -d "$backup_dir" ]; then
    echo "Error: Backup directory $backup_dir does not exist."
    exit 1
fi

# Create a backup
function create_backup {
    zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null
    if [ $? -eq 0 ]; then
        echo "Backup generated successfully for ${timestamp}"
    else
        echo "Error: Failed to create backup."
        exit 1
    fi
}

# Perform backup rotation (keeping only the 5 most recent backups)
function perform_rotation {
    backups=($(ls -t "${backup_dir}/backup_*.zip" 2>/dev/null))
    echo "Backups: ${backups[@]}"
    
    if [ ${#backups[@]} -gt 5 ]; then
        for ((i=5; i<${#backups[@]}; i++)); do
            rm -f "${backups[$i]}"
            echo "Deleted old backup: ${backups[$i]}"
        done
    fi
}

create_backup
perform_rotation

