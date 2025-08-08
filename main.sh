#!/bin/bash

set -e

read -p "Enter the name for your Project : " project_name

if [ -z "$project_name" ]; then
    echo "Project name can't be empty. Exiting."
    exit 1
fi

if [ -d "$project_name "]; then
     echo "Error: Directory '$project_name' already exits. Existing."
fi

mkdir "$project_name"
cd "$project_name"

mkdir frontend backend 
touch readme.md .gitignore

echo "Directory structure for '$project_name' created sucessfully."
echo "Root : $(pwd)"
echo " - backend/"
echo " - frontend/"

cd frontend
npm create vite@latest ./
npm i
npm i tailwindcss @tailwindcss/vite axios react-icons react-router-dom framer-motion clsx
read -p "Enter any additional NPM packages to install (or leave blank): " extra_packages

if [ -n "$extra_packges" ]; then
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
npm init -y
npm i pg express dotenv
mkdir src 
mkdir config controllers routes models middlewares services utils 
cd ..
touch index.js .env .gitignore README.md
cd ..
BASE_DIR=$(pwd)  
PERNSRC="$BASE_DIR/PERN/index.js"
PERNDEST="$BASE_DIR/$project_name/backend/src/index.js"
cp "$PERNSRC" "$PERNDEST"
echo "Its working!!!"
