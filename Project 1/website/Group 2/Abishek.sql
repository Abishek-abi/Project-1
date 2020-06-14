-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2016 at 03:32 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `201532061_yovan`
--

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE IF NOT EXISTS `Product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `size` char(1) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `Product`
--

INSERT INTO `florist` (`id`, `photo`, `name`, `label`, `description`, `gender`, `size`, `price`) VALUES
(8, '1.jpg', 'shirt 1', '123', 'shirt 1', 'M', 'L', 25.00),
(9, '2.jpg', 'shirt 2', '234', 'shirt 2', 'M', 'L', 55.00),
(10, '3.jpg', 'shirt 3', '345', 'shirt 3', 'M', 'M', 35.00),
(11, '4.jpg', 'shirt 4', '456', 'shirt 4', 'M', 'M', 40.00),
(12, '5.jpg', 'shirt 5', '567', 'shirt 5', 'M', 'L', 30.00),
(13, '6.jpg', 'shirt 6', '678', 'shirt 6', 'M', 'M', 50.00),
(14, '7.jpg', 'shirt 7', '789', 'shirt 7', 'M', 'L', 40.00),
(15, '8.jpg', 'shirt 8', '891', 'shirt 8', 'M', 'S', 25.00),
(16, 'f1.jpg', 'woman 1', '111', 'woman 1', 'F', 'M', 55.00),
(17, 'f2.jpg', 'woman 2', '222', 'woman 2', 'F', 'M', 65.00),
(18, 'f3.jpg', 'woman 3', '333', 'woman 3', 'F', 'S', 50.00),
(19, 'f4.jpg', 'woman 4', '444', 'woman 4', 'F', 'M', 40.00),
(20, 'f5.jpg', 'woman 5', '555', 'woman 5', 'F', 'M', 35.00),
(21, 'f6.jpg', 'woman 6', '661', 'woman 6', 'F', 'M', 56.99),
(22, 'f7.jpg', 'woman 7', '777', 'woman 7', 'F', 'M', 62.99),
(23, 'f8.jpg', 'woman 8', '888', 'woman 8', 'F', 'M', 30.00);

-- --------------------------------------------------------

--
-- Table structure for table `Register`
--

CREATE TABLE IF NOT EXISTS `Register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` float(6,2) DEFAULT NULL,
  `order_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Register`
--

INSERT INTO `Register` (`id`, `user_id`, `product_id`, `quantity`, `total`, `order_time`) VALUES
(1, 1, 3, 7, 167.93, '2015-10-13 03:04:03'),
(2, 1, 5, 12, 311.88, '2015-10-13 03:04:10'),
(3, 1, 5, 8, 207.92, '2015-10-13 03:07:22'),
(4, 1, 2, 2, 45.98, '2015-10-13 03:10:16'),
(5, 1, 1, 2, 43.98, '2016-07-15 02:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `Home`
--

CREATE TABLE IF NOT EXISTS `Home` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Home`
--

INSERT INTO `Home` (`user_id`, `username`, `password`) VALUES
(1, 'user1', 'user1'),
(2, 'user2', 'user2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
