-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 20, 2022 at 06:31 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21
DROP DATABASE categories;
CREATE DATABASE IF NOT EXISTS `categories` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `categories`;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ca2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Huawei');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `recordID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`recordID`, `categoryID`, `name`, `price`, `image`) VALUES
(1, 1, 'Iphone 6', '120', '001.png'),
(2, 1, 'Iphone 6s', '150', '001.png'),
(3, 1, 'Iphone 6s Plus', '180', '001.png'),
(4, 1, 'Iphone 7', '200', '001.png'),
(5, 2, 'Samsung s6', '220', '001.png'),
(6, 2, 'Samsung s7', '250', '001.png'),
(7, 2, 'Samsung s8', '280', '001.png'),
(8, 2, 'Samsung s9', '300', '001.png'),
(9, 2, 'Samsung s10', '350', '001.png'),
(10, 3, 'Huawei P60', '380', '001.png'),
(11, 3, 'Huawei P70', '360', '001.png'),
(12, 3, 'Huawei P80', '400', '001.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`recordID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


