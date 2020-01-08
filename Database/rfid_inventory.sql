-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 09:37 AM
-- Server version: 10.4.6-MariaDB              
-- PHP Version: 7.1.32         

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfid_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `cartID` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `amount` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`cartID`, `id`, `amount`) VALUES
(786, 1, '75.25'),
(1122, 2, '75.25'),
(1020, 3, '451.50');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'CARTIGO', '311820715ABH');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `rfid` char(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(13,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `rfid`, `name`, `price`) VALUES
(1, '0981E40F', 'Bisconni Cocomo ', '10.00'),
(2, '09D4DC0F', 'Capri Soap', '40.00'),
(3, '10', 'Shahtaj Cooking(5kg) ', '1050.00'),
(4, '100', 'BAKERI CLASSIC(LU)(12)', '200.00'),
(5, '1000', 'Habib Banaspati (GHEE)(5KG)', '1000.00'),
(6, '1001', 'Tullo Banaspati (GHEE)(1KG)', '210.00'),
(7, '1002', 'Tullo Banaspati (GHEE)(5KG)', '1050.00'),
(8, '1003', 'Kashmir Banaspati(GHEE)(1KG)', '200.00'),
(9, '1004', 'Kashmir Banaspati(GHEE)(5KG)', '1000.00'),
(10, '1005', 'Maulvi Banaspati(GHEE)(1KG)', '220.00'),
(11, '1006', 'Maulvi Banaspati(GHEE)(5KG)', '1150.00'),
(12, '1007', 'Meezan Banaspati(GHEE)(1KG)', '200.00'),
(13, '1008', 'Meezan Banaspati(GHEE)(5KG)', '1000.00'),
(14, '1009', 'Dalda Banaspati (GHEE)(1KG)', '220.00'),
(15, '1010', 'Dalda Banaspati (GHEE)(5KG)', '1050.00'),
(16, '1011', 'Soya Supreme Banaspati(GHEE)(1KG)', '220.00'),
(17, '1012', 'Soya Supreme Banaspati(GHEE)(5KG)', '1150.00'),
(18, '1013', 'Sufi Banaspati (GHEE)(1KG)', '220.00'),
(19, '1014', 'Sufi Banaspati (GHEE)(5KG)', '1150.00'),
(20, '1015', 'Shahtaj Banaspati(GHEE)(1KG)', '220.00'),
(21, '1016', 'Shahtaj Banaspati(GHEE)(5KG)', '1150.00'),
(22, '1017', 'Cadbury Dairy Milk Chocolate (1pcs)', '10.00'),
(23, '1018', 'Cadbury Dairy Milk Chocolate (24pcs)', '220.00'),
(24, '1019', 'Cadbury Dairy Milk Chocolate (1pcs)', '25.00'),
(25, '1020', 'Cadbury Dairy Milk Chocolate (24pcs)', '450.00'),
(26, '1021', 'Cadbury Dairy Milk Chocolate (65/Rs)', '65.00'),
(27, '1022', 'Cadbury Dairy Milk Chocolate (100/Rs)', '100.00'),
(28, '1023', 'Cadbury Dairy Milk Chocolate(BUBBLY) (1pcs)', '35.00'),
(29, '1024', 'Cadbury Dairy Milk Chocolate(BUBBLY) (1pcs)', '55.00'),
(30, '1025', 'Cadbury Dairy Milk Chocolate(BUBBLY) (1pcs)', '110.00'),
(31, '1026', 'Cadbury Dairy Milk Chocolate(Crackle) (1pcs)', '25.00'),
(32, '1027', 'Cadbury Dairy Milk Chocolate(Crackle) (24pcs)', '450.00'),
(33, '1028', 'Mars ', '60.00'),
(34, '1029', 'SNICKERS', '50.00'),
(35, '1030', 'TWIX', '60.00'),
(36, '1032', 'KITKAT', '60.00'),
(37, '1033', 'GALAXY (DARK) Chocolate', '225.00'),
(38, '1034', 'BOUNTY Chocolate', '60.00'),
(39, '1035', 'NOW(CANDYLAND) Chocolate(24pcs)', '120.00'),
(40, '1036', 'NOW(CANDYLAND) Chocolate(24pcs)', '220.00'),
(41, '1037', 'Jubilee(CANDYLAND) Chocolate(24pcs)', '120.00'),
(42, '1038', 'Jubilee(CANDYLAND) Chocolate(24pcs)', '220.00'),
(43, '1039', 'SONNET(CANDYLAND) Chocolate(24pcs)', '120.00'),
(44, '1040', 'SONNET(CANDYLAND) Chocolate(24pcs)', '220.00'),
(45, '1041', 'PERK(CANDYLAND) Chocolate(24pcs)', '120.00'),
(46, '1042', 'PERK(CANDYLAND) Chocolate(24pcs)', '200.00'),
(47, '1043', 'PARADISE(CANDYLAND) Chocolate(24pcs)', '125.00'),
(48, '1044', 'PARADISE(CANDYLAND) Chocolate(24pcs)', '220.00'),
(49, '1045', 'CLOUD-9 (CANDYLAND) Chocolate(24pcs)', '220.00'),
(50, '1046', 'CRICKET BAT(CA)', '350.00'),
(51, '1047', 'CRICKET BAT(MB)', '450.00'),
(52, '1048', 'FOOTBALL', '600.00'),
(53, '1049', 'TABLE TENIS RACKETS(2)', '900.00'),
(54, '1050', 'TABLE TENNIS NET', '1000.00'),
(55, '1051', 'TABLE TENNIS BALL PACKET(6pcs)', '600.00'),
(56, '1052', 'BADMINTON RACKETS (2R/L)', '600.00'),
(57, '1053', 'SHITTLE COCK PACKETS (BADMINTON)(12)', '1000.00'),
(58, '1054', 'BASKET BALL', '550.00'),
(59, '1055', 'BASKET BALL STAND', '750.00'),
(60, '1056', 'SNOOKER BALLS PACKETS(24)', '1000.00'),
(61, '1057', 'CHESS GAME', '500.00'),
(62, '1058', 'SNOOKER STICK', '1200.00'),
(63, '1059', 'BOXING GLOVES(R/L)(APOLLO)12 OZ, 2pcs)', '1300.00'),
(64, '1060', 'HOCKEY STICK (CA)', '3000.00'),
(65, '1061', 'KURLEEZ(MASALA)(1pcs)', '10.00'),
(66, '1062', 'KURLEEZ(MASALA)(24pcs)', '240.00'),
(67, '1063', 'KURLEEZ(MASALA )(1pcs)', '30.00'),
(68, '1064', 'KURLEEZ(MASALA)(24pcs)', '720.00'),
(69, '1065', 'KURLEEZ(MASALA)(1pcs)', '50.00'),
(70, '1066', 'KURLEEZ(MASALA)(24pcs)', '1200.00'),
(71, '1067', 'KURLEEZ(KETCHEP)(1pcs)', '10.00'),
(72, '1068', 'KURLEEZ(KETCHUP)(24pcs)', '240.00'),
(73, '1069', 'KURLEEZ(KETCHEP)(1pcs)', '30.00'),
(74, '1070', 'KURLEEZ(KETCHUP)(24pcs)', '720.00'),
(75, '1071', 'KURLEEZ(KETCHEP)(1pcs)', '50.00'),
(76, '1072', 'KURLEEZ(KETCHUP)(24pcs)', '1200.00'),
(77, '1073', 'LAYS(SALT)(1pcs)', '10.00'),
(78, '1074', 'LAYS(SALT)(24pcs)', '240.00'),
(79, '1075', 'LAYS(SALT)(1pcs)', '20.00'),
(80, '1076', 'LAYS(SALT)(24pcs)', '480.00'),
(81, '1077', 'LAYS(SALT)(1pcs)', '30.00'),
(82, '1078', 'LAYS(SALT)(24pcs)', '720.00'),
(83, '1079', 'LAYS(SALT)(1pcs)', '50.00'),
(84, '1080', 'LAYS(SALT)(24pcs)', '1200.00'),
(85, '1081', 'LAY(FRENCH CHEESE)(1pcs)', '10.00'),
(86, '1082', 'LAY(FRENCH CHEESE)(24pcs)', '240.00'),
(87, '1083', 'LAY(FRENCH CHEESE)(1pcs)', '20.00'),
(88, '1084', 'LAY(FRENCH CHEESE)(24pcs)', '480.00'),
(89, '1085', 'LAY(FRENCH CHEESE)(1pcs)', '30.00'),
(90, '1086', 'LAY(FRENCH CHEESE)(24pcs)', '720.00'),
(91, '1087', 'LAY(FRENCH CHEESE)(1pcs)', '50.00'),
(92, '1088', 'LAY(FRENCH CHEESE)(24pcs)', '1200.00'),
(93, '1089', 'LAY(MASALA)(1pcs)', '10.00'),
(94, '1090', 'LAY(MASALA)(24pcs)', '240.00'),
(95, '1091', 'LAY(MASALA)(1pcs)', '20.00'),
(96, '1092', 'LAY(MASALA)(24pcs)', '480.00'),
(97, '1093', 'LAY(MASALA)(1pcs)', '30.00'),
(98, '1094', 'LAY(MASALA)(24pcs)', '720.00'),
(99, '1095', 'LAY(MASALA)(1pcs)', '50.00'),
(100, '1096', 'LAY(MASALA)(24pcs)', '1200.00'),
(101, '1097', 'LAYS(YOGURT & HERBS)(1pcs)', '10.00'),
(102, '1098', 'LAYS(YOGURT & HERBS)(24pcs)', '240.00'),
(103, '1099', 'LAYS(YOGURT & HERBS)(1pcs)', '20.00'),
(104, '11', 'Manpasand Cooking Oil(5kg)', '950.00'),
(105, '1100', 'LAYS(YOGURT & HERBS)(24pcs)', '480.00'),
(106, '1101', 'LAYS(YOGURT & HERBS)(1pcs)', '30.00'),
(107, '1102', 'LAYS(YOGURT & HERBS)(24pcs)', '720.00'),
(108, '1103', 'LAYS(YOGURT & HERBS)(1pcs)', '50.00'),
(109, '1104', 'LAYS(YOGURT & HERBS)(24pcs)', '1200.00'),
(110, '1105', 'WAVYS(BARBIQUE)(1pcs)', '20.00'),
(111, '1106', 'WAVYS(BARBIQUE)(24pcs)', '480.00'),
(112, '1107', 'WAVYS(BARBIQUE)(1pcs)', '30.00'),
(113, '1108', 'WAVYS(BARBIQUE)(24pcs)', '720.00'),
(114, '1109', 'WAVYS(BARBIQUE)(1pcs)', '50.00'),
(115, '1110', 'WAVYS(BARBIQUE)(24pcs)', '1200.00'),
(116, '1111', 'WAVYS(SALT & PEPPER)(1pcs)', '20.00'),
(117, '1112', 'WAVYS(SALT & PEPPER)(24pcs)', '480.00'),
(118, '1113', 'WAVYS(SALT & PEPPER)(1pcs)', '30.00'),
(119, '1114', 'WAVYS(SALT & PEPPER)(24pcs)', '720.00'),
(120, '1115', 'WAVYS(SALT & PEPPER)(1pcs)', '50.00'),
(121, '1116', 'WAVYS(SALT & PEPPER)(24pcs)', '1200.00'),
(122, '1117', 'CATTY CHINS(1pcs)', '10.00'),
(123, '1118', 'CATTY CHINS(24pcs)', '240.00'),
(124, '1119', 'CATTY CHINS(1pcs)', '30.00'),
(125, '1120', 'CATTY CHINS(24pcs)', '720.00'),
(126, '1121', 'CATTY CHINS(1pcs)', '50.00'),
(127, '1122', 'CATTY CHINS(24pcs)', '1200.00'),
(128, '12', 'Habib Cooking Oil(1kg)', '200.00'),
(129, '13', 'Habib Cooking Oil(5kg)', '1000.00'),
(130, '14', 'Tullo Cooking Oil(1kg)', '200.00'),
(131, '15', 'Tullo Cooking Oil(5kg)', '1000.00'),
(132, '16', 'Kashmir Cooking Oil(1kg)', '200.00'),
(133, '17', 'Kashmir Cooking Oil(5kg)', '1000.00'),
(134, '18', 'Maulvi Cooking Oil(1kg)', '220.00'),
(135, '19', 'Maulvi Cooking Oil(5kg)', '1150.00'),
(136, '192AFB0F', 'Lays', '10.00'),
(137, '199AB80F', 'MOTO E4(ROM 16GB', '10000.00'),
(138, '2', 'Dalda Cooking Oil(5kg)', '1000.00'),
(139, '20', 'Dalda Cooking Oil(1kg)', '200.00'),
(140, '252', 'BAKERI BISTIKS(LU)(12)', '200.00'),
(141, '2988C80F', 'Doritos', '450.00'),
(142, '3', 'Meezan Cooking Oil(1kg)', '190.00'),
(143, '392FC70F', 'Ketchup', '70.00'),
(144, '39521E10', 'Head Shoulders', '95.00'),
(145, '39FBDE0F', 'HP Laptop (Probook)b', '19000.00'),
(146, '3DD9BCB2', 'Tomotos (1KG)', '300.00'),
(147, '4', 'Meezan Cooking Oil(5kg)', '950.00'),
(148, '5', 'Canolive Cooking Oil(1kg)', '210.00'),
(149, '59070310', 'Dairy Milk', '100.00'),
(150, '59870E10', 'Milk pack', '40.00'),
(151, '59D30F10', 'Cheetos', '20.00'),
(152, '6', 'Manpasand Cooking Oil(1kg)', '190.00'),
(153, '7', 'Eva Cooking Oil ', '200.00'),
(154, '741', 'CHOCOLATTO(BISCONNI)(24)', '210.00'),
(155, '8', 'Soya Supreme Cooking Oil(1kg)', '200.00'),
(156, '879', 'COCOMO(BISCONNI)(24)', '125.00'),
(157, '8916DF0F', 'LUX Soap', '70.00'),
(158, '8994C60F', 'Custard (1/2 kg)', '120.00'),
(159, '9', 'Shahtaj Cooking(1kg) ', '210.00'),
(160, '9546', 'FLO(BISCONNI)CAKE(24)', '200.00'),
(161, '963', 'CHOCOLATE CHIP(BISCONNI)(24)', '200.00'),
(162, '9632', 'CHOCOLATTO(BISCONNI)(12)', '200.00'),
(163, '976', 'FLO(BISCONNI)(CAKE)(12)', '190.00'),
(164, '987', 'BAKERI NAN KHATAI(LU)', '190.00'),
(165, 'B97EC90F', 'Kisan Nimko', '40.00'),
(166, 'C9570D10', 'Surf excel', '90.00'),
(167, 'E97CF70F', 'HP Laptop (Pro Book)Core-i7', '86000.00'),
(168, 'E9D6F50F', 'Cookies', '60.00'),
(169, 'F978E20F', 'Dettol Soap', '50.00'),
(170, 'F9E9C00F', 'Cooking Oil', '180.00'),
(171, 'FAA74ED3', 'SUFI OIL (5 KG)', '1050.00'),
(218, '1123', 'SLANTY(SALT)(1pcs)', '10.00'),
(219, '1124', 'SLANTY(SALT)(24pcs)', '240.00'),
(220, '1125', 'SLANTY(SALT)(1pcs)', '30.00'),
(221, '1126', 'SLANTY(SALT)(24pcs)', '720.00'),
(222, '1127', 'SLANTY(KETCHEP)(1pcs)', '10.00'),
(223, '1128', 'SLANTY(KETCHEP)(24pcs)', '240.00'),
(224, '1129', 'SLANTY(KETCHEP)(1pcs)', '30.00'),
(225, '1130', 'SLANTY(KETCHEP)(24pcs)', '720.00'),
(226, '1131', 'SLANTY(MASALA)(1pcs)', '10.00'),
(227, '1132', 'SLANTY(MASALA)(24pcs)', '240.00'),
(228, '1167', 'SLANTY(MASALA)(1pcs)', '30.00'),
(229, '1168', 'SLANTY(MASALA)(24pcs)', '720.00'),
(230, '1133', 'CHEETOS(KETCHEP)(1pcs)', '10.00'),
(231, '1134', 'CHEETOS(KETCHEP)(24pcs)', '240.00'),
(232, '1135', 'CHEETOS(KETCHEP)(1pcs)', '20.00'),
(233, '1136', 'SLANTY(MASALA)(24pcs)', '480.00'),
(234, '1137', 'CHEETOS(KETCHEP)(1pcs)', '25.00'),
(235, '1138', 'CHEETOS(KETCHEP)(24pcs)', '600.00'),
(236, '1139', 'SUPER CRISPS(1pcs)', '30.00'),
(237, '1140', 'SUPER CRISPS(24pcs)', '720.00'),
(238, '1141', 'SUPER CRISPS(1pcs)', '50.00'),
(239, '1142', 'SUPER CRISPS(12pcs)', '600.00'),
(240, '1143', 'SNACKERS(PIZZA)(LAYS)(1pcs)', '10.00'),
(241, '1144', 'SNACKERS(PIZZA)(LAYS)(24pcs)', '240.00'),
(242, '1145', 'SNACKERS(MASALA)(LAYS)(1pcs)', '10.00'),
(243, '1146', 'SNACKERS(MASALA)(LAYS)(24pcs)', '240.00'),
(244, '1147', 'SNACKERS(CHEESE)(LAYS)(1pcs)', '10.00'),
(245, '1148', 'SNACKERS(CHEESE)(LAYS)(24pcs)', '240.00'),
(246, '1149', 'PRINCLES(ORIGINAL)', '190.00'),
(247, '1150', 'PRINCLES(BARBIQUE)', '190.00'),
(248, '1151', 'PRINCLES(CHEESE)', '190.00'),
(249, '1152', 'DORITOS(LARGE)', '850.00'),
(250, '1153', 'KURKURE(CHUTNY CHASKA)(1pcs)', '20.00'),
(251, '1154', 'KURKURE(CHUTNY CHASKA)(24pcs)', '480.00'),
(252, '1155', 'KURKURE(CHUTNY CHASKA)(1pcs)', '50.00'),
(253, '1156', 'KURKURE(CHUTNY CHASKA)(12pcs)', '600.00'),
(254, '1157', 'KURKURE(RED HOT)(1pcs)', '20.00'),
(255, '1158', 'KURKURE(RED HOT)(24pcs)', '480.00'),
(256, '1159', 'KURKURE(RED HOT)(1pcs)', '50.00'),
(257, '1160', 'KURKURE(RED HOT)(12pcs)', '600.00'),
(258, '1161', 'OREO(6pcs)', '120.00'),
(259, '1162', 'TUC(6pcs)', '120.00'),
(260, '1163', 'PRINCE CHOCOLATE(6pcs)', '120.00'),
(261, '1164', 'CANDI(LU)(6pcs)', '120.00'),
(262, '1165', 'GALA(LU)(6pcs)', '120.00'),
(263, '1166', 'TIGER(LU)(24pcs)', '200.00'),
(264, '1169', 'ZEERA PLUS(LU)(6pcs)', '120.00'),
(265, '1170', 'BAKERI CLASSIC(LU)(10pcs)', '200.00'),
(266, '1171', 'BAKERI BISTIKS(LU)(10pcs)', '200.00'),
(267, '1172', 'BAKERI NAN KHATAI(LU)(10pcs)', '200.00'),
(268, '1173', 'WHEATABLE(LU)(1pcs)', '55.00'),
(269, '1174', 'FLO(BISCONNI)(CAKE)(12pcs)', '120.00'),
(270, '1175', 'CHOCOLATTO(BISCONNI)(12pcs)', '120.00'),
(271, '1176', 'CHOCOLATTO(BISCONNI)(24pcs)', '200.00'),
(272, '1177', 'CHOCOLATE CHIP(BISCONNI)(24pcs)', '115.00'),
(273, '1178', 'NOVITA ORANGE(LU)(12pcs)', '220.00'),
(274, '1179', 'NOVITA(LU)(12pcs)', '220.00'),
(275, '1180', 'BAKERI CLASSIC(LU)(12pcs)', '200.00'),
(276, '1181', 'BAKERI BISTIKS(LU)(12pcs)', '200.00'),
(277, '1182', 'FLO(BISCONNI)(CAKE)(12pcs)', '120.00'),
(278, '1183', 'SOOPER(PEAK FREANS)(24pcs)', '120.00'),
(279, '1184', 'GALA(LU)', '120.00'),
(280, '1185', 'CAFE(MAYFAIR)(6pcs)', '120.00');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `STORE_NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE-NUMBER` int(255) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `WEBSITE` varchar(50) NOT NULL,
  `NTN-NO#` varchar(100) NOT NULL,
  `TAX-NUMBER` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rfid_key` (`rfid`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`STORE_NAME`,`NTN-NO#`,`TAX-NUMBER`),
  ADD UNIQUE KEY `STORE-NAME` (`STORE_NAME`,`NTN-NO#`,`TAX-NUMBER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
