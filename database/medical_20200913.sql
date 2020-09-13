-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-09-13 03:39:24
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
(452, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-09 05:49:51', '2020-09-09 05:49:51'),
(453, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-09 07:01:05', '2020-09-09 07:01:05'),
(454, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-09 07:01:10', '2020-09-09 07:01:10'),
(455, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 18:35:24', '2020-09-11 18:35:24'),
(456, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 18:35:42', '2020-09-11 18:35:42'),
(457, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-09-11 18:36:10', '2020-09-11 18:36:10'),
(458, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 18:36:12', '2020-09-11 18:36:12'),
(459, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 18:36:14', '2020-09-11 18:36:14'),
(460, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 18:36:23', '2020-09-11 18:36:23'),
(461, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-09-11 18:36:32', '2020-09-11 18:36:32'),
(462, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 18:36:46', '2020-09-11 18:36:46'),
(463, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 18:37:22', '2020-09-11 18:37:22'),
(464, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-09-11 18:37:34', '2020-09-11 18:37:34'),
(465, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-09-11 18:37:39', '2020-09-11 18:37:39'),
(466, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-09-11 18:37:51', '2020-09-11 18:37:51'),
(467, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2020-09-11 19:29:49', '2020-09-11 19:29:49'),
(468, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 19:51:16', '2020-09-11 19:51:16'),
(469, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 19:51:21', '2020-09-11 19:51:21'),
(470, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 21:30:17', '2020-09-11 21:30:17'),
(471, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-09-11 21:30:32', '2020-09-11 21:30:32'),
(472, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 21:30:32', '2020-09-11 21:30:32'),
(473, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 21:30:35', '2020-09-11 21:30:35'),
(474, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-09-11 21:30:40', '2020-09-11 21:30:40'),
(475, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 21:31:52', '2020-09-11 21:31:52'),
(476, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 21:31:55', '2020-09-11 21:31:55'),
(477, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 22:11:08', '2020-09-11 22:11:08'),
(478, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 22:11:15', '2020-09-11 22:11:15'),
(479, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-11 22:14:47', '2020-09-11 22:14:47'),
(480, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-11 22:15:14', '2020-09-11 22:15:14'),
(481, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-11 22:15:43', '2020-09-11 22:15:43'),
(482, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-11 22:15:52', '2020-09-11 22:15:52'),
(483, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 22:17:09', '2020-09-11 22:17:09'),
(484, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-11 23:44:08', '2020-09-11 23:44:08'),
(485, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:44:13', '2020-09-11 23:44:13'),
(486, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:44:16', '2020-09-11 23:44:16'),
(487, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:44:23', '2020-09-11 23:44:23'),
(488, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:44:27', '2020-09-11 23:44:27'),
(489, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:45:03', '2020-09-11 23:45:03'),
(490, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:46:34', '2020-09-11 23:46:34'),
(491, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:46:36', '2020-09-11 23:46:36'),
(492, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:46:37', '2020-09-11 23:46:37'),
(493, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:46:39', '2020-09-11 23:46:39'),
(494, 1, 'admin/bodyPart/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:47:36', '2020-09-11 23:47:36'),
(495, 1, 'admin/bodyPart/1', 'PUT', '127.0.0.1', '{"zh_name":"\\u982d\\u90e8","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:47:43', '2020-09-11 23:47:43'),
(496, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:47:43', '2020-09-11 23:47:43'),
(497, 1, 'admin/bodyPart/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:47:52', '2020-09-11 23:47:52'),
(498, 1, 'admin/bodyPart/2', 'PUT', '127.0.0.1', '{"zh_name":"\\u80a9\\u9838\\u80cc","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:02', '2020-09-11 23:48:02'),
(499, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:02', '2020-09-11 23:48:02'),
(500, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:03', '2020-09-11 23:48:03'),
(501, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u80f8\\u90e8","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:09', '2020-09-11 23:48:09'),
(502, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:09', '2020-09-11 23:48:09'),
(503, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:10', '2020-09-11 23:48:10'),
(504, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u8179\\u90e8","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:14', '2020-09-11 23:48:14'),
(505, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:15', '2020-09-11 23:48:15'),
(506, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:16', '2020-09-11 23:48:16'),
(507, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u624b","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:20', '2020-09-11 23:48:20'),
(508, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:21', '2020-09-11 23:48:21'),
(509, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:22', '2020-09-11 23:48:22'),
(510, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u751f\\u6b96\\u5668\\u5b98","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:31', '2020-09-11 23:48:31'),
(511, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:31', '2020-09-11 23:48:31'),
(512, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:33', '2020-09-11 23:48:33'),
(513, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u81c0\\u90e8","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:41', '2020-09-11 23:48:41'),
(514, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:41', '2020-09-11 23:48:41'),
(515, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:42', '2020-09-11 23:48:42'),
(516, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u8173","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:48', '2020-09-11 23:48:48'),
(517, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:48', '2020-09-11 23:48:48'),
(518, 1, 'admin/bodyPart/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:50', '2020-09-11 23:48:50'),
(519, 1, 'admin/bodyPart', 'POST', '127.0.0.1', '{"zh_name":"\\u5176\\u4ed6","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/bodyPart"}', '2020-09-11 23:48:55', '2020-09-11 23:48:55'),
(520, 1, 'admin/bodyPart', 'GET', '127.0.0.1', '[]', '2020-09-11 23:48:55', '2020-09-11 23:48:55'),
(521, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:48:59', '2020-09-11 23:48:59'),
(522, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:49:01', '2020-09-11 23:49:01'),
(523, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u5167\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:49:15', '2020-09-11 23:49:15'),
(524, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:49:15', '2020-09-11 23:49:15'),
(525, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:49:17', '2020-09-11 23:49:17'),
(526, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u5916\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:49:23', '2020-09-11 23:49:23'),
(527, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:49:23', '2020-09-11 23:49:23'),
(528, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:49:25', '2020-09-11 23:49:25'),
(529, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u5a66\\u7522\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:49:30', '2020-09-11 23:49:30'),
(530, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:49:31', '2020-09-11 23:49:31'),
(531, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:49:32', '2020-09-11 23:49:32'),
(532, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u5c08\\u8077\\u91ab\\u7642","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:49:45', '2020-09-11 23:49:45'),
(533, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:49:45', '2020-09-11 23:49:45'),
(534, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:49:47', '2020-09-11 23:49:47'),
(535, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u6025\\u8a3a\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:49:56', '2020-09-11 23:49:56'),
(536, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:49:56', '2020-09-11 23:49:56'),
(537, 1, 'admin/subject/6/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:50:02', '2020-09-11 23:50:02'),
(538, 1, 'admin/subject/6', 'PUT', '127.0.0.1', '{"zh_name":"\\u6025\\u75c7\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:50:09', '2020-09-11 23:50:09'),
(539, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:50:09', '2020-09-11 23:50:09'),
(540, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:50:11', '2020-09-11 23:50:11'),
(541, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u653e\\u5c04\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:50:20', '2020-09-11 23:50:20'),
(542, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:50:20', '2020-09-11 23:50:20'),
(543, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:50:41', '2020-09-11 23:50:41'),
(544, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u75db\\u75c7","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:50:46', '2020-09-11 23:50:46'),
(545, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:50:46', '2020-09-11 23:50:46'),
(546, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:50:48', '2020-09-11 23:50:48'),
(547, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u773c\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:50:55', '2020-09-11 23:50:55'),
(548, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:50:55', '2020-09-11 23:50:55'),
(549, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:50:57', '2020-09-11 23:50:57'),
(550, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u77ef\\u5f62\\u53ca\\u5275\\u50b7\\u5916\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:10', '2020-09-11 23:51:10'),
(551, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:10', '2020-09-11 23:51:10'),
(552, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:12', '2020-09-11 23:51:12'),
(553, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u795e\\u7d93\\u5916\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:19', '2020-09-11 23:51:19'),
(554, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:19', '2020-09-11 23:51:19'),
(555, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:21', '2020-09-11 23:51:21'),
(556, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u7cbe\\u795e\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:25', '2020-09-11 23:51:25'),
(557, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:25', '2020-09-11 23:51:25'),
(558, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:27', '2020-09-11 23:51:27'),
(559, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u8033\\u9f3b\\u5589\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:31', '2020-09-11 23:51:31'),
(560, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:31', '2020-09-11 23:51:31'),
(561, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:33', '2020-09-11 23:51:33'),
(562, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u81e8\\u5e8a\\u816b\\u7624\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:43', '2020-09-11 23:51:43'),
(563, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:43', '2020-09-11 23:51:43'),
(564, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:45', '2020-09-11 23:51:45'),
(565, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u8b77\\u7406","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:48', '2020-09-11 23:51:48'),
(566, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:48', '2020-09-11 23:51:48'),
(567, 1, 'admin/subject/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:50', '2020-09-11 23:51:50'),
(568, 1, 'admin/subject', 'POST', '127.0.0.1', '{"zh_name":"\\u9ebb\\u9189\\u79d1","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/subject"}', '2020-09-11 23:51:53', '2020-09-11 23:51:53'),
(569, 1, 'admin/subject', 'GET', '127.0.0.1', '[]', '2020-09-11 23:51:53', '2020-09-11 23:51:53'),
(570, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:51:59', '2020-09-11 23:51:59'),
(571, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:52:02', '2020-09-11 23:52:02'),
(572, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:52:05', '2020-09-11 23:52:05'),
(573, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:58:34', '2020-09-11 23:58:34'),
(574, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:58:36', '2020-09-11 23:58:36'),
(575, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:58:40', '2020-09-11 23:58:40'),
(576, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-11 23:58:49', '2020-09-11 23:58:49'),
(577, 1, 'admin/symptom/1', 'PUT', '127.0.0.1', '{"zh_name":"\\u80f8\\u75db","url":null,"other_names":null,"symptomdes":{"2":{"zh_symptom_des":"test","id":"2","_remove_":"0"},"3":{"zh_symptom_des":"test2","id":"3","_remove_":"0"},"4":{"zh_symptom_des":"test3","id":"4","_remove_":"0"}},"bodypart_id":"3","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-11 23:58:54', '2020-09-11 23:58:54'),
(578, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-11 23:58:54', '2020-09-11 23:58:54'),
(579, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 00:00:28', '2020-09-12 00:00:28'),
(580, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 00:01:40', '2020-09-12 00:01:40'),
(581, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 00:01:55', '2020-09-12 00:01:55'),
(582, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:23:16', '2020-09-12 00:23:16'),
(583, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:30:54', '2020-09-12 00:30:54'),
(584, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:34:16', '2020-09-12 00:34:16'),
(585, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:35:51', '2020-09-12 00:35:51'),
(586, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:36:04', '2020-09-12 00:36:04'),
(587, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:36:40', '2020-09-12 00:36:40'),
(588, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:37:35', '2020-09-12 00:37:35'),
(589, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:37:48', '2020-09-12 00:37:48'),
(590, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:39:37', '2020-09-12 00:39:37'),
(591, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 00:41:12', '2020-09-12 00:41:12'),
(592, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:03:46', '2020-09-12 01:03:46'),
(593, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:05:02', '2020-09-12 01:05:02'),
(594, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:06:10', '2020-09-12 01:06:10'),
(595, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:06:33', '2020-09-12 01:06:33'),
(596, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:07:09', '2020-09-12 01:07:09'),
(597, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:07:32', '2020-09-12 01:07:32'),
(598, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:07:58', '2020-09-12 01:07:58'),
(599, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:11:45', '2020-09-12 01:11:45'),
(600, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:12:53', '2020-09-12 01:12:53'),
(601, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:13:04', '2020-09-12 01:13:04'),
(602, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:13:25', '2020-09-12 01:13:25'),
(603, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:13:31', '2020-09-12 01:13:31'),
(604, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:13:33', '2020-09-12 01:13:33'),
(605, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:13:47', '2020-09-12 01:13:47'),
(606, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"Symptom name test","url":null,"other_names":["other names test 2",null,"other names test 4"],"symptomdes":{"new_1":{"zh_symptom_des":"de 1","id":null,"_remove_":"0"},"new_2":{"zh_symptom_des":"de 2","id":null,"_remove_":"0"},"new_3":{"zh_symptom_des":"de 3","id":null,"_remove_":"0"}},"bodypart_id":"1","common":"on","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC"}', '2020-09-12 01:15:09', '2020-09-12 01:15:09'),
(607, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:15:11', '2020-09-12 01:15:11'),
(608, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:15:34', '2020-09-12 01:15:34'),
(609, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"\\u75c5\\u5fb52","url":null,"other_names":["sdaf",null,"fsdfg"],"symptomdes":{"new_1":{"zh_symptom_des":"de1","id":null,"_remove_":"0"}},"bodypart_id":"1","common":"on","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC"}', '2020-09-12 01:16:21', '2020-09-12 01:16:21'),
(610, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:16:21', '2020-09-12 01:16:21'),
(611, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:39:46', '2020-09-12 01:39:46'),
(612, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"\\u5152\\u7ae5\\u79d1","url":null,"other_names":null,"bodypart_id":null,"common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC"}', '2020-09-12 01:39:55', '2020-09-12 01:39:55'),
(613, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:39:56', '2020-09-12 01:39:56'),
(614, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"\\u5152\\u7ae5\\u79d1","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC"}', '2020-09-12 01:40:00', '2020-09-12 01:40:00'),
(615, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 01:40:00', '2020-09-12 01:40:00'),
(616, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:40:07', '2020-09-12 01:40:07'),
(617, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:40:15', '2020-09-12 01:40:15'),
(618, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:40:17', '2020-09-12 01:40:17'),
(619, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:40:17', '2020-09-12 01:40:17'),
(620, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:40:17', '2020-09-12 01:40:17'),
(621, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 01:40:27', '2020-09-12 01:40:27'),
(622, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:40:29', '2020-09-12 01:40:29'),
(623, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:00', '2020-09-12 01:41:00'),
(624, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:03', '2020-09-12 01:41:03'),
(625, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:06', '2020-09-12 01:41:06'),
(626, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:07', '2020-09-12 01:41:07'),
(627, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:09', '2020-09-12 01:41:09'),
(628, 1, 'admin/symptom/1/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:12', '2020-09-12 01:41:12'),
(629, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:13', '2020-09-12 01:41:13'),
(630, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:41:44', '2020-09-12 01:41:44'),
(631, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 01:41:46', '2020-09-12 01:41:46'),
(632, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:42:04', '2020-09-12 01:42:04'),
(633, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:42:05', '2020-09-12 01:42:05'),
(634, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:42:33', '2020-09-12 01:42:33'),
(635, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:42:46', '2020-09-12 01:42:46'),
(636, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:42:49', '2020-09-12 01:42:49'),
(637, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:42:51', '2020-09-12 01:42:51'),
(638, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:44:49', '2020-09-12 01:44:49'),
(639, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:44:56', '2020-09-12 01:44:56'),
(640, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:44:58', '2020-09-12 01:44:58'),
(641, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:45:02', '2020-09-12 01:45:02'),
(642, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:45:37', '2020-09-12 01:45:37'),
(643, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:45:38', '2020-09-12 01:45:38'),
(644, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 01:49:03', '2020-09-12 01:49:03'),
(645, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:49:41', '2020-09-12 01:49:41'),
(646, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:49:43', '2020-09-12 01:49:43'),
(647, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:49:45', '2020-09-12 01:49:45'),
(648, 1, 'admin/symptom/2', 'PUT', '127.0.0.1', '{"zh_name":"\\u982d\\u75db","url":null,"other_names":null,"bodypart_id":"1","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 01:49:57', '2020-09-12 01:49:57'),
(649, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 01:49:57', '2020-09-12 01:49:57'),
(650, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 01:50:00', '2020-09-12 01:50:00'),
(651, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:01:09', '2020-09-12 02:01:09'),
(652, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:01:12', '2020-09-12 02:01:12'),
(653, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"sdf","url":null,"other_names":null,"bodypart_id":"2","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:01:20', '2020-09-12 02:01:20'),
(654, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 02:01:20', '2020-09-12 02:01:20'),
(655, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:03:22', '2020-09-12 02:03:22'),
(656, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 02:03:22', '2020-09-12 02:03:22'),
(657, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 02:03:30', '2020-09-12 02:03:30'),
(658, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"sad","url":null,"other_names":null,"bodypart_id":"2","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:04:08', '2020-09-12 02:04:08'),
(659, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 02:04:08', '2020-09-12 02:04:08'),
(660, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:14:37', '2020-09-12 02:14:37'),
(661, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:14:42', '2020-09-12 02:14:42'),
(662, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 02:14:42', '2020-09-12 02:14:42'),
(663, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:30:03', '2020-09-12 02:30:03'),
(664, 1, 'admin/symptom', 'POST', '127.0.0.1', '{"zh_name":"asdf","url":null,"other_names":null,"bodypart_id":"2","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:30:12', '2020-09-12 02:30:12'),
(665, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 02:30:27', '2020-09-12 02:30:27'),
(666, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:30:30', '2020-09-12 02:30:30'),
(667, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:30:37', '2020-09-12 02:30:37'),
(668, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:30:41', '2020-09-12 02:30:41'),
(669, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:30:43', '2020-09-12 02:30:43'),
(670, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:35:24', '2020-09-12 02:35:24'),
(671, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 02:35:27', '2020-09-12 02:35:27'),
(672, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":[null,"22222","33333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:35:40', '2020-09-12 02:35:40'),
(673, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 02:39:30', '2020-09-12 02:39:30'),
(674, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:39:38', '2020-09-12 02:39:38'),
(675, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:39:43', '2020-09-12 02:39:43'),
(676, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 02:39:50', '2020-09-12 02:39:50'),
(677, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["222","333",null],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:39:58', '2020-09-12 02:39:58'),
(678, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 02:41:52', '2020-09-12 02:41:52'),
(679, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:42:05', '2020-09-12 02:42:05'),
(680, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:42:07', '2020-09-12 02:42:07'),
(681, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:48:07', '2020-09-12 02:48:07'),
(682, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:48:21', '2020-09-12 02:48:21'),
(683, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 02:48:24', '2020-09-12 02:48:24'),
(684, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["222","333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:48:42', '2020-09-12 02:48:42'),
(685, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 02:49:30', '2020-09-12 02:49:30'),
(686, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:49:33', '2020-09-12 02:49:33'),
(687, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:49:36', '2020-09-12 02:49:36'),
(688, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 02:49:39', '2020-09-12 02:49:39'),
(689, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["222","333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:49:48', '2020-09-12 02:49:48'),
(690, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:50:06', '2020-09-12 02:50:06'),
(691, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 02:50:18', '2020-09-12 02:50:18'),
(692, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:50:35', '2020-09-12 02:50:35'),
(693, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 02:50:41', '2020-09-12 02:50:41'),
(694, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:54:49', '2020-09-12 02:54:49'),
(695, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 02:54:53', '2020-09-12 02:54:53'),
(696, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 02:54:53', '2020-09-12 02:54:53'),
(697, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 02:56:05', '2020-09-12 02:56:05'),
(698, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 02:56:05', '2020-09-12 02:56:05'),
(699, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:56:20', '2020-09-12 02:56:20'),
(700, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:56:23', '2020-09-12 02:56:23'),
(701, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"saaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 02:56:26', '2020-09-12 02:56:26'),
(702, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 02:57:40', '2020-09-12 02:57:40'),
(703, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:57:43', '2020-09-12 02:57:43'),
(704, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 02:57:46', '2020-09-12 02:57:46'),
(705, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 02:59:11', '2020-09-12 02:59:11'),
(706, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 02:59:16', '2020-09-12 02:59:16'),
(707, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:02:38', '2020-09-12 03:02:38'),
(708, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 03:02:42', '2020-09-12 03:02:42'),
(709, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:03:29', '2020-09-12 03:03:29'),
(710, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:03:33', '2020-09-12 03:03:33'),
(711, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:03:36', '2020-09-12 03:03:36'),
(712, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:03:37', '2020-09-12 03:03:37'),
(713, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:04:00', '2020-09-12 03:04:00'),
(714, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:04:03', '2020-09-12 03:04:03'),
(715, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:04:04', '2020-09-12 03:04:04'),
(716, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:04:08', '2020-09-12 03:04:08'),
(717, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:04:17', '2020-09-12 03:04:17'),
(718, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:04:39', '2020-09-12 03:04:39'),
(719, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":null,"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 03:04:43', '2020-09-12 03:04:43'),
(720, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:04:43', '2020-09-12 03:04:43'),
(721, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:06:16', '2020-09-12 03:06:16'),
(722, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":"111","bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:06:23', '2020-09-12 03:06:23'),
(723, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:06:32', '2020-09-12 03:06:32'),
(724, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:06:37', '2020-09-12 03:06:37'),
(725, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["222",null,"333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:06:44', '2020-09-12 03:06:44'),
(726, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:08:46', '2020-09-12 03:08:46'),
(727, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:08:48', '2020-09-12 03:08:48'),
(728, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:08:50', '2020-09-12 03:08:50'),
(729, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:08:53', '2020-09-12 03:08:53'),
(730, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:09:24', '2020-09-12 03:09:24'),
(731, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:09:27', '2020-09-12 03:09:27'),
(732, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:09:29', '2020-09-12 03:09:29'),
(733, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:11:30', '2020-09-12 03:11:30'),
(734, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:20:27', '2020-09-12 03:20:27'),
(735, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:20:43', '2020-09-12 03:20:43'),
(736, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":["111","222",null,"333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:21:03', '2020-09-12 03:21:03'),
(737, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:30:10', '2020-09-12 03:30:10'),
(738, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:30:12', '2020-09-12 03:30:12'),
(739, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:30:20', '2020-09-12 03:30:20'),
(740, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":["111","222",null,"333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:30:29', '2020-09-12 03:30:29'),
(741, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:30:30', '2020-09-12 03:30:30');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(742, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:30:51', '2020-09-12 03:30:51'),
(743, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":["111","222","333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:31:16', '2020-09-12 03:31:16'),
(744, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:34:28', '2020-09-12 03:34:28'),
(745, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":"111","bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 03:34:34', '2020-09-12 03:34:34'),
(746, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:34:35', '2020-09-12 03:34:35'),
(747, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:34:49', '2020-09-12 03:34:49'),
(748, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["111","333","33333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:34:59', '2020-09-12 03:34:59'),
(749, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:36:39', '2020-09-12 03:36:39'),
(750, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:36:41', '2020-09-12 03:36:41'),
(751, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":"111","bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:36:47', '2020-09-12 03:36:47'),
(752, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:36:49', '2020-09-12 03:36:49'),
(753, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:36:52', '2020-09-12 03:36:52'),
(754, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["111","22","33333",null,null],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:37:05', '2020-09-12 03:37:05'),
(755, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:37:34', '2020-09-12 03:37:34'),
(756, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:37:35', '2020-09-12 03:37:35'),
(757, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:37:38', '2020-09-12 03:37:38'),
(758, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["111","333","fsdfg"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:37:45', '2020-09-12 03:37:45'),
(759, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:38:14', '2020-09-12 03:38:14'),
(760, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:38:18', '2020-09-12 03:38:18'),
(761, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["111","222",null,"333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:38:27', '2020-09-12 03:38:27'),
(762, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:38:27', '2020-09-12 03:38:27'),
(763, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:38:59', '2020-09-12 03:38:59'),
(764, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["111","222",null,"333"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:39:08', '2020-09-12 03:39:08'),
(765, 1, 'admin/symptomDes', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:39:26', '2020-09-12 03:39:26'),
(766, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:39:29', '2020-09-12 03:39:29'),
(767, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 03:39:35', '2020-09-12 03:39:35'),
(768, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 03:39:41', '2020-09-12 03:39:41'),
(769, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"sss","url":null,"other_names":["111",null,"333",null,"555"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 03:39:50', '2020-09-12 03:39:50'),
(770, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 03:39:51', '2020-09-12 03:39:51'),
(771, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:17:32', '2020-09-12 05:17:32'),
(772, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 05:19:16', '2020-09-12 05:19:16'),
(773, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":["111,333,555","222","444"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom\\/5"}', '2020-09-12 05:26:17', '2020-09-12 05:26:17'),
(774, 1, 'admin/symptom/5', 'GET', '127.0.0.1', '[]', '2020-09-12 05:26:18', '2020-09-12 05:26:18'),
(775, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:26:22', '2020-09-12 05:26:22'),
(776, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 05:28:09', '2020-09-12 05:28:09'),
(777, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:28:13', '2020-09-12 05:28:13'),
(778, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 05:28:16', '2020-09-12 05:28:16'),
(779, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 05:28:54', '2020-09-12 05:28:54'),
(780, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:28:57', '2020-09-12 05:28:57'),
(781, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:29:01', '2020-09-12 05:29:01'),
(782, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:29:05', '2020-09-12 05:29:05'),
(783, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:30:23', '2020-09-12 05:30:23'),
(784, 1, 'admin/symptom/2/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:30:32', '2020-09-12 05:30:32'),
(785, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:42:30', '2020-09-12 05:42:30'),
(786, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:42:32', '2020-09-12 05:42:32'),
(787, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 05:57:57', '2020-09-12 05:57:57'),
(788, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 05:58:24', '2020-09-12 05:58:24'),
(789, 1, 'admin/subject', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:58:35', '2020-09-12 05:58:35'),
(790, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:58:39', '2020-09-12 05:58:39'),
(791, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 05:58:45', '2020-09-12 05:58:45'),
(792, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 05:58:53', '2020-09-12 05:58:53'),
(793, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:03:14', '2020-09-12 06:03:14'),
(794, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:03:23', '2020-09-12 06:03:23'),
(795, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:05:40', '2020-09-12 06:05:40'),
(796, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:06:05', '2020-09-12 06:06:05'),
(797, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:06:17', '2020-09-12 06:06:17'),
(798, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:06:22', '2020-09-12 06:06:22'),
(799, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:07:43', '2020-09-12 06:07:43'),
(800, 1, 'admin/symptom/4/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:07:45', '2020-09-12 06:07:45'),
(801, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:07:48', '2020-09-12 06:07:48'),
(802, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:07:49', '2020-09-12 06:07:49'),
(803, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 06:22:24', '2020-09-12 06:22:24'),
(804, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '[]', '2020-09-12 06:25:54', '2020-09-12 06:25:54'),
(805, 1, 'admin', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:25:57', '2020-09-12 06:25:57'),
(806, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:26:00', '2020-09-12 06:26:00'),
(807, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:26:04', '2020-09-12 06:26:04'),
(808, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:26:08', '2020-09-12 06:26:08'),
(809, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:26:19', '2020-09-12 06:26:19'),
(810, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:26:29', '2020-09-12 06:26:29'),
(811, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:29:02', '2020-09-12 06:29:02'),
(812, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:30:43', '2020-09-12 06:30:43'),
(813, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:32:27', '2020-09-12 06:32:27'),
(814, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:37:13', '2020-09-12 06:37:13'),
(815, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:37:21', '2020-09-12 06:37:21'),
(816, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:37:57', '2020-09-12 06:37:57'),
(817, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:38:01', '2020-09-12 06:38:01'),
(818, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:38:30', '2020-09-12 06:38:30'),
(819, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:38:46', '2020-09-12 06:38:46'),
(820, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:38:55', '2020-09-12 06:38:55'),
(821, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:39:05', '2020-09-12 06:39:05'),
(822, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:39:24', '2020-09-12 06:39:24'),
(823, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:42:06', '2020-09-12 06:42:06'),
(824, 1, 'admin/symptom/4/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:46:56', '2020-09-12 06:46:56'),
(825, 1, 'admin/symptom/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:46:59', '2020-09-12 06:46:59'),
(826, 1, 'admin/symptom/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:47:33', '2020-09-12 06:47:33'),
(827, 1, 'admin/symptom/3/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 06:49:39', '2020-09-12 06:49:39'),
(828, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:49:48', '2020-09-12 06:49:48'),
(829, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:49:50', '2020-09-12 06:49:50'),
(830, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:49:53', '2020-09-12 06:49:53'),
(831, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 06:49:56', '2020-09-12 06:49:56'),
(832, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:03:30', '2020-09-12 07:03:30'),
(833, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:03:42', '2020-09-12 07:03:42'),
(834, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:03:45', '2020-09-12 07:03:45'),
(835, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:04:12', '2020-09-12 07:04:12'),
(836, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:05:50', '2020-09-12 07:05:50'),
(837, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:06:43', '2020-09-12 07:06:43'),
(838, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:08:23', '2020-09-12 07:08:23'),
(839, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:09:42', '2020-09-12 07:09:42'),
(840, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:10:03', '2020-09-12 07:10:03'),
(841, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:11:25', '2020-09-12 07:11:25'),
(842, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:11:48', '2020-09-12 07:11:48'),
(843, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:17:18', '2020-09-12 07:17:18'),
(844, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:17:20', '2020-09-12 07:17:20'),
(845, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:20:11', '2020-09-12 07:20:11'),
(846, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:22:00', '2020-09-12 07:22:00'),
(847, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:22:32', '2020-09-12 07:22:32'),
(848, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:23:36', '2020-09-12 07:23:36'),
(849, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:24:15', '2020-09-12 07:24:15'),
(850, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:24:18', '2020-09-12 07:24:18'),
(851, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:24:19', '2020-09-12 07:24:19'),
(852, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:25:19', '2020-09-12 07:25:19'),
(853, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:25:40', '2020-09-12 07:25:40'),
(854, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:26:00', '2020-09-12 07:26:00'),
(855, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:26:19', '2020-09-12 07:26:19'),
(856, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:26:43', '2020-09-12 07:26:43'),
(857, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:30:08', '2020-09-12 07:30:08'),
(858, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:32:09', '2020-09-12 07:32:09'),
(859, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:32:39', '2020-09-12 07:32:39'),
(860, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:32:41', '2020-09-12 07:32:41'),
(861, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 07:32:50', '2020-09-12 07:32:50'),
(862, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 07:32:51', '2020-09-12 07:32:51'),
(863, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 07:32:58', '2020-09-12 07:32:58'),
(864, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 07:33:00', '2020-09-12 07:33:00'),
(865, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:33:44', '2020-09-12 07:33:44'),
(866, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:34:20', '2020-09-12 07:34:20'),
(867, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:35:39', '2020-09-12 07:35:39'),
(868, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:35:56', '2020-09-12 07:35:56'),
(869, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:37:23', '2020-09-12 07:37:23'),
(870, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:37:24', '2020-09-12 07:37:24'),
(871, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:37:24', '2020-09-12 07:37:24'),
(872, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:37:25', '2020-09-12 07:37:25'),
(873, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:37:25', '2020-09-12 07:37:25'),
(874, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:44:24', '2020-09-12 07:44:24'),
(875, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:44:28', '2020-09-12 07:44:28'),
(876, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:45:13', '2020-09-12 07:45:13'),
(877, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:48:16', '2020-09-12 07:48:16'),
(878, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:54:16', '2020-09-12 07:54:16'),
(879, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:55:04', '2020-09-12 07:55:04'),
(880, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:55:17', '2020-09-12 07:55:17'),
(881, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:58:55', '2020-09-12 07:58:55'),
(882, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 07:59:48', '2020-09-12 07:59:48'),
(883, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 08:01:25', '2020-09-12 08:01:25'),
(884, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 08:01:53', '2020-09-12 08:01:53'),
(885, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 08:02:44', '2020-09-12 08:02:44'),
(886, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 08:03:00', '2020-09-12 08:03:00'),
(887, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '[]', '2020-09-12 08:03:07', '2020-09-12 08:03:07'),
(888, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":["666"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT"}', '2020-09-12 08:03:31', '2020-09-12 08:03:31'),
(889, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 08:03:31', '2020-09-12 08:03:31'),
(890, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 08:03:34', '2020-09-12 08:03:34'),
(891, 1, 'admin/symptom/5', 'PUT', '127.0.0.1', '{"zh_name":"aaa","url":null,"other_names":["666","777","888","999"],"bodypart_id":"4","common":"off","_token":"TtnC1KpN7NMXNjifyuCfZTsHoxRBypIZXpM7PGhC","_method":"PUT","_previous_":"http:\\/\\/medical.local\\/admin\\/symptom"}', '2020-09-12 08:03:46', '2020-09-12 08:03:46'),
(892, 1, 'admin/symptom', 'GET', '127.0.0.1', '[]', '2020-09-12 08:03:46', '2020-09-12 08:03:46'),
(893, 1, 'admin/symptom/5/edit', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 08:03:49', '2020-09-12 08:03:49'),
(894, 1, 'admin/symptom', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 08:03:53', '2020-09-12 08:03:53'),
(895, 1, 'admin/symptom/create', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2020-09-12 08:03:54', '2020-09-12 08:03:54');

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
(1, 'admin', '$2y$10$gKtc1YC/Z6I6gBRB7vPty.whGvzkRTNxkOtEC3Zs77.PWkcsL6tkK', 'Administrator', NULL, 'EsoWEiNaODKvlvQNHY2PEbcU6jwAufwABDJN12S1QlKEQrQEjHU79JwKhAeI', '2020-08-21 06:31:36', '2020-08-21 06:31:36');

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
(1, '頭部', '2020-08-28 09:59:14', '2020-09-11 23:47:43'),
(2, '肩頸背', '2020-08-28 09:59:42', '2020-09-11 23:48:02'),
(3, '胸部', '2020-09-11 23:48:09', '2020-09-11 23:48:09'),
(4, '腹部', '2020-09-11 23:48:14', '2020-09-11 23:48:14'),
(5, '手', '2020-09-11 23:48:20', '2020-09-11 23:48:20'),
(6, '生殖器官', '2020-09-11 23:48:31', '2020-09-11 23:48:31'),
(7, '臀部', '2020-09-11 23:48:41', '2020-09-11 23:48:41'),
(8, '腳', '2020-09-11 23:48:48', '2020-09-11 23:48:48'),
(9, '其他', '2020-09-11 23:48:55', '2020-09-11 23:48:55');

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
  `case_sharing` text COLLATE utf8mb4_unicode_ci COMMENT 'Separated by ","',
  `relative_illness` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Separated by ",", list by id',
  `source_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `mdc_illness_symptoms`
--

CREATE TABLE `mdc_illness_symptoms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `illness_id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL,
  `if_main` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `symptom_des` blob NOT NULL,
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
(1, '兒童科', '2020-08-28 09:40:21', '2020-08-28 09:40:21'),
(2, '內科', '2020-09-11 23:49:15', '2020-09-11 23:49:15'),
(3, '外科', '2020-09-11 23:49:23', '2020-09-11 23:49:23'),
(4, '婦產科', '2020-09-11 23:49:30', '2020-09-11 23:49:30'),
(5, '專職醫療', '2020-09-11 23:49:45', '2020-09-11 23:49:45'),
(6, '急症科', '2020-09-11 23:49:56', '2020-09-11 23:50:09'),
(7, '放射科', '2020-09-11 23:50:20', '2020-09-11 23:50:20'),
(8, '痛症', '2020-09-11 23:50:46', '2020-09-11 23:50:46'),
(9, '眼科', '2020-09-11 23:50:55', '2020-09-11 23:50:55'),
(10, '矯形及創傷外科', '2020-09-11 23:51:10', '2020-09-11 23:51:10'),
(11, '神經外科', '2020-09-11 23:51:19', '2020-09-11 23:51:19'),
(12, '精神科', '2020-09-11 23:51:25', '2020-09-11 23:51:25'),
(13, '耳鼻喉科', '2020-09-11 23:51:31', '2020-09-11 23:51:31'),
(14, '臨床腫瘤科', '2020-09-11 23:51:43', '2020-09-11 23:51:43'),
(15, '護理', '2020-09-11 23:51:48', '2020-09-11 23:51:48'),
(16, '麻醉科', '2020-09-11 23:51:53', '2020-09-11 23:51:53');

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
(1, '胸痛', NULL, NULL, 3, 0, '2020-08-28 11:24:21', '2020-09-11 23:58:54'),
(2, '頭痛', NULL, NULL, 1, 0, '2020-09-12 01:40:00', '2020-09-12 01:49:57'),
(3, 'sdf', NULL, NULL, 2, 0, '2020-09-12 02:01:20', '2020-09-12 02:01:20'),
(4, 'sad', NULL, NULL, 2, 0, '2020-09-12 02:04:08', '2020-09-12 02:04:08'),
(5, 'aaa', NULL, '666,777,888,999', 4, 0, '2020-09-12 02:14:42', '2020-09-12 08:03:46');

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
(7, '2020_08_18_151537_create_symptom_des_table', 1),
(8, '2020_09_12_150155_create_illness_table', 2),
(9, '2020_09_12_050155_create_illness_table', 3),
(10, '2020_09_12_064146_create_illness_sym_table', 4);

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
-- Indexes for table `mdc_illness_symptoms`
--
ALTER TABLE `mdc_illness_symptoms`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `mdc_illness`
--
ALTER TABLE `mdc_illness`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mdc_illness_symptoms`
--
ALTER TABLE `mdc_illness_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mdc_subjects`
--
ALTER TABLE `mdc_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `mdc_symptoms`
--
ALTER TABLE `mdc_symptoms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
