#!/bin/bash
set -e



setup_react_ts(){
    cd frontend
    npm create vite@latest . -- --template react-ts
    mkdir styles pages layouts context hooks libs utils components data fonts auth
    npm install tailwindcss @tailwindcss/vite axios react-icons react-router-dom framer-motion clsx
    npm i
    tput setaf 2 
    echo "✅ React + TypeScript frontend setup complete"
    tput sgr0
    cd ..
}

setup_react_js(){
    cd frontend
    npm create vite@latest . -- --template react
    mkdir styles pages layouts context hooks libs utils components data fonts auth
    npm install tailwindcss @tailwindcss/vite axios react-icons react-router-dom framer-motion clsx
    npm i
    tput setaf 2
    echo "✅ React + JavaScript frontend setup complete"
    tput sgr0
    cd ..
}
setup_vue_js(){
    cd frontend
    npm create vite@latest . -- --template vue
    mkdir -p src/{components,pages,layouts,store,composables,styles,assets,utils,plugins,router,fonts,data}
    npm i tailwindcss @tailwindcss/vite axios vue-router@4 clsx
    npm i
    tput setaf 2
    echo npm "✅ Vue.js frontend setup complete"
    tput sgr0
    cd ..
}

setup_next_js(){
    cd frontend
    npx create-next-app@latest .
    npm i  axios react-icons framer-motion clsx
    npm i
    tput setaf 2
    echo "✅ Next.js frontend setup complete"
    tput sgr0
    cd ..
}


setup_backend() {
    local choice="$1"
    cd backend

    case "$choice" in
        pern)
            echo "Setting up PERN stack..."
            npm init -y
            npm install express pg dotenv
            mkdir -p src/{config,controllers,routes,models,middleware,utils}
            touch src/{index.js,config/db.js,routes/users.js}
            echo "PERN stack backend setup complete."
            ;;
        grape)
            echo "Setting up Gin + PostgreSQL..."
            go mod init backend
            go get github.com/gin-gonic/gin gorm.io/gorm github.com/lib/pq
            mkdir -p internal/{models,services,controllers}
            touch main.go .env
            echo "Gin + PostgreSQL backend setup complete."
            ;;
        mern)
            echo "Setting up MERN stack..."
            npm init -y
            npm install express mongoose dotenv
            mkdir -p src/{config,controllers,routes,models,middleware,utils}
            touch src/{index.js,config/db.js,routes/users.js}
            echo "MERN stack backend setup complete."
            ;;
        core)
            echo "Setting up Core Go + PostgreSQL..."
            go mod init backend
            go get gorm.io/gorm github.com/lib/pq
            mkdir -p internal/{models,services,controllers}
            touch main.go .env
            echo "Core Go + PostgreSQL backend setup complete."
            ;;
    esac
    cd ..
}