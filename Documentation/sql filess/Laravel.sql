-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2022 at 01:45 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `choice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `papl` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `entered_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `choice`, `firstname`, `surname`, `price`, `papl`, `created_at`, `updated_at`, `entered_by`) VALUES
(10, 'cd', 'Brannon O\'Hara', 'Mr. Ubaldo Wilderman', 292, 52, NULL, NULL, 'admin'),
(12, 'book', 'Ms. Yvonne Waters', 'Dr. Mallie Gaylord', 332, 54, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(15, 'book', 'Sherwood Windler', 'Prof. Alta Franecki', 330, 90, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(16, 'cd', 'Lera Hand', 'Louisa Christiansen', 367, 63, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(17, 'cd', 'Talon Daugherty DDS', 'Kelly Gislason', 429, 76, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(18, 'cd', 'Estelle Roob', 'Moses Treutel', 405, 71, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(19, 'book', 'Esther Thiel', 'Maximus Keeling', 353, 84, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(20, 'cd', 'Miss Kassandra Lehner', 'Ms. Burdette Bode', 473, 82, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(22, 'cd', 'Ona Zboncak', 'Ms. Burdette Cole MD', 441, 63, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(23, 'book', 'Mr. Coty Bode IV', 'Edgardo Runolfsson', 395, 58, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(24, 'book', 'Dr. Kiley Herzog', 'Dangelo O\'Hara', 476, 82, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(25, 'book', 'Vincenzo Koss', 'Carlos Considine III', 335, 58, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(26, 'cd', 'Prof. Raleigh Yundt', 'Raul Olson', 318, 78, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(27, 'book', 'Clark Wyman', 'Verona Larson', 267, 51, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(28, 'book', 'Gracie Morissette', 'Elliot Casper MD', 257, 61, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(29, 'book', 'Felipe Conroy', 'Logan Hand', 273, 56, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(30, 'cd', 'Luigi Cruickshank PhD', 'Mertie Runolfsson Jr.', 424, 94, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(31, 'cd', 'Susie Schroeder', 'Dr. Alfreda Schmeler', 421, 57, '2022-08-02 04:30:39', '2022-08-02 04:30:39', 'admin'),
(32, 'book', 'DBMS', 'database book', 1200, 100, '2022-08-02 04:54:32', '2022-08-02 04:54:32', 'admin'),
(34, 'book', 'arbind', 'kkk', 1000, 90, '2022-08-02 04:56:03', '2022-08-02 04:56:03', 'admin'),
(35, 'book', 'arbind', 'kkk', 1000, 90, '2022-08-02 04:56:36', '2022-08-02 04:56:36', 'admin'),
(36, 'book', 'sfs', 'fds', 100, 90, '2022-08-02 04:56:52', '2022-08-02 04:56:52', 'admin'),
(37, 'book', 'dsada', 'dss', 120, 90, '2022-08-02 04:58:32', '2022-08-02 04:58:32', 'admin'),
(40, 'cd', 'ssf', 'dff', 9, 9, '2022-08-02 05:04:19', '2022-08-02 05:04:19', 'admin'),
(41, 'book', 'fhsd', 'hhh', 90, 89, '2022-08-02 05:58:38', '2022-08-02 05:58:38', 'admin');

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
(4, '2020_12_27_184526_create_books_table', 1),
(5, '2020_12_28_113618_add_column_book', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'robin sah', 'Abinashkushwaha20@gmail.com', NULL, '$2y$10$czxBlPtJvuM0.M0PMRquh.JMjK1cNUQZik4HZfj.bBWZAqhnqhRG.', 0, NULL, '2022-01-13 12:50:18', '2022-01-13 12:50:18'),
(3, 'arbind', 'arbindra1sah@gmail.com', NULL, '$2y$10$vU/ooPSc51vXxCzS21XNne7hUE0Mo/mAeXoY7K7JFo1z2PBOIo6D6', 0, NULL, '2022-07-29 06:47:33', '2022-07-29 06:47:33'),
(4, 'admin', 'admin@admin.com', NULL, '$2y$10$WNDdxlL7WqZxfLZCou4cw.2D6o0R7Tct0YuyDy1gXpC.XGxkHX4q6', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
