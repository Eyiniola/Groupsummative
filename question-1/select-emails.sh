#!/bin/bash

# Check if the students-list_0333.txt file exists
if [ -f "students-list_0333.txt" ]; then
    # Extract emails using cut command and save them to student-emails.txt
    cut -d' ' -f1 students-list_0333.txt > student-emails.txt
    echo "Student emails extracted and saved in student-emails.txt."
else
    echo "No student records found."
fi
