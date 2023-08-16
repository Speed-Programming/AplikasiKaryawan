-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 11:32 PM
-- Server version: 11.2.0-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `201943501285_absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `karyawan` varchar(50) NOT NULL,
  `status` enum('cuti','izin','alpa','hadir','libur') NOT NULL DEFAULT 'alpa',
  `catatan` varchar(250) DEFAULT NULL,
  `absen_in` bigint(15) DEFAULT NULL,
  `absen_out` bigint(15) DEFAULT NULL,
  `date` bigint(15) NOT NULL,
  `lembur` tinyint(1) NOT NULL DEFAULT 0,
  `terlambat` tinyint(1) NOT NULL DEFAULT 0,
  `confirm` tinyint(1) NOT NULL DEFAULT 0,
  `denda` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_absen`
--

INSERT INTO `tb_absen` (`karyawan`, `status`, `catatan`, `absen_in`, `absen_out`, `date`, `lembur`, `terlambat`, `confirm`, `denda`) VALUES
('admin', 'hadir', '#', 1690998363000, 1690998363000, 1690995600000, 1, 1, 1, 0),
('rizki wahyudi', 'hadir', '#', 1691082000000, 1691082000000, 1691082000000, 1, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`karyawan`,`date`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD CONSTRAINT `tb_absen_ibfk_1` FOREIGN KEY (`karyawan`) REFERENCES `tb_karyawan` (`nama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
