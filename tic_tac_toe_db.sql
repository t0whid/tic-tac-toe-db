-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 01:15 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tic_tac_toe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `player_1` int NOT NULL,
  `player_2` int NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `player_1`, `player_2`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '1', '2023-03-31 11:36:21', '2023-03-31 11:36:21'),
(2, 1, 2, '1', '2023-03-31 11:41:06', '2023-03-31 11:41:06'),
(3, 1, 2, '1', '2023-03-31 11:44:39', '2023-03-31 11:44:39'),
(4, 1, 2, '1', '2023-03-31 11:52:38', '2023-03-31 11:52:38'),
(5, 1, 2, '1', '2023-03-31 11:53:12', '2023-03-31 11:53:12'),
(6, 1, 2, '1', '2023-03-31 11:53:54', '2023-03-31 11:53:54'),
(7, 1, 2, '1', '2023-03-31 11:55:38', '2023-03-31 11:55:38'),
(8, 1, 2, '1', '2023-03-31 11:56:03', '2023-03-31 11:56:03'),
(9, 1, 2, '1', '2023-03-31 12:01:10', '2023-03-31 12:01:10'),
(10, 1, 2, '1', '2023-03-31 12:01:45', '2023-03-31 12:01:45'),
(11, 1, 2, '1', '2023-03-31 12:11:34', '2023-03-31 12:11:34'),
(12, 1, 2, '1', '2023-03-31 12:11:49', '2023-03-31 12:11:49'),
(13, 1, 2, '1', '2023-03-31 12:11:52', '2023-03-31 12:11:52'),
(14, 1, 2, '1', '2023-03-31 12:11:52', '2023-03-31 12:11:52'),
(15, 1, 2, '1', '2023-03-31 12:11:53', '2023-03-31 12:11:53'),
(16, 1, 3, '1', '2023-03-31 12:27:32', '2023-03-31 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_31_152654_create_games', 1),
(7, '2023_03_31_152700_create_turns', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `turns`
--

CREATE TABLE `turns` (
  `id` bigint UNSIGNED NOT NULL,
  `game_id` int NOT NULL,
  `whose_turn` int NOT NULL,
  `player_1` int NOT NULL,
  `player_2` int NOT NULL,
  `player_1_total` int NOT NULL,
  `player_2_total` int NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `turns`
--

INSERT INTO `turns` (`id`, `game_id`, `whose_turn`, `player_1`, `player_2`, `player_1_total`, `player_2_total`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 2, 1, 2, 0, 0, '1', '2023-03-31 11:55:38', '2023-03-31 11:55:38'),
(2, 8, 2, 1, 2, 0, 0, '1', '2023-03-31 11:56:03', '2023-03-31 11:56:03'),
(3, 9, 2, 1, 2, 0, 0, '1', '2023-03-31 12:01:10', '2023-03-31 12:01:10'),
(4, 10, 2, 1, 2, 0, 0, '1', '2023-03-31 12:01:45', '2023-03-31 12:01:45'),
(5, 11, 2, 1, 2, 0, 0, '1', '2023-03-31 12:11:34', '2023-03-31 12:11:34'),
(6, 12, 2, 1, 2, 0, 0, '1', '2023-03-31 12:11:49', '2023-03-31 12:11:49'),
(7, 13, 2, 1, 2, 0, 0, '1', '2023-03-31 12:11:52', '2023-03-31 12:11:52'),
(8, 14, 2, 1, 2, 0, 0, '1', '2023-03-31 12:11:52', '2023-03-31 12:11:52'),
(9, 15, 2, 1, 2, 0, 0, '1', '2023-03-31 12:11:53', '2023-03-31 12:11:53'),
(10, 16, 3, 1, 3, 0, 0, '1', '2023-03-31 12:27:32', '2023-03-31 12:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'towhid', 'a@gmail.com', NULL, '$2y$10$2uE9u8Iai6kbid0IZFrRiOJVwA4DOLWuir7fBv7YruB9AxWQKFuQO', NULL, '2023-03-31 10:08:14', '2023-03-31 10:08:14'),
(2, 'Demo', 'demo@gmail.com', NULL, '$2y$10$MdVfZE/LiJQpPhzbfDtzO.JBWpfHoL.03HnC0luJ2//Zqa/fCigvi', NULL, '2023-03-31 10:39:29', '2023-03-31 10:39:29'),
(3, 'towhid1', 'a1@gmail.com', NULL, '$2y$10$2SRwCrvxafFWnM7U5bNQLuVTRq2htoR.CvEeiYHw7qpFLWHqg0msC', NULL, '2023-03-31 12:25:10', '2023-03-31 12:25:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `turns`
--
ALTER TABLE `turns`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turns`
--
ALTER TABLE `turns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
