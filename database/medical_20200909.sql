-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-09-09 14:27:48
-- 服务器版本： 5.7.14
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2020-08-28 09:27:39'),
(2, 0, 5, 'Admin', 'fa-tasks', '', NULL, NULL, '2020-08-28 09:58:36'),
(3, 2, 6, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-08-28 09:58:36'),
(4, 2, 7, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-08-28 09:58:36'),
(5, 2, 8, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-08-28 09:58:36'),
(6, 2, 9, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-08-28 09:58:36'),
(7, 2, 10, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-08-28 09:58:36'),
(8, 9, 3, 'Subject', 'fa-building', '/subject', '*', '2020-08-28 08:36:33', '2020-08-28 09:47:53'),
(9, 0, 2, 'Medical', 'fa-bars', NULL, NULL, '2020-08-28 09:43:34', '2020-08-28 09:43:51'),
(10, 9, 4, 'BodyPart', 'fa-male', 'bodyPart', NULL, '2020-08-28 09:58:31', '2020-08-28 09:58:36'),
(11, 9, 0, 'Symptom', 'fa-clipboard', '/symptom', NULL, '2020-08-28 11:10:28', '2020-08-28 11:14:27'),
(12, 9, 0, 'Symptom Description', 'fa-file-text', '/symptomDes', NULL, '2020-08-28 11:10:49', '2020-08-28 11:13:08');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-21 07:33:47', '2020-08-21 07:33:47'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 05:20:53', '2020-08-26 05:20:53'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 05:21:08', '2020-08-26 05:21:08'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-08-26 06:29:55', '2020-08-26 06:29:55'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-26 06:30:25', '2020-08-26 06:30:25'),
(6, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:33:03', '2020-08-26 06:33:03'),
(7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:33:05', '2020-08-26 06:33:05'),
(8, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:33:11', '2020-08-26 06:33:11'),
(9, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:56:09', '2020-08-26 06:56:09'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 06:56:33', '2020-08-26 06:56:33'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 06:58:32', '2020-08-26 06:58:32'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 06:59:30', '2020-08-26 06:59:30'),
(13, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:59:35', '2020-08-26 06:59:35'),
(14, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:59:37', '2020-08-26 06:59:37'),
(15, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:59:41', '2020-08-26 06:59:41'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:59:43', '2020-08-26 06:59:43'),
(17, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 06:59:49', '2020-08-26 06:59:49'),
(18, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 07:00:00', '2020-08-26 07:00:00'),
(19, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 07:07:26', '2020-08-26 07:07:26'),
(20, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 07:07:29', '2020-08-26 07:07:29'),
(21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 07:07:34', '2020-08-26 07:07:34'),
(22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 07:08:21', '2020-08-26 07:08:21'),
(23, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-26 08:15:16', '2020-08-26 08:15:16'),
(24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-26 08:59:30', '2020-08-26 08:59:30'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:05:55', '2020-08-28 08:05:55'),
(26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:07:49', '2020-08-28 08:07:49'),
(27, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:08:02', '2020-08-28 08:08:02'),
(28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:08:16', '2020-08-28 08:08:16'),
(29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:08:48', '2020-08-28 08:08:48'),
(30, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:08:51', '2020-08-28 08:08:51'),
(31, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:10:07', '2020-08-28 08:10:07'),
(32, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:16:25', '2020-08-28 08:16:25'),
(33, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:16:49', '2020-08-28 08:16:49'),
(34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:18:42', '2020-08-28 08:18:42'),
(35, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:26:51', '2020-08-28 08:26:51'),
(36, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:27:19', '2020-08-28 08:27:19'),
(37, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:28:07', '2020-08-28 08:28:07'),
(38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:28:11', '2020-08-28 08:28:11'),
(39, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:30:22', '2020-08-28 08:30:22'),
(40, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:30:46', '2020-08-28 08:30:46'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:30:55', '2020-08-28 08:30:55'),
(42, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:33:11', '2020-08-28 08:33:11'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:35:37', '2020-08-28 08:35:37'),
(44, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"Subject","icon":"fa-bars","uri":"subject","roles":["1",null],"permission":"*","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 08:36:31', '2020-08-28 08:36:31'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 08:36:33', '2020-08-28 08:36:33'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 08:36:40', '2020-08-28 08:36:40'),
(47, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 08:41:43', '2020-08-28 08:41:43'),
(48, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:41:46', '2020-08-28 08:41:46'),
(49, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 08:42:45', '2020-08-28 08:42:45'),
(50, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 08:42:56', '2020-08-28 08:42:56'),
(51, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 08:42:59', '2020-08-28 08:42:59'),
(52, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 08:43:11', '2020-08-28 08:43:11'),
(53, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 08:43:13', '2020-08-28 08:43:13'),
(54, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:45:20', '2020-08-28 08:45:20'),
(55, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:46:19', '2020-08-28 08:46:19'),
(56, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:46:20', '2020-08-28 08:46:20'),
(57, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:46:21', '2020-08-28 08:46:21'),
(58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:46:59', '2020-08-28 08:46:59'),
(59, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:47:03', '2020-08-28 08:47:03'),
(60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:47:04', '2020-08-28 08:47:04'),
(61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:47:22', '2020-08-28 08:47:22'),
(62, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:47:25', '2020-08-28 08:47:25'),
(63, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:47:46', '2020-08-28 08:47:46'),
(64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:48:00', '2020-08-28 08:48:00'),
(65, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:48:50', '2020-08-28 08:48:50'),
(66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 08:57:07', '2020-08-28 08:57:07'),
(67, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:59:40', '2020-08-28 08:59:40'),
(68, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 08:59:42', '2020-08-28 08:59:42'),
(69, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-08-28 09:00:29', '2020-08-28 09:00:29'),
(70, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:00:41', '2020-08-28 09:00:41'),
(71, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:00:42', '2020-08-28 09:00:42'),
(72, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:00:43', '2020-08-28 09:00:43'),
(73, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:00:44', '2020-08-28 09:00:44'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 09:05:01', '2020-08-28 09:05:01'),
(75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:05:09', '2020-08-28 09:05:09'),
(76, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:05:17', '2020-08-28 09:05:17'),
(77, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Subject","icon":"fa-bars","uri":null,"roles":["1",null],"permission":"*","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:05:28', '2020-08-28 09:05:28'),
(78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:05:28', '2020-08-28 09:05:28'),
(79, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:05:35', '2020-08-28 09:05:35'),
(80, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Dashboard","icon":"fa-bar-chart","uri":"\\/dashboard","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:05:42', '2020-08-28 09:05:42'),
(81, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:05:42', '2020-08-28 09:05:42'),
(82, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:05:45', '2020-08-28 09:05:45'),
(83, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Subject","icon":"fa-bars","uri":"\\/","roles":["1",null],"permission":"*","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:05:51', '2020-08-28 09:05:51'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:05:51', '2020-08-28 09:05:51'),
(85, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:05:58', '2020-08-28 09:05:58'),
(86, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:03', '2020-08-28 09:06:03'),
(87, 1, 'admin/dashboard', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:05', '2020-08-28 09:06:05'),
(88, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:08', '2020-08-28 09:06:08'),
(89, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:12', '2020-08-28 09:06:12'),
(90, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:14', '2020-08-28 09:06:14'),
(91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:18', '2020-08-28 09:06:18'),
(92, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:28', '2020-08-28 09:06:28'),
(93, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:29', '2020-08-28 09:06:29'),
(94, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:31', '2020-08-28 09:06:31'),
(95, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:33', '2020-08-28 09:06:33'),
(96, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:06:34', '2020-08-28 09:06:34'),
(97, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 09:26:32', '2020-08-28 09:26:32'),
(98, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:27:13', '2020-08-28 09:27:13'),
(99, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:27:20', '2020-08-28 09:27:20'),
(100, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Subject","icon":"fa-bars","uri":"\\/subject","roles":["1",null],"permission":"*","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:27:30', '2020-08-28 09:27:30'),
(101, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:27:30', '2020-08-28 09:27:30'),
(102, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:27:33', '2020-08-28 09:27:33'),
(103, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Dashboard","icon":"fa-bar-chart","uri":"\\/","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:27:39', '2020-08-28 09:27:39'),
(104, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:27:39', '2020-08-28 09:27:39'),
(105, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 09:27:50', '2020-08-28 09:27:50'),
(106, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:27:56', '2020-08-28 09:27:56'),
(107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:28:02', '2020-08-28 09:28:02'),
(108, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_order":"[{\\"id\\":1},{\\"id\\":8},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2020-08-28 09:28:06', '2020-08-28 09:28:06'),
(109, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:28:06', '2020-08-28 09:28:06'),
(110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:28:09', '2020-08-28 09:28:09'),
(111, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:28:11', '2020-08-28 09:28:11'),
(112, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:28:54', '2020-08-28 09:28:54'),
(113, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:29:34', '2020-08-28 09:29:34'),
(114, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:30:03', '2020-08-28 09:30:03'),
(115, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:30:05', '2020-08-28 09:30:05'),
(116, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:30:13', '2020-08-28 09:30:13'),
(117, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:30:14', '2020-08-28 09:30:14'),
(118, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:30:18', '2020-08-28 09:30:18'),
(119, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:31:29', '2020-08-28 09:31:29'),
(120, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:32:02', '2020-08-28 09:32:02'),
(121, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:32:04', '2020-08-28 09:32:04'),
(122, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:26', '2020-08-28 09:36:26'),
(123, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:36:28', '2020-08-28 09:36:28'),
(124, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:39', '2020-08-28 09:36:39'),
(125, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:42', '2020-08-28 09:36:42'),
(126, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:43', '2020-08-28 09:36:43'),
(127, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:45', '2020-08-28 09:36:45'),
(128, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:36:47', '2020-08-28 09:36:47'),
(129, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:51', '2020-08-28 09:36:51'),
(130, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:36:59', '2020-08-28 09:36:59'),
(131, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:37:02', '2020-08-28 09:37:02'),
(132, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:23', '2020-08-28 09:37:23'),
(133, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:25', '2020-08-28 09:37:25'),
(134, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:25', '2020-08-28 09:37:25'),
(135, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:27', '2020-08-28 09:37:27'),
(136, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:28', '2020-08-28 09:37:28'),
(137, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:37:29', '2020-08-28 09:37:29'),
(138, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:31', '2020-08-28 09:37:31'),
(139, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:36', '2020-08-28 09:37:36'),
(140, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:37:39', '2020-08-28 09:37:39'),
(141, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:37:41', '2020-08-28 09:37:41'),
(142, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:42', '2020-08-28 09:37:42'),
(143, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:43', '2020-08-28 09:37:43'),
(144, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:44', '2020-08-28 09:37:44'),
(145, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:45', '2020-08-28 09:37:45'),
(146, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:37:46', '2020-08-28 09:37:46'),
(147, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:37:51', '2020-08-28 09:37:51'),
(148, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:38:04', '2020-08-28 09:38:04'),
(149, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:38:07', '2020-08-28 09:38:07'),
(150, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:38:09', '2020-08-28 09:38:09'),
(151, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:38:13', '2020-08-28 09:38:13'),
(152, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:38:29', '2020-08-28 09:38:29'),
(153, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:40:11', '2020-08-28 09:40:11'),
(154, 1, 'admin/subject/create', 'GET', '127.0.0.1', '[]', '2020-08-28 09:40:16', '2020-08-28 09:40:16'),
(155, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u5152\\u7ae5\\u79d1","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 09:40:21', '2020-08-28 09:40:21'),
(156, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:40:21', '2020-08-28 09:40:21'),
(157, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:40:46', '2020-08-28 09:40:46'),
(158, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:40:48', '2020-08-28 09:40:48'),
(159, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:40:51', '2020-08-28 09:40:51'),
(160, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:40:52', '2020-08-28 09:40:52'),
(161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:40:53', '2020-08-28 09:40:53'),
(162, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:40:55', '2020-08-28 09:40:55'),
(163, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:42:16', '2020-08-28 09:42:16'),
(164, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:42:19', '2020-08-28 09:42:19'),
(165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:42:30', '2020-08-28 09:42:30'),
(166, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:04', '2020-08-28 09:43:04'),
(167, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:08', '2020-08-28 09:43:08'),
(168, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:09', '2020-08-28 09:43:09'),
(169, 1, 'admin/auth/menu/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:18', '2020-08-28 09:43:18'),
(170, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 09:43:19', '2020-08-28 09:43:19'),
(171, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:22', '2020-08-28 09:43:22'),
(172, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"Medical","icon":"fa-bars","uri":null,"roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 09:43:34', '2020-08-28 09:43:34'),
(173, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:43:34', '2020-08-28 09:43:34'),
(174, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:37', '2020-08-28 09:43:37'),
(175, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"9","title":"Subject","icon":"fa-bars","uri":"\\/subject","roles":["1",null],"permission":"*","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:43:46', '2020-08-28 09:43:46'),
(176, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:43:46', '2020-08-28 09:43:46'),
(177, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_order":"[{\\"id\\":1},{\\"id\\":9,\\"children\\":[{\\"id\\":8}]},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2020-08-28 09:43:51', '2020-08-28 09:43:51'),
(178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:52', '2020-08-28 09:43:52'),
(179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:43:53', '2020-08-28 09:43:53'),
(180, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:43:59', '2020-08-28 09:43:59'),
(181, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:44:03', '2020-08-28 09:44:03'),
(182, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:44:06', '2020-08-28 09:44:06'),
(183, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"9","title":"Subject","icon":"fa-building","uri":"\\/subject","roles":["1",null],"permission":"*","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 09:47:53', '2020-08-28 09:47:53'),
(184, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:47:53', '2020-08-28 09:47:53'),
(185, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:47:58', '2020-08-28 09:47:58'),
(186, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:48:03', '2020-08-28 09:48:03'),
(187, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:48:26', '2020-08-28 09:48:26'),
(188, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:48:32', '2020-08-28 09:48:32'),
(189, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:51:38', '2020-08-28 09:51:38'),
(190, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-08-28 09:52:30', '2020-08-28 09:52:30'),
(191, 1, 'admin/subject/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:52:36', '2020-08-28 09:52:36'),
(192, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:52:39', '2020-08-28 09:52:39'),
(193, 1, 'admin/subject/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:53:03', '2020-08-28 09:53:03'),
(194, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:53:09', '2020-08-28 09:53:09'),
(195, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:56:35', '2020-08-28 09:56:35'),
(196, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"9","title":"BodyPart","icon":"fa-male","uri":"bodyPart","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 09:58:31', '2020-08-28 09:58:31'),
(197, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:58:31', '2020-08-28 09:58:31'),
(198, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_order":"[{\\"id\\":1},{\\"id\\":9,\\"children\\":[{\\"id\\":8},{\\"id\\":10}]},{\\"id\\":2,\\"children\\":[{\\"id\\":3},{\\"id\\":4},{\\"id\\":5},{\\"id\\":6},{\\"id\\":7}]}]"}', '2020-08-28 09:58:36', '2020-08-28 09:58:36'),
(199, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:58:36', '2020-08-28 09:58:36'),
(200, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 09:58:38', '2020-08-28 09:58:38'),
(201, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:58:42', '2020-08-28 09:58:42'),
(202, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:58:44', '2020-08-28 09:58:44'),
(203, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u982d\\u548c\\u9838","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-08-28 09:59:14', '2020-08-28 09:59:14'),
(204, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-08-28 09:59:16', '2020-08-28 09:59:16'),
(205, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-08-28 09:59:26', '2020-08-28 09:59:26'),
(206, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 09:59:29', '2020-08-28 09:59:29'),
(207, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u80f8\\u548c\\u80cc\\u90e8","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-08-28 09:59:42', '2020-08-28 09:59:42'),
(208, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-08-28 09:59:42', '2020-08-28 09:59:42'),
(209, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 10:15:05', '2020-08-28 10:15:05'),
(210, 1, 'admin/subject/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 10:15:08', '2020-08-28 10:15:08'),
(211, 1, 'admin/subject/1', 'GET', '127.0.0.1', '[]', '2020-08-28 10:15:21', '2020-08-28 10:15:21'),
(212, 1, 'admin/subject/1', 'GET', '127.0.0.1', '[]', '2020-08-28 10:15:26', '2020-08-28 10:15:26'),
(213, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 10:46:58', '2020-08-28 10:46:58'),
(214, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 10:47:19', '2020-08-28 10:47:19'),
(215, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 10:47:39', '2020-08-28 10:47:39'),
(216, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 10:54:06', '2020-08-28 10:54:06'),
(217, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 10:54:08', '2020-08-28 10:54:08'),
(218, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 10:54:10', '2020-08-28 10:54:10'),
(219, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 10:54:37', '2020-08-28 10:54:37'),
(220, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 10:54:39', '2020-08-28 10:54:39'),
(221, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 10:55:19', '2020-08-28 10:55:19'),
(222, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 10:55:52', '2020-08-28 10:55:52'),
(223, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:01:41', '2020-08-28 11:01:41'),
(224, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-28 11:09:16', '2020-08-28 11:09:16'),
(225, 1, 'admin/symptomDes/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:09:18', '2020-08-28 11:09:18'),
(226, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:10:06', '2020-08-28 11:10:06'),
(227, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"9","title":"Symptom","icon":"fa-bars","uri":"\\/symptom","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 11:10:28', '2020-08-28 11:10:28'),
(228, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:10:29', '2020-08-28 11:10:29'),
(229, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"Symptom Description","icon":"fa-bars","uri":"\\/symptomDes","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 11:10:49', '2020-08-28 11:10:49'),
(230, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:10:49', '2020-08-28 11:10:49'),
(231, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:10:53', '2020-08-28 11:10:53'),
(232, 1, 'admin/auth/menu/12', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:10:57', '2020-08-28 11:10:57'),
(233, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 11:10:58', '2020-08-28 11:10:58'),
(234, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"Symptom Description","icon":"fa-bars","uri":"\\/symptomDes","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT"}', '2020-08-28 11:11:01', '2020-08-28 11:11:01'),
(235, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:11:02', '2020-08-28 11:11:02'),
(236, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:11:05', '2020-08-28 11:11:05'),
(237, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{"parent_id":"9","title":"Symptom Description","icon":"fa-bars","uri":"\\/symptomDes","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 11:11:09', '2020-08-28 11:11:09'),
(238, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:11:09', '2020-08-28 11:11:09'),
(239, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:11:15', '2020-08-28 11:11:15'),
(240, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:11:17', '2020-08-28 11:11:17'),
(241, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:11:25', '2020-08-28 11:11:25'),
(242, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:11:27', '2020-08-28 11:11:27'),
(243, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:11:35', '2020-08-28 11:11:35'),
(244, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:11:37', '2020-08-28 11:11:37'),
(245, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:12:19', '2020-08-28 11:12:19'),
(246, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:12:24', '2020-08-28 11:12:24'),
(247, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:12:27', '2020-08-28 11:12:27'),
(248, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{"parent_id":"9","title":"Symptom Description","icon":"fa-file-text","uri":"\\/symptomDes","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 11:13:08', '2020-08-28 11:13:08'),
(249, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:13:08', '2020-08-28 11:13:08'),
(250, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:13:12', '2020-08-28 11:13:12'),
(251, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:13:18', '2020-08-28 11:13:18'),
(252, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:13:21', '2020-08-28 11:13:21'),
(253, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:13:23', '2020-08-28 11:13:23'),
(254, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{"parent_id":"9","title":"Symptom","icon":"fa-clipboard","uri":"\\/symptom","roles":[null],"permission":null,"_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/auth\\/menu"}', '2020-08-28 11:14:27', '2020-08-28 11:14:27'),
(255, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:14:27', '2020-08-28 11:14:27'),
(256, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-08-28 11:14:30', '2020-08-28 11:14:30'),
(257, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:14:42', '2020-08-28 11:14:42'),
(258, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:14:43', '2020-08-28 11:14:43'),
(259, 1, 'admin/symptomDes/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:14:45', '2020-08-28 11:14:45'),
(260, 1, 'admin/symptomDes', 'POST', '127.0.0.1', '{"symptom_id":"1","zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u6df1\\u5c64\\u7684\\u75bc\\u75db\\u611f","order":"1","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_previous_":"http:\\/\\/medical.local\\/admin\\/symptomDes"}', '2020-08-28 11:15:12', '2020-08-28 11:15:12'),
(261, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-28 11:15:13', '2020-08-28 11:15:13'),
(262, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-28 11:15:45', '2020-08-28 11:15:45'),
(263, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-28 11:15:48', '2020-08-28 11:15:48'),
(264, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-28 11:16:07', '2020-08-28 11:16:07'),
(265, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:10', '2020-08-28 11:16:10'),
(266, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:13', '2020-08-28 11:16:13'),
(267, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:38', '2020-08-28 11:16:38'),
(268, 1, 'admin/symptomDes/1', 'DELETE', '127.0.0.1', '{"_method":"delete","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 11:16:51', '2020-08-28 11:16:51'),
(269, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:51', '2020-08-28 11:16:51'),
(270, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:54', '2020-08-28 11:16:54'),
(271, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:56', '2020-08-28 11:16:56'),
(272, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:57', '2020-08-28 11:16:57'),
(273, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:16:58', '2020-08-28 11:16:58'),
(274, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"url":null,"zh_name":null,"other_names":null,"symptomDes":{"new_1":{"zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u6df1\\u5c64\\u7684\\u75bc\\u75db\\u611f","id":null,"_remove_":"0"},"new_2":{"zh_symptom_des":"\\u80f8\\u53e3\\u523a\\u75db","id":null,"_remove_":"0"}},"Bodypart":"2","common":"on","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-08-28 11:18:06', '2020-08-28 11:18:06'),
(275, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:18:08', '2020-08-28 11:18:08'),
(276, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:20:04', '2020-08-28 11:20:04'),
(277, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:20:19', '2020-08-28 11:20:19'),
(278, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:20:30', '2020-08-28 11:20:30'),
(279, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomDes":{"new_1":{"zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u523a\\u75db\\u611f","id":null,"_remove_":"0"},"new_2":{"zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u6df1\\u5c64\\u75bc\\u75db\\u611f","id":null,"_remove_":"0"}},"Bodypart":null,"common":"off","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 11:21:30', '2020-08-28 11:21:30'),
(280, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:21:32', '2020-08-28 11:21:32'),
(281, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomDes":{"new___LA_KEY__":{"zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u6df1\\u5c64\\u75bc\\u75db\\u611f","id":null,"_remove_":"0"}},"Bodypart":"1","common":"off","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 11:21:38', '2020-08-28 11:21:38'),
(282, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:21:38', '2020-08-28 11:21:38'),
(283, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:24:01', '2020-08-28 11:24:01'),
(284, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomDes":{"new_1":{"zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u6df1\\u5c64\\u75bc\\u75db\\u611f","id":null,"_remove_":"0"},"new_2":{"zh_symptom_des":"\\u80f8\\u53e3\\u6709\\u6df1\\u5c64\\u75bc\\u75db\\u611f","id":null,"_remove_":"0"}},"bodypart_id":"2","common":"off","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g"}', '2020-08-28 11:24:21', '2020-08-28 11:24:21'),
(285, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-08-28 11:24:21', '2020-08-28 11:24:21'),
(286, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:25:24', '2020-08-28 11:25:24'),
(287, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:25:32', '2020-08-28 11:25:32'),
(288, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:25:33', '2020-08-28 11:25:33'),
(289, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:25:38', '2020-08-28 11:25:38'),
(290, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:25:38', '2020-08-28 11:25:38'),
(291, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:26:54', '2020-08-28 11:26:54'),
(292, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:26:54', '2020-08-28 11:26:54'),
(293, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:26:56', '2020-08-28 11:26:56'),
(294, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:27:11', '2020-08-28 11:27:11'),
(295, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '[]', '2020-08-28 11:27:12', '2020-08-28 11:27:12'),
(296, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '[]', '2020-08-28 11:28:53', '2020-08-28 11:28:53'),
(297, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:28:55', '2020-08-28 11:28:55'),
(298, 1, 'admin/symptom/1', 'PUT', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomDes":{"new_1":{"zh_symptom_des":"test","id":null,"_remove_":"0"}},"bodypart_id":"2","common":"off","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/1"}', '2020-08-28 11:29:10', '2020-08-28 11:29:10'),
(299, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 11:29:10', '2020-08-28 11:29:10'),
(300, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 11:29:53', '2020-08-28 11:29:53'),
(301, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:30:05', '2020-08-28 11:30:05'),
(302, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:30:07', '2020-08-28 11:30:07'),
(303, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:30:10', '2020-08-28 11:30:10'),
(304, 1, 'admin/symptom/1', 'PUT', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomDes":{"new_1":{"zh_symptom_des":"test","id":null,"_remove_":"0"}},"bodypart_id":"2","common":"off","_token":"1kQKpvn0vyWWse988h2jRJ9tPPx4O8SiI9JXpy1g","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-08-28 11:30:16', '2020-08-28 11:30:16'),
(305, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:30:16', '2020-08-28 11:30:16'),
(306, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:30:22', '2020-08-28 11:30:22'),
(307, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:30:27', '2020-08-28 11:30:27'),
(308, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:33:08', '2020-08-28 11:33:08'),
(309, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:33:15', '2020-08-28 11:33:15'),
(310, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:33:16', '2020-08-28 11:33:16'),
(311, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:33:25', '2020-08-28 11:33:25'),
(312, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:33:31', '2020-08-28 11:33:31'),
(313, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:34:01', '2020-08-28 11:34:01'),
(314, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '[]', '2020-08-28 11:34:38', '2020-08-28 11:34:38'),
(315, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:37:40', '2020-08-28 11:37:40'),
(316, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:37:49', '2020-08-28 11:37:49'),
(317, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:38:00', '2020-08-28 11:38:00'),
(318, 1, 'admin/symptom/1', 'GET', '127.0.0.1', '[]', '2020-08-28 11:40:30', '2020-08-28 11:40:30'),
(319, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:40:33', '2020-08-28 11:40:33'),
(320, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 11:41:45', '2020-08-28 11:41:45'),
(321, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:41:55', '2020-08-28 11:41:55'),
(322, 1, 'admin/symptomDes/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:41:58', '2020-08-28 11:41:58'),
(323, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:42:03', '2020-08-28 11:42:03'),
(324, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:42:57', '2020-08-28 11:42:57'),
(325, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:43:19', '2020-08-28 11:43:19'),
(326, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 11:44:07', '2020-08-28 11:44:07'),
(327, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 11:44:13', '2020-08-28 11:44:13'),
(328, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-28 18:06:27', '2020-08-28 18:06:27'),
(329, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 18:06:36', '2020-08-28 18:06:36'),
(330, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 18:06:38', '2020-08-28 18:06:38'),
(331, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 18:08:18', '2020-08-28 18:08:18'),
(332, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 18:08:19', '2020-08-28 18:08:19'),
(333, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 18:08:22', '2020-08-28 18:08:22'),
(334, 1, 'admin/symptom/1', 'PUT', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"bodypart_id":"2","common":"off","_token":"LL0Gp4K2X0AhA1f3Hyh3HU1al0RJeJpZfkkjbTl6","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-08-28 18:08:29', '2020-08-28 18:08:29'),
(335, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 18:08:30', '2020-08-28 18:08:30'),
(336, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 18:08:33', '2020-08-28 18:08:33'),
(337, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 19:16:17', '2020-08-28 19:16:17'),
(338, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 19:16:23', '2020-08-28 19:16:23'),
(339, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:12', '2020-08-28 19:40:12'),
(340, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:20', '2020-08-28 19:40:20'),
(341, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:25', '2020-08-28 19:40:25'),
(342, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:29', '2020-08-28 19:40:29'),
(343, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:31', '2020-08-28 19:40:31'),
(344, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:39', '2020-08-28 19:40:39'),
(345, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:40', '2020-08-28 19:40:40'),
(346, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:40:41', '2020-08-28 19:40:41'),
(347, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:41:03', '2020-08-28 19:41:03'),
(348, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:41:06', '2020-08-28 19:41:06'),
(349, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 19:41:07', '2020-08-28 19:41:07'),
(350, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:07:55', '2020-08-28 20:07:55'),
(351, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:07:59', '2020-08-28 20:07:59'),
(352, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:00', '2020-08-28 20:08:00'),
(353, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:01', '2020-08-28 20:08:01'),
(354, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:02', '2020-08-28 20:08:02'),
(355, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:03', '2020-08-28 20:08:03'),
(356, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:04', '2020-08-28 20:08:04'),
(357, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:07', '2020-08-28 20:08:07'),
(358, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:08', '2020-08-28 20:08:08'),
(359, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:09', '2020-08-28 20:08:09'),
(360, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:09', '2020-08-28 20:08:09'),
(361, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:10', '2020-08-28 20:08:10'),
(362, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:10', '2020-08-28 20:08:10'),
(363, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:11', '2020-08-28 20:08:11'),
(364, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:11', '2020-08-28 20:08:11'),
(365, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:12', '2020-08-28 20:08:12'),
(366, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:12', '2020-08-28 20:08:12'),
(367, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:12', '2020-08-28 20:08:12'),
(368, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:12', '2020-08-28 20:08:12'),
(369, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:13', '2020-08-28 20:08:13'),
(370, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:13', '2020-08-28 20:08:13'),
(371, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:13', '2020-08-28 20:08:13'),
(372, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:14', '2020-08-28 20:08:14'),
(373, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:14', '2020-08-28 20:08:14'),
(374, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:14', '2020-08-28 20:08:14'),
(375, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:15', '2020-08-28 20:08:15'),
(376, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:15', '2020-08-28 20:08:15'),
(377, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:15', '2020-08-28 20:08:15'),
(378, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:08:33', '2020-08-28 20:08:33'),
(379, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:10:13', '2020-08-28 20:10:13'),
(380, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 20:14:05', '2020-08-28 20:14:05'),
(381, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:14:08', '2020-08-28 20:14:08'),
(382, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 20:14:21', '2020-08-28 20:14:21'),
(383, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 20:22:50', '2020-08-28 20:22:50'),
(384, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 20:33:13', '2020-08-28 20:33:13');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(385, 1, 'admin/symptom/1', 'PUT', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomdes":{"2":{"zh_symptom_des":"test","id":"2","_remove_":"0"},"new_1":{"zh_symptom_des":"test2","id":null,"_remove_":"0"},"new_2":{"zh_symptom_des":"test3","id":null,"_remove_":"0"}},"bodypart_id":"2","common":"off","_token":"LL0Gp4K2X0AhA1f3Hyh3HU1al0RJeJpZfkkjbTl6","_method":"PUT"}', '2020-08-28 20:33:30', '2020-08-28 20:33:30'),
(386, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-28 20:33:31', '2020-08-28 20:33:31'),
(387, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:33:34', '2020-08-28 20:33:34'),
(388, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:33:36', '2020-08-28 20:33:36'),
(389, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:33:38', '2020-08-28 20:33:38'),
(390, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:33:39', '2020-08-28 20:33:39'),
(391, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:33:45', '2020-08-28 20:33:45'),
(392, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 20:33:48', '2020-08-28 20:33:48'),
(393, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 22:28:43', '2020-08-28 22:28:43'),
(394, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-28 22:29:17', '2020-08-28 22:29:17'),
(395, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:31:05', '2020-08-28 22:31:05'),
(396, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:31:06', '2020-08-28 22:31:06'),
(397, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:31:07', '2020-08-28 22:31:07'),
(398, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:31:12', '2020-08-28 22:31:12'),
(399, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:31:29', '2020-08-28 22:31:29'),
(400, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:59:59', '2020-08-28 22:59:59'),
(401, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 22:59:59', '2020-08-28 22:59:59'),
(402, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 23:00:00', '2020-08-28 23:00:00'),
(403, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 23:00:04', '2020-08-28 23:00:04'),
(404, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 23:48:16', '2020-08-28 23:48:16'),
(405, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-28 23:48:16', '2020-08-28 23:48:16'),
(406, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:24:56', '2020-08-29 00:24:56'),
(407, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:24:59', '2020-08-29 00:24:59'),
(408, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:00', '2020-08-29 00:25:00'),
(409, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:01', '2020-08-29 00:25:01'),
(410, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:02', '2020-08-29 00:25:02'),
(411, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:03', '2020-08-29 00:25:03'),
(412, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:04', '2020-08-29 00:25:04'),
(413, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:05', '2020-08-29 00:25:05'),
(414, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:06', '2020-08-29 00:25:06'),
(415, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:07', '2020-08-29 00:25:07'),
(416, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:08', '2020-08-29 00:25:08'),
(417, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:09', '2020-08-29 00:25:09'),
(418, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:10', '2020-08-29 00:25:10'),
(419, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:11', '2020-08-29 00:25:11'),
(420, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:13', '2020-08-29 00:25:13'),
(421, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:14', '2020-08-29 00:25:14'),
(422, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:15', '2020-08-29 00:25:15'),
(423, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:16', '2020-08-29 00:25:16'),
(424, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:16', '2020-08-29 00:25:16'),
(425, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:17', '2020-08-29 00:25:17'),
(426, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:36', '2020-08-29 00:25:36'),
(427, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-08-29 00:25:55', '2020-08-29 00:25:55'),
(428, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:25:58', '2020-08-29 00:25:58'),
(429, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:27:27', '2020-08-29 00:27:27'),
(430, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:27:57', '2020-08-29 00:27:57'),
(431, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:28:30', '2020-08-29 00:28:30'),
(432, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:29:21', '2020-08-29 00:29:21'),
(433, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:29:27', '2020-08-29 00:29:27'),
(434, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:29:28', '2020-08-29 00:29:28'),
(435, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:29:32', '2020-08-29 00:29:32'),
(436, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:29:36', '2020-08-29 00:29:36'),
(437, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:30:15', '2020-08-29 00:30:15'),
(438, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-29 00:30:17', '2020-08-29 00:30:17'),
(439, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:30:22', '2020-08-29 00:30:22'),
(440, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-29 00:30:24', '2020-08-29 00:30:24'),
(441, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-08-31 22:41:11', '2020-08-31 22:41:11'),
(442, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-31 22:41:17', '2020-08-31 22:41:17'),
(443, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-31 22:41:21', '2020-08-31 22:41:21'),
(444, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-31 22:41:35', '2020-08-31 22:41:35'),
(445, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-31 22:50:59', '2020-08-31 22:50:59'),
(446, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-08-31 22:51:00', '2020-08-31 22:51:00'),
(447, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-04 06:15:24', '2020-09-04 06:15:24'),
(448, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-04 06:11:33', '2020-09-04 06:11:33'),
(449, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-09 05:49:24', '2020-09-09 05:49:24'),
(450, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-09 05:49:37', '2020-09-09 05:49:37'),
(451, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-09 05:49:48', '2020-09-09 05:49:48'),
(452, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-09 05:49:51', '2020-09-09 05:49:51');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-08-21 06:31:36', '2020-08-21 06:31:36');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$gKtc1YC/Z6I6gBRB7vPty.whGvzkRTNxkOtEC3Zs77.PWkcsL6tkK', 'Administrator', NULL, 'SWMLOZWy2nz1Z2wYTs7rPCwshsamD9HJYN9WioPzIbieYf19CI8zEINpQXGY', '2020-08-21 06:31:36', '2020-08-21 06:31:36');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `mdc_body_parts`
--

CREATE TABLE `mdc_body_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zh_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `mdc_body_parts`
--

INSERT INTO `mdc_body_parts` (`id`, `zh_name`, `created_at`, `updated_at`) VALUES
(1, '頭和頸', '2020-08-28 09:59:14', '2020-08-28 09:59:14'),
(2, '胸和背部', '2020-08-28 09:59:42', '2020-08-28 09:59:42');

-- --------------------------------------------------------

--
-- 表的结构 `mdc_illness`
--

CREATE TABLE `mdc_illness` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zh_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_names` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Separated by ","',
  `subject_id` int(11) NOT NULL,
  `high_ranking_person` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prevention_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_and_diagnosis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_sharing` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Separated by ","',
  `relative_illness` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Separated by ",", list by id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `mdc_subjects`
--

CREATE TABLE `mdc_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zh_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `mdc_subjects`
--

INSERT INTO `mdc_subjects` (`id`, `zh_name`, `created_at`, `updated_at`) VALUES
(1, '兒童科', '2020-08-28 09:40:21', '2020-08-28 09:40:21');

-- --------------------------------------------------------

--
-- 表的结构 `mdc_symptoms`
--

CREATE TABLE `mdc_symptoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zh_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_names` text COLLATE utf8mb4_unicode_ci COMMENT 'Separated by ","',
  `bodypart_id` int(11) NOT NULL,
  `common` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `mdc_symptoms`
--

INSERT INTO `mdc_symptoms` (`id`, `zh_name`, `url`, `other_names`, `bodypart_id`, `common`, `created_at`, `updated_at`) VALUES
(1, '胸痛', NULL, NULL, 2, 0, '2020-08-28 11:24:21', '2020-08-28 11:24:21');

-- --------------------------------------------------------

--
-- 表的结构 `mdc_symptom_des`
--

CREATE TABLE `mdc_symptom_des` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `zh_symptom_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `mdc_symptom_des`
--

INSERT INTO `mdc_symptom_des` (`id`, `symptoms_id`, `zh_symptom_des`, `order`, `created_at`, `updated_at`) VALUES
(2, 1, 'test', 1, '2020-08-28 11:30:16', '2020-08-28 11:30:16'),
(3, 1, 'test2', 1, '2020-08-28 20:33:30', '2020-08-28 20:33:30'),
(4, 1, 'test3', 1, '2020-08-28 20:33:30', '2020-08-28 20:33:30');

-- --------------------------------------------------------

--
-- 表的结构 `mdc_users`
--

CREATE TABLE `mdc_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_01_04_173148_create_admin_tables', 1),
(2, '2020_08_18_000000_create_users_table', 1),
(3, '2020_08_18_145916_create_subjects_table', 1),
(4, '2020_08_18_150133_create_symptom_table', 1),
(5, '2020_08_18_150155_create_illness_table', 1),
(6, '2020_08_18_150444_create_body_part_table', 1),
(7, '2020_08_18_151537_create_symptom_des_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `mdc_body_parts`
--
ALTER TABLE `mdc_body_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_illness`
--
ALTER TABLE `mdc_illness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_subjects`
--
ALTER TABLE `mdc_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_symptoms`
--
ALTER TABLE `mdc_symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_symptom_des`
--
ALTER TABLE `mdc_symptom_des`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_users`
--
ALTER TABLE `mdc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;
--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `mdc_body_parts`
--
ALTER TABLE `mdc_body_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `mdc_illness`
--
ALTER TABLE `mdc_illness`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mdc_subjects`
--
ALTER TABLE `mdc_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `mdc_symptoms`
--
ALTER TABLE `mdc_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `mdc_symptom_des`
--
ALTER TABLE `mdc_symptom_des`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `mdc_users`
--
ALTER TABLE `mdc_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
