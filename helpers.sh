#!/bin/bash

setup_grape(){
    echo "setting up GIN + Postgre SQL"
    go mod init backend
    go get \
  github.com/gin-gonic/gin \
  gorm.io/gorm \
  github.com/lib/pq \
  github.com/joho/godotenv \
  github.com/gin-contrib/cors \
  github.com/sirupsen/logrus \
  github.com/dgrijalva/jwt-go

  curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/main/Go.gitignore


    mkdir -p internal/config/db/migrations server handler service repository model middleware pkg/logger
    touch .env internal/config/db/postgres.go internal/config/db/migrations/001_init-up.sql server/router.go handler/user_handler.go service/user_service.go repository/user_repository.go model/user.go middleware/auth.go  pkg/logger/logger.go README.md

    cat > .env <<EOL
# Database config
DB_HOST=localhost
DB_PORT=5432
DB_USER=youruser
DB_PASSWORD=yourpassword
DB_NAME=yourdb

# Server config
PORT=8080
EOL

    echo "Work is done!!!"
    echo "Happy Coding!!"
    cd ..
cd ..
BASE_DIR=$(pwd)  
pwd
GRAPESRC="$BASE_DIR/GRAPE/main.go"
GRAPEDEST="$BASE_DIR/$project_name/backend/main.go"
cp "$GRAPESRC" "$GRAPEDEST"

}

setup_pern(){
    echo "setting up Express + Postgre SQL"
    npm init -y
    npm i express pg dotenv cors morgan jsonwebtoken bcrypt nodemon
    npm i -D nodemon
     mkdir -p \
        src \
        src/config \
        src/controllers \
        src/routes \
        src/models \
        src/middleware \
        src/utils

    touch \
        src/index.js \
        src/config/db.js \
        src/controllers/userController.js \
        src/routes/userRoutes.js \
        src/models/userModel.js \
        src/middleware/authMiddleware.js \
        src/utils/validators.js \
        .env \
        .gitignore \
        README.md

}