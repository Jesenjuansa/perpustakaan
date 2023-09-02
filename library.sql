-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 01:06 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(4) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publisher` varchar(25) DEFAULT NULL,
  `year` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `category`, `author`, `publisher`, `year`) VALUES
(8, '   javierrrrr', '   dongeng', '    haykal', '   federus', '    2014'),
(9, 'aaa', 'dongeng', ' haykal', 'federus', ' 2012');

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `id` int(4) NOT NULL,
  `book_id` int(4) DEFAULT NULL,
  `nisn` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `staff` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`id`, `book_id`, `nisn`, `date`, `date_return`, `staff`) VALUES
(12, 1, '2', '2023-04-23', '2023-05-12', 'jesen'),
(17, 2, '8', '2023-04-21', '2023-06-15', 'fadli'),
(18, 3, '5', '2023-04-21', '2023-06-15', 'fadli'),
(28, 1, '1', '2023-05-22', '2023-05-03', 'sahriati'),
(29, 2, '2', '2023-05-22', '2023-05-25', '  haykalazu'),
(30, 2, '5', '2023-05-22', '2023-05-27', ' haykalaqqrrr'),
(35, 2, '2', '2023-05-22', '2023-05-24', 'haykal'),
(43, 2, '4', '2023-05-22', '2023-05-25', 'haykal'),
(44, 8, '1', '2023-06-05', '0000-00-00', 'haykal'),
(46, 8, '1', '2023-06-05', '0000-00-00', 'haykal');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(8) NOT NULL,
  `full_name` varchar(30) DEFAULT NULL,
  `nisn` varchar(15) DEFAULT NULL,
  `competency` varchar(10) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `full_name`, `nisn`, `competency`, `class`, `address`) VALUES
(1, 'jesen juansa', '0051251723', 'RPL', '11', 'kp.laksana'),
(2, ' M.Ihsan', ' 0034003956', ' RPL', ' 11', ' lampulooo'),
(7, ' javier', ' 75757474', ' RPL', ' 12', ' rukoh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
