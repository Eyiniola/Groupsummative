#!/bin/bash
while true; do
    echo "Welcome to the Bachelor of Software Engineering cohort list application!"
    echo "Please select an option:"
    echo "1. Create a student record"
    echo "2. View all students"
    echo "3. Delete a student record"
    echo "4. Update a student record"
    echo "5. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter student email: " email
            read -p "Enter student age: " age
            read -p "Enter student ID: " student_id
            echo "$email,$age,$student_id" >> students-list_0333.txt
            echo "Student record created successfully!"
            ;;
        2)
            echo "List of all students:"
            cat students-list_0333.txt
            ;;
        3)
            read -p "Enter student ID to delete: " delete_id
            sed -i "/^.*,$delete_id$/d" students-list_0333.txt
            echo "Student record deleted successfully!"
            ;;
        4)
            read -p "Enter student ID to update: " update_id
            read -p "Enter new student email: " new_email
            read -p "Enter new student age: " new_age
            sed -i "/^.*,$update_id$/d" students-list_0333.txt
            echo "$new_email,$new_age,$update_id" >> students-list_0333.txt
            echo "Student record updated successfully!"
            ;;
        5)
            echo "Exiting the application. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
