-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 12:56 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveldb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_models`
--

CREATE TABLE `image_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_models`
--

INSERT INTO `image_models` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '16004175475f646f0b95ea7.jpg', '2020-09-18 02:25:47', '2020-09-18 02:25:47'),
(2, '16004175475f646f0bee19d.jpg', '2020-09-18 02:25:48', '2020-09-18 02:25:48'),
(3, '16004175485f646f0c097f3.jpg', '2020-09-18 02:25:48', '2020-09-18 02:25:48'),
(4, '16004175485f646f0c1c652.jpg', '2020-09-18 02:25:48', '2020-09-18 02:25:48'),
(5, '16006201215f678659a890f.jpg', '2020-09-20 10:42:01', '2020-09-20 10:42:01'),
(6, '16006201215f678659c4acd.jpg', '2020-09-20 10:42:01', '2020-09-20 10:42:01');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_17_050304_create_teachers_table', 2),
(5, '2020_09_17_051031_create_subjects_table', 3),
(6, '2020_09_18_044611_create_image_models_table', 4);

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
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(101, '5mpCgfdXYw', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(102, '6xV8seobP7', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(103, '8M4AGuKssg', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(105, 'tq8EBsVNRs', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(109, 'MaEA3YBvch', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(111, 'rmPV4xlGdJ', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(112, 'DTmbNMskcG', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(113, 'y4U7Uh72qO', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(114, 'viJqasqnyo', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(115, 'vWV5cfIGY0', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(119, 'lD4ObqTUX5', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(122, 'HzhDuMZsJM', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(123, 'L3in6K82Hk', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(124, 'ASJSvUwsNT', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(125, 'nqvscutHoV', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(126, '8BM2ZQ7In5', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(127, 'AwCqkSRU2P', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(128, '3xr5Gxdhbp', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(130, '5TeRtlfDJk', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(133, 'eDeHvN1a7l', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(135, 'IK238xsKpC', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(137, '5PsCtHgWHc', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(140, 'jVu2kNxwRs', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(142, '7DN8yQTzUj', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(143, 'NlsGmblU2f', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(144, 'zp85ZozjoY', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(145, 'hOsac6RCHi', 16, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(146, 'Tc2KGECWmU', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(147, 'vtz6RHmoPr', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(148, '6vNFoeoSgG', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(149, '2KRszbMiuV', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59'),
(150, 'KLAyGiyLwT', 18, '2020-09-17 13:32:59', '2020-09-17 13:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `dob`, `gender`, `mobile`, `role`, `password`, `created_at`, `updated_at`) VALUES
(5, '', '', 'admin', '0000-00-00', '', 0, 'admin', 'password', NULL, NULL),
(9, 'Avishek', 'Barua', 'avishek@mail.com', '2020-09-10', 'male', 12345, 'student', '$2y$10$dmyk6fSQVGdsD3tOP.hjVe2WxkbOia8w1phuDRPZi2PXRo5bMxtpy', '2020-09-14 02:05:02', '2020-09-14 02:05:02'),
(14, 'Sunny', 'Mollik', 'sunny@mail.com', '2020-09-21', 'male', 2323, 'student', '$2y$10$RuXcD7zCcU6/2RypLwxdnOfaWjXILx/xVnSayqfJU5oxyX9x/DAKG', '2020-09-15 03:10:13', '2020-09-15 03:10:13'),
(15, 'Momin', 'Karim', 'momin@mail.com', '2020-09-17', 'male', 123, 'student', '$2y$10$StiweTVHe58XhNWVVSmEWeNk/PRNPNI25ke0v8ssyvPKDhX7MbI1S', '2020-09-15 03:24:22', '2020-09-15 03:24:22'),
(16, 'Anik', 'Shen', 'anik@mail.com', '2020-09-01', 'male', 124, 'teacher', '$2y$10$.j1kd3JEzBz2X/68d1LRke9rvo4kUyiy0LfTQ/d2yeMHB3xtd7ZJW', '2020-09-17 00:52:32', '2020-09-20 08:36:52'),
(18, 'Kingshuk', 'Dhar', 'kingshuk@mail.com', '2020-09-09', 'male', 2345, 'teacher', '$2y$10$9E4eZxVnTpQILQE/3Rv93umBLcW7K5C1RzxO0YpFymBI8YOduSuoy', '2020-09-17 13:32:01', '2020-09-17 13:32:01'),
(19, 'Ashik', 'Kamal', 'ashik@mail.com', '2020-09-01', 'male', 23244, 'teacher', '$2y$10$oygh/9b6sBZnUCPTHGz9je7p2XIvPMEKst2Etwrz5aGFrlaUEpsEy', '2020-09-20 08:51:08', '2020-09-20 08:51:08'),
(20, 'Anik', 'Sen', 'anik2@mail.com', '2020-10-01', 'male', 123442, 'student', '$2y$10$G/sfEpUUemqJp4Q9kxIYquln.aKbGdCRiOSmwZg0RMmehgN/t.VOe', '2020-09-20 10:34:05', '2020-09-20 10:34:05');

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
-- Indexes for table `image_models`
--
ALTER TABLE `image_models`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_teacher_id_index` (`teacher_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_models`
--
ALTER TABLE `image_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
