

# bigBash31 — Automatic Project Bootstrap Script

**bigBash31** is a powerful Bash script designed to help developers **automatically generate all necessary folders and files for both frontend and backend projects**, across multiple backend tech stacks. Save time, enforce consistent structures, and jumpstart your projects with ease.

---

## 🚀 Supported Tech Stacks & Database

Currently, **bigBash31** supports automating setup for these popular backend frameworks, with PostgreSQL as the default database for all:

| Technology  | Status        | Notes                                                                                      |
|-------------|---------------|--------------------------------------------------------------------------------------------|
| Spring Boot | Planned       | Java-based REST APIs                                                                       |
| Express.js  | Implemented   | Node.js backend framework                                                                  |
| Django      | Planned       | Python web framework                                                                       |
| FastAPI     | Planned       | Modern Python API framework                                                                |
| Go          | Implemented   | Efficient backend service; automatically installs key packages (see below)                  |
| Rust        | Planned       | Performance & safety focused                                                               |
| Others      | Upcoming      | More stacks to come soon                                                                   |

### Go Package Installation

For Go projects, **bigBash31** automatically installs the following essential packages via `go get`:



These libraries cover:

* HTTP routing & middleware (Gin)
* ORM for PostgreSQL (GORM)
* PostgreSQL driver (`lib/pq`)
* Environment variable management (`godotenv`)
* CORS middleware
* Structured logging (`logrus`)
* JWT authentication

---

## 🆘 About

This repository contains:

* `main.sh` — Core automation script to scaffold **both frontend and backend folders and files**.
* `helpers.sh` — Utility functions to organize reusable tasks.
* `practice.sh` — Experimental playground for custom workflows.
* `README.md` — Documentation and usage instructions.

([View on GitHub](https://github.com/themintguy/bigBash31))

---

## Getting Started

### Clone the Repo

```bash
git clone https://github.com/themintguy/bigBash31.git
cd bigBash31
```

### Make the Script Executable

```bash
chmod +x main.sh
```

### Run It

```bash
./main.sh
```

*(Optional: pass flags to customize setup — see script comments for details.)*

---




## Author

**Kranthi Kumar Banda**

GitHub: [@themintguy](https://github.com/themintguy)

---

## Contribution & License

Contributions welcome! Please open issues or submit PRs. Licensed under MIT.


---


