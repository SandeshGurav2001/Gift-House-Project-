-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 01:45 PM
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
-- Database: `gifthouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'sagar yadav', 'saggy', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(8, 'Watches', 'item_Category_8.jpg', 'Yes', 'Yes'),
(9, 'Crockery', 'item_Category_72.jpg', 'Yes', 'Yes'),
(10, 'Toys', 'item_Category_406.jpg', 'Yes', 'Yes'),
(11, 'Perfumes', 'item_Category_722.jpg', 'Yes', 'Yes'),
(12, 'Stationary', 'item_Category_301.jpg', 'Yes', 'Yes'),
(13, 'Frames', 'item_Category_709.jpg', 'Yes', 'Yes'),
(14, 'Murties', 'item_Category_873.jpg', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(2, 'Wrist Watches', 'gyfgahfuh', 175.00, 'item-Name-8453.jpg', 8, 'Yes', 'Yes'),
(3, 'Wall Clock', 'ygyfuefiehufggfjksd', 450.00, 'item-Name-7275.jpg', 8, 'Yes', 'Yes'),
(4, 'Alarm  Clock', 'fdgfisjgoj', 300.00, 'item-Name-367.jpg', 8, 'Yes', 'Yes'),
(9, 'flower pot', 'fskfkfihgie', 175.00, 'item-Name-7525.jpg', 9, 'Yes', 'Yes'),
(14, 'lemon pot', 'tudjkssjvhbhs', 250.00, 'item-Name-9527.jpg', 9, 'Yes', 'Yes'),
(15, 'Dinner set', 'gfjhdhjjjf', 200.00, 'item-Name-5366.jpg', 9, 'Yes', 'Yes'),
(16, 'Glass set', 'gvdbvdhnbdbf', 450.00, 'item-Name-17.jpg', 9, 'Yes', 'Yes'),
(17, 'Teddy', 'bhdhvjbdhfvbhd', 320.00, 'item-Name-2172.jpg', 10, 'Yes', 'Yes'),
(21, 'Cars', 'gjhegj', 670.00, 'item-Name-5286.jpg', 10, 'Yes', 'Yes'),
(22, 'Kids Game', 'urgmfngjkf', 890.00, 'item-Name-3504.jpg', 10, 'Yes', 'Yes'),
(23, 'Chess', 'gjfdhjgjjsjhb', 250.00, 'item-Name-7981.jpg', 10, 'Yes', 'Yes'),
(24, 'Goggles', 'cdhsdjsAF', 320.00, 'item-Name-8878.jpg', 10, 'Yes', 'Yes'),
(25, 'Caps', 'yhsafhjadfh', 110.00, 'item-Name-2958.jpg', 10, 'Yes', 'Yes'),
(26, 'pens', 'hhfsgfshf', 50.00, 'item-Name-1672.jpg', 12, 'Yes', 'Yes'),
(27, 'Notebook', 'yduysfbsffb', 340.00, 'item-Name-5873.jpg', 12, 'Yes', 'Yes'),
(28, 'BOttle', 'ggshhcbjcjsj', 175.00, 'item-Name-9336.jpg', 12, 'Yes', 'Yes'),
(29, 'Compass box', 'fhhkfdjkgj', 120.00, 'item-Name-5760.jpg', 12, 'Yes', 'Yes'),
(30, 'Writing Pad', 'ghkjb', 50.00, 'item-Name-2793.jpg', 12, 'Yes', 'Yes'),
(31, 'Body Spray', 'hhsgbnn', 780.00, 'item-Name-976.jpg', 11, 'Yes', 'Yes'),
(32, 'Deo', 'vhckxjfn', 450.00, 'item-Name-9740.jpg', 11, 'Yes', 'Yes'),
(33, 'attar', 'vgdhjhdsj', 560.00, 'item-Name-9188.jpg', 11, 'Yes', 'Yes'),
(34, '5D Frames', 'ghkfhjsjfag', 370.00, 'item-Name-1919.jpg', 13, 'Yes', 'Yes'),
(35, 'photo frame', 'jhsukndjcvduj', 450.00, 'item-Name-9252.jpg', 13, 'Yes', 'Yes'),
(36, 'Glass Frames', 'jjkjfhds', 530.00, 'item-Name-1230.jpg', 13, 'Yes', 'Yes'),
(37, 'Lamination Frames', 'fghjsbcbbvc', 760.00, 'item-Name-3638.jpg', 13, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `item`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Wrist Watches', 175.00, 1, 175.00, '2024-04-15 10:14:42', 'Cancelled', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(2, 'Wrist Watches', 175.00, 1, 175.00, '2024-04-15 10:18:35', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(3, 'Alarm  Clock', 300.00, 1, 300.00, '2024-04-15 04:05:28', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(4, 'lemon pot', 250.00, 1, 250.00, '2024-04-15 04:06:17', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(5, 'Alarm  Clock', 300.00, 1, 300.00, '2024-04-15 04:51:28', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(6, 'lemon pot', 250.00, 1, 250.00, '2024-04-15 04:53:44', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(7, 'lemon pot', 250.00, 1, 250.00, '2024-04-16 06:53:53', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(8, 'lemon pot', 250.00, 1, 250.00, '2024-04-16 06:53:57', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(9, 'lemon pot', 250.00, 1, 250.00, '2024-04-16 06:54:52', 'Ordered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale'),
(10, 'lemon pot', 250.00, 1, 250.00, '2024-04-16 06:59:30', 'Delivered', 'sagar yadav', '7058917182', 'sagaryadav7058917182@gmail.com', 'kale');

-- --------------------------------------------------------

--
-- Table structure for table `user_master1`
--

CREATE TABLE `user_master1` (
  `email` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master1`
--

INSERT INTO `user_master1` (`email`, `username`, `password`) VALUES
('pavan123@gmail.com', 'pavan', '1234'),
('sagaryadav7058917182@gmail.com', 'saggy', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_master1`
--
ALTER TABLE `user_master1`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `item_master`
--
ALTER TABLE `item_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
