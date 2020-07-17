-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-07-2020 a las 17:20:08
-- Versión del servidor: 10.3.22-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.19-1+0~20200612.60+debian10~1.gbp6c8fe1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-04-13 07:04:39', NULL),
(2, 'coupon', 'coupon', 'Coupon Generated [coupon]', '<p>adsasdd</p><p><br></p><p>&nbsp;[coupon]<br></p>', 'Coupon Generated  [coupon]', 'info@dermatology.com', NULL, NULL, '2020-07-16 05:32:02', '2020-07-16 05:33:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-04-13 07:06:59', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Base de Datos at Statistic Builder', '', 1, '2020-04-13 07:07:57', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/12', 'Delete data Priority at Module Generator', '', 1, '2020-04-13 07:32:49', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/13', 'Delete data Priority at Module Generator', '', 1, '2020-04-13 07:34:29', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data Prioridades at Module Generator', '', 1, '2020-04-13 07:36:48', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/15', 'Delete data priority at Module Generator', '', 1, '2020-04-13 07:39:57', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/16', 'Delete data Priority at Module Generator', '', 1, '2020-04-13 07:45:34', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/priority17/add-save', 'Add New Data 1 at pepe', '', 1, '2020-04-13 07:50:03', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/priority17/add-save', 'Add New Data 3 at pepe', '', 1, '2020-04-13 07:50:18', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/category/add-save', 'Add New Data  at Category', '', 1, '2020-04-13 07:56:38', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/category/add-save', 'Add New Data  at Category', '', 1, '2020-04-13 07:58:25', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/priority17/add-save', 'Add New Data  at pepe', '', 1, '2020-04-13 07:59:41', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/ticket/add-save', 'Add New Data  at Ticket', '', 1, '2020-04-13 08:38:39', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/ticket/add-save', 'Add New Data  at Ticket', '', 1, '2020-04-13 08:55:45', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Ticket at Menu Management', '', 1, '2020-04-13 09:14:22', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/9', 'Update data Ticket at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Statistic</td><td>Route</td></tr><tr><td>path</td><td>statistic_builder/show/base-de-datos</td><td>priority</td></tr></tbody></table>', 1, '2020-04-13 09:15:38', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Ticket at Statistic Builder', '', 1, '2020-04-13 09:18:08', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/ticket/edit-save/2', 'Update data  at Ticket', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_category</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2020-04-13 09:35:53', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Results at Menu Management', '', 1, '2020-04-13 10:22:37', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/10', 'Delete data Results at Menu Management', '', 1, '2020-04-13 10:23:52', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data rrr at Menu Management', '', 1, '2020-04-13 10:24:19', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/delete/11', 'Delete data rrr at Menu Management', '', 1, '2020-04-13 10:24:31', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data 333 at Menu Management', '', 1, '2020-04-13 10:24:49', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/12', 'Update data 333 at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/base-de-datos</td><td>statistic_builder/show/ticket</td></tr><tr><td>icon</td><td></td><td>fa fa-search</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-04-13 10:25:50', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-25 08:13:07', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-25 08:19:55', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-25 08:20:11', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/18', 'Delete data Category at Module Generator', '', 1, '2020-05-25 08:20:23', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/17', 'Delete data pepe at Module Generator', '', 1, '2020-05-25 08:20:26', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/19', 'Delete data Ticket at Module Generator', '', 1, '2020-05-25 08:20:28', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/9', 'Delete data Ticket at Menu Management', '', 1, '2020-05-25 08:20:38', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-25 08:24:29', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-25 08:24:32', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 03:58:12', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Configuration at Menu Management', '', 1, '2020-05-26 04:22:14', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/17', 'Update data Configuration at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-26 04:23:36', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-26 04:38:54', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 04:39:20', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-26 05:02:15', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 05:02:33', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-26 05:23:39', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 05:23:49', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Dermatologi at Statistic Builder', '', 1, '2020-05-26 05:29:53', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/delete/1', 'Delete data Base de Datos at Statistic Builder', '', 1, '2020-05-26 05:30:00', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/delete/2', 'Delete data Ticket at Statistic Builder', '', 1, '2020-05-26 05:30:04', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/3', 'Update data Dermatologi at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>dermatologi</td><td></td></tr></tbody></table>', 1, '2020-05-26 05:46:33', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/12', 'Update data 333 at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/ticket</td><td>statistic_builder/show/dermatologi</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2020-05-26 05:47:57', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/3', 'Update data Dermatologi at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>dermatologi</td><td></td></tr></tbody></table>', 1, '2020-05-26 05:53:35', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/3', 'Update data Dermatologi at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>dermatologi</td><td></td></tr></tbody></table>', 1, '2020-05-26 05:56:00', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/17', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Configuration</td><td>Gestici</td></tr><tr><td>icon</td><td>fa fa-folder-open</td><td>fa fa-cogs</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-05-26 05:58:49', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 09:41:12', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/16', 'Delete data Patient at Menu Management', '', 1, '2020-05-26 09:48:56', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 10:09:38', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/23', 'Delete data Patient at Module Generator', '', 1, '2020-05-26 10:09:58', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/25', 'Delete data Patient at Module Generator', '', 1, '2020-05-26 10:10:10', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-26 11:21:08', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-26 11:21:25', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/group/add-save', 'Add New Data asasdasdas at Group', '', 1, '2020-05-26 11:21:35', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/coupon_list/add-save', 'Add New Data Coupon 1 at Coupon', '', 1, '2020-05-26 11:29:06', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/region/add-save', 'Add New Data  at Region', '', 1, '2020-05-26 11:31:27', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/category31/add-save', 'Add New Data Categoria 1 at Category', '', 1, '2020-05-26 11:35:52', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-27 03:44:22', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/category31/delete/0', 'Delete data Categoria 1 at Category', '', 1, '2020-05-27 04:57:32', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/category31/add-save', 'Add New Data Paziente at Category', '', 1, '2020-05-27 04:57:49', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add', 'Try add data at Dermatology', '', 1, '2020-05-27 05:15:57', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data User at Menu Management', '', 1, '2020-05-27 05:21:30', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/26', 'Update data User at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-05-27 05:23:33', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-05-27 08:28:15', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-05-27 09:29:50', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-13 03:11:20', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-13 03:41:28', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-13 03:42:05', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/province/add-save', 'Add New Data  at Province', '', 1, '2020-07-13 05:09:20', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/city/add-save', 'Add New Data  at City', '', 1, '2020-07-13 05:09:31', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-14 03:03:20', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 04:17:33', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-14 04:45:02', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-14 10:43:42', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/12', 'Delete data 333 at Menu Management', '', 1, '2020-07-14 10:59:56', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data DermaStatics at Statistic Builder', '', 1, '2020-07-14 11:00:20', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data 33333333 at Statistic Builder', '', 1, '2020-07-14 11:03:36', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data 23333 at Statistic Builder', '', 1, '2020-07-14 11:03:46', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/30', 'Delete data Coupon at Module Generator', '', 1, '2020-07-14 11:35:56', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/18', 'Delete data Services at Menu Management', '', 1, '2020-07-14 11:36:23', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/27', 'Delete data Prueba Dermatologos at Menu Management', '', 1, '2020-07-14 11:36:32', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/28', 'Delete data Coupon at Menu Management', '', 1, '2020-07-14 11:36:45', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:14:06', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:25:34', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:28:45', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:31:26', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:33:13', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:34:03', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:38:08', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:41:53', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:42:36', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/34', 'Delete data  at Dermatology', '', 1, '2020-07-14 12:46:33', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/action-selected', 'Delete data 32,30,29,28,26 at Dermatology', '', 1, '2020-07-14 12:46:42', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/action-selected', 'Delete data 27 at Dermatology', '', 1, '2020-07-14 12:46:49', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data 23333 at Statistic Builder', '', 1, '2020-07-14 12:49:35', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:56:44', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 12:57:48', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 13:00:05', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/action-selected', 'Delete data 37,36,35,33 at Dermatology', '', 1, '2020-07-14 13:17:20', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 13:19:22', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 13:21:56', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 13:23:23', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/32', 'Delete data Prueba Dermatologos at Module Generator', '', 1, '2020-07-14 13:55:48', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/34', 'Delete data Elecciones at Module Generator', '', 1, '2020-07-14 13:55:55', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-14 13:58:22', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user29/add-save', 'Add New Data  at Informatori', '', 1, '2020-07-14 14:07:29', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user29/add-save', 'Add New Data  at Informatori', '', 1, '2020-07-14 14:07:58', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/26', 'Delete data Group User at Module Generator', '', 1, '2020-07-14 14:11:21', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/24', 'Delete data Services at Module Generator', '', 1, '2020-07-14 14:11:29', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-14 14:18:19', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-14 14:18:28', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/35', 'Delete data GroupUser at Module Generator', '', 1, '2020-07-14 14:26:27', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-15 05:15:25', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:23:41', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:28:09', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:28:22', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:30:18', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:31:35', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:31:59', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:41:18', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:46:13', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:46:22', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:46:29', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:47:32', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/55', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:50:20', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/53', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:50:28', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/54', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:50:35', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/49', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:50:51', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/48', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:50:57', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/44', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:51:02', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:54:53', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:55:05', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/56', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:55:23', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:55:28', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:55:33', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/59', 'Delete data  at Dermatology', '', 1, '2020-07-15 07:55:38', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:55:42', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:57:55', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 07:59:02', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:01:24', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/63', 'Delete data  at Dermatology', '', 1, '2020-07-15 08:01:30', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:01:34', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:01:41', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:02:27', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:02:40', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:04:17', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:04:37', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:05:26', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:05:42', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/31', 'Delete data  at Dermatology', '', 1, '2020-07-15 08:07:01', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/39', 'Delete data  at Dermatology', '', 1, '2020-07-15 08:07:15', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/delete/50', 'Delete data  at Dermatology', '', 1, '2020-07-15 08:07:34', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:07:53', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:07:57', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 08:08:45', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user29/add-save', 'Add New Data  at Informatori', '', 1, '2020-07-15 08:19:30', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user29/add-save', 'Add New Data  at Informatori', '', 1, '2020-07-15 08:21:25', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user29/add-save', 'Add New Data  at Informatori', '', 1, '2020-07-15 08:25:08', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user29/add-save', 'Add New Data  at Informatori', '', 1, '2020-07-15 08:27:58', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/37', 'Delete data group_user at Module Generator', '', 1, '2020-07-15 08:37:56', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/module_generator/delete/27', 'Delete data Group at Module Generator', '', 1, '2020-07-15 08:38:01', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Grupi at Menu Management', '', 1, '2020-07-15 08:39:41', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/33', 'Update data Grupi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-15 08:40:21', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/33', 'Delete data Grupi at Menu Management', '', 1, '2020-07-15 08:40:43', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Grupi at Menu Management', '', 1, '2020-07-15 08:41:55', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/34', 'Update data Grupi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-15 08:43:01', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Grupi at Menu Management', '', 1, '2020-07-15 08:43:57', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/35', 'Update data Grupi at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>34</td><td></td></tr></tbody></table>', 1, '2020-07-15 08:44:22', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/pipe_grupo/add-save', 'Add New Data  at pipe_grupo', '', 1, '2020-07-15 08:50:39', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/36', 'Update data Group User at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>pipe_grupo</td><td>Group User</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>34</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-15 08:57:12', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Info at Statistic Builder', '', 1, '2020-07-15 09:03:56', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/pipe_grupo/add-save', 'Add New Data  at pipe_grupo', '', 1, '2020-07-15 10:21:31', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data asdasdasda at Menu Management', '', 1, '2020-07-15 11:35:52', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/37', 'Update data asdasdasda at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-15 11:36:04', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/37', 'Update data asdasdasda at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-15 11:36:40', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/37', 'Delete data asdasdasda at Menu Management', '', 1, '2020-07-15 11:38:22', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/pipe_grupo/add-save', 'Add New Data  at pipe_grupo', '', 1, '2020-07-15 11:49:42', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 12:45:43', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/add-save', 'Add New Data  at Dermatology', '', 1, '2020-07-15 12:45:53', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/pipe_grupo/add-save', 'Add New Data  at pipe_grupo', '', 1, '2020-07-15 13:13:09', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-16 05:09:41', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/email_templates/add-save', 'Add New Data coupon at Email Templates', '', 1, '2020-07-16 05:32:02', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/email_templates/edit-save/2', 'Update data coupon at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>subject</td><td>Coupon Generated\\</td><td>Coupon Generated [coupon]</td></tr><tr><td>content</td><td><p>adsasdd</p></td><td><p>adsasdd</p><p><br></p><p>&nbsp;[coupon]<br></p></td></tr><tr><td>description</td><td>asdasdsad</td><td>Coupon Generated  [coupon]</td></tr><tr><td>from_email</td><td></td><td></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-16 05:33:36', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-16 06:25:49', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Static at Menu Management', '', 1, '2020-07-16 07:18:42', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/38', 'Update data Static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-16 07:19:15', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/38', 'Update data Static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-16 07:20:51', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/38', 'Update data Static at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-16 07:28:49', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data visa_masiva at Menu Management', '', 1, '2020-07-16 08:54:23', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/39', 'Update data vista_masiva at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>visa_masiva</td><td>vista_masiva</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-16 08:54:49', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/delete/39', 'Delete data vista_masiva at Menu Management', '', 1, '2020-07-16 08:54:58', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-16 09:04:35', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-17 05:05:26', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Gestici at Menu Management', '', 1, '2020-07-17 05:14:19', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Carica CSV at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Gestici</td><td>Carica CSV</td></tr><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-17 05:14:40', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(200, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Carica CSV at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>print</td><td>pipe_grupo/print/</td></tr><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-17 05:15:22', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-07-17 05:57:56', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-17 05:58:00', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Carica CSV at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>pipe_grupo/print/</td><td>print/</td></tr><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-17 06:00:42', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Carica CSV at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>print/</td><td>pipe_grupo/print/</td></tr><tr><td>icon</td><td></td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-17 06:01:03', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Carica CSV at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>pipe_grupo/print/</td><td>admin/pipe_grupo/print/</td></tr><tr><td>icon</td><td></td><td>fa fa-download</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-17 06:02:25', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-07-17 06:51:21', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/user28/delete/92', 'Delete data  at Dermatology', '', 1, '2020-07-17 07:12:19', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/user28/delete/93', 'Delete data  at Dermatology', '', 1, '2020-07-17 07:12:24', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/user28/delete/83', 'Delete data  at Dermatology', '', 1, '2020-07-17 07:12:27', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/user28/action-selected', 'Delete data 99,98,97,96,95,94,82,81,79,75,71,52 at Dermatology', '', 1, '2020-07-17 07:22:30', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/17', 'Update data Regions at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Gestici</td><td>Regions</td></tr><tr><td>icon</td><td>fa fa-cogs</td><td>fa fa-map-marker</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:35:41', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Carica CSV</td><td>Gestici</td></tr><tr><td>type</td><td>URL</td><td>Route</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:36:14', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>admin/pipe_grupo/print/</td><td>/admin/pipe_grupo/print</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:37:25', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/admin/pipe_grupo/print</td><td>pipe_grupo/print</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:38:09', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>pipe_grupo/print</td><td>/pipe_grupo/print</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:38:28', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/pipe_grupo/print</td><td>/admin/pipe_grupo/print</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:38:59', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-07-17 08:39:35', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/admin/pipe_grupo/print</td><td>/admin/masive</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-17 10:51:25', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0', 'http://localhost:8000/admin/menu_management/edit-save/40', 'Update data Gestici at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/admin/masive</td><td>/masive</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-07-17 10:53:00', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Notify at Menu Management', '', 1, '2020-07-17 11:08:59', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/41', 'Update data Notify at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-07-17 11:09:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(13, 'Province', 'Route', 'AdminProvinceControllerGetIndex', NULL, 'fa fa-glass', 17, 1, 0, 1, 2, '2020-05-26 03:58:56', NULL),
(14, 'Region', 'Route', 'AdminRegionControllerGetIndex', NULL, 'fa fa-glass', 17, 1, 0, 1, 1, '2020-05-26 04:00:38', NULL),
(15, 'City', 'Route', 'AdminCityControllerGetIndex', NULL, 'fa fa-glass', 17, 1, 0, 1, 3, '2020-05-26 04:02:43', NULL),
(17, 'Regions', 'Route', 'Config', 'normal', 'fa fa-map-marker', 0, 1, 0, 1, 7, '2020-05-26 04:22:14', '2020-07-17 08:35:41'),
(22, 'Dermatology', 'Route', 'AdminUser28ControllerGetIndex', NULL, 'fa fa-linkedin-square', 0, 1, 0, 1, 2, '2020-05-26 09:52:44', NULL),
(23, 'Informatori', 'Route', 'AdminUser29ControllerGetIndex', NULL, 'fa fa-user-secret', 0, 1, 0, 1, 3, '2020-05-26 10:11:07', NULL),
(25, 'Category', 'Route', 'AdminCategory31ControllerGetIndex', NULL, 'fa fa-glass', 26, 1, 0, 1, 1, '2020-05-26 11:35:30', NULL),
(26, 'User', 'Controller & Method', 'Users', 'normal', 'fa fa-bookmark', 0, 1, 0, 1, 8, '2020-05-27 05:21:30', '2020-05-27 05:23:33'),
(34, 'Grupi', 'Route', 'Config', 'normal', 'fa fa-th', 0, 1, 0, 1, 4, '2020-07-15 08:41:55', '2020-07-15 08:43:01'),
(35, 'Grupi', 'Module', 'group36', 'green', 'fa fa-group', 34, 1, 0, 1, 1, '2020-07-15 08:43:57', '2020-07-15 08:44:22'),
(36, 'Group User', 'Route', 'AdminPipeGrupoControllerGetIndex', 'normal', 'fa fa-glass', 34, 1, 0, 1, 2, '2020-07-15 08:45:04', '2020-07-15 08:57:12'),
(38, 'Static', 'URL', '/static', 'normal', 'fa fa-star', 0, 1, 1, 1, 1, '2020-07-16 07:18:42', '2020-07-16 07:28:49'),
(40, 'Gestici', 'URL', '/masive', 'normal', 'fa fa-download', 0, 1, 0, 1, 5, '2020-07-17 05:14:19', '2020-07-17 10:53:00'),
(41, 'Notify', 'URL', '/notify', 'light-blue', 'fa fa-sitemap', 0, 1, 0, 1, 6, '2020-07-17 11:08:59', '2020-07-17 11:09:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(10, 9, 1),
(15, 13, 1),
(16, 14, 1),
(17, 15, 1),
(18, 16, 1),
(21, 18, 1),
(22, 19, 1),
(23, 20, 1),
(24, 21, 1),
(25, 12, 1),
(27, 22, 1),
(28, 23, 1),
(29, 24, 1),
(30, 25, 1),
(32, 26, 1),
(33, 27, 1),
(34, 28, 1),
(35, 29, 1),
(36, 30, 1),
(37, 31, 1),
(38, 32, 1),
(40, 33, 1),
(42, 34, 1),
(44, 35, 1),
(46, 36, 1),
(49, 37, 1),
(53, 38, 1),
(55, 39, 1),
(62, 17, 1),
(70, 40, 1),
(71, NULL, 1),
(72, 41, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2020-04-13 07:04:39', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2020-04-13 07:04:39', NULL, NULL),
(12, 'Priority', 'fa fa-heart', 'priority', 'priority', 'AdminPriorityController', 0, 0, '2020-04-13 07:21:55', NULL, '2020-04-13 07:32:49'),
(13, 'Priority', 'fa fa-envelope-o', 'priority13', 'priority', 'AdminPriority13Controller', 0, 0, '2020-04-13 07:33:06', NULL, '2020-04-13 07:34:29'),
(14, 'Prioridades', 'fa fa-glass', 'priority14', 'priority', 'AdminPriority14Controller', 0, 0, '2020-04-13 07:34:46', NULL, '2020-04-13 07:36:48'),
(15, 'priority', 'fa fa-glass', 'priority15', 'priority', 'AdminPriority15Controller', 0, 0, '2020-04-13 07:38:18', NULL, '2020-04-13 07:39:57'),
(16, 'Priority', 'fa fa-glass', 'priority16', 'priority', 'AdminPriority16Controller', 0, 0, '2020-04-13 07:40:14', NULL, '2020-04-13 07:45:34'),
(17, 'pepe', 'fa fa-glass', 'priority17', 'priority', 'AdminPriority17Controller', 0, 0, '2020-04-13 07:46:04', NULL, '2020-05-25 08:20:26'),
(18, 'Category', 'fa fa-glass', 'category', 'category', 'AdminCategoryController', 0, 0, '2020-04-13 07:56:17', NULL, '2020-05-25 08:20:23'),
(19, 'Ticket', 'fa fa-road', 'ticket', 'ticket', 'AdminTicketController', 0, 0, '2020-04-13 08:17:05', NULL, '2020-05-25 08:20:28'),
(20, 'Province', 'fa fa-glass', 'province', 'province', 'AdminProvinceController', 0, 0, '2020-05-26 03:58:56', NULL, NULL),
(21, 'Region', 'fa fa-glass', 'region', 'region', 'AdminRegionController', 0, 0, '2020-05-26 04:00:38', NULL, NULL),
(22, 'City', 'fa fa-glass', 'city', 'city', 'AdminCityController', 0, 0, '2020-05-26 04:02:43', NULL, NULL),
(23, 'Patient', 'fa fa-glass', 'patient_doctor', 'patient_doctor', 'AdminPatientDoctorController', 0, 0, '2020-05-26 04:03:43', NULL, '2020-05-26 10:09:58'),
(24, 'Services', 'fa fa-glass', 'services', 'services', 'AdminServicesController', 0, 0, '2020-05-26 04:34:17', NULL, '2020-07-14 14:11:29'),
(25, 'Patient', 'fa fa-glass', 'user', 'user', 'AdminUserController', 0, 0, '2020-05-26 04:56:24', NULL, '2020-05-26 10:10:10'),
(26, 'Group User', 'fa fa-glass', 'group_user', 'group_user', 'AdminGroupUserController', 0, 0, '2020-05-26 04:58:50', NULL, '2020-07-14 14:11:21'),
(27, 'Group', 'fa fa-glass', 'group', 'group', 'AdminGroupController', 0, 0, '2020-05-26 05:00:08', NULL, '2020-07-15 08:38:01'),
(28, 'Dermatology', 'fa fa-linkedin-square', 'user28', 'user', 'AdminUser28Controller', 0, 0, '2020-05-26 09:52:44', NULL, NULL),
(29, 'Informatori', 'fa fa-user-secret', 'user29', 'user', 'AdminUser29Controller', 0, 0, '2020-05-26 10:11:07', NULL, NULL),
(30, 'Coupon', 'fa fa-glass', 'coupon_list', 'coupon_list', 'AdminCouponListController', 0, 0, '2020-05-26 11:24:45', NULL, '2020-07-14 11:35:56'),
(31, 'Category', 'fa fa-glass', 'category31', 'category', 'AdminCategory31Controller', 0, 0, '2020-05-26 11:35:30', NULL, NULL),
(32, 'Prueba Dermatologos', 'fa fa-glass', 'user_meta', 'user_meta', 'AdminUserMetaController', 0, 0, '2020-07-13 05:18:30', NULL, '2020-07-14 13:55:48'),
(33, 'Coupon', 'fa fa-glass', 'coupon', 'coupon', 'AdminCouponController', 0, 0, '2020-07-14 11:02:54', NULL, NULL),
(34, 'Elecciones', 'fa fa-glass', 'users34', 'users', 'AdminUsers34Controller', 0, 0, '2020-07-14 13:27:53', NULL, '2020-07-14 13:55:55'),
(35, 'GroupUser', 'fa fa-glass', 'group_user35', 'group_user', 'AdminGroupUser35Controller', 0, 0, '2020-07-14 14:25:14', NULL, '2020-07-14 14:26:27'),
(36, 'Group_Master', 'fa fa-glass', 'group36', 'group', 'AdminGroup36Controller', 0, 0, '2020-07-15 08:31:44', NULL, NULL),
(37, 'group_user', 'fa fa-glass', 'group_user37', 'group_user', 'AdminGroupUser37Controller', 0, 0, '2020-07-15 08:32:27', NULL, '2020-07-15 08:37:56'),
(38, 'pipe_grupo', 'fa fa-glass', 'pipe_grupo', 'group_user', 'AdminPipeGrupoController', 0, 0, '2020-07-15 08:45:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2020-04-13 07:04:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2020-04-13 07:04:39', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2020-04-13 07:04:39', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2020-04-13 07:04:39', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2020-04-13 07:04:39', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2020-04-13 07:04:39', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2020-04-13 07:04:39', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2020-04-13 07:04:39', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2020-04-13 07:04:39', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2020-04-13 07:04:39', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2020-04-13 07:04:39', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2020-04-13 07:04:39', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 38, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2020-04-13 07:04:39', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2020-04-13 07:04:39', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2020-05/735fdc1f6786d55e7d0cfc9e2d60fd9a.jpg', 'upload_image', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2020-04-13 07:04:39', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2020-04-13 07:04:39', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Dermatology', 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2020-04-13 07:04:39', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2020-05/c352db215bb79dabdf930c98c0bba510.png', 'upload_image', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2020-04-13 07:04:39', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2020-04-13 07:04:39', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', '2020-07-14 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL),
(6, 3, 'f9955362464b7e17982728c215ce0ea5', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Dermatologi\",\"icon\":\"person-circle-outline\",\"color\":\"bg-aqua\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `user`\"}', '2020-05-26 05:30:23', NULL),
(7, 3, 'd686d36085ad6df17c097789e0e0a8cd', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Gruppi\",\"icon\":\"add-outline\",\"color\":\"bg-green\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:44', NULL),
(8, 3, '5ca1f80d7d8536dfc1f6b3124a49d0de', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Informatori\",\"icon\":\"time-outline\",\"color\":\"bg-yellow\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:35:55', NULL),
(10, 3, '4dffe176bdeb1039276c09ade4c34a93', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Statistiche Magio 2020\",\"sql\":\"SELECT count(id)  FROM `group`\",\"area_name\":\"Magio 2020\",\"goals\":null}', '2020-05-26 05:45:07', NULL),
(12, 3, '0899aee1b2837503cb719e6c3c6c65b8', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Minuti Usati Oggi\",\"icon\":\"call-outline\",\"color\":\"bg-red\",\"link\":\"\\/\",\"sql\":\"SELECT count(id)  FROM `group`\"}', '2020-05-26 05:53:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active'),
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$jpfpl3LJBI34n2KU0a4eG.qk95QJRNFpSU9ZCWA24Keticc88fdWu', 1, '2020-04-13 07:04:39', NULL, 'Active');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
