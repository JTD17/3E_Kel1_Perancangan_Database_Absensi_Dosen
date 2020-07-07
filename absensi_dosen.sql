-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 10:19 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_dosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `nip_dosen` varchar(12) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `tanggal_absensi` date NOT NULL,
  `kode_dosen` varchar(3) NOT NULL,
  `kode_matkul` varchar(3) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jam_mengajar` varchar(7) NOT NULL,
  `kode_ruang` varchar(4) NOT NULL,
  `hari_mengajar` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`nip_dosen`, `nama_dosen`, `tanggal_absensi`, `kode_dosen`, `kode_matkul`, `kelas`, `jam_mengajar`, `kode_ruang`, `hari_mengajar`) VALUES
('271015171199', 'M Firdig Hidayat A', '2020-04-28', '01', '003', 'JTD3E', '1 - 4', '0003', 'Selasa'),
('281161812201', 'Rafidatus Sabrina', '2020-04-27', '02', '001', 'JTD3E', '1 - 4', '0003', 'Senin'),
('291271912206', 'Suta Ramadhan', '2020-04-27', '03', '002', 'JTD3E', '5 - 8', '0006', 'Senin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nip_dosen` varchar(12) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat_dosen` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(12) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`nip_dosen`, `nama_dosen`, `alamat_dosen`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`) VALUES
('271015171199', 'M Firdig Hidayat A', 'Jl Danuri Gg Cut Nyak Dien No 73', 'Laki-laki', 'Malang', '1999-11-17'),
('281161812201', 'Rafidatus Sabrina', 'Jl Raya Tumapel No 38', 'Perempuan', 'Malang', '1999-07-20'),
('291271912206', 'Suta Ramadhan', 'Jl KH Agus Salim Gg VIII No 32 A', 'Laki-laki', 'Kediri', '1997-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal_mengajar`
--

CREATE TABLE `tb_jadwal_mengajar` (
  `kode_dosen` varchar(2) NOT NULL,
  `kode_matkul` varchar(3) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `hari_mengajar` varchar(8) NOT NULL,
  `jam_mengajar` varchar(7) NOT NULL,
  `kode_ruang` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jadwal_mengajar`
--

INSERT INTO `tb_jadwal_mengajar` (`kode_dosen`, `kode_matkul`, `kelas`, `hari_mengajar`, `jam_mengajar`, `kode_ruang`) VALUES
('02', '001', 'JTD3E', 'Senin', '1 - 4', '0003'),
('03', '002', 'JTD3E', 'Senin', '5 - 8', '0006'),
('01', '003', 'JTD3E', 'Selasa', '1 - 4', '0003'),
('02', '004', 'JTD3E', 'Selasa', '5 - 8', '0001'),
('03', '005', 'JTD3E', 'Selasa', '10 - 11', '0002'),
('01', '006', 'JTD3E', 'Rabu', '1 - 3', '0007'),
('02', '007', 'JTD3E', 'Rabu', '5 - 8', '0005'),
('02', '008', 'JTD3E', 'Kamis', '1 - 4', '0008'),
('03', '009', 'JTD3E', 'Kamis', '7 - 9', '0004'),
('01', '010', 'JTD3E', 'Jumat', '1 - 4', '0009'),
('01', '011', 'JTD3E', 'Jumat', '8 - 10', '0001');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kode_dosen`
--

CREATE TABLE `tb_kode_dosen` (
  `kode_dosen` varchar(3) NOT NULL,
  `nip_dosen` varchar(12) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kode_dosen`
--

INSERT INTO `tb_kode_dosen` (`kode_dosen`, `nip_dosen`, `nama_dosen`) VALUES
('01', '271015171199', 'M Firdig Hidayat A'),
('02', '281161812201', 'Rafidatus Sabrina'),
('03', '291271912206', 'Suta Ramadhan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kode_ruang`
--

CREATE TABLE `tb_kode_ruang` (
  `kode_ruang` varchar(4) NOT NULL,
  `nama_ruang` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kode_ruang`
--

INSERT INTO `tb_kode_ruang` (`kode_ruang`, `nama_ruang`) VALUES
('0001', 'LAB.AH.1.2A'),
('0002', 'LAB.AH.1.2B'),
('0003', 'LAB.AH.8'),
('0004', 'LAB.AH.9'),
('0005', 'LAB.AH.10'),
('0006', 'LAB.AH.11'),
('0007', 'LAB.AI.6'),
('0008', 'LAB.KOM.AL.2'),
('0009', 'LAB.KOM.AL.3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `nip_dosen` varchar(12) NOT NULL,
  `id_login` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`nip_dosen`, `id_login`, `password`) VALUES
('271015171199', 'Alfa', 'AAAA'),
('281161812201', 'Fida', 'BBBB'),
('291271912206', 'Suta', 'CCCC');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `kode_matkul` varchar(3) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`kode_matkul`, `nama_matkul`) VALUES
('001', 'Praktikum Sistem Komunikasi Seluler'),
('002', 'Pemrograman Aplikasi Mobile'),
('003', 'Pengolahan Citra Digital + Lab'),
('004', 'Jaringan Telekomunikasi II'),
('005', 'Manajemen Proyek'),
('006', 'Praktikum Antena'),
('007', 'Sistem Komunikasi Fiber Optik + Lab'),
('008', 'Pemrograman Basis Data'),
('009', 'Praktikum Pemrograman Sinyal Digital'),
('010', 'Sistem Keamanan Jaringan + Lab'),
('011', 'Kecerdasan Buatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD UNIQUE KEY `nip_dosen` (`nip_dosen`),
  ADD UNIQUE KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `kode_dosen` (`kode_dosen`),
  ADD KEY `kode_ruangan` (`kode_ruang`);

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`nip_dosen`);

--
-- Indexes for table `tb_jadwal_mengajar`
--
ALTER TABLE `tb_jadwal_mengajar`
  ADD UNIQUE KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `kode_ruang` (`kode_ruang`),
  ADD KEY `kode_dosen` (`kode_dosen`);

--
-- Indexes for table `tb_kode_dosen`
--
ALTER TABLE `tb_kode_dosen`
  ADD PRIMARY KEY (`kode_dosen`),
  ADD UNIQUE KEY `nip_dosen` (`nip_dosen`);

--
-- Indexes for table `tb_kode_ruang`
--
ALTER TABLE `tb_kode_ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD UNIQUE KEY `nip_dosen` (`nip_dosen`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD CONSTRAINT `tb_absensi_ibfk_1` FOREIGN KEY (`nip_dosen`) REFERENCES `tb_dosen` (`nip_dosen`),
  ADD CONSTRAINT `tb_absensi_ibfk_2` FOREIGN KEY (`kode_dosen`) REFERENCES `tb_kode_dosen` (`kode_dosen`),
  ADD CONSTRAINT `tb_absensi_ibfk_3` FOREIGN KEY (`kode_matkul`) REFERENCES `tb_matkul` (`kode_matkul`),
  ADD CONSTRAINT `tb_absensi_ibfk_4` FOREIGN KEY (`kode_ruang`) REFERENCES `tb_kode_ruang` (`kode_ruang`);

--
-- Constraints for table `tb_jadwal_mengajar`
--
ALTER TABLE `tb_jadwal_mengajar`
  ADD CONSTRAINT `tb_jadwal_mengajar_ibfk_1` FOREIGN KEY (`kode_matkul`) REFERENCES `tb_matkul` (`kode_matkul`),
  ADD CONSTRAINT `tb_jadwal_mengajar_ibfk_2` FOREIGN KEY (`kode_ruang`) REFERENCES `tb_kode_ruang` (`kode_ruang`),
  ADD CONSTRAINT `tb_jadwal_mengajar_ibfk_3` FOREIGN KEY (`kode_dosen`) REFERENCES `tb_kode_dosen` (`kode_dosen`);

--
-- Constraints for table `tb_kode_dosen`
--
ALTER TABLE `tb_kode_dosen`
  ADD CONSTRAINT `tb_kode_dosen_ibfk_1` FOREIGN KEY (`nip_dosen`) REFERENCES `tb_dosen` (`nip_dosen`);

--
-- Constraints for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD CONSTRAINT `tb_login_ibfk_1` FOREIGN KEY (`nip_dosen`) REFERENCES `tb_dosen` (`nip_dosen`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
