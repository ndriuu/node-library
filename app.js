require('dotenv').config();
const express = require('express');
const cors = require('cors'); // ✅ Tambahkan ini

const app = express();

// ✅ Middleware
app.use(cors()); // Izinkan akses dari frontend (misal: login_test.html)
app.use(express.json());

// ✅ Routes
const anggotaRouter = require("./api/anggota/anggota.router");
const petugasRouter = require("./api/petugas/petugas.router");
const pinjamRouter = require("./api/pinjam/pinjam.router");
const bukuRouter = require("./api/buku/buku.route");

app.use("/api/anggota", anggotaRouter);
app.use("/api/petugas", petugasRouter);
app.use("/api/pinjam", pinjamRouter);
app.use("/api/buku", bukuRouter); // 🔧 ganti endpoint supaya tidak tumpuk

// ✅ Root Endpoint
app.get("/", (req, res) => {
  res.send("Selamat datang di Node Library API 📚");
});

// ✅ Jalankan Server
const PORT = process.env.APP_PORT || 3000;
app.listen(PORT, () => {
  console.log("Tersambung di PORT : " + PORT);
});
