
# bigBash

![Bash](https://img.shields.io/badge/Shell-Bash-blue?logo=gnu-bash)
![Frontend](https://img.shields.io/badge/Frontend-React%20%7C%20Vue%20%7C%20Next.js-green)
![Backend](https://img.shields.io/badge/Backend-Express%20%7C%20Go%20%7C%20FastAPI-orange)
![Database](https://img.shields.io/badge/Database-MongoDB%20%7C%20Postgres-lightgrey)
![License](https://img.shields.io/badge/License-MIT-yellow)

**bigBash** is a developer productivity tool designed to automate the initial setup of full-stack applications. It generates well-structured frontend and backend folders, installs dependencies, and creates boilerplate files — saving hours of manual setup.

---

## 🚀 Introduction

Setting up a full-stack application often requires repetitive manual work like creating project directories, installing dependencies, and configuring boilerplate files. **bigBash** automates this process, giving developers a ready-to-code environment in seconds.

---

## ✨ Features

* Generates **frontend** and **backend** folder structures
* Installs required dependencies automatically
* Creates boilerplate configuration and code files
* Supports multiple **frontend frameworks**:

  * React (JavaScript / TypeScript)
  * Vue.js
  * Next.js
* Supports multiple **backend stacks**:

  * Express + MongoDB
  * Express + PostgreSQL
  * Core Go + PostgreSQL
  * FastAPI + PostgreSQL
* Allows **customization** for frameworks, libraries, and databases
* Saves hours of manual setup work

---

## 🛠️ Installation

Clone the repository:

```bash
git clone https://github.com/themintguy/bigBash31.git
cd bigBash31
```

---

## ▶️ Usage

Run the main script:

```bash
bash main.sh
```

This will start the interactive setup and generate the project structure automatically.

---

## ⚙️ Configuration

During setup, you can choose:

* **Frontend framework**: React (JS/TS), Vue.js, or Next.js
* **Backend framework**: Express, Go, or FastAPI
* **Database**: MongoDB or PostgreSQL
* Whether to auto-install dependencies

---

## 📦 Dependencies

* **Bash** (required to run the script)
* **Node.js** (for frontend frameworks and Express)
* **Go** (for Core Go backend option)
* **Python** (for FastAPI backend option)
* **MongoDB / PostgreSQL** (depending on chosen backend)

---

## 📚 Packages

### **Frontend Packages**

#### React (JavaScript & TypeScript)

* [Vite](https://vitejs.dev/) (bundler)
* [Tailwind CSS](https://tailwindcss.com/) + `@tailwindcss/vite`
* [Axios](https://axios-http.com/) (HTTP client)
* [React Icons](https://react-icons.github.io/react-icons/)
* [React Router DOM](https://reactrouter.com/)
* [Framer Motion](https://www.framer.com/motion/) (animations)
* [clsx](https://github.com/lukeed/clsx) (utility for conditional classes)

#### Vue.js

* [Vite](https://vitejs.dev/) (bundler)
* [Tailwind CSS](https://tailwindcss.com/) + `@tailwindcss/vite`
* [Axios](https://axios-http.com/)
* [Vue Router v4](https://router.vuejs.org/)
* [clsx](https://github.com/lukeed/clsx)

#### Next.js

* [Next.js](https://nextjs.org/) (framework)
* [Axios](https://axios-http.com/)
* [React Icons](https://react-icons.github.io/react-icons/)
* [Framer Motion](https://www.framer.com/motion/)
* [clsx](https://github.com/lukeed/clsx)

---

## 💡 Examples

Example usage to set up a new project:

```bash
bash main.sh
```

*Output:*

```
✔ Frontend: React (TypeScript) setup complete
✔ Backend: Express + PostgreSQL setup complete
✔ Dependencies installed
✔ Boilerplate files generated
Your project is ready!
```

---

## 🐞 Troubleshooting

* Ensure you are running on a system with **Bash** installed.
* Check you have **internet access** for dependency installation.
* If permission issues occur, try running with:

```bash
chmod +x main.sh
./main.sh
```

---



## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

