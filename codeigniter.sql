-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2019 at 05:44 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `ID` int(10) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `NPM` varchar(50) NOT NULL,
  `FAKULTAS` varchar(50) NOT NULL,
  `PRODI` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`ID`, `NAMA`, `NPM`, `FAKULTAS`, `PRODI`) VALUES
(1, 'Jacob', '8899', 'Teknologi Industri', 'Teknik Sipil'),
(2, 'Rian', '8888', 'Fisip', 'Ilmu Komunikasi'),
(3, 'Hero', '7777', 'Ekonomi', 'Ekonomi Pembangunan'),
(4, 'Rahel', '9898', 'Teknologi Industri', 'Teknik Industri'),
(5, 'Albertus Khrisna B P', '9535', 'Teknologi Industri', 'Teknik Informatika'),
(6, 'Al', '9535', 'Teknologi Industri', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `ID` int(10) NOT NULL,
  `KODE_MATKUL` varchar(120) NOT NULL,
  `NAMA_MATKUL` varchar(120) NOT NULL,
  `KELAS` varchar(120) NOT NULL,
  `NAMA_DOSEN` varchar(120) NOT NULL,
  `RUANGAN` varchar(120) NOT NULL,
  `HARI` varchar(120) NOT NULL,
  `SESI` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`ID`, `KODE_MATKUL`, `NAMA_MATKUL`, `KELAS`, `NAMA_DOSEN`, `RUANGAN`, `HARI`, `SESI`) VALUES
(1, 'INF3053', 'Pengembangan Berbasis Platform', 'A', 'Joseph Eric Samodra, S.Kom., MIT', 'Lab Perangkat Keras MAC', 'Senin', 2),
(2, 'INF2953', 'Pengembangan Aplikasi Web', 'A', 'Th. Adi Purnomo Sidhi, ST., MT', '3421', 'Selasa', 1),
(3, 'INF2653', 'Manajemen Projek Perangkat Lunak', 'C', 'Paulus Mudjihartono, ST.,MT.', '3318 TF', 'Rabu', 3),
(4, 'INF3253', 'Administrasi Basis Data', 'D', 'Findra Kartika Sari Dewi, S.T., M.M., M.T.', 'Lab. Komputasi Dasar Selatan', 'Kamis', 1),
(5, 'INF3153', 'Pengujian Perangkat Lunak', 'A', 'Stephanie Pamela Adithama, S.T., M.T.', '3327 TF', 'Kamis', 2),
(6, 'INF3763', 'Sosio Informatika', 'A', 'Bekti Tandaningtyas Sundoro, S.Pd., M.Pd', '3315 TF', 'Kamis', 3),
(7, 'INF2753', 'Interaksi Manusia dan Komputer', 'A', 'Joanna Ardhyanti Mita N, S.Kom., M.Kom', '3415 TF', 'Jumat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `api_token` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `api_token`) VALUES
(1, 'backspace', 'backspace@email.com', '$2y$10$0Ij/xV.2j3TqXY/7WyjtVuj3tZdR5NmvNowoWk4yOp3FamZIHosLu', '5da00c89d7fa3b2c2f38f6b0c583b4094f796ad5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
