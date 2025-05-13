-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2020 at 07:39 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `kd_anggota` char(10) NOT NULL,
  `nm_anggota` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tlpn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`kd_anggota`, `nm_anggota`, `alamat`, `tlpn`) VALUES
('A01', 'Ghufron', 'Tuban', '0812345678'),
('B01', 'Bintang', 'Tuban', '0812345678');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kd_buku` char(10) NOT NULL,
  `nm_buku` varchar(30) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`kd_buku`, `nm_buku`, `pengarang`, `penerbit`, `stok`) VALUES
('A11', 'Menjadi Bodo Amat', 'Orgila', 'Pustaka', 6),
('A12', 'Terbenamnya Terbit', 'Ghufron', 'Syca', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `kd_petugas` char(10) NOT NULL,
  `nm_petugas` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `tlpn_petugas` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`kd_petugas`, `nm_petugas`, `jabatan`, `tlpn_petugas`, `email`, `password`) VALUES
('AA0', 'Ghufron Andriansyah', 'Master', '0000000000', 'a@gmail.com', '$2a$10$67HwO2WbUSfk9S3hx7WpK.pTxLrZ52eVXsbXB.pevpU48qpHDGp9u');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `no_pinjam` char(10) NOT NULL,
  `kd_anggota` char(10) NOT NULL,
  `kd_petugas` char(10) NOT NULL,
  `kd_buku` char(10) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_balik` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`no_pinjam`, `kd_anggota`, `kd_petugas`, `kd_buku`, `tgl_pinjam`, `tgl_balik`) VALUES
('A4', 'B01', 'AA1', 'A11', '2020-03-26 23:23:03.437', '2020-04-02 23:23:02.580');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`kd_anggota`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`kd_petugas`);

--
-- Indexes for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`no_pinjam`),
  ADD KEY `kd_anggota` (`kd_anggota`),
  ADD KEY `kd_petugas` (`kd_petugas`),
  ADD KEY `kd_buku` (`kd_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
