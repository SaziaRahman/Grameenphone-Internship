-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2023 at 04:28 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `category_id`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'New Article', 'New Article body', 2, '2023-03-13 06:06:14', '2023-03-16 09:18:57', '', '6'),
(2, 'New title', 'New body...!', 2, '2023-03-14 03:45:54', '2023-03-16 09:25:43', '', 'sazia20000@gmail.com'),
(11, 'this is my 11th article', 'this is the body of my 11th article/', 1, '2023-03-15 10:31:26', '2023-03-16 09:26:08', '9', 'sazia20000@gmail.com'),
(12, 'abc', 'abc', 1, '2023-03-15 10:37:23', '2023-03-15 10:45:53', '11', 'bitto2023@gmail.com'),
(13, 'abc1', 'abc1', 1, '2023-03-15 10:44:47', '2023-03-15 10:44:47', 'bitto2023@gmail.com', ''),
(14, 'test', 'test', 2, '2023-03-15 10:51:44', '2023-03-15 10:51:44', '11', ''),
(15, 'Food 1', 'food detail', 3, '2023-03-15 10:55:47', '2023-03-15 10:55:47', '11', ''),
(16, 'Food02', 'Food02', 3, '2023-03-16 09:07:20', '2023-03-16 09:57:01', '6', 'mogno20000@gmail.com'),
(17, 'Article Food03', 'apple, ice-cream', 3, '2023-03-16 09:10:56', '2023-03-16 09:56:45', '6', 'mogno20000@gmail.com'),
(18, 'hi 01', 'hi hi', 1, '2023-03-16 09:27:25', '2023-03-16 09:57:12', '6', 'mogno20000@gmail.com'),
(19, 'hi', 'hi hi', 1, '2023-03-16 09:28:21', '2023-03-16 09:57:47', '6', 'bitto2023@gmail.com'),
(20, 'hi 01', 'hi hi', 1, '2023-03-16 09:29:43', '2023-03-16 09:57:57', '6', 'bitto2023@gmail.com'),
(21, 'hi', 'hi hi', 1, '2023-03-16 09:30:06', '2023-03-16 09:58:08', '6', 'bitto2023@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `lft` int NOT NULL,
  `rght` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `description`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 2, 5, 5, 'Book_01', 'Book', '2023-03-13 11:57:18', '2023-03-19 09:47:25', '4', ''),
(2, 1, 0, 6, 'journal_01', 'It is used for writing journal_01 articles ', '2023-03-13 05:57:44', '2023-03-13 05:57:44', '4', ''),
(3, 1, 7, 8, 'Food', 'Food items', '2023-03-15 10:55:19', '2023-03-15 10:55:19', '4', ''),
(4, 1, 1, 4, 'Research_01', 'Research_01', '2023-03-20 08:15:38', '2023-03-20 08:15:38', '11', ''),
(5, 4, 2, 3, 'Research_02', 'Research_02', '2023-03-20 08:25:38', '2023-03-20 08:25:38', '11', '');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20230306053538, 'CreateArticles', '2023-03-05 23:38:38', '2023-03-05 23:38:38', 0),
(20230306053659, 'CreateCategories', '2023-03-05 23:38:38', '2023-03-05 23:38:38', 0),
(20230313055356, 'CreateArticles', '2023-03-12 23:54:27', '2023-03-12 23:54:27', 0),
(20230313055419, 'CreateCategories', '2023-03-12 23:54:27', '2023-03-12 23:54:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `loggedin_users` int NOT NULL,
  `active_users` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created`, `modified`, `loggedin_users`, `active_users`) VALUES
(4, 'mogno20000@gmail.com', '$2y$10$IcF4faitOV20prT8zZQhXe2jbDD57nJqiPLog4O9NHcWBBO4fK/1y', 'admin', '2023-03-09 12:02:42', '2023-03-22 04:07:50', 0, 0),
(5, 'mogno2023@gmail.com', '$2y$10$C6OitXhovS22Z4I3FN5zGeN28tDksaZHMswBA1g0tuNlx39.FBPr6', 'admin', '2023-03-09 13:38:02', '2023-03-21 10:18:27', 0, 0),
(6, 'sazia20000@gmail.com', '$2y$10$bZftj6kB.pZA2SMJ4GbNHeDdrDiWD/1bcAjo6BlYkieck7f0NQ4hW', 'author', '2023-03-09 13:38:40', '2023-04-03 04:23:42', 0, 1),
(7, 'saziarahman2000@gmail.com', '$2y$10$DuPveNeljhfubNP.pdlQz.lxo.SpvJXwng1s2ubUzeWBvjIq.pZ1.', 'admin', '2023-03-09 07:41:43', '2023-03-09 07:41:43', 0, 1),
(9, 'bitto2023@gmail.com', '$2y$10$XUgiWECD9AehFd7kLnFjPu3OL0xsd1CxNgTaWtfHbEaJk4ByU67YO', 'author', '2023-03-09 13:52:03', '2023-03-27 05:52:15', 0, 1),
(10, 'bitto12345@gmail.com', '$2y$10$AN1ZomezjTaK6c9kH42Abu7GHY42PKs3x5Bmcr.roAIqSWqtswwcy', 'author', '2023-03-12 16:09:08', '2023-03-12 16:09:13', 0, 1),
(11, 'bitto20000@gmail.com', '$2y$10$qaTbuZ8xdYwaEW2NhgWO9uBOTjjhQ1erg4O5HCTNJrKpGt6oZvpP6', 'admin', '2023-03-13 10:25:00', '2023-03-21 09:47:04', 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
