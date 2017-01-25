-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2017 at 05:28 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 5.5.38-4+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authentication_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'rowayda', 'rowayda@mail.com', '$2y$10$SESkIWJmH0DO8CQtnXTD8uUumOvl3L/RmBx6x24.U99X3L4pfG4ee', 'kXm3JAfnbuysYPaC4e439Z09AZSDbskeYO3JVrxdcrJgPyJjovlw52vbt3SU', '2017-01-24 05:01:41', '2017-01-25 13:25:01', NULL),
(2, 'user2', 'user2@mail.com', '$2y$10$NRusOWDAGc8kbDcAfr5mKec4/9qaxB7W0fGu4cdyzmSH4FBpCNCKS', 'H6oBYrqGxOsN2FIncmQNi1KMlG6zBaukag0scO4lbpfcLtcS9uQmHBJP3NVW', '2017-01-24 05:03:40', '2017-01-24 05:05:14', NULL),
(3, 'user3', 'user3@mail.com', '$2y$10$C6HW8CPNi/YI01d8uopSI.dHMllyrq/A/vEF9lJnw.VO7xECJvvfS', NULL, '2017-01-24 05:15:51', '2017-01-24 05:15:51', NULL),
(4, 'user4', 'user4@mail.com', '$2y$10$YBw/my/bQW4Ml5eBPw1cXe53yPzLJOE4fio4B0IDq2X4earijuzda', 'M3LkgG36y38H2HseqHqMQ87dlBMZRirxzEtJKoXtAWxbKbpBA9Hiq3SFi6Tl', '2017-01-24 19:20:39', '2017-01-24 19:40:59', NULL),
(5, 'user45', 'user45@mail.com', '$2y$10$veb/IrvNX9nSyu45F3PopOq6aupnUtJOHbKa7V0ywnbRiBppkyUMS', 'q4UZe6AuuEU1cbo1zQNNrkf2BDNaVYc1zhshNIJ2KLnqfEzHZyzx9ZJ4gDLi', '2017-01-25 12:51:19', '2017-01-25 12:52:26', NULL),
(6, 'user46', 'user46@mail.com', '$2y$10$6XsHjs5r5Kut.UMj953l8uMi7Oxn10.1gw69AIoyBMZxVe/ZlnXPq', NULL, '2017-01-25 13:08:09', '2017-01-25 13:08:09', NULL),
(7, 'user47', 'user47@mail.com', '$2y$10$ZCtEX2Hj/iQ4gU1KuTsnK.odA.U/yP0A3hKbzvcdCuDL6O9M4K0kK', NULL, '2017-01-25 13:09:27', '2017-01-25 13:09:27', NULL),
(8, 'user48', 'user48@mail.com', '$2y$10$nczRENK7Fs23cu9N.YP4TeCMJQieGh.r8W.bzswWXQgNyjmQe.LmW', 'l1lJ2o6FWWL3qBf7BTo4QBrsjalEUs7ToJ7RSEFPGS9ZsD23jlfG5vzzRSYo', '2017-01-25 13:10:57', '2017-01-25 13:19:29', NULL),
(9, 'user49', 'user49@mail.com', '$2y$10$P4UV1agZslSP8np5PTCM9.UZPnmhXzPXchqEsBFsspMREPtuTqAza', 'cRhqSKyk1lBljyUFz8KkoByTCw71h5c3Hgn0Un7zW6pqel0kXuIM035mg35g', '2017-01-25 13:20:05', '2017-01-25 13:23:51', NULL),
(10, 'rowayda2', 'rowayda2@mail.com', '$2y$10$HlKRhNxPUN4HSrDpAVcTqe6gq8G1aDaw88MCJ8puXPHPGK1HH8dsO', NULL, '2017-01-25 13:25:55', '2017-01-25 13:25:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
