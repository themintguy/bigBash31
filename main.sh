#!/bin/bash

source ./helpers.sh


set -e

read -p "Enter the name for your Project : " project_name

if [ -z "$project_name" ]; then
    echo "Project name can't be empty. Exiting."
    exit 1
fi

if [ -d "$project_name" ]; then
     echo "Error: Directory '$project_name' already exists. Exiting."
     # Exit here if directory already exists
     exit 1
fi
# Folder will be created one folder back (go up one level)
cd ..
mkdir "$project_name"
cd "$project_name"

mkdir frontend backend 
touch readme.md .gitignore

echo "Directory structure for '$project_name' created sucessfully."
echo "Root : $(pwd)"
echo " - backend/"
echo " - frontend/"
echo "choose frontend tech stacks (Next.js will provided soon)"

cd frontend
npm create vite@latest ./
npm i
npm i tailwindcss @tailwindcss/vite axios react-icons react-router-dom framer-motion clsx
read -p "Enter any additional NPM packages to install (or leave blank): " extra_packages

if [ -n "$extra_packages" ]; then
  echo "Installing : $extra_packages"
  npm i $extra_packages
else
  echo "skipping extra packages"
fi

mkdir styles pages layouts context hooks libs utils components data fonts auth
echo "Inside of : $(pwd)"
echo "React  is Installed && dont forget to setup Tailwind in config!!!"
cd ..
cd backend 



prompt_for_stack_choice() {
    echo "Choose a tech stack:"
    echo "1) Express + PostgreSQL "
    echo "2) GIN + PostgreSQL"
    
    while true; do
        read -p "Enter your choice (1, 2, or 3): " choice
        case $choice in
        1)
          setup_pern
          return
          ;;
        2)
          setup_grape
          return
          ;;
        *)
          echo "Invalid choice "
        esac
    done
}

prompt_for_stack_choice
# cd ..
# cd ..
# BASE_DIR=$(pwd)  
# pwd
# GRAPESRC="$BASE_DIR/GRAPE/main.go"
# GRAPEDEST="$BASE_DIR/$project_name/backend/main.go"
# cp "$GRAPESRC" "$GRAPEDEST"






# npm init -y
# npm i pg express dotenv
# mkdir src 
# mkdir config controllers routes models middlewares services utils 
# touch main.go .env
# go mod init backend
# cd ..
# cd ..
# pwd
# BASE_DIR=$(pwd)  
# GRAPESRC="$BASE_DIR/GRAPE/main.go"
# GRAPEDEST="$BASE_DIR/$project_name/backend/main.go"
# cp "$GRAPESRC" "$GRAPEDEST"

# cd ..
# touch index.js .env .gitignore README.md
# cd ..
# BASE_DIR=$(pwd)  
# PERNSRC="$BASE_DIR/PERN/index.js"
# PERNDEST="$BASE_DIR/$project_name/backend/src/index.js"
# cp "$PERNSRC" "$PERNDEST"
# echo "Its working!!!"
