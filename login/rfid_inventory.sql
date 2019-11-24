-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2019 at 08:59 PM
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
-- Table structure for table `customer-cart`
--

CREATE TABLE `customer-cart` (
  `cartID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rfid` char(8) NOT NULL,
  `price` int(255) NOT NULL,
  `amount` decimal(65,0) NOT NULL,
  `DATE/TIME` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `YEAR` year(4) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `price` decimal(13,2) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `rfid`, `name`, `price`, `category`) VALUES
(1, '0981E40F', 'Bisconni Cocomo ', '10.00', 'BISCUITS'),
(2, '09D4DC0F', 'Capri Soap', '40.00', 'SOAPS'),
(3, '10', 'Shahtaj Cooking(5kg) ', '1050.00', 'COOKING OILS'),
(4, '100', 'BAKERI CLASSIC(LU)(12)', '200.00', 'BISCUITS'),
(5, '1000', 'Habib Banaspati (GHEE)(5KG)', '1000.00', 'GHEE'),
(6, '1001', 'Tullo Banaspati (GHEE)(1KG)', '210.00', 'GHEE'),
(7, '1002', 'Tullo Banaspati (GHEE)(5KG)', '1050.00', 'GHEE'),
(8, '1003', 'Kashmir Banaspati(GHEE)(1KG)', '200.00', 'GHEE'),
(9, '1004', 'Kashmir Banaspati(GHEE)(5KG)', '1000.00', 'GHEE'),
(10, '1005', 'Maulvi Banaspati(GHEE)(1KG)', '220.00', 'GHEE'),
(11, '1006', 'Maulvi Banaspati(GHEE)(5KG)', '1150.00', 'GHEE'),
(12, '1007', 'Meezan Banaspati(GHEE)(1KG)', '200.00', 'GHEE'),
(13, '1008', 'Meezan Banaspati(GHEE)(5KG)', '1000.00', 'GHEE'),
(14, '1009', 'Dalda Banaspati (GHEE)(1KG)', '220.00', 'GHEE'),
(15, '1010', 'Dalda Banaspati (GHEE)(5KG)', '1050.00', 'GHEE'),
(16, '1011', 'Soya Supreme Banaspati(GHEE)(1KG)', '220.00', 'GHEE'),
(17, '1012', 'Soya Supreme Banaspati(GHEE)(5KG)', '1150.00', 'GHEE'),
(18, '1013', 'Sufi Banaspati (GHEE)(1KG)', '220.00', 'GHEE'),
(19, '1014', 'Sufi Banaspati (GHEE)(5KG)', '1150.00', 'GHEE'),
(20, '1015', 'Shahtaj Banaspati(GHEE)(1KG)', '220.00', 'GHEE'),
(21, '1016', 'Shahtaj Banaspati(GHEE)(5KG)', '1150.00', 'GHEE'),
(22, '1017', 'Cadbury Dairy Milk Chocolate (1pcs)', '10.00', 'CHOCOLATES'),
(23, '1018', 'Cadbury Dairy Milk Chocolate (24pcs)', '220.00', 'CHOCOLATES'),
(24, '1019', 'Cadbury Dairy Milk Chocolate (1pcs)', '25.00', 'CHOCOLATES'),
(25, '1020', 'Cadbury Dairy Milk Chocolate (24pcs)', '450.00', 'CHOCOLATES'),
(26, '1021', 'Cadbury Dairy Milk Chocolate (65/Rs)', '65.00', 'CHOCOLATES'),
(27, '1022', 'Cadbury Dairy Milk Chocolate (100/Rs)', '100.00', 'CHOCOLATES\''),
(28, '1023', 'Cadbury Dairy Milk Chocolate(BUBBLY) (1pcs)', '35.00', 'CHOCOLATES'),
(29, '1024', 'Cadbury Dairy Milk Chocolate(BUBBLY) (1pcs)', '55.00', 'CHOCOLATES'),
(30, '1025', 'Cadbury Dairy Milk Chocolate(BUBBLY) (1pcs)', '110.00', 'CHOCOLATES'),
(31, '1026', 'Cadbury Dairy Milk Chocolate(Crackle) (1pcs)', '25.00', 'CHOCOLATES'),
(32, '1027', 'Cadbury Dairy Milk Chocolate(Crackle) (24pcs)', '450.00', 'CHOCOLATES'),
(33, '1028', 'Mars ', '60.00', 'CHOCOLATES'),
(34, '1029', 'SNICKERS', '50.00', 'CHOCOLATES'),
(35, '1030', 'TWIX', '60.00', 'CHOCOLATES'),
(36, '1032', 'KITKAT', '60.00', 'CHOCOLATES'),
(37, '1033', 'GALAXY (DARK) Chocolate', '225.00', 'CHOCOLATES'),
(38, '1034', 'BOUNTY Chocolate', '60.00', 'CHOCOLATES'),
(39, '1035', 'NOW(CANDYLAND) Chocolate(24pcs)', '120.00', 'CHOCOLATES'),
(40, '1036', 'NOW(CANDYLAND) Chocolate(24pcs)', '220.00', 'CHOCOLATES'),
(41, '1037', 'Jubilee(CANDYLAND) Chocolate(24pcs)', '120.00', 'CHOCOLATES'),
(42, '1038', 'Jubilee(CANDYLAND) Chocolate(24pcs)', '220.00', 'CHOCOLATES'),
(43, '1039', 'SONNET(CANDYLAND) Chocolate(24pcs)', '120.00', 'CHOCOLATES'),
(44, '1040', 'SONNET(CANDYLAND) Chocolate(24pcs)', '220.00', 'CHOCOLATES'),
(45, '1041', 'PERK(CANDYLAND) Chocolate(24pcs)', '120.00', 'CHOCOLATES'),
(46, '1042', 'PERK(CANDYLAND) Chocolate(24pcs)', '200.00', 'CHOCOLATES'),
(47, '1043', 'PARADISE(CANDYLAND) Chocolate(24pcs)', '125.00', 'CHOCOLATES'),
(48, '1044', 'PARADISE(CANDYLAND) Chocolate(24pcs)', '220.00', 'CHOCOLATES'),
(49, '1045', 'CLOUD-9 (CANDYLAND) Chocolate(24pcs)', '220.00', 'CHOCOLATES'),
(50, '1046', 'CRICKET BAT(CA)', '350.00', 'SPORTS'),
(51, '1047', 'CRICKET BAT(MB)', '450.00', 'SPORTS'),
(52, '1048', 'FOOTBALL', '600.00', 'SPORTS'),
(53, '1049', 'TABLE TENIS RACKETS(2)', '900.00', 'SPORTS'),
(54, '1050', 'TABLE TENNIS NET', '1000.00', 'SPORTS'),
(55, '1051', 'TABLE TENNIS BALL PACKET(6pcs)', '600.00', 'SPORTS'),
(56, '1052', 'BADMINTON RACKETS (2R/L)', '600.00', 'SPORTS'),
(57, '1053', 'SHITTLE COCK PACKETS (BADMINTON)(12)', '1000.00', 'SPORTS'),
(58, '1054', 'BASKET BALL', '550.00', 'SPORTS'),
(59, '1055', 'BASKET BALL STAND', '750.00', 'SPORTS'),
(60, '1056', 'SNOOKER BALLS PACKETS(24)', '1000.00', 'SPORTS'),
(61, '1057', 'CHESS GAME', '500.00', 'SPORTS'),
(62, '1058', 'SNOOKER STICK', '1200.00', 'SPORTS'),
(63, '1059', 'BOXING GLOVES(R/L)(APOLLO)12 OZ, 2pcs)', '1300.00', 'SPORTS'),
(64, '1060', 'HOCKEY STICK (CA)', '3000.00', 'SPORTS'),
(65, '1061', 'KURLEEZ(MASALA)(1pcs)', '10.00', 'SNACKS'),
(66, '1062', 'KURLEEZ(MASALA)(24pcs)', '240.00', 'SNACKS'),
(67, '1063', 'KURLEEZ(MASALA )(1pcs)', '30.00', 'SNACKS'),
(68, '1064', 'KURLEEZ(MASALA)(24pcs)', '720.00', 'SNACKS'),
(69, '1065', 'KURLEEZ(MASALA)(1pcs)', '50.00', 'SNACKS'),
(70, '1066', 'KURLEEZ(MASALA)(24pcs)', '1200.00', 'SNACKS'),
(71, '1067', 'KURLEEZ(KETCHEP)(1pcs)', '10.00', 'SNACKS'),
(72, '1068', 'KURLEEZ(KETCHUP)(24pcs)', '240.00', 'SNACKS'),
(73, '1069', 'KURLEEZ(KETCHEP)(1pcs)', '30.00', 'SNACKS'),
(74, '1070', 'KURLEEZ(KETCHUP)(24pcs)', '720.00', 'SNACKS'),
(75, '1071', 'KURLEEZ(KETCHEP)(1pcs)', '50.00', 'SNACKS'),
(76, '1072', 'KURLEEZ(KETCHUP)(24pcs)', '1200.00', 'SNACKS'),
(77, '1073', 'LAYS(SALT)(1pcs)', '10.00', 'SNACKS'),
(78, '1074', 'LAYS(SALT)(24pcs)', '240.00', 'SNACKS'),
(79, '1075', 'LAYS(SALT)(1pcs)', '20.00', 'SNACKS'),
(80, '1076', 'LAYS(SALT)(24pcs)', '480.00', 'SNACKS'),
(81, '1077', 'LAYS(SALT)(1pcs)', '30.00', 'SNACKS'),
(82, '1078', 'LAYS(SALT)(24pcs)', '720.00', 'SNACKS'),
(83, '1079', 'LAYS(SALT)(1pcs)', '50.00', 'SNACKS'),
(84, '1080', 'LAYS(SALT)(24pcs)', '1200.00', 'SNACKS'),
(85, '1081', 'LAY(FRENCH CHEESE)(1pcs)', '10.00', 'SNACKS'),
(86, '1082', 'LAY(FRENCH CHEESE)(24pcs)', '240.00', 'SNACKS'),
(87, '1083', 'LAY(FRENCH CHEESE)(1pcs)', '20.00', 'SNACKS'),
(88, '1084', 'LAY(FRENCH CHEESE)(24pcs)', '480.00', 'SNACKS'),
(89, '1085', 'LAY(FRENCH CHEESE)(1pcs)', '30.00', 'SNACKS'),
(90, '1086', 'LAY(FRENCH CHEESE)(24pcs)', '720.00', 'SNACKS'),
(91, '1087', 'LAY(FRENCH CHEESE)(1pcs)', '50.00', 'SNACKS'),
(92, '1088', 'LAY(FRENCH CHEESE)(24pcs)', '1200.00', 'SNACKS'),
(93, '1089', 'LAY(MASALA)(1pcs)', '10.00', 'SNACKS'),
(94, '1090', 'LAY(MASALA)(24pcs)', '240.00', 'SNACKS'),
(95, '1091', 'LAY(MASALA)(1pcs)', '20.00', 'SNACKS'),
(96, '1092', 'LAY(MASALA)(24pcs)', '480.00', 'SNACKS'),
(97, '1093', 'LAY(MASALA)(1pcs)', '30.00', 'SNACKS'),
(98, '1094', 'LAY(MASALA)(24pcs)', '720.00', 'SNACKS'),
(99, '1095', 'LAY(MASALA)(1pcs)', '50.00', 'SNACKS'),
(100, '1096', 'LAY(MASALA)(24pcs)', '1200.00', 'SNACKS'),
(101, '1097', 'LAYS(YOGURT & HERBS)(1pcs)', '10.00', 'SNACKS'),
(102, '1098', 'LAYS(YOGURT & HERBS)(24pcs)', '240.00', 'SNACKS'),
(103, '1099', 'LAYS(YOGURT & HERBS)(1pcs)', '20.00', 'SNACKS'),
(104, '11', 'Manpasand Cooking Oil(5kg)', '950.00', 'COOKING OILS'),
(105, '1100', 'LAYS(YOGURT & HERBS)(24pcs)', '480.00', 'SNACKS'),
(106, '1101', 'LAYS(YOGURT & HERBS)(1pcs)', '30.00', 'SNACKS'),
(107, '1102', 'LAYS(YOGURT & HERBS)(24pcs)', '720.00', 'SNACKS'),
(108, '1103', 'LAYS(YOGURT & HERBS)(1pcs)', '50.00', 'SNACKS'),
(109, '1104', 'LAYS(YOGURT & HERBS)(24pcs)', '1200.00', 'SNACKS'),
(110, '1105', 'WAVYS(BARBIQUE)(1pcs)', '20.00', 'SNACKS'),
(111, '1106', 'WAVYS(BARBIQUE)(24pcs)', '480.00', 'SNACKS'),
(112, '1107', 'WAVYS(BARBIQUE)(1pcs)', '30.00', 'SNACKS'),
(113, '1108', 'WAVYS(BARBIQUE)(24pcs)', '720.00', 'SNACKS'),
(114, '1109', 'WAVYS(BARBIQUE)(1pcs)', '50.00', 'SNACKS'),
(115, '1110', 'WAVYS(BARBIQUE)(24pcs)', '1200.00', 'SNACKS'),
(116, '1111', 'WAVYS(SALT & PEPPER)(1pcs)', '20.00', 'SNACKS'),
(117, '1112', 'WAVYS(SALT & PEPPER)(24pcs)', '480.00', 'SNACKS'),
(118, '1113', 'WAVYS(SALT & PEPPER)(1pcs)', '30.00', 'SNACKS'),
(119, '1114', 'WAVYS(SALT & PEPPER)(24pcs)', '720.00', 'SNACKS'),
(120, '1115', 'WAVYS(SALT & PEPPER)(1pcs)', '50.00', 'SNACKS'),
(121, '1116', 'WAVYS(SALT & PEPPER)(24pcs)', '1200.00', 'SNACKS'),
(122, '1117', 'CATTY CHINS(1pcs)', '10.00', 'SNACKS'),
(123, '1118', 'CATTY CHINS(24pcs)', '240.00', 'SNACKS'),
(124, '1119', 'CATTY CHINS(1pcs)', '30.00', 'SNACKS'),
(125, '1120', 'CATTY CHINS(24pcs)', '720.00', 'SNACKS'),
(126, '1121', 'CATTY CHINS(1pcs)', '50.00', 'SNACKS'),
(127, '1122', 'CATTY CHINS(24pcs)', '1200.00', 'SNACKS'),
(128, '12', 'Habib Cooking Oil(1kg)', '200.00', 'COOKING OILS'),
(129, '13', 'Habib Cooking Oil(5kg)', '1000.00', 'COOKING OILS'),
(130, '14', 'Tullo Cooking Oil(1kg)', '200.00', 'COOKING OILS'),
(131, '15', 'Tullo Cooking Oil(5kg)', '1000.00', 'COOKING OILS'),
(132, '16', 'Kashmir Cooking Oil(1kg)', '200.00', 'COOKING OILS'),
(133, '17', 'Kashmir Cooking Oil(5kg)', '1000.00', 'COOKING OILS'),
(134, '18', 'Maulvi Cooking Oil(1kg)', '220.00', 'COOKING OILS'),
(135, '19', 'Maulvi Cooking Oil(5kg)', '1150.00', 'COOKING OILS'),
(136, '192AFB0F', 'Lays', '10.00', 'SNACKS'),
(137, '199AB80F', 'MOTO E4(ROM 16GB', '10000.00', 'MOBILE'),
(138, '2', 'Dalda Cooking Oil(5kg)', '1000.00', 'COOKING OILS'),
(139, '20', 'Dalda Cooking Oil(1kg)', '200.00', 'COOKING OILS'),
(140, '252', 'BAKERI BISTIKS(LU)(12)', '200.00', 'BISCUITS'),
(141, '2988C80F', 'Doritos', '450.00', 'SNACKS'),
(142, '3', 'Meezan Cooking Oil(1kg)', '190.00', 'COOKING OILS'),
(143, '392FC70F', 'Ketchup', '70.00', 'KETCHUPS'),
(144, '39521E10', 'Head Shoulders', '95.00', 'SHAMPOOS'),
(145, '39FBDE0F', 'HP Laptop (Probook)b', '19000.00', 'LAPTOPS'),
(146, '3DD9BCB2', 'Tomotos (1KG)', '300.00', 'VEGETABLES'),
(147, '4', 'Meezan Cooking Oil(5kg)', '950.00', 'COOKING OILS'),
(148, '5', 'Canolive Cooking Oil(1kg)', '210.00', 'COOKING OILS'),
(149, '59070310', 'Dairy Milk', '100.00', 'CHOCOLATES'),
(150, '59870E10', 'Milk pack', '40.00', 'MILKS'),
(151, '59D30F10', 'Cheetos', '20.00', 'SNACKS'),
(152, '6', 'Manpasand Cooking Oil(1kg)', '190.00', 'COOKING OILS'),
(153, '7', 'Eva Cooking Oil ', '200.00', 'COOKING OILS'),
(154, '741', 'CHOCOLATTO(BISCONNI)(24)', '210.00', 'BISCUITS'),
(155, '8', 'Soya Supreme Cooking Oil(1kg)', '200.00', 'COOKING OILS'),
(156, '879', 'COCOMO(BISCONNI)(24)', '125.00', 'BISCUITS'),
(157, '8916DF0F', 'LUX Soap', '70.00', 'SOAPS'),
(158, '8994C60F', 'Custard (1/2 kg)', '120.00', 'DESERTS'),
(159, '9', 'Shahtaj Cooking(1kg) ', '210.00', 'COOKING OILS'),
(160, '9546', 'FLO(BISCONNI)CAKE(24)', '200.00', 'CHOCOLATES'),
(161, '963', 'CHOCOLATE CHIP(BISCONNI)(24)', '200.00', 'BISCUITS'),
(162, '9632', 'CHOCOLATTO(BISCONNI)(12)', '200.00', 'BISCUITS'),
(163, '976', 'FLO(BISCONNI)(CAKE)(12)', '190.00', 'CHOCOLATES'),
(164, '987', 'BAKERI NAN KHATAI(LU)', '190.00', 'BISCUITS'),
(165, 'B97EC90F', 'Kisan Nimko', '40.00', 'NIMCOS'),
(166, 'C9570D10', 'Surf excel', '90.00', 'DETERGENTS'),
(167, 'E97CF70F', 'HP Laptop (Pro Book)Core-i7', '86000.00', 'LAPTOPS'),
(168, 'E9D6F50F', 'Cookies', '60.00', 'BISCUITS'),
(169, 'F978E20F', 'Dettol Soap', '50.00', 'SOAPS'),
(170, 'F9E9C00F', 'Cooking Oil', '180.00', 'BISCUITS'),
(171, 'FAA74ED3', 'SUFI OIL (5 KG)', '1050.00', 'COOKING OILS'),
(218, '1123', 'SLANTY(SALT)(1pcs)', '10.00', 'SNACKS'),
(219, '1124', 'SLANTY(SALT)(24pcs)', '240.00', 'SNACKS'),
(220, '1125', 'SLANTY(SALT)(1pcs)', '30.00', 'SNACKS'),
(221, '1126', 'SLANTY(SALT)(24pcs)', '720.00', 'SNACKS'),
(222, '1127', 'SLANTY(KETCHEP)(1pcs)', '10.00', 'SNACKS'),
(223, '1128', 'SLANTY(KETCHEP)(24pcs)', '240.00', 'SNACKS'),
(224, '1129', 'SLANTY(KETCHEP)(1pcs)', '30.00', 'SNACKS'),
(225, '1130', 'SLANTY(KETCHEP)(24pcs)', '720.00', 'SNACKS'),
(226, '1131', 'SLANTY(MASALA)(1pcs)', '10.00', 'SNACKS'),
(227, '1132', 'SLANTY(MASALA)(24pcs)', '240.00', 'SNACKS'),
(228, '1167', 'SLANTY(MASALA)(1pcs)', '30.00', 'SNACKS'),
(229, '1168', 'SLANTY(MASALA)(24pcs)', '720.00', 'SNACKS'),
(230, '1133', 'CHEETOS(KETCHEP)(1pcs)', '10.00', 'SNACKS'),
(231, '1134', 'CHEETOS(KETCHEP)(24pcs)', '240.00', 'SNACKS'),
(232, '1135', 'CHEETOS(KETCHEP)(1pcs)', '20.00', 'SNACKS'),
(233, '1136', 'SLANTY(MASALA)(24pcs)', '480.00', 'SNACKS'),
(234, '1137', 'CHEETOS(KETCHEP)(1pcs)', '25.00', 'SNACKS'),
(235, '1138', 'CHEETOS(KETCHEP)(24pcs)', '600.00', 'SNACKS'),
(236, '1139', 'SUPER CRISPS(1pcs)', '30.00', 'SNACKS'),
(237, '1140', 'SUPER CRISPS(24pcs)', '720.00', 'SNACKS'),
(238, '1141', 'SUPER CRISPS(1pcs)', '50.00', 'SNACKS'),
(239, '1142', 'SUPER CRISPS(12pcs)', '600.00', 'SNACKS'),
(240, '1143', 'SNACKERS(PIZZA)(LAYS)(1pcs)', '10.00', 'SNACKS'),
(241, '1144', 'SNACKERS(PIZZA)(LAYS)(24pcs)', '240.00', 'SNACKS'),
(242, '1145', 'SNACKERS(MASALA)(LAYS)(1pcs)', '10.00', 'SNACKS'),
(243, '1146', 'SNACKERS(MASALA)(LAYS)(24pcs)', '240.00', 'SNACKS'),
(244, '1147', 'SNACKERS(CHEESE)(LAYS)(1pcs)', '10.00', 'SNACKS'),
(245, '1148', 'SNACKERS(CHEESE)(LAYS)(24pcs)', '240.00', 'SNACKS'),
(246, '1149', 'PRINCLES(ORIGINAL)', '190.00', 'SNACKS'),
(247, '1150', 'PRINCLES(BARBIQUE)', '190.00', 'SNACKS'),
(248, '1151', 'PRINCLES(CHEESE)', '190.00', 'SNACKS'),
(249, '1152', 'DORITOS(LARGE)', '850.00', 'SNACKS'),
(250, '1153', 'KURKURE(CHUTNY CHASKA)(1pcs)', '20.00', 'SNACKS'),
(251, '1154', 'KURKURE(CHUTNY CHASKA)(24pcs)', '480.00', 'SNACKS'),
(252, '1155', 'KURKURE(CHUTNY CHASKA)(1pcs)', '50.00', 'SNACKS'),
(253, '1156', 'KURKURE(CHUTNY CHASKA)(12pcs)', '600.00', 'SNACKS'),
(254, '1157', 'KURKURE(RED HOT)(1pcs)', '20.00', 'SNACKS'),
(255, '1158', 'KURKURE(RED HOT)(24pcs)', '480.00', 'SNACKS'),
(256, '1159', 'KURKURE(RED HOT)(1pcs)', '50.00', 'SNACKS'),
(257, '1160', 'KURKURE(RED HOT)(12pcs)', '600.00', 'SNACKS'),
(258, '1161', 'OREO(6pcs)', '120.00', 'BISCUITS'),
(259, '1162', 'TUC(6pcs)', '120.00', 'BISCUITS'),
(260, '1163', 'PRINCE CHOCOLATE(6pcs)', '120.00', 'BISCUITS'),
(261, '1164', 'CANDI(LU)(6pcs)', '120.00', 'BISCUITS'),
(262, '1165', 'GALA(LU)(6pcs)', '120.00', 'BISCUITS'),
(263, '1166', 'TIGER(LU)(24pcs)', '200.00', 'BISCUITS'),
(264, '1169', 'ZEERA PLUS(LU)(6pcs)', '120.00', 'BISCUITS'),
(265, '1170', 'BAKERI CLASSIC(LU)(10pcs)', '200.00', 'BISCUITS'),
(266, '1171', 'BAKERI BISTIKS(LU)(10pcs)', '200.00', 'BISCUITS'),
(267, '1172', 'BAKERI NAN KHATAI(LU)(10pcs)', '200.00', 'BISCUITS'),
(268, '1173', 'WHEATABLE(LU)(1pcs)', '55.00', 'BISCUITS'),
(269, '1174', 'FLO(BISCONNI)(CAKE)(12pcs)', '120.00', 'CHOCOLATES'),
(270, '1175', 'CHOCOLATTO(BISCONNI)(12pcs)', '120.00', 'BISCUITS'),
(271, '1176', 'CHOCOLATTO(BISCONNI)(24pcs)', '200.00', 'BISCUITS'),
(272, '1177', 'CHOCOLATE CHIP(BISCONNI)(24pcs)', '115.00', 'BISCUITS'),
(273, '1178', 'NOVITA ORANGE(LU)(12pcs)', '220.00', 'BISCUITS'),
(274, '1179', 'NOVITA(LU)(12pcs)', '220.00', 'BISCUITS'),
(275, '1180', 'BAKERI CLASSIC(LU)(12pcs)', '200.00', 'BISCUITS'),
(276, '1181', 'BAKERI BISTIKS(LU)(12pcs)', '200.00', 'BISCUITS'),
(277, '1182', 'FLO(BISCONNI)(CAKE)(12pcs)', '120.00', 'BISCUITS'),
(278, '1183', 'SOOPER(PEAK FREANS)(24pcs)', '120.00', 'BISCUITS'),
(279, '1184', 'GALA(LU)', '120.00', 'BISCUITS'),
(280, '1185', 'CAFE(MAYFAIR)(6pcs)', '120.00', 'BISCUITS');

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
-- Indexes for table `customer-cart`
--
ALTER TABLE `customer-cart`
  ADD PRIMARY KEY (`cartID`,`amount`);

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
  ADD UNIQUE KEY `rfid_key` (`rfid`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`STORE_NAME`,`NTN-NO#`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
