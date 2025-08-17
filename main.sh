#!/bin/bash

source ./helpers.sh

set -e

NAME="WELCOME TO BIGBASH31"

rows=$(tput lines)
cols=$(tput cols)

text_length=${#NAME}
row=$((rows / 2))
col=$(((cols - text_length) / 2))

tput setaf 2 
tput cup $row $col
echo "$NAME"

tput sgr0


read -p "Enter the name of the Project : " project_name

if [ -z "$project_name" ]; then
   echo "Project name can't be empty. Exiting. "
   exit 1
fi

cd ..
mkdir -p "$project_name"/{frontend,backend}
cd "$project_name"
touch README.md .gitignore

prompt_for_frontend() {
    echo "$(tput setaf 6)Choose a Frontend tech stack:$(tput sgr0)"
    echo "$(tput setaf 2)1) React + TypeScript$(tput sgr0)"
    echo "$(tput setaf 3)2) React + JavaScript$(tput sgr0)"
    echo "$(tput setaf 4)3) Vue.js$(tput sgr0)"
    echo "$(tput setaf 5)4) Next.js$(tput sgr0)"

    while true; do
        read -p "$(tput setaf 6)Enter your choice (1-4): $(tput sgr0)" choice
        case $choice in
        1)
            setup_react_ts
            return
            ;;
        2)
            setup_react_js
            return
            ;;
        3)
            setup_vue_js
            return
            ;;
        4)
            setup_next_js
            return
            ;;
        *)
            echo "$(tput setaf 1)Invalid choice. Please enter a number between 1 and 4.$(tput sgr0)"
            ;;
        esac
    done
}

prompt_for_frontend

prompt_for_backend(){
   echo "$(tput setaf 6)Choose a Backend Tech Stack : $(tput sgr0)"
   echo "$(tput setaf 8) 1) Express + MongoDB )"
   echo "$(tput setaf 5) 2) Fast API + PostgreSQL )"
   echo "$(tput setaf 9) 3) Express + PostgreSQL )"
   echo "$(tput setaf 4) 4) Core Go + PostgreSQL )"


   while true; do
       read -p "$(tput setaf 6)Enter your choice (1-4): $(tput sgr0)" choice
       
       case $choice in
       1)
         setup_mern
         return
         ;;
      2)
        setup_fast
        return
        ;;
      3)
        setup_pern
        return
        ;;
      4)
        setup_corego
        return
        ;;

     *)
        echo "$(tput setaf 1)Invalid choice. Please enter a number between 1 and 3.$(tput sgr0)"
          ;;
        esac
    done
}


prompt_for_backend






