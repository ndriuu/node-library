# 📚 Node Library API

A simple backend API for a library management system, built using Node.js, Express, and MySQL. It includes features for user authentication, book and member management, and book lending functionality.

---

## 🚀 Features

* 🧑‍💼 Petugas (Staff) Registration and Login (JWT authentication)
* 📖 CRUD for Books
* 👤 CRUD for Members
* ↻ Borrowing and Returning Books
* 🔐 Protected Endpoints via Token
* ⚖️ Modular REST API structure

---

## 🧰 Tech Stack

* Node.js + Express
* MySQL (with mysql2)
* JWT for authentication
* bcryptjs for password hashing
* dotenv for environment config
* CORS enabled

---

## ⚙️ Setup & Installation

### 1. Clone the Repository

```bash
git clone https://github.com/username/node-library.git
cd node-library
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Create `.env` File

```env
APP_PORT=3000
DB_HOST=localhost
DB_USER=YOUR_USER
DB_PASS=YOUR_PASS
DB_PORT=3306
MYSQL_DB=tes_perpus
```

### 4. Import the Database

Use MySQL Workbench or phpMyAdmin to import the provided SQL dump or manually create these tables:

* `tb_petugas`
* `tb_buku`
* `tb_anggota`
* `tb_pinjam`

---

## ▶️ Running the Server

```bash
node app.js
```

The server runs at:

```
http://localhost:3000
```

---

## 🔑 Authentication (JWT)

After login, a token is returned:

```json
{
  "token": "eyJhbGciOiJIUzI1NiIs..."
}
```

Use this token in headers:

```
Authorization: Bearer <token>
```

---

## 🔢 Example Endpoints

### Register Petugas

```
POST /api/petugas
```

### Login

```
POST /api/petugas/login
```

### Get Books (auth required)

```
GET /api/buku
```

---

## 📁 Project Structure

```
├── api/
│   ├── buku/
│   ├── anggota/
│   ├── petugas/
│   └── pinjam/
├── config/
│   └── database.js
├── .env
├── app.js
├── package.json
```

---

## 👨‍💻 Author

> Ghufron Andriansyah
> Made for learning and backend API development using Node.js

---

## 📌 Notes

* No frontend UI included
* JWT token expires in 1 hour
* Passwords are securely hashed using bcryptjs
