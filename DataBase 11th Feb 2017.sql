-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2017 at 01:26 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bhai`
--

-- --------------------------------------------------------

--
-- Table structure for table `anomaly`
--

CREATE TABLE IF NOT EXISTS `anomaly` (
  `anomaly_id` int(11) NOT NULL,
  `anomaly_reason` varchar(45) DEFAULT NULL,
  `Anomaly_lossprice` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `catagory_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_type` int(11) DEFAULT NULL,
  `feedback_Decrption` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bhai_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_lastupdate` timestamp NULL DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE IF NOT EXISTS `orderitems` (
  `orderItem_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

CREATE TABLE IF NOT EXISTS `packing` (
`packing_id` int(11) NOT NULL,
  `packing_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_price` bigint(20) DEFAULT NULL,
  `product_description` varchar(45) DEFAULT NULL,
  `catagory_id` int(11) DEFAULT NULL,
  `packing_id` int(11) NOT NULL,
  `img_src` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_description`, `catagory_id`, `packing_id`, `img_src`) VALUES
(1, 'coffee', 200, 'adsada', NULL, 0, 'images/coffee.jpg'),
(2, 'sugar', 50, 'asdasdas', NULL, 0, 'images/sugar.jpg'),
(3, 'meat', 350, 'sfasdasdasdas', NULL, 0, 'images/meat.jpg'),
(4, 'fish', 200, 'wdadas', NULL, 0, 'images/fish.png'),
(5, 'potato', 20, 'Vegetables', NULL, 0, 'images/potato.jpg'),
(6, 'Bananas', 100, 'Fruits', NULL, 0, 'images/banana.png'),
(7, 'Naswaar', 10, 'drugs', NULL, 0, 'Images/naswaar.jpg'),
(8, 'Grapes', NULL, 'Fruits', NULL, 0, NULL),
(9, 'Lemons', NULL, 'Fruits', NULL, 0, NULL),
(10, 'Lime', NULL, 'Fruits', NULL, 0, NULL),
(11, 'Melons', NULL, 'Fruits', NULL, 0, NULL),
(12, 'Nectarines', NULL, 'Fruits', NULL, 0, NULL),
(13, 'Orange', NULL, 'Fruits', NULL, 0, NULL),
(14, 'Peaches', NULL, 'Fruits', NULL, 0, NULL),
(15, 'Pears', NULL, 'Fruits', NULL, 0, NULL),
(16, 'Plums', NULL, 'Fruits', NULL, 0, NULL),
(17, 'strawberries', NULL, 'Fruits', NULL, 0, NULL),
(18, 'Ground', NULL, 'Beef', NULL, 0, NULL),
(19, 'Hamburger', NULL, 'Beef', NULL, 0, NULL),
(20, 'Roast', NULL, 'Beef', NULL, 0, NULL),
(21, 'Steaks', NULL, 'Beef', NULL, 0, NULL),
(22, 'Boneless', NULL, 'Chicken', NULL, 0, NULL),
(23, 'legs', NULL, 'Chicken', NULL, 0, NULL),
(24, 'whole Chicken', NULL, 'Chicken', NULL, 0, NULL),
(25, 'Wings', NULL, 'Chicken', NULL, 0, NULL),
(26, 'Asparagus', NULL, 'Vegetables', NULL, 0, NULL),
(27, 'Broccoli', NULL, 'Vegetables', NULL, 0, NULL),
(28, 'Carrots', NULL, 'Vegetables', NULL, 0, NULL),
(29, 'Celery', NULL, 'Vegetables', NULL, 0, NULL),
(30, 'Corn', NULL, 'Vegetables', NULL, 0, NULL),
(31, 'Gralic', NULL, 'Vegetables', NULL, 0, NULL),
(32, 'Lettuce', NULL, 'Vegetables', NULL, 0, NULL),
(33, 'Onions', NULL, 'Vegetables', NULL, 0, NULL),
(34, 'Pappers', NULL, 'Vegetables', NULL, 0, NULL),
(35, 'Potato', NULL, 'Vegetables', NULL, 0, NULL),
(36, 'Squash', NULL, 'Vegetables', NULL, 0, NULL),
(37, 'Tomatoes', NULL, 'Vegetables', NULL, 0, NULL),
(38, 'Cherries', NULL, 'Canned Fruits', NULL, 0, NULL),
(39, 'Mixed Fruits', NULL, 'Canned Fruits', NULL, 0, NULL),
(40, 'Peaches', NULL, 'Canned Fruits', NULL, 0, NULL),
(41, 'Pears', NULL, 'Canned Fruits', NULL, 0, NULL),
(42, 'Pineapples', NULL, 'Canned Fruits', NULL, 0, NULL),
(43, 'Pizza', NULL, 'Frozen', NULL, 0, NULL),
(44, 'Tater Tots', NULL, 'Frozen', NULL, 0, NULL),
(45, 'Peas', NULL, 'Frozen', NULL, 0, NULL),
(46, 'Mixed Veg', NULL, 'Frozen', NULL, 0, NULL),
(47, 'Ice Cream', NULL, 'Frozen', NULL, 0, NULL),
(48, 'French Fries', NULL, 'Frozen', NULL, 0, NULL),
(49, 'Dinners', NULL, 'Frozen', NULL, 0, NULL),
(50, 'Blue Chees', NULL, 'Dressings', NULL, 0, NULL),
(51, 'French', NULL, 'Dressings', NULL, 0, NULL),
(52, 'Italian', NULL, 'Dressings', NULL, 0, NULL),
(53, 'Ranch', NULL, 'Dressings', NULL, 0, NULL),
(54, 'Thousand Island', NULL, 'Dressings', NULL, 0, NULL),
(55, 'Candy', NULL, 'Snacks', NULL, 0, NULL),
(56, 'Cookies', NULL, 'Snacks', NULL, 0, NULL),
(57, 'Crackers', NULL, 'Snacks', NULL, 0, NULL),
(58, 'Nuts', NULL, 'Snacks', NULL, 0, NULL),
(59, 'popcorn', NULL, 'Snacks', NULL, 0, NULL),
(60, 'Potato Chips', NULL, 'Snacks', NULL, 0, NULL),
(61, 'Pretzels', NULL, 'Snacks', NULL, 0, NULL),
(62, 'Raisins', NULL, 'Snacks', NULL, 0, NULL),
(63, 'Biscuits', NULL, 'Breads', NULL, 0, NULL),
(64, 'Buns', NULL, 'Breads', NULL, 0, NULL),
(65, 'Hamburger', NULL, 'Breads', NULL, 0, NULL),
(66, 'Hot Dog', NULL, 'Breads', NULL, 0, NULL),
(67, 'French', NULL, 'Breads', NULL, 0, NULL),
(68, 'Italian', NULL, 'Breads', NULL, 0, NULL),
(69, 'Rolls', NULL, 'Breads', NULL, 0, NULL),
(70, 'Wheat', NULL, 'Breads', NULL, 0, NULL),
(71, 'White', NULL, 'Breads', NULL, 0, NULL),
(72, 'Coffee', NULL, 'Beverages', NULL, 0, NULL),
(73, 'Juice', NULL, 'Beverages', NULL, 0, NULL),
(74, 'Milk', NULL, 'Beverages', NULL, 0, NULL),
(75, 'Orange Juice', NULL, 'Beverages', NULL, 0, NULL),
(76, 'Soft Drink', NULL, 'Beverages', NULL, 0, NULL),
(77, 'Sports Drink', NULL, 'Beverages', NULL, 0, NULL),
(78, 'Tea', NULL, 'Beverages', NULL, 0, NULL),
(79, 'Water', NULL, 'Beverages', NULL, 0, NULL),
(80, 'Diapers', NULL, 'Baby Items', NULL, 0, NULL),
(81, 'Formula', NULL, 'Baby Items', NULL, 0, NULL),
(82, 'Lotion', NULL, 'Baby Items', NULL, 0, NULL),
(83, 'Oil', NULL, 'Baby Items', NULL, 0, NULL),
(84, 'Rash Cream', NULL, 'Baby Items', NULL, 0, NULL),
(85, 'Shampoo', NULL, 'Baby Items', NULL, 0, NULL),
(86, 'Wipes', NULL, 'Baby Items', NULL, 0, NULL),
(87, 'Baking Powder', NULL, 'Packaged', NULL, 0, NULL),
(88, 'Baking Soda', NULL, 'Packaged', NULL, 0, NULL),
(89, 'Brown Sugar', NULL, 'Packaged', NULL, 0, NULL),
(90, 'Brownie Mix', NULL, 'Packaged', NULL, 0, NULL),
(91, 'Cake Mix', NULL, 'Packaged', NULL, 0, NULL),
(92, 'Cereal', NULL, 'Packaged', NULL, 0, NULL),
(93, 'Cocoa', NULL, 'Packaged', NULL, 0, NULL),
(94, 'Cornstarch', NULL, 'Packaged', NULL, 0, NULL),
(95, 'Flour', NULL, 'Packaged', NULL, 0, NULL),
(96, 'Jello', NULL, 'Packaged', NULL, 0, NULL),
(97, 'Oatmeal', NULL, 'Packaged', NULL, 0, NULL),
(98, 'Pancake Mix', NULL, 'Packaged', NULL, 0, NULL),
(99, 'Rice', NULL, 'Packaged', NULL, 0, NULL),
(100, 'Sugar', NULL, 'Packaged', NULL, 0, NULL),
(101, 'Vanilla Extract', NULL, 'Packaged', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transcation`
--

CREATE TABLE IF NOT EXISTS `transcation` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_DOB` date DEFAULT NULL,
  `cnic` varchar(15) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_gender` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_status` int(11) DEFAULT NULL,
  `user_province` varchar(30) DEFAULT NULL,
  `user_district` varchar(30) DEFAULT NULL,
  `user_city` varchar(30) DEFAULT NULL,
  `user_tehsil` varchar(30) DEFAULT NULL,
  `user_comAddress` varchar(50) DEFAULT NULL,
  `user_img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anomaly`
--
ALTER TABLE `anomaly`
 ADD PRIMARY KEY (`anomaly_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`catagory_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `packing`
--
ALTER TABLE `packing`
 ADD PRIMARY KEY (`packing_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `transcation`
--
ALTER TABLE `transcation`
 ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `packing`
--
ALTER TABLE `packing`
MODIFY `packing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
