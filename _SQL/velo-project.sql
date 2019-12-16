-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 03:54 PM
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
-- Database: `velo-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 131, 'aku ingin join di trip mu', 1, '2019-12-12 16:37:59', '2019-12-16 12:33:35'),
(2, 1, 131, 'hey, aku ingin join di tripmu', 1, '2019-12-12 16:39:23', '2019-12-16 12:33:35'),
(3, 1, 131, 'hey, aku ingin join ditripmu', 1, '2019-12-12 16:41:02', '2019-12-16 12:33:35'),
(4, 1, 121, 'hay febi', 1, '2019-12-12 16:46:53', '2019-12-15 20:23:06'),
(5, 1, 121, 'ayo ke semeru lur', 1, '2019-12-12 19:10:49', '2019-12-15 20:23:06'),
(6, 1, 131, 'kapan bro', 1, '2019-12-12 19:25:25', '2019-12-16 12:33:35'),
(7, 132, 131, 'hai su', 1, '2019-12-12 22:41:35', '2019-12-16 12:31:32'),
(8, 132, 131, 'hai su', 1, '2019-12-12 22:41:40', '2019-12-16 12:31:32'),
(9, 1, 132, 'hay bro', 1, '2019-12-13 18:41:05', '2019-12-14 21:28:17'),
(10, 121, 1, 'kenapa bro', 1, '2019-12-14 18:27:21', '2019-12-15 20:44:03'),
(47, 1, 121, 'hhhhhhhhhh', 1, '2019-12-15 10:55:45', '2019-12-15 20:23:06'),
(48, 121, 1, 'jugujgjgk', 1, '2019-12-15 10:56:30', '2019-12-15 20:44:03'),
(49, 121, 1, 'brayyyyy', 1, '2019-12-15 10:58:25', '2019-12-15 20:44:03'),
(50, 121, 1, 'dsfsd', 1, '2019-12-15 10:59:36', '2019-12-15 20:44:03'),
(51, 121, 1, 'sdfjjksdh', 1, '2019-12-15 11:12:10', '2019-12-15 20:44:03'),
(52, 121, 1, 'sdfhvhgv', 1, '2019-12-15 11:59:26', '2019-12-15 20:44:03'),
(56, 131, 1, 'sadfdsf', 1, '2019-12-15 19:34:43', '2019-12-16 12:33:35'),
(57, 131, 1, 'dssdsdsd', 1, '2019-12-15 19:41:23', '2019-12-16 12:33:35'),
(58, 131, 1, 'join bro', 1, '2019-12-15 19:44:15', '2019-12-16 12:33:35'),
(59, 131, 1, 'join bro okeeey', 1, '2019-12-15 19:45:49', '2019-12-16 12:33:35'),
(60, 131, 1, 'alamaakk', 1, '2019-12-15 19:46:11', '2019-12-16 12:33:35'),
(61, 121, 1, 'febi sempak', 1, '2019-12-15 19:57:09', '2019-12-15 20:44:03'),
(62, 131, 1, 'bray', 1, '2019-12-15 20:01:30', '2019-12-16 12:33:35'),
(63, 131, 1, 'bray', 1, '2019-12-15 20:01:45', '2019-12-16 12:33:35'),
(64, 131, 1, 'kikikiki', 1, '2019-12-15 20:02:06', '2019-12-16 12:33:35'),
(65, 131, 1, 'oy bree', 1, '2019-12-15 20:10:08', '2019-12-16 12:33:35'),
(66, 131, 1, 'ddsjfjbsjdfbhjbdfhjsdbj', 1, '2019-12-15 20:14:32', '2019-12-16 12:33:35'),
(67, 131, 1, 'git', 1, '2019-12-15 20:16:11', '2019-12-16 12:33:35'),
(68, 131, 1, 'cek', 1, '2019-12-15 20:22:55', '2019-12-16 12:33:35'),
(69, 121, 1, 'oy brooo', 1, '2019-12-15 20:23:05', '2019-12-15 20:44:03'),
(70, 131, 1, 'sdjkjknsjknjkn', 1, '2019-12-15 20:41:32', '2019-12-16 12:33:35'),
(71, 131, 1, 'oy bro', 1, '2019-12-16 12:32:24', '2019-12-16 12:33:35'),
(72, 131, 1, 'gimana?', 1, '2019-12-16 12:32:41', '2019-12-16 12:33:35'),
(73, 131, 1, 'hay faleehh', 1, '2019-12-16 12:33:12', '2019-12-16 12:33:35'),
(74, 1, 131, 'rekldsfjkn', 1, '2019-12-16 12:33:24', '2019-12-16 12:33:35'),
(75, 131, 1, 'ngopi yok', 1, '2019-12-16 12:33:34', '2019-12-16 12:33:35');

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
(4, '2019_12_03_083138_create_trips_table', 2),
(5, '2019_12_03_103514_create_trips_table', 3);

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
-- Table structure for table `travellers`
--

CREATE TABLE `travellers` (
  `id_traveller` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `currently_live_at` varchar(255) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travellers`
