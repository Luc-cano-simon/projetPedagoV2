-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2018 at 05:01 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ProPedago2s`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `famille` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendrier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `famille`, `name`, `calendrier`, `personne`, `mail`, `numero`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'École', 'name', '', 'name', 'email', '2143324', 'sqfd', '2018-10-25 10:22:24', '2018-10-25 10:22:24'),
(2, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:27:37', '2018-10-25 10:27:37'),
(3, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:29:26', '2018-10-25 10:29:26'),
(4, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:29:34', '2018-10-25 10:29:34'),
(5, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:30:30', '2018-10-25 10:30:30'),
(6, 'École', 'name', '2018-10-29', 'name', 'email', 'num', 'uhuhu', '2018-10-25 10:32:17', '2018-10-25 10:32:17'),
(7, 'École', 'name', '2018-10-02', 'name', 'email', 'num', 'ooiii', '2018-10-25 11:36:22', '2018-10-25 11:36:22'),
(8, 'École', 'name', '2018-10-25', 'max', 'max@hhhh', '9999', 'wesh', '2018-10-25 11:37:51', '2018-10-25 11:37:51'),
(9, 'École', 'name', '2018-10-03', 'name', 'email', 'num', 'iuhjuuju', '2018-10-25 11:41:13', '2018-10-25 11:41:13'),
(10, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 11:41:33', '2018-10-25 11:41:33'),
(11, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:04:22', '2018-10-25 12:04:22'),
(12, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:05:49', '2018-10-25 12:05:49'),
(13, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:08:33', '2018-10-25 12:08:33'),
(14, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:08:56', '2018-10-25 12:08:56'),
(15, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:09:18', '2018-10-25 12:09:18'),
(16, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:09:38', '2018-10-25 12:09:38'),
(17, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:10:35', '2018-10-25 12:10:35'),
(18, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:10:46', '2018-10-25 12:10:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
