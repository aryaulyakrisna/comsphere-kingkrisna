-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2025 at 04:25 PM
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
  `chat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`chat`))
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
  `island` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_cl_line`
--

INSERT INTO `t_cl_line` (`cl_line_id`, `cl_line_name`, `cl_line_code`, `city`, `island`) VALUES
(1, 'Lin Bogor', 'RED', 'Bogor', 'Jawa'),
(2, 'Lin Cikarang/Bekasi', 'BLU', 'Bekasi', 'Jawa'),
(3, 'Lin Rangkasbitung', 'GRN', 'Lebak', 'Jawa'),
(4, 'Lin Tangerang', 'BRN', 'Tangerang', 'Jawa'),
(5, 'Lin Tanjung Priok', 'PNK', 'Jakarta Utara', 'Jawa'),
(6, 'Lin Yogyakarta-Solo', 'YSO', 'Yogyakarta', 'Jawa');

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
  `island` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_lrt_line`
--

INSERT INTO `t_lrt_line` (`lrt_line_id`, `lrt_line_name`, `lrt_line_code`, `city`, `island`) VALUES
(1, 'LRT Palembang', 'LRT-PLB', 'Palembang', 'Sumatera'),
(2, 'LRT Jabodebek Cibubur Line', 'LRT-JBD-CB', 'Jakarta', 'Jawa'),
(3, 'LRT Jabodebek Bekasi Line', 'LRT-JBD-BK', 'Jakarta', 'Jawa');

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
  `train_code` varchar(60) NOT NULL,
  `seat_code` varchar(60) NOT NULL,
  `status` enum('booked','unbooked') NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_ticket`
--

CREATE TABLE `t_ticket` (
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `train_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `schedule` datetime NOT NULL,
  `status` enum('paid','pending') NOT NULL,
  `seat_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_train`
--

CREATE TABLE `t_train` (
  `train_id` int(11) NOT NULL,
  `train_type` enum('lrt','cl','local','nonlocal','plane') NOT NULL,
  `start_stat_name` varchar(60) NOT NULL,
  `finish_stat_name` varchar(60) NOT NULL,
  `schedule` datetime NOT NULL,
  `cl_line_code` varchar(60) DEFAULT NULL,
  `lrt_line_code` varchar(60) DEFAULT NULL,
  `train_code` varchar(60) NOT NULL,
  `train_seat_amount` int(11) NOT NULL,
  `train_seat_booked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD UNIQUE KEY `line_code` (`lrt_line_code`);

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
-- Indexes for table `t_ticket`
--
ALTER TABLE `t_ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `seat_code` (`seat_code`);

--
-- Indexes for table `t_train`
--
ALTER TABLE `t_train`
  ADD PRIMARY KEY (`train_id`),
  ADD UNIQUE KEY `train_code` (`train_code`),
  ADD KEY `cl_line` (`cl_line_code`),
  ADD KEY `lrt_line` (`lrt_line_code`);

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
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ticket`
--
ALTER TABLE `t_ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_train`
--
ALTER TABLE `t_train`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

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
-- Constraints for table `t_seat`
--
ALTER TABLE `t_seat`
  ADD CONSTRAINT `t_seat_ibfk_1` FOREIGN KEY (`train_code`) REFERENCES `t_train` (`train_code`);

--
-- Constraints for table `t_ticket`
--
ALTER TABLE `t_ticket`
  ADD CONSTRAINT `t_ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`),
  ADD CONSTRAINT `t_ticket_ibfk_2` FOREIGN KEY (`train_id`) REFERENCES `t_train` (`train_id`),
  ADD CONSTRAINT `t_ticket_ibfk_3` FOREIGN KEY (`seat_code`) REFERENCES `t_seat` (`train_code`);

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
