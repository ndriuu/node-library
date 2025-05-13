const { createPool } = require('mysql2'); // ✅ sudah pakai mysql2

const db = createPool({
    port: process.env.DB_PORT,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.MYSQL_DB,
    connectionLimit: 10
});

module.exports = db;
