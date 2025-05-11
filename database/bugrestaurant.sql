-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 11:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bugrestaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `bill_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetails`
--

INSERT INTO `billdetails` VALUES(1, 1, 3);
INSERT INTO `billdetails` VALUES(1, 2, 1);
INSERT INTO `billdetails` VALUES(1, 3, 7);
INSERT INTO `billdetails` VALUES(1, 5, 3);
INSERT INTO `billdetails` VALUES(2, 1, 1);
INSERT INTO `billdetails` VALUES(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `billstatus`
--

CREATE TABLE `billstatus` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_phone` varchar(255) DEFAULT NULL,
  `bill_address` text DEFAULT NULL,
  `bill_when` varchar(255) DEFAULT NULL,
  `bill_method` varchar(255) DEFAULT NULL,
  `bill_discount` int(11) DEFAULT NULL,
  `bill_delivery` int(11) DEFAULT NULL,
  `bill_total` int(11) DEFAULT NULL,
  `bill_paid` varchar(255) DEFAULT NULL,
  `bill_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billstatus`
--

INSERT INTO `billstatus` VALUES(1, 1, '+917340425065', 'vsfvsfs', '2025-05-09T23:00', 'cash', 330, 15, 3895, 'true', 6);
INSERT INTO `billstatus` VALUES(2, 1, '+917340425065', 'abc city college ', '2025-05-09T23:05', 'cash', 20, 15, 295, 'true', 6);
INSERT INTO `billstatus` VALUES(3, 1, '+917340425065', 'jhnuiguihg', '2025-05-10T00:33', 'cash', 20, 15, 295, 'true', 6);

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `book_phone` varchar(255) DEFAULT NULL,
  `book_people` int(11) DEFAULT NULL,
  `book_tables` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_when` varchar(255) DEFAULT NULL,
  `book_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` VALUES(1, 'vishal suthar', '84123456789', 10, 4, 1234567890, '2025-05-10T21:29', 'make food spicy ');
INSERT INTO `booktable` VALUES(2, 'fgiuiguil', '9112345678', 5, 3, 2147483647, '2025-05-24T21:50', '');
INSERT INTO `booktable` VALUES(3, 'dtfbrtb', '9145678963', 33, 5, 1234567890, '2025-05-31T21:55', 'awd');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` VALUES(1, 1, 100);
INSERT INTO `cart` VALUES(1, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `food_star` varchar(255) DEFAULT NULL,
  `food_vote` varchar(255) DEFAULT NULL,
  `food_price` varchar(255) DEFAULT NULL,
  `food_discount` varchar(255) DEFAULT NULL,
  `food_desc` varchar(255) DEFAULT NULL,
  `food_status` varchar(255) DEFAULT NULL,
  `food_type` varchar(255) DEFAULT NULL,
  `food_category` varchar(255) DEFAULT NULL,
  `food_src` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` VALUES(1, 'carne asada tacos', '4.5', '999', '300.00', '20.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-1.png');
INSERT INTO `food` VALUES(2, 'shrimp tacos', '4.5', '999', '350.00', '15.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-2.png');
INSERT INTO `food` VALUES(3, 'barbacoa tacos', '4.5', '500', '320.00', '30.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-3.png');
INSERT INTO `food` VALUES(4, 'tacos al pastor', '4.5', '999', '280.00', '10.00', '03 pieces per serving', 'best seller', 'meat', 'taco', 'taco/taco-4.png');
INSERT INTO `food` VALUES(5, 'tinga tacos', '4', '500', '240.00', '15.00', '03 pieces per serving', 'normal', 'meat', 'taco', 'taco/taco-5.png');
INSERT INTO `food` VALUES(6, 'campechanos tacos', '4', '500', '210.00', '12.00', '03 pieces per serving', 'new dishes', 'meat', 'taco', 'taco/taco-6.png');
INSERT INTO `food` VALUES(7, 'carnitas tacos', '4.5', '500', '280.00', '18.00', '03 pieces per serving', 'seasonal dishes online only', 'meat', 'taco', 'taco/taco-7.png');
INSERT INTO `food` VALUES(8, 'vegan tacos', '4.5', '100', '200.00', '10.00', '03 pieces per serving', 'new dishes', 'vegan', 'taco', 'taco/taco-8.png');
INSERT INTO `food` VALUES(9, 'wet burrito', '4.5', '600', '350.00', '15.00', '01 roll per serving', 'new dishes', 'meat', 'burrito', 'burrito/burrito-1.png');
INSERT INTO `food` VALUES(10, 'poncho burrito', '4.5', '999', '400.00', '30.00', '01 roll per serving', 'best seller', 'meat', 'burrito', 'burrito/burrito-2.png');
INSERT INTO `food` VALUES(11, 'bean & cheese burrito', '4.5', '999', '300.00', '25.00', '01 roll per serving', 'best seller', 'vegan', 'burrito', 'burrito/burrito-3.png');
INSERT INTO `food` VALUES(12, 'breakfast burrito', '4.5', '999', '350.00', '20.00', '01 roll per serving', 'new dishes', 'meat', 'burrito', 'burrito/burrito-4.png');
INSERT INTO `food` VALUES(13, 'california burrito', '4.5', '999', '380.00', '15.00', '01 roll per serving', 'best seller', 'meat', 'burrito', 'burrito/burrito-5.png');
INSERT INTO `food` VALUES(14, 'chimichanga', '4', '400', '250.00', '18.00', '01 roll per serving', 'seasonal dishes', 'meat', 'burrito', 'burrito/burrito-6.png');
INSERT INTO `food` VALUES(15, 'nacho tots', '4', '699', '200.00', '12.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-1.png');
INSERT INTO `food` VALUES(16, 'root beer pork nachos', '4.5', '999', '220.00', '15.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-2.png');
INSERT INTO `food` VALUES(17, 'shrimp nachos', '4.5', '999', '300.00', '20.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-3.png');
INSERT INTO `food` VALUES(18, 'chicken nachos', '4.5', '999', '280.00', '15.00', '01 tray per serving', 'best seller', 'meat', 'nachos', 'nachos/nachos-4.png');
INSERT INTO `food` VALUES(19, 'only nachos', '4', '999', '150.00', '10.00', '01 tray per serving', 'normal', 'vegan', 'nachos', 'nachos/nachos-5.png');
INSERT INTO `food` VALUES(20, 'pico de gallo', '4.5', '999', '100.00', '5.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-1.png');
INSERT INTO `food` VALUES(21, 'salsa guille', '4', '699', '120.00', '8.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-2.png');
INSERT INTO `food` VALUES(22, 'tomatillo salsa', '4.5', '499', '110.00', '6.00', '01 bowl per serving', 'seasonal dishes', 'vegan', 'nachos', 'nachos/salsa-3.png');
INSERT INTO `food` VALUES(23, 'roasted tomato salsa', '4.5', '999', '130.00', '9.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-4.png');
INSERT INTO `food` VALUES(24, 'guacamole', '4.5', '699', '150.00', '10.00', '01 bowl per serving', 'best seller', 'vegan', 'nachos', 'nachos/salsa-5.png');
INSERT INTO `food` VALUES(25, 'corn salad', '3.5', '699', '80.00', '5.00', '01 bowl per serving', 'new dishes seasonal dishes', 'vegan', 'sides', 'side/side-1.png');
INSERT INTO `food` VALUES(26, 'keto taquitos', '4.5', '999', '200.00', '10.00', '05 pieces per serving', 'best seller', 'meat', 'sides', 'side/side-2.png');
INSERT INTO `food` VALUES(27, 'mexican rice', '4', '200', '100.00', '5.00', '01 bowl per serving', 'normal', 'vegan', 'sides', 'side/side-3.png');
INSERT INTO `food` VALUES(28, 'cilantro lime rice', '4', '100', '120.00', '8.00', '01 bowl per serving', 'new dishes', 'vegan', 'sides', 'side/side-4.png');
INSERT INTO `food` VALUES(29, 'chicken tortilla soup', '3.5', '299', '180.00', '10.00', '01 bowl per serving', 'new dishes', 'meat', 'sides', 'side/side-5.png');
INSERT INTO `food` VALUES(30, 'Churros', '4.5', '999', '150.00', '5.00', '05 pieces per serving', 'best seller', 'vegan', 'dessert', 'dessert/dessert-1.png');
INSERT INTO `food` VALUES(31, 'Fried Ice Cream', '4.5', '999', '170.00', '15.00', '01 piece per serving', 'best seller', 'vegan', 'dessert', 'dessert/dessert-2.png');
INSERT INTO `food` VALUES(32, 'Dulce de Leche', '4.5', '50', '130.00', '8.00', '01 bowl per serving', 'new dishes', 'vegan', 'dessert', 'dessert/dessert-3.png');
INSERT INTO `food` VALUES(33, 'Sweet Corn Cake', '3', '599', '100.00', '5.00', '02 pieces per serving', 'seasonal dishes online only', 'vegan', 'dessert', 'dessert/dessert-4.png');
INSERT INTO `food` VALUES(34, 'Sopapillas', '4', '199', '80.00', '2.00', '10 pieces per serving', 'normal', 'vegan', 'dessert', 'dessert/dessert-5.png');
INSERT INTO `food` VALUES(35, 'Conchas', '4', '299', '120.00', '6.00', '10 pieces per serving', 'normal', 'vegan', 'dessert', 'dessert/dessert-6.png');
INSERT INTO `food` VALUES(36, 'Horchata', '4.5', '999', '90.00', '5.00', '01 glass per serving', 'normal', 'vegan', 'dessert', 'dessert/dessert-7.png');
INSERT INTO `food` VALUES(37, 'Margarita', '4.5', '999', '150.00', '10.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-1.png');
INSERT INTO `food` VALUES(38, 'Michelada', '4.5', '999', '140.00', '8.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-2.png');
INSERT INTO `food` VALUES(39, 'paloma', '4.5', '599', '130.00', '5.00', '01 glass per serving', 'new dishes seasonal dishes', 'vegan', 'drink', 'drink/drink-3.png');
INSERT INTO `food` VALUES(40, 'Atole', '4', '999', '100.00', '10.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-4.png');
INSERT INTO `food` VALUES(41, 'fruit detox', '3.5', '999', '80.00', '3.00', '01 glass per serving', 'seasonal dishes best seller', 'vegan', 'drink', 'drink/drink-5.png');
INSERT INTO `food` VALUES(42, 'Coca cola', '4.5', '9999', '90.00', '4.00', '01 glass per serving', 'best seller', 'vegan', 'drink', 'drink/drink-6.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_birth` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES(1, 'vishal', 'abc@gmail.com', '84734042506', '65657165Vs@#', '2022-01-03', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`bill_id`,`food_id`);

--
-- Indexes for table `billstatus`
--
ALTER TABLE `billstatus`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`food_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
