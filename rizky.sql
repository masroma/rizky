-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 02:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rizky`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_01_24_083237_create_sessions_table', 1),
(7, '2024_01_31_130755_add_columns_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dG7YfAPUqJ43WlZzmumgc9KJbvyV284d3ae8Hold', 101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHQ4VDcyMFVGVktnbWRHdjBBOExWUUpkZkdIeVJ5UnJBdWdBZnlSZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMDE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkR3l3NTdyOFdWbk1DUkx2by93QkhJZWxFWGd2ZnpOL0x6VzRPNFFtVkl3YzFBY3NWN1BIaEciO30=', 1706708875);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `phone_number` varchar(255) DEFAULT NULL,
  `status` enum('karyawan','mengundurkan_diri') NOT NULL DEFAULT 'karyawan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role`, `phone_number`, `status`) VALUES
(3, 'Dandre Kriss', 'david53@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8kKlxU0YTl', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 06:05:03', 'user', NULL, 'karyawan'),
(4, 'Zakary Hoeger DVM', 'slarson@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'B0MnvrgXNl', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(5, 'Ms. Karli Hudson DVM', 'kilback.terry@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2X60vWF6r21tQ9E0SWIQ5AZ1vz26WXEUyCrIJliGYzS99YsfgcDmiCIoUAhv', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(6, 'Ms. Una Dickens', 'mikel55@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'DiP271bzGo', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(7, 'Brett Marks', 'bailey.carroll@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'fsZ3X0Svt5', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(8, 'Prof. Lillian Monahan MD', 'owintheiser@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WEHShpsdQM', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(9, 'Nicole Lang', 'schinner.viva@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TUBEwKkm0l', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(10, 'Monroe Stamm I', 'lohara@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PM9iXELlO3', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(11, 'Mr. William Kirlin I', 'bosco.stanton@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'NI0TSibz5c', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(12, 'Prof. Francesco Ward', 'roxanne83@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'YusndkPH95', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(13, 'Bethel Schroeder', 'quinton02@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dNeerONslB', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(14, 'Prof. Erich Berge', 'angus.mitchell@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OIgcvNmEJk', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(15, 'Emmanuel Deckow', 'rachel.beahan@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'z7R3AwXdqP', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(16, 'Melany Dach Jr.', 'willow42@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '31pyLN2r2m', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(17, 'Mrs. Frieda Runolfsson', 'mohr.ara@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'A3evtvKLIJ', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(18, 'Alene Pollich', 'armstrong.roma@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'N53ym6064a', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(19, 'Gilberto Schowalter', 'coralie56@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ORA7Ay4Fxe', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(20, 'Dr. Nikita Hills', 'swillms@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'E4iEhZwKzG', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(21, 'Saige Sanford', 'kameron86@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'kOXFg2dNfb', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(22, 'Laurine Bernier', 'cummerata.pearlie@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'n2QTDGWCq8', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(23, 'Dr. Joseph Cartwright V', 'patsy.paucek@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4Gw2MK1B7c', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(24, 'Dr. Ettie Murazik Sr.', 'vrussel@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ldky1EZ1rY', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(25, 'Prof. Ethan Schinner', 'ikris@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8ilrWjC80a', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(26, 'Mr. Mortimer Bogan', 'ssipes@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '7TKMpKs1WkipkjGpwTpcIwl7dXTc9YlLM67nZbXSbvOuYogZymizpm0GCcBN', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(27, 'Dr. Ricardo Sawayn MD', 'demetris03@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qYK0x7G5KC', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(28, 'Lily Stoltenberg', 'daniela.ebert@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'eqjom0yKpu', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(29, 'Archibald Wisozk', 'pzemlak@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'TnqK5Xd811', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(30, 'Lorine Bailey', 'gardner68@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 's02bx5tMIi', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(31, 'Jazlyn Krajcik I', 'icie.prohaska@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'cA3GvNP5mX', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(32, 'Garfield Bins', 'xankunding@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'cU1hQDQ4BX', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(33, 'Misty Roob', 'queen.hartmann@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'RDT27MLGR6', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(34, 'Sabryna Smitham', 'rosa31@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HzwrDBiCSE', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(35, 'Kathleen Johnson', 'zoie34@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Y5S44I2dK8', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(36, 'Ulises Wunsch', 'pbalistreri@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '1YDx6mlYJY', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(37, 'Natasha Connelly', 'schaden.aurelie@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'FQAav105OZ', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(38, 'Margaretta Wuckert', 'kassulke.jerrod@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'b5F3G0bpIz', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(39, 'Zita Gleason', 'kobe20@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'nR17GPfjds', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(40, 'Abner Gutmann', 'lucas13@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Otzr7KS8SG', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(41, 'Yazmin Walker', 'bednar.fatima@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QK502XgSlG', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(42, 'Alvina Corkery', 'carroll.adella@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KZ3K3s0cHZ', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(43, 'Prof. Anabelle Batz Sr.', 'alejandrin06@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '6Z1Dqu46Iv', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(44, 'Lolita Towne', 'dibbert.payton@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'o8NX2QvcnT', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(45, 'Jovany Feeney', 'nils.herzog@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qaTJ18oSUt', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(46, 'Camden Deckow IV', 'stanton.jovani@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'yeSRDDMSaA', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(47, 'Precious Wisoky', 'verner45@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Zaj9kRb6Ge', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(48, 'Fabiola Lockman', 'modesto14@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'VsTIeiPjFq', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(49, 'Reba Hayes', 'grady.shyann@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qMXxl0CpcU', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(50, 'Russel Frami', 'bshanahan@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'gU1fItazOQ', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(51, 'Kellie Dicki', 'amanda25@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9kv2hNQMkM', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(52, 'Bernadette Legros', 'olson.malinda@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'vmAQfhxGC5', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(53, 'Murphy Gorczany Jr.', 'mcglynn.nicolas@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WrM9W9xAUF', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(54, 'Mr. Sherwood Kuphal', 'robin.kuhlman@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'swB1S5lCRN', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(55, 'Bartholome Gleason MD', 'xjacobson@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4qUwpY4D2G', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(56, 'Dr. Leif Blick Jr.', 'esta.thompson@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8SPbEIKMU9', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(57, 'Dr. Webster Kreiger PhD', 'emaggio@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'mxYYCwgac0', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(58, 'Ella Dickinson', 'corbin.smith@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'yzCc1RlJba', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(59, 'Mrs. Cordie Bahringer', 'cecelia11@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'hvK8coWtUC', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(60, 'Caterina Cronin', 'louisa32@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'bFEU5Ik4fz', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(61, 'Dr. Vivianne McDermott', 'sweimann@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'fpVU2SJZ2V', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(62, 'Melyssa Barton', 'xkilback@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'FyY25Ub2iJ', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(63, 'Miss Chaya Towne MD', 'maybelle46@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'MCkrENiTAe', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(64, 'Mr. Gussie Bode II', 'adele.ohara@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'yyrCyGV3Kb', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(65, 'Landen Zemlak', 'jbrekke@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'VSPshu66sY', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(66, 'Ms. Dina Wilderman DDS', 'runte.evie@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Q1FQGhzCfT', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(67, 'Jaiden Walter', 'twelch@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'q79UYEilxh', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(68, 'Minerva Barton', 'batz.verda@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JhWYVlVPYS', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(69, 'Bennett Lockman', 'brooks.ortiz@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Qpc0FTMQ3J', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(70, 'Adella Konopelski', 'pamela83@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'evUFv0cSBv', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(71, 'Elian Strosin', 'rogers76@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '69FFocTQjx', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(72, 'Reid Rempel', 'jacobi.marquise@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jVziMy5a04', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(73, 'Mr. Patrick Haag MD', 'candido03@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'DDRmguovCh', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(74, 'Ms. Audie Grant', 'deion.kshlerin@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'RfDZsfeM2f', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(75, 'Jaycee Kuvalis', 'brown.reichel@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'yaWAtXXgtn', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(76, 'Wilhelm Christiansen Sr.', 'garrett81@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'F7aRbbJVbd', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(77, 'Michale Quitzon', 'gust75@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'FYY7iIg6sg', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(78, 'Alexandro Boyer', 'hvandervort@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'f5Dr9giuJx', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(79, 'Cynthia Aufderhar', 'zander.mills@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'L5Io0PnKp4', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(80, 'Kian Osinski DVM', 'tanner.breitenberg@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'scXAoq3HI4', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(81, 'Loyce Boyer', 'queen72@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WrFj89d2mS', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(82, 'Anabel Senger MD', 'felicia88@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zNimBF0TG1', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(83, 'Damaris Lindgren', 'deja.berge@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'kkjPfdvV2u', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(84, 'Dr. Moises Wilderman', 'laverne.jacobs@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'LfJm31auS4', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(85, 'Lorenzo Sipes', 'ledner.lori@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '3nGciaxPPF', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(86, 'Allen Toy', 'torphy.daniela@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '40hltSeD5p', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(87, 'Sibyl Robel', 'zlangworth@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '7g261899Lo', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(88, 'Miss Caterina Boyer', 'ocasper@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aPhrtIhg34', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(89, 'Miss Erica Bernhard II', 'rath.jefferey@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'eCPRwEj5b6', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(90, 'Hazel Borer', 'sankunding@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ib6rGTeMiv', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(91, 'Dr. Kayden Pollich', 'christophe.swift@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'quRxeTK4h5', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(92, 'Dr. Isaiah Witting', 'cayla30@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'fwhuHG4IR1', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(93, 'Alivia Ruecker', 'qgutkowski@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'aUdkxY1xRZ', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(94, 'Hershel Okuneva', 'egreen@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'rYE3TsrEOS', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(95, 'Dr. Eldora Feest', 'gonzalo32@example.org', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'DnwGwRqBWM', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(96, 'Casimer Nikolaus', 'armani.morar@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '76HoRHOkU4', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(97, 'Raheem Schuster', 'claudia35@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'G4PbrGvtmg', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(98, 'Prof. Jaquelin Auer', 'marianne29@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'CAeYsaCcFY', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(99, 'Benton Carter', 'orland77@example.com', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QEzw6mHyNx', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(100, 'Nathaniel Dibbert', 'pbayer@example.net', '2024-01-31 05:40:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'pfBLKQJPgT', NULL, NULL, '2024-01-31 05:40:31', '2024-01-31 05:40:31', 'user', NULL, 'karyawan'),
(101, 'romadhon', 'masroma75@gmail.com', NULL, '$2y$10$Gyw57r8WVnMCRLvo/wBHIelEXgvfzN/LzW4O4QmVIwc1AcsV7PHhG', NULL, NULL, NULL, NULL, NULL, '2024-01-31 05:49:24', '2024-01-31 06:18:27', 'admin', NULL, 'karyawan'),
(102, 'romadhon', 'mromadhon75@gmail.com', NULL, 'password', NULL, NULL, NULL, NULL, NULL, '2024-01-31 05:54:29', '2024-01-31 05:54:29', 'user', NULL, 'karyawan'),
(103, 'romadhon', 'mromadhon@gmail.com', NULL, 'password', NULL, NULL, NULL, NULL, NULL, '2024-01-31 05:55:03', '2024-01-31 05:55:03', 'user', NULL, 'karyawan'),
(104, 'tes', 'tes@gmail.com', NULL, 'password', NULL, NULL, NULL, NULL, NULL, '2024-01-31 05:56:04', '2024-01-31 05:56:04', 'user', NULL, 'karyawan');

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
