-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2018 at 08:09 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE IF NOT EXISTS `tbl_about` (
  `id` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `about`) VALUES
('01', '                    ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `user_id` varchar(255) NOT NULL DEFAULT 'A237893',
  `username` varchar(255) NOT NULL DEFAULT 'admin',
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `avatar` varchar(255) DEFAULT NULL,
  `reg_date` varchar(255) NOT NULL,
  `verified` varchar(255) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `username`, `email`, `login`, `role`, `avatar`, `reg_date`, `verified`) VALUES
('A237893', 'admin', 'admin@admin.com', '$2y$10$VtXddcoSlfXFC2aXTMutju9PkFzdH5ALJwXPGKPdkjP7aBdsW26EG', 'admin', NULL, '04/11/2018 - 03:10:57', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ads`
--

CREATE TABLE IF NOT EXISTS `tbl_ads` (
  `enc_id` int(255) NOT NULL AUTO_INCREMENT,
  `ad_id` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `ad_condition` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `fixed` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `featured` varchar(255) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`enc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE IF NOT EXISTS `tbl_alerts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '001', 'You have been registered successfully', 'success'),
(2, '002', 'Invalid email address or password', 'danger'),
(3, '003', 'Sorry, only JPG, JPEG, & PNG files are allowed.', 'warning'),
(4, '004', 'Sorry, your file is too large. avatar upload should be less than <strong>800KB</strong>', 'warning'),
(5, '005', 'Profile has been updated', 'success'),
(6, '006', 'Password has been updated', 'success'),
(7, '007', 'Image uploaded successfully', 'success'),
(8, '008', 'Ad has been updated successfully', 'success'),
(9, '009', 'Ad has been deleted successfully', 'success'),
(10, '010', 'Your image must have a width of <strong>750</strong> and a height of <strong>450</strong> ', 'warning'),
(11, '011', 'Your message has been sent', 'success'),
(12, '012', 'An error occurred while sending your message', 'warning'),
(13, '013', 'Account was not found', 'warning'),
(14, '014', 'Please check your email for more instructions', 'info'),
(15, '015', 'Unknown error occured', 'warning'),
(16, '016', 'Settings applied successfully', 'info'),
(17, '017', 'FAQ was added successfully', 'success'),
(18, '018', 'Email is already registered', 'warning'),
(19, '019', 'Email or username is already registered', 'warning'),
(20, '020', 'Username is already registered', 'warning');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE IF NOT EXISTS `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Convertibles'),
(2, 'Coupe'),
(3, 'Crossover'),
(4, 'Hatchback'),
(5, 'Luxury'),
(7, 'MUV'),
(6, 'Notchback'),
(8, 'Sedan'),
(9, 'Sports Cars'),
(11, 'SUV'),
(12, 'Wagon'),
(13, 'Van/Minivan'),
(14, 'Super Cars');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fuel`
--

CREATE TABLE IF NOT EXISTS `tbl_fuel` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fuel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tbl_fuel`
--

INSERT INTO `tbl_fuel` (`id`, `fuel`) VALUES
(1, 'Petrol'),
(2, 'Diesel'),
(3, 'Compressed natural gas (CNG)'),
(4, 'Liquefied petroleum gas (LPG)'),
(5, 'Storage battery'),
(6, 'Kerosene');



-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE IF NOT EXISTS `tbl_faqs` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `quest` varchar(255) NOT NULL,
  `answ` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_tokens`
--

CREATE TABLE IF NOT EXISTS `tbl_reset_tokens` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expires` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `verified` varchar(255) NOT NULL DEFAULT 'NO',
  `reg_date` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
