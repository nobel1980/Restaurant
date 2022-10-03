-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2020 at 06:11 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `isActive` int(1) DEFAULT '0',
  `original_name` varchar(80) DEFAULT NULL,
  `file_name` varchar(80) DEFAULT NULL,
  `extension` varchar(4) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `modified_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `level`, `isActive`, `original_name`, `file_name`, `extension`, `size`, `created_at`, `modified_at`) VALUES
(1, 'Annual General Metting 2017', 0, 1, 'annual_general_metting_2017.jpg', 'f5mm3uy73qvch50aqoyb', 'jpg', 224881, 2019, NULL),
(2, 'Child Education and Marriage Insurace', 1, 1, 'Product_child_education.jpg', 'x5cqatfn0gu6qb1laipm', 'jpg', 43770, 2019, NULL),
(3, 'Zonal Conference 2018', 2, 1, 'Zonal_conference_2018.jpg', 'mdr6t5es6uh15sq5tial', 'jpg', 330954, 2019, NULL),
(4, 'Mobile Insurance', 3, 1, 'm_insurance.jpg', '4esnzd547vx7sinc7exk', 'jpg', 47095, 2019, NULL),
(5, 'Mourning Day 2018', 4, 1, 'mourning_day_2018.jpg', 'srnphmeqax76k37z0tyf', 'jpg', 653916, 2019, NULL),
(6, '18th Anniversary', 5, 1, '18th_anniversary.jpg', '8t0n08utdu20cuywpeet', 'jpg', 39081, 2019, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text,
  `level` int(1) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `level`, `active`, `created`, `modified`) VALUES
(1, 'Smoothies', 'Smoothies', NULL, 1, '2018-02-01', '2019-05-04'),
(2, 'Breakfast', 'Served until 4:00pm', NULL, 1, '2018-02-01', '2019-05-04'),
(3, 'Baguettes', 'Includes salad', NULL, 1, '2018-02-01', '2019-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
CREATE TABLE IF NOT EXISTS `email_confirmations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usersId` int(10) UNSIGNED NOT NULL,
  `code` char(32) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  `modifiedAt` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` char(1) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_confirmations`
--

INSERT INTO `email_confirmations` (`id`, `usersId`, `code`, `createdAt`, `modifiedAt`, `confirmed`) VALUES
(1, 5, 'nT95jiUeABFspkuJqG8yJRwmKSiBles', 1552285534, NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `failed_logins`
--

DROP TABLE IF EXISTS `failed_logins`;
CREATE TABLE IF NOT EXISTS `failed_logins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usersId` int(10) UNSIGNED DEFAULT NULL,
  `ipAddress` char(15) NOT NULL,
  `attempted` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usersId` (`usersId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `failed_logins`
--

INSERT INTO `failed_logins` (`id`, `usersId`, `ipAddress`, `attempted`) VALUES
(1, 5, '::1', 1556339600),
(2, 5, '::1', 1588397885);

-- --------------------------------------------------------

--
-- Table structure for table `password_changes`
--

DROP TABLE IF EXISTS `password_changes`;
CREATE TABLE IF NOT EXISTS `password_changes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usersId` int(10) UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usersId` (`usersId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `profilesId` int(10) UNSIGNED NOT NULL,
  `resource` varchar(16) NOT NULL,
  `action` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profilesId` (`profilesId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `profilesId`, `resource`, `action`) VALUES
(1, 3, 'users', 'index'),
(2, 3, 'users', 'search'),
(3, 3, 'profiles', 'index'),
(4, 3, 'profiles', 'search'),
(5, 1, 'users', 'index'),
(6, 1, 'users', 'search'),
(7, 1, 'users', 'edit'),
(8, 1, 'users', 'create'),
(9, 1, 'users', 'delete'),
(10, 1, 'users', 'changePassword'),
(11, 1, 'profiles', 'index'),
(12, 1, 'profiles', 'search'),
(13, 1, 'profiles', 'edit'),
(14, 1, 'profiles', 'create'),
(15, 1, 'profiles', 'delete'),
(16, 1, 'permissions', 'index'),
(17, 2, 'users', 'index'),
(18, 2, 'users', 'search'),
(19, 2, 'users', 'edit'),
(20, 2, 'users', 'create'),
(21, 2, 'profiles', 'index'),
(22, 2, 'profiles', 'search');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `level` int(2) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(250) DEFAULT NULL,
  `modifiedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `active`, `level`, `created`, `modified`, `createdby`, `modifiedby`) VALUES
(1, 'Blueberry, Raspberry, Mango & Apple', '', '2.90', 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(2, ' Melon, Mango & Strawberry', '', '2.90', 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(3, 'Pineapple, Banana & Coconut', '', '2.90', 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(4, 'Strawberry & Banana', '', '2.90', 1, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(5, ' La Cigale Breakfast', '2 Eggs, 2 bacon, 2 sausages, beans, mushrooms, tomato, 1 toast, chips OR hash browns', '6.90', 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(6, 'Brunch Breakfast', '2 Eggs, 2 bacon, 2 sausages, mushrooms, tomato, 1 toast', '5.90', 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(7, 'Traditional Breakfast', '2 Eggs, 2 bacon, 1 sausage, beans, chips, 1 toast', '5.90', 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(8, 'Early Starter Breakfast', '2 Scrambled eggs, 2 bacon, tomato, beans, 2 hash browns, 1 toast', '5.90', 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL),
(9, 'Mini Breakfast', '1 Egg, 1 bacon, 1 sausage, mushrooms, tomato, 1 toast', '5.00', 2, 1, NULL, '2019-05-04', '2019-05-04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_copy`
--

DROP TABLE IF EXISTS `products_copy`;
CREATE TABLE IF NOT EXISTS `products_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `level` int(2) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `createdby` varchar(250) DEFAULT NULL,
  `modifiedby` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_copy`
--

INSERT INTO `products_copy` (`id`, `name`, `description`, `price`, `category_id`, `active`, `level`, `created`, `modified`, `createdby`, `modifiedby`) VALUES
(1, 'Assurance Plan', 'descriotion', '5.99', 1, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(2, 'Islami Endowment Plan', 'Description', '3.59', 1, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(3, 'Four Payment Endowment Assurance Plan', 'Description', '4.90', 1, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(4, 'Monthly Savings Plan', 'Description', '4.99', 2, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(5, 'Assurance Plan', 'Description', '3.59', 1, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(6, 'Assurance Pla', 'Description', '2.49', 1, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(7, 'Islami Endowment Plan', 'Description', '3.49', 2, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(8, 'Assurance Plan 2', 'Description', '4.99', 1, 1, NULL, '0000-00-00', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `active`) VALUES
(1, 'Administrators', 'Y'),
(2, 'Users', 'Y'),
(3, 'Read-Only', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `remember_tokens`
--

DROP TABLE IF EXISTS `remember_tokens`;
CREATE TABLE IF NOT EXISTS `remember_tokens` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usersId` int(10) UNSIGNED NOT NULL,
  `token` char(32) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reset_passwords`
--

DROP TABLE IF EXISTS `reset_passwords`;
CREATE TABLE IF NOT EXISTS `reset_passwords` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usersId` int(10) UNSIGNED NOT NULL,
  `code` varchar(48) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  `modifiedAt` int(10) UNSIGNED DEFAULT NULL,
  `reset` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usersId` (`usersId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `success_logins`
--

DROP TABLE IF EXISTS `success_logins`;
CREATE TABLE IF NOT EXISTS `success_logins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usersId` int(10) UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usersId` (`usersId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `success_logins`
--

INSERT INTO `success_logins` (`id`, `usersId`, `ipAddress`, `userAgent`) VALUES
(1, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0'),
(2, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0'),
(3, 5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `mustChangePassword` char(1) DEFAULT NULL,
  `profilesId` int(10) UNSIGNED NOT NULL,
  `banned` char(1) NOT NULL,
  `suspended` char(1) NOT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profilesId` (`profilesId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mustChangePassword`, `profilesId`, `banned`, `suspended`, `active`) VALUES
(1, 'Bob Burnquist', 'bob@phalconphp.com', '$2a$08$Lx1577KNhPa9lzFYKssadetmbhaveRtCoVaOnoXXxUIhrqlCJYWCW', 'N', 1, 'N', 'N', 'Y'),
(2, 'Erik', 'erik@phalconphp.com', '$2a$08$f4llgFQQnhPKzpGmY1sOuuu23nYfXYM/EVOpnjjvAmbxxDxG3pbX.', 'N', 1, 'Y', 'Y', 'Y'),
(3, 'Veronica', 'veronica@phalconphp.com', '$2a$08$NQjrh9fKdMHSdpzhMj0xcOSwJQwMfpuDMzgtRyA89ADKUbsFZ94C2', 'N', 1, 'N', 'N', 'Y'),
(4, 'Yukimi Nagano', 'yukimi@phalconphp.com', '$2a$08$cxxpy4Jvt6Q3xGKgMWIILuf75RQDSroenvoB7L..GlXoGkVEMoSr.', 'N', 2, 'N', 'N', 'Y'),
(5, 'Shahidul Islam', 'nobel.amin@gmail.com', '$2y$08$bWNzUXhvZFFuN2RQTlh6M.auiFT42FliHCOER5w.lvaB40SQxWlBG', 'N', 1, 'N', 'N', 'Y');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
