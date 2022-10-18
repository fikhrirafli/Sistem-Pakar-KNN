-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 12:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_knn`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diagnosa`
--

CREATE TABLE `tbl_diagnosa` (
  `kode_diagnosa` int(5) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `umur` int(5) NOT NULL,
  `kode_gejala` varchar(50) NOT NULL,
  `hasil` varchar(50) NOT NULL,
  `solusi` varchar(255) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_diagnosa`
--

INSERT INTO `tbl_diagnosa` (`kode_diagnosa`, `tanggal`, `nama`, `jenis_kelamin`, `umur`, `kode_gejala`, `hasil`, `solusi`, `telp`) VALUES
(1, '2022-09-02', 'fikri', 'Laki - Laki', 324, 'K12,K13,K14,', ' Berminyak', ' Gunakan produk skincare yang tidak mengandung minyak. Memilih skincare bertekstur gel. Gunakan skincare dengan \r\nkandungan Hyaluronic Acid, dan niacinamide. Gunakan sunscreen atau tabir surya                                             ', '081313131313'),
(3, '2022-09-05', 'FA', 'Perempuan', 2, 'K2,K7,K17,', ' Kombinasi', ' Gunakan skincare dengan kandungan Salicylic Acid, Hyaluronic Acid, glycolic Acid, Lactic Acid, dan antioksidan. Gunakan pelembab. Gunakan sheet mask seminggu sekali. Gunakan sunscreen atau tabir surya ', '0815'),
(4, '2022-09-14', 'Gggg', 'Perempuan', 5, 'K1,K2,K6,K8,K9,K15,', ' Normal', ' Gunakan pelembab. Gunakan sunscreen atau tabir surya. Gunakan scrub dan sheet mask seminggu sekali             ', '0815');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `no` int(5) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` varchar(65) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`no`, `kode_gejala`, `nama_gejala`, `bobot`) VALUES
(1, 'K1', 'Pori-Pori Kecil', 5),
(2, 'K2', 'Tidak sensitif', 5),
(3, 'K3', 'Tidak ada bercak di wajah', 4.2),
(4, 'K4', 'Warna kulit merata', 3.4),
(5, 'K5', 'Kulit kusam', 5),
(6, 'K6', 'Gatal', 4.2),
(7, 'K7', 'Mudah Mengelupas', 3.4),
(8, 'K8', 'Kulit terasa kencang', 4.2),
(9, 'K9', 'Garis Halus', 3.4),
(10, 'K10', 'Pori - pori besar', 4.2),
(11, 'K11', 'Komedo', 3.4),
(12, 'K12', 'Berjerawat', 3.4),
(13, 'K13', 'Permukaan kulit berminyak', 5),
(14, 'K14', 'Mudah memerah', 5),
(15, 'K15', 'Muncul Sensasi Panas', 4.2),
(16, 'K16', 'Terasa kering', 2.6),
(17, 'K17', 'Berminyak di dahi, hidung, dagu', 5),
(18, 'K18', 'Kering didaerah mata dan mulut', 4.2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jeniskulit`
--

CREATE TABLE `tbl_jeniskulit` (
  `no` int(5) NOT NULL,
  `kode_jeniskulit` varchar(5) NOT NULL,
  `nama_jeniskulit` varchar(15) NOT NULL,
  `solusi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jeniskulit`
--

INSERT INTO `tbl_jeniskulit` (`no`, `kode_jeniskulit`, `nama_jeniskulit`, `solusi`) VALUES
(3, 'P3', 'Berminyak', 'Gunakan produk skincare yang tidak mengandung minyak. Memilih skincare bertekstur gel. Gunakan skincare dengan \r\nkandungan Hyaluronic Acid, dan niacinamide. Gunakan sunscreen atau tabir surya                                             '),
(4, 'P4', 'Sensitif', 'Hindari skincare mengandung alkohol. Hindari skincare dengan bahan tambahan wewangian atau parfum. Gunakan produk yang mengandung aloevera, Gunakan sunscreen atau tabir surya '),
(5, 'P5', 'Kombinasi ', 'Gunakan skincare dengan kandungan Salicylic Acid, Hyaluronic Acid, glycolic Acid, Lactic Acid, dan antioksidan. Gunakan pelembab. Gunakan sheet mask seminggu sekali. Gunakan sunscreen atau tabir surya '),
(7, 'P1', 'Normal', 'Gunakan pelembab. Gunakan sunscreen atau tabir surya. Gunakan scrub dan sheet mask seminggu sekali             '),
(8, 'P2', 'Kering', 'Gunakan skincare dengan tekstur krim atau balm. Hindari kandungan AHA, BHA, dan alkohol. Gunakan sunscreen atau tabir surya. Gunakan skincare dengan kandungan Lactic Acid, Shea Butter, dan aloevera. Gunakan hydrating toner, essence, serum, dan pelembab ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengetahuan`
--

CREATE TABLE `tbl_pengetahuan` (
  `no` int(5) NOT NULL,
  `kode_rule` varchar(5) NOT NULL,
  `kode_gejala` varchar(50) NOT NULL,
  `diagnosa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengetahuan`
--

INSERT INTO `tbl_pengetahuan` (`no`, `kode_rule`, `kode_gejala`, `diagnosa`) VALUES
(1, 'D19', 'K5,K6,K8,K9', 'Kering'),
(2, 'D04', 'K6,K14,K15', 'Sensitif'),
(3, 'D24', 'K1,K2,K4', 'Normal'),
(4, 'D11', 'K10,K11,K12,K13', 'Berminyak'),
(5, 'D92', 'K10,K17,K18', 'Kombinasi'),
(6, 'D06', 'K11,K12', 'Berminyak'),
(7, 'D49', 'K5,K6,K11', 'Kering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_diagnosa`
--
ALTER TABLE `tbl_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_jeniskulit`
--
ALTER TABLE `tbl_jeniskulit`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_diagnosa`
--
ALTER TABLE `tbl_diagnosa`
  MODIFY `kode_diagnosa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_jeniskulit`
--
ALTER TABLE `tbl_jeniskulit`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
