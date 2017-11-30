-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 06:03 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `UserID` int(3) UNSIGNED ZEROFILL NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `Type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`UserID`, `Username`, `Password`, `Name`, `Status`, `Type`) VALUES
(001, 'win', 'win12', 'Weerachai Nukitram', 'USER', 1),
(002, 'chai', 'chai123', 'Surachai Sirisart', 'ADMIN', 1),
(003, 'wat', 'wat123', 'Tanawat Chardwong', 'USER', 0),
(004, 'tax', 'tax123', 'Worawat Chaithi', 'USER', 1),
(005, 'pit', 'pit123', 'pittaya kanasin', 'USER', 1),
(006, 'boss', 'boss123', 'Natchanon Keawton', 'USER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `OrderDate` datetime NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Tel` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `Name`, `Address`, `Tel`, `Email`) VALUES
(00001, '2012-03-15 09:59:13', 'Weerachai Nukitram', '1234 Lapharo Bangkok Thailand', '0819876107', 'is_php@hotmail.com'),
(00002, '2012-03-15 10:15:03', 'Weerachai Nukitram', '1234 Latpharo Bangkok Thailand', '0819876107', 'is_php@hotmail.com'),
(00004, '2017-11-23 07:20:40', 'worawat', 'nan ban lao', '0613899654', 'adidas_nike@hotmail.com'),
(00005, '2017-11-23 09:54:52', 'tanawat', '444/2 Nation University', '0613952365', 'tanawat_0023@gmail.com'),
(00006, '2017-11-29 19:51:21', 'Worawat Chaithi', '444/2 lampang Thailand', '0613816728', 'tanawat_0023@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `DetailID` int(5) NOT NULL,
  `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `ProductID` int(4) NOT NULL,
  `Qty` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`DetailID`, `OrderID`, `ProductID`, `Qty`) VALUES
(1, 00001, 4, 100),
(2, 00002, 3, 50),
(3, 00002, 1, 20),
(4, 00002, 4, 50);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(4) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Picture` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Price`, `Picture`) VALUES
(1, 'Cartoon Book', 100, '1.gif'),
(2, 'Technology Book', 200, '2.gif'),
(3, 'study Book', 300, '3.gif'),
(4, 'Foods&Drinks', 400, '4.gif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `UserID` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `DetailID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
