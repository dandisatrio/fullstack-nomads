-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 01:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_nomads`
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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/xjsr06ACJOjRsH415b6GW7rctrJbhhmLclZ2HVhB.jpg', NULL, '2022-01-15 05:33:04', '2022-01-15 05:33:04'),
(2, 1, 'assets/gallery/pNOa6ZJqhI8AVDfeMpzmx0N6edtfwJa1NcrHBJ98.jpg', NULL, '2022-01-15 05:33:17', '2022-01-15 05:33:17'),
(3, 1, 'assets/gallery/Z8ZeNjqqnELWv86f2pdOvLEnL6HwC0a45PkauAmD.jpg', NULL, '2022-01-15 05:33:55', '2022-01-15 05:33:55'),
(4, 1, 'assets/gallery/hxxQwPbmXsLvlWCnOlwejl0vDoeooB1myMkEiKcR.jpg', NULL, '2022-01-15 05:34:36', '2022-01-15 05:34:36'),
(5, 2, 'assets/gallery/zJVsnaghMwW1D6bldxkUEJdD0qnv5xZAJhEj37xx.jpg', NULL, '2022-01-15 05:36:09', '2022-01-15 05:36:09'),
(6, 2, 'assets/gallery/STzdVnewPVU1H94cl5k4j9VYOOBzeULpQ4ffIdDH.jpg', NULL, '2022-01-15 05:36:20', '2022-01-15 05:36:20'),
(7, 2, 'assets/gallery/Q8jJKwbpKoIrEGdu7xdrElu42pOIMGSrdJQnzhBc.jpg', NULL, '2022-01-15 05:36:33', '2022-01-15 05:36:33'),
(8, 2, 'assets/gallery/m5xLwd8PtoGNY3wWLkV4smMtJbe3WWwqUsGoJM2E.jpg', NULL, '2022-01-15 05:36:44', '2022-01-15 05:36:44'),
(9, 3, 'assets/gallery/KP0QoGRrTN0dVcN9jzRPYuLbCtU37M8WicHa8KdK.jpg', NULL, '2022-01-15 05:38:34', '2022-01-15 05:38:34'),
(10, 3, 'assets/gallery/eHdORWcs1mxlH02nCM434E8H7WhUqt46g5QrJQfB.jpg', NULL, '2022-01-15 05:39:16', '2022-01-15 05:39:16'),
(11, 3, 'assets/gallery/f5VwcoEp5NJ1UFDViG5fjrs9nx1tgGUS5l0zxSUb.jpg', NULL, '2022-01-15 05:39:28', '2022-01-15 05:39:28'),
(12, 3, 'assets/gallery/t4OrmLCyuvgmts570koIjWkX9MV50hlT3w6pIBSg.jpg', NULL, '2022-01-15 05:39:41', '2022-01-15 05:39:41'),
(13, 4, 'assets/gallery/rKRB4gE7npSnP5nSWJ3sB47nuRjK5a7Y9z2REUek.jpg', NULL, '2022-01-15 05:41:12', '2022-01-15 05:41:12'),
(14, 4, 'assets/gallery/ruUQbeCIAIYlpItYXPrWbI7qYlFdGPxOg3Gg5FZM.jpg', NULL, '2022-01-15 05:41:24', '2022-01-15 05:41:24'),
(15, 4, 'assets/gallery/LRf6eBbYVsLpzyE9hdjNkEaxFg5F13fv4W49nETu.jpg', NULL, '2022-01-15 05:41:37', '2022-01-15 05:41:37'),
(16, 4, 'assets/gallery/Rfq1W0UsBxlJeII86mEhDa7rByPTInr7w1OqSrdp.jpg', NULL, '2022-01-15 05:41:49', '2022-01-15 05:41:49');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_13_103458_create_travel_packages_table', 1),
(6, '2022_01_13_104319_create_galleries_table', 1),
(7, '2022_01_13_105022_create_transactions_table', 1),
(8, '2022_01_13_110840_create_transaction_details_table', 1),
(9, '2022_01_13_122946_add_roles_field_to_users_table', 1),
(10, '2022_01_13_132309_add_username_field_to_users_table', 1);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0, 40000000, 'PENDING', NULL, '2022-01-15 05:52:14', '2022-01-15 05:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'bambang', 'ID', 0, '2027-01-15', NULL, '2022-01-15 05:52:14', '2022-01-15 05:52:14'),
(2, 1, 'shayna', 'ID', 0, '2022-01-31', NULL, '2022-01-15 05:53:11', '2022-01-15 05:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tour Bali', 'tour-bali', 'Bali, Indonesia', 'Explore and enjoy the beauty of nature, regional food, and local culture.', 'Tour', 'Indonesia, English', 'Local Food', '2022-02-01', '4D 5N', 'Open Trip', 20000000, NULL, '2022-01-15 05:32:27', '2022-01-15 05:32:27'),
(2, 'Tour Nusa Tenggara', 'tour-nusa-tenggara', 'Nusa Tenggara, Indonesia', 'Explore and enjoy the beauty of nature, regional food, and local culture.', 'Tour', 'Indonesia, English', 'Local Food', '2022-03-02', '3D 2N', 'Open Trip', 12000000, NULL, '2022-01-15 05:35:50', '2022-01-15 05:35:50'),
(3, 'Tour Yogyakarta', 'tour-yogyakarta', 'Yogyakarta, Indonesia', 'Explore and enjoy the beauty of nature, regional food, and local culture.', 'Tour', 'Indonesia, English', 'Local Food', '2022-04-03', '4D 5N', 'Open Trip', 16000000, NULL, '2022-01-15 05:38:17', '2022-01-15 05:38:17'),
(4, 'Tour Jakarta', 'tour-jakarta', 'Jakarta, Indonesia', 'Explore and enjoy the beauty of nature, regional food, and local culture.', 'Tour', 'Indonesia, English', 'Local Food', '2022-05-08', '3D 2N', 'Open Trip', 12000000, NULL, '2022-01-15 05:40:55', '2022-01-15 05:40:55');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Admin', 'admin@mail.com', '2022-01-15 04:13:54', '$2y$10$acvUyv2NW1/3Wvce7AuGzuFp/R.WDIcOa0aoL1rC2z8livLYrwIQa', NULL, '2022-01-15 04:13:54', '2022-01-15 04:13:54', 'ADMIN', 'admin'),
(2, 'User', 'user@mail.com', '2022-01-15 04:13:54', '$2y$10$SxXS9E.jt2BIcFOiQ40xKey8srHDjHkfgNl8fpsdX6PVZA3eCAG9q', NULL, '2022-01-15 04:13:54', '2022-01-15 04:13:54', 'USER', 'user'),
(3, 'Bambang', 'bambang@mail.com', '2022-01-15 05:47:23', '$2y$10$bJEPSRowc5N0iFEkrGKL5OfIkWuzcKptIHf.9ZBfmVEV4RG93IU3W', NULL, '2022-01-15 05:46:42', '2022-01-15 05:47:23', 'USER', 'bambang'),
(4, 'Shayna', 'shayna@mail.com', '2022-01-15 05:48:24', '$2y$10$jr7nDxmYCd9fpHr5l6.3TelBWoXUFScA3qZYbbuCF9O7lpwowfsVW', NULL, '2022-01-15 05:48:11', '2022-01-15 05:48:24', 'USER', 'shayna');

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
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
