-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 12:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linkstaff`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(5, '2016_06_01_000004_create_oauth_clients_table', 2),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(7, '2022_05_22_032058_create_pages_table', 3),
(8, '2022_05_22_040517_create_pages_table', 4),
(9, '2022_05_22_060043_create_posts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1715482e0796b07cc1570e865c425c7cd95eb421be38e0bcbcfdb9e8d3e1907b420310a0b5f86c0e', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 12:52:11', '2022-05-21 12:52:11', '2023-05-21 18:52:11'),
('205ba02197f5eb7daa5fad3cb09460169455ea18a243903888aee5a2339b70ef7c8b9adf11e88842', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 04:49:32', '2022-05-21 04:49:32', '2023-05-21 10:49:32'),
('2708faeb5bf5f6149bae9c0f8f6329955718d1de54c225a7bf67b9c8a657da5a9473f36581f147f7', 2, 1, 'Token', '[]', 0, '2022-05-21 22:21:07', '2022-05-21 22:21:07', '2023-05-22 04:21:07'),
('32a05a8281b9e88b971c66cfa917c72ab4a163dc7ab214c5246fd71b149b1cffa36673a86c72b4e7', 1, 1, 'Token', '[]', 0, '2022-05-21 20:55:00', '2022-05-21 20:55:00', '2023-05-22 02:55:00'),
('370edc7dabe62291ee9e2ce030347799a18bb0204eb827a7ee381e1d48758f58dc5a972599ed07f3', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 11:11:56', '2022-05-21 11:11:56', '2023-05-21 17:11:56'),
('5803687005e27f914df10c6900d1f9def7f1e3a6179b3a335aac3064cc7c732b7aba4548bbf61e91', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 04:41:23', '2022-05-21 04:41:23', '2023-05-21 10:41:23'),
('637b2f77dc18945c9edf7609bec8efe88899cd761f7044675a0c3b537c5076064e29cd045d50545c', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 12:46:14', '2022-05-21 12:46:14', '2023-05-21 18:46:14'),
('73242b82201a341e69b1c12f62816ac97c8a8e3893b22e5ed477d64834e0dcb021ab5c4aeab00018', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 11:52:39', '2022-05-21 11:52:39', '2023-05-21 17:52:39'),
('7c79f6513dd09e92264eddb8888ae9a4fbd6e0f83057e65475bc5e0462e5bee33763bc370146145c', 1, 1, 'Token', '[]', 0, '2022-05-21 20:54:01', '2022-05-21 20:54:01', '2023-05-22 02:54:01'),
('a1bc02aecc5a46a5c8f1839be227e7a93d078c48f8ff61e655a7a612f19f0510dab676f76c45055c', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 12:58:21', '2022-05-21 12:58:21', '2023-05-21 18:58:21'),
('a76d444dabc175f03f90409afc723fa2a113898b6dba9b7f1074239582be5e391b8394f078f8da2a', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 07:16:47', '2022-05-21 07:16:47', '2023-05-21 13:16:47'),
('ab549c1366852b77043d0842eced38ec6c4af25b36ae402856c5f50d85a2a98106e8eb4f3879d51a', 1, 1, 'Token', '[]', 0, '2022-05-21 20:54:46', '2022-05-21 20:54:46', '2023-05-22 02:54:46'),
('cd6bdb74cd0b62d0dcf2bb6b88697361363bad9286b8377cbbbd319bbdf810981f968dad37ab34f9', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 04:46:17', '2022-05-21 04:46:17', '2023-05-21 10:46:17'),
('d5ad44e8c627ee7c3daeac4590b47701fa3abd506457f31f1859292e5d5b5efee029abee23fc451f', 1, 1, 'Token', '[]', 0, '2022-05-21 20:52:58', '2022-05-21 20:52:58', '2023-05-22 02:52:58'),
('ddbf8064f0ff8aa521f4c2b3816bc8d35ee5b7fa1bdda9e931491f577ddc83c77b7b608005ee8177', 1, 1, 'Auth Token', '[]', 0, '2022-05-21 13:01:03', '2022-05-21 13:01:03', '2023-05-21 19:01:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ojI5sf0UtM10peHDhDMKTlnRSRhkGraYJzUmUz9H', NULL, 'http://localhost', 1, 0, 0, '2022-05-21 01:19:42', '2022-05-21 01:19:42'),
(2, NULL, 'Laravel Password Grant Client', 'EwlwgdjTuuuIPac9HmtRHazUv441O1gPGsvEpqG1', 'users', 'http://localhost', 0, 1, 0, '2022-05-21 01:19:43', '2022-05-21 01:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-05-21 01:19:43', '2022-05-21 01:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, '2022-05-21 22:15:03', '2022-05-21 22:15:03'),
(2, 'About', 1, '2022-05-21 22:16:03', '2022-05-21 22:16:03'),
(3, 'National', 2, '2022-05-21 22:22:38', '2022-05-21 22:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `user_id`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 'Korola', 'It is a healthy vegetable used in daily eating', 2, NULL, '2022-05-22 00:22:53', '2022-05-22 00:22:53'),
(2, 'Lebu', 'It is used as an extra item in eating.', 1, NULL, '2022-05-22 03:46:24', '2022-05-22 03:46:24'),
(3, 'Anaros', 'It is a tasty and healthy fruit', 1, 2, '2022-05-22 04:00:09', '2022-05-22 04:00:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rokon', 'Pk', 'rokonuzzamancse@gmail.com', NULL, '$2y$10$hZxMsT1QoL9pDUWGPWchyOocAyb7oLzIzCCYdiGjJsVh.Kntc/9MO', NULL, '2022-05-19 03:06:54', '2022-05-19 03:06:54'),
(2, 'Parvez', 'Hossain', 'parvez@gmail.com', NULL, '$2y$10$pcbYeahWHTdMM/WkqJv8Oub9SN4XF0QFWEuetLZhX/3CDxY7vQhPi', NULL, '2022-05-21 20:58:57', '2022-05-21 20:58:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
