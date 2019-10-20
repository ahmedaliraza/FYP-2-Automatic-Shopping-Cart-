-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2019 at 06:39 PM
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
-- Database: `cartigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `S_Number` int(255) NOT NULL,
  `PRODUCT_NAME` varchar(255) NOT NULL,
  `PRODUCT_PRICE` varchar(255) NOT NULL,
  `WEIGHT` varchar(255) NOT NULL,
  `QUANTITY` varchar(255) NOT NULL,
  `RFID_TAG` int(255) NOT NULL,
  `PRODUCT_ID` varchar(255) NOT NULL,
  `PRODUCT_TYPE` varchar(255) NOT NULL,
  `PRODUCT_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`S_Number`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `WEIGHT`, `QUANTITY`, `RFID_TAG`, `PRODUCT_ID`, `PRODUCT_TYPE`, `PRODUCT_DESCRIPTION`) VALUES
(1, 'Dalda Cooking Oil (1KG)', '200', '1KG', '1', 1, '1', 'Cooking Oil', 'Dalda Cooking Oil Price is 200Rs for 1KG'),
(12, 'Dalda Cooking Oil(5KG)', '1000', '5KG', '1', 2, '2', 'Cooking Oil', 'Dalda Cooking Oil Price is 1000 Rs for 5KG'),
(23, 'Meezan Cooking Oil (1KG)', '190', '1KG', '1', 3, '3', 'Cooking Oil', 'Meezan Cooking Oil Price is 190/Rs of 1KG'),
(32, 'Meezan Cooking Oil (5KG)', '950', '5KG', '1', 4, '4', 'Cooking Oil', 'Meezan cooking Oil for 5KG price is 950/Rs'),
(43, 'Canolive Cooking Oil (1KG)', '210', '1KG', '1', 5, '5', 'Cooking Oil', 'Canolive Cooking oil of 1kg price is 210/Rs'),
(54, 'Manpasand Cooking Oil (1KG)', '190', '1KG', '1', 6, '6', 'Cooking Oil', 'Manpasand Cooking Oil 1KG price is 190'),
(64, 'Eva Cooking Oil (1KG)', '200', '1KG', '1', 7, '7', 'Cooking Oil', 'Eve Cooking Oil of 1kg price is 200/Rs'),
(73, 'Soya Supreme Cooking Oil (1KG)', '200', '1KG', '1', 8, '8', 'Cooking Oil', 'Soya Supreme Cooking Oil 1KG price is 200'),
(74, 'Shahtaj Cooking Oil (1KG)', '210', '1KG', '1', 9, '9', 'Cooking Oil', 'Shahtaj Cooking oil of 1kg price is 210/Rs'),
(2, 'Shahtaj Cooking Oil (5KG)', '1050', '5KG', '1', 10, '10', 'Cooking Oil', 'Shahtaj Cooking oil of 5kg price is 1050/Rs'),
(3, 'Manpasand Cooking Oil (5KG)', '950', '5KG', '1', 11, '11', 'Cooking Oil', 'Manpasand Cooking Oil 5KG price is 950/Rs'),
(4, 'Habib Cooking Oil (1KG)', '200', '1KG', '1', 12, '12', 'Cooking Oil', 'Habib Cooking Oil of 1kg price is 200/Rs'),
(5, 'Habib Cooking Oil (5KG)', '1000', '5KG', '1', 13, '13', 'Cooking Oil', 'Habib Cooking Oil 5KG price is 1000/Rs'),
(6, 'Tullo Cooking Oil (1KG)', '200', '1KG', '1', 14, '14', 'Cooking Oil', 'Tullo Cooking Oil for 1kg price is 200/Rs'),
(7, 'Tullo Cooking Oil (5KG)', '1000', '5KG', '1', 15, '15', 'Cooking Oil', 'Tullo Cooking Oil for 5kg price is 1000/Rs'),
(8, 'Kashmir Cooking Oil (1KG)', '200', '1KG', '1', 16, '16', 'Cooking Oil', 'Kashmir Cooking Oil for 1kg price is 200/Rs'),
(9, 'Kashmir Cooking Oil (5KG)', '1000', '5KG', '1', 17, '17', 'Cooking Oil', 'Kashmir Cooking Oil for 5kg price is 1000/Rs'),
(10, 'Maulvi Cooking Oil (1KG)', '220', '1KG', '1', 18, '18', 'Cooking Oil', 'Maulvi Cooking Oil for 1kg price is 220/Rs'),
(11, 'Maulvi Cooking Oil (5KG)', '1150', '5KG', '1', 19, '19', 'Cooking Oil', 'Maulvi Cooking Oil for 1kg price is 1150/Rs'),
(13, 'Habib Banaspati  (1KG)', '200', '1KG', '1', 20, '20', 'Ghee', 'Habib Banaspati of 1kg price is 200/Rs'),
(14, 'Habib Banaspati (5KG)', '1000', '5KG', '1', 21, '21', 'Ghee', 'Habib Banaspati 5KG price is 1000/Rs'),
(15, 'Tullo Banaspati (1KG)', '200', '1KG', '1', 22, '22', 'Ghee', 'Tullo Banaspati for 1kg price is 210/Rs'),
(16, 'Tullo Banaspati (5KG)', '1050', '5KG', '1', 23, '23', 'Ghee', 'Tullo Banaspati for 5kg price is 1050/Rs'),
(17, 'Kashmir Banaspati (1KG)', '200', '1KG', '1', 24, '24', 'Ghee', 'Kashmir Banaspati for 1kg price is 200/Rs'),
(18, 'Kashmir Banaspati (5KG)', '1000', '5KG', '1', 25, '25', 'Ghee', 'Kashmir Banaspati for 5kg price is 1000/Rs'),
(19, 'Maulvi Banaspati (1KG)', '220', '1KG', '1', 26, '26', 'Ghee', 'Maulvi Banaspati for 1kg price is 220/Rs'),
(20, 'Maulvi Banaspati (5KG)', '1150', '5KG', '1', 27, '27', 'Ghee', 'Maulvi Banaspati for 5 kg price is 1150/Rs'),
(21, 'Meezan Banaspati  (1KG)', '200', '1KG', '1', 28, '28', 'Ghee', 'Meezan Banaspati of 1kg price is 200/Rs'),
(22, 'Meezan Banaspati (5KG)', '1000', '5KG', '1', 29, '29', 'Ghee', 'Meezan Banaspati 5KG price is 1000/Rs'),
(24, 'Dalda Banaspati (1KG)', '220', '1KG', '1', 30, '30', 'Ghee', 'Dalda Banaspati for 1kg price is 220/Rs'),
(25, 'Dalda Banaspati (5KG)', '1050', '5KG', '1', 31, '31', 'Ghee', 'Dalda Banaspati for 5kg price is 1050/Rs'),
(26, 'Soya Supreme Banaspati (1KG)', '220', '1KG', '1', 32, '32', 'Ghee', 'Soya Supreme Banaspati for 1kg price is 220/Rs'),
(27, 'Soya Supreme Banaspati (5KG)', '1150', '5KG', '1', 33, '33', 'Ghee', 'Soya Supreme Banaspati for 5kg price is 1150/Rs'),
(28, 'Sufi Banaspati (1KG)', '220', '1KG', '1', 34, '34', 'Ghee', 'Sufi Banaspati for 1kg price is 220/Rs'),
(29, 'Sufi Banaspati (5KG)', '1150', '5KG', '1', 35, '35', 'Ghee', 'Sufi Banaspati for 5 kg price is 1150/Rs'),
(30, 'Shahtaj Banaspati (1KG)', '220', '1KG', '1', 36, '36', 'Ghee', 'Shahtaj Banaspati for 1kg price is 220/Rs'),
(31, 'Shahtaj Banaspati (5KG)', '1150', '5KG', '1', 37, '37', 'Ghee', 'Shahtaj Banaspati for 5 kg price is 1150/Rs'),
(33, 'Cadbury Dairy Milk Chocolate (10/Rs)', '10', '11 grams', '1', 40, '40', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE PRICE 10/Rs'),
(34, 'Cadbury Dairy Milk Chocolate (25/Rs)', '25', '20 grams', '1', 41, '41', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PROCE 25/Rs'),
(35, 'Cadbury Dairy Milk Chocolate (65/Rs)', '65', '', '1', 42, '42', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE PRICE 65/Rs'),
(36, 'Cadbury Dairy Milk Chocolate (100/Rs)', '100', '', '1', 43, '43', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PROCE 100/Rs'),
(37, 'Cadbury Dairy Milk Chocolate(BUBBLY) (35/Rs)', '35', '', '1', 44, '44', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE(BUBBLY) PRICE 35/Rs'),
(38, 'Cadbury Dairy Milk Chocolate(BUBBLY) (55/Rs)', '55', '', '1', 45, '45', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE PRICE 55/Rs'),
(39, 'Cadbury Dairy Milk Chocolate(BUBBLY) (110/Rs)', '110', '', '1', 46, '46', 'CHOCOLATE', 'CADBURY DAIRYMILK CHOCOLATE(BUBBLY) PRICE 110/Rs'),
(40, 'Cadbury Dairy Milk Chocolate(Crackle) (25/Rs)', '25', '20 grams', '1', 47, '47', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE (Crackle) PRICE 25/Rs'),
(41, 'Cadbury Dairy Milk Chocolate(Crackle) (55/Rs)', '55', '', '1', 48, '48', 'CHOCOLATE', 'CADBURY DAIRY MILK CHOCOLATE (Crackle) PRICE 55/Rs'),
(42, 'Mars ', '60', '', '1', 49, '49', 'CHOCOLATE', 'MARS PRICE IS 60/Rs'),
(44, 'SNICKERS', '60', '', '1', 50, '50', 'CHOCOLATE', 'SNICKERS PRICE IS 60/Rs'),
(45, 'TWIX', '60', '', '1', 51, '51', 'CHOCOLATE', 'TWIX CHOCOLATE PRICE 60/Rs'),
(46, 'KITKAT', '60', '', '1', 52, '52', 'CHOCOLATE', 'KITKAT CHOCOLATE PRICE 60/Rs'),
(47, 'GALAXY (DARK) Chocolate', '225', '', '1', 53, '53', 'CHOCOLATE', 'GALAXY (DARK) CHOCOLATE PRICE 225/Rs'),
(48, 'BOUNTY Chocolate', '60', '', '1', 54, '54', 'CHOCOLATE', 'BOUNTY CHOCOLATE PRICE 60/Rs'),
(49, 'NOW(CANDYLAND) Chocolate', '5', '5 Grams', '1', 55, '55', 'CHOCOLATE', 'NOW(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(50, 'NOW(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 56, '56', 'CHOCOLATE', 'NOW(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(51, 'Jubilee(CANDYLAND) Chocolate', '5', '5 Grams', '1', 57, '57', 'CHOCOLATE', 'Jubilee CHOCOLATE PRICE 5/Rs'),
(52, 'Jubilee(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 58, '58', 'CHOCOLATE', 'Jubilee(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(53, 'SONNET(CANDYLAND) Chocolate', '5', '5 Grams', '1', 59, '59', 'CHOCOLATE', 'SONNET(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(55, 'SONNET(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 60, '60', 'CHOCOLATE', 'SONNET(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(56, 'PERK(CANDYLAND) Chocolate', '5', '5 Grams', '1', 61, '61', 'CHOCOLATE', 'PERK(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(57, 'PERK(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 62, '62', 'CHOCOLATE', 'PERK(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(58, 'PARADISE(CANDYLAND) Chocolate', '5', '5 Grams', '1', 63, '63', 'CHOCOLATE', 'PARADISE(CANDYLAND) CHOCOLATE PRICE 5/Rs'),
(59, 'PARADISE(CANDYLAND) Chocolate(10)', '10', '7 Grams', '1', 64, '64', 'CHOCOLATE', 'PARADISE(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(60, 'CLOUD-9 (CANDYLAND) Chocolate', '10', '7 Grams', '1', 65, '65', 'CHOCOLATE', 'CLOUD-9(CANDYLAND) CHOCOLATE PRICE 10/Rs'),
(61, 'CRICKET BAT(CA)', '350', '', '1', 67, '67', 'SPORTS', 'CRICKET BAT (CA) PRICE 350/Rs'),
(62, 'CRICKET BAT(MB)', '450', '500 GRAMS', '1', 68, '68', 'SPORTS', 'CRICKET BAT(MB) PRICE IS 450/Rs'),
(63, 'FOOTBALL', '600', '', '1', 69, '69', 'SPORTS', 'FOOTBALL PRICE IS 600/RS'),
(65, 'TABLE TENIS RACKETS(2)', '900', '', '1', 70, '70', 'SPORTS', 'TABLE TENNIS RACKETS (2RL) PRICE IS 900/Rs'),
(66, 'TABLE TENNIS NET', '1000', '', '1', 71, '71', 'SPORTS', 'TABLE TENNIS NET PRICE IS 1000/RS'),
(67, 'TABLE TENNIS BALL PACKET(6)', '600', '', '1', 72, '72', 'SPORTS', 'TABLE TENNIS BALL PACKET(6) PRICE IS 600/RS'),
(68, 'BADMINTON RACKETS (2)', '600', '100 GRAMS', '2', 73, '73', 'SPORTS', '2 BADMINTON TACKET PRICE IS 600/RS'),
(69, 'SHITTLE COCK PACKETS (BADMINTON)(12)', '1000', '250 GRAMS', '12', 74, '74', 'SPORTS', 'SHITTLE COCK PACKETS (BADMINTON)(12) PRICE IS 1000/RS'),
(70, 'BASKET BALL', '550', '', '1', 75, '75', 'SPORTS', 'BASKET BALL PRICE IS 550/RS'),
(71, 'BASKET BALL STAND', '750', '', '1', 76, '76', 'SPORTS', 'BASKET BALL STAND PRICE IS 750/RS'),
(72, 'SNOOKER BALLS PACKETS(24)', '1000', '', '24', 77, '77', 'SPORTS', 'SNOOKER BALLS PACKETS(24) PRICE IS 1000/RS'),
(75, 'CHESS GAME', '500', '100 GRAMS', '1', 78, '78', 'SPORTS', 'Chess game price is 500/Rs '),
(76, 'SNOOKER STICK', '1200', '500 GRAMS', '1', 79, '79', 'SPORTS', 'SNOOKER STICK PRICE IS 1200/RS'),
(77, 'BOXING GLOVES(R/L)(APOLLO)', '1300', '12 OZ', '2', 80, '80', 'SPORTS', 'BOXING GLOVES(R/L)(APOLLO) PRICE IS 1300/RS'),
(78, 'HOCKEY STICK (CA)', '3000', '500 GRAMS', '1', 81, '81', 'SPORTS', 'HOCKEY STICK(CA) PRICE IS 3000/RS '),
(156, 'KURLEEZ(MASALA)', '10', '20 g', '1', 82, '82', 'SNACKS', 'KURLEEZ(MASALA ) price is 10/rs'),
(157, 'KURLEEZ(MASALA )', '30', '--', '1', 83, '83', 'SNACKS', 'KURLEEZ(MASALA ) price is 30/RS'),
(158, 'KURLEEZ(MASALA)', '50', '--', '1', 84, '84', 'SNACKS', 'KURLEEZ(MASALA ) price is 50/RS'),
(159, 'KURLEEZ(KETCHEP)', '10', '20 g', '1', 85, '85', 'SNACKS', 'KURLEEZ(KETCHEP) price is 10/RS'),
(160, 'KURLEEZ(KETCHEP)', '30', '--', '1', 86, '86', 'SNACKS', 'KURLEEZ(KETCHEP) price is 30/RS'),
(161, 'KURLEEZ(KETCHEP)', '50', '--', '1', 87, '87', 'SNACKS', 'KURLEEZ(KETCHEP) price is 50/RS'),
(162, 'LAYS(SALT)', '10', '20 g', '1', 88, '88', 'SNACKS', 'LAYS (SALT) PRICE IS 10/RS'),
(163, 'LAYS(SALT)', '20', '--', '1', 89, '89', 'SNACKS', 'LAYS (SALT) PRICE IS 20/RS'),
(164, 'LAYS(SALT)', '30', '--', '1', 90, '90', 'SNACKS', 'LAYS (SALT) PRICE IS 30/RS'),
(165, 'LAYS(SALT)', '50', '--', '1', 91, '91', 'SNACKS', 'LAYS (SALT) PRICE IS 50/RS'),
(166, 'LAY(FRENCH CHEESE)', '10', '20 g', '1', 92, '92', 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 10/RS'),
(167, 'LAY(FRENCH CHEESE)', '20', '--', '1', 93, '93', 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 20/RS'),
(168, 'LAY(FRENCH CHEESE)', '30', '--', '1', 94, '94', 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 30/RS'),
(169, 'LAY(FRENCH CHEESE)', '50', '--', '1', 95, '95', 'SNACKS', 'LAY(FRENCH CHEESE) PRICE IS 50/RS'),
(170, 'LAY(MASALA)', '10', '20 g', '1', 96, '96', 'SNACKS', 'LAY(MASALA) PRICE IS 10/RS'),
(171, 'LAY(MASALA)', '20', '--', '1', 97, '97', 'SNACKS', 'LAY(MASALA) PRICE IS 20/RS'),
(172, 'LAY(MASALA)', '30', '--', '1', 98, '98', 'SNACKS', 'LAY(MASALA) PRICE IS 30/RS'),
(173, 'LAY(MASALA)', '50', '--', '1', 99, '99', 'SNACKS', 'LAY(MASALA) PRICE IS 50/RS'),
(174, 'LAYS(YOGURT & HERBS)', '10', '20 g', '1', 100, '100', 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 10/RS'),
(175, 'LAYS(YOGURT & HERBS)', '20', '--', '1', 101, '101', 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 20/RS'),
(176, 'LAYS(YOGURT & HERBS)', '30', '--', '1', 102, '102', 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 30/RS'),
(177, 'LAYS(YOGURT & HERBS)', '50', '--', '1', 103, '103', 'SNACKS', 'LAYS(YOGURT & HERBS) PRICE IS 50/RS'),
(178, 'WAVYS(BARBIQUE)', '20', '--', '1', 104, '104', 'SNACKS', 'WAVYS(BARBIQUE) price is 20/RS'),
(179, 'WAVYS(BARBIQUE)', '30', '--', '1', 105, '105', 'SNACKS', 'WAVYS(BARBIQUE) price is 30/RS'),
(180, 'WAVYS(BARBIQUE)', '50', '--', '1', 106, '106', 'SNACKS', 'WAVYS(BARBIQUE) price is 50/RS'),
(181, 'WAVYS(SALT & PEPPER)', '20', '--', '1', 107, '107', 'SNACKS', 'WAVYS(SALT & PEPPER) price is 20/RS'),
(182, 'WAVYS(SALT & PEPPER)', '30', '--', '1', 108, '108', 'SNACKS', 'WAVYS(SALT & PEPPER) price is 30/RS'),
(183, 'WAVYS(SALT & PEPPER)', '50', '--', '1', 109, '109', 'SNACKS', 'WAVYS(SALT & PEPPER) price is 50/RS'),
(200, 'CATTY CHINS', '10', '', '1', 110, '110', 'SNACKS', 'CATTY CHINS PRICE IS 10/Rs'),
(201, 'CATTY CHINS', '20', '', '1', 111, '111', 'SNACKS', 'CATTY CHINS price is 20/Rs'),
(202, 'CATTY CHINS', '30', '', '1', 112, '112', 'SNACKS', 'CATTY CHINS price is 50/Rs'),
(203, 'SLANTY(SALT)', '10', '', '1', 113, '113', 'SNACKS', 'SLANTY(SALT) price is 10/Rs'),
(204, 'SLANTY(SALT)', '30', '', '1', 114, '114', 'SNACKS', 'SLANTY(SALT) price is 30/Rs'),
(205, 'SLANTY(KETCHEP)', '10', '', '1', 115, '115', 'SNACKS', 'SLANTY(KETCHEP) price is 10/Rs'),
(206, 'SLANTY(KETCHEP)', '30', '', '1', 116, '116', 'SNACKS', 'SLANTY(KETCHEP) price is 30/Rs'),
(207, 'SLANTY(MASALA)', '10', '', '1', 117, '117', 'SNACKS', 'SLANTY(MASALA) price is 10/Rs'),
(208, 'SLANTY(MASALA)', '30', '', '1', 118, '118', 'SNACKS', 'SLANTY(MASALA) price is 30/Rs'),
(209, 'CHEETOS(KETCHEP)', '10', '', '1', 119, '119', 'SNACKS', 'CHEETOS(KETCHEP) PRICE IS 10/Rs'),
(210, 'CHEETOS(KETCHEP)', '20', '', '1', 120, '120', 'SNACKS', 'CHEETOS(KETCHEP) price is 20/Rs'),
(211, 'CHEETOS(RED HOT)', '25', '', '1', 121, '121', 'SNACKS', 'CHEETOS(RED HOT) price is 25/Rs'),
(212, 'SUPER CRISPS', '30', '', '1', 122, '122', 'SNACKS', 'SUPER CRISPS price is 30/Rs'),
(213, 'SUPER CRISPS', '50', '', '1', 123, '123', 'SNACKS', 'SUPER CRISPS price is 50/Rs'),
(214, 'SNACKERS(PIZZA)(LAYS)', '10', '', '1', 124, '124', 'SNACKS', 'SNACKERS(PIZZA)(LAYS) price is 10/Rs'),
(215, 'SNACKERS(MASALA)(LAYS)', '10', '', '1', 125, '125', 'SNACKS', 'SNACKERS(PIZZA)(LAYS) price is 10/Rs'),
(216, 'SNACKERS(CHEESE)(LAYS)', '10', '', '1', 126, '126', 'SNACKS', 'SNACKERS(CHEESE)(LAYS) price is 10/Rs'),
(217, 'PRINCLES(ORIGINAL)', '190', '', '1', 127, '127', 'SNACKS', 'PRINCLES(ORIGINAL) price is 190/Rs'),
(218, 'PRINCLES(BARBIQUE)', '190', '', '1', 128, '128', 'SNACKS', 'PRINCLES(BARBIQUE) price is 190/Rs'),
(219, 'PRINCLES(CHEESE)', '190', '', '1', 129, '129', 'SNACKS', 'PRINCLES(CHEESE) price is 190/Rs'),
(220, 'DORITOS(SMALL)', '490', '', '1', 130, '130', 'SNACKS', 'DORITOS(SMALL) PRICE IS 490/Rs'),
(221, 'DORITOS(LARGE)', '850', '', '1', 131, '131', 'SNACKS', 'DORITOS(LARGE) price is 850/Rs'),
(222, 'KURKURE(CHUTNY CHASKA)', '15', '', '1', 132, '132', 'SNACKS', 'KURKURE(CHUTNY CHASKA) price is 15/Rs'),
(223, 'KURKURE(CHUTNY CHASKA)', '30', '', '1', 133, '133', 'SNACKS', 'KURKURE(CHUTNY CHASKA) price is 30/Rs'),
(224, 'KURKURE(RED HOT)', '15', '', '1', 134, '134', 'SNACKS', 'KURKURE(RED HOT) price is 15/Rs'),
(225, 'KURKURE(RED HOT)', '25', '', '1', 135, '135', 'SNACKS', 'KURKURE(RED HOT) price is 25/Rs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`RFID_TAG`,`PRODUCT_ID`),
  ADD UNIQUE KEY `S_Number` (`S_Number`),
  ADD UNIQUE KEY `RFID_TAG` (`RFID_TAG`),
  ADD UNIQUE KEY `RFID_TAG_2` (`RFID_TAG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `S_Number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;