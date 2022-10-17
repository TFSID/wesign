-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2022 pada 12.07
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Sanji Winaya', 'sanji', 8979555558, 'sanji@gmail.com', 'b8f820d759ca9bf6fb4f18b1b42d11d7', '2022-09-21 04:36:52'),
(2, 'Tegar Firmansyah', 'tegar', 909183010, 'tegar@TS.com', 'd219e623bd90d0074c0904e425faf881', '2022-10-06 03:46:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(13, 'C', '1', '2022-09-07 06:40:28'),
(14, 'B', '2', '2022-09-20 10:03:36'),
(15, 'A', '1', '2022-09-20 10:03:48'),
(16, 'S', '2', '2022-09-20 10:03:53'),
(17, 'SS', '1', '2022-09-20 10:04:00'),
(18, 'SSS', '2', '2022-09-20 10:04:05'),
(19, 'EXPERT', '1', '2022-09-20 10:04:00'),
(20, 'MASTER', '1', '2022-09-20 10:04:00'),
(21, 'LEGEND', '1', '2022-09-20 10:04:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(8, '4012479', 13, 'Design Telah Dikirim', '2022-09-12 07:42:47'),
(11, '4012434', 13, '[REVISION]Perbaiki Penggunaan Warna', '2022-09-26 07:31:15'),
(12, '4012523', 13, 'Design Terpilih Untuk Dipresentasikan Kepada Client', '2022-09-27 05:20:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><h4 style=\"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding: var(--su12); border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: var(--lh-md); vertical-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; border-radius: var(--br-md); overflow-wrap: normal;\"><font color=\"#ffffff\">WESIGN adalah sebuah aplikasi yang berfungsi sebagai wadah para designer dan juga untuk pemesanan design&nbsp;</font></h4></div>', NULL, NULL, NULL),
(2, 'contactus', 'Kontak Kami', 'Jl. Cisaranten Kulon No.17, Cisaranten Kulon, Kec. Arcamanik, Kota Bandung, Jawa Barat 40293', 'infodata@gmail.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'PTS 2022', 'Test', '2022-01-20 09:11:57'),
(3, '1', 'asasa', '2022-09-25 11:43:24'),
(4, '2', 'sasa', '2022-09-25 11:43:31'),
(5, '3', 'sasaas', '2022-09-25 11:43:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(10, 'Ihsan Maulana', 'sanji@aratadev.my.id', '13', 'Laki-Laki', '2022-09-21', '2023763878648', 'Asep', 'Murni', 857325327, 867546253, 'Bandung', 'ihsan', 'ea1e2b66eb6f4d6a8c6d8555e1b46cea', '9c24860a9458925312ed17a2d87cf54f1663742989.jpg', '2022-09-21 06:49:49'),
(11, ' Tegar', 'tegar@gmail.com', '13', 'Laki-Laki', '2022-09-25', '20238327234', 'Suganda', 'Murninda', 857736347482, 857736347481, 'Kec. Kby. Lama, Kota Jakarta Selatan', 'tegar', 'd219e623bd90d0074c0904e425faf881', 'aade33712ae275a8481389e48a2a80a71664103385.jpg', '2022-09-25 10:56:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `TeacherName` varchar(200) DEFAULT NULL,
  `TeacherEmail` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `TeacherName`, `TeacherEmail`, `Gender`, `DOB`, `StuID`, `ContactNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(10, 'Ihsan Maulana', 'sanji@aratadev.my.id', 'Laki-Laki', '2022-09-21', '2023763878648', 857325327, 'Bandung', 'ihsan', 'ea1e2b66eb6f4d6a8c6d8555e1b46cea', '9c24860a9458925312ed17a2d87cf54f1663742989.jpg', '2022-09-21 06:49:49'),
(11, 'Muhammad Rian Pratama', 'rianmuhammad@gmail.com', 'Laki-Laki', '2022-09-25', '5003232342792', 857736347485, 'Bandung', 'rian', '26ed30f28908645239254ff4f88c1b75', 'aade33712ae275a8481389e48a2a80a71664101951.jpg', '2022-09-25 10:32:31'),
(12, 'Tegar Firmansyah', 'tegar@TS.com', 'Laki-Laki', '2013-10-08', '2082849182392485792', 81258009208, 'Bandung', 'tegar', 'd219e623bd90d0074c0904e425faf881', 'aade33712ae275a8481389e48a2a80a71664101951.jpg', '2022-10-06 00:44:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