--

INSERT INTO `travellers` (`id_traveller`, `first_name`, `last_name`, `gender`, `date_of_birth`, `country`, `currently_live_at`, `phone_number`, `job`, `photo`, `bio`, `user_id`) VALUES
(211, 'Sigit', 'Priadi', 'Laki-Laki', '2000-11-01', 'Indonesia', 'Sleman', 6285765239501, 'Mahasiswa', 'oE5K0N4ScDebsaK7DourzlU9EKRFX6jqiNmjmrKZ.jpg', 'Hay dear, Saya Sigit Priadi', 1),
(308, 'Dimas', 'Adi', 'Male', '2000-01-01', 'Indonesia', 'Cirebon', 62819786543214, 'Mahasiswa', 'hMEiQ1rhnCzR1fJSX7cJRYiPGy2FUbwVeKMzFWrG.jpg', 'suka kucing', 115),
(310, 'aqsal', 'marta', 'Male', '2000-01-01', 'Indo', 'Bengkulu', 98765432456, 'Mahasiswa', 'f7QTStPD79ygBPZ2sBiXv9SihWObeV5bt4YblRiL.jpg', 'sempak', 117),
(311, 'febi', 'kurniawan', 'Male', '2000-01-01', 'Indonesia', 'Lampung', 6289765678765, 'Mahasiswa', 'aSNik2qbY66hzPzmTRvOwbFmUdU2B5eCV2s8Sei1.jpg', 'hay', 121),
(312, 'andri', 'setiaji', 'Male', '2000-01-01', 'Indonesia', 'Purworejo', 6287765432144, 'Mahasiswa', 'jlRJgwnA2kUkVKKtYWRm7xLwswnPHN4Moq2VLk3g.jpg', 'hh', 122),
(313, 'Ryan', 'Andreansyah', 'Male', '2000-01-01', 'Indonesia', 'Kijang', 6287987654567, 'Mahasiswa', '8FUr8ui88baJ37j6qty20qGvcJ9pvqds5SvK9aIA.PNG', 'Aku suka web programming', 123),
(314, 'maruf', 'maruf', 'Male', '2000-01-01', 'njjn', 'njnj', 987876, 'ngoding', 'profile.jpg', 'Empty', 124),
(315, 'Katon', 'Adams', 'Male', '2000-01-01', 'Indonesia', 'Lampung', 6287654678909, 'Mahasiswa', 'profile.jpg', 'Empty', 125),
(317, 'Arfiandi', 'Wijatmiko', 'Male', '2000-03-13', 'Indonesia', 'Solo', 6282136702780, 'Mahasiswa', 'profile.jpg', 'Empty', 127),
(318, 'Febi', 'Kurniawan', 'Male', '2000-01-01', 'Indonesia', 'Bandar Lampung', 6289887889888, 'Mahasiswa', 'nfMcRfcdji1y5a92tUnMImy4CEM63dLUpICRTAGq.jpeg', 'Empty', 128),
(321, 'Ryan', 'Andreansyah', 'Male', '2000-01-01', 'Indonesia', 'Tanjungpinang', 6281245637654, 'Mahasisawa', 'rc8H3mPZywYuMs7X6NtP1L3pbe3mBaSE6NaAIFPc.jpeg', 'Empty', 131),
(322, 'Aqshal', 'Yudha', 'Male', '9999-03-15', 'Indonesia', 'Sleman', 82280047902, 'College Student', 'GAVQghOHDEs5PCTmj3mraGJFIXgaj7FCw7lYxWMc.jpg', 'Apo lokak ciknga?', 132),
(323, 'Haydar', 'Maulana', 'Male', '2000-01-01', 'Indonesia', 'Jakarta', 62819865432, 'Mahasiswa', 'profile.jpg', 'Empty', 133);

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `current` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_date` date NOT NULL,
  `trip_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traveller_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`trip_id`, `current`, `destination`, `departure_date`, `trip_duration`, `note`, `traveller_id`, `created_at`, `updated_at`) VALUES
