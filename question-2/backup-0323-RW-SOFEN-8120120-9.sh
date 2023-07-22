#!/usr/bin/env bash
# Backup the target directory to a remote server computer
remote_server="a0dfc11ba139.a982e858.alu-cod.online"
remote_username="a0dfc11ba139"
remote_password="899c79fc532cd0591af1"
remote_directory="/home/sftp-student/03033/summative"
target_directory="question-1"

# Use scp to copy the target directory to the remote server
scp -r "$target_directory" "$remote_username@$remote_server:$remote_directory"

echo "Backup of $target_directory created on $remote_serve."
