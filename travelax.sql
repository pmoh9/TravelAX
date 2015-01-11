-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2015 at 04:53 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travelax`
--
CREATE DATABASE IF NOT EXISTS `travelax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `travelax`;

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE IF NOT EXISTS `distance` (
  `from_station` varchar(20) NOT NULL,
  `jammu` int(4) NOT NULL,
  `delhi` int(4) NOT NULL,
  `agra` int(4) NOT NULL,
  `chennai` int(4) NOT NULL,
  `gwalior` int(4) NOT NULL,
  `kanpur` int(4) NOT NULL,
  `mumbai` int(4) NOT NULL,
  `kolkata` int(4) NOT NULL,
  `jaipur` int(4) NOT NULL,
  `bhopal` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`from_station`, `jammu`, `delhi`, `agra`, `chennai`, `gwalior`, `kanpur`, `mumbai`, `kolkata`, `jaipur`, `bhopal`) VALUES
('jammu', 0, 586, 786, 2753, 905, 1044, 1934, 2039, 797, 1302),
('delhi', 608, 0, 208, 2176, 328, 467, 1399, 1461, 262, 725),
('agra', 809, 208, 0, 1967, 119, 278, 1199, 1273, 235, 516),
('chennai', 2794, 2192, 1973, 0, 1842, 1866, 1328, 1669, 2084, 1480),
('gwalior', 939, 338, 119, 1836, 0, 264, 1082, 1259, 326, 400),
('kanpur', 1069, 467, 278, 1867, 265, 0, 1282, 996, 514, 563),
('mumbai', 1977, 1443, 1195, 1332, 1082, 1282, 0, 1999, 1184, 774),
('kolkata', 2065, 1464, 1274, 1667, 1261, 998, 1997, 0, 1510, 1430),
('jaipur', 796, 263, 237, 2102, 327, 516, 1141, 1511, 0, 589),
('bhopal', 1333, 732, 513, 1486, 400, 563, 774, 1429, 588, 0);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `jammu` int(2) NOT NULL,
  `delhi` int(2) NOT NULL,
  `agra` int(2) NOT NULL,
  `chennai` int(2) NOT NULL,
  `gwalior` int(2) NOT NULL,
  `kanpur` int(2) NOT NULL,
  `mumbai` int(2) NOT NULL,
  `kolkata` int(2) NOT NULL,
  `jaipur` int(2) NOT NULL,
  `bhopal` int(2) NOT NULL,
  `time` varchar(1000) NOT NULL,
  `capacity` int(5) NOT NULL,
  `available` varchar(1000) NOT NULL,
  `days` varchar(50) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `name`, `jammu`, `delhi`, `agra`, `chennai`, `gwalior`, `kanpur`, `mumbai`, `kolkata`, `jaipur`, `bhopal`, `time`, `capacity`, `available`, `days`, `type`) VALUES
