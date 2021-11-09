-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 04:35 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksysphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Christine Moore', 'Evelyn Kent', 51000, '2021-05-14 14:29:15'),
(2, 'Willbert Flyn', 'Keith McKay', 25000, '2021-05-14 18:40:51'),
(3, 'Natalie Cloutier', 'Thomas Greenwood', 5000, '2021-05-14 19:16:56'),
(4, 'Thomas Greenwood', 'Natalie Cloutier', 26950, '2021-05-14 19:31:07'),
(5, 'Matthew Ingalls', 'Kelly Wilkins', 7510, '2021-05-14 20:15:14'),
(6, 'Kelly Wilkins', 'Michelle Cruz', 35100, '2021-05-14 20:15:47'),
(7, 'Thomas Greenwood', 'Keith McKay', 3150, '2021-05-14 20:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'Cassie Perkins', 'cassiep@gmail.com', 'Female', 62500),
(2, 'Keith McKay', 'keithmc@gmail.com', 'Male', 40650),
(3, 'Michelle Cruz', 'cruzmch@gmail.com', 'Female', 113750),
(4, 'Willbert Flyn', 'willbertfl@gmail.com', 'Male', 100005),
(5, 'Natalie Cloutier', 'natcloutier@gmail.com', 'Female', 127350),
(6, 'Evelyn Kent', 'evelynkent@gmail.com', 'Female', 81000),
(7, 'John Russel', 'russelj@gmail.com', 'Male', 69005),
(8, 'Virginia Hopkins', 'virginhop@gmail.com', 'Female', 210300),
(9, 'Christine Moore', 'christine@gmail.com', 'Female', 99000),
(10, 'Thomas Greenwood', 'thomasgr@gmail.com', 'Male', 40000),
(19, 'Matthew Ingalls', 'matthewlls@gmail.com', 'Male', 40000),
(20, 'Kelly Wilkins', 'wilkelly@gmail.com', 'Female', 29610);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
