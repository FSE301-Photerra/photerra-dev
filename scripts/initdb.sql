-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2015 at 12:23 PM
-- Server version: 5.5.41-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `photerras_DB`
--
DROP DATABASE IF EXISTS photerras_DB;
CREATE DATABASE photerras_DB;
USE photerras_DB

-- --------------------------------------------------------

--
-- Table structure for table `Photos`
--

CREATE TABLE IF NOT EXISTS `Photos` (
  `Lat` float DEFAULT NULL,
  `Lng` float DEFAULT NULL,
  `Title` text,
  `Picture` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `member_id` text,
  `username` text,
  `password` text,
  `email` text,
  `fname` text,
  `lname` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`member_id`, `username`, `password`, `email`, `fname`, `lname`) VALUES
('1122334455', 'Rphello101', 'FSE', 'aowdija', NULL, NULL),
('234233', 'testuser', '123456', 'ggggg', NULL, NULL),
('234233', 'testuser', '123456', 'ggggg', NULL, NULL),
('543626', 'andrew', '123456', 'fffff', NULL, NULL),
('a8f238c703', 'test111', 'dddd', 'aherzberg5@gmail.com', 'Andrew', 'Herzberg'),
('74b1c00bd5', 'rapratt', '123456', 'asdf@asdf', 'Reese', 'Pratt'),
('e804db99f8', 'rapratt101', '123456', 'asdf@asdff', 'Reese3', 'Pratt3'),
('7347a00343', '', '', '', '', ''),
('5df6ae72b9', 'wtneal', 'S3cur3', 'wtneal@asu.edu', 'Weston', 'Neal'),
('fe910d4212', 'Kurvani', 'fse301', 'kkeyvan1@asu.edu', 'Kurosh', 'Keyvani'),
('f80e5d3183', 'Kurvani', 'fse301', 'kkeyvan1@asu.edu', 'Kurosh', 'Keyvani'),
('ca205cffc1', 'phopho', '123456', 'aherzberg5@gmail.com', 'Andrew ', 'gggggg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