(1, 'PUNJAB MAIL', 0, 1, 2, 0, 3, 0, 5, 0, 0, 4, '05:15;1,08:50;1-08:55;1,10:28;1-10:33;1,16:50;1-16:55;1,07:35;2', 50, '50,50,50,50;50,50,50,50;50,50,50,50;50,50,50,50;50,50,50,50;50,50,50,50;50,50,50,50', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 1),
(2, 'SWARAJ EXPRESS', 1, 2, 0, 0, 0, 0, 3, 0, 0, 0, '11:15;1,21:30;1-21:50;1,18:05;2', 60, '60,60;60,60;60,60;60,60', 'Tue,Wed,Fri,Sat', 2),
(3, 'KALKA MAIL', 0, 1, 0, 0, 0, 2, 0, 3, 0, 0, '07:00;1,14:20;1-14:30;1,07:55;2', 50, '50,50;50,50;50,50;50,50;50,50;50,50;50,50', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 1),
(4, 'ANDAMAN EXPRESS', 1, 2, 3, 6, 4, 0, 0, 0, 0, 5, '23:45;1,13:30;2-14:15;2,18:30;2-18:35;2,20:12;2-20:15;2,03:00;3-03:05;3,10:10;4', 60, '60,60,60,60,60;60,60,60,60,60;60,60,60,60,60', 'Tue, Fri, Sat', 2),
(5, 'JAMMU AII EXP', 1, 2, 0, 0, 0, 0, 0, 0, 3, 0, '18:15;1,03:55;2-04:25;2,10:00;2', 60, '60,60;60,60;60,60;60,60;56,60;55,60;60,60', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 2),
(6, 'AII SDAH EXPRES', 0, 0, 2, 0, 0, 3, 0, 4, 1, 0, '15:00;1,18:55;1-19:20;1,23:20;1-23:28;1,15:55;2', 60, '60,60,60;60,60,60;60,60,60;60,60,60;60,60,60;60,60,60;60,60,60', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 2),
(7, 'SWARAJ EXPRESS', 3, 2, 0, 0, 0, 0, 1, 0, 0, 0, '07:55;1,04:35;2-04:50;2,14:45;2', 60, '60,60;60,60;60,60;60,60', 'Mon,Thu,Fri,Sun', 2),
(8, 'G T EXPRESS', 0, 1, 2, 5, 3, 0, 0, 0, 0, 4, '18:40;1,21:45;1-21:50;1,23:25;1-23:30;1,05:20;2-05:25;2,06:15;3', 70, '70,70,70,70;70,70,70,70;70,70,70,70;70,70,70,70;70,70,70,70;70,70,70,70;70,70,70,70', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 2),
(9, 'CHAMBAL EXPRESS', 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, '07:05;1,06:45;2', 50, '50;50;50', 'Tue,Thu,Sat', 2),
(10, 'GHY SBC EXPRESS', 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, '01:05;2,04:20;3', 50, '50;50;50', 'Mon,Tue,Sun', 2),
(11, 'GRAND TRUNK EXP', 0, 5, 4, 1, 3, 0, 0, 0, 0, 2, '19:15;1,19:20;2-19:30;2,00:50;3-00:55;3,02:45;3-02:50;3,06:30;3', 60, '60,60,60,60;60,60,60,60;60,60,60,60;60,60,60,60;60,60,60,60;60,60,60,60;60,60,60,60', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `no_of_persons` int(3) NOT NULL,
  `train_name` varchar(100) NOT NULL,
  `date_of_journey` varchar(20) NOT NULL,
  `from_station` varchar(100) NOT NULL,
  `dept_time` varchar(20) NOT NULL,
  `to_station` varchar(100) NOT NULL,
  `arr_time` varchar(20) NOT NULL,
  `fare` int(5) NOT NULL,
  `date_of_booking` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `userid`, `name`, `id_no`, `no_of_persons`, `train_name`, `date_of_journey`, `from_station`, `dept_time`, `to_station`, `arr_time`, `fare`, `date_of_booking`, `status`) VALUES
(8, 2, 'qwerty', '12c8994x', 2, 'SWARAJ EXPRESS', '03/12/2014', 'jammu', '11:15 Wed', 'mumbai', '18:05 Thu', 3094, '02/12/2014', 2),
(9, 2, 'User A', '7794AX56', 5, 'JAMMU AII EXP', '06/12/2014', 'jammu', '18:15 Sat', 'delhi', '03:55 Sun', 2340, '03/12/2014', 2),
(10, 2, 'User A', '9974AL566', 4, 'JAMMU AII EXP', '05/12/2014', 'jammu', '18:15 Fri', 'delhi', '03:55 Sat', 1872, '03/12/2014', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `balance` float NOT NULL,
  `type` int(2) NOT NULL,
  `commission` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `username`, `password`, `balance`, `type`, `commission`) VALUES
(1, 'Laxmikant Revdikar', 'Fadnis Ki Goth Ganesh Bazar Lashkar, Gwalior', 'laxmikant', '123456', 5000, 1, 0),
(2, 'Pritish Mukherjee', '210-D Vindhyanchal Hostel, SMVDU', 'pmoh9', '123456', 3128, 1, 0),
(3, 'Rahul Mishra', '203-D Vindhyanchal Hostel, SMVDU', 'rahul', '123456', 5000, 2, 0),
(4, 'Amandeep Gupta', '208-D Vindhyanchal Hostel, SMVDU', 'amantheviper', '123456', 5000, 2, 0),
(6, 'Polka Dots', 'Unknown Location', 'polkadots', '123456', 5000, 2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
