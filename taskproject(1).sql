-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 03:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(1, 'raunaq455@gmail.com', NULL, '12345678', '2023-04-25 00:46:52', '2023-04-25 00:46:52'),
(2, 'raunaq455@gmail.com', NULL, '12345678', '2023-04-25 00:49:50', '2023-04-25 00:49:50'),
(3, 'raunaq455@gmail.com', NULL, '12345678', '2023-04-25 03:05:22', '2023-04-25 03:05:22'),
(4, 'raunaq455@gmail.com', NULL, '12345678', '2023-04-25 05:36:06', '2023-04-25 05:36:06'),
(5, 'raunaq455@gmail.com', NULL, '12345678', '2023-04-25 05:55:48', '2023-04-25 05:55:48'),
(6, 'raunaq455@gmail.com', NULL, '12345678', '2023-10-17 13:13:12', '2023-10-17 13:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_24_231428_create_tasks_table', 2),
(7, '2023_04_25_052816_create_logins_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `taskname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `taskname`, `created_at`, `updated_at`) VALUES
(1, NULL, 'make login pages', '2023-04-24 17:56:44', '2023-10-17 13:28:36'),
(2, NULL, 'Pearl O\'Reilly', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(3, NULL, 'project', '2023-04-24 18:09:06', '2023-04-25 04:08:04'),
(4, NULL, 'Edythe Rempel', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(5, NULL, 'Mayra Sauer', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(6, NULL, 'Kirstin Quigley', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(7, NULL, 'Hallie Bartoletti', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(8, NULL, 'Elmore Stark PhD', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(9, NULL, 'Hermina Kshlerin', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(11, NULL, 'Adolphus Volkman', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(12, NULL, 'Juana Nolan DVM', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(13, NULL, 'Cassidy Daugherty Jr.', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(14, NULL, 'Deshaun Schmidt', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(15, NULL, 'Gilberto Rau', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(16, NULL, 'Prof. Amir Ledner', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(17, NULL, 'Malcolm Cormier', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(18, NULL, 'Lulu Wyman Sr.', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(19, NULL, 'Audra Frami', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(20, NULL, 'Elwin Stanton PhD', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(21, NULL, 'Rachel Jacobson DVM', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(22, NULL, 'Mikel Schmidt', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(23, NULL, 'Bessie Rempel', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(24, NULL, 'Jolie Schroeder', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(25, NULL, 'Mr. Demetrius Klein DDS', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(26, NULL, 'Dr. Elisha Willms V', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(27, NULL, 'Cloyd Cartwright', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(28, NULL, 'Donato Hamill', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(29, NULL, 'Hertha Skiles', '2023-04-24 18:09:06', '2023-04-24 18:09:06'),
(30, NULL, 'Krystel Stark II', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(31, NULL, 'Miss Shyanne O\'Reilly', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(32, NULL, 'Maudie Haley', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(33, NULL, 'Charles Jast', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(34, NULL, 'Nicolas Hackett', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(35, NULL, 'Hollie Ziemann', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(36, NULL, 'Theo Reichel', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(37, NULL, 'Prof. Erling Quigley PhD', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(38, NULL, 'Adriel Klein', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(39, NULL, 'Gianni Berge', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(40, NULL, 'Frederic Walter', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(41, NULL, 'Irving Durgan', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(42, NULL, 'Sammy Volkman IV', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(43, NULL, 'Loyce Vandervort', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(44, NULL, 'Caden Fay', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(45, NULL, 'Amy Rolfson', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(46, NULL, 'Rocio Bernier', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(47, NULL, 'Patience Kuhic Jr.', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(48, NULL, 'Rogers Shields III', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(49, NULL, 'Cortez Runolfsson', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(50, NULL, 'Prof. Myles Gusikowski MD', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(51, NULL, 'Santina Bashirian V', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(52, NULL, 'Felicity Grady', '2023-04-24 18:09:07', '2023-04-24 18:09:07'),
(53, NULL, 'Dr. Gerson Smith Sr.', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(54, NULL, 'Alisa Streich MD', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(55, NULL, 'John Johnson', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(56, NULL, 'Bria Torphy Jr.', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(57, NULL, 'Rico Johns', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(58, NULL, 'Dewitt Lesch', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(59, NULL, 'Miles Nikolaus Sr.', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(60, NULL, 'Eliane Lebsack', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(61, NULL, 'Marta Thiel IV', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(62, NULL, 'Micaela Tremblay', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(63, NULL, 'Ms. Letitia Cronin DDS', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(64, NULL, 'Fanny Towne', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(65, NULL, 'Stacey Halvorson', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(66, NULL, 'Mr. Bernie Jaskolski', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(67, NULL, 'Prof. Kenya Mraz', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(68, NULL, 'Mr. Thaddeus Davis III', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(69, NULL, 'Prof. Solon Mueller Jr.', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(70, NULL, 'Enoch Mills IV', '2023-04-24 18:10:03', '2023-04-24 18:10:03'),
(75, NULL, 'Brandyn Schulist DDS', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(76, NULL, 'Prof. Aileen Kulas', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(77, NULL, 'Mr. Blaze Ratke', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(78, NULL, 'Bridie Dooley', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(79, NULL, 'Kareem Monahan', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(81, NULL, 'Miss Chyna Reichel', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(83, NULL, 'Emilie Satterfield', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(86, NULL, 'Monique Johnson', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(87, NULL, 'Benton Bernier Jr.', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(88, NULL, 'Elinor Larkin V', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(89, NULL, 'Katarina Kshlerin I', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(90, NULL, 'Anika Gerhold', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(91, NULL, 'Myah Hegmann', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(92, NULL, 'Buck Gulgowski II', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(93, NULL, 'Dr. Providenci Jenkins', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(94, NULL, 'Gennaro Conn', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(95, NULL, 'Kraig Trantow', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(96, NULL, 'Dr. Elmer Simonis PhD', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(97, NULL, 'Norma Gorczany', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(98, NULL, 'Prof. Lennie Grady II', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(99, NULL, 'Jaime Towne', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(100, NULL, 'Brayan Davis', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(101, NULL, 'Stefan Bailey Jr.', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(102, NULL, 'Prof. Clemens Wolf', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(103, NULL, 'Prof. Jevon Pacocha DDS', '2023-04-24 18:10:04', '2023-04-24 18:10:04'),
(104, NULL, 'Design form', '2023-04-24 20:15:31', '2023-04-24 20:15:31'),
(105, NULL, 'design Dashboard', '2023-04-24 20:16:40', '2023-04-24 20:16:40'),
(107, NULL, 'Pearl O\'Reilly', '2023-04-25 04:02:04', '2023-04-25 04:02:04'),
(108, NULL, 'Make a school project', '2023-04-25 04:02:45', '2023-04-25 04:02:45'),
(109, NULL, 'make admin panel', '2023-04-25 04:05:20', '2023-04-25 04:05:20'),
(110, NULL, 'make admin page', '2023-04-25 04:06:05', '2023-04-25 04:06:05'),
(111, NULL, 'make all list of Newly register users', '2023-10-17 13:14:08', '2023-10-17 13:14:08'),
(112, NULL, 'Create a website', '2023-10-17 13:28:09', '2023-10-17 13:28:09'),
(113, 11, 'Use API', '2023-10-17 15:36:48', '2023-10-17 16:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@123gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', '9876543218', NULL, '2023-04-24 17:42:22', '2023-04-24 17:42:22'),
(2, 'user2', 'users@23gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', '9876543218', NULL, '2023-04-24 21:11:17', '2023-04-24 21:11:17'),
(3, 'raunaq', 'raunaq6232@gmail.com', NULL, '5e8667a439c68f5145dd2fcbecf02209', '9853257788', NULL, '2023-04-24 21:13:15', '2023-04-24 21:13:15'),
(4, 'xyz', 'xyz@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', '9853257788', NULL, '2023-04-25 00:14:55', '2023-04-25 00:14:55'),
(5, 'user6', 'user6@gmail.com', NULL, '25d55ad283aa400af464c76d713c07ad', '9876543218', NULL, '2023-04-25 00:18:22', '2023-04-25 00:18:22'),
(7, 'User', 'this@this.com', NULL, '25d55ad283aa400af464c76d713c07ad', '9853257788', NULL, '2023-04-25 00:28:11', '2023-04-25 00:28:11'),
(9, 'Ronak', 'raunaq455@gmail.com', NULL, '12345678', '1234567896', NULL, '2023-04-25 00:43:20', '2023-04-25 00:43:20'),
(10, 'ronak', 'admin@gmail.com', NULL, '12345678', '6767677688', NULL, '2023-10-17 14:05:00', '2023-10-17 14:05:00'),
(11, 'Ronak Fiza', 'hello@royindfuture.com', NULL, '$2y$10$XcCm7o69pF1oalCHBcrImO9gJg1qkQ61SbZBupS1aQJpMy.dpkJ3u', '5675356788', NULL, '2023-10-17 14:10:34', '2023-10-17 14:10:34');

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
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
