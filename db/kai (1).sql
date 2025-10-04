-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2025 at 04:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kai`
--

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `id` int(11) NOT NULL,
  `line_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`id`, `line_name`) VALUES
(1, 'Jakarta - Bogor'),
(2, 'Citayam - Nambo'),
(3, 'Loop Manggarai - Jatinegara vi'),
(4, 'Tanah Abang - Rangkasbitung + '),
(5, 'Duri - Tangerang'),
(6, 'Kampung Bandan - Tanjung Priok'),
(21, 'JAKK-BOO'),
(22, 'JAKK-NMO'),
(31, 'CKR-PSE-KPB'),
(32, 'CKR-MRI-KPB'),
(33, 'CKR-MRI-AK');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `station_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `station_name`, `station_code`) VALUES
(1, 'AREA JABODETABEK', 'WIL0'),
(2, 'ANCOL', 'AC'),
(3, 'ANGKE', 'AK'),
(4, 'BOJONGGEDE', 'BJD'),
(5, 'BEKASI', 'BKS'),
(6, 'BEKASI TIMUR', 'BKST'),
(7, 'BOJONG INDAH', 'BOI'),
(8, 'BOGOR', 'BOO'),
(9, 'BATU CEPER', 'BPR'),
(10, 'BUARAN', 'BUA'),
(11, 'CIBINONG', 'CBN'),
(12, 'CICAYUR', 'CC'),
(13, 'CIBITUNG', 'CIT'),
(14, 'CILEJIT', 'CJT'),
(15, 'CIKINI', 'CKI'),
(16, 'CIKARANG', 'CKR'),
(17, 'CIKOYA', 'CKY'),
(18, 'CILEBUT', 'CLT'),
(19, 'CISAUK', 'CSK'),
(20, 'CITAYAM', 'CTA'),
(21, 'CITERAS', 'CTR'),
(22, 'CAKUNG', 'CUK'),
(23, 'CAWANG', 'CW'),
(24, 'DARU', 'DAR'),
(25, 'DEPOK', 'DP'),
(26, 'DEPOK BARU', 'DPB'),
(27, 'DUREN KALIBATA', 'DRN'),
(28, 'DURI', 'DU'),
(29, 'GONDANGDIA', 'GDD'),
(30, 'GROGOL', 'GGL'),
(31, 'GANG SENTIONG', 'GST'),
(32, 'JAKARTA KOTA', 'JAKK'),
(33, 'JAYAKARTA', 'JAY'),
(34, 'JURANG MANGU', 'JMU'),
(35, 'JATINEGARA', 'JNG'),
(36, 'JUANDA', 'JUA'),
(37, 'KARET', 'KAT'),
(38, 'KEBAYORAN', 'KBY'),
(39, 'KALIDERES', 'KDS'),
(40, 'KLENDER', 'KLD'),
(41, 'KLENDER BARU', 'KLDB'),
(42, 'KEMAYORAN', 'KMO'),
(43, 'KRAMAT', 'KMT'),
(44, 'KAMPUNG BANDAN', 'KPB'),
(45, 'KRANJI', 'KRI'),
(46, 'LENTENG AGUNG', 'LNA'),
(47, 'MANGGA BESAR', 'MGB'),
(48, 'MAJA', 'MJ'),
(49, 'MATRAMAN', 'MTR'),
(50, 'MANGGARAI', 'MRI'),
(51, 'METLAND TELAGAMURNI', 'TLM'),
(52, 'NAMBO', 'NMO'),
(53, 'PONDOK RAJEG', 'PDRG'),
(54, 'PONDOK RANJI', 'PDJ'),
(55, 'PORIS', 'PI'),
(56, 'PALMERAH', 'PLM'),
(57, 'PONDOK CINA', 'POC'),
(58, 'PONDOK JATI', 'POK'),
(59, 'PARUNG PANJANG', 'PRP'),
(60, 'PASAR SENEN', 'PSE'),
(61, 'PESING', 'PSG'),
(62, 'PASAR MINGGU', 'PSM'),
(63, 'PASAR MINGGU BARU', 'PSMB'),
(64, 'RAJAWALI', 'RJW'),
(65, 'RAWA BUNTU', 'RU'),
(66, 'RAWA BUAYA', 'RW'),
(67, 'SUDIMARA', 'SDM'),
(68, 'SERPONG', 'SRP'),
(69, 'SUDIRMAN BARU', 'SUDB'),
(70, 'SUDIRMAN', 'SUD'),
(71, 'SAWAH BESAR', 'SW'),
(72, 'TAMBUN', 'TB'),
(73, 'TEBET', 'TEB'),
(74, 'TENJO', 'TEJ'),
(75, 'TIGARAKSA', 'TGS'),
(76, 'TANAH ABANG', 'THB'),
(77, 'TAMAN KOTA', 'TKO'),
(78, 'TANGERANG', 'TNG'),
(79, 'TANJUNG BARAT', 'TNT'),
(80, 'TANJUNG PRIOK', 'TPK'),
(81, 'TANAH TINGGI', 'TTI'),
(82, 'UNIV. INDONESIA', 'UI'),
(83, 'UNIV. PANCASILA', 'UP'),
(84, 'AREA YOGYAKARTA', 'WIL6'),
(85, 'BRAMBANAN', 'BBN'),
(86, 'CEPER', 'CE'),
(87, 'DELANGGU', 'DL'),
(88, 'GAWOK', 'GW'),
(89, 'JENAR', 'JN'),
(90, 'KLATEN', 'KT'),
(91, 'KUTOARJO', 'KTA'),
(92, 'LEMPUYANGAN', 'LPN'),
(93, 'MAGUWO', 'MGW'),
(94, 'PURWOSARI', 'PWS'),
(95, 'SOLO BALAPAN', 'SLO'),
(96, 'SROWOT', 'SWT'),
(97, 'WOJO', 'WJ'),
(98, 'WATES', 'WT'),
(99, 'YOGYAKARTA', 'YK'),
(100, 'PALUR', 'PL'),
(101, 'SOLO JEBRES', 'SK'),
(102, 'AREA MERAK', 'WIL1'),
(103, 'JAMBU BARU', 'JBU'),
(104, 'CATANG', 'CT'),
(105, 'CIKEUSAL', 'CKL'),
(106, 'WALANTAKA', 'WLT'),
(107, 'KARANGANTU', 'KRA'),
(108, 'SERANG', 'SG'),
(109, 'RANGKASBITUNG', 'RK'),
(110, 'TONJONG BARU', 'TOJB'),
(111, 'CILEGON', 'CLG'),
(112, 'KRENCENG', 'KEN'),
(113, 'MERAK', 'MER');

-- --------------------------------------------------------

--
-- Table structure for table `station_in_line`
--

CREATE TABLE `station_in_line` (
  `UniqueID` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `station_in_line`
--

INSERT INTO `station_in_line` (`UniqueID`, `station_id`, `line_id`, `order`) VALUES
(102, 32, 1, 1),
(103, 33, 1, 2),
(104, 47, 1, 3),
(105, 71, 1, 4),
(106, 36, 1, 5),
(107, 29, 1, 7),
(108, 15, 1, 8),
(109, 50, 1, 9),
(110, 73, 1, 10),
(111, 23, 1, 11),
(112, 27, 1, 12),
(113, 63, 1, 13),
(114, 62, 1, 14),
(115, 79, 1, 15),
(116, 46, 1, 16),
(117, 83, 1, 17),
(118, 82, 1, 18),
(119, 57, 1, 19),
(120, 26, 1, 20),
(121, 25, 1, 21),
(122, 20, 1, 22),
(123, 4, 1, 23),
(124, 18, 1, 24),
(125, 8, 1, 25),
(126, 20, 2, 1),
(127, 53, 2, 2),
(128, 11, 2, 3),
(129, 52, 2, 4),
(130, 50, 3, 1),
(131, 70, 3, 2),
(132, 37, 3, 3),
(133, 69, 3, 4),
(134, 28, 3, 5),
(135, 3, 3, 6),
(136, 44, 3, 7),
(137, 64, 3, 8),
(138, 42, 3, 9),
(139, 60, 3, 10),
(140, 31, 3, 11),
(141, 43, 3, 12),
(142, 58, 3, 13),
(143, 35, 3, 14),
(144, 49, 3, 15),
(145, 50, 3, 16),
(146, 35, 3, 17),
(147, 40, 3, 18),
(148, 10, 3, 19),
(149, 41, 3, 20),
(150, 22, 3, 21),
(151, 45, 3, 22),
(152, 5, 3, 23),
(153, 6, 3, 24),
(154, 72, 3, 25),
(155, 13, 3, 26),
(156, 51, 3, 27),
(157, 16, 3, 28),
(158, 76, 4, 1),
(159, 56, 4, 2),
(160, 38, 4, 3),
(161, 54, 4, 4),
(162, 34, 4, 5),
(163, 67, 4, 6),
(164, 65, 4, 7),
(165, 68, 4, 8),
(166, 19, 4, 9),
(167, 12, 4, 10),
(168, 59, 4, 11),
(169, 14, 4, 12),
(170, 24, 4, 13),
(171, 74, 4, 14),
(172, 75, 4, 15),
(173, 17, 4, 16),
(174, 48, 4, 17),
(175, 109, 4, 18),
(176, 21, 4, 19),
(177, 103, 4, 20),
(178, 105, 4, 21),
(179, 106, 4, 22),
(180, 107, 4, 23),
(181, 111, 4, 24),
(182, 110, 4, 25),
(183, 112, 4, 26),
(184, 104, 4, 27),
(185, 28, 5, 1),
(186, 30, 5, 2),
(187, 61, 5, 3),
(188, 77, 5, 4),
(189, 7, 5, 5),
(190, 66, 5, 6),
(191, 39, 5, 7),
(192, 55, 5, 8),
(193, 9, 5, 9),
(194, 81, 5, 10),
(195, 78, 5, 11),
(196, 44, 6, 1),
(197, 2, 6, 2),
(198, 80, 6, 3),
(199, 32, 1, 1),
(200, 33, 1, 2),
(201, 47, 1, 3),
(202, 71, 1, 4),
(203, 36, 1, 5),
(204, 29, 1, 7),
(205, 15, 1, 8),
(206, 50, 1, 9),
(207, 73, 1, 10),
(208, 23, 1, 11),
(209, 27, 1, 12),
(210, 63, 1, 13),
(211, 62, 1, 14),
(212, 79, 1, 15),
(213, 46, 1, 16),
(214, 83, 1, 17),
(215, 82, 1, 18),
(216, 57, 1, 19),
(217, 26, 1, 20),
(218, 25, 1, 21),
(219, 20, 1, 22),
(220, 4, 1, 23),
(221, 18, 1, 24),
(222, 8, 1, 25),
(223, 20, 2, 1),
(224, 53, 2, 2),
(225, 11, 2, 3),
(226, 52, 2, 4),
(227, 50, 3, 1),
(228, 70, 3, 2),
(229, 37, 3, 3),
(230, 69, 3, 4),
(231, 28, 3, 5),
(232, 3, 3, 6),
(233, 44, 3, 7),
(234, 64, 3, 8),
(235, 42, 3, 9),
(236, 60, 3, 10),
(237, 31, 3, 11),
(238, 43, 3, 12),
(239, 58, 3, 13),
(240, 35, 3, 14),
(241, 49, 3, 15),
(242, 50, 3, 16),
(243, 35, 3, 17),
(244, 40, 3, 18),
(245, 10, 3, 19),
(246, 41, 3, 20),
(247, 22, 3, 21),
(248, 45, 3, 22),
(249, 5, 3, 23),
(250, 6, 3, 24),
(251, 72, 3, 25),
(252, 13, 3, 26),
(253, 51, 3, 27),
(254, 16, 3, 28),
(255, 76, 4, 1),
(256, 56, 4, 2),
(257, 38, 4, 3),
(258, 54, 4, 4),
(259, 34, 4, 5),
(260, 67, 4, 6),
(261, 65, 4, 7),
(262, 68, 4, 8),
(263, 19, 4, 9),
(264, 12, 4, 10),
(265, 59, 4, 11),
(266, 14, 4, 12),
(267, 24, 4, 13),
(268, 74, 4, 14),
(269, 75, 4, 15),
(270, 17, 4, 16),
(271, 48, 4, 17),
(272, 109, 4, 18),
(273, 21, 4, 19),
(274, 103, 4, 20),
(275, 105, 4, 21),
(276, 106, 4, 22),
(277, 107, 4, 23),
(278, 111, 4, 24),
(279, 110, 4, 25),
(280, 112, 4, 26),
(281, 104, 4, 27),
(282, 28, 5, 1),
(283, 30, 5, 2),
(284, 61, 5, 3),
(285, 77, 5, 4),
(286, 7, 5, 5),
(287, 66, 5, 6),
(288, 39, 5, 7),
(289, 55, 5, 8),
(290, 9, 5, 9),
(291, 81, 5, 10),
(292, 78, 5, 11),
(293, 44, 6, 1),
(294, 2, 6, 2),
(295, 80, 6, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `station_code` (`station_code`);

--
-- Indexes for table `station_in_line`
--
ALTER TABLE `station_in_line`
  ADD PRIMARY KEY (`UniqueID`),
  ADD KEY `station_id` (`station_id`),
  ADD KEY `line_id` (`line_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `station_in_line`
--
ALTER TABLE `station_in_line`
  MODIFY `UniqueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `station_in_line`
--
ALTER TABLE `station_in_line`
  ADD CONSTRAINT `station_in_line_ibfk_1` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`),
  ADD CONSTRAINT `station_in_line_ibfk_2` FOREIGN KEY (`line_id`) REFERENCES `line` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
