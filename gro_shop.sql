-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 11:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gro_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('rajvi', 'rajvikakdiya@gmail.com', '24687954656', 'xyz', 'abc'),
('rajvi', 'rajvikakdiya@gmail.com', '21556889', 'xyz', 'good'),
('rajvi', 'rajvikakdiya@gmail.com', '5795485696', '', 'nice service'),
('rajvi', 'rajvikakdiya@gmail.com', '65664565', '', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('nency', 'nency sangani', 'sanganinency@gmail.com', '46546548676', 'rajkot', '123456'),
('rajvi', 'rajvi kakdiya', 'rajvikakdiya@gmail.com', '46546548676', 'dholra', '123456'),
('rihan', 'rihan kakdiya', 'rihankakdiya@gmail.com', '46546548676', 'dholra', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feedbake`
--

CREATE TABLE `feedbake` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbake`
--

INSERT INTO `feedbake` (`Name`, `Email`, `Mobile`, `Message`) VALUES
('rajvi', 'kakdiyarajvi@gmail.com', 458795622, 'good\r\n'),
('rihan', 'rihankakdiya@gmail.com', 2147483647, 'nice'),
('pooja', 'pooja@gmail.com', 895674565, 'nice service\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(80, 'indiagate-basmati-rice', 370, 'indiagate-basmati-rice 5KG', 7, 'images/indiagate-basmati-rice', 'DISABLE'),
(81, 'turmeric-powder', 56, 'turmeric-powder 200G', 7, 'images/turmeric-powder.jpg', 'ENABLE'),
(82, 'catch-coriander-powder', 56, 'catch-coriander-powder ', 7, 'images/catch-coriander-powder.jpg', 'ENABLE'),
(84, 'catch-red-chillilal-mirch-powd', 56, 'catch-red-chillilal-mirch-powder 200GR', 7, 'images/catch-red-chillilal-mirch-powder.jpg', 'ENABLE'),
(85, 'daawat-basmati-rice', 68, 'daawat-basmati-rice 1KG', 7, 'images/daawat-basmati-rice.jpg', 'ENABLE'),
(86, 'indiagate-basmati-rice', 370, 'indiagate-basmati-rice 5KG', 7, 'images/indiagate-basmati-rice.jpg', 'ENABLE'),
(87, 'fresho-frozen-green-peas', 129, 'fresho-frozen-green-peas 1KG', 7, 'images/fresho-frozen-green-peas.jpg', 'ENABLE'),
(88, 'fresho-frozen-sweet-corn', 129, 'fresho-frozen-sweet-corn 1KG', 7, 'images/fresho-frozen-sweet-corn.jpg', 'ENABLE'),
(89, 'fresho-frozen-sweet-corn', 129, 'fresho-frozen-sweet-corn 1KG', 7, 'images/fresho-frozen-sweet-corn.jpg', 'DISABLE'),
(90, 'fresho-organic-cow-desi-gheetu', 213, 'fresho-organic-cow-desi-gheetuppa 500ml', 7, 'images/fresho-organic-cow-desi-gheetuppa.jpg', 'ENABLE'),
(91, 'coca-cola-diet-coke-soft-drink', 37, 'coca-cola-diet-coke-soft-drink 300ML', 7, 'images/coca-cola-diet-coke-soft-drink.jpg', 'ENABLE'),
(92, 'frooti-drink-fresh-n-juicy-man', 10, 'frooti-drink-fresh-n-juicy-mango 200ML', 7, 'images/frooti-drink-fresh-n-juicy-mango.jpg', 'ENABLE'),
(93, 'kinley-sparkling-water-club-so', 20, 'kinley-sparkling-water-club-soda 750ML', 7, 'images/kinley-sparkling-water-club-soda.jpg', 'ENABLE'),
(94, 'thums-up-soft-drink', 129, 'thums-up-soft-drink 2L', 7, 'images/thums-up-soft-drink.jpg', 'ENABLE'),
(95, 'pista-badam-cookis', 15, 'pista-badam-cookis', 7, 'images/pista-badam-cookis.jpg', 'ENABLE'),
(96, 'cashew-cookies', 129, 'cashew-cookies', 7, 'images/cashew-cookies.jpg', 'ENABLE'),
(97, 'pista-badam-cookis', 20, 'pista-badam-cookis', 7, 'images/pista-badam-cookis.jpg', 'DISABLE'),
(98, 'chocochip-cookies', 80, 'chocochip-cookies', 7, 'images/chocochip-cookies.jpg', 'ENABLE'),
(99, 'butter-cookis', 20, 'butter-cookis', 7, 'images/butter-cookis.jpg', 'ENABLE'),
(100, 'tasties-nacho-chips-cheese', 20, 'tasties-nacho-chips-cheese', 7, 'images/tasties-nacho-chips-cheese.jpg', 'ENABLE'),
(101, 'tasties-nacho-chips-jalapeno', 20, 'tasties-nacho-chips-jalapeno', 7, 'images/tasties-nacho-chips-jalapeno.jpg', 'ENABLE'),
(102, 'tasties-nacho-chips-peri-peri', 20, 'tasties-nacho-chips-peri-peri', 7, 'images/tasties-nacho-chips-peri-peri.jpg', 'ENABLE'),
(103, 'tasties-nacho-chips-sweet-chil', 20, 'tasties-nacho-chips-sweet-chilli', 7, 'images/tasties-nacho-chips-sweet-chilli.jpg', 'ENABLE'),
(104, 'bingo-tedhe-medhe-punjabi-tadk', 30, 'bingo-tedhe-medhe-punjabi-tadka-namkeen-mixture', 7, 'images/bingo-tedhe-medhe-punjabi-tadka-namkeen-mixture.jpg', 'ENABLE'),
(105, 'bingo-tedhe-medhe-navrattan-mi', 30, 'bingo-tedhe-medhe-navrattan-mix-namkeen-mixture', 7, 'images/bingo-tedhe-medhe-navrattan-mix-namkeen-mixture.jpg', 'ENABLE'),
(106, 'bingo-tedhe-medhe-namkeen-mixt', 30, 'bingo-tedhe-medhe-namkeen-mixture-khatta-meetha', 7, 'images/bingo-tedhe-medhe-namkeen-mixture-khatta-meetha.jpg', 'ENABLE'),
(107, 'bingo-tedhe-medhe-moong-dal-na', 30, 'bingo-tedhe-medhe-moong-dal-namkeen-mixture', 7, 'images/bingo-tedhe-medhe-moong-dal-namkeen-mixture.jpg', 'ENABLE'),
(108, 'bru-instant-coffee', 265, 'bru-instant-coffee', 7, 'images/bru-instant-coffee.jpg', 'ENABLE'),
(109, 'cadbury-bournvita-chocolate-he', 361, 'cadbury-bournvita-chocolate-health-drink', 7, 'images/cadbury-bournvita-chocolate-health-drink.jpg', 'ENABLE'),
(110, 'tata-tea-gold-tea', 488, 'tata-tea-gold-tea', 7, 'images/tata-tea-gold-tea.jpg', 'ENABLE'),
(111, 'taj-mahal-tea', 250, 'taj-mahal-tea', 7, 'images/taj-mahal-tea.jpg', 'ENABLE'),
(112, 'britannia-layerz-choco-layer-c', 30, 'britannia-layerz-choco-layer-cake-comination-of-vanilla-fluffy-cake-contains-egg', 7, 'images/britannia-layerz-choco-layer-cake-comination-of-vanilla-fluffy-cake-contains-egg.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('nency', 'nency sangani', 'sanganinency@gmail.com', '46546548676', 'rajkot', '123456'),
('pooja', 'pooja gadhiya', 'pooja@gmail.com', '2569863544', 'rajkot', '789456'),
('rajvi', 'rajvi kakdiya', 'rajvikakdiya@gmail.com', '46546548676', 'dholra', '123456'),
('rihan', 'rihan kakdiya', 'rihankakdiya@gmail.com', '46546548676', 'dholra', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(69, 84, 'catch-red-chillilal-mirch-powd', 56, 2, '2021-10-05', 'rajvi', 7),
(70, 82, 'catch-coriander-powder', 56, 3, '2021-10-05', 'rajvi', 7),
(71, 84, 'catch-red-chillilal-mirch-powd', 56, 2, '2021-10-05', 'rajvi', 7),
(72, 82, 'catch-coriander-powder', 56, 3, '2021-10-05', 'rajvi', 7),
(73, 84, 'catch-red-chillilal-mirch-powd', 56, 2, '2021-10-05', 'rajvi', 7),
(74, 82, 'catch-coriander-powder', 56, 3, '2021-10-05', 'rajvi', 7),
(75, 84, 'catch-red-chillilal-mirch-powd', 56, 3, '2021-10-05', 'rajvi', 7),
(76, 92, 'frooti-drink-fresh-n-juicy-man', 10, 2, '2021-10-05', 'rajvi', 7),
(77, 106, 'bingo-tedhe-medhe-namkeen-mixt', 30, 2, '2021-10-05', 'rajvi', 7),
(78, 84, 'catch-red-chillilal-mirch-powd', 56, 1, '2021-10-07', 'rajvi', 7),
(79, 101, 'tasties-nacho-chips-jalapeno', 20, 3, '2021-10-07', 'rajvi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(7, 'grocey shop', 'gro@gmail.com', '2569863544', 'rajkot', 'rajvi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
