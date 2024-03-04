-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 05:00 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id_file` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id_file`, `nama_file`, `file`) VALUES
(6, 'Surat Pernyataan', 'surat-pernyataan.pdf'),
(7, 'Pengumuman Penerimaan', 'pengumuman-penerimaan.pdf'),
(8, 'Formulir Ujian', 'formulir-ujian.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `pendidikan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `jabatan`, `pendidikan`) VALUES
(5, 'Siti Sa\'diah,S.Pd', 'Guru', 'S1'),
(6, 'Thika harimularas,S.Sos', 'Guru', 'S1'),
(7, 'Ning Iin cahaya,S.Pd', 'Guru', 'S1'),
(8, 'Dewi Susanti,S.Pd', 'Guru', 'S1'),
(9, 'Iis purwantini,S.Pd.I', 'Guru', 'S1'),
(10, 'Fitri kusrini,S.Pd.I', 'Guru', 'S1'),
(11, 'Selphya GINA Rosa,S.Pd.I', 'Guru', 'S1'),
(12, ' Endang ruspiana,S.Pd', 'Guru', 'S1'),
(13, 'Puspita Dewi,S.Pd', 'Guru', 'S1'),
(14, 'Arwinah,S.Pd', 'Guru', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `hitung`
--

CREATE TABLE `hitung` (
  `id_hitung` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `vektor_s` float NOT NULL,
  `vektor_v` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hitung`
--

INSERT INTO `hitung` (`id_hitung`, `id_user`, `id_lowongan`, `vektor_s`, `vektor_v`) VALUES
(17, 18, 11, 3.37511, 0.025725),
(18, 21, 11, 3.06296, 0.0233458),
(19, 22, 11, 2.52455, 0.019242),
(20, 23, 11, 3.29466, 0.0251118),
(21, 24, 11, 3.80272, 0.0289842),
(22, 25, 11, 2.22555, 0.0169631),
(23, 26, 11, 2.5294, 0.019279),
(24, 28, 11, 2.59817, 0.0198032),
(25, 29, 11, 2.12657, 0.0162086),
(26, 30, 11, 2.3369, 0.0178118),
(27, 31, 11, 2.41546, 0.0184106),
(28, 32, 11, 0.561282, 0.00427807),
(29, 33, 11, 0.41659, 0.00317524),
(30, 34, 11, 2.29384, 0.0174836),
(31, 35, 11, 2.9111, 0.0221883),
(32, 36, 11, 2.94574, 0.0224523),
(33, 37, 11, 2.48279, 0.0189237),
(34, 38, 11, 3.28645, 0.0250492),
(35, 39, 11, 3.0952, 0.0235915),
(36, 40, 11, 2.15899, 0.0164558),
(37, 41, 11, 2.41088, 0.0183756),
(38, 42, 11, 2.00028, 0.0152461),
(39, 43, 11, 2.36953, 0.0180605),
(40, 44, 11, 3.40849, 0.0259794),
(41, 45, 11, 1.95252, 0.014882),
(42, 46, 11, 2.98804, 0.0227747),
(43, 47, 11, 3.06564, 0.0233662),
(44, 48, 11, 3.22805, 0.0246041),
(45, 49, 11, 2.3145, 0.017641),
(46, 50, 11, 3.80288, 0.0289854),
(47, 51, 11, 1.72848, 0.0131744),
(48, 52, 11, 2.84028, 0.0216485),
(49, 53, 11, 3.0468, 0.0232226),
(50, 54, 11, 1.85948, 0.0141729),
(51, 55, 11, 3.90645, 0.0297748),
(52, 57, 11, 2.26414, 0.0172572),
(53, 58, 11, 3.32733, 0.0253608),
(54, 59, 11, 2.58065, 0.0196696),
(55, 60, 11, 1.79266, 0.0136636),
(56, 61, 11, 3.05513, 0.0232861),
(57, 62, 11, 3.75826, 0.0286453),
(58, 63, 11, 2.16489, 0.0165007),
(59, 64, 11, 3.09713, 0.0236062),
(60, 65, 11, 2.07441, 0.0158111),
(61, 66, 11, 2.64945, 0.020194),
(62, 67, 11, 2.07441, 0.0158111),
(63, 68, 11, 2.53631, 0.0193317),
(64, 69, 11, 3.43837, 0.0262071),
(65, 70, 11, 3.09713, 0.0236062),
(66, 71, 11, 1.92314, 0.0146581);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `id_guru`, `kelas`) VALUES
(2, 5, 'I A'),
(3, 6, 'I B'),
(4, 7, 'II A'),
(5, 8, 'II B'),
(6, 5, 'III A'),
(7, 9, 'III B'),
(8, 5, 'IV A'),
(9, 10, 'IV B'),
(10, 11, 'V A'),
(11, 12, 'V B'),
(12, 13, 'VI A'),
(13, 14, 'VI B');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `lowongan` varchar(50) NOT NULL,
  `kuota` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `pengumuman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `lowongan`, `kuota`, `status`, `pengumuman`) VALUES
(11, 'Beasiswa', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lowongan_rinci`
--

CREATE TABLE `lowongan_rinci` (
  `id_lowongan_rinci` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `bobot` int(11) NOT NULL,
  `status_nilai` tinyint(4) NOT NULL,
  `status_upload` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan_rinci`
--

INSERT INTO `lowongan_rinci` (`id_lowongan_rinci`, `id_lowongan`, `kriteria`, `bobot`, `status_nilai`, `status_upload`) VALUES
(42, 11, 'Penghasilan Orang Tua', 5, 1, 0),
(43, 11, 'Jumlah Tangguang Orang Tua', 4, 1, 0),
(44, 11, 'Nilai Rapot Semester', 5, 1, 0),
(45, 11, 'Jumlah Ektrakulikuler', 3, 1, 0),
(46, 11, 'Kedisplinan', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE `pelamar` (
  `id_lamaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `nilai` varchar(10) NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`id_lamaran`, `id_user`, `id_lowongan`, `kriteria`, `nilai`, `file`) VALUES
(111, 18, 11, 'Penghasilan Orang Tua', '4', ''),
(112, 18, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(113, 18, 11, 'Nilai Rapot Semester', '4', ''),
(114, 18, 11, 'Jumlah Ektrakulikuler', '2', ''),
(115, 18, 11, 'Kedisplinan', '4', ''),
(116, 21, 11, 'Penghasilan Orang Tua', '3', ''),
(117, 21, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(118, 21, 11, 'Nilai Rapot Semester', '4', ''),
(119, 21, 11, 'Jumlah Ektrakulikuler', '3', ''),
(120, 21, 11, 'Kedisplinan', '4', ''),
(121, 22, 11, 'Penghasilan Orang Tua', '2', ''),
(122, 22, 11, 'Jumlah Tangguang Orang Tua', '5', ''),
(123, 22, 11, 'Nilai Rapot Semester', '3', ''),
(124, 22, 11, 'Jumlah Ektrakulikuler', '1', ''),
(125, 22, 11, 'Kedisplinan', '3', ''),
(126, 23, 11, 'Penghasilan Orang Tua', '3', ''),
(127, 23, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(128, 23, 11, 'Nilai Rapot Semester', '4', ''),
(129, 23, 11, 'Jumlah Ektrakulikuler', '3', ''),
(130, 23, 11, 'Kedisplinan', '2', ''),
(131, 24, 11, 'Penghasilan Orang Tua', '5', ''),
(132, 24, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(133, 24, 11, 'Nilai Rapot Semester', '4', ''),
(134, 24, 11, 'Jumlah Ektrakulikuler', '2', ''),
(135, 24, 11, 'Kedisplinan', '4', ''),
(136, 25, 11, 'Penghasilan Orang Tua', '4', ''),
(137, 25, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(138, 25, 11, 'Nilai Rapot Semester', '3', ''),
(139, 25, 11, 'Jumlah Ektrakulikuler', '1', ''),
(140, 25, 11, 'Kedisplinan', '4', ''),
(141, 26, 11, 'Penghasilan Orang Tua', '2', ''),
(142, 26, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(143, 26, 11, 'Nilai Rapot Semester', '3', ''),
(144, 26, 11, 'Jumlah Ektrakulikuler', '2', ''),
(145, 26, 11, 'Kedisplinan', '3', ''),
(146, 28, 11, 'Penghasilan Orang Tua', '2', ''),
(147, 28, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(148, 28, 11, 'Nilai Rapot Semester', '4', ''),
(149, 28, 11, 'Jumlah Ektrakulikuler', '1', ''),
(150, 28, 11, 'Kedisplinan', '3', ''),
(151, 29, 11, 'Penghasilan Orang Tua', '1', ''),
(152, 29, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(153, 29, 11, 'Nilai Rapot Semester', '3', ''),
(154, 29, 11, 'Jumlah Ektrakulikuler', '3', ''),
(155, 29, 11, 'Kedisplinan', '4', ''),
(156, 30, 11, 'Penghasilan Orang Tua', '2', ''),
(157, 30, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(158, 30, 11, 'Nilai Rapot Semester', '3', ''),
(159, 30, 11, 'Jumlah Ektrakulikuler', '1', ''),
(160, 30, 11, 'Kedisplinan', '4', ''),
(161, 31, 11, 'Penghasilan Orang Tua', '2', ''),
(162, 31, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(163, 31, 11, 'Nilai Rapot Semester', '4', ''),
(164, 31, 11, 'Jumlah Ektrakulikuler', '4', ''),
(165, 31, 11, 'Kedisplinan', '3', ''),
(166, 32, 11, 'Penghasilan Orang Tua', '0.5', ''),
(167, 32, 11, 'Jumlah Tangguang Orang Tua', '0.25', ''),
(168, 32, 11, 'Nilai Rapot Semester', '0.75', ''),
(169, 32, 11, 'Jumlah Ektrakulikuler', '0', ''),
(170, 32, 11, 'Kedisplinan', '0.5', ''),
(171, 33, 11, 'Penghasilan Orang Tua', '0.5', ''),
(172, 33, 11, 'Jumlah Tangguang Orang Tua', '0.5', ''),
(173, 33, 11, 'Nilai Rapot Semester', '0.5', ''),
(174, 33, 11, 'Jumlah Ektrakulikuler', '0.25', ''),
(175, 33, 11, 'Kedisplinan', '0.25', ''),
(176, 34, 11, 'Penghasilan Orang Tua', '1', ''),
(177, 34, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(178, 34, 11, 'Nilai Rapot Semester', '4', ''),
(179, 34, 11, 'Jumlah Ektrakulikuler', '3', ''),
(180, 34, 11, 'Kedisplinan', '4', ''),
(181, 35, 11, 'Penghasilan Orang Tua', '2', ''),
(182, 35, 11, 'Jumlah Tangguang Orang Tua', '5', ''),
(183, 35, 11, 'Nilai Rapot Semester', '2', ''),
(184, 35, 11, 'Jumlah Ektrakulikuler', '4', ''),
(185, 35, 11, 'Kedisplinan', '4', ''),
(186, 36, 11, 'Penghasilan Orang Tua', '4', ''),
(187, 36, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(188, 36, 11, 'Nilai Rapot Semester', '5', ''),
(189, 36, 11, 'Jumlah Ektrakulikuler', '4', ''),
(190, 36, 11, 'Kedisplinan', '2', ''),
(191, 37, 11, 'Penghasilan Orang Tua', '3', ''),
(192, 37, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(193, 37, 11, 'Nilai Rapot Semester', '2', ''),
(194, 37, 11, 'Jumlah Ektrakulikuler', '1', ''),
(195, 37, 11, 'Kedisplinan', '4', ''),
(196, 38, 11, 'Penghasilan Orang Tua', '5', ''),
(197, 38, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(198, 38, 11, 'Nilai Rapot Semester', '4', ''),
(199, 38, 11, 'Jumlah Ektrakulikuler', '2', ''),
(200, 38, 11, 'Kedisplinan', '4', ''),
(201, 39, 11, 'Penghasilan Orang Tua', '4', ''),
(202, 39, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(203, 39, 11, 'Nilai Rapot Semester', '4', ''),
(204, 39, 11, 'Jumlah Ektrakulikuler', '5', ''),
(205, 39, 11, 'Kedisplinan', '4', ''),
(206, 40, 11, 'Penghasilan Orang Tua', '1', ''),
(207, 40, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(208, 40, 11, 'Nilai Rapot Semester', '3', ''),
(209, 40, 11, 'Jumlah Ektrakulikuler', '4', ''),
(210, 40, 11, 'Kedisplinan', '3', ''),
(211, 41, 11, 'Penghasilan Orang Tua', '1', ''),
(212, 41, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(213, 41, 11, 'Nilai Rapot Semester', '5', ''),
(214, 41, 11, 'Jumlah Ektrakulikuler', '2', ''),
(215, 41, 11, 'Kedisplinan', '3', ''),
(216, 42, 11, 'Penghasilan Orang Tua', '2', ''),
(217, 42, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(218, 42, 11, 'Nilai Rapot Semester', '4', ''),
(219, 42, 11, 'Jumlah Ektrakulikuler', '1', ''),
(220, 42, 11, 'Kedisplinan', '4', ''),
(221, 43, 11, 'Penghasilan Orang Tua', '2', ''),
(222, 43, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(223, 43, 11, 'Nilai Rapot Semester', '4', ''),
(224, 43, 11, 'Jumlah Ektrakulikuler', '1', ''),
(225, 43, 11, 'Kedisplinan', '5', ''),
(226, 44, 11, 'Penghasilan Orang Tua', '4', ''),
(227, 44, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(228, 44, 11, 'Nilai Rapot Semester', '5', ''),
(229, 44, 11, 'Jumlah Ektrakulikuler', '1', ''),
(230, 44, 11, 'Kedisplinan', '4', ''),
(231, 45, 11, 'Penghasilan Orang Tua', '1', ''),
(232, 45, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(233, 45, 11, 'Nilai Rapot Semester', '2', ''),
(234, 45, 11, 'Jumlah Ektrakulikuler', '2', ''),
(235, 45, 11, 'Kedisplinan', '4', ''),
(236, 46, 11, 'Penghasilan Orang Tua', '4', ''),
(237, 46, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(238, 46, 11, 'Nilai Rapot Semester', '4', ''),
(239, 46, 11, 'Jumlah Ektrakulikuler', '4', ''),
(240, 46, 11, 'Kedisplinan', '4', ''),
(241, 47, 11, 'Penghasilan Orang Tua', '3', ''),
(242, 47, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(243, 47, 11, 'Nilai Rapot Semester', '5', ''),
(244, 47, 11, 'Jumlah Ektrakulikuler', '1', ''),
(245, 47, 11, 'Kedisplinan', '3', ''),
(246, 48, 11, 'Penghasilan Orang Tua', '5', ''),
(247, 48, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(248, 48, 11, 'Nilai Rapot Semester', '2', ''),
(249, 48, 11, 'Jumlah Ektrakulikuler', '4', ''),
(250, 48, 11, 'Kedisplinan', '3', ''),
(251, 49, 11, 'Penghasilan Orang Tua', '2', ''),
(252, 49, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(253, 49, 11, 'Nilai Rapot Semester', '4', ''),
(254, 49, 11, 'Jumlah Ektrakulikuler', '4', ''),
(255, 49, 11, 'Kedisplinan', '2', ''),
(256, 50, 11, 'Penghasilan Orang Tua', '4', ''),
(257, 50, 11, 'Jumlah Tangguang Orang Tua', '5', ''),
(258, 50, 11, 'Nilai Rapot Semester', '3', ''),
(259, 50, 11, 'Jumlah Ektrakulikuler', '3', ''),
(260, 50, 11, 'Kedisplinan', '5', ''),
(261, 51, 11, 'Penghasilan Orang Tua', '1', ''),
(262, 51, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(263, 51, 11, 'Nilai Rapot Semester', '2', ''),
(264, 51, 11, 'Jumlah Ektrakulikuler', '1', ''),
(265, 51, 11, 'Kedisplinan', '2', ''),
(266, 52, 11, 'Penghasilan Orang Tua', '4', ''),
(267, 52, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(268, 52, 11, 'Nilai Rapot Semester', '5', ''),
(269, 52, 11, 'Jumlah Ektrakulikuler', '2', ''),
(270, 52, 11, 'Kedisplinan', '4', ''),
(271, 53, 11, 'Penghasilan Orang Tua', '5', ''),
(272, 53, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(273, 53, 11, 'Nilai Rapot Semester', '3', ''),
(274, 53, 11, 'Jumlah Ektrakulikuler', '2', ''),
(275, 53, 11, 'Kedisplinan', '4', ''),
(276, 54, 11, 'Penghasilan Orang Tua', '4', ''),
(277, 54, 11, 'Jumlah Tangguang Orang Tua', '1', ''),
(278, 54, 11, 'Nilai Rapot Semester', '2', ''),
(279, 54, 11, 'Jumlah Ektrakulikuler', '1', ''),
(280, 54, 11, 'Kedisplinan', '2', ''),
(281, 55, 11, 'Penghasilan Orang Tua', '3', ''),
(282, 55, 11, 'Jumlah Tangguang Orang Tua', '5', ''),
(283, 55, 11, 'Nilai Rapot Semester', '4', ''),
(284, 55, 11, 'Jumlah Ektrakulikuler', '5', ''),
(285, 55, 11, 'Kedisplinan', '3', ''),
(286, 57, 11, 'Penghasilan Orang Tua', '2', ''),
(287, 57, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(288, 57, 11, 'Nilai Rapot Semester', '1', ''),
(289, 57, 11, 'Jumlah Ektrakulikuler', '3', ''),
(290, 57, 11, 'Kedisplinan', '5', ''),
(291, 58, 11, 'Penghasilan Orang Tua', '5', ''),
(292, 58, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(293, 58, 11, 'Nilai Rapot Semester', '2', ''),
(294, 58, 11, 'Jumlah Ektrakulikuler', '4', ''),
(295, 58, 11, 'Kedisplinan', '4', ''),
(296, 59, 11, 'Penghasilan Orang Tua', '4', ''),
(297, 59, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(298, 59, 11, 'Nilai Rapot Semester', '2', ''),
(299, 59, 11, 'Jumlah Ektrakulikuler', '1', ''),
(300, 59, 11, 'Kedisplinan', '5', ''),
(301, 60, 11, 'Penghasilan Orang Tua', '1', ''),
(302, 60, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(303, 60, 11, 'Nilai Rapot Semester', '1', ''),
(304, 60, 11, 'Jumlah Ektrakulikuler', '4', ''),
(305, 60, 11, 'Kedisplinan', '2', ''),
(306, 61, 11, 'Penghasilan Orang Tua', '2', ''),
(307, 61, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(308, 61, 11, 'Nilai Rapot Semester', '5', ''),
(309, 61, 11, 'Jumlah Ektrakulikuler', '4', ''),
(310, 61, 11, 'Kedisplinan', '4', ''),
(311, 62, 11, 'Penghasilan Orang Tua', '4', ''),
(312, 62, 11, 'Jumlah Tangguang Orang Tua', '5', ''),
(313, 62, 11, 'Nilai Rapot Semester', '4', ''),
(314, 62, 11, 'Jumlah Ektrakulikuler', '2', ''),
(315, 62, 11, 'Kedisplinan', '4', ''),
(316, 63, 11, 'Penghasilan Orang Tua', '1', ''),
(317, 63, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(318, 63, 11, 'Nilai Rapot Semester', '4', ''),
(319, 63, 11, 'Jumlah Ektrakulikuler', '1', ''),
(320, 63, 11, 'Kedisplinan', '3', ''),
(321, 64, 11, 'Penghasilan Orang Tua', '4', ''),
(322, 64, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(323, 64, 11, 'Nilai Rapot Semester', '4', ''),
(324, 64, 11, 'Jumlah Ektrakulikuler', '1', ''),
(325, 64, 11, 'Kedisplinan', '5', ''),
(326, 65, 11, 'Penghasilan Orang Tua', '1', ''),
(327, 65, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(328, 65, 11, 'Nilai Rapot Semester', '2', ''),
(329, 65, 11, 'Jumlah Ektrakulikuler', '2', ''),
(330, 65, 11, 'Kedisplinan', '4', ''),
(331, 66, 11, 'Penghasilan Orang Tua', '3', ''),
(332, 66, 11, 'Jumlah Tangguang Orang Tua', '2', ''),
(333, 66, 11, 'Nilai Rapot Semester', '5', ''),
(334, 66, 11, 'Jumlah Ektrakulikuler', '1', ''),
(335, 66, 11, 'Kedisplinan', '3', ''),
(336, 67, 11, 'Penghasilan Orang Tua', '1', ''),
(337, 67, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(338, 67, 11, 'Nilai Rapot Semester', '4', ''),
(339, 67, 11, 'Jumlah Ektrakulikuler', '1', ''),
(340, 67, 11, 'Kedisplinan', '2', ''),
(341, 68, 11, 'Penghasilan Orang Tua', '4', ''),
(342, 68, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(343, 68, 11, 'Nilai Rapot Semester', '1', ''),
(344, 68, 11, 'Jumlah Ektrakulikuler', '4', ''),
(345, 68, 11, 'Kedisplinan', '3', ''),
(346, 69, 11, 'Penghasilan Orang Tua', '3', ''),
(347, 69, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(348, 69, 11, 'Nilai Rapot Semester', '3', ''),
(349, 69, 11, 'Jumlah Ektrakulikuler', '4', ''),
(350, 69, 11, 'Kedisplinan', '4', ''),
(351, 70, 11, 'Penghasilan Orang Tua', '4', ''),
(352, 70, 11, 'Jumlah Tangguang Orang Tua', '3', ''),
(353, 70, 11, 'Nilai Rapot Semester', '4', ''),
(354, 70, 11, 'Jumlah Ektrakulikuler', '1', ''),
(355, 70, 11, 'Kedisplinan', '5', ''),
(356, 71, 11, 'Penghasilan Orang Tua', '1', ''),
(357, 71, 11, 'Jumlah Tangguang Orang Tua', '4', ''),
(358, 71, 11, 'Nilai Rapot Semester', '3', ''),
(359, 71, 11, 'Jumlah Ektrakulikuler', '1', ''),
(360, 71, 11, 'Kedisplinan', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_lengkap`, `username`, `password`, `alamat`, `tanggal_lahir`, `kelas`) VALUES
(18, 'ALRAFAIZA MUHAMMAD', 'siswa1', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-06-10', 2),
(21, 'AHMAD BINTANG HADI PUTRA', 'siswa2', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-10-08', 6),
(22, 'AHMAD FAQH HAIDAR', 'siswa3', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-06-08', 3),
(23, 'AHMAD ZAINUDIN', 'siswa4', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-01-14', 3),
(24, 'ALIKA BINTANG AZZAHRA', 'siswa5', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2010-08-17', 12),
(25, 'ALISHA MUTIARA RAMADHANI', 'siswa6', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-08-08', 6),
(26, 'ALKHAIRI IBQAR NUR RIZKY', 'siswa7', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-04-18', 9),
(28, 'AMELYA ANGGRIANI', 'siswa8', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2011-11-01', 10),
(29, 'AMIRA SEYLA AHDA NAJIBA', 'siswa9', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-11-07', 11),
(30, 'ANINDYA AILSAFATIH', 'siswa10', '827ccb0eea8a706c4c34a16891f84e7b', '', '2014-06-20', 5),
(31, 'ARSHELY BELVA ZHAFIRA', 'siswa11', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-03-31', 2),
(32, 'ASSYFA FAUZIAH', 'siswa12', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-03-03', 5),
(33, 'AZKIYA RIHADATUL AISY', 'siswa13', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-08-13', 2),
(34, 'AZRA NUR ZAIDA', 'siswa14', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-09-10', 9),
(35, 'AZZAM BAZYLI ARSYASATYA', 'siswa15', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-04-09', 8),
(36, 'CHIKA MAULINA', 'siswa16', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '0000-00-00', 12),
(37, 'DAMAR FAWAZ SETIAJI', 'siswa17', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-04-20', 10),
(38, 'DAVINA QHATRUN NADA', 'siswa18', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-06-20', 8),
(39, 'ERLANGGA FRAMUJA DARMAWAN', 'siswa19', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2012-03-20', 12),
(40, 'FARIZA NURIN NAZLA', 'siswa20', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-06-11', 8),
(41, 'FERDINAND DIMAS WIJAYA', 'siswa21', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2011-05-20', 11),
(42, 'GIVIA KIRANA UTAMI', 'siswa22', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-06-20', 12),
(43, 'JESICA WULANDARI', 'siswa23', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-10-01', 4),
(44, 'JIHAN SAAHIRAH', 'siswa24', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-06-20', 6),
(45, 'KHAIRUN NURIL AJDAH LIMEISA', 'siswa25', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-05-20', 6),
(46, 'KHANZA ADELIA NAIFAH', 'siswa26', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-06-20', 4),
(47, 'MUHAMAD ABID ASNAWI', 'siswa27', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-10-20', 9),
(48, 'MUHAMAD HILAL FRISTIAN', 'siswa28', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-06-17', 5),
(49, 'MUHAMAD NUR FADIL', 'siswa29', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2011-06-30', 3),
(50, 'MUHAMAD PADLAN PRATAMA', 'siswa30', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2012-05-20', 8),
(51, 'MUHAMAD RISKI', 'siswa31', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-02-20', 7),
(52, 'MUHAMAD RIZKI KANANDA', 'siswa32', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-10-20', 4),
(53, 'MUHAMAD SAMSUL ARIFIN', 'siswa33', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2012-02-20', 12),
(54, 'MUHAMAD WILDAN RIZIQ', 'siswa34', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2011-05-20', 5),
(55, 'MUHAMMAD FAHRI IBRAHIN', 'siswa35', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2011-10-20', 11),
(57, 'MUHAMMAD FARHAN SEPTIANSYAH', 'siswa36', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-04-20', 7),
(58, 'MUHAMMAD OZIL SAPUTRA', 'siswa37', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2012-04-19', 11),
(59, 'MUHAMMAD UBAZ ABRAHAM', 'siswa38', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-06-20', 2),
(60, 'MUTIA RAHAYU', 'siswa39', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2010-06-20', 13),
(61, 'NABILA HASNA AMIRA', 'siswa40', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-02-20', 6),
(62, 'NAJLA ZAKIRAH', 'siswa41', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2015-06-20', 3),
(63, 'NIKEN YUANITA PUTRI', 'siswa42', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-02-20', 7),
(64, 'PATIMAH AZAHRA', 'siswa43', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2010-02-20', 12),
(65, 'PUTRI AULIA IZZATUNISA', 'siswa44', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2014-06-20', 4),
(66, 'RAHMA NADIA SYAHLA', 'siswa45', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2013-02-20', 7),
(67, 'RAISA ZALFAHIRA', 'siswa46', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2012-09-20', 8),
(68, 'SAKILA NIHAYATUZ AZKIYA', 'siswa47', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2012-10-20', 6),
(69, 'TIARA ANGRIYANI', 'siswa48', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2010-06-20', 13),
(70, 'WILDA JUNI YANTI', 'siswa49', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2010-02-20', 13),
(71, 'ZHAFIR RAFIF HENDRAWAN', 'siswa50', '827ccb0eea8a706c4c34a16891f84e7b', 'Tangerang', '2010-06-20', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hitung`
--
ALTER TABLE `hitung`
  ADD PRIMARY KEY (`id_hitung`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indexes for table `lowongan_rinci`
--
ALTER TABLE `lowongan_rinci`
  ADD PRIMARY KEY (`id_lowongan_rinci`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id_lamaran`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hitung`
--
ALTER TABLE `hitung`
  MODIFY `id_hitung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lowongan_rinci`
--
ALTER TABLE `lowongan_rinci`
  MODIFY `id_lowongan_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id_lamaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