(1, 'Yogyakarta', 'Jayapura', '2020-09-09', '1 Minggu', 'Cari Jodoh', 211, '2019-12-04 08:48:42', '2019-12-13 19:18:41'),
(2, 'Pekanbaru', 'Lampung', '2020-09-09', '4 Hari', 'Cari Badak', 211, '2019-12-04 08:52:59', '2019-12-04 08:52:59'),
(3, 'Jakarta', 'Medan', '2019-12-31', 'seminggu aja', 'Tujuan Ku ke Gunung Sinabung', 211, '2019-12-05 06:57:16', '2019-12-05 06:57:16'),
(4, 'njknjknjk', 'njknjk', '0999-09-09', 'njnjknjknjk', 'njknjkjk', 211, '2019-12-05 08:22:30', '2019-12-05 08:22:30'),
(5, 'njknjknjk', 'Bandung', '2022-09-09', 'jnjnkknjnjk', 'njknjknjk', 211, '2019-12-05 09:28:13', '2019-12-05 09:28:13'),
(6, 'jkjkjjjk', 'Jogja', '0999-09-09', 'jjkjjkjkjk', 'jkjkjkjk', 211, '2019-12-05 09:31:23', '2019-12-05 09:31:23'),
(7, 'Jakarta', 'Singapore', '2020-01-01', '3 days', 'I,m single', 321, '2019-12-09 05:40:48', '2019-12-09 05:40:48'),
(8, 'jakarta', 'Kediri', '2020-01-01', '5 hari', 'nothing', 321, '2019-12-09 07:47:12', '2019-12-09 07:47:12'),
(9, 'jkjksdfn', 'kemana', '2020-01-01', 'ajkdnfjdjk', 'jknskdf', 211, '2019-12-10 17:53:47', '2019-12-10 17:53:47'),
(10, 'jsdfsd', 'hsddfsd', '2020-01-01', 'jsdfsd', 'jcvdfg', 211, '2019-12-10 17:55:40', '2019-12-10 17:55:40'),
(11, 'jkdnfj', 'ertertejtnjk', '2020-01-01', 'kndsknfjn', 'jksndfjn\r\njfbj\r\njsdfnksdn\r\nfngkngk\r\njdfgjkfdn\r\nsjfnjksfn\r\nsjkjfnjsfkn\r\njsfjsb\r\nsgnjsfbhj\r\nsjfbhjb', 211, '2019-12-10 11:21:26', '2019-12-10 11:21:26'),
(15, 'lampung', 'lampung', '2020-01-01', 'lampung', 'lampung', 211, '2019-12-11 07:31:45', '2019-12-11 07:31:45'),
(16, 'jdddd', 'Jogja', '2000-01-01', 'gak tau', 'jddddd', 211, '2019-12-11 07:32:50', '2019-12-14 22:17:54'),
(21, 'aaun', 'Malaysia', '0377-02-07', 'suka suka', 'dbu\'', 211, '2019-12-11 20:50:20', '2019-12-13 19:16:44'),
(23, '9999', '99', '0009-09-09', '9', '99', 322, '2019-12-12 20:32:34', '2019-12-12 20:32:34'),
(24, '77g7g7', 'f56f', '0767-07-06', '79tvf', 'vv', 322, '2019-12-12 22:16:24', '2019-12-12 22:16:24'),
(25, '6789', 'vyubuuuuuuuuuuuuuuuu', '6789-05-04', '56789', '789', 322, '2019-12-12 22:17:08', '2019-12-12 22:17:08'),
(26, '567890', 'aqhal', '6789-05-04', '56789', '56789', 322, '2019-12-12 22:26:25', '2019-12-12 22:26:25'),
(27, '7888888888', 'gttttttttttttttttttttttttttttttttttt', '0007-06-05', 'tyu', '8888', 322, '2019-12-12 22:26:45', '2019-12-12 22:26:45'),
(28, 'g yybybybyb', 'bokep', '0008-05-05', '67', 'ybyby', 322, '2019-12-12 22:38:27', '2019-12-12 22:38:27'),
(29, '67890', 'dsvbdf vh', '0009-08-07', '789', '6789', 322, '2019-12-12 22:38:37', '2019-12-12 22:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'traveller', 'Sigit Priadi', 'sigit@gmail.com', NULL, '$2y$10$fsKNfQA4epN30oON4Ci9Vu9l3nQbBiEW4tRiF3iqTp9tBmWUNjf.a', 'oXM82zprlVzrzTcyJRXDFDUFVUU8imtruX7PbSXNxCB2ugMpXj3ub2AY8hSZ', '2019-11-20 10:48:31', '2019-12-12 18:50:15'),
(115, 'traveller', 'Dimas Adi', 'dimas@gmail.com', NULL, '$2y$10$ZcmcMKVDGEcdoBFazPfB..cU/o9zBbf9dHNqJV91GDHvXppUa.s7K', 'z5bOtrqWAZ9wvvCLNt4FbMNp2GJiKE2FMATUWjeHRFupwAz6udYrM9o7PtO3', '2019-12-03 03:52:59', '2019-12-03 04:32:33'),
(117, 'traveller', 'aqsal marta', 'aqsal@gmail.com', NULL, '$2y$10$C.Vt8wWvNigQntI3rkBzJuAkKnhNwXneqD7wB/UCTDC6C4xRWiAoK', 'cfitTqQat2tsdPuXZy5XHmDqk4ZdMvfdBolPkqZ1CENaNCf5y3AfT2pQTUtH', '2019-12-03 04:33:54', '2019-12-03 04:35:56'),
(121, 'traveller', 'febi kurniawan', 'febi@gmail.com', NULL, '$2y$10$B.9mutTzWKH1RQAXSM4nteqLZdn7wymUjBOQ.qfnM2XXSGge7DVc2', 'n8MKcgwhNA3FiFsDKBgMzV2sgwOin8lsO8g20xOmmmDNNz9cQI7B8ubhpptD', '2019-12-03 04:45:02', '2019-12-03 04:47:19'),
(122, 'traveller', 'andri setiaji', 'sigit@gmai.com', NULL, '$2y$10$GGio9Td6h2i/uBIj9sRKx.E36vpQSsl1sJsMmMyBrXiqmaNSjIet6', '843x9zsY5NOxGbIEySHWAlmGsyOHj0DKmMTDev7JUJeY6ibiBgPttDtvNTcv', '2019-12-03 04:55:54', '2019-12-03 05:00:29'),
(123, 'traveller', 'Ryan Andreansyah', 'ryan@gmail.com', NULL, '$2y$10$6liGpKNuu/rnFCJF2bWwU.sqYCWRz.8vfob29wjPay0EEsgCIMGI2', 'clWHShb35OlIr1SMeRxipRW3xUHWzdExAQu9nJD2vjt05TN2X2loANLkhoJn', '2019-12-03 05:03:34', '2019-12-03 05:20:13'),
(124, 'traveller', 'maruf maruf', 'maruf@gmail.com', NULL, '$2y$10$ngSY44NakOG8xPO2I3RQXegrEThaII0wkkaOADCD8vMUzjAJGg5.6', 'qOUnkuQDzDY0PbBTcvt2RCcm3YWztrXtPQjpnSO6rysNbcxgx91qvspK22iE', '2019-12-03 05:52:52', '2019-12-03 05:53:04'),
(125, 'traveller', 'Katon Adams', 'katon@gmail.com', NULL, '$2y$10$mNmWh9PZuctFkPYDWl/HGe8Mv0Q6Vjhb35WZBBvBziUkemkcrojpG', 'Kkx1jfwo9kaWCQkSks2gx1FYpuN4mjQANgyxtImgdOpOOUt6nRI0gT2wDka7', '2019-12-03 11:31:08', '2019-12-03 11:31:08'),
(127, 'traveller', 'Arfiandi Wijatmiko', 'arfiandi@gmail.com', NULL, '$2y$10$i45cJLFyo/Fjv5YZeM.luOvzN7hqQMG5qe3xordaCSbmwR85EHK5.', 'oERCludTp6ox5bQcbN5DSsOSAdPgUSKFUedn4gs322hhzrMKda0hKlusgv0Y', '2019-12-04 09:04:54', '2019-12-04 09:04:54'),
(128, 'traveller', 'Febi Kurniawan', 'feby@gmail.com', NULL, '$2y$10$RfrYUcmIZOcDmqXzj4QzNeYTxLSti3An239Z1gp5XblGwRKe8U9j2', '7Zeff0rVtcaNlF99teXQNlihlHczSE8K2jWLMFW6JUcbe4gLVl7anYeEEGmV', '2019-12-07 10:58:04', '2019-12-07 11:12:05'),
(131, 'traveller', 'Ryan Andreansyah', 'ryan123@gmail.com', NULL, '$2y$10$M2NGXD0Q4rTRci.NTaGQsOOke4/KB.7CiCao3UYxl8rRXNQU/ui4C', 'uC5RfmQEn1CjqsKwRdEhNkggv7yeaLHOdY164hR65eX6dEiiRD30c9dpMGUy', '2019-12-09 05:39:02', '2019-12-09 05:39:59'),
(132, 'traveller', 'Aqshal Yudha', 'aqshalyudha@gmail.com', NULL, '$2y$10$MNFulOusjynCyZw4le6Q4eyYWbAN16F0/0bxsnD1Vww7VpcymGw2.', 'D9oHNpAzSDId6fRAh2jGl66olcF6uGRj5WvYc7x1claUPpfhUiFGpFXux33V', '2019-12-12 20:22:54', '2019-12-16 14:48:20'),
(133, 'traveller', 'Haydar Maulana', 'haydar@gmail.com', NULL, '$2y$10$Xm14wAmkdbFOZLgT5pJvZem0YZ4QNqdTASctPYEEV1gZcLpo1SNhC', 'Iqv6OKiiZ2kLM6qwD6dZf6jJxGL6RU4qz9W9lyts81eGwVGGgTyeI5i2s8NX', '2019-12-15 16:47:09', '2019-12-15 16:47:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `travellers`
--
ALTER TABLE `travellers`
  ADD PRIMARY KEY (`id_traveller`),
  ADD KEY `FK_user_id_travel` (`user_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`trip_id`),
  ADD KEY `FK_TRAVEL_TO_TRIPS` (`traveller_id`);

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travellers`
--
ALTER TABLE `travellers`
  MODIFY `id_traveller` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `trip_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `travellers`
--
ALTER TABLE `travellers`
  ADD CONSTRAINT `FK_user_id_travel` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `FK_TRAVEL_TO_TRIPS` FOREIGN KEY (`traveller_id`) REFERENCES `travellers` (`id_traveller`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
