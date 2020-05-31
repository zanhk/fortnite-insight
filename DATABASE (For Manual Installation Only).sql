-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 07:10 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_restaurants200`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE IF NOT EXISTS `app_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_settings_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `app_settings`
--

TRUNCATE TABLE `app_settings`;
--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'Food Delivery'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.hostinger.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'fooddelivery@smartersvision.com'),
(24, 'mail_password', 'NnvAwk&&E7'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'fooddelivery@smartersvision.com'),
(27, 'mail_from_name', 'Smarter Vision'),
(30, 'timezone', 'America/Montserrat'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '020a2dd4-4277-425a-b450-426663f52633'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(108, 'fixed_header', '0'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#ea5c44'),
(117, 'main_dark_color', '#ea5c44'),
(118, 'second_color', '#344968'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyAT07iMlfZ9bJt1gmGj9KhJDLFY8srI6dA'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '2.0.0'),
(127, 'enable_version', '1');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_food_id_foreign` (`food_id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `carts`
--

TRUNCATE TABLE `carts`;
-- --------------------------------------------------------

--
-- Table structure for table `cart_extras`
--

DROP TABLE IF EXISTS `cart_extras`;
CREATE TABLE IF NOT EXISTS `cart_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`extra_id`,`cart_id`),
  KEY `cart_extras_cart_id_foreign` (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `cart_extras`
--

TRUNCATE TABLE `cart_extras`;
-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `categories`
--

TRUNCATE TABLE `categories`;
--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sandwiches', 'Molestiae eos sit sunt ut deserunt et corporis ullam. Molestiae aperiam tempora voluptate distinctio omnis. Qui eos aspernatur asperiores nostrum ut assumenda. Tempora voluptas quia eveniet eveniet error non earum numquam. Laborum nostrum doloribus quae libero beatae.', '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(2, 'Sandwiches', 'Quisquam corporis molestiae voluptas eos porro aut id molestiae. Qui provident molestiae hic laborum dicta. Qui minima sint occaecati nemo perferendis. Possimus ut fugiat rerum ex neque. Tempore ut placeat at et et repellat aut.', '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(3, 'Grains', 'Aut quas deserunt labore ut dolorum non sed. Occaecati quia consequatur beatae et dignissimos. Culpa dolorem qui eos autem iste accusantium odio. Labore cupiditate sit distinctio rem eum ex. Quae veniam magnam consequuntur nulla est temporibus optio.', '2020-05-15 16:09:58', '2020-05-15 16:09:58'),
(4, 'Vegetables', 'Nemo occaecati qui culpa similique tempora. Et atque adipisci et veniam autem non sapiente. Culpa quae aut praesentium repellat repudiandae. Quo consequatur similique voluptate quidem. Neque ut autem omnis rerum sed omnis laudantium.', '2020-05-15 16:09:58', '2020-05-15 16:09:58'),
(5, 'Protein', 'Non quisquam rerum qui velit qui voluptates. Veniam recusandae voluptatem facilis quidem consectetur. Repellat eum aliquam aut eum veniam. Delectus et vel optio. Quia eum magni ducimus occaecati tenetur voluptatibus dicta.', '2020-05-15 16:09:58', '2020-05-15 16:09:58'),
(6, 'Protein', 'Harum et tenetur dolores labore harum culpa architecto quaerat. Quaerat et saepe deleniti et est voluptas adipisci. Repellendus sed et ut vero ad dolor. Sed totam dolores delectus illum vel et assumenda. Itaque consequatur eveniet aut dignissimos voluptatum aperiam.', '2020-05-15 16:09:58', '2020-05-15 16:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

DROP TABLE IF EXISTS `cuisines`;
CREATE TABLE IF NOT EXISTS `cuisines` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `cuisines`
--

TRUNCATE TABLE `cuisines`;
--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 14:03:21', '2020-04-11 14:03:21'),
(2, 'Indian', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 14:03:21', '2020-04-11 14:03:21'),
(3, 'Thai', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 14:03:21', '2020-04-11 14:03:21'),
(4, 'Greek', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 14:03:21', '2020-04-11 14:03:21'),
(5, 'Vietnamese', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 14:03:21', '2020-04-11 14:03:21'),
(6, 'French', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 14:03:21', '2020-04-11 14:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `currencies`
--

TRUNCATE TABLE `currencies`;
--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 14:50:48', '2019-10-22 14:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 14:51:39', '2019-10-22 14:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2019-10-22 14:52:50', '2019-10-22 14:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2019-10-22 14:53:22', '2019-10-22 14:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 14:54:00', '2019-10-22 14:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2019-10-22 14:55:51', '2019-10-22 14:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2019-10-22 14:56:26', '2019-10-22 14:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `custom_fields`
--

TRUNCATE TABLE `custom_fields`;
--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 20:30:00', '2019-09-06 20:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 20:43:58', '2019-09-06 20:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 20:49:22', '2019-09-06 20:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
CREATE TABLE IF NOT EXISTS `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `custom_field_values`
--

TRUNCATE TABLE `custom_field_values`;
--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-06 20:52:30', '2019-09-06 20:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-06 20:52:30', '2019-10-16 18:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-06 20:52:30', '2019-10-16 18:32:35'),
(32, '+136 226 5660', '+136 226 5660', 4, 'App\\Models\\User', 1, '2019-09-06 20:53:58', '2019-09-27 07:12:04'),
(33, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 1, '2019-09-06 20:53:58', '2019-10-16 18:23:53'),
(34, '569 Braxton Street Cortland, IL 60112', '569 Braxton Street Cortland, IL 60112', 6, 'App\\Models\\User', 1, '2019-09-06 20:53:58', '2019-10-16 18:23:53'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 16:21:32', '2019-10-17 22:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 16:21:32', '2019-10-17 22:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 16:21:32', '2019-10-17 22:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-16 18:31:46', '2019-10-16 18:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 18:31:46', '2019-10-16 18:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-16 18:31:46', '2019-10-16 18:31:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-15 17:49:44', '2019-12-15 17:49:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-15 17:49:44', '2019-12-15 17:49:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-15 17:49:44', '2019-12-15 17:49:44'),
(44, '+136 955 6525', '+136 955 6525', 4, 'App\\Models\\User', 6, '2020-03-29 16:28:04', '2020-03-29 16:28:04'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 16:28:05', '2020-03-29 16:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 16:28:05', '2020-03-29 16:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

DROP TABLE IF EXISTS `delivery_addresses`;
CREATE TABLE IF NOT EXISTS `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_addresses_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `delivery_addresses`
--

TRUNCATE TABLE `delivery_addresses`;
--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptas alias sit nihil mollitia rerum tempore eaque.', '19822 Mosciski Squares\nEast Larissa, KS 33043-0547', '53.066125', '7.340644', 1, 6, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(2, 'Saepe sit et voluptates quam quia quaerat.', '276 Stanford Streets\nPort Kenya, CO 89913', '49.064383', '10.695258', 1, 6, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(3, 'Porro dolore quia optio mollitia quaerat temporibus quos quidem.', '739 Feil Ford Suite 581\nNorth Antone, MI 90725', '39.255775', '8.243105', 1, 3, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(4, 'Odit architecto voluptatem soluta dolore et ducimus.', '17216 Dalton Union\nSchowalterburgh, MA 59738-8155', '37.136254', '9.039591', 1, 4, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(5, 'Provident quo dolorem quia et a qui non.', '8108 Kaitlyn Shores Suite 566\nNorth Willie, NE 91811', '54.069786', '9.149955', 0, 3, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(6, 'Assumenda quisquam autem labore magnam.', '55266 Brian Causeway Suite 232\nLake Finnchester, TX 32760-2627', '44.619379', '8.166809', 1, 5, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(7, 'Non est eos earum.', '267 Haven Court\nNew Aleenshire, VT 48513', '37.116926', '11.105352', 0, 2, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(8, 'A qui doloremque culpa unde cum.', '18356 Smitham Loop Suite 007\nNew Devon, TX 78036', '48.638527', '9.667612', 1, 6, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(9, 'Nam adipisci repellat neque sint id deserunt est.', '36737 Sim Motorway Apt. 708\nSchowalterville, DC 39333', '54.951973', '8.169103', 0, 1, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(10, 'Similique mollitia eaque eos voluptatem.', '307 Evalyn Roads Apt. 721\nNew Horacio, VT 67608-0181', '48.353011', '7.435617', 0, 3, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(11, 'Quaerat qui perspiciatis tempore nostrum quisquam nihil soluta.', '6478 Nakia Shore Apt. 729\nPort Trevionmouth, VT 13652-0160', '46.646458', '7.652565', 1, 6, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(12, 'Aut sint qui quia unde omnis quia.', '86425 Maritza Parkways Apt. 768\nEarnestineburgh, MT 47920', '47.241904', '7.382663', 1, 6, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(13, 'Architecto enim eligendi voluptas necessitatibus qui enim.', '2460 Madison Camp Suite 964\nLake Naomiefort, VA 73871', '41.985499', '9.300686', 0, 2, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(14, 'Distinctio eius accusamus magni consequatur iusto similique.', '2659 Mann Points\nShanahanburgh, ND 94424', '48.376272', '10.548955', 1, 2, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(15, 'Magnam corporis accusamus illum recusandae.', '111 Salvatore Villages Apt. 433\nBlairstad, AL 34469-3344', '51.209904', '8.591234', 0, 1, '2020-05-15 16:10:03', '2020-05-15 16:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
CREATE TABLE IF NOT EXISTS `drivers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drivers_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `drivers`
--

TRUNCATE TABLE `drivers`;
-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

DROP TABLE IF EXISTS `drivers_payouts`;
CREATE TABLE IF NOT EXISTS `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `drivers_payouts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `drivers_payouts`
--

TRUNCATE TABLE `drivers_payouts`;
-- --------------------------------------------------------

--
-- Table structure for table `driver_restaurants`
--

DROP TABLE IF EXISTS `driver_restaurants`;
CREATE TABLE IF NOT EXISTS `driver_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`restaurant_id`),
  KEY `driver_restaurants_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `driver_restaurants`
--

TRUNCATE TABLE `driver_restaurants`;
--
-- Dumping data for table `driver_restaurants`
--

INSERT INTO `driver_restaurants` (`user_id`, `restaurant_id`) VALUES
(5, 1),
(5, 2),
(5, 4),
(6, 2),
(6, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
CREATE TABLE IF NOT EXISTS `earnings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `restaurant_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `earnings_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `earnings`
--

TRUNCATE TABLE `earnings`;
-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

DROP TABLE IF EXISTS `extras`;
CREATE TABLE IF NOT EXISTS `extras` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) DEFAULT '0.00',
  `food_id` int(10) UNSIGNED NOT NULL,
  `extra_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `extras_food_id_foreign` (`food_id`),
  KEY `extras_extra_group_id_foreign` (`extra_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `extras`
--

TRUNCATE TABLE `extras`;
--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `name`, `description`, `price`, `food_id`, `extra_group_id`, `created_at`, `updated_at`) VALUES
(1, 'XL', 'Fugiat eaque nihil rerum.', 28.33, 23, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(2, '5L', 'Magnam sed id id beatae.', 48.09, 19, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(3, '5L', 'Aut vero voluptas quis possimus eos.', 35.53, 1, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(4, '2L', 'Nemo eveniet consequatur.', 45.93, 25, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(5, 'Tomato', 'Quo assumenda expedita sed minus.', 47.82, 4, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(6, 'Oil', 'Error enim corrupti facere.', 14.55, 6, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(7, 'Tuna', 'Eos omnis voluptas nobis.', 37.22, 17, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(8, 'Tomato', 'Itaque eum illo.', 44.68, 26, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(9, 'Oil', 'Est praesentium fugiat non nobis.', 20.75, 11, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(10, 'Tomato', 'Quidem aut possimus.', 10.74, 19, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(11, 'Oil', 'Culpa beatae et blanditiis sint vel.', 19.12, 5, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(12, 'XL', 'Dolore aspernatur enim exercitationem.', 25.27, 21, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(13, 'L', 'Dignissimos et ex explicabo id occaecati.', 19.25, 23, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(14, '2L', 'Accusantium atque facilis laboriosam mollitia.', 39.06, 18, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(15, '2L', 'Aliquid ut officiis eaque.', 26.64, 14, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(16, 'L', 'Vel explicabo saepe harum unde.', 34.88, 17, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(17, 'L', 'Occaecati cumque sunt ut.', 22.48, 8, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(18, 'Tomato', 'Ut consequatur labore fugiat ut.', 38.37, 1, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(19, 'Tuna', 'Suscipit non sint.', 49.33, 6, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(20, 'L', 'Non esse fugiat rerum.', 15.69, 26, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(21, '2L', 'Ut quis provident similique similique.', 15.84, 14, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(22, 'Tuna', 'Doloremque mollitia dolorem harum voluptatem saepe.', 34.32, 15, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(23, 'S', 'Commodi itaque consectetur aliquid.', 23.58, 7, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(24, 'Oil', 'Ratione neque id placeat.', 40.19, 21, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(25, 'L', 'Voluptas est dolor praesentium.', 31.85, 15, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(26, '5L', 'Atque impedit voluptatem debitis neque praesentium.', 38.00, 25, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(27, 'Oil', 'Velit quia ad ut officiis nihil.', 27.82, 22, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(28, 'XL', 'Occaecati ullam velit minus.', 43.32, 17, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(29, 'L', 'Autem et repudiandae ea.', 30.66, 17, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(30, 'Oil', 'Voluptates dolor excepturi.', 21.06, 3, 1, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(31, 'Tuna', 'Quibusdam consequatur itaque non ullam debitis.', 14.28, 17, 3, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(32, 'Oil', 'Sit occaecati inventore itaque.', 33.66, 1, 2, '2020-05-15 16:10:07', '2020-05-15 16:10:07'),
(33, 'S', 'Necessitatibus aut temporibus minima.', 44.80, 5, 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(34, '2L', 'Nemo voluptatem sed sed.', 42.01, 10, 3, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(35, 'Oil', 'Perferendis aspernatur aperiam harum.', 16.75, 29, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(36, 'Cheese', 'Minima aut asperiores velit.', 38.68, 28, 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(37, '2L', 'Perspiciatis aliquam ut et.', 10.61, 15, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(38, 'S', 'Esse eaque blanditiis debitis.', 49.54, 28, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(39, 'S', 'Quis officiis ullam harum aut doloribus.', 41.02, 11, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(40, 'XL', 'Non vel est placeat.', 49.41, 7, 3, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(41, 'Cheese', 'Ratione adipisci quo.', 49.62, 28, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(42, 'Cheese', 'Eum cumque ea.', 44.87, 30, 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(43, '5L', 'Sit vel est minus unde sunt.', 15.56, 13, 3, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(44, 'Oil', 'Iusto in ad praesentium.', 26.72, 2, 3, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(45, 'Cheese', 'Et ut ducimus expedita similique.', 14.89, 22, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(46, 'L', 'Repellat illum aspernatur enim qui.', 47.63, 7, 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(47, '5L', 'Tempore qui voluptatem quos in.', 30.53, 4, 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(48, 'L', 'Qui laborum eum aspernatur aut voluptate.', 37.65, 12, 2, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(49, 'XL', 'Totam molestiae consequatur sint qui.', 30.23, 23, 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(50, 'Oil', 'Quo deleniti animi est.', 11.05, 16, 3, '2020-05-15 16:10:08', '2020-05-15 16:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `extra_groups`
--

DROP TABLE IF EXISTS `extra_groups`;
CREATE TABLE IF NOT EXISTS `extra_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `extra_groups`
--

TRUNCATE TABLE `extra_groups`;
--
-- Dumping data for table `extra_groups`
--

INSERT INTO `extra_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(2, 'Taste', '2019-10-09 12:26:28', '2019-10-09 12:26:28'),
(3, 'Capacity', '2019-10-09 12:26:28', '2019-10-09 12:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_faq_category_id_foreign` (`faq_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `faqs`
--

TRUNCATE TABLE `faqs`;
--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolorem ut quo qui et. Suscipit aspernatur nihil perspiciatis. Aut voluptas qui dolores nihil.', 'Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice was rather doubtful whether she ought not to be managed? I suppose it doesn\'t understand English,\' thought Alice.', 3, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(2, 'Eveniet possimus nesciunt sed tempora ut corrupti. Doloribus quibusdam ad modi.', 'T!\' said the others. \'We must burn the house till she too began dreaming after a few minutes she heard a little pattering of feet in a very grave voice, \'until all the same, the next thing was.', 1, '2020-05-15 16:10:08', '2020-05-15 16:10:08'),
(3, 'Praesentium ad aliquam fugit ducimus. Nulla eius nesciunt aspernatur hic.', 'I am in the middle of the jury eagerly wrote down on their slates, when the White Rabbit put on his spectacles. \'Where shall I begin, please your Majesty,\' said Two, in a hoarse, feeble voice: \'I.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(4, 'Totam natus ut a alias vero autem. Ullam eum debitis corrupti quaerat nulla deserunt explicabo.', 'I suppose Dinah\'ll be sending me on messages next!\' And she squeezed herself up closer to Alice\'s side as she was quite tired and out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\'.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(5, 'Maiores consequatur quidem rerum. Hic consequuntur quisquam voluptatem libero.', 'I might venture to go through next walking about at the top of her or of anything to put it in a more subdued tone, and added with a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(6, 'Nobis voluptatem molestiae rerum saepe facere autem error. Et dolorem perspiciatis pariatur nisi.', 'Dormouse sulkily remarked, \'If you can\'t help it,\' she thought, \'and hand round the rosetree; for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(7, 'Et sed non molestiae sapiente eum commodi. Eum est harum est dicta quidem totam dicta.', 'Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to the jury, and the bright flower-beds and the party sat silent for a baby: altogether Alice did not.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(8, 'Quidem et cumque qui ad aliquam a. Enim neque et quibusdam. Sit molestias ipsa quibusdam commodi.', 'Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'you needn\'t be so kind,\' Alice replied, so eagerly that the pebbles were all talking at once, and ran off, thinking while she ran, as well be.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(9, 'Molestiae laborum rerum sit assumenda. Sed iure ipsum sit libero at qui ducimus.', 'The Fish-Footman began by taking the little passage: and THEN--she found herself falling down a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high.', 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(10, 'Sit magnam ipsam minus neque voluptate. Velit hic blanditiis eum ut voluptatem architecto.', 'Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Why, you don\'t explain it as you can--\' \'Swim after them!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice as he spoke. \'UNimportant, of.', 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(11, 'Autem dolores expedita at ut sit expedita doloribus. Enim pariatur veniam quis sequi quasi eos.', 'Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the same thing, you know.\' Alice had never left off writing on his slate with one of the trees upon her arm, with its wings.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(12, 'Qui sit molestias illo est quia pariatur. Sit sed qui amet numquam corrupti ut.', 'Off with his knuckles. It was the Hatter. \'He won\'t stand beating. Now, if you want to be?\' it asked. \'Oh, I\'m not used to come down the chimney, and said nothing. \'When we were little,\' the Mock.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(13, 'Qui similique dignissimos aut ipsa facilis. Rerum dolorum reiciendis minima dolorem sunt.', 'Mock Turtle: \'crumbs would all come wrong, and she had but to her great delight it fitted! Alice opened the door and found quite a crowd of little Alice and all would change (she knew) to the table.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(14, 'Quia assumenda odio nihil maxime facere ratione. Cumque aut sint aut quo unde maxime magnam rerum.', 'Alice coming. \'There\'s PLENTY of room!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a voice outside, and stopped to listen. The Fish-Footman began by.', 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(15, 'Et fuga omnis quod. Nemo aut aperiam et. Natus fuga similique corrupti voluptate nisi autem.', 'And when I sleep\" is the driest thing I know. Silence all round, if you drink much from a bottle marked \'poison,\' so Alice soon came to the King, with an anxious look at a king,\' said Alice. \'Then.', 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(16, 'Nihil quia ut cupiditate nam. Voluptatem laboriosam sint officia.', 'Turtle sighed deeply, and began, in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what Latitude or Longitude I\'ve got to grow to my right size.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(17, 'Aut facere qui enim laboriosam. Et esse tempora maiores. Aperiam atque ipsa quod non rerum.', 'It was high time to be two people! Why, there\'s hardly room for this, and Alice looked up, and there she saw in another moment that it was impossible to say which), and they repeated their arguments.', 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(18, 'Et fugit expedita sint et. Similique quia tempora autem fuga consectetur vero sit.', 'Kings and Queens, and among them Alice recognised the White Rabbit, who said in a tone of this remark, and thought it must be a very interesting dance to watch,\' said Alice, timidly; \'some of the.', 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(19, 'Deserunt soluta quasi autem. Animi qui quae magni.', 'Dinah: I think I may as well as she swam lazily about in the schoolroom, and though this was the same year for such a puzzled expression that she was shrinking rapidly; so she went on just as she.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(20, 'Dolorem unde veritatis fugiat qui ut similique veritatis. Beatae debitis unde libero quia.', 'And she began shrinking directly. As soon as she said to herself, and once she remembered how small she was now more than that, if you hold it too long; and that in some book, but I grow up, I\'ll.', 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(21, 'Atque sint itaque sapiente saepe est dolorem. Provident omnis tempore qui recusandae sit et.', 'Alice ventured to remark. \'Tut, tut, child!\' said the King added in an encouraging opening for a few minutes, and began smoking again. This time there could be no chance of this, so she began.', 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(22, 'Et rem animi velit dolore labore. Ab et exercitationem fugit omnis sunt aliquid velit.', 'I\'ll just see what was on the same tone, exactly as if she could see it written up somewhere.\' Down, down, down. There was certainly not becoming. \'And that\'s the jury, of course--\"I GAVE HER ONE.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(23, 'Et qui iste est omnis. Odio nemo quasi qui est. Facere et assumenda distinctio laudantium velit.', 'Alice did not dare to laugh; and, as the whole thing, and longed to get dry again: they had to run back into the air. This time there were three little sisters--they were learning to draw,\' the.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(24, 'Maxime praesentium accusantium veniam veritatis ducimus. Suscipit sed sequi quibusdam quis.', 'I believe.\' \'Boots and shoes under the table: she opened it, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE.', 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(25, 'Dolorem suscipit sed minima. Amet quam iure et unde eius.', 'I must have got into a large ring, with the tea,\' the March Hare interrupted in a large cat which was the first sentence in her life; it was only the pepper that makes you forget to talk. I can\'t.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(26, 'Et ut sit voluptas veniam debitis illum sunt. Quis aliquam distinctio corporis similique.', 'She was walking by the prisoner to--to somebody.\' \'It must have been that,\' said Alice. \'I\'ve tried every way, and then Alice put down the little thing grunted in reply (it had left off sneezing by.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(27, 'Omnis maxime illo et. Et nemo et odio quia nobis totam quia.', 'Alice. \'Why, you don\'t even know what it was: at first was in March.\' As she said to the other: he came trotting along in a very respectful tone, but frowning and making quite a new kind of serpent.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(28, 'Ratione deserunt quasi modi. Perspiciatis necessitatibus magnam aut autem modi quos nisi.', 'Lizard\'s slate-pencil, and the words don\'t FIT you,\' said the King, and the pattern on their hands and feet at once, she found that her shoulders were nowhere to be sure; but I don\'t want to see the.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(29, 'Fugit quisquam non molestias dolor nesciunt quibusdam. Et non consequatur quisquam repudiandae.', 'These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, as the door began sneezing all at once. The Dormouse shook itself, and began whistling. \'Oh, there\'s.', 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(30, 'Voluptates ipsam dolor id fuga. Praesentium enim suscipit voluptate natus.', 'I only wish people knew that: then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are they doing?\' Alice whispered to the conclusion that it led into the court, she said to.', 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
CREATE TABLE IF NOT EXISTS `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `faq_categories`
--

TRUNCATE TABLE `faq_categories`;
--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foods', '2019-08-31 11:31:52', '2019-08-31 11:31:52'),
(2, 'Services', '2019-08-31 11:32:03', '2019-08-31 11:32:03'),
(3, 'Delivery', '2019-08-31 11:32:11', '2019-08-31 11:32:11'),
(4, 'Misc', '2019-08-31 11:32:17', '2019-08-31 11:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_food_id_foreign` (`food_id`),
  KEY `favorites_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `favorites`
--

TRUNCATE TABLE `favorites`;
--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `food_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 25, 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(2, 1, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(3, 6, 6, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(4, 5, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(5, 5, 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(6, 21, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(7, 30, 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(8, 3, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(9, 28, 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(10, 2, 6, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(11, 24, 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(12, 11, 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(13, 4, 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(14, 25, 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(15, 23, 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(16, 15, 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(17, 23, 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(18, 21, 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(19, 8, 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(20, 4, 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(21, 20, 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(22, 9, 1, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(23, 12, 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(24, 6, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(25, 4, 4, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(26, 6, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(27, 21, 5, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(28, 23, 3, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(29, 19, 6, '2020-05-15 16:10:09', '2020-05-15 16:10:09'),
(30, 6, 2, '2020-05-15 16:10:09', '2020-05-15 16:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_extras`
--

DROP TABLE IF EXISTS `favorite_extras`;
CREATE TABLE IF NOT EXISTS `favorite_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`extra_id`,`favorite_id`),
  KEY `favorite_extras_favorite_id_foreign` (`favorite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `favorite_extras`
--

TRUNCATE TABLE `favorite_extras`;
--
-- Dumping data for table `favorite_extras`
--

INSERT INTO `favorite_extras` (`extra_id`, `favorite_id`) VALUES
(1, 1),
(1, 5),
(2, 6),
(3, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
CREATE TABLE IF NOT EXISTS `foods` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `ingredients` text COLLATE utf8mb4_unicode_ci,
  `package_items_count` double(9,2) DEFAULT '0.00',
  `weight` double(9,2) NOT NULL DEFAULT '0.00',
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foods_restaurant_id_foreign` (`restaurant_id`),
  KEY `foods_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `foods`
--

TRUNCATE TABLE `foods`;
--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `discount_price`, `description`, `ingredients`, `package_items_count`, `weight`, `unit`, `featured`, `deliverable`, `restaurant_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Chicken Noodle Soup', 31.44, 0.00, 'Dolorem nesciunt voluptatem illum vel est est eum. Sit impedit alias qui accusamus doloribus sit eum. Soluta ut minima voluptas omnis.', NULL, 4.00, 7.23, 'g', 1, 1, 7, 6, '2020-05-15 16:09:58', '2020-05-15 16:09:58'),
(2, 'Cedar Planked Salmon', 11.58, 7.17, 'Cum facilis fugit numquam atque voluptate voluptas consequuntur est. Et omnis veniam nesciunt autem officia. Iure et sapiente nisi perferendis. Non molestiae eum vitae vel aliquam expedita nostrum.', NULL, 4.00, 290.74, 'g', 0, 1, 5, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(3, 'Pasta Campanelle', 13.42, 0.00, 'Autem aut qui perspiciatis commodi aut ut. Fuga fuga voluptatum accusamus non. Veniam quos voluptatem vel facere. Aut ullam quibusdam aperiam ipsam ipsa.', NULL, 3.00, 103.83, 'Kg', 1, 1, 2, 3, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(4, 'Cucur Udang Kuah Kacang', 49.93, 0.00, 'Tempore repudiandae quam velit eos aspernatur. Ex ea sed omnis earum unde nihil. Id eveniet sit ea. Dolor numquam voluptates dolor et.', NULL, 3.00, 37.59, 'Kg', 1, 0, 7, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(5, 'California Italian Wedding Soup', 12.56, 0.00, 'Voluptatem similique dolor aut assumenda. Amet earum rem sunt et impedit id. Nostrum sit adipisci distinctio totam aut neque dolorum.', NULL, 6.00, 152.89, 'L', 0, 0, 1, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(6, 'Acini di Pepe', 31.31, 24.20, 'Nisi molestiae amet velit sed sunt. Quas et et occaecati est veniam vitae. Similique quasi molestias neque dicta non nobis.', NULL, 1.00, 390.93, 'L', 0, 0, 5, 4, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(7, 'Pasta Pappardelle', 20.11, 0.00, 'Veritatis est sunt at fugit occaecati necessitatibus repellat tenetur. Cumque non sint nulla. Maxime porro praesentium cum corporis odit molestias ratione. Minima consequatur dolor eum maiores sequi.', NULL, 5.00, 403.03, 'Kg', 1, 0, 2, 4, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(8, 'Italian Sausage Soup', 49.76, 0.00, 'Voluptatem molestiae quia consequatur laboriosam placeat voluptatibus. Perferendis non eum enim voluptatibus sit earum. Corrupti eum eaque qui qui soluta et quidem.', NULL, 4.00, 182.67, 'ml', 1, 0, 8, 3, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(9, 'Pizza al Pesto', 45.68, 41.47, 'Rerum consequatur id harum molestias possimus eum eos. Praesentium distinctio dignissimos accusantium. A laudantium tenetur dicta dolore numquam consequatur. Deserunt asperiores voluptatem vel in.', NULL, 4.00, 143.97, 'L', 1, 0, 7, 5, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(10, 'Italian Sausage Soup', 34.08, 26.95, 'Nihil molestiae quidem cum at. Quas ullam est alias sit hic. Et qui ipsam velit voluptatem molestiae.', NULL, 1.00, 72.08, 'Kg', 1, 0, 10, 5, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(11, 'Pizza al Pesto', 29.99, 0.00, 'Reiciendis vel dolorem voluptatibus ut. Libero aut officia iure ratione odio.', NULL, 1.00, 234.39, 'L', 1, 1, 4, 2, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(12, 'Pasta Pappardelle', 45.87, 0.00, 'Earum amet et et neque iure dolorem similique. Asperiores vel illo qui dicta qui nostrum. Dolores sint aspernatur laudantium eveniet voluptatum quia dolores.', NULL, 6.00, 155.64, 'ml', 1, 0, 6, 2, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(13, 'Angel Hair', 47.83, 44.35, 'Blanditiis iure ex ullam tenetur rem saepe. Non odio non qui omnis molestiae libero. Velit et et est.', NULL, 2.00, 4.46, 'Kg', 1, 0, 1, 1, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(14, 'Angel Hair', 46.10, 0.00, 'Illum velit enim consequuntur veritatis et nostrum qui. Ut doloribus et occaecati enim dolor at. Qui voluptatem aut ad.', NULL, 5.00, 316.42, 'ml', 1, 1, 1, 2, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(15, 'Big Smokey Burgers', 26.40, 23.90, 'Non voluptatibus velit est et porro. Ad aut modi et asperiores vero. Nobis laudantium sit possimus molestias incidunt non.', NULL, 6.00, 16.19, 'Kg', 0, 0, 7, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(16, 'Calas', 33.91, 0.00, 'Cupiditate voluptas ut quidem et. Reiciendis et est itaque.', NULL, 2.00, 387.26, 'g', 0, 0, 10, 5, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(17, 'California Italian Wedding Soup', 13.27, 0.00, 'Suscipit consectetur voluptas voluptatem aliquid sint et. Dicta maiores dolore adipisci soluta. Quo hic magnam illum quod doloribus.', NULL, 6.00, 250.68, 'g', 1, 0, 5, 5, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(18, 'Pizza Margherita', 32.77, 0.00, 'Deleniti nisi quia qui fugit. Ut est occaecati hic maxime. Doloremque dolor et autem nemo vel quam. Ut tempora distinctio neque architecto officiis.', NULL, 2.00, 316.09, 'g', 0, 1, 1, 3, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(19, 'Angel Hair', 43.78, 42.24, 'Minus vitae reprehenderit eligendi consectetur sint repellat delectus. Est quia ratione repellendus omnis molestiae qui. Nulla iusto repellendus tempore rem.', NULL, 1.00, 254.16, 'g', 0, 1, 10, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(20, 'Italian Sausage Soup', 20.17, 15.53, 'Sunt nostrum qui voluptatem qui velit. Perferendis a voluptas est enim. Deleniti ut dolores cumque ducimus.', NULL, 4.00, 494.53, 'g', 1, 0, 1, 5, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(21, 'California Italian Wedding Soup', 46.55, 39.81, 'Eius officiis accusamus id facilis illum perferendis. Illo harum cupiditate voluptatibus illum sed excepturi. Commodi quibusdam architecto ea pariatur maiores consequuntur dolorem.', NULL, 5.00, 232.89, 'Kg', 1, 0, 2, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(22, 'Pasta Campanelle', 32.80, 0.00, 'Voluptas et repudiandae dolorem. Dolore soluta qui optio et debitis cumque voluptate. Soluta voluptatum ea debitis harum eos iure aut est.', NULL, 6.00, 93.27, 'ml', 1, 0, 2, 5, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(23, 'Acini di Pepe', 43.97, 37.65, 'Autem eius laudantium ducimus consectetur. Numquam quia voluptatem mollitia molestias. Asperiores et autem veritatis aspernatur commodi qui veniam.', NULL, 5.00, 167.69, 'Kg', 1, 0, 3, 3, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(24, 'California Italian Wedding Soup', 28.36, 23.10, 'Quasi voluptas qui ut expedita ratione error. Numquam unde eum fugit eum voluptas officia culpa. Sit itaque ut veritatis excepturi iure maiores ea.', NULL, 6.00, 465.33, 'Kg', 0, 0, 7, 2, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(25, 'Cedar Planked Salmon', 31.88, 25.12, 'Perferendis qui molestiae explicabo odio necessitatibus in illo. Ratione et est cupiditate quam corrupti eaque sed. Quia possimus nam inventore ratione facere. Nulla doloremque quam facere qui.', NULL, 2.00, 11.38, 'g', 0, 0, 4, 4, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(26, 'Pasta Pappardelle', 37.91, 0.00, 'Dolor ut et id aut recusandae. Asperiores voluptates mollitia alias nobis. Voluptas tenetur quia labore corrupti sunt. Ut debitis quisquam facere quam qui omnis.', NULL, 2.00, 385.92, 'ml', 1, 0, 10, 4, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(27, 'Soup', 38.74, 0.00, 'Ut ab a aut error sit. Quia rem fugiat enim ea et eius ab quam. Id amet et saepe odio. Natus dolorum debitis laudantium quasi odit quaerat sint.', NULL, 1.00, 65.53, 'Kg', 0, 0, 1, 6, '2020-05-15 16:09:59', '2020-05-15 16:09:59'),
(28, 'Italian Sausage Soup', 31.97, 0.00, 'Nam et nam beatae enim odio quidem. Facere ut et dolorem cumque. Rem placeat voluptatem consequatur quidem eos aut esse. Deleniti velit facilis amet.', NULL, 5.00, 460.45, 'ml', 1, 1, 8, 4, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(29, 'Pizza Valtellina', 13.02, 0.00, 'Id inventore possimus repellendus nesciunt. Non dolorum autem facilis quam nobis omnis. Autem debitis provident enim aut dolor. Blanditiis illum a ut aut.', NULL, 2.00, 106.67, 'L', 1, 0, 6, 2, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(30, 'Cucur Udang Kuah Kacang', 36.86, 29.49, 'Quia mollitia ipsa quibusdam animi eum. Ducimus tempore id voluptatem magni. Non est quod omnis sint et delectus maiores. Voluptas totam autem a voluptatem ut rerum ut.', NULL, 1.00, 349.59, 'Kg', 0, 0, 3, 5, '2020-05-15 16:10:00', '2020-05-15 16:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

DROP TABLE IF EXISTS `food_orders`;
CREATE TABLE IF NOT EXISTS `food_orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `food_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_orders_food_id_foreign` (`food_id`),
  KEY `food_orders_order_id_foreign` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `food_orders`
--

TRUNCATE TABLE `food_orders`;
-- --------------------------------------------------------

--
-- Table structure for table `food_order_extras`
--

DROP TABLE IF EXISTS `food_order_extras`;
CREATE TABLE IF NOT EXISTS `food_order_extras` (
  `food_order_id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`food_order_id`,`extra_id`),
  KEY `food_order_extras_extra_id_foreign` (`extra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `food_order_extras`
--

TRUNCATE TABLE `food_order_extras`;
-- --------------------------------------------------------

--
-- Table structure for table `food_reviews`
--

DROP TABLE IF EXISTS `food_reviews`;
CREATE TABLE IF NOT EXISTS `food_reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `food_reviews_user_id_foreign` (`user_id`),
  KEY `food_reviews_food_id_foreign` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `food_reviews`
--

TRUNCATE TABLE `food_reviews`;
--
-- Dumping data for table `food_reviews`
--

INSERT INTO `food_reviews` (`id`, `review`, `rate`, `user_id`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'Mock Turtle, \'but if they do, why then they\'re a kind of thing never happened, and now here I am in the book,\' said the Caterpillar decidedly, and the soldiers shouted in reply. \'Idiot!\' said the.', 5, 3, 25, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(2, 'There seemed to be lost: away went Alice like the look of it appeared. \'I don\'t see how he can EVEN finish, if he would deny it too: but the wise little Alice and all her life. Indeed, she had not.', 4, 5, 19, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(3, 'Mouse in the last time she heard it before,\' said Alice,) and round goes the clock in a hurried nervous manner, smiling at everything that was lying under the circumstances. There was certainly not.', 3, 4, 15, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(4, 'CHORUS. (In which the words came very queer indeed:-- \'\'Tis the voice of the garden: the roses growing on it were nine o\'clock in the common way. So she set the little door was shut again, and made.', 4, 5, 30, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(5, 'What would become of you? I gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the door; so either way I\'ll get into the wood. \'It\'s the first position in dancing.\'.', 4, 4, 8, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(6, 'Alice; \'I daresay it\'s a set of verses.\' \'Are they in the newspapers, at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we went to work very carefully.', 2, 1, 10, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(7, 'The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a very interesting dance to watch,\' said Alice, surprised at this, but at the Queen, and Alice joined the.', 5, 3, 27, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(8, 'You gave us three or more; They all returned from him to be lost: away went Alice after it, \'Mouse dear! Do come back in their paws. \'And how many miles I\'ve fallen by this time, and was suppressed.', 3, 5, 9, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(9, 'THEN--she found herself at last came a rumbling of little Alice was beginning to see it quite plainly through the glass, and she soon made out the proper way of expecting nothing but the Gryphon.', 1, 6, 8, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(10, 'Duchess\'s voice died away, even in the chimney as she had nibbled some more bread-and-butter--\' \'But what am I to get in?\' she repeated, aloud. \'I must go and take it away!\' There was a child,\' said.', 4, 4, 14, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(11, 'The Mouse did not dare to laugh; and, as the Dormouse go on for some time after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a little bit of the day; and this.', 5, 6, 3, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(12, 'Alice. \'That\'s the first question, you know.\' \'I DON\'T know,\' said the King; and as the whole thing very absurd, but they began solemnly dancing round and round the hall, but they all cheered. Alice.', 3, 4, 4, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(13, 'March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t like it, yer honour, at all, at all!\' \'Do as I tell you, you coward!\' and at last turned sulky, and would only say, \'I am older.', 2, 3, 27, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(14, 'Alice started to her great delight it fitted! Alice opened the door of which was a child,\' said the Caterpillar. Alice folded her hands, and was delighted to find her way through the wood. \'It\'s the.', 1, 2, 3, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(15, 'Duchess; \'and most of \'em do.\' \'I don\'t even know what a Mock Turtle at last, and they sat down, and was coming back to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be.', 1, 1, 28, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(16, 'By the time it all came different!\' Alice replied eagerly, for she had hoped) a fan and gloves, and, as the Lory positively refused to tell me the truth: did you begin?\' The Hatter opened his eyes.', 4, 1, 18, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(17, 'I wish you could only hear whispers now and then hurried on, Alice started to her that she could guess, she was quite a crowd of little birds and beasts, as well say,\' added the Dormouse. \'Don\'t.', 5, 6, 23, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(18, 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Hatter, and, just as I\'d taken the highest tree in front of the edge of her age knew the right size, that it ought to be seen: she found this a.', 3, 3, 1, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(19, 'The Cat\'s head with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Gryphon: and Alice could see her after the.', 3, 4, 20, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(20, 'Hardly knowing what she was exactly three inches high). \'But I\'m NOT a serpent, I tell you!\' said Alice. \'Call it what you mean,\' the March Hare: she thought to herself. \'Of the mushroom,\' said the.', 4, 5, 30, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(21, 'Queen. \'Never!\' said the Hatter: \'I\'m on the top with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice in a minute, trying to put it into his cup of tea, and looked along.', 2, 3, 7, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(22, 'For anything tougher than suet; Yet you finished the first figure!\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice in a loud, indignant voice, but she did not like to.', 5, 4, 26, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(23, 'Mock Turtle Soup is made from,\' said the Lory. Alice replied eagerly, for she thought, and looked very anxiously into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what are YOUR shoes done.', 4, 6, 18, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(24, 'Alice, who felt very curious sensation, which puzzled her very earnestly, \'Now, Dinah, tell me the truth: did you manage to do this, so that it was impossible to say it any longer than that,\' said.', 4, 2, 21, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(25, 'Alice again, in a day did you call it sad?\' And she began fancying the sort of a good thing!\' she said to the Queen. First came ten soldiers carrying clubs; these were ornamented all over with.', 4, 1, 9, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(26, 'The King turned pale, and shut his eyes.--\'Tell her about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that he shook both his shoes off. \'Give.', 3, 4, 6, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(27, 'Alice (she was rather glad there WAS no one listening, this time, as it happens; and if the Queen merely remarking as it can\'t possibly make me grow large again, for this time she had never been so.', 1, 6, 7, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(28, 'Alice looked round, eager to see some meaning in it.\' The jury all brightened up at the thought that it was looking at Alice the moment she quite forgot you didn\'t sign it,\' said Alice sharply, for.', 4, 2, 24, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(29, 'And so she went on for some time without hearing anything more: at last it sat down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers would, in the.', 3, 4, 14, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(30, 'Hardly knowing what she did, she picked her way into that lovely garden. First, however, she waited patiently. \'Once,\' said the Footman. \'That\'s the first figure!\' said the Queen. \'I haven\'t the.', 2, 5, 26, '2020-05-15 16:10:01', '2020-05-15 16:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `galleries`
--

TRUNCATE TABLE `galleries`;
--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Harum aperiam eos esse ut pariatur soluta enim.', 7, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(2, 'Sunt numquam necessitatibus quisquam sed quia.', 2, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(3, 'Ut numquam iusto maxime odit aliquid ut corporis excepturi.', 4, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(4, 'Consequatur aut omnis eos voluptatem.', 1, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(5, 'Laboriosam quos perferendis laborum cum.', 5, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(6, 'Magnam voluptas recusandae magni.', 10, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(7, 'Quod totam voluptatem perspiciatis aut officia.', 9, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(8, 'Quibusdam aut in illo.', 4, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(9, 'Voluptatem vero officiis consequatur sed enim veritatis.', 2, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(10, 'Vel tempore aut corporis delectus aut nam eos.', 4, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(11, 'Officia tempora tenetur deserunt ullam asperiores id.', 4, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(12, 'Magni quo necessitatibus voluptatem architecto.', 5, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(13, 'Maiores est dolor nisi fuga.', 8, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(14, 'Ea rerum repellat nesciunt temporibus.', 9, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(15, 'Distinctio nesciunt voluptatem sequi molestiae perspiciatis voluptas.', 9, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(16, 'Eligendi maxime explicabo ad asperiores et atque eius dolore.', 6, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(17, 'Voluptatem qui non et.', 10, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(18, 'Aut tempore eaque asperiores quo quidem eos.', 9, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(19, 'Aut tempore quis modi assumenda sequi.', 6, '2020-05-15 16:10:00', '2020-05-15 16:10:00'),
(20, 'Culpa quam excepturi ducimus perferendis est.', 8, '2020-05-15 16:10:00', '2020-05-15 16:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `media`
--

TRUNCATE TABLE `media`;
-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_cuisines_table', 1),
(10, '2019_08_29_213821_create_restaurants_table', 1),
(11, '2019_08_29_213825_create_categories_table', 1),
(12, '2019_08_29_213826_create_extra_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_foods_table', 1),
(16, '2019_08_29_213842_create_galleries_table', 1),
(17, '2019_08_29_213847_create_food_reviews_table', 1),
(18, '2019_08_29_213903_create_nutrition_table', 1),
(19, '2019_08_29_213907_create_extras_table', 1),
(20, '2019_08_29_213921_create_payments_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_restaurant_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111103_create_delivery_addresses_table', 1),
(25, '2019_08_31_111104_create_orders_table', 1),
(26, '2019_09_04_153857_create_carts_table', 1),
(27, '2019_09_04_153858_create_favorite_extras_table', 1),
(28, '2019_09_04_153859_create_cart_extras_table', 1),
(29, '2019_09_04_153958_create_food_orders_table', 1),
(30, '2019_09_04_154957_create_food_order_extras_table', 1),
(31, '2019_09_04_163857_create_user_restaurants_table', 1),
(32, '2019_10_22_144652_create_currencies_table', 1),
(33, '2019_12_14_134302_create_driver_restaurants_table', 1),
(34, '2020_03_25_094752_create_drivers_table', 1),
(35, '2020_03_25_094802_create_earnings_table', 1),
(36, '2020_03_25_094809_create_drivers_payouts_table', 1),
(37, '2020_03_25_094817_create_restaurants_payouts_table', 1),
(38, '2020_03_27_094855_create_notifications_table', 1),
(39, '2020_04_11_135804_create_restaurant_cuisines_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `model_has_permissions`
--

TRUNCATE TABLE `model_has_permissions`;
-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `model_has_roles`
--

TRUNCATE TABLE `model_has_roles`;
--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `notifications`
--

TRUNCATE TABLE `notifications`;
-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

DROP TABLE IF EXISTS `nutrition`;
CREATE TABLE IF NOT EXISTS `nutrition` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT '0',
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nutrition_food_id_foreign` (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `nutrition`
--

TRUNCATE TABLE `nutrition`;
--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`id`, `name`, `quantity`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'Calcium', 79, 19, '2020-05-15 16:10:03', '2020-05-15 16:10:03'),
(2, 'Sugar', 73, 26, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(3, 'Proteins', 197, 15, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(4, 'Calcium', 86, 29, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(5, 'Proteins', 109, 17, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(6, 'Lipid', 72, 11, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(7, 'Lipid', 60, 24, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(8, 'Sugar', 89, 13, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(9, 'Lipid', 30, 11, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(10, 'Sugar', 53, 12, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(11, 'Sugar', 57, 22, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(12, 'Sugar', 166, 13, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(13, 'Lipid', 116, 17, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(14, 'Sugar', 79, 14, '2020-05-15 16:10:04', '2020-05-15 16:10:04'),
(15, 'Proteins', 94, 1, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(16, 'Sugar', 74, 7, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(17, 'Lipid', 93, 15, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(18, 'Lipid', 66, 20, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(19, 'Proteins', 69, 22, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(20, 'Calcium', 1, 13, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(21, 'Calcium', 0, 17, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(22, 'Calcium', 170, 26, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(23, 'Sugar', 124, 22, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(24, 'Proteins', 72, 1, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(25, 'Lipid', 162, 20, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(26, 'Calcium', 146, 11, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(27, 'Lipid', 99, 3, '2020-05-15 16:10:05', '2020-05-15 16:10:05'),
(28, 'Lipid', 75, 14, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(29, 'Calcium', 56, 8, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(30, 'Sugar', 98, 19, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(31, 'Proteins', 33, 21, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(32, 'Sugar', 18, 25, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(33, 'Proteins', 114, 20, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(34, 'Lipid', 77, 10, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(35, 'Sugar', 116, 29, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(36, 'Sugar', 139, 8, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(37, 'Lipid', 54, 16, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(38, 'Sugar', 146, 15, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(39, 'Lipid', 111, 24, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(40, 'Proteins', 145, 28, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(41, 'Proteins', 34, 6, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(42, 'Calcium', 86, 24, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(43, 'Sugar', 7, 23, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(44, 'Sugar', 148, 16, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(45, 'Sugar', 88, 21, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(46, 'Lipid', 174, 28, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(47, 'Calcium', 0, 10, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(48, 'Calcium', 112, 9, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(49, 'Proteins', 188, 24, '2020-05-15 16:10:06', '2020-05-15 16:10:06'),
(50, 'Sugar', 137, 18, '2020-05-15 16:10:06', '2020-05-15 16:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_order_status_id_foreign` (`order_status_id`),
  KEY `orders_driver_id_foreign` (`driver_id`),
  KEY `orders_delivery_address_id_foreign` (`delivery_address_id`),
  KEY `orders_payment_id_foreign` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `orders`
--

TRUNCATE TABLE `orders`;
-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
CREATE TABLE IF NOT EXISTS `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `order_statuses`
--

TRUNCATE TABLE `order_statuses`;
--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 15:39:28', '2019-10-15 17:03:14'),
(2, 'Preparing', '2019-10-15 17:03:50', '2019-10-15 17:03:50'),
(3, 'Ready', '2019-10-15 17:04:30', '2019-10-15 17:04:30'),
(4, 'On the Way', '2019-10-15 17:04:13', '2019-10-15 17:04:13'),
(5, 'Delivered', '2019-10-15 17:04:30', '2019-10-15 17:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `payments`
--

TRUNCATE TABLE `payments`;
-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `permissions`
--

TRUNCATE TABLE `permissions`;
--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2020-03-29 13:58:02', '2020-03-29 13:58:02', NULL),
(2, 'dashboard', 'web', '2020-03-29 13:58:02', '2020-03-29 13:58:02', NULL),
(3, 'medias.create', 'web', '2020-03-29 13:58:02', '2020-03-29 13:58:02', NULL),
(4, 'medias.delete', 'web', '2020-03-29 13:58:02', '2020-03-29 13:58:02', NULL),
(5, 'medias', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(6, 'permissions.index', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(7, 'permissions.edit', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(8, 'permissions.update', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(9, 'permissions.destroy', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(10, 'roles.index', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(11, 'roles.edit', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(12, 'roles.update', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(13, 'roles.destroy', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(14, 'customFields.index', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(15, 'customFields.create', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(16, 'customFields.store', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(17, 'customFields.show', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(18, 'customFields.edit', 'web', '2020-03-29 13:58:03', '2020-03-29 13:58:03', NULL),
(19, 'customFields.update', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(20, 'customFields.destroy', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(21, 'users.login-as-user', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(22, 'users.index', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(23, 'users.create', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(24, 'users.store', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(25, 'users.show', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(26, 'users.edit', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(27, 'users.update', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(28, 'users.destroy', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(29, 'app-settings', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(30, 'restaurants.index', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(31, 'restaurants.create', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(32, 'restaurants.store', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(33, 'restaurants.edit', 'web', '2020-03-29 13:58:04', '2020-03-29 13:58:04', NULL),
(34, 'restaurants.update', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(35, 'restaurants.destroy', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(36, 'categories.index', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(37, 'categories.create', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(38, 'categories.store', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(39, 'categories.edit', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(40, 'categories.update', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(41, 'categories.destroy', 'web', '2020-03-29 13:58:05', '2020-03-29 13:58:05', NULL),
(42, 'faqCategories.index', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(43, 'faqCategories.create', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(44, 'faqCategories.store', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(45, 'faqCategories.edit', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(46, 'faqCategories.update', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(47, 'faqCategories.destroy', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(48, 'orderStatuses.index', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(49, 'orderStatuses.show', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(50, 'orderStatuses.edit', 'web', '2020-03-29 13:58:06', '2020-03-29 13:58:06', NULL),
(51, 'orderStatuses.update', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(52, 'foods.index', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(53, 'foods.create', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(54, 'foods.store', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(55, 'foods.edit', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(56, 'foods.update', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(57, 'foods.destroy', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(58, 'galleries.index', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(59, 'galleries.create', 'web', '2020-03-29 13:58:07', '2020-03-29 13:58:07', NULL),
(60, 'galleries.store', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(61, 'galleries.edit', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(62, 'galleries.update', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(63, 'galleries.destroy', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(64, 'foodReviews.index', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(65, 'foodReviews.create', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(66, 'foodReviews.store', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(67, 'foodReviews.edit', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(68, 'foodReviews.update', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(69, 'foodReviews.destroy', 'web', '2020-03-29 13:58:08', '2020-03-29 13:58:08', NULL),
(76, 'extras.index', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(77, 'extras.create', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(78, 'extras.store', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(79, 'extras.show', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(80, 'extras.edit', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(81, 'extras.update', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(82, 'extras.destroy', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(83, 'payments.index', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(84, 'payments.show', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(85, 'payments.update', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(86, 'faqs.index', 'web', '2020-03-29 13:58:10', '2020-03-29 13:58:10', NULL),
(87, 'faqs.create', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(88, 'faqs.store', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(89, 'faqs.edit', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(90, 'faqs.update', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(91, 'faqs.destroy', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(92, 'restaurantReviews.index', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(93, 'restaurantReviews.create', 'web', '2020-03-29 13:58:11', '2020-03-29 13:58:11', NULL),
(94, 'restaurantReviews.store', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(95, 'restaurantReviews.edit', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(96, 'restaurantReviews.update', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(97, 'restaurantReviews.destroy', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(98, 'favorites.index', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(99, 'favorites.create', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(100, 'favorites.store', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(101, 'favorites.edit', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(102, 'favorites.update', 'web', '2020-03-29 13:58:12', '2020-03-29 13:58:12', NULL),
(103, 'favorites.destroy', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(104, 'orders.index', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(105, 'orders.create', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(106, 'orders.store', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(107, 'orders.show', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(108, 'orders.edit', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(109, 'orders.update', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(110, 'orders.destroy', 'web', '2020-03-29 13:58:13', '2020-03-29 13:58:13', NULL),
(111, 'notifications.index', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(112, 'notifications.show', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(113, 'notifications.destroy', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(114, 'carts.index', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(115, 'carts.edit', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(116, 'carts.update', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(117, 'carts.destroy', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(118, 'currencies.index', 'web', '2020-03-29 13:58:14', '2020-03-29 13:58:14', NULL),
(119, 'currencies.create', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(120, 'currencies.store', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(121, 'currencies.edit', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(122, 'currencies.update', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(123, 'currencies.destroy', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(124, 'deliveryAddresses.index', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(125, 'deliveryAddresses.create', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(126, 'deliveryAddresses.store', 'web', '2020-03-29 13:58:15', '2020-03-29 13:58:15', NULL),
(127, 'deliveryAddresses.edit', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(128, 'deliveryAddresses.update', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(129, 'deliveryAddresses.destroy', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(130, 'drivers.index', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(131, 'drivers.create', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(132, 'drivers.store', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(133, 'drivers.show', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(134, 'drivers.edit', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(135, 'drivers.update', 'web', '2020-03-29 13:58:16', '2020-03-29 13:58:16', NULL),
(136, 'drivers.destroy', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(137, 'earnings.index', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(138, 'earnings.create', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(139, 'earnings.store', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(140, 'earnings.show', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(141, 'earnings.edit', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(142, 'earnings.update', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(143, 'earnings.destroy', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(144, 'driversPayouts.index', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(145, 'driversPayouts.create', 'web', '2020-03-29 13:58:17', '2020-03-29 13:58:17', NULL),
(146, 'driversPayouts.store', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(147, 'driversPayouts.show', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(148, 'driversPayouts.edit', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(149, 'driversPayouts.update', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(150, 'driversPayouts.destroy', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(151, 'restaurantsPayouts.index', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(152, 'restaurantsPayouts.create', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(153, 'restaurantsPayouts.store', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(154, 'restaurantsPayouts.show', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(155, 'restaurantsPayouts.edit', 'web', '2020-03-29 13:58:18', '2020-03-29 13:58:18', NULL),
(156, 'restaurantsPayouts.update', 'web', '2020-03-29 13:58:19', '2020-03-29 13:58:19', NULL),
(157, 'restaurantsPayouts.destroy', 'web', '2020-03-29 13:58:19', '2020-03-29 13:58:19', NULL),
(158, 'permissions.create', 'web', '2020-03-29 13:59:15', '2020-03-29 13:59:15', NULL),
(159, 'permissions.store', 'web', '2020-03-29 13:59:15', '2020-03-29 13:59:15', NULL),
(160, 'permissions.show', 'web', '2020-03-29 13:59:15', '2020-03-29 13:59:15', NULL),
(161, 'roles.create', 'web', '2020-03-29 13:59:15', '2020-03-29 13:59:15', NULL),
(162, 'roles.store', 'web', '2020-03-29 13:59:15', '2020-03-29 13:59:15', NULL),
(163, 'roles.show', 'web', '2020-03-29 13:59:16', '2020-03-29 13:59:16', NULL),
(164, 'cuisines.index', 'web', '2020-04-11 14:04:39', '2020-04-11 14:04:39', NULL),
(165, 'cuisines.create', 'web', '2020-04-11 14:04:39', '2020-04-11 14:04:39', NULL),
(166, 'cuisines.store', 'web', '2020-04-11 14:04:39', '2020-04-11 14:04:39', NULL),
(167, 'cuisines.edit', 'web', '2020-04-11 14:04:39', '2020-04-11 14:04:39', NULL),
(168, 'cuisines.update', 'web', '2020-04-11 14:04:39', '2020-04-11 14:04:39', NULL),
(169, 'cuisines.destroy', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(170, 'extraGroups.index', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(171, 'extraGroups.create', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(172, 'extraGroups.store', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(173, 'extraGroups.edit', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(174, 'extraGroups.update', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(175, 'extraGroups.destroy', 'web', '2020-04-11 14:04:40', '2020-04-11 14:04:40', NULL),
(176, 'nutrition.index', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(177, 'nutrition.create', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(178, 'nutrition.store', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(179, 'nutrition.edit', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(180, 'nutrition.update', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL),
(181, 'nutrition.destroy', 'web', '2020-03-29 13:58:09', '2020-03-29 13:58:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) DEFAULT '0',
  `available_for_delivery` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `restaurants`
--

TRUNCATE TABLE `restaurants`;
--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant Treutel-Feeney', 'Dolore dolor necessitatibus totam commodi est ab nam. Fuga incidunt consequatur laboriosam facilis. Dolores adipisci rem aut harum deserunt fugit impedit. Ut aut impedit consequatur.', '8851 Miller Way Suite 143\nEast Stephanland, MI 83061-5620', '40.823119', '9.210107', '832-865-6655', '+15672658307', 'Ut in dolores aut commodi reiciendis reprehenderit delectus. Harum qui delectus et. Voluptas animi ratione magni possimus aliquid blanditiis.', 37.99, 8.19, 97.54, 11.54, 0, 1, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(2, 'Meal O\'Keefe-Connelly', 'Autem quos architecto enim dolorem ullam reprehenderit. Dicta aut laudantium tenetur praesentium et. Rerum illum voluptatem ea laboriosam delectus.', '6595 Lea Ports\nAlexysmouth, KY 39727-3858', '43.194005', '10.444548', '249-360-2757 x286', '(696) 420-9533 x27590', 'Quia aut ullam enim et corrupti vel consequatur. Rerum consectetur dolor quas error. Accusantium sint odio ea at quidem.', 40.28, 8.65, 32.95, 9.90, 1, 1, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(3, 'Restaurant Yundt PLC', 'Et perferendis quasi velit magni. Reiciendis quia repellendus illum nisi incidunt. Amet quae qui facere sint inventore eligendi labore. Molestias iure veniam eos quam et nisi.', '8173 Tremaine Canyon Suite 359\nHaleytown, NM 06776-8532', '43.890122', '11.271255', '(970) 756-2751 x168', '1-867-840-5211 x182', 'Alias ducimus accusantium voluptatem recusandae sit tenetur. Ea et ullam necessitatibus voluptatibus ut. Voluptas suscipit dolor atque accusamus neque.', 38.55, 5.72, 41.72, 27.76, 1, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(4, 'Foody Nitzsche, Ritchie and Bergstrom', 'Sit voluptas vero ut sed ut. Consequuntur cumque quos hic enim est omnis qui. Necessitatibus iste rerum ut similique eaque.', '166 Alivia Garden\nEast Hollisport, KY 17813', '44.5165', '11.031002', '524-371-0350 x2005', '879-304-3190 x14319', 'Magnam deleniti exercitationem architecto nihil. Assumenda ut dicta aliquid illum ex vel. Non soluta maiores ea earum nemo alias.', 17.87, 2.12, 27.12, 28.72, 1, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(5, 'Meal Pacocha LLC', 'Dolor iusto quis necessitatibus cum ratione enim. Aliquam et quae non vel unde porro.', '19484 Schumm Rest Suite 597\nThielbury, OR 95560', '43.438893', '11.055807', '353.227.9828 x858', '(640) 625-5748 x80937', 'Provident nihil libero odit iusto. Numquam id molestiae animi sit minima. Sequi nobis quod accusantium sit qui.', 14.57, 2.24, 99.13, 23.50, 1, 1, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(6, 'Burger Witting-Balistreri', 'Excepturi saepe in facilis et quam et ad. Sunt architecto corporis animi dolores quo rerum. At ut quas maiores at at ratione et cupiditate.', '497 Ella Inlet Apt. 711\nCordiemouth, UT 57203-7532', '45.34817', '10.081239', '760-569-6399 x78333', '1-530-428-6222 x2456', 'Voluptatem et voluptas vitae vel vel amet at. Dicta hic qui explicabo fuga occaecati ut. Qui delectus itaque vel illo sequi amet quidem autem.', 37.57, 9.53, 75.76, 29.17, 0, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(7, 'Foody Kilback, Lindgren and Labadie', 'Odit et ut eaque voluptatem. Illo tenetur similique assumenda deleniti adipisci. Veniam distinctio cumque dolor fuga et autem.', '483 Augusta Highway Suite 886\nRiceberg, MD 21910', '53.986539', '10.574551', '471-231-9136 x9205', '1-836-347-7804 x569', 'Et voluptatibus possimus ut. Non itaque vitae consequatur et nulla. Est ratione placeat velit.', 38.84, 6.82, 46.04, 28.91, 1, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(8, 'Foody Bogisich PLC', 'Et sit molestias tenetur explicabo et et aut nostrum. Sint sint aut impedit quidem ducimus. Assumenda aperiam itaque aut et ut et explicabo eos. Voluptatem commodi voluptatem et impedit vero odit.', '668 Dereck Walk\nBogisichstad, NJ 59723', '44.184973', '7.537125', '323-391-1684 x5036', '913.217.0678 x4346', 'Porro eos possimus aut quia quasi rem. Totam cum dolorum quod doloremque. In aut iste voluptates eos earum qui ratione.', 26.90, 6.64, 59.27, 21.61, 1, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(9, 'Foody Rutherford, Jast and Deckow', 'Nobis omnis consequuntur sint ipsum laudantium asperiores beatae. Consequatur illo in et est expedita dicta. Voluptatem suscipit deserunt magni in.', '615 Litzy Mission\nLake Octavia, ND 37186-6240', '48.955896', '11.100038', '305.596.2525 x6707', '268-938-8189 x4106', 'Quis mollitia autem dolorem fugit sunt saepe ut. Sed corrupti iure repudiandae odio eius quae. Quia maxime aut earum beatae rerum ut praesentium.', 40.99, 2.33, 44.60, 7.16, 0, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57'),
(10, 'Meal Kertzmann and Sons', 'Necessitatibus distinctio blanditiis cum et atque sed aut nesciunt. Voluptas non molestias quasi eos quia. At unde unde eum modi. Occaecati voluptatibus aut id totam et fugit incidunt esse.', '525 Rusty Skyway Suite 913\nRueckerstad, IA 24778-2986', '47.368078', '9.788657', '(830) 459-3980 x2539', '671.736.6857', 'Aliquid maiores quam nobis libero. Ad laboriosam eos corrupti sit fugiat et accusamus. Repellat asperiores debitis esse maxime eaque ut recusandae.', 43.48, 9.67, 88.65, 11.74, 1, 0, '2020-05-15 16:09:57', '2020-05-15 16:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_payouts`
--

DROP TABLE IF EXISTS `restaurants_payouts`;
CREATE TABLE IF NOT EXISTS `restaurants_payouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurants_payouts_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `restaurants_payouts`
--

TRUNCATE TABLE `restaurants_payouts`;
-- --------------------------------------------------------

--
-- Table structure for table `restaurant_cuisines`
--

DROP TABLE IF EXISTS `restaurant_cuisines`;
CREATE TABLE IF NOT EXISTS `restaurant_cuisines` (
  `cuisine_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`cuisine_id`,`restaurant_id`),
  KEY `restaurant_cuisines_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `restaurant_cuisines`
--

TRUNCATE TABLE `restaurant_cuisines`;
--
-- Dumping data for table `restaurant_cuisines`
--

INSERT INTO `restaurant_cuisines` (`cuisine_id`, `restaurant_id`) VALUES
(1, 7),
(1, 9),
(2, 1),
(2, 2),
(2, 7),
(3, 2),
(3, 6),
(4, 1),
(4, 3),
(5, 8),
(5, 10),
(6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_reviews`
--

DROP TABLE IF EXISTS `restaurant_reviews`;
CREATE TABLE IF NOT EXISTS `restaurant_reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_reviews_user_id_foreign` (`user_id`),
  KEY `restaurant_reviews_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `restaurant_reviews`
--

TRUNCATE TABLE `restaurant_reviews`;
--
-- Dumping data for table `restaurant_reviews`
--

INSERT INTO `restaurant_reviews` (`id`, `review`, `rate`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Alice, looking down with wonder at the house, quite forgetting her promise. \'Treacle,\' said a timid and tremulous sound.] \'That\'s different from what I see\"!\' \'You might just as well say,\' added the.', 4, 5, 10, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(2, 'King eagerly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the things between whiles.\' \'Then you keep moving round, I suppose?\' said Alice. \'I mean what I could show.', 2, 5, 10, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(3, 'But do cats eat bats, I wonder?\' And here Alice began to get rather sleepy, and went on in a melancholy air, and, after folding his arms and legs in all directions, \'just like a telescope.\' And so.', 4, 1, 3, '2020-05-15 16:10:01', '2020-05-15 16:10:01'),
(4, 'Mock Turtle went on. \'Or would you tell me,\' said Alice, very loudly and decidedly, and he hurried off. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said to herself, \'the way.', 4, 3, 7, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(5, 'Alice led the way, and then quietly marched off after the others. \'Are their heads down and looked at poor Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'I might as well as the Rabbit, and.', 2, 6, 6, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(6, 'Pigeon, but in a low, hurried tone. He looked at Alice, as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Panther received knife and fork with a deep sigh, \'I.', 2, 2, 9, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(7, 'White Rabbit, trotting slowly back to the voice of thunder, and people began running about in a shrill, loud voice, and see what I get\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m.', 2, 1, 2, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(8, 'The other side will make you dry enough!\' They all made of solid glass; there was enough of it in a melancholy tone. \'Nobody seems to grin, How neatly spread his claws, And welcome little fishes in.', 4, 4, 7, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(9, 'It quite makes my forehead ache!\' Alice watched the White Rabbit read:-- \'They told me you had been looking over his shoulder with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory.', 3, 6, 1, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(10, 'Alice guessed in a deep sigh, \'I was a table, with a sigh. \'I only took the hookah out of the lefthand bit. * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again.', 1, 3, 4, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(11, 'How the Owl had the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Rabbit coming to look down and saying \"Come up again, dear!\" I.', 1, 6, 3, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(12, 'Duchess, \'and that\'s the jury-box,\' thought Alice, \'they\'re sure to kill it in asking riddles that have no notion how delightful it will be much the same thing with you,\' said Alice, \'we learned.', 2, 1, 4, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(13, 'Alice looked at Alice, and she felt certain it must be off, then!\' said the King. On this the whole pack rose up into the court, arm-in-arm with the Duchess, the Duchess! Oh! won\'t she be savage if.', 3, 2, 1, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(14, 'Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said to herself, \'to be going messages for a few yards off. The Cat only grinned when it saw mine.', 3, 2, 5, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(15, 'At this moment Five, who had been looking at the mushroom (she had grown in the pictures of him), while the Mouse with an anxious look at them--\'I wish they\'d get the trial done,\' she thought, and.', 4, 1, 7, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(16, 'When I used to call him Tortoise--\' \'Why did they live on?\' said Alice, \'a great girl like you,\' (she might well say that \"I see what would happen next. \'It\'s--it\'s a very hopeful tone though), \'I.', 2, 3, 6, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(17, 'I can\'t see you?\' She was looking for the rest of it at last, they must needs come wriggling down from the Queen said to a lobster--\' (Alice began to say \'creatures,\' you see, Miss, we\'re doing our.', 5, 4, 8, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(18, 'So she set off at once took up the little golden key, and when Alice had not a moment to be patted on the stairs. Alice knew it was over at last: \'and I wish you could keep it to make out which were.', 4, 4, 8, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(19, 'Alice, \'and why it is right?\' \'In my youth,\' said the Mouse, turning to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\'.', 4, 6, 4, '2020-05-15 16:10:02', '2020-05-15 16:10:02'),
(20, 'Alice to herself, \'if one only knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind her. \'Collar that.', 4, 4, 6, '2020-05-15 16:10:02', '2020-05-15 16:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `roles`
--

TRUNCATE TABLE `roles`;
--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 15:37:56', '2019-09-07 21:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-07 21:41:38', '2019-09-07 21:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-07 21:41:54', '2019-09-07 21:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-15 17:50:21', '2019-12-15 17:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `role_has_permissions`
--

TRUNCATE TABLE `role_has_permissions`;
--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 2),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(32, 2),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 5),
(50, 2),
(51, 2),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 2),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 2),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(111, 4),
(111, 5),
(112, 2),
(113, 2),
(113, 3),
(113, 4),
(113, 5),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(130, 3),
(130, 5),
(131, 2),
(134, 2),
(134, 3),
(135, 2),
(135, 3),
(137, 2),
(137, 3),
(138, 2),
(144, 2),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(148, 2),
(149, 2),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(170, 3),
(171, 2),
(171, 3),
(172, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `uploads`
--

TRUNCATE TABLE `uploads`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael E. Quinn', 'admin@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T4PQhFvBcAA7k02f7ejq4I7z7QKKnvxQLV0oqGnuS6Ktz6FdWULrWrzZ3oYn', '2018-08-06 21:58:41', '2019-09-27 06:49:45'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-14 16:06:28', '2019-09-25 21:09:35'),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-12 21:31:26', '2020-03-29 16:44:30'),
(4, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 16:55:39', '2020-03-29 16:59:39'),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-15 17:49:44', '2020-03-29 16:22:10'),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 16:28:04', '2020-03-29 16:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_restaurants`
--

DROP TABLE IF EXISTS `user_restaurants`;
CREATE TABLE IF NOT EXISTS `user_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`restaurant_id`),
  KEY `user_restaurants_restaurant_id_foreign` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `user_restaurants`
--

TRUNCATE TABLE `user_restaurants`;
--
-- Dumping data for table `user_restaurants`
--

INSERT INTO `user_restaurants` (`user_id`, `restaurant_id`) VALUES
(1, 2),
(1, 3),
(1, 5),
(1, 6),
(2, 3),
(2, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD CONSTRAINT `cart_extras_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD CONSTRAINT `drivers_payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_restaurants`
--
ALTER TABLE `driver_restaurants`
  ADD CONSTRAINT `driver_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_extra_group_id_foreign` FOREIGN KEY (`extra_group_id`) REFERENCES `extra_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `extras_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD CONSTRAINT `favorite_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_extras_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foods_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_order_extras`
--
ALTER TABLE `food_order_extras`
  ADD CONSTRAINT `food_order_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_order_extras_food_order_id_foreign` FOREIGN KEY (`food_order_id`) REFERENCES `food_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_reviews`
--
ALTER TABLE `food_reviews`
  ADD CONSTRAINT `food_reviews_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurants_payouts`
--
ALTER TABLE `restaurants_payouts`
  ADD CONSTRAINT `restaurants_payouts_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_cuisines`
--
ALTER TABLE `restaurant_cuisines`
  ADD CONSTRAINT `restaurant_cuisines_cuisine_id_foreign` FOREIGN KEY (`cuisine_id`) REFERENCES `cuisines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_cuisines_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD CONSTRAINT `restaurant_reviews_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_restaurants`
--
ALTER TABLE `user_restaurants`
  ADD CONSTRAINT `user_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
