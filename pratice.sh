#!/bin/bash

# Exit the script immediately if a command returns a non-zero status
set -e

# --- 1. Define Functions ---

# Function to display the menu and get a valid choice
prompt_for_stack_choice() {
    echo "Choose a tech stack:"
    echo "1) PERN (PostgreSQL, Express, React, Node.js)"
    echo "2) MERN (MongoDB, Express, React, Node.js)"
    echo "3) MEVN (MongoDB, Express, Vue, Node.js)"
    
    while true; do
        read -p "Enter your choice (1, 2, or 3): " choice
        case $choice in
            1|2|3)
                echo $choice
                return
                ;;
            *)
                echo "Invalid choice. Please enter 1, 2, or 3."
                ;;
        esac
    done
}


