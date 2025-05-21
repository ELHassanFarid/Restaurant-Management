-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 07:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `talapat`
--

CREATE TABLE `talapat` (
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `FT` varchar(255) NOT NULL,
  `cooking` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `delivery` enum('delivery','resturant') NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` enum('GeneralM','DepartmentM','worker') NOT NULL,
  `department` enum('sales','cooking','delivery') DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `position`, `department`, `email`) VALUES
(12, 'ayoub', 'b59c67bf196a4758191e42f76670ceba', 'GeneralM', NULL, 'ayoub@aa.com'),
(13, 'rana', 'b59c67bf196a4758191e42f76670ceba', 'DepartmentM', 'sales', 'rana@rr.com'),
(14, 'roro', 'b59c67bf196a4758191e42f76670ceba', 'DepartmentM', 'cooking', 'roro@ro.com'),
(15, 'lolo', 'b59c67bf196a4758191e42f76670ceba', 'DepartmentM', 'delivery', 'lolo@ll.com'),
(16, 'yaya', 'b59c67bf196a4758191e42f76670ceba', 'worker', 'sales', 'yaya@y.com'),
(17, 'koko', 'b59c67bf196a4758191e42f76670ceba', 'worker', 'cooking', 'koko@k.com'),
(18, 'soso', 'b59c67bf196a4758191e42f76670ceba', 'worker', 'delivery', 'soso@q.com'),
(19, 'osama', '1111', 'DepartmentM', 'cooking', 'osama@oc.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `talapat`
--
ALTER TABLE `talapat`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
