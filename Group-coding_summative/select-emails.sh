#!/bin/bash

awk -F',' '{print $1}' students-list_0333.txt > student-emails.txt
echo "Emails of all students saved in student-emails.txt"
