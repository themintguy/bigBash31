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

setup_mern(){
    cd backend
    npm init -y
    npm i express mongoose dotenv cors helmet morgan jsonwebtoken bcrypt cookie-parser
    npm i --save-dev nodemon


mkdir -p \
  src/{config,controllers,domain,models,services,repositories,routes,middlewares,utils} \
  tests

touch \
  src/app.js \
  src/server.js \
  src/config/{env.js,db.js} \
  src/domain/user.js \
  src/models/user.model.js \
  src/controllers/user.controller.js \
  src/services/user.service.js \
  src/repositories/user.repository.js \
  src/routes/user.routes.js \
  src/middlewares/auth.middleware.js \
  src/utils/logger.js \
  tests/user.test.js \
  .env \
  .gitignore \
  README.md \
  package.json


cat <<EOF > .gitignore
# Node.js
node_modules/
.env
dist/
coverage/
npm-debug.log
.DS_Store
EOF

cat <<EOF > README.md

This is the backend for the MERN stack project, structured with clean architecture principles.

## 🔧 Structure

\`\`\`
backend/
├── src/
│   ├── config/        # Env and DB config
│   ├── controllers/   # Route handlers
│   ├── domain/        # Domain models/entities
│   ├── models/        # Mongoose schemas
│   ├── services/      # Business logic
│   ├── repositories/  # Data access (MongoDB)
│   ├── routes/        # API route definitions
│   ├── middlewares/   # Custom middlewares
│   └── utils/         # Utility helpers
├── tests/             # Unit & integration tests
├── .env               # Environment variables
├── .gitignore
├── package.json
├── README.md
└── src/app.js & server.js
\`\`\`

## 🚀 Getting Started

\`\`\`bash
npm i
nodemon filename
\`\`\`



EOF


cat <<EOF > src/server.js
const app = require('./app');
const { connectDB } = require('./config/db');

const PORT = process.env.PORT || 5000;

(async () => {
  try {
    await connectDB();
    app.listen(PORT, () => {
      console.log(\`🚀 Server is running on http://localhost:\${PORT}\`);
    });
  } catch (err) {
    console.error('❌ Failed to start server:', err);
    process.exit(1);
  }
})();
EOF

cat <<EOF > src/app.js
const express = require('express');
const cors = require('cors');
const morgan = require('morgan');

const userRoutes = require('./routes/user.routes');

const app = express();

app.use(cors());
app.use(morgan('dev'));
app.use(express.json());

app.use('/api/users', userRoutes);

module.exports = app;
EOF

echo "✅ Backend structure for MERN created under $PROJECT_NAME/backend"

}



setup_corego(){
    cd backend
    go mod init backend
    mkdir -p \
  cmd/myapp \
  internal/{config,domain,handler,service,repository,middleware,router,db,utils} \
  pkg/validator

touch \
  cmd/myapp/main.go \
  internal/config/config.go \
  internal/domain/user.go \
  internal/handler/user_handler.go \
  internal/service/user_service.go \
  internal/repository/user_repository.go \
  internal/middleware/auth_middleware.go \
  internal/router/router.go \
  internal/db/{migrate.go,postgres.go} \
  internal/utils/logger.go \
  pkg/validator/validator.go \
  go.mod go.sum

cat <<EOF > README.md
# MyApp

A modular Go project structure based on clean architecture principles.

## 📁 Project Structure

\`\`\`
myapp/
├── cmd/
│   └── myapp/
│       └── main.go          # Entry point
├── internal/
│   ├── config/              # Configuration loading (env, yaml, etc.)
│   ├── domain/              # Domain models/entities
│   ├── handler/             # HTTP Handlers
│   ├── service/             # Business logic
│   ├── repository/          # Data access layer
│   ├── middleware/          # HTTP Middlewares
│   ├── router/              # Route definitions
│   ├── db/                  # DB init & migrations
│   └── utils/               # Utility functions
├── pkg/                     # Shared/reusable packages
├── go.mod
├── go.sum
└── README.md
\`\`\`

## 🚀 Getting Started

\`\`\`bash
go mod init github.com/yourusername/myapp
go run ./cmd/myapp
\`\`\`

EOF

cat <<EOF > .gitignore
# Binaries
bin/
*.exe
*.exe~
*.dll
*.so
*.dylib

# Test binary
*.test

# Output of the go coverage tool
*.out

# Dependency directories (optional)
vendor/

# IDE/editor settings
.vscode/
.idea/
*.swp

# Go module cache
go.sum
EOF

echo "✅ Core Go ."

}

