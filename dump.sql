-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лют 25 2025 р., 08:45
-- Версія сервера: 10.4.32-MariaDB
-- Версія PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `enjoy`
--

-- --------------------------------------------------------

--
-- Структура таблиці `bb_actionscheduler_actions`
--

CREATE TABLE `bb_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_actionscheduler_actions`
--

INSERT INTO `bb_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(0, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-14 18:25:04', '2025-02-14 18:25:04', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739557504;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739557504;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-14 18:26:58', '2025-02-14 18:26:58', 0, NULL),
(46, 'woocommerce_cleanup_draft_orders', 'complete', '2024-12-18 21:46:45', '2024-12-18 21:46:45', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1734558405;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1734558405;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-10 21:44:46', '2025-02-10 21:44:46', 0, NULL),
(48, 'woocommerce_run_on_woocommerce_admin_updated', 'complete', '2025-02-10 21:44:39', '2025-02-10 21:44:39', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739223879;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739223879;}', 3, 1, '2025-02-10 21:45:02', '2025-02-10 21:45:02', 0, NULL),
(49, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-11 21:44:46', '2025-02-11 21:44:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739310286;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739310286;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-11 21:45:11', '2025-02-11 21:45:11', 0, NULL),
(50, 'woocommerce_run_update_callback', 'complete', '2025-02-10 21:45:14', '2025-02-10 21:45:14', 10, '{\"update_callback\":\"wc_update_961_migrate_default_email_base_color\"}', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739223914;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739223914;}', 4, 1, '2025-02-10 21:45:42', '2025-02-10 21:45:42', 0, NULL),
(51, 'woocommerce_update_db_to_current_version', 'complete', '2025-02-10 21:45:16', '2025-02-10 21:45:16', 10, '{\"version\":\"9.6.1\"}', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739223916;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739223916;}', 4, 1, '2025-02-10 21:45:43', '2025-02-10 21:45:43', 0, NULL),
(52, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'failed', '2025-02-10 22:06:20', '2025-02-10 22:06:20', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-02-10 22:06:26', '2025-02-10 22:06:26', 0, NULL),
(53, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-10 22:06:23', '2025-02-10 22:06:23', 10, '[78,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739225183;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739225183;}', 4, 1, '2025-02-10 22:06:27', '2025-02-10 22:06:27', 0, NULL),
(54, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-10 22:07:21', '2025-02-10 22:07:21', 10, '[78,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739225241;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739225241;}', 4, 1, '2025-02-10 22:07:28', '2025-02-10 22:07:28', 0, NULL),
(55, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-10 22:07:53', '2025-02-10 22:07:53', 10, '[78,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739225273;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739225273;}', 4, 1, '2025-02-10 22:08:57', '2025-02-10 22:08:57', 0, NULL),
(56, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-10 22:35:56', '2025-02-10 22:35:56', 10, '[78,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739226956;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739226956;}', 4, 1, '2025-02-10 22:36:31', '2025-02-10 22:36:31', 0, NULL),
(57, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-10 22:39:02', '2025-02-10 22:39:02', 10, '[78,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739227142;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739227142;}', 4, 1, '2025-02-10 22:39:30', '2025-02-10 22:39:30', 0, NULL),
(58, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-10 22:39:51', '2025-02-10 22:39:51', 10, '[78,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739227191;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739227191;}', 4, 1, '2025-02-10 22:40:07', '2025-02-10 22:40:07', 0, NULL),
(59, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:07:02', '2025-02-11 07:07:02', 10, '[78,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257622;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257622;}', 4, 1, '2025-02-11 07:07:31', '2025-02-11 07:07:31', 0, NULL),
(60, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:08:36', '2025-02-11 07:08:36', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257716;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257716;}', 4, 1, '2025-02-11 07:08:59', '2025-02-11 07:08:59', 0, NULL),
(61, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:23', '2025-02-11 07:12:23', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257943;}', 4, 1, '2025-02-11 07:12:32', '2025-02-11 07:12:32', 0, NULL),
(62, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:34', '2025-02-11 07:12:34', 10, '[84,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257954;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257954;}', 4, 1, '2025-02-11 07:13:31', '2025-02-11 07:13:31', 0, NULL),
(63, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:38', '2025-02-11 07:12:38', 10, '[85,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257958;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257958;}', 4, 1, '2025-02-11 07:13:31', '2025-02-11 07:13:31', 0, NULL),
(64, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:40', '2025-02-11 07:12:40', 10, '[86,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257960;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257960;}', 4, 1, '2025-02-11 07:13:32', '2025-02-11 07:13:32', 0, NULL),
(65, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:42', '2025-02-11 07:12:42', 10, '[87,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257962;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257962;}', 4, 1, '2025-02-11 07:13:32', '2025-02-11 07:13:32', 0, NULL),
(66, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:44', '2025-02-11 07:12:44', 10, '[88,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257964;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257964;}', 4, 1, '2025-02-11 07:13:32', '2025-02-11 07:13:32', 0, NULL),
(67, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:46', '2025-02-11 07:12:46', 10, '[89,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257966;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257966;}', 4, 1, '2025-02-11 07:13:33', '2025-02-11 07:13:33', 0, NULL),
(68, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 07:12:48', '2025-02-11 07:12:48', 10, '[83,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739257968;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739257968;}', 4, 1, '2025-02-11 07:13:33', '2025-02-11 07:13:33', 0, NULL),
(69, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:50', '2025-02-11 13:23:50', 10, '[84,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280230;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280230;}', 4, 1, '2025-02-11 13:24:16', '2025-02-11 13:24:16', 0, NULL),
(70, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:50', '2025-02-11 13:23:50', 10, '[85,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280230;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280230;}', 4, 1, '2025-02-11 13:24:17', '2025-02-11 13:24:17', 0, NULL),
(71, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:51', '2025-02-11 13:23:51', 10, '[86,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280231;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280231;}', 4, 1, '2025-02-11 13:24:18', '2025-02-11 13:24:18', 0, NULL),
(72, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:51', '2025-02-11 13:23:51', 10, '[87,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280231;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280231;}', 4, 1, '2025-02-11 13:24:18', '2025-02-11 13:24:18', 0, NULL),
(73, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:52', '2025-02-11 13:23:52', 10, '[88,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280232;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280232;}', 4, 1, '2025-02-11 13:24:19', '2025-02-11 13:24:19', 0, NULL),
(74, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:52', '2025-02-11 13:23:52', 10, '[89,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280232;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280232;}', 4, 1, '2025-02-11 13:24:19', '2025-02-11 13:24:19', 0, NULL),
(75, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:23:59', '2025-02-11 13:23:59', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280239;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280239;}', 4, 1, '2025-02-11 13:24:21', '2025-02-11 13:24:21', 0, NULL),
(76, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:27:22', '2025-02-11 13:27:22', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739280442;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739280442;}', 4, 1, '2025-02-11 13:28:24', '2025-02-11 13:28:24', 0, NULL),
(77, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:51:05', '2025-02-11 13:51:05', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739281865;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739281865;}', 4, 1, '2025-02-11 13:52:16', '2025-02-11 13:52:16', 0, NULL),
(78, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:57:02', '2025-02-11 13:57:02', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739282222;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739282222;}', 4, 1, '2025-02-11 13:57:20', '2025-02-11 13:57:20', 0, NULL),
(79, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:57:41', '2025-02-11 13:57:41', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739282261;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739282261;}', 4, 1, '2025-02-11 13:59:05', '2025-02-11 13:59:05', 0, NULL),
(80, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-11 13:59:40', '2025-02-11 13:59:40', 10, '[90,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739282380;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739282380;}', 4, 1, '2025-02-11 14:00:06', '2025-02-11 14:00:06', 0, NULL),
(81, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-12 21:45:11', '2025-02-12 21:45:11', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739396711;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739396711;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-13 18:25:03', '2025-02-13 18:25:03', 0, NULL),
(82, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 13:49:01', '2025-02-12 13:49:01', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739368141;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739368141;}', 4, 1, '2025-02-12 13:49:37', '2025-02-12 13:49:37', 0, NULL),
(83, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:20', '2025-02-12 14:52:20', 10, '[99,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371940;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371940;}', 4, 1, '2025-02-12 14:52:37', '2025-02-12 14:52:37', 0, NULL),
(84, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:23', '2025-02-12 14:52:23', 10, '[100,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371943;}', 4, 1, '2025-02-12 14:52:38', '2025-02-12 14:52:38', 0, NULL),
(85, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:25', '2025-02-12 14:52:25', 10, '[101,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371945;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371945;}', 4, 1, '2025-02-12 14:52:39', '2025-02-12 14:52:39', 0, NULL),
(86, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:28', '2025-02-12 14:52:28', 10, '[102,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371948;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371948;}', 4, 1, '2025-02-12 14:52:39', '2025-02-12 14:52:39', 0, NULL),
(87, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:30', '2025-02-12 14:52:30', 10, '[103,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371950;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371950;}', 4, 1, '2025-02-12 14:52:40', '2025-02-12 14:52:40', 0, NULL),
(88, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:33', '2025-02-12 14:52:33', 10, '[104,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371953;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371953;}', 4, 1, '2025-02-12 14:52:41', '2025-02-12 14:52:41', 0, NULL),
(89, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:38', '2025-02-12 14:52:38', 10, '[105,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371958;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371958;}', 4, 1, '2025-02-12 14:52:43', '2025-02-12 14:52:43', 0, NULL),
(90, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:52:41', '2025-02-12 14:52:41', 10, '[99,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371961;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371961;}', 4, 1, '2025-02-12 14:52:43', '2025-02-12 14:52:43', 0, NULL),
(91, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:01', '2025-02-12 14:53:01', 10, '[99,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739371981;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739371981;}', 4, 1, '2025-02-12 14:53:44', '2025-02-12 14:53:44', 0, NULL),
(92, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:21', '2025-02-12 14:53:21', 10, '[106,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372001;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372001;}', 4, 1, '2025-02-12 14:53:46', '2025-02-12 14:53:46', 0, NULL),
(93, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:25', '2025-02-12 14:53:25', 10, '[107,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372005;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372005;}', 4, 1, '2025-02-12 14:53:47', '2025-02-12 14:53:47', 0, NULL),
(94, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:27', '2025-02-12 14:53:27', 10, '[108,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372007;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372007;}', 4, 1, '2025-02-12 14:53:48', '2025-02-12 14:53:48', 0, NULL),
(95, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:30', '2025-02-12 14:53:30', 10, '[109,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372010;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372010;}', 4, 1, '2025-02-12 14:53:49', '2025-02-12 14:53:49', 0, NULL),
(96, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:32', '2025-02-12 14:53:32', 10, '[110,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372012;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372012;}', 4, 1, '2025-02-12 14:53:49', '2025-02-12 14:53:49', 0, NULL),
(97, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:35', '2025-02-12 14:53:35', 10, '[111,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372015;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372015;}', 4, 1, '2025-02-12 14:53:50', '2025-02-12 14:53:50', 0, NULL),
(98, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:38', '2025-02-12 14:53:38', 10, '[112,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372018;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372018;}', 4, 1, '2025-02-12 14:53:50', '2025-02-12 14:53:50', 0, NULL),
(99, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:40', '2025-02-12 14:53:40', 10, '[106,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372020;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372020;}', 4, 1, '2025-02-12 14:53:51', '2025-02-12 14:53:51', 0, NULL),
(100, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:53:59', '2025-02-12 14:53:59', 10, '[106,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372039;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372039;}', 4, 1, '2025-02-12 14:55:14', '2025-02-12 14:55:14', 0, NULL),
(101, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:27', '2025-02-12 14:55:27', 10, '[113,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372127;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372127;}', 4, 1, '2025-02-12 14:55:37', '2025-02-12 14:55:37', 0, NULL),
(102, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:30', '2025-02-12 14:55:30', 10, '[114,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372130;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372130;}', 4, 1, '2025-02-12 14:55:37', '2025-02-12 14:55:37', 0, NULL),
(103, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:34', '2025-02-12 14:55:34', 10, '[115,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372134;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372134;}', 4, 1, '2025-02-12 14:55:39', '2025-02-12 14:55:39', 0, NULL),
(104, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:39', '2025-02-12 14:55:39', 10, '[116,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372139;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372139;}', 4, 1, '2025-02-12 14:55:41', '2025-02-12 14:55:41', 0, NULL),
(105, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:43', '2025-02-12 14:55:43', 10, '[117,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372143;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372143;}', 4, 1, '2025-02-12 14:56:16', '2025-02-12 14:56:16', 0, NULL),
(106, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:46', '2025-02-12 14:55:46', 10, '[118,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372146;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372146;}', 4, 1, '2025-02-12 14:56:16', '2025-02-12 14:56:16', 0, NULL),
(107, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:48', '2025-02-12 14:55:48', 10, '[119,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372148;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372148;}', 4, 1, '2025-02-12 14:56:17', '2025-02-12 14:56:17', 0, NULL),
(108, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:55:51', '2025-02-12 14:55:51', 10, '[113,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372151;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372151;}', 4, 1, '2025-02-12 14:56:17', '2025-02-12 14:56:17', 0, NULL),
(109, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 14:56:14', '2025-02-12 14:56:14', 10, '[113,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372174;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372174;}', 4, 1, '2025-02-12 14:56:19', '2025-02-12 14:56:19', 0, NULL),
(110, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:03:46', '2025-02-12 15:03:46', 10, '[120,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372626;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372626;}', 4, 1, '2025-02-12 15:04:28', '2025-02-12 15:04:28', 0, NULL),
(111, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:03:50', '2025-02-12 15:03:50', 10, '[121,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372630;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372630;}', 4, 1, '2025-02-12 15:04:29', '2025-02-12 15:04:29', 0, NULL),
(112, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:03:52', '2025-02-12 15:03:52', 10, '[122,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372632;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372632;}', 4, 1, '2025-02-12 15:04:30', '2025-02-12 15:04:30', 0, NULL),
(113, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:03:55', '2025-02-12 15:03:55', 10, '[123,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372635;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372635;}', 4, 1, '2025-02-12 15:04:31', '2025-02-12 15:04:31', 0, NULL),
(114, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:03:57', '2025-02-12 15:03:57', 10, '[124,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372637;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372637;}', 4, 1, '2025-02-12 15:04:32', '2025-02-12 15:04:32', 0, NULL),
(115, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:04:00', '2025-02-12 15:04:00', 10, '[125,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372640;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372640;}', 4, 1, '2025-02-12 15:04:33', '2025-02-12 15:04:33', 0, NULL),
(116, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:04:02', '2025-02-12 15:04:02', 10, '[126,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372642;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372642;}', 4, 1, '2025-02-12 15:04:33', '2025-02-12 15:04:33', 0, NULL),
(117, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:04:04', '2025-02-12 15:04:04', 10, '[120,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372644;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372644;}', 4, 1, '2025-02-12 15:04:34', '2025-02-12 15:04:34', 0, NULL),
(118, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:04:33', '2025-02-12 15:04:33', 10, '[120,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372673;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372673;}', 4, 1, '2025-02-12 15:04:36', '2025-02-12 15:04:36', 0, NULL),
(119, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:33', '2025-02-12 15:06:33', 10, '[127,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372793;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372793;}', 4, 1, '2025-02-12 15:06:36', '2025-02-12 15:06:36', 0, NULL),
(120, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:38', '2025-02-12 15:06:38', 10, '[128,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372798;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372798;}', 4, 1, '2025-02-12 15:06:57', '2025-02-12 15:06:57', 0, NULL),
(121, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:42', '2025-02-12 15:06:42', 10, '[129,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372802;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372802;}', 4, 1, '2025-02-12 15:06:58', '2025-02-12 15:06:58', 0, NULL),
(122, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:44', '2025-02-12 15:06:44', 10, '[130,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372804;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372804;}', 4, 1, '2025-02-12 15:06:58', '2025-02-12 15:06:58', 0, NULL),
(123, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:47', '2025-02-12 15:06:47', 10, '[131,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372807;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372807;}', 4, 1, '2025-02-12 15:06:59', '2025-02-12 15:06:59', 0, NULL),
(124, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:50', '2025-02-12 15:06:50', 10, '[132,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372810;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372810;}', 4, 1, '2025-02-12 15:07:00', '2025-02-12 15:07:00', 0, NULL),
(125, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:53', '2025-02-12 15:06:53', 10, '[133,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372813;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372813;}', 4, 1, '2025-02-12 15:07:01', '2025-02-12 15:07:01', 0, NULL),
(126, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:06:56', '2025-02-12 15:06:56', 10, '[127,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372816;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372816;}', 4, 1, '2025-02-12 15:07:01', '2025-02-12 15:07:01', 0, NULL),
(127, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-12 15:07:09', '2025-02-12 15:07:09', 10, '[127,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739372829;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739372829;}', 4, 1, '2025-02-12 15:07:33', '2025-02-12 15:07:33', 0, NULL),
(128, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-15 18:26:58', '2025-02-15 18:26:58', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739644018;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739644018;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-15 18:28:52', '2025-02-15 18:28:52', 0, NULL),
(129, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-16 18:28:52', '2025-02-16 18:28:52', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739730532;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739730532;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-16 18:29:34', '2025-02-16 18:29:34', 0, NULL),
(130, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-17 18:29:34', '2025-02-17 18:29:34', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739816974;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739816974;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-17 18:30:56', '2025-02-17 18:30:56', 0, NULL),
(131, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-18 18:30:56', '2025-02-18 18:30:56', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739903456;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739903456;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-18 19:17:14', '2025-02-18 19:17:14', 0, NULL),
(132, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-18 13:08:43', '2025-02-18 13:08:43', 10, '[76,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739884123;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739884123;}', 4, 1, '2025-02-18 13:10:42', '2025-02-18 13:10:42', 0, NULL),
(133, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-18 13:08:43', '2025-02-18 13:08:43', 10, '[77,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1739884123;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1739884123;}', 4, 1, '2025-02-18 13:10:43', '2025-02-18 13:10:43', 0, NULL),
(134, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-19 19:17:14', '2025-02-19 19:17:14', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1739992634;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1739992634;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-19 19:17:47', '2025-02-19 19:17:47', 0, NULL),
(135, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-20 19:17:47', '2025-02-20 19:17:47', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1740079067;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1740079067;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-20 19:18:42', '2025-02-20 19:18:42', 0, NULL),
(136, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-21 19:18:42', '2025-02-21 19:18:42', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1740165522;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1740165522;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-21 19:19:26', '2025-02-21 19:19:26', 0, NULL),
(137, 'woocommerce_cleanup_draft_orders', 'complete', '2025-02-22 19:19:26', '2025-02-22 19:19:26', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1740251966;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1740251966;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-02-24 18:48:18', '2025-02-24 18:48:18', 0, NULL),
(138, 'woocommerce_cleanup_draft_orders', 'pending', '2025-02-25 18:48:19', '2025-02-25 18:48:19', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1740509299;s:18:\"\0*\0first_timestamp\";i:1734471978;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1740509299;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(139, 'fetch_patterns', 'complete', '2025-02-24 19:03:45', '2025-02-24 19:03:45', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740423825;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740423825;}', 2, 1, '2025-02-24 19:03:58', '2025-02-24 19:03:58', 0, NULL),
(140, 'woocommerce_run_on_woocommerce_admin_updated', 'complete', '2025-02-24 19:03:53', '2025-02-24 19:03:53', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740423833;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740423833;}', 3, 1, '2025-02-24 19:04:21', '2025-02-24 19:04:21', 0, NULL),
(141, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 20:15:01', '2025-02-24 20:15:01', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740428101;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740428101;}', 4, 1, '2025-02-24 20:16:09', '2025-02-24 20:16:09', 0, NULL),
(142, 'wc-admin_import_orders', 'complete', '2025-02-24 20:31:18', '2025-02-24 20:31:18', 10, '[150]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740429078;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740429078;}', 5, 1, '2025-02-24 20:31:39', '2025-02-24 20:31:39', 0, NULL),
(143, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 20:34:22', '2025-02-24 20:34:22', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740429262;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740429262;}', 4, 1, '2025-02-24 20:34:30', '2025-02-24 20:34:30', 0, NULL),
(144, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 20:36:02', '2025-02-24 20:36:02', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740429362;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740429362;}', 4, 1, '2025-02-24 20:37:10', '2025-02-24 20:37:10', 0, NULL),
(145, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 20:46:03', '2025-02-24 20:46:03', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740429963;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740429963;}', 4, 1, '2025-02-24 20:47:11', '2025-02-24 20:47:11', 0, NULL),
(146, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 20:48:56', '2025-02-24 20:48:56', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740430136;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740430136;}', 4, 1, '2025-02-24 20:50:07', '2025-02-24 20:50:07', 0, NULL),
(147, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 20:51:18', '2025-02-24 20:51:18', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740430278;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740430278;}', 4, 1, '2025-02-24 20:51:43', '2025-02-24 20:51:43', 0, NULL),
(148, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-24 21:07:16', '2025-02-24 21:07:16', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740431236;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740431236;}', 4, 1, '2025-02-24 21:07:43', '2025-02-24 21:07:43', 0, NULL),
(149, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2025-02-25 07:42:38', '2025-02-25 07:42:38', 10, '[83,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1740469358;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1740469358;}', 4, 1, '2025-02-25 07:43:54', '2025-02-25 07:43:54', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_actionscheduler_claims`
--

CREATE TABLE `bb_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_actionscheduler_groups`
--

CREATE TABLE `bb_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_actionscheduler_groups`
--

INSERT INTO `bb_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, ''),
(3, 'woocommerce-remote-inbox-engine'),
(4, 'woocommerce-db-updates'),
(5, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_actionscheduler_logs`
--

CREATE TABLE `bb_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_actionscheduler_logs`
--

INSERT INTO `bb_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(0, 81, 'action started via WP Cron', '2025-02-13 18:25:02', '2025-02-13 18:25:02'),
(5, 46, 'action created', '2024-12-17 21:46:45', '2024-12-17 21:46:45'),
(11, 48, 'action created', '2025-02-10 21:44:40', '2025-02-10 21:44:40'),
(12, 46, 'action started via WP Cron', '2025-02-10 21:44:45', '2025-02-10 21:44:45'),
(13, 46, 'action complete via WP Cron', '2025-02-10 21:44:45', '2025-02-10 21:44:45'),
(14, 49, 'action created', '2025-02-10 21:44:46', '2025-02-10 21:44:46'),
(15, 48, 'action started via WP Cron', '2025-02-10 21:44:46', '2025-02-10 21:44:46'),
(16, 48, 'action complete via WP Cron', '2025-02-10 21:45:02', '2025-02-10 21:45:02'),
(17, 50, 'action created', '2025-02-10 21:45:14', '2025-02-10 21:45:14'),
(18, 51, 'action created', '2025-02-10 21:45:15', '2025-02-10 21:45:15'),
(19, 50, 'action started via WP Cron', '2025-02-10 21:45:41', '2025-02-10 21:45:41'),
(20, 50, 'action complete via WP Cron', '2025-02-10 21:45:42', '2025-02-10 21:45:42'),
(21, 51, 'action started via WP Cron', '2025-02-10 21:45:42', '2025-02-10 21:45:42'),
(22, 51, 'action complete via WP Cron', '2025-02-10 21:45:43', '2025-02-10 21:45:43'),
(23, 52, 'action created', '2025-02-10 22:06:20', '2025-02-10 22:06:20'),
(24, 53, 'action created', '2025-02-10 22:06:22', '2025-02-10 22:06:22'),
(25, 52, 'action started via Async Request', '2025-02-10 22:06:26', '2025-02-10 22:06:26'),
(26, 52, 'action failed via Async Request: Scheduled action for woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications will not be executed as no callbacks are registered.', '2025-02-10 22:06:26', '2025-02-10 22:06:26'),
(27, 53, 'action started via Async Request', '2025-02-10 22:06:26', '2025-02-10 22:06:26'),
(28, 53, 'action complete via Async Request', '2025-02-10 22:06:27', '2025-02-10 22:06:27'),
(29, 54, 'action created', '2025-02-10 22:07:20', '2025-02-10 22:07:20'),
(30, 54, 'action started via Async Request', '2025-02-10 22:07:27', '2025-02-10 22:07:27'),
(31, 54, 'action complete via Async Request', '2025-02-10 22:07:28', '2025-02-10 22:07:28'),
(32, 55, 'action created', '2025-02-10 22:07:52', '2025-02-10 22:07:52'),
(33, 55, 'action started via WP Cron', '2025-02-10 22:08:56', '2025-02-10 22:08:56'),
(34, 55, 'action complete via WP Cron', '2025-02-10 22:08:57', '2025-02-10 22:08:57'),
(35, 56, 'action created', '2025-02-10 22:35:55', '2025-02-10 22:35:55'),
(36, 56, 'action started via WP Cron', '2025-02-10 22:36:31', '2025-02-10 22:36:31'),
(37, 56, 'action complete via WP Cron', '2025-02-10 22:36:31', '2025-02-10 22:36:31'),
(38, 57, 'action created', '2025-02-10 22:39:01', '2025-02-10 22:39:01'),
(39, 57, 'action started via WP Cron', '2025-02-10 22:39:29', '2025-02-10 22:39:29'),
(40, 57, 'action complete via WP Cron', '2025-02-10 22:39:29', '2025-02-10 22:39:29'),
(41, 58, 'action created', '2025-02-10 22:39:50', '2025-02-10 22:39:50'),
(42, 58, 'action started via Async Request', '2025-02-10 22:40:07', '2025-02-10 22:40:07'),
(43, 58, 'action complete via Async Request', '2025-02-10 22:40:07', '2025-02-10 22:40:07'),
(44, 59, 'action created', '2025-02-11 07:07:01', '2025-02-11 07:07:01'),
(45, 59, 'action started via WP Cron', '2025-02-11 07:07:31', '2025-02-11 07:07:31'),
(46, 59, 'action complete via WP Cron', '2025-02-11 07:07:31', '2025-02-11 07:07:31'),
(47, 60, 'action created', '2025-02-11 07:08:35', '2025-02-11 07:08:35'),
(48, 60, 'action started via Async Request', '2025-02-11 07:08:58', '2025-02-11 07:08:58'),
(49, 60, 'action complete via Async Request', '2025-02-11 07:08:59', '2025-02-11 07:08:59'),
(50, 61, 'action created', '2025-02-11 07:12:23', '2025-02-11 07:12:23'),
(51, 61, 'action started via WP Cron', '2025-02-11 07:12:30', '2025-02-11 07:12:30'),
(52, 61, 'action complete via WP Cron', '2025-02-11 07:12:31', '2025-02-11 07:12:31'),
(53, 62, 'action created', '2025-02-11 07:12:33', '2025-02-11 07:12:33'),
(54, 63, 'action created', '2025-02-11 07:12:37', '2025-02-11 07:12:37'),
(55, 64, 'action created', '2025-02-11 07:12:39', '2025-02-11 07:12:39'),
(56, 65, 'action created', '2025-02-11 07:12:41', '2025-02-11 07:12:41'),
(57, 66, 'action created', '2025-02-11 07:12:43', '2025-02-11 07:12:43'),
(58, 67, 'action created', '2025-02-11 07:12:45', '2025-02-11 07:12:45'),
(59, 68, 'action created', '2025-02-11 07:12:47', '2025-02-11 07:12:47'),
(60, 62, 'action started via WP Cron', '2025-02-11 07:13:30', '2025-02-11 07:13:30'),
(61, 62, 'action complete via WP Cron', '2025-02-11 07:13:31', '2025-02-11 07:13:31'),
(62, 63, 'action started via WP Cron', '2025-02-11 07:13:31', '2025-02-11 07:13:31'),
(63, 63, 'action complete via WP Cron', '2025-02-11 07:13:31', '2025-02-11 07:13:31'),
(64, 64, 'action started via WP Cron', '2025-02-11 07:13:31', '2025-02-11 07:13:31'),
(65, 64, 'action complete via WP Cron', '2025-02-11 07:13:32', '2025-02-11 07:13:32'),
(66, 65, 'action started via WP Cron', '2025-02-11 07:13:32', '2025-02-11 07:13:32'),
(67, 65, 'action complete via WP Cron', '2025-02-11 07:13:32', '2025-02-11 07:13:32'),
(68, 66, 'action started via WP Cron', '2025-02-11 07:13:32', '2025-02-11 07:13:32'),
(69, 66, 'action complete via WP Cron', '2025-02-11 07:13:32', '2025-02-11 07:13:32'),
(70, 67, 'action started via WP Cron', '2025-02-11 07:13:32', '2025-02-11 07:13:32'),
(71, 67, 'action complete via WP Cron', '2025-02-11 07:13:33', '2025-02-11 07:13:33'),
(72, 68, 'action started via WP Cron', '2025-02-11 07:13:33', '2025-02-11 07:13:33'),
(73, 68, 'action complete via WP Cron', '2025-02-11 07:13:33', '2025-02-11 07:13:33'),
(74, 69, 'action created', '2025-02-11 13:23:49', '2025-02-11 13:23:49'),
(75, 70, 'action created', '2025-02-11 13:23:49', '2025-02-11 13:23:49'),
(76, 71, 'action created', '2025-02-11 13:23:50', '2025-02-11 13:23:50'),
(77, 72, 'action created', '2025-02-11 13:23:50', '2025-02-11 13:23:50'),
(78, 73, 'action created', '2025-02-11 13:23:51', '2025-02-11 13:23:51'),
(79, 74, 'action created', '2025-02-11 13:23:52', '2025-02-11 13:23:52'),
(80, 75, 'action created', '2025-02-11 13:23:59', '2025-02-11 13:23:59'),
(81, 69, 'action started via Async Request', '2025-02-11 13:24:16', '2025-02-11 13:24:16'),
(82, 69, 'action complete via Async Request', '2025-02-11 13:24:16', '2025-02-11 13:24:16'),
(83, 70, 'action started via Async Request', '2025-02-11 13:24:16', '2025-02-11 13:24:16'),
(84, 70, 'action complete via Async Request', '2025-02-11 13:24:16', '2025-02-11 13:24:16'),
(85, 71, 'action started via Async Request', '2025-02-11 13:24:17', '2025-02-11 13:24:17'),
(86, 71, 'action complete via Async Request', '2025-02-11 13:24:18', '2025-02-11 13:24:18'),
(87, 72, 'action started via Async Request', '2025-02-11 13:24:18', '2025-02-11 13:24:18'),
(88, 72, 'action complete via Async Request', '2025-02-11 13:24:18', '2025-02-11 13:24:18'),
(89, 73, 'action started via Async Request', '2025-02-11 13:24:19', '2025-02-11 13:24:19'),
(90, 73, 'action complete via Async Request', '2025-02-11 13:24:19', '2025-02-11 13:24:19'),
(91, 74, 'action started via Async Request', '2025-02-11 13:24:19', '2025-02-11 13:24:19'),
(92, 74, 'action complete via Async Request', '2025-02-11 13:24:19', '2025-02-11 13:24:19'),
(93, 75, 'action started via Async Request', '2025-02-11 13:24:19', '2025-02-11 13:24:19'),
(94, 75, 'action complete via Async Request', '2025-02-11 13:24:21', '2025-02-11 13:24:21'),
(95, 76, 'action created', '2025-02-11 13:27:21', '2025-02-11 13:27:21'),
(96, 76, 'action started via WP Cron', '2025-02-11 13:28:22', '2025-02-11 13:28:22'),
(97, 76, 'action complete via WP Cron', '2025-02-11 13:28:24', '2025-02-11 13:28:24'),
(98, 77, 'action created', '2025-02-11 13:51:04', '2025-02-11 13:51:04'),
(99, 77, 'action started via WP Cron', '2025-02-11 13:52:15', '2025-02-11 13:52:15'),
(100, 77, 'action complete via WP Cron', '2025-02-11 13:52:16', '2025-02-11 13:52:16'),
(101, 78, 'action created', '2025-02-11 13:57:01', '2025-02-11 13:57:01'),
(102, 78, 'action started via Async Request', '2025-02-11 13:57:18', '2025-02-11 13:57:18'),
(103, 78, 'action complete via Async Request', '2025-02-11 13:57:20', '2025-02-11 13:57:20'),
(104, 79, 'action created', '2025-02-11 13:57:40', '2025-02-11 13:57:40'),
(105, 79, 'action started via WP Cron', '2025-02-11 13:59:03', '2025-02-11 13:59:03'),
(106, 79, 'action complete via WP Cron', '2025-02-11 13:59:05', '2025-02-11 13:59:05'),
(107, 80, 'action created', '2025-02-11 13:59:39', '2025-02-11 13:59:39'),
(108, 80, 'action started via Async Request', '2025-02-11 14:00:06', '2025-02-11 14:00:06'),
(109, 80, 'action complete via Async Request', '2025-02-11 14:00:06', '2025-02-11 14:00:06'),
(110, 49, 'action started via WP Cron', '2025-02-11 21:45:10', '2025-02-11 21:45:10'),
(111, 49, 'action complete via WP Cron', '2025-02-11 21:45:11', '2025-02-11 21:45:11'),
(112, 81, 'action created', '2025-02-11 21:45:11', '2025-02-11 21:45:11'),
(113, 82, 'action created', '2025-02-12 13:49:00', '2025-02-12 13:49:00'),
(114, 82, 'action started via WP Cron', '2025-02-12 13:49:36', '2025-02-12 13:49:36'),
(115, 82, 'action complete via WP Cron', '2025-02-12 13:49:37', '2025-02-12 13:49:37'),
(116, 83, 'action created', '2025-02-12 14:52:19', '2025-02-12 14:52:19'),
(117, 84, 'action created', '2025-02-12 14:52:22', '2025-02-12 14:52:22'),
(118, 85, 'action created', '2025-02-12 14:52:25', '2025-02-12 14:52:25'),
(119, 86, 'action created', '2025-02-12 14:52:27', '2025-02-12 14:52:27'),
(120, 87, 'action created', '2025-02-12 14:52:29', '2025-02-12 14:52:29'),
(121, 88, 'action created', '2025-02-12 14:52:32', '2025-02-12 14:52:32'),
(122, 83, 'action started via WP Cron', '2025-02-12 14:52:33', '2025-02-12 14:52:33'),
(123, 83, 'action complete via WP Cron', '2025-02-12 14:52:37', '2025-02-12 14:52:37'),
(124, 89, 'action created', '2025-02-12 14:52:37', '2025-02-12 14:52:37'),
(125, 84, 'action started via WP Cron', '2025-02-12 14:52:37', '2025-02-12 14:52:37'),
(126, 84, 'action complete via WP Cron', '2025-02-12 14:52:38', '2025-02-12 14:52:38'),
(127, 85, 'action started via WP Cron', '2025-02-12 14:52:38', '2025-02-12 14:52:38'),
(128, 85, 'action complete via WP Cron', '2025-02-12 14:52:38', '2025-02-12 14:52:38'),
(129, 86, 'action started via WP Cron', '2025-02-12 14:52:39', '2025-02-12 14:52:39'),
(130, 86, 'action complete via WP Cron', '2025-02-12 14:52:39', '2025-02-12 14:52:39'),
(131, 87, 'action started via WP Cron', '2025-02-12 14:52:40', '2025-02-12 14:52:40'),
(132, 90, 'action created', '2025-02-12 14:52:40', '2025-02-12 14:52:40'),
(133, 87, 'action complete via WP Cron', '2025-02-12 14:52:40', '2025-02-12 14:52:40'),
(134, 88, 'action started via WP Cron', '2025-02-12 14:52:41', '2025-02-12 14:52:41'),
(135, 88, 'action complete via WP Cron', '2025-02-12 14:52:41', '2025-02-12 14:52:41'),
(136, 89, 'action started via WP Cron', '2025-02-12 14:52:42', '2025-02-12 14:52:42'),
(137, 89, 'action complete via WP Cron', '2025-02-12 14:52:43', '2025-02-12 14:52:43'),
(138, 90, 'action started via WP Cron', '2025-02-12 14:52:43', '2025-02-12 14:52:43'),
(139, 90, 'action complete via WP Cron', '2025-02-12 14:52:43', '2025-02-12 14:52:43'),
(140, 91, 'action created', '2025-02-12 14:53:00', '2025-02-12 14:53:00'),
(141, 92, 'action created', '2025-02-12 14:53:21', '2025-02-12 14:53:21'),
(142, 93, 'action created', '2025-02-12 14:53:24', '2025-02-12 14:53:24'),
(143, 94, 'action created', '2025-02-12 14:53:26', '2025-02-12 14:53:26'),
(144, 95, 'action created', '2025-02-12 14:53:29', '2025-02-12 14:53:29'),
(145, 96, 'action created', '2025-02-12 14:53:31', '2025-02-12 14:53:31'),
(146, 97, 'action created', '2025-02-12 14:53:34', '2025-02-12 14:53:34'),
(147, 98, 'action created', '2025-02-12 14:53:37', '2025-02-12 14:53:37'),
(148, 99, 'action created', '2025-02-12 14:53:39', '2025-02-12 14:53:39'),
(149, 91, 'action started via WP Cron', '2025-02-12 14:53:42', '2025-02-12 14:53:42'),
(150, 91, 'action complete via WP Cron', '2025-02-12 14:53:44', '2025-02-12 14:53:44'),
(151, 92, 'action started via WP Cron', '2025-02-12 14:53:44', '2025-02-12 14:53:44'),
(152, 92, 'action complete via WP Cron', '2025-02-12 14:53:46', '2025-02-12 14:53:46'),
(153, 93, 'action started via WP Cron', '2025-02-12 14:53:47', '2025-02-12 14:53:47'),
(154, 93, 'action complete via WP Cron', '2025-02-12 14:53:47', '2025-02-12 14:53:47'),
(155, 94, 'action started via WP Cron', '2025-02-12 14:53:47', '2025-02-12 14:53:47'),
(156, 94, 'action complete via WP Cron', '2025-02-12 14:53:48', '2025-02-12 14:53:48'),
(157, 95, 'action started via WP Cron', '2025-02-12 14:53:48', '2025-02-12 14:53:48'),
(158, 95, 'action complete via WP Cron', '2025-02-12 14:53:49', '2025-02-12 14:53:49'),
(159, 96, 'action started via WP Cron', '2025-02-12 14:53:49', '2025-02-12 14:53:49'),
(160, 96, 'action complete via WP Cron', '2025-02-12 14:53:49', '2025-02-12 14:53:49'),
(161, 97, 'action started via WP Cron', '2025-02-12 14:53:49', '2025-02-12 14:53:49'),
(162, 97, 'action complete via WP Cron', '2025-02-12 14:53:50', '2025-02-12 14:53:50'),
(163, 98, 'action started via WP Cron', '2025-02-12 14:53:50', '2025-02-12 14:53:50'),
(164, 98, 'action complete via WP Cron', '2025-02-12 14:53:50', '2025-02-12 14:53:50'),
(165, 99, 'action started via WP Cron', '2025-02-12 14:53:50', '2025-02-12 14:53:50'),
(166, 99, 'action complete via WP Cron', '2025-02-12 14:53:50', '2025-02-12 14:53:50'),
(167, 100, 'action created', '2025-02-12 14:53:58', '2025-02-12 14:53:58'),
(168, 100, 'action started via WP Cron', '2025-02-12 14:55:12', '2025-02-12 14:55:12'),
(169, 100, 'action complete via WP Cron', '2025-02-12 14:55:14', '2025-02-12 14:55:14'),
(170, 101, 'action created', '2025-02-12 14:55:26', '2025-02-12 14:55:26'),
(171, 102, 'action created', '2025-02-12 14:55:29', '2025-02-12 14:55:29'),
(172, 103, 'action created', '2025-02-12 14:55:33', '2025-02-12 14:55:33'),
(173, 101, 'action started via WP Cron', '2025-02-12 14:55:33', '2025-02-12 14:55:33'),
(174, 101, 'action complete via WP Cron', '2025-02-12 14:55:36', '2025-02-12 14:55:36'),
(175, 102, 'action started via WP Cron', '2025-02-12 14:55:37', '2025-02-12 14:55:37'),
(176, 102, 'action complete via WP Cron', '2025-02-12 14:55:37', '2025-02-12 14:55:37'),
(177, 104, 'action created', '2025-02-12 14:55:38', '2025-02-12 14:55:38'),
(178, 103, 'action started via WP Cron', '2025-02-12 14:55:38', '2025-02-12 14:55:38'),
(179, 103, 'action complete via WP Cron', '2025-02-12 14:55:39', '2025-02-12 14:55:39'),
(180, 104, 'action started via WP Cron', '2025-02-12 14:55:40', '2025-02-12 14:55:40'),
(181, 104, 'action complete via WP Cron', '2025-02-12 14:55:41', '2025-02-12 14:55:41'),
(182, 105, 'action created', '2025-02-12 14:55:43', '2025-02-12 14:55:43'),
(183, 106, 'action created', '2025-02-12 14:55:45', '2025-02-12 14:55:45'),
(184, 107, 'action created', '2025-02-12 14:55:48', '2025-02-12 14:55:48'),
(185, 108, 'action created', '2025-02-12 14:55:50', '2025-02-12 14:55:50'),
(186, 109, 'action created', '2025-02-12 14:56:13', '2025-02-12 14:56:13'),
(187, 105, 'action started via Async Request', '2025-02-12 14:56:15', '2025-02-12 14:56:15'),
(188, 105, 'action complete via Async Request', '2025-02-12 14:56:16', '2025-02-12 14:56:16'),
(189, 106, 'action started via Async Request', '2025-02-12 14:56:16', '2025-02-12 14:56:16'),
(190, 106, 'action complete via Async Request', '2025-02-12 14:56:16', '2025-02-12 14:56:16'),
(191, 107, 'action started via Async Request', '2025-02-12 14:56:16', '2025-02-12 14:56:16'),
(192, 107, 'action complete via Async Request', '2025-02-12 14:56:17', '2025-02-12 14:56:17'),
(193, 108, 'action started via Async Request', '2025-02-12 14:56:17', '2025-02-12 14:56:17'),
(194, 108, 'action complete via Async Request', '2025-02-12 14:56:17', '2025-02-12 14:56:17'),
(195, 109, 'action started via Async Request', '2025-02-12 14:56:17', '2025-02-12 14:56:17'),
(196, 109, 'action complete via Async Request', '2025-02-12 14:56:19', '2025-02-12 14:56:19'),
(197, 110, 'action created', '2025-02-12 15:03:45', '2025-02-12 15:03:45'),
(198, 111, 'action created', '2025-02-12 15:03:49', '2025-02-12 15:03:49'),
(199, 112, 'action created', '2025-02-12 15:03:51', '2025-02-12 15:03:51'),
(200, 113, 'action created', '2025-02-12 15:03:54', '2025-02-12 15:03:54'),
(201, 114, 'action created', '2025-02-12 15:03:56', '2025-02-12 15:03:56'),
(202, 115, 'action created', '2025-02-12 15:03:59', '2025-02-12 15:03:59'),
(203, 116, 'action created', '2025-02-12 15:04:01', '2025-02-12 15:04:01'),
(204, 117, 'action created', '2025-02-12 15:04:03', '2025-02-12 15:04:03'),
(205, 110, 'action started via Async Request', '2025-02-12 15:04:26', '2025-02-12 15:04:26'),
(206, 110, 'action complete via Async Request', '2025-02-12 15:04:28', '2025-02-12 15:04:28'),
(207, 111, 'action started via Async Request', '2025-02-12 15:04:28', '2025-02-12 15:04:28'),
(208, 111, 'action complete via Async Request', '2025-02-12 15:04:29', '2025-02-12 15:04:29'),
(209, 112, 'action started via Async Request', '2025-02-12 15:04:29', '2025-02-12 15:04:29'),
(210, 112, 'action complete via Async Request', '2025-02-12 15:04:30', '2025-02-12 15:04:30'),
(211, 113, 'action started via Async Request', '2025-02-12 15:04:30', '2025-02-12 15:04:30'),
(212, 113, 'action complete via Async Request', '2025-02-12 15:04:31', '2025-02-12 15:04:31'),
(213, 114, 'action started via Async Request', '2025-02-12 15:04:31', '2025-02-12 15:04:31'),
(214, 114, 'action complete via Async Request', '2025-02-12 15:04:32', '2025-02-12 15:04:32'),
(215, 115, 'action started via Async Request', '2025-02-12 15:04:32', '2025-02-12 15:04:32'),
(216, 115, 'action complete via Async Request', '2025-02-12 15:04:33', '2025-02-12 15:04:33'),
(217, 118, 'action created', '2025-02-12 15:04:32', '2025-02-12 15:04:32'),
(218, 116, 'action started via Async Request', '2025-02-12 15:04:33', '2025-02-12 15:04:33'),
(219, 116, 'action complete via Async Request', '2025-02-12 15:04:33', '2025-02-12 15:04:33'),
(220, 117, 'action started via Async Request', '2025-02-12 15:04:33', '2025-02-12 15:04:33'),
(221, 117, 'action complete via Async Request', '2025-02-12 15:04:34', '2025-02-12 15:04:34'),
(222, 118, 'action started via Async Request', '2025-02-12 15:04:34', '2025-02-12 15:04:34'),
(223, 118, 'action complete via Async Request', '2025-02-12 15:04:36', '2025-02-12 15:04:36'),
(224, 119, 'action created', '2025-02-12 15:06:32', '2025-02-12 15:06:32'),
(225, 119, 'action started via WP Cron', '2025-02-12 15:06:33', '2025-02-12 15:06:33'),
(226, 119, 'action complete via WP Cron', '2025-02-12 15:06:35', '2025-02-12 15:06:35'),
(227, 120, 'action created', '2025-02-12 15:06:37', '2025-02-12 15:06:37'),
(228, 121, 'action created', '2025-02-12 15:06:41', '2025-02-12 15:06:41'),
(229, 122, 'action created', '2025-02-12 15:06:43', '2025-02-12 15:06:43'),
(230, 123, 'action created', '2025-02-12 15:06:46', '2025-02-12 15:06:46'),
(231, 124, 'action created', '2025-02-12 15:06:49', '2025-02-12 15:06:49'),
(232, 125, 'action created', '2025-02-12 15:06:52', '2025-02-12 15:06:52'),
(233, 126, 'action created', '2025-02-12 15:06:55', '2025-02-12 15:06:55'),
(234, 120, 'action started via Async Request', '2025-02-12 15:06:57', '2025-02-12 15:06:57'),
(235, 120, 'action complete via Async Request', '2025-02-12 15:06:57', '2025-02-12 15:06:57'),
(236, 121, 'action started via Async Request', '2025-02-12 15:06:57', '2025-02-12 15:06:57'),
(237, 121, 'action complete via Async Request', '2025-02-12 15:06:58', '2025-02-12 15:06:58'),
(238, 122, 'action started via Async Request', '2025-02-12 15:06:58', '2025-02-12 15:06:58'),
(239, 122, 'action complete via Async Request', '2025-02-12 15:06:58', '2025-02-12 15:06:58'),
(240, 123, 'action started via Async Request', '2025-02-12 15:06:58', '2025-02-12 15:06:58'),
(241, 123, 'action complete via Async Request', '2025-02-12 15:06:59', '2025-02-12 15:06:59'),
(242, 124, 'action started via Async Request', '2025-02-12 15:06:59', '2025-02-12 15:06:59'),
(243, 124, 'action complete via Async Request', '2025-02-12 15:07:00', '2025-02-12 15:07:00'),
(244, 125, 'action started via Async Request', '2025-02-12 15:07:00', '2025-02-12 15:07:00'),
(245, 125, 'action complete via Async Request', '2025-02-12 15:07:00', '2025-02-12 15:07:00'),
(246, 126, 'action started via Async Request', '2025-02-12 15:07:01', '2025-02-12 15:07:01'),
(247, 126, 'action complete via Async Request', '2025-02-12 15:07:01', '2025-02-12 15:07:01'),
(248, 127, 'action created', '2025-02-12 15:07:09', '2025-02-12 15:07:09'),
(249, 127, 'action started via WP Cron', '2025-02-12 15:07:31', '2025-02-12 15:07:31'),
(250, 127, 'action complete via WP Cron', '2025-02-12 15:07:33', '2025-02-12 15:07:33'),
(251, 0, 'action started via WP Cron', '2025-02-14 18:26:57', '2025-02-14 18:26:57'),
(252, 0, 'action complete via WP Cron', '2025-02-14 18:26:58', '2025-02-14 18:26:58'),
(253, 128, 'action created', '2025-02-14 18:26:59', '2025-02-14 18:26:59'),
(254, 128, 'action started via WP Cron', '2025-02-15 18:28:52', '2025-02-15 18:28:52'),
(255, 128, 'action complete via WP Cron', '2025-02-15 18:28:52', '2025-02-15 18:28:52'),
(256, 129, 'action created', '2025-02-15 18:28:52', '2025-02-15 18:28:52'),
(257, 129, 'action started via WP Cron', '2025-02-16 18:29:34', '2025-02-16 18:29:34'),
(258, 129, 'action complete via WP Cron', '2025-02-16 18:29:34', '2025-02-16 18:29:34'),
(259, 130, 'action created', '2025-02-16 18:29:34', '2025-02-16 18:29:34'),
(260, 130, 'action started via WP Cron', '2025-02-17 18:30:56', '2025-02-17 18:30:56'),
(261, 130, 'action complete via WP Cron', '2025-02-17 18:30:56', '2025-02-17 18:30:56'),
(262, 131, 'action created', '2025-02-17 18:30:57', '2025-02-17 18:30:57'),
(263, 132, 'action created', '2025-02-18 13:08:42', '2025-02-18 13:08:42'),
(264, 133, 'action created', '2025-02-18 13:08:42', '2025-02-18 13:08:42'),
(265, 132, 'action started via WP Cron', '2025-02-18 13:10:42', '2025-02-18 13:10:42'),
(266, 132, 'action complete via WP Cron', '2025-02-18 13:10:42', '2025-02-18 13:10:42'),
(267, 133, 'action started via WP Cron', '2025-02-18 13:10:43', '2025-02-18 13:10:43'),
(268, 133, 'action complete via WP Cron', '2025-02-18 13:10:43', '2025-02-18 13:10:43'),
(269, 131, 'action started via WP Cron', '2025-02-18 19:17:13', '2025-02-18 19:17:13'),
(270, 131, 'action complete via WP Cron', '2025-02-18 19:17:14', '2025-02-18 19:17:14'),
(271, 134, 'action created', '2025-02-18 19:17:14', '2025-02-18 19:17:14'),
(272, 134, 'action started via WP Cron', '2025-02-19 19:17:46', '2025-02-19 19:17:46'),
(273, 134, 'action complete via WP Cron', '2025-02-19 19:17:47', '2025-02-19 19:17:47'),
(274, 135, 'action created', '2025-02-19 19:17:47', '2025-02-19 19:17:47'),
(275, 135, 'action started via WP Cron', '2025-02-20 19:18:41', '2025-02-20 19:18:41'),
(276, 135, 'action complete via WP Cron', '2025-02-20 19:18:42', '2025-02-20 19:18:42'),
(277, 136, 'action created', '2025-02-20 19:18:42', '2025-02-20 19:18:42'),
(278, 136, 'action started via WP Cron', '2025-02-21 19:19:25', '2025-02-21 19:19:25'),
(279, 136, 'action complete via WP Cron', '2025-02-21 19:19:25', '2025-02-21 19:19:25'),
(280, 137, 'action created', '2025-02-21 19:19:26', '2025-02-21 19:19:26'),
(281, 137, 'action started via WP Cron', '2025-02-24 18:48:16', '2025-02-24 18:48:16'),
(282, 137, 'action complete via WP Cron', '2025-02-24 18:48:18', '2025-02-24 18:48:18'),
(283, 138, 'action created', '2025-02-24 18:48:19', '2025-02-24 18:48:19'),
(284, 139, 'action created', '2025-02-24 19:03:45', '2025-02-24 19:03:45'),
(285, 140, 'action created', '2025-02-24 19:03:53', '2025-02-24 19:03:53'),
(286, 139, 'action started via Async Request', '2025-02-24 19:03:58', '2025-02-24 19:03:58'),
(287, 139, 'action complete via Async Request', '2025-02-24 19:03:58', '2025-02-24 19:03:58'),
(288, 140, 'action started via Async Request', '2025-02-24 19:04:07', '2025-02-24 19:04:07'),
(289, 140, 'action complete via Async Request', '2025-02-24 19:04:21', '2025-02-24 19:04:21'),
(290, 141, 'action created', '2025-02-24 20:15:01', '2025-02-24 20:15:01'),
(291, 141, 'action started via WP Cron', '2025-02-24 20:16:07', '2025-02-24 20:16:07'),
(292, 141, 'action complete via WP Cron', '2025-02-24 20:16:09', '2025-02-24 20:16:09'),
(293, 142, 'action created', '2025-02-24 20:31:13', '2025-02-24 20:31:13'),
(294, 142, 'action started via WP Cron', '2025-02-24 20:31:38', '2025-02-24 20:31:38'),
(295, 142, 'action complete via WP Cron', '2025-02-24 20:31:39', '2025-02-24 20:31:39'),
(296, 143, 'action created', '2025-02-24 20:34:21', '2025-02-24 20:34:21'),
(297, 143, 'action started via WP Cron', '2025-02-24 20:34:29', '2025-02-24 20:34:29'),
(298, 143, 'action complete via WP Cron', '2025-02-24 20:34:30', '2025-02-24 20:34:30'),
(299, 144, 'action created', '2025-02-24 20:36:01', '2025-02-24 20:36:01'),
(300, 144, 'action started via WP Cron', '2025-02-24 20:37:08', '2025-02-24 20:37:08'),
(301, 144, 'action complete via WP Cron', '2025-02-24 20:37:10', '2025-02-24 20:37:10'),
(302, 145, 'action created', '2025-02-24 20:46:02', '2025-02-24 20:46:02'),
(303, 145, 'action started via WP Cron', '2025-02-24 20:47:09', '2025-02-24 20:47:09'),
(304, 145, 'action complete via WP Cron', '2025-02-24 20:47:11', '2025-02-24 20:47:11'),
(305, 146, 'action created', '2025-02-24 20:48:55', '2025-02-24 20:48:55'),
(306, 146, 'action started via WP Cron', '2025-02-24 20:50:04', '2025-02-24 20:50:04'),
(307, 146, 'action complete via WP Cron', '2025-02-24 20:50:07', '2025-02-24 20:50:07'),
(308, 147, 'action created', '2025-02-24 20:51:17', '2025-02-24 20:51:17'),
(309, 147, 'action started via WP Cron', '2025-02-24 20:51:42', '2025-02-24 20:51:42'),
(310, 147, 'action complete via WP Cron', '2025-02-24 20:51:43', '2025-02-24 20:51:43'),
(311, 148, 'action created', '2025-02-24 21:07:15', '2025-02-24 21:07:15'),
(312, 148, 'action started via WP Cron', '2025-02-24 21:07:42', '2025-02-24 21:07:42'),
(313, 148, 'action complete via WP Cron', '2025-02-24 21:07:43', '2025-02-24 21:07:43'),
(314, 149, 'action created', '2025-02-25 07:42:38', '2025-02-25 07:42:38'),
(315, 149, 'action started via WP Cron', '2025-02-25 07:43:52', '2025-02-25 07:43:52'),
(316, 149, 'action complete via WP Cron', '2025-02-25 07:43:54', '2025-02-25 07:43:54');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_commentmeta`
--

CREATE TABLE `bb_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_comments`
--

CREATE TABLE `bb_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_links`
--

CREATE TABLE `bb_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_options`
--

CREATE TABLE `bb_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_options`
--

INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:25:{i:1740469528;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1740469567;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1740469568;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1740469666;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1740470028;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1740472748;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1740476769;a:1:{s:45:\"woocommerce_marketplace_cron_fetch_promotions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740488028;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740488632;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740488703;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740488731;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740488859;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740491558;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740493358;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740495158;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1740510242;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740519963;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740519967;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740521032;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740528000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1740748140;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1740750292;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1740833628;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1741719892;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://enjoy.loc/', 'on'),
(3, 'home', 'http://enjoy.loc/', 'on'),
(4, 'blogname', 'ENJOY', 'on'),
(5, 'blogdescription', 'Дизайнерські безкаркасні меблі', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'roman.vytak@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '6', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '6', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:216:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:21:\"^wc/file/transient/?$\";s:33:\"index.php?wc-transient-file-name=\";s:24:\"^wc/file/transient/(.+)$\";s:44:\"index.php?wc-transient-file-name=$matches[1]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:9:\"banner/?$\";s:26:\"index.php?post_type=banner\";s:39:\"banner/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:34:\"banner/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:26:\"banner/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=banner&paged=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:43:\"category/(.+?)/wc/file/transient(/(.*))?/?$\";s:65:\"index.php?category_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:40:\"tag/([^/]+)/wc/file/transient(/(.*))?/?$\";s:55:\"index.php?tag=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:47:\"banner/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:42:\"banner/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:43:\"banner/([^/]+)/wc/file/transient(/(.*))?/?$\";s:58:\"index.php?banner=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"banner/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?banner=$matches[1]&wc-api=$matches[3]\";s:49:\"banner/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:60:\"banner/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:38:\"banner/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"banner/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"brand/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:39:\"brand/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?product_brand=$matches[1]&feed=$matches[2]\";s:20:\"brand/(.+?)/embed/?$\";s:46:\"index.php?product_brand=$matches[1]&embed=true\";s:32:\"brand/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?product_brand=$matches[1]&paged=$matches[2]\";s:14:\"brand/(.+?)/?$\";s:35:\"index.php?product_brand=$matches[1]\";s:40:\"./(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:35:\"./(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:16:\"./(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:28:\"./(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:10:\"./(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:44:\"product/([^/]+)/wc/file/transient(/(.*))?/?$\";s:59:\"index.php?product=$matches[1]&wc/file/transient=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:61:\"product/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=1&cpage=$matches[1]\";s:28:\"wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:37:\"comments/wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:40:\"search/(.+)/wc/file/transient(/(.*))?/?$\";s:53:\"index.php?s=$matches[1]&wc/file/transient=$matches[3]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:43:\"author/([^/]+)/wc/file/transient(/(.*))?/?$\";s:63:\"index.php?author_name=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:93:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc/file/transient=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:52:\"([0-9]{4})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc/file/transient=$matches[4]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:39:\"([0-9]{4})/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?year=$matches[1]&wc/file/transient=$matches[3]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:36:\"(.?.+?)/wc/file/transient(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:42:\".?.+?/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\".?.+?/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:36:\"([^/]+)/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?name=$matches[1]&wc/file/transient=$matches[3]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\"[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:6:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:25:\"ukr-to-lat/ukr-to-lat.php\";i:3;s:45:\"woo-ajax-add-to-cart/woo-ajax-add-to-cart.php\";i:4;s:27:\"woocommerce/woocommerce.php\";i:5;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'bamboo', 'on'),
(42, 'stylesheet', 'bamboo', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '1', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '5', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1747831958', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'bb_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(124, 'recovery_keys', 'a:0:{}', 'off'),
(125, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"01d9c3c6131af931fb3e9e5593fcef1b\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(126, 'theme_mods_bamboo', 'a:2:{s:18:\"custom_css_post_id\";i:16;s:18:\"nav_menu_locations\";a:3:{s:13:\"footer_menu_2\";i:3;s:13:\"footer_menu_1\";i:2;s:11:\"header_menu\";i:4;}}', 'auto'),
(131, 'can_compress_scripts', '1', 'on'),
(134, 'finished_updating_comment_type', '1', 'auto'),
(145, 'WPLANG', 'uk', 'auto'),
(146, 'new_admin_email', 'roman.vytak@gmail.com', 'auto'),
(161, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(162, 'recently_activated', 'a:0:{}', 'off'),
(163, 'acf_first_activated_version', '6.3.8', 'on'),
(164, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"PRO\",\"update_source\":\"ACF Direct\",\"activated\":true,\"activated_url\":\"http:\\/\\/enjoy.loc\",\"license_type\":\"Developer\",\"license_status\":\"active\",\"subscription_expires\":\"\",\"wp_version\":\"6.7.2\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Custom ENJOY\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"6.0.3\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"ukr-to-lat\\/ukr-to-lat.php\":{\"name\":\"Ukr-To-Lat\",\"version\":\"1.3.5\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/ukr-to-lat\\/\"},\"woocommerce\\/woocommerce.php\":{\"name\":\"WooCommerce\",\"version\":\"9.6.1\",\"plugin_uri\":\"https:\\/\\/woocommerce.com\\/\"},\"wps-hide-login\\/wps-hide-login.php\":{\"name\":\"WPS Hide Login\",\"version\":\"1.9.17.1\",\"plugin_uri\":\"\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"7\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"group\":1,\"flexible_content\":1,\"text\":6,\"true_false\":1,\"image\":4,\"color_picker\":1,\"taxonomy\":1,\"tab\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"12\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"12\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"1\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated_pro\":1732283092,\"event_first_created_ui_options_page\":1734428202,\"event_first_created_field_group\":1734428307,\"last_updated\":1740145500}', 'off'),
(166, 'acf_version', '6.3.12', 'auto'),
(167, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRNM01UTTRmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9DMHdPQzB4TXlBeE1qb3dOVG8wTXc9PSI7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9lbmpveS5sb2MiO30=', 'off'),
(168, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:0;s:6:\"expiry\";i:0;s:4:\"name\";s:9:\"Developer\";s:8:\"lifetime\";b:1;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:0:\"\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1740509282;s:16:\"legacy_multisite\";b:1;}', 'on'),
(169, 'whl_page', 'enjoy-soft', 'auto'),
(170, 'whl_redirect_admin', '404', 'auto'),
(206, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'on'),
(359, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1732889855;s:7:\"version\";s:5:\"6.0.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(360, 'secret_key', '1+NkM])H4qjJOnw5S[YT0W]KMQ[/:DkzHS`nx;]:uN:Ot^L*7yTs2&_4p^Fw1Oq8', 'off'),
(432, 'options_phone', '+38 (096) 540 29 92', 'off'),
(433, '_options_phone', 'field_67614662965ef', 'off'),
(434, 'options_phone_2', '+38 (096) 540 29 93', 'off'),
(435, '_options_phone_2', 'field_67614673965f0', 'off'),
(436, 'options_facebook', 'https://www.facebook.com/', 'off'),
(437, '_options_facebook', 'field_67614fd4a16e1', 'off'),
(438, 'options_instagram', 'https://www.instagram.com/', 'off'),
(439, '_options_instagram', 'field_67614fe2a16e2', 'off'),
(442, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(491, 'action_scheduler_hybrid_store_demarkation', '43', 'auto'),
(492, 'schema-ActionScheduler_StoreSchema', '7.0.1734471927', 'auto'),
(493, 'schema-ActionScheduler_LoggerSchema', '3.0.1734471928', 'auto'),
(496, 'woocommerce_newly_installed', 'no', 'auto'),
(498, 'woocommerce_schema_version', '920', 'auto'),
(499, 'woocommerce_store_address', '', 'on'),
(500, 'woocommerce_store_address_2', '', 'on'),
(501, 'woocommerce_store_city', '', 'on'),
(502, 'woocommerce_default_country', 'UA:UA46', 'on'),
(503, 'woocommerce_store_postcode', '', 'on'),
(504, 'woocommerce_allowed_countries', 'all', 'on'),
(505, 'woocommerce_all_except_countries', 'a:0:{}', 'on'),
(506, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'on'),
(507, 'woocommerce_ship_to_countries', '', 'on'),
(508, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'on'),
(509, 'woocommerce_default_customer_address', 'base', 'on'),
(510, 'woocommerce_calc_taxes', 'no', 'on'),
(511, 'woocommerce_enable_coupons', 'yes', 'on'),
(512, 'woocommerce_calc_discounts_sequentially', 'no', 'off'),
(513, 'woocommerce_currency', 'UAH', 'on'),
(514, 'woocommerce_currency_pos', 'right_space', 'on'),
(515, 'woocommerce_price_thousand_sep', '', 'on'),
(516, 'woocommerce_price_decimal_sep', ',', 'on'),
(517, 'woocommerce_price_num_decimals', '2', 'on'),
(518, 'woocommerce_shop_page_id', '44', 'on'),
(519, 'woocommerce_cart_redirect_after_add', 'no', 'on'),
(520, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'on'),
(521, 'woocommerce_placeholder_image', '43', 'on'),
(522, 'woocommerce_weight_unit', 'kg', 'on'),
(523, 'woocommerce_dimension_unit', 'cm', 'on'),
(524, 'woocommerce_enable_reviews', 'yes', 'on'),
(525, 'woocommerce_review_rating_verification_label', 'yes', 'off'),
(526, 'woocommerce_review_rating_verification_required', 'no', 'off'),
(527, 'woocommerce_enable_review_rating', 'yes', 'on'),
(528, 'woocommerce_review_rating_required', 'yes', 'off'),
(529, 'woocommerce_manage_stock', 'yes', 'on'),
(530, 'woocommerce_hold_stock_minutes', '60', 'off'),
(531, 'woocommerce_notify_low_stock', 'yes', 'off'),
(532, 'woocommerce_notify_no_stock', 'yes', 'off'),
(533, 'woocommerce_stock_email_recipient', 'roman.vytak@gmail.com', 'off'),
(534, 'woocommerce_notify_low_stock_amount', '2', 'off'),
(535, 'woocommerce_notify_no_stock_amount', '0', 'on'),
(536, 'woocommerce_hide_out_of_stock_items', 'no', 'on'),
(537, 'woocommerce_stock_format', '', 'on'),
(538, 'woocommerce_file_download_method', 'force', 'off'),
(539, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'off'),
(540, 'woocommerce_downloads_require_login', 'no', 'off'),
(541, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'off'),
(542, 'woocommerce_downloads_deliver_inline', '', 'off'),
(543, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'on'),
(544, 'woocommerce_downloads_count_partial', 'yes', 'on'),
(546, 'woocommerce_attribute_lookup_direct_updates', 'no', 'on'),
(547, 'woocommerce_attribute_lookup_optimized_updates', 'no', 'on'),
(548, 'woocommerce_product_match_featured_image_by_sku', 'no', 'on'),
(549, 'woocommerce_prices_include_tax', 'no', 'on'),
(550, 'woocommerce_tax_based_on', 'shipping', 'on'),
(551, 'woocommerce_shipping_tax_class', 'inherit', 'on'),
(552, 'woocommerce_tax_round_at_subtotal', 'no', 'on');
INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(553, 'woocommerce_tax_classes', '', 'on'),
(554, 'woocommerce_tax_display_shop', 'excl', 'on'),
(555, 'woocommerce_tax_display_cart', 'excl', 'on'),
(556, 'woocommerce_price_display_suffix', '', 'on'),
(557, 'woocommerce_tax_total_display', 'itemized', 'off'),
(558, 'woocommerce_enable_shipping_calc', 'yes', 'off'),
(559, 'woocommerce_shipping_cost_requires_address', 'no', 'on'),
(560, 'woocommerce_ship_to_destination', 'billing', 'off'),
(561, 'woocommerce_shipping_debug_mode', 'no', 'on'),
(562, 'woocommerce_enable_guest_checkout', 'yes', 'off'),
(563, 'woocommerce_enable_checkout_login_reminder', 'no', 'off'),
(564, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'off'),
(565, 'woocommerce_enable_myaccount_registration', 'no', 'off'),
(566, 'woocommerce_registration_generate_password', 'yes', 'off'),
(567, 'woocommerce_registration_generate_username', 'yes', 'off'),
(568, 'woocommerce_erasure_request_removes_order_data', 'no', 'off'),
(569, 'woocommerce_erasure_request_removes_download_data', 'no', 'off'),
(570, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'off'),
(571, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'on'),
(572, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'on'),
(573, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(574, 'woocommerce_trash_pending_orders', '', 'off'),
(575, 'woocommerce_trash_failed_orders', '', 'off'),
(576, 'woocommerce_trash_cancelled_orders', '', 'off'),
(577, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'off'),
(578, 'woocommerce_email_from_name', 'ENJOY', 'off'),
(579, 'woocommerce_email_from_address', 'roman.vytak@gmail.com', 'off'),
(580, 'woocommerce_email_header_image', '', 'off'),
(581, 'woocommerce_email_base_color', '#720eec', 'off'),
(582, 'woocommerce_email_background_color', '#f7f7f7', 'off'),
(583, 'woocommerce_email_body_background_color', '#ffffff', 'off'),
(584, 'woocommerce_email_text_color', '#3c3c3c', 'off'),
(585, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'off'),
(586, 'woocommerce_email_footer_text_color', '#3c3c3c', 'off'),
(587, 'woocommerce_merchant_email_notifications', 'no', 'off'),
(588, 'woocommerce_cart_page_id', '45', 'off'),
(589, 'woocommerce_checkout_page_id', '46', 'off'),
(590, 'woocommerce_myaccount_page_id', '47', 'off'),
(591, 'woocommerce_terms_page_id', '', 'off'),
(592, 'woocommerce_force_ssl_checkout', 'no', 'on'),
(593, 'woocommerce_unforce_ssl_checkout', 'no', 'on'),
(594, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'on'),
(595, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'on'),
(596, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'on'),
(597, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'on'),
(598, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'on'),
(599, 'woocommerce_myaccount_orders_endpoint', 'orders', 'on'),
(600, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'on'),
(601, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'on'),
(602, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'on'),
(603, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'on'),
(604, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'on'),
(605, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'on'),
(606, 'woocommerce_logout_endpoint', 'customer-logout', 'on'),
(607, 'woocommerce_api_enabled', 'no', 'on'),
(608, 'woocommerce_allow_tracking', 'no', 'on'),
(609, 'woocommerce_show_marketplace_suggestions', 'yes', 'off'),
(610, 'woocommerce_custom_orders_table_enabled', 'yes', 'on'),
(611, 'woocommerce_analytics_enabled', 'yes', 'on'),
(612, 'woocommerce_feature_order_attribution_enabled', 'yes', 'on'),
(613, 'woocommerce_feature_site_visibility_badge_enabled', 'yes', 'on'),
(614, 'woocommerce_feature_product_block_editor_enabled', 'no', 'on'),
(615, 'woocommerce_hpos_fts_index_enabled', 'no', 'on'),
(616, 'woocommerce_feature_cost_of_goods_sold_enabled', 'no', 'on'),
(617, 'woocommerce_single_image_width', '600', 'on'),
(618, 'woocommerce_thumbnail_image_width', '300', 'on'),
(619, 'woocommerce_checkout_highlight_required_fields', 'yes', 'on'),
(620, 'woocommerce_demo_store', 'no', 'off'),
(621, 'wc_downloads_approved_directories_mode', 'enabled', 'auto'),
(622, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:1:\".\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'auto'),
(623, 'current_theme_supports_woocommerce', 'yes', 'auto'),
(624, 'woocommerce_queue_flush_rewrite_rules', 'no', 'auto'),
(627, 'default_product_cat', '18', 'auto'),
(629, 'woocommerce_refund_returns_page_id', '48', 'auto'),
(632, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:21:\"roman.vytak@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:21:\"roman.vytak@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'on'),
(633, 'woocommerce_version', '9.6.2', 'auto'),
(634, 'woocommerce_db_version', '9.6.2', 'auto'),
(635, 'woocommerce_store_id', '8339cb1c-d939-4b0a-bcd1-ae1a53d93f6b', 'auto'),
(636, 'woocommerce_admin_install_timestamp', '1734471965', 'auto'),
(637, 'woocommerce_inbox_variant_assignment', '6', 'auto'),
(638, 'woocommerce_remote_variant_assignment', '73', 'auto'),
(643, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'on'),
(644, 'action_scheduler_lock_async-request-runner', '67bd74f83b6108.72011628|1740469556', 'no'),
(645, 'woocommerce_admin_notices', 'a:0:{}', 'auto'),
(646, 'wc_blocks_version', '11.8.0-dev', 'auto'),
(647, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"lTrfY8RlhVNMk5w5f1Svk9TrvHfu6ij0\";}', 'on'),
(648, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'on'),
(649, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(650, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(651, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(652, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(653, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(654, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(655, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(656, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(657, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(658, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(659, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(660, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(669, 'wcpay_was_in_use', 'no', 'auto'),
(672, 'woocommerce_custom_orders_table_created', 'yes', 'auto'),
(677, 'woocommerce_coming_soon', 'yes', 'auto'),
(679, 'woocommerce_initial_installed_version', '9.5.1', 'off'),
(685, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'off'),
(686, 'wc_blocks_db_schema_version', '260', 'auto'),
(691, '_transient_woocommerce_reports-transient-version', '1740429099', 'on'),
(696, 'jetpack_options', 'a:1:{s:14:\"last_heartbeat\";i:1740422928;}', 'auto'),
(706, 'action_scheduler_migration_status', 'complete', 'auto'),
(707, 'woocommerce_onboarding_profile', 'a:9:{s:15:\"business_choice\";s:34:\"im_setting_up_a_store_for_a_client\";s:21:\"selling_online_answer\";N;s:17:\"selling_platforms\";N;s:20:\"is_store_country_set\";b:1;s:8:\"industry\";a:1:{i:0;s:25:\"home_furniture_and_garden\";}s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:21:\"roman.vytak@gmail.com\";s:9:\"completed\";b:1;s:19:\"business_extensions\";a:0:{}}', 'auto'),
(710, 'woocommerce_onboarding_plugins_install_and_activate_async_6761f22c2ad0c', 'a:4:{s:12:\"created_time\";i:1734472237;s:6:\"status\";s:6:\"failed\";s:7:\"plugins\";a:1:{s:23:\"google-listings-and-ads\";a:3:{s:6:\"status\";s:6:\"failed\";s:6:\"errors\";a:2:{i:0;s:95:\"The requested plugin `google-listings-and-ads` could not be installed. Upgrader install failed.\";i:1;s:69:\"The requested plugin `google-listings-and-ads`. is not yet installed.\";}s:16:\"install_duration\";i:0;}}s:13:\"complete_time\";i:1734472242;}', 'off'),
(711, 'woocommerce_store_pages_only', 'yes', 'auto'),
(712, 'woocommerce_private_link', 'no', 'auto'),
(713, 'woocommerce_share_key', 'lm93xQHAZAFfGRfWFPnVEOEUMche4nJi', 'auto'),
(714, '_transient_shipping-transient-version', '1739283513', 'on'),
(715, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'auto'),
(716, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'auto'),
(724, '_transient_woocommerce_shipping_task_zone_count_transient', '1', 'on'),
(725, 'woocommerce_task_list_tracked_completed_tasks', 'a:3:{i:0;s:8:\"shipping\";i:1;s:8:\"products\";i:2;s:15:\"customize-store\";}', 'auto'),
(997, 'widget_wc_brands_brand_description', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(998, 'widget_woocommerce_brand_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(999, 'widget_wc_brands_brand_thumbnails', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(1000, 'woocommerce_task_list_reminder_bar_hidden', 'yes', 'auto'),
(1003, 'woocommerce_feature_rate_limit_checkout_enabled', 'no', 'on'),
(1004, 'woocommerce_feature_remote_logging_enabled', 'yes', 'on'),
(1005, 'woocommerce_feature_email_improvements_enabled', 'no', 'on'),
(1013, '_site_transient_timeout_woocommerce_blocks_patterns', '1743015833', 'off'),
(1014, '_site_transient_woocommerce_blocks_patterns', 'a:2:{s:7:\"version\";s:5:\"9.6.2\";s:8:\"patterns\";a:40:{i:0;a:11:{s:5:\"title\";s:6:\"Banner\";s:4:\"slug\";s:25:\"woocommerce-blocks/banner\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:79:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/banner.php\";}i:1;a:11:{s:5:\"title\";s:23:\"Coming Soon Entire Site\";s:4:\"slug\";s:35:\"woocommerce/coming-soon-entire-site\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:17:\"launch-your-store\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:96:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/coming-soon-entire-site.php\";}i:2;a:11:{s:5:\"title\";s:22:\"Coming Soon Store Only\";s:4:\"slug\";s:34:\"woocommerce/coming-soon-store-only\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:17:\"launch-your-store\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:95:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/coming-soon-store-only.php\";}i:3;a:11:{s:5:\"title\";s:11:\"Coming Soon\";s:4:\"slug\";s:23:\"woocommerce/coming-soon\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:17:\"launch-your-store\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:84:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/coming-soon.php\";}i:4;a:11:{s:5:\"title\";s:29:\"Content right with image left\";s:4:\"slug\";s:48:\"woocommerce-blocks/content-right-with-image-left\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, About\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:97:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/content-right-image-left.php\";}i:5;a:11:{s:5:\"title\";s:29:\"Featured Category Cover Image\";s:4:\"slug\";s:48:\"woocommerce-blocks/featured-category-cover-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:102:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/featured-category-cover-image.php\";}i:6;a:11:{s:5:\"title\";s:24:\"Featured Category Triple\";s:4:\"slug\";s:43:\"woocommerce-blocks/featured-category-triple\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:97:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/featured-category-triple.php\";}i:7;a:11:{s:5:\"title\";s:15:\"Product Filters\";s:4:\"slug\";s:34:\"woocommerce-blocks/product-filters\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:108:\"woocommerce/active-filters, woocommerce/price-filter, woocommerce/attribute-filter, woocommerce/stock-filter\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:80:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/filters.php\";}i:8;a:11:{s:5:\"title\";s:12:\"Large Footer\";s:4:\"slug\";s:31:\"woocommerce-blocks/footer-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:85:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/footer-large.php\";}i:9;a:11:{s:5:\"title\";s:23:\"Footer with Simple Menu\";s:4:\"slug\";s:37:\"woocommerce-blocks/footer-simple-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:91:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/footer-simple-menu.php\";}i:10;a:11:{s:5:\"title\";s:17:\"Footer with menus\";s:4:\"slug\";s:38:\"woocommerce-blocks/footer-with-3-menus\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/footer\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:92:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/footer-with-3-menus.php\";}i:11;a:11:{s:5:\"title\";s:28:\"Four Image Grid Content Left\";s:4:\"slug\";s:47:\"woocommerce-blocks/form-image-grid-content-left\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, About\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:101:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/four-image-grid-content-left.php\";}i:12;a:11:{s:5:\"title\";s:20:\"Centered Header Menu\";s:4:\"slug\";s:39:\"woocommerce-blocks/header-centered-menu\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:96:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/header-centered-pattern.php\";}i:13;a:11:{s:5:\"title\";s:23:\"Distraction Free Header\";s:4:\"slug\";s:42:\"woocommerce-blocks/header-distraction-free\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:96:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/header-distraction-free.php\";}i:14;a:11:{s:5:\"title\";s:16:\"Essential Header\";s:4:\"slug\";s:35:\"woocommerce-blocks/header-essential\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:89:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/header-essential.php\";}i:15;a:11:{s:5:\"title\";s:12:\"Large Header\";s:4:\"slug\";s:31:\"woocommerce-blocks/header-large\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:85:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/header-large.php\";}i:16;a:11:{s:5:\"title\";s:14:\"Minimal Header\";s:4:\"slug\";s:33:\"woocommerce-blocks/header-minimal\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:25:\"core/template-part/header\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:87:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/header-minimal.php\";}i:17;a:11:{s:5:\"title\";s:47:\"Heading with three columns of content with link\";s:4:\"slug\";s:66:\"woocommerce-blocks/heading-with-three-columns-of-content-with-link\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:21:\"WooCommerce, Services\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:120:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/heading-with-three-columns-of-content-with-link.php\";}i:18;a:11:{s:5:\"title\";s:20:\"Hero Product 3 Split\";s:4:\"slug\";s:39:\"woocommerce-blocks/hero-product-3-split\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:93:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/hero-product-3-split.php\";}i:19;a:11:{s:5:\"title\";s:23:\"Hero Product Chessboard\";s:4:\"slug\";s:42:\"woocommerce-blocks/hero-product-chessboard\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:96:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/hero-product-chessboard.php\";}i:20;a:11:{s:5:\"title\";s:18:\"Hero Product Split\";s:4:\"slug\";s:37:\"woocommerce-blocks/hero-product-split\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:91:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/hero-product-split.php\";}i:21;a:11:{s:5:\"title\";s:33:\"Centered content with image below\";s:4:\"slug\";s:52:\"woocommerce-blocks/centered-content-with-image-below\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:112:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/intro-centered-content-with-image-below.php\";}i:22;a:11:{s:5:\"title\";s:22:\"Just Arrived Full Hero\";s:4:\"slug\";s:41:\"woocommerce-blocks/just-arrived-full-hero\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:18:\"WooCommerce, Intro\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:95:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/just-arrived-full-hero.php\";}i:23;a:11:{s:5:\"title\";s:33:\"No Products Found - Clear Filters\";s:4:\"slug\";s:43:\"woocommerce/no-products-found-clear-filters\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:98:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/no-products-found-filters.php\";}i:24;a:11:{s:5:\"title\";s:17:\"No Products Found\";s:4:\"slug\";s:29:\"woocommerce/no-products-found\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:90:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/no-products-found.php\";}i:25;a:11:{s:5:\"title\";s:19:\"Default Coming Soon\";s:4:\"slug\";s:36:\"woocommerce/page-coming-soon-default\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:31:\"coming-soon-newsletter-template\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:97:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/page-coming-soon-default.php\";}i:26;a:11:{s:5:\"title\";s:30:\"Coming Soon Minimal Left Image\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-minimal-left-image\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:31:\"coming-soon-newsletter-template\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:108:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/page-coming-soon-minimal-left-image.php\";}i:27;a:11:{s:5:\"title\";s:24:\"Coming Soon Modern Black\";s:4:\"slug\";s:41:\"woocommerce/page-coming-soon-modern-black\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:31:\"coming-soon-newsletter-template\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:102:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/page-coming-soon-modern-black.php\";}i:28;a:11:{s:5:\"title\";s:34:\"Coming Soon With Header and Footer\";s:4:\"slug\";s:47:\"woocommerce/page-coming-soon-with-header-footer\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:31:\"coming-soon-newsletter-template\";s:13:\"templateTypes\";s:11:\"coming-soon\";s:6:\"source\";s:108:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/page-coming-soon-with-header-footer.php\";}i:29;a:11:{s:5:\"title\";s:28:\"Product Collection 3 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-3-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:101:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/product-collection-3-columns.php\";}i:30;a:11:{s:5:\"title\";s:28:\"Product Collection 4 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-4-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:101:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/product-collection-4-columns.php\";}i:31;a:11:{s:5:\"title\";s:28:\"Product Collection 5 Columns\";s:4:\"slug\";s:47:\"woocommerce-blocks/product-collection-5-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:101:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/product-collection-5-columns.php\";}i:32;a:11:{s:5:\"title\";s:47:\"Product Collection: Featured Products 5 Columns\";s:4:\"slug\";s:65:\"woocommerce-blocks/product-collection-featured-products-5-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:119:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/product-collection-featured-products-5-columns.php\";}i:33;a:11:{s:5:\"title\";s:15:\"Product Gallery\";s:4:\"slug\";s:48:\"woocommerce-blocks/product-query-product-gallery\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:29:\"WooCommerce, featured-selling\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:36:\"core/query/woocommerce/product-query\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:102:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/product-query-product-gallery.php\";}i:34;a:11:{s:5:\"title\";s:14:\"Product Search\";s:4:\"slug\";s:31:\"woocommerce/product-search-form\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:2:\"no\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:92:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/product-search-form.php\";}i:35;a:11:{s:5:\"title\";s:16:\"Related Products\";s:4:\"slug\";s:35:\"woocommerce-blocks/related-products\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:11:\"WooCommerce\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:5:\"false\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:89:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/related-products.php\";}i:36;a:11:{s:5:\"title\";s:33:\"Social: Follow us on social media\";s:4:\"slug\";s:51:\"woocommerce-blocks/social-follow-us-in-social-media\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:25:\"WooCommerce, social-media\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:105:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/social-follow-us-in-social-media.php\";}i:37;a:11:{s:5:\"title\";s:22:\"Testimonials 3 Columns\";s:4:\"slug\";s:41:\"woocommerce-blocks/testimonials-3-columns\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:20:\"WooCommerce, Reviews\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:95:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/testimonials-3-columns.php\";}i:38;a:11:{s:5:\"title\";s:19:\"Testimonials Single\";s:4:\"slug\";s:38:\"woocommerce-blocks/testimonials-single\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:20:\"WooCommerce, Reviews\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:92:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/testimonials-single.php\";}i:39;a:11:{s:5:\"title\";s:37:\"Three columns with images and content\";s:4:\"slug\";s:56:\"woocommerce-blocks/three-columns-with-images-and-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";s:0:\"\";s:10:\"categories\";s:21:\"WooCommerce, Services\";s:8:\"keywords\";s:0:\"\";s:10:\"blockTypes\";s:0:\"\";s:8:\"inserter\";s:0:\"\";s:11:\"featureFlag\";s:0:\"\";s:13:\"templateTypes\";s:0:\"\";s:6:\"source\";s:110:\"D:\\xampp\\htdocs\\enjoy2.0\\app\\wp-content\\plugins\\woocommerce/patterns/three-columns-with-images-and-content.php\";}}}', 'off'),
(1017, 'wc_remote_inbox_notifications_wca_updated', '', 'off'),
(1020, 'woocommerce_admin_pes_incentive_woopayments_store_had_woopayments', 'no', 'auto'),
(1023, '_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs', '1741073937', 'off');
INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1024, '_transient_woocommerce_admin_remote_inbox_notifications_specs', 'a:1:{s:2:\"uk\";a:56:{s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:46:\"WooPayments setup - let us know what you think\";s:7:\"content\";s:137:\"Congrats on enabling WooPayments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:58:\"https://automattic.survey.fm/woopayments-new-user-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:48:\"needs-update-eway-payment-gateway-rin-2022-12-20\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"needs-update-eway-payment-gateway-rin-2022-12-20\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:58:\"Security vulnerability patched in WooCommerce Eway Gateway\";s:7:\"content\";s:323:\"In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:62:\"needs-update-eway-payment-gateway-rin-action-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:16:\"/update-core.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:63:\"needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:7:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-03 23:45:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.1.26\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"3.5.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"3.1.0\";}}}s:43:\"updated-eway-payment-gateway-rin-2022-12-20\";O:8:\"stdClass\":8:{s:4:\"slug\";s:43:\"updated-eway-payment-gateway-rin-2022-12-20\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Eway Gateway has been automatically updated\";s:7:\"content\";s:280:\"Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:57:\"updated-eway-payment-gateway-rin-action-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"See all updates\";}}s:3:\"url\";s:16:\"/update-core.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:58:\"updated-eway-payment-gateway-rin-dismiss-button-2022-12-20\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-03 23:45:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"needs-update-eway-payment-gateway-rin-2022-12-20\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:5:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.1.26\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:24:\"woocommerce-gateway-eway\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}}}}}s:31:\"ecomm-wc-navigation-survey-2023\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"ecomm-wc-navigation-survey-2023\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:39:\"Navigating WooCommerce on WordPress.com\";s:7:\"content\";s:166:\"We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:58:\"https://automattic.survey.fm/new-ecommerce-plan-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-01-16 09:53:44\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:180;}}}s:39:\"woopay-beta-merchantrecruitment-04MAY23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"woopay-beta-merchantrecruitment-04MAY23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:319:\"WooPay, a new express checkout feature built into WooCommerce Payments, is <b>now available</b> —and we’re inviting you to be one of the first to try it. \r\n<br><br>\r\n<b>Boost conversions</b> by offering your customers a simple, secure way to pay with a <b>single click</b>.\r\n<br><br>\r\n<b>Get started in seconds.</b>\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:48:\"woopay-beta-merchantrecruitment-activate-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Activate WooPay\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:58:\"woopay-beta-merchantrecruitment-activate-learnmore-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:155:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-activate-learnmore-04MAY23\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-04 18:00:27\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:144:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"http://pieroatomic3.wpcomstaging.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.handinhandparenting.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://pritikinfoods.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://utahrecsports.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.hunterpta.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://www.smokinbeans.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://shulabeauty.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://bingeworthytvmerch.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://s91.4d8.myftpupload.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://stephanienicolenorris.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://aliensshirt.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"https://libertyordeathapparelllc.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://cowboystatedaily.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:42:\"https://fundrgear.com/beckendorffathletics\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:50:\"http://wordpress-528155-2231771.cloudwaysapps.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://checkout.sohaprice.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://amadozstore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://eliwehbe.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://lunabra.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://nptixx.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://louisianapantry.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://aplusanatomy.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://wildsvg.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://bleachfilm.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://benabeautyspa.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:47:\"http://barrettfitnessenterprises.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://goabroadable.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://alexoathletica.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.fourpurls.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://www.hagmannreport.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://busybeeorganics.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://nallsproduce.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://bigtimebats.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://shop.cookingwithkarli.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.queenofpeacemedia.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://bigjohnsbeefjerky.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://paperbyjaney.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://carolinarisemembers.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://veroticaevents.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://spira.farm\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:40;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://endlessassist.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:41;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://betterlifeblog.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:42;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://ashleighrenard.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:43;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://www.turkeymerck.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:44;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://carfiershop.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:45;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://normanmusicfestival.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:46;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"http://www.olfactoryfactoryllc.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:47;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"https://fundrgear.com/anthonyathletics\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:48;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"http://tkechilifestdotcom.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:49;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:15:\"No results foun\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:50;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://pvsa.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:51;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://becbatop.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:52;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://wwmeconvention.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:53;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:17:\"https://lswmp.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:54;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://bubbaskincare.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:55;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://fusango.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:56;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://vcdpostershow.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:57;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://www.rileysribz.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:58;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.fakeultrasound.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:59;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://onelongfellowsquare.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:60;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://agodpod.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:61;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"https://fundrgear.com/littleladybulldogs\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:62;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://thecirclelarp.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:63;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://byletam.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:64;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.nachonite.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:65;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"http://designerdab.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:66;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"http://box2151.temp.domains/~lovebyt2/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:67;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://shortporchbaseballcompany.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:68;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://distancecme.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:69;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://middleswarthchips.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:70;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://railblazausa.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:71;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://mikescountrymeats.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:72;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://www.woodenshoe.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:73;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://rockspringscafe.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:74;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"http://footballfangears.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:75;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://ybtoner.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:76;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://simplyclayyy.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:77;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://naturecreation.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:78;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://marisrodriguez.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:79;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://asanteinternational.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:80;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://theatre55.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:81;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://carolynscreativeclassroom.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:82;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://www.miiriya.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:83;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://trendyds.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:84;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://wooedbythefood.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:85;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://papasteamstores.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:86;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://omdurags.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:87;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://happydogbarkery.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:88;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://kitbose.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:89;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://seamossdeals.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:90;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://zeatala.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:91;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://shop.atwaterffa.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:92;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://www.brettsfirstresponders.org/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:93;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://shirtactive.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:94;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://boerneparade.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:95;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://zorahshrine.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:96;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://davidcervenka.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:97;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://addisjourney.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:98;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://305ycle.cc\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:99;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:45:\"http://yourworstnightmarehaunt.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:100;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://westcoastpreps.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:101;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://checkout.sohaking.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:102;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"https://www.theunshakeablepundit.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:103;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://www.stellaandchewys.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:104;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://www.raywhitcomb.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:105;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:39:\"http://constellationtheatercompany.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:106;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://stacynguyen.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:107;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:46:\"https://fundrgear.com/lakecreekgirlsbasketball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:108;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://winslowartcenter.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:109;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://flufftastik.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:110;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://mygreenbeach.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:111;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://ebookvip.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:112;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:41:\"https://fundrgear.com/needvillevolleyball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:113;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://bifocalmedia.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:114;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://clrc.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:115;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://hyperpins.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:116;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:45:\"https://fundrgear.com/lakecreekboysbasketball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:117;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://fundrgear.com/kparktennis\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:118;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://mogadorspices.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:119;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://fundrgear.com/newcaneytrack\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:120;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://sigmascents.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:121;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://bsharisemoore.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:122;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://morrflate.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:123;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://westbrosinc.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:124;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://shop.danceplexaz.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:125;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://chikepod.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:126;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://www.advanahealth.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:127;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://tatter.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:128;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://greatawakeningbrewing.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:129;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://waterfowlfestival.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:130;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://preppedwellness.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:131;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://events.thus.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:132;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://stormtide.thefifthtrooper.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:133;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://www.tabsynth.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:134;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"http://staging.fliptheswitchon.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:135;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://duffysdough.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:136;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://fitfoodieliving.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:137;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://breakerbrotherstcg.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:138;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://andymation.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:139;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://recklessmetals.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:140;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://sophielark.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:141;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://wp.arabtherapy.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:142;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://creativeappliques.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:143;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://altitude.win\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}}}s:42:\"woocommerce-wcpay-march-2023-update-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-wcpay-march-2023-update-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:57:\"Action required: Security update for WooCommerce Payments\";s:7:\"content\";s:296:\"<strong>Your store requires a security update for WooCommerce Payments</strong>. Please update to the latest version of WooCommerce Payments immediately to address a potential vulnerability discovered on March 22. For more information on how to update, visit this WooCommerce Developer Blog Post.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:49:\"woocommerce-wcpay-march-2023-update-needed-button\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"See Blog Post\";}}s:3:\"url\";s:122:\"https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:57:\"woocommerce-wcpay-march-2023-update-needed-dismiss-button\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:11:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-03-22 20:25:44\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.5.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"4.8.0\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"<=\";s:7:\"version\";s:5:\"5.6.1\";}}}s:34:\"tap_to_pay_iphone_q2_2023_no_wcpay\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"tap_to_pay_iphone_q2_2023_no_wcpay\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:52:\"Accept in-person contactless payments on your iPhone\";s:7:\"content\";s:230:\"Tap to Pay on iPhone and WooCommerce Payments is quick, secure, and simple to set up — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"tap_to_pay_iphone_q2_2023_no_wcpay\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:20:\"Simplify my payments\";}}s:3:\"url\";s:143:\"https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-04-03 23:59:47\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}s:48:\"woocommerce-WCPreOrders-april-2023-update-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-WCPreOrders-april-2023-update-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:68:\"Action required: Security update of WooCommerce Pre-Orders extension\";s:7:\"content\";s:220:\"<strong>Your store requires a security update for the WooCommerce Pre-Orders extension</strong>. Please update the WooCommerce Pre-Orders extension immediately to address a potential vulnerability discovered on April 11.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:18:\"extension-settings\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:15:\"update-core.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-04-12 22:16:37\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:22:\"woocommerce-pre-orders\";s:8:\"operator\";s:2:\"<=\";s:7:\"version\";s:5:\"2.0.0\";}}}s:46:\"woopay-beta-merchantrecruitment-update-04MAY23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woopay-beta-merchantrecruitment-update-04MAY23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:321:\"WooPay, a new express checkout feature built into WooCommerce Payments, is <b>now available</b> — and you’re invited to try it. \r\n<br /><br />\r\n<b>Boost conversions</b> by offering your customers a simple, secure way to pay with a <b>single click</b>.\r\n<br /><br />\r\n<b>Update WooCommerce Payments</b> to get started.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:52:\"woopay-beta-merchantrecruitment-update-WCPay-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:27:\"Update WooCommerce Payments\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:55:\"woopay-beta-merchantrecruitment-update-activate-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Activate WooPay\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-04 18:00:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:144:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"http://pieroatomic3.wpcomstaging.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.handinhandparenting.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://pritikinfoods.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://utahrecsports.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.hunterpta.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://www.smokinbeans.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://shulabeauty.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://bingeworthytvmerch.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://s91.4d8.myftpupload.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://stephanienicolenorris.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://aliensshirt.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"https://libertyordeathapparelllc.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://cowboystatedaily.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:42:\"https://fundrgear.com/beckendorffathletics\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:50:\"http://wordpress-528155-2231771.cloudwaysapps.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://checkout.sohaprice.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://amadozstore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://eliwehbe.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://lunabra.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://nptixx.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://louisianapantry.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://aplusanatomy.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://wildsvg.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://bleachfilm.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://benabeautyspa.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:47:\"http://barrettfitnessenterprises.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://goabroadable.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://alexoathletica.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.fourpurls.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://www.hagmannreport.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://busybeeorganics.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://nallsproduce.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://bigtimebats.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://shop.cookingwithkarli.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.queenofpeacemedia.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://bigjohnsbeefjerky.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://paperbyjaney.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://carolinarisemembers.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://veroticaevents.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://spira.farm\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:40;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://endlessassist.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:41;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://betterlifeblog.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:42;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://ashleighrenard.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:43;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://www.turkeymerck.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:44;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://carfiershop.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:45;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://normanmusicfestival.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:46;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"http://www.olfactoryfactoryllc.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:47;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"https://fundrgear.com/anthonyathletics\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:48;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"http://tkechilifestdotcom.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:49;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:15:\"No results foun\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:50;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://pvsa.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:51;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://becbatop.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:52;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://wwmeconvention.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:53;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:17:\"https://lswmp.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:54;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://bubbaskincare.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:55;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://fusango.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:56;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://vcdpostershow.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:57;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://www.rileysribz.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:58;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.fakeultrasound.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:59;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://onelongfellowsquare.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:60;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://agodpod.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:61;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"https://fundrgear.com/littleladybulldogs\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:62;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://thecirclelarp.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:63;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://byletam.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:64;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.nachonite.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:65;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"http://designerdab.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:66;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"http://box2151.temp.domains/~lovebyt2/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:67;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://shortporchbaseballcompany.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:68;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://distancecme.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:69;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://middleswarthchips.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:70;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://railblazausa.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:71;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://mikescountrymeats.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:72;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://www.woodenshoe.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:73;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://rockspringscafe.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:74;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"http://footballfangears.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:75;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://ybtoner.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:76;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://simplyclayyy.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:77;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://naturecreation.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:78;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://marisrodriguez.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:79;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://asanteinternational.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:80;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://theatre55.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:81;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://carolynscreativeclassroom.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:82;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://www.miiriya.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:83;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://trendyds.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:84;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://wooedbythefood.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:85;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://papasteamstores.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:86;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://omdurags.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:87;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://happydogbarkery.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:88;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"http://kitbose.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:89;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://seamossdeals.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:90;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://zeatala.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:91;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://shop.atwaterffa.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:92;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://www.brettsfirstresponders.org/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:93;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://shirtactive.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:94;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://boerneparade.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:95;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://zorahshrine.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:96;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://davidcervenka.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:97;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://addisjourney.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:98;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://305ycle.cc\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:99;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:45:\"http://yourworstnightmarehaunt.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:100;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://westcoastpreps.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:101;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://checkout.sohaking.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:102;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"https://www.theunshakeablepundit.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:103;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://www.stellaandchewys.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:104;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://www.raywhitcomb.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:105;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:39:\"http://constellationtheatercompany.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:106;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://stacynguyen.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:107;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:46:\"https://fundrgear.com/lakecreekgirlsbasketball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:108;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://winslowartcenter.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:109;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://flufftastik.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:110;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://mygreenbeach.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:111;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://ebookvip.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:112;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:41:\"https://fundrgear.com/needvillevolleyball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:113;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://bifocalmedia.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:114;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://clrc.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:115;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://hyperpins.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:116;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:45:\"https://fundrgear.com/lakecreekboysbasketball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:117;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://fundrgear.com/kparktennis\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:118;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://mogadorspices.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:119;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://fundrgear.com/newcaneytrack\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:120;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://sigmascents.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:121;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://bsharisemoore.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:122;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://morrflate.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:123;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://westbrosinc.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:124;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://shop.danceplexaz.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:125;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://chikepod.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:126;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://www.advanahealth.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:127;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://tatter.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:128;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://greatawakeningbrewing.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:129;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://waterfowlfestival.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:130;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://preppedwellness.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:131;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://events.thus.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:132;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://stormtide.thefifthtrooper.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:133;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://www.tabsynth.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:134;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"http://staging.fliptheswitchon.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:135;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://duffysdough.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:136;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://fitfoodieliving.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:137;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://breakerbrotherstcg.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:138;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://andymation.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:139;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://recklessmetals.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:140;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://sophielark.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:141;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://wp.arabtherapy.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:142;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://creativeappliques.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:143;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://altitude.win\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}}}s:46:\"woopay-beta-existingmerchants-noaction-27APR23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woopay-beta-existingmerchants-noaction-27APR23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:15:\"WooPay is back!\";s:7:\"content\";s:361:\"Thanks for previously trying WooPay, the<b> express checkout feature</b> built into WooCommerce Payments. We’re excited to announce that <b>WooPay availability has resumed</b>. No action is required on your part.\r\n<br /><br />\r\nYou can now <b>continue boosting conversions</b> by offering your customers a simple, secure way to pay with a <b>single click</b>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:60:\"woopay-beta-existingmerchants-noaction-documentation-27APR23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Documentation\";}}s:3:\"url\";s:178:\"https://woocommerce.com/document/woopay-merchant-documentation/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-existingmerchants-noaction-documentation-27APR23\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-04-26 19:00:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:38:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://store.startingstrongman.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://joacreativelab.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.pureskincaresalon.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://mariablaquier.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://getprodigital.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://dalefrickeholsters.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://sstour.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://tk-txstore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://humanspiritproject.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://viradadrums.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://rosariumblends.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://organicskincare.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://stuckpigmedical.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.seattlegiftbasket.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://www.cloverandviolet.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://gvscholarship.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://yesimadiva.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://www.old.jmtrashbgone.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://victorialansford.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://craftcosplay.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://thefossilexchange.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://nextgenspeed.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://cappellarecords.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://ontimesupermarket.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://new2knox.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://lovestudiollc.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://thehivelivebox.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://socceruniformkits.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://willowcreativ.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://summitprep.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:17:\"https://howda.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://soapavenuecompany.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"https://subsbox.mystagingwebsite.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://wifflebreakers.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.mps-outfitters.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"https://howardharrisassociates.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://bettersaferadio.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://bunnyluna.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}}}s:44:\"woopay-beta-existingmerchants-update-27APR23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:44:\"woopay-beta-existingmerchants-update-27APR23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:15:\"WooPay is back!\";s:7:\"content\";s:368:\"Thanks for previously trying WooPay, the <b>express checkout feature</b> built into WooCommerce Payments. We’re excited to announce that <b>WooPay availability has resumed</b>.\r\n<br /><br />\r\n\r\nUpdate to the latest WooCommerce Payments version to <b>continue boosting conversions</b> by offering your customers a simple, secure way to pay with a <b>single click</b>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:50:\"woopay-beta-existingmerchants-update-WCPay-27APR23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:27:\"Update WooCommerce Payments\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-04-26 19:00:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.8.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:38:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://store.startingstrongman.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://joacreativelab.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.pureskincaresalon.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://mariablaquier.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://getprodigital.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://dalefrickeholsters.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"https://sstour.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://tk-txstore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://humanspiritproject.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://viradadrums.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://rosariumblends.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://organicskincare.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://stuckpigmedical.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.seattlegiftbasket.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://www.cloverandviolet.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://gvscholarship.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://yesimadiva.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://www.old.jmtrashbgone.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://victorialansford.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://craftcosplay.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://thefossilexchange.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://nextgenspeed.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://cappellarecords.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://ontimesupermarket.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://new2knox.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://lovestudiollc.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://thehivelivebox.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://socceruniformkits.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://willowcreativ.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://summitprep.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:17:\"https://howda.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://soapavenuecompany.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"https://subsbox.mystagingwebsite.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://wifflebreakers.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.mps-outfitters.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"https://howardharrisassociates.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://bettersaferadio.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://bunnyluna.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}}}s:45:\"woopay-beta-merchantrecruitment-short-04MAY23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woopay-beta-merchantrecruitment-short-04MAY23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:181:\"Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\n<b>Boost conversions</b> by letting customers pay with a <b>single click</b>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:54:\"woopay-beta-merchantrecruitment-short-activate-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Activate WooPay\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:64:\"woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:161:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-04 18:00:36\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:144:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://pieroatomic3.wpcomstaging.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://www.bluebeautifly.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"http://indianrivernatural.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://fouroaksproducts.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:14:\"https://acb.la\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"https://www.sweetpotatoplant.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"http://www.gocaseyourself.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://laugun.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://nebraskadaybyday.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://vintagemarche727.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:17:\"https://kohai.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://gracegaze.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://aliensmeaning.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://myheritagegardens.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://shopmoresport.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://oladino.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://frogjumpstore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://cagedthundermma.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"https://fundrgear.com/mcelwainelementary\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://mgco.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://500gp.io/pay\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://waterglassslimes.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://antiqueful.shop/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://deeperkidmin.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:45:\"https://fundrgear.com/cyspringsboysbasketball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://houseofminifigs.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"http://box2273.temp.domains/~dreambx2/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://madebymixture.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://reliabletrash.company\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://www.daddybutter.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://circleqessentials.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://garlicbraids.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://fbdonline.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://galaxysedge.us\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://duckduckbeetfarm.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://varsitygraphics.net\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://jademackenzie.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"https://kristysketolifestyle.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://covid19criticalcare.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://parkviewprep.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:40;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://rock-fest.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:41;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"http://fillinxsolutions.com/etarix/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:42;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://doughremitx.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:43;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.montanafiddlecamp.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:44;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://fococomiccon.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:45;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://patricendouglas.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:46;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://hectue.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:47;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://montanamaxbbq.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:48;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"http://smellzoom.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:49;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://uptowne.theoandson.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:50;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"http://superbasic.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:51;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"http://ppodstore.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:52;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://kerenzan.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:53;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://a13bargains.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:54;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://colorgr.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:55;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:41:\"https://mindbodysoulcandles.com/Charlotte\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:56;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://peaceloveandadhd.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:57;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://seymoursmash.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:58;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://mwtournament.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:59;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:43:\"https://fundrgear.com/beckendorffgirlstrack\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:60;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:15:\"No results foun\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:61;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://allswellnyc.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:62;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://childoftheredwoodsmembers.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:63;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:41:\"https://fundrgear.com/grandoaksvolleyball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:64;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.newhollandrochester.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:65;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://www.purplecatvet.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:66;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:39:\"https://www.mustangmountaincoaster.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:67;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://www.roccanj.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:68;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://www.teerico.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:69;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://passportunlimited.net\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:70;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.paladincards20.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:71;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"http://giantshorties.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:72;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://visualsports.biz\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:73;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://thefreakinricanrestaurant.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:74;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://arequestionscom.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:75;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://pt.tktxcompanystore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:76;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://fitfoodiechicks.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:77;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://nutoshop.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:78;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://backwoodzhiphop.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:79;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://gartapparel.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:80;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://bodega.badiaspices.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:81;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://rampartrange.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:82;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://teeuni.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:83;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://bearsinthealley.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:84;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://vitalbooks.net/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:85;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"https://hair-free-hair-remover.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:86;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://gangtaynails.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:87;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://crochetfoundry.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:88;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://westcoastbelts.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:89;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://payment.sundryfiles.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:90;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"http://ccadunkirk.mudhenmama.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:91;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://desertsupercup.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:92;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://shops-eminem.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:93;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://75yearsofracing.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:94;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://tixpls.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:95;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:44:\"http://legacyoutfitters.org/banquet/raffles/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:96;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://91170e9fc9.nxcli.io/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:97;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://beachwayrentals.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:98;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://thehivelivebox.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:99;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://esd.camp\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:100;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://mfkgamecalls.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:101;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://1greatce.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:102;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.luthyouth.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:103;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"https://electionintegrityidaho.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:104;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://renbundle.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:105;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://premierseamoss.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:106;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://teemart.net\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:107;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"https://fundrgear.com/beckendorffgirlsbb\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:108;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://visiblechild.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:109;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"http://ebookvital.me/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:110;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://renemarsh.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:111;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://www.eventricate.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:112;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://transgression.party\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:113;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://profadex.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:114;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://mxsbattlegrounds.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:115;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.poeinbaltimore.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:116;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://freefall.gg\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:117;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://underthechurchhatblog.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:118;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"http://naksparkle.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:119;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"http://bearlyburly.gay/inventory\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:120;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.premierboneandjoint.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:121;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://farm-2-bowl.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:122;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://hollandgrill.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:123;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://lividian.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:124;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://www.trainingrange.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:125;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://sarakepskitchen.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:126;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.phoenixyouththeatre.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:127;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://drivenarmsco.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:128;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://audiobro.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:129;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"https://www.iowaabortionaccessfund.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:130;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"http://findthemenu.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:131;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://moderndepot.co\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:132;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://granitesupplements.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:133;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://healthyrican.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:134;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://utest.edsandbox.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:135;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://c-pounds.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:136;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"https://littleschoolofsmiths.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:137;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://goblinstyle.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:138;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://proper-testing.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:139;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.cosafoundation.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:140;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://farmsteadboxes.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:141;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://fundraise4books.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:142;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://norskenook.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:143;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://cajulove.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}}}s:52:\"woopay-beta-merchantrecruitment-short-update-04MAY23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:52:\"woopay-beta-merchantrecruitment-short-update-04MAY23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:227:\"Be one of the first to try WooPay, our new express checkout feature. <br><b>Boost conversions</b> by letting customers pay with a <b>single click</b>. <br><br>Update to the latest version of WooCommerce Payments to get started.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:58:\"woopay-beta-merchantrecruitment-short-update-WCPay-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:27:\"Update WooCommerce Payments\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:61:\"woopay-beta-merchantrecruitment-short-update-activate-04MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Activate WooPay\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-04 18:00:20\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:144:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"http://pieroatomic3.wpcomstaging.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://www.bluebeautifly.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"http://indianrivernatural.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://fouroaksproducts.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:14:\"https://acb.la\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"https://www.sweetpotatoplant.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"http://www.gocaseyourself.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://laugun.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://nebraskadaybyday.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://vintagemarche727.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:17:\"https://kohai.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://gracegaze.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://aliensmeaning.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://myheritagegardens.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://shopmoresport.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://oladino.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://frogjumpstore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://cagedthundermma.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"https://fundrgear.com/mcelwainelementary\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://mgco.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://500gp.io/pay\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://waterglassslimes.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://antiqueful.shop/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://deeperkidmin.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:45:\"https://fundrgear.com/cyspringsboysbasketball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://houseofminifigs.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"http://box2273.temp.domains/~dreambx2/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://madebymixture.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://reliabletrash.company\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://www.daddybutter.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://circleqessentials.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://garlicbraids.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://fbdonline.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://galaxysedge.us\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://duckduckbeetfarm.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://varsitygraphics.net\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"http://jademackenzie.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"https://kristysketolifestyle.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://covid19criticalcare.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://parkviewprep.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:40;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://rock-fest.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:41;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"http://fillinxsolutions.com/etarix/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:42;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://doughremitx.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:43;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://www.montanafiddlecamp.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:44;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://fococomiccon.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:45;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://patricendouglas.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:46;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://hectue.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:47;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://montanamaxbbq.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:48;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"http://smellzoom.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:49;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://uptowne.theoandson.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:50;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"http://superbasic.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:51;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"http://ppodstore.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:52;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://kerenzan.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:53;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://a13bargains.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:54;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://colorgr.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:55;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:41:\"https://mindbodysoulcandles.com/Charlotte\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:56;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://peaceloveandadhd.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:57;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://seymoursmash.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:58;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://mwtournament.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:59;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:43:\"https://fundrgear.com/beckendorffgirlstrack\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:60;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:15:\"No results foun\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:61;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"http://allswellnyc.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:62;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://childoftheredwoodsmembers.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:63;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:41:\"https://fundrgear.com/grandoaksvolleyball\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:64;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.newhollandrochester.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:65;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://www.purplecatvet.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:66;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:39:\"https://www.mustangmountaincoaster.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:67;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://www.roccanj.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:68;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://www.teerico.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:69;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://passportunlimited.net\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:70;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.paladincards20.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:71;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"http://giantshorties.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:72;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://visualsports.biz\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:73;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://thefreakinricanrestaurant.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:74;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://arequestionscom.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:75;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"https://pt.tktxcompanystore.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:76;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://fitfoodiechicks.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:77;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://nutoshop.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:78;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://backwoodzhiphop.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:79;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://gartapparel.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:80;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://bodega.badiaspices.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:81;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://rampartrange.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:82;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://teeuni.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:83;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://bearsinthealley.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:84;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"http://vitalbooks.net/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:85;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"https://hair-free-hair-remover.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:86;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://gangtaynails.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:87;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://crochetfoundry.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:88;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://westcoastbelts.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:89;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:31:\"http://payment.sundryfiles.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:90;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"http://ccadunkirk.mudhenmama.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:91;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://desertsupercup.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:92;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://shops-eminem.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:93;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://75yearsofracing.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:94;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:18:\"http://tixpls.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:95;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:44:\"http://legacyoutfitters.org/banquet/raffles/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:96;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://91170e9fc9.nxcli.io/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:97;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://beachwayrentals.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:98;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://thehivelivebox.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:99;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:16:\"https://esd.camp\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:100;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://mfkgamecalls.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:101;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://1greatce.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:102;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:25:\"https://www.luthyouth.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:103;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:34:\"https://electionintegrityidaho.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:104;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://renbundle.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:105;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"http://premierseamoss.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:106;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://teemart.net\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:107;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:40:\"https://fundrgear.com/beckendorffgirlsbb\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:108;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://visiblechild.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:109;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"http://ebookvital.me/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:110;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:21:\"https://renemarsh.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:111;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://www.eventricate.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:112;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"https://transgression.party\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:113;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://profadex.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:114;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:28:\"https://mxsbattlegrounds.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:115;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.poeinbaltimore.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:116;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:19:\"https://freefall.gg\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:117;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"https://underthechurchhatblog.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:118;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"http://naksparkle.store/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:119;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"http://bearlyburly.gay/inventory\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:120;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.premierboneandjoint.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:121;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://farm-2-bowl.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:122;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://hollandgrill.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:123;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://lividian.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:124;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:29:\"https://www.trainingrange.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:125;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://sarakepskitchen.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:126;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:35:\"https://www.phoenixyouththeatre.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:127;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://drivenarmsco.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:128;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://audiobro.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:129;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"https://www.iowaabortionaccessfund.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:130;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:33:\"http://findthemenu.wordpress.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:131;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://moderndepot.co\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:132;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://granitesupplements.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:133;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:24:\"https://healthyrican.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:134;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://utest.edsandbox.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:135;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"http://c-pounds.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:136;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:32:\"https://littleschoolofsmiths.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:137;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:23:\"https://goblinstyle.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:138;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://proper-testing.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:139;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:30:\"https://www.cosafoundation.org\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:140;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:26:\"https://farmsteadboxes.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:141;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:27:\"http://fundraise4books.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:142;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:22:\"https://norskenook.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}i:143;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:20:\"https://cajulove.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}}}s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTA\";O:8:\"stdClass\":8:{s:4:\"slug\";s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTA\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:181:\"Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\n<b>Boost conversions</b> by letting customers pay with a <b>single click</b>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:60:\"woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTA\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:22:\"Activate WooPay Test A\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:70:\"woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:167:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-05 00:01:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"https://pieroatomic3.wpcomstaging.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTB\";O:8:\"stdClass\":8:{s:4:\"slug\";s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTB\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:181:\"Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\n<b>Boost conversions</b> by letting customers pay with a <b>single click</b>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:60:\"woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTB\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:22:\"Activate WooPay Test B\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:70:\"woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:167:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-05 20:58:43\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:36:\"http://pieroatomic3.wpcomstaging.com\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTC\";O:8:\"stdClass\":8:{s:4:\"slug\";s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTC\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:181:\"Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\n<b>Boost conversions</b> by letting customers pay with a <b>single click</b>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:60:\"woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTC\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:22:\"Activate WooPay Test C\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:70:\"woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:167:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-05 21:03:33\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:38:\"https://pieroatomic3.wpcomstaging.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTD\";O:8:\"stdClass\":8:{s:4:\"slug\";s:51:\"woopay-beta-merchantrecruitment-short-06MAY23-TESTD\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:181:\"Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\n<b>Boost conversions</b> by letting customers pay with a <b>single click</b>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:60:\"woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTD\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:22:\"Activate WooPay Test D\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:70:\"woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:167:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-05 21:32:09\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:7:\"siteurl\";s:5:\"value\";s:37:\"http://pieroatomic3.wpcomstaging.com/\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}}s:45:\"woopay-beta-merchantrecruitment-short-09MAY23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woopay-beta-merchantrecruitment-short-09MAY23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:181:\"Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\n<b>Boost conversions</b> by letting customers pay with a <b>single click</b>.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:61:\"woopay-beta-merchantrecruitment-short-activate-button-09MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Activate WooPay\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:72:\"woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn More\";}}s:3:\"url\";s:169:\"https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-08 19:18:44\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:17:\"platform_checkout\";}}}s:11:\"option_name\";s:41:\"woocommerce_woocommerce_payments_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"no\";s:7:\"default\";b:0;}i:3;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:31:\"data.platform_checkout_eligible\";}}}s:11:\"option_name\";s:18:\"wcpay_account_data\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;s:7:\"default\";b:0;}}}s:52:\"woopay-beta-merchantrecruitment-short-update-09MAY23\";O:8:\"stdClass\":8:{s:4:\"slug\";s:52:\"woopay-beta-merchantrecruitment-short-update-09MAY23\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Increase conversions with WooPay — our fastest checkout yet\";s:7:\"content\";s:227:\"Be one of the first to try WooPay, our new express checkout feature. <br><b>Boost conversions</b> by letting customers pay with a <b>single click</b>. <br><br>Update to the latest version of WooCommerce Payments to get started.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:58:\"woopay-beta-merchantrecruitment-short-update-WCPay-09MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:27:\"Update WooCommerce Payments\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:61:\"woopay-beta-merchantrecruitment-short-update-activate-09MAY23\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Activate WooPay\";}}s:3:\"url\";s:93:\"admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-05-08 19:45:57\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.8.1\";}i:2;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:17:\"platform_checkout\";}}}s:11:\"option_name\";s:41:\"woocommerce_woocommerce_payments_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"no\";s:7:\"default\";b:0;}i:3;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:31:\"data.platform_checkout_eligible\";}}}s:11:\"option_name\";s:18:\"wcpay_account_data\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;s:7:\"default\";b:0;}}}s:52:\"woocommerce-WCSubscriptions-June-2023-updated-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:52:\"woocommerce-WCSubscriptions-June-2023-updated-needed\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:61:\"Action required: Security update of WooCommerce Subscriptions\";s:7:\"content\";s:197:\"<strong>Your store requires a security update for the WooCommerce Subscriptions plugin</strong>. Please update the WooCommerce Subscriptions plugin immediately to address a potential vulnerability.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:68:\"woocommerce-WCSubscriptions-June-2023-updated-needed-Plugin-Settings\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:60:\"woocommerce-WCSubscriptions-June-2023-updated-needed-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-06-06 08:00:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"2.1.0\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:2:\"<=\";s:7:\"version\";s:5:\"5.1.2\";}}}s:54:\"woocommerce-WCReturnsWarranty-June-2023-updated-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:54:\"woocommerce-WCReturnsWarranty-June-2023-updated-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:87:\"Action required: Security update of WooCommerce Returns and Warranty Requests extension\";s:7:\"content\";s:270:\"<strong>Your store requires a security update for the Returns and Warranty Requests extension</strong>.  Please update to the latest version of the WooCommerce Returns and Warranty Requests extension immediately to address a potential vulnerability discovered on May 31.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:54:\"woocommerce-WCReturnsWarranty-June-2023-updated-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:54:\"woocommerce-WCReturnsWarranty-June-2023-updated-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-06-02 23:53:57\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-warranty\";s:8:\"operator\";s:2:\"<=\";s:7:\"version\";s:5:\"2.1.8\";}}}s:42:\"woocommerce-WCOPC-June-2023-updated-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-WCOPC-June-2023-updated-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:65:\"Action required: Security update of WooCommerce One Page Checkout\";s:7:\"content\";s:232:\"<strong>Your shop requires a security update to address a vulnerability in the WooCommerce One Page Checkout extension</strong>. The fix for this vulnerability was released for this extension on June 13th. Please update immediately.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-WCOPC-June-2023-updated-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-WCOPC-June-2023-updated-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-06-21 14:05:46\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:29:\"woocommerce-one-page-checkout\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"2.4.0\";}}}s:40:\"woocommerce-WCGC-July-2023-update-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:40:\"woocommerce-WCGC-July-2023-update-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:68:\"Action required: Security update of WooCommerce GoCardless Extension\";s:7:\"content\";s:205:\"<strong>Your shop requires a security update to address a vulnerability in the WooCommerce GoCardless extension</strong>. The fix for this vulnerability was released on July 4th. Please update immediately.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:40:\"woocommerce-WCGC-July-2023-update-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:40:\"woocommerce-WCGC-July-2023-update-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-07-04 15:36:07\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:30:\"woocommerce-gateway-gocardless\";s:8:\"operator\";s:2:\"<=\";s:7:\"version\";s:5:\"2.5.6\";}}}s:48:\"woocommerce-shipping-fedex-api-outage-2023-07-16\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-shipping-fedex-api-outage-2023-07-16\";s:4:\"type\";s:7:\"warning\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:40:\"Scheduled FedEx API outage — July 2023\";s:7:\"content\";s:277:\"On July 16 there will be a full outage of the FedEx API from 04:00 to 08:00 AM UTC. Due to planned maintenance by FedEx, you\'ll be unable to provide FedEx shipping rates during this time. Follow the link below for more information and recommendations on how to minimize impact.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:125:\"https://woocommerce.com/document/fedex/?utm_medium=product&utm_source=inbox_note&utm_campaign=learn-more#july-2023-api-outage\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-07-05 18:19:17\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-shipping-fedex\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2023-07-17 00:00:00\";}}}s:35:\"wcship-2023-07-hazmat-update-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wcship-2023-07-hazmat-update-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:87:\"Action required: USPS HAZMAT compliance update for WooCommerce Shipping & Tax extension\";s:7:\"content\";s:251:\"<strong>Your store requires an update for the WooCommerce Shipping extension</strong>. Please update to the latest version of the WooCommerce Shipping &amp; Tax extension immediately to ensure compliance with new USPS HAZMAT rules currently in effect.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"plugin-list\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:29:\"plugins.php?plugin_status=all\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:23:\"admin.php?page=wc-admin\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-07-11 20:26:59\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-services\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"2.3.0\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}s:43:\"woocommerce-WCStripe-Aug-2023-update-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:43:\"woocommerce-WCStripe-Aug-2023-update-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Action required: Security update for WooCommerce Stripe plugin\";s:7:\"content\";s:183:\"<strong>Your shop requires an important security update for the  WooCommerce Stripe plugin</strong>. The fix for this vulnerability was released on July 31. Please update immediately.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"woocommerce-WCStripe-Aug-2023-update-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:16:\"update-core.php?\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-08-03 05:00:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"7.4.2\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.3.2\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.4.5\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.5.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.6.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.9.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.0.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.2.2\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.3.2\";}}}}}}}s:46:\"woocommerce-WCStripe-Aug-2023-security-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-WCStripe-Aug-2023-security-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Security update of WooCommerce Stripe plugin\";s:7:\"content\";s:144:\"<strong>Your store has been updated to the latest secure version of the WooCommerce Stripe plugin</strong>. This update was released on July 31.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-08-03 05:00:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.3.2\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.4.5\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.5.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.6.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.9.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.0.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.2.2\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"7.3.2\";}}}}}s:49:\"woocommerce-WooPayments-Aug-2023-security-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:49:\"woocommerce-WooPayments-Aug-2023-security-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:60:\"Security update of WooPayments (WooCommerce Payments) plugin\";s:7:\"content\";s:147:\"<strong>Your store has been updated to the more secure version of WooPayments (WooCommerce Payments)</strong>. This update was released on July 31.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-08-03 05:00:13\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:17:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.6\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.5\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.4\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}}}}}s:24:\"avalara_q3-2023_noAvaTax\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"avalara_q3-2023_noAvaTax\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:40:\"Automatically calculate VAT in real time\";s:7:\"content\";s:284:\"Take the effort out of determining tax rates and sell confidently across borders with automated tax management from Avalara AvaTax— including built-in VAT calculation when you sell into or across the EU and UK. Save time and stay compliant when you let Avalara do the heavy lifting.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"avalara_q3-2023_noAvaTax\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Automate my sales tax\";}}s:3:\"url\";s:131:\"https://woocommerce.com/products/woocommerce-avatax/?utm_source=inbox_note&utm_medium=product&utm_campaign=avalara_q3-2023_noAvaTax\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-08-08 22:32:23\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2023-08-09 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-avatax\";}}}}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:30;}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:20:\"total_payments_value\";s:9:\"timeframe\";s:9:\"last_year\";s:5:\"value\";i:100;s:9:\"operation\";s:1:\">\";}}}s:44:\"woocommerce-usermeta-Sept2023-productvendors\";O:8:\"stdClass\":8:{s:4:\"slug\";s:44:\"woocommerce-usermeta-Sept2023-productvendors\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:37:\"Your store requires a security update\";s:7:\"content\";s:339:\"<strong>Your shop needs an update to address a vulnerability in WooCommerce.</strong> The fix was released on Sept 15. Please update WooCommerce to the latest version immediately. <a href=\"https://developer.woocommerce.com/2023/09/16/woocommerce-vulnerability-reintroduced-from-7-0-1/\" />Read our developer update</a> for more information.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:44:\"woocommerce-usermeta-Sept2023-productvendors\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:11:\"plugins.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-09-20 00:50:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-product-vendors\";}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"8.1.1\";}}}s:41:\"woocommerce-STRIPE-Oct-2023-update-needed\";O:8:\"stdClass\":8:{s:4:\"slug\";s:41:\"woocommerce-STRIPE-Oct-2023-update-needed\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Security update for WooCommerce Stripe Gateway\";s:7:\"content\";s:201:\"<strong>Your shop requires a security update to address a vulnerability in the WooCommerce Stripe Gateway</strong>. The fix for this vulnerability was released on October 17. Please update immediately.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:41:\"woocommerce-STRIPE-Oct-2023-update-needed\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:15:\"update-core.php\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:36:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-10-18 00:01:58\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"4.5.4\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.6\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.5.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.6.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.8.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.9.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.0.2\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.1.2\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.2.2\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.3.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.4.6\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.5.4\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.6.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.5.4\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.6.3\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.7.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.8.3\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"6.9.3\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"7.0.5\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"7.1.3\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"7.2.3\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"7.3.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"7.4.3\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"7.5.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:26:\"woocommerce-gateway-stripe\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"7.6.1\";}}}s:29:\"amazon-mcf-reviews-2023-12-07\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"amazon-mcf-reviews-2023-12-07\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Enjoying Amazon MCF for WooCommerce?\";s:7:\"content\";s:292:\"We\'re Never Settle, the developers behind Amazon MCF for WooCommerce, and would be deeply honored to have your review. Reviews help immensely as other users can learn how MCF can solve their needs too! Not happy or need help? Please reach out for support and we’d love to make things right!\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"amazon-mcf-review-button-2023-12-07\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Leave a review\";}}s:3:\"url\";s:161:\"https://woocommerce.com/products/woocommerce-amazon-fulfillment/?review&utm_source=inbox_note&utm_medium=product&utm_campaign=amazon-mcf-review-button-2023-12-07\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:36:\"amazon-mcf-support-button-2023-12-07\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:15:\"Request support\";}}s:3:\"url\";s:142:\"https://woocommerce.com/my-account/contact-support/?utm_source=inbox_note&utm_medium=product&utm_campaign=amazon-mcf-support-button-2023-12-07\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2023-12-06 15:21:27\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:30:\"woocommerce-amazon-fulfillment\";}}}}s:30:\"remove_estimated_deposits_2024\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"remove_estimated_deposits_2024\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:33:\"Estimated deposits are going away\";s:7:\"content\";s:267:\"To provide more accurate deposit information and support the expansion of instant deposits, estimated deposit details will no longer be available in WooPayments. We recommend upgrading to the latest version of WooPayments for more detailed balance status information.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"view_docs\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:29:\"Learn about Deposit schedules\";}}s:3:\"url\";s:151:\"https://woocommerce.com/document/woopayments/deposits/deposit-schedule/?utm_source=inbox_note&utm_medium=product&utm_campaign=view_docs#available-funds\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"6.9\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2024-01-21 08:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2024-01-31 23:59:59\";}}}s:26:\"sirt-woo-2024-11-xss-admin\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"sirt-woo-2024-11-xss-admin\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"An important update is required for WooCommerce\";s:7:\"content\";s:353:\"This update addresses a security vulnerability that could allow unauthorized access to administrative privileges on your site. <a href=\"https://developer.woocommerce.com/2024/12/03/woocommerce-9-4-3-and-woocommerce-9-3-4-available-now/\">Learn more</a>.\r\n<br><br>\r\n<strong>Please ensure your site is updated to the latest version to stay secure.</strong>\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:26:\"sirt-woo-2024-11-xss-admin\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"See available updates\";}}s:3:\"url\";s:16:\"update-core.php?\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:26:\"sirt-woo-2024-11-xss-admin\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:1:\"#\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2024-12-04 02:07:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"WooCommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"8.4.0\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"WooCommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"9.4.3\";}}}s:64:\"woocommerce-analytics-order-attribution-promotions-december-2024\";O:8:\"stdClass\":8:{s:4:\"slug\";s:64:\"woocommerce-analytics-order-attribution-promotions-december-2024\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Discover what drives your sales\";s:7:\"content\";s:216:\"Use our powerful <strong>Order Attribution</strong> extension to understand what truly drives your revenue. Track your sales journey, identify your most effective marketing channels, and optimize your sales strategy.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:78:\"woocommerce-analytics-order-attribution-promotions-december-2024-find-out-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-analytics\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2024-12-23 09:56:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:21:\"woocommerce-analytics\";}}}}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:5:\"value\";a:2:{i:0;i:1;i:1;i:12;}s:7:\"default\";i:0;s:9:\"operation\";s:5:\"range\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";}}}}}', 'off');
INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1045, 'woocommerce_checkout_phone_field', 'optional', 'auto'),
(1046, 'woocommerce_checkout_company_field', 'hidden', 'auto'),
(1047, 'woocommerce_checkout_address_2_field', 'optional', 'auto'),
(1050, '_transient_timeout_woocommerce_admin_payment_gateway_suggestions_specs', '1741073935', 'off');
INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1051, '_transient_woocommerce_admin_payment_gateway_suggestions_specs', 'a:1:{s:2:\"uk\";a:24:{s:6:\"affirm\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"affirm\";s:5:\"title\";s:6:\"Affirm\";s:7:\"content\";s:169:\"Affirm’s tailored Buy Now Pay Later programs remove price as a barrier, turning browsers into buyers, increasing average order value, and expanding your customer base.\";s:5:\"image\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/affirm.png\";s:7:\"plugins\";a:0:{}s:13:\"external_link\";s:59:\"https://woocommerce.com/products/woocommerce-gateway-affirm\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"9.2.0-dev\";s:8:\"operator\";s:1:\"<\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:2;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:4:\"data\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:10:\"array_keys\";}}s:11:\"option_name\";s:18:\"wcpay_account_data\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:10:\"account_id\";s:7:\"default\";a:0:{}}}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"US\";i:1;s:2:\"CA\";}s:23:\"recommendation_priority\";i:8;}s:8:\"afterpay\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"afterpay\";s:5:\"title\";s:8:\"Afterpay\";s:7:\"content\";s:125:\"Afterpay allows customers to receive products immediately and pay for purchases over four installments, always interest-free.\";s:5:\"image\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/afterpay.png\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"9.2.0-dev\";s:8:\"operator\";s:1:\"<\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:2;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:4:\"data\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:10:\"array_keys\";}}s:11:\"option_name\";s:18:\"wcpay_account_data\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:10:\"account_id\";s:7:\"default\";a:0:{}}}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:3:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"AU\";}s:23:\"recommendation_priority\";i:9;}s:14:\"airwallex_main\";O:8:\"stdClass\":11:{s:2:\"id\";s:14:\"airwallex_main\";s:5:\"title\";s:18:\"Airwallex Payments\";s:7:\"content\";s:115:\"Boost international sales and save on FX fees. Accept 60+ local payment methods including Apple Pay and Google Pay.\";s:5:\"image\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/airwallex.png\";s:11:\"image_72x72\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/airwallex.png\";s:12:\"square_image\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/airwallex-square.png\";s:7:\"plugins\";a:1:{i:0;s:33:\"airwallex-online-payments-gateway\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:17:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CN\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:17:{i:0;s:2:\"GB\";i:1;s:2:\"AT\";i:2;s:2:\"BE\";i:3;s:2:\"EE\";i:4;s:2:\"FR\";i:5;s:2:\"DE\";i:6;s:2:\"GR\";i:7;s:2:\"IE\";i:8;s:2:\"IT\";i:9;s:2:\"NL\";i:10;s:2:\"PL\";i:11;s:2:\"PT\";i:12;s:2:\"AU\";i:13;s:2:\"NZ\";i:14;s:2:\"HK\";i:15;s:2:\"SG\";i:16;s:2:\"CN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";N;}s:24:\"amazon_payments_advanced\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"amazon_payments_advanced\";s:5:\"title\";s:10:\"Amazon Pay\";s:7:\"content\";s:94:\"Enable a familiar, fast checkout for hundreds of millions of active Amazon customers globally.\";s:5:\"image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:11:\"image_72x72\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/amazonpay.png\";s:7:\"plugins\";a:1:{i:0;s:44:\"woocommerce-gateway-amazon-payments-advanced\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:18:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"6.5.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:18:{i:0;s:2:\"US\";i:1;s:2:\"AT\";i:2;s:2:\"BE\";i:3;s:2:\"CY\";i:4;s:2:\"DK\";i:5;s:2:\"ES\";i:6;s:2:\"FR\";i:7;s:2:\"DE\";i:8;s:2:\"GB\";i:9;s:2:\"HU\";i:10;s:2:\"IE\";i:11;s:2:\"IT\";i:12;s:2:\"LU\";i:13;s:2:\"NL\";i:14;s:2:\"PT\";i:15;s:2:\"SL\";i:16;s:2:\"SE\";i:17;s:2:\"JP\";}s:23:\"recommendation_priority\";i:7;}s:4:\"bacs\";O:8:\"stdClass\":8:{s:2:\"id\";s:4:\"bacs\";s:5:\"title\";s:20:\"Direct bank transfer\";s:7:\"content\";s:32:\"Take payments via bank transfer.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/bacs.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/bacs.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;s:23:\"recommendation_priority\";N;}s:3:\"cod\";O:8:\"stdClass\":8:{s:2:\"id\";s:3:\"cod\";s:5:\"title\";s:16:\"Cash on delivery\";s:7:\"content\";s:36:\"Take payments in cash upon delivery.\";s:5:\"image\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/cod.svg\";s:11:\"image_72x72\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/cod.png\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":1:{s:4:\"type\";s:4:\"pass\";}}s:10:\"is_offline\";b:1;s:23:\"recommendation_priority\";N;}s:4:\"eway\";O:8:\"stdClass\":11:{s:2:\"id\";s:4:\"eway\";s:5:\"title\";s:4:\"Eway\";s:7:\"content\";s:171:\"The Eway extension for WooCommerce allows you to take credit card payments directly on your store without redirecting your customers to a third party site to make payment.\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway.png\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/eway.png\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/eway-square.png\";s:7:\"plugins\";a:1:{i:0;s:24:\"woocommerce-gateway-eway\";}s:10:\"is_visible\";b:0;s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:7;}s:3:\"kco\";O:8:\"stdClass\":10:{s:2:\"id\";s:3:\"kco\";s:5:\"title\";s:15:\"Klarna Checkout\";s:7:\"content\";s:115:\"Choose the payment that you want, pay now, pay later or slice it. No credit card numbers, no passwords, no worries.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-checkout-for-woocommerce\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"NO\";i:1;s:2:\"SE\";i:2;s:2:\"FI\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:15:\"klarna_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:15:\"klarna_payments\";s:5:\"title\";s:15:\"Klarna Payments\";s:7:\"content\";s:115:\"Choose the payment that you want, pay now, pay later or slice it. No credit card numbers, no passwords, no worries.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/klarna-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/klarna.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:4:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"9.2.0-dev\";s:8:\"operator\";s:1:\"<\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:39:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}}}i:3;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:4:\"data\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:10:\"array_keys\";}}s:11:\"option_name\";s:18:\"wcpay_account_data\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:10:\"account_id\";s:7:\"default\";a:0:{}}}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:19:{i:0;s:2:\"MX\";i:1;s:2:\"US\";i:2;s:2:\"CA\";i:3;s:2:\"AT\";i:4;s:2:\"BE\";i:5;s:2:\"CH\";i:6;s:2:\"DK\";i:7;s:2:\"ES\";i:8;s:2:\"FI\";i:9;s:2:\"FR\";i:10;s:2:\"DE\";i:11;s:2:\"GB\";i:12;s:2:\"IT\";i:13;s:2:\"NL\";i:14;s:2:\"NO\";i:15;s:2:\"PL\";i:16;s:2:\"SE\";i:17;s:2:\"NZ\";i:18;s:2:\"AU\";}s:23:\"recommendation_priority\";i:6;}s:30:\"mollie_wc_gateway_banktransfer\";O:8:\"stdClass\":11:{s:2:\"id\";s:30:\"mollie_wc_gateway_banktransfer\";s:5:\"title\";s:6:\"Mollie\";s:7:\"content\";s:128:\"Effortless payments by Mollie: Offer global and local payment methods, get onboarded in minutes, and supported in your language.\";s:5:\"image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie.svg\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mollie.png\";s:12:\"square_image\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mollie-square.png\";s:7:\"plugins\";a:1:{i:0;s:31:\"mollie-payments-for-woocommerce\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:11:{i:0;s:2:\"AT\";i:1;s:2:\"BE\";i:2;s:2:\"CH\";i:3;s:2:\"ES\";i:4;s:2:\"FI\";i:5;s:2:\"FR\";i:6;s:2:\"DE\";i:7;s:2:\"GB\";i:8;s:2:\"IT\";i:9;s:2:\"NL\";i:10;s:2:\"PL\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:5;}s:7:\"payfast\";O:8:\"stdClass\":10:{s:2:\"id\";s:7:\"payfast\";s:5:\"title\";s:7:\"Payfast\";s:7:\"content\";s:299:\"The Payfast extension for WooCommerce enables you to accept payments by Credit Card and EFT via one of South Africa’s most popular payment gateways. No setup fees or monthly subscription costs. Selecting this extension will configure your store to use South African rands as the selected currency.\";s:5:\"image\";s:80:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/payfast.png\";s:11:\"image_72x72\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payfast.png\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-payfast-gateway\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"ZA\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:5;}s:17:\"payoneer-checkout\";O:8:\"stdClass\":10:{s:2:\"id\";s:17:\"payoneer-checkout\";s:5:\"title\";s:17:\"Payoneer Checkout\";s:7:\"content\";s:202:\"Payoneer Checkout is the next generation of payment processing platforms, giving merchants around the world the solutions and direction they need to succeed in today’s hyper-competitive global market.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payoneer.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payoneer.png\";s:7:\"plugins\";a:1:{i:0;s:17:\"payoneer-checkout\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CN\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:2:{i:0;s:2:\"HK\";i:1;s:2:\"CN\";}s:23:\"recommendation_priority\";i:11;}s:8:\"paystack\";O:8:\"stdClass\":11:{s:2:\"id\";s:8:\"paystack\";s:5:\"title\";s:8:\"Paystack\";s:7:\"content\";s:127:\"Paystack helps African merchants accept one-time and recurring payments online with a modern, safe, and secure payment gateway.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack.png\";s:12:\"square_image\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paystack-square.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paystack.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-paystack\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ZA\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GH\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:3:{i:0;s:2:\"ZA\";i:1;s:2:\"GH\";i:2;s:2:\"NG\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:7:\"payubiz\";O:8:\"stdClass\":10:{s:2:\"id\";s:7:\"payubiz\";s:5:\"title\";s:20:\"PayU for WooCommerce\";s:7:\"content\";s:169:\"Enable PayU’s exclusive plugin for WooCommerce to start accepting payments in 100+ payment methods available in India including credit cards, debit cards, UPI, & more!\";s:5:\"image\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/payu.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/payu.png\";s:7:\"plugins\";a:1:{i:0;s:10:\"payu-india\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:12:\"ppcp-gateway\";O:8:\"stdClass\":11:{s:2:\"id\";s:12:\"ppcp-gateway\";s:5:\"title\";s:15:\"PayPal Payments\";s:7:\"content\";s:78:\"Safe and secure payments using credit cards or your customer\'s PayPal account.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/paypal.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/paypal.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/paypal.svg\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:49:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EC\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:40;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:41;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:42;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:43;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:44;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:45;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:46;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CN\";s:9:\"operation\";s:1:\"=\";}i:47;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:48;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:48:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"BR\";i:4;s:2:\"AR\";i:5;s:2:\"CL\";i:6;s:2:\"CO\";i:7;s:2:\"EC\";i:8;s:2:\"PE\";i:9;s:2:\"UY\";i:10;s:2:\"VE\";i:11;s:2:\"AT\";i:12;s:2:\"BE\";i:13;s:2:\"BG\";i:14;s:2:\"HR\";i:15;s:2:\"CH\";i:16;s:2:\"CY\";i:17;s:2:\"CZ\";i:18;s:2:\"DK\";i:19;s:2:\"EE\";i:20;s:2:\"ES\";i:21;s:2:\"FI\";i:22;s:2:\"FR\";i:23;s:2:\"DE\";i:24;s:2:\"GB\";i:25;s:2:\"GR\";i:26;s:2:\"HU\";i:27;s:2:\"IE\";i:28;s:2:\"IT\";i:29;s:2:\"LV\";i:30;s:2:\"LT\";i:31;s:2:\"LU\";i:32;s:2:\"MT\";i:33;s:2:\"NL\";i:34;s:2:\"NO\";i:35;s:2:\"PL\";i:36;s:2:\"PT\";i:37;s:2:\"RO\";i:38;s:2:\"SK\";i:39;s:2:\"SL\";i:40;s:2:\"SE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";}s:19:\"category_additional\";a:49:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"BR\";i:4;s:2:\"AR\";i:5;s:2:\"CL\";i:6;s:2:\"CO\";i:7;s:2:\"EC\";i:8;s:2:\"PE\";i:9;s:2:\"UY\";i:10;s:2:\"VE\";i:11;s:2:\"AT\";i:12;s:2:\"BE\";i:13;s:2:\"BG\";i:14;s:2:\"HR\";i:15;s:2:\"CH\";i:16;s:2:\"CY\";i:17;s:2:\"CZ\";i:18;s:2:\"DK\";i:19;s:2:\"EE\";i:20;s:2:\"ES\";i:21;s:2:\"FI\";i:22;s:2:\"FR\";i:23;s:2:\"DE\";i:24;s:2:\"GB\";i:25;s:2:\"GR\";i:26;s:2:\"HU\";i:27;s:2:\"IE\";i:28;s:2:\"IT\";i:29;s:2:\"LV\";i:30;s:2:\"LT\";i:31;s:2:\"LU\";i:32;s:2:\"MT\";i:33;s:2:\"NL\";i:34;s:2:\"NO\";i:35;s:2:\"PL\";i:36;s:2:\"PT\";i:37;s:2:\"RO\";i:38;s:2:\"SK\";i:39;s:2:\"SL\";i:40;s:2:\"SE\";i:41;s:2:\"AU\";i:42;s:2:\"NZ\";i:43;s:2:\"HK\";i:44;s:2:\"JP\";i:45;s:2:\"SG\";i:46;s:2:\"CN\";i:47;s:2:\"ID\";i:48;s:2:\"IN\";}s:23:\"recommendation_priority\";i:4;}s:8:\"razorpay\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"razorpay\";s:5:\"title\";s:8:\"Razorpay\";s:7:\"content\";s:133:\"The official Razorpay extension for WooCommerce allows you to accept credit cards, debit cards, netbanking, wallet, and UPI payments.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/razorpay.svg\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/razorpay.png\";s:7:\"plugins\";a:1:{i:0;s:12:\"woo-razorpay\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:1:{i:0;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:5;}s:18:\"square_credit_card\";O:8:\"stdClass\":10:{s:2:\"id\";s:18:\"square_credit_card\";s:5:\"title\";s:6:\"Square\";s:7:\"content\";s:169:\"Securely accept credit and debit cards with one low rate, no surprise fees (custom rates available). Sell online and in store and track sales and inventory in one place.\";s:5:\"image\";s:85:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/square-black.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/square.png\";s:7:\"plugins\";a:1:{i:0;s:18:\"woocommerce-square\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}i:1;a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:8:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:12:\"brick-mortar\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:14:\"selling_venues\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:18:\"brick-mortar-other\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:21:\"selling_online_answer\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:21:\"no_im_selling_offline\";s:7:\"default\";s:0:\"\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:21:\"selling_online_answer\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:34:\"im_selling_both_online_and_offline\";s:7:\"default\";s:0:\"\";}}}}}}}}}s:14:\"category_other\";a:8:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"IE\";i:3;s:2:\"ES\";i:4;s:2:\"FR\";i:5;s:2:\"GB\";i:6;s:2:\"AU\";i:7;s:2:\"JP\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:6;}s:6:\"stripe\";O:8:\"stdClass\":11:{s:2:\"id\";s:6:\"stripe\";s:5:\"title\";s:6:\"Stripe\";s:7:\"content\";s:112:\"Accept debit and credit cards in 135+ currencies, methods such as Alipay, and one-touch checkout with Apple Pay.\";s:5:\"image\";s:79:\"https://woocommerce.com/wp-content/plugins/woocommerce/assets/images/stripe.png\";s:11:\"image_72x72\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/stripe.png\";s:12:\"square_image\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/stripe.svg\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SL\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IN\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"category_other\";a:40:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"BR\";i:4;s:2:\"AT\";i:5;s:2:\"BE\";i:6;s:2:\"BG\";i:7;s:2:\"CH\";i:8;s:2:\"CY\";i:9;s:2:\"CZ\";i:10;s:2:\"DK\";i:11;s:2:\"EE\";i:12;s:2:\"ES\";i:13;s:2:\"FI\";i:14;s:2:\"FR\";i:15;s:2:\"DE\";i:16;s:2:\"GB\";i:17;s:2:\"GR\";i:18;s:2:\"HU\";i:19;s:2:\"IE\";i:20;s:2:\"IT\";i:21;s:2:\"LV\";i:22;s:2:\"LT\";i:23;s:2:\"LU\";i:24;s:2:\"MT\";i:25;s:2:\"NL\";i:26;s:2:\"NO\";i:27;s:2:\"PL\";i:28;s:2:\"PT\";i:29;s:2:\"RO\";i:30;s:2:\"SK\";i:31;s:2:\"SL\";i:32;s:2:\"SE\";i:33;s:2:\"AU\";i:34;s:2:\"NZ\";i:35;s:2:\"HK\";i:36;s:2:\"JP\";i:37;s:2:\"SG\";i:38;s:2:\"ID\";i:39;s:2:\"IN\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:2;}s:23:\"woo-mercado-pago-custom\";O:8:\"stdClass\":11:{s:2:\"id\";s:23:\"woo-mercado-pago-custom\";s:5:\"title\";s:12:\"Mercado Pago\";s:7:\"content\";s:198:\"Set up your payment methods and accept credit and debit cards, cash, bank transfers and money from your Mercado Pago account. Offer safe and secure payments with Latin America’s leading processor.\";s:5:\"image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/mercadopago.png\";s:11:\"image_72x72\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/mercadopago.png\";s:7:\"plugins\";a:1:{i:0;s:23:\"woocommerce-mercadopago\";}s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:8:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CL\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CO\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EC\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UY\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}}}}s:16:\"is_local_partner\";b:1;s:14:\"category_other\";a:8:{i:0;s:2:\"AR\";i:1;s:2:\"CL\";i:2;s:2:\"CO\";i:3;s:2:\"EC\";i:4;s:2:\"PE\";i:5;s:2:\"UY\";i:6;s:2:\"MX\";i:7;s:2:\"BR\";}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:3;}s:20:\"woocommerce_payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:84:\"Manage transactions without leaving your WordPress Dashboard. Only with WooPayments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:225:\"With WooPayments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies. Track cash flow and manage recurring revenue directly from your store’s dashboard - with no setup costs or monthly fees.\";s:10:\"is_visible\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:39:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:1:\"<\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:1:\"<\";}}}}s:23:\"recommendation_priority\";i:1;}s:47:\"woocommerce_payments:without-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:47:\"woocommerce_payments:without-in-person-payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:84:\"Manage transactions without leaving your WordPress Dashboard. Only with WooPayments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:225:\"With WooPayments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies. Track cash flow and manage recurring revenue directly from your store’s dashboard - with no setup costs or monthly fees.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:37:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:44:\"woocommerce_payments:with-in-person-payments\";O:8:\"stdClass\":10:{s:2:\"id\";s:44:\"woocommerce_payments:with-in-person-payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:84:\"Manage transactions without leaving your WordPress Dashboard. Only with WooPayments.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:11:\"image_72x72\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:11:\"description\";s:212:\"With WooPayments, you can securely accept major cards, Apple Pay, and payments in over 100 currencies – with no setup costs or monthly fees – and you can now accept in-person payments with the Woo mobile app.\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:7:\"version\";s:9:\"2.9.0-dev\";s:8:\"operator\";s:2:\">=\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:10:\"5.10.0-dev\";s:8:\"operator\";s:2:\">=\";}}}}s:23:\"recommendation_priority\";i:1;}s:25:\"woocommerce_payments:bnpl\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"woocommerce_payments:bnpl\";s:5:\"title\";s:38:\"Activate BNPL instantly on WooPayments\";s:7:\"content\";s:185:\"The world’s favorite buy now, pay later options and many more are right at your fingertips with WooPayments — all from one dashboard, without needing multiple extensions and logins.\";s:5:\"image\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay-bnpl.svg\";s:11:\"image_72x72\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay-bnpl.svg\";s:12:\"square_image\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/woocommerce.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:18:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"9.2.0-dev\";s:8:\"operator\";s:2:\">=\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}}i:4;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:4:\"data\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:10:\"array_keys\";}}s:11:\"option_name\";s:18:\"wcpay_account_data\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:10:\"account_id\";s:7:\"default\";a:0:{}}}s:23:\"recommendation_priority\";N;}s:8:\"zipmoney\";O:8:\"stdClass\":10:{s:2:\"id\";s:8:\"zipmoney\";s:5:\"title\";s:27:\"Zip Co - Buy Now, Pay Later\";s:7:\"content\";s:84:\"Give your customers the power to pay later, interest free and watch your sales grow.\";s:5:\"image\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/zipmoney.png\";s:11:\"image_72x72\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/72x72/zipmoney.png\";s:7:\"plugins\";a:1:{i:0;s:29:\"zipmoney-payments-woocommerce\";}s:10:\"is_visible\";b:0;s:14:\"category_other\";a:0:{}s:19:\"category_additional\";a:0:{}s:23:\"recommendation_priority\";i:10;}}}', 'off');
INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1078, '_transient_product_query-transient-version', '1740469358', 'on'),
(1079, '_transient_product-transient-version', '1740469358', 'on'),
(1110, 'jetpack_connection_active_plugins', 'a:1:{s:11:\"woocommerce\";a:1:{s:4:\"name\";s:11:\"WooCommerce\";}}', 'auto'),
(1156, 'product_brand_children', 'a:0:{}', 'auto'),
(1206, '_transient_timeout_wc_var_prices_78', '1741849628', 'off'),
(1207, '_transient_wc_var_prices_78', '{\"version\":\"1739227190\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'off'),
(1393, 'woocommerce_brand_permalink', '', 'auto'),
(1408, '_transient_orders-transient-version', '1740429076', 'on'),
(1409, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'on'),
(1738, '_transient_timeout_wc_shipping_method_count_legacy', '1741902480', 'off'),
(1739, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1739283513\";s:5:\"value\";i:1;}', 'off'),
(2039, '_transient_timeout_wc_product_children_0', '1741964786', 'off'),
(2040, '_transient_wc_product_children_0', 'a:3:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}s:7:\"version\";s:10:\"1739372674\";}', 'off'),
(2060, '_transient_timeout_wc_product_children_99', '1741964860', 'off'),
(2061, '_transient_wc_product_children_99', 'a:3:{s:3:\"all\";a:6:{i:0;i:100;i:1;i:101;i:2;i:102;i:3;i:103;i:4;i:104;i:5;i:105;}s:7:\"visible\";a:6:{i:0;i:100;i:1;i:101;i:2;i:102;i:3;i:103;i:4;i:104;i:5;i:105;}s:7:\"version\";s:10:\"1739372830\";}', 'off'),
(2062, '_transient_timeout_wc_var_prices_99', '1741964860', 'off'),
(2063, '_transient_wc_var_prices_99', '{\"version\":\"1739372830\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"100\":\"99.00\",\"101\":\"96.00\",\"102\":\"98.00\",\"103\":\"69.00\",\"104\":\"44.00\",\"105\":\"55.00\"},\"regular_price\":{\"100\":\"99.00\",\"101\":\"96.00\",\"102\":\"98.00\",\"103\":\"69.00\",\"104\":\"44.00\",\"105\":\"55.00\"},\"sale_price\":{\"100\":\"99.00\",\"101\":\"96.00\",\"102\":\"98.00\",\"103\":\"69.00\",\"104\":\"44.00\",\"105\":\"55.00\"}}}', 'off'),
(2079, '_transient_timeout_wc_product_children_106', '1743021068', 'off'),
(2080, '_transient_wc_product_children_106', 'a:3:{s:3:\"all\";a:6:{i:0;i:107;i:1;i:108;i:2;i:109;i:3;i:110;i:4;i:111;i:5;i:112;}s:7:\"visible\";a:6:{i:0;i:107;i:1;i:108;i:2;i:109;i:3;i:110;i:4;i:111;i:5;i:112;}s:7:\"version\";s:10:\"1740428101\";}', 'off'),
(2081, '_transient_timeout_wc_var_prices_106', '1743021068', 'off'),
(2082, '_transient_wc_var_prices_106', '{\"version\":\"1740428101\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"107\":\"99.00\",\"108\":\"96.00\",\"109\":\"98.00\",\"110\":\"69.00\",\"111\":\"44.00\",\"112\":\"55.00\"},\"regular_price\":{\"107\":\"99.00\",\"108\":\"96.00\",\"109\":\"98.00\",\"110\":\"69.00\",\"111\":\"44.00\",\"112\":\"55.00\"},\"sale_price\":{\"107\":\"99.00\",\"108\":\"96.00\",\"109\":\"98.00\",\"110\":\"69.00\",\"111\":\"44.00\",\"112\":\"55.00\"}}}', 'off'),
(2095, '_transient_timeout_wc_product_children_113', '1743021068', 'off'),
(2096, '_transient_wc_product_children_113', 'a:3:{s:3:\"all\";a:6:{i:0;i:114;i:1;i:115;i:2;i:116;i:3;i:117;i:4;i:118;i:5;i:119;}s:7:\"visible\";a:6:{i:0;i:114;i:1;i:115;i:2;i:116;i:3;i:117;i:4;i:118;i:5;i:119;}s:7:\"version\";s:10:\"1740428101\";}', 'off'),
(2101, '_transient_timeout_wc_var_prices_113', '1743021068', 'off'),
(2102, '_transient_wc_var_prices_113', '{\"version\":\"1740428101\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"114\":\"99.00\",\"115\":\"96.00\",\"116\":\"98.00\",\"117\":\"69.00\",\"118\":\"44.00\",\"119\":\"55.00\"},\"regular_price\":{\"114\":\"99.00\",\"115\":\"96.00\",\"116\":\"98.00\",\"117\":\"69.00\",\"118\":\"44.00\",\"119\":\"55.00\"},\"sale_price\":{\"114\":\"99.00\",\"115\":\"96.00\",\"116\":\"98.00\",\"117\":\"69.00\",\"118\":\"44.00\",\"119\":\"55.00\"}}}', 'off'),
(2119, '_transient_timeout_wc_product_children_120', '1743021067', 'off'),
(2120, '_transient_wc_product_children_120', 'a:3:{s:3:\"all\";a:6:{i:0;i:121;i:1;i:122;i:2;i:123;i:3;i:124;i:4;i:125;i:5;i:126;}s:7:\"visible\";a:6:{i:0;i:121;i:1;i:122;i:2;i:123;i:3;i:124;i:4;i:125;i:5;i:126;}s:7:\"version\";s:10:\"1740428101\";}', 'off'),
(2123, '_transient_timeout_wc_var_prices_120', '1743021068', 'off'),
(2124, '_transient_wc_var_prices_120', '{\"version\":\"1740428101\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"121\":\"99.00\",\"122\":\"96.00\",\"123\":\"98.00\",\"124\":\"69.00\",\"125\":\"44.00\",\"126\":\"55.00\"},\"regular_price\":{\"121\":\"99.00\",\"122\":\"96.00\",\"123\":\"98.00\",\"124\":\"69.00\",\"125\":\"44.00\",\"126\":\"55.00\"},\"sale_price\":{\"121\":\"99.00\",\"122\":\"96.00\",\"123\":\"98.00\",\"124\":\"69.00\",\"125\":\"44.00\",\"126\":\"55.00\"}}}', 'off'),
(2144, '_transient_timeout_wc_product_children_127', '1743021067', 'off'),
(2145, '_transient_wc_product_children_127', 'a:3:{s:3:\"all\";a:6:{i:0;i:128;i:1;i:129;i:2;i:130;i:3;i:131;i:4;i:132;i:5;i:133;}s:7:\"visible\";a:6:{i:0;i:128;i:1;i:129;i:2;i:130;i:3;i:131;i:4;i:132;i:5;i:133;}s:7:\"version\";s:10:\"1740428101\";}', 'off'),
(2146, '_transient_timeout_wc_var_prices_127', '1743021067', 'off'),
(2147, '_transient_wc_var_prices_127', '{\"version\":\"1740428101\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"128\":\"99.00\",\"129\":\"96.00\",\"130\":\"98.00\",\"131\":\"69.00\",\"132\":\"44.00\",\"133\":\"55.00\"},\"regular_price\":{\"128\":\"99.00\",\"129\":\"96.00\",\"130\":\"98.00\",\"131\":\"69.00\",\"132\":\"44.00\",\"133\":\"55.00\"},\"sale_price\":{\"128\":\"99.00\",\"129\":\"96.00\",\"130\":\"98.00\",\"131\":\"69.00\",\"132\":\"44.00\",\"133\":\"55.00\"}}}', 'off'),
(2150, 'woocommerce_catalog_columns', '3', 'on'),
(2151, 'woocommerce_catalog_rows', '2', 'on'),
(2152, 'woocommerce_admin_customize_store_completed', 'yes', 'auto'),
(2153, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'auto'),
(2403, '_transient_timeout_wc_shipping_method_count', '1742063253', 'off'),
(2404, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1739283513\";s:5:\"value\";i:1;}', 'off'),
(2436, 'category_children', 'a:0:{}', 'auto'),
(2467, 'product_cat_children', 'a:1:{i:18;a:3:{i:0;i:19;i:1;i:29;i:2;i:30;}}', 'auto'),
(3982, '_transient_timeout_orders-all-statuses', '1741034064', 'off'),
(3983, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1740429099\";s:5:\"value\";a:1:{i:0;s:17:\"wc-checkout-draft\";}}', 'off'),
(4015, '_transient_timeout_wc_blocks_query_a404a19af890b4b6bdfa968f0bbc54db', '1743021067', 'off'),
(4016, '_transient_wc_blocks_query_a404a19af890b4b6bdfa968f0bbc54db', 'a:2:{s:7:\"version\";s:10:\"1740428101\";s:5:\"value\";a:4:{i:0;i:127;i:1;i:120;i:2;i:113;i:3;i:106;}}', 'off'),
(4019, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1740488102', 'off'),
(4020, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(5602, '_transient_timeout_woocommerce_admin_pes_incentive_woopayments_cache', '1740509306', 'off'),
(5603, '_transient_woocommerce_admin_pes_incentive_woopayments_cache', 'a:3:{s:10:\"incentives\";a:0:{}s:12:\"context_hash\";s:32:\"06a32cb7d0d4761e6b85597d981b07ff\";s:9:\"timestamp\";i:1740422906;}', 'off'),
(5606, '_transient_timeout_wc_tracks_blog_details', '1740509313', 'off'),
(5607, '_transient_wc_tracks_blog_details', 'a:6:{s:3:\"url\";s:16:\"http://enjoy.loc\";s:9:\"blog_lang\";s:2:\"uk\";s:7:\"blog_id\";b:0;s:8:\"store_id\";s:36:\"8339cb1c-d939-4b0a-bcd1-ae1a53d93f6b\";s:14:\"products_count\";s:1:\"7\";s:10:\"wc_version\";s:5:\"9.6.1\";}', 'off'),
(5608, '_transient_timeout_woocommerce_marketplace_promotions_v2', '1740555547', 'off'),
(5609, '_transient_woocommerce_marketplace_promotions_v2', 'a:1:{s:6:\"notice\";a:8:{s:13:\"date_from_gmt\";s:16:\"2024-11-17 00:00\";s:11:\"date_to_gmt\";s:16:\"2024-11-20 23:59\";s:6:\"format\";s:6:\"notice\";s:5:\"style\";s:4:\"info\";s:5:\"pages\";a:5:{i:0;a:4:{s:4:\"page\";s:8:\"wc-admin\";s:4:\"path\";s:11:\"/extensions\";s:3:\"tab\";s:0:\"\";s:4:\"name\";s:8:\"Discover\";}i:1;a:4:{s:4:\"page\";s:8:\"wc-admin\";s:4:\"path\";s:11:\"/extensions\";s:3:\"tab\";s:10:\"extensions\";s:4:\"name\";s:6:\"Browse\";}i:2;a:4:{s:4:\"page\";s:8:\"wc-admin\";s:4:\"path\";s:11:\"/extensions\";s:3:\"tab\";s:6:\"themes\";s:4:\"name\";s:6:\"Themes\";}i:3;a:4:{s:4:\"page\";s:8:\"wc-admin\";s:4:\"path\";s:11:\"/extensions\";s:3:\"tab\";s:17:\"business-services\";s:4:\"name\";s:17:\"Business Services\";}i:4;a:4:{s:4:\"page\";s:8:\"wc-admin\";s:4:\"path\";s:11:\"/extensions\";s:3:\"tab\";s:16:\"my-subscriptions\";s:4:\"name\";s:16:\"My Subscriptions\";}}s:7:\"content\";a:1:{s:5:\"en_US\";s:192:\"<strong>Save 40%</strong> in the WooCommerce Marketplace sale. Offer ends December 3 at 3 pm UTC. <a href=\"https://woocommerce.com/products/#sale-ts-and-cs\" target=\"_blank\">T&amp;Cs</a> apply.\";}s:4:\"icon\";s:7:\"percent\";s:14:\"is_dismissible\";b:1;}}', 'off'),
(5611, '_transient_timeout_acf_plugin_updates', '1740595733', 'off'),
(5612, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:0:{}s:9:\"no_update\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250121\";s:6:\"reason\";s:10:\"up_to_date\";}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"6.3.12\";}}', 'off'),
(5628, '_site_transient_timeout_woocommerce_block_asset_resource_hints', '1741031957', 'off'),
(5629, '_site_transient_woocommerce_block_asset_resource_hints', 'a:2:{s:5:\"files\";a:2:{s:13:\"cart-frontend\";a:43:{i:0;a:2:{s:4:\"href\";s:110:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/cart-frontend.js?ver=a428e7b790ea3d73903b\";s:2:\"as\";s:6:\"script\";}i:1;a:2:{s:4:\"href\";s:127:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-base-frontend.js?ver=b594dc8602aaa72e7a30\";s:2:\"as\";s:6:\"script\";}i:2;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0\";s:2:\"as\";s:6:\"script\";}i:3;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/i18n.min.js?ver=5e580eb46a90c2b997e6\";s:2:\"as\";s:6:\"script\";}i:4;a:2:{s:4:\"href\";s:74:\"http://enjoy.loc/wp-includes/js/dist/hooks.min.js?ver=4d63a3d491d11ffd8ac6\";s:2:\"as\";s:6:\"script\";}i:5;a:2:{s:4:\"href\";s:130:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-vendors-frontend.js?ver=8b934c55748661cd53da\";s:2:\"as\";s:6:\"script\";}i:9;a:2:{s:4:\"href\";s:69:\"http://enjoy.loc/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:10;a:2:{s:4:\"href\";s:112:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/blocks-checkout.js?ver=b00178cb31b1aeee8038\";s:2:\"as\";s:6:\"script\";}i:20;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:22;a:2:{s:4:\"href\";s:114:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/blocks-components.js?ver=5f11d5c440e62fef7bb5\";s:2:\"as\";s:6:\"script\";}i:34;a:2:{s:4:\"href\";s:111:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-data.js?ver=ec9fb81524f7793b1d14\";s:2:\"as\";s:6:\"script\";}i:35;a:2:{s:4:\"href\";s:115:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-registry.js?ver=eb38a1eeccda913f6add\";s:2:\"as\";s:6:\"script\";}i:37;a:2:{s:4:\"href\";s:108:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-settings.js?ver=eb5ac71a827c4c81fed8\";s:2:\"as\";s:6:\"script\";}i:40;a:2:{s:4:\"href\";s:78:\"http://enjoy.loc/wp-includes/js/dist/api-fetch.min.js?ver=d387b816bc1ed2042e28\";s:2:\"as\";s:6:\"script\";}i:43;a:2:{s:4:\"href\";s:72:\"http://enjoy.loc/wp-includes/js/dist/url.min.js?ver=e87eb76272a3a08402d2\";s:2:\"as\";s:6:\"script\";}i:48;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/data.min.js?ver=7c62e39de0308c73d50c\";s:2:\"as\";s:6:\"script\";}i:49;a:2:{s:4:\"href\";s:79:\"http://enjoy.loc/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1\";s:2:\"as\";s:6:\"script\";}i:51;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/compose.min.js?ver=d52df0f868e03c1bd905\";s:2:\"as\";s:6:\"script\";}i:55;a:2:{s:4:\"href\";s:79:\"http://enjoy.loc/wp-includes/js/dist/deprecated.min.js?ver=e1f84915c5e8ae38964c\";s:2:\"as\";s:6:\"script\";}i:57;a:2:{s:4:\"href\";s:72:\"http://enjoy.loc/wp-includes/js/dist/dom.min.js?ver=93117dfee2692b04b770\";s:2:\"as\";s:6:\"script\";}i:60;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/element.min.js?ver=cb762d190aebbec25b27\";s:2:\"as\";s:6:\"script\";}i:64;a:2:{s:4:\"href\";s:80:\"http://enjoy.loc/wp-includes/js/dist/escape-html.min.js?ver=6561a406d2d232a6fbd2\";s:2:\"as\";s:6:\"script\";}i:65;a:2:{s:4:\"href\";s:85:\"http://enjoy.loc/wp-includes/js/dist/is-shallow-equal.min.js?ver=e0f9f1d78d83f5196979\";s:2:\"as\";s:6:\"script\";}i:66;a:2:{s:4:\"href\";s:77:\"http://enjoy.loc/wp-includes/js/dist/keycodes.min.js?ver=034ff647a54b018581d3\";s:2:\"as\";s:6:\"script\";}i:70;a:2:{s:4:\"href\";s:83:\"http://enjoy.loc/wp-includes/js/dist/priority-queue.min.js?ver=9c21c957c7e50ffdbf48\";s:2:\"as\";s:6:\"script\";}i:81;a:2:{s:4:\"href\";s:81:\"http://enjoy.loc/wp-includes/js/dist/private-apis.min.js?ver=4b858962c15c2c7a135f\";s:2:\"as\";s:6:\"script\";}i:82;a:2:{s:4:\"href\";s:82:\"http://enjoy.loc/wp-includes/js/dist/redux-routine.min.js?ver=a0a172871afaeb261566\";s:2:\"as\";s:6:\"script\";}i:103;a:2:{s:4:\"href\";s:105:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-types.js?ver=bda84b1be3361607d04a\";s:2:\"as\";s:6:\"script\";}i:146;a:2:{s:4:\"href\";s:82:\"http://enjoy.loc/wp-includes/js/dist/data-controls.min.js?ver=49f5587e8b90f9e7cc7e\";s:2:\"as\";s:6:\"script\";}i:201;a:2:{s:4:\"href\";s:82:\"http://enjoy.loc/wp-includes/js/dist/html-entities.min.js?ver=2cd3358363e0675638fb\";s:2:\"as\";s:6:\"script\";}i:205;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/notices.min.js?ver=673a68a7ac2f556ed50b\";s:2:\"as\";s:6:\"script\";}i:244;a:2:{s:4:\"href\";s:117:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-middleware.js?ver=e3f189e7e5007fb14fff\";s:2:\"as\";s:6:\"script\";}i:267;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/a11y.min.js?ver=3156534cc54473497e14\";s:2:\"as\";s:6:\"script\";}i:268;a:2:{s:4:\"href\";s:78:\"http://enjoy.loc/wp-includes/js/dist/dom-ready.min.js?ver=f77871ff7694fffea381\";s:2:\"as\";s:6:\"script\";}i:337;a:2:{s:4:\"href\";s:79:\"http://enjoy.loc/wp-includes/js/dist/primitives.min.js?ver=aef2543ab60c8c9bb609\";s:2:\"as\";s:6:\"script\";}i:714;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/warning.min.js?ver=ed7c8b0940914f4fe44b\";s:2:\"as\";s:6:\"script\";}i:1315;a:2:{s:4:\"href\";s:121:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-context.js?ver=c30879d642ea05d65f5a\";s:2:\"as\";s:6:\"script\";}i:1325;a:2:{s:4:\"href\";s:118:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-hocs.js?ver=cba59eca47d9101980bf\";s:2:\"as\";s:6:\"script\";}i:1601;a:2:{s:4:\"href\";s:109:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/price-format.js?ver=a3e67bb0b09f566d5bdf\";s:2:\"as\";s:6:\"script\";}i:1638;a:2:{s:4:\"href\";s:74:\"http://enjoy.loc/wp-includes/js/dist/autop.min.js?ver=9fb50649848277dd318d\";s:2:\"as\";s:6:\"script\";}i:1709;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/plugins.min.js?ver=ef6da4a9b2747b62c09c\";s:2:\"as\";s:6:\"script\";}i:1756;a:2:{s:4:\"href\";s:81:\"http://enjoy.loc/wp-includes/js/dist/style-engine.min.js?ver=08cc10e9532531e22456\";s:2:\"as\";s:6:\"script\";}i:1759;a:2:{s:4:\"href\";s:78:\"http://enjoy.loc/wp-includes/js/dist/wordcount.min.js?ver=55d8c2bf3dc99e7ea5ec\";s:2:\"as\";s:6:\"script\";}}s:17:\"checkout-frontend\";a:42:{i:0;a:2:{s:4:\"href\";s:114:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/checkout-frontend.js?ver=420b72b53a44e7543ca2\";s:2:\"as\";s:6:\"script\";}i:1;a:2:{s:4:\"href\";s:127:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-base-frontend.js?ver=b594dc8602aaa72e7a30\";s:2:\"as\";s:6:\"script\";}i:2;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/vendor/wp-polyfill.min.js?ver=3.15.0\";s:2:\"as\";s:6:\"script\";}i:3;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/i18n.min.js?ver=5e580eb46a90c2b997e6\";s:2:\"as\";s:6:\"script\";}i:4;a:2:{s:4:\"href\";s:74:\"http://enjoy.loc/wp-includes/js/dist/hooks.min.js?ver=4d63a3d491d11ffd8ac6\";s:2:\"as\";s:6:\"script\";}i:5;a:2:{s:4:\"href\";s:130:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-cart-checkout-vendors-frontend.js?ver=8b934c55748661cd53da\";s:2:\"as\";s:6:\"script\";}i:9;a:2:{s:4:\"href\";s:69:\"http://enjoy.loc/wp-includes/js/dist/vendor/react.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:10;a:2:{s:4:\"href\";s:112:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/blocks-checkout.js?ver=b00178cb31b1aeee8038\";s:2:\"as\";s:6:\"script\";}i:20;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/vendor/react-dom.min.js?ver=18.3.1.1\";s:2:\"as\";s:6:\"script\";}i:22;a:2:{s:4:\"href\";s:114:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/blocks-components.js?ver=5f11d5c440e62fef7bb5\";s:2:\"as\";s:6:\"script\";}i:34;a:2:{s:4:\"href\";s:111:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-data.js?ver=ec9fb81524f7793b1d14\";s:2:\"as\";s:6:\"script\";}i:35;a:2:{s:4:\"href\";s:115:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-registry.js?ver=eb38a1eeccda913f6add\";s:2:\"as\";s:6:\"script\";}i:37;a:2:{s:4:\"href\";s:108:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-settings.js?ver=eb5ac71a827c4c81fed8\";s:2:\"as\";s:6:\"script\";}i:40;a:2:{s:4:\"href\";s:78:\"http://enjoy.loc/wp-includes/js/dist/api-fetch.min.js?ver=d387b816bc1ed2042e28\";s:2:\"as\";s:6:\"script\";}i:43;a:2:{s:4:\"href\";s:72:\"http://enjoy.loc/wp-includes/js/dist/url.min.js?ver=e87eb76272a3a08402d2\";s:2:\"as\";s:6:\"script\";}i:48;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/data.min.js?ver=7c62e39de0308c73d50c\";s:2:\"as\";s:6:\"script\";}i:49;a:2:{s:4:\"href\";s:79:\"http://enjoy.loc/wp-includes/js/dist/vendor/react-jsx-runtime.min.js?ver=18.3.1\";s:2:\"as\";s:6:\"script\";}i:51;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/compose.min.js?ver=d52df0f868e03c1bd905\";s:2:\"as\";s:6:\"script\";}i:55;a:2:{s:4:\"href\";s:79:\"http://enjoy.loc/wp-includes/js/dist/deprecated.min.js?ver=e1f84915c5e8ae38964c\";s:2:\"as\";s:6:\"script\";}i:57;a:2:{s:4:\"href\";s:72:\"http://enjoy.loc/wp-includes/js/dist/dom.min.js?ver=93117dfee2692b04b770\";s:2:\"as\";s:6:\"script\";}i:60;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/element.min.js?ver=cb762d190aebbec25b27\";s:2:\"as\";s:6:\"script\";}i:64;a:2:{s:4:\"href\";s:80:\"http://enjoy.loc/wp-includes/js/dist/escape-html.min.js?ver=6561a406d2d232a6fbd2\";s:2:\"as\";s:6:\"script\";}i:65;a:2:{s:4:\"href\";s:85:\"http://enjoy.loc/wp-includes/js/dist/is-shallow-equal.min.js?ver=e0f9f1d78d83f5196979\";s:2:\"as\";s:6:\"script\";}i:66;a:2:{s:4:\"href\";s:77:\"http://enjoy.loc/wp-includes/js/dist/keycodes.min.js?ver=034ff647a54b018581d3\";s:2:\"as\";s:6:\"script\";}i:70;a:2:{s:4:\"href\";s:83:\"http://enjoy.loc/wp-includes/js/dist/priority-queue.min.js?ver=9c21c957c7e50ffdbf48\";s:2:\"as\";s:6:\"script\";}i:81;a:2:{s:4:\"href\";s:81:\"http://enjoy.loc/wp-includes/js/dist/private-apis.min.js?ver=4b858962c15c2c7a135f\";s:2:\"as\";s:6:\"script\";}i:82;a:2:{s:4:\"href\";s:82:\"http://enjoy.loc/wp-includes/js/dist/redux-routine.min.js?ver=a0a172871afaeb261566\";s:2:\"as\";s:6:\"script\";}i:103;a:2:{s:4:\"href\";s:105:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-types.js?ver=bda84b1be3361607d04a\";s:2:\"as\";s:6:\"script\";}i:146;a:2:{s:4:\"href\";s:82:\"http://enjoy.loc/wp-includes/js/dist/data-controls.min.js?ver=49f5587e8b90f9e7cc7e\";s:2:\"as\";s:6:\"script\";}i:201;a:2:{s:4:\"href\";s:82:\"http://enjoy.loc/wp-includes/js/dist/html-entities.min.js?ver=2cd3358363e0675638fb\";s:2:\"as\";s:6:\"script\";}i:205;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/notices.min.js?ver=673a68a7ac2f556ed50b\";s:2:\"as\";s:6:\"script\";}i:244;a:2:{s:4:\"href\";s:117:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-middleware.js?ver=e3f189e7e5007fb14fff\";s:2:\"as\";s:6:\"script\";}i:267;a:2:{s:4:\"href\";s:73:\"http://enjoy.loc/wp-includes/js/dist/a11y.min.js?ver=3156534cc54473497e14\";s:2:\"as\";s:6:\"script\";}i:268;a:2:{s:4:\"href\";s:78:\"http://enjoy.loc/wp-includes/js/dist/dom-ready.min.js?ver=f77871ff7694fffea381\";s:2:\"as\";s:6:\"script\";}i:337;a:2:{s:4:\"href\";s:79:\"http://enjoy.loc/wp-includes/js/dist/primitives.min.js?ver=aef2543ab60c8c9bb609\";s:2:\"as\";s:6:\"script\";}i:714;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/warning.min.js?ver=ed7c8b0940914f4fe44b\";s:2:\"as\";s:6:\"script\";}i:1315;a:2:{s:4:\"href\";s:118:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-hocs.js?ver=cba59eca47d9101980bf\";s:2:\"as\";s:6:\"script\";}i:1537;a:2:{s:4:\"href\";s:121:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-shared-context.js?ver=c30879d642ea05d65f5a\";s:2:\"as\";s:6:\"script\";}i:1591;a:2:{s:4:\"href\";s:109:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/client/blocks/price-format.js?ver=a3e67bb0b09f566d5bdf\";s:2:\"as\";s:6:\"script\";}i:1628;a:2:{s:4:\"href\";s:74:\"http://enjoy.loc/wp-includes/js/dist/autop.min.js?ver=9fb50649848277dd318d\";s:2:\"as\";s:6:\"script\";}i:1699;a:2:{s:4:\"href\";s:76:\"http://enjoy.loc/wp-includes/js/dist/plugins.min.js?ver=ef6da4a9b2747b62c09c\";s:2:\"as\";s:6:\"script\";}i:1748;a:2:{s:4:\"href\";s:78:\"http://enjoy.loc/wp-includes/js/dist/wordcount.min.js?ver=55d8c2bf3dc99e7ea5ec\";s:2:\"as\";s:6:\"script\";}}}s:7:\"version\";a:2:{s:11:\"woocommerce\";s:5:\"9.6.2\";s:9:\"wordpress\";s:5:\"6.7.2\";}}', 'off'),
(5633, '_transient_timeout_wc_upgrade_notice_9.6.2', '1740510049', 'off'),
(5634, '_transient_wc_upgrade_notice_9.6.2', '', 'off'),
(5635, '_transient_timeout_quadlayers_woo-ajax-add-to-cart_notice_delay', '1743015662', 'off'),
(5636, '_transient_quadlayers_woo-ajax-add-to-cart_notice_delay', '1', 'off'),
(5639, '_transient_timeout_last_fetch_patterns_request', '1740427425', 'off'),
(5640, '_transient_last_fetch_patterns_request', '1740423825', 'off'),
(5644, 'woocommerce_attribute_lookup_enabled', 'no', 'auto'),
(5645, '_transient_timeout__woocommerce_upload_directory_status', '1740510233', 'off'),
(5646, '_transient__woocommerce_upload_directory_status', 'protected', 'off'),
(5648, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:6:\"kolory\";s:15:\"attribute_label\";s:14:\"Кольори\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:8:\"material\";s:15:\"attribute_label\";s:16:\"Матеріал\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:7:\"rozmiry\";s:15:\"attribute_label\";s:14:\"Розміри\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'on'),
(5863, 'woocommerce_sales_record_date', '2025-02-24', 'auto'),
(5864, 'woocommerce_sales_record_amount', '99', 'auto'),
(5865, '_transient_timeout_woocommerce_admin_pes_incentive_woopayments_store_has_orders', '1740490733', 'off'),
(5866, '_transient_woocommerce_admin_pes_incentive_woopayments_store_has_orders', 'no', 'off'),
(5867, '_transient_timeout_woocommerce_admin_remote_free_extensions_specs', '1741073935', 'off'),
(5868, '_transient_woocommerce_admin_remote_free_extensions_specs', 'a:1:{s:2:\"uk\";a:5:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:31:\"Отримайте основи\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"WooPayments\";s:11:\"description\";s:229:\"Приймайте кредитні картки та інші популярні способи оплати за допомогою <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooPayments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:39:{i:0;s:2:\"US\";i:1;s:2:\"PR\";i:2;s:2:\"AU\";i:3;s:2:\"CA\";i:4;s:2:\"DE\";i:5;s:2:\"ES\";i:6;s:2:\"FR\";i:7;s:2:\"GB\";i:8;s:2:\"IE\";i:9;s:2:\"IT\";i:10;s:2:\"NZ\";i:11;s:2:\"AT\";i:12;s:2:\"BE\";i:13;s:2:\"NL\";i:14;s:2:\"PL\";i:15;s:2:\"PT\";i:16;s:2:\"CH\";i:17;s:2:\"HK\";i:18;s:2:\"SG\";i:19;s:2:\"CY\";i:20;s:2:\"DK\";i:21;s:2:\"EE\";i:22;s:2:\"FI\";i:23;s:2:\"GR\";i:24;s:2:\"LU\";i:25;s:2:\"LT\";i:26;s:2:\"LV\";i:27;s:2:\"NO\";i:28;s:2:\"MT\";i:29;s:2:\"SI\";i:30;s:2:\"SK\";i:31;s:2:\"BG\";i:32;s:2:\"CZ\";i:33;s:2:\"HR\";i:34;s:2:\"HU\";i:35;s:2:\"RO\";i:36;s:2:\"SE\";i:37;s:2:\"JP\";i:38;s:2:\"AE\";}s:9:\"operation\";s:2:\"in\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:14:\"min_wp_version\";s:3:\"5.9\";s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":5:{s:4:\"name\";s:20:\"WooCommerce Shipping\";s:11:\"description\";s:167:\"Друкуйте етикетки доставки за допомогою <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:1:{i:0;s:2:\"US\";}s:9:\"operation\";s:2:\"in\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":5:{s:4:\"name\";s:26:\"Податок WooCommerce\";s:11:\"description\";s:185:\"Автоматично отримуйте розрахунок податку з продажів із <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:11:{i:0;s:2:\"US\";i:1;s:2:\"FR\";i:2;s:2:\"GB\";i:3;s:2:\"DE\";i:4;s:2:\"CA\";i:5;s:2:\"AU\";i:6;s:2:\"GR\";i:7;s:2:\"BE\";i:8;s:2:\"PT\";i:9;s:2:\"DK\";i:10;s:2:\"SE\";}s:9:\"operation\";s:2:\"in\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"Jetpack\";s:11:\"description\";s:158:\"Підвищте швидкість та безпеку за допомогою <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:14:\"min_wp_version\";s:3:\"6.0\";s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:44:\"Розвивайте свій магазин\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:151:\"Підвищіть свій рівень Email-маркетингу з <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";s:5:\"value\";a:2:{i:0;i:1;i:1;i:84;}s:7:\"default\";b:0;s:9:\"operation\";s:5:\"range\";}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":8:{s:4:\"name\";s:25:\"Google для WooCommerce\";s:11:\"description\";s:172:\"Збільшуйте продажі за допомогою <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google для WooCommerce</a>\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google.svg\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:15:\"min_php_version\";s:3:\"7.4\";s:3:\"key\";s:23:\"google-listings-and-ads\";}i:2;O:8:\"stdClass\":8:{s:4:\"name\";s:28:\"Pinterest для WooCommerce\";s:11:\"description\";s:130:\"Показуйте свої товари покупцям, які шукають ідеї та речі для придбання.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";s:5:\"value\";a:2:{i:0;i:1;i:1;i:60;}s:7:\"default\";b:0;s:9:\"operation\";s:5:\"range\";}}s:14:\"is_built_by_wc\";b:1;s:15:\"min_php_version\";s:3:\"7.3\";s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}i:3;O:8:\"stdClass\":7:{s:4:\"name\";s:27:\"Facebook для WooCommerce\";s:11:\"description\";s:223:\"Публікуйте список товарів та створюйте рекламу у Facebook та Instagram за допомогою <a href=\"https://woocommerce.com/products/facebook/\">Facebook для WooCommerce</a>\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:10:\"is_visible\";b:0;s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:24:\"facebook-for-woocommerce\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:42:\"Звернутися до клієнтів\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:231:\"Створюйте та надсилайте електронні листи про покупки, інформаційні повідомлення і рекламні кампанії прямо з майстерні сайта.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.svg\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"Klaviyo\";s:11:\"description\";s:324:\"Залучайте та утримуйте клієнтів за допомогою інтелектуальної, ефективної автоматизації поштового та SMS маркетинга, а також консолідованого уявлення про взаємодію з клієнтами.\";s:9:\"image_url\";s:95:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/klaviyo.png\";s:10:\"manage_url\";s:31:\"admin.php?page=klaviyo_settings\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:11:\"klaviyo:alt\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"Mailchimp\";s:11:\"description\";s:182:\"Mailchimp дозволяє розсилати націлені кампанії, відновлювати залишені кошики покупок та багато іншого.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp.svg\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:29:\"mailchimp-for-woocommerce:alt\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:44:\"Розвивайте свій магазин\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Google для WooCommerce\";s:11:\"description\";s:301:\"Залучайте більше покупців та збільшуйте продажі свого магазину. Інтегруйтеся з Google, щоб безкоштовно розміщувати свої товари та запускати платні рекламні кампанії.\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google.svg\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:25:\"TikTok для WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:235:\"Збільшуйте свої онлайн-продажі, рекламуючи свої товари на TikTok, а це більше 1 млрд активних користувачів щомісяця по всьому світу.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:40:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"AT\";i:4;s:2:\"BE\";i:5;s:2:\"CZ\";i:6;s:2:\"DK\";i:7;s:2:\"FI\";i:8;s:2:\"FR\";i:9;s:2:\"DE\";i:10;s:2:\"GR\";i:11;s:2:\"HU\";i:12;s:2:\"IE\";i:13;s:2:\"IT\";i:14;s:2:\"NL\";i:15;s:2:\"PL\";i:16;s:2:\"PT\";i:17;s:2:\"RO\";i:18;s:2:\"ES\";i:19;s:2:\"SE\";i:20;s:2:\"GB\";i:21;s:2:\"CH\";i:22;s:2:\"NO\";i:23;s:2:\"AU\";i:24;s:2:\"NZ\";i:25;s:2:\"SG\";i:26;s:2:\"MY\";i:27;s:2:\"PH\";i:28;s:2:\"ID\";i:29;s:2:\"VN\";i:30;s:2:\"TH\";i:31;s:2:\"KR\";i:32;s:2:\"IL\";i:33;s:2:\"AE\";i:34;s:2:\"RU\";i:35;s:2:\"UA\";i:36;s:2:\"TR\";i:37;s:2:\"SA\";i:38;s:2:\"BR\";i:39;s:2:\"JP\";}s:9:\"operation\";s:2:\"in\";}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"Pinterest для WooCommerce\";s:11:\"description\";s:292:\"Показуйте свої товари користувачам Pinterest, які шукають ідеї та товари для покупки. Почніть роботу з Pinterest і зробіть доступним для перегляду весь каталог товарів.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"pinterest-for-woocommerce:alt\";}i:3;O:8:\"stdClass\":7:{s:4:\"name\";s:27:\"Facebook для WooCommerce\";s:11:\"description\";s:123:\"Публікуйте перелік товарів та створюйте оголошення в Facebook та Instagram.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/facebook.png\";s:10:\"manage_url\";s:26:\"admin.php?page=wc-facebook\";s:10:\"is_visible\";b:1;s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:28:\"facebook-for-woocommerce:alt\";}}}s:17:\"obw/core-profiler\";O:8:\"stdClass\":3:{s:3:\"key\";s:17:\"obw/core-profiler\";s:5:\"title\";s:44:\"Розвивайте свій магазин\";s:7:\"plugins\";a:11:{i:0;O:8:\"stdClass\":11:{s:4:\"name\";s:11:\"WooPayments\";s:11:\"description\";s:210:\"Безпечно приймайте платежі та керуйте платіжними операціями безпосередньо з інформаційної панелі свого магазину\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:39:{i:0;s:2:\"US\";i:1;s:2:\"PR\";i:2;s:2:\"AU\";i:3;s:2:\"CA\";i:4;s:2:\"DE\";i:5;s:2:\"ES\";i:6;s:2:\"FR\";i:7;s:2:\"GB\";i:8;s:2:\"IE\";i:9;s:2:\"IT\";i:10;s:2:\"NZ\";i:11;s:2:\"AT\";i:12;s:2:\"BE\";i:13;s:2:\"NL\";i:14;s:2:\"PL\";i:15;s:2:\"PT\";i:16;s:2:\"CH\";i:17;s:2:\"HK\";i:18;s:2:\"SG\";i:19;s:2:\"CY\";i:20;s:2:\"DK\";i:21;s:2:\"EE\";i:22;s:2:\"FI\";i:23;s:2:\"GR\";i:24;s:2:\"LU\";i:25;s:2:\"LT\";i:26;s:2:\"LV\";i:27;s:2:\"NO\";i:28;s:2:\"MT\";i:29;s:2:\"SI\";i:30;s:2:\"SK\";i:31;s:2:\"BG\";i:32;s:2:\"CZ\";i:33;s:2:\"HR\";i:34;s:2:\"HU\";i:35;s:2:\"RO\";i:36;s:2:\"SE\";i:37;s:2:\"JP\";i:38;s:2:\"AE\";}s:9:\"operation\";s:2:\"in\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:14:\"min_wp_version\";s:3:\"5.9\";s:3:\"key\";s:20:\"woocommerce-payments\";s:5:\"label\";s:67:\"Отримуйте оплату за допомогою WooPayments\";s:9:\"image_url\";s:120:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-woo-rebrand-2.svg\";s:15:\"learn_more_link\";s:123:\"https://woocommerce.com/products/woocommerce-payments?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:5;s:12:\"requires_jpc\";b:1;}i:1;O:8:\"stdClass\":9:{s:4:\"name\";s:20:\"WooCommerce Shipping\";s:11:\"description\";s:158:\"Друкуйте етикетки USPS і DHL безпосередньо з панелі керування та заощаджуйте на доставці.\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";s:5:\"label\";s:101:\"Друкуйте транспортні етикетки за допомогою WooCommerce Shipping\";s:9:\"image_url\";s:120:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-woo-rebrand-2.svg\";s:15:\"learn_more_link\";s:114:\"https://woocommerce.com/woocommerce-shipping?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:3;}i:2;O:8:\"stdClass\":11:{s:4:\"name\";s:7:\"Jetpack\";s:11:\"description\";s:195:\"Заощаджуйте час на створенні контенту - створюйте високоякісні сторінки та записи в блозі за допомогою ШІ.\";s:10:\"is_visible\";b:1;s:14:\"is_built_by_wc\";b:0;s:14:\"min_wp_version\";s:3:\"6.0\";s:3:\"key\";s:7:\"jetpack\";s:5:\"label\";s:103:\"Прискорюйте створення контенту за допомогою Jetpack AI Assistant\";s:9:\"image_url\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-jetpack.svg\";s:15:\"learn_more_link\";s:110:\"https://woocommerce.com/products/jetpack?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:8;s:12:\"requires_jpc\";b:1;}i:3;O:8:\"stdClass\":11:{s:4:\"name\";s:28:\"Pinterest для WooCommerce\";s:11:\"description\";s:85:\"Показуйте свої товари зацікавленій аудиторії.\";s:9:\"image_url\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-pinterest.svg\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";s:5:\"value\";a:2:{i:0;i:1;i:1;i:60;}s:7:\"default\";b:0;s:9:\"operation\";s:5:\"range\";}}s:14:\"is_built_by_wc\";b:1;s:15:\"min_php_version\";s:3:\"7.3\";s:3:\"key\";s:25:\"pinterest-for-woocommerce\";s:5:\"label\";s:80:\"Демонструйте свої товари за допомогою Pinterest\";s:15:\"learn_more_link\";s:128:\"https://woocommerce.com/products/pinterest-for-woocommerce?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:2;}i:4;O:8:\"stdClass\":9:{s:4:\"name\";s:35:\"Meta Ads & Pixel для WooCommerce\";s:11:\"description\";s:78:\"Sync your store catalog, set up pixel tracking, and run targeted ad campaigns.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/kliken-ads-pixel-for-meta.svg\";s:10:\"manage_url\";s:40:\"admin.php?page=kliken-ads-pixel-for-meta\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";s:5:\"value\";a:2:{i:0;i:61;i:1;i:120;}s:7:\"default\";b:0;s:9:\"operation\";s:5:\"range\";}}s:3:\"key\";s:25:\"kliken-ads-pixel-for-meta\";s:5:\"label\";s:46:\"Grow your business with Facebook and Instagram\";s:15:\"learn_more_link\";s:121:\"https://woocommerce.com/products/meta-ads-and-pixel?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:2;}i:5;O:8:\"stdClass\":10:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:187:\"Надсилайте електронні листи з актуальною інформацією про покупки, інформаційні та рекламні розсилки.\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";s:5:\"value\";a:2:{i:0;i:1;i:1;i:84;}s:7:\"default\";b:0;s:9:\"operation\";s:5:\"range\";}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";s:5:\"label\";s:79:\"Залучайте своїх клієнтів за допомогою MailPoet\";s:9:\"image_url\";s:115:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-mailpoet.svg\";s:15:\"learn_more_link\";s:111:\"https://woocommerce.com/products/mailpoet?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:7;}i:6;O:8:\"stdClass\":10:{s:4:\"name\";s:7:\"Klaviyo\";s:11:\"description\";s:105:\"Grow and retain customers with email, SMS, automations, and a consolidated view of customer interactions.\";s:9:\"image_url\";s:95:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/klaviyo.png\";s:10:\"manage_url\";s:31:\"admin.php?page=klaviyo_settings\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:37:\"woocommerce_remote_variant_assignment\";s:5:\"value\";a:2:{i:0;i:85;i:1;i:120;}s:7:\"default\";b:0;s:9:\"operation\";s:5:\"range\";}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"klaviyo\";s:5:\"label\";s:7:\"Klaviyo\";s:15:\"learn_more_link\";s:126:\"https://woocommerce.com/products/klaviyo-for-woocommerce?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:7;}i:7;O:8:\"stdClass\":11:{s:4:\"name\";s:25:\"Google для WooCommerce\";s:11:\"description\";s:179:\"Залучіть мільйони активних покупців до Google за допомогою безкоштовних списків товарів та реклами.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-google.svg\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";b:1;s:14:\"is_built_by_wc\";b:1;s:15:\"min_php_version\";s:3:\"7.4\";s:3:\"key\";s:23:\"google-listings-and-ads\";s:5:\"label\";s:85:\"Збільшуйте продажі за допомогою Google для WooCommerce\";s:15:\"learn_more_link\";s:126:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:6;}i:8;O:8:\"stdClass\":9:{s:4:\"name\";s:26:\"Податок WooCommerce\";s:11:\"description\";s:185:\"Автоматично розраховуйте, скільки податку з продажів потрібно збирати - по місту, країні або області.\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:11:{i:0;s:2:\"US\";i:1;s:2:\"FR\";i:2;s:2:\"GB\";i:3;s:2:\"DE\";i:4;s:2:\"CA\";i:5;s:2:\"AU\";i:6;s:2:\"GR\";i:7;s:2:\"BE\";i:8;s:2:\"PT\";i:9;s:2:\"DK\";i:10;s:2:\"SE\";}s:9:\"operation\";s:2:\"in\";}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";s:5:\"label\";s:113:\"Отримайте автоматичні податкові ставки за допомогою WooCommerce Tax\";s:9:\"image_url\";s:120:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-woo-rebrand-2.svg\";s:15:\"learn_more_link\";s:106:\"https://woocommerce.com/products/tax?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:4;}i:9;O:8:\"stdClass\":10:{s:4:\"name\";s:25:\"TikTok для WooCommerce\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-tiktok.svg\";s:11:\"description\";s:144:\"Створюйте рекламні кампанії та охоплюйте мільярд користувачів у всьому світі.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:40:{i:0;s:2:\"US\";i:1;s:2:\"CA\";i:2;s:2:\"MX\";i:3;s:2:\"AT\";i:4;s:2:\"BE\";i:5;s:2:\"CZ\";i:6;s:2:\"DK\";i:7;s:2:\"FI\";i:8;s:2:\"FR\";i:9;s:2:\"DE\";i:10;s:2:\"GR\";i:11;s:2:\"HU\";i:12;s:2:\"IE\";i:13;s:2:\"IT\";i:14;s:2:\"NL\";i:15;s:2:\"PL\";i:16;s:2:\"PT\";i:17;s:2:\"RO\";i:18;s:2:\"ES\";i:19;s:2:\"SE\";i:20;s:2:\"GB\";i:21;s:2:\"CH\";i:22;s:2:\"NO\";i:23;s:2:\"AU\";i:24;s:2:\"NZ\";i:25;s:2:\"SG\";i:26;s:2:\"MY\";i:27;s:2:\"PH\";i:28;s:2:\"ID\";i:29;s:2:\"VN\";i:30;s:2:\"TH\";i:31;s:2:\"KR\";i:32;s:2:\"IL\";i:33;s:2:\"AE\";i:34;s:2:\"RU\";i:35;s:2:\"UA\";i:36;s:2:\"TR\";i:37;s:2:\"SA\";i:38;s:2:\"BR\";i:39;s:2:\"JP\";}s:9:\"operation\";s:2:\"in\";}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";s:5:\"label\";s:83:\"Створюйте рекламні кампанії за допомогою TikTok\";s:15:\"learn_more_link\";s:125:\"https://woocommerce.com/products/tiktok-for-woocommerce?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:1;}i:10;O:8:\"stdClass\":10:{s:4:\"name\";s:29:\"Print on Demand with Printful\";s:9:\"image_url\";s:115:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/core-profiler/logo-printful.png\";s:11:\"description\";s:66:\"Design and easily sell custom print products online with Printful.\";s:10:\"manage_url\";s:0:\"\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";a:9:{i:0;s:2:\"AU\";i:1;s:2:\"GB\";i:2;s:2:\"CA\";i:3;s:2:\"ES\";i:4;s:2:\"DE\";i:5;s:2:\"FR\";i:6;s:2:\"NL\";i:7;s:2:\"BE\";i:8;s:2:\"LU\";}s:9:\"operation\";s:2:\"in\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:10:\"industry.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:24:\"clothing_and_accessories\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:1:\"=\";}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"printful-shipping-for-woocommerce\";s:5:\"label\";s:29:\"Print on Demand with Printful\";s:15:\"learn_more_link\";s:111:\"https://woocommerce.com/products/printful?utm_source=storeprofiler&utm_medium=product&utm_campaign=freefeatures\";s:16:\"install_priority\";i:9;}}}}}', 'off'),
(5870, '_transient_timeout__woocommerce_helper_subscriptions', '1740470053', 'off'),
(5871, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'off'),
(5872, '_site_transient_timeout_theme_roots', '1740470953', 'off'),
(5873, '_site_transient_theme_roots', 'a:1:{s:6:\"bamboo\";s:7:\"/themes\";}', 'off');
INSERT INTO `bb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5874, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1740469156;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(5875, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1740469157;s:7:\"checked\";a:1:{s:6:\"bamboo\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(5876, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1740469158;s:8:\"response\";a:0:{}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.0.4\";s:7:\"updated\";s:19:\"2024-11-11 09:57:20\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/6.0.4/uk.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"ukr-to-lat\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"1.3.5\";s:7:\"updated\";s:19:\"2022-08-17 14:46:56\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/ukr-to-lat/1.3.5/uk.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"9.6.2\";s:7:\"updated\";s:19:\"2025-02-23 16:24:39\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/woocommerce/9.6.2/uk.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:18:\"wordpress-importer\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"0.8.3\";s:7:\"updated\";s:19:\"2024-12-10 20:31:05\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/wordpress-importer/0.8.3/uk.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:45:\"woo-ajax-add-to-cart/woo-ajax-add-to-cart.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:34:\"w.org/plugins/woo-ajax-add-to-cart\";s:4:\"slug\";s:20:\"woo-ajax-add-to-cart\";s:6:\"plugin\";s:45:\"woo-ajax-add-to-cart/woo-ajax-add-to-cart.php\";s:11:\"new_version\";s:5:\"2.4.5\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woo-ajax-add-to-cart/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woo-ajax-add-to-cart.2.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woo-ajax-add-to-cart/assets/icon-256x256.jpg?rev=2911672\";s:2:\"1x\";s:73:\"https://ps.w.org/woo-ajax-add-to-cart/assets/icon-128x128.jpg?rev=2911672\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woo-ajax-add-to-cart/assets/banner-1544x500.jpg?rev=2911672\";s:2:\"1x\";s:75:\"https://ps.w.org/woo-ajax-add-to-cart/assets/banner-772x250.jpg?rev=2911672\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:25:\"ukr-to-lat/ukr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/ukr-to-lat\";s:4:\"slug\";s:10:\"ukr-to-lat\";s:6:\"plugin\";s:25:\"ukr-to-lat/ukr-to-lat.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/ukr-to-lat/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/ukr-to-lat.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/ukr-to-lat/assets/icon-256x256.png?rev=1942473\";s:2:\"1x\";s:63:\"https://ps.w.org/ukr-to-lat/assets/icon-128x128.png?rev=1942473\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/ukr-to-lat/assets/banner-1544x500.png?rev=1942473\";s:2:\"1x\";s:65:\"https://ps.w.org/ukr-to-lat/assets/banner-772x250.png?rev=1942473\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/ukr-to-lat/assets/banner-1544x500-rtl.png?rev=1942473\";s:2:\"1x\";s:69:\"https://ps.w.org/ukr-to-lat/assets/banner-772x250-rtl.png?rev=1942473\";}s:8:\"requires\";s:3:\"4.6\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"9.6.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.9.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/woocommerce/assets/icon.svg?rev=3234504\";s:3:\"svg\";s:56:\"https://ps.w.org/woocommerce/assets/icon.svg?rev=3234504\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=3234504\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=3234504\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.8.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:8:\"1.9.17.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.17.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20250121\";s:6:\"reason\";s:10:\"up_to_date\";}}s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"6.3.12\";s:45:\"woo-ajax-add-to-cart/woo-ajax-add-to-cart.php\";s:5:\"2.4.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.0.4\";s:25:\"ukr-to-lat/ukr-to-lat.php\";s:5:\"1.3.5\";s:27:\"woocommerce/woocommerce.php\";s:5:\"9.6.2\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.8.3\";s:33:\"wps-hide-login/wps-hide-login.php\";s:8:\"1.9.17.1\";}}', 'off'),
(5877, '_site_transient_timeout_wp_theme_files_patterns-c0139b73f6879f779fc23a230800bbb9', '1740471049', 'off'),
(5878, '_site_transient_wp_theme_files_patterns-c0139b73f6879f779fc23a230800bbb9', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(5885, '_transient_woocommerce_product_task_product_count_transient', '7', 'on'),
(5886, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1740490964', 'off'),
(5887, '_transient_action_scheduler_last_pastdue_actions_check', '1740469364', 'off'),
(5888, '_transient_timeout_woocommerce_admin_payment_method_promotion_specs', '1740480176', 'off'),
(5890, '_transient_woocommerce_admin_payment_method_promotion_specs', 'a:1:{s:2:\"uk\";a:2:{i:0;a:7:{s:2:\"id\";s:27:\"woocommerce_payments:woopay\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:74:\"Payments made simple — including WooPay, a new express checkout feature.\";s:5:\"image\";s:82:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/onboarding/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:765:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/applepay.svg\" alt=\"Applepay\">\";}i:1;a:7:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:160:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.\";s:5:\"image\";s:82:\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/onboarding/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:39:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:765:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"http://enjoy.loc/wp-content/plugins/woocommerce/assets/images/payment-methods/applepay.svg\" alt=\"Applepay\">\";}}}', 'off'),
(5895, '_transient_timeout_wc_term_counts', '1743061432', 'off'),
(5896, '_transient_wc_term_counts', 'a:1:{i:19;s:1:\"2\";}', 'off'),
(5897, '_transient_timeout_wc_product_children_83', '1743061433', 'off'),
(5898, '_transient_wc_product_children_83', 'a:3:{s:3:\"all\";a:6:{i:0;i:84;i:1;i:85;i:2;i:86;i:3;i:87;i:4;i:88;i:5;i:89;}s:7:\"visible\";a:6:{i:0;i:84;i:1;i:85;i:2;i:86;i:3;i:87;i:4;i:88;i:5;i:89;}s:7:\"version\";s:10:\"1740469358\";}', 'off');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_postmeta`
--

CREATE TABLE `bb_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_postmeta`
--

INSERT INTO `bb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_edit_lock', '1739479200:1'),
(2, 1, '_wp_page_template', 'front-page.php'),
(7, 4, '_wp_attached_file', '2024/11/favicon.png'),
(8, 4, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2024/11/favicon.png\";s:8:\"filesize\";i:7046;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6624;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3332;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 5, '_wp_attached_file', '2024/11/cropped-favicon.png'),
(10, 5, '_wp_attachment_context', 'site-icon'),
(11, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2024/11/cropped-favicon.png\";s:8:\"filesize\";i:7920;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6624;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3332;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5973;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4382;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4090;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:655;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 7, '_edit_lock', '1732796741:1'),
(15, 7, '_wp_page_template', 'page-catalog.php'),
(16, 8, '_edit_lock', '1732887970:1'),
(17, 9, '_acf_changed', ''),
(18, 9, 'footnotes', ''),
(19, 8, '_wp_page_template', 'page-legal.php'),
(20, 10, '_edit_lock', '1732888917:1'),
(21, 10, '_wp_page_template', 'page-legal.php'),
(22, 11, '_acf_changed', ''),
(23, 11, 'footnotes', ''),
(24, 12, '_edit_lock', '1732890706:1'),
(25, 12, '_wp_page_template', 'page-contacts.php'),
(26, 13, '_acf_changed', ''),
(27, 13, 'footnotes', ''),
(28, 14, '_form', '<label>\n  <p>Ім\'я *</p>\n  [text* your-name placeholder \"Ваше ім\'я\"]\n</label>\n<label>\n  <p>Номер телефону</p>\n  [tel your-phone placeholder \"+380\"]\n</label>\n<label>\n  <p>Електронна пошта *</p>\n  [email* your-email placeholder \"Ваш email\"]\n</label>\n<label>\n  <p>Ваше повідомлення</p>\n  [textarea your-message rows:3 placeholder \"Залиште своє повідомлення\"]\n</label>\n<div class=\"cta\">\n  <span class=\"spinner\"></span>\n  <button class=\"on-submit\" type=\"submit\">Надіслати</button>\n</div>'),
(29, 14, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@enjoy.loc>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(30, 14, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@enjoy.loc>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(31, 14, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(32, 14, '_additional_settings', ''),
(33, 14, '_locale', 'uk'),
(34, 14, '_hash', '39c16fe4d1bf5d86e986ca700f2e1fd7272f56a4'),
(37, 17, '_edit_last', '1'),
(38, 17, '_edit_lock', '1734428063:1'),
(39, 18, '_edit_last', '1'),
(40, 18, '_edit_lock', '1734430561:1'),
(41, 24, '_menu_item_type', 'post_type'),
(42, 24, '_menu_item_menu_item_parent', '0'),
(43, 24, '_menu_item_object_id', '8'),
(44, 24, '_menu_item_object', 'page'),
(45, 24, '_menu_item_target', ''),
(46, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 24, '_menu_item_xfn', ''),
(48, 24, '_menu_item_url', ''),
(50, 25, '_menu_item_type', 'post_type'),
(51, 25, '_menu_item_menu_item_parent', '0'),
(52, 25, '_menu_item_object_id', '10'),
(53, 25, '_menu_item_object', 'page'),
(54, 25, '_menu_item_target', ''),
(55, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 25, '_menu_item_xfn', ''),
(57, 25, '_menu_item_url', ''),
(59, 26, '_menu_item_type', 'custom'),
(60, 26, '_menu_item_menu_item_parent', '0'),
(61, 26, '_menu_item_object_id', '26'),
(62, 26, '_menu_item_object', 'custom'),
(63, 26, '_menu_item_target', ''),
(64, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 26, '_menu_item_xfn', ''),
(66, 26, '_menu_item_url', '#'),
(68, 27, '_menu_item_type', 'custom'),
(69, 27, '_menu_item_menu_item_parent', '0'),
(70, 27, '_menu_item_object_id', '27'),
(71, 27, '_menu_item_object', 'custom'),
(72, 27, '_menu_item_target', ''),
(73, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 27, '_menu_item_xfn', ''),
(75, 27, '_menu_item_url', '#'),
(77, 28, '_menu_item_type', 'custom'),
(78, 28, '_menu_item_menu_item_parent', '0'),
(79, 28, '_menu_item_object_id', '28'),
(80, 28, '_menu_item_object', 'custom'),
(81, 28, '_menu_item_target', ''),
(82, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 28, '_menu_item_xfn', ''),
(84, 28, '_menu_item_url', '#'),
(86, 29, '_menu_item_type', 'custom'),
(87, 29, '_menu_item_menu_item_parent', '0'),
(88, 29, '_menu_item_object_id', '29'),
(89, 29, '_menu_item_object', 'custom'),
(90, 29, '_menu_item_target', ''),
(91, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 29, '_menu_item_xfn', ''),
(93, 29, '_menu_item_url', '#'),
(95, 30, '_menu_item_type', 'custom'),
(96, 30, '_menu_item_menu_item_parent', '0'),
(97, 30, '_menu_item_object_id', '30'),
(98, 30, '_menu_item_object', 'custom'),
(99, 30, '_menu_item_target', ''),
(100, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 30, '_menu_item_xfn', ''),
(102, 30, '_menu_item_url', '#'),
(104, 31, '_menu_item_type', 'custom'),
(105, 31, '_menu_item_menu_item_parent', '0'),
(106, 31, '_menu_item_object_id', '31'),
(107, 31, '_menu_item_object', 'custom'),
(108, 31, '_menu_item_target', ''),
(109, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 31, '_menu_item_xfn', ''),
(111, 31, '_menu_item_url', '#'),
(113, 32, '_menu_item_type', 'custom'),
(114, 32, '_menu_item_menu_item_parent', '0'),
(115, 32, '_menu_item_object_id', '32'),
(116, 32, '_menu_item_object', 'custom'),
(117, 32, '_menu_item_target', ''),
(118, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 32, '_menu_item_xfn', ''),
(120, 32, '_menu_item_url', '#'),
(122, 33, '_menu_item_type', 'custom'),
(123, 33, '_menu_item_menu_item_parent', '0'),
(124, 33, '_menu_item_object_id', '33'),
(125, 33, '_menu_item_object', 'custom'),
(126, 33, '_menu_item_target', ''),
(127, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 33, '_menu_item_xfn', ''),
(129, 33, '_menu_item_url', '#'),
(131, 34, '_menu_item_type', 'custom'),
(132, 34, '_menu_item_menu_item_parent', '0'),
(133, 34, '_menu_item_object_id', '34'),
(134, 34, '_menu_item_object', 'custom'),
(135, 34, '_menu_item_target', ''),
(136, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 34, '_menu_item_xfn', ''),
(138, 34, '_menu_item_url', '#'),
(140, 35, '_edit_last', '1'),
(141, 35, '_edit_lock', '1734471180:1'),
(142, 40, '_edit_last', '1'),
(143, 40, '_edit_lock', '1734469961:1'),
(144, 40, 'button_text', 'Дивитися каталог'),
(145, 40, '_button_text', 'field_67618dc881189'),
(146, 40, 'smile', '1'),
(147, 40, '_smile', 'field_67618e7d606d6'),
(148, 40, 'photo', '41'),
(149, 40, '_photo', 'field_67618e5d606d5'),
(150, 41, '_wp_attached_file', '2024/12/home-intro.jpg'),
(151, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1100;s:6:\"height\";i:806;s:4:\"file\";s:22:\"2024/12/home-intro.jpg\";s:8:\"filesize\";i:616810;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 40, 'url', '#'),
(153, 40, '_url', 'field_67618e0b8118a'),
(154, 43, '_wp_attached_file', 'woocommerce-placeholder.png'),
(155, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:48149;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 42, '_edit_last', '1'),
(157, 42, '_edit_lock', '1739479834:1'),
(160, 57, '_wp_attached_file', '2024/12/product_1.png'),
(161, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2024/12/product_1.png\";s:8:\"filesize\";i:769858;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 1, 'footnotes', ''),
(164, 1, '_edit_last', '1'),
(165, 1, 'blocks_0_title', 'Крісло М’яч Classic'),
(166, 1, '_blocks_0_title', 'field_6761f090f4818'),
(167, 1, 'blocks_0_price', '2275'),
(168, 1, '_blocks_0_price', 'field_6761f0a9f4819'),
(169, 1, 'blocks_0_link', '#'),
(170, 1, '_blocks_0_link', 'field_6761f136f481c'),
(171, 1, 'blocks_0_sale', ''),
(172, 1, '_blocks_0_sale', 'field_6761f118f481b'),
(173, 1, 'blocks_0_img', '57'),
(174, 1, '_blocks_0_img', 'field_6761f0dbf481a'),
(175, 1, 'blocks_0_color', '#95ae99'),
(176, 1, '_blocks_0_color', 'field_6761f16ff481d'),
(177, 1, 'blocks', 'a:7:{i:0;s:7:\"product\";i:1;s:8:\"category\";i:2;s:7:\"product\";i:3;s:8:\"category\";i:4;s:8:\"category\";i:5;s:4:\"text\";i:6;s:5:\"media\";}'),
(178, 1, '_blocks', 'field_6761ee9ff4817'),
(201, 1, 'blocks_1_title', 'Безкаркасні крісла'),
(202, 1, '_blocks_1_title', 'field_6761f734e71e6'),
(203, 1, 'blocks_1_link', '#'),
(204, 1, '_blocks_1_link', 'field_6761f734e71e8'),
(205, 1, 'blocks_1_img', '57'),
(206, 1, '_blocks_1_img', 'field_6761f734e71ea'),
(207, 1, 'blocks_1_color', '#ec7f54'),
(208, 1, '_blocks_1_color', 'field_6761f734e71eb'),
(214, 1, 'blocks_1_size', 'default'),
(215, 1, '_blocks_1_size', 'field_6762814729462'),
(216, 1, 'blocks_2_title', 'Крісло М’яч Classic'),
(217, 1, '_blocks_2_title', 'field_6761f090f4818'),
(218, 1, 'blocks_2_price', '2275'),
(219, 1, '_blocks_2_price', 'field_6761f0a9f4819'),
(220, 1, 'blocks_2_link', '#'),
(221, 1, '_blocks_2_link', 'field_6761f136f481c'),
(222, 1, 'blocks_2_sale', '-20% на готовий виріб'),
(223, 1, '_blocks_2_sale', 'field_6761f118f481b'),
(224, 1, 'blocks_2_img', '57'),
(225, 1, '_blocks_2_img', 'field_6761f0dbf481a'),
(226, 1, 'blocks_2_color', '#0c4f79'),
(227, 1, '_blocks_2_color', 'field_6761f16ff481d'),
(228, 1, 'blocks_3_title', 'Груші та м’ячі'),
(229, 1, '_blocks_3_title', 'field_6761f734e71e6'),
(230, 1, 'blocks_3_link', '#'),
(231, 1, '_blocks_3_link', 'field_6761f734e71e8'),
(232, 1, 'blocks_3_img', '57'),
(233, 1, '_blocks_3_img', 'field_6761f734e71ea'),
(234, 1, 'blocks_3_color', '#0c4f79'),
(235, 1, '_blocks_3_color', 'field_6761f734e71eb'),
(236, 1, 'blocks_3_size', 'default'),
(237, 1, '_blocks_3_size', 'field_6762814729462'),
(238, 66, '_wp_attached_file', '2024/12/category.jpg'),
(239, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:1320;s:4:\"file\";s:20:\"2024/12/category.jpg\";s:8:\"filesize\";i:1333016;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 1, 'blocks_4_title', 'Аксесуари'),
(246, 1, '_blocks_4_title', 'field_6761f734e71e6'),
(247, 1, 'blocks_4_link', '#'),
(248, 1, '_blocks_4_link', 'field_6761f734e71e8'),
(249, 1, 'blocks_4_img', '66'),
(250, 1, '_blocks_4_img', 'field_6761f734e71ea'),
(251, 1, 'blocks_4_color', ''),
(252, 1, '_blocks_4_color', 'field_6761f734e71eb'),
(253, 1, 'blocks_4_size', 'large'),
(254, 1, '_blocks_4_size', 'field_6762814729462'),
(255, 1, 'blocks_5_title', 'Крісло груша - як сідати?'),
(256, 1, '_blocks_5_title', 'field_6762bc5105c46'),
(257, 1, 'blocks_5_subtitle', 'Груша - найбільш універсальна модель серед безкаркасних меблів. Усі варіанти використання можна переглянути у відео'),
(258, 1, '_blocks_5_subtitle', 'field_6762bc7005c4b'),
(259, 73, '_wp_attached_file', '2024/12/media_1.jpg'),
(260, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:961;s:6:\"height\";i:811;s:4:\"file\";s:19:\"2024/12/media_1.jpg\";s:8:\"filesize\";i:610217;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 75, '_wp_attached_file', '2024/12/how-to-sit.mp4'),
(266, 75, '_wp_attachment_metadata', 'a:9:{s:8:\"filesize\";i:3211264;s:9:\"mime_type\";s:15:\"video/quicktime\";s:6:\"length\";i:54;s:16:\"length_formatted\";s:4:\"0:54\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:5:\"audio\";a:9:{s:10:\"dataformat\";s:3:\"mp4\";s:7:\"bitrate\";i:128000;s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";s:17:\"compression_ratio\";d:0.08333333333333333;}s:17:\"created_timestamp\";i:1712319135;}'),
(267, 1, '_acf_changed', '1'),
(268, 1, 'blocks_5_img', ''),
(269, 1, '_blocks_5_img', 'field_6762bd4c0fda1'),
(270, 1, 'blocks_6_img', '73'),
(271, 1, '_blocks_6_img', 'field_6762bdbd45590'),
(272, 1, 'blocks_6_video', '75'),
(273, 1, '_blocks_6_video', 'field_6762bdd645591'),
(292, 1, '_wp_old_slug', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0'),
(293, 26, '_wp_old_slug', '%d0%bf%d1%83%d1%84%d0%b8-%d0%b4%d0%bb%d1%8f-%d1%88%d0%ba%d1%96%d0%bb'),
(294, 28, '_wp_old_slug', '%d0%b2%d1%81%d1%96-%d0%bc%d0%be%d0%b4%d0%b5%d0%bb%d1%96'),
(295, 29, '_wp_old_slug', '%d0%bf%d0%be%d0%b4%d0%b0%d1%80%d1%83%d0%bd%d0%ba%d0%be%d0%b2%d0%b8%d0%b9-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d1%96%d0%ba%d0%b0%d1%82'),
(296, 30, '_wp_old_slug', '%d1%81%d0%bf%d1%96%d0%b2%d0%bf%d1%80%d0%b0%d1%86%d1%8f'),
(297, 32, '_wp_old_slug', '%d0%be%d0%bf%d0%bb%d0%b0%d1%82%d0%b0-%d1%96-%d0%b4%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0'),
(298, 33, '_wp_old_slug', '%d0%b2%d0%b0%d1%80%d1%96%d0%b0%d0%bd%d1%82%d0%b8-%d1%82%d0%ba%d0%b0%d0%bd%d0%b8%d0%bd%d0%b8'),
(299, 40, '_wp_old_slug', '%d0%b1%d0%b5%d0%b7%d0%ba%d0%b0%d1%80%d0%ba%d0%b0%d1%81%d0%bd%d1%96-%d0%bc%d0%b5%d0%b1%d0%bb%d1%96'),
(301, 80, '_edit_last', '1'),
(302, 80, '_edit_lock', '1739394565:1'),
(310, 83, '_edit_last', '1'),
(311, 83, '_edit_lock', '1740469360:1'),
(312, 83, 'total_sales', '0'),
(313, 83, '_tax_status', 'taxable'),
(314, 83, '_tax_class', ''),
(315, 83, '_manage_stock', 'no'),
(316, 83, '_backorders', 'no'),
(317, 83, '_sold_individually', 'no'),
(318, 83, '_virtual', 'no'),
(319, 83, '_downloadable', 'no'),
(320, 83, '_download_limit', '-1'),
(321, 83, '_download_expiry', '-1'),
(322, 83, '_stock', NULL),
(323, 83, '_stock_status', 'instock'),
(324, 83, '_wc_average_rating', '0'),
(325, 83, '_wc_review_count', '0'),
(326, 83, '_product_attributes', 'a:2:{s:10:\"pa_rozmiry\";a:6:{s:4:\"name\";s:10:\"pa_rozmiry\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(327, 83, '_product_version', '9.6.2'),
(328, 83, '_thumbnail_id', '57'),
(329, 83, 'blocks', 'a:1:{i:0;s:7:\"product\";}'),
(330, 83, '_blocks', 'field_6761ee9ff4817'),
(331, 84, '_variation_description', ''),
(332, 84, 'total_sales', '0'),
(333, 84, '_tax_status', 'taxable'),
(334, 84, '_tax_class', 'parent'),
(335, 84, '_manage_stock', 'no'),
(336, 84, '_backorders', 'no'),
(337, 84, '_sold_individually', 'no'),
(338, 84, '_virtual', 'no'),
(339, 84, '_downloadable', 'no'),
(340, 84, '_download_limit', '-1'),
(341, 84, '_download_expiry', '-1'),
(342, 84, '_stock', NULL),
(343, 84, '_stock_status', 'instock'),
(344, 84, '_wc_average_rating', '0'),
(345, 84, '_wc_review_count', '0'),
(346, 84, 'attribute_pa_material', 'rohozhka'),
(347, 84, 'attribute_pa_rozmiry', 'l'),
(348, 84, '_product_version', '9.6.1'),
(349, 85, '_variation_description', ''),
(350, 85, 'total_sales', '0'),
(351, 85, '_tax_status', 'taxable'),
(352, 85, '_tax_class', 'parent'),
(353, 85, '_manage_stock', 'no'),
(354, 85, '_backorders', 'no'),
(355, 85, '_sold_individually', 'no'),
(356, 85, '_virtual', 'no'),
(357, 85, '_downloadable', 'no'),
(358, 85, '_download_limit', '-1'),
(359, 85, '_download_expiry', '-1'),
(360, 85, '_stock', NULL),
(361, 85, '_stock_status', 'instock'),
(362, 85, '_wc_average_rating', '0'),
(363, 85, '_wc_review_count', '0'),
(364, 85, 'attribute_pa_material', 'shkirzaminnyk'),
(365, 85, 'attribute_pa_rozmiry', 'l'),
(366, 85, '_product_version', '9.6.1'),
(367, 86, '_variation_description', ''),
(368, 86, 'total_sales', '0'),
(369, 86, '_tax_status', 'taxable'),
(370, 86, '_tax_class', 'parent'),
(371, 86, '_manage_stock', 'no'),
(372, 86, '_backorders', 'no'),
(373, 86, '_sold_individually', 'no'),
(374, 86, '_virtual', 'no'),
(375, 86, '_downloadable', 'no'),
(376, 86, '_download_limit', '-1'),
(377, 86, '_download_expiry', '-1'),
(378, 86, '_stock', NULL),
(379, 86, '_stock_status', 'instock'),
(380, 86, '_wc_average_rating', '0'),
(381, 86, '_wc_review_count', '0'),
(382, 86, 'attribute_pa_material', 'rohozhka'),
(383, 86, 'attribute_pa_rozmiry', 'm'),
(384, 86, '_product_version', '9.6.1'),
(385, 87, '_variation_description', ''),
(386, 87, 'total_sales', '0'),
(387, 87, '_tax_status', 'taxable'),
(388, 87, '_tax_class', 'parent'),
(389, 87, '_manage_stock', 'no'),
(390, 87, '_backorders', 'no'),
(391, 87, '_sold_individually', 'no'),
(392, 87, '_virtual', 'no'),
(393, 87, '_downloadable', 'no'),
(394, 87, '_download_limit', '-1'),
(395, 87, '_download_expiry', '-1'),
(396, 87, '_stock', NULL),
(397, 87, '_stock_status', 'instock'),
(398, 87, '_wc_average_rating', '0'),
(399, 87, '_wc_review_count', '0'),
(400, 87, 'attribute_pa_material', 'shkirzaminnyk'),
(401, 87, 'attribute_pa_rozmiry', 'm'),
(402, 87, '_product_version', '9.6.1'),
(403, 88, '_variation_description', ''),
(404, 88, 'total_sales', '0'),
(405, 88, '_tax_status', 'taxable'),
(406, 88, '_tax_class', 'parent'),
(407, 88, '_manage_stock', 'no'),
(408, 88, '_backorders', 'no'),
(409, 88, '_sold_individually', 'no'),
(410, 88, '_virtual', 'no'),
(411, 88, '_downloadable', 'no'),
(412, 88, '_download_limit', '-1'),
(413, 88, '_download_expiry', '-1'),
(414, 88, '_stock', NULL),
(415, 88, '_stock_status', 'instock'),
(416, 88, '_wc_average_rating', '0'),
(417, 88, '_wc_review_count', '0'),
(418, 88, 'attribute_pa_material', 'rohozhka'),
(419, 88, 'attribute_pa_rozmiry', 's'),
(420, 88, '_product_version', '9.6.1'),
(421, 89, '_variation_description', ''),
(422, 89, 'total_sales', '0'),
(423, 89, '_tax_status', 'taxable'),
(424, 89, '_tax_class', 'parent'),
(425, 89, '_manage_stock', 'no'),
(426, 89, '_backorders', 'no'),
(427, 89, '_sold_individually', 'no'),
(428, 89, '_virtual', 'no'),
(429, 89, '_downloadable', 'no'),
(430, 89, '_download_limit', '-1'),
(431, 89, '_download_expiry', '-1'),
(432, 89, '_stock', NULL),
(433, 89, '_stock_status', 'instock'),
(434, 89, '_wc_average_rating', '0'),
(435, 89, '_wc_review_count', '0'),
(436, 89, 'attribute_pa_material', 'shkirzaminnyk'),
(437, 89, 'attribute_pa_rozmiry', 's'),
(438, 89, '_product_version', '9.6.1'),
(439, 84, '_regular_price', '99'),
(440, 84, '_thumbnail_id', '0'),
(441, 84, '_price', '99'),
(442, 85, '_regular_price', '96'),
(443, 85, '_thumbnail_id', '0'),
(444, 85, '_price', '96'),
(445, 86, '_regular_price', '98'),
(446, 86, '_thumbnail_id', '0'),
(447, 86, '_price', '98'),
(448, 87, '_regular_price', '69'),
(449, 87, '_thumbnail_id', '0'),
(450, 87, '_price', '69'),
(451, 88, '_regular_price', '44'),
(452, 88, '_thumbnail_id', '0'),
(453, 88, '_price', '44'),
(454, 89, '_regular_price', '55'),
(455, 89, '_thumbnail_id', '0'),
(456, 89, '_price', '55'),
(460, 83, '_price', '96'),
(461, 83, '_price', '44'),
(462, 83, '_price', '98'),
(463, 83, '_price', '55'),
(464, 83, '_price', '99'),
(465, 83, '_price', '69'),
(466, 83, '_price', '96'),
(467, 83, '_price', '98'),
(468, 83, '_price', '99'),
(469, 83, 'blocks_0_title', 'Груша Home 2'),
(470, 83, '_blocks_0_title', 'field_6761f090f4818'),
(471, 83, 'blocks_0_price', '333'),
(472, 83, '_blocks_0_price', 'field_6761f0a9f4819'),
(473, 83, 'blocks_0_link', ''),
(474, 83, '_blocks_0_link', 'field_6761f136f481c'),
(475, 83, 'blocks_0_sale', ''),
(476, 83, '_blocks_0_sale', 'field_6761f118f481b'),
(477, 83, 'blocks_0_img', '57'),
(478, 83, '_blocks_0_img', 'field_6761f0dbf481a'),
(479, 83, 'blocks_0_color', '#1e73be'),
(480, 83, '_blocks_0_color', 'field_6761f16ff481d'),
(481, 90, '_edit_last', '1'),
(482, 90, '_edit_lock', '1739368151:1'),
(483, 90, '_thumbnail_id', '57'),
(484, 90, '_regular_price', '123'),
(485, 90, 'total_sales', '0'),
(486, 90, '_tax_status', 'taxable'),
(487, 90, '_tax_class', ''),
(488, 90, '_manage_stock', 'no'),
(489, 90, '_backorders', 'no'),
(490, 90, '_sold_individually', 'no'),
(491, 90, '_virtual', 'no'),
(492, 90, '_downloadable', 'no'),
(493, 90, '_download_limit', '-1'),
(494, 90, '_download_expiry', '-1'),
(495, 90, '_stock', NULL),
(496, 90, '_stock_status', 'instock'),
(497, 90, '_wc_average_rating', '0'),
(498, 90, '_wc_review_count', '0'),
(499, 90, '_product_version', '9.6.1'),
(500, 90, '_price', '123'),
(501, 90, 'blocks', 'a:1:{i:0;s:5:\"media\";}'),
(502, 90, '_blocks', 'field_6761ee9ff4817'),
(503, 90, 'blocks_0_img', '41'),
(504, 90, '_blocks_0_img', 'field_6762bdbd45590'),
(505, 90, 'blocks_0_video', '75'),
(506, 90, '_blocks_0_video', 'field_6762bdd645591'),
(507, 91, '_wp_attached_file', '2025/02/cat_3.svg'),
(508, 91, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:3314;}'),
(509, 92, '_wp_attached_file', '2025/02/cat_1.svg'),
(510, 92, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:3558;}'),
(511, 93, '_wp_attached_file', '2025/02/cat_2.svg'),
(512, 93, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:1290;}'),
(513, 94, '_wp_attached_file', '2025/02/cat_4.svg'),
(514, 94, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:2343;}'),
(515, 95, '_wp_attached_file', '2025/02/product_2.png'),
(516, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2025/02/product_2.png\";s:8:\"filesize\";i:891353;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(517, 96, '_wp_attached_file', '2025/02/product_3.png'),
(518, 96, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1400;s:6:\"height\";i:1200;s:4:\"file\";s:21:\"2025/02/product_3.png\";s:8:\"filesize\";i:891909;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(519, 83, '_product_image_gallery', '95,96'),
(520, 97, '_edit_last', '1'),
(521, 97, '_edit_lock', '1739883135:1'),
(522, 99, 'total_sales', '0'),
(523, 99, '_tax_status', 'taxable'),
(524, 99, '_tax_class', ''),
(525, 99, '_manage_stock', 'no'),
(526, 99, '_backorders', 'no'),
(527, 99, '_sold_individually', 'no'),
(528, 99, '_virtual', 'no'),
(529, 99, '_downloadable', 'no'),
(530, 99, '_product_image_gallery', '95,96'),
(531, 99, '_download_limit', '-1'),
(532, 99, '_download_expiry', '-1'),
(533, 99, '_thumbnail_id', '57'),
(534, 99, '_stock', NULL),
(535, 99, '_stock_status', 'instock'),
(536, 99, '_wc_average_rating', '0'),
(537, 99, '_wc_review_count', '0'),
(538, 99, '_product_attributes', 'a:2:{s:10:\"pa_rozmiry\";a:6:{s:4:\"name\";s:10:\"pa_rozmiry\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(539, 99, '_product_version', '9.6.1'),
(540, 99, 'blocks', 'a:1:{i:0;s:7:\"product\";}'),
(541, 99, '_blocks', 'field_6761ee9ff4817'),
(542, 99, 'blocks_0_title', 'Груша Home 2'),
(543, 99, '_blocks_0_title', 'field_6761f090f4818'),
(544, 99, 'blocks_0_price', '333'),
(545, 99, '_blocks_0_price', 'field_6761f0a9f4819'),
(546, 99, 'blocks_0_link', ''),
(547, 99, '_blocks_0_link', 'field_6761f136f481c'),
(548, 99, 'blocks_0_sale', ''),
(549, 99, '_blocks_0_sale', 'field_6761f118f481b'),
(550, 99, 'blocks_0_img', '57'),
(551, 99, '_blocks_0_img', 'field_6761f0dbf481a'),
(552, 99, 'blocks_0_color', '#1e73be'),
(553, 99, '_blocks_0_color', 'field_6761f16ff481d'),
(554, 100, '_variation_description', ''),
(555, 100, '_regular_price', '99'),
(556, 100, 'total_sales', '0'),
(557, 100, '_tax_status', 'taxable'),
(558, 100, '_tax_class', 'parent'),
(559, 100, '_manage_stock', 'no'),
(560, 100, '_backorders', 'no'),
(561, 100, '_sold_individually', 'no'),
(562, 100, '_virtual', 'no'),
(563, 100, '_downloadable', 'no'),
(564, 100, '_download_limit', '-1'),
(565, 100, '_download_expiry', '-1'),
(566, 100, '_thumbnail_id', '0'),
(567, 100, '_stock', NULL),
(568, 100, '_stock_status', 'instock'),
(569, 100, '_wc_average_rating', '0'),
(570, 100, '_wc_review_count', '0'),
(571, 100, 'attribute_pa_rozmiry', 'l'),
(572, 100, 'attribute_pa_material', 'rohozhka'),
(573, 100, '_price', '99'),
(574, 100, '_product_version', '9.6.1'),
(575, 101, '_variation_description', ''),
(576, 101, '_regular_price', '96'),
(577, 101, 'total_sales', '0'),
(578, 101, '_tax_status', 'taxable'),
(579, 101, '_tax_class', 'parent'),
(580, 101, '_manage_stock', 'no'),
(581, 101, '_backorders', 'no'),
(582, 101, '_sold_individually', 'no'),
(583, 101, '_virtual', 'no'),
(584, 101, '_downloadable', 'no'),
(585, 101, '_download_limit', '-1'),
(586, 101, '_download_expiry', '-1'),
(587, 101, '_thumbnail_id', '0'),
(588, 101, '_stock', NULL),
(589, 101, '_stock_status', 'instock'),
(590, 101, '_wc_average_rating', '0'),
(591, 101, '_wc_review_count', '0'),
(592, 101, 'attribute_pa_rozmiry', 'l'),
(593, 101, 'attribute_pa_material', 'shkirzaminnyk'),
(594, 101, '_price', '96'),
(595, 101, '_product_version', '9.6.1'),
(596, 102, '_variation_description', ''),
(597, 102, '_regular_price', '98'),
(598, 102, 'total_sales', '0'),
(599, 102, '_tax_status', 'taxable'),
(600, 102, '_tax_class', 'parent'),
(601, 102, '_manage_stock', 'no'),
(602, 102, '_backorders', 'no'),
(603, 102, '_sold_individually', 'no'),
(604, 102, '_virtual', 'no'),
(605, 102, '_downloadable', 'no'),
(606, 102, '_download_limit', '-1'),
(607, 102, '_download_expiry', '-1'),
(608, 102, '_thumbnail_id', '0'),
(609, 102, '_stock', NULL),
(610, 102, '_stock_status', 'instock'),
(611, 102, '_wc_average_rating', '0'),
(612, 102, '_wc_review_count', '0'),
(613, 102, 'attribute_pa_rozmiry', 'm'),
(614, 102, 'attribute_pa_material', 'rohozhka'),
(615, 102, '_price', '98'),
(616, 102, '_product_version', '9.6.1'),
(617, 103, '_variation_description', ''),
(618, 103, '_regular_price', '69'),
(619, 103, 'total_sales', '0'),
(620, 103, '_tax_status', 'taxable'),
(621, 103, '_tax_class', 'parent'),
(622, 103, '_manage_stock', 'no'),
(623, 103, '_backorders', 'no'),
(624, 103, '_sold_individually', 'no'),
(625, 103, '_virtual', 'no'),
(626, 103, '_downloadable', 'no'),
(627, 103, '_download_limit', '-1'),
(628, 103, '_download_expiry', '-1'),
(629, 103, '_thumbnail_id', '0'),
(630, 103, '_stock', NULL),
(631, 103, '_stock_status', 'instock'),
(632, 103, '_wc_average_rating', '0'),
(633, 103, '_wc_review_count', '0'),
(634, 103, 'attribute_pa_rozmiry', 'm'),
(635, 103, 'attribute_pa_material', 'shkirzaminnyk'),
(636, 103, '_price', '69'),
(637, 103, '_product_version', '9.6.1'),
(638, 104, '_variation_description', ''),
(639, 104, '_regular_price', '44'),
(640, 104, 'total_sales', '0'),
(641, 104, '_tax_status', 'taxable'),
(642, 104, '_tax_class', 'parent'),
(643, 104, '_manage_stock', 'no'),
(644, 104, '_backorders', 'no'),
(645, 104, '_sold_individually', 'no'),
(646, 104, '_virtual', 'no'),
(647, 104, '_downloadable', 'no'),
(648, 104, '_download_limit', '-1'),
(649, 104, '_download_expiry', '-1'),
(650, 104, '_thumbnail_id', '0'),
(651, 104, '_stock', NULL),
(652, 104, '_stock_status', 'instock'),
(653, 104, '_wc_average_rating', '0'),
(654, 104, '_wc_review_count', '0'),
(655, 104, 'attribute_pa_rozmiry', 's'),
(656, 104, 'attribute_pa_material', 'rohozhka'),
(657, 104, '_price', '44'),
(658, 104, '_product_version', '9.6.1'),
(659, 105, '_variation_description', ''),
(660, 105, '_regular_price', '55'),
(661, 105, 'total_sales', '0'),
(662, 105, '_tax_status', 'taxable'),
(663, 105, '_tax_class', 'parent'),
(664, 105, '_manage_stock', 'no'),
(665, 105, '_backorders', 'no'),
(666, 105, '_sold_individually', 'no'),
(667, 105, '_virtual', 'no'),
(668, 105, '_downloadable', 'no'),
(669, 105, '_download_limit', '-1'),
(670, 105, '_download_expiry', '-1'),
(671, 105, '_thumbnail_id', '0'),
(672, 105, '_stock', NULL),
(673, 105, '_stock_status', 'instock'),
(674, 105, '_wc_average_rating', '0'),
(675, 105, '_wc_review_count', '0'),
(676, 105, 'attribute_pa_rozmiry', 's'),
(677, 105, 'attribute_pa_material', 'shkirzaminnyk'),
(678, 105, '_price', '55'),
(679, 105, '_product_version', '9.6.1'),
(680, 99, '_price', '44'),
(681, 99, '_price', '55'),
(682, 99, '_price', '69'),
(683, 99, '_price', '96'),
(684, 99, '_price', '98'),
(685, 99, '_price', '99'),
(686, 99, '_edit_lock', '1739371845:1'),
(687, 99, '_edit_last', '1'),
(688, 106, 'total_sales', '0'),
(689, 106, '_tax_status', 'taxable'),
(690, 106, '_tax_class', ''),
(691, 106, '_manage_stock', 'no'),
(692, 106, '_backorders', 'no'),
(693, 106, '_sold_individually', 'no'),
(694, 106, '_virtual', 'no'),
(695, 106, '_downloadable', 'no'),
(696, 106, '_product_image_gallery', '95,96'),
(697, 106, '_download_limit', '-1'),
(698, 106, '_download_expiry', '-1'),
(699, 106, '_thumbnail_id', '57'),
(700, 106, '_stock', NULL),
(701, 106, '_stock_status', 'instock'),
(702, 106, '_wc_average_rating', '0'),
(703, 106, '_wc_review_count', '0'),
(704, 106, '_product_attributes', 'a:2:{s:10:\"pa_rozmiry\";a:6:{s:4:\"name\";s:10:\"pa_rozmiry\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(705, 106, '_product_version', '9.6.1'),
(706, 106, 'blocks', 'a:1:{i:0;s:7:\"product\";}'),
(707, 106, '_blocks', 'field_6761ee9ff4817'),
(708, 106, 'blocks_0_title', 'Груша Home 2'),
(709, 106, '_blocks_0_title', 'field_6761f090f4818'),
(710, 106, 'blocks_0_price', '333'),
(711, 106, '_blocks_0_price', 'field_6761f0a9f4819'),
(712, 106, 'blocks_0_link', ''),
(713, 106, '_blocks_0_link', 'field_6761f136f481c'),
(714, 106, 'blocks_0_sale', ''),
(715, 106, '_blocks_0_sale', 'field_6761f118f481b'),
(716, 106, 'blocks_0_img', '57'),
(717, 106, '_blocks_0_img', 'field_6761f0dbf481a'),
(718, 106, 'blocks_0_color', '#1e73be'),
(719, 106, '_blocks_0_color', 'field_6761f16ff481d'),
(720, 107, '_variation_description', ''),
(721, 107, '_regular_price', '99'),
(722, 107, 'total_sales', '0'),
(723, 107, '_tax_status', 'taxable'),
(724, 107, '_tax_class', 'parent'),
(725, 107, '_manage_stock', 'no'),
(726, 107, '_backorders', 'no'),
(727, 107, '_sold_individually', 'no'),
(728, 107, '_virtual', 'no'),
(729, 107, '_downloadable', 'no'),
(730, 107, '_download_limit', '-1'),
(731, 107, '_download_expiry', '-1'),
(732, 107, '_thumbnail_id', '0'),
(733, 107, '_stock', NULL),
(734, 107, '_stock_status', 'instock'),
(735, 107, '_wc_average_rating', '0'),
(736, 107, '_wc_review_count', '0'),
(737, 107, 'attribute_pa_rozmiry', 'l'),
(738, 107, 'attribute_pa_material', 'rohozhka'),
(739, 107, '_price', '99'),
(740, 107, '_product_version', '9.6.1'),
(741, 108, '_variation_description', ''),
(742, 108, '_regular_price', '96'),
(743, 108, 'total_sales', '0'),
(744, 108, '_tax_status', 'taxable'),
(745, 108, '_tax_class', 'parent'),
(746, 108, '_manage_stock', 'no'),
(747, 108, '_backorders', 'no'),
(748, 108, '_sold_individually', 'no'),
(749, 108, '_virtual', 'no'),
(750, 108, '_downloadable', 'no'),
(751, 108, '_download_limit', '-1'),
(752, 108, '_download_expiry', '-1'),
(753, 108, '_thumbnail_id', '0'),
(754, 108, '_stock', NULL),
(755, 108, '_stock_status', 'instock'),
(756, 108, '_wc_average_rating', '0'),
(757, 108, '_wc_review_count', '0'),
(758, 108, 'attribute_pa_rozmiry', 'l'),
(759, 108, 'attribute_pa_material', 'shkirzaminnyk'),
(760, 108, '_price', '96'),
(761, 108, '_product_version', '9.6.1'),
(762, 109, '_variation_description', ''),
(763, 109, '_regular_price', '98'),
(764, 109, 'total_sales', '0'),
(765, 109, '_tax_status', 'taxable'),
(766, 109, '_tax_class', 'parent'),
(767, 109, '_manage_stock', 'no'),
(768, 109, '_backorders', 'no'),
(769, 109, '_sold_individually', 'no'),
(770, 109, '_virtual', 'no'),
(771, 109, '_downloadable', 'no'),
(772, 109, '_download_limit', '-1'),
(773, 109, '_download_expiry', '-1'),
(774, 109, '_thumbnail_id', '0'),
(775, 109, '_stock', NULL),
(776, 109, '_stock_status', 'instock'),
(777, 109, '_wc_average_rating', '0'),
(778, 109, '_wc_review_count', '0'),
(779, 109, 'attribute_pa_rozmiry', 'm'),
(780, 109, 'attribute_pa_material', 'rohozhka'),
(781, 109, '_price', '98'),
(782, 109, '_product_version', '9.6.1'),
(783, 110, '_variation_description', ''),
(784, 110, '_regular_price', '69'),
(785, 110, 'total_sales', '0'),
(786, 110, '_tax_status', 'taxable'),
(787, 110, '_tax_class', 'parent'),
(788, 110, '_manage_stock', 'no'),
(789, 110, '_backorders', 'no'),
(790, 110, '_sold_individually', 'no'),
(791, 110, '_virtual', 'no'),
(792, 110, '_downloadable', 'no'),
(793, 110, '_download_limit', '-1'),
(794, 110, '_download_expiry', '-1'),
(795, 110, '_thumbnail_id', '0'),
(796, 110, '_stock', NULL),
(797, 110, '_stock_status', 'instock'),
(798, 110, '_wc_average_rating', '0'),
(799, 110, '_wc_review_count', '0'),
(800, 110, 'attribute_pa_rozmiry', 'm'),
(801, 110, 'attribute_pa_material', 'shkirzaminnyk'),
(802, 110, '_price', '69'),
(803, 110, '_product_version', '9.6.1'),
(804, 111, '_variation_description', ''),
(805, 111, '_regular_price', '44'),
(806, 111, 'total_sales', '0'),
(807, 111, '_tax_status', 'taxable'),
(808, 111, '_tax_class', 'parent'),
(809, 111, '_manage_stock', 'no'),
(810, 111, '_backorders', 'no'),
(811, 111, '_sold_individually', 'no'),
(812, 111, '_virtual', 'no'),
(813, 111, '_downloadable', 'no'),
(814, 111, '_download_limit', '-1'),
(815, 111, '_download_expiry', '-1'),
(816, 111, '_thumbnail_id', '0'),
(817, 111, '_stock', NULL),
(818, 111, '_stock_status', 'instock'),
(819, 111, '_wc_average_rating', '0'),
(820, 111, '_wc_review_count', '0'),
(821, 111, 'attribute_pa_rozmiry', 's'),
(822, 111, 'attribute_pa_material', 'rohozhka'),
(823, 111, '_price', '44'),
(824, 111, '_product_version', '9.6.1'),
(825, 112, '_variation_description', ''),
(826, 112, '_regular_price', '55'),
(827, 112, 'total_sales', '0'),
(828, 112, '_tax_status', 'taxable'),
(829, 112, '_tax_class', 'parent'),
(830, 112, '_manage_stock', 'no'),
(831, 112, '_backorders', 'no'),
(832, 112, '_sold_individually', 'no'),
(833, 112, '_virtual', 'no'),
(834, 112, '_downloadable', 'no'),
(835, 112, '_download_limit', '-1'),
(836, 112, '_download_expiry', '-1'),
(837, 112, '_thumbnail_id', '0'),
(838, 112, '_stock', NULL),
(839, 112, '_stock_status', 'instock'),
(840, 112, '_wc_average_rating', '0'),
(841, 112, '_wc_review_count', '0'),
(842, 112, 'attribute_pa_rozmiry', 's'),
(843, 112, 'attribute_pa_material', 'shkirzaminnyk'),
(844, 112, '_price', '55'),
(845, 112, '_product_version', '9.6.1'),
(846, 106, '_price', '44'),
(847, 106, '_price', '55'),
(848, 106, '_price', '69'),
(849, 106, '_price', '96'),
(850, 106, '_price', '98'),
(851, 106, '_price', '99'),
(852, 106, '_edit_lock', '1739371973:1'),
(853, 106, '_edit_last', '1'),
(854, 113, 'total_sales', '0'),
(855, 113, '_tax_status', 'taxable'),
(856, 113, '_tax_class', ''),
(857, 113, '_manage_stock', 'no'),
(858, 113, '_backorders', 'no'),
(859, 113, '_sold_individually', 'no'),
(860, 113, '_virtual', 'no'),
(861, 113, '_downloadable', 'no'),
(862, 113, '_product_image_gallery', '95,96'),
(863, 113, '_download_limit', '-1'),
(864, 113, '_download_expiry', '-1'),
(865, 113, '_thumbnail_id', '57'),
(866, 113, '_stock', NULL),
(867, 113, '_stock_status', 'instock'),
(868, 113, '_wc_average_rating', '0'),
(869, 113, '_wc_review_count', '0'),
(870, 113, '_product_attributes', 'a:2:{s:10:\"pa_rozmiry\";a:6:{s:4:\"name\";s:10:\"pa_rozmiry\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(871, 113, '_product_version', '9.6.1'),
(872, 113, 'blocks', 'a:1:{i:0;s:7:\"product\";}'),
(873, 113, '_blocks', 'field_6761ee9ff4817'),
(874, 113, 'blocks_0_title', 'Груша Home 2'),
(875, 113, '_blocks_0_title', 'field_6761f090f4818'),
(876, 113, 'blocks_0_price', '333'),
(877, 113, '_blocks_0_price', 'field_6761f0a9f4819'),
(878, 113, 'blocks_0_link', ''),
(879, 113, '_blocks_0_link', 'field_6761f136f481c'),
(880, 113, 'blocks_0_sale', ''),
(881, 113, '_blocks_0_sale', 'field_6761f118f481b'),
(882, 113, 'blocks_0_img', '57'),
(883, 113, '_blocks_0_img', 'field_6761f0dbf481a'),
(884, 113, 'blocks_0_color', '#1e73be'),
(885, 113, '_blocks_0_color', 'field_6761f16ff481d'),
(886, 114, '_variation_description', ''),
(887, 114, '_regular_price', '99'),
(888, 114, 'total_sales', '0'),
(889, 114, '_tax_status', 'taxable'),
(890, 114, '_tax_class', 'parent'),
(891, 114, '_manage_stock', 'no'),
(892, 114, '_backorders', 'no'),
(893, 114, '_sold_individually', 'no'),
(894, 114, '_virtual', 'no'),
(895, 114, '_downloadable', 'no'),
(896, 114, '_download_limit', '-1'),
(897, 114, '_download_expiry', '-1'),
(898, 114, '_thumbnail_id', '0'),
(899, 114, '_stock', NULL),
(900, 114, '_stock_status', 'instock'),
(901, 114, '_wc_average_rating', '0'),
(902, 114, '_wc_review_count', '0'),
(903, 114, 'attribute_pa_rozmiry', 'l'),
(904, 114, 'attribute_pa_material', 'rohozhka'),
(905, 114, '_price', '99'),
(906, 114, '_product_version', '9.6.1'),
(907, 115, '_variation_description', ''),
(908, 115, '_regular_price', '96'),
(909, 115, 'total_sales', '0'),
(910, 115, '_tax_status', 'taxable'),
(911, 115, '_tax_class', 'parent'),
(912, 115, '_manage_stock', 'no'),
(913, 115, '_backorders', 'no'),
(914, 115, '_sold_individually', 'no'),
(915, 115, '_virtual', 'no'),
(916, 115, '_downloadable', 'no'),
(917, 115, '_download_limit', '-1'),
(918, 115, '_download_expiry', '-1'),
(919, 115, '_thumbnail_id', '0'),
(920, 115, '_stock', NULL),
(921, 115, '_stock_status', 'instock'),
(922, 115, '_wc_average_rating', '0'),
(923, 115, '_wc_review_count', '0'),
(924, 115, 'attribute_pa_rozmiry', 'l'),
(925, 115, 'attribute_pa_material', 'shkirzaminnyk'),
(926, 115, '_price', '96'),
(927, 115, '_product_version', '9.6.1'),
(928, 116, '_variation_description', ''),
(929, 116, '_regular_price', '98'),
(930, 116, 'total_sales', '0'),
(931, 116, '_tax_status', 'taxable'),
(932, 116, '_tax_class', 'parent'),
(933, 116, '_manage_stock', 'no'),
(934, 116, '_backorders', 'no'),
(935, 116, '_sold_individually', 'no'),
(936, 116, '_virtual', 'no'),
(937, 116, '_downloadable', 'no'),
(938, 116, '_download_limit', '-1'),
(939, 116, '_download_expiry', '-1'),
(940, 116, '_thumbnail_id', '0'),
(941, 116, '_stock', NULL),
(942, 116, '_stock_status', 'instock'),
(943, 116, '_wc_average_rating', '0'),
(944, 116, '_wc_review_count', '0'),
(945, 116, 'attribute_pa_rozmiry', 'm'),
(946, 116, 'attribute_pa_material', 'rohozhka'),
(947, 116, '_price', '98'),
(948, 116, '_product_version', '9.6.1'),
(949, 117, '_variation_description', ''),
(950, 117, '_regular_price', '69'),
(951, 117, 'total_sales', '0'),
(952, 117, '_tax_status', 'taxable'),
(953, 117, '_tax_class', 'parent'),
(954, 117, '_manage_stock', 'no'),
(955, 117, '_backorders', 'no'),
(956, 117, '_sold_individually', 'no'),
(957, 117, '_virtual', 'no'),
(958, 117, '_downloadable', 'no'),
(959, 117, '_download_limit', '-1'),
(960, 117, '_download_expiry', '-1'),
(961, 117, '_thumbnail_id', '0'),
(962, 117, '_stock', NULL),
(963, 117, '_stock_status', 'instock'),
(964, 117, '_wc_average_rating', '0'),
(965, 117, '_wc_review_count', '0'),
(966, 117, 'attribute_pa_rozmiry', 'm'),
(967, 117, 'attribute_pa_material', 'shkirzaminnyk'),
(968, 117, '_price', '69'),
(969, 117, '_product_version', '9.6.1'),
(970, 118, '_variation_description', ''),
(971, 118, '_regular_price', '44'),
(972, 118, 'total_sales', '0'),
(973, 118, '_tax_status', 'taxable'),
(974, 118, '_tax_class', 'parent'),
(975, 118, '_manage_stock', 'no'),
(976, 118, '_backorders', 'no'),
(977, 118, '_sold_individually', 'no'),
(978, 118, '_virtual', 'no'),
(979, 118, '_downloadable', 'no'),
(980, 118, '_download_limit', '-1'),
(981, 118, '_download_expiry', '-1'),
(982, 118, '_thumbnail_id', '0'),
(983, 118, '_stock', NULL),
(984, 118, '_stock_status', 'instock'),
(985, 118, '_wc_average_rating', '0'),
(986, 118, '_wc_review_count', '0'),
(987, 118, 'attribute_pa_rozmiry', 's'),
(988, 118, 'attribute_pa_material', 'rohozhka'),
(989, 118, '_price', '44'),
(990, 118, '_product_version', '9.6.1'),
(991, 119, '_variation_description', ''),
(992, 119, '_regular_price', '55'),
(993, 119, 'total_sales', '0'),
(994, 119, '_tax_status', 'taxable'),
(995, 119, '_tax_class', 'parent'),
(996, 119, '_manage_stock', 'no'),
(997, 119, '_backorders', 'no'),
(998, 119, '_sold_individually', 'no'),
(999, 119, '_virtual', 'no'),
(1000, 119, '_downloadable', 'no'),
(1001, 119, '_download_limit', '-1'),
(1002, 119, '_download_expiry', '-1'),
(1003, 119, '_thumbnail_id', '0'),
(1004, 119, '_stock', NULL),
(1005, 119, '_stock_status', 'instock'),
(1006, 119, '_wc_average_rating', '0'),
(1007, 119, '_wc_review_count', '0'),
(1008, 119, 'attribute_pa_rozmiry', 's'),
(1009, 119, 'attribute_pa_material', 'shkirzaminnyk'),
(1010, 119, '_price', '55'),
(1011, 119, '_product_version', '9.6.1'),
(1012, 113, '_price', '44'),
(1013, 113, '_price', '55'),
(1014, 113, '_price', '69'),
(1015, 113, '_price', '96'),
(1016, 113, '_price', '98'),
(1017, 113, '_price', '99'),
(1018, 113, '_edit_lock', '1739372470:1'),
(1019, 113, '_edit_last', '1'),
(1020, 120, 'total_sales', '0'),
(1021, 120, '_tax_status', 'taxable'),
(1022, 120, '_tax_class', ''),
(1023, 120, '_manage_stock', 'no'),
(1024, 120, '_backorders', 'no'),
(1025, 120, '_sold_individually', 'no'),
(1026, 120, '_virtual', 'no'),
(1027, 120, '_downloadable', 'no'),
(1028, 120, '_product_image_gallery', '95,96'),
(1029, 120, '_download_limit', '-1'),
(1030, 120, '_download_expiry', '-1'),
(1031, 120, '_thumbnail_id', '57'),
(1032, 120, '_stock', NULL),
(1033, 120, '_stock_status', 'instock'),
(1034, 120, '_wc_average_rating', '0'),
(1035, 120, '_wc_review_count', '0'),
(1036, 120, '_product_attributes', 'a:2:{s:10:\"pa_rozmiry\";a:6:{s:4:\"name\";s:10:\"pa_rozmiry\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1037, 120, '_product_version', '9.6.1'),
(1038, 120, 'blocks', 'a:1:{i:0;s:7:\"product\";}'),
(1039, 120, '_blocks', 'field_6761ee9ff4817'),
(1040, 120, 'blocks_0_title', 'Груша Home 2'),
(1041, 120, '_blocks_0_title', 'field_6761f090f4818'),
(1042, 120, 'blocks_0_price', '333'),
(1043, 120, '_blocks_0_price', 'field_6761f0a9f4819'),
(1044, 120, 'blocks_0_link', ''),
(1045, 120, '_blocks_0_link', 'field_6761f136f481c'),
(1046, 120, 'blocks_0_sale', ''),
(1047, 120, '_blocks_0_sale', 'field_6761f118f481b'),
(1048, 120, 'blocks_0_img', '57'),
(1049, 120, '_blocks_0_img', 'field_6761f0dbf481a'),
(1050, 120, 'blocks_0_color', '#1e73be'),
(1051, 120, '_blocks_0_color', 'field_6761f16ff481d'),
(1052, 121, '_variation_description', ''),
(1053, 121, '_regular_price', '99'),
(1054, 121, 'total_sales', '0'),
(1055, 121, '_tax_status', 'taxable'),
(1056, 121, '_tax_class', 'parent'),
(1057, 121, '_manage_stock', 'no'),
(1058, 121, '_backorders', 'no'),
(1059, 121, '_sold_individually', 'no'),
(1060, 121, '_virtual', 'no'),
(1061, 121, '_downloadable', 'no'),
(1062, 121, '_download_limit', '-1'),
(1063, 121, '_download_expiry', '-1'),
(1064, 121, '_thumbnail_id', '0'),
(1065, 121, '_stock', NULL),
(1066, 121, '_stock_status', 'instock'),
(1067, 121, '_wc_average_rating', '0'),
(1068, 121, '_wc_review_count', '0'),
(1069, 121, 'attribute_pa_rozmiry', 'l'),
(1070, 121, 'attribute_pa_material', 'rohozhka'),
(1071, 121, '_price', '99'),
(1072, 121, '_product_version', '9.6.1'),
(1073, 122, '_variation_description', ''),
(1074, 122, '_regular_price', '96'),
(1075, 122, 'total_sales', '0'),
(1076, 122, '_tax_status', 'taxable'),
(1077, 122, '_tax_class', 'parent'),
(1078, 122, '_manage_stock', 'no'),
(1079, 122, '_backorders', 'no'),
(1080, 122, '_sold_individually', 'no'),
(1081, 122, '_virtual', 'no'),
(1082, 122, '_downloadable', 'no'),
(1083, 122, '_download_limit', '-1'),
(1084, 122, '_download_expiry', '-1'),
(1085, 122, '_thumbnail_id', '0'),
(1086, 122, '_stock', NULL),
(1087, 122, '_stock_status', 'instock'),
(1088, 122, '_wc_average_rating', '0'),
(1089, 122, '_wc_review_count', '0'),
(1090, 122, 'attribute_pa_rozmiry', 'l'),
(1091, 122, 'attribute_pa_material', 'shkirzaminnyk'),
(1092, 122, '_price', '96'),
(1093, 122, '_product_version', '9.6.1'),
(1094, 123, '_variation_description', ''),
(1095, 123, '_regular_price', '98'),
(1096, 123, 'total_sales', '0'),
(1097, 123, '_tax_status', 'taxable'),
(1098, 123, '_tax_class', 'parent'),
(1099, 123, '_manage_stock', 'no'),
(1100, 123, '_backorders', 'no'),
(1101, 123, '_sold_individually', 'no'),
(1102, 123, '_virtual', 'no'),
(1103, 123, '_downloadable', 'no'),
(1104, 123, '_download_limit', '-1'),
(1105, 123, '_download_expiry', '-1'),
(1106, 123, '_thumbnail_id', '0'),
(1107, 123, '_stock', NULL),
(1108, 123, '_stock_status', 'instock'),
(1109, 123, '_wc_average_rating', '0'),
(1110, 123, '_wc_review_count', '0'),
(1111, 123, 'attribute_pa_rozmiry', 'm'),
(1112, 123, 'attribute_pa_material', 'rohozhka'),
(1113, 123, '_price', '98'),
(1114, 123, '_product_version', '9.6.1'),
(1115, 124, '_variation_description', ''),
(1116, 124, '_regular_price', '69'),
(1117, 124, 'total_sales', '0'),
(1118, 124, '_tax_status', 'taxable'),
(1119, 124, '_tax_class', 'parent'),
(1120, 124, '_manage_stock', 'no'),
(1121, 124, '_backorders', 'no'),
(1122, 124, '_sold_individually', 'no'),
(1123, 124, '_virtual', 'no'),
(1124, 124, '_downloadable', 'no');
INSERT INTO `bb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1125, 124, '_download_limit', '-1'),
(1126, 124, '_download_expiry', '-1'),
(1127, 124, '_thumbnail_id', '0'),
(1128, 124, '_stock', NULL),
(1129, 124, '_stock_status', 'instock'),
(1130, 124, '_wc_average_rating', '0'),
(1131, 124, '_wc_review_count', '0'),
(1132, 124, 'attribute_pa_rozmiry', 'm'),
(1133, 124, 'attribute_pa_material', 'shkirzaminnyk'),
(1134, 124, '_price', '69'),
(1135, 124, '_product_version', '9.6.1'),
(1136, 125, '_variation_description', ''),
(1137, 125, '_regular_price', '44'),
(1138, 125, 'total_sales', '0'),
(1139, 125, '_tax_status', 'taxable'),
(1140, 125, '_tax_class', 'parent'),
(1141, 125, '_manage_stock', 'no'),
(1142, 125, '_backorders', 'no'),
(1143, 125, '_sold_individually', 'no'),
(1144, 125, '_virtual', 'no'),
(1145, 125, '_downloadable', 'no'),
(1146, 125, '_download_limit', '-1'),
(1147, 125, '_download_expiry', '-1'),
(1148, 125, '_thumbnail_id', '0'),
(1149, 125, '_stock', NULL),
(1150, 125, '_stock_status', 'instock'),
(1151, 125, '_wc_average_rating', '0'),
(1152, 125, '_wc_review_count', '0'),
(1153, 125, 'attribute_pa_rozmiry', 's'),
(1154, 125, 'attribute_pa_material', 'rohozhka'),
(1155, 125, '_price', '44'),
(1156, 125, '_product_version', '9.6.1'),
(1157, 126, '_variation_description', ''),
(1158, 126, '_regular_price', '55'),
(1159, 126, 'total_sales', '0'),
(1160, 126, '_tax_status', 'taxable'),
(1161, 126, '_tax_class', 'parent'),
(1162, 126, '_manage_stock', 'no'),
(1163, 126, '_backorders', 'no'),
(1164, 126, '_sold_individually', 'no'),
(1165, 126, '_virtual', 'no'),
(1166, 126, '_downloadable', 'no'),
(1167, 126, '_download_limit', '-1'),
(1168, 126, '_download_expiry', '-1'),
(1169, 126, '_thumbnail_id', '0'),
(1170, 126, '_stock', NULL),
(1171, 126, '_stock_status', 'instock'),
(1172, 126, '_wc_average_rating', '0'),
(1173, 126, '_wc_review_count', '0'),
(1174, 126, 'attribute_pa_rozmiry', 's'),
(1175, 126, 'attribute_pa_material', 'shkirzaminnyk'),
(1176, 126, '_price', '55'),
(1177, 126, '_product_version', '9.6.1'),
(1178, 120, '_price', '44'),
(1179, 120, '_price', '55'),
(1180, 120, '_price', '69'),
(1181, 120, '_price', '96'),
(1182, 120, '_price', '98'),
(1183, 120, '_price', '99'),
(1184, 120, '_edit_lock', '1739372557:1'),
(1185, 120, '_edit_last', '1'),
(1186, 127, 'total_sales', '0'),
(1187, 127, '_tax_status', 'taxable'),
(1188, 127, '_tax_class', ''),
(1189, 127, '_manage_stock', 'no'),
(1190, 127, '_backorders', 'no'),
(1191, 127, '_sold_individually', 'no'),
(1192, 127, '_virtual', 'no'),
(1193, 127, '_downloadable', 'no'),
(1194, 127, '_product_image_gallery', '95,96'),
(1195, 127, '_download_limit', '-1'),
(1196, 127, '_download_expiry', '-1'),
(1197, 127, '_thumbnail_id', '57'),
(1198, 127, '_stock', NULL),
(1199, 127, '_stock_status', 'instock'),
(1200, 127, '_wc_average_rating', '0'),
(1201, 127, '_wc_review_count', '0'),
(1202, 127, '_product_attributes', 'a:2:{s:10:\"pa_rozmiry\";a:6:{s:4:\"name\";s:10:\"pa_rozmiry\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(1203, 127, '_product_version', '9.6.1'),
(1204, 127, 'blocks', 'a:1:{i:0;s:7:\"product\";}'),
(1205, 127, '_blocks', 'field_6761ee9ff4817'),
(1206, 127, 'blocks_0_title', 'Груша Home 2'),
(1207, 127, '_blocks_0_title', 'field_6761f090f4818'),
(1208, 127, 'blocks_0_price', '333'),
(1209, 127, '_blocks_0_price', 'field_6761f0a9f4819'),
(1210, 127, 'blocks_0_link', ''),
(1211, 127, '_blocks_0_link', 'field_6761f136f481c'),
(1212, 127, 'blocks_0_sale', ''),
(1213, 127, '_blocks_0_sale', 'field_6761f118f481b'),
(1214, 127, 'blocks_0_img', '57'),
(1215, 127, '_blocks_0_img', 'field_6761f0dbf481a'),
(1216, 127, 'blocks_0_color', '#1e73be'),
(1217, 127, '_blocks_0_color', 'field_6761f16ff481d'),
(1218, 128, '_variation_description', ''),
(1219, 128, '_regular_price', '99'),
(1220, 128, 'total_sales', '0'),
(1221, 128, '_tax_status', 'taxable'),
(1222, 128, '_tax_class', 'parent'),
(1223, 128, '_manage_stock', 'no'),
(1224, 128, '_backorders', 'no'),
(1225, 128, '_sold_individually', 'no'),
(1226, 128, '_virtual', 'no'),
(1227, 128, '_downloadable', 'no'),
(1228, 128, '_download_limit', '-1'),
(1229, 128, '_download_expiry', '-1'),
(1230, 128, '_thumbnail_id', '0'),
(1231, 128, '_stock', NULL),
(1232, 128, '_stock_status', 'instock'),
(1233, 128, '_wc_average_rating', '0'),
(1234, 128, '_wc_review_count', '0'),
(1235, 128, 'attribute_pa_rozmiry', 'l'),
(1236, 128, 'attribute_pa_material', 'rohozhka'),
(1237, 128, '_price', '99'),
(1238, 128, '_product_version', '9.6.1'),
(1239, 129, '_variation_description', ''),
(1240, 129, '_regular_price', '96'),
(1241, 129, 'total_sales', '0'),
(1242, 129, '_tax_status', 'taxable'),
(1243, 129, '_tax_class', 'parent'),
(1244, 129, '_manage_stock', 'no'),
(1245, 129, '_backorders', 'no'),
(1246, 129, '_sold_individually', 'no'),
(1247, 129, '_virtual', 'no'),
(1248, 129, '_downloadable', 'no'),
(1249, 129, '_download_limit', '-1'),
(1250, 129, '_download_expiry', '-1'),
(1251, 129, '_thumbnail_id', '0'),
(1252, 129, '_stock', NULL),
(1253, 129, '_stock_status', 'instock'),
(1254, 129, '_wc_average_rating', '0'),
(1255, 129, '_wc_review_count', '0'),
(1256, 129, 'attribute_pa_rozmiry', 'l'),
(1257, 129, 'attribute_pa_material', 'shkirzaminnyk'),
(1258, 129, '_price', '96'),
(1259, 129, '_product_version', '9.6.1'),
(1260, 130, '_variation_description', ''),
(1261, 130, '_regular_price', '98'),
(1262, 130, 'total_sales', '0'),
(1263, 130, '_tax_status', 'taxable'),
(1264, 130, '_tax_class', 'parent'),
(1265, 130, '_manage_stock', 'no'),
(1266, 130, '_backorders', 'no'),
(1267, 130, '_sold_individually', 'no'),
(1268, 130, '_virtual', 'no'),
(1269, 130, '_downloadable', 'no'),
(1270, 130, '_download_limit', '-1'),
(1271, 130, '_download_expiry', '-1'),
(1272, 130, '_thumbnail_id', '0'),
(1273, 130, '_stock', NULL),
(1274, 130, '_stock_status', 'instock'),
(1275, 130, '_wc_average_rating', '0'),
(1276, 130, '_wc_review_count', '0'),
(1277, 130, 'attribute_pa_rozmiry', 'm'),
(1278, 130, 'attribute_pa_material', 'rohozhka'),
(1279, 130, '_price', '98'),
(1280, 130, '_product_version', '9.6.1'),
(1281, 131, '_variation_description', ''),
(1282, 131, '_regular_price', '69'),
(1283, 131, 'total_sales', '0'),
(1284, 131, '_tax_status', 'taxable'),
(1285, 131, '_tax_class', 'parent'),
(1286, 131, '_manage_stock', 'no'),
(1287, 131, '_backorders', 'no'),
(1288, 131, '_sold_individually', 'no'),
(1289, 131, '_virtual', 'no'),
(1290, 131, '_downloadable', 'no'),
(1291, 131, '_download_limit', '-1'),
(1292, 131, '_download_expiry', '-1'),
(1293, 131, '_thumbnail_id', '0'),
(1294, 131, '_stock', NULL),
(1295, 131, '_stock_status', 'instock'),
(1296, 131, '_wc_average_rating', '0'),
(1297, 131, '_wc_review_count', '0'),
(1298, 131, 'attribute_pa_rozmiry', 'm'),
(1299, 131, 'attribute_pa_material', 'shkirzaminnyk'),
(1300, 131, '_price', '69'),
(1301, 131, '_product_version', '9.6.1'),
(1302, 132, '_variation_description', ''),
(1303, 132, '_regular_price', '44'),
(1304, 132, 'total_sales', '0'),
(1305, 132, '_tax_status', 'taxable'),
(1306, 132, '_tax_class', 'parent'),
(1307, 132, '_manage_stock', 'no'),
(1308, 132, '_backorders', 'no'),
(1309, 132, '_sold_individually', 'no'),
(1310, 132, '_virtual', 'no'),
(1311, 132, '_downloadable', 'no'),
(1312, 132, '_download_limit', '-1'),
(1313, 132, '_download_expiry', '-1'),
(1314, 132, '_thumbnail_id', '0'),
(1315, 132, '_stock', NULL),
(1316, 132, '_stock_status', 'instock'),
(1317, 132, '_wc_average_rating', '0'),
(1318, 132, '_wc_review_count', '0'),
(1319, 132, 'attribute_pa_rozmiry', 's'),
(1320, 132, 'attribute_pa_material', 'rohozhka'),
(1321, 132, '_price', '44'),
(1322, 132, '_product_version', '9.6.1'),
(1323, 133, '_variation_description', ''),
(1324, 133, '_regular_price', '55'),
(1325, 133, 'total_sales', '0'),
(1326, 133, '_tax_status', 'taxable'),
(1327, 133, '_tax_class', 'parent'),
(1328, 133, '_manage_stock', 'no'),
(1329, 133, '_backorders', 'no'),
(1330, 133, '_sold_individually', 'no'),
(1331, 133, '_virtual', 'no'),
(1332, 133, '_downloadable', 'no'),
(1333, 133, '_download_limit', '-1'),
(1334, 133, '_download_expiry', '-1'),
(1335, 133, '_thumbnail_id', '0'),
(1336, 133, '_stock', NULL),
(1337, 133, '_stock_status', 'instock'),
(1338, 133, '_wc_average_rating', '0'),
(1339, 133, '_wc_review_count', '0'),
(1340, 133, 'attribute_pa_rozmiry', 's'),
(1341, 133, 'attribute_pa_material', 'shkirzaminnyk'),
(1342, 133, '_price', '55'),
(1343, 133, '_product_version', '9.6.1'),
(1344, 127, '_price', '44'),
(1345, 127, '_price', '55'),
(1346, 127, '_price', '69'),
(1347, 127, '_price', '96'),
(1348, 127, '_price', '98'),
(1349, 127, '_price', '99'),
(1350, 127, '_edit_lock', '1739372698:1'),
(1351, 127, '_edit_last', '1'),
(1352, 134, '_wp_trash_meta_status', 'publish'),
(1353, 134, '_wp_trash_meta_time', '1739372912'),
(1354, 135, '_edit_last', '1'),
(1355, 135, '_edit_lock', '1739395438:1'),
(1356, 137, '_wp_attached_file', '2025/02/ALP-02.jpg'),
(1357, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1730;s:6:\"height\";i:440;s:4:\"file\";s:18:\"2025/02/ALP-02.jpg\";s:8:\"filesize\";i:72804;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1358, 138, '_wp_attached_file', '2025/02/ALP-04.jpg'),
(1359, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1730;s:6:\"height\";i:440;s:4:\"file\";s:18:\"2025/02/ALP-04.jpg\";s:8:\"filesize\";i:89419;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1360, 139, '_wp_attached_file', '2025/02/256-1.jpg'),
(1361, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1730;s:6:\"height\";i:440;s:4:\"file\";s:17:\"2025/02/256-1.jpg\";s:8:\"filesize\";i:187569;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1362, 1, 'blocks_0_product', '83'),
(1363, 1, '_blocks_0_product', 'field_67ae3ac061877'),
(1364, 1, 'blocks_2_product', '99'),
(1365, 1, '_blocks_2_product', 'field_67ae3ac061877'),
(1366, 1, 'blocks_1_category', '29'),
(1367, 1, '_blocks_1_category', 'field_67ae57f5d0d74'),
(1368, 1, 'blocks_3_category', '19'),
(1369, 1, '_blocks_3_category', 'field_67ae57f5d0d74'),
(1370, 1, 'blocks_4_category', '30'),
(1371, 1, '_blocks_4_category', 'field_67ae57f5d0d74'),
(1372, 144, '_edit_last', '1'),
(1373, 144, '_edit_lock', '1740431199:1'),
(1374, 83, 'sale', '1'),
(1375, 83, '_sale', 'field_67bcbf46487e6'),
(1376, 83, 'blocks_0_product', ''),
(1377, 83, '_blocks_0_product', 'field_67ae3ac061877'),
(1378, 153, '_wp_attached_file', '2025/02/Lightning.svg'),
(1379, 153, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:536;}'),
(1380, 83, 'promo_0_ico', '153'),
(1381, 83, '_promo_0_ico', 'field_67bcd62f2d8fe'),
(1382, 83, 'promo_0_name', 'Розпродаж'),
(1383, 83, '_promo_0_name', 'field_67bcd64b2d8ff'),
(1384, 83, 'promo_0_url', '#op'),
(1385, 83, '_promo_0_url', 'field_67bcd6632d900'),
(1386, 83, 'promo', '2'),
(1387, 83, '_promo', 'field_67bcd5872d8fd'),
(1388, 159, '_wp_attached_file', '2025/02/Loft-Cream.jpg'),
(1389, 159, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:22:\"2025/02/Loft-Cream.jpg\";s:8:\"filesize\";i:108612;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1390, 83, '3dios_0_photo', '159'),
(1391, 83, '_3dios_0_photo', 'field_67bcd9109cc6b'),
(1392, 83, '3dios_0_3d_file', '162'),
(1393, 83, '_3dios_0_3d_file', 'field_67bcd9339cc6c'),
(1394, 83, '3dios', '1'),
(1395, 83, '_3dios', 'field_67bcd67c6e6b6'),
(1396, 83, '3dandroid', '1'),
(1397, 83, '_3dandroid', 'field_67bcd9529cc6d'),
(1398, 160, '_wp_attached_file', '2025/02/VV_Black.jpg'),
(1399, 160, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2025/02/VV_Black.jpg\";s:8:\"filesize\";i:43883;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1400, 83, '3dandroid_0_photo', '160'),
(1401, 83, '_3dandroid_0_photo', 'field_67bcd9529cc6e'),
(1402, 83, '3dandroid_0_3d_file', '161'),
(1403, 83, '_3dandroid_0_3d_file', 'field_67bcd9529cc6f'),
(1404, 161, '_wp_attached_file', '2025/02/Smile-Black.glb'),
(1405, 161, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:3240488;}'),
(1406, 162, '_wp_attached_file', '2025/02/Smile_Loft-1-Cream-1.usdz'),
(1407, 162, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:9780213;}'),
(1408, 83, 'instruct_name', 'Скільки наповнювача мені потрібно?'),
(1409, 83, '_instruct_name', 'field_67bcdf0556a55'),
(1410, 83, 'instruct_text', '<strong>У мене крісло-мішок, розмір L:</strong> Обʼєм, при купівлі - 350 літрів. Для відновлення форми - рекомендуємо 150 літрів наповнювача;\r\n\r\n<strong>У мене крісло-мішок, розмір M:</strong> Обʼєм, при купівлі - 275 літрів. Для відновлення форми - рекомендуємо 100 літрів наповнювача.'),
(1411, 83, '_instruct_text', 'field_67bcdf3456a56'),
(1412, 83, 'promo_1_ico', '92'),
(1413, 83, '_promo_1_ico', 'field_67bcd62f2d8fe'),
(1414, 83, 'promo_1_name', 'Подарунок'),
(1415, 83, '_promo_1_name', 'field_67bcd64b2d8ff'),
(1416, 83, 'promo_1_url', ''),
(1417, 83, '_promo_1_url', 'field_67bcd6632d900');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_posts`
--

CREATE TABLE `bb_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_posts`
--

INSERT INTO `bb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-11-22 13:07:58', '2024-11-22 13:07:58', '', 'Головна', '', 'publish', 'closed', 'closed', '', 'holovna', '', '', '2025-02-13 20:39:21', '2025-02-13 20:39:21', '', 0, 'http://enjoy.loc/?page_id=1', 0, 'page', '', 0),
(4, 1, '2024-11-22 14:10:14', '2024-11-22 14:10:14', '', 'favicon', '', 'inherit', 'closed', 'closed', '', 'favicon', '', '', '2024-11-22 14:10:14', '2024-11-22 14:10:14', '', 0, 'http://enjoy.loc/wp-content/uploads/2024/11/favicon.png', 0, 'attachment', 'image/png', 0),
(5, 1, '2024-11-22 14:10:17', '2024-11-22 14:10:17', 'http://enjoy.loc/wp-content/uploads/2024/11/cropped-favicon.png', 'cropped-favicon.png', '', 'inherit', 'closed', 'closed', '', 'cropped-favicon-png', '', '', '2024-11-22 14:10:17', '2024-11-22 14:10:17', '', 4, 'http://enjoy.loc/wp-content/uploads/2024/11/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2024-11-28 12:25:27', '2024-11-28 12:25:27', '', 'Каталог', '', 'publish', 'closed', 'closed', '', 'catalog', '', '', '2024-11-28 12:25:45', '2024-11-28 12:25:45', '', 0, 'http://enjoy.loc/?page_id=7', 0, 'page', '', 0),
(8, 1, '2024-11-29 13:42:40', '2024-11-29 13:42:40', '<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Ми надаємо своїм клієнтам гарантію 12 міс та постійну післягарантійну підтримку.</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Важливо! Гарантія розповсюджується на тканину, фурнітуру, якість швів і пошиття, при дотриманні правил зберігання та експлуатації. Інструкцію з правилами експлуатації додаємо до кожного замовлення.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гарантія не розповсюджується на наповнювач, оскільки часткове просідання – це його фізична властивість.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Гарантія', '', 'publish', 'closed', 'closed', '', 'warranty', '', '', '2024-11-29 13:46:02', '2024-11-29 13:46:02', '', 0, 'http://enjoy.loc/?page_id=8', 0, 'page', '', 0),
(9, 1, '2024-11-29 13:45:25', '2024-11-29 13:45:25', '<!-- wp:paragraph -->\n<p>Ми надаємо своїм клієнтам гарантію 12 міс та постійну післягарантійну підтримку.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Гарантія', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2024-11-29 13:45:25', '2024-11-29 13:45:25', '', 8, 'http://enjoy.loc/?p=9', 0, 'revision', '', 0),
(10, 1, '2024-11-29 13:46:47', '2024-11-29 13:46:47', '<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Договір публічної оферти</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Нижченаведений текст є договором між інтернет-магазином, сайт якого розміщений в мережі Інтернет за адресою https://enjoy.ua, іменованим надалі «Інтернет-магазин» та користувачем послуг Інтернет-магазину, іменований в подальшому «Покупець», і визначає умови придбання товарів через сайт інтернет-магазину.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Загальні положення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1.1. Цей договір є договором публічної оферти (у відповідності зі ст. ст. 633, 641 і гол. 63 Цивільного кодексу України), його умови однакові для всіх покупців незалежно від статусу (фізична особа, юридична особа, фізична особа – підприємець).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.2. У разі прийняття умов цього договору, тобто публічної оферти Інтернет-магазину, користувач стає Покупцем.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Поняття і визначення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>2.1. У цій оферті, якщо контекст не вимагає іншого, наведені нижче терміни мають таке значення:<br>* «Товар» – моделі, аксесуари, комплектуючі та супровідні предмети;<br>* «Інтернет-магазин» – відповідно до Закону України «про електронну комерцію», засіб для подання або реалізації товару, роботи або послуги шляхом здійснення електронної угоди.<br>* «Продавець» – компанія, яка реалізує товари, представлені на Інтернет-сайті.<br>* «Покупець» – фізична особа, що уклала з Продавцем Договір на умовах, викладених нижче.<br>* «Замовлення» – вибір окремих позицій з переліку товарів, зазначених Покупцем при розміщенні замовлення і проведенні оплати.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Предмет договору</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>3.1. Продавець зобов’язується передати у власність Покупця Товар, а Покупець зобов’язується оплатити і прийняти Товар на умовах даного Договору.<br>Цей Договір регулює купівлю-продаж товарів в Інтернет-магазині, в тому числі:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>добровільний вибір Покупцем товарів в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>самостійне оформлення Покупцем замовлення в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>оплата Покупцем замовлення, оформленого в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>обробка і доставка замовлення Покупцеві у власність на умовах цього Договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Порядок оформлення замовлення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>4.1. Покупець має право оформити замовлення на будь-який товар, представлений на Сайті Інтернет-магазину і наявний.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.2. Кожна позиція може бути представлена в замовленні в будь-якій кількості.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.3. При відсутності товару на складі, Менеджер компанії зобов’язаний поставити Покупця до відома (по телефону або через електронну пошту).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.4. При відсутності товару Покупець має право замінити його товаром аналогічної моделі, відмовитися від даного товару, анулювати замовлення.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Порядок оплати замовлення</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Накладеним платежем</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>5.1. Оплата здійснюється за фактом отримання товару у відділенні транспортних компанії за готівковий розрахунок в гривнях.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.2. При не надходженні коштів Інтернет-магазин залишає за собою право анулювати замовлення.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Умови доставки замовлення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>6.1. Доставка товарів, придбаних в Інтернет-магазині, здійснюється до складів транспортних компаній, де і здійснюється видача замовлень, або ж через адресну кур’єрську доставку</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.2. Разом із замовленням Покупцеві надаються документи згідно законодавства України.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Права та обов’язки сторін:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>7.1. Продавець має право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>в односторонньому порядку припинити надання послуг за цим договором у разі порушення Покупцем умов цього договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>7.2. Покупець зобов’язаний:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>своєчасно оплатити та отримати замовлення на умовах цього договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>7.3. Покупець має право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>оформити замовлення в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>оформити електронний договір;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>вимагати від Продавця виконання умов цього Договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Відповідальність сторін</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>8.1. Сторони несуть відповідальність за невиконання або неналежне виконання умов цього договору в порядку, передбаченому цим договором та чинним законодавством України.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>8.2. Продавець не несе відповідальності за:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>змінений виробником зовнішній вигляд Товару;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за незначне невідповідність колірної гами товару, що може відрізнятися від оригіналу товару виключно через різній колірній передачі моніторів персональних комп’ютерів окремих моделей;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за зміст і правдивість інформації, наданої Покупцем при оформленні замовлення;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за затримку і перебої в наданні Послуг (обробки замовлення та доставки товару), які відбуваються з причин, що знаходяться поза сферою його контролю;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за протиправні незаконні дії, здійснені Покупцем за допомогою даного доступу до мережі Інтернет;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за передачу Покупцем своїх мережевих ідентифікаторів – IP, MAC-адреси, логіну і пароля третім особам;</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>8.3. Покупець, використовуючи наданий йому доступ до мережі Інтернет, самостійно несе відповідальність за шкоду, заподіяну його діями (особисто, навіть якщо під його логіном знаходилося іншу особу) особам або їх майну, юридичним особам, державі чи моральним принципам моральності.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>8.4. У разі настання обставин непереборної сили, сторони звільняються від виконання умов цього договору. Під обставинами непереборної сили для цілей цього договору розуміються події, що мають надзвичайний, непередбачений характер, які виключають або об’єктивно заважають виконанню цього договору, настання яких Сторони не могли передбачити і запобігти розумними способами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>8.5. Сторони прикладають максимум зусиль для вирішення будь-яких розбіжностей виключно шляхом переговорів.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Інші умови</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>9.1. Інтернет-магазин залишає за собою право в односторонньому порядку вносити зміни до цього договору за умови попередньої публікації його на сайті https://prolum.com.ua</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.2. Інтернет-магазин створений для організації дистанційного способу продажу товарів через Інтернет.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.3. Покупець несе відповідальність за достовірність інформації, зазначеної при оформленні замовлення інформації. При цьому, при здійсненні акцепту (оформленні замовлення і подальшої оплати товару) Покупець надає Продавцю свою беззастережну згоду на збір, обробку, зберігання, використання своїх персональних даних, в розумінні ЗУ «Про захист персональних даних».</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.4. Оплата Покупцем оформленого в Інтернет-магазині замовлення означає повну згоду Покупця з умовами договору купівлі-продажу (публічної оферти)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.5. Фактичною датою електронного угоди між сторонами є дата прийняття умов, відповідно до ст. 11 Закону України «Про електронну комерцію»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.6. Використання ресурсу Інтернет-магазину для попереднього перегляду товару, а також для оформлення замовлення для Покупця є безкоштовним.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.7. Інформація, яку надає Покупцем є конфіденційною. Інтернет-магазин використовує інформацію про Покупця виключно в цілях обробки замовлення, відправлення повідомлень Покупцеві, доставки товару, здійснення взаєморозрахунків і ін.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Порядок повернення товару належної якості</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>10.1. Повернення товару в Інтернет-магазин проводиться згідно чинного законодавства України.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10.2. Повернення товару в Інтернет-магазин проводиться за рахунок Покупця.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10.3. При поверненні Покупцем товару належної якості, Інтернет-магазин повертає йому сплачену за товар грошову суму за фактом повернення товару за вирахуванням компенсації витрат Інтернет-магазину пов’язаних з доставкою товару Покупцеві.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Термін дії договору</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>11.1.Електронний договір вважається укладеним з моменту одержання особою яка направила пропозицію укласти такий договір, відповіді про прийняття цієї пропозиції в порядку, визначеному частиною шостою статті 11 Закону України “Про електронну комерцію”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>11.2. До закінчення терміну дії цей Договір може бути розірваний за взаємною згодою сторін до моменту фактичної доставки товару, шляхом повернення грошових коштів</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>11.3. Сторони мають право розірвати цей договір в односторонньому порядку, в разі невиконання однією із сторін умов цього Договору та у випадках передбачених чинним законодавством України.</p>\n<!-- /wp:paragraph -->', 'Користувацька угода', '', 'publish', 'closed', 'closed', '', 'user-agreement', '', '', '2024-11-29 13:50:43', '2024-11-29 13:50:43', '', 0, 'http://enjoy.loc/?page_id=10', 0, 'page', '', 0),
(11, 1, '2024-11-29 13:50:24', '2024-11-29 13:50:24', '<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Договір публічної оферти</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Нижченаведений текст є договором між інтернет-магазином, сайт якого розміщений в мережі Інтернет за адресою https://enjoy.ua, іменованим надалі «Інтернет-магазин» та користувачем послуг Інтернет-магазину, іменований в подальшому «Покупець», і визначає умови придбання товарів через сайт інтернет-магазину.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Загальні положення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>1.1. Цей договір є договором публічної оферти (у відповідності зі ст. ст. 633, 641 і гол. 63 Цивільного кодексу України), його умови однакові для всіх покупців незалежно від статусу (фізична особа, юридична особа, фізична особа – підприємець).</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>1.2. У разі прийняття умов цього договору, тобто публічної оферти Інтернет-магазину, користувач стає Покупцем.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Поняття і визначення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Нижченаведений текст є договором між інтернет-магазином, сайт якого розміщений в мережі Інтернет за адресою https://enjoy.ua, іменованим надалі «Інтернет-магазин» та користувачем послуг Інтернет-магазину, іменований в подальшому «Покупець», і визначає умови придбання товарів через сайт інтернет-магазину.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Загальні положення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1.1. Цей договір є договором публічної оферти (у відповідності зі ст. ст. 633, 641 і гол. 63 Цивільного кодексу України), його умови однакові для всіх покупців незалежно від статусу (фізична особа, юридична особа, фізична особа – підприємець).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.2. У разі прийняття умов цього договору, тобто публічної оферти Інтернет-магазину, користувач стає Покупцем.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Поняття і визначення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>2.1. У цій оферті, якщо контекст не вимагає іншого, наведені нижче терміни мають таке значення:<br>* «Товар» – моделі, аксесуари, комплектуючі та супровідні предмети;<br>* «Інтернет-магазин» – відповідно до Закону України «про електронну комерцію», засіб для подання або реалізації товару, роботи або послуги шляхом здійснення електронної угоди.<br>* «Продавець» – компанія, яка реалізує товари, представлені на Інтернет-сайті.<br>* «Покупець» – фізична особа, що уклала з Продавцем Договір на умовах, викладених нижче.<br>* «Замовлення» – вибір окремих позицій з переліку товарів, зазначених Покупцем при розміщенні замовлення і проведенні оплати.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Предмет договору</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>3.1. Продавець зобов’язується передати у власність Покупця Товар, а Покупець зобов’язується оплатити і прийняти Товар на умовах даного Договору.<br>Цей Договір регулює купівлю-продаж товарів в Інтернет-магазині, в тому числі:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>добровільний вибір Покупцем товарів в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>самостійне оформлення Покупцем замовлення в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>оплата Покупцем замовлення, оформленого в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>обробка і доставка замовлення Покупцеві у власність на умовах цього Договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Порядок оформлення замовлення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>4.1. Покупець має право оформити замовлення на будь-який товар, представлений на Сайті Інтернет-магазину і наявний.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.2. Кожна позиція може бути представлена в замовленні в будь-якій кількості.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.3. При відсутності товару на складі, Менеджер компанії зобов’язаний поставити Покупця до відома (по телефону або через електронну пошту).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.4. При відсутності товару Покупець має право замінити його товаром аналогічної моделі, відмовитися від даного товару, анулювати замовлення.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Порядок оплати замовлення</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Накладеним платежем</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>5.1. Оплата здійснюється за фактом отримання товару у відділенні транспортних компанії за готівковий розрахунок в гривнях.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.2. При не надходженні коштів Інтернет-магазин залишає за собою право анулювати замовлення.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Умови доставки замовлення</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>6.1. Доставка товарів, придбаних в Інтернет-магазині, здійснюється до складів транспортних компаній, де і здійснюється видача замовлень, або ж через адресну кур’єрську доставку</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.2. Разом із замовленням Покупцеві надаються документи згідно законодавства України.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Права та обов’язки сторін:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>7.1. Продавець має право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>в односторонньому порядку припинити надання послуг за цим договором у разі порушення Покупцем умов цього договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>7.2. Покупець зобов’язаний:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>своєчасно оплатити та отримати замовлення на умовах цього договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>7.3. Покупець має право:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>оформити замовлення в Інтернет-магазині;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>оформити електронний договір;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>вимагати від Продавця виконання умов цього Договору.</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Відповідальність сторін</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>8.1. Сторони несуть відповідальність за невиконання або неналежне виконання умов цього договору в порядку, передбаченому цим договором та чинним законодавством України.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>8.2. Продавець не несе відповідальності за:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li>змінений виробником зовнішній вигляд Товару;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за незначне невідповідність колірної гами товару, що може відрізнятися від оригіналу товару виключно через різній колірній передачі моніторів персональних комп’ютерів окремих моделей;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за зміст і правдивість інформації, наданої Покупцем при оформленні замовлення;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за затримку і перебої в наданні Послуг (обробки замовлення та доставки товару), які відбуваються з причин, що знаходяться поза сферою його контролю;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за протиправні незаконні дії, здійснені Покупцем за допомогою даного доступу до мережі Інтернет;</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>за передачу Покупцем своїх мережевих ідентифікаторів – IP, MAC-адреси, логіну і пароля третім особам;</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>8.3. Покупець, використовуючи наданий йому доступ до мережі Інтернет, самостійно несе відповідальність за шкоду, заподіяну його діями (особисто, навіть якщо під його логіном знаходилося іншу особу) особам або їх майну, юридичним особам, державі чи моральним принципам моральності.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>8.4. У разі настання обставин непереборної сили, сторони звільняються від виконання умов цього договору. Під обставинами непереборної сили для цілей цього договору розуміються події, що мають надзвичайний, непередбачений характер, які виключають або об’єктивно заважають виконанню цього договору, настання яких Сторони не могли передбачити і запобігти розумними способами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>8.5. Сторони прикладають максимум зусиль для вирішення будь-яких розбіжностей виключно шляхом переговорів.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Інші умови</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>9.1. Інтернет-магазин залишає за собою право в односторонньому порядку вносити зміни до цього договору за умови попередньої публікації його на сайті https://prolum.com.ua</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.2. Інтернет-магазин створений для організації дистанційного способу продажу товарів через Інтернет.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.3. Покупець несе відповідальність за достовірність інформації, зазначеної при оформленні замовлення інформації. При цьому, при здійсненні акцепту (оформленні замовлення і подальшої оплати товару) Покупець надає Продавцю свою беззастережну згоду на збір, обробку, зберігання, використання своїх персональних даних, в розумінні ЗУ «Про захист персональних даних».</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.4. Оплата Покупцем оформленого в Інтернет-магазині замовлення означає повну згоду Покупця з умовами договору купівлі-продажу (публічної оферти)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.5. Фактичною датою електронного угоди між сторонами є дата прийняття умов, відповідно до ст. 11 Закону України «Про електронну комерцію»</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.6. Використання ресурсу Інтернет-магазину для попереднього перегляду товару, а також для оформлення замовлення для Покупця є безкоштовним.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>9.7. Інформація, яку надає Покупцем є конфіденційною. Інтернет-магазин використовує інформацію про Покупця виключно в цілях обробки замовлення, відправлення повідомлень Покупцеві, доставки товару, здійснення взаєморозрахунків і ін.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Порядок повернення товару належної якості</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>10.1. Повернення товару в Інтернет-магазин проводиться згідно чинного законодавства України.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10.2. Повернення товару в Інтернет-магазин проводиться за рахунок Покупця.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10.3. При поверненні Покупцем товару належної якості, Інтернет-магазин повертає йому сплачену за товар грошову суму за фактом повернення товару за вирахуванням компенсації витрат Інтернет-магазину пов’язаних з доставкою товару Покупцеві.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Термін дії договору</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>11.1.Електронний договір вважається укладеним з моменту одержання особою яка направила пропозицію укласти такий договір, відповіді про прийняття цієї пропозиції в порядку, визначеному частиною шостою статті 11 Закону України “Про електронну комерцію”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>11.2. До закінчення терміну дії цей Договір може бути розірваний за взаємною згодою сторін до моменту фактичної доставки товару, шляхом повернення грошових коштів</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>11.3. Сторони мають право розірвати цей договір в односторонньому порядку, в разі невиконання однією із сторін умов цього Договору та у випадках передбачених чинним законодавством України.</p>\n<!-- /wp:paragraph -->', 'Користувацька угода', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2024-11-29 13:50:24', '2024-11-29 13:50:24', '', 10, 'http://enjoy.loc/?p=11', 0, 'revision', '', 0),
(12, 1, '2024-11-29 14:15:01', '2024-11-29 14:15:01', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Маєте питання?<br>Напишіть нам ;)', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2024-11-29 14:30:06', '2024-11-29 14:30:06', '', 0, 'http://enjoy.loc/?page_id=12', 0, 'page', '', 0),
(13, 1, '2024-11-29 14:15:43', '2024-11-29 14:15:43', '', 'Контакти', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2024-11-29 14:15:43', '2024-11-29 14:15:43', '', 12, 'http://enjoy.loc/?p=13', 0, 'revision', '', 0),
(14, 1, '2024-11-29 14:17:35', '2024-11-29 14:17:35', '<label>\r\n  <p>Ім\'я *</p>\r\n  [text* your-name placeholder \"Ваше ім\'я\"]\r\n</label>\r\n<label>\r\n  <p>Номер телефону</p>\r\n  [tel your-phone placeholder \"+380\"]\r\n</label>\r\n<label>\r\n  <p>Електронна пошта *</p>\r\n  [email* your-email placeholder \"Ваш email\"]\r\n</label>\r\n<label>\r\n  <p>Ваше повідомлення</p>\r\n  [textarea your-message rows:3 placeholder \"Залиште своє повідомлення\"]\r\n</label>\r\n<div class=\"cta\">\r\n  <span class=\"spinner\"></span>\r\n  <button class=\"on-submit\" type=\"submit\">Надіслати</button>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@enjoy.loc>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@enjoy.loc>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Форма зворотнього зв\'язку', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-11-29 14:48:31', '2024-11-29 14:48:31', '', 0, 'http://enjoy.loc/?post_type=wpcf7_contact_form&#038;p=14', 0, 'wpcf7_contact_form', '', 0),
(16, 1, '2024-12-05 13:58:37', '2024-12-05 13:58:37', 'html[lang=\"uk\"],html[lang=\"en-US\"]{margin-top: 0px !important;}\nbody.logged-in.admin-bar{padding-bottom:32px;}\n#wpadminbar{bottom:0;top:unset;position: fixed!important;}\n#wpadminbar li.hover>.ab-sub-wrapper, #wpadminbar.nojs li:hover>.ab-sub-wrapper {\n    bottom: 100%;\n}', 'bamboo', '', 'publish', 'closed', 'closed', '', 'bamboo', '', '', '2024-12-05 13:58:37', '2024-12-05 13:58:37', '', 0, 'http://enjoy.loc/bamboo/', 0, 'custom_css', '', 0),
(17, 1, '2024-12-17 09:36:42', '2024-12-17 09:36:42', 'a:16:{s:10:\"page_title\";s:33:\"Налаштування теми\";s:9:\"menu_slug\";s:14:\"theme_settings\";s:11:\"parent_slug\";s:10:\"themes.php\";s:22:\"advanced_configuration\";i:0;s:8:\"icon_url\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:8:\"position\";s:0:\"\";s:8:\"redirect\";b:0;s:11:\"description\";s:0:\"\";s:9:\"menu_icon\";a:0:{}s:13:\"update_button\";s:14:\"Оновити\";s:15:\"updated_message\";s:27:\"Опції оновлено\";s:10:\"capability\";s:10:\"edit_posts\";s:12:\"data_storage\";s:7:\"options\";s:7:\"post_id\";s:0:\"\";s:8:\"autoload\";i:0;}', 'Налаштування теми', '%d0%bd%d0%b0%d0%bb%d0%b0%d1%88%d1%82%d1%83%d0%b2%d0%b0%d0%bd%d0%bd%d1%8f-%d1%82%d0%b5%d0%bc%d0%b8', 'publish', 'closed', 'closed', '', 'ui_options_page_676145ee45880', '', '', '2024-12-17 09:36:42', '2024-12-17 09:36:42', '', 0, 'http://enjoy.loc/?post_type=acf-ui-options-page&#038;p=17', 0, 'acf-ui-options-page', '', 0),
(18, 1, '2024-12-17 09:38:27', '2024-12-17 09:38:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"theme_settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Налаштування теми', '%d0%bd%d0%b0%d0%bb%d0%b0%d1%88%d1%82%d1%83%d0%b2%d0%b0%d0%bd%d0%bd%d1%8f-%d1%82%d0%b5%d0%bc%d0%b8', 'publish', 'closed', 'closed', '', 'group_6761463c0010e', '', '', '2024-12-17 10:18:20', '2024-12-17 10:18:20', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2024-12-17 09:38:27', '2024-12-17 09:38:27', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Контакти', 'контакти', 'publish', 'closed', 'closed', '', 'field_6761463c965ee', '', '', '2024-12-17 09:38:27', '2024-12-17 09:38:27', '', 18, 'http://enjoy.loc/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2024-12-17 09:38:27', '2024-12-17 09:38:27', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_67614662965ef', '', '', '2024-12-17 09:38:27', '2024-12-17 09:38:27', '', 18, 'http://enjoy.loc/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2024-12-17 09:38:27', '2024-12-17 09:38:27', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Телефон додатковий', 'phone_2', 'publish', 'closed', 'closed', '', 'field_67614673965f0', '', '', '2024-12-17 09:38:27', '2024-12-17 09:38:27', '', 18, 'http://enjoy.loc/?post_type=acf-field&p=21', 2, 'acf-field', '', 0),
(22, 1, '2024-12-17 10:18:20', '2024-12-17 10:18:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_67614fd4a16e1', '', '', '2024-12-17 10:18:20', '2024-12-17 10:18:20', '', 18, 'http://enjoy.loc/?post_type=acf-field&p=22', 3, 'acf-field', '', 0),
(23, 1, '2024-12-17 10:18:20', '2024-12-17 10:18:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_67614fe2a16e2', '', '', '2024-12-17 10:18:20', '2024-12-17 10:18:20', '', 18, 'http://enjoy.loc/?post_type=acf-field&p=23', 4, 'acf-field', '', 0),
(24, 1, '2024-12-17 10:23:51', '2024-12-17 10:20:46', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2024-12-17 10:23:51', '2024-12-17 10:23:51', '', 0, 'http://enjoy.loc/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2024-12-17 10:23:51', '2024-12-17 10:20:47', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2024-12-17 10:23:51', '2024-12-17 10:23:51', '', 0, 'http://enjoy.loc/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2024-12-17 10:23:43', '2024-12-17 10:21:40', '', 'Пуфи для шкіл', '', 'publish', 'closed', 'closed', '', 'pufy-dlia-shkil', '', '', '2024-12-17 10:23:43', '2024-12-17 10:23:43', '', 0, 'http://enjoy.loc/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2024-12-17 10:23:43', '2024-12-17 10:21:40', '', 'AR', '', 'publish', 'closed', 'closed', '', 'ar', '', '', '2024-12-17 10:23:43', '2024-12-17 10:23:43', '', 0, 'http://enjoy.loc/?p=27', 2, 'nav_menu_item', '', 0),
(28, 1, '2024-12-17 10:26:41', '2024-12-17 10:26:41', '', 'Всі моделі', '', 'publish', 'closed', 'closed', '', 'vsi-modeli', '', '', '2024-12-17 10:26:41', '2024-12-17 10:26:41', '', 0, 'http://enjoy.loc/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2024-12-17 10:26:42', '2024-12-17 10:26:42', '', 'Подарунковий сертифікат', '', 'publish', 'closed', 'closed', '', 'podarunkovyy-sertyfikat', '', '', '2024-12-17 10:26:42', '2024-12-17 10:26:42', '', 0, 'http://enjoy.loc/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2024-12-17 10:26:42', '2024-12-17 10:26:42', '', 'Співпраця', '', 'publish', 'closed', 'closed', '', 'spivpratsia', '', '', '2024-12-17 10:26:42', '2024-12-17 10:26:42', '', 0, 'http://enjoy.loc/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2024-12-17 10:26:42', '2024-12-17 10:26:42', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2024-12-17 10:26:42', '2024-12-17 10:26:42', '', 0, 'http://enjoy.loc/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2024-12-17 10:26:43', '2024-12-17 10:26:43', '', 'Оплата і доставка', '', 'publish', 'closed', 'closed', '', 'oplata-i-dostavka', '', '', '2024-12-17 10:26:43', '2024-12-17 10:26:43', '', 0, 'http://enjoy.loc/?p=32', 5, 'nav_menu_item', '', 0),
(33, 1, '2024-12-17 10:26:43', '2024-12-17 10:26:43', '', 'Варіанти тканини', '', 'publish', 'closed', 'closed', '', 'varianty-tkanyny', '', '', '2024-12-17 10:26:43', '2024-12-17 10:26:43', '', 0, 'http://enjoy.loc/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2024-12-17 10:26:43', '2024-12-17 10:26:43', '', 'AR', '', 'publish', 'closed', 'closed', '', 'ar-2', '', '', '2024-12-17 10:26:43', '2024-12-17 10:26:43', '', 0, 'http://enjoy.loc/?p=34', 7, 'nav_menu_item', '', 0),
(35, 1, '2024-12-17 14:44:06', '2024-12-17 14:44:06', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"banner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Банери', '%d0%b1%d0%b0%d0%bd%d0%b5%d1%80%d0%b8', 'publish', 'closed', 'closed', '', 'group_67618dc86fd95', '', '', '2024-12-17 14:57:26', '2024-12-17 14:57:26', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2024-12-17 14:44:05', '2024-12-17 14:44:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст кнопки', 'button_text', 'publish', 'closed', 'closed', '', 'field_67618dc881189', '', '', '2024-12-17 14:44:05', '2024-12-17 14:44:05', '', 35, 'http://enjoy.loc/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2024-12-17 14:44:05', '2024-12-17 14:44:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_67618dc881189\";s:8:\"operator\";s:7:\"!=empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Посилання кнопки', 'url', 'publish', 'closed', 'closed', '', 'field_67618e0b8118a', '', '', '2024-12-17 14:44:05', '2024-12-17 14:44:05', '', 35, 'http://enjoy.loc/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2024-12-17 14:57:25', '2024-12-17 14:57:25', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Смайл', 'smile', 'publish', 'closed', 'closed', '', 'field_67618e7d606d6', '', '', '2024-12-17 14:57:25', '2024-12-17 14:57:25', '', 35, 'http://enjoy.loc/?post_type=acf-field&p=38', 2, 'acf-field', '', 0),
(39, 1, '2024-12-17 14:57:25', '2024-12-17 14:57:25', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'photo', 'publish', 'closed', 'closed', '', 'field_67618e5d606d5', '', '', '2024-12-17 14:57:25', '2024-12-17 14:57:25', '', 35, 'http://enjoy.loc/?post_type=acf-field&p=39', 3, 'acf-field', '', 0),
(40, 1, '2024-12-17 21:07:42', '2024-12-17 21:07:42', 'Один з лідерів продажів – крісло-м’яч стане чудовим подарунком для чоловіків будь-якого віку, від малого до великого.', 'Безкаркасні меблі', '', 'publish', 'closed', 'closed', '', 'bezkarkasni-mebli', '', '', '2024-12-17 21:10:47', '2024-12-17 21:10:47', '', 0, 'http://enjoy.loc/?post_type=banner&#038;p=40', 0, 'banner', '', 0),
(41, 1, '2024-12-17 21:10:41', '2024-12-17 21:10:41', '', 'home-intro', '', 'inherit', 'closed', 'closed', '', 'home-intro', '', '', '2024-12-17 21:10:41', '2024-12-17 21:10:41', '', 40, 'http://enjoy.loc/wp-content/uploads/2024/12/home-intro.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2024-12-17 21:48:09', '2024-12-17 21:48:09', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Pagebuilder', 'pagebuilder', 'publish', 'closed', 'closed', '', 'group_6761ee9f8340c', '', '', '2025-02-13 20:38:13', '2025-02-13 20:38:13', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2024-12-17 21:46:03', '2024-12-17 21:46:03', '', 'woocommerce-placeholder', '', 'inherit', 'closed', 'closed', '', 'woocommerce-placeholder', '', '', '2024-12-17 21:46:03', '2024-12-17 21:46:03', '', 0, 'http://enjoy.loc/wp-content/uploads/2024/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2024-12-17 21:46:03', '2024-12-17 21:46:03', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2024-12-17 21:46:03', '2024-12-17 21:46:03', '', 0, 'http://enjoy.loc/shop/', 0, 'page', '', 0),
(45, 1, '2024-12-17 21:46:04', '2024-12-17 21:46:04', '<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/cart-cross-sells-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-block\"><!-- wp:heading {\"fontSize\":\"large\"} -->\n<h2 class=\"wp-block-heading has-large-font-size\">You may be interested in…</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/cart-cross-sells-products-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-products-block\"></div>\n<!-- /wp:woocommerce/cart-cross-sells-products-block --></div>\n<!-- /wp:woocommerce/cart-cross-sells-block --></div>\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">Your cart is currently empty!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">New in store</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2024-12-17 21:50:50', '2024-12-17 21:50:50', '', 0, 'http://enjoy.loc/cart/', 0, 'page', '', 0);
INSERT INTO `bb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(46, 1, '2024-12-17 21:46:04', '2024-12-17 21:46:04', '<!-- wp:woocommerce/checkout -->\n<div class=\"wp-block-woocommerce-checkout alignwide wc-block-checkout is-loading\"><!-- wp:woocommerce/checkout-fields-block -->\n<div class=\"wp-block-woocommerce-checkout-fields-block\"><!-- wp:woocommerce/checkout-express-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-express-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-express-payment-block -->\n\n<!-- wp:woocommerce/checkout-contact-information-block -->\n<div class=\"wp-block-woocommerce-checkout-contact-information-block\"></div>\n<!-- /wp:woocommerce/checkout-contact-information-block -->\n\n<!-- wp:woocommerce/checkout-shipping-method-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-method-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-method-block -->\n\n<!-- wp:woocommerce/checkout-pickup-options-block -->\n<div class=\"wp-block-woocommerce-checkout-pickup-options-block\"></div>\n<!-- /wp:woocommerce/checkout-pickup-options-block -->\n\n<!-- wp:woocommerce/checkout-shipping-address-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-address-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-address-block -->\n\n<!-- wp:woocommerce/checkout-billing-address-block -->\n<div class=\"wp-block-woocommerce-checkout-billing-address-block\"></div>\n<!-- /wp:woocommerce/checkout-billing-address-block -->\n\n<!-- wp:woocommerce/checkout-shipping-methods-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-methods-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-methods-block -->\n\n<!-- wp:woocommerce/checkout-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-payment-block -->\n\n<!-- wp:woocommerce/checkout-additional-information-block -->\n<div class=\"wp-block-woocommerce-checkout-additional-information-block\"></div>\n<!-- /wp:woocommerce/checkout-additional-information-block -->\n\n<!-- wp:woocommerce/checkout-order-note-block -->\n<div class=\"wp-block-woocommerce-checkout-order-note-block\"></div>\n<!-- /wp:woocommerce/checkout-order-note-block -->\n\n<!-- wp:woocommerce/checkout-terms-block -->\n<div class=\"wp-block-woocommerce-checkout-terms-block\"></div>\n<!-- /wp:woocommerce/checkout-terms-block -->\n\n<!-- wp:woocommerce/checkout-actions-block -->\n<div class=\"wp-block-woocommerce-checkout-actions-block\"></div>\n<!-- /wp:woocommerce/checkout-actions-block --></div>\n<!-- /wp:woocommerce/checkout-fields-block -->\n\n<!-- wp:woocommerce/checkout-totals-block -->\n<div class=\"wp-block-woocommerce-checkout-totals-block\"><!-- wp:woocommerce/checkout-order-summary-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-block\"><!-- wp:woocommerce/checkout-order-summary-cart-items-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-cart-items-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-cart-items-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-fee-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-discount-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/checkout-order-summary-block --></div>\n<!-- /wp:woocommerce/checkout-totals-block --></div>\n<!-- /wp:woocommerce/checkout -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2024-12-17 21:46:04', '2024-12-17 21:46:04', '', 0, 'http://enjoy.loc/checkout/', 0, 'page', '', 0),
(47, 1, '2024-12-17 21:46:04', '2024-12-17 21:46:04', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2024-12-17 21:46:04', '2024-12-17 21:46:04', '', 0, 'http://enjoy.loc/my-account/', 0, 'page', '', 0),
(48, 1, '2024-12-17 21:46:05', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Overview</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Refunds</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h3 class=\"wp-block-heading\">Late or missing refunds</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h3 class=\"wp-block-heading\">Sale items</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Exchanges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Gifts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Shipping returns</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Need help?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2024-12-17 21:46:05', '0000-00-00 00:00:00', '', 0, 'http://enjoy.loc/?page_id=48', 0, 'page', '', 0),
(49, 1, '2024-12-17 21:48:08', '2024-12-17 21:48:08', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:4:{s:20:\"layout_6761eec8cf011\";a:6:{s:3:\"key\";s:20:\"layout_6761eec8cf011\";s:5:\"label\";s:14:\"Продукт\";s:4:\"name\";s:7:\"product\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6761f734e71e5\";a:6:{s:3:\"key\";s:20:\"layout_6761f734e71e5\";s:5:\"label\";s:18:\"Категорія\";s:4:\"name\";s:8:\"category\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6762bc5105c45\";a:6:{s:3:\"key\";s:20:\"layout_6762bc5105c45\";s:5:\"label\";s:10:\"Текст\";s:4:\"name\";s:4:\"text\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6762bdbd4558d\";a:6:{s:3:\"key\";s:20:\"layout_6762bdbd4558d\";s:5:\"label\";s:10:\"Медіа\";s:4:\"name\";s:5:\"media\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"button_label\";s:23:\"Додати рядок\";}', 'Блоки', 'blocks', 'publish', 'closed', 'closed', '', 'field_6761ee9ff4817', '', '', '2024-12-18 12:20:03', '2024-12-18 12:20:03', '', 42, 'http://enjoy.loc/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(53, 1, '2024-12-17 21:48:08', '2024-12-17 21:48:08', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6761eec8cf011\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Розпродаж', 'sale', 'publish', 'closed', 'closed', '', 'field_6761f118f481b', '', '', '2025-02-13 18:33:26', '2025-02-13 18:33:26', '', 49, 'http://enjoy.loc/?post_type=acf-field&#038;p=53', 1, 'acf-field', '', 0),
(57, 1, '2024-12-17 21:57:43', '2024-12-17 21:57:43', '', 'product_1', '', 'inherit', 'closed', 'closed', '', 'product_1', '', '', '2024-12-17 21:57:43', '2024-12-17 21:57:43', '', 1, 'http://enjoy.loc/wp-content/uploads/2024/12/product_1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2024-12-18 08:01:59', '2024-12-18 08:01:59', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6761f734e71e5\";s:7:\"choices\";a:2:{s:7:\"default\";s:7:\"default\";s:5:\"large\";s:5:\"large\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Розмір блоку', 'size', 'publish', 'closed', 'closed', '', 'field_6762814729462', '', '', '2025-02-13 20:38:12', '2025-02-13 20:38:12', '', 49, 'http://enjoy.loc/?post_type=acf-field&#038;p=64', 1, 'acf-field', '', 0),
(66, 1, '2024-12-18 12:12:29', '2024-12-18 12:12:29', '', 'category', '', 'inherit', 'closed', 'closed', '', 'category', '', '', '2024-12-18 12:12:29', '2024-12-18 12:12:29', '', 1, 'http://enjoy.loc/wp-content/uploads/2024/12/category.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2024-12-18 12:13:55', '2024-12-18 12:13:55', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6762bc5105c45\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_6762bc5105c46', '', '', '2024-12-18 12:14:49', '2024-12-18 12:14:49', '', 49, 'http://enjoy.loc/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2024-12-18 12:13:55', '2024-12-18 12:13:55', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6762bc5105c45\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Опис', 'subtitle', 'publish', 'closed', 'closed', '', 'field_6762bc7005c4b', '', '', '2024-12-18 12:17:48', '2024-12-18 12:17:48', '', 49, 'http://enjoy.loc/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(70, 1, '2024-12-18 12:17:48', '2024-12-18 12:17:48', 'a:18:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6762bc5105c45\";s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'img', 'publish', 'closed', 'closed', '', 'field_6762bd4c0fda1', '', '', '2024-12-18 12:17:48', '2024-12-18 12:17:48', '', 49, 'http://enjoy.loc/?post_type=acf-field&p=70', 2, 'acf-field', '', 0),
(71, 1, '2024-12-18 12:20:03', '2024-12-18 12:20:03', 'a:18:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6762bdbd4558d\";s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'img', 'publish', 'closed', 'closed', '', 'field_6762bdbd45590', '', '', '2024-12-18 12:20:03', '2024-12-18 12:20:03', '', 49, 'http://enjoy.loc/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2024-12-18 12:20:03', '2024-12-18 12:20:03', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6762bdbd4558d\";s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}', 'Відео', 'video', 'publish', 'closed', 'closed', '', 'field_6762bdd645591', '', '', '2024-12-18 12:20:03', '2024-12-18 12:20:03', '', 49, 'http://enjoy.loc/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 1, '2024-12-18 12:20:29', '2024-12-18 12:20:29', '', 'media_1', '', 'inherit', 'closed', 'closed', '', 'media_1', '', '', '2024-12-18 12:20:29', '2024-12-18 12:20:29', '', 1, 'http://enjoy.loc/wp-content/uploads/2024/12/media_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2024-12-18 12:21:25', '2024-12-18 12:21:25', '', 'how-to-sit', '', 'inherit', 'closed', 'closed', '', 'how-to-sit', '', '', '2024-12-18 12:21:25', '2024-12-18 12:21:25', '', 1, 'http://enjoy.loc/wp-content/uploads/2024/12/how-to-sit.mp4', 0, 'attachment', 'video/mp4', 0),
(80, 1, '2025-02-10 22:30:00', '2025-02-10 22:30:00', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"pa_material\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Матеріали', 'materialy', 'publish', 'closed', 'closed', '', 'group_67aa7da306b5e', '', '', '2025-02-10 22:31:19', '2025-02-10 22:31:19', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=80', 0, 'acf-field-group', '', 0),
(81, 1, '2025-02-10 22:29:59', '2025-02-10 22:29:59', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'image', 'publish', 'closed', 'closed', '', 'field_67aa7da3a8cfd', '', '', '2025-02-10 22:29:59', '2025-02-10 22:29:59', '', 80, 'http://enjoy.loc/?post_type=acf-field&p=81', 0, 'acf-field', '', 0),
(82, 1, '2025-02-10 22:31:19', '2025-02-10 22:31:19', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:9:\"pa_kolory\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:12:\"multi_select\";s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:13:\"bidirectional\";i:0;s:8:\"multiple\";i:0;s:20:\"bidirectional_target\";a:0:{}}', 'Кольори', 'colors', 'publish', 'closed', 'closed', '', 'field_67aa7deb06aed', '', '', '2025-02-10 22:31:19', '2025-02-10 22:31:19', '', 80, 'http://enjoy.loc/?post_type=acf-field&p=82', 1, 'acf-field', '', 0),
(83, 1, '2025-02-11 07:08:41', '2025-02-11 07:08:41', '<strong>Колекція Geometrico</strong> - авторська лінійка крісел-мішків, де геометричний рисунок зони сидіння лаконічно поєднується з однотонним велюром позаду.\r\n\r\n<strong>Для замовлення, виконайте одну з дій:</strong>\r\n- Широка спинка, високий підголівник. Ми не завужуємо вироби, щоб зеокономити на тканині та наповнювачі;\r\n- Зносостійкий велюр, який ми використовуємо понад 5 років.\r\n\r\n<strong>Можлива комплектація:</strong>\r\n1. + Чохол.\r\n2. + Компресійний чохол (КЧ). Оснащений стропами та пряжками для максимального зменшення об‘єму.\r\n3. + КЧ + Каремат з фіксаторами.\r\nДовжина каремату: 200 см.\r\nШирина каремату: 62 см.', 'Груша Home', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'publish', 'closed', 'closed', '', 'hrusha-home', '', '', '2025-02-25 07:42:38', '2025-02-25 07:42:38', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2025-02-11 07:12:30', '2025-02-11 07:12:30', '', 'Груша Home - L, РОГОЖКА', 'Розміри: L, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-l', '', '', '2025-02-11 13:23:49', '2025-02-11 13:23:49', '', 83, 'http://enjoy.loc/?post_type=product_variation&p=84', 1, 'product_variation', '', 0),
(85, 1, '2025-02-11 07:12:34', '2025-02-11 07:12:34', '', 'Груша Home - L, ШКІРЗАМІННИК', 'Розміри: L, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-l', '', '', '2025-02-11 13:23:49', '2025-02-11 13:23:49', '', 83, 'http://enjoy.loc/?post_type=product_variation&p=85', 2, 'product_variation', '', 0),
(86, 1, '2025-02-11 07:12:37', '2025-02-11 07:12:37', '', 'Груша Home - M, РОГОЖКА', 'Розміри: M, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-m', '', '', '2025-02-11 13:23:50', '2025-02-11 13:23:50', '', 83, 'http://enjoy.loc/?post_type=product_variation&p=86', 3, 'product_variation', '', 0),
(87, 1, '2025-02-11 07:12:39', '2025-02-11 07:12:39', '', 'Груша Home - M, ШКІРЗАМІННИК', 'Розміри: M, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-m', '', '', '2025-02-11 13:23:50', '2025-02-11 13:23:50', '', 83, 'http://enjoy.loc/?post_type=product_variation&p=87', 4, 'product_variation', '', 0),
(88, 1, '2025-02-11 07:12:41', '2025-02-11 07:12:41', '', 'Груша Home - S, РОГОЖКА', 'Розміри: S, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-s', '', '', '2025-02-11 13:23:51', '2025-02-11 13:23:51', '', 83, 'http://enjoy.loc/?post_type=product_variation&p=88', 5, 'product_variation', '', 0),
(89, 1, '2025-02-11 07:12:43', '2025-02-11 07:12:43', '', 'Груша Home - S, ШКІРЗАМІННИК', 'Розміри: S, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-s', '', '', '2025-02-11 13:23:51', '2025-02-11 13:23:51', '', 83, 'http://enjoy.loc/?post_type=product_variation&p=89', 6, 'product_variation', '', 0),
(90, 1, '2025-02-11 13:59:36', '2025-02-11 13:59:36', '', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2025-02-11 14:00:04', '2025-02-11 14:00:04', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2025-02-11 21:48:00', '2025-02-11 21:48:00', '', 'cat_3', '', 'inherit', 'closed', 'closed', '', 'cat_3', '', '', '2025-02-11 21:48:00', '2025-02-11 21:48:00', '', 0, 'http://enjoy.loc/wp-content/uploads/2025/02/cat_3.svg', 0, 'attachment', 'image/svg+xml', 0),
(92, 1, '2025-02-11 21:48:34', '2025-02-11 21:48:34', '', 'cat_1', '', 'inherit', 'closed', 'closed', '', 'cat_1', '', '', '2025-02-25 07:42:38', '2025-02-25 07:42:38', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/cat_1.svg', 0, 'attachment', 'image/svg+xml', 0),
(93, 1, '2025-02-11 21:51:44', '2025-02-11 21:51:44', '', 'cat_2', '', 'inherit', 'closed', 'closed', '', 'cat_2', '', '', '2025-02-11 21:51:44', '2025-02-11 21:51:44', '', 0, 'http://enjoy.loc/wp-content/uploads/2025/02/cat_2.svg', 0, 'attachment', 'image/svg+xml', 0),
(94, 1, '2025-02-11 21:52:14', '2025-02-11 21:52:14', '', 'cat_4', '', 'inherit', 'closed', 'closed', '', 'cat_4', '', '', '2025-02-11 21:52:14', '2025-02-11 21:52:14', '', 0, 'http://enjoy.loc/wp-content/uploads/2025/02/cat_4.svg', 0, 'attachment', 'image/svg+xml', 0),
(95, 1, '2025-02-12 13:48:52', '2025-02-12 13:48:52', '', 'product_2', '', 'inherit', 'closed', 'closed', '', 'product_2', '', '', '2025-02-12 13:48:52', '2025-02-12 13:48:52', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/product_2.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2025-02-12 13:48:54', '2025-02-12 13:48:54', '', 'product_3', '', 'inherit', 'closed', 'closed', '', 'product_3', '', '', '2025-02-12 13:48:54', '2025-02-12 13:48:54', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/product_3.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2025-02-12 14:48:39', '2025-02-12 14:48:39', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"product_cat\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Категорії товарів', 'katehorii-tovariv', 'publish', 'closed', 'closed', '', 'group_67acb4822334d', '', '', '2025-02-13 20:41:17', '2025-02-13 20:41:17', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2025-02-12 14:48:39', '2025-02-12 14:48:39', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:14:\"enable_opacity\";i:0;s:13:\"return_format\";s:6:\"string\";s:17:\"allow_in_bindings\";i:0;}', 'Колір підсвітки товарів', 'product_color', 'publish', 'closed', 'closed', '', 'field_67acb48345581', '', '', '2025-02-13 20:41:17', '2025-02-13 20:41:17', '', 97, 'http://enjoy.loc/?post_type=acf-field&#038;p=98', 1, 'acf-field', '', 0),
(99, 1, '2025-02-12 14:52:14', '2025-02-12 14:52:14', 'Product description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'Груша Home 2', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'publish', 'closed', 'closed', '', 'hrusha-home-2', '', '', '2025-02-12 14:53:01', '2025-02-12 14:53:01', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2025-02-12 14:52:19', '2025-02-12 14:52:19', '', 'Груша Home 2 - L, РОГОЖКА', 'Розміри: L, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-l-2', '', '', '2025-02-12 14:52:19', '2025-02-12 14:52:19', '', 99, 'http://enjoy.loc/?post_type=product_variation&p=100', 1, 'product_variation', '', 0),
(101, 1, '2025-02-12 14:52:22', '2025-02-12 14:52:22', '', 'Груша Home 2 - L, ШКІРЗАМІННИК', 'Розміри: L, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-l-2', '', '', '2025-02-12 14:52:22', '2025-02-12 14:52:22', '', 99, 'http://enjoy.loc/?post_type=product_variation&p=101', 2, 'product_variation', '', 0),
(102, 1, '2025-02-12 14:52:25', '2025-02-12 14:52:25', '', 'Груша Home 2 - M, РОГОЖКА', 'Розміри: M, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-m-2', '', '', '2025-02-12 14:52:25', '2025-02-12 14:52:25', '', 99, 'http://enjoy.loc/?post_type=product_variation&p=102', 3, 'product_variation', '', 0),
(103, 1, '2025-02-12 14:52:27', '2025-02-12 14:52:27', '', 'Груша Home 2 - M, ШКІРЗАМІННИК', 'Розміри: M, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-m-2', '', '', '2025-02-12 14:52:27', '2025-02-12 14:52:27', '', 99, 'http://enjoy.loc/?post_type=product_variation&p=103', 4, 'product_variation', '', 0),
(104, 1, '2025-02-12 14:52:29', '2025-02-12 14:52:29', '', 'Груша Home 2 - S, РОГОЖКА', 'Розміри: S, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-s-2', '', '', '2025-02-12 14:52:29', '2025-02-12 14:52:29', '', 99, 'http://enjoy.loc/?post_type=product_variation&p=104', 5, 'product_variation', '', 0),
(105, 1, '2025-02-12 14:52:32', '2025-02-12 14:52:32', '', 'Груша Home 2 - S, ШКІРЗАМІННИК', 'Розміри: S, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-s-2', '', '', '2025-02-12 14:52:32', '2025-02-12 14:52:32', '', 99, 'http://enjoy.loc/?post_type=product_variation&p=105', 6, 'product_variation', '', 0),
(106, 1, '2025-02-12 14:53:15', '2025-02-12 14:53:15', 'Product description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'Груша Home 3', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'publish', 'closed', 'closed', '', 'hrusha-home-3', '', '', '2025-02-12 14:53:58', '2025-02-12 14:53:58', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2025-02-12 14:53:21', '2025-02-12 14:53:21', '', 'Груша Home 3 - L, РОГОЖКА', 'Розміри: L, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-l-3', '', '', '2025-02-12 14:53:21', '2025-02-12 14:53:21', '', 106, 'http://enjoy.loc/?post_type=product_variation&p=107', 1, 'product_variation', '', 0),
(108, 1, '2025-02-12 14:53:24', '2025-02-12 14:53:24', '', 'Груша Home 3 - L, ШКІРЗАМІННИК', 'Розміри: L, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-l-3', '', '', '2025-02-12 14:53:24', '2025-02-12 14:53:24', '', 106, 'http://enjoy.loc/?post_type=product_variation&p=108', 2, 'product_variation', '', 0),
(109, 1, '2025-02-12 14:53:26', '2025-02-12 14:53:26', '', 'Груша Home 3 - M, РОГОЖКА', 'Розміри: M, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-m-3', '', '', '2025-02-12 14:53:26', '2025-02-12 14:53:26', '', 106, 'http://enjoy.loc/?post_type=product_variation&p=109', 3, 'product_variation', '', 0),
(110, 1, '2025-02-12 14:53:29', '2025-02-12 14:53:29', '', 'Груша Home 3 - M, ШКІРЗАМІННИК', 'Розміри: M, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-m-3', '', '', '2025-02-12 14:53:29', '2025-02-12 14:53:29', '', 106, 'http://enjoy.loc/?post_type=product_variation&p=110', 4, 'product_variation', '', 0),
(111, 1, '2025-02-12 14:53:32', '2025-02-12 14:53:32', '', 'Груша Home 3 - S, РОГОЖКА', 'Розміри: S, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-s-3', '', '', '2025-02-12 14:53:32', '2025-02-12 14:53:32', '', 106, 'http://enjoy.loc/?post_type=product_variation&p=111', 5, 'product_variation', '', 0),
(112, 1, '2025-02-12 14:53:35', '2025-02-12 14:53:35', '', 'Груша Home 3 - S, ШКІРЗАМІННИК', 'Розміри: S, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-s-3', '', '', '2025-02-12 14:53:35', '2025-02-12 14:53:35', '', 106, 'http://enjoy.loc/?post_type=product_variation&p=112', 6, 'product_variation', '', 0),
(113, 1, '2025-02-12 14:55:21', '2025-02-12 14:55:21', 'Product description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'Груша Home 4', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'publish', 'closed', 'closed', '', 'hrusha-home-4', '', '', '2025-02-12 14:56:13', '2025-02-12 14:56:13', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 1, '2025-02-12 14:55:26', '2025-02-12 14:55:26', '', 'Груша Home 4 - L, РОГОЖКА', 'Розміри: L, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-l-4', '', '', '2025-02-12 14:55:26', '2025-02-12 14:55:26', '', 113, 'http://enjoy.loc/?post_type=product_variation&p=114', 1, 'product_variation', '', 0),
(115, 1, '2025-02-12 14:55:29', '2025-02-12 14:55:29', '', 'Груша Home 4 - L, ШКІРЗАМІННИК', 'Розміри: L, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-l-4', '', '', '2025-02-12 14:55:29', '2025-02-12 14:55:29', '', 113, 'http://enjoy.loc/?post_type=product_variation&p=115', 2, 'product_variation', '', 0),
(116, 1, '2025-02-12 14:55:33', '2025-02-12 14:55:33', '', 'Груша Home 4 - M, РОГОЖКА', 'Розміри: M, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-m-4', '', '', '2025-02-12 14:55:33', '2025-02-12 14:55:33', '', 113, 'http://enjoy.loc/?post_type=product_variation&p=116', 3, 'product_variation', '', 0),
(117, 1, '2025-02-12 14:55:38', '2025-02-12 14:55:38', '', 'Груша Home 4 - M, ШКІРЗАМІННИК', 'Розміри: M, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-m-4', '', '', '2025-02-12 14:55:38', '2025-02-12 14:55:38', '', 113, 'http://enjoy.loc/?post_type=product_variation&p=117', 4, 'product_variation', '', 0),
(118, 1, '2025-02-12 14:55:43', '2025-02-12 14:55:43', '', 'Груша Home 4 - S, РОГОЖКА', 'Розміри: S, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-s-4', '', '', '2025-02-12 14:55:43', '2025-02-12 14:55:43', '', 113, 'http://enjoy.loc/?post_type=product_variation&p=118', 5, 'product_variation', '', 0),
(119, 1, '2025-02-12 14:55:46', '2025-02-12 14:55:46', '', 'Груша Home 4 - S, ШКІРЗАМІННИК', 'Розміри: S, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-s-4', '', '', '2025-02-12 14:55:46', '2025-02-12 14:55:46', '', 113, 'http://enjoy.loc/?post_type=product_variation&p=119', 6, 'product_variation', '', 0),
(120, 1, '2025-02-12 15:03:41', '2025-02-12 15:03:41', 'Product description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'Груша Home 5', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'publish', 'closed', 'closed', '', 'hrusha-home-5', '', '', '2025-02-12 15:04:33', '2025-02-12 15:04:33', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2025-02-12 15:03:46', '2025-02-12 15:03:46', '', 'Груша Home 5 - L, РОГОЖКА', 'Розміри: L, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-l-5', '', '', '2025-02-12 15:03:46', '2025-02-12 15:03:46', '', 120, 'http://enjoy.loc/?post_type=product_variation&p=121', 1, 'product_variation', '', 0),
(122, 1, '2025-02-12 15:03:49', '2025-02-12 15:03:49', '', 'Груша Home 5 - L, ШКІРЗАМІННИК', 'Розміри: L, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-l-5', '', '', '2025-02-12 15:03:49', '2025-02-12 15:03:49', '', 120, 'http://enjoy.loc/?post_type=product_variation&p=122', 2, 'product_variation', '', 0),
(123, 1, '2025-02-12 15:03:52', '2025-02-12 15:03:52', '', 'Груша Home 5 - M, РОГОЖКА', 'Розміри: M, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-m-5', '', '', '2025-02-12 15:03:52', '2025-02-12 15:03:52', '', 120, 'http://enjoy.loc/?post_type=product_variation&p=123', 3, 'product_variation', '', 0),
(124, 1, '2025-02-12 15:03:54', '2025-02-12 15:03:54', '', 'Груша Home 5 - M, ШКІРЗАМІННИК', 'Розміри: M, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-m-5', '', '', '2025-02-12 15:03:54', '2025-02-12 15:03:54', '', 120, 'http://enjoy.loc/?post_type=product_variation&p=124', 4, 'product_variation', '', 0),
(125, 1, '2025-02-12 15:03:56', '2025-02-12 15:03:56', '', 'Груша Home 5 - S, РОГОЖКА', 'Розміри: S, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-s-5', '', '', '2025-02-12 15:03:56', '2025-02-12 15:03:56', '', 120, 'http://enjoy.loc/?post_type=product_variation&p=125', 5, 'product_variation', '', 0),
(126, 1, '2025-02-12 15:03:59', '2025-02-12 15:03:59', '', 'Груша Home 5 - S, ШКІРЗАМІННИК', 'Розміри: S, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-s-5', '', '', '2025-02-12 15:03:59', '2025-02-12 15:03:59', '', 120, 'http://enjoy.loc/?post_type=product_variation&p=126', 6, 'product_variation', '', 0),
(127, 1, '2025-02-12 15:06:27', '2025-02-12 15:06:27', 'Product description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'Груша Home 6', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'publish', 'closed', 'closed', '', 'hrusha-home-6', '', '', '2025-02-12 15:07:09', '2025-02-12 15:07:09', '', 0, 'http://enjoy.loc/?post_type=product&#038;p=127', 0, 'product', '', 0),
(128, 1, '2025-02-12 15:06:33', '2025-02-12 15:06:33', '', 'Груша Home 6 - L, РОГОЖКА', 'Розміри: L, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-l-6', '', '', '2025-02-12 15:06:33', '2025-02-12 15:06:33', '', 127, 'http://enjoy.loc/?post_type=product_variation&p=128', 1, 'product_variation', '', 0),
(129, 1, '2025-02-12 15:06:38', '2025-02-12 15:06:38', '', 'Груша Home 6 - L, ШКІРЗАМІННИК', 'Розміри: L, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-l-6', '', '', '2025-02-12 15:06:38', '2025-02-12 15:06:38', '', 127, 'http://enjoy.loc/?post_type=product_variation&p=129', 2, 'product_variation', '', 0),
(130, 1, '2025-02-12 15:06:41', '2025-02-12 15:06:41', '', 'Груша Home 6 - M, РОГОЖКА', 'Розміри: M, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-m-6', '', '', '2025-02-12 15:06:41', '2025-02-12 15:06:41', '', 127, 'http://enjoy.loc/?post_type=product_variation&p=130', 3, 'product_variation', '', 0),
(131, 1, '2025-02-12 15:06:44', '2025-02-12 15:06:44', '', 'Груша Home 6 - M, ШКІРЗАМІННИК', 'Розміри: M, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-m-6', '', '', '2025-02-12 15:06:44', '2025-02-12 15:06:44', '', 127, 'http://enjoy.loc/?post_type=product_variation&p=131', 4, 'product_variation', '', 0),
(132, 1, '2025-02-12 15:06:46', '2025-02-12 15:06:46', '', 'Груша Home 6 - S, РОГОЖКА', 'Розміри: S, Матеріал: РОГОЖКА', 'publish', 'closed', 'closed', '', 'hrusha-home-rohozhka-s-6', '', '', '2025-02-12 15:06:46', '2025-02-12 15:06:46', '', 127, 'http://enjoy.loc/?post_type=product_variation&p=132', 5, 'product_variation', '', 0),
(133, 1, '2025-02-12 15:06:49', '2025-02-12 15:06:49', '', 'Груша Home 6 - S, ШКІРЗАМІННИК', 'Розміри: S, Матеріал: ШКІРЗАМІННИК', 'publish', 'closed', 'closed', '', 'hrusha-home-shkirzaminnyk-s-6', '', '', '2025-02-12 15:06:49', '2025-02-12 15:06:49', '', 127, 'http://enjoy.loc/?post_type=product_variation&p=133', 6, 'product_variation', '', 0),
(134, 1, '2025-02-12 15:08:30', '2025-02-12 15:08:30', '{\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-02-12 15:08:30\"\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-02-12 15:08:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ec447fa-6d06-474d-9cb1-8a557c948958', '', '', '2025-02-12 15:08:30', '2025-02-12 15:08:30', '', 0, 'http://enjoy.loc/1ec447fa-6d06-474d-9cb1-8a557c948958/', 0, 'customize_changeset', '', 0),
(135, 1, '2025-02-12 21:15:16', '2025-02-12 21:15:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"pa_kolory\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Кольори матеріалів', 'kolory-materialiv', 'publish', 'closed', 'closed', '', 'group_67ad0f3eac78b', '', '', '2025-02-12 21:23:57', '2025-02-12 21:23:57', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=135', 0, 'acf-field-group', '', 0),
(136, 1, '2025-02-12 21:15:16', '2025-02-12 21:15:16', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'photo', 'publish', 'closed', 'closed', '', 'field_67ad0f3f89a71', '', '', '2025-02-12 21:23:57', '2025-02-12 21:23:57', '', 135, 'http://enjoy.loc/?post_type=acf-field&#038;p=136', 0, 'acf-field', '', 0),
(137, 1, '2025-02-12 21:16:36', '2025-02-12 21:16:36', '', 'ALP-02', '', 'inherit', 'closed', 'closed', '', 'alp-02', '', '', '2025-02-12 21:16:36', '2025-02-12 21:16:36', '', 0, 'http://enjoy.loc/wp-content/uploads/2025/02/ALP-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2025-02-12 21:17:40', '2025-02-12 21:17:40', '', 'ALP-04', '', 'inherit', 'closed', 'closed', '', 'alp-04', '', '', '2025-02-12 21:17:40', '2025-02-12 21:17:40', '', 0, 'http://enjoy.loc/wp-content/uploads/2025/02/ALP-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2025-02-12 21:26:09', '2025-02-12 21:26:09', '', '256-1', '', 'inherit', 'closed', 'closed', '', '256-1', '', '', '2025-02-12 21:26:09', '2025-02-12 21:26:09', '', 0, 'http://enjoy.loc/wp-content/uploads/2025/02/256-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2025-02-13 18:33:26', '2025-02-13 18:33:26', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6761eec8cf011\";s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:2:\"id\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}', 'Продукт', 'product', 'publish', 'closed', 'closed', '', 'field_67ae3ac061877', '', '', '2025-02-13 18:33:26', '2025-02-13 18:33:26', '', 49, 'http://enjoy.loc/?post_type=acf-field&p=140', 0, 'acf-field', '', 0),
(141, 1, '2025-02-13 20:38:12', '2025-02-13 20:38:12', 'a:18:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6761f734e71e5\";s:8:\"taxonomy\";s:11:\"product_cat\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:13:\"bidirectional\";i:0;s:8:\"multiple\";i:0;s:20:\"bidirectional_target\";a:0:{}}', 'Категорія', 'category', 'publish', 'closed', 'closed', '', 'field_67ae57f5d0d74', '', '', '2025-02-13 20:38:12', '2025-02-13 20:38:12', '', 49, 'http://enjoy.loc/?post_type=acf-field&p=141', 0, 'acf-field', '', 0),
(142, 1, '2025-02-13 20:41:17', '2025-02-13 20:41:17', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото в білдер', 'photo', 'publish', 'closed', 'closed', '', 'field_67ae58c100aee', '', '', '2025-02-13 20:41:17', '2025-02-13 20:41:17', '', 97, 'http://enjoy.loc/?post_type=acf-field&p=142', 0, 'acf-field', '', 0),
(143, 1, '2025-02-18 12:54:25', '2025-02-18 12:54:25', '<!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"Всі моделі\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"Подарунковий сертифікат\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"Співпраця\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"FAQ\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"Оплата і доставка\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"Варіанти тканини\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /--><!-- wp:navigation-link {\"className\":\" menu-item menu-item-type-custom menu-item-object-custom\",\"description\":\"\",\"id\":null,\"kind\":\"custom\",\"label\":\"AR\",\"opensInNewTab\":false,\"rel\":null,\"title\":\"\",\"type\":\"custom\",\"url\":\"#\"} /-->', 'Header', '', 'publish', 'closed', 'closed', '', 'header', '', '', '2025-02-18 12:54:25', '2025-02-18 12:54:25', '', 0, 'http://enjoy.loc/header/', 0, 'wp_navigation', '', 0),
(144, 1, '2025-02-24 18:50:45', '2025-02-24 18:50:45', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Продукт', 'produkt', 'publish', 'closed', 'closed', '', 'group_67bcbf44312d9', '', '', '2025-02-24 21:06:37', '2025-02-24 21:06:37', '', 0, 'http://enjoy.loc/?post_type=acf-field-group&#038;p=144', 0, 'acf-field-group', '', 0),
(146, 1, '2025-02-24 20:28:39', '2025-02-24 20:28:39', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'Акції', 'promo', 'publish', 'closed', 'closed', '', 'field_67bcd5872d8fd', '', '', '2025-02-24 20:28:39', '2025-02-24 20:28:39', '', 144, 'http://enjoy.loc/?post_type=acf-field&p=146', 0, 'acf-field', '', 0);
INSERT INTO `bb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(147, 1, '2025-02-24 20:28:39', '2025-02-24 20:28:39', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Іконка', 'ico', 'publish', 'closed', 'closed', '', 'field_67bcd62f2d8fe', '', '', '2025-02-24 20:28:39', '2025-02-24 20:28:39', '', 146, 'http://enjoy.loc/?post_type=acf-field&p=147', 0, 'acf-field', '', 0),
(148, 1, '2025-02-24 20:28:39', '2025-02-24 20:28:39', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Назва', 'name', 'publish', 'closed', 'closed', '', 'field_67bcd64b2d8ff', '', '', '2025-02-24 20:28:39', '2025-02-24 20:28:39', '', 146, 'http://enjoy.loc/?post_type=acf-field&p=148', 1, 'acf-field', '', 0),
(149, 1, '2025-02-24 20:28:39', '2025-02-24 20:28:39', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Посилання', 'url', 'publish', 'closed', 'closed', '', 'field_67bcd6632d900', '', '', '2025-02-24 20:28:39', '2025-02-24 20:28:39', '', 146, 'http://enjoy.loc/?post_type=acf-field&p=149', 2, 'acf-field', '', 0),
(150, 1, '2025-02-24 20:31:09', '2025-02-24 20:31:09', '', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-02-24 20:31:09', '2025-02-24 20:31:09', '', 0, 'http://enjoy.loc/?post_type=shop_order_placehold&p=150', 0, 'shop_order_placehold', '', 0),
(151, 1, '2025-02-24 20:33:51', '2025-02-24 20:33:51', 'Колекція Geometrico - авторська лінійка крісел-мішків, де геометричний рисунок зони сидіння лаконічно поєднується з однотонним велюром позаду.\n\nДля замовлення, виконайте одну з дій: - Широка спинка, високий підголівник. Ми не завужуємо вироби, щоб зеокономити на тканині та наповнювачі;\n- Зносостійкий велюр, який ми використовуємо понад 5 років.', 'Груша Home', 'Product short description Груша HomeГруша HomeГруша HomeГруша HomeГруша HomeГруша Home', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2025-02-24 20:33:51', '2025-02-24 20:33:51', '', 83, 'http://enjoy.loc/?p=151', 0, 'revision', '', 0),
(152, 1, '2025-02-24 20:34:43', '2025-02-24 20:34:43', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', '3D візуалізація iOS', '3dios', 'publish', 'closed', 'closed', '', 'field_67bcd67c6e6b6', '', '', '2025-02-24 20:41:14', '2025-02-24 20:41:14', '', 144, 'http://enjoy.loc/?post_type=acf-field&#038;p=152', 1, 'acf-field', '', 0),
(153, 1, '2025-02-24 20:35:46', '2025-02-24 20:35:46', '', 'Lightning', '', 'inherit', 'closed', 'closed', '', 'lightning', '', '', '2025-02-24 20:35:46', '2025-02-24 20:35:46', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/Lightning.svg', 0, 'attachment', 'image/svg+xml', 0),
(154, 1, '2025-02-24 20:41:14', '2025-02-24 20:41:14', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'photo', 'publish', 'closed', 'closed', '', 'field_67bcd9109cc6b', '', '', '2025-02-24 20:41:14', '2025-02-24 20:41:14', '', 152, 'http://enjoy.loc/?post_type=acf-field&p=154', 0, 'acf-field', '', 0),
(155, 1, '2025-02-24 20:41:14', '2025-02-24 20:41:14', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:7:\"library\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}', '3d файл', '3d_file', 'publish', 'closed', 'closed', '', 'field_67bcd9339cc6c', '', '', '2025-02-24 20:41:14', '2025-02-24 20:41:14', '', 152, 'http://enjoy.loc/?post_type=acf-field&p=155', 1, 'acf-field', '', 0),
(156, 1, '2025-02-24 20:41:15', '2025-02-24 20:41:15', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', '3D візуалізація Android', '3dandroid', 'publish', 'closed', 'closed', '', 'field_67bcd9529cc6d', '', '', '2025-02-24 20:41:15', '2025-02-24 20:41:15', '', 144, 'http://enjoy.loc/?post_type=acf-field&p=156', 2, 'acf-field', '', 0),
(157, 1, '2025-02-24 20:41:15', '2025-02-24 20:41:15', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Фото', 'photo', 'publish', 'closed', 'closed', '', 'field_67bcd9529cc6e', '', '', '2025-02-24 20:41:15', '2025-02-24 20:41:15', '', 156, 'http://enjoy.loc/?post_type=acf-field&p=157', 0, 'acf-field', '', 0),
(158, 1, '2025-02-24 20:41:15', '2025-02-24 20:41:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}', '3d файл', '3d_file', 'publish', 'closed', 'closed', '', 'field_67bcd9529cc6f', '', '', '2025-02-24 20:41:15', '2025-02-24 20:41:15', '', 156, 'http://enjoy.loc/?post_type=acf-field&p=158', 1, 'acf-field', '', 0),
(159, 1, '2025-02-24 20:42:09', '2025-02-24 20:42:09', '', 'Loft-Cream', '', 'inherit', 'closed', 'closed', '', 'loft-cream', '', '', '2025-02-24 20:42:09', '2025-02-24 20:42:09', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/Loft-Cream.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2025-02-24 20:48:47', '2025-02-24 20:48:47', '', 'VV_Black', '', 'inherit', 'closed', 'closed', '', 'vv_black', '', '', '2025-02-24 20:48:47', '2025-02-24 20:48:47', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/VV_Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2025-02-24 20:51:01', '2025-02-24 20:51:01', '', 'Smile-Black', '', 'inherit', 'closed', 'closed', '', 'smile-black', '', '', '2025-02-24 20:51:01', '2025-02-24 20:51:01', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/Smile-Black.glb', 0, 'attachment', 'application/octet-stream', 0),
(162, 1, '2025-02-24 20:51:10', '2025-02-24 20:51:10', '', 'Smile_Loft-1-Cream-1', '', 'inherit', 'closed', 'closed', '', 'smile_loft-1-cream-1', '', '', '2025-02-24 20:51:10', '2025-02-24 20:51:10', '', 83, 'http://enjoy.loc/wp-content/uploads/2025/02/Smile_Loft-1-Cream-1.usdz', 0, 'attachment', 'application/octet-stream', 0),
(163, 1, '2025-02-24 21:04:48', '2025-02-24 21:04:48', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;}', 'Блок-інструкція після опису', 'блок-інструкція_після_опису', 'publish', 'closed', 'closed', '', 'field_67bcddd84bc3b', '', '', '2025-02-24 21:06:37', '2025-02-24 21:06:37', '', 144, 'http://enjoy.loc/?post_type=acf-field&#038;p=163', 3, 'acf-field', '', 0),
(164, 1, '2025-02-24 21:06:37', '2025-02-24 21:06:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Назва інструкції', 'instruct_name', 'publish', 'closed', 'closed', '', 'field_67bcdf0556a55', '', '', '2025-02-24 21:06:37', '2025-02-24 21:06:37', '', 144, 'http://enjoy.loc/?post_type=acf-field&p=164', 4, 'acf-field', '', 0),
(165, 1, '2025-02-24 21:06:37', '2025-02-24 21:06:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Текст інструкції', 'instruct_text', 'publish', 'closed', 'closed', '', 'field_67bcdf3456a56', '', '', '2025-02-24 21:06:37', '2025-02-24 21:06:37', '', 144, 'http://enjoy.loc/?post_type=acf-field&p=165', 5, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_termmeta`
--

CREATE TABLE `bb_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_termmeta`
--

INSERT INTO `bb_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 18, 'thumbnail_id', '0'),
(2, 18, 'display_type', ''),
(3, 19, 'order', '0'),
(4, 19, 'thumbnail_id', '93'),
(5, 19, 'display_type', ''),
(6, 19, 'product_count_product_cat', '2'),
(7, 18, 'product_count_product_cat', '7'),
(8, 20, 'order', '0'),
(9, 21, 'order', '0'),
(10, 22, 'order', '0'),
(11, 23, 'order', '0'),
(12, 24, 'order', '0'),
(13, 21, 'image', ''),
(14, 21, '_image', 'field_67aa7da3a8cfd'),
(15, 21, 'colors', 'a:2:{i:0;s:2:\"23\";i:1;s:2:\"24\";}'),
(16, 21, '_colors', 'field_67aa7deb06aed'),
(17, 22, 'image', ''),
(18, 22, '_image', 'field_67aa7da3a8cfd'),
(19, 22, 'colors', 'a:1:{i:0;s:2:\"31\";}'),
(20, 22, '_colors', 'field_67aa7deb06aed'),
(21, 25, 'order', '0'),
(22, 26, 'order', '0'),
(23, 27, 'order', '0'),
(24, 28, 'order', '0'),
(25, 28, 'thumbnail_id', '92'),
(26, 28, 'display_type', ''),
(27, 29, 'order', '0'),
(28, 29, 'thumbnail_id', '91'),
(29, 29, 'display_type', ''),
(30, 30, 'order', '0'),
(31, 30, 'thumbnail_id', '94'),
(32, 30, 'display_type', ''),
(33, 30, 'product_color', '#ec7f54'),
(34, 30, '_product_color', 'field_67acb48345581'),
(35, 29, 'product_color', '#95ae99'),
(36, 29, '_product_color', 'field_67acb48345581'),
(37, 19, 'product_color', '#0c4f79'),
(38, 19, '_product_color', 'field_67acb48345581'),
(39, 28, 'product_color', '#ff0000'),
(40, 28, '_product_color', 'field_67acb48345581'),
(41, 29, 'product_count_product_cat', '1'),
(42, 30, 'product_count_product_cat', '4'),
(43, 28, 'product_count_product_cat', '3'),
(44, 23, 'photo', '137'),
(45, 23, '_photo', 'field_67ad0f3f89a71'),
(46, 24, 'photo', '138'),
(47, 24, '_photo', 'field_67ad0f3f89a71'),
(48, 31, 'order', '0'),
(49, 31, 'photo', '139'),
(50, 31, '_photo', 'field_67ad0f3f89a71'),
(51, 30, 'photo', '66'),
(52, 30, '_photo', 'field_67ae58c100aee'),
(53, 29, 'photo', '57'),
(54, 29, '_photo', 'field_67ae58c100aee'),
(55, 19, 'photo', '57'),
(56, 19, '_photo', 'field_67ae58c100aee');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_terms`
--

CREATE TABLE `bb_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_terms`
--

INSERT INTO `bb_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'footer 1', 'footer-1', 0),
(3, 'footer 2', 'footer-2', 0),
(4, 'Header', 'header', 0),
(5, 'simple', 'simple', 0),
(6, 'grouped', 'grouped', 0),
(7, 'variable', 'variable', 0),
(8, 'external', 'external', 0),
(9, 'exclude-from-search', 'exclude-from-search', 0),
(10, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(11, 'featured', 'featured', 0),
(12, 'outofstock', 'outofstock', 0),
(13, 'rated-1', 'rated-1', 0),
(14, 'rated-2', 'rated-2', 0),
(15, 'rated-3', 'rated-3', 0),
(16, 'rated-4', 'rated-4', 0),
(17, 'rated-5', 'rated-5', 0),
(18, 'Всі типи', 'vsi-typy', 0),
(19, 'Груші та мʼячі', 'kreslo-hrusha', 0),
(20, 'РОГОЖКА', 'rohozhka', 0),
(21, 'РОГОЖКА', 'rohozhka', 0),
(22, 'ШКІРЗАМІННИК', 'shkirzaminnyk', 0),
(23, 'Букле-02', 'bukle-02', 0),
(24, 'Букле-04', 'bukle-04', 0),
(25, 'S', 's', 0),
(26, 'M', 'm', 0),
(27, 'L', 'l', 0),
(28, 'Акційні пропозиції', 'special_offer', 0),
(29, 'Безкаркасні крісла', 'bezkarkasni-krisla', 0),
(30, 'Аксесуари', 'puf', 0),
(31, '256_мʼята', '256_m-iata', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_term_relationships`
--

CREATE TABLE `bb_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_term_relationships`
--

INSERT INTO `bb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 2, 0),
(25, 2, 0),
(26, 3, 0),
(27, 3, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(83, 7, 0),
(83, 19, 0),
(83, 21, 0),
(83, 22, 0),
(83, 25, 0),
(83, 26, 0),
(83, 27, 0),
(90, 5, 0),
(90, 19, 0),
(99, 7, 0),
(99, 21, 0),
(99, 22, 0),
(99, 25, 0),
(99, 26, 0),
(99, 27, 0),
(99, 29, 0),
(106, 7, 0),
(106, 21, 0),
(106, 22, 0),
(106, 25, 0),
(106, 26, 0),
(106, 27, 0),
(106, 30, 0),
(113, 7, 0),
(113, 21, 0),
(113, 22, 0),
(113, 25, 0),
(113, 26, 0),
(113, 27, 0),
(113, 28, 0),
(113, 30, 0),
(120, 7, 0),
(120, 21, 0),
(120, 22, 0),
(120, 25, 0),
(120, 26, 0),
(120, 27, 0),
(120, 28, 0),
(120, 30, 0),
(127, 7, 0),
(127, 21, 0),
(127, 22, 0),
(127, 25, 0),
(127, 26, 0),
(127, 27, 0),
(127, 28, 0),
(127, 30, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_term_taxonomy`
--

CREATE TABLE `bb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_term_taxonomy`
--

INSERT INTO `bb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 7),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 6),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_cat', '', 0, 0),
(19, 19, 'product_cat', '', 18, 2),
(20, 20, 'pa_матеріал', '', 0, 0),
(21, 21, 'pa_material', '', 0, 6),
(22, 22, 'pa_material', '', 0, 6),
(23, 23, 'pa_kolory', '', 0, 0),
(24, 24, 'pa_kolory', '', 0, 0),
(25, 25, 'pa_rozmiry', '', 0, 6),
(26, 26, 'pa_rozmiry', '', 0, 6),
(27, 27, 'pa_rozmiry', '', 0, 6),
(28, 28, 'product_cat', '', 0, 3),
(29, 29, 'product_cat', '', 18, 1),
(30, 30, 'product_cat', '', 18, 4),
(31, 31, 'pa_kolory', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_usermeta`
--

CREATE TABLE `bb_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_usermeta`
--

INSERT INTO `bb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'enjoyDevAdmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'bb_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'bb_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:157:{s:64:\"e7cb6889dd3b504e17add704899748f79be1b17b437dfae004a4fd3ce01f5b31\";a:4:{s:10:\"expiration\";i:1740595669;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0\";s:5:\"login\";i:1740422869;}s:64:\"6eee48b7cae4bc1c0a85f68da25e122a9106653dfc4bbd3febc5d9d78e37f5ea\";a:4:{s:10:\"expiration\";i:1740595694;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740422894;}s:64:\"9e7917e50fafb8085ef209ce3474b101ac97e4e9f0cc6217801a3f82fce71904\";a:4:{s:10:\"expiration\";i:1740595703;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740422903;}s:64:\"5084e90fcb18922ae4dcf7ab871a22031785a6596200ded49d9adbf2c792bcc0\";a:4:{s:10:\"expiration\";i:1740595768;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740422968;}s:64:\"df81df56114be7146c9d0b692c8bd17a7433b19da046317592e71573c6b743c6\";a:4:{s:10:\"expiration\";i:1740595844;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423044;}s:64:\"d974e25b976c82d76c79785fc1058caa1f79a5d6782e23f07235615c85495b41\";a:4:{s:10:\"expiration\";i:1740595909;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423109;}s:64:\"7fd2590bfadff59e6a12ba16fd0bb7793629cb297123165f2a5932ef3db3f273\";a:4:{s:10:\"expiration\";i:1740596030;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423230;}s:64:\"2178898788227bea5c1d5ef1ca72753393227b284d47ecf8b519ef20e138a18f\";a:4:{s:10:\"expiration\";i:1740596151;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423351;}s:64:\"8f422a007a7e8d092467ec8f13eaa4d476f407982ee5e9ade51b5227da211bad\";a:4:{s:10:\"expiration\";i:1740596194;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423394;}s:64:\"45da30593129b921ed2bb74ee17efa37089fcb15efd26ba4a72c3faede63cea8\";a:4:{s:10:\"expiration\";i:1740596273;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423473;}s:64:\"228b6c4ac8401588a7344481b21134d47f4f5b8f0cf56735de4c0eb02c7efcc2\";a:4:{s:10:\"expiration\";i:1740596394;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423594;}s:64:\"f9a954185310afa80087e1f148c49d23daf39af563113266c9cad69a2a02b775\";a:4:{s:10:\"expiration\";i:1740596442;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423642;}s:64:\"a11d8744004e826acc770d3098ea7e25e8c83d1381a9c789a71a0d69b7b1d4fe\";a:4:{s:10:\"expiration\";i:1740596494;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423694;}s:64:\"d38cab5c1d2ddb628a0974e23aa39536cb680a0ce7a0dc2b7bc5c57116475db6\";a:4:{s:10:\"expiration\";i:1740596635;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423835;}s:64:\"288c6ac5f8a0b398ffdb440d046f95d6d519f0bead6a20130fb6093a54b5a1fe\";a:4:{s:10:\"expiration\";i:1740596646;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423846;}s:64:\"fe86d1054be21a727795ed94b7f1214d1ee7e0a6a7ca0f865a59a36bbe2affb5\";a:4:{s:10:\"expiration\";i:1740596648;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423848;}s:64:\"e7a33e6b0dd2c4aecd26842e1f7c50b15bcfaadecb0a46f6ff74b213fda768d8\";a:4:{s:10:\"expiration\";i:1740596666;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423866;}s:64:\"f61441d899d44031aa185a2a5a52a89e2eb0e78d66094919c64d44758208d290\";a:4:{s:10:\"expiration\";i:1740596706;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423906;}s:64:\"f6a517014d595d8d0dfa40cae8c9c0d7ef218dd3e2b369743fd8ecc62cb08bee\";a:4:{s:10:\"expiration\";i:1740596731;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423931;}s:64:\"13ccdd22db1b32be0480e389dbad41adac7ed0aec010b88f0146d1fca518c6bb\";a:4:{s:10:\"expiration\";i:1740596796;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740423996;}s:64:\"f01db9049a42557df8e56841d362112a93e165b68858b7dc0b56415dbc34a82f\";a:4:{s:10:\"expiration\";i:1740596855;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424055;}s:64:\"ef3441ce73dd3960cbdd330e33f5f9fbdfe1269c840c64034005e4013d7426f8\";a:4:{s:10:\"expiration\";i:1740596916;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424116;}s:64:\"77601cde678a27b573cbccecbd749c1a8e7fabcdace323036462b766b59c3c22\";a:4:{s:10:\"expiration\";i:1740596975;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424175;}s:64:\"7f32506169f28d8b185f1ac3da0271ec84235e8cffff9e63b289f5a46e0ddf89\";a:4:{s:10:\"expiration\";i:1740597036;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424236;}s:64:\"4738c470e57b9f239a36589f488fa9f0f995e7577740d48547703cbd34e399c8\";a:4:{s:10:\"expiration\";i:1740597095;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424295;}s:64:\"daf1a65ca44621ddd35556c5595ef8f7dd4e61ed7e651ef275598f6234ee81c1\";a:4:{s:10:\"expiration\";i:1740597156;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424356;}s:64:\"aa846697102c6f494192e87a2184f3d0ae52941d5a7477b41f755ca746c14d12\";a:4:{s:10:\"expiration\";i:1740597215;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424415;}s:64:\"743040ab21dd4d567a037354b8d516b9f1db09114a3db58b2eb7a51e339d74bc\";a:4:{s:10:\"expiration\";i:1740597276;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424476;}s:64:\"3adf65fd9106cf5775fd25ee1d1d6f12a2e3d324e3e7ce305047b07885f09cb9\";a:4:{s:10:\"expiration\";i:1740597336;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424536;}s:64:\"91073784f3cab4d0396b1ba95a9cd211483188fc387383f4b3474c05605c2b2f\";a:4:{s:10:\"expiration\";i:1740597396;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424596;}s:64:\"8f28f2a3efd0730f36bb7f561ea7887fbc69ecc5481557ca1000518e1360b2a5\";a:4:{s:10:\"expiration\";i:1740597455;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424655;}s:64:\"a9ee0e9838399d605251b06b668f4f24ad4676273eb00c37afac01134eda199e\";a:4:{s:10:\"expiration\";i:1740597516;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424716;}s:64:\"3440ee71660eaaae130ff9622e61e2590650bac9e074eb03e882f6f5c51a447e\";a:4:{s:10:\"expiration\";i:1740597576;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424776;}s:64:\"e96712734cee53e1c2bae780204aeadd3d278723f62687427f01fe40cb96938a\";a:4:{s:10:\"expiration\";i:1740597636;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424836;}s:64:\"b7163eb4bad34b3464e92bd65038f3f6c745742fef1d0abe7097e78886c63aae\";a:4:{s:10:\"expiration\";i:1740597696;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424896;}s:64:\"62cb021ec98d28b465607c481fea263871a7007206e47145c751e6ad4c9000ec\";a:4:{s:10:\"expiration\";i:1740597756;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740424956;}s:64:\"1cc41b1bb63a0a76991cf7d0d84d5bf82d81667a7a84db30ffcd626cf7780fd2\";a:4:{s:10:\"expiration\";i:1740597816;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425016;}s:64:\"4c19b654be30559ac2af39be16c298ab1e68b684551682da2e026288131cd52d\";a:4:{s:10:\"expiration\";i:1740597876;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425076;}s:64:\"21ed4b4f1ccc5accd2faccbf7c551a22df0711eb11e73b5fbc122d42ff3fe1bf\";a:4:{s:10:\"expiration\";i:1740597936;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425136;}s:64:\"dc7810f4ac4ac8eb5c13fc271b2115083e823be26727fe91756f66b26522ada4\";a:4:{s:10:\"expiration\";i:1740597996;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425196;}s:64:\"42531be3941766405a82b59b6140b216fd9e8923ad4424162e7144672c705666\";a:4:{s:10:\"expiration\";i:1740598056;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425256;}s:64:\"95ffe967df8dca820a8a58f215fc032e3c440c4e3c926c8d44567788b0df8311\";a:4:{s:10:\"expiration\";i:1740598116;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425316;}s:64:\"a801f22697b446000e0ae53f972fca3eb34212fc5b9bd82621e76e453360be8a\";a:4:{s:10:\"expiration\";i:1740598176;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425376;}s:64:\"1f7037dff53963731e830e5da2cbaf1a11e1d2591e7cacce7c748718551647be\";a:4:{s:10:\"expiration\";i:1740598236;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425436;}s:64:\"3dbdde2a171dd6ce2d8a6499811a1458947659a77ae5ec239b496f76d82d2ab7\";a:4:{s:10:\"expiration\";i:1740598296;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425496;}s:64:\"6e82c578e12286143d3152ce8973d610d2557ed2653cd4f74d8074863cf33ea5\";a:4:{s:10:\"expiration\";i:1740598356;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425556;}s:64:\"920843265f0a46d7b997f1b9b281658489f4aa797c19f199cf18480e7897164f\";a:4:{s:10:\"expiration\";i:1740598416;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425616;}s:64:\"ff98fc570d47756758e1dd71b7011b024c6e4b41e6ddc5f6ff475720d4d8bb94\";a:4:{s:10:\"expiration\";i:1740598476;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425676;}s:64:\"be217bcac303b347d2d527af41ce77fe6948a36a9667ab34307178731b435694\";a:4:{s:10:\"expiration\";i:1740598536;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425736;}s:64:\"d38f0678da61d2f7191dd4af2fb0bf5b2a35448b77824d31ab8f6c4cc90fe3bf\";a:4:{s:10:\"expiration\";i:1740598596;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425796;}s:64:\"742555272baf360cbaf18c91c37f3289161f8c7335cb9b9cc23eea8903b7f0b4\";a:4:{s:10:\"expiration\";i:1740598656;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425856;}s:64:\"710c506e4262c833ee7eccedbe5a6007b2e9c010d1555db7f5fb18de18a1886d\";a:4:{s:10:\"expiration\";i:1740598716;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425916;}s:64:\"86e1efbcc919a0575baef2aeb7d257be2a04489cb6ed913c44520ddc78177c6e\";a:4:{s:10:\"expiration\";i:1740598776;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740425976;}s:64:\"11de403e7239319a04a2a556d008a591015b59f34187592e900186ecad9b0901\";a:4:{s:10:\"expiration\";i:1740598836;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426036;}s:64:\"5b682220f18923de495c2b6cba8094c13b1ce8a6b93776728e87b7cb62a3e741\";a:4:{s:10:\"expiration\";i:1740598896;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426096;}s:64:\"42c8abeb5ab5ce48839c4aaca467f7ceef517b08fd64f2376c7e989a6a2d471a\";a:4:{s:10:\"expiration\";i:1740598956;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426156;}s:64:\"14dc3f29a3537587dc42d2341a59d747ea4e899ba17201748e6e1802a33e061a\";a:4:{s:10:\"expiration\";i:1740599016;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426216;}s:64:\"0aa9cf8c76782cee3a72574caa30ccec1b8bf7be13beb4f83864288757f1052e\";a:4:{s:10:\"expiration\";i:1740599076;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426276;}s:64:\"c42af9de82b3cb6890aa5709f9623b9ebf7220a3935183525492c524719b013b\";a:4:{s:10:\"expiration\";i:1740599136;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426336;}s:64:\"5a6d982705661e001240608aa7b7c553a3b54d6dbb01aa4ebb728f8e7c6763a4\";a:4:{s:10:\"expiration\";i:1740599196;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426396;}s:64:\"1f18b867362aea279599a7cfd38ae3e1ceae74f995849b1c78555d7032f1787b\";a:4:{s:10:\"expiration\";i:1740599256;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426456;}s:64:\"0b96edf28a62d0129ebb3d9159c3d1902606d0275cda8341a408535824fa392a\";a:4:{s:10:\"expiration\";i:1740599316;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426516;}s:64:\"e383f6183a943cacbd85bfe51366da2c63145d8977507457e20cc238faad2ab7\";a:4:{s:10:\"expiration\";i:1740599376;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426576;}s:64:\"eede45f17d4a7c9bae0d44b26052dfdbc9a7e7b4eae6810df9cac63cc5bdaa1f\";a:4:{s:10:\"expiration\";i:1740599436;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426636;}s:64:\"1e8a61dfd1be370e0cfb0fe46a2ea3ef37599992abe1899a1bbc4bc0cfca9834\";a:4:{s:10:\"expiration\";i:1740599496;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426696;}s:64:\"0ad112929b7e48a1c9a49268321cf781ad039faf80e7d77ecdf98ba6afa99582\";a:4:{s:10:\"expiration\";i:1740599556;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426756;}s:64:\"0fb08e5c2f1ee31ff391a7da8835df133f671e66f5cba55a667227095fe61087\";a:4:{s:10:\"expiration\";i:1740599616;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426816;}s:64:\"e63108b4a0c3321d73ecb0a122a828fbd8c90041e7b6f342725fc2359d629761\";a:4:{s:10:\"expiration\";i:1740599676;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426876;}s:64:\"4d6d98164c91b3b9aeace951a7de87dfdb6908bfe7bbc744740e633030ff4e96\";a:4:{s:10:\"expiration\";i:1740599736;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426936;}s:64:\"e40d140e3c2545fe98d69979c4e9c5e7f216607ff1303efd9abed31adb1772f3\";a:4:{s:10:\"expiration\";i:1740599796;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740426996;}s:64:\"01d69c41eabd6da751463d78e471c94bb343cd39403e583fed4731ff51f42993\";a:4:{s:10:\"expiration\";i:1740599856;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427056;}s:64:\"82ead9327245c637a9daf22dbd09585e15bea0d4b43d32558b2f9e3f46af6856\";a:4:{s:10:\"expiration\";i:1740599916;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427116;}s:64:\"81c2643ea05e889dadeb312d08a34b842e013777edc8e15e68973d9d2e8537cb\";a:4:{s:10:\"expiration\";i:1740599976;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427176;}s:64:\"3018b8c53f6e4a479ce7fcd70981564613c2e8960fa0b86273b307268d508857\";a:4:{s:10:\"expiration\";i:1740600037;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427237;}s:64:\"aab0173717809d219b99ea7860e59263b805b1c2c201b6bd02f472cbcba5c71e\";a:4:{s:10:\"expiration\";i:1740600092;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427292;}s:64:\"685d4d1707e4b42a8e67057831d638aae3fa3bf0a4f4ee461ea4e2af6da55bca\";a:4:{s:10:\"expiration\";i:1740600150;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427350;}s:64:\"147d470122fd4880c5fc1f30d4a899fed5e8d39174fd2ac2a4c6b505cf90725d\";a:4:{s:10:\"expiration\";i:1740600255;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427455;}s:64:\"07c8af4a70e45eb1e8ebcec06d45ff6181b9b9ad4be0442ebb6b7e9497e5b52e\";a:4:{s:10:\"expiration\";i:1740600279;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427479;}s:64:\"5e4e04b66b301d756f475e697a6f0ba72506bcf1036a7a19b452e547deac3afe\";a:4:{s:10:\"expiration\";i:1740600376;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427576;}s:64:\"7e379e149d46e0433e6c930385abfd7d8657e5d8c63447c10fbb161a87e05a66\";a:4:{s:10:\"expiration\";i:1740600400;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427600;}s:64:\"acc1cc7f12c25b09602c353a7e4d44e005bd6c472845eead40bbd045d4b435ba\";a:4:{s:10:\"expiration\";i:1740600480;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427680;}s:64:\"6333be169b53cd431d3fa215881cb553745fad7d339e61d9ab46ca32e6ca6fa3\";a:4:{s:10:\"expiration\";i:1740600521;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427721;}s:64:\"9e3efdb226e62e0f0f760fbe517ae2c468e4e01d7c8a2f306ab33068ed886b8c\";a:4:{s:10:\"expiration\";i:1740600635;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740427835;}s:64:\"f4acb1bb9dd9743b6130ba8fc156d0f4af17b8f8f7afcc6cc26e6db7f08f7542\";a:4:{s:10:\"expiration\";i:1740600872;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428072;}s:64:\"3f0f9b44ca7ed25da6cfb7af90c66e80a01df1e25bccbe40683e2db7dd8b57dd\";a:4:{s:10:\"expiration\";i:1740600967;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428167;}s:64:\"bbf48855b3e6739ce47b126287f10e05c8868801e7f33cc461caa536b7966a47\";a:4:{s:10:\"expiration\";i:1740601072;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428272;}s:64:\"9d0231a04bcb7c7ecdf2d2da756cefae02c83146f800f81bd5b70756dc7b2b33\";a:4:{s:10:\"expiration\";i:1740601132;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428332;}s:64:\"2f4cd1f63e7601df3c0695026edb8418c46dc0c04e9922db1baf6abffc4344ab\";a:4:{s:10:\"expiration\";i:1740601253;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428453;}s:64:\"1fc4e853c80e78539bc2bb3be9737e6f6d2fa214caa448a8e7f3175e179037d8\";a:4:{s:10:\"expiration\";i:1740601373;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428573;}s:64:\"c8c3e431ee43103fb8f2cf3a92ff471032d9b38c5a971c0487ab90062fbac226\";a:4:{s:10:\"expiration\";i:1740601474;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428674;}s:64:\"272b43d1983a2e1347183ee08c2ba2f82182362f701bdafd10a4ff1f1da94910\";a:4:{s:10:\"expiration\";i:1740601535;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428735;}s:64:\"8536157b21eca66087cef806bb69785d2d79f021a6d6e65c48b22f7678d45e90\";a:4:{s:10:\"expiration\";i:1740601595;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428795;}s:64:\"c58142aad03f0ea54780129a00edaa25925cdecac6a92ad8b5fed380dcbd016c\";a:4:{s:10:\"expiration\";i:1740601653;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428853;}s:64:\"0b62fdcfc2d79dcda1f87f0db41bf51ca658b5f70f50e9e1dfdca6b1859a6e06\";a:4:{s:10:\"expiration\";i:1740601715;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428915;}s:64:\"8f222d28df07ed11ea5f7ca19f85d1e06008a3844e8d27a35f231684e4b6bcdf\";a:4:{s:10:\"expiration\";i:1740601783;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740428983;}s:64:\"4c8d5512cd63c5ede01e98cb714786c0c615d6f1c42b27f800be8e09fd0d6539\";a:4:{s:10:\"expiration\";i:1740601837;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429037;}s:64:\"22f111ca32bfe1848a23d96568e9eff0bcb31144e5b4eacb26eae28743d2707e\";a:4:{s:10:\"expiration\";i:1740601897;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429097;}s:64:\"63cf90e9ed6ba6d5d135e4a3a323b2ca1c1f3d2faa92f04feea1afacd669b4a0\";a:4:{s:10:\"expiration\";i:1740601969;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429169;}s:64:\"9ad64558908541385912489924ce9330ae2f4ce1fa55ec872bfd02a976d229d6\";a:4:{s:10:\"expiration\";i:1740602030;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429230;}s:64:\"28f5e88017a207aaa05e89399f89d6eb84fc56af954a08ce1a2ad11f148b07b8\";a:4:{s:10:\"expiration\";i:1740602068;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429268;}s:64:\"01a4635d2c439d5739431e6acb2d83a8cb023578c096409b6f7b16a8fdc6c3bc\";a:4:{s:10:\"expiration\";i:1740602142;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429342;}s:64:\"ca4806918176fcb9a983ed441acbe26c8a095bfaceff674ebef549271820c53a\";a:4:{s:10:\"expiration\";i:1740602227;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429427;}s:64:\"e96a7daf66a1b9608a22310d5e6464e0e86f873eb4507cc7119967f4433d7d3b\";a:4:{s:10:\"expiration\";i:1740602267;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429467;}s:64:\"779ae1af6ded0d42ad66db5234eefd7df7567aac926cb58bb03fc895946ef949\";a:4:{s:10:\"expiration\";i:1740602349;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429549;}s:64:\"3d28972b54885a0fd5357bbe251dde6c7248d2a5ae0cc1fde0e62741438bc47e\";a:4:{s:10:\"expiration\";i:1740602378;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429578;}s:64:\"a9f63f03e0970870242bf4799d2b5c8aa6d123dd433e690494dbad7c8dcb3da9\";a:4:{s:10:\"expiration\";i:1740602473;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429673;}s:64:\"ef5f03b60445597aa3d3872901f6fd536706255c6c5ad31b45ec814cd5c3ecdb\";a:4:{s:10:\"expiration\";i:1740602489;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429689;}s:64:\"753e1f10ff09d66da2e48561916267c0b113c13ee5d33b2df391f7ad94ffdef9\";a:4:{s:10:\"expiration\";i:1740602549;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429749;}s:64:\"8e8af50ad127b114e912233be30bedf04b4a093980430ed6fce8706c7e2cc87d\";a:4:{s:10:\"expiration\";i:1740602660;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429860;}s:64:\"0b90766cb8bc101190e26af01e54f8481677267b25c7dd8c5c1d4be29aefd69c\";a:4:{s:10:\"expiration\";i:1740602671;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429871;}s:64:\"f8f7fddcd0ded49087838bde400f843d82f0f1ac7ecfbdcc7f72f2e3ca3e2ef3\";a:4:{s:10:\"expiration\";i:1740602752;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429952;}s:64:\"e760912f833c66b940693c5083ced03a42519946bef68df77fa97c793004fe03\";a:4:{s:10:\"expiration\";i:1740602768;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740429968;}s:64:\"cfd86b325a4bb9ce0357eb86392cda4c489a587e2121b9921d6e17fb5f54a792\";a:4:{s:10:\"expiration\";i:1740602828;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430028;}s:64:\"70fa09650232fe05ac0e9eb8cb93641cb5aac3807cc697dc95364c9122533713\";a:4:{s:10:\"expiration\";i:1740602884;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430084;}s:64:\"f070c13bd6cad0df6596336bf10448307fc840db1dad84b33136490932803c2b\";a:4:{s:10:\"expiration\";i:1740602926;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430126;}s:64:\"20a94cb55d2ebb065c00cb97e434f686c1b0c4e4cf9e25dbc43dc6758216f066\";a:4:{s:10:\"expiration\";i:1740603003;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430203;}s:64:\"6603d4997e71adc5414de8e41b4656547b0371fa2e440a4409955605094d9fe9\";a:4:{s:10:\"expiration\";i:1740603053;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430253;}s:64:\"168cd57190bc3d1315d246ccdc65734a68154be693c52ef3f8b1c31f4167ef3b\";a:4:{s:10:\"expiration\";i:1740603101;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430301;}s:64:\"281ae463b21aafcf8e8668d2201fc70f92dd6040c7f4b14df5369e0ae51396fb\";a:4:{s:10:\"expiration\";i:1740603248;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430448;}s:64:\"7748f3f0d48f351f22d323200b780b7bb32deb7ae696cfeddc53e088cc3978c1\";a:4:{s:10:\"expiration\";i:1740603368;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430568;}s:64:\"63adb383aaf2c8d8500d85cabaa638c3194723eea88ac133acda9672c10bb496\";a:4:{s:10:\"expiration\";i:1740603450;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430650;}s:64:\"8b6aae13dce009b96d15402036814ee703538bd1b3be7e00c94370d3b8ebcee4\";a:4:{s:10:\"expiration\";i:1740603513;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430713;}s:64:\"6cfa6c06b0ef80d53daebc933d25c09bd4f15b8a74b1bd14a0947d52bab88e1e\";a:4:{s:10:\"expiration\";i:1740603610;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430810;}s:64:\"04148ad74e2f2bda0db9b8967903b342851b9429675607b542e7b8649ef1d709\";a:4:{s:10:\"expiration\";i:1740603671;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430871;}s:64:\"ea449a0fe615af5d6109375f3dae814e818b6f5744dcae766771d59e131dbeea\";a:4:{s:10:\"expiration\";i:1740603765;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740430965;}s:64:\"90642cea511fc11aa5c2bc6b03c0d92a150c5bdeba798a7d2b0482b1f1d110ee\";a:4:{s:10:\"expiration\";i:1740603825;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431025;}s:64:\"142a9a7e821a13c596621e27983fb72279fec305e3b0ce9fcc26af2c50103ec5\";a:4:{s:10:\"expiration\";i:1740603859;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431059;}s:64:\"3d71b02d32d7a9a061a303ea5c12a3b096ec81c570e985fcfd1ecad4f8810726\";a:4:{s:10:\"expiration\";i:1740603885;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431085;}s:64:\"f60d69b08c746a4142f47173e40be283ae5193d0fa8e57ef64575fc474b08e7c\";a:4:{s:10:\"expiration\";i:1740603951;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431151;}s:64:\"85a0337f2aac8246dda346c11254693a9d2dcb5a1a314b44e0e0b282c1f986a9\";a:4:{s:10:\"expiration\";i:1740603996;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431196;}s:64:\"f61406cd543dd568681f865b2a701ecd92666f6ed0ec59fe128397e828cba62d\";a:4:{s:10:\"expiration\";i:1740604061;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431261;}s:64:\"b128ddd3b211d94f49bf5f0853fd811b94871a5640d76137a770b844f323d0d3\";a:4:{s:10:\"expiration\";i:1740604152;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431352;}s:64:\"e515866a5f4653d74604a23e939c58ee471ba80848b1195d8369a83270664e03\";a:4:{s:10:\"expiration\";i:1740604212;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431412;}s:64:\"ce839e855f7b2371af38ce653ac0fda8d10834af6d517315dee70bd838b98e8f\";a:4:{s:10:\"expiration\";i:1740604270;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431470;}s:64:\"53933720e081a8035dcf61157a18d4dddce57aeda7c819e11e951da3a5ab9716\";a:4:{s:10:\"expiration\";i:1740604330;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431530;}s:64:\"4e868ad186fdda06bf86232021fc5a6b41d26ed284c4de95a7490b116acfb41c\";a:4:{s:10:\"expiration\";i:1740604395;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431595;}s:64:\"5777cfa1c0de82cd4d02a91dc941dd78e0cf59811b700fadc983e8fbb0104bff\";a:4:{s:10:\"expiration\";i:1740604415;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431615;}s:64:\"3c680792bb17a47cc820435b81c3eadbce7caf319bf445c08a450a78655fba86\";a:4:{s:10:\"expiration\";i:1740604475;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431675;}s:64:\"1203d27c59aad04699434c4606e17f5a9ee89cea356a12922ab79a8d1906a46e\";a:4:{s:10:\"expiration\";i:1740604596;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431796;}s:64:\"4f03c52a790e6d3cfb0cb8a7e8ebc557eb29a1baca90187b97b5b7c0a07b5d4a\";a:4:{s:10:\"expiration\";i:1740604717;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431917;}s:64:\"822d97be9ce5212244ee2141689223b9d8cf80231d5a8294a52dd0f4e8c09600\";a:4:{s:10:\"expiration\";i:1740604778;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740431978;}s:64:\"ad6c5be4f9d56d9bacf23e2fc2f527d4d31c9710dfd82aead922ccf40947db0d\";a:4:{s:10:\"expiration\";i:1740604852;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432052;}s:64:\"2acde8039b372d52d8355eafa043ba9cf3cb248319d8a19e9c73a952d6bbe259\";a:4:{s:10:\"expiration\";i:1740604900;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432100;}s:64:\"6207ce1b9b209a6849460e4de8d358b913523ffaa4be3bd40a38496bba8ebaaf\";a:4:{s:10:\"expiration\";i:1740604974;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432174;}s:64:\"46c4f741037cc4dbb964ead7d57ebcd4fe922adbc8dd9b27346efaec4c41ca85\";a:4:{s:10:\"expiration\";i:1740605020;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432220;}s:64:\"ad82ae2384d8cd81f7d21e2ff3740426604dad54fac53f67b52b5a16dbdcd2e9\";a:4:{s:10:\"expiration\";i:1740605095;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432295;}s:64:\"734242c8285fbfe060603b84efef03cb2abf46f8bf5652eff0272d2611b4e276\";a:4:{s:10:\"expiration\";i:1740605141;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432341;}s:64:\"c82e7dc0e56e1d50abb721cb2d2dc2d5bb1ee935f3a2788d203d30496d9b198e\";a:4:{s:10:\"expiration\";i:1740605216;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432416;}s:64:\"ce9ea1260ce619a40e6ce517920fef79f1e1646ff2fb74a6dbf811fe102f2da3\";a:4:{s:10:\"expiration\";i:1740605262;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432462;}s:64:\"edf7dd5e58df08cc4ef870a8d97fe7a69f58aed29031ff6923e1a7ae28968c08\";a:4:{s:10:\"expiration\";i:1740605337;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432537;}s:64:\"c2f1169702383a7553a9cdf5daa7a3f8c6637c9a605761a4b8e47b674124bdf0\";a:4:{s:10:\"expiration\";i:1740605459;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740432659;}s:64:\"6899d1d933c0dd19ba012a30841c9e301233cbc69f3b107c8788ddf6455f4154\";a:4:{s:10:\"expiration\";i:1740641929;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740469129;}s:64:\"86bd8f1a8252ec973e056e2ffd088a4c3e0d0032d2c3dab2ba37c2be49d188a4\";a:4:{s:10:\"expiration\";i:1740642051;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740469251;}s:64:\"b927ead5ad2d43c658b6a9d69de903e12167685f861946525b0284f608db1092\";a:4:{s:10:\"expiration\";i:1740642110;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740469310;}s:64:\"eb6b15bdf2a07349366d70be7c356ba0ae56438e8bef5f919150fa84a9345bde\";a:4:{s:10:\"expiration\";i:1740642154;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740469354;}s:64:\"0e439702cf2c19558418dce08f48be57072673218ffdf8d1087d04f6204ac0cc\";a:4:{s:10:\"expiration\";i:1740642231;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740469431;}s:64:\"1880afef4913027a86e29fdafa984a32c589859030d94f6bb20b2aeaacc93e7c\";a:4:{s:10:\"expiration\";i:1740642295;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:33:\"WordPress/6.7.2; http://enjoy.loc\";s:5:\"login\";i:1740469495;}}'),
(17, 1, 'default_password_nag', ''),
(18, 1, 'bb_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:556;}s:9:\"_modified\";s:24:\"2024-12-18T07:57:11.019Z\";}'),
(19, 1, 'bb_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'bb_user-settings-time', '1740430133'),
(21, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"6.0\";}'),
(22, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(23, 1, 'acf_user_settings', 'a:1:{s:23:\"options-pages-first-run\";b:1;}'),
(24, 1, 'closedpostboxes_acf-ui-options-page', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf-ui-options-page', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(28, 1, 'wc_last_active', '1740441600'),
(30, 1, '_woocommerce_tracks_anon_id', 'woo:vhWB6YjA+KqDu6EbJf8YcJn3'),
(31, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"4bc714f86fd29eec4f03021b1384650b\";a:11:{s:3:\"key\";s:32:\"4bc714f86fd29eec4f03021b1384650b\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:84;s:9:\"variation\";a:2:{s:20:\"attribute_pa_rozmiry\";s:1:\"l\";s:21:\"attribute_pa_material\";s:8:\"rohozhka\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"0bbd4721fed6978b9a3360fecb8c7b61\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:99;s:8:\"line_tax\";d:0;}}}'),
(34, 1, 'meta-box-order_product', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:101:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag,product_branddiv\";s:6:\"normal\";s:68:\"woocommerce-product-data,acf-group_6761ee9f8340c,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(39, 1, 'last_update', '1739225234'),
(40, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"customize-store\":1}'),
(242, 1, 'dismissed_update_notice', '1'),
(254, 1, 'woocommerce_admin_variable_product_tour_shown', 'yes'),
(274, 1, 'screen_layout_product', '2'),
(317, 1, 'closedpostboxes_product', 'a:0:{}'),
(318, 1, 'metaboxhidden_product', 'a:1:{i:2;s:7:\"slugdiv\";}'),
(985, 1, 'dismissed_no_secure_connection_notice', '1'),
(3567, 1, '_woocommerce_load_saved_cart_after_login', '1');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_users`
--

CREATE TABLE `bb_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `bb_users`
--

INSERT INTO `bb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'enjoyDevAdmin', '$P$BesKJ1mUmIHAh9wTw.a/qqYyo/ie3I1', 'enjoydevadmin', 'roman.vytak@gmail.com', 'http://enjoy.loc', '2024-11-22 12:52:38', '', 0, 'enjoyDevAdmin');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_admin_notes`
--

CREATE TABLE `bb_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `locale` varchar(20) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL,
  `content_data` longtext DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `source` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) NOT NULL DEFAULT '',
  `image` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_admin_notes`
--

INSERT INTO `bb_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2024-12-17 21:46:11', NULL, 0, 'plain', '', 0, 1, 'info'),
(2, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:17', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:17', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:17', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooPayments setup - let us know what you think', 'Congrats on enabling WooPayments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:19', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:20', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:20', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:20', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:20', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:20', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:21', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:21', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:21', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:22', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:22', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:22', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'needs-update-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'Security vulnerability patched in WooCommerce Eway Gateway', 'In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:22', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'updated-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'WooCommerce Eway Gateway has been automatically updated', 'Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:23', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'ecomm-wc-navigation-survey-2023', 'info', 'en_US', 'Navigating WooCommerce on WordPress.com', 'We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:23', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'woopay-beta-merchantrecruitment-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'WooPay, a new express checkout feature built into WooCommerce Payments, is now available —and we’re inviting you to be one of the first to try it. \r\n<br><br>\r\nBoost conversions by offering your customers a simple, secure way to pay with a single click.\r\n<br><br>\r\nGet started in seconds.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:23', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-wcpay-march-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Payments', '<strong>Your store requires a security update for WooCommerce Payments</strong>. Please update to the latest version of WooCommerce Payments immediately to address a potential vulnerability discovered on March 22. For more information on how to update, visit this WooCommerce Developer Blog Post.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'marketing', 'en_US', 'Accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone and WooCommerce Payments is quick, secure, and simple to set up — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'woocommerce-WCPreOrders-april-2023-update-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Pre-Orders extension', '<strong>Your store requires a security update for the WooCommerce Pre-Orders extension</strong>. Please update the WooCommerce Pre-Orders extension immediately to address a potential vulnerability discovered on April 11.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'woopay-beta-merchantrecruitment-update-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'WooPay, a new express checkout feature built into WooCommerce Payments, is now available — and you’re invited to try it. \r\n<br /><br />\r\nBoost conversions by offering your customers a simple, secure way to pay with a single click.\r\n<br /><br />\r\nUpdate WooCommerce Payments to get started.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:25', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'woopay-beta-existingmerchants-noaction-27APR23', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed. No action is required on your part.\r\n<br /><br />\r\nYou can now continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:25', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'woopay-beta-existingmerchants-update-27APR23', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed.\r\n<br /><br />\r\n\r\nUpdate to the latest WooCommerce Payments version to continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:26', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'woopay-beta-merchantrecruitment-short-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:26', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'woopay-beta-merchantrecruitment-short-update-04MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, our new express checkout feature. <br>Boost conversions by letting customers pay with a single click. <br><br>Update to the latest version of WooCommerce Payments to get started.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:27', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTA', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:27', NULL, 0, 'plain', '', 0, 0, 'info'),
(37, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTB', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:27', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTC', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:27', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'woopay-beta-merchantrecruitment-short-06MAY23-TESTD', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:28', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'woopay-beta-merchantrecruitment-short-09MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, a new express checkout feature for WooCommerce Payments. \r\n<br><br>\r\nBoost conversions by letting customers pay with a single click.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:28', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'woopay-beta-merchantrecruitment-short-update-09MAY23', 'info', 'en_US', 'Increase conversions with WooPay — our fastest checkout yet', 'Be one of the first to try WooPay, our new express checkout feature. <br>Boost conversions by letting customers pay with a single click. <br><br>Update to the latest version of WooCommerce Payments to get started.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:28', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'woocommerce-WCSubscriptions-June-2023-updated-needed', 'marketing', 'en_US', 'Action required: Security update of WooCommerce Subscriptions', '<strong>Your store requires a security update for the WooCommerce Subscriptions plugin</strong>. Please update the WooCommerce Subscriptions plugin immediately to address a potential vulnerability.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:28', NULL, 0, 'plain', '', 0, 0, 'info'),
(43, 'woocommerce-WCReturnsWarranty-June-2023-updated-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Returns and Warranty Requests extension', '<strong>Your store requires a security update for the Returns and Warranty Requests extension</strong>.  Please update to the latest version of the WooCommerce Returns and Warranty Requests extension immediately to address a potential vulnerability discovered on May 31.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:29', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'woocommerce-WCOPC-June-2023-updated-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce One Page Checkout', '<strong>Your shop requires a security update to address a vulnerability in the WooCommerce One Page Checkout extension</strong>. The fix for this vulnerability was released for this extension on June 13th. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:29', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'woocommerce-WCGC-July-2023-update-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce GoCardless Extension', '<strong>Your shop requires a security update to address a vulnerability in the WooCommerce GoCardless extension</strong>. The fix for this vulnerability was released on July 4th. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:29', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'woocommerce-shipping-fedex-api-outage-2023-07-16', 'warning', 'en_US', 'Scheduled FedEx API outage — July 2023', 'On July 16 there will be a full outage of the FedEx API from 04:00 to 08:00 AM UTC. Due to planned maintenance by FedEx, you\'ll be unable to provide FedEx shipping rates during this time. Follow the link below for more information and recommendations on how to minimize impact.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:30', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'wcship-2023-07-hazmat-update-needed', 'update', 'en_US', 'Action required: USPS HAZMAT compliance update for WooCommerce Shipping & Tax extension', '<strong>Your store requires an update for the WooCommerce Shipping extension</strong>. Please update to the latest version of the WooCommerce Shipping &amp; Tax extension immediately to ensure compliance with new USPS HAZMAT rules currently in effect.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:30', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'woocommerce-WCStripe-Aug-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Stripe plugin', '<strong>Your shop requires an important security update for the  WooCommerce Stripe plugin</strong>. The fix for this vulnerability was released on July 31. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:30', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'woocommerce-WCStripe-Aug-2023-security-updated', 'update', 'en_US', 'Security update of WooCommerce Stripe plugin', '<strong>Your store has been updated to the latest secure version of the WooCommerce Stripe plugin</strong>. This update was released on July 31.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:30', NULL, 0, 'plain', '', 0, 0, 'info'),
(50, 'woocommerce-WooPayments-Aug-2023-security-updated', 'update', 'en_US', 'Security update of WooPayments (WooCommerce Payments) plugin', '<strong>Your store has been updated to the more secure version of WooPayments (WooCommerce Payments)</strong>. This update was released on July 31.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(51, 'avalara_q3-2023_noAvaTax', 'marketing', 'en_US', 'Automatically calculate VAT in real time', 'Take the effort out of determining tax rates and sell confidently across borders with automated tax management from Avalara AvaTax— including built-in VAT calculation when you sell into or across the EU and UK. Save time and stay compliant when you let Avalara do the heavy lifting.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:31', NULL, 0, 'plain', '', 0, 0, 'info'),
(52, 'woocommerce-usermeta-Sept2023-productvendors', 'update', 'en_US', 'Your store requires a security update', '<strong>Your shop needs an update to address a vulnerability in WooCommerce.</strong> The fix was released on Sept 15. Please update WooCommerce to the latest version immediately. <a href=\"https://developer.woocommerce.com/2023/09/16/woocommerce-vulnerability-reintroduced-from-7-0-1/\" />Read our developer update</a> for more information.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(53, 'woocommerce-STRIPE-Oct-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Stripe Gateway', '<strong>Your shop requires a security update to address a vulnerability in the WooCommerce Stripe Gateway</strong>. The fix for this vulnerability was released on October 17. Please update immediately.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(54, 'amazon-mcf-reviews-2023-12-07', 'marketing', 'en_US', 'Enjoying Amazon MCF for WooCommerce?', 'We\'re Never Settle, the developers behind Amazon MCF for WooCommerce, and would be deeply honored to have your review. Reviews help immensely as other users can learn how MCF can solve their needs too! Not happy or need help? Please reach out for support and we’d love to make things right!', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(55, 'remove_estimated_deposits_2024', 'marketing', 'en_US', 'Estimated deposits are going away', 'To provide more accurate deposit information and support the expansion of instant deposits, estimated deposit details will no longer be available in WooPayments. We recommend upgrading to the latest version of WooPayments for more detailed balance status information.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(56, 'sirt-woo-2024-11-xss-admin', 'update', 'en_US', 'An important update is required for WooCommerce', 'This update addresses a security vulnerability that could allow unauthorized access to administrative privileges on your site. <a href=\"https://developer.woocommerce.com/2024/12/03/woocommerce-9-4-3-and-woocommerce-9-3-4-available-now/\">Learn more</a>.\r\n<br><br>\r\n<strong>Please ensure your site is updated to the latest version to stay secure.</strong>', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:32', NULL, 0, 'plain', '', 0, 0, 'info'),
(57, 'usps-mail-service-to-canada-suspended-dec-2024', 'update', 'en_US', 'Please note: USPS Mail Service to Canada Suspended', 'The United States Postal Service has temporarily suspended mail service to Canada due to the ongoing Canadian postal workers\' strike. USPS is asking users to refrain from mailing items to Canada at this time.', '{}', 'pending', 'woocommerce.com', '2024-12-17 21:46:33', NULL, 0, 'plain', '', 0, 0, 'info'),
(58, 'wc-update-db-reminder', 'update', 'en_US', 'WooCommerce database update done', 'WooCommerce database update complete. Thank you for updating to the latest version!', '{}', 'actioned', 'woocommerce-core', '2025-02-10 21:44:48', NULL, 0, 'plain', '', 0, 1, 'info'),
(59, 'woocommerce-analytics-order-attribution-promotions-december-2024', 'marketing', 'en_US', 'Discover what drives your sales', 'Use our powerful <strong>Order Attribution</strong> extension to understand what truly drives your revenue. Track your sales journey, identify your most effective marketing channels, and optimize your sales strategy.', '{}', 'pending', 'woocommerce.com', '2025-02-10 21:45:02', NULL, 0, 'plain', '', 0, 0, 'info'),
(60, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2025-02-13 18:26:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(61, 'paypal_bnpl_au_promo_Q1_2025', 'marketing', 'en_US', 'Australian shoppers can Pay in 4 with PayPal', 'Enable Pay in 4 messaging to let Australian customers know that they can pay over time while you get paid up front and in full. Pay in 4 is included in PayPal Payments at no additional cost. Eligible buyers can pay in four interest-free payments for purchases of $30 to $2,000 AUD. Terms apply.', '{}', 'pending', 'woocommerce.com', '2025-02-13 18:26:49', NULL, 0, 'plain', '', 0, 0, 'info'),
(62, 'stripe_stripetax_q1_2025', 'marketing', 'en_US', 'Say goodbye to your tax woes', 'Stripe Tax automatically applies the correct sales tax, VAT, or GST, saving time while keeping you compliant. And with simple automatic filing, you can stop stressing at tax time and focus on growing instead.', '{}', 'pending', 'woocommerce.com', '2025-02-19 21:47:11', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_admin_note_actions`
--

CREATE TABLE `bb_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `query` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `actioned_text` varchar(255) NOT NULL,
  `nonce_action` varchar(255) DEFAULT NULL,
  `nonce_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_admin_note_actions`
--

INSERT INTO `bb_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'notify-refund-returns-page', 'Edit page', 'http://enjoy.loc/wp-admin/post.php?post=48&action=edit', 'actioned', '', NULL, NULL),
(169, 57, 'usps-mail-service-to-canada-suspended-dec-2024', 'Stay up to date', 'https://about.usps.com/newsroom/service-alerts/international/canada-suspension.htm', 'unactioned', '', NULL, NULL),
(342, 58, 'update-db_done', 'Thanks!', 'http://enjoy.loc/wp-admin/post-new.php?post_type=product&wc-hide-notice=update', 'actioned', 'woocommerce_hide_notices_nonce', 'woocommerce_hide_notices_nonce', '_wc_notice_nonce'),
(595, 60, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(935, 61, 'paypal_bnpl_au_promo_Q1_2025_button', 'Enable “Pay in 4” now', 'https://woocommerce.com/document/woocommerce-paypal-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=paypal_bnpl_au_promo_Q1_2025_button#pay-later-tab', 'unactioned', '', NULL, NULL),
(1697, 62, 'stripe_stripetax_q1_2025_click', 'Automate my taxes with Stripe', 'https://woocommerce.com/products/stripe-tax/?utm_source=inbox_note&utm_medium=product&utm_campaign=stripe_stripetax_q1_2025_click', 'unactioned', '', NULL, NULL),
(1698, 2, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(1699, 3, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(1700, 4, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(1701, 5, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(1702, 6, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/woopayments-new-user-feedback', 'actioned', '', NULL, NULL),
(1703, 7, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(1704, 8, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(1705, 9, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://enjoy.loc/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(1706, 10, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(1707, 13, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(1708, 14, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(1709, 15, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1710, 15, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1711, 16, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1712, 16, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1713, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1714, 17, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1715, 18, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1716, 18, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1717, 19, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(1718, 20, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(1719, 20, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1720, 21, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(1721, 21, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1722, 22, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(1723, 23, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(1724, 24, 'needs-update-eway-payment-gateway-rin-action-button-2022-12-20', 'See available updates', 'http://enjoy.loc/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(1725, 24, 'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1726, 25, 'updated-eway-payment-gateway-rin-action-button-2022-12-20', 'See all updates', 'http://enjoy.loc/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(1727, 25, 'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1728, 26, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/new-ecommerce-plan-navigation', 'actioned', '', NULL, NULL),
(1729, 27, 'woopay-beta-merchantrecruitment-activate-04MAY23', 'Activate WooPay', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(1730, 27, 'woopay-beta-merchantrecruitment-activate-learnmore-04MAY23', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-activate-learnmore-04MAY23', 'unactioned', '', NULL, NULL),
(1731, 28, 'woocommerce-wcpay-march-2023-update-needed-button', 'See Blog Post', 'https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know', 'unactioned', '', NULL, NULL),
(1732, 28, 'woocommerce-wcpay-march-2023-update-needed-dismiss-button', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1733, 29, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'Simplify my payments', 'https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay', 'actioned', '', NULL, NULL),
(1734, 30, 'extension-settings', 'See available updates', 'http://enjoy.loc/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(1735, 30, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1736, 31, 'woopay-beta-merchantrecruitment-update-WCPay-04MAY23', 'Update WooCommerce Payments', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1737, 31, 'woopay-beta-merchantrecruitment-update-activate-04MAY23', 'Activate WooPay', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(1738, 32, 'woopay-beta-existingmerchants-noaction-documentation-27APR23', 'Documentation', 'https://woocommerce.com/document/woopay-merchant-documentation/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-existingmerchants-noaction-documentation-27APR23', 'actioned', '', NULL, NULL),
(1739, 33, 'woopay-beta-existingmerchants-update-WCPay-27APR23', 'Update WooCommerce Payments', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'actioned', '', NULL, NULL),
(1740, 34, 'woopay-beta-merchantrecruitment-short-activate-04MAY23', 'Activate WooPay', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(1741, 34, 'woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-04MAY23', 'actioned', '', NULL, NULL),
(1742, 35, 'woopay-beta-merchantrecruitment-short-update-WCPay-04MAY23', 'Update WooCommerce Payments', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1743, 35, 'woopay-beta-merchantrecruitment-short-update-activate-04MAY23', 'Activate WooPay', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'actioned', '', NULL, NULL),
(1744, 36, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTA', 'Activate WooPay Test A', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(1745, 36, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'unactioned', '', NULL, NULL),
(1746, 37, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTB', 'Activate WooPay Test B', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(1747, 37, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTA', 'unactioned', '', NULL, NULL),
(1748, 38, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTC', 'Activate WooPay Test C', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(1749, 38, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTC', 'unactioned', '', NULL, NULL),
(1750, 39, 'woopay-beta-merchantrecruitment-short-activate-06MAY23-TESTD', 'Activate WooPay Test D', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(1751, 39, 'woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-06MAY23-TESTD', 'unactioned', '', NULL, NULL),
(1752, 40, 'woopay-beta-merchantrecruitment-short-activate-button-09MAY23', 'Activate WooPay', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(1753, 40, 'woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23', 'Learn More', 'https://woocommerce.com/woopay-businesses/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-merchantrecruitment-short-activate-learnmore-button2-09MAY23', 'unactioned', '', NULL, NULL),
(1754, 41, 'woopay-beta-merchantrecruitment-short-update-WCPay-09MAY23', 'Update WooCommerce Payments', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1755, 41, 'woopay-beta-merchantrecruitment-short-update-activate-09MAY23', 'Activate WooPay', 'http://enjoy.loc/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments&method=platform_checkout', 'unactioned', '', NULL, NULL),
(1756, 42, 'woocommerce-WCSubscriptions-June-2023-updated-needed-Plugin-Settings', 'See available updates', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1757, 42, 'woocommerce-WCSubscriptions-June-2023-updated-needed-dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1758, 43, 'woocommerce-WCReturnsWarranty-June-2023-updated-needed', 'See available updates', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1759, 43, 'woocommerce-WCReturnsWarranty-June-2023-updated-needed', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1760, 44, 'woocommerce-WCOPC-June-2023-updated-needed', 'See available updates', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'actioned', '', NULL, NULL),
(1761, 44, 'woocommerce-WCOPC-June-2023-updated-needed', 'Dismiss', 'http://enjoy.loc/wp-admin/#', 'actioned', '', NULL, NULL),
(1762, 45, 'woocommerce-WCGC-July-2023-update-needed', 'See available updates', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1763, 45, 'woocommerce-WCGC-July-2023-update-needed', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1764, 46, 'learn-more', 'Learn more', 'https://woocommerce.com/document/fedex/?utm_medium=product&utm_source=inbox_note&utm_campaign=learn-more#july-2023-api-outage', 'unactioned', '', NULL, NULL),
(1765, 47, 'plugin-list', 'See available updates', 'http://enjoy.loc/wp-admin/plugins.php?plugin_status=all', 'unactioned', '', NULL, NULL),
(1766, 47, 'dismiss', 'Dismiss', 'http://enjoy.loc/wp-admin/admin.php?page=wc-admin', 'actioned', '', NULL, NULL),
(1767, 48, 'woocommerce-WCStripe-Aug-2023-update-needed', 'See available updates', 'http://enjoy.loc/wp-admin/update-core.php?', 'unactioned', '', NULL, NULL),
(1768, 48, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1769, 49, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1770, 50, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1771, 51, 'avalara_q3-2023_noAvaTax', 'Automate my sales tax', 'https://woocommerce.com/products/woocommerce-avatax/?utm_source=inbox_note&utm_medium=product&utm_campaign=avalara_q3-2023_noAvaTax', 'unactioned', '', NULL, NULL),
(1772, 52, 'woocommerce-usermeta-Sept2023-productvendors', 'See available updates', 'http://enjoy.loc/wp-admin/plugins.php', 'unactioned', '', NULL, NULL),
(1773, 52, 'dismiss', 'Dismiss', 'http://enjoy.loc/wp-admin/#', 'actioned', '', NULL, NULL),
(1774, 53, 'woocommerce-STRIPE-Oct-2023-update-needed', 'See available updates', 'http://enjoy.loc/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(1775, 53, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1776, 54, 'amazon-mcf-review-button-2023-12-07', 'Leave a review', 'https://woocommerce.com/products/woocommerce-amazon-fulfillment/?review&utm_source=inbox_note&utm_medium=product&utm_campaign=amazon-mcf-review-button-2023-12-07', 'actioned', '', NULL, NULL),
(1777, 54, 'amazon-mcf-support-button-2023-12-07', 'Request support', 'https://woocommerce.com/my-account/contact-support/?utm_source=inbox_note&utm_medium=product&utm_campaign=amazon-mcf-support-button-2023-12-07', 'actioned', '', NULL, NULL),
(1778, 55, 'view_docs', 'Learn about Deposit schedules', 'https://woocommerce.com/document/woopayments/deposits/deposit-schedule/?utm_source=inbox_note&utm_medium=product&utm_campaign=view_docs#available-funds', 'unactioned', '', NULL, NULL),
(1779, 56, 'sirt-woo-2024-11-xss-admin', 'See available updates', 'http://enjoy.loc/wp-admin/update-core.php?', 'unactioned', '', NULL, NULL),
(1780, 56, 'sirt-woo-2024-11-xss-admin', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(1781, 59, 'woocommerce-analytics-order-attribution-promotions-december-2024-find-out-more', 'Find out more', 'https://wordpress.org/plugins/woocommerce-analytics', 'actioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_category_lookup`
--

CREATE TABLE `bb_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_category_lookup`
--

INSERT INTO `bb_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(18, 18),
(18, 19),
(18, 29),
(18, 30),
(19, 19),
(28, 28),
(29, 29),
(30, 30);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_customer_lookup`
--

CREATE TABLE `bb_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) NOT NULL DEFAULT '',
  `postcode` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `state` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_customer_lookup`
--

INSERT INTO `bb_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'enjoyDevAdmin', '', '', 'roman.vytak@gmail.com', '2025-02-24 18:31:09', '2024-11-22 10:52:38', 'UA', '', '', 'UA46');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_download_log`
--

CREATE TABLE `bb_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_orders`
--

CREATE TABLE `bb_wc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_orders`
--

INSERT INTO `bb_wc_orders` (`id`, `status`, `currency`, `type`, `tax_amount`, `total_amount`, `customer_id`, `billing_email`, `date_created_gmt`, `date_updated_gmt`, `parent_order_id`, `payment_method`, `payment_method_title`, `transaction_id`, `ip_address`, `user_agent`, `customer_note`) VALUES
(150, 'wc-checkout-draft', 'UAH', 'shop_order', 0.00000000, 99.00000000, 1, 'roman.vytak@gmail.com', '2025-02-24 20:31:09', '2025-02-24 20:31:16', 0, '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 OPR/116.0.0.0', '');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_orders_meta`
--

CREATE TABLE `bb_wc_orders_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_orders_meta`
--

INSERT INTO `bb_wc_orders_meta` (`id`, `order_id`, `meta_key`, `meta_value`) VALUES
(1, 150, '_shipping_hash', '9d4568c009d203ab10e33ea9953a0264'),
(2, 150, '_coupons_hash', 'd751713988987e9331980363e24189ce'),
(3, 150, '_fees_hash', 'd751713988987e9331980363e24189ce'),
(4, 150, '_taxes_hash', 'd751713988987e9331980363e24189ce'),
(5, 150, 'is_vat_exempt', 'no'),
(6, 150, '_billing_address_index', '      UA46  UA roman.vytak@gmail.com '),
(7, 150, '_shipping_address_index', '      UA46  UA ');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_order_addresses`
--

CREATE TABLE `bb_wc_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_order_addresses`
--

INSERT INTO `bb_wc_order_addresses` (`id`, `order_id`, `address_type`, `first_name`, `last_name`, `company`, `address_1`, `address_2`, `city`, `state`, `postcode`, `country`, `email`, `phone`) VALUES
(1, 150, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, 'UA46', NULL, 'UA', 'roman.vytak@gmail.com', NULL),
(2, 150, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, 'UA46', NULL, 'UA', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_order_coupon_lookup`
--

CREATE TABLE `bb_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_order_operational_data`
--

CREATE TABLE `bb_wc_order_operational_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_via` varchar(100) DEFAULT NULL,
  `woocommerce_version` varchar(20) DEFAULT NULL,
  `prices_include_tax` tinyint(1) DEFAULT NULL,
  `coupon_usages_are_counted` tinyint(1) DEFAULT NULL,
  `download_permission_granted` tinyint(1) DEFAULT NULL,
  `cart_hash` varchar(100) DEFAULT NULL,
  `new_order_email_sent` tinyint(1) DEFAULT NULL,
  `order_key` varchar(100) DEFAULT NULL,
  `order_stock_reduced` tinyint(1) DEFAULT NULL,
  `date_paid_gmt` datetime DEFAULT NULL,
  `date_completed_gmt` datetime DEFAULT NULL,
  `shipping_tax_amount` decimal(26,8) DEFAULT NULL,
  `shipping_total_amount` decimal(26,8) DEFAULT NULL,
  `discount_tax_amount` decimal(26,8) DEFAULT NULL,
  `discount_total_amount` decimal(26,8) DEFAULT NULL,
  `recorded_sales` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_order_operational_data`
--

INSERT INTO `bb_wc_order_operational_data` (`id`, `order_id`, `created_via`, `woocommerce_version`, `prices_include_tax`, `coupon_usages_are_counted`, `download_permission_granted`, `cart_hash`, `new_order_email_sent`, `order_key`, `order_stock_reduced`, `date_paid_gmt`, `date_completed_gmt`, `shipping_tax_amount`, `shipping_total_amount`, `discount_tax_amount`, `discount_total_amount`, `recorded_sales`) VALUES
(1, 150, 'store-api', '9.6.2', 0, 0, 0, 'b4d6add0fc5899da2d8df73d862a20ce', 0, 'wc_order_cFhFkTtAObrjw', 0, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_order_product_lookup`
--

CREATE TABLE `bb_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_order_product_lookup`
--

INSERT INTO `bb_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 150, 83, 84, 1, '2025-02-24 20:31:09', 1, 99, 99, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_order_stats`
--

CREATE TABLE `bb_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_order_stats`
--

INSERT INTO `bb_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `date_paid`, `date_completed`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(150, 0, '2025-02-24 20:31:09', '2025-02-24 20:31:09', NULL, NULL, 1, 99, 0, 0, 99, 0, 'wc-checkout-draft', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_order_tax_lookup`
--

CREATE TABLE `bb_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_product_attributes_lookup`
--

CREATE TABLE `bb_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_product_attributes_lookup`
--

INSERT INTO `bb_wc_product_attributes_lookup` (`product_id`, `product_or_parent_id`, `taxonomy`, `term_id`, `is_variation_attribute`, `in_stock`) VALUES
(84, 83, 'pa_material', 21, 1, 1),
(86, 83, 'pa_material', 21, 1, 1),
(88, 83, 'pa_material', 21, 1, 1),
(85, 83, 'pa_material', 22, 1, 1),
(87, 83, 'pa_material', 22, 1, 1),
(89, 83, 'pa_material', 22, 1, 1),
(88, 83, 'pa_rozmiry', 25, 1, 1),
(89, 83, 'pa_rozmiry', 25, 1, 1),
(86, 83, 'pa_rozmiry', 26, 1, 1),
(87, 83, 'pa_rozmiry', 26, 1, 1),
(84, 83, 'pa_rozmiry', 27, 1, 1),
(85, 83, 'pa_rozmiry', 27, 1, 1),
(100, 99, 'pa_material', 21, 1, 1),
(102, 99, 'pa_material', 21, 1, 1),
(104, 99, 'pa_material', 21, 1, 1),
(101, 99, 'pa_material', 22, 1, 1),
(103, 99, 'pa_material', 22, 1, 1),
(105, 99, 'pa_material', 22, 1, 1),
(104, 99, 'pa_rozmiry', 25, 1, 1),
(105, 99, 'pa_rozmiry', 25, 1, 1),
(102, 99, 'pa_rozmiry', 26, 1, 1),
(103, 99, 'pa_rozmiry', 26, 1, 1),
(100, 99, 'pa_rozmiry', 27, 1, 1),
(101, 99, 'pa_rozmiry', 27, 1, 1),
(107, 106, 'pa_material', 21, 1, 1),
(109, 106, 'pa_material', 21, 1, 1),
(111, 106, 'pa_material', 21, 1, 1),
(108, 106, 'pa_material', 22, 1, 1),
(110, 106, 'pa_material', 22, 1, 1),
(112, 106, 'pa_material', 22, 1, 1),
(111, 106, 'pa_rozmiry', 25, 1, 1),
(112, 106, 'pa_rozmiry', 25, 1, 1),
(109, 106, 'pa_rozmiry', 26, 1, 1),
(110, 106, 'pa_rozmiry', 26, 1, 1),
(107, 106, 'pa_rozmiry', 27, 1, 1),
(108, 106, 'pa_rozmiry', 27, 1, 1),
(114, 113, 'pa_material', 21, 1, 1),
(116, 113, 'pa_material', 21, 1, 1),
(118, 113, 'pa_material', 21, 1, 1),
(115, 113, 'pa_material', 22, 1, 1),
(117, 113, 'pa_material', 22, 1, 1),
(119, 113, 'pa_material', 22, 1, 1),
(118, 113, 'pa_rozmiry', 25, 1, 1),
(119, 113, 'pa_rozmiry', 25, 1, 1),
(116, 113, 'pa_rozmiry', 26, 1, 1),
(117, 113, 'pa_rozmiry', 26, 1, 1),
(114, 113, 'pa_rozmiry', 27, 1, 1),
(115, 113, 'pa_rozmiry', 27, 1, 1),
(121, 120, 'pa_material', 21, 1, 1),
(123, 120, 'pa_material', 21, 1, 1),
(125, 120, 'pa_material', 21, 1, 1),
(122, 120, 'pa_material', 22, 1, 1),
(124, 120, 'pa_material', 22, 1, 1),
(126, 120, 'pa_material', 22, 1, 1),
(125, 120, 'pa_rozmiry', 25, 1, 1),
(126, 120, 'pa_rozmiry', 25, 1, 1),
(123, 120, 'pa_rozmiry', 26, 1, 1),
(124, 120, 'pa_rozmiry', 26, 1, 1),
(121, 120, 'pa_rozmiry', 27, 1, 1),
(122, 120, 'pa_rozmiry', 27, 1, 1),
(128, 127, 'pa_material', 21, 1, 1),
(130, 127, 'pa_material', 21, 1, 1),
(132, 127, 'pa_material', 21, 1, 1),
(129, 127, 'pa_material', 22, 1, 1),
(131, 127, 'pa_material', 22, 1, 1),
(133, 127, 'pa_material', 22, 1, 1),
(132, 127, 'pa_rozmiry', 25, 1, 1),
(133, 127, 'pa_rozmiry', 25, 1, 1),
(130, 127, 'pa_rozmiry', 26, 1, 1),
(131, 127, 'pa_rozmiry', 26, 1, 1),
(128, 127, 'pa_rozmiry', 27, 1, 1),
(129, 127, 'pa_rozmiry', 27, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_product_download_directories`
--

CREATE TABLE `bb_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_product_download_directories`
--

INSERT INTO `bb_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file://D:/xampp/htdocs/enjoy2.0/app/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://enjoy.loc/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_product_meta_lookup`
--

CREATE TABLE `bb_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) DEFAULT '',
  `global_unique_id` varchar(100) DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) DEFAULT 'taxable',
  `tax_class` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_product_meta_lookup`
--

INSERT INTO `bb_wc_product_meta_lookup` (`product_id`, `sku`, `global_unique_id`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(83, '', '', 0, 0, 96.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(84, '', '', 0, 0, 99.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(85, '', '', 0, 0, 96.0000, 96.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(86, '', '', 0, 0, 98.0000, 98.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(87, '', '', 0, 0, 69.0000, 69.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(88, '', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(89, '', '', 0, 0, 55.0000, 55.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(90, '', '', 0, 0, 123.0000, 123.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(99, '', '', 0, 0, 44.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(100, '', '', 0, 0, 99.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(101, '', '', 0, 0, 96.0000, 96.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(102, '', '', 0, 0, 98.0000, 98.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(103, '', '', 0, 0, 69.0000, 69.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(104, '', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(105, '', '', 0, 0, 55.0000, 55.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(106, '', '', 0, 0, 44.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(107, '', '', 0, 0, 99.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(108, '', '', 0, 0, 96.0000, 96.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(109, '', '', 0, 0, 98.0000, 98.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(110, '', '', 0, 0, 69.0000, 69.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(111, '', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(112, '', '', 0, 0, 55.0000, 55.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(113, '', '', 0, 0, 44.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(114, '', '', 0, 0, 99.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(115, '', '', 0, 0, 96.0000, 96.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(116, '', '', 0, 0, 98.0000, 98.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(117, '', '', 0, 0, 69.0000, 69.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(118, '', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(119, '', '', 0, 0, 55.0000, 55.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(120, '', '', 0, 0, 44.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(121, '', '', 0, 0, 99.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(122, '', '', 0, 0, 96.0000, 96.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(123, '', '', 0, 0, 98.0000, 98.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(124, '', '', 0, 0, 69.0000, 69.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(125, '', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(126, '', '', 0, 0, 55.0000, 55.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(127, '', '', 0, 0, 44.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', ''),
(128, '', '', 0, 0, 99.0000, 99.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(129, '', '', 0, 0, 96.0000, 96.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(130, '', '', 0, 0, 98.0000, 98.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(131, '', '', 0, 0, 69.0000, 69.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(132, '', '', 0, 0, 44.0000, 44.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent'),
(133, '', '', 0, 0, 55.0000, 55.0000, 0, NULL, 'instock', 0, 0.00, 0, 'taxable', 'parent');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_rate_limits`
--

CREATE TABLE `bb_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_reserved_stock`
--

CREATE TABLE `bb_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_tax_rate_classes`
--

CREATE TABLE `bb_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_wc_tax_rate_classes`
--

INSERT INTO `bb_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_wc_webhooks`
--

CREATE TABLE `bb_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text NOT NULL,
  `secret` text NOT NULL,
  `topic` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_api_keys`
--

CREATE TABLE `bb_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `permissions` varchar(10) NOT NULL,
  `consumer_key` char(64) NOT NULL,
  `consumer_secret` char(43) NOT NULL,
  `nonces` longtext DEFAULT NULL,
  `truncated_key` char(7) NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_attribute_taxonomies`
--

CREATE TABLE `bb_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_label` varchar(200) DEFAULT NULL,
  `attribute_type` varchar(20) NOT NULL,
  `attribute_orderby` varchar(20) NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_attribute_taxonomies`
--

INSERT INTO `bb_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'material', 'Матеріал', 'select', 'menu_order', 0),
(2, 'kolory', 'Кольори', 'select', 'menu_order', 0),
(3, 'rozmiry', 'Розміри', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `bb_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_log`
--

CREATE TABLE `bb_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `context` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_order_itemmeta`
--

CREATE TABLE `bb_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_order_itemmeta`
--

INSERT INTO `bb_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '83'),
(2, 1, '_variation_id', '84'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '99'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '99'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 1, 'pa_rozmiry', 'l'),
(11, 1, 'pa_material', 'rohozhka'),
(18, 3, 'method_id', 'free_shipping'),
(19, 3, 'instance_id', '1'),
(20, 3, 'cost', '0.00'),
(21, 3, 'total_tax', '0'),
(22, 3, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(23, 3, 'Items', 'Груша Home - L, РОГОЖКА &times; 1');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_order_items`
--

CREATE TABLE `bb_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_order_items`
--

INSERT INTO `bb_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Груша Home - L, РОГОЖКА', 'line_item', 150),
(3, 'Free shipping', 'shipping', 150);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_payment_tokenmeta`
--

CREATE TABLE `bb_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_payment_tokens`
--

CREATE TABLE `bb_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) NOT NULL,
  `token` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_sessions`
--

CREATE TABLE `bb_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_sessions`
--

INSERT INTO `bb_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(10, '1', 'a:13:{s:4:\"cart\";s:491:\"a:1:{s:32:\"4bc714f86fd29eec4f03021b1384650b\";a:11:{s:3:\"key\";s:32:\"4bc714f86fd29eec4f03021b1384650b\";s:10:\"product_id\";i:83;s:12:\"variation_id\";i:84;s:9:\"variation\";a:2:{s:20:\"attribute_pa_rozmiry\";s:1:\"l\";s:21:\"attribute_pa_material\";s:8:\"rohozhka\";}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"0bbd4721fed6978b9a3360fecb8c7b61\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:99;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:99;s:8:\"line_tax\";d:0;}}\";s:11:\"cart_totals\";s:393:\"a:15:{s:8:\"subtotal\";s:2:\"99\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:2:\"99\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"99.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:794:\"a:28:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2025-02-10T22:07:14+00:00\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"roman.vytak@gmail.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:4:\"UA46\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:4:\"UA46\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";s:22:\"shipping_for_package_0\";s:451:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_0c7ceb9627c217355df7519ff92aeb95\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:7:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}s:10:\"tax_status\";s:7:\"taxable\";}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:45:\"Груша Home - L, РОГОЖКА &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";s:206:\"a:1:{s:7:\"success\";a:1:{i:0;a:2:{s:6:\"notice\";s:131:\"&ldquo;Груша Home&rdquo; has been added to your cart. <a href=\"http://enjoy.loc/cart/\" class=\"button wc-forward\">View cart</a>\";s:4:\"data\";a:0:{}}}}\";s:21:\"store_api_draft_order\";i:150;}', 1740596228);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_shipping_zones`
--

CREATE TABLE `bb_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_shipping_zones`
--

INSERT INTO `bb_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Ukraine', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_shipping_zone_locations`
--

CREATE TABLE `bb_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_shipping_zone_locations`
--

INSERT INTO `bb_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'UA', 'country');

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_shipping_zone_methods`
--

CREATE TABLE `bb_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `bb_woocommerce_shipping_zone_methods`
--

INSERT INTO `bb_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_tax_rates`
--

CREATE TABLE `bb_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) NOT NULL DEFAULT '',
  `tax_rate` varchar(8) NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `bb_woocommerce_tax_rate_locations`
--

CREATE TABLE `bb_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `bb_actionscheduler_actions`
--
ALTER TABLE `bb_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Індекси таблиці `bb_actionscheduler_claims`
--
ALTER TABLE `bb_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Індекси таблиці `bb_actionscheduler_groups`
--
ALTER TABLE `bb_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Індекси таблиці `bb_actionscheduler_logs`
--
ALTER TABLE `bb_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Індекси таблиці `bb_commentmeta`
--
ALTER TABLE `bb_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `bb_comments`
--
ALTER TABLE `bb_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Індекси таблиці `bb_links`
--
ALTER TABLE `bb_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `bb_options`
--
ALTER TABLE `bb_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `bb_postmeta`
--
ALTER TABLE `bb_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `bb_posts`
--
ALTER TABLE `bb_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `bb_termmeta`
--
ALTER TABLE `bb_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `bb_terms`
--
ALTER TABLE `bb_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `bb_term_relationships`
--
ALTER TABLE `bb_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `bb_term_taxonomy`
--
ALTER TABLE `bb_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `bb_usermeta`
--
ALTER TABLE `bb_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `bb_users`
--
ALTER TABLE `bb_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Індекси таблиці `bb_wc_admin_notes`
--
ALTER TABLE `bb_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Індекси таблиці `bb_wc_admin_note_actions`
--
ALTER TABLE `bb_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Індекси таблиці `bb_wc_category_lookup`
--
ALTER TABLE `bb_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Індекси таблиці `bb_wc_customer_lookup`
--
ALTER TABLE `bb_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Індекси таблиці `bb_wc_download_log`
--
ALTER TABLE `bb_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Індекси таблиці `bb_wc_orders`
--
ALTER TABLE `bb_wc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `date_created` (`date_created_gmt`),
  ADD KEY `customer_id_billing_email` (`customer_id`,`billing_email`(171)),
  ADD KEY `billing_email` (`billing_email`(191)),
  ADD KEY `type_status_date` (`type`,`status`,`date_created_gmt`),
  ADD KEY `parent_order_id` (`parent_order_id`),
  ADD KEY `date_updated` (`date_updated_gmt`);

--
-- Індекси таблиці `bb_wc_orders_meta`
--
ALTER TABLE `bb_wc_orders_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key_value` (`meta_key`(100),`meta_value`(82)),
  ADD KEY `order_id_meta_key_meta_value` (`order_id`,`meta_key`(100),`meta_value`(82));

--
-- Індекси таблиці `bb_wc_order_addresses`
--
ALTER TABLE `bb_wc_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_type_order_id` (`address_type`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `email` (`email`(191)),
  ADD KEY `phone` (`phone`);

--
-- Індекси таблиці `bb_wc_order_coupon_lookup`
--
ALTER TABLE `bb_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Індекси таблиці `bb_wc_order_operational_data`
--
ALTER TABLE `bb_wc_order_operational_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `order_key` (`order_key`);

--
-- Індекси таблиці `bb_wc_order_product_lookup`
--
ALTER TABLE `bb_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Індекси таблиці `bb_wc_order_stats`
--
ALTER TABLE `bb_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Індекси таблиці `bb_wc_order_tax_lookup`
--
ALTER TABLE `bb_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Індекси таблиці `bb_wc_product_attributes_lookup`
--
ALTER TABLE `bb_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Індекси таблиці `bb_wc_product_download_directories`
--
ALTER TABLE `bb_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Індекси таблиці `bb_wc_product_meta_lookup`
--
ALTER TABLE `bb_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`),
  ADD KEY `sku` (`sku`(50));

--
-- Індекси таблиці `bb_wc_rate_limits`
--
ALTER TABLE `bb_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Індекси таблиці `bb_wc_reserved_stock`
--
ALTER TABLE `bb_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Індекси таблиці `bb_wc_tax_rate_classes`
--
ALTER TABLE `bb_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Індекси таблиці `bb_wc_webhooks`
--
ALTER TABLE `bb_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `bb_woocommerce_api_keys`
--
ALTER TABLE `bb_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Індекси таблиці `bb_woocommerce_attribute_taxonomies`
--
ALTER TABLE `bb_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Індекси таблиці `bb_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `bb_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Індекси таблиці `bb_woocommerce_log`
--
ALTER TABLE `bb_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Індекси таблиці `bb_woocommerce_order_itemmeta`
--
ALTER TABLE `bb_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `bb_woocommerce_order_items`
--
ALTER TABLE `bb_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Індекси таблиці `bb_woocommerce_payment_tokenmeta`
--
ALTER TABLE `bb_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `bb_woocommerce_payment_tokens`
--
ALTER TABLE `bb_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `bb_woocommerce_sessions`
--
ALTER TABLE `bb_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Індекси таблиці `bb_woocommerce_shipping_zones`
--
ALTER TABLE `bb_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Індекси таблиці `bb_woocommerce_shipping_zone_locations`
--
ALTER TABLE `bb_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Індекси таблиці `bb_woocommerce_shipping_zone_methods`
--
ALTER TABLE `bb_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Індекси таблиці `bb_woocommerce_tax_rates`
--
ALTER TABLE `bb_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Індекси таблиці `bb_woocommerce_tax_rate_locations`
--
ALTER TABLE `bb_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `bb_actionscheduler_actions`
--
ALTER TABLE `bb_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT для таблиці `bb_actionscheduler_claims`
--
ALTER TABLE `bb_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3590;

--
-- AUTO_INCREMENT для таблиці `bb_actionscheduler_groups`
--
ALTER TABLE `bb_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `bb_actionscheduler_logs`
--
ALTER TABLE `bb_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT для таблиці `bb_commentmeta`
--
ALTER TABLE `bb_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_comments`
--
ALTER TABLE `bb_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_links`
--
ALTER TABLE `bb_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_options`
--
ALTER TABLE `bb_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5900;

--
-- AUTO_INCREMENT для таблиці `bb_postmeta`
--
ALTER TABLE `bb_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1418;

--
-- AUTO_INCREMENT для таблиці `bb_posts`
--
ALTER TABLE `bb_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT для таблиці `bb_termmeta`
--
ALTER TABLE `bb_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблиці `bb_terms`
--
ALTER TABLE `bb_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблиці `bb_term_taxonomy`
--
ALTER TABLE `bb_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблиці `bb_usermeta`
--
ALTER TABLE `bb_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3568;

--
-- AUTO_INCREMENT для таблиці `bb_users`
--
ALTER TABLE `bb_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `bb_wc_admin_notes`
--
ALTER TABLE `bb_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблиці `bb_wc_admin_note_actions`
--
ALTER TABLE `bb_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1782;

--
-- AUTO_INCREMENT для таблиці `bb_wc_customer_lookup`
--
ALTER TABLE `bb_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `bb_wc_download_log`
--
ALTER TABLE `bb_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_wc_orders_meta`
--
ALTER TABLE `bb_wc_orders_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `bb_wc_order_addresses`
--
ALTER TABLE `bb_wc_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `bb_wc_order_operational_data`
--
ALTER TABLE `bb_wc_order_operational_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `bb_wc_product_download_directories`
--
ALTER TABLE `bb_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `bb_wc_rate_limits`
--
ALTER TABLE `bb_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_wc_tax_rate_classes`
--
ALTER TABLE `bb_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `bb_wc_webhooks`
--
ALTER TABLE `bb_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_api_keys`
--
ALTER TABLE `bb_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_attribute_taxonomies`
--
ALTER TABLE `bb_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `bb_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_log`
--
ALTER TABLE `bb_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_order_itemmeta`
--
ALTER TABLE `bb_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_order_items`
--
ALTER TABLE `bb_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_payment_tokenmeta`
--
ALTER TABLE `bb_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_payment_tokens`
--
ALTER TABLE `bb_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_sessions`
--
ALTER TABLE `bb_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_shipping_zones`
--
ALTER TABLE `bb_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_shipping_zone_locations`
--
ALTER TABLE `bb_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_shipping_zone_methods`
--
ALTER TABLE `bb_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_tax_rates`
--
ALTER TABLE `bb_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `bb_woocommerce_tax_rate_locations`
--
ALTER TABLE `bb_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
