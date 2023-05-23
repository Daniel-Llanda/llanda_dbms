-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 04:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `art_artist`
--

CREATE TABLE `art_artist` (
  `artist_no` int(11) DEFAULT NULL,
  `artist_name` varchar(50) DEFAULT NULL,
  `artist_title` varchar(50) DEFAULT NULL,
  `artist_description` varchar(50) DEFAULT NULL,
  `art_prize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `art_customer`
--

CREATE TABLE `art_customer` (
  `customer_no` int(11) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `artist_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art_artist`
--
ALTER TABLE `art_artist`
  ADD KEY `FKart_customer` (`artist_no`);

--
-- Indexes for table `art_customer`
--
ALTER TABLE `art_customer`
  ADD PRIMARY KEY (`artist_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_customer`
--
ALTER TABLE `art_customer`
  MODIFY `artist_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `art_artist`
--
ALTER TABLE `art_artist`
  ADD CONSTRAINT `FKart_customer` FOREIGN KEY (`artist_no`) REFERENCES `art_customer` (`artist_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
