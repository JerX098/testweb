-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 07:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apa`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','mahasiswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `email`, `nama`, `password`, `role`) VALUES
('535210005', 'jerry@gmail.com', 'Jerry Setiawan', '1234', 'mahasiswa'),
('535210007', 'rendy@gmail', 'Rendy Khosesa', '1234', 'mahasiswa'),
('535210026', 'bryan@gmail.com', 'Bryan Othman Salim', '1234', 'mahasiswa'),
('535210043', 'asoka@gmail.com', 'Asoka Dhananjaya', '1234', 'mahasiswa'),
('admin', 'admin@gmail.com', '', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ttl` varchar(255) NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `ttl`, `gender`, `agama`, `alamat`, `telp`, `email`) VALUES
(535123123, 'Jeery', 'Jakarta 05-05', '', 'qqwqwqw', 'qwwqdwq', '123123', 'as@gmail.com'),
(0, '', '', '', '', '', '', ''),
(0, '', '', '', '', '', '123123', ''),
(1223123, 'asdasda', 'Jakarta 05-05', 'Laki-laki', 'asdsadas', 'ascasc', '21312321', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` int(11) NOT NULL,
  `matakuliah` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `ruangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `matakuliah`, `kelas`, `sks`, `hari`, `waktu`, `ruangan`) VALUES
(1, 'Introduction to Algorithm', 'A', 4, 'Senin', '07.30-11.10', 'R901'),
(2, 'Computation', 'A', 4, 'Selasa', '07.30-11.10', 'R804'),
(3, 'Game Development', 'A', 4, 'Selasa', '13.30-17.10', 'Lab Prog 6'),
(4, 'Operating System', 'B', 5, 'Kamis', '11.30-15.10', 'R801');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `ips` int(11) NOT NULL,
  `sks` int(11) NOT NULL,
  `ipkkini` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

CREATE TABLE `pembimbing` (
  `namaortu` varchar(255) NOT NULL,
  `alamatortu` text NOT NULL,
  `telportu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembimbing`
--

INSERT INTO `pembimbing` (`namaortu`, `alamatortu`, `telportu`) VALUES
('', 'qwwqdwq', ''),
('', '', ''),
('asdasa', 'Budi', ''),
('qasdasd', 'asdasd', '1231232');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `sekolah` varchar(255) NOT NULL,
  `ijazah` varchar(255) NOT NULL,
  `tglijazah` date NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`sekolah`, `ijazah`, `tglijazah`, `foto`) VALUES
('', '', '0000-00-00', ''),
('Budi Luhur', '12333123', '2202-02-02', 'ijazah.jpg'),
('', '', '0000-00-00', ''),
('asdasd', '123123', '1231-03-21', 'ijazah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `username_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `ipk` enum('sudah','belum') NOT NULL,
  `tagihan` enum('lunas','belum') NOT NULL,
  `kehadiran` enum('sudah','belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `username_id`, `username`, `ipk`, `tagihan`, `kehadiran`) VALUES
(1, '535210005', '535210005', 'sudah', 'belum', 'sudah'),
(2, '535210007', '', 'sudah', 'belum', 'sudah'),
(9, '535210026', '', 'sudah', 'lunas', 'sudah'),
(11, NULL, '', 'sudah', 'lunas', 'sudah'),
(13, NULL, '535210043', 'sudah', 'lunas', 'sudah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `us_id` (`username_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`username_id`) REFERENCES `login` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
