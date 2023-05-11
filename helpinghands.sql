-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 10:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpinghands`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_no`, `msg`, `date`) VALUES
(1, 'sakshi', 'sakshi@gmail.com', '123456789', 'this is first post', '0000-00-00 00:00:00.000000'),
(2, 'asdfgh', 'aswertyujknbvc', '1234567899', 'asdfghjklmnbvcsawertyh', '2023-02-08 01:12:19.239640'),
(3, 'Mohanlalji Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'I am missing you papa,please contact me', '2023-02-15 17:56:13.896101'),
(4, 'Mohanlalji Rathi', 'rsakshi1411@gmail.com', '9822068446', 'hey pleaseeee godd my code should work', '2023-02-16 21:31:24.796481'),
(5, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:07:39.186528'),
(6, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:19:39.888760'),
(7, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:19:48.854798'),
(8, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:21:34.343728'),
(9, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:21:41.161533'),
(10, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:29:23.044153'),
(11, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:29:31.851949'),
(12, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 12:31:07.036275'),
(13, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjkbvcxcvbnmhtreweui', '2023-02-19 13:34:06.920013'),
(14, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'I misss samyak', '2023-02-19 13:38:37.557080'),
(15, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'ASDFGHJKMNBXZAQWERTYUIK', '2023-02-22 10:07:55.758295'),
(16, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'ASDFGHJKMNBXZAQWERTYUIK', '2023-02-22 10:08:39.732792'),
(17, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'THISI AS OUR WTL LAB AND WE ARE BORED', '2023-02-22 10:08:58.691070'),
(18, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'qw', '2023-05-01 16:49:31.233607'),
(19, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'qw', '2023-05-01 16:49:35.228130'),
(20, '', '', '', '', '2023-05-08 00:45:17.599546'),
(21, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'asdfghjk,asdfghjnbvcxawertyuikmnbvdsw34567uikmnbvcxxcvnmjhw3456789o', '2023-05-08 00:45:33.136883'),
(22, '', 'sakshi.m.rathi777@gmail.com', '09156888038', 'sdfvb', '2023-05-08 00:48:27.641104'),
(23, '', '', '', '', '2023-05-08 00:50:27.342578'),
(24, 'Sakshi Rathi', '2482_sakshi@katalystindia.org', '1234567899', 'vvvvvvvvv', '2023-05-08 18:27:43.288421'),
(26, 'Samyak', '123@gmail.com', '+919156888038', 'asdfghjkl.', '2023-05-09 00:51:06.216594'),
(27, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '9156888038', '123456u', '2023-05-10 10:17:16.086834'),
(28, 'dipti ', '2482_sakshi@katalystindia.org', '9822068446', '12erth', '2023-05-10 10:21:07.183689'),
(29, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '9822068446', 'asdfghm', '2023-05-10 10:41:09.475394'),
(30, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '9822068446', 'wertyj', '2023-05-10 10:43:24.471613'),
(31, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'wertyjk', '2023-05-10 10:51:44.781596'),
(32, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'wertyjk', '2023-05-10 10:51:46.729125'),
(33, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'wertyjk', '2023-05-10 11:04:06.517985'),
(34, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'wertyjk', '2023-05-10 11:04:12.322276'),
(35, 'Ishwari saboo', 'ishwari.saboo@gmail.com', '1234567899', 'this website is good', '2023-05-12 00:38:02.658640');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `date`) VALUES
(1, 'this is my first requrst', 'first-request', 'this is to only check whether website is working or not.', '2023-02-16 21:44:58'),
(2, 'second post', 'second-post', 'this is not for test but to check.', '2023-02-19 13:50:18'),
(3, 'third-post', 'third-post', 'tired of all this but want to make best out of today.', '2023-02-19 13:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `sno` int(11) NOT NULL,
  `email` mediumtext NOT NULL,
  `title` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`sno`, `email`, `title`, `content`, `date`) VALUES
(14, '', '100 Volunte', 'PICT NSS need 100 volunteers for NSS Camp.', '2023-05-11 23:45:13'),
(15, '', 'Need a writ', 'The writer needed for 10 th board exam at 12.00 pm in Hadapsar school of unit', '2023-05-12 00:29:25'),
(16, 'sakshi.m.rathi777@gmail.com', 'NEED a volu', 'TO take govt hospital at 1.00 pm in narayan peth,pickup point:RBHR ', '2023-05-12 00:34:12'),
(18, '2482_sakshi@katalystindia.org', 'I need a reader', 'I am 10 th class blind student, I need someone to read my books ,can send me audio as well.', '2023-05-12 00:48:23'),
(19, '2482_sakshi@katalystindia.org', 'I need a reader', 'I am 10 th class blind student, I need someone to read my books ,can send me audio as well.', '2023-05-12 00:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`) VALUES
('Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', 'Rathi@123'),
('Sakshi  Mohanlalji Rathi', '2482_sakshi@katalystindia.org', 'hhhhh'),
('dipti ', 'shrutikaratekid@gmail.com', '12345'),
('Mohanlalji Rathi', 'codearmy123@gmail.com', 'ggggg'),
('Mohanlalji Rathi', 'codearmy123@gmail.com', 'GGGGG'),
('Ishwari saboo', 'ishwari.saboo@gmail.com', 'ishwari');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `sno` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(10000) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `msg` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
