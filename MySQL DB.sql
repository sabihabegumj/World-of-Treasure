-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2016 at 02:07 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `loginid`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `que_desc` text,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  `true_answer` varchar(60) NOT NULL,
  `bg_image` varchar(500) NOT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`que_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `true_answer`, `bg_image`) VALUES
(1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 'img/dra.jpg'),
(2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 'img/eye.jpg'),
(3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 'img/viol.jpg'),
(4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 'img/sl.jpg'),
(5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 'img/dot.jpg'),
(6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 'img/nv.jpg'),
(7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\nis Rs.40,000, what is the average salary of the 4 remaining employees?', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 'img/viol.jpg'),
(8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \non the last 2 throws?\n', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 'img/y1.jpg'),
(9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 'img/bb.jpg'),
(10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 'img/dra.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  `result` varchar(10) NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `user_id`, `user_name`, `test_date`, `score`, `result`) VALUES
(54, 25, 'sharna', '0000-00-00', 0, 'Lost'),
(55, 25, 'sharna', '2016-04-21', 7, 'Lost'),
(56, 25, 'sharna', '2016-04-21', 7, 'Lost'),
(57, 23, 'kumar', '0000-00-00', 0, 'Lost'),
(58, 23, 'kumar', '0000-00-00', 0, 'Lost'),
(59, 23, 'kumar', '2016-04-21', 7, 'Lost'),
(60, 24, 'ravi', '2016-04-21', 7, 'Lost'),
(61, 24, 'ravi', '2016-04-21', 7, 'Lost'),
(62, 24, 'ravi', '2016-04-21', 7, 'Lost'),
(63, 27, 'raj', '2016-04-21', 7, 'Lost'),
(64, 28, 'gop', '2016-04-21', 10, 'Won'),
(65, 30, 'sab', '2016-08-27', 8, 'Lost'),
(66, 30, 'sab', '2016-08-27', 7, 'Lost'),
(67, 31, 'jaggir', '2016-09-11', 5, 'Lost'),
(68, 32, 'Ashik hussain', '2016-09-11', 9, 'Lost'),
(69, 32, 'Ashik hussain', '2016-09-11', 9, 'Lost'),
(70, 32, 'Ashik hussain', '2016-09-11', 9, 'Lost'),
(71, 32, 'Ashik hussain', '2016-09-11', 9, 'Lost'),
(72, 32, 'Ashik hussain', '2016-09-11', 10, 'Won'),
(73, 33, 'harsha', '2016-12-28', 6, 'Lost'),
(74, 34, 'Sabiha', '2019-07-12', 5, 'Lost'),
(75, 34, 'Sabiha', '2019-07-12', 5, 'Lost');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `dept` varchar(15) DEFAULT NULL,
  `rollno` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `sex`, `year`, `dept`, `rollno`, `email`, `pass`) VALUES
(23, 'kumar', 'Male', '3rd YEAR', 'mca', 334, 'ab@1.com', '123'),
(24, 'ravi', 'Male', '3rd YEAR', 'bca', 150, '12@12.com', '1234'),
(25, 'sharna', 'Male', '3rd YEAR', 'MCA', 120, 'a@b.com', '123'),
(26, 'kavi', 'Male', '4th YEAR', 'MCA', 120, 'ac@b.com', '123'),
(27, 'raj', 'Male', '2nd YEAR', 'MCA', 120, 'raj@123.com', '123'),
(28, 'gop', 'Male', '4th YEAR', 'MCA', 120, 'gop@123.com', '1234'),
(29, 'thuasdf', 'Male', '1st YEAR', 'msd', 7899, 'gtramn@gmail.com', 'dr'),
(30, 'sab', 'Female', '1st YEAR', 'it', 39, 'im@gmail.com', 'ss'),
(31, 'jaggir', 'Male', '1st YEAR', 'bl', 9, 'j@gmail.com', '786'),
(32, 'Ashik hussain', 'Male', '1st YEAR', 'IT', 3, 'a@gmail.com', 'aa'),
(33, 'harsha', 'Female', '4th YEAR', 'IT', 23, 'har@gmail', 'ff'),
(34, 'Sabiha', 'Female', '4th YEAR', 'IT', 39, 'jsabiha@gmail.com', 'Sabiha@786');

-- --------------------------------------------------------

--
-- Table structure for table `useranswer`
--

CREATE TABLE IF NOT EXISTS `useranswer` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `sess_id` varchar(80) DEFAULT NULL,
  `ques_id` int(11) NOT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `true_answer` varchar(60) NOT NULL,
  `your_ans` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `test_date` date NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=261 ;

--
-- Dumping data for table `useranswer`
--

INSERT INTO `useranswer` (`test_id`, `sess_id`, `ques_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `true_answer`, `your_ans`, `user_id`, `score`, `username`, `test_date`, `time_stamp`) VALUES
(161, '25', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 3, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:56:44'),
(162, '25', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:56:48'),
(163, '25', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:56:54'),
(164, '25', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\r\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:57:01'),
(165, '25', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 8, 25, 0, 'sharna', '2016-04-21', '2016-04-21 07:57:27'),
(166, '25', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \r\nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 30, 25, 0, 'sharna', '2016-04-21', '2016-04-21 07:58:01'),
(167, '25', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\r\nis Rs.40,000, what is the average salary of th', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 25, 0, 'sharna', '2016-04-21', '2016-04-21 07:58:42'),
(168, '25', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \r\non the last 2 throws?\r\n1/16', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:58:48'),
(169, '25', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\r\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:59:01'),
(170, '25', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 25, 1, 'sharna', '2016-04-21', '2016-04-21 07:59:08'),
(171, '23', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 1, 23, 0, 'kumar', '2016-04-21', '2016-04-21 09:03:13'),
(172, '23', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 23, 1, 'kumar', '2016-04-21', '2016-04-21 08:05:04'),
(173, '23', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1204, 23, 0, 'kumar', '2016-04-21', '2016-04-21 09:03:29'),
(174, '23', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\r\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 23, 1, 'kumar', '2016-04-21', '2016-04-21 08:05:30'),
(175, '23', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 8, 23, 0, 'kumar', '2016-04-21', '2016-04-21 08:05:35'),
(176, '23', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \r\nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 30, 23, 0, 'kumar', '2016-04-21', '2016-04-21 08:05:41'),
(177, '23', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\r\nis Rs.40,000, what is the average salary of th', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 23, 0, 'kumar', '2016-04-21', '2016-04-21 08:05:47'),
(178, '23', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \r\non the last 2 throws?\r\n1/16', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 23, 1, 'kumar', '2016-04-21', '2016-04-21 08:05:55'),
(179, '23', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\r\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 23, 1, 'kumar', '2016-04-21', '2016-04-21 08:06:00'),
(180, '23', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 23, 1, 'kumar', '2016-04-21', '2016-04-21 08:06:11'),
(181, '24', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 1, 24, 0, 'ravi', '2016-04-21', '2016-04-21 08:09:20'),
(182, '24', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:09:26'),
(183, '24', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:09:32'),
(184, '24', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\r\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:09:37'),
(185, '24', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 8, 24, 0, 'ravi', '2016-04-21', '2016-04-21 08:09:42'),
(186, '24', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \r\nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 40, 24, 0, 'ravi', '2016-04-21', '2016-04-21 08:09:48'),
(187, '24', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\r\nis Rs.40,000, what is the average salary of th', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:09:54'),
(188, '24', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \r\non the last 2 throws?\r\n1/16', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:09:59'),
(189, '24', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\r\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:10:05'),
(190, '24', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 24, 1, 'ravi', '2016-04-21', '2016-04-21 08:10:11'),
(191, '27', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 3, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:54:38'),
(192, '27', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:54:44'),
(193, '27', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:54:52'),
(194, '27', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\r\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:54:59'),
(195, '27', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 8, 27, 0, 'raj', '2016-04-21', '2016-04-21 08:55:07'),
(196, '27', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \r\nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 35, 27, 0, 'raj', '2016-04-21', '2016-04-21 08:55:20'),
(197, '27', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\r\nis Rs.40,000, what is the average salary of th', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 27, 0, 'raj', '2016-04-21', '2016-04-21 08:55:26'),
(198, '27', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \r\non the last 2 throws?\r\n1/16', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:55:33'),
(199, '27', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\r\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:55:39'),
(200, '27', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 27, 1, 'raj', '2016-04-21', '2016-04-21 08:55:46'),
(201, '28', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 3, 28, 1, 'gop', '2016-04-21', '2016-04-21 08:59:08'),
(202, '28', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:00:16'),
(203, '28', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:00:21'),
(204, '28', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\r\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:00:35'),
(205, '28', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 20, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:00:40'),
(206, '28', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \r\nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 45, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:00:46'),
(207, '28', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\r\nis Rs.40,000, what is the average salary of th', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:00:59'),
(208, '28', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \r\non the last 2 throws?\r\n1/16', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:01:11'),
(209, '28', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\r\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:01:19'),
(210, '28', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 28, 1, 'gop', '2016-04-21', '2016-04-21 09:01:25'),
(211, '30', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 4, 30, 0, 'sab', '2016-08-27', '2016-08-27 04:27:29'),
(212, '30', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:37:51'),
(213, '30', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:38:04'),
(214, '30', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:38:12'),
(215, '30', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 24, 30, 0, 'sab', '2016-08-27', '2016-08-27 13:38:21'),
(216, '30', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 40, 30, 0, 'sab', '2016-08-27', '2016-08-27 13:38:30'),
(217, '30', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\nis Rs.40,000, what is the average salary of the 4 remaining employees?', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:38:42'),
(218, '30', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \non the last 2 throws?\n', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:38:53'),
(219, '30', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:39:07'),
(220, '30', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 30, 1, 'sab', '2016-08-27', '2016-08-27 13:39:17'),
(221, '31', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 4, 31, 0, 'jaggir', '2016-09-11', '2016-09-11 23:37:39'),
(222, '31', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 4, 31, 0, 'jaggir', '2016-09-11', '2016-09-11 23:37:54'),
(223, '31', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 31, 1, 'jaggir', '2016-09-11', '2016-09-11 23:38:09'),
(224, '31', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 31, 1, 'jaggir', '2016-09-11', '2016-09-11 23:38:16'),
(225, '31', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 24, 31, 0, 'jaggir', '2016-09-11', '2016-09-11 23:38:27'),
(226, '31', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 45, 31, 1, 'jaggir', '2016-09-11', '2016-09-11 23:38:36'),
(227, '31', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\nis Rs.40,000, what is the average salary of the 4 remaining employees?', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 31, 0, 'jaggir', '2016-09-11', '2016-09-11 23:38:45'),
(228, '31', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \non the last 2 throws?\n', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 31, 1, 'jaggir', '2016-09-11', '2016-09-11 23:38:55'),
(229, '31', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 31, 0, 'jaggir', '2016-09-11', '2016-09-11 23:39:19'),
(230, '31', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 31, 1, 'jaggir', '2016-09-11', '2016-09-11 23:39:29'),
(231, '32', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 3, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 11:14:37'),
(232, '32', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:42:04'),
(233, '32', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:42:10'),
(234, '32', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:42:15'),
(235, '32', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 20, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:42:47'),
(236, '32', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 45, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:42:52'),
(237, '32', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\nis Rs.40,000, what is the average salary of the 4 remaining employees?', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:42:59'),
(238, '32', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \non the last 2 throws?\n', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:43:04'),
(239, '32', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:43:10'),
(240, '32', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 32, 1, 'Ashik hussain', '2016-09-11', '2016-09-11 23:43:17'),
(241, '33', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 3, 33, 1, 'harsha', '2016-12-28', '2016-12-28 16:52:05'),
(242, '33', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 3, 33, 1, 'harsha', '2016-12-28', '2016-12-28 16:52:10'),
(243, '33', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 33, 1, 'harsha', '2016-12-28', '2016-12-28 16:52:17'),
(244, '33', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 33, 1, 'harsha', '2016-12-28', '2016-12-28 16:52:26'),
(245, '33', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 24, 33, 0, 'harsha', '2016-12-28', '2016-12-28 16:52:32'),
(246, '33', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 40, 33, 0, 'harsha', '2016-12-28', '2016-12-28 16:52:39'),
(247, '33', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\nis Rs.40,000, what is the average salary of the 4 remaining employees?', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 33, 0, 'harsha', '2016-12-28', '2016-12-28 16:52:52'),
(248, '33', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \non the last 2 throws?\n', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 33, 1, 'harsha', '2016-12-28', '2016-12-28 16:52:58'),
(249, '33', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 33, 0, 'harsha', '2016-12-28', '2016-12-28 16:53:06'),
(250, '33', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 33, 1, 'harsha', '2016-12-28', '2016-12-28 16:53:12'),
(251, '34', 1, 'Find the least value of * for which 7*5462 is divisible by 9?', '1', '2', '3', '4', 3, '3', 1, 34, 0, 'Sabiha', '2019-07-12', '2019-07-12 11:38:20'),
(252, '34', 2, 'Find the remainder when 2^31 is divided by 5?', '5', '4', '3', '2', 3, '3', 5, 34, 0, 'Sabiha', '2019-07-12', '2019-07-12 11:39:08'),
(253, '34', 3, 'Find the sum of all even numbers less than 75?', '1406', '1204', '786', '500', 1, '1406', 1406, 34, 1, 'Sabiha', '2019-07-12', '2019-07-12 11:39:20'),
(254, '34', 4, 'Sita is 3 times as old as Anu and half as old as priya.If sita is s year old,what is the sum of their ages,\nin terms of s?', '5(s/3)', '7(s/3)', '10(s/3)', '9(s/2)', 3, '10(s/3)', 10, 34, 1, 'Sabiha', '2019-07-12', '2019-07-12 11:39:27'),
(255, '34', 5, 'A dress that originally sold for Rs.120 now sells for Rs.96.The new price is what percent less than \r\nthe original price?', '8%', '12%', '20%', '24%', 3, '20%', 24, 34, 0, 'Sabiha', '2019-07-12', '2019-07-12 11:39:34'),
(256, '34', 6, 'A basket of balls contains red and blue balls in a ratio of 2 to 3.If there are 30 red balls in it,how may \nblue balls are in the basket?', '30', '35', '40', '45', 4, '45', 30, 34, 0, 'Sabiha', '2019-07-12', '2019-07-12 02:14:45'),
(257, '34', 7, 'The average salary of 12 employees at a certain firm is Rs.35,000.If the average salary of 8 employees\nis Rs.40,000, what is the average salary of the 4 remaining employees?', 'Rs.25,000', 'Rs.27,000', 'Rs.27,500', 'Rs.28,000', 1, 'Rs.25,000', 0, 34, 1, 'Sabiha', '2019-07-12', '2019-07-12 02:15:10'),
(258, '34', 8, 'Varun flips a coin four times.What is the probablility that he gets heads on first 2 throws and tails \non the last 2 throws?\n', '1/16', '1/8', '1/4', '1/2', 1, '1/16', 1, 34, 1, 'Sabiha', '2019-07-12', '2019-07-12 11:39:58'),
(259, '34', 9, 'A sum of Rs.800 amounts to Rs.920 in 3 years at simple interest.If the interest rate is increased by 3%,\nit would amount to how much?', 'Rs.800', 'Rs.892', 'Rs.900', 'Rs.992', 4, 'Rs.992', 0, 34, 0, 'Sabiha', '2019-07-12', '2019-07-12 11:40:05'),
(260, '34', 10, 'Find the odd man out:10,14,16,18,21,24,26', '26', '24', '21', '18', 3, '21', 21, 34, 1, 'Sabiha', '2019-07-12', '2019-07-12 11:40:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
