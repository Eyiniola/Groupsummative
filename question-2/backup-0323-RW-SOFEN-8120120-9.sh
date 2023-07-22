#!/bin/bash
# Creates shell script to back up the directory in part a
host="a0dfc11ba139.a982e858.alu-cod.online"
user="a0dfc11ba139"
password="899c79fc532cd0591af1"
source_directory="0323-RW-SOFEN-8120120-9_q1"
backup_location="/home/sftp-student/03033/summative"
sshpass -p $password scp -r "$source_directory" $user@$host:$backup_location

username="a0dfc11ba139"
password="899c79fc532cd0591af1"
remote_host="a0dfc11ba139.a982e858.alu-cod.online"
remote_directory="/home/sftp-student/03033/summative"

cd "$source_directory" || exit 1
directory_name=$(basename "$source_directory")
archive_name="backup-$directory_name.tar.gz"
tar -czf "$archive_name" "$directory_name"

sshpass -p "$password" scp "$archive_name" "$username@$remote_host:$remote_directory"
