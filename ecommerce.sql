-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 05:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'mubin3242@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', '01799238826', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Asus', 'Asus is the best laptop in the world', 1, '2022-11-15 10:24:10', '2022-11-15 10:24:10'),
(2, 'Canon', 'Canon is the best laptop', 1, '2022-11-15 10:24:40', '2022-11-15 10:24:40'),
(3, 'Bata', 'Bata is the best laptom', 1, '2022-11-15 10:25:12', '2022-11-15 10:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Accessories Collection', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Accessories Collection</span></font>', 'category/x0BbCtE90bR64VOwOXiuYJVGN15X8UhEzhLpfcrJ.png', 1, '2022-11-15 04:43:55', '2022-11-15 04:43:55'),
(3, 'Cameras Collection', '<font face=\"Arial\" size=\"5\">camera collection</font>', 'category/F23Xp6brX0mvMUOJOOlIM0QLVhBRoTQngFm8FcJx.png', 1, '2022-11-15 10:18:24', '2022-11-15 10:18:24'),
(5, 'Laptop Collection', 'Asus Laptop&nbsp;', 'category/UUzuWssr0d4FRiwKwx0z5rCHwbRcMJqDOGJoEFAG.png', 1, '2022-12-23 23:15:05', '2022-12-23 23:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, '[\"Green\"]', 1, '2022-11-15 10:28:03', '2022-11-15 10:28:03'),
(2, '[\"Red\"]', 1, '2022-11-15 10:28:13', '2022-11-15 10:28:13'),
(3, '[\"Yellow\"]', 1, '2022-11-15 10:28:28', '2022-11-15 10:28:28'),
(4, '[\"Blue\"]', 1, '2022-12-15 10:27:43', '2022-12-15 10:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile`, `created_at`, `updated_at`) VALUES
(7, 'Mubin', 'mubin3242@gmail.com', '123456', '01799238826', NULL, NULL),
(8, 'Mubin', 'mubin3242@gmail.com', '1234', '01799238826', NULL, NULL),
(9, 'Mubin', 'mubin3242@gmail.com', '1234', '01799238826', NULL, NULL),
(10, 'Mubin', 'mubin3242@gmail.com', '12345678', '01799238826', NULL, NULL),
(11, 'Mubin', 'mubin3242@gmail.com', '123456', '01799238826', NULL, NULL),
(12, 'Mubin', 'mubin3242@gmail.com', '12345678', '01799238826', NULL, NULL),
(13, 'Mubin', 'mubin3242@gmail.com', '12345678', '01799238826', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_08_03_150959_create_admins_table', 1),
(6, '2022_08_06_143426_create_categories_table', 1),
(7, '2022_08_30_140657_create_sub_categories_table', 1),
(8, '2022_09_06_141605_create_brands_table', 1),
(9, '2022_09_08_145946_create_units_table', 1),
(10, '2022_09_13_135845_create_sizes_table', 1),
(11, '2022_09_23_100758_create_colors_table', 1),
(12, '2022_09_25_155230_create_products_table', 1),
(13, '2023_01_10_034529_create_customers_table', 2),
(14, '2023_01_11_135514_create_shippings_table', 3),
(15, '2023_01_12_071024_create_payments_table', 4),
(16, '2023_01_12_072829_create_orders_table', 5),
(17, '2023_01_12_072948_create_order_details_table', 5),
(18, '2023_01_13_152329_order_details', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '63c1793b0f4cd', 'BDT'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '63c1797a01e99', 'BDT'),
(3, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '63c17a6f86c62', 'BDT'),
(4, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '63c17b03ef885', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `subcat_id`, `br_id`, `unit_id`, `size_id`, `color_id`, `code`, `name`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 2, 2, 0, 0, '414', 'product name goes here', 'this is a short description&nbsp;', 1144.00, 'boy16651199600.png', 1, '2022-12-15 10:30:57', '2022-12-23 11:09:31'),
(4, 2, 2, 2, 2, 2, 3, '414', 'demo 1', 'hjh khjg&nbsp; bkhgkg', 45000.00, 'product0616718530850.png', 1, '2022-12-23 21:38:05', '2022-12-23 21:38:05'),
(5, 5, 2, 1, 2, 2, 1, '360032', 'Asus k403', 'Best Laptop in the world', 45000.00, 'product0516730699380.png|product0616730699381.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, '[\"M\"]', 1, '2022-11-15 10:27:19', '2022-11-15 10:27:19'),
(2, '[\"X\"]', 1, '2022-11-15 10:27:33', '2022-11-15 10:27:33'),
(3, '[\"S\"]', 1, '2022-11-15 10:27:42', '2022-11-15 10:27:42'),
(4, '[\"M\"]', 1, '2022-12-15 10:27:08', '2022-12-15 10:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 'Baby camera', 'Baby Camera', 1, '2022-11-15 10:22:17', '2022-11-15 10:22:17'),
(3, 2, 'Baby Accessories', 'This is a accessories', 1, '2022-11-15 10:23:07', '2022-11-15 10:23:07'),
(4, 5, 'Baby Laptop', 'Best Laptop', 1, '2023-01-07 00:39:32', '2023-01-07 00:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Unit One', 'This is Unit one', 1, '2022-11-15 10:26:11', '2022-11-15 10:26:11'),
(2, 'Unit Tow', 'This is Unit Tow&nbsp;', 1, '2022-11-15 10:26:33', '2022-11-15 10:26:33'),
(3, 'Three', 'This is Three&nbsp;', 1, '2022-11-15 10:27:01', '2022-11-15 10:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'mubin3242@gmail.com', '0000-00-00 00:00:00', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
