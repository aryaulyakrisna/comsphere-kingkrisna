-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2025 at 05:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_comsphere`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_between_cities`
--

CREATE TABLE `t_between_cities` (
  `bc_station_id` int(11) NOT NULL,
  `bc_station_name` varchar(60) NOT NULL,
  `bc_station_code` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `island` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_between_cities`
--

INSERT INTO `t_between_cities` (`bc_station_id`, `bc_station_name`, `bc_station_code`, `city`, `island`) VALUES
(56, 'Pasar Senen', 'PSE', 'Jakarta Pusat', 'Jawa'),
(57, 'Surabaya Gubeng', 'SGU', 'Surabaya', 'Jawa'),
(58, 'Solobalapan', 'SLO', 'Solo', 'Jawa'),
(59, 'Gambir', 'GMR', 'Jakarta', 'Jawa'),
(60, 'Aekloba', 'AKB', 'Kabupaten Asahan', 'Sumatera'),
(61, 'Alastua', 'ATA', 'Kota Semarang', 'Jawa'),
(62, 'Araskabu', 'ARB', 'Kabupaten Deli Serdang', 'Sumatera'),
(63, 'Arjasa', 'AJ', 'Kabupaten Jember', 'Jawa'),
(64, 'Arjawinangun', 'AWN', 'Kabupaten Cirebon', 'Jawa'),
(65, 'Babakan', 'BBK', 'Kabupaten Cirebon', 'Jawa'),
(66, 'Babat', 'BBT', 'Kabupaten Lamongan', 'Jawa'),
(67, 'Bajalinggei', 'BJL', 'Kabupaten Simalungun', 'Sumatera'),
(68, 'Bandarhalipah', 'BAP', 'Kabupaten Deli Serdang', 'Sumatera'),
(69, 'Bandartinggi', 'BDT', 'Kota Tebing Tinggi', 'Sumatera'),
(70, 'Bandung', 'BD', 'Kota Bandung', 'Jawa'),
(71, 'Bangil', 'BG', 'Kota Pasuruan', 'Jawa'),
(72, 'Banjar', 'BJR', 'Kota Banjar', 'Jawa'),
(73, 'Banyuwangi Kota', 'BWI', 'Kabupaten Banyuwangi', 'Jawa'),
(74, 'Batang', 'BTG', 'Kota Pekalongan', 'Jawa'),
(75, 'Batangkuis', 'BTK', 'Kabupaten Deli Serdang', 'Sumatera'),
(76, 'Baturaja', 'BTA', 'Baturaja', 'Sumatera'),
(77, 'Batutulis', 'BTT', 'Kabupaten Bogor', 'Jawa'),
(78, 'Bekasi', 'BKS', 'Kota Bekasi', 'Jawa'),
(79, 'Bekri', 'BKI', 'Kabupaten Lampung Tengah', 'Sumatera'),
(80, 'Blambangan Umpu', 'BBU', 'Kabupaten Way Kanan', 'Sumatera'),
(81, 'Blitar', 'BL', 'Kota Blitar', 'Jawa'),
(82, 'Bogor', 'BOO', 'Kota Bogor', 'Jawa'),
(83, 'Bogor Paledang', 'BOP', 'Kota Bogor', 'Jawa'),
(84, 'Bojonegoro', 'BJ', 'Kabupaten Bojonegoro', 'Jawa'),
(85, 'Brebes', 'BB', 'Kabupaten Brebes', 'Jawa'),
(86, 'Brumbung', 'BBG', 'Kabupaten Demak', 'Jawa'),
(87, 'Bumiayu', 'BMA', 'Kabupaten Brebes', 'Jawa'),
(88, 'Caruban', 'CRB', 'Kota Madiun', 'Jawa'),
(89, 'Cempaka', 'CEP', 'Kabupaten Lampung Utara', 'Sumatera'),
(90, 'Cepu', 'CU', 'Kabupaten Blora', 'Jawa'),
(91, 'Ciamis', 'CI', 'Kabupaten Ciamis', 'Jawa'),
(92, 'Cibadak', 'CBD', 'Kota Sukabumi', 'Jawa'),
(93, 'Cibatu', 'CB', 'Kabupaten Garut', 'Jawa'),
(94, 'Cicalengka', 'CCL', 'Kabupaten Bandung', 'Jawa'),
(95, 'Cicurug', 'CCR', 'Kota Sukabumi', 'Jawa'),
(96, 'Cigombong', 'CGB', 'Kabupaten Bogor', 'Jawa'),
(97, 'Cikampek', 'CKP', 'Kabupaten Karawang', 'Jawa'),
(98, 'Cikarang', 'CKR', 'Kabupaten Bekasi', 'Jawa'),
(99, 'Cilacap', 'CP', 'Kabupaten Cilacap', 'Jawa'),
(100, 'Ciledug', 'CLD', 'Kabupaten Cirebon', 'Jawa'),
(101, 'Cilegon', 'CLG', 'Kota Cilegon', 'Jawa'),
(102, 'Cimahi', 'CMI', 'Kota Cimahi', 'Jawa'),
(103, 'Cimparuh', 'CPH', 'Kota Pariaman', 'Sumatera'),
(104, 'Cipeundeuy', 'CPD', 'Kabupaten Garut', 'Jawa'),
(105, 'Cirebon', 'CN', 'Kota Cirebon', 'Jawa'),
(106, 'Cirebon Prujakan', 'CNP', 'Kota Cirebon', 'Jawa'),
(107, 'Cisaat', 'CSA', 'Kota Sukabumi', 'Jawa'),
(108, 'Curahmalang', 'CRM', 'Kabupaten Jombang', 'Jawa'),
(109, 'Dolokmerangir', 'DMR', 'Kabupaten Simalungun', 'Sumatera');

-- --------------------------------------------------------

--
-- Table structure for table `t_chat`
--

CREATE TABLE `t_chat` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`chat`)),
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_cl`
--

CREATE TABLE `t_cl` (
  `cl_id` int(11) NOT NULL,
  `cl_name` varchar(60) NOT NULL,
  `cl_code` varchar(60) NOT NULL,
  `cl_line_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_cl`
--

INSERT INTO `t_cl` (`cl_id`, `cl_name`, `cl_code`, `cl_line_code`) VALUES
(229, 'Palur', 'PLR-YSO', 'YSO'),
(230, 'Solo Jebres', 'SJB-YSO', 'YSO'),
(231, 'Solo Balapan', 'SLO-YSO', 'YSO'),
(232, 'Purwosari', 'PWS-YSO', 'YSO'),
(233, 'Gawok', 'GWK-YSO', 'YSO'),
(234, 'Delanggu', 'DLG-YSO', 'YSO'),
(235, 'Ceper', 'CPR-YSO', 'YSO'),
(236, 'Klaten', 'KTN-YSO', 'YSO'),
(237, 'Srowot', 'SWT-YSO', 'YSO'),
(238, 'Brambanan', 'BRN-YSO', 'YSO'),
(239, 'Maguwo', 'MGW-YSO', 'YSO'),
(240, 'Lempuyangan', 'LPN-YSO', 'YSO'),
(241, 'Yogyakarta', 'YK-YSO', 'YSO'),
(242, 'Patukan', 'PTK-YSO', 'YSO'),
(243, 'Rewulu', 'RWL-YSO', 'YSO'),
(244, 'Sentolo', 'STL-YSO', 'YSO'),
(245, 'Wates', 'WTS-YSO', 'YSO'),
(246, 'Kedundang', 'KDG-YSO', 'YSO'),
(247, 'Wojo', 'WOJ-YSO', 'YSO'),
(248, 'Jenar', 'JNR-YSO', 'YSO'),
(249, 'Kutoarjo', 'KTA-YSO', 'YSO'),
(250, 'Jakarta Kota', 'JAKK-RED', 'RED'),
(251, 'Jayakarta', 'JAYK-RED', 'RED'),
(252, 'Mangga Besar', 'MGB-RED', 'RED'),
(253, 'Sawah Besar', 'SW-RED', 'RED'),
(254, 'Juanda', 'JUA-RED', 'RED'),
(255, 'Gondangdia', 'GDD-RED', 'RED'),
(256, 'Cikini', 'CKI-RED', 'RED'),
(257, 'Manggarai', 'MRI-RED', 'RED'),
(258, 'Tebet', 'TBT-RED', 'RED'),
(259, 'Cawang', 'CWG-RED', 'RED'),
(260, 'Duren Kalibata', 'DRN-RED', 'RED'),
(261, 'Pasar Minggu Baru', 'PMB-RED', 'RED'),
(262, 'Pasar Minggu', 'PSM-RED', 'RED'),
(263, 'Tanjung Barat', 'TNB-RED', 'RED'),
(264, 'Lenteng Agung', 'LNA-RED', 'RED'),
(265, 'Univ. Pancasila', 'UNP-RED', 'RED'),
(266, 'Univ. Indonesia', 'UI-RED', 'RED'),
(267, 'Pondok Cina', 'POC-RED', 'RED'),
(268, 'Depok Baru', 'DPB-RED', 'RED'),
(269, 'Depok', 'DP-RED', 'RED'),
(270, 'Citayam', 'CTA-RED', 'RED'),
(271, 'Bojong Gede', 'BJD-RED', 'RED'),
(272, 'Cilebut', 'CLT-RED', 'RED'),
(273, 'Bogor', 'BOO-RED', 'RED'),
(274, 'Cibinong', 'CBI-RED', 'RED'),
(275, 'Pondok Rajeg', 'PRJ-RED', 'RED'),
(276, 'Nambo', 'NMB-RED', 'RED'),
(277, 'Jakarta Kota', 'JAKK-BLU', 'BLU'),
(278, 'Jayakarta', 'JAYK-BLU', 'BLU'),
(279, 'Mangga Besar', 'MGB-BLU', 'BLU'),
(280, 'Sawah Besar', 'SW-BLU', 'BLU'),
(281, 'Juanda', 'JUA-BLU', 'BLU'),
(282, 'Gondangdia', 'GDD-BLU', 'BLU'),
(283, 'Cikini', 'CKI-BLU', 'BLU'),
(284, 'Manggarai', 'MRI-BLU', 'BLU'),
(285, 'Matraman', 'MTM-BLU', 'BLU'),
(286, 'Jatinegara', 'JNG-BLU', 'BLU'),
(287, 'Klender', 'KLD-BLU', 'BLU'),
(288, 'Buaran', 'BUA-BLU', 'BLU'),
(289, 'Klender Baru', 'KLB-BLU', 'BLU'),
(290, 'Cakung', 'CUK-BLU', 'BLU'),
(291, 'Kranji', 'KRJ-BLU', 'BLU'),
(292, 'Bekasi', 'BKS-BLU', 'BLU'),
(293, 'Tambun', 'TBN-BLU', 'BLU'),
(294, 'Cibitung', 'CBT-BLU', 'BLU'),
(295, 'Metland Telaga Murni', 'MTM2-BLU', 'BLU'),
(296, 'Cikarang', 'CKR-BLU', 'BLU'),
(297, 'Tanah Abang', 'TAB-GRN', 'GRN'),
(298, 'Palmerah', 'PLM-GRN', 'GRN'),
(299, 'Kebayoran', 'KBY-GRN', 'GRN'),
(300, 'Pondok Ranji', 'POI-GRN', 'GRN'),
(301, 'Jurangmangu', 'JMG-GRN', 'GRN'),
(302, 'Sudimara', 'SDM-GRN', 'GRN'),
(303, 'Rawabuntu', 'RBU-GRN', 'GRN'),
(304, 'Serpong', 'SRP-GRN', 'GRN'),
(305, 'Cisauk', 'CSK-GRN', 'GRN'),
(306, 'Cicayur', 'CCR-GRN', 'GRN'),
(307, 'Parung Panjang', 'PRP-GRN', 'GRN'),
(308, 'Cilejit', 'CJT-GRN', 'GRN'),
(309, 'Daru', 'DRU-GRN', 'GRN'),
(310, 'Tenjo', 'TJO-GRN', 'GRN'),
(311, 'Tigaraksa', 'TGS-GRN', 'GRN'),
(312, 'Cikoya', 'CYA-GRN', 'GRN'),
(313, 'Maja', 'MJA-GRN', 'GRN'),
(314, 'Rangkasbitung', 'RKB-GRN', 'GRN'),
(315, 'Duri', 'DU-BRN', 'BRN'),
(316, 'Grogol', 'GRG-BRN', 'BRN'),
(317, 'Pesing', 'PSG-BRN', 'BRN'),
(318, 'Taman Kota', 'TMT-BRN', 'BRN'),
(319, 'Kembangan', 'KMB-BRN', 'BRN'),
(320, 'Bojo Indah', 'BJI-BRN', 'BRN'),
(321, 'Kali Deres', 'KDS-BRN', 'BRN'),
(322, 'Batu Ceper', 'BPR-BRN', 'BRN'),
(323, 'Tanah Tinggi', 'TTI-BRN', 'BRN'),
(324, 'Tangerang', 'TNG-BRN', 'BRN'),
(325, 'Jakarta Kota', 'JAKK-PNK', 'PNK'),
(326, 'Kampung Bandan', 'KPB-PNK', 'PNK'),
(327, 'Ancol', 'ANC-PNK', 'PNK'),
(328, 'Tanjung Priok', 'TPK-PNK', 'PNK');

-- --------------------------------------------------------

--
-- Table structure for table `t_cl_line`
--

CREATE TABLE `t_cl_line` (
  `cl_line_id` int(11) NOT NULL,
  `cl_line_name` varchar(60) NOT NULL,
  `cl_line_code` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `island` varchar(60) NOT NULL,
  `crossed_stations` longtext NOT NULL,
  `transit_stations` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_cl_line`
--

INSERT INTO `t_cl_line` (`cl_line_id`, `cl_line_name`, `cl_line_code`, `city`, `island`, `crossed_stations`, `transit_stations`) VALUES
(1, 'Lin Bogor', 'RED', 'Bogor', 'Jawa', 'Jakarta Kota, Jayakarta, Mangga Besar, Sawah Besar, Juanda, Gondangdia, Cikini, Manggarai, Tebet, Cawang, Duren Kalibata, Pasar Minggu Baru, Pasar Minggu, Tanjung Barat, Lenteng Agung, Univ. Pancasila, Pondok Cina, Depok Baru, Depok, Citayam, Bojong Ge Depok, Tanah Baru, Universitas Indonesia, Cilebut, Bogor', 'Jakarta Kota, Manggarai, Depok, Bogor'),
(2, 'Lin Cikarang/Bekasi', 'BLU', 'Bekasi', 'Jawa', 'Jakarta Kota, Kampung Bandan, Rajawali, Kemayoran, Pasar Senen, Senen, Jatinegara, Matraman, Cipinang, Klender Baru, Buaran, Betawi, Cakung, Kranji, Bekasi Timur, Bekasi, Tambun, Cibitung, Cikarang', 'Jakarta Kota, Jatinegara, Bekasi, Cikarang'),
(3, 'Lin Rangkasbitung', 'GRN', 'Lebak', 'Jawa', 'Tanah Abang, Palmerah, Kebayoran, Pondok Ranji, Jurang Mangu, Sudimara, Rawabuntu, Serpong, Parung, Parung Panjang, Cilejit, Tigaraksa, Mauk, Balaraja, Cikande, Serang, Rangkasbitung', 'Tanah Abang, Serpong, Rangkasbitung'),
(4, 'Lin Tangerang', 'BRN', 'Tangerang', 'Jawa', 'Duri, Grogol, Pesing, Taman Kota, Bojong Indah, Rawa Buaya, Kalideres, Poris, Batu Ceper, Tanah Tinggi, Tangerang', 'Duri, Tangerang'),
(5, 'Lin Tanjung Priok', 'PNK', 'Jakarta Utara', 'Jawa', 'Jakarta Kota, Kampung Bandan, Ancol, Tanjung Priok', 'Jakarta Kota, Tanjung Priok'),
(6, 'Lin Yogyakarta-Solo', 'YSO', 'Yogyakarta', 'Jawa', 'Yogyakarta, Maguwoharjo, Brambanan, Srowot, Klaten, Ceper, Delanggu, Gawok, Purwosari, Solo Balapan, Solo Jebres', 'Yogyakarta, Solo Balapan');

-- --------------------------------------------------------

--
-- Table structure for table `t_local`
--

CREATE TABLE `t_local` (
  `local_station_id` int(11) NOT NULL,
  `local_station_name` varchar(60) NOT NULL,
  `local_station_code` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `island` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_local`
--

INSERT INTO `t_local` (`local_station_id`, `local_station_name`, `local_station_code`, `city`, `island`) VALUES
(1, 'Alastua', 'ATA', 'Kota Semarang', 'Jawa'),
(2, 'Araskabu', 'ARB', 'Kabupaten Deli Serdang', 'Sumatera'),
(3, 'Argopuro', 'AGO', 'Kabupaten Banyuwangi', 'Jawa'),
(4, 'Arjasa', 'AJ', 'Kabupaten Jember', 'Jawa'),
(5, 'Babat', 'BBT', 'Kabupaten Lamongan', 'Jawa'),
(6, 'Bajalinggei', 'BJL', 'Kabupaten Simalungun', 'Sumatera'),
(7, 'Bandara Internasional Minangkabau', 'BIM', 'Kota Padang', 'Sumatera'),
(8, 'Bandarhalipah', 'BAP', 'Kabupaten Deli Serdang', 'Sumatera'),
(9, 'Bandartinggi', 'BDT', 'Kota Tebing Tinggi', 'Sumatera'),
(10, 'Bandung', 'BD', 'Kota Bandung', 'Jawa'),
(11, 'Bangil', 'BG', 'Kota Pasuruan', 'Jawa'),
(12, 'Banjar Kemantren', 'BJK', 'Sidoarjo', 'Jawa'),
(13, 'Banyuwangi Kota', 'BWI', 'Kabupaten Banyuwangi', 'Jawa'),
(14, 'Batang', 'BTG', 'Kota Pekalongan', 'Jawa'),
(15, 'Batangkuis', 'BTK', 'Kabupaten Deli Serdang', 'Sumatera'),
(16, 'Batutulis', 'BTT', 'Kabupaten Bogor', 'Jawa'),
(17, 'Bowerno', 'BWO', 'Kabupaten Bojonegoro', 'Jawa'),
(18, 'Brambanan', 'BBN', 'Kota Yogyakarta', 'Jawa'),
(19, 'Brumbung', 'BBG', 'Kabupaten Demak', 'Jawa'),
(20, 'Buduran', 'BDR', 'Sidoarjo', 'Jawa'),
(21, 'Bungkaik', 'BKH', 'Kabupaten Aceh Utara', 'Sumatera'),
(22, 'Candimas', 'CMS', 'Kotabumi', 'Sumatera'),
(23, 'Caruban', 'CRB', 'Kota Madiun', 'Jawa'),
(24, 'Catang', 'CT', 'Kota Serang', 'Jawa'),
(25, 'Cepu', 'CU', 'Kabupaten Blora', 'Jawa'),
(26, 'Cerme', 'CME', 'Kabupaten Gresik', 'Jawa'),
(27, 'Cianjur', 'CJ', 'Kabupaten Cianjur', 'Jawa'),
(28, 'Cibatu', 'CB', 'Kabupaten Garut', 'Jawa'),
(29, 'Cibeber', 'CBB', 'Kabupaten Cianjur', 'Jawa'),
(30, 'Cibungur', 'CBR', 'Kabupaten Purwakarta', 'Jawa'),
(31, 'Cicalengka', 'CCL', 'Kabupaten Bandung', 'Jawa'),
(32, 'Ciganea', 'CA', 'Kabupaten Purwakarta', 'Jawa'),
(33, 'Cikadongdong', 'CD', 'Kabupaten Bandung Barat', 'Jawa'),
(34, 'Cikampek', 'CKP', 'Karawang', 'Jawa'),
(35, 'Cikarang', 'CKR', 'Kabupaten Bekasi', 'Jawa'),
(36, 'Cikeusal', 'CKL', 'Kota Serang', 'Jawa'),
(37, 'Cikudapateuh', 'CTH', 'Kota Bandung', 'Jawa'),
(38, 'Cilame', 'CLE', 'Kabupaten Bandung Barat', 'Jawa'),
(39, 'Cilegon', 'CLG', 'Kota Cilegon', 'Jawa'),
(40, 'Cimahi', 'CMI', 'Kota Cimahi', 'Jawa'),
(41, 'Adi Soemarmo', 'SMO', 'Kabupaten Boyolali', 'Jawa'),
(42, 'Air Tawar', 'ATR', 'Kota Padang', 'Sumatera');

-- --------------------------------------------------------

--
-- Table structure for table `t_lrt`
--

CREATE TABLE `t_lrt` (
  `lrt_id` int(11) NOT NULL,
  `lrt_name` varchar(60) NOT NULL,
  `lrt_code` varchar(60) NOT NULL,
  `lrt_line_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_lrt`
--

INSERT INTO `t_lrt` (`lrt_id`, `lrt_name`, `lrt_code`, `lrt_line_code`) VALUES
(1, 'Bandara', 'PLB-BDR', 'LRT-PLB'),
(2, 'Asrama Haji', 'PLB-AHJ', 'LRT-PLB'),
(3, 'Punti Kayu', 'PLB-PTY', 'LRT-PLB'),
(4, 'RSUD', 'PLB-RSD', 'LRT-PLB'),
(5, 'Garuda Dempo', 'PLB-GDP', 'LRT-PLB'),
(6, 'Demang', 'PLB-DMG', 'LRT-PLB'),
(7, 'Bumi Sriwijaya', 'PLB-BSJ', 'LRT-PLB'),
(8, 'Dishub', 'PLB-DSH', 'LRT-PLB'),
(9, 'Cinde', 'PLB-CND', 'LRT-PLB'),
(10, 'Ampera', 'PLB-AMP', 'LRT-PLB'),
(11, 'Polrestabes', 'PLB-PRS', 'LRT-PLB'),
(12, 'Jakabaring', 'PLB-JKB', 'LRT-PLB'),
(13, 'DJKA', 'PLB-DJK', 'LRT-PLB'),
(21, 'Dukuh Atas BNI', 'JBD-DAA', 'LRT-JBD-CB'),
(22, 'Setiabudi', 'JBD-STB', 'LRT-JBD-CB'),
(23, 'Rasuna Said', 'JBD-RSS', 'LRT-JBD-CB'),
(24, 'Kuningan', 'JBD-KNG', 'LRT-JBD-CB'),
(25, 'Pancoran Bank BJB', 'JBD-PCN', 'LRT-JBD-CB'),
(26, 'Cikoko', 'JBD-CKK', 'LRT-JBD-CB'),
(27, 'Ciliwung', 'JBD-CLW', 'LRT-JBD-CB'),
(28, 'Cawang', 'JBD-CWG-CB', 'LRT-JBD-CB'),
(29, 'TMII', 'JBD-TMI', 'LRT-JBD-CB'),
(30, 'Kampung Rambutan', 'JBD-KRB', 'LRT-JBD-CB'),
(31, 'Ciracas', 'JBD-CRC', 'LRT-JBD-CB'),
(32, 'Harjamukti', 'JBD-HJM', 'LRT-JBD-CB'),
(33, 'Cawang', 'JBD-CWG-BK', 'LRT-JBD-BK'),
(34, 'Halim', 'JBD-HLM', 'LRT-JBD-BK'),
(35, 'Jati Bening Baru', 'JBD-JBB', 'LRT-JBD-BK'),
(36, 'Cikunir 1', 'JBD-CK1', 'LRT-JBD-BK'),
(37, 'Cikunir 2', 'JBD-CK2', 'LRT-JBD-BK'),
(38, 'Bekasi Barat', 'JBD-BKB', 'LRT-JBD-BK'),
(39, 'Jati Mulya', 'JBD-JTM', 'LRT-JBD-BK');

-- --------------------------------------------------------

--
-- Table structure for table `t_lrt_line`
--

CREATE TABLE `t_lrt_line` (
  `lrt_line_id` int(11) NOT NULL,
  `lrt_line_name` varchar(60) NOT NULL,
  `lrt_line_code` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `island` varchar(60) NOT NULL,
  `crossed_stations` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_lrt_line`
--

INSERT INTO `t_lrt_line` (`lrt_line_id`, `lrt_line_name`, `lrt_line_code`, `city`, `island`, `crossed_stations`) VALUES
(1, 'LRT Palembang', 'LRT-PLB', 'Palembang', 'Sumatera', 'Bandara SMB II, Asrama Haji, Punting Kayu, RSUD, Garuda Dempo, Demang, Bumi Sriwijaya, Dishub Kominfo Prov., Pasar Cinde, Terpadu Jembatan Ampera, Gubernur Bestari - Polresta, Jakabaring, DJKA'),
(2, 'LRT Jabodebek Cibubur Line', 'LRT-JBD-CB', 'Jakarta', 'Jawa', 'Dukuh Atas, Setiabudi, Rasuna Said, Kuningan, Pancoran, Cikoko, Cililitan, Cawang, TMII, Kampung Rambutan, Ciracas, Harjamukti'),
(3, 'LRT Jabodebek Bekasi Line', 'LRT-JBD-BK', 'Jakarta', 'Jawa', 'Dukuh Atas, Setiabudi, Rasuna Said, Kuningan, Pancoran, Cikoko, Cililitan, Cawang, TMII, Kampung Rambutan, Ciracas, Harjamukti, Cikunir 1, Cikunir 2, Bekasi Barat, Jati Mulya');

-- --------------------------------------------------------

--
-- Table structure for table `t_otp`
--

CREATE TABLE `t_otp` (
  `otp_id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_plane`
--

CREATE TABLE `t_plane` (
  `pl_station_id` int(11) NOT NULL,
  `pl_station_name` varchar(60) NOT NULL,
  `pl_station_code` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `island` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_plane`
--

INSERT INTO `t_plane` (`pl_station_id`, `pl_station_name`, `pl_station_code`, `city`, `island`) VALUES
(1, 'Manggarai', 'MGR', 'Jakarta', 'Jawa'),
(2, 'Sudirman Baru', 'SDB', 'Jakarta', 'Jawa'),
(3, 'Duri', 'DRI', 'Jakarta', 'Jawa'),
(4, 'Rawabuaya', 'RWB', 'Jakarta', 'Jawa'),
(5, 'Batu Ceper', 'BTP', 'Tangerang', 'Jawa'),
(6, 'Soekarno-Hatta', 'CGK', 'Tangerang', 'Jawa');

-- --------------------------------------------------------

--
-- Table structure for table `t_seat`
--

CREATE TABLE `t_seat` (
  `seat_id` int(11) NOT NULL,
  `train_name` varchar(60) NOT NULL,
  `train_code` varchar(60) NOT NULL,
  `seat_code` varchar(60) NOT NULL,
  `status` enum('booked','unbooked') NOT NULL,
  `amount` int(100) NOT NULL,
  `start_stat_name` varchar(60) NOT NULL,
  `finish_stat_name` varchar(60) NOT NULL,
  `starting_city` varchar(60) NOT NULL,
  `destination_city` varchar(60) NOT NULL,
  `train_type` enum('nonlocal','local','plane') NOT NULL,
  `schedule` datetime NOT NULL,
  `seat_type` enum('ekonomi','bisnis') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_seat`
--

INSERT INTO `t_seat` (`seat_id`, `train_name`, `train_code`, `seat_code`, `status`, `amount`, `start_stat_name`, `finish_stat_name`, `starting_city`, `destination_city`, `train_type`, `schedule`, `seat_type`) VALUES
(696, 'Airport Express 001', 'MGR-CGK-001', 'A1', 'unbooked', 183810, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(697, 'Airport Express 001', 'MGR-CGK-001', 'A2', 'unbooked', 114592, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(698, 'Airport Express 001', 'MGR-CGK-001', 'A3', 'unbooked', 103278, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(699, 'Airport Express 001', 'MGR-CGK-001', 'A4', 'unbooked', 197196, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(700, 'Airport Express 001', 'MGR-CGK-001', 'A5', 'unbooked', 136048, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(701, 'Airport Express 001', 'MGR-CGK-001', 'A6', 'unbooked', 132098, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(702, 'Airport Express 001', 'MGR-CGK-001', 'A7', 'unbooked', 129256, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(703, 'Airport Express 001', 'MGR-CGK-001', 'A8', 'unbooked', 118289, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(704, 'Airport Express 001', 'MGR-CGK-001', 'A9', 'unbooked', 196530, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(705, 'Airport Express 001', 'MGR-CGK-001', 'A10', 'unbooked', 113434, 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 'ekonomi'),
(706, 'Airport Express 002', 'SDB-CGK-002', 'A1', 'unbooked', 188696, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(707, 'Airport Express 002', 'SDB-CGK-002', 'A2', 'unbooked', 197080, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(708, 'Airport Express 002', 'SDB-CGK-002', 'A3', 'unbooked', 171482, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(709, 'Airport Express 002', 'SDB-CGK-002', 'A4', 'unbooked', 111395, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(710, 'Airport Express 002', 'SDB-CGK-002', 'A5', 'unbooked', 177397, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(711, 'Airport Express 002', 'SDB-CGK-002', 'A6', 'unbooked', 155302, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(712, 'Airport Express 002', 'SDB-CGK-002', 'A7', 'unbooked', 104165, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(713, 'Airport Express 002', 'SDB-CGK-002', 'A8', 'unbooked', 103905, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(714, 'Airport Express 002', 'SDB-CGK-002', 'A9', 'unbooked', 112280, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(715, 'Airport Express 002', 'SDB-CGK-002', 'A10', 'unbooked', 128657, 'Sudirman Baru', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:30:00', 'ekonomi'),
(716, 'Airport Express 003', 'DRI-CGK-003', 'A1', 'unbooked', 130495, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(717, 'Airport Express 003', 'DRI-CGK-003', 'A2', 'unbooked', 166237, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(718, 'Airport Express 003', 'DRI-CGK-003', 'A3', 'unbooked', 178907, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(719, 'Airport Express 003', 'DRI-CGK-003', 'A4', 'unbooked', 103478, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(720, 'Airport Express 003', 'DRI-CGK-003', 'A5', 'unbooked', 173563, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(721, 'Airport Express 003', 'DRI-CGK-003', 'A6', 'unbooked', 126062, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(722, 'Airport Express 003', 'DRI-CGK-003', 'A7', 'unbooked', 193850, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(723, 'Airport Express 003', 'DRI-CGK-003', 'A8', 'unbooked', 185181, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(724, 'Airport Express 003', 'DRI-CGK-003', 'A9', 'unbooked', 191924, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(725, 'Airport Express 003', 'DRI-CGK-003', 'A10', 'unbooked', 171426, 'Duri', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:00:00', 'ekonomi'),
(726, 'Airport Express 004', 'RWB-CGK-004', 'A1', 'unbooked', 154987, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(727, 'Airport Express 004', 'RWB-CGK-004', 'A2', 'unbooked', 128893, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(728, 'Airport Express 004', 'RWB-CGK-004', 'A3', 'unbooked', 158878, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(729, 'Airport Express 004', 'RWB-CGK-004', 'A4', 'unbooked', 177236, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(730, 'Airport Express 004', 'RWB-CGK-004', 'A5', 'unbooked', 136463, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(731, 'Airport Express 004', 'RWB-CGK-004', 'A6', 'unbooked', 100851, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(732, 'Airport Express 004', 'RWB-CGK-004', 'A7', 'unbooked', 199458, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(733, 'Airport Express 004', 'RWB-CGK-004', 'A8', 'unbooked', 120926, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(734, 'Airport Express 004', 'RWB-CGK-004', 'A9', 'unbooked', 191506, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(735, 'Airport Express 004', 'RWB-CGK-004', 'A10', 'unbooked', 155392, 'Rawabuaya', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 07:30:00', 'ekonomi'),
(736, 'Airport Express 005', 'BTP-CGK-005', 'A1', 'unbooked', 144597, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(737, 'Airport Express 005', 'BTP-CGK-005', 'A2', 'unbooked', 136421, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(738, 'Airport Express 005', 'BTP-CGK-005', 'A3', 'unbooked', 120379, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(739, 'Airport Express 005', 'BTP-CGK-005', 'A4', 'unbooked', 128221, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(740, 'Airport Express 005', 'BTP-CGK-005', 'A5', 'unbooked', 144118, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(741, 'Airport Express 005', 'BTP-CGK-005', 'A6', 'unbooked', 113396, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(742, 'Airport Express 005', 'BTP-CGK-005', 'A7', 'unbooked', 112156, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(743, 'Airport Express 005', 'BTP-CGK-005', 'A8', 'unbooked', 149797, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(744, 'Airport Express 005', 'BTP-CGK-005', 'A9', 'unbooked', 112676, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(745, 'Airport Express 005', 'BTP-CGK-005', 'A10', 'unbooked', 147052, 'Batu Ceper', 'Soekarno-Hatta', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 08:00:00', 'ekonomi'),
(746, 'Airport Express 006', 'CGK-MGR-006', 'A1', 'unbooked', 145082, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(747, 'Airport Express 006', 'CGK-MGR-006', 'A2', 'unbooked', 179131, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(748, 'Airport Express 006', 'CGK-MGR-006', 'A3', 'unbooked', 134671, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(749, 'Airport Express 006', 'CGK-MGR-006', 'A4', 'unbooked', 105695, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(750, 'Airport Express 006', 'CGK-MGR-006', 'A5', 'unbooked', 195647, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(751, 'Airport Express 006', 'CGK-MGR-006', 'A6', 'unbooked', 160217, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(752, 'Airport Express 006', 'CGK-MGR-006', 'A7', 'unbooked', 170284, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(753, 'Airport Express 006', 'CGK-MGR-006', 'A8', 'unbooked', 116361, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(754, 'Airport Express 006', 'CGK-MGR-006', 'A9', 'unbooked', 149615, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(755, 'Airport Express 006', 'CGK-MGR-006', 'A10', 'unbooked', 110328, 'Soekarno-Hatta', 'Manggarai', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 08:30:00', 'ekonomi'),
(756, 'Airport Express 007', 'CGK-SDB-007', 'A1', 'unbooked', 172357, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(757, 'Airport Express 007', 'CGK-SDB-007', 'A2', 'unbooked', 138427, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(758, 'Airport Express 007', 'CGK-SDB-007', 'A3', 'unbooked', 182397, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(759, 'Airport Express 007', 'CGK-SDB-007', 'A4', 'unbooked', 181070, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(760, 'Airport Express 007', 'CGK-SDB-007', 'A5', 'unbooked', 147400, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(761, 'Airport Express 007', 'CGK-SDB-007', 'A6', 'unbooked', 175674, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(762, 'Airport Express 007', 'CGK-SDB-007', 'A7', 'unbooked', 125203, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(763, 'Airport Express 007', 'CGK-SDB-007', 'A8', 'unbooked', 192349, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(764, 'Airport Express 007', 'CGK-SDB-007', 'A9', 'unbooked', 109116, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(765, 'Airport Express 007', 'CGK-SDB-007', 'A10', 'unbooked', 106006, 'Soekarno-Hatta', 'Sudirman Baru', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:00:00', 'ekonomi'),
(766, 'Airport Express 008', 'CGK-DRI-008', 'A1', 'unbooked', 186673, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(767, 'Airport Express 008', 'CGK-DRI-008', 'A2', 'unbooked', 129871, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(768, 'Airport Express 008', 'CGK-DRI-008', 'A3', 'unbooked', 137930, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(769, 'Airport Express 008', 'CGK-DRI-008', 'A4', 'unbooked', 110458, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(770, 'Airport Express 008', 'CGK-DRI-008', 'A5', 'unbooked', 130512, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(771, 'Airport Express 008', 'CGK-DRI-008', 'A6', 'unbooked', 113238, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(772, 'Airport Express 008', 'CGK-DRI-008', 'A7', 'unbooked', 149823, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(773, 'Airport Express 008', 'CGK-DRI-008', 'A8', 'unbooked', 136434, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(774, 'Airport Express 008', 'CGK-DRI-008', 'A9', 'unbooked', 159429, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(775, 'Airport Express 008', 'CGK-DRI-008', 'A10', 'unbooked', 183320, 'Soekarno-Hatta', 'Duri', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 09:30:00', 'ekonomi'),
(776, 'Airport Express 009', 'CGK-RWB-009', 'A1', 'unbooked', 147819, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(777, 'Airport Express 009', 'CGK-RWB-009', 'A2', 'unbooked', 121319, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(778, 'Airport Express 009', 'CGK-RWB-009', 'A3', 'unbooked', 148520, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(779, 'Airport Express 009', 'CGK-RWB-009', 'A4', 'unbooked', 146566, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(780, 'Airport Express 009', 'CGK-RWB-009', 'A5', 'unbooked', 127460, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(781, 'Airport Express 009', 'CGK-RWB-009', 'A6', 'unbooked', 187841, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(782, 'Airport Express 009', 'CGK-RWB-009', 'A7', 'unbooked', 134993, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(783, 'Airport Express 009', 'CGK-RWB-009', 'A8', 'unbooked', 191988, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(784, 'Airport Express 009', 'CGK-RWB-009', 'A9', 'unbooked', 189593, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(785, 'Airport Express 009', 'CGK-RWB-009', 'A10', 'unbooked', 184939, 'Soekarno-Hatta', 'Rawabuaya', 'Tangerang', 'Jakarta', 'plane', '2025-10-04 10:00:00', 'ekonomi'),
(786, 'Airport Express 010', 'CGK-BTP-010', 'A1', 'unbooked', 109358, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(787, 'Airport Express 010', 'CGK-BTP-010', 'A2', 'unbooked', 179840, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(788, 'Airport Express 010', 'CGK-BTP-010', 'A3', 'unbooked', 183227, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(789, 'Airport Express 010', 'CGK-BTP-010', 'A4', 'unbooked', 122431, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(790, 'Airport Express 010', 'CGK-BTP-010', 'A5', 'unbooked', 170010, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(791, 'Airport Express 010', 'CGK-BTP-010', 'A6', 'unbooked', 195568, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(792, 'Airport Express 010', 'CGK-BTP-010', 'A7', 'unbooked', 132087, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(793, 'Airport Express 010', 'CGK-BTP-010', 'A8', 'unbooked', 121417, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(794, 'Airport Express 010', 'CGK-BTP-010', 'A9', 'unbooked', 160589, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(795, 'Airport Express 010', 'CGK-BTP-010', 'A10', 'unbooked', 149735, 'Soekarno-Hatta', 'Batu Ceper', 'Tangerang', 'Tangerang', 'plane', '2025-10-04 10:30:00', 'ekonomi'),
(846, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A1', 'unbooked', 125000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(847, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A2', 'unbooked', 178000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(848, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A3', 'unbooked', 142000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(849, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A4', 'unbooked', 109000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(850, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A5', 'unbooked', 167000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(851, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A6', 'unbooked', 134000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(852, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A7', 'unbooked', 156000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(853, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A8', 'unbooked', 118000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(854, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A9', 'unbooked', 189000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(855, 'Local Trans 001', 'LOC-ATA-ARB-001', 'A10', 'unbooked', 147000, 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'local', '2025-10-04 07:00:00', 'ekonomi'),
(856, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A1', 'unbooked', 132000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(857, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A2', 'unbooked', 165000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(858, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A3', 'unbooked', 119000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(859, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A4', 'unbooked', 178000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(860, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A5', 'unbooked', 143000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(861, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A6', 'unbooked', 156000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(862, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A7', 'unbooked', 121000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(863, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A8', 'unbooked', 169000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(864, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A9', 'unbooked', 138000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(865, 'Local Trans 002', 'LOC-AGO-AJ-002', 'A10', 'unbooked', 182000, 'Aropuro', 'Arjasa', 'Kabupaten Banyuwangi', 'Kabupaten Jember', 'local', '2025-10-04 09:00:00', 'ekonomi'),
(866, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A1', 'unbooked', 115000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(867, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A2', 'unbooked', 164000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(868, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A3', 'unbooked', 139000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(869, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A4', 'unbooked', 172000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(870, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A5', 'unbooked', 126000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(871, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A6', 'unbooked', 158000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(872, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A7', 'unbooked', 145000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(873, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A8', 'unbooked', 133000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(874, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A9', 'unbooked', 197000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(875, 'Local Trans 003', 'LOC-BBT-BWO-003', 'A10', 'unbooked', 108000, 'Bajat', 'Bojonegoro', 'Kabupaten Lamongan', 'Kabupaten Bojonegoro', 'local', '2025-10-04 11:00:00', 'ekonomi'),
(876, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A1', 'unbooked', 141000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(877, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A2', 'unbooked', 152000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(878, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A3', 'unbooked', 127000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(879, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A4', 'unbooked', 168000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(880, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A5', 'unbooked', 134000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(881, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A6', 'unbooked', 179000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(882, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A7', 'unbooked', 116000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(883, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A8', 'unbooked', 163000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(884, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A9', 'unbooked', 149000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(885, 'Local Trans 004', 'LOC-BNG-BDR-004', 'A10', 'unbooked', 122000, 'Bangil', 'Buduran', 'Kota Pasuruan', 'Sidoarjo', 'local', '2025-10-04 13:00:00', 'ekonomi'),
(886, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A1', 'unbooked', 137000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(887, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A2', 'unbooked', 184000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(888, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A3', 'unbooked', 105000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(889, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A4', 'unbooked', 171000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(890, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A5', 'unbooked', 128000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(891, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A6', 'unbooked', 159000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(892, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A7', 'unbooked', 146000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(893, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A8', 'unbooked', 113000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(894, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A9', 'unbooked', 196000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi'),
(895, 'Local Trans 005', 'LOC-BBN-BTG-005', 'A10', 'unbooked', 124000, 'Brambanan', 'Batang', 'Kota Yogyakarta', 'Kota Pekalongan', 'local', '2025-10-04 15:00:00', 'ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `t_train`
--

CREATE TABLE `t_train` (
  `train_id` int(11) NOT NULL,
  `train_type` enum('local','nonlocal','plane') NOT NULL,
  `start_stat_name` varchar(60) NOT NULL,
  `finish_stat_name` varchar(60) NOT NULL,
  `schedule` datetime NOT NULL,
  `cl_line_code` varchar(60) DEFAULT NULL,
  `lrt_line_code` varchar(60) DEFAULT NULL,
  `train_code` varchar(60) NOT NULL,
  `train_seat_amount` int(11) DEFAULT NULL,
  `train_seat_booked` int(11) DEFAULT NULL,
  `starting_city` varchar(60) NOT NULL,
  `destination_city` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_train`
--

INSERT INTO `t_train` (`train_id`, `train_type`, `start_stat_name`, `finish_stat_name`, `schedule`, `cl_line_code`, `lrt_line_code`, `train_code`, `train_seat_amount`, `train_seat_booked`, `starting_city`, `destination_city`) VALUES
(110, 'plane', 'Manggarai', 'Soekarno-Hatta', '2025-10-02 00:12:00', NULL, NULL, 'MGR-CGK-001', 120, 95, '', ''),
(111, 'plane', 'Sudirman Baru', 'Soekarno-Hatta', '2025-10-02 03:45:00', NULL, NULL, 'SDB-CGK-002', 140, 100, '', ''),
(112, 'plane', 'Duri', 'Soekarno-Hatta', '2025-10-02 06:20:00', NULL, NULL, 'DRI-CGK-003', 150, 120, '', ''),
(113, 'plane', 'Rawabuaya', 'Soekarno-Hatta', '2025-10-02 09:10:00', NULL, NULL, 'RWB-CGK-004', 160, 140, '', ''),
(114, 'plane', 'Batu Ceper', 'Soekarno-Hatta', '2025-10-02 11:30:00', NULL, NULL, 'BTP-CGK-005', 110, 80, '', ''),
(115, 'plane', 'Soekarno-Hatta', 'Manggarai', '2025-10-02 14:00:00', NULL, NULL, 'CGK-MGR-006', 130, 100, '', ''),
(116, 'plane', 'Soekarno-Hatta', 'Sudirman Baru', '2025-10-02 16:30:00', NULL, NULL, 'CGK-SDB-007', 125, 90, '', ''),
(117, 'plane', 'Soekarno-Hatta', 'Duri', '2025-10-02 19:45:00', NULL, NULL, 'CGK-DRI-008', 145, 115, '', ''),
(118, 'plane', 'Soekarno-Hatta', 'Rawabuaya', '2025-10-02 21:15:00', NULL, NULL, 'CGK-RWB-009', 155, 130, '', ''),
(119, 'plane', 'Soekarno-Hatta', 'Batu Ceper', '2025-10-02 23:50:00', NULL, NULL, 'CGK-BTP-010', 135, 100, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_trip_history`
--

CREATE TABLE `t_trip_history` (
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `train_code` varchar(60) NOT NULL,
  `seat_code` varchar(60) NOT NULL,
  `start_stat_name` varchar(60) NOT NULL,
  `finish_stat_name` varchar(60) NOT NULL,
  `starting_city` varchar(60) NOT NULL,
  `destination_city` varchar(60) NOT NULL,
  `train_type` enum('local','nonlocal','plane') DEFAULT NULL,
  `schedule` datetime NOT NULL,
  `payment_amount` int(100) NOT NULL,
  `train_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_trip_history`
--

INSERT INTO `t_trip_history` (`trip_id`, `user_id`, `train_code`, `seat_code`, `start_stat_name`, `finish_stat_name`, `starting_city`, `destination_city`, `train_type`, `schedule`, `payment_amount`, `train_name`) VALUES
(1, 1, 'MGR-CGK-001', 'A1', 'Manggarai', 'Soekarno-Hatta', 'Jakarta', 'Tangerang', 'plane', '2025-10-04 06:00:00', 183810, 'Airport Express 001'),
(2, 1, 'LOC-RED-001', 'A5', 'Jakarta Kota', 'Bogor', 'Jakarta', 'Bogor', 'local', '2025-10-04 17:00:00', 125000, 'Local Trans 006'),
(3, 1, 'NON-ATA-ARB-001', 'A3', 'Alastua', 'Arasakabu', 'Kota Semarang', 'Kabupaten Deli Serdang', 'nonlocal', '2025-10-04 08:00:00', 142000, 'Intercity 001');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'aryaulyakrisna177', 'aryaulyakrisna@gmail.com', '$2b$10$5Wu5bgVBUEXySjKPdRCbn./0DXbTpEWWWDCUX2PhEttyDKFKPVWle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_between_cities`
--
ALTER TABLE `t_between_cities`
  ADD PRIMARY KEY (`bc_station_id`),
  ADD UNIQUE KEY `station_code` (`bc_station_code`),
  ADD UNIQUE KEY `station_code_2` (`bc_station_code`);

--
-- Indexes for table `t_chat`
--
ALTER TABLE `t_chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `t_cl`
--
ALTER TABLE `t_cl`
  ADD PRIMARY KEY (`cl_id`),
  ADD UNIQUE KEY `cl_code` (`cl_code`),
  ADD UNIQUE KEY `cl_code_2` (`cl_code`),
  ADD UNIQUE KEY `cl_code_3` (`cl_code`),
  ADD KEY `cl_line_code` (`cl_line_code`);

--
-- Indexes for table `t_cl_line`
--
ALTER TABLE `t_cl_line`
  ADD PRIMARY KEY (`cl_line_id`),
  ADD UNIQUE KEY `cl_line_code` (`cl_line_code`);

--
-- Indexes for table `t_local`
--
ALTER TABLE `t_local`
  ADD PRIMARY KEY (`local_station_id`),
  ADD UNIQUE KEY `station_code` (`local_station_code`);

--
-- Indexes for table `t_lrt`
--
ALTER TABLE `t_lrt`
  ADD PRIMARY KEY (`lrt_id`),
  ADD UNIQUE KEY `lrt_code` (`lrt_code`),
  ADD KEY `lrt_line_code` (`lrt_line_code`);

--
-- Indexes for table `t_lrt_line`
--
ALTER TABLE `t_lrt_line`
  ADD PRIMARY KEY (`lrt_line_id`),
  ADD UNIQUE KEY `line_code` (`lrt_line_code`),
  ADD UNIQUE KEY `lrt_line_id` (`lrt_line_id`,`lrt_line_name`);

--
-- Indexes for table `t_plane`
--
ALTER TABLE `t_plane`
  ADD PRIMARY KEY (`pl_station_id`),
  ADD UNIQUE KEY `station_code` (`pl_station_code`);

--
-- Indexes for table `t_seat`
--
ALTER TABLE `t_seat`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `train_code` (`train_code`);

--
-- Indexes for table `t_train`
--
ALTER TABLE `t_train`
  ADD PRIMARY KEY (`train_id`),
  ADD UNIQUE KEY `train_code` (`train_code`),
  ADD KEY `cl_line` (`cl_line_code`),
  ADD KEY `lrt_line` (`lrt_line_code`);

--
-- Indexes for table `t_trip_history`
--
ALTER TABLE `t_trip_history`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_between_cities`
--
ALTER TABLE `t_between_cities`
  MODIFY `bc_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `t_chat`
--
ALTER TABLE `t_chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_cl`
--
ALTER TABLE `t_cl`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `t_cl_line`
--
ALTER TABLE `t_cl_line`
  MODIFY `cl_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_local`
--
ALTER TABLE `t_local`
  MODIFY `local_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `t_lrt`
--
ALTER TABLE `t_lrt`
  MODIFY `lrt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `t_lrt_line`
--
ALTER TABLE `t_lrt_line`
  MODIFY `lrt_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_plane`
--
ALTER TABLE `t_plane`
  MODIFY `pl_station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_seat`
--
ALTER TABLE `t_seat`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- AUTO_INCREMENT for table `t_train`
--
ALTER TABLE `t_train`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `t_trip_history`
--
ALTER TABLE `t_trip_history`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_chat`
--
ALTER TABLE `t_chat`
  ADD CONSTRAINT `t_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`);

--
-- Constraints for table `t_cl`
--
ALTER TABLE `t_cl`
  ADD CONSTRAINT `t_cl_ibfk_1` FOREIGN KEY (`cl_line_code`) REFERENCES `t_cl_line` (`cl_line_code`);

--
-- Constraints for table `t_lrt`
--
ALTER TABLE `t_lrt`
  ADD CONSTRAINT `t_lrt_ibfk_1` FOREIGN KEY (`lrt_line_code`) REFERENCES `t_lrt_line` (`lrt_line_code`);

--
-- Constraints for table `t_train`
--
ALTER TABLE `t_train`
  ADD CONSTRAINT `t_train_ibfk_1` FOREIGN KEY (`cl_line_code`) REFERENCES `t_cl_line` (`cl_line_code`),
  ADD CONSTRAINT `t_train_ibfk_2` FOREIGN KEY (`lrt_line_code`) REFERENCES `t_lrt_line` (`lrt_line_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
