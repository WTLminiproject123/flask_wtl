-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 10:04 AM
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
(14, 'Sakshi Rathi', 'sakshi.m.rathi777@gmail.com', '09156888038', 'ofghjxcvbnm,fghjkl', '2023-02-19 13:38:37.557080');

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
  `title` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `date` int(11) NOT NULL
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
