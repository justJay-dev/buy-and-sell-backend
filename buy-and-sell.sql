-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2020 at 04:09 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buy-and-sell`
--

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` varchar(36) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `name`, `description`, `price`, `user_id`, `views`) VALUES
('125', 'computer', 'fromo the 1990s a classic', '50.00', 'fbi4syS1ZqNzRQFCksWVx4MNgrI3', 1),
('126', 'basketball hoop', 'good condition free delivery', '100.00', 'fbi4syS1ZqNzRQFCksWVx4MNgrI3', 1),
('c1da87f2-e461-4fe4-bdeb-e2dc587e1a31', 'New listing', 'hruray', '6969.00', 'fbi4syS1ZqNzRQFCksWVx4MNgrI3', 0),
('d08a27d2-2f71-436d-9ea9-8b2506caed29', 'adasd', 'asdasd', '123.00', 'fbi4syS1ZqNzRQFCksWVx4MNgrI3', 1),
('db163580-a2b5-4a9a-b26c-ca5ac3b3d993', 'New Listing', 'something', '6969.69', 'fbi4syS1ZqNzRQFCksWVx4MNgrI3', 0),
('dc50d9e5-b720-443e-af72-d4d8517476db', 'D:', ':D', '0.10', 'fbi4syS1ZqNzRQFCksWVx4MNgrI3', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idlistings_UNIQUE` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
