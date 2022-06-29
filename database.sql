-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 16, 2021 at 09:45 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martfury`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mphwh3thTndJsFidJyXD4ngpPpPrptWr', 1, '2021-09-16 07:44:26', '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top Slider Image 1', '2026-09-16 00:00:00', 'top-slider-image-1', 'EPCB45FCAQ4C', 'promotion/1.jpg', '/products', 0, 1, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(2, 'Top Slider Image 2', '2026-09-16 00:00:00', 'top-slider-image-2', 'Z17VO0G9VNLO', 'promotion/2.jpg', '/products', 0, 2, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(3, 'Homepage middle 1', '2026-09-16 00:00:00', 'not_set', 'IZ6WU8KUALYD', 'promotion/3.jpg', '/products', 0, 3, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(4, 'Homepage middle 2', '2026-09-16 00:00:00', 'not_set', 'ILSFJVYFGCPZ', 'promotion/4.jpg', '/products', 0, 4, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(5, 'Homepage middle 3', '2026-09-16 00:00:00', 'not_set', 'ZDOZUZZIU7FT', 'promotion/5.jpg', '/products', 0, 5, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(6, 'Homepage big 1', '2026-09-16 00:00:00', 'not_set', 'Q9YDUIC9HSWS', 'promotion/6.jpg', '/products', 0, 6, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(7, 'Homepage bottom small', '2026-09-16 00:00:00', 'not_set', 'HCMKLUG03DKQ', 'promotion/7.jpg', '/products', 0, 7, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(8, 'Product sidebar', '2026-09-16 00:00:00', 'product-sidebar', 'KPRDYJOPKUN5', 'promotion/8.jpg', '/products', 0, 8, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(9, 'Homepage big 2', '2026-09-16 00:00:00', 'not_set', 'IZ6WU8KUALYE', 'promotion/9.jpg', '/products', 0, 9, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(2, 'Fashion', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(3, 'Electronic', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(4, 'Commercial', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-09-16 07:44:23', '2021-09-16 07:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jackie Sporer MD', 'deshawn.watsica@example.com', '+1.206.370.9227', '32326 Bruen Fork\nBinsburgh, OH 08735-9911', 'Laudantium neque aut ut ducimus qui.', 'A explicabo harum velit dolorum laboriosam quas ea omnis. Et neque odit ipsum eveniet. Tempora quibusdam hic perferendis qui culpa eos molestiae. Dolor est dolorum doloribus maxime non beatae. Mollitia eligendi ab laboriosam. Laboriosam ad quibusdam ut reprehenderit dolores quia. Accusantium dignissimos vero dolorum aliquam aliquid mollitia tempore dolorem. Et dicta explicabo voluptatibus quibusdam et. Et ut odio quam nostrum perferendis.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(2, 'Keeley Yost', 'gtowne@example.net', '+1 (806) 971-9397', '60226 Alverta Extensions\nThompsonton, NM 50103', 'Sed labore consequatur quaerat libero.', 'In cumque eum unde quam. Ullam laboriosam consequuntur ea amet ipsa. Ut distinctio aut tempore harum placeat corporis. Et et pariatur eum nobis et. Accusantium nihil quae et nihil consequatur et quaerat. Atque eos quasi minus laborum vel quia. Voluptas voluptatem itaque voluptatem possimus nisi. Sint velit quo ad voluptatem officia aspernatur. Atque mollitia est voluptatem quo nihil fugit enim officia. Voluptatem labore quod impedit rerum.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(3, 'Delta Considine', 'marcos.cummings@example.org', '629.762.4981', '60921 Ledner Isle\nPort Abbybury, MA 06981-1328', 'Sed officiis aut sapiente soluta.', 'Omnis ullam sit ut doloremque quis et ut. Ullam autem voluptatem mollitia quis. Fugit omnis et est odit. Excepturi fugiat debitis nihil nihil sunt molestiae rerum. Voluptas molestiae aut rerum eius maxime. Accusamus omnis voluptas at sit. Et architecto sit deleniti quia. Asperiores aut nisi minima reprehenderit. Aut esse quo mollitia. Molestias et omnis qui. Dignissimos nemo harum alias ducimus expedita est. Sed vel ut dolores eos iure omnis sed reiciendis.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(4, 'Ivy Renner', 'waters.lucile@example.net', '+1-283-565-8886', '808 Madeline Field\nEast Solonborough, TX 13189', 'Exercitationem totam ex animi sapiente ut.', 'Eos quod et nihil autem. Vel enim et natus cum fugiat ut non. Explicabo est natus officia in omnis tempora. Laboriosam pariatur mollitia exercitationem id ipsum et eos. Porro ut minima pariatur et et aut. Asperiores excepturi ut omnis qui. Aut sed molestiae modi qui tempore corporis et qui. Ipsum expedita voluptates laborum dolor. Aliquid reprehenderit ad natus facere consectetur molestias. Rem consequatur molestias quis quis. Et sequi illum fuga est soluta modi vel.', 'read', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(5, 'Ms. Verlie Borer V', 'barton.buddy@example.org', '1-773-608-5048', '7711 Deshawn Drives Suite 999\nVivaport, CA 58280', 'Neque sint nam dolorem.', 'Accusantium et perspiciatis sit dolorem. Et voluptas consequuntur et quasi quisquam. Aut dolor velit impedit recusandae rerum enim qui. Dolores alias autem laboriosam quia magni. Quis omnis illo odit sint atque beatae quia. Ex consectetur quos facilis excepturi sint natus illum. Voluptatum et ipsa accusamus tenetur blanditiis. Adipisci eligendi ea vero neque autem sed. Quaerat assumenda incidunt repellat unde vel ut.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(6, 'Imogene Kassulke', 'moses.larson@example.org', '217-916-5848', '7203 Gerald Forest Suite 651\nBobbymouth, MI 23183', 'Aut ut consequuntur et.', 'Magni et mollitia placeat qui rerum ullam. Non fugiat asperiores perferendis sint quia repudiandae. Consequuntur maiores quis officiis. Aut distinctio qui modi pariatur et ut. Impedit recusandae esse molestiae amet. Sint alias sunt aut nobis eveniet reprehenderit. Vitae officiis rem itaque. Velit consequatur quo neque labore quo veniam.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(7, 'Harmon Donnelly', 'giles35@example.net', '830-944-2114', '85289 Dickinson Run Apt. 538\nRoslynfort, VT 01095-5399', 'Est eos odit est consectetur tempora.', 'Libero saepe omnis et omnis hic praesentium veniam. Eveniet nesciunt earum nulla deleniti explicabo. In voluptatem ut sint fugiat blanditiis sint libero possimus. Ipsum recusandae vel dolore et voluptatibus voluptatem fuga. Quia velit quis dignissimos rerum. A magni aut occaecati quidem non officia asperiores. Iste dolor dolorem consequuntur illo. Dolores modi quod iusto et est culpa quia repudiandae. Architecto expedita beatae vitae consectetur nostrum doloribus.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(8, 'Dena Heidenreich', 'shields.unique@example.com', '+1-984-701-7905', '624 Kaley Mills\nKacitown, ME 32018', 'Atque ex delectus omnis perferendis saepe.', 'Vel tempora nesciunt velit voluptate qui est veritatis maiores. Culpa harum delectus quos quia non. Ut ipsa aut ea inventore in. Optio dicta commodi laudantium officiis pariatur voluptas veniam. Dolores sed hic perspiciatis dolor non beatae consectetur est. Cumque reiciendis doloremque et voluptates est sit occaecati. Inventore eius et provident aliquam a. Dolores ab error illum tempore temporibus et soluta. Deserunt nesciunt molestias deserunt in et voluptatem.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(9, 'Narciso D\'Amore', 'hauck.josefa@example.com', '878-854-5694', '6701 Buckridge Course\nBartellmouth, OR 26715-2785', 'Et aliquid eligendi quis aut asperiores.', 'Alias ad ipsa dolor recusandae facere ipsum consectetur. Quasi ipsa porro nobis accusamus magnam. Fuga rerum vitae eligendi voluptas aut qui corrupti. Quidem optio enim omnis ipsa et modi. Est tenetur ut aut voluptatem. Voluptatem sapiente fugit provident est quam. Et harum voluptate voluptatibus quia adipisci. Veniam nulla velit est autem. Expedita molestiae modi quia similique. Aliquid eaque mollitia harum ut possimus asperiores ut. Accusantium quod dolores rem rerum porro atque aut.', 'read', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(10, 'Prof. Isidro Ferry', 'hank.howell@example.net', '+1-857-530-8448', '364 Jewell Drive\nWittingfurt, NY 69979-2198', 'Quo in qui magnam maxime earum veritatis quos.', 'Est voluptatum consequatur impedit praesentium non beatae amet recusandae. Esse fugiat dolores eos quasi deleniti mollitia ratione. Accusantium adipisci sed placeat mollitia perspiciatis esse perspiciatis. Tempore officiis iusto autem similique non itaque a. Dolore cumque autem facere quae in iure quis in. Numquam impedit autem alias voluptatem ipsam voluptatem esse. Aut alias soluta quisquam culpa amet.', 'unread', '2021-09-16 07:44:19', '2021-09-16 07:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Fashion live', NULL, NULL, 'brands/1.jpg', 'published', 0, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(2, 'Hand crafted', NULL, NULL, 'brands/2.jpg', 'published', 1, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(3, 'Mestonix', NULL, NULL, 'brands/3.jpg', 'published', 2, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(4, 'Sunshine', NULL, NULL, 'brands/4.jpg', 'published', 3, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(5, 'Pure', NULL, NULL, 'brands/5.jpg', 'published', 4, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(6, 'Anfold', NULL, NULL, 'brands/6.jpg', 'published', 5, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(7, 'Automotive', NULL, NULL, 'brands/7.jpg', 'published', 6, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint(3) UNSIGNED DEFAULT '0',
  `order` int(10) UNSIGNED DEFAULT '0',
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 2, 0, 1, 1, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(2, 'EUR', '€', 0, 2, 1, 0, 0.84, '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(3, 'VND', '₫', 0, 0, 2, 0, 23203, '2021-09-16 07:43:52', '2021-09-16 07:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `is_vendor`, `vendor_verified_at`) VALUES
(1, 'Tyrique Bartoletti IV', 'customer@botble.com', '$2y$10$lx3gGQeY22btBPcjbVDkxuiuzXpXIYEOiDUGzV7EXQy9QStOubEte', 'customers/3.jpg', NULL, '+16238215900', NULL, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '2021-09-16 14:44:17', NULL, 0, NULL),
(2, 'Ms. Addison Donnelly', 'vendor@botble.com', '$2y$10$Za3e.8p2x.Wa2eFf5CP94ugWEVE7CFPFeJcYXJwQu8TNlOGPZ/tv2', 'customers/8.jpg', NULL, '+16164158103', NULL, '2021-09-16 07:44:17', '2021-09-16 07:44:28', '2021-09-16 14:44:17', NULL, 1, NULL),
(3, 'Ms. Rachael Bins IV', 'napoleon.shanahan@example.net', '$2y$10$tXDDprIpx38UwVLa.HbEW.X/3r2N6fxJMubcQF24SzXwQhVS8i30.', 'customers/1.jpg', NULL, '+17850307201', NULL, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '2021-09-16 14:44:17', NULL, 0, NULL),
(4, 'David Hagenes', 'victor.hayes@example.org', '$2y$10$d4ArUZXRltshz2JK6CuAf.eJojXfrsyTMkaZ22Qq9ZN6nIBKAvv1C', 'customers/2.jpg', NULL, '+17258233036', NULL, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '2021-09-16 14:44:17', NULL, 0, NULL),
(5, 'Duane Cartwright', 'eli.dietrich@example.net', '$2y$10$yMb.SLHP534yA8DtUoor1OvcilZDVdh4y1.Zt5B62JB1vQS4mrTza', 'customers/3.jpg', NULL, '+13211168863', NULL, '2021-09-16 07:44:18', '2021-09-16 07:44:18', '2021-09-16 14:44:18', NULL, 0, NULL),
(6, 'Mariane Blanda III', 'lindgren.cecil@example.net', '$2y$10$ZwmgAv52LQGTiIPyaoyvSONTX3VJWKPsjdTE/Mhxaw3xEMGLI8aMu', 'customers/4.jpg', NULL, '+16514631136', NULL, '2021-09-16 07:44:18', '2021-09-16 07:44:28', '2021-09-16 14:44:18', NULL, 1, NULL),
(7, 'Prof. Mason Dickens', 'melany.stanton@example.org', '$2y$10$gUNhB9Z3PW3D.6q0kYZyVeJ.a3Srbk7YNhYQjySR/nr.5zoht08/K', 'customers/5.jpg', NULL, '+15188480759', NULL, '2021-09-16 07:44:18', '2021-09-16 07:44:18', '2021-09-16 14:44:18', NULL, 0, NULL),
(8, 'Hans Mitchell', 'medhurst.gerardo@example.net', '$2y$10$u4lndKvpQLXow8K4EqVLg.07HTiVUKwscDpRjYVTsgBj8plVe8ghq', 'customers/6.jpg', NULL, '+14352704544', NULL, '2021-09-16 07:44:19', '2021-09-16 07:44:19', '2021-09-16 14:44:19', NULL, 0, NULL),
(9, 'Prof. Hayley Frami PhD', 'eduardo70@example.com', '$2y$10$DsEt2cgbPPiE.XHMnvcUf.pAXarrvcOIifYFTVg409XY.mma99I72', 'customers/7.jpg', NULL, '+19361947259', NULL, '2021-09-16 07:44:19', '2021-09-16 07:44:29', '2021-09-16 14:44:19', NULL, 1, NULL),
(10, 'Vanessa Bashirian', 'helen81@example.net', '$2y$10$mbQ6AlH5r93gZUoPqYpoQ.6.TXEA/C4KZzSj8hItMK.Ih9lNrp0Mi', 'customers/8.jpg', NULL, '+19510587774', NULL, '2021-09-16 07:44:19', '2021-09-16 07:44:29', '2021-09-16 14:44:19', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Tyrique Bartoletti IV', 'customer@botble.com', '+16613640868', 'LR', 'Indiana', 'Konopelskimouth', '811 Alyson Center', 1, 1, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '23205-3808'),
(2, 'Tyrique Bartoletti IV', 'customer@botble.com', '+18787996824', 'NL', 'Virginia', 'Braedenshire', '54460 Tillman Ridge', 1, 0, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '08479-7781'),
(3, 'Ms. Addison Donnelly', 'vendor@botble.com', '+13103747012', 'RW', 'Maryland', 'Fredericktown', '57207 Carroll Village Suite 502', 2, 1, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '71518-2937'),
(4, 'Ms. Addison Donnelly', 'vendor@botble.com', '+18312136047', 'CF', 'North Carolina', 'South Grace', '20973 Orrin Rest Apt. 126', 2, 0, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '12757-2599'),
(5, 'Ms. Rachael Bins IV', 'napoleon.shanahan@example.net', '+17182234010', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 3, 1, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '81830'),
(6, 'David Hagenes', 'victor.hayes@example.org', '+16816195700', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 4, 1, '2021-09-16 07:44:17', '2021-09-16 07:44:17', '01459'),
(7, 'Duane Cartwright', 'eli.dietrich@example.net', '+18320230532', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 5, 1, '2021-09-16 07:44:18', '2021-09-16 07:44:18', '58516-5928'),
(8, 'Mariane Blanda III', 'lindgren.cecil@example.net', '+14340006044', 'MM', 'Wyoming', 'Salvadorville', '68126 Rosemary Junction Apt. 260', 6, 1, '2021-09-16 07:44:18', '2021-09-16 07:44:18', '86088-1268'),
(9, 'Prof. Mason Dickens', 'melany.stanton@example.org', '+19860449117', 'KE', 'Kansas', 'Ashleyland', '559 Newell Village Apt. 914', 7, 1, '2021-09-16 07:44:18', '2021-09-16 07:44:18', '57443-1977'),
(10, 'Hans Mitchell', 'medhurst.gerardo@example.net', '+15205695573', 'WF', 'New Hampshire', 'Camylleshire', '5357 Graham Mount', 8, 1, '2021-09-16 07:44:19', '2021-09-16 07:44:19', '59292-7162'),
(11, 'Prof. Hayley Frami PhD', 'eduardo70@example.com', '+14694256646', 'ML', 'Florida', 'South Nasir', '53445 Salvatore Curve', 9, 1, '2021-09-16 07:44:19', '2021-09-16 07:44:19', '52972'),
(12, 'Vanessa Bashirian', 'helen81@example.net', '+18286090874', 'TR', 'South Dakota', 'East Larueton', '2974 Palma Hollow Apt. 332', 10, 1, '2021-09-16 07:44:19', '2021-09-16 07:44:19', '21096');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Winter Sale', '2021-10-16 00:00:00', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 1, 69.015, 6, 3),
(1, 2, 18.63, 13, 5),
(1, 3, 9.2, 12, 2),
(1, 4, 277.536, 13, 4),
(1, 5, 669.6, 10, 1),
(1, 6, 351.45, 14, 2),
(1, 7, 395.3, 9, 5),
(1, 8, 256.044, 7, 3),
(1, 9, 253.82, 16, 4),
(1, 10, 720.72, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`, `store_id`) VALUES
(1, 1, '1', 'default', 'pending', '2574.00', '99.00', '0.00', NULL, NULL, '0.00', '2475.00', 1, NULL, 1, 'nnBFK1wiLItLBifmGJk7nTmSwmNKh', 1, '2021-09-01 07:44:29', '2021-09-16 07:44:29', 2),
(2, 1, '1', 'default', 'pending', '569.80', '51.80', '0.00', NULL, NULL, '0.00', '518.00', 1, NULL, 1, 'ylivYAS5yLaH3Ts9Sf9CS2VbccMVx', 2, '2021-09-02 23:44:30', '2021-09-16 07:44:30', 1),
(3, 1, '1', 'default', 'completed', '2436.00', '116.00', '0.00', NULL, NULL, '0.00', '2320.00', 1, NULL, 1, 'jOt0WJWHAclL9DESkKnqEfhd1zJCV', 3, '2021-09-12 23:44:30', '2021-09-16 07:44:31', 3),
(4, 5, '1', 'default', 'completed', '2358.30', '112.30', '0.00', NULL, NULL, '0.00', '2246.00', 1, NULL, 1, 'J9fm5yq0q8oPSKDgysRnsxtH0vd2o', 4, '2021-09-11 13:44:30', '2021-09-16 07:44:31', 2),
(5, 5, '1', 'default', 'pending', '5377.40', '239.40', '0.00', NULL, NULL, '0.00', '5138.00', 1, NULL, 1, 'NW5jTnW59UlcfSBQGVOTMu2KyEQWX', 5, '2021-09-14 17:44:30', '2021-09-16 07:44:30', 4),
(6, 1, '1', 'default', 'completed', '565.40', '51.40', '0.00', NULL, NULL, '0.00', '514.00', 1, NULL, 1, 'TYgXr9tgApr1hrY2BD52q08qWCKG8', 6, '2021-09-02 19:44:30', '2021-09-16 07:44:32', 4),
(7, 1, '1', 'default', 'pending', '1276.00', '116.00', '0.00', NULL, NULL, '0.00', '1160.00', 1, NULL, 1, 'gJCNjCZTysaJo6JNEqgtMafxqWwPb', 7, '2021-09-04 07:44:30', '2021-09-16 07:44:30', 3),
(8, 5, '1', 'default', 'completed', '44.55', '4.05', '0.00', NULL, NULL, '0.00', '40.50', 1, NULL, 1, '2WFYt9uBEVPvQ7auyCp8pTceHckQU', 8, '2021-09-13 11:44:30', '2021-09-16 07:44:33', 3),
(9, 5, '1', 'default', 'pending', '2353.50', '147.50', '0.00', NULL, NULL, '0.00', '2206.00', 1, NULL, 1, 'evXtIW2dhvO5j6TJdKNlPpiciSkMe', 9, '2021-09-07 19:44:30', '2021-09-16 07:44:30', 2),
(10, 5, '1', 'default', 'completed', '1079.40', '51.40', '0.00', NULL, NULL, '0.00', '1028.00', 1, NULL, 1, 'mahbmIvWFOj0PTSv2tZafdr7wEm9k', 10, '2021-09-09 05:44:30', '2021-09-16 07:44:33', 4),
(11, 8, '1', 'default', 'pending', '2709.00', '129.00', '0.00', NULL, NULL, '0.00', '2580.00', 1, NULL, 1, 'vo5GDag5i7j918Uzroyx6EOsdbXiq', 11, '2021-09-02 23:44:30', '2021-09-16 07:44:30', 3),
(12, 8, '1', 'default', 'completed', '1670.90', '53.90', '0.00', NULL, NULL, '0.00', '1617.00', 1, NULL, 1, 'MfZgNMmmPOGN4KOncZ0FW6PdNNpsG', 12, '2021-09-10 23:44:30', '2021-09-16 07:44:34', 4),
(13, 3, '1', 'default', 'pending', '125.55', '4.05', '0.00', NULL, NULL, '0.00', '121.50', 1, NULL, 1, 'fHCoJMDJdnKUJCNj7E1pRiTIOn2Az', 13, '2021-09-10 01:44:30', '2021-09-16 07:44:30', 3),
(14, 3, '1', 'default', 'pending', '2873.70', '92.70', '0.00', NULL, NULL, '0.00', '2781.00', 1, NULL, 1, 'Gj3CnEzSosUybi2Gcwwjep3jLfXY2', 14, '2021-09-07 13:44:30', '2021-09-16 07:44:30', 4),
(15, 4, '1', 'default', 'pending', '4586.90', '166.90', '0.00', NULL, NULL, '0.00', '4420.00', 1, NULL, 1, 'fHMsFA29sSbXQEt6SJ5NV5Puy3TAs', 15, '2021-09-09 07:44:30', '2021-09-16 07:44:30', 2),
(16, 4, '1', 'default', 'pending', '1131.90', '53.90', '0.00', NULL, NULL, '0.00', '1078.00', 1, NULL, 1, 'dKsYlgThBHw6rYFxLa5dwmysYJQpR', 16, '2021-09-05 19:44:30', '2021-09-16 07:44:30', 4),
(17, 4, '1', 'default', 'pending', '170.10', '8.10', '0.00', NULL, NULL, '0.00', '162.00', 1, NULL, 1, '9UDZGB7vQVsKVGQZBwO027ThRFm56', 17, '2021-09-08 17:44:30', '2021-09-16 07:44:30', 3),
(18, 4, '1', 'default', 'pending', '649.00', '59.00', '0.00', NULL, NULL, '0.00', '590.00', 1, NULL, 1, 'wxYCZn9f5IU0lHG19f3RcLhSXhtUr', 18, '2021-09-09 19:44:30', '2021-09-16 07:44:30', 4),
(19, 4, '1', 'default', 'completed', '569.80', '51.80', '0.00', NULL, NULL, '0.00', '518.00', 1, NULL, 1, 'nSpgjJIuhcnly9yRWEM4mZP1tTKO0', 19, '2021-09-06 13:44:30', '2021-09-16 07:44:34', 1),
(20, 4, '1', 'default', 'pending', '2709.00', '129.00', '0.00', NULL, NULL, '0.00', '2580.00', 1, NULL, 1, 'LDfce8e8sSuIgB4fV321ZhkwraGfC', 20, '2021-09-13 07:44:30', '2021-09-16 07:44:30', 3),
(21, 4, '1', 'default', 'completed', '645.70', '58.70', '0.00', NULL, NULL, '0.00', '587.00', 1, NULL, 1, 'rBq3n1RkhfHEgItN9Ot82dgwarTZZ', 21, '2021-09-14 07:44:30', '2021-09-16 07:44:35', 2),
(22, 3, '1', 'default', 'completed', '1415.70', '128.70', '0.00', NULL, NULL, '0.00', '1287.00', 1, NULL, 1, 'I9gvqebUZCLH3A7zd2M7MGXxKi0kV', 22, '2021-09-08 23:44:30', '2021-09-16 07:44:36', 3),
(23, 3, '1', 'default', 'pending', '1131.90', '53.90', '0.00', NULL, NULL, '0.00', '1078.00', 1, NULL, 1, 'rQXCcHkPm3aYtfOx9jRTnoKfYJZf6', 23, '2021-09-09 21:44:30', '2021-09-16 07:44:30', 4),
(24, 7, '1', 'default', 'pending', '62.00', '2.00', '0.00', NULL, NULL, '0.00', '60.00', 1, NULL, 1, 'AbfnRtJJbF6pZTZhumfToCWkQ0rtN', 24, '2021-09-09 15:44:30', '2021-09-16 07:44:30', 1),
(25, 7, '1', 'default', 'pending', '6903.80', '268.80', '0.00', NULL, NULL, '0.00', '6635.00', 1, NULL, 1, 'XRvejDNbVVVT1Tc10eBl8mSKntPQ4', 25, '2021-09-13 19:44:30', '2021-09-16 07:44:30', 4),
(26, 4, '1', 'default', 'completed', '3999.00', '129.00', '0.00', NULL, NULL, '0.00', '3870.00', 1, NULL, 1, 'hALAMdxXXBcZquYmmqMPP0jQSU6ul', 26, '2021-09-09 13:44:30', '2021-09-16 07:44:36', 3),
(27, 4, '1', 'default', 'pending', '1232.70', '58.70', '0.00', NULL, NULL, '0.00', '1174.00', 1, NULL, 1, 'JSU8TgmySOHNZmrFjet8RFlB3g27o', 27, '2021-09-11 01:44:30', '2021-09-16 07:44:30', 2),
(28, 4, '1', 'default', 'completed', '2840.20', '195.20', '0.00', NULL, NULL, '0.00', '2645.00', 1, NULL, 1, 'JLWQPwStB9LmOS4KdY8NHGGAEVBlU', 28, '2021-09-14 19:44:30', '2021-09-16 07:44:37', 4),
(29, 3, '1', 'default', 'completed', '248.78', '8.03', '0.00', NULL, NULL, '0.00', '240.75', 1, NULL, 1, 'GOsVGf8vlsvdCpWC96eVOpMFXdIRO', 29, '2021-09-10 23:44:30', '2021-09-16 07:44:37', 4),
(30, 3, '1', 'default', 'pending', '1039.50', '49.50', '0.00', NULL, NULL, '0.00', '990.00', 1, NULL, 1, 'Bb7UK2ARGqU45AVylJwXv5UCBngxj', 30, '2021-09-14 07:44:30', '2021-09-16 07:44:30', 2),
(31, 5, '1', 'default', 'pending', '1534.50', '49.50', '0.00', NULL, NULL, '0.00', '1485.00', 1, NULL, 1, 'U4TkFPg5DmQVDKLzq7u2BtlZzVM1g', 31, '2021-09-12 05:44:30', '2021-09-16 07:44:30', 2),
(32, 5, '1', 'default', 'pending', '1415.70', '128.70', '0.00', NULL, NULL, '0.00', '1287.00', 1, NULL, 1, '1GHETq9O4vH41upWjT5Rcs8HeyXhE', 32, '2021-09-13 23:44:30', '2021-09-16 07:44:30', 3),
(33, 4, '1', 'default', 'pending', '22.00', '2.00', '0.00', NULL, NULL, '0.00', '20.00', 1, NULL, 1, 'YyTTXs3gzHQYmGk5eorcNWYXASHk4', 33, '2021-09-15 19:44:30', '2021-09-16 07:44:30', 1),
(34, 4, '1', 'default', 'pending', '600.60', '54.60', '0.00', NULL, NULL, '0.00', '546.00', 1, NULL, 1, 'f49WuBvGl6PUTxDk6XwanSUnEAX9F', 34, '2021-09-14 07:44:30', '2021-09-16 07:44:30', 2),
(35, 4, '1', 'default', 'completed', '3902.90', '125.90', '0.00', NULL, NULL, '0.00', '3777.00', 1, NULL, 1, 'WFVz9UqWgFzrLNAWJTlSc48nnyaDO', 35, '2021-09-15 19:44:30', '2021-09-16 07:44:38', 4),
(36, 7, '1', 'default', 'completed', '4084.05', '133.05', '0.00', NULL, NULL, '0.00', '3951.00', 1, NULL, 1, 'EO3RNhbLsCW8BBof80PyF9JcGcJ0Y', 36, '2021-09-15 01:44:30', '2021-09-16 07:44:39', 3),
(37, 7, '1', 'default', 'completed', '1131.90', '53.90', '0.00', NULL, NULL, '0.00', '1078.00', 1, NULL, 1, 'SUXJ4RUwJh2XBtjazYromRgjlxD84', 37, '2021-09-14 05:44:30', '2021-09-16 07:44:39', 4),
(38, 5, '1', 'default', 'pending', '85.05', '4.05', '0.00', NULL, NULL, '0.00', '81.00', 1, NULL, 1, 'V5RkpcXyJO6zwzA7UbBEyuou9oHo8', 38, '2021-09-13 07:44:31', '2021-09-16 07:44:31', 3),
(39, 5, '1', 'default', 'pending', '2421.90', '112.90', '0.00', NULL, NULL, '0.00', '2309.00', 1, NULL, 1, 'V8LpmuxdlzF6HXuURA3oHE5NWFzKM', 39, '2021-09-15 15:44:31', '2021-09-16 07:44:31', 4),
(40, 5, '1', 'default', 'pending', '1232.70', '58.70', '0.00', NULL, NULL, '0.00', '1174.00', 1, NULL, 1, 'qtDBDEU8JfJJuv8ekSP6LceYuIdcC', 40, '2021-09-12 23:44:31', '2021-09-16 07:44:31', 2),
(41, 8, '1', 'default', 'pending', '3354.20', '108.20', '0.00', NULL, NULL, '0.00', '3246.00', 1, NULL, 1, 'XyVGc9Slj1jmM8TO5N6C2GrNdpABk', 41, '2021-09-14 19:44:31', '2021-09-16 07:44:31', 2),
(42, 8, '1', 'default', 'completed', '2709.00', '129.00', '0.00', NULL, NULL, '0.00', '2580.00', 1, NULL, 1, 'i2Y8xkvE0bTfltbhA9nlcrlKHm1RH', 42, '2021-09-13 19:44:31', '2021-09-16 07:44:40', 3),
(43, 8, '1', 'default', 'pending', '1559.30', '50.30', '0.00', NULL, NULL, '0.00', '1509.00', 1, NULL, 1, 'eGovTnWhY46dvh5F0WWyyarinH2Xu', 43, '2021-09-15 01:44:31', '2021-09-16 07:44:31', 1),
(44, 5, '1', 'default', 'completed', '2601.90', '123.90', '0.00', NULL, NULL, '0.00', '2478.00', 1, NULL, 1, 'Jcayisvi6WzS7vkFzm6nZqqwlajvZ', 44, '2021-09-14 23:44:31', '2021-09-16 07:44:40', 2),
(45, 7, '1', 'default', 'completed', '4520.80', '161.80', '0.00', NULL, NULL, '0.00', '4359.00', 1, NULL, 1, 'IfdmfoIKgnOBvtdCbJ9ZPkg4O0AlZ', 45, '2021-09-16 03:44:31', '2021-09-16 07:44:41', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(1, 'Tyrique Bartoletti IV', '+16613640868', 'customer@botble.com', 'LR', 'Indiana', 'Konopelskimouth', '811 Alyson Center', 1, '23205-3808'),
(2, 'Tyrique Bartoletti IV', '+16613640868', 'customer@botble.com', 'LR', 'Indiana', 'Konopelskimouth', '811 Alyson Center', 2, '23205-3808'),
(3, 'Tyrique Bartoletti IV', '+16613640868', 'customer@botble.com', 'LR', 'Indiana', 'Konopelskimouth', '811 Alyson Center', 3, '23205-3808'),
(4, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 4, '58516-5928'),
(5, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 5, '58516-5928'),
(6, 'Tyrique Bartoletti IV', '+16613640868', 'customer@botble.com', 'LR', 'Indiana', 'Konopelskimouth', '811 Alyson Center', 6, '23205-3808'),
(7, 'Tyrique Bartoletti IV', '+16613640868', 'customer@botble.com', 'LR', 'Indiana', 'Konopelskimouth', '811 Alyson Center', 7, '23205-3808'),
(8, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 8, '58516-5928'),
(9, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 9, '58516-5928'),
(10, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 10, '58516-5928'),
(11, 'Hans Mitchell', '+15205695573', 'medhurst.gerardo@example.net', 'WF', 'New Hampshire', 'Camylleshire', '5357 Graham Mount', 11, '59292-7162'),
(12, 'Hans Mitchell', '+15205695573', 'medhurst.gerardo@example.net', 'WF', 'New Hampshire', 'Camylleshire', '5357 Graham Mount', 12, '59292-7162'),
(13, 'Ms. Rachael Bins IV', '+17182234010', 'napoleon.shanahan@example.net', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 13, '81830'),
(14, 'Ms. Rachael Bins IV', '+17182234010', 'napoleon.shanahan@example.net', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 14, '81830'),
(15, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 15, '01459'),
(16, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 16, '01459'),
(17, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 17, '01459'),
(18, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 18, '01459'),
(19, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 19, '01459'),
(20, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 20, '01459'),
(21, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 21, '01459'),
(22, 'Ms. Rachael Bins IV', '+17182234010', 'napoleon.shanahan@example.net', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 22, '81830'),
(23, 'Ms. Rachael Bins IV', '+17182234010', 'napoleon.shanahan@example.net', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 23, '81830'),
(24, 'Prof. Mason Dickens', '+19860449117', 'melany.stanton@example.org', 'KE', 'Kansas', 'Ashleyland', '559 Newell Village Apt. 914', 24, '57443-1977'),
(25, 'Prof. Mason Dickens', '+19860449117', 'melany.stanton@example.org', 'KE', 'Kansas', 'Ashleyland', '559 Newell Village Apt. 914', 25, '57443-1977'),
(26, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 26, '01459'),
(27, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 27, '01459'),
(28, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 28, '01459'),
(29, 'Ms. Rachael Bins IV', '+17182234010', 'napoleon.shanahan@example.net', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 29, '81830'),
(30, 'Ms. Rachael Bins IV', '+17182234010', 'napoleon.shanahan@example.net', 'SE', 'Virginia', 'North Elmerchester', '640 Lempi Estate', 30, '81830'),
(31, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 31, '58516-5928'),
(32, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 32, '58516-5928'),
(33, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 33, '01459'),
(34, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 34, '01459'),
(35, 'David Hagenes', '+16816195700', 'victor.hayes@example.org', 'HN', 'Connecticut', 'Schneidertown', '786 Wilderman Walks Apt. 300', 35, '01459'),
(36, 'Prof. Mason Dickens', '+19860449117', 'melany.stanton@example.org', 'KE', 'Kansas', 'Ashleyland', '559 Newell Village Apt. 914', 36, '57443-1977'),
(37, 'Prof. Mason Dickens', '+19860449117', 'melany.stanton@example.org', 'KE', 'Kansas', 'Ashleyland', '559 Newell Village Apt. 914', 37, '57443-1977'),
(38, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 38, '58516-5928'),
(39, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 39, '58516-5928'),
(40, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 40, '58516-5928'),
(41, 'Hans Mitchell', '+15205695573', 'medhurst.gerardo@example.net', 'WF', 'New Hampshire', 'Camylleshire', '5357 Graham Mount', 41, '59292-7162'),
(42, 'Hans Mitchell', '+15205695573', 'medhurst.gerardo@example.net', 'WF', 'New Hampshire', 'Camylleshire', '5357 Graham Mount', 42, '59292-7162'),
(43, 'Hans Mitchell', '+15205695573', 'medhurst.gerardo@example.net', 'WF', 'New Hampshire', 'Camylleshire', '5357 Graham Mount', 43, '59292-7162'),
(44, 'Duane Cartwright', '+18320230532', 'eli.dietrich@example.net', 'CX', 'Rhode Island', 'New Ashtynchester', '44910 Luella Valley', 44, '58516-5928'),
(45, 'Prof. Mason Dickens', '+19860449117', 'melany.stanton@example.org', 'KE', 'Kansas', 'Ashleyland', '559 Newell Village Apt. 914', 45, '57443-1977');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(1, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 1, NULL, '2021-09-01 07:44:29', '2021-09-01 07:44:29'),
(2, 'confirm_order', 'Order was verified by %user_name%', 0, 1, NULL, '2021-09-01 07:44:29', '2021-09-01 07:44:29'),
(3, 'create_shipment', 'Created shipment for order', 0, 1, NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(4, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(5, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 2, NULL, '2021-09-02 23:44:30', '2021-09-02 23:44:30'),
(6, 'confirm_order', 'Order was verified by %user_name%', 0, 2, NULL, '2021-09-02 23:44:30', '2021-09-02 23:44:30'),
(7, 'confirm_payment', 'Payment was confirmed (amount $569.80) by %user_name%', 0, 2, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(8, 'create_shipment', 'Created shipment for order', 0, 2, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(9, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 3, NULL, '2021-09-12 23:44:30', '2021-09-12 23:44:30'),
(10, 'confirm_order', 'Order was verified by %user_name%', 0, 3, NULL, '2021-09-12 23:44:30', '2021-09-12 23:44:30'),
(11, 'confirm_payment', 'Payment was confirmed (amount $2,436.00) by %user_name%', 0, 3, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(12, 'create_shipment', 'Created shipment for order', 0, 3, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(13, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(14, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 4, NULL, '2021-09-11 13:44:30', '2021-09-11 13:44:30'),
(15, 'confirm_order', 'Order was verified by %user_name%', 0, 4, NULL, '2021-09-11 13:44:30', '2021-09-11 13:44:30'),
(16, 'confirm_payment', 'Payment was confirmed (amount $2,358.30) by %user_name%', 0, 4, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(17, 'create_shipment', 'Created shipment for order', 0, 4, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(18, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(19, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 5, NULL, '2021-09-14 17:44:30', '2021-09-14 17:44:30'),
(20, 'confirm_order', 'Order was verified by %user_name%', 0, 5, NULL, '2021-09-14 17:44:30', '2021-09-14 17:44:30'),
(21, 'confirm_payment', 'Payment was confirmed (amount $5,377.40) by %user_name%', 0, 5, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(22, 'create_shipment', 'Created shipment for order', 0, 5, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(23, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 6, NULL, '2021-09-02 19:44:30', '2021-09-02 19:44:30'),
(24, 'confirm_order', 'Order was verified by %user_name%', 0, 6, NULL, '2021-09-02 19:44:30', '2021-09-02 19:44:30'),
(25, 'confirm_payment', 'Payment was confirmed (amount $565.40) by %user_name%', 0, 6, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(26, 'create_shipment', 'Created shipment for order', 0, 6, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(27, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(28, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 7, NULL, '2021-09-04 07:44:30', '2021-09-04 07:44:30'),
(29, 'confirm_order', 'Order was verified by %user_name%', 0, 7, NULL, '2021-09-04 07:44:30', '2021-09-04 07:44:30'),
(30, 'create_shipment', 'Created shipment for order', 0, 7, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(31, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 8, NULL, '2021-09-13 11:44:30', '2021-09-13 11:44:30'),
(32, 'confirm_order', 'Order was verified by %user_name%', 0, 8, NULL, '2021-09-13 11:44:30', '2021-09-13 11:44:30'),
(33, 'confirm_payment', 'Payment was confirmed (amount $44.55) by %user_name%', 0, 8, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(34, 'create_shipment', 'Created shipment for order', 0, 8, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(35, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(36, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 9, NULL, '2021-09-07 19:44:30', '2021-09-07 19:44:30'),
(37, 'confirm_order', 'Order was verified by %user_name%', 0, 9, NULL, '2021-09-07 19:44:30', '2021-09-07 19:44:30'),
(38, 'confirm_payment', 'Payment was confirmed (amount $2,353.50) by %user_name%', 0, 9, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(39, 'create_shipment', 'Created shipment for order', 0, 9, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(40, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 10, NULL, '2021-09-09 05:44:30', '2021-09-09 05:44:30'),
(41, 'confirm_order', 'Order was verified by %user_name%', 0, 10, NULL, '2021-09-09 05:44:30', '2021-09-09 05:44:30'),
(42, 'confirm_payment', 'Payment was confirmed (amount $1,079.40) by %user_name%', 0, 10, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(43, 'create_shipment', 'Created shipment for order', 0, 10, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(44, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(45, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 11, NULL, '2021-09-02 23:44:30', '2021-09-02 23:44:30'),
(46, 'confirm_order', 'Order was verified by %user_name%', 0, 11, NULL, '2021-09-02 23:44:30', '2021-09-02 23:44:30'),
(47, 'confirm_payment', 'Payment was confirmed (amount $2,709.00) by %user_name%', 0, 11, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(48, 'create_shipment', 'Created shipment for order', 0, 11, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(49, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 12, NULL, '2021-09-10 23:44:30', '2021-09-10 23:44:30'),
(50, 'confirm_order', 'Order was verified by %user_name%', 0, 12, NULL, '2021-09-10 23:44:30', '2021-09-10 23:44:30'),
(51, 'confirm_payment', 'Payment was confirmed (amount $1,670.90) by %user_name%', 0, 12, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(52, 'create_shipment', 'Created shipment for order', 0, 12, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(53, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(54, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 13, NULL, '2021-09-10 01:44:30', '2021-09-10 01:44:30'),
(55, 'confirm_order', 'Order was verified by %user_name%', 0, 13, NULL, '2021-09-10 01:44:30', '2021-09-10 01:44:30'),
(56, 'confirm_payment', 'Payment was confirmed (amount $125.55) by %user_name%', 0, 13, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(57, 'create_shipment', 'Created shipment for order', 0, 13, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(58, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 14, NULL, '2021-09-07 13:44:30', '2021-09-07 13:44:30'),
(59, 'confirm_order', 'Order was verified by %user_name%', 0, 14, NULL, '2021-09-07 13:44:30', '2021-09-07 13:44:30'),
(60, 'create_shipment', 'Created shipment for order', 0, 14, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(61, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 15, NULL, '2021-09-09 07:44:30', '2021-09-09 07:44:30'),
(62, 'confirm_order', 'Order was verified by %user_name%', 0, 15, NULL, '2021-09-09 07:44:30', '2021-09-09 07:44:30'),
(63, 'create_shipment', 'Created shipment for order', 0, 15, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(64, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(65, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 16, NULL, '2021-09-05 19:44:30', '2021-09-05 19:44:30'),
(66, 'confirm_order', 'Order was verified by %user_name%', 0, 16, NULL, '2021-09-05 19:44:30', '2021-09-05 19:44:30'),
(67, 'create_shipment', 'Created shipment for order', 0, 16, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(68, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 17, NULL, '2021-09-08 17:44:30', '2021-09-08 17:44:30'),
(69, 'confirm_order', 'Order was verified by %user_name%', 0, 17, NULL, '2021-09-08 17:44:30', '2021-09-08 17:44:30'),
(70, 'create_shipment', 'Created shipment for order', 0, 17, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(71, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(72, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 18, NULL, '2021-09-09 19:44:30', '2021-09-09 19:44:30'),
(73, 'confirm_order', 'Order was verified by %user_name%', 0, 18, NULL, '2021-09-09 19:44:30', '2021-09-09 19:44:30'),
(74, 'create_shipment', 'Created shipment for order', 0, 18, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(75, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(76, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 19, NULL, '2021-09-06 13:44:30', '2021-09-06 13:44:30'),
(77, 'confirm_order', 'Order was verified by %user_name%', 0, 19, NULL, '2021-09-06 13:44:30', '2021-09-06 13:44:30'),
(78, 'confirm_payment', 'Payment was confirmed (amount $569.80) by %user_name%', 0, 19, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(79, 'create_shipment', 'Created shipment for order', 0, 19, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(80, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(81, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 20, NULL, '2021-09-13 07:44:30', '2021-09-13 07:44:30'),
(82, 'confirm_order', 'Order was verified by %user_name%', 0, 20, NULL, '2021-09-13 07:44:30', '2021-09-13 07:44:30'),
(83, 'create_shipment', 'Created shipment for order', 0, 20, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(84, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 21, NULL, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(85, 'confirm_order', 'Order was verified by %user_name%', 0, 21, NULL, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(86, 'confirm_payment', 'Payment was confirmed (amount $645.70) by %user_name%', 0, 21, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(87, 'create_shipment', 'Created shipment for order', 0, 21, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(88, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 21, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(89, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 22, NULL, '2021-09-08 23:44:30', '2021-09-08 23:44:30'),
(90, 'confirm_order', 'Order was verified by %user_name%', 0, 22, NULL, '2021-09-08 23:44:30', '2021-09-08 23:44:30'),
(91, 'confirm_payment', 'Payment was confirmed (amount $1,415.70) by %user_name%', 0, 22, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(92, 'create_shipment', 'Created shipment for order', 0, 22, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(93, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 22, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(94, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 23, NULL, '2021-09-09 21:44:30', '2021-09-09 21:44:30'),
(95, 'confirm_order', 'Order was verified by %user_name%', 0, 23, NULL, '2021-09-09 21:44:30', '2021-09-09 21:44:30'),
(96, 'confirm_payment', 'Payment was confirmed (amount $1,131.90) by %user_name%', 0, 23, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(97, 'create_shipment', 'Created shipment for order', 0, 23, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(98, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 24, NULL, '2021-09-09 15:44:30', '2021-09-09 15:44:30'),
(99, 'confirm_order', 'Order was verified by %user_name%', 0, 24, NULL, '2021-09-09 15:44:30', '2021-09-09 15:44:30'),
(100, 'confirm_payment', 'Payment was confirmed (amount $62.00) by %user_name%', 0, 24, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(101, 'create_shipment', 'Created shipment for order', 0, 24, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(102, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 25, NULL, '2021-09-13 19:44:30', '2021-09-13 19:44:30'),
(103, 'confirm_order', 'Order was verified by %user_name%', 0, 25, NULL, '2021-09-13 19:44:30', '2021-09-13 19:44:30'),
(104, 'confirm_payment', 'Payment was confirmed (amount $6,903.80) by %user_name%', 0, 25, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(105, 'create_shipment', 'Created shipment for order', 0, 25, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(106, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 26, NULL, '2021-09-09 13:44:30', '2021-09-09 13:44:30'),
(107, 'confirm_order', 'Order was verified by %user_name%', 0, 26, NULL, '2021-09-09 13:44:30', '2021-09-09 13:44:30'),
(108, 'confirm_payment', 'Payment was confirmed (amount $3,999.00) by %user_name%', 0, 26, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(109, 'create_shipment', 'Created shipment for order', 0, 26, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(110, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 26, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(111, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 27, NULL, '2021-09-11 01:44:30', '2021-09-11 01:44:30'),
(112, 'confirm_order', 'Order was verified by %user_name%', 0, 27, NULL, '2021-09-11 01:44:30', '2021-09-11 01:44:30'),
(113, 'create_shipment', 'Created shipment for order', 0, 27, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(114, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 28, NULL, '2021-09-14 19:44:30', '2021-09-14 19:44:30'),
(115, 'confirm_order', 'Order was verified by %user_name%', 0, 28, NULL, '2021-09-14 19:44:30', '2021-09-14 19:44:30'),
(116, 'confirm_payment', 'Payment was confirmed (amount $2,840.20) by %user_name%', 0, 28, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(117, 'create_shipment', 'Created shipment for order', 0, 28, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(118, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 28, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(119, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 29, NULL, '2021-09-10 23:44:30', '2021-09-10 23:44:30'),
(120, 'confirm_order', 'Order was verified by %user_name%', 0, 29, NULL, '2021-09-10 23:44:30', '2021-09-10 23:44:30'),
(121, 'confirm_payment', 'Payment was confirmed (amount $248.78) by %user_name%', 0, 29, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(122, 'create_shipment', 'Created shipment for order', 0, 29, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(123, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 29, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(124, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 30, NULL, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(125, 'confirm_order', 'Order was verified by %user_name%', 0, 30, NULL, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(126, 'create_shipment', 'Created shipment for order', 0, 30, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(127, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 31, NULL, '2021-09-12 05:44:30', '2021-09-12 05:44:30'),
(128, 'confirm_order', 'Order was verified by %user_name%', 0, 31, NULL, '2021-09-12 05:44:30', '2021-09-12 05:44:30'),
(129, 'confirm_payment', 'Payment was confirmed (amount $1,534.50) by %user_name%', 0, 31, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(130, 'create_shipment', 'Created shipment for order', 0, 31, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(131, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 32, NULL, '2021-09-13 23:44:30', '2021-09-13 23:44:30'),
(132, 'confirm_order', 'Order was verified by %user_name%', 0, 32, NULL, '2021-09-13 23:44:30', '2021-09-13 23:44:30'),
(133, 'confirm_payment', 'Payment was confirmed (amount $1,415.70) by %user_name%', 0, 32, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(134, 'create_shipment', 'Created shipment for order', 0, 32, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(135, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 33, NULL, '2021-09-15 19:44:30', '2021-09-15 19:44:30'),
(136, 'confirm_order', 'Order was verified by %user_name%', 0, 33, NULL, '2021-09-15 19:44:30', '2021-09-15 19:44:30'),
(137, 'confirm_payment', 'Payment was confirmed (amount $22.00) by %user_name%', 0, 33, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(138, 'create_shipment', 'Created shipment for order', 0, 33, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(139, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 34, NULL, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(140, 'confirm_order', 'Order was verified by %user_name%', 0, 34, NULL, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(141, 'confirm_payment', 'Payment was confirmed (amount $600.60) by %user_name%', 0, 34, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(142, 'create_shipment', 'Created shipment for order', 0, 34, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(143, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 35, NULL, '2021-09-15 19:44:30', '2021-09-15 19:44:30'),
(144, 'confirm_order', 'Order was verified by %user_name%', 0, 35, NULL, '2021-09-15 19:44:30', '2021-09-15 19:44:30'),
(145, 'confirm_payment', 'Payment was confirmed (amount $3,902.90) by %user_name%', 0, 35, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(146, 'create_shipment', 'Created shipment for order', 0, 35, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(147, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 35, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(148, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 36, NULL, '2021-09-15 01:44:30', '2021-09-15 01:44:30'),
(149, 'confirm_order', 'Order was verified by %user_name%', 0, 36, NULL, '2021-09-15 01:44:30', '2021-09-15 01:44:30'),
(150, 'confirm_payment', 'Payment was confirmed (amount $4,084.05) by %user_name%', 0, 36, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(151, 'create_shipment', 'Created shipment for order', 0, 36, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(152, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 36, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(153, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 37, NULL, '2021-09-14 05:44:30', '2021-09-14 05:44:30'),
(154, 'confirm_order', 'Order was verified by %user_name%', 0, 37, NULL, '2021-09-14 05:44:30', '2021-09-14 05:44:30'),
(155, 'confirm_payment', 'Payment was confirmed (amount $1,131.90) by %user_name%', 0, 37, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(156, 'create_shipment', 'Created shipment for order', 0, 37, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(157, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 37, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(158, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 38, NULL, '2021-09-13 07:44:31', '2021-09-13 07:44:31'),
(159, 'confirm_order', 'Order was verified by %user_name%', 0, 38, NULL, '2021-09-13 07:44:31', '2021-09-13 07:44:31'),
(160, 'confirm_payment', 'Payment was confirmed (amount $85.05) by %user_name%', 0, 38, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(161, 'create_shipment', 'Created shipment for order', 0, 38, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(162, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 39, NULL, '2021-09-15 15:44:31', '2021-09-15 15:44:31'),
(163, 'confirm_order', 'Order was verified by %user_name%', 0, 39, NULL, '2021-09-15 15:44:31', '2021-09-15 15:44:31'),
(164, 'confirm_payment', 'Payment was confirmed (amount $2,421.90) by %user_name%', 0, 39, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(165, 'create_shipment', 'Created shipment for order', 0, 39, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(166, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 40, NULL, '2021-09-12 23:44:31', '2021-09-12 23:44:31'),
(167, 'confirm_order', 'Order was verified by %user_name%', 0, 40, NULL, '2021-09-12 23:44:31', '2021-09-12 23:44:31'),
(168, 'create_shipment', 'Created shipment for order', 0, 40, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(169, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 41, NULL, '2021-09-14 19:44:31', '2021-09-14 19:44:31'),
(170, 'confirm_order', 'Order was verified by %user_name%', 0, 41, NULL, '2021-09-14 19:44:31', '2021-09-14 19:44:31'),
(171, 'create_shipment', 'Created shipment for order', 0, 41, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(172, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 42, NULL, '2021-09-13 19:44:31', '2021-09-13 19:44:31'),
(173, 'confirm_order', 'Order was verified by %user_name%', 0, 42, NULL, '2021-09-13 19:44:31', '2021-09-13 19:44:31'),
(174, 'confirm_payment', 'Payment was confirmed (amount $2,709.00) by %user_name%', 0, 42, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(175, 'create_shipment', 'Created shipment for order', 0, 42, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(176, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 42, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(177, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 43, NULL, '2021-09-15 01:44:31', '2021-09-15 01:44:31'),
(178, 'confirm_order', 'Order was verified by %user_name%', 0, 43, NULL, '2021-09-15 01:44:31', '2021-09-15 01:44:31'),
(179, 'confirm_payment', 'Payment was confirmed (amount $1,559.30) by %user_name%', 0, 43, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(180, 'create_shipment', 'Created shipment for order', 0, 43, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(181, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 44, NULL, '2021-09-14 23:44:31', '2021-09-14 23:44:31'),
(182, 'confirm_order', 'Order was verified by %user_name%', 0, 44, NULL, '2021-09-14 23:44:31', '2021-09-14 23:44:31'),
(183, 'confirm_payment', 'Payment was confirmed (amount $2,601.90) by %user_name%', 0, 44, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(184, 'create_shipment', 'Created shipment for order', 0, 44, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(185, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 44, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(186, 'create_order_from_seeder', 'Order is created from the checkout page', NULL, 45, NULL, '2021-09-16 03:44:31', '2021-09-16 03:44:31'),
(187, 'confirm_order', 'Order was verified by %user_name%', 0, 45, NULL, '2021-09-16 03:44:31', '2021-09-16 03:44:31'),
(188, 'confirm_payment', 'Payment was confirmed (amount $4,520.80) by %user_name%', 0, 45, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(189, 'create_shipment', 'Created shipment for order', 0, 45, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(190, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 45, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(191, 'update_status', 'Order confirmed by %user_name%', 0, 3, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(192, 'update_status', 'Order confirmed by %user_name%', 0, 4, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(193, 'update_status', 'Order confirmed by %user_name%', 0, 6, NULL, '2021-09-16 07:44:32', '2021-09-16 07:44:32'),
(194, 'update_status', 'Order confirmed by %user_name%', 0, 8, NULL, '2021-09-16 07:44:33', '2021-09-16 07:44:33'),
(195, 'update_status', 'Order confirmed by %user_name%', 0, 10, NULL, '2021-09-16 07:44:33', '2021-09-16 07:44:33'),
(196, 'update_status', 'Order confirmed by %user_name%', 0, 12, NULL, '2021-09-16 07:44:34', '2021-09-16 07:44:34'),
(197, 'update_status', 'Order confirmed by %user_name%', 0, 19, NULL, '2021-09-16 07:44:34', '2021-09-16 07:44:34'),
(198, 'update_status', 'Order confirmed by %user_name%', 0, 21, NULL, '2021-09-16 07:44:35', '2021-09-16 07:44:35'),
(199, 'update_status', 'Order confirmed by %user_name%', 0, 22, NULL, '2021-09-16 07:44:36', '2021-09-16 07:44:36'),
(200, 'update_status', 'Order confirmed by %user_name%', 0, 26, NULL, '2021-09-16 07:44:36', '2021-09-16 07:44:36'),
(201, 'update_status', 'Order confirmed by %user_name%', 0, 28, NULL, '2021-09-16 07:44:37', '2021-09-16 07:44:37'),
(202, 'update_status', 'Order confirmed by %user_name%', 0, 29, NULL, '2021-09-16 07:44:37', '2021-09-16 07:44:37'),
(203, 'update_status', 'Order confirmed by %user_name%', 0, 35, NULL, '2021-09-16 07:44:38', '2021-09-16 07:44:38'),
(204, 'update_status', 'Order confirmed by %user_name%', 0, 36, NULL, '2021-09-16 07:44:39', '2021-09-16 07:44:39'),
(205, 'update_status', 'Order confirmed by %user_name%', 0, 37, NULL, '2021-09-16 07:44:39', '2021-09-16 07:44:39'),
(206, 'update_status', 'Order confirmed by %user_name%', 0, 42, NULL, '2021-09-16 07:44:40', '2021-09-16 07:44:40'),
(207, 'update_status', 'Order confirmed by %user_name%', 0, 44, NULL, '2021-09-16 07:44:40', '2021-09-16 07:44:40'),
(208, 'update_status', 'Order confirmed by %user_name%', 0, 45, NULL, '2021-09-16 07:44:41', '2021-09-16 07:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '495.00', '49.50', '[]', 36, 'Nikon HD camera', 1326.00, 0, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(2, 1, 3, '495.00', '49.50', '[]', 37, 'Nikon HD camera', 1989.00, 0, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(3, 2, 1, '518.00', '51.80', '[]', 47, 'Samsung Smart Phone', 779.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(4, 3, 2, '1160.00', '116.00', '[]', 73, 'NYX Beauty Couton Pallete Makeup 12', 1298.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(5, 4, 2, '1123.00', '112.30', '[]', 43, 'Smart Televisions', 1402.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(6, 5, 1, '577.00', '57.70', '[]', 68, 'Samsung Gear VR Virtual Reality Headset', 711.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(7, 5, 3, '927.00', '92.70', '[]', 74, 'NYX Beauty Couton Pallete Makeup 12', 1638.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(8, 5, 2, '890.00', '89.00', '[]', 79, 'Ciate Palemore Lipstick Bold Red Color', 1516.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(9, 6, 1, '514.00', '51.40', '[]', 58, 'B&O Play Mini Bluetooth Speaker', 794.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(10, 7, 1, '1160.00', '116.00', '[]', 73, 'NYX Beauty Couton Pallete Makeup 12', 649.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(11, 8, 1, '40.50', '4.05', '[]', 27, 'Smart Watches', 618.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(12, 9, 1, '744.00', '74.40', '[]', 34, 'Smart Watch External', 692.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(13, 9, 2, '731.00', '73.10', '[]', 76, 'MVMTH Classical Leather Watch In Black', 1120.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(14, 10, 2, '514.00', '51.40', '[]', 57, 'B&O Play Mini Bluetooth Speaker', 1588.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(15, 11, 2, '1290.00', '129.00', '[]', 53, 'Xbox One Wireless Controller Black Color', 1602.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(16, 12, 3, '539.00', '53.90', '[]', 60, 'Apple MacBook Air Retina 13.3-Inch Laptop', 1902.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(17, 13, 3, '40.50', '4.05', '[]', 28, 'Smart Watches', 1854.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(18, 14, 3, '927.00', '92.70', '[]', 74, 'NYX Beauty Couton Pallete Makeup 12', 1638.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(19, 15, 3, '495.00', '49.50', '[]', 38, 'Nikon HD camera', 1989.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(20, 15, 2, '587.00', '58.70', '[]', 65, 'Apple MacBook Air Retina 12-Inch Laptop', 1382.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(21, 15, 3, '587.00', '58.70', '[]', 67, 'Apple MacBook Air Retina 12-Inch Laptop', 2073.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(22, 16, 2, '539.00', '53.90', '[]', 61, 'Apple MacBook Air Retina 13.3-Inch Laptop', 1268.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(23, 17, 2, '40.50', '4.05', '[]', 26, 'Smart Watches', 1236.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(24, 17, 2, '40.50', '4.05', '[]', 28, 'Smart Watches', 1236.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(25, 18, 1, '590.00', '59.00', '[]', 40, 'Audio Equipment', 647.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(26, 19, 1, '518.00', '51.80', '[]', 44, 'Samsung Smart Phone', 779.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(27, 20, 2, '1290.00', '129.00', '[]', 53, 'Xbox One Wireless Controller Black Color', 1602.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(28, 21, 1, '587.00', '58.70', '[]', 66, 'Apple MacBook Air Retina 12-Inch Laptop', 691.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(29, 22, 1, '1287.00', '128.70', '[]', 49, 'Herschel Leather Duffle Bag In Brown Color', 662.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(30, 23, 2, '539.00', '53.90', '[]', 61, 'Apple MacBook Air Retina 13.3-Inch Laptop', 1268.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(31, 24, 3, '20.00', '2.00', '[]', 29, 'Beat Headphone', 2043.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(32, 25, 2, '539.00', '53.90', '[]', 59, 'Apple MacBook Air Retina 13.3-Inch Laptop', 1268.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(33, 25, 3, '1259.00', '125.90', '[]', 72, 'Aveeno Moisturizing Body Shower 450ml', 2676.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(34, 25, 2, '890.00', '89.00', '[]', 79, 'Ciate Palemore Lipstick Bold Red Color', 1516.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(35, 26, 3, '1290.00', '129.00', '[]', 53, 'Xbox One Wireless Controller Black Color', 2403.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(36, 27, 2, '587.00', '58.70', '[]', 64, 'Apple MacBook Air Retina 12-Inch Laptop', 1382.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(37, 28, 1, '1259.00', '125.90', '[]', 70, 'Aveeno Moisturizing Body Shower 450ml', 892.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(38, 28, 2, '693.00', '69.30', '[]', 78, 'Baxter Care Hair Kit For Bearded Mens', 1788.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(39, 29, 3, '80.25', '8.03', '[]', 25, 'Dual Camera 20MP', 2316.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(40, 30, 2, '495.00', '49.50', '[]', 38, 'Nikon HD camera', 1326.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(41, 31, 3, '495.00', '49.50', '[]', 36, 'Nikon HD camera', 1989.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(42, 32, 1, '1287.00', '128.70', '[]', 50, 'Herschel Leather Duffle Bag In Brown Color', 662.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(43, 33, 1, '20.00', '2.00', '[]', 29, 'Beat Headphone', 681.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(44, 34, 1, '546.00', '54.60', '[]', 54, 'EPSION Plaster Printer', 574.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(45, 35, 3, '1259.00', '125.90', '[]', 70, 'Aveeno Moisturizing Body Shower 450ml', 2676.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(46, 36, 2, '40.50', '4.05', '[]', 27, 'Smart Watches', 1236.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(47, 36, 3, '1290.00', '129.00', '[]', 51, 'Xbox One Wireless Controller Black Color', 2403.00, 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(48, 37, 2, '539.00', '53.90', '[]', 60, 'Apple MacBook Air Retina 13.3-Inch Laptop', 1268.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(49, 38, 2, '40.50', '4.05', '[]', 28, 'Smart Watches', 1236.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(50, 39, 3, '590.00', '59.00', '[]', 41, 'Audio Equipment', 1941.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(51, 39, 1, '539.00', '53.90', '[]', 60, 'Apple MacBook Air Retina 13.3-Inch Laptop', 634.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(52, 40, 2, '587.00', '58.70', '[]', 67, 'Apple MacBook Air Retina 12-Inch Laptop', 1382.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(53, 41, 3, '495.00', '49.50', '[]', 38, 'Nikon HD camera', 1989.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(54, 41, 3, '587.00', '58.70', '[]', 64, 'Apple MacBook Air Retina 12-Inch Laptop', 2073.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(55, 42, 2, '1290.00', '129.00', '[]', 51, 'Xbox One Wireless Controller Black Color', 1602.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(56, 43, 3, '503.00', '50.30', '[]', 56, 'Sound Intone I65 Earphone White Version', 2232.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(57, 44, 2, '744.00', '74.40', '[]', 34, 'Smart Watch External', 1384.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(58, 44, 2, '495.00', '49.50', '[]', 39, 'Nikon HD camera', 1326.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(59, 45, 2, '495.00', '49.50', '[]', 38, 'Nikon HD camera', 1326.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(60, 45, 3, '1123.00', '112.30', '[]', 42, 'Smart Televisions', 2103.00, 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT '0',
  `sale_type` tinyint(4) NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`, `store_id`) VALUES
(1, 'Dual Camera 20MP', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/1.jpg\"]', 'SW-197-A0', 0, 20, 0, 1, 1, 2, 0, 0, 80.25, NULL, NULL, NULL, 15.00, 15.00, 15.00, 772.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 122109, 'in_stock', 4),
(2, 'Smart Watches', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]', 'SW-140-A0', 0, 16, 0, 1, 1, 7, 0, 0, 40.5, NULL, NULL, NULL, 10.00, 15.00, 19.00, 618.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 94103, 'in_stock', 3),
(3, 'Beat Headphone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/3.jpg\"]', 'SW-167-A0', 0, 16, 0, 1, 1, 5, 0, 0, 20, NULL, NULL, NULL, 18.00, 19.00, 19.00, 681.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 154395, 'in_stock', 1),
(4, 'Red & Black Headphone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]', 'SW-150-A0', 0, 15, 0, 1, 1, 5, 0, 0, 560, 470.4, NULL, NULL, 15.00, 10.00, 13.00, 676.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 155825, 'in_stock', 2),
(5, 'Smart Watch External', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]', 'SW-120-A0', 0, 16, 0, 1, 1, 1, 0, 0, 744, NULL, NULL, NULL, 15.00, 10.00, 14.00, 692.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 152212, 'in_stock', 2),
(6, 'Nikon HD camera', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/6.jpg\"]', 'SW-141-A0', 0, 11, 0, 1, 1, 2, 0, 0, 495, NULL, NULL, NULL, 17.00, 10.00, 19.00, 663.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 134558, 'in_stock', 2),
(7, 'Audio Equipment', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/7.jpg\"]', 'SW-160-A0', 0, 13, 0, 1, 1, 6, 0, 0, 590, NULL, NULL, NULL, 19.00, 19.00, 15.00, 647.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 78476, 'in_stock', 4),
(8, 'Smart Televisions', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]', 'SW-158-A0', 0, 17, 0, 1, 1, 5, 0, 0, 1123, 853.48, NULL, NULL, 15.00, 15.00, 17.00, 701.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 196912, 'in_stock', 2),
(9, 'Samsung Smart Phone', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]', 'SW-121-A0', 0, 18, 0, 1, 1, 1, 0, 0, 518, NULL, NULL, NULL, 19.00, 16.00, 17.00, 779.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 124808, 'in_stock', 1),
(10, 'Herschel Leather Duffle Bag In Brown Color', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]', 'SW-123-A0', 0, 15, 0, 1, 0, 4, 0, 0, 1287, NULL, NULL, NULL, 10.00, 15.00, 11.00, 662.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 56609, 'in_stock', 3),
(11, 'Xbox One Wireless Controller Black Color', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]', 'SW-120-A0', 0, 18, 0, 1, 0, 5, 0, 0, 1290, NULL, NULL, NULL, 14.00, 14.00, 19.00, 801.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 45371, 'in_stock', 3),
(12, 'EPSION Plaster Printer', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]', 'SW-159-A0', 0, 18, 0, 1, 0, 7, 0, 0, 546, 436.8, NULL, NULL, 12.00, 20.00, 17.00, 574.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 120943, 'in_stock', 2),
(13, 'Sound Intone I65 Earphone White Version', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]', 'SW-184-A0', 0, 14, 0, 1, 0, 2, 0, 0, 503, NULL, NULL, NULL, 19.00, 13.00, 19.00, 744.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 28524, 'in_stock', 1),
(14, 'B&O Play Mini Bluetooth Speaker', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/14.jpg\"]', 'SW-100-A0', 0, 18, 0, 1, 0, 2, 0, 0, 514, NULL, NULL, NULL, 15.00, 11.00, 10.00, 794.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 188683, 'in_stock', 4),
(15, 'Apple MacBook Air Retina 13.3-Inch Laptop', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]', 'SW-167-A0', 0, 19, 0, 1, 0, 3, 0, 0, 539, NULL, NULL, NULL, 14.00, 12.00, 14.00, 634.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 153654, 'in_stock', 4),
(16, 'Apple MacBook Air Retina 12-Inch Laptop', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/16.jpg\"]', 'SW-165-A0', 0, 12, 0, 1, 0, 6, 0, 0, 587, 451.99, NULL, NULL, 18.00, 18.00, 16.00, 691.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 56247, 'in_stock', 2),
(17, 'Samsung Gear VR Virtual Reality Headset', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]', 'SW-191-A0', 0, 18, 0, 1, 0, 1, 0, 0, 577, NULL, NULL, NULL, 19.00, 18.00, 13.00, 711.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 63269, 'in_stock', 4),
(18, 'Aveeno Moisturizing Body Shower 450ml', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]', 'SW-101-A0', 0, 14, 0, 1, 0, 1, 0, 0, 1259, NULL, NULL, NULL, 16.00, 10.00, 16.00, 892.00, '2021-09-16 07:44:14', '2021-09-16 07:44:29', 1, 15367, 'in_stock', 4),
(19, 'NYX Beauty Couton Pallete Makeup 12', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]', 'SW-107-A0', 0, 16, 0, 1, 0, 2, 0, 0, 1160, NULL, NULL, NULL, 17.00, 20.00, 13.00, 649.00, '2021-09-16 07:44:15', '2021-09-16 07:44:29', 1, 12992, 'in_stock', 3);
INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`, `store_id`) VALUES
(20, 'NYX Beauty Couton Pallete Makeup 12', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]', 'SW-168-A0', 0, 20, 0, 1, 0, 3, 0, 0, 927, 778.68, NULL, NULL, 16.00, 17.00, 14.00, 546.00, '2021-09-16 07:44:15', '2021-09-16 07:44:29', 1, 132252, 'in_stock', 4),
(21, 'MVMTH Classical Leather Watch In Black', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]', 'SW-107-A0', 0, 12, 0, 1, 0, 4, 0, 0, 731, NULL, NULL, NULL, 10.00, 16.00, 18.00, 560.00, '2021-09-16 07:44:15', '2021-09-16 07:44:29', 1, 117060, 'in_stock', 2),
(22, 'Baxter Care Hair Kit For Bearded Mens', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]', 'SW-181-A0', 0, 14, 0, 1, 0, 7, 0, 0, 693, NULL, NULL, NULL, 14.00, 14.00, 13.00, 894.00, '2021-09-16 07:44:15', '2021-09-16 07:44:29', 1, 5279, 'in_stock', 4),
(23, 'Ciate Palemore Lipstick Bold Red Color', '<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>', '<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>', 'published', '[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]', 'SW-151-A0', 0, 14, 0, 1, 0, 6, 0, 0, 890, NULL, NULL, NULL, 10.00, 15.00, 19.00, 758.00, '2021-09-16 07:44:15', '2021-09-16 07:44:29', 1, 182261, 'in_stock', 4),
(24, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/1.jpg\"]', 'SW-197-A0', 0, 20, 0, 1, 0, 2, 1, 0, 80.25, NULL, NULL, NULL, 15.00, 15.00, 15.00, 772.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(25, 'Dual Camera 20MP', NULL, NULL, 'published', '[\"products\\/1.jpg\"]', 'SW-197-A0-A1', 0, 20, 0, 1, 0, 2, 1, 0, 80.25, NULL, NULL, NULL, 15.00, 15.00, 15.00, 772.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(26, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2.jpg\"]', 'SW-140-A0', 0, 16, 0, 1, 0, 7, 1, 0, 40.5, NULL, NULL, NULL, 10.00, 15.00, 19.00, 618.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(27, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2-1.jpg\"]', 'SW-140-A0-A1', 0, 16, 0, 1, 0, 7, 1, 0, 40.5, NULL, NULL, NULL, 10.00, 15.00, 19.00, 618.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(28, 'Smart Watches', NULL, NULL, 'published', '[\"products\\/2-2.jpg\"]', 'SW-140-A0-A2', 0, 16, 0, 1, 0, 7, 1, 0, 40.5, NULL, NULL, NULL, 10.00, 15.00, 19.00, 618.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(29, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'SW-167-A0', 0, 16, 0, 1, 0, 5, 1, 0, 20, NULL, NULL, NULL, 18.00, 19.00, 19.00, 681.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(30, 'Beat Headphone', NULL, NULL, 'published', '[\"products\\/3.jpg\"]', 'SW-167-A0-A1', 0, 16, 0, 1, 0, 5, 1, 0, 20, NULL, NULL, NULL, 18.00, 19.00, 19.00, 681.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(31, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/4.jpg\"]', 'SW-150-A0', 0, 15, 0, 1, 0, 5, 1, 0, 560, 470.4, NULL, NULL, 15.00, 10.00, 13.00, 676.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(32, 'Red & Black Headphone', NULL, NULL, 'published', '[\"products\\/4-1.jpg\"]', 'SW-150-A0-A1', 0, 15, 0, 1, 0, 5, 1, 0, 560, 481.6, NULL, NULL, 15.00, 10.00, 13.00, 676.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(33, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/5.jpg\"]', 'SW-120-A0', 0, 16, 0, 1, 0, 1, 1, 0, 744, NULL, NULL, NULL, 15.00, 10.00, 14.00, 692.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(34, 'Smart Watch External', NULL, NULL, 'published', '[\"products\\/5-1.jpg\"]', 'SW-120-A0-A1', 0, 16, 0, 1, 0, 1, 1, 0, 744, NULL, NULL, NULL, 15.00, 10.00, 14.00, 692.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(35, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-141-A0', 0, 11, 0, 1, 0, 2, 1, 0, 495, NULL, NULL, NULL, 17.00, 10.00, 19.00, 663.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(36, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-141-A0-A1', 0, 11, 0, 1, 0, 2, 1, 0, 495, NULL, NULL, NULL, 17.00, 10.00, 19.00, 663.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(37, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-141-A0-A2', 0, 11, 0, 1, 0, 2, 1, 0, 495, NULL, NULL, NULL, 17.00, 10.00, 19.00, 663.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(38, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-141-A0-A3', 0, 11, 0, 1, 0, 2, 1, 0, 495, NULL, NULL, NULL, 17.00, 10.00, 19.00, 663.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(39, 'Nikon HD camera', NULL, NULL, 'published', '[\"products\\/6.jpg\"]', 'SW-141-A0-A4', 0, 11, 0, 1, 0, 2, 1, 0, 495, NULL, NULL, NULL, 17.00, 10.00, 19.00, 663.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(40, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'SW-160-A0', 0, 13, 0, 1, 0, 6, 1, 0, 590, NULL, NULL, NULL, 19.00, 19.00, 15.00, 647.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(41, 'Audio Equipment', NULL, NULL, 'published', '[\"products\\/7.jpg\"]', 'SW-160-A0-A1', 0, 13, 0, 1, 0, 6, 1, 0, 590, NULL, NULL, NULL, 19.00, 19.00, 15.00, 647.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(42, 'Smart Televisions', NULL, NULL, 'published', '[\"products\\/8.jpg\"]', 'SW-158-A0', 0, 17, 0, 1, 0, 5, 1, 0, 1123, 853.48, NULL, NULL, 15.00, 15.00, 17.00, 701.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(43, 'Smart Televisions', NULL, NULL, 'published', '[\"products\\/8-1.jpg\"]', 'SW-158-A0-A1', 0, 17, 0, 1, 0, 5, 1, 0, 1123, 943.32, NULL, NULL, 15.00, 15.00, 17.00, 701.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(44, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'SW-121-A0', 0, 18, 0, 1, 0, 1, 1, 0, 518, NULL, NULL, NULL, 19.00, 16.00, 17.00, 779.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(45, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/9-1.jpg\"]', 'SW-121-A0-A1', 0, 18, 0, 1, 0, 1, 1, 0, 518, NULL, NULL, NULL, 19.00, 16.00, 17.00, 779.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(46, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/9-2.jpg\"]', 'SW-121-A0-A2', 0, 18, 0, 1, 0, 1, 1, 0, 518, NULL, NULL, NULL, 19.00, 16.00, 17.00, 779.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(47, 'Samsung Smart Phone', NULL, NULL, 'published', '[\"products\\/9.jpg\"]', 'SW-121-A0-A3', 0, 18, 0, 1, 0, 1, 1, 0, 518, NULL, NULL, NULL, 19.00, 16.00, 17.00, 779.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(48, 'Herschel Leather Duffle Bag In Brown Color', NULL, NULL, 'published', '[\"products\\/10.jpg\"]', 'SW-123-A0', 0, 15, 0, 1, 0, 4, 1, 0, 1287, NULL, NULL, NULL, 10.00, 15.00, 11.00, 662.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(49, 'Herschel Leather Duffle Bag In Brown Color', NULL, NULL, 'published', '[\"products\\/10-1.jpg\"]', 'SW-123-A0-A1', 0, 15, 0, 1, 0, 4, 1, 0, 1287, NULL, NULL, NULL, 10.00, 15.00, 11.00, 662.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(50, 'Herschel Leather Duffle Bag In Brown Color', NULL, NULL, 'published', '[\"products\\/10-2.jpg\"]', 'SW-123-A0-A2', 0, 15, 0, 1, 0, 4, 1, 0, 1287, NULL, NULL, NULL, 10.00, 15.00, 11.00, 662.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(51, 'Xbox One Wireless Controller Black Color', NULL, NULL, 'published', '[\"products\\/11.jpg\"]', 'SW-120-A0', 0, 18, 0, 1, 0, 5, 1, 0, 1290, NULL, NULL, NULL, 14.00, 14.00, 19.00, 801.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(52, 'Xbox One Wireless Controller Black Color', NULL, NULL, 'published', '[\"products\\/11-1.jpg\"]', 'SW-120-A0-A1', 0, 18, 0, 1, 0, 5, 1, 0, 1290, NULL, NULL, NULL, 14.00, 14.00, 19.00, 801.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(53, 'Xbox One Wireless Controller Black Color', NULL, NULL, 'published', '[\"products\\/11-2.jpg\"]', 'SW-120-A0-A2', 0, 18, 0, 1, 0, 5, 1, 0, 1290, NULL, NULL, NULL, 14.00, 14.00, 19.00, 801.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(54, 'EPSION Plaster Printer', NULL, NULL, 'published', '[\"products\\/12.jpg\"]', 'SW-159-A0', 0, 18, 0, 1, 0, 7, 1, 0, 546, 436.8, NULL, NULL, 12.00, 20.00, 17.00, 574.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(55, 'Sound Intone I65 Earphone White Version', NULL, NULL, 'published', '[\"products\\/13.jpg\"]', 'SW-184-A0', 0, 14, 0, 1, 0, 2, 1, 0, 503, NULL, NULL, NULL, 19.00, 13.00, 19.00, 744.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(56, 'Sound Intone I65 Earphone White Version', NULL, NULL, 'published', '[\"products\\/13-1.jpg\"]', 'SW-184-A0-A1', 0, 14, 0, 1, 0, 2, 1, 0, 503, NULL, NULL, NULL, 19.00, 13.00, 19.00, 744.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(57, 'B&O Play Mini Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'SW-100-A0', 0, 18, 0, 1, 0, 2, 1, 0, 514, NULL, NULL, NULL, 15.00, 11.00, 10.00, 794.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(58, 'B&O Play Mini Bluetooth Speaker', NULL, NULL, 'published', '[\"products\\/14.jpg\"]', 'SW-100-A0-A1', 0, 18, 0, 1, 0, 2, 1, 0, 514, NULL, NULL, NULL, 15.00, 11.00, 10.00, 794.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(59, 'Apple MacBook Air Retina 13.3-Inch Laptop', NULL, NULL, 'published', '[\"products\\/15.jpg\"]', 'SW-167-A0', 0, 19, 0, 1, 0, 3, 1, 0, 539, NULL, NULL, NULL, 14.00, 12.00, 14.00, 634.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(60, 'Apple MacBook Air Retina 13.3-Inch Laptop', NULL, NULL, 'published', '[\"products\\/15-1.jpg\"]', 'SW-167-A0-A1', 0, 19, 0, 1, 0, 3, 1, 0, 539, NULL, NULL, NULL, 14.00, 12.00, 14.00, 634.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(61, 'Apple MacBook Air Retina 13.3-Inch Laptop', NULL, NULL, 'published', '[\"products\\/15.jpg\"]', 'SW-167-A0-A2', 0, 19, 0, 1, 0, 3, 1, 0, 539, NULL, NULL, NULL, 14.00, 12.00, 14.00, 634.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(62, 'Apple MacBook Air Retina 13.3-Inch Laptop', NULL, NULL, 'published', '[\"products\\/15.jpg\"]', 'SW-167-A0-A3', 0, 19, 0, 1, 0, 3, 1, 0, 539, NULL, NULL, NULL, 14.00, 12.00, 14.00, 634.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(63, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-165-A0', 0, 12, 0, 1, 0, 6, 1, 0, 587, 451.99, NULL, NULL, 18.00, 18.00, 16.00, 691.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(64, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-165-A0-A1', 0, 12, 0, 1, 0, 6, 1, 0, 587, 522.43, NULL, NULL, 18.00, 18.00, 16.00, 691.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(65, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-165-A0-A2', 0, 12, 0, 1, 0, 6, 1, 0, 587, 487.21, NULL, NULL, 18.00, 18.00, 16.00, 691.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(66, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-165-A0-A3', 0, 12, 0, 1, 0, 6, 1, 0, 587, 522.43, NULL, NULL, 18.00, 18.00, 16.00, 691.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(67, 'Apple MacBook Air Retina 12-Inch Laptop', NULL, NULL, 'published', '[\"products\\/16.jpg\"]', 'SW-165-A0-A4', 0, 12, 0, 1, 0, 6, 1, 0, 587, 469.6, NULL, NULL, 18.00, 18.00, 16.00, 691.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(68, 'Samsung Gear VR Virtual Reality Headset', NULL, NULL, 'published', '[\"products\\/17.jpg\"]', 'SW-191-A0', 0, 18, 0, 1, 0, 1, 1, 0, 577, NULL, NULL, NULL, 19.00, 18.00, 13.00, 711.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(69, 'Aveeno Moisturizing Body Shower 450ml', NULL, NULL, 'published', '[\"products\\/18.jpg\"]', 'SW-101-A0', 0, 14, 0, 1, 0, 1, 1, 0, 1259, NULL, NULL, NULL, 16.00, 10.00, 16.00, 892.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(70, 'Aveeno Moisturizing Body Shower 450ml', NULL, NULL, 'published', '[\"products\\/18-1.jpg\"]', 'SW-101-A0-A1', 0, 14, 0, 1, 0, 1, 1, 0, 1259, NULL, NULL, NULL, 16.00, 10.00, 16.00, 892.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(71, 'Aveeno Moisturizing Body Shower 450ml', NULL, NULL, 'published', '[\"products\\/18-2.jpg\"]', 'SW-101-A0-A2', 0, 14, 0, 1, 0, 1, 1, 0, 1259, NULL, NULL, NULL, 16.00, 10.00, 16.00, 892.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(72, 'Aveeno Moisturizing Body Shower 450ml', NULL, NULL, 'published', '[\"products\\/18-3.jpg\"]', 'SW-101-A0-A3', 0, 14, 0, 1, 0, 1, 1, 0, 1259, NULL, NULL, NULL, 16.00, 10.00, 16.00, 892.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(73, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/19.jpg\"]', 'SW-107-A0', 0, 16, 0, 1, 0, 2, 1, 0, 1160, NULL, NULL, NULL, 17.00, 20.00, 13.00, 649.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(74, 'NYX Beauty Couton Pallete Makeup 12', NULL, NULL, 'published', '[\"products\\/20.jpg\"]', 'SW-168-A0', 0, 20, 0, 1, 0, 3, 1, 0, 927, 778.68, NULL, NULL, 16.00, 17.00, 14.00, 546.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(75, 'MVMTH Classical Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/21.jpg\"]', 'SW-107-A0', 0, 12, 0, 1, 0, 4, 1, 0, 731, NULL, NULL, NULL, 10.00, 16.00, 18.00, 560.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(76, 'MVMTH Classical Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/21-1.jpg\"]', 'SW-107-A0-A1', 0, 12, 0, 1, 0, 4, 1, 0, 731, NULL, NULL, NULL, 10.00, 16.00, 18.00, 560.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(77, 'MVMTH Classical Leather Watch In Black', NULL, NULL, 'published', '[\"products\\/21-2.jpg\"]', 'SW-107-A0-A2', 0, 12, 0, 1, 0, 4, 1, 0, 731, NULL, NULL, NULL, 10.00, 16.00, 18.00, 560.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(78, 'Baxter Care Hair Kit For Bearded Mens', NULL, NULL, 'published', '[\"products\\/22.jpg\"]', 'SW-181-A0', 0, 14, 0, 1, 0, 7, 1, 0, 693, NULL, NULL, NULL, 14.00, 14.00, 13.00, 894.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL),
(79, 'Ciate Palemore Lipstick Bold Red Color', NULL, NULL, 'published', '[\"products\\/23.jpg\"]', 'SW-151-A0', 0, 14, 0, 1, 0, 6, 1, 0, 890, NULL, NULL, NULL, 10.00, 15.00, 19.00, 758.00, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL, 0, 'in_stock', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Green', 'green', '#5FB7D4', NULL, 1, 1, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(2, 1, 'Blue', 'blue', '#333333', NULL, 0, 2, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(3, 1, 'Red', 'red', '#DA323F', NULL, 0, 3, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(4, 1, 'Black', 'back', '#2F366C', NULL, 0, 4, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(5, 1, 'Brown', 'brown', '#87554B', NULL, 0, 5, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(6, 2, 'S', 's', NULL, NULL, 1, 1, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(7, 2, 'M', 'm', NULL, NULL, 1, 2, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(8, 2, 'L', 'l', NULL, NULL, 1, 3, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(9, 2, 'XL', 'xl', NULL, NULL, 1, 4, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(10, 2, 'XXL', 'xxl', NULL, NULL, 1, 5, 'published', '2021-09-16 07:44:15', '2021-09-16 07:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'color', 'visual', 1, 1, 1, 'published', 0, '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(2, 'Size', 'size', 'text', 1, 1, 1, 'published', 1, '2021-09-16 07:44:15', '2021-09-16 07:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Hot Promotions', 0, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(2, 'Electronics', 0, NULL, 'published', 1, 'product-categories/1.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(3, 'Consumer Electronic', 2, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(4, 'Home Audio & Theaters', 3, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(5, 'TV & Videos', 3, NULL, 'published', 1, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(6, 'Camera, Photos & Videos', 3, NULL, 'published', 2, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(7, 'Cellphones & Accessories', 3, NULL, 'published', 3, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(8, 'Headphones', 3, NULL, 'published', 4, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(9, 'Videos games', 3, NULL, 'published', 5, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(10, 'Wireless Speakers', 3, NULL, 'published', 6, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(11, 'Office Electronic', 3, NULL, 'published', 7, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(12, 'Accessories & Parts', 2, NULL, 'published', 1, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(13, 'Digital Cables', 12, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(14, 'Audio & Video Cables', 12, NULL, 'published', 1, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(15, 'Batteries', 12, NULL, 'published', 2, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(16, 'Clothing', 0, NULL, 'published', 2, 'product-categories/2.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(17, 'Computers', 0, NULL, 'published', 3, 'product-categories/3.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(18, 'Computer & Technologies', 17, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(19, 'Computer & Tablets', 18, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(20, 'Laptop', 18, NULL, 'published', 1, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(21, 'Monitors', 18, NULL, 'published', 2, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(22, 'Computer Components', 18, NULL, 'published', 3, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(23, 'Networking', 17, NULL, 'published', 1, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(24, 'Drive & Storages', 23, NULL, 'published', 0, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(25, 'Gaming Laptop', 23, NULL, 'published', 1, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(26, 'Security & Protection', 23, NULL, 'published', 2, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(27, 'Accessories', 23, NULL, 'published', 3, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(28, 'Home & Kitchen', 0, NULL, 'published', 4, 'product-categories/4.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(29, 'Health & Beauty', 0, NULL, 'published', 5, 'product-categories/5.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(30, 'Jewelry & Watch', 0, NULL, 'published', 6, 'product-categories/6.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(31, 'Technology Toys', 0, NULL, 'published', 7, 'product-categories/7.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(32, 'Phones', 0, NULL, 'published', 8, 'product-categories/8.jpg', 1, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(33, 'Babies & Moms', 0, NULL, 'published', 9, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(34, 'Sport & Outdoor', 0, NULL, 'published', 10, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(35, 'Books & Office', 0, NULL, 'published', 11, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(36, 'Cars & Motorcycles', 0, NULL, 'published', 12, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(37, 'Home Improvements', 0, NULL, 'published', 13, NULL, 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_category_product`
--

INSERT INTO `ec_product_category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 37, 1),
(2, 14, 1),
(3, 1, 1),
(4, 31, 1),
(5, 34, 2),
(6, 24, 2),
(7, 27, 2),
(8, 33, 2),
(9, 31, 3),
(10, 13, 3),
(11, 2, 3),
(12, 23, 3),
(13, 37, 4),
(14, 11, 4),
(15, 15, 4),
(16, 30, 4),
(17, 34, 5),
(18, 20, 5),
(19, 37, 5),
(20, 22, 5),
(21, 22, 6),
(22, 17, 6),
(23, 27, 6),
(24, 31, 6),
(25, 15, 7),
(26, 19, 7),
(27, 1, 7),
(28, 27, 7),
(29, 5, 8),
(30, 4, 8),
(31, 2, 8),
(32, 24, 8),
(33, 19, 9),
(34, 32, 9),
(35, 25, 9),
(36, 23, 9),
(37, 11, 10),
(38, 30, 10),
(39, 9, 10),
(40, 25, 10),
(41, 35, 11),
(42, 5, 11),
(43, 18, 11),
(44, 25, 11),
(45, 26, 12),
(46, 9, 12),
(47, 21, 12),
(48, 35, 12),
(49, 22, 13),
(50, 21, 13),
(51, 25, 13),
(52, 29, 13),
(53, 7, 14),
(54, 5, 14),
(55, 37, 14),
(56, 19, 14),
(57, 36, 15),
(58, 15, 15),
(59, 10, 15),
(60, 24, 15),
(61, 18, 16),
(62, 24, 16),
(63, 26, 16),
(64, 33, 16),
(65, 24, 17),
(66, 8, 17),
(67, 30, 17),
(68, 26, 17),
(69, 28, 18),
(70, 5, 18),
(71, 29, 18),
(72, 26, 18),
(73, 14, 19),
(74, 36, 19),
(75, 2, 19),
(76, 34, 19),
(77, 37, 20),
(78, 7, 20),
(79, 3, 20),
(80, 30, 20),
(81, 27, 21),
(82, 25, 21),
(83, 24, 21),
(84, 15, 21),
(85, 36, 22),
(86, 16, 22),
(87, 3, 22),
(88, 37, 22),
(89, 34, 23),
(90, 7, 23),
(91, 23, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-09-16 07:43:53', '2021-09-16 07:43:53', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-09-16 07:43:53', '2021-09-16 07:43:53', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-09-16 07:43:53', '2021-09-16 07:43:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collection_products`
--

INSERT INTO `ec_product_collection_products` (`id`, `product_collection_id`, `product_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 1, 13),
(14, 2, 14),
(15, 1, 15),
(16, 1, 16),
(17, 3, 17),
(18, 1, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 1, 22),
(23, 2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

INSERT INTO `ec_product_cross_sale_relations` (`id`, `from_product_id`, `to_product_id`) VALUES
(1, 1, 9),
(2, 1, 7),
(3, 1, 5),
(4, 1, 17),
(5, 1, 2),
(6, 1, 20),
(7, 1, 15),
(8, 2, 12),
(9, 2, 14),
(10, 2, 11),
(11, 2, 20),
(12, 2, 4),
(13, 3, 14),
(14, 3, 17),
(15, 3, 10),
(16, 3, 2),
(17, 3, 6),
(18, 3, 19),
(19, 3, 1),
(20, 4, 20),
(21, 4, 3),
(22, 4, 1),
(23, 4, 2),
(24, 4, 13),
(25, 4, 18),
(26, 5, 17),
(27, 5, 16),
(28, 5, 4),
(29, 5, 18),
(30, 5, 9),
(31, 6, 2),
(32, 6, 7),
(33, 6, 17),
(34, 6, 16),
(35, 6, 11),
(36, 6, 4),
(37, 7, 9),
(38, 7, 3),
(39, 7, 2),
(40, 7, 19),
(41, 7, 18),
(42, 7, 11),
(43, 7, 10),
(44, 8, 4),
(45, 8, 15),
(46, 8, 19),
(47, 8, 3),
(48, 8, 12),
(49, 8, 17),
(50, 9, 8),
(51, 9, 12),
(52, 9, 14),
(53, 9, 18),
(54, 9, 13),
(55, 9, 20),
(56, 10, 11),
(57, 10, 20),
(58, 10, 12),
(59, 10, 15),
(60, 10, 5),
(61, 11, 10),
(62, 11, 1),
(63, 11, 16),
(64, 11, 8),
(65, 12, 15),
(66, 12, 5),
(67, 12, 20),
(68, 12, 2),
(69, 12, 13),
(70, 13, 12),
(71, 13, 19),
(72, 13, 18),
(73, 13, 14),
(74, 13, 7),
(75, 13, 2),
(76, 13, 3),
(77, 14, 9),
(78, 14, 10),
(79, 14, 17),
(80, 14, 16),
(81, 14, 20),
(82, 14, 7),
(83, 15, 14),
(84, 15, 7),
(85, 15, 19),
(86, 15, 18),
(87, 15, 10),
(88, 15, 12),
(89, 15, 1),
(90, 16, 17),
(91, 16, 4),
(92, 16, 8),
(93, 16, 18),
(94, 16, 14),
(95, 17, 6),
(96, 17, 11),
(97, 17, 8),
(98, 17, 10),
(99, 17, 5),
(100, 17, 14),
(101, 18, 6),
(102, 18, 7),
(103, 18, 11),
(104, 18, 9),
(105, 18, 14),
(106, 19, 20),
(107, 19, 8),
(108, 19, 13),
(109, 19, 11),
(110, 19, 14),
(111, 20, 15),
(112, 20, 12),
(113, 20, 14),
(114, 20, 8),
(115, 20, 11),
(116, 20, 18),
(117, 21, 3),
(118, 21, 13),
(119, 21, 2),
(120, 21, 17),
(121, 22, 1),
(122, 22, 7),
(123, 22, 2),
(124, 22, 9),
(125, 22, 17),
(126, 22, 16),
(127, 23, 18),
(128, 23, 6),
(129, 23, 7),
(130, 23, 15),
(131, 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(2, 'New', '#00c9a7', 'published', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(3, 'Sale', '#fe9931', 'published', '2021-09-16 07:43:53', '2021-09-16 07:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 3),
(1, 9),
(1, 21),
(2, 12),
(2, 18),
(3, 6),
(3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', NULL, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(2, 'Mobile', NULL, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(3, 'Iphone', NULL, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(4, 'Printer', NULL, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(5, 'Office', NULL, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(6, 'IT', NULL, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 3),
(1, 5),
(1, 6),
(2, 1),
(2, 4),
(2, 5),
(3, 5),
(3, 6),
(4, 3),
(4, 6),
(5, 1),
(5, 2),
(5, 6),
(6, 1),
(6, 2),
(6, 5),
(7, 1),
(7, 5),
(7, 6),
(8, 4),
(8, 5),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 4),
(10, 6),
(11, 1),
(11, 2),
(12, 3),
(12, 4),
(12, 5),
(13, 2),
(13, 5),
(13, 6),
(14, 1),
(14, 4),
(14, 6),
(15, 2),
(15, 4),
(16, 3),
(16, 4),
(17, 2),
(17, 3),
(17, 5),
(18, 2),
(18, 4),
(19, 2),
(19, 4),
(19, 6),
(20, 2),
(20, 3),
(20, 6),
(21, 1),
(21, 3),
(21, 6),
(22, 3),
(22, 4),
(23, 1),
(23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variations`
--

INSERT INTO `ec_product_variations` (`id`, `product_id`, `configurable_product_id`, `is_default`) VALUES
(1, 24, 1, 1),
(2, 25, 1, 0),
(3, 26, 2, 1),
(4, 27, 2, 0),
(5, 28, 2, 0),
(6, 29, 3, 1),
(7, 30, 3, 0),
(8, 31, 4, 1),
(9, 32, 4, 0),
(10, 33, 5, 1),
(11, 34, 5, 0),
(12, 35, 6, 1),
(13, 36, 6, 0),
(14, 37, 6, 0),
(15, 38, 6, 0),
(16, 39, 6, 0),
(17, 40, 7, 1),
(18, 41, 7, 0),
(19, 42, 8, 1),
(20, 43, 8, 0),
(21, 44, 9, 1),
(22, 45, 9, 0),
(23, 46, 9, 0),
(24, 47, 9, 0),
(25, 48, 10, 1),
(26, 49, 10, 0),
(27, 50, 10, 0),
(28, 51, 11, 1),
(29, 52, 11, 0),
(30, 53, 11, 0),
(31, 54, 12, 1),
(32, 55, 13, 1),
(33, 56, 13, 0),
(34, 57, 14, 1),
(35, 58, 14, 0),
(36, 59, 15, 1),
(37, 60, 15, 0),
(38, 61, 15, 0),
(39, 62, 15, 0),
(40, 63, 16, 1),
(41, 64, 16, 0),
(42, 65, 16, 0),
(43, 66, 16, 0),
(44, 67, 16, 0),
(45, 68, 17, 1),
(46, 69, 18, 1),
(47, 70, 18, 0),
(48, 71, 18, 0),
(49, 72, 18, 0),
(50, 73, 19, 1),
(51, 74, 20, 1),
(52, 75, 21, 1),
(53, 76, 21, 0),
(54, 77, 21, 0),
(55, 78, 22, 1),
(56, 79, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_variation_items`
--

INSERT INTO `ec_product_variation_items` (`id`, `attribute_id`, `variation_id`) VALUES
(1, 1, 1),
(2, 9, 1),
(3, 2, 2),
(4, 7, 2),
(5, 1, 3),
(6, 8, 3),
(7, 1, 4),
(8, 6, 4),
(9, 5, 5),
(10, 7, 5),
(11, 5, 6),
(12, 7, 6),
(13, 1, 7),
(14, 9, 7),
(15, 2, 8),
(16, 9, 8),
(17, 1, 9),
(18, 8, 9),
(19, 4, 10),
(20, 8, 10),
(21, 2, 11),
(22, 8, 11),
(23, 3, 12),
(24, 8, 12),
(25, 3, 13),
(26, 10, 13),
(27, 2, 14),
(28, 9, 14),
(29, 3, 15),
(30, 8, 15),
(31, 2, 16),
(32, 8, 16),
(33, 3, 17),
(34, 6, 17),
(35, 1, 18),
(36, 8, 18),
(37, 2, 19),
(38, 10, 19),
(39, 3, 20),
(40, 9, 20),
(41, 2, 21),
(42, 10, 21),
(43, 2, 22),
(44, 10, 22),
(45, 4, 23),
(46, 10, 23),
(47, 3, 24),
(48, 8, 24),
(49, 5, 25),
(50, 10, 25),
(51, 4, 26),
(52, 10, 26),
(53, 5, 27),
(54, 7, 27),
(55, 1, 28),
(56, 8, 28),
(57, 1, 29),
(58, 6, 29),
(59, 4, 30),
(60, 10, 30),
(61, 2, 31),
(62, 6, 31),
(63, 3, 32),
(64, 7, 32),
(65, 3, 33),
(66, 8, 33),
(67, 3, 34),
(68, 8, 34),
(69, 4, 35),
(70, 8, 35),
(71, 1, 36),
(72, 8, 36),
(73, 4, 37),
(74, 6, 37),
(75, 2, 38),
(76, 6, 38),
(77, 5, 39),
(78, 8, 39),
(79, 1, 40),
(80, 6, 40),
(81, 1, 41),
(82, 8, 41),
(83, 3, 42),
(84, 8, 42),
(85, 2, 43),
(86, 6, 43),
(87, 3, 44),
(88, 8, 44),
(89, 3, 45),
(90, 10, 45),
(91, 3, 46),
(92, 7, 46),
(93, 4, 47),
(94, 7, 47),
(95, 4, 48),
(96, 8, 48),
(97, 2, 49),
(98, 6, 49),
(99, 1, 50),
(100, 6, 50),
(101, 4, 51),
(102, 8, 51),
(103, 3, 52),
(104, 10, 52),
(105, 2, 53),
(106, 9, 53),
(107, 1, 54),
(108, 9, 54),
(109, 2, 55),
(110, 7, 55),
(111, 4, 56),
(112, 6, 56);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute`
--

INSERT INTO `ec_product_with_attribute` (`id`, `attribute_id`, `product_id`) VALUES
(1, 4, 1),
(2, 6, 1),
(3, 2, 2),
(4, 9, 2),
(5, 4, 3),
(6, 10, 3),
(7, 4, 4),
(8, 6, 4),
(9, 4, 5),
(10, 9, 5),
(11, 1, 6),
(12, 6, 6),
(13, 2, 7),
(14, 8, 7),
(15, 5, 8),
(16, 6, 8),
(17, 3, 9),
(18, 7, 9),
(19, 1, 10),
(20, 9, 10),
(21, 5, 11),
(22, 10, 11),
(23, 1, 12),
(24, 10, 12),
(25, 3, 13),
(26, 7, 13),
(27, 4, 14),
(28, 8, 14),
(29, 2, 15),
(30, 6, 15),
(31, 4, 16),
(32, 9, 16),
(33, 2, 17),
(34, 6, 17),
(35, 5, 18),
(36, 10, 18),
(37, 3, 19),
(38, 7, 19),
(39, 4, 20),
(40, 7, 20),
(41, 4, 21),
(42, 7, 21),
(43, 2, 22),
(44, 6, 22),
(45, 4, 23),
(46, 7, 23);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

INSERT INTO `ec_product_with_attribute_set` (`id`, `attribute_set_id`, `product_id`, `order`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 1, 2, 0),
(4, 2, 2, 0),
(5, 1, 3, 0),
(6, 2, 3, 0),
(7, 1, 4, 0),
(8, 2, 4, 0),
(9, 1, 5, 0),
(10, 2, 5, 0),
(11, 1, 6, 0),
(12, 2, 6, 0),
(13, 1, 7, 0),
(14, 2, 7, 0),
(15, 1, 8, 0),
(16, 2, 8, 0),
(17, 1, 9, 0),
(18, 2, 9, 0),
(19, 1, 10, 0),
(20, 2, 10, 0),
(21, 1, 11, 0),
(22, 2, 11, 0),
(23, 1, 12, 0),
(24, 2, 12, 0),
(25, 1, 13, 0),
(26, 2, 13, 0),
(27, 1, 14, 0),
(28, 2, 14, 0),
(29, 1, 15, 0),
(30, 2, 15, 0),
(31, 1, 16, 0),
(32, 2, 16, 0),
(33, 1, 17, 0),
(34, 2, 17, 0),
(35, 1, 18, 0),
(36, 2, 18, 0),
(37, 1, 19, 0),
(38, 2, 19, 0),
(39, 1, 20, 0),
(40, 2, 20, 0),
(41, 1, 21, 0),
(42, 2, 21, 0),
(43, 1, 22, 0),
(44, 2, 22, 0),
(45, 1, 23, 0),
(46, 2, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_reviews`
--

INSERT INTO `ec_reviews` (`id`, `customer_id`, `product_id`, `star`, `comment`, `status`, `created_at`, `updated_at`, `images`) VALUES
(1, 8, 14, 4.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(2, 5, 5, 3.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),
(3, 9, 18, 1.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),
(4, 2, 21, 4.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\"]'),
(5, 3, 20, 5.00, 'Clean & perfect source code', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(6, 9, 11, 1.00, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\"]'),
(7, 8, 9, 5.00, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),
(8, 8, 4, 2.00, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),
(9, 1, 17, 1.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),
(10, 2, 3, 5.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\"]'),
(11, 2, 1, 2.00, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),
(12, 2, 10, 1.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\"]'),
(13, 4, 11, 2.00, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\"]'),
(14, 8, 4, 3.00, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(15, 2, 23, 5.00, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),
(16, 6, 1, 3.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),
(17, 5, 2, 4.00, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),
(18, 1, 14, 5.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/11.jpg\"}'),
(19, 1, 1, 4.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(20, 5, 19, 4.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),
(21, 10, 4, 1.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),
(22, 2, 5, 5.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\"]'),
(23, 10, 5, 1.00, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\"]'),
(24, 3, 8, 3.00, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),
(25, 3, 13, 1.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),
(26, 1, 12, 5.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\"]'),
(27, 1, 3, 5.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(28, 7, 16, 5.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\"]'),
(29, 3, 13, 1.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),
(30, 1, 19, 1.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(31, 5, 18, 4.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(32, 4, 9, 2.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(33, 8, 7, 5.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(34, 9, 9, 4.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),
(35, 7, 1, 1.00, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(36, 8, 8, 5.00, 'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),
(37, 7, 4, 4.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(38, 1, 13, 4.00, 'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(39, 4, 4, 3.00, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(40, 7, 6, 2.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/12.jpg\"}'),
(41, 7, 13, 3.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),
(42, 8, 20, 5.00, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),
(43, 9, 4, 4.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),
(44, 10, 2, 4.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),
(45, 9, 21, 5.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(46, 2, 6, 1.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(47, 1, 13, 5.00, 'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(48, 9, 1, 2.00, 'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),
(49, 3, 12, 3.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\"]'),
(50, 1, 2, 5.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(51, 7, 6, 4.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(52, 5, 8, 3.00, 'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),
(53, 8, 5, 1.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\"]'),
(54, 4, 7, 5.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),
(55, 6, 15, 4.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),
(56, 10, 11, 3.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/21.jpg\"}'),
(57, 4, 14, 2.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(58, 6, 2, 5.00, 'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(59, 9, 12, 3.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\"]'),
(60, 1, 16, 3.00, 'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(61, 9, 8, 5.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(62, 3, 23, 2.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),
(63, 9, 12, 2.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),
(64, 6, 9, 4.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/8.jpg\"}'),
(65, 6, 23, 5.00, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),
(66, 9, 11, 5.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(67, 7, 6, 3.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(68, 2, 8, 4.00, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\"]'),
(69, 1, 4, 4.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(70, 9, 13, 5.00, 'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),
(71, 9, 3, 2.00, 'Great E-commerce system. And much more : Wonderful Customer Support.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/13.jpg\"}'),
(72, 6, 2, 2.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\"]'),
(73, 10, 1, 2.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(74, 9, 18, 2.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/20.jpg\"}'),
(75, 10, 10, 4.00, 'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(76, 2, 11, 1.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),
(77, 1, 13, 3.00, 'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(78, 1, 4, 1.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(79, 8, 9, 1.00, 'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\"]'),
(80, 7, 9, 1.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/10.jpg\"]'),
(81, 4, 5, 4.00, 'Clean & perfect source code', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/20.jpg\"}'),
(82, 6, 16, 3.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),
(83, 1, 1, 5.00, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),
(84, 10, 7, 2.00, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),
(85, 2, 15, 3.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),
(86, 5, 21, 3.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),
(87, 4, 8, 1.00, 'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(88, 4, 7, 3.00, 'Clean & perfect source code', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),
(89, 10, 22, 1.00, 'Good app, good backup service and support. Good documentation.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),
(90, 8, 9, 3.00, 'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),
(91, 10, 23, 4.00, 'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),
(92, 4, 20, 2.00, 'The code is good, in general, if you like it, can you give it 5 stars?', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/10.jpg\"}'),
(93, 5, 18, 1.00, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),
(94, 5, 8, 4.00, 'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),
(95, 2, 22, 3.00, 'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/18.jpg\"}'),
(96, 1, 9, 4.00, 'Best ecommerce CMS online store!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/1.jpg\"]'),
(97, 10, 14, 5.00, 'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/4.jpg\"]'),
(98, 7, 11, 5.00, 'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/9.jpg\"}'),
(99, 1, 15, 1.00, 'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),
(100, 3, 13, 4.00, 'We have received brilliant service support and will be expanding the features with the developer. Nice product!', 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19', '[\"products\\/3.jpg\",\"products\\/5.jpg\"]');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 3315.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(2, 2, NULL, 779.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(3, 3, NULL, 1298.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(4, 4, NULL, 1402.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(5, 5, NULL, 3865.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(6, 6, NULL, 794.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(7, 7, NULL, 649.00, NULL, '', 'approved', '1276.00', 'pending', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(8, 8, NULL, 618.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(9, 9, NULL, 1812.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(10, 10, NULL, 1588.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(11, 11, NULL, 1602.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(12, 12, NULL, 1902.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(13, 13, NULL, 1854.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(14, 14, NULL, 1638.00, NULL, '', 'approved', '2873.70', 'pending', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(15, 15, NULL, 5444.00, NULL, '', 'delivered', '4586.90', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(16, 16, NULL, 1268.00, NULL, '', 'approved', '1131.90', 'pending', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(17, 17, NULL, 2472.00, NULL, '', 'delivered', '170.10', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(18, 18, NULL, 647.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(19, 19, NULL, 779.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(20, 20, NULL, 1602.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(21, 21, NULL, 691.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(22, 22, NULL, 662.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(23, 23, NULL, 1268.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(24, 24, NULL, 2043.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(25, 25, NULL, 5460.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(26, 26, NULL, 2403.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(27, 27, NULL, 1382.00, NULL, '', 'approved', '1232.70', 'pending', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(28, 28, NULL, 2680.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(29, 29, NULL, 2316.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(30, 30, NULL, 1326.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(31, 31, NULL, 1989.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(32, 32, NULL, 662.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(33, 33, NULL, 681.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(34, 34, NULL, 574.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(35, 35, NULL, 2676.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(36, 36, NULL, 3639.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(37, 37, NULL, 1268.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(38, 38, NULL, 1236.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(39, 39, NULL, 2575.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(40, 40, NULL, 1382.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(41, 41, NULL, 4062.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(42, 42, NULL, 1602.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(43, 43, NULL, 2232.00, NULL, '', 'approved', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(44, 44, NULL, 2710.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(45, 45, NULL, 3429.00, NULL, '', 'delivered', '0.00', 'completed', 'pending', '0.00', 0, '2021-09-16 07:44:31', '2021-09-16 07:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipment_histories`
--

INSERT INTO `ec_shipment_histories` (`id`, `action`, `description`, `user_id`, `shipment_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'create_from_order', 'Shipping was created from order %order_id%', 0, 1, 1, '2021-09-01 07:44:29', '2021-09-01 07:44:29'),
(2, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 1, 1, '2021-09-14 15:44:29', '2021-09-16 07:44:29'),
(3, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 1, 1, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(4, 'create_from_order', 'Shipping was created from order %order_id%', 0, 2, 2, '2021-09-02 23:44:30', '2021-09-02 23:44:30'),
(5, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 2, 2, '2021-09-14 15:44:30', '2021-09-16 07:44:30'),
(6, 'create_from_order', 'Shipping was created from order %order_id%', 0, 3, 3, '2021-09-12 23:44:30', '2021-09-12 23:44:30'),
(7, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 3, 3, '2021-09-14 15:44:30', '2021-09-16 07:44:30'),
(8, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 3, 3, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(9, 'create_from_order', 'Shipping was created from order %order_id%', 0, 4, 4, '2021-09-11 13:44:30', '2021-09-11 13:44:30'),
(10, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 4, 4, '2021-09-14 17:44:30', '2021-09-16 07:44:30'),
(11, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 4, 4, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(12, 'create_from_order', 'Shipping was created from order %order_id%', 0, 5, 5, '2021-09-14 17:44:30', '2021-09-14 17:44:30'),
(13, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 5, 5, '2021-09-14 17:44:30', '2021-09-16 07:44:30'),
(14, 'create_from_order', 'Shipping was created from order %order_id%', 0, 6, 6, '2021-09-02 19:44:30', '2021-09-02 19:44:30'),
(15, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 6, 6, '2021-09-14 19:44:30', '2021-09-16 07:44:30'),
(16, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 6, 6, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(17, 'create_from_order', 'Shipping was created from order %order_id%', 0, 7, 7, '2021-09-04 07:44:30', '2021-09-04 07:44:30'),
(18, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 7, 7, '2021-09-14 19:44:30', '2021-09-16 07:44:30'),
(19, 'create_from_order', 'Shipping was created from order %order_id%', 0, 8, 8, '2021-09-13 11:44:30', '2021-09-13 11:44:30'),
(20, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 8, 8, '2021-09-14 21:44:30', '2021-09-16 07:44:30'),
(21, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 8, 8, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(22, 'create_from_order', 'Shipping was created from order %order_id%', 0, 9, 9, '2021-09-07 19:44:30', '2021-09-07 19:44:30'),
(23, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 9, 9, '2021-09-14 21:44:30', '2021-09-16 07:44:30'),
(24, 'create_from_order', 'Shipping was created from order %order_id%', 0, 10, 10, '2021-09-09 05:44:30', '2021-09-09 05:44:30'),
(25, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 10, 10, '2021-09-14 21:44:30', '2021-09-16 07:44:30'),
(26, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 10, 10, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(27, 'create_from_order', 'Shipping was created from order %order_id%', 0, 11, 11, '2021-09-02 23:44:30', '2021-09-02 23:44:30'),
(28, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 11, 11, '2021-09-14 23:44:30', '2021-09-16 07:44:30'),
(29, 'create_from_order', 'Shipping was created from order %order_id%', 0, 12, 12, '2021-09-10 23:44:30', '2021-09-10 23:44:30'),
(30, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 12, 12, '2021-09-14 23:44:30', '2021-09-16 07:44:30'),
(31, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 12, 12, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(32, 'create_from_order', 'Shipping was created from order %order_id%', 0, 13, 13, '2021-09-10 01:44:30', '2021-09-10 01:44:30'),
(33, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 13, 13, '2021-09-15 01:44:30', '2021-09-16 07:44:30'),
(34, 'create_from_order', 'Shipping was created from order %order_id%', 0, 14, 14, '2021-09-07 13:44:30', '2021-09-07 13:44:30'),
(35, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 14, 14, '2021-09-15 01:44:30', '2021-09-16 07:44:30'),
(36, 'create_from_order', 'Shipping was created from order %order_id%', 0, 15, 15, '2021-09-09 07:44:30', '2021-09-09 07:44:30'),
(37, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 15, 15, '2021-09-15 03:44:30', '2021-09-16 07:44:30'),
(38, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 15, 15, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(39, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 15, 15, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(40, 'create_from_order', 'Shipping was created from order %order_id%', 0, 16, 16, '2021-09-05 19:44:30', '2021-09-05 19:44:30'),
(41, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 16, 16, '2021-09-15 03:44:30', '2021-09-16 07:44:30'),
(42, 'create_from_order', 'Shipping was created from order %order_id%', 0, 17, 17, '2021-09-08 17:44:30', '2021-09-08 17:44:30'),
(43, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 17, 17, '2021-09-15 05:44:30', '2021-09-16 07:44:30'),
(44, 'update_cod_status', 'Updated COD status to Completed . Updated by: %user_name%', 0, 17, 17, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(45, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 17, 17, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(46, 'create_from_order', 'Shipping was created from order %order_id%', 0, 18, 18, '2021-09-09 19:44:30', '2021-09-09 19:44:30'),
(47, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 18, 18, '2021-09-15 05:44:30', '2021-09-16 07:44:30'),
(48, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 18, 18, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(49, 'create_from_order', 'Shipping was created from order %order_id%', 0, 19, 19, '2021-09-06 13:44:30', '2021-09-06 13:44:30'),
(50, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 19, 19, '2021-09-15 05:44:30', '2021-09-16 07:44:30'),
(51, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 19, 19, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(52, 'create_from_order', 'Shipping was created from order %order_id%', 0, 20, 20, '2021-09-13 07:44:30', '2021-09-13 07:44:30'),
(53, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 20, 20, '2021-09-15 07:44:30', '2021-09-16 07:44:30'),
(54, 'create_from_order', 'Shipping was created from order %order_id%', 0, 21, 21, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(55, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 21, 21, '2021-09-15 07:44:30', '2021-09-16 07:44:30'),
(56, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 21, 21, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(57, 'create_from_order', 'Shipping was created from order %order_id%', 0, 22, 22, '2021-09-08 23:44:30', '2021-09-08 23:44:30'),
(58, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 22, 22, '2021-09-15 09:44:30', '2021-09-16 07:44:30'),
(59, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 22, 22, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(60, 'create_from_order', 'Shipping was created from order %order_id%', 0, 23, 23, '2021-09-09 21:44:30', '2021-09-09 21:44:30'),
(61, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 23, 23, '2021-09-15 09:44:30', '2021-09-16 07:44:30'),
(62, 'create_from_order', 'Shipping was created from order %order_id%', 0, 24, 24, '2021-09-09 15:44:30', '2021-09-09 15:44:30'),
(63, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 24, 24, '2021-09-15 11:44:30', '2021-09-16 07:44:30'),
(64, 'create_from_order', 'Shipping was created from order %order_id%', 0, 25, 25, '2021-09-13 19:44:30', '2021-09-13 19:44:30'),
(65, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 25, 25, '2021-09-15 11:44:30', '2021-09-16 07:44:30'),
(66, 'create_from_order', 'Shipping was created from order %order_id%', 0, 26, 26, '2021-09-09 13:44:30', '2021-09-09 13:44:30'),
(67, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 26, 26, '2021-09-15 13:44:30', '2021-09-16 07:44:30'),
(68, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 26, 26, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(69, 'create_from_order', 'Shipping was created from order %order_id%', 0, 27, 27, '2021-09-11 01:44:30', '2021-09-11 01:44:30'),
(70, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 27, 27, '2021-09-15 13:44:30', '2021-09-16 07:44:30'),
(71, 'create_from_order', 'Shipping was created from order %order_id%', 0, 28, 28, '2021-09-14 19:44:30', '2021-09-14 19:44:30'),
(72, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 28, 28, '2021-09-15 13:44:30', '2021-09-16 07:44:30'),
(73, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 28, 28, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(74, 'create_from_order', 'Shipping was created from order %order_id%', 0, 29, 29, '2021-09-10 23:44:30', '2021-09-10 23:44:30'),
(75, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 29, 29, '2021-09-15 15:44:30', '2021-09-16 07:44:30'),
(76, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 29, 29, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(77, 'create_from_order', 'Shipping was created from order %order_id%', 0, 30, 30, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(78, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 30, 30, '2021-09-15 15:44:30', '2021-09-16 07:44:30'),
(79, 'create_from_order', 'Shipping was created from order %order_id%', 0, 31, 31, '2021-09-12 05:44:30', '2021-09-12 05:44:30'),
(80, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 31, 31, '2021-09-15 17:44:30', '2021-09-16 07:44:30'),
(81, 'create_from_order', 'Shipping was created from order %order_id%', 0, 32, 32, '2021-09-13 23:44:30', '2021-09-13 23:44:30'),
(82, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 32, 32, '2021-09-15 17:44:30', '2021-09-16 07:44:30'),
(83, 'create_from_order', 'Shipping was created from order %order_id%', 0, 33, 33, '2021-09-15 19:44:30', '2021-09-15 19:44:30'),
(84, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 33, 33, '2021-09-15 19:44:30', '2021-09-16 07:44:30'),
(85, 'create_from_order', 'Shipping was created from order %order_id%', 0, 34, 34, '2021-09-14 07:44:30', '2021-09-14 07:44:30'),
(86, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 34, 34, '2021-09-15 19:44:30', '2021-09-16 07:44:30'),
(87, 'create_from_order', 'Shipping was created from order %order_id%', 0, 35, 35, '2021-09-15 19:44:30', '2021-09-15 19:44:30'),
(88, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 35, 35, '2021-09-15 19:44:30', '2021-09-16 07:44:30'),
(89, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 35, 35, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(90, 'create_from_order', 'Shipping was created from order %order_id%', 0, 36, 36, '2021-09-15 01:44:30', '2021-09-15 01:44:30'),
(91, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 36, 36, '2021-09-15 21:44:30', '2021-09-16 07:44:30'),
(92, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 36, 36, '2021-09-16 07:44:30', '2021-09-16 07:44:30'),
(93, 'create_from_order', 'Shipping was created from order %order_id%', 0, 37, 37, '2021-09-14 05:44:30', '2021-09-14 05:44:30'),
(94, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 37, 37, '2021-09-15 21:44:31', '2021-09-16 07:44:31'),
(95, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 37, 37, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(96, 'create_from_order', 'Shipping was created from order %order_id%', 0, 38, 38, '2021-09-13 07:44:31', '2021-09-13 07:44:31'),
(97, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 38, 38, '2021-09-15 23:44:31', '2021-09-16 07:44:31'),
(98, 'create_from_order', 'Shipping was created from order %order_id%', 0, 39, 39, '2021-09-15 15:44:31', '2021-09-15 15:44:31'),
(99, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 39, 39, '2021-09-15 23:44:31', '2021-09-16 07:44:31'),
(100, 'create_from_order', 'Shipping was created from order %order_id%', 0, 40, 40, '2021-09-12 23:44:31', '2021-09-12 23:44:31'),
(101, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 40, 40, '2021-09-15 23:44:31', '2021-09-16 07:44:31'),
(102, 'create_from_order', 'Shipping was created from order %order_id%', 0, 41, 41, '2021-09-14 19:44:31', '2021-09-14 19:44:31'),
(103, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 41, 41, '2021-09-16 01:44:31', '2021-09-16 07:44:31'),
(104, 'create_from_order', 'Shipping was created from order %order_id%', 0, 42, 42, '2021-09-13 19:44:31', '2021-09-13 19:44:31'),
(105, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 42, 42, '2021-09-16 01:44:31', '2021-09-16 07:44:31'),
(106, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 42, 42, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(107, 'create_from_order', 'Shipping was created from order %order_id%', 0, 43, 43, '2021-09-15 01:44:31', '2021-09-15 01:44:31'),
(108, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 43, 43, '2021-09-16 01:44:31', '2021-09-16 07:44:31'),
(109, 'create_from_order', 'Shipping was created from order %order_id%', 0, 44, 44, '2021-09-14 23:44:31', '2021-09-14 23:44:31'),
(110, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 44, 44, '2021-09-16 03:44:31', '2021-09-16 07:44:31'),
(111, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 44, 44, '2021-09-16 07:44:31', '2021-09-16 07:44:31'),
(112, 'create_from_order', 'Shipping was created from order %order_id%', 0, 45, 45, '2021-09-16 03:44:31', '2021-09-16 03:44:31'),
(113, 'update_status', 'Changed status of shipping to : Approved . Updated by: %user_name%', 0, 45, 45, '2021-09-16 05:44:31', '2021-09-16 07:44:31'),
(114, 'update_status', 'Changed status of shipping to : Delivered . Updated by: %user_name%', 0, 45, 45, '2021-09-16 07:44:31', '2021-09-16 07:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-09-16 07:44:19', '2021-09-16 07:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', 1, 'base_on_price', '0.00', NULL, '0.00', '2021-09-16 07:44:19', '2021-09-16 07:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Martfury', 'sales@botble.com', '1800979769', '502 New Street', 'AU', 'Brighton VIC', 'Brighton VIC', 1, 1, '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(2, 'None', 0.000000, 2, 'published', '2021-09-16 07:44:19', '2021-09-16 07:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SHIPPING', 0, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(2, 'PAYMENT', 1, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(3, 'Order & Returns', 2, 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/jpeg', 2200, 'brands/1.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(2, 0, '2', 1, 'image/jpeg', 2685, 'brands/2.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(3, 0, '3', 1, 'image/jpeg', 2311, 'brands/3.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(4, 0, '4', 1, 'image/jpeg', 2374, 'brands/4.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(5, 0, '5', 1, 'image/jpeg', 1927, 'brands/5.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(6, 0, '6', 1, 'image/jpeg', 2519, 'brands/6.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(7, 0, '7', 1, 'image/jpeg', 3043, 'brands/7.jpg', '[]', '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(8, 0, '1', 2, 'image/jpeg', 5173, 'product-categories/1.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(9, 0, '2', 2, 'image/jpeg', 7355, 'product-categories/2.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(10, 0, '3', 2, 'image/jpeg', 4427, 'product-categories/3.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(11, 0, '4', 2, 'image/jpeg', 2963, 'product-categories/4.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(12, 0, '5', 2, 'image/jpeg', 5016, 'product-categories/5.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(13, 0, '6', 2, 'image/jpeg', 4101, 'product-categories/6.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(14, 0, '7', 2, 'image/jpeg', 2576, 'product-categories/7.jpg', '[]', '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(15, 0, '8', 2, 'image/jpeg', 4670, 'product-categories/8.jpg', '[]', '2021-09-16 07:43:53', '2021-09-16 07:43:53', NULL),
(16, 0, '1', 3, 'image/jpeg', 4911, 'products/1.jpg', '[]', '2021-09-16 07:43:53', '2021-09-16 07:43:53', NULL),
(17, 0, '10-1', 3, 'image/jpeg', 120755, 'products/10-1.jpg', '[]', '2021-09-16 07:43:53', '2021-09-16 07:43:53', NULL),
(18, 0, '10-2', 3, 'image/jpeg', 148563, 'products/10-2.jpg', '[]', '2021-09-16 07:43:53', '2021-09-16 07:43:53', NULL),
(19, 0, '10', 3, 'image/jpeg', 11176, 'products/10.jpg', '[]', '2021-09-16 07:43:54', '2021-09-16 07:43:54', NULL),
(20, 0, '11-1', 3, 'image/jpeg', 13706, 'products/11-1.jpg', '[]', '2021-09-16 07:43:54', '2021-09-16 07:43:54', NULL),
(21, 0, '11-2', 3, 'image/jpeg', 16809, 'products/11-2.jpg', '[]', '2021-09-16 07:43:54', '2021-09-16 07:43:54', NULL),
(22, 0, '11-3', 3, 'image/jpeg', 23991, 'products/11-3.jpg', '[]', '2021-09-16 07:43:54', '2021-09-16 07:43:54', NULL),
(23, 0, '11', 3, 'image/jpeg', 8234, 'products/11.jpg', '[]', '2021-09-16 07:43:55', '2021-09-16 07:43:55', NULL),
(24, 0, '12-1', 3, 'image/jpeg', 47775, 'products/12-1.jpg', '[]', '2021-09-16 07:43:55', '2021-09-16 07:43:55', NULL),
(25, 0, '12-2', 3, 'image/jpeg', 52722, 'products/12-2.jpg', '[]', '2021-09-16 07:43:55', '2021-09-16 07:43:55', NULL),
(26, 0, '12-3', 3, 'image/jpeg', 57295, 'products/12-3.jpg', '[]', '2021-09-16 07:43:56', '2021-09-16 07:43:56', NULL),
(27, 0, '12', 3, 'image/jpeg', 9642, 'products/12.jpg', '[]', '2021-09-16 07:43:56', '2021-09-16 07:43:56', NULL),
(28, 0, '13-1', 3, 'image/jpeg', 7494, 'products/13-1.jpg', '[]', '2021-09-16 07:43:56', '2021-09-16 07:43:56', NULL),
(29, 0, '13', 3, 'image/jpeg', 7266, 'products/13.jpg', '[]', '2021-09-16 07:43:56', '2021-09-16 07:43:56', NULL),
(30, 0, '14', 3, 'image/jpeg', 6626, 'products/14.jpg', '[]', '2021-09-16 07:43:56', '2021-09-16 07:43:56', NULL),
(31, 0, '15-1', 3, 'image/jpeg', 9014, 'products/15-1.jpg', '[]', '2021-09-16 07:43:57', '2021-09-16 07:43:57', NULL),
(32, 0, '15', 3, 'image/jpeg', 6629, 'products/15.jpg', '[]', '2021-09-16 07:43:57', '2021-09-16 07:43:57', NULL),
(33, 0, '16', 3, 'image/jpeg', 8558, 'products/16.jpg', '[]', '2021-09-16 07:43:57', '2021-09-16 07:43:57', NULL),
(34, 0, '17-1', 3, 'image/jpeg', 63248, 'products/17-1.jpg', '[]', '2021-09-16 07:43:57', '2021-09-16 07:43:57', NULL),
(35, 0, '17-2', 3, 'image/jpeg', 71404, 'products/17-2.jpg', '[]', '2021-09-16 07:43:57', '2021-09-16 07:43:57', NULL),
(36, 0, '17-3', 3, 'image/jpeg', 58949, 'products/17-3.jpg', '[]', '2021-09-16 07:43:58', '2021-09-16 07:43:58', NULL),
(37, 0, '17', 3, 'image/jpeg', 7050, 'products/17.jpg', '[]', '2021-09-16 07:43:58', '2021-09-16 07:43:58', NULL),
(38, 0, '18-1', 3, 'image/jpeg', 527022, 'products/18-1.jpg', '[]', '2021-09-16 07:43:58', '2021-09-16 07:43:58', NULL),
(39, 0, '18-2', 3, 'image/jpeg', 43849, 'products/18-2.jpg', '[]', '2021-09-16 07:43:59', '2021-09-16 07:43:59', NULL),
(40, 0, '18-3', 3, 'image/jpeg', 63876, 'products/18-3.jpg', '[]', '2021-09-16 07:43:59', '2021-09-16 07:43:59', NULL),
(41, 0, '18', 3, 'image/jpeg', 61587, 'products/18.jpg', '[]', '2021-09-16 07:44:00', '2021-09-16 07:44:00', NULL),
(42, 0, '19-1', 3, 'image/jpeg', 23166, 'products/19-1.jpg', '[]', '2021-09-16 07:44:00', '2021-09-16 07:44:00', NULL),
(43, 0, '19-2', 3, 'image/jpeg', 12306, 'products/19-2.jpg', '[]', '2021-09-16 07:44:00', '2021-09-16 07:44:00', NULL),
(44, 0, '19-3', 3, 'image/jpeg', 51458, 'products/19-3.jpg', '[]', '2021-09-16 07:44:01', '2021-09-16 07:44:01', NULL),
(45, 0, '19', 3, 'image/jpeg', 227872, 'products/19.jpg', '[]', '2021-09-16 07:44:01', '2021-09-16 07:44:01', NULL),
(46, 0, '2-1', 3, 'image/jpeg', 85522, 'products/2-1.jpg', '[]', '2021-09-16 07:44:01', '2021-09-16 07:44:01', NULL),
(47, 0, '2-2', 3, 'image/jpeg', 122423, 'products/2-2.jpg', '[]', '2021-09-16 07:44:02', '2021-09-16 07:44:02', NULL),
(48, 0, '2-3', 3, 'image/jpeg', 61996, 'products/2-3.jpg', '[]', '2021-09-16 07:44:02', '2021-09-16 07:44:02', NULL),
(49, 0, '2', 3, 'image/jpeg', 10832, 'products/2.jpg', '[]', '2021-09-16 07:44:03', '2021-09-16 07:44:03', NULL),
(50, 0, '20-1', 3, 'image/jpeg', 108013, 'products/20-1.jpg', '[]', '2021-09-16 07:44:03', '2021-09-16 07:44:03', NULL),
(51, 0, '20-2', 3, 'image/jpeg', 107598, 'products/20-2.jpg', '[]', '2021-09-16 07:44:03', '2021-09-16 07:44:03', NULL),
(52, 0, '20-3', 3, 'image/jpeg', 31959, 'products/20-3.jpg', '[]', '2021-09-16 07:44:04', '2021-09-16 07:44:04', NULL),
(53, 0, '20', 3, 'image/jpeg', 12798, 'products/20.jpg', '[]', '2021-09-16 07:44:04', '2021-09-16 07:44:04', NULL),
(54, 0, '21-1', 3, 'image/jpeg', 92022, 'products/21-1.jpg', '[]', '2021-09-16 07:44:04', '2021-09-16 07:44:04', NULL),
(55, 0, '21-2', 3, 'image/jpeg', 73796, 'products/21-2.jpg', '[]', '2021-09-16 07:44:05', '2021-09-16 07:44:05', NULL),
(56, 0, '21', 3, 'image/jpeg', 72410, 'products/21.jpg', '[]', '2021-09-16 07:44:05', '2021-09-16 07:44:05', NULL),
(57, 0, '22-1', 3, 'image/jpeg', 50174, 'products/22-1.jpg', '[]', '2021-09-16 07:44:06', '2021-09-16 07:44:06', NULL),
(58, 0, '22-2', 3, 'image/jpeg', 63267, 'products/22-2.jpg', '[]', '2021-09-16 07:44:06', '2021-09-16 07:44:06', NULL),
(59, 0, '22-3', 3, 'image/jpeg', 125017, 'products/22-3.jpg', '[]', '2021-09-16 07:44:07', '2021-09-16 07:44:07', NULL),
(60, 0, '22', 3, 'image/jpeg', 88636, 'products/22.jpg', '[]', '2021-09-16 07:44:07', '2021-09-16 07:44:07', NULL),
(61, 0, '23-1', 3, 'image/jpeg', 64117, 'products/23-1.jpg', '[]', '2021-09-16 07:44:07', '2021-09-16 07:44:07', NULL),
(62, 0, '23-2', 3, 'image/jpeg', 96786, 'products/23-2.jpg', '[]', '2021-09-16 07:44:08', '2021-09-16 07:44:08', NULL),
(63, 0, '23-3', 3, 'image/jpeg', 46477, 'products/23-3.jpg', '[]', '2021-09-16 07:44:08', '2021-09-16 07:44:08', NULL),
(64, 0, '23', 3, 'image/jpeg', 68142, 'products/23.jpg', '[]', '2021-09-16 07:44:09', '2021-09-16 07:44:09', NULL),
(65, 0, '3', 3, 'image/jpeg', 8388, 'products/3.jpg', '[]', '2021-09-16 07:44:09', '2021-09-16 07:44:09', NULL),
(66, 0, '4-1', 3, 'image/jpeg', 39071, 'products/4-1.jpg', '[]', '2021-09-16 07:44:09', '2021-09-16 07:44:09', NULL),
(67, 0, '4-2', 3, 'image/jpeg', 35982, 'products/4-2.jpg', '[]', '2021-09-16 07:44:10', '2021-09-16 07:44:10', NULL),
(68, 0, '4-3', 3, 'image/jpeg', 62867, 'products/4-3.jpg', '[]', '2021-09-16 07:44:10', '2021-09-16 07:44:10', NULL),
(69, 0, '4', 3, 'image/jpeg', 5547, 'products/4.jpg', '[]', '2021-09-16 07:44:10', '2021-09-16 07:44:10', NULL),
(70, 0, '5-1', 3, 'image/jpeg', 72383, 'products/5-1.jpg', '[]', '2021-09-16 07:44:10', '2021-09-16 07:44:10', NULL),
(71, 0, '5-2', 3, 'image/jpeg', 108591, 'products/5-2.jpg', '[]', '2021-09-16 07:44:11', '2021-09-16 07:44:11', NULL),
(72, 0, '5-3', 3, 'image/jpeg', 63741, 'products/5-3.jpg', '[]', '2021-09-16 07:44:11', '2021-09-16 07:44:11', NULL),
(73, 0, '5', 3, 'image/jpeg', 98052, 'products/5.jpg', '[]', '2021-09-16 07:44:12', '2021-09-16 07:44:12', NULL),
(74, 0, '6', 3, 'image/jpeg', 10944, 'products/6.jpg', '[]', '2021-09-16 07:44:12', '2021-09-16 07:44:12', NULL),
(75, 0, '7', 3, 'image/jpeg', 10160, 'products/7.jpg', '[]', '2021-09-16 07:44:12', '2021-09-16 07:44:12', NULL),
(76, 0, '8-1', 3, 'image/jpeg', 9986, 'products/8-1.jpg', '[]', '2021-09-16 07:44:12', '2021-09-16 07:44:12', NULL),
(77, 0, '8-2', 3, 'image/jpeg', 8132, 'products/8-2.jpg', '[]', '2021-09-16 07:44:12', '2021-09-16 07:44:12', NULL),
(78, 0, '8-3', 3, 'image/jpeg', 7867, 'products/8-3.jpg', '[]', '2021-09-16 07:44:12', '2021-09-16 07:44:12', NULL),
(79, 0, '8', 3, 'image/jpeg', 10459, 'products/8.jpg', '[]', '2021-09-16 07:44:13', '2021-09-16 07:44:13', NULL),
(80, 0, '9-1', 3, 'image/jpeg', 623616, 'products/9-1.jpg', '[]', '2021-09-16 07:44:13', '2021-09-16 07:44:13', NULL),
(81, 0, '9-2', 3, 'image/jpeg', 647454, 'products/9-2.jpg', '[]', '2021-09-16 07:44:13', '2021-09-16 07:44:13', NULL),
(82, 0, '9', 3, 'image/jpeg', 16733, 'products/9.jpg', '[]', '2021-09-16 07:44:14', '2021-09-16 07:44:14', NULL),
(83, 0, '1', 4, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL),
(84, 0, '10', 4, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL),
(85, 0, '2', 4, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL),
(86, 0, '3', 4, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL),
(87, 0, '4', 4, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-09-16 07:44:16', '2021-09-16 07:44:16', NULL),
(88, 0, '5', 4, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-09-16 07:44:16', '2021-09-16 07:44:16', NULL),
(89, 0, '6', 4, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-09-16 07:44:16', '2021-09-16 07:44:16', NULL),
(90, 0, '7', 4, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-09-16 07:44:16', '2021-09-16 07:44:16', NULL),
(91, 0, '8', 4, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-09-16 07:44:16', '2021-09-16 07:44:16', NULL),
(92, 0, '9', 4, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-09-16 07:44:16', '2021-09-16 07:44:16', NULL),
(93, 0, '1', 5, 'image/jpeg', 532819, 'news/1.jpg', '[]', '2021-09-16 07:44:19', '2021-09-16 07:44:19', NULL),
(94, 0, '2', 5, 'image/jpeg', 553729, 'news/2.jpg', '[]', '2021-09-16 07:44:20', '2021-09-16 07:44:20', NULL),
(95, 0, '3', 5, 'image/jpeg', 522223, 'news/3.jpg', '[]', '2021-09-16 07:44:20', '2021-09-16 07:44:20', NULL),
(96, 0, '4', 5, 'image/jpeg', 910908, 'news/4.jpg', '[]', '2021-09-16 07:44:21', '2021-09-16 07:44:21', NULL),
(97, 0, '5', 5, 'image/jpeg', 666561, 'news/5.jpg', '[]', '2021-09-16 07:44:21', '2021-09-16 07:44:21', NULL),
(98, 0, '6', 5, 'image/jpeg', 431929, 'news/6.jpg', '[]', '2021-09-16 07:44:22', '2021-09-16 07:44:22', NULL),
(99, 0, '7', 5, 'image/jpeg', 568268, 'news/7.jpg', '[]', '2021-09-16 07:44:22', '2021-09-16 07:44:22', NULL),
(100, 0, '1', 6, 'image/jpeg', 139880, 'sliders/1.jpg', '[]', '2021-09-16 07:44:23', '2021-09-16 07:44:23', NULL),
(101, 0, '2', 6, 'image/jpeg', 85128, 'sliders/2.jpg', '[]', '2021-09-16 07:44:23', '2021-09-16 07:44:23', NULL),
(102, 0, '3', 6, 'image/jpeg', 85668, 'sliders/3.jpg', '[]', '2021-09-16 07:44:24', '2021-09-16 07:44:24', NULL),
(103, 0, '1', 7, 'image/jpeg', 56015, 'promotion/1.jpg', '[]', '2021-09-16 07:44:24', '2021-09-16 07:44:24', NULL),
(104, 0, '2', 7, 'image/jpeg', 39964, 'promotion/2.jpg', '[]', '2021-09-16 07:44:24', '2021-09-16 07:44:24', NULL),
(105, 0, '3', 7, 'image/jpeg', 71948, 'promotion/3.jpg', '[]', '2021-09-16 07:44:24', '2021-09-16 07:44:24', NULL),
(106, 0, '4', 7, 'image/jpeg', 94590, 'promotion/4.jpg', '[]', '2021-09-16 07:44:25', '2021-09-16 07:44:25', NULL),
(107, 0, '5', 7, 'image/jpeg', 96153, 'promotion/5.jpg', '[]', '2021-09-16 07:44:25', '2021-09-16 07:44:25', NULL),
(108, 0, '6', 7, 'image/jpeg', 160910, 'promotion/6.jpg', '[]', '2021-09-16 07:44:25', '2021-09-16 07:44:25', NULL),
(109, 0, '7', 7, 'image/jpeg', 59044, 'promotion/7.jpg', '[]', '2021-09-16 07:44:25', '2021-09-16 07:44:25', NULL),
(110, 0, '8', 7, 'image/jpeg', 39964, 'promotion/8.jpg', '[]', '2021-09-16 07:44:25', '2021-09-16 07:44:25', NULL),
(111, 0, '9', 7, 'image/jpeg', 54865, 'promotion/9.jpg', '[]', '2021-09-16 07:44:25', '2021-09-16 07:44:25', NULL),
(112, 0, 'app', 8, 'image/png', 88771, 'general/app.png', '[]', '2021-09-16 07:44:26', '2021-09-16 07:44:26', NULL),
(113, 0, 'coming-soon', 8, 'image/jpeg', 83359, 'general/coming-soon.jpg', '[]', '2021-09-16 07:44:26', '2021-09-16 07:44:26', NULL),
(114, 0, 'favicon', 8, 'image/png', 5147, 'general/favicon.png', '[]', '2021-09-16 07:44:27', '2021-09-16 07:44:27', NULL),
(115, 0, 'logo-dark', 8, 'image/png', 906, 'general/logo-dark.png', '[]', '2021-09-16 07:44:27', '2021-09-16 07:44:27', NULL),
(116, 0, 'logo-light', 8, 'image/png', 1430, 'general/logo-light.png', '[]', '2021-09-16 07:44:27', '2021-09-16 07:44:27', NULL),
(117, 0, 'logo', 8, 'image/png', 892, 'general/logo.png', '[]', '2021-09-16 07:44:27', '2021-09-16 07:44:27', NULL),
(118, 0, 'newsletter', 8, 'image/jpeg', 25569, 'general/newsletter.jpg', '[]', '2021-09-16 07:44:27', '2021-09-16 07:44:27', NULL),
(119, 0, 'payment-method-1', 8, 'image/jpeg', 976, 'general/payment-method-1.jpg', '[]', '2021-09-16 07:44:28', '2021-09-16 07:44:28', NULL),
(120, 0, 'payment-method-2', 8, 'image/jpeg', 1122, 'general/payment-method-2.jpg', '[]', '2021-09-16 07:44:28', '2021-09-16 07:44:28', NULL),
(121, 0, 'payment-method-3', 8, 'image/jpeg', 1040, 'general/payment-method-3.jpg', '[]', '2021-09-16 07:44:28', '2021-09-16 07:44:28', NULL),
(122, 0, 'payment-method-4', 8, 'image/jpeg', 722, 'general/payment-method-4.jpg', '[]', '2021-09-16 07:44:28', '2021-09-16 07:44:28', NULL),
(123, 0, 'payment-method-5', 8, 'image/jpeg', 773, 'general/payment-method-5.jpg', '[]', '2021-09-16 07:44:28', '2021-09-16 07:44:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'brands', 'brands', 0, '2021-09-16 07:43:51', '2021-09-16 07:43:51', NULL),
(2, 0, 'product-categories', 'product-categories', 0, '2021-09-16 07:43:52', '2021-09-16 07:43:52', NULL),
(3, 0, 'products', 'products', 0, '2021-09-16 07:43:53', '2021-09-16 07:43:53', NULL),
(4, 0, 'customers', 'customers', 0, '2021-09-16 07:44:15', '2021-09-16 07:44:15', NULL),
(5, 0, 'news', 'news', 0, '2021-09-16 07:44:19', '2021-09-16 07:44:19', NULL),
(6, 0, 'sliders', 'sliders', 0, '2021-09-16 07:44:23', '2021-09-16 07:44:23', NULL),
(7, 0, 'promotion', 'promotion', 0, '2021-09-16 07:44:24', '2021-09-16 07:44:24', NULL),
(8, 0, 'general', 'general', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(2, 'Quick links', 'quick-links', 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(3, 'Company', 'company', 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(4, 'Business', 'business', 'published', '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(2, 1, 0, NULL, NULL, '#', NULL, 0, 'Pages', NULL, '_self', 1, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(3, 1, 2, 2, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(4, 1, 2, 3, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 0, 'Terms Of Use', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(5, 1, 2, 4, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(6, 1, 2, 5, 'Botble\\Page\\Models\\Page', '/refund-policy', NULL, 0, 'Refund Policy', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(7, 1, 2, 12, 'Botble\\Page\\Models\\Page', '/coming-soon', NULL, 0, 'Coming soon', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(8, 1, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 1, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(9, 1, 8, NULL, NULL, '/products', NULL, 0, 'All products', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(10, 1, 8, 15, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/batteries', NULL, 0, 'Products Of Category', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(11, 1, 8, NULL, NULL, '/products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(12, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(13, 1, 0, 7, 'Botble\\Page\\Models\\Page', '/faqs', NULL, 0, 'FAQs', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(14, 1, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(15, 2, 0, 3, 'Botble\\Page\\Models\\Page', '/terms-of-use', NULL, 0, 'Terms Of Use', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(16, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Terms & Conditions', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(17, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/refund-policy', NULL, 0, 'Refund Policy', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(18, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/faqs', NULL, 0, 'FAQs', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(19, 2, 0, NULL, NULL, '/nothing', NULL, 0, '404 Page', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(20, 3, 0, 2, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(21, 3, 0, 10, 'Botble\\Page\\Models\\Page', '/affiliate', NULL, 0, 'Affiliate', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(22, 3, 0, 11, 'Botble\\Page\\Models\\Page', '/career', NULL, 0, 'Career', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(23, 3, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(24, 4, 0, 6, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Our blog', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(25, 4, 0, NULL, NULL, '/cart', NULL, 0, 'Cart', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(26, 4, 0, NULL, NULL, '/customer/overview', NULL, 0, 'My account', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26'),
(27, 4, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 0, '2021-09-16 07:44:26', '2021-09-16 07:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon', '[\"icon-star\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(2, 'icon', '[\"icon-laundry\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(3, 'icon', '[\"icon-shirt\"]', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(4, 'icon', '[\"icon-desktop\"]', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(5, 'icon', '[\"icon-lampshade\"]', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(6, 'icon', '[\"icon-heart-pulse\"]', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(7, 'icon', '[\"icon-diamond2\"]', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(8, 'icon', '[\"icon-desktop\"]', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(9, 'icon', '[\"icon-smartphone\"]', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(10, 'icon', '[\"icon-baby-bottle\"]', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(11, 'icon', '[\"icon-baseball\"]', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(12, 'icon', '[\"icon-book2\"]', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(13, 'icon', '[\"icon-car-siren\"]', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(14, 'icon', '[\"icon-wrench\"]', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', '2021-09-16 07:43:53', '2021-09-16 07:43:53');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_05_03_000001_create_customer_columns', 1),
(15, '2019_05_03_000002_create_subscriptions_table', 1),
(16, '2019_05_03_000003_create_subscription_items_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2021_08_02_084121_fix_old_shortcode', 1),
(19, '2020_11_18_150916_ads_create_ads_table', 2),
(20, '2015_06_29_025744_create_audit_history', 3),
(21, '2015_06_18_033822_create_blog_table', 4),
(22, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(23, '2016_06_17_091537_create_contacts_table', 5),
(24, '2020_03_05_041139_create_ecommerce_tables', 6),
(25, '2020_09_22_135635_update_taxes_table', 6),
(26, '2020_09_29_101006_add_views_into_ec_products_table', 6),
(27, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 6),
(28, '2020_10_06_073439_improve_ecommerce_database', 6),
(29, '2020_11_01_040415_update_table_ec_order_addresses', 6),
(30, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 6),
(31, '2020_11_30_015801_update_table_ec_product_categories', 6),
(32, '2021_01_01_044147_ecommerce_create_flash_sale_table', 6),
(33, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 6),
(34, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 6),
(35, '2021_02_18_073505_update_table_ec_reviews', 6),
(36, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 6),
(37, '2021_03_10_025153_change_column_tax_amount', 6),
(38, '2021_03_20_033103_add_column_availability_to_table_ec_products', 6),
(39, '2021_04_28_074008_ecommerce_create_product_label_table', 6),
(40, '2021_05_31_173037_ecommerce_create_ec_products_translations', 6),
(41, '2021_06_28_153141_correct_slugs_data', 6),
(42, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 6),
(43, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 6),
(44, '2021_09_01_115151_remove_unused_fields_in_ec_products', 6),
(45, '2018_07_09_221238_create_faq_table', 7),
(46, '2021_07_06_030002_create_marketplace_table', 8),
(47, '2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table', 8),
(48, '2017_10_24_154832_create_newsletter_table', 9),
(49, '2017_05_18_080441_create_payment_tables', 10),
(50, '2021_03_27_144913_add_customer_type_into_table_payments', 10),
(51, '2021_05_24_034720_make_column_currency_nullable', 10),
(52, '2021_08_09_161302_add_metadata_column_to_payments_table', 10),
(53, '2017_07_11_140018_create_simple_slider_table', 11),
(54, '2016_10_07_193005_create_translations_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_revenues`
--

CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `fee` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `current_balance` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_customer_revenues`
--

INSERT INTO `mp_customer_revenues` (`id`, `customer_id`, `order_id`, `sub_amount`, `fee`, `amount`, `current_balance`, `currency`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 3, '2436.00', '0.00', '2436.00', '0.00', 'USD', NULL, '2021-09-13 07:44:31', '2021-09-13 07:44:31'),
(2, 6, 4, '2358.30', '0.00', '2358.30', '0.00', 'USD', NULL, '2021-09-15 01:44:31', '2021-09-15 01:44:31'),
(3, 10, 6, '565.40', '0.00', '565.40', '0.00', 'USD', NULL, '2021-09-15 03:44:32', '2021-09-15 03:44:32'),
(4, 9, 8, '44.55', '0.00', '44.55', '2436.00', 'USD', NULL, '2021-09-11 19:44:33', '2021-09-11 19:44:33'),
(5, 10, 10, '1079.40', '0.00', '1079.40', '565.40', 'USD', NULL, '2021-09-07 03:44:33', '2021-09-07 03:44:33'),
(6, 10, 12, '1670.90', '0.00', '1670.90', '1644.80', 'USD', NULL, '2021-09-09 19:44:34', '2021-09-09 19:44:34'),
(7, 2, 19, '569.80', '0.00', '569.80', '0.00', 'USD', NULL, '2021-09-09 15:44:34', '2021-09-09 15:44:34'),
(8, 6, 21, '645.70', '0.00', '645.70', '2358.30', 'USD', NULL, '2021-09-01 15:44:35', '2021-09-01 15:44:35'),
(9, 9, 22, '1415.70', '0.00', '1415.70', '2480.55', 'USD', NULL, '2021-09-08 15:44:36', '2021-09-08 15:44:36'),
(10, 9, 26, '3999.00', '0.00', '3999.00', '3896.25', 'USD', NULL, '2021-09-05 01:44:36', '2021-09-05 01:44:36'),
(11, 10, 28, '2840.20', '0.00', '2840.20', '3315.70', 'USD', NULL, '2021-08-25 13:44:37', '2021-08-25 13:44:37'),
(12, 10, 29, '248.78', '0.00', '248.78', '6155.90', 'USD', NULL, '2021-08-27 07:44:37', '2021-08-27 07:44:37'),
(13, 10, 35, '3902.90', '0.00', '3902.90', '6404.68', 'USD', NULL, '2021-09-04 07:44:38', '2021-09-04 07:44:38'),
(14, 9, 36, '4084.05', '0.00', '4084.05', '7895.25', 'USD', NULL, '2021-08-25 17:44:39', '2021-08-25 17:44:39'),
(15, 10, 37, '1131.90', '0.00', '1131.90', '10307.58', 'USD', NULL, '2021-08-15 15:44:39', '2021-08-15 15:44:39'),
(16, 9, 42, '2709.00', '0.00', '2709.00', '11979.30', 'USD', NULL, '2021-08-29 09:44:40', '2021-08-29 09:44:40'),
(17, 6, 44, '2601.90', '0.00', '2601.90', '3004.00', 'USD', NULL, '2021-09-12 13:44:40', '2021-09-12 13:44:40'),
(18, 6, 45, '4520.80', '0.00', '4520.80', '5605.90', 'USD', NULL, '2021-09-12 11:44:41', '2021-09-12 11:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_withdrawals`
--

CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `fee` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `current_balance` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_customer_withdrawals`
--

INSERT INTO `mp_customer_withdrawals` (`id`, `customer_id`, `fee`, `amount`, `current_balance`, `currency`, `description`, `bank_info`, `payment_channel`, `user_id`, `status`, `images`, `created_at`, `updated_at`) VALUES
(1, 2, '0.00', '2.00', '569.80', 'USD', '', '{\"name\":\"Darwin Rutherford Jr.\",\"number\":\"+14404666709\",\"full_name\":\"Prof. Julian Smith V\",\"description\":\"Raphaelle Sipes\"}', NULL, 0, 'completed', NULL, '2021-09-16 07:44:42', '2021-09-16 07:44:42'),
(2, 2, '0.00', '94.00', '567.80', 'USD', '', '{\"name\":\"Darwin Rutherford Jr.\",\"number\":\"+14404666709\",\"full_name\":\"Prof. Julian Smith V\",\"description\":\"Raphaelle Sipes\"}', NULL, 0, 'completed', NULL, '2021-09-16 07:44:42', '2021-09-16 07:44:42'),
(3, 2, '0.00', '62.00', '473.80', 'USD', '', '{\"name\":\"Darwin Rutherford Jr.\",\"number\":\"+14404666709\",\"full_name\":\"Prof. Julian Smith V\",\"description\":\"Raphaelle Sipes\"}', NULL, 0, 'pending', NULL, '2021-09-16 07:44:43', '2021-09-16 07:44:43'),
(4, 2, '0.00', '124.00', '411.80', 'USD', '', '{\"name\":\"Darwin Rutherford Jr.\",\"number\":\"+14404666709\",\"full_name\":\"Prof. Julian Smith V\",\"description\":\"Raphaelle Sipes\"}', NULL, 0, 'processing', NULL, '2021-09-16 07:44:43', '2021-09-16 07:44:43'),
(5, 6, '0.00', '1418.00', '10126.70', 'USD', '', '{\"name\":\"Jazmyne Cartwright\",\"number\":\"+18726568611\",\"full_name\":\"Kennedy Pfeffer\",\"description\":\"Ms. Mikayla Hayes II\"}', NULL, 0, 'processing', NULL, '2021-09-16 07:44:44', '2021-09-16 07:44:44'),
(6, 6, '0.00', '840.00', '8708.70', 'USD', '', '{\"name\":\"Jazmyne Cartwright\",\"number\":\"+18726568611\",\"full_name\":\"Kennedy Pfeffer\",\"description\":\"Ms. Mikayla Hayes II\"}', NULL, 0, 'processing', NULL, '2021-09-16 07:44:45', '2021-09-16 07:44:45'),
(7, 6, '0.00', '1103.00', '7868.70', 'USD', '', '{\"name\":\"Jazmyne Cartwright\",\"number\":\"+18726568611\",\"full_name\":\"Kennedy Pfeffer\",\"description\":\"Ms. Mikayla Hayes II\"}', NULL, 0, 'pending', NULL, '2021-09-16 07:44:45', '2021-09-16 07:44:45'),
(8, 9, '0.00', '3664.00', '14688.30', 'USD', '', '{\"name\":\"Hettie Corkery\",\"number\":\"+18582334713\",\"full_name\":\"Brenda Abernathy\",\"description\":\"Quincy Carter II\"}', NULL, 0, 'pending', NULL, '2021-09-16 07:44:46', '2021-09-16 07:44:46'),
(9, 9, '0.00', '3611.00', '11024.30', 'USD', '', '{\"name\":\"Hettie Corkery\",\"number\":\"+18582334713\",\"full_name\":\"Brenda Abernathy\",\"description\":\"Quincy Carter II\"}', NULL, 0, 'processing', NULL, '2021-09-16 07:44:46', '2021-09-16 07:44:46'),
(10, 10, '0.00', '1870.00', '11439.48', 'USD', '', '{\"name\":\"Alice Roob\",\"number\":\"+17734397830\",\"full_name\":\"Doug O\'Keefe\",\"description\":\"Dorris Champlin\"}', NULL, 0, 'completed', NULL, '2021-09-16 07:44:47', '2021-09-16 07:44:47'),
(11, 10, '0.00', '2579.00', '9569.48', 'USD', '', '{\"name\":\"Alice Roob\",\"number\":\"+17734397830\",\"full_name\":\"Doug O\'Keefe\",\"description\":\"Dorris Champlin\"}', NULL, 0, 'completed', NULL, '2021-09-16 07:44:48', '2021-09-16 07:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `customer_id`, `logo`, `description`, `content`, `status`, `vendor_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Claude Breitenberg', 'donnelly.kane@example.org', '+18489841571', '60922 Hickle Crossroad Apt. 413', 'TC', 'Kansas', 'Kailynland', 2, 'customers/1.jpg', 'Cupiditate at et deserunt est.', 'Perferendis provident eveniet labore maiores. Ducimus asperiores ipsum sed quisquam. Eveniet cum voluptas autem sit repudiandae odit.', 'published', NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(2, 'Miss Bridget DuBuque Sr.', 'pouros.corene@example.net', '+18101190167', '9081 Donnie Turnpike', 'LI', 'North Dakota', 'Schuppeton', 6, 'customers/2.jpg', 'Dolores temporibus est ut sed enim cupiditate.', 'Eaque corrupti cupiditate et ut suscipit. Nobis magni quia non voluptas enim. Soluta nemo dolores minima.', 'published', NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(3, 'Mrs. Misty Haag', 'nyost@example.com', '+14146777021', '795 Mante Junction', 'PK', 'Illinois', 'Port Albachester', 9, 'customers/3.jpg', 'Sit nostrum magni enim qui perferendis.', 'Earum autem repellat eum qui id nostrum. Laborum quae sunt debitis sit est. Excepturi rerum quae a sint incidunt.', 'published', NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(4, 'Hubert Ankunding', 'leannon.ramon@example.net', '+18608723640', '2254 Ritchie Oval Apt. 657', 'PN', 'South Carolina', 'Strackeberg', 10, 'customers/4.jpg', 'Placeat omnis quia eos animi est tenetur non.', 'Et atque delectus assumenda aliquam deserunt magni. Dolorum esse hic voluptas debitis. Et facere alias illum iusto consequuntur autem et.', 'published', NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `mp_vendor_info`
--

CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_vendor_info`
--

INSERT INTO `mp_vendor_info` (`id`, `customer_id`, `balance`, `total_fee`, `total_revenue`, `signature`, `bank_info`, `created_at`, `updated_at`) VALUES
(1, 2, '287.80', '0.00', '569.80', '$2y$10$/7DZ47XoPXtzLnkbV6ONee5ckHZR3Q9HsfoVkdFOQUsrFjMVzNUUG', '{\"name\":\"Darwin Rutherford Jr.\",\"number\":\"+14404666709\",\"full_name\":\"Prof. Julian Smith V\",\"description\":\"Raphaelle Sipes\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:44'),
(2, 6, '6765.70', '0.00', '10126.70', '$2y$10$298OOA7rYn57H0kA8tzGOuD3H.UVoSY53n1mYNg7DfqxgKCukOlbK', '{\"name\":\"Jazmyne Cartwright\",\"number\":\"+18726568611\",\"full_name\":\"Kennedy Pfeffer\",\"description\":\"Ms. Mikayla Hayes II\"}', '2021-09-16 07:44:29', '2021-09-16 07:44:46'),
(3, 9, '7413.30', '0.00', '14688.30', '$2y$10$BoCoX1i6kegpGenrnxtNMe6Zl0p9hqPOUk3nK0UsXj9TalxzDAoMS', '{\"name\":\"Hettie Corkery\",\"number\":\"+18582334713\",\"full_name\":\"Brenda Abernathy\",\"description\":\"Quincy Carter II\"}', '2021-09-16 07:44:29', '2021-09-16 07:44:47'),
(4, 10, '6990.48', '0.00', '11439.48', '$2y$10$DGAZvQyKjO8jtqg0VA4i5OiY8IhN9cRQH5cCOibl3xl90jKFVZod6', '{\"name\":\"Alice Roob\",\"number\":\"+17734397830\",\"full_name\":\"Doug O\'Keefe\",\"description\":\"Dorris Champlin\"}', '2021-09-16 07:44:29', '2021-09-16 07:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(2, 'About us', '<p>King say in a long, low hall, which was a most extraordinary noise going on within--a constant howling and sneezing, and every now and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never heard it before,\' said the youth, \'one would hardly suppose That your eye was as much use in waiting by the hedge!\' then silence, and then keep tight hold of its right paw round, \'lives a Hatter: and in his sleep, \'that \"I breathe when I got up and picking.</p><p>Duchess: \'and the moral of that is--\"Be what you would have appeared to them to sell,\' the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the distance, and she put them into a pig,\' Alice quietly said, just as well she might, what a long sleep you\'ve had!\' \'Oh, I\'ve had such a hurry that she had never before seen a rabbit with either a waistcoat-pocket, or a worm. The question is, Who in the pool of tears which she had peeped into the Dormouse\'s place, and.</p><p>Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room to grow here,\' said the King. (The jury all brightened up again.) \'Please your Majesty,\' the Hatter added as an explanation. \'Oh, you\'re sure to make ONE respectable person!\' Soon her eye fell on a crimson velvet cushion; and, last of all this time. \'I want a clean cup,\' interrupted the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and then treading on.</p><p>After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit was still in sight, hurrying down it. There was exactly three inches high). \'But I\'m not used to say anything. \'Why,\' said the Duchess. \'I make you grow shorter.\' \'One side of the officers: but the Rabbit came up to her very much confused, \'I don\'t like them!\' When the pie was all dark overhead; before her was another long passage, and the little passage: and THEN--she found herself at last.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(3, 'Terms Of Use', '<p>Queen to play croquet.\' The Frog-Footman repeated, in the air, mixed up with the strange creatures of her sharp little chin. \'I\'ve a right to think,\' said Alice hastily; \'but I\'m not myself, you see.\' \'I don\'t even know what to uglify is, you see, Miss, this here ought to be seen--everything seemed to be talking in his confusion he bit a large caterpillar, that was linked into hers began to repeat it, but her head in the pool as it is.\' \'I quite forgot you didn\'t sign it,\' said the Pigeon had.</p><p>English,\' thought Alice; \'I might as well as she spoke. Alice did not feel encouraged to ask help of any that do,\' Alice said to a snail. \"There\'s a porpoise close behind her, listening: so she went on: \'But why did they draw?\' said Alice, looking down at her rather inquisitively, and seemed to follow, except a little scream of laughter. \'Oh, hush!\' the Rabbit began. Alice gave a little shaking among the people that walk with their heads downward! The Antipathies, I think--\' (she was obliged.</p><p>The Mouse looked at the jury-box, and saw that, in her life before, and he checked himself suddenly: the others looked round also, and all must have been changed several times since then.\' \'What do you know about it, and found quite a chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the Hatter, and he checked himself suddenly: the others looked round also, and all that,\' he said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be like, \'--for they.</p><p>I\'m better now--but I\'m a deal too far off to trouble myself about you: you must manage the best of educations--in fact, we went to work throwing everything within her reach at the door--I do wish I hadn\'t cried so much!\' Alas! it was too small, but at last in the shade: however, the moment he was gone, and, by the officers of the players to be a book written about me, that there was Mystery,\' the Mock Turtle replied, counting off the fire, licking her paws and washing her face--and she is.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(4, 'Terms & Conditions', '<p>The further off from England the nearer is to give the prizes?\' quite a long hookah, and taking not the smallest idea how to set about it; if I\'m not looking for eggs, I know all sorts of little Alice was so full of tears, but said nothing. \'Perhaps it doesn\'t matter which way I ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here with me! There are no mice in the pool rippling to the Dormouse, after thinking a minute or two, it was YOUR table,\'.</p><p>WAS a curious plan!\' exclaimed Alice. \'That\'s the reason and all the players, except the King, going up to her to wink with one eye; \'I seem to see a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'or perhaps they won\'t walk the way out of breath, and said nothing. \'This here young lady,\' said the Rabbit coming to look down and looked at them with one finger; and the pool a little way off, and had just begun \'Well, of all the time they were trying to box her own mind (as well as if.</p><p>Alice. \'I\'ve so often read in the middle of her childhood: and how she was terribly frightened all the things get used to it in a large cat which was full of the leaves: \'I should think you can find out the words: \'Where\'s the other side of the way wherever she wanted to send the hedgehog had unrolled itself, and began by taking the little dears came jumping merrily along hand in hand with Dinah, and saying to her feet in a day or two: wouldn\'t it be of any that do,\' Alice said to herself.</p><p>Gryphon. Alice did not like the three gardeners, but she could not even room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Cat, and vanished. Alice was beginning to grow larger again, and the baby was howling so much surprised, that for two reasons. First, because I\'m on the second verse of the baby?\' said the Mock Turtle repeated thoughtfully. \'I should like to be talking in his throat,\' said the Hatter, \'I cut some more of the cattle in the middle, being held up by two.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(5, 'Refund Policy', '<p>They had a vague sort of meaning in it, \'and what is the driest thing I know. Silence all round, if you only walk long enough.\' Alice felt that there was the Rabbit in a frightened tone. \'The Queen will hear you! You see, she came upon a Gryphon, lying fast asleep in the air: it puzzled her too much, so she bore it as far down the hall. After a while, finding that nothing more to do such a nice little dog near our house I should think it was,\' he said. \'Fifteenth,\' said the one who got any.</p><p>This question the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not attended to this mouse? Everything is so out-of-the-way down here, that I should think it was,\' he said. \'Fifteenth,\' said the King. \'Nearly two miles high,\' added the Gryphon; and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. He came in sight of the table, but there were a Duck and a great deal to come yet, please your Majesty,\' he began. \'You\'re a very poor speaker,\' said.</p><p>ARE OLD, FATHER WILLIAM,\' to the Queen. \'Their heads are gone, if it please your Majesty,\' the Hatter replied. \'Of course not,\' Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of my life.\' \'You are old, Father William,\' the young lady to see what was going on between the executioner, the King, and the soldiers did. After these came the royal children, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the.</p><p>Queen, the royal children; there were TWO little shrieks, and more faintly came, carried on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the sort,\' said the Hatter. \'It isn\'t a letter, after all: it\'s a set of verses.\' \'Are they in the face. \'I\'ll put a white one in by mistake; and if I fell off the top of her own mind (as well as the jury asked. \'That I can\'t put it right; \'not that it was as much right,\' said the Queen. An invitation from the trees.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(6, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(7, 'FAQs', '<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(8, 'Contact', '<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>', 1, NULL, 'full-width', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(10, 'Affiliate', '<p>Nile On every golden scale! \'How cheerfully he seems to be sure! However, everything is queer to-day.\' Just then she noticed that they couldn\'t get them out of their wits!\' So she set to work nibbling at the bottom of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of the tail, and ending with the game,\' the Queen had only one way up as the large birds complained that they would die. \'The trial cannot proceed,\' said the Caterpillar. Alice thought decidedly uncivil.</p><p>She soon got it out to her feet, for it flashed across her mind that she began thinking over other children she knew the meaning of it in a hoarse, feeble voice: \'I heard the King added in an offended tone, \'was, that the Queen said to Alice; and Alice looked all round her at the March Hare said in a very little use without my shoulders. Oh, how I wish you were me?\' \'Well, perhaps not,\' said the King, \'that saves a world of trouble, you know, with oh, such long curly brown hair! And it\'ll.</p><p>CAN all that green stuff be?\' said Alice. \'Anything you like,\' said the Caterpillar. Here was another puzzling question; and as for the Duchess said in a great crowd assembled about them--all sorts of things--I can\'t remember things as I do,\' said Alice loudly. \'The idea of the tale was something like this:-- \'Fury said to herself, as well go in at all?\' said the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this a good deal until she made.</p><p>Queen will hear you! You see, she came rather late, and the Queen\'s ears--\' the Rabbit came up to the whiting,\' said the Hatter. \'You might just as she swam nearer to watch them, and all of you, and listen to her. The Cat seemed to think that there was hardly room to open them again, and made believe to worry it; then Alice, thinking it was talking in his throat,\' said the Dormouse indignantly. However, he consented to go and take it away!\' There was no use in waiting by the end of your.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(11, 'Career', '<p>Alice, and tried to look at the Cat\'s head began fading away the moment she appeared; but she had to run back into the air. She did it at all; however, she went slowly after it: \'I never said I could shut up like a wild beast, screamed \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the judge,\' she said to Alice; and Alice was rather glad there WAS no one to listen to her. \'I wish I could shut up like a writing-desk?\' \'Come, we shall have to whisper a hint to Time, and.</p><p>I sleep\" is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the March Hare. \'Yes, please do!\' but the Dodo replied very readily: \'but that\'s because it stays the same size: to be no use in crying like that!\' said Alice sharply, for she had not gone much farther before she came rather late, and the baby violently up and said, without even looking round. \'I\'ll fetch the executioner myself,\'.</p><p>I do it again and again.\' \'You are old,\' said the King hastily said, and went by without noticing her. Then followed the Knave \'Turn them over!\' The Knave did so, and giving it something out of the baby?\' said the King said to herself; \'the March Hare interrupted in a natural way. \'I thought you did,\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a coaxing tone, and she went on, without attending to her, still it was only the pepper that had slipped.</p><p>Alice did not get dry very soon. \'Ahem!\' said the Footman. \'That\'s the reason and all would change to tinkling sheep-bells, and the fan, and skurried away into the air. This time there were ten of them, with her friend. When she got back to the Duchess: \'flamingoes and mustard both bite. And the Eaglet bent down its head impatiently, and walked a little quicker. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Duchess: \'and the moral of THAT is--\"Take care of the Lobster.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(12, 'Coming soon', '<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>', 1, NULL, 'coming-soon', 0, NULL, 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(1, 'USD', 0, 'XLFT8ZGZF3', 'bank_transfer', NULL, '2574.00', 1, 'pending', 'confirm', 1, NULL, NULL, '2021-09-16 07:44:29', '2021-09-16 07:44:29', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(2, 'USD', 0, 'J8OIDDSTT9', 'stripe', NULL, '569.80', 2, 'completed', 'confirm', 1, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(3, 'USD', 0, 'T3YMP2YEAP', 'stripe', NULL, '2436.00', 3, 'completed', 'confirm', 1, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(4, 'USD', 0, 'OFEOVXSSEE', 'paypal', NULL, '2358.30', 4, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(5, 'USD', 0, 'HKYHK8ZMLG', 'razorpay', NULL, '5377.40', 5, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(6, 'USD', 0, '9CAUZQ8OSH', 'paystack', NULL, '565.40', 6, 'completed', 'confirm', 1, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(7, 'USD', 0, 'O9YE5V1966', 'cod', NULL, '1276.00', 7, 'pending', 'confirm', 1, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(8, 'USD', 0, 'EYVN47Q3HP', 'paypal', NULL, '44.55', 8, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(9, 'USD', 0, 'BMIWQSSFWV', 'stripe', NULL, '2353.50', 9, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(10, 'USD', 0, 'YIP9SGXJAX', 'razorpay', NULL, '1079.40', 10, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(11, 'USD', 0, 'OSSDRAKMM2', 'razorpay', NULL, '2709.00', 11, 'completed', 'confirm', 8, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(12, 'USD', 0, 'O7GQWBLGYD', 'paystack', NULL, '1670.90', 12, 'completed', 'confirm', 8, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(13, 'USD', 0, 'LL4OBXAE0P', 'stripe', NULL, '125.55', 13, 'completed', 'confirm', 3, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(14, 'USD', 0, '59ZLVDVNVV', 'cod', NULL, '2873.70', 14, 'pending', 'confirm', 3, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(15, 'USD', 0, 'UAVNNMBWZQ', 'cod', NULL, '4586.90', 15, 'pending', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(16, 'USD', 0, 'SR0QUE0JBZ', 'cod', NULL, '1131.90', 16, 'pending', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(17, 'USD', 0, 'NM0JE28UOA', 'cod', NULL, '170.10', 17, 'pending', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(18, 'USD', 0, 'ASB0F7OHGA', 'bank_transfer', NULL, '649.00', 18, 'pending', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(19, 'USD', 0, 'EBV2VWXA59', 'paystack', NULL, '569.80', 19, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(20, 'USD', 0, 'AOV0YAOKTZ', 'bank_transfer', NULL, '2709.00', 20, 'pending', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(21, 'USD', 0, '4LWC56ET1M', 'sslcommerz', NULL, '645.70', 21, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(22, 'USD', 0, 'I7FZPHIGM1', 'razorpay', NULL, '1415.70', 22, 'completed', 'confirm', 3, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(23, 'USD', 0, 'P8QHEFOECI', 'razorpay', NULL, '1131.90', 23, 'completed', 'confirm', 3, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(24, 'USD', 0, 'GI0ECSASPX', 'mollie', NULL, '62.00', 24, 'completed', 'confirm', 7, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(25, 'USD', 0, 'A2SVDV5SEM', 'stripe', NULL, '6903.80', 25, 'completed', 'confirm', 7, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(26, 'USD', 0, 'EACPNWZ6YF', 'razorpay', NULL, '3999.00', 26, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(27, 'USD', 0, 'BINMGYHBTA', 'cod', NULL, '1232.70', 27, 'pending', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(28, 'USD', 0, 'O7BZOJB7NR', 'razorpay', NULL, '2840.20', 28, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(29, 'USD', 0, '2JAUYRVVPY', 'mollie', NULL, '248.78', 29, 'completed', 'confirm', 3, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(30, 'USD', 0, 'QF5ORKWVOE', 'bank_transfer', NULL, '1039.50', 30, 'pending', 'confirm', 3, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(31, 'USD', 0, '19BVIFWQQB', 'paystack', NULL, '1534.50', 31, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(32, 'USD', 0, 'YALHHBNK2S', 'sslcommerz', NULL, '1415.70', 32, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(33, 'USD', 0, 'EN8BPR1XZA', 'sslcommerz', NULL, '22.00', 33, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(34, 'USD', 0, 'ZWRMEAGH87', 'stripe', NULL, '600.60', 34, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(35, 'USD', 0, 'WLKKBADRB8', 'stripe', NULL, '3902.90', 35, 'completed', 'confirm', 4, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(36, 'USD', 0, 'RSYDTVYZB0', 'razorpay', NULL, '4084.05', 36, 'completed', 'confirm', 7, NULL, NULL, '2021-09-16 07:44:30', '2021-09-16 07:44:30', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(37, 'USD', 0, 'KEFHGZJLPR', 'paystack', NULL, '1131.90', 37, 'completed', 'confirm', 7, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(38, 'USD', 0, 'NGKZAF2YRA', 'mollie', NULL, '85.05', 38, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(39, 'USD', 0, 'EJ2CWJUHCI', 'sslcommerz', NULL, '2421.90', 39, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(40, 'USD', 0, 'WMINCO1Z8O', 'bank_transfer', NULL, '1232.70', 40, 'pending', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(41, 'USD', 0, 'URVRQ8S9CK', 'bank_transfer', NULL, '3354.20', 41, 'pending', 'confirm', 8, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(42, 'USD', 0, 'J836QFZFTE', 'razorpay', NULL, '2709.00', 42, 'completed', 'confirm', 8, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(43, 'USD', 0, 'C5MTBSJ58H', 'mollie', NULL, '1559.30', 43, 'completed', 'confirm', 8, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(44, 'USD', 0, 'A25BGNNCPG', 'paystack', NULL, '2601.90', 44, 'completed', 'confirm', 5, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(45, 'USD', 0, 'YMV4UOWMRZ', 'paypal', NULL, '4520.80', 45, 'completed', 'confirm', 7, NULL, NULL, '2021-09-16 07:44:31', '2021-09-16 07:44:31', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1615, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(2, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'There isn’t much a girl can’t handle with the right accessories. That’s why the perfect women’s clutch bag is a wardrobe essential for first dates and spring weddings.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1631, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(3, 'The Top 2020 Handbag Trends to Know', 'For the handbag obsessives, let\'s dive into the latter a little more. This year will bring a fresh array of bag designs, and already we\'ve gotten a sneak peek of what both spring and fall 2020 collections have to offer/', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1039, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'To match your multi-colored purses with your favorite outfits, simply select a complementary handbag hue that will make your outfit pop for work or the weekend.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 2023, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(5, 'How to Care for Leather Bags', 'A leather bag is a special, near-universally beloved object, appreciated in equal measure by bon-vivants of both sexes, who cherish the supple hand, understated burnish and heady smell that can only emanate from premium quality skin.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 2433, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1348, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(7, 'Explore Fashion Trending For Guys In Autumn 2021', 'Summer is just around the corner, and there\'s no easier way to amp up your new-season look than with a chic, new handbag. Whether you\'re wearing basic sweat shorts and a tank top or a pretty floral maxi dress, a bag is an effortless way to add interest to all your summer ensembles.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/7.jpg', 658, NULL, '2021-09-16 07:44:23', '2021-09-16 07:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 3, 1),
(2, 1, 2),
(3, 3, 3),
(4, 4, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]', NULL, NULL),
(2, 'payment_cod_status', '1', NULL, NULL),
(3, 'payment_bank_transfer_status', '1', NULL, NULL),
(4, 'simple_slider_using_assets', '0', NULL, NULL),
(5, 'media_random_hash', 'c1fa1eb3b2774b98614e3efe8d3c288f', NULL, NULL),
(6, 'permalink-botble-blog-models-post', 'blog', NULL, NULL),
(7, 'permalink-botble-blog-models-category', 'blog', NULL, NULL),
(8, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(9, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(10, 'plugins_ecommerce_customer_new_order_status', '0', NULL, NULL),
(11, 'plugins_ecommerce_admin_new_order_status', '0', NULL, NULL),
(14, 'ecommerce_store_name', 'Martfury', NULL, NULL),
(15, 'ecommerce_store_phone', '1800979769', NULL, NULL),
(16, 'ecommerce_store_address', '502 New Street', NULL, NULL),
(17, 'ecommerce_store_state', 'Brighton VIC', NULL, NULL),
(18, 'ecommerce_store_city', 'Brighton VIC', NULL, NULL),
(19, 'ecommerce_store_country', 'AU', NULL, NULL),
(20, 'theme', 'martfury', NULL, NULL),
(21, 'admin_logo', 'general/logo-light.png', NULL, NULL),
(22, 'theme-martfury-site_title', 'Martfury - Laravel Ecommerce system', NULL, NULL),
(23, 'theme-martfury-copyright', '© 2021 Martfury. All Rights Reserved.', NULL, NULL),
(24, 'theme-martfury-favicon', 'general/favicon.png', NULL, NULL),
(25, 'theme-martfury-logo', 'general/logo.png', NULL, NULL),
(26, 'theme-martfury-welcome_message', 'Welcome to Martfury Online Shopping Store!', NULL, NULL),
(27, 'theme-martfury-address', '502 New Street, Brighton VIC, Australia', NULL, NULL),
(28, 'theme-martfury-hotline', '1800 97 97 69', NULL, NULL),
(29, 'theme-martfury-email', 'contact@martfury.co', NULL, NULL),
(30, 'theme-martfury-payment_methods', '[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]', NULL, NULL),
(31, 'theme-martfury-newsletter_image', 'general/newsletter.jpg', NULL, NULL),
(32, 'theme-martfury-homepage_id', '1', NULL, NULL),
(33, 'theme-martfury-blog_page_id', '6', NULL, NULL),
(34, 'theme-martfury-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(35, 'theme-martfury-cookie_consent_learn_more_url', 'http://martfury.local/cookie-policy', NULL, NULL),
(36, 'theme-martfury-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(37, 'theme-martfury-number_of_products_per_page', '40', NULL, NULL),
(38, 'theme-martfury-product_feature_1_title', 'Shipping worldwide', NULL, NULL),
(39, 'theme-martfury-product_feature_1_icon', 'icon-network', NULL, NULL),
(40, 'theme-martfury-product_feature_2_title', 'Free 7-day return if eligible, so easy', NULL, NULL),
(41, 'theme-martfury-product_feature_2_icon', 'icon-3d-rotate', NULL, NULL),
(42, 'theme-martfury-product_feature_3_title', 'Supplier give bills for this product.', NULL, NULL),
(43, 'theme-martfury-product_feature_3_icon', 'icon-receipt', NULL, NULL),
(44, 'theme-martfury-product_feature_4_title', 'Pay online or when receiving goods', NULL, NULL),
(45, 'theme-martfury-product_feature_4_icon', 'icon-credit-card', NULL, NULL),
(46, 'theme-martfury-contact_info_box_1_title', 'Contact Directly', NULL, NULL),
(47, 'theme-martfury-contact_info_box_1_subtitle', 'contact@martfury.com', NULL, NULL),
(48, 'theme-martfury-contact_info_box_1_details', '(+004) 912-3548-07', NULL, NULL),
(49, 'theme-martfury-contact_info_box_2_title', 'Headquarters', NULL, NULL),
(50, 'theme-martfury-contact_info_box_2_subtitle', '17 Queen St, Southbank, Melbourne 10560, Australia', NULL, NULL),
(51, 'theme-martfury-contact_info_box_2_details', '', NULL, NULL),
(52, 'theme-martfury-contact_info_box_3_title', 'Work With Us', NULL, NULL),
(53, 'theme-martfury-contact_info_box_3_subtitle', 'Send your CV to our email:', NULL, NULL),
(54, 'theme-martfury-contact_info_box_3_details', 'career@martfury.com', NULL, NULL),
(55, 'theme-martfury-contact_info_box_4_title', 'Customer Service', NULL, NULL),
(56, 'theme-martfury-contact_info_box_4_subtitle', 'customercare@martfury.com', NULL, NULL),
(57, 'theme-martfury-contact_info_box_4_details', '(800) 843-2446', NULL, NULL),
(58, 'theme-martfury-contact_info_box_5_title', 'Media Relations', NULL, NULL),
(59, 'theme-martfury-contact_info_box_5_subtitle', 'media@martfury.com', NULL, NULL),
(60, 'theme-martfury-contact_info_box_5_details', '(801) 947-3564', NULL, NULL),
(61, 'theme-martfury-contact_info_box_6_title', 'Vendor Support', NULL, NULL),
(62, 'theme-martfury-contact_info_box_6_subtitle', 'vendorsupport@martfury.com', NULL, NULL),
(63, 'theme-martfury-contact_info_box_6_details', '(801) 947-3100', NULL, NULL),
(64, 'theme-martfury-number_of_cross_sale_products_in_cart_page', '7', NULL, NULL),
(65, 'theme-martfury-logo_in_the_checkout_page', 'general/logo-dark.png', NULL, NULL),
(66, 'theme-martfury-logo_in_invoices', 'general/logo-dark.png', NULL, NULL),
(67, 'theme-martfury-logo_vendor_dashboard', 'general/logo-dark.png', NULL, NULL),
(68, 'theme-martfury-social-name-1', 'Facebook', NULL, NULL),
(69, 'theme-martfury-social-url-1', 'https://www.facebook.com/', NULL, NULL),
(70, 'theme-martfury-social-icon-1', 'fa-facebook', NULL, NULL),
(71, 'theme-martfury-social-color-1', '#3b5999', NULL, NULL),
(72, 'theme-martfury-social-name-2', 'Twitter', NULL, NULL),
(73, 'theme-martfury-social-url-2', 'https://www.twitter.com/', NULL, NULL),
(74, 'theme-martfury-social-icon-2', 'fa-twitter', NULL, NULL),
(75, 'theme-martfury-social-color-2', '#55ACF9', NULL, NULL),
(76, 'theme-martfury-social-name-3', 'Instagram', NULL, NULL),
(77, 'theme-martfury-social-url-3', 'https://www.instagram.com/', NULL, NULL),
(78, 'theme-martfury-social-icon-3', 'fa-instagram', NULL, NULL),
(79, 'theme-martfury-social-color-3', '#E1306C', NULL, NULL),
(80, 'theme-martfury-social-name-4', 'Youtube', NULL, NULL),
(81, 'theme-martfury-social-url-4', 'https://www.youtube.com/', NULL, NULL),
(82, 'theme-martfury-social-icon-4', 'fa-youtube', NULL, NULL),
(83, 'theme-martfury-social-color-4', '#FF0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2021-09-16 07:44:24', '2021-09-16 07:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Slider 1', 'sliders/1.jpg', '/products', NULL, 1, '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(2, 1, 'Slider 2', 'sliders/2.jpg', '/products', NULL, 2, '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(3, 1, 'Slider 3', 'sliders/3.jpg', '/products', NULL, 3, '2021-09-16 07:44:24', '2021-09-16 07:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'fashion-live', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(2, 'hand-crafted', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(3, 'mestonix', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(4, 'sunshine', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(5, 'pure', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(6, 'anfold', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(7, 'automotive', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2021-09-16 07:43:52', '2021-09-16 07:43:52'),
(8, 'hot-promotions', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(9, 'electronics', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(10, 'consumer-electronic', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(11, 'home-audio-theaters', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(12, 'tv-videos', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(13, 'camera-photos-videos', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(14, 'cellphones-accessories', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(15, 'headphones', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(16, 'videos-games', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(17, 'wireless-speakers', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(18, 'office-electronic', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(19, 'accessories-parts', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(20, 'digital-cables', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(21, 'audio-video-cables', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(22, 'batteries', 15, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(23, 'clothing', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(24, 'computers', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(25, 'computer-technologies', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(26, 'computer-tablets', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(27, 'laptop', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(28, 'monitors', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(29, 'computer-components', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(30, 'networking', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(31, 'drive-storages', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(32, 'gaming-laptop', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(33, 'security-protection', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(34, 'accessories', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(35, 'home-kitchen', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(36, 'health-beauty', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(37, 'jewelry-watch', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(38, 'technology-toys', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(39, 'phones', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(40, 'babies-moms', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(41, 'sport-outdoor', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(42, 'books-office', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(43, 'cars-motorcycles', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(44, 'home-improvements', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-09-16 07:43:53', '2021-09-16 07:43:53'),
(45, 'dual-camera-20mp', 1, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(46, 'smart-watches', 2, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(47, 'beat-headphone', 3, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(48, 'red-black-headphone', 4, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(49, 'smart-watch-external', 5, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(50, 'nikon-hd-camera', 6, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(51, 'audio-equipment', 7, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(52, 'smart-televisions', 8, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(53, 'samsung-smart-phone', 9, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(54, 'herschel-leather-duffle-bag-in-brown-color', 10, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(55, 'xbox-one-wireless-controller-black-color', 11, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(56, 'epsion-plaster-printer', 12, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(57, 'sound-intone-i65-earphone-white-version', 13, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(58, 'bo-play-mini-bluetooth-speaker', 14, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(59, 'apple-macbook-air-retina-133-inch-laptop', 15, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(60, 'apple-macbook-air-retina-12-inch-laptop', 16, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(61, 'samsung-gear-vr-virtual-reality-headset', 17, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:14', '2021-09-16 07:44:14'),
(62, 'aveeno-moisturizing-body-shower-450ml', 18, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(63, 'nyx-beauty-couton-pallete-makeup-12', 19, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(64, 'nyx-beauty-couton-pallete-makeup-12', 20, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(65, 'mvmth-classical-leather-watch-in-black', 21, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(66, 'baxter-care-hair-kit-for-bearded-mens', 22, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(67, 'ciate-palemore-lipstick-bold-red-color', 23, 'Botble\\Ecommerce\\Models\\Product', 'products', '2021-09-16 07:44:15', '2021-09-16 07:44:15'),
(68, 'electronic', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(69, 'mobile', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(70, 'iphone', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(71, 'printer', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(72, 'office', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(73, 'it', 6, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2021-09-16 07:44:19', '2021-09-16 07:44:19'),
(74, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(75, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(76, 'jquery', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(77, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(78, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(79, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(80, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(81, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(82, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(83, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(84, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(85, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(86, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(87, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(88, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(89, 'explore-fashion-trending-for-guys-in-autumn-2021', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2021-09-16 07:44:23', '2021-09-16 07:44:26'),
(90, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(91, 'about-us', 2, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(92, 'terms-of-use', 3, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(93, 'terms-conditions', 4, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(94, 'refund-policy', 5, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(95, 'blog', 6, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(96, 'faqs', 7, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(97, 'contact', 8, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(98, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(99, 'affiliate', 10, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(100, 'career', 11, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(101, 'coming-soon', 12, 'Botble\\Page\\Models\\Page', '', '2021-09-16 07:44:24', '2021-09-16 07:44:24'),
(102, 'prof-claude-breitenberg', 1, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(103, 'miss-bridget-dubuque-sr', 2, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(104, 'mrs-misty-haag', 3, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-09-16 07:44:29', '2021-09-16 07:44:29'),
(105, 'hubert-ankunding', 4, 'Botble\\Marketplace\\Models\\Store', 'stores', '2021-09-16 07:44:29', '2021-09-16 07:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(3, 'Jquery', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-16 07:44:23', '2021-09-16 07:44:23'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-09-16 07:44:23', '2021-09-16 07:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(12, 1, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(20, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(21, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(22, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(23, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(24, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(25, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(26, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(27, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(28, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(29, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(30, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(31, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(32, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(33, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(34, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(35, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(36, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(37, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(38, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(39, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-09-16 07:45:02', '2021-09-16 07:45:02'),
(40, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(41, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(42, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(43, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(44, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(45, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(46, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(47, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(48, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(49, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(50, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(51, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(52, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(53, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(54, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(55, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(56, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(57, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(58, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(59, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(60, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(61, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(62, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(63, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(64, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(65, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(66, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(67, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(68, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(69, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(70, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(71, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(72, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(73, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(74, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(75, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(76, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(77, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(78, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(79, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(80, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(81, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(82, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(83, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(84, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(85, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(86, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(87, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(88, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(89, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(90, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(91, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(92, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(93, 1, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(94, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(95, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(96, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(97, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(98, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(99, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(100, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(101, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(102, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(103, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(104, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(105, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(106, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(107, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(108, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(109, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(110, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(111, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(112, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(113, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(114, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(115, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(116, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(117, 1, 'en', 'core/acl/api', 'name', 'Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(118, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(119, 1, 'en', 'core/acl/api', 'save', 'Save', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(120, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(121, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(122, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(123, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(124, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(125, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(126, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(127, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(128, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(129, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(130, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(131, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(132, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(133, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(134, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(135, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(136, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(137, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(138, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(139, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(140, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(141, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(142, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(143, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(144, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(145, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(146, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(147, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(148, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(149, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(150, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(151, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(152, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(153, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(154, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(155, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(156, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(157, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(158, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(159, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(160, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(161, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(162, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(163, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(164, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(165, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(166, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(167, 1, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(168, 1, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(169, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(170, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(171, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(172, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(173, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(174, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(175, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(176, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(177, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(178, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(179, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(180, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(181, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(182, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(183, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(184, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(185, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(186, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(187, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(188, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(189, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(190, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(191, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(192, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(193, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(194, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(195, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(196, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(197, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(198, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(199, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(200, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(201, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(202, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(203, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(204, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(205, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(206, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(207, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(208, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(209, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(210, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(211, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(212, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(213, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(214, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(215, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(216, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(217, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(218, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(219, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(220, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(221, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(222, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(223, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(224, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(225, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(226, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(227, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(228, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(229, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(230, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(231, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(232, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(233, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(234, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(235, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(236, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(237, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(238, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(239, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(240, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(241, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(242, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(243, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(244, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(245, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(246, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(247, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(248, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(249, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(250, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(251, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(252, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(253, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(254, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(255, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(256, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(257, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(258, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(259, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(260, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(261, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(262, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(263, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(264, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(265, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(266, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(267, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(268, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(269, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(270, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(271, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(272, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(273, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(274, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(275, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(276, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(277, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(278, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(279, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(280, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(281, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(282, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(283, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(284, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(285, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(286, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(287, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(288, 1, 'vi', 'core/acl/auth', 'login.username', 'Tên truy cập', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(289, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(290, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(291, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(292, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(293, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(294, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(295, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(296, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(297, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(298, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(299, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(300, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(301, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(302, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(303, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(304, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(305, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(306, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(307, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(308, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(309, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(310, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(311, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(312, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(313, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(314, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(315, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(316, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(317, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(318, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(319, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(320, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(321, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(322, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(323, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(324, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(325, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(326, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(327, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(328, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(329, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(330, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(331, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(332, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(333, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(334, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(335, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(336, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(337, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(338, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(339, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(340, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(341, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(342, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(343, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(344, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(345, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(346, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(347, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(348, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(349, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(350, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(351, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(352, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(353, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(354, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(355, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(356, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(357, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(358, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(359, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(360, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(361, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(362, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(363, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(364, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(365, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(366, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(367, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(368, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(369, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(370, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(371, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(372, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(373, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(374, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(375, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(376, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(377, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(378, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(379, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(380, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(381, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-09-16 07:45:03', '2021-09-16 07:45:03');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(382, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(383, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(384, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(385, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(386, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(387, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(388, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(389, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(390, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(391, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(392, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(393, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(394, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(395, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(396, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(397, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(398, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(399, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(400, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(401, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(402, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(403, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(404, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(405, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(406, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(407, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(408, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(409, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(410, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(411, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(412, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(413, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(414, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(415, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(416, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(417, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(418, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(419, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(420, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(421, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(422, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(423, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(424, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(425, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(426, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(427, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(428, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(429, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(430, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(431, 1, 'en', 'core/base/base', 'no', 'No', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(432, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(433, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(434, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(435, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(436, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(437, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(438, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-09-16 07:45:03', '2021-09-16 07:45:03'),
(439, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(440, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(441, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(442, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(443, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(444, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(445, 1, 'en', 'core/base/base', 'image', 'Image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(446, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(447, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(448, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(449, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(450, 1, 'en', 'core/base/base', 'tools', 'Tools', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(451, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(452, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(453, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(454, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(455, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(456, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(457, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(458, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(459, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(460, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(461, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(462, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(463, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(464, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(465, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(466, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(467, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(468, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(469, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(470, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(471, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(472, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(473, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(474, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(475, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(476, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(477, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(478, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://martfury.local/admin\">clicking here</a>.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(479, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(480, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(481, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(482, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(483, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(484, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(485, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(486, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(487, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(488, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(489, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(490, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(491, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(492, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(493, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(494, 1, 'en', 'core/base/forms', 'file', 'File', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(495, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(496, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(497, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(498, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(499, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(500, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(501, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(502, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(503, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(504, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(505, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(506, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(507, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(508, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(509, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(510, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(511, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(512, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(513, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(514, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(515, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(516, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(517, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(518, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(519, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(520, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(521, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(522, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(523, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(524, 1, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(525, 1, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(526, 1, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(527, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(528, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(529, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(530, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(531, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(532, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(533, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(534, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(535, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(536, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(537, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(538, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(539, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(540, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(541, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(542, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(543, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(544, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(545, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(546, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(547, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(548, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(549, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(550, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(551, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(552, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(553, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(554, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(555, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(556, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(557, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(558, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(559, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(560, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(561, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(562, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(563, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(564, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(565, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(566, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(567, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(568, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(569, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(570, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(571, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(572, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(573, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(574, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(575, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(576, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(577, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(578, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(579, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(580, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(581, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(582, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(583, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(584, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(585, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(586, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(587, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(588, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(589, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(590, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(591, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(592, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(593, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(594, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(595, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(596, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(597, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(598, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(599, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(600, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(601, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(602, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(603, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(604, 1, 'en', 'core/base/system', 'database', 'Database', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(605, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(606, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(607, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(608, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(609, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(610, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(611, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(612, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(613, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(614, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(615, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(616, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(617, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(618, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(619, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(620, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(621, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(622, 1, 'en', 'core/base/system', 'version', 'Version', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(623, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(624, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(625, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(626, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(627, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(628, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(629, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(630, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(631, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(632, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(633, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(634, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(635, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(636, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(637, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(638, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(639, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(640, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(641, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(642, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(643, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(644, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(645, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(646, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(647, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(648, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(649, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(650, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(651, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(652, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(653, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(654, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(655, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(656, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(657, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(658, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(659, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(660, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(661, 1, 'en', 'core/base/tables', 'all', 'All', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(662, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(663, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(664, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(665, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(666, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(667, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(668, 1, 'en', 'core/base/tables', 'to', 'to', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(669, 1, 'en', 'core/base/tables', 'in', 'in', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(670, 1, 'en', 'core/base/tables', 'records', 'records', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(671, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(672, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(673, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(674, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(675, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(676, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(677, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(678, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(679, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(680, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(681, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(682, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(683, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(684, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(685, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(686, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(687, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(688, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(689, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(690, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(691, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(692, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(693, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(694, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(695, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(696, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(697, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(698, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(699, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(700, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(701, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(702, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(703, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(704, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(705, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(706, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(707, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(708, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(709, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(710, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(711, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(712, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(713, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(714, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(715, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(716, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(717, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(718, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(719, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(720, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-09-16 07:45:04', '2021-09-16 07:45:04'),
(721, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(722, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(723, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(724, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(725, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(726, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(727, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(728, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(729, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(730, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(731, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(732, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(733, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(734, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(735, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(736, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(737, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(738, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(739, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(740, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(741, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(742, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(743, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(744, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(745, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(746, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(747, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(748, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(749, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(750, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(751, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(752, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(753, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(754, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(755, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(756, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(757, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(758, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(759, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(760, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(761, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(762, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(763, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(764, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(765, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(766, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(767, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(768, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(769, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(770, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(771, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(772, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(773, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(774, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(775, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(776, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(777, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(778, 1, 'vi', 'core/base/mail', 'send-fail', 'Gửi email không thành công', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(779, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(780, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(781, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(782, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(783, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(784, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(785, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(786, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(787, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-09-16 07:45:05', '2021-09-16 07:45:05');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(788, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(789, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(790, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(791, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(792, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(793, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(794, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(795, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(796, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(797, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(798, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(799, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(800, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(801, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(802, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(803, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(804, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(805, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(806, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(807, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(808, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(809, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(810, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(811, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(812, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(813, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(814, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(815, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(816, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(817, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(818, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(819, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(820, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(821, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(822, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(823, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(824, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(825, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(826, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(827, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(828, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(829, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(830, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(831, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(832, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(833, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(834, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(835, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(836, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(837, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(838, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(839, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(840, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(841, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(842, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(843, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(844, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(845, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(846, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(847, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(848, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(849, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(850, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(851, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(852, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(853, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(854, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(855, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(856, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(857, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(858, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(859, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(860, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(861, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(862, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(863, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(864, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(865, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(866, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(867, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(868, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(869, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(870, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(871, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(872, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(873, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(874, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(875, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(876, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(877, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(878, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(879, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(880, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(881, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(882, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(883, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(884, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(885, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(886, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(887, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(888, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(889, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(890, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(891, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(892, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(893, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(894, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(895, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(896, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(897, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(898, 1, 'vi', 'core/base/tables', 'to', 'đến', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(899, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(900, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(901, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(902, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(903, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(904, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(905, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(906, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(907, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(908, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(909, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(910, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(911, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(912, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(913, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(914, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(915, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(916, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(917, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(918, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(919, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(920, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(921, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(922, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(923, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(924, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(925, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(926, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(927, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(928, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(929, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(930, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-09-16 07:45:05', '2021-09-16 07:45:05'),
(931, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(932, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(933, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(934, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(935, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(936, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(937, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(938, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(939, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(940, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(941, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(942, 1, 'en', 'core/media/media', 'image', 'Image', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(943, 1, 'en', 'core/media/media', 'video', 'Video', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(944, 1, 'en', 'core/media/media', 'document', 'Document', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(945, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(946, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(947, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(948, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(949, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(950, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(951, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(952, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(953, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(954, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(955, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(956, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(957, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(958, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(959, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(960, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(961, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(962, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(963, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(964, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(965, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(966, 1, 'en', 'core/media/media', 'create', 'Create', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(967, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(968, 1, 'en', 'core/media/media', 'close', 'Close', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(969, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(970, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(971, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(972, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(973, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(974, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(975, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(976, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(977, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(978, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(979, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(980, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(981, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(982, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(983, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(984, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(985, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(986, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(987, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(988, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(989, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(990, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(991, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(992, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(993, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(994, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(995, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(996, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(997, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(998, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(999, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1000, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1001, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1002, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1003, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1004, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1005, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1006, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1007, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1008, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1009, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1010, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1011, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1012, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1013, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1014, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1015, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1016, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1017, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1018, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1019, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1020, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1021, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1022, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1023, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1024, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1025, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1026, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1027, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1028, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1029, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1030, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1031, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1032, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1033, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1034, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1035, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1036, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1037, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1038, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1039, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1040, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1041, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1042, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1043, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1044, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1045, 1, 'en', 'core/media/media', 'download_link', 'Download', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1046, 1, 'en', 'core/media/media', 'url', 'URL', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1047, 1, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1048, 1, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1049, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1050, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1051, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1052, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1053, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1054, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1055, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1056, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1057, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1058, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1059, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1060, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1061, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1062, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1063, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1064, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1065, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1066, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1067, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1068, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1069, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1070, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1071, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1072, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1073, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1074, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1075, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1076, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1077, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1078, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1079, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1080, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1081, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1082, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1083, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1084, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1085, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1086, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1087, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-09-16 07:45:06', '2021-09-16 07:45:06'),
(1088, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1089, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1090, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1091, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1092, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1093, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1094, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1095, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1096, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1097, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1098, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1099, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1100, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1101, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1102, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1103, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1104, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1105, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1106, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1107, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1108, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1109, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1110, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1111, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1112, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1113, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1114, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1115, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1116, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1117, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1118, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1119, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1120, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1121, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1122, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1123, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1124, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1125, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1126, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1127, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1128, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1129, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1130, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1131, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1132, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1133, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1134, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1135, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1136, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1137, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1138, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1139, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1140, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1141, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1142, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1143, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1144, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1145, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1146, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1147, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1148, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1149, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1150, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1151, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1152, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1153, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1154, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1155, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1156, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1157, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1158, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1159, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1160, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1161, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1162, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1163, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1164, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1165, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1166, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1167, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1168, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1169, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1170, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1171, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1172, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1173, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1174, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1175, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1176, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1177, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1178, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1179, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1180, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1181, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1182, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1183, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1184, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-09-16 07:45:07', '2021-09-16 07:45:07');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1185, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1186, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1187, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1188, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1189, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1190, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1191, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1192, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1193, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1194, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1195, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1196, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1197, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1198, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1199, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1200, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1201, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1202, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1203, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1204, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1205, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1206, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1207, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1208, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1209, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1210, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1211, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1212, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1213, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1214, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1215, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1216, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1217, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1218, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1219, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1220, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1221, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1222, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1223, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1224, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1225, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1226, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1227, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1228, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1229, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1230, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1231, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1232, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1233, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1234, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1235, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1236, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1237, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1238, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1239, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1240, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1241, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1242, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1243, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1244, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1245, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1246, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1247, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1248, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1249, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1250, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1251, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1252, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1253, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1254, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1255, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1256, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1257, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1258, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1259, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1260, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1261, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1262, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1263, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1264, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1265, 1, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1266, 1, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1267, 1, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1268, 1, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1269, 1, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1270, 1, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1271, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1272, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1273, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1274, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1275, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1276, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1277, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1278, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1279, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1280, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1281, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1282, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1283, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1284, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1285, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1286, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1287, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1288, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1289, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1290, 1, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1291, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1292, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1293, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1294, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1295, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1296, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1297, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1298, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1299, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1300, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1301, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1302, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1303, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1304, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1305, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1306, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1307, 1, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1308, 1, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1309, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-09-16 07:45:07', '2021-09-16 07:45:07'),
(1310, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1311, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1312, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1313, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1314, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1315, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1316, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1317, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1318, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1319, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1320, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1321, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1322, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1323, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1324, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1325, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1326, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1327, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1328, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1329, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1330, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1331, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1332, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1333, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1334, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1335, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1336, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1337, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1338, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1339, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1340, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1341, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1342, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1343, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1344, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1345, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1346, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1347, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1348, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1349, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1350, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1351, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1352, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1353, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1354, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1355, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1356, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1357, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1358, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1359, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1360, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1361, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1362, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1363, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1364, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1365, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1366, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1367, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1368, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1369, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1370, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1371, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1372, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1373, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1374, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1375, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1376, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1377, 1, 'en', 'core/table/general', 'operations', 'Operations', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1378, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1379, 1, 'en', 'core/table/general', 'display', 'Display', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1380, 1, 'en', 'core/table/general', 'all', 'All', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1381, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1382, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1383, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1384, 1, 'en', 'core/table/general', 'to', 'to', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1385, 1, 'en', 'core/table/general', 'in', 'in', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1386, 1, 'en', 'core/table/general', 'records', 'records', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1387, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1388, 1, 'en', 'core/table/general', 'no_record', 'No record', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1389, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1390, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1391, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1392, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1393, 1, 'en', 'core/table/general', 'delete', 'Delete', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1394, 1, 'en', 'core/table/general', 'close', 'Close', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1395, 1, 'en', 'core/table/general', 'contains', 'Contains', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1396, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1397, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1398, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1399, 1, 'en', 'core/table/general', 'value', 'Value', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1400, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1401, 1, 'en', 'core/table/general', 'reset', 'Reset', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1402, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1403, 1, 'en', 'core/table/general', 'apply', 'Apply', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1404, 1, 'en', 'core/table/general', 'filters', 'Filters', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1405, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1406, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1407, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1408, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1409, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1410, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1411, 1, 'en', 'core/table/general', 'search', 'Search...', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1412, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1413, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1414, 1, 'en', 'core/table/table', 'display', 'Display', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1415, 1, 'en', 'core/table/table', 'all', 'All', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1416, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1417, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1418, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1419, 1, 'en', 'core/table/table', 'to', 'to', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1420, 1, 'en', 'core/table/table', 'in', 'in', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1421, 1, 'en', 'core/table/table', 'records', 'records', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1422, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1423, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1424, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1425, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1426, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1427, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1428, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1429, 1, 'en', 'core/table/table', 'close', 'Close', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1430, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1431, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1432, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1433, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1434, 1, 'en', 'core/table/table', 'value', 'Value', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1435, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1436, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1437, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1438, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1439, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1440, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1441, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1442, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1443, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1444, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1445, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1446, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1447, 1, 'vi', 'core/table/general', 'operations', 'Hành động', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1448, 1, 'vi', 'core/table/general', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1449, 1, 'vi', 'core/table/general', 'display', 'Hiển thị', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1450, 1, 'vi', 'core/table/general', 'all', 'Tất cả', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1451, 1, 'vi', 'core/table/general', 'edit_entry', 'Sửa', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1452, 1, 'vi', 'core/table/general', 'delete_entry', 'Xoá', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1453, 1, 'vi', 'core/table/general', 'show_from', 'Hiển thị từ', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1454, 1, 'vi', 'core/table/general', 'to', 'đến', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1455, 1, 'vi', 'core/table/general', 'in', 'trong tổng số', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1456, 1, 'vi', 'core/table/general', 'records', 'bản ghi', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1457, 1, 'vi', 'core/table/general', 'no_data', 'Không có dữ liệu để hiển thị', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1458, 1, 'vi', 'core/table/general', 'no_record', 'không có bản ghi nào', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1459, 1, 'vi', 'core/table/general', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1460, 1, 'vi', 'core/table/general', 'confirm_delete', 'Xác nhận xoá', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1461, 1, 'vi', 'core/table/general', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1462, 1, 'vi', 'core/table/general', 'cancel', 'Huỷ bỏ', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1463, 1, 'vi', 'core/table/general', 'delete', 'Xoá', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1464, 1, 'vi', 'core/table/general', 'close', 'Đóng', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1465, 1, 'vi', 'core/table/general', 'is_equal_to', 'Bằng với', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1466, 1, 'vi', 'core/table/general', 'greater_than', 'Lớn hơn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1467, 1, 'vi', 'core/table/general', 'less_than', 'Nhỏ hơn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1468, 1, 'vi', 'core/table/general', 'value', 'Giá trị', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1469, 1, 'vi', 'core/table/general', 'select_field', 'Chọn trường', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1470, 1, 'vi', 'core/table/general', 'reset', 'Làm mới', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1471, 1, 'vi', 'core/table/general', 'add_additional_filter', 'Thêm bộ lọc', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1472, 1, 'vi', 'core/table/general', 'apply', 'Áp dụng', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1473, 1, 'vi', 'core/table/general', 'select_option', 'Lựa chọn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1474, 1, 'vi', 'core/table/general', 'filters', 'Lọc dữ liệu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1475, 1, 'vi', 'core/table/general', 'bulk_change', 'Thay đổi hàng loạt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1476, 1, 'vi', 'core/table/general', 'bulk_actions', 'Hành động', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1477, 1, 'vi', 'core/table/general', 'contains', 'Bao gồm', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1478, 1, 'vi', 'core/table/general', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1479, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1480, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1481, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1482, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1483, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1484, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1485, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1486, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1487, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1488, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1489, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1490, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1491, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1492, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1493, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1494, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1495, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1496, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1497, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1498, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1499, 1, 'vi', 'packages/menu/menu', 'name', 'Menu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1500, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1501, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1502, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1503, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1504, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1505, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1506, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1507, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1508, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1509, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1510, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1511, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1512, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1513, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1514, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1515, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1516, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1517, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1518, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1519, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1520, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1521, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1522, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1523, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1524, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1525, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1526, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1527, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1528, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1529, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1530, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1531, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1532, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1533, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1534, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1535, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1536, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1537, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1538, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1539, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1540, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1541, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1542, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1543, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1544, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1545, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1546, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1547, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1548, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1549, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1550, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1551, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1552, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1553, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1554, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1555, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1556, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1557, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1558, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1559, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1560, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1561, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1562, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1563, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1564, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1565, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1566, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1567, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1568, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1569, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1570, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1571, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1572, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1573, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1574, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1575, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1576, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1577, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1578, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1579, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1580, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-09-16 07:45:08', '2021-09-16 07:45:08');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1581, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1582, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1583, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1584, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1585, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1586, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1587, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các tiện ích mở rộng :plugins trước khi kích hoạt tiện ích này', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1588, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Tiện ích mở rộng', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1589, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1590, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1591, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1592, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1593, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-09-16 07:45:08', '2021-09-16 07:45:08'),
(1594, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1595, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1596, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1597, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1598, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1599, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1600, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1601, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1602, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1603, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1604, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1605, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1606, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1607, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1608, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1609, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1610, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1611, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1612, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1613, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1614, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1615, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1616, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1617, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1618, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1619, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1620, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1621, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1622, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1623, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1624, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1625, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1626, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1627, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1628, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1629, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1630, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1631, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1632, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1633, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1634, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1635, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1636, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1637, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1638, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1639, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1640, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1641, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1642, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1643, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1644, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1645, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1646, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1647, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1648, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1649, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1650, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1651, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1652, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1653, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1654, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1655, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1656, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1657, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1658, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1659, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1660, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1661, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1662, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1663, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1664, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1665, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1666, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1667, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1668, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1669, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1670, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1671, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1672, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1673, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1674, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1675, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1676, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1677, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1678, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1679, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1680, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1681, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1682, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1683, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1684, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1685, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1686, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1687, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1688, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1689, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1690, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1691, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1692, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1693, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1694, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1695, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1696, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1697, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1698, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1699, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1700, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1701, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1702, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1703, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1704, 1, 'vi', 'packages/widget/global', 'name', 'Widgets', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1705, 1, 'vi', 'packages/widget/global', 'create', 'New widget', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1706, 1, 'vi', 'packages/widget/global', 'edit', 'Edit widget', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1707, 1, 'vi', 'packages/widget/global', 'available', 'Tiện ích có sẵn', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1708, 1, 'vi', 'packages/widget/global', 'delete', 'Xóa', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1709, 1, 'vi', 'packages/widget/global', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1710, 1, 'vi', 'packages/widget/global', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1711, 1, 'vi', 'packages/widget/global', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1712, 1, 'vi', 'packages/widget/global', 'select_menu', 'Lựa chọn trình đơn', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1713, 1, 'vi', 'packages/widget/global', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1714, 1, 'vi', 'packages/widget/global', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1715, 1, 'vi', 'packages/widget/global', 'widget_recent_post', 'Bài viết gần đây', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1716, 1, 'vi', 'packages/widget/global', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1717, 1, 'vi', 'packages/widget/global', 'widget_tag', 'Thẻ', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1718, 1, 'vi', 'packages/widget/global', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1719, 1, 'vi', 'packages/widget/global', 'widget_text', 'Văn bản', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1720, 1, 'vi', 'packages/widget/global', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1721, 1, 'vi', 'packages/widget/global', 'delete_success', 'Xoá tiện ích thành công', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1722, 1, 'vi', 'packages/widget/global', 'save_success', 'Lưu tiện ích thành công!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1723, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1724, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1725, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1726, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1727, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1728, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1729, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1730, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1731, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1732, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1733, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1734, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1735, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1736, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1737, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1738, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1739, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1740, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1741, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1742, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1743, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1744, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1745, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1746, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1747, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1748, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1749, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1750, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1751, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1752, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1753, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1754, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1755, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1756, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1757, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1758, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1759, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1760, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1761, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1762, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1763, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1764, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1765, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1766, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1767, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1768, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1769, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1770, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1771, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1772, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"http://docs.botble.com/cms/:version/analytics\" target=\"_blank\">http://docs.botble.com/cms/:version/analytics</a>', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1773, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1774, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1775, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1776, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1777, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1778, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1779, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1780, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1781, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1782, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1783, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1784, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1785, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1786, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1787, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1788, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1789, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1790, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1791, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1792, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1793, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1794, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1795, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1796, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1797, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1798, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1799, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1800, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1801, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1802, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1803, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1804, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1805, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1806, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1807, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1808, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1809, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1810, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1811, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1812, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1813, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1814, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1815, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1816, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1817, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1818, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1819, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1820, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1821, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1822, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1823, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1824, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1825, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1826, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1827, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1828, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1829, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1830, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1831, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1832, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1833, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1834, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1835, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1836, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1837, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1838, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1839, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1840, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1841, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1842, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1843, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1844, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1845, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1846, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1847, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1848, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1849, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1850, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1851, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1852, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1853, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1854, 1, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1855, 1, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1856, 1, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1857, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1858, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1859, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1860, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1861, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1862, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1863, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1864, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1865, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1866, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1867, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1868, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1869, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1870, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1871, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1872, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1873, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1874, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1875, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1876, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1877, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1878, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1879, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1880, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1881, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1882, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-09-16 07:45:09', '2021-09-16 07:45:09'),
(1883, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1884, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1885, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1886, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1887, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1888, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1889, 1, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1890, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1891, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1892, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1893, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1894, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1895, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1896, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1897, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1898, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1899, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1900, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1901, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1902, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1903, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1904, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1905, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1906, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1907, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1908, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1909, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1910, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1911, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1912, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1913, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1914, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1915, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1916, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1917, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1918, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1919, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1920, 1, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1921, 1, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1922, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1923, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1924, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1925, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1926, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1927, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1928, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1929, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1930, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1931, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1932, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1933, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1934, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1935, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1936, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1937, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1938, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1939, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1940, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1941, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1942, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1943, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1944, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1945, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1946, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1947, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1948, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1949, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1950, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1951, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1952, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1953, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1954, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1955, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1956, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-09-16 07:45:10', '2021-09-16 07:45:10');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1957, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1958, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1959, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1960, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1961, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1962, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1963, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1964, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1965, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1966, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1967, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1968, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1969, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1970, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1971, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1972, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1973, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1974, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1975, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1976, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1977, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1978, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1979, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1980, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1981, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1982, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1983, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1984, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1985, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1986, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1987, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1988, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1989, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1990, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1991, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1992, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1993, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1994, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1995, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1996, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1997, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1998, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(1999, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2000, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2001, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2002, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2003, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2004, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2005, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2006, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2007, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2008, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2009, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2010, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2011, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2012, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2013, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2014, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2015, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2016, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2017, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2018, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2019, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2020, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2021, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2022, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2023, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2024, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2025, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2026, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2027, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2028, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2029, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2030, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2031, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2032, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2033, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2034, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2035, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2036, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2037, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2038, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2039, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2040, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2041, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2042, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2043, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2044, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2045, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2046, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2047, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2048, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2049, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2050, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2051, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2052, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2053, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2054, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2055, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2056, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2057, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2058, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2059, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2060, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2061, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2062, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2063, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2064, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2065, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2066, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2067, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2068, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2069, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2070, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2071, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2072, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2073, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2074, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2075, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2076, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2077, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2078, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2079, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2080, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2081, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2082, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2083, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2084, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2085, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2086, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2087, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2088, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2089, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2090, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2091, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2092, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2093, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2094, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2095, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2096, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2097, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2098, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2099, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2100, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2101, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2102, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2103, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2104, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2105, 1, 'en', 'plugins/ecommerce/bulk-import', 'name', 'Bulk Import', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2106, 1, 'en', 'plugins/ecommerce/bulk-import', 'loading_text', 'Importing', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2107, 1, 'en', 'plugins/ecommerce/bulk-import', 'imported_successfully', 'Imported successfully.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2108, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2109, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file', 'Please choose the file', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2110, 1, 'en', 'plugins/ecommerce/bulk-import', 'start_import', 'Start Import', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2111, 1, 'en', 'plugins/ecommerce/bulk-import', 'note', 'Note!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2112, 1, 'en', 'plugins/ecommerce/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2113, 1, 'en', 'plugins/ecommerce/bulk-import', 'results', 'Result: :success successes, :failed failures', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2114, 1, 'en', 'plugins/ecommerce/bulk-import', 'failures', 'Failures', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2115, 1, 'en', 'plugins/ecommerce/bulk-import', 'tables.import', 'Import', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2116, 1, 'en', 'plugins/ecommerce/bulk-import', 'template', 'Template', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2117, 1, 'en', 'plugins/ecommerce/bulk-import', 'rules', 'Rules', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2118, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2119, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file', 'Choose file', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2120, 1, 'en', 'plugins/ecommerce/bulk-import', 'menu', 'Import products', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2121, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-csv-file', 'Download CSV template', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2122, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-excel-file', 'Download Excel template', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2123, 1, 'en', 'plugins/ecommerce/bulk-import', 'downloading', 'Downloading...', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2124, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.input_error', 'Input error', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2125, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2126, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.allowed_input', 'Allowed input', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2127, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2128, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2129, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2130, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2131, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2132, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2133, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2134, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2135, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-09-16 07:45:10', '2021-09-16 07:45:10'),
(2136, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2137, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2138, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2139, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2140, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2141, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2142, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2143, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2144, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2145, 1, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2146, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2147, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2148, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2149, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2150, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2151, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2152, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2153, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2154, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2155, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2156, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2157, 1, 'en', 'plugins/ecommerce/customer', 'phone', 'Phone', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2158, 1, 'en', 'plugins/ecommerce/customer', 'phone_placeholder', 'Phone', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2159, 1, 'en', 'plugins/ecommerce/customer', 'avatar', 'Avatar', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2160, 1, 'en', 'plugins/ecommerce/customer', 'dob', 'Date of birth', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2161, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2162, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2163, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2164, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2165, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2166, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2167, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2168, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2169, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2170, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2171, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2172, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2173, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2174, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2175, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2176, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2177, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2178, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2179, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2180, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2181, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2182, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2183, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2184, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2185, 1, 'en', 'plugins/ecommerce/discount', 'create_coupon_code', 'Create coupon code', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2186, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2187, 1, 'en', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2188, 1, 'en', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2189, 1, 'en', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2190, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2191, 1, 'en', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2192, 1, 'en', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2193, 1, 'en', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2194, 1, 'en', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2195, 1, 'en', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2196, 1, 'en', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2197, 1, 'en', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2198, 1, 'en', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2199, 1, 'en', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2200, 1, 'en', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2201, 1, 'en', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2202, 1, 'en', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2203, 1, 'en', 'plugins/ecommerce/discount', 'product', 'Product', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2204, 1, 'en', 'plugins/ecommerce/discount', 'customer', 'Customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2205, 1, 'en', 'plugins/ecommerce/discount', 'variant', 'Variant', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2206, 1, 'en', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2207, 1, 'en', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2208, 1, 'en', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2209, 1, 'en', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2210, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2211, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2212, 1, 'en', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products required to apply', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2213, 1, 'en', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2214, 1, 'en', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2215, 1, 'en', 'plugins/ecommerce/discount', 'time', 'Time', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2216, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2217, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2218, 1, 'en', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2219, 1, 'en', 'plugins/ecommerce/discount', 'save', 'Save', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2220, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2221, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2222, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2223, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2224, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2225, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2226, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2227, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2228, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2229, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2230, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2231, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2232, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2233, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2234, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2235, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2236, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2237, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2238, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2239, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2240, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2241, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2242, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2243, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2244, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2245, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2246, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2247, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2248, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2249, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2250, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2251, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2252, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2253, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2254, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2255, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2256, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2257, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2258, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2259, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2260, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2261, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2262, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2263, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2264, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2265, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2266, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2267, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2268, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2269, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2270, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2271, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2272, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2273, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2274, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2275, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2276, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2277, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2278, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2279, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2280, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2281, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.payment_method_cod_minimum_amount', 'Minimum order amount - :currency (Optional)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2282, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_size', 'Review max file size (MB)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2283, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_number', 'Review max file number', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2284, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.invoice_font_family', 'Invoice font family', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2285, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_invoice_stamp', 'Enable invoice stamp', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2286, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2287, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2288, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2289, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2290, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2291, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2292, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2293, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2294, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2295, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2296, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2297, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2298, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2299, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2300, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2301, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2302, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2303, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2304, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2305, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2306, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2307, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2308, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2309, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2310, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2311, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2312, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2313, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2314, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2315, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2316, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2317, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2318, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2319, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2320, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2321, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2322, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2323, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-09-16 07:45:11', '2021-09-16 07:45:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2324, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2325, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2326, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2327, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2328, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2329, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2330, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2331, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2332, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2333, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2334, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2335, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2336, 1, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2337, 1, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2338, 1, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2339, 1, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2340, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2341, 1, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2342, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2343, 1, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2344, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2345, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2346, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2347, 1, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2348, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2349, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2350, 1, 'en', 'plugins/ecommerce/order', 'menu', 'Orders', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2351, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2352, 1, 'en', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or completed', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2353, 1, 'en', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2354, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2355, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2356, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2357, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2358, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2359, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2360, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2361, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2362, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2363, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2364, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-09-16 07:45:11', '2021-09-16 07:45:11'),
(2365, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2366, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2367, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2368, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2369, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2370, 1, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2371, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2372, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2373, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2374, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2375, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2376, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2377, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2378, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2379, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2380, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2381, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2382, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2383, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2384, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2385, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2386, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2387, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2388, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2389, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2390, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2391, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2392, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2393, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2394, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2395, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2396, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2397, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2398, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2399, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2400, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2401, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2402, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2403, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2404, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2405, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2406, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2407, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2408, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2409, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2410, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2411, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2412, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2413, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2414, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2415, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2416, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2417, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2418, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2419, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2420, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2421, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2422, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2423, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2424, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2425, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2426, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2427, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2428, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2429, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2430, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2431, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2432, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2433, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2434, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2435, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2436, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2437, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2438, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2439, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2440, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2441, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2442, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2443, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2444, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2445, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2446, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2447, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2448, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2449, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2450, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2451, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2452, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2453, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2454, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2455, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2456, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2457, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2458, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2459, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2460, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2461, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2462, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2463, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2464, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2465, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2466, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2467, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2468, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2469, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2470, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2471, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2472, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2473, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2474, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2475, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2476, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2477, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2478, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2479, 1, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2480, 1, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2481, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2482, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2483, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2484, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2485, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2486, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2487, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2488, 1, 'en', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2489, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2490, 1, 'en', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2491, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2492, 1, 'en', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2493, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2494, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2495, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2496, 1, 'en', 'plugins/ecommerce/order', 'paid', 'Paid', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2497, 1, 'en', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2498, 1, 'en', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2499, 1, 'en', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2500, 1, 'en', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2501, 1, 'en', 'plugins/ecommerce/order', 'customer', 'Customer', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2502, 1, 'en', 'plugins/ecommerce/order', 'orders', 'order(s)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2503, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2504, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2505, 1, 'en', 'plugins/ecommerce/order', 'name', 'Name', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2506, 1, 'en', 'plugins/ecommerce/order', 'price', 'Price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2507, 1, 'en', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2508, 1, 'en', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2509, 1, 'en', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2510, 1, 'en', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2511, 1, 'en', 'plugins/ecommerce/order', 'address', 'Address', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2512, 1, 'en', 'plugins/ecommerce/order', 'phone', 'Phone', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2513, 1, 'en', 'plugins/ecommerce/order', 'country', 'Country', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2514, 1, 'en', 'plugins/ecommerce/order', 'state', 'State', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2515, 1, 'en', 'plugins/ecommerce/order', 'city', 'City', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2516, 1, 'en', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2517, 1, 'en', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2518, 1, 'en', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2519, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2520, 1, 'en', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2521, 1, 'en', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2522, 1, 'en', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2523, 1, 'en', 'plugins/ecommerce/order', 'custom', 'Custom', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2524, 1, 'en', 'plugins/ecommerce/order', 'email', 'Email', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2525, 1, 'en', 'plugins/ecommerce/order', 'create_order', 'Create order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2526, 1, 'en', 'plugins/ecommerce/order', 'close', 'Close', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2527, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2528, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2529, 1, 'en', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2530, 1, 'en', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2531, 1, 'en', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2532, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2533, 1, 'en', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2534, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2535, 1, 'en', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2536, 1, 'en', 'plugins/ecommerce/order', 'update_email', 'Update email', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2537, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2538, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2539, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2540, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2541, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2542, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2543, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2544, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2545, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2546, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2547, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2548, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2549, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2550, 1, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2551, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2552, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2553, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2554, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2555, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2556, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2557, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2558, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2559, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2560, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2561, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2562, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2563, 1, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2564, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2565, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2566, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2567, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2568, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2569, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2570, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2571, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2572, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2573, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2574, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2575, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2576, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2577, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2578, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2579, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2580, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2581, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2582, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2583, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2584, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2585, 1, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2586, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2587, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2588, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2589, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2590, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2591, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2592, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2593, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2594, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2595, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2596, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2597, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2598, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2599, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2600, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-09-16 07:45:12', '2021-09-16 07:45:12'),
(2601, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2602, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2603, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2604, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2605, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2606, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2607, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2608, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2609, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2610, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2611, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2612, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2613, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2614, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2615, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2616, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2617, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2618, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2619, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2620, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2621, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2622, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2623, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2624, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2625, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2626, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2627, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2628, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2629, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2630, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2631, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2632, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2633, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2634, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2635, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2636, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2637, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2638, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2639, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2640, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2641, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2642, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2643, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2644, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2645, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2646, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2647, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2648, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2649, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2650, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2651, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2652, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2653, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2654, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2655, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2656, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2657, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2658, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2659, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2660, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2661, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2662, 1, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2663, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2664, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2665, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2666, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2667, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2668, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2669, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2670, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2671, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2672, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2673, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2674, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2675, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2676, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2677, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2678, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2679, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2680, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2681, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2682, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2683, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2684, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2685, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2686, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2687, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2688, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2689, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2690, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2691, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-09-16 07:45:13', '2021-09-16 07:45:13');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2692, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2693, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2694, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2695, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2696, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2697, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2698, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2699, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2700, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2701, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2702, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2703, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2704, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2705, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2706, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2707, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2708, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2709, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2710, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2711, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2712, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2713, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2714, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2715, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2716, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2717, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2718, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2719, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2720, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2721, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2722, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2723, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2724, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2725, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2726, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2727, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2728, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2729, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2730, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2731, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2732, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2733, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2734, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2735, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2736, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2737, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2738, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2739, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2740, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2741, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2742, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2743, 1, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2744, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2745, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2746, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2747, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2748, 1, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2749, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2750, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2751, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2752, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2753, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2754, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2755, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2756, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2757, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2758, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2759, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2760, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2761, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2762, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2763, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2764, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2765, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2766, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2767, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2768, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2769, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2770, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2771, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2772, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2773, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2774, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2775, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2776, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2777, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2778, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2779, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2780, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2781, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2782, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2783, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2784, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2785, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2786, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2787, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2788, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2789, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2790, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2791, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2792, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2793, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2794, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2795, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2796, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2797, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2798, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2799, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2800, 1, 'en', 'plugins/ecommerce/products', 'category', 'Category', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2801, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2802, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2803, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2804, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2805, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2806, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2807, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-09-16 07:45:13', '2021-09-16 07:45:13'),
(2808, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2809, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2810, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top Selling Products', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2811, 1, 'en', 'plugins/ecommerce/reports', 'ranges.today', 'Today', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2812, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_week', 'This week', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2813, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_7_days', 'Last 7 days', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2814, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_30_days', 'Last 30 days', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2815, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_month', 'This month', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2816, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_year', 'This year', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2817, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2818, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2819, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2820, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2821, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2822, 1, 'en', 'plugins/ecommerce/reports', 'sales_reports', 'Sales Reports', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2823, 1, 'en', 'plugins/ecommerce/reports', 'total_earnings', 'Total Earnings', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2824, 1, 'en', 'plugins/ecommerce/reports', 'recent_orders', 'Recent Orders', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2825, 1, 'en', 'plugins/ecommerce/reports', 'statistics', 'Statistics', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2826, 1, 'en', 'plugins/ecommerce/reports', 'items_earning_sales', 'Items Earning Sales: :value', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2827, 1, 'en', 'plugins/ecommerce/reports', 'revenue', 'Revenue', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2828, 1, 'en', 'plugins/ecommerce/reports', 'orders', 'Orders', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2829, 1, 'en', 'plugins/ecommerce/reports', 'products', 'Products', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2830, 1, 'en', 'plugins/ecommerce/reports', 'customers', 'Customers', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2831, 1, 'en', 'plugins/ecommerce/reports', 'earnings', 'Earnings', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2832, 1, 'en', 'plugins/ecommerce/reports', 'date_range_format_value', 'From :from to :to', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2833, 1, 'en', 'plugins/ecommerce/reports', 'select_range', 'Select Range', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2834, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2835, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2836, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2837, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2838, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2839, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2840, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2841, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2842, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2843, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2844, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2845, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2846, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2847, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2848, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2849, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2850, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2851, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2852, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2853, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2854, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2855, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2856, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2857, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2858, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2859, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2860, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2861, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2862, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2863, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2864, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2865, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2866, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2867, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2868, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2869, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2870, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2871, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2872, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2873, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2874, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2875, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2876, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2877, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2878, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2879, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2880, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2881, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2882, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2883, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2884, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2885, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2886, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2887, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2888, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2889, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2890, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2891, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2892, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2893, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2894, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2895, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2896, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2897, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2898, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2899, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2900, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2901, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2902, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2903, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2904, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2905, 1, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2906, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2907, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2908, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2909, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2910, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2911, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2912, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2913, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2914, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2915, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2916, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2917, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2918, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2919, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2920, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2921, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2922, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2923, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2924, 1, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2925, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2926, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2927, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2928, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2929, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2930, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2931, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2932, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2933, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2934, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2935, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2936, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2937, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2938, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2939, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2940, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2941, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2942, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2943, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2944, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2945, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2946, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2947, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2948, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2949, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2950, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2951, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2952, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2953, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2954, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2955, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2956, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2957, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2958, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2959, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2960, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2961, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2962, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2963, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2964, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2965, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2966, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2967, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2968, 1, 'vi', 'plugins/ecommerce/brands', 'name', 'Thương hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2969, 1, 'vi', 'plugins/ecommerce/brands', 'create', 'Thêm thương hiệu mới', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2970, 1, 'vi', 'plugins/ecommerce/brands', 'edit', 'Sửa thương hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2971, 1, 'vi', 'plugins/ecommerce/brands', 'form.name', 'Tên', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2972, 1, 'vi', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Tên thương hiệu (tối đa 255 kí tự)', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2973, 1, 'vi', 'plugins/ecommerce/brands', 'form.description', 'Mô tả', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2974, 1, 'vi', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Mô tả ngắn cho thương hiệu này (tối đa 400 kí tự)', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2975, 1, 'vi', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2976, 1, 'vi', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2977, 1, 'vi', 'plugins/ecommerce/brands', 'form.is_featured', 'Nổi bật?', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2978, 1, 'vi', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2979, 1, 'vi', 'plugins/ecommerce/brands', 'website', 'Website', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2980, 1, 'vi', 'plugins/ecommerce/brands', 'notices.no_select', 'Không có bản ghi nào được chọn!', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2981, 1, 'vi', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Cập nhật thành công', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2982, 1, 'vi', 'plugins/ecommerce/brands', 'cannot_delete', 'Xoá không thành công', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2983, 1, 'vi', 'plugins/ecommerce/brands', 'brand_deleted', 'Xoá thương hiệu thành công', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2984, 1, 'vi', 'plugins/ecommerce/brands', 'menu', 'Thương hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2985, 1, 'vi', 'plugins/ecommerce/brands', 'intro.title', 'Quản lý danh sách thương hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2986, 1, 'vi', 'plugins/ecommerce/brands', 'intro.description', 'Các thương hiệu của sản phẩm như Nike, Adidas, Bitis ...', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2987, 1, 'vi', 'plugins/ecommerce/brands', 'intro.button_text', 'Tạo thương hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2988, 1, 'vi', 'plugins/ecommerce/currencies', 'name', 'Tiền tệ', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2989, 1, 'vi', 'plugins/ecommerce/currencies', 'create', 'Thêm loại tiền tệ mới', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2990, 1, 'vi', 'plugins/ecommerce/currencies', 'edit', 'Sửa tiền tệ', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2991, 1, 'vi', 'plugins/ecommerce/currencies', 'list', 'Danh sách tiền tệ', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2992, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.title', 'Tên', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2993, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.code', 'Mã', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2994, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.symbol', 'Kí hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2995, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2996, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.status', 'Trạng thái', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2997, 1, 'vi', 'plugins/ecommerce/currencies', 'tables.order', 'Sắp xếp', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2998, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.title', 'Tiêu đề', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(2999, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.code', 'Mã', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(3000, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.symbol', 'Kí hiệu', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(3001, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.is_prefix_symbol', 'Sử dụng ký hiệu trước số tiền', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(3002, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.status', 'Trạng thái', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(3003, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.order', 'Sắp xếp', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(3004, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.decimals', 'Số kí tự sau dấu phân cách', '2021-09-16 07:45:14', '2021-09-16 07:45:14'),
(3005, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.activated', 'Đã kích hoạt', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3006, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.deactivated', 'Đã bị huỷ kích hoạt', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3007, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.yes', 'Có', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3008, 1, 'vi', 'plugins/ecommerce/currencies', 'forms.no', 'Không', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3009, 1, 'vi', 'plugins/ecommerce/currency', 'currencies', 'Tiền tệ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3010, 1, 'vi', 'plugins/ecommerce/currency', 'setting_description', 'Các loại tiền tệ được sử dụng trên website.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3011, 1, 'vi', 'plugins/ecommerce/currency', 'name', 'Tên', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3012, 1, 'vi', 'plugins/ecommerce/currency', 'symbol', 'Ký hiệu', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3013, 1, 'vi', 'plugins/ecommerce/currency', 'number_of_decimals', 'Số thập phân', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3014, 1, 'vi', 'plugins/ecommerce/currency', 'exchange_rate', 'Tỷ giá', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3015, 1, 'vi', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Vị trí ký hiệu', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3016, 1, 'vi', 'plugins/ecommerce/currency', 'is_default', 'Mặc định?', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3017, 1, 'vi', 'plugins/ecommerce/currency', 'remove', 'Xoá', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3018, 1, 'vi', 'plugins/ecommerce/currency', 'new_currency', 'Thêm tiền tệ mới', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3019, 1, 'vi', 'plugins/ecommerce/currency', 'save_settings', 'Lưu cài đặt', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3020, 1, 'vi', 'plugins/ecommerce/currency', 'before_number', 'Trước số', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3021, 1, 'vi', 'plugins/ecommerce/currency', 'after_number', 'Sau số', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3022, 1, 'vi', 'plugins/ecommerce/customer', 'name', 'Khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3023, 1, 'vi', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3024, 1, 'vi', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3025, 1, 'vi', 'plugins/ecommerce/customer', 'email', 'Email', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3026, 1, 'vi', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3027, 1, 'vi', 'plugins/ecommerce/customer', 'password', 'Password', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3028, 1, 'vi', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3029, 1, 'vi', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3030, 1, 'vi', 'plugins/ecommerce/customer', 'intro.title', 'Quản lý danh sách khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3031, 1, 'vi', 'plugins/ecommerce/customer', 'intro.description', 'Khi khách hàng đặt hàng, bạn sẽ biết được thông tin và lịch sử mua hàng của khách hàng.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3032, 1, 'vi', 'plugins/ecommerce/customer', 'intro.button_text', 'Tạo khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3033, 1, 'vi', 'plugins/ecommerce/discount', 'name', 'Khuyến mãi', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3034, 1, 'vi', 'plugins/ecommerce/discount', 'invalid_coupon', 'Mã khuyến mãi không hợp lệ hoặc đã hết hạn!', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3035, 1, 'vi', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Mã khuyến mãi này không thể sử dụng chung với chương trình khuyến mãi!', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3036, 1, 'vi', 'plugins/ecommerce/discount', 'not_used', 'Chưa sử dụng mã giảm giá này', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3037, 1, 'vi', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3038, 1, 'vi', 'plugins/ecommerce/discount', 'used', 'Used', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3039, 1, 'vi', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3040, 1, 'vi', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3041, 1, 'vi', 'plugins/ecommerce/discount', 'intro.title', 'Chương trình khuyến mãi', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3042, 1, 'vi', 'plugins/ecommerce/discount', 'intro.description', 'Tạo ra các mã coupon, cài đặt một sản phẩm, hoặc một nhóm sản phẩm khuyến mãi dành cho các khách hàng thân thiết của bạn.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3043, 1, 'vi', 'plugins/ecommerce/discount', 'intro.button_text', 'Tạo khuyến mãi', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3044, 1, 'vi', 'plugins/ecommerce/ecommerce', 'settings', 'Cài đặt', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3045, 1, 'vi', 'plugins/ecommerce/ecommerce', 'name', 'Thương mại điện tử', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3046, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3047, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3048, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3049, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3050, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3051, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3052, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3053, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3054, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3055, 1, 'vi', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3056, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_address', 'Địa chỉ cửa hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3057, 1, 'vi', 'plugins/ecommerce/ecommerce', 'store_phone', 'Số điện thoại cửa hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3058, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_id', 'Mã đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3059, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_token', 'Chuỗi mã hoá đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3060, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_name', 'Tên khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3061, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_email', 'Email khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3062, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Số điện thoại khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3063, 1, 'vi', 'plugins/ecommerce/ecommerce', 'customer_address', 'Địa chỉ khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3064, 1, 'vi', 'plugins/ecommerce/ecommerce', 'product_list', 'Danh sách sản phẩm trong đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3065, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Chi tiết thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3066, 1, 'vi', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Phương thức vận chuyển', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3067, 1, 'vi', 'plugins/ecommerce/ecommerce', 'payment_method', 'Phương thức thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3068, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Tiêu chuẩn & Định dạng', '2021-09-16 07:45:15', '2021-09-16 07:45:15');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3069, 1, 'vi', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Các tiêu chuẩn và các định dạng được sử dụng để tính toán những thứ như giá cả sản phẩm, trọng lượng vận chuyển và thời gian đơn hàng được đặt.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3070, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Chỉnh sửa định dạng mã đơn hàng (tùy chọn)', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3071, 1, 'vi', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'Mã đơn hàng mặc định bắt đầu từ :number. Bạn có thể thay đổi chuỗi bắt đầu hoặc kết thúc để tạo mã đơn hàng theo ý bạn, ví dụ \"DH-:number\" hoặc \":number-A\"', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3072, 1, 'vi', 'plugins/ecommerce/ecommerce', 'start_with', 'Bắt đầu bằng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3073, 1, 'vi', 'plugins/ecommerce/ecommerce', 'end_with', 'Kết thúc bằng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3074, 1, 'vi', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Mã đơn hàng của bạn sẽ hiển thị theo mẫu', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3075, 1, 'vi', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Đơn vị cân nặng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3076, 1, 'vi', 'plugins/ecommerce/ecommerce', 'height_unit', 'Đơn vị chiều dài/chiều cao', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3077, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_title', 'Xác nhận đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3078, 1, 'vi', 'plugins/ecommerce/email', 'customer_new_order_description', 'Được gửi khi khách hàng tạo đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3079, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_title', 'Hủy đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3080, 1, 'vi', 'plugins/ecommerce/email', 'order_cancellation_description', 'Được gửi khi khách hàng hủy đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3081, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Xác nhận giao hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3082, 1, 'vi', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Được gửi đến khách hàng khi bắt đầu giao hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3083, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_title', 'Thông báo có đơn hàng mới', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3084, 1, 'vi', 'plugins/ecommerce/email', 'admin_new_order_description', 'Được gửi cho quản trị viên khi có khách mua hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3085, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_title', 'Xác nhận đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3086, 1, 'vi', 'plugins/ecommerce/email', 'order_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3087, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Xác nhận thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3088, 1, 'vi', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Email được gửi đến khách hàng khi đơn hàng xác nhận thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3089, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_title', 'Đơn hàng đang chờ hoàn tất', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3090, 1, 'vi', 'plugins/ecommerce/email', 'order_recover_description', 'Email nhắc nhở khách hàng hoàn tất đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3091, 1, 'vi', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'hoặc <a href=\":link\">Truy cập website</a>', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3092, 1, 'vi', 'plugins/ecommerce/email', 'order_information', 'Thông tin đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3093, 1, 'vi', 'plugins/ecommerce/email', 'order_number', 'Mã đơn hàng: <strong>:order_id</strong>', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3094, 1, 'vi', 'plugins/ecommerce/email', 'view_order', 'Xem đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3095, 1, 'vi', 'plugins/ecommerce/order', 'statuses.pending', 'Chưa xử lý', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3096, 1, 'vi', 'plugins/ecommerce/order', 'statuses.processing', 'Đang xử lý', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3097, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivering', 'Đang giao hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3098, 1, 'vi', 'plugins/ecommerce/order', 'statuses.delivered', 'Đã giao hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3099, 1, 'vi', 'plugins/ecommerce/order', 'statuses.completed', 'Hoàn thành', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3100, 1, 'vi', 'plugins/ecommerce/order', 'statuses.canceled', 'Bị huỷ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3101, 1, 'vi', 'plugins/ecommerce/order', 'name', 'Đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3102, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_order', 'Đơn hàng chưa hoàn tất', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3103, 1, 'vi', 'plugins/ecommerce/order', 'order_id', 'Mã đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3104, 1, 'vi', 'plugins/ecommerce/order', 'customer_label', 'Khách hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3105, 1, 'vi', 'plugins/ecommerce/order', 'amount', 'Tổng cộng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3106, 1, 'vi', 'plugins/ecommerce/order', 'shipping_amount', 'Phí vận chuyển', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3107, 1, 'vi', 'plugins/ecommerce/order', 'payment_method', 'Phương thức thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3108, 1, 'vi', 'plugins/ecommerce/order', 'payment_status_label', 'Trạng thái thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3109, 1, 'vi', 'plugins/ecommerce/order', 'manage_orders', 'Quản lý đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3110, 1, 'vi', 'plugins/ecommerce/order', 'order_intro_description', 'Một khi cửa hàng của bạn có đơn đặt hàng, đây sẽ là nơi bạn xử lý và theo dõi những đơn đặt hàng đó.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3111, 1, 'vi', 'plugins/ecommerce/order', 'create_new_order', 'Tạo đơn hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3112, 1, 'vi', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Quản lý đơn hàng chưa hoàn tất', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3113, 1, 'vi', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Đơn hàng chưa hoàn tất là đơn hàng được tạo khi khách hàng thêm sản phẩm vào giỏ hàng, tiến hành điền thông tin mua hàng nhưng không hoàn tất quá trình thanh toán.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3114, 1, 'vi', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'Không tìm thấy email nên không thể gửi email khôi phục cho khách hàng.', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3115, 1, 'vi', 'plugins/ecommerce/payment', 'name', 'Thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3116, 1, 'vi', 'plugins/ecommerce/payment', 'payment_method', 'Phương thức thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3117, 1, 'vi', 'plugins/ecommerce/payment', 'view_payment', 'Xem thanh toán #', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3118, 1, 'vi', 'plugins/ecommerce/payment', 'charge_id', 'Mã giao dịch', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3119, 1, 'vi', 'plugins/ecommerce/payment', 'amount', 'Số tiền', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3120, 1, 'vi', 'plugins/ecommerce/payment', 'currency', 'Đơn vị tiền tệ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3121, 1, 'vi', 'plugins/ecommerce/payment', 'user', 'Người dùng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3122, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_required', 'Tên của phương thức PayPal là bắt buộc!', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3123, 1, 'vi', 'plugins/ecommerce/payment', 'paypal_name_max', 'Tên của phương thức PayPal quá dài!', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3124, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_required', 'Tên của phương thức Stripe là bắt buộc!', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3125, 1, 'vi', 'plugins/ecommerce/payment', 'stripe_name_max', 'Tên của phương thức Stripe quá dài!', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3126, 1, 'vi', 'plugins/ecommerce/payment', 'status', 'Trạng thái', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3127, 1, 'vi', 'plugins/ecommerce/payment', 'enabled', 'Bật', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3128, 1, 'vi', 'plugins/ecommerce/payment', 'disabled', 'Tắt', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3129, 1, 'vi', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3130, 1, 'vi', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3131, 1, 'vi', 'plugins/ecommerce/payment', 'mode', 'Chế độ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3132, 1, 'vi', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3133, 1, 'vi', 'plugins/ecommerce/payment', 'live', 'Live', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3134, 1, 'vi', 'plugins/ecommerce/payment', 'enable_payment_log', 'Bật lưu nhật ký thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3135, 1, 'vi', 'plugins/ecommerce/payment', 'yes', 'Có', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3136, 1, 'vi', 'plugins/ecommerce/payment', 'no', 'Không', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3137, 1, 'vi', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3138, 1, 'vi', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3139, 1, 'vi', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3140, 1, 'vi', 'plugins/ecommerce/payment', 'action', 'Hành động', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3141, 1, 'vi', 'plugins/ecommerce/payment', 'go_back', 'Quay lại', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3142, 1, 'vi', 'plugins/ecommerce/payment', 'view', 'Xem', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3143, 1, 'vi', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Thanh toán khi nhận hàng (COD)', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3144, 1, 'vi', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Thông qua chuyển khoản ngân hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3145, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_cart', 'Thanh toán bằng thẻ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3146, 1, 'vi', 'plugins/ecommerce/payment', 'card_number', 'Số thẻ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3147, 1, 'vi', 'plugins/ecommerce/payment', 'full_name', 'Tên trên thẻ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3148, 1, 'vi', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Thanh toán thông qua PayPal', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3149, 1, 'vi', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3150, 1, 'vi', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3151, 1, 'vi', 'plugins/ecommerce/payment', 'details', 'Chi tiết', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3152, 1, 'vi', 'plugins/ecommerce/payment', 'payer_name', 'Người thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3153, 1, 'vi', 'plugins/ecommerce/payment', 'email', 'Địa chỉ email', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3154, 1, 'vi', 'plugins/ecommerce/payment', 'phone', 'Điện thoại', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3155, 1, 'vi', 'plugins/ecommerce/payment', 'country', 'Quốc gia', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3156, 1, 'vi', 'plugins/ecommerce/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3157, 1, 'vi', 'plugins/ecommerce/payment', 'payment_details', 'Chi tiết giao dịch', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3158, 1, 'vi', 'plugins/ecommerce/payment', 'card', 'Thẻ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3159, 1, 'vi', 'plugins/ecommerce/payment', 'address', 'Địa chỉ', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3160, 1, 'vi', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3161, 1, 'vi', 'plugins/ecommerce/payment', 'new_payment', 'Thanh toán cho đơn hàng :id', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3162, 1, 'vi', 'plugins/ecommerce/payment', 'payment_id', 'Mã thanh toán', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3163, 1, 'vi', 'plugins/ecommerce/prices', 'name', 'Price', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3164, 1, 'vi', 'plugins/ecommerce/prices', 'create', 'New price', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3165, 1, 'vi', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3166, 1, 'vi', 'plugins/ecommerce/prices', 'list', 'List price', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3167, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3168, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3169, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3170, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3171, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3172, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3173, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3174, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3175, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3176, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3177, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3178, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3179, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3180, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3181, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3182, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3183, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3184, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3185, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3186, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3187, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-09-16 07:45:15', '2021-09-16 07:45:15'),
(3188, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3189, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3190, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3191, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3192, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3193, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3194, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3195, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3196, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3197, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3198, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3199, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3200, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3201, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3202, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3203, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3204, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3205, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3206, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3207, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3208, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3209, 1, 'vi', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3210, 1, 'vi', 'plugins/ecommerce/product-attributes', 'name', 'Thuộc tính sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3211, 1, 'vi', 'plugins/ecommerce/product-attributes', 'create', 'Tạo', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3212, 1, 'vi', 'plugins/ecommerce/product-attributes', 'edit', 'Sửa', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3213, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.title', 'Quản lý danh sách thuộc tính sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3214, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.description', 'Các thuộc tính của sản phẩm như màu sắc, kích thước ...', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3215, 1, 'vi', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Tạo thuộc tính sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3216, 1, 'vi', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3217, 1, 'vi', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3218, 1, 'vi', 'plugins/ecommerce/product-categories', 'name', 'Danh mục sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3219, 1, 'vi', 'plugins/ecommerce/product-categories', 'none', 'Không có', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3220, 1, 'vi', 'plugins/ecommerce/product-categories', 'menu', 'Danh mục sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3221, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.title', 'Quản lý danh sách danh mục sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3222, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.description', 'Danh mục sản phẩm như quần áo, giày dép, linh kiện điện tử ...', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3223, 1, 'vi', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Tạo danh mục sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3224, 1, 'vi', 'plugins/ecommerce/product-categories', 'total_products', 'Tổng sản phẩm: :total', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3225, 1, 'vi', 'plugins/ecommerce/product-collections', 'name', 'Nhóm sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3226, 1, 'vi', 'plugins/ecommerce/product-collections', 'create', 'Thêm nhóm sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3227, 1, 'vi', 'plugins/ecommerce/product-collections', 'edit', 'Sửa nhóm sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3228, 1, 'vi', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3229, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.title', 'Quản lý nhóm sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3230, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.description', 'Nhóm sản phẩm giúp quản lý sản phẩm và khách hàng tìm kiếm sản phẩm một cách dễ dàng.', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3231, 1, 'vi', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Tạo nhóm sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3232, 1, 'vi', 'plugins/ecommerce/products', 'name', 'Sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3233, 1, 'vi', 'plugins/ecommerce/products', 'create', 'Thêm sản phẩm mới', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3234, 1, 'vi', 'plugins/ecommerce/products', 'edit', 'Sửa sản phẩm - :name', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3235, 1, 'vi', 'plugins/ecommerce/products', 'form.name', 'Tên sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3236, 1, 'vi', 'plugins/ecommerce/products', 'form.name_placeholder', 'Tên sản phẩm (Tối đa 120 chữ cái)', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3237, 1, 'vi', 'plugins/ecommerce/products', 'form.description', 'Mô tả ngắn', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3238, 1, 'vi', 'plugins/ecommerce/products', 'form.description_placeholder', 'Mô tả ngắn gọn cho sản phẩm (Tối đa 400 chữ cái)', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3239, 1, 'vi', 'plugins/ecommerce/products', 'form.categories', 'Danh mục', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3240, 1, 'vi', 'plugins/ecommerce/products', 'form.content', 'Chi tiết sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3241, 1, 'vi', 'plugins/ecommerce/products', 'form.price', 'Giá cơ bản', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3242, 1, 'vi', 'plugins/ecommerce/products', 'form.price_sale', 'Giá giảm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3243, 1, 'vi', 'plugins/ecommerce/products', 'form.quantity', 'Số lượng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3244, 1, 'vi', 'plugins/ecommerce/products', 'form.brand', 'Thương hiệu', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3245, 1, 'vi', 'plugins/ecommerce/products', 'form.width', 'Rộng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3246, 1, 'vi', 'plugins/ecommerce/products', 'form.height', 'Cao', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3247, 1, 'vi', 'plugins/ecommerce/products', 'form.weight', 'Cân nặng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3248, 1, 'vi', 'plugins/ecommerce/products', 'form.image', 'Hình ảnh', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3249, 1, 'vi', 'plugins/ecommerce/products', 'form.product_type.title', 'Loại sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3250, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.title', 'Tình trạng kho', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3251, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.in_stock', 'Còn hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3252, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Hết hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3253, 1, 'vi', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Cho phép đặt hàng khi hết', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3254, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.title', 'Quản lý kho', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3255, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'Không quản lý kho', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3256, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'Quản lý kho', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3257, 1, 'vi', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Số lượng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3258, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.title', 'Giao hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3259, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.length', 'Chiều dài', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3260, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.wide', 'Chiều rộng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3261, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.height', 'Chiều cao', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3262, 1, 'vi', 'plugins/ecommerce/products', 'form.shipping.weight', 'Cân nặng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3263, 1, 'vi', 'plugins/ecommerce/products', 'form.date.start', 'Ngày bắt đầu', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3264, 1, 'vi', 'plugins/ecommerce/products', 'form.date.end', 'Ngày kết thúc', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3265, 1, 'vi', 'plugins/ecommerce/products', 'form.tags', 'Nhãn', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3266, 1, 'vi', 'plugins/ecommerce/products', 'form.tax', 'Thuế', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3267, 1, 'vi', 'plugins/ecommerce/products', 'price', 'Giá cơ bản', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3268, 1, 'vi', 'plugins/ecommerce/products', 'price_sale', 'Giá giảm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3269, 1, 'vi', 'plugins/ecommerce/products', 'quantity', 'Số lượng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3270, 1, 'vi', 'plugins/ecommerce/products', 'type', 'Loại sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3271, 1, 'vi', 'plugins/ecommerce/products', 'image', 'Ảnh', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3272, 1, 'vi', 'plugins/ecommerce/products', 'sku', 'Mã sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3273, 1, 'vi', 'plugins/ecommerce/products', 'brand', 'Thương hiệu', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3274, 1, 'vi', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3275, 1, 'vi', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3276, 1, 'vi', 'plugins/ecommerce/products', 'products', 'Sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3277, 1, 'vi', 'plugins/ecommerce/products', 'menu', 'Sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3278, 1, 'vi', 'plugins/ecommerce/products', 'control.button_add_image', 'Thêm hình ảnh', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3279, 1, 'vi', 'plugins/ecommerce/products', 'overview', 'Tổng quan', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3280, 1, 'vi', 'plugins/ecommerce/products', 'attributes', 'Thuộc tính', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3281, 1, 'vi', 'plugins/ecommerce/products', 'product_has_variations', 'Sản phẩm có nhiều phiên bản', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3282, 1, 'vi', 'plugins/ecommerce/products', 'manage_products', 'Quản lý danh sách sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3283, 1, 'vi', 'plugins/ecommerce/products', 'add_new_product', 'Tạo sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3284, 1, 'vi', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Bắt đầu bán hàng bằng việc thêm sản phẩm.', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3285, 1, 'vi', 'plugins/ecommerce/reports', 'name', 'Báo cáo', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3286, 1, 'vi', 'plugins/ecommerce/reports', 'widget.order.title', 'Đơn hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3287, 1, 'vi', 'plugins/ecommerce/reports', 'count.revenue', 'Doanh thu hôm nay', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3288, 1, 'vi', 'plugins/ecommerce/reports', 'count.orders', 'Đơn hàng hôm nay', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3289, 1, 'vi', 'plugins/ecommerce/reports', 'count.products', 'Sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3290, 1, 'vi', 'plugins/ecommerce/reports', 'count.customers', 'Khách hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3291, 1, 'vi', 'plugins/ecommerce/reports', 'product_name', 'Tên sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3292, 1, 'vi', 'plugins/ecommerce/reports', 'quantity', 'Số lượng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3293, 1, 'vi', 'plugins/ecommerce/reports', 'revenue_statistics', 'Thống kê doanh thu', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3294, 1, 'vi', 'plugins/ecommerce/reports', 'top_selling_products', 'Sản phẩm bán chạy trong tháng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3295, 1, 'vi', 'plugins/ecommerce/review', 'name', 'Đánh giá', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3296, 1, 'vi', 'plugins/ecommerce/review', 'list_review', 'Khách hàng đánh giá', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3297, 1, 'vi', 'plugins/ecommerce/review', 'add_review', 'Thêm đánh giá', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3298, 1, 'vi', 'plugins/ecommerce/review', 'delete_review', 'Xóa đánh giá', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3299, 1, 'vi', 'plugins/ecommerce/review', 'create_review', 'Tạo đánh giá', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3300, 1, 'vi', 'plugins/ecommerce/review', 'please_select_rating', 'Chọn đánh giá', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3301, 1, 'vi', 'plugins/ecommerce/review', 'comment', 'Bình luận', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3302, 1, 'vi', 'plugins/ecommerce/review', 'approve', 'Chấp thuận', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3303, 1, 'vi', 'plugins/ecommerce/review', 'approved', 'Đã chấp thuận', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3304, 1, 'vi', 'plugins/ecommerce/review', 'disapprove', 'Không chấp thuận', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3305, 1, 'vi', 'plugins/ecommerce/review', 'disapproved', 'Đã không chấp thuận', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3306, 1, 'vi', 'plugins/ecommerce/review', 'product', 'Sản phẩm', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3307, 1, 'vi', 'plugins/ecommerce/review', 'user', 'Người dùng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3308, 1, 'vi', 'plugins/ecommerce/review', 'star', 'Sao', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3309, 1, 'vi', 'plugins/ecommerce/review', 'status', 'Trạng thái', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3310, 1, 'vi', 'plugins/ecommerce/review', 'intro.title', 'Quản lý danh sách nhận xét của khách hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3311, 1, 'vi', 'plugins/ecommerce/review', 'intro.description', 'Lưu trữ các nhận xét, đánh giá của khách hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3312, 1, 'vi', 'plugins/ecommerce/shipping', 'name', 'Phí vận chuyển', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3313, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping', 'Vận chuyển', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3314, 1, 'vi', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3315, 1, 'vi', 'plugins/ecommerce/shipping', 'country', 'Quốc gia', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3316, 1, 'vi', 'plugins/ecommerce/shipping', 'state', 'State', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3317, 1, 'vi', 'plugins/ecommerce/shipping', 'city', 'City', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3318, 1, 'vi', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3319, 1, 'vi', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3320, 1, 'vi', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3321, 1, 'vi', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3322, 1, 'vi', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3323, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3324, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping #', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3325, 1, 'vi', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3326, 1, 'vi', 'plugins/ecommerce/shipping', 'shipping_methods', 'Phương thức vận chuyển', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3327, 1, 'vi', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Tạo phương thức vận chuyển', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3328, 1, 'vi', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Sửa phương thức vận chuyển', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3329, 1, 'vi', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Thêm khu vực vận chuyển', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3330, 1, 'vi', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3331, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3332, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3333, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3334, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3335, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3336, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3337, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3338, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3339, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3340, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3341, 1, 'vi', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3342, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3343, 1, 'vi', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3344, 1, 'vi', 'plugins/ecommerce/store-locator', 'name', 'Địa chỉ cửa hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3345, 1, 'vi', 'plugins/ecommerce/store-locator', 'description', 'Địa chỉ này sẽ xuất hiện trên hoá đơn của bạn và sẽ được sử dụng để tính toán mức giá vận chuyển của bạn.', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3346, 1, 'vi', 'plugins/ecommerce/store-locator', 'shop_name', 'Tên cửa hàng', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3347, 1, 'vi', 'plugins/ecommerce/store-locator', 'phone', 'Điện thoại', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3348, 1, 'vi', 'plugins/ecommerce/store-locator', 'address', 'Địa chỉ', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3349, 1, 'vi', 'plugins/ecommerce/tax', 'name', 'Thuế', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3350, 1, 'vi', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3351, 1, 'vi', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3352, 1, 'vi', 'plugins/ecommerce/tax', 'title', 'Title', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3353, 1, 'vi', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3354, 1, 'vi', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3355, 1, 'vi', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3356, 1, 'en', 'plugins/faq/faq-category', 'name', 'Categories', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3357, 1, 'en', 'plugins/faq/faq-category', 'create', 'New category', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3358, 1, 'en', 'plugins/faq/faq-category', 'edit', 'Edit category', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3359, 1, 'en', 'plugins/faq/faq', 'name', 'FAQ', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3360, 1, 'en', 'plugins/faq/faq', 'create', 'New faq', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3361, 1, 'en', 'plugins/faq/faq', 'edit', 'Edit faq', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3362, 1, 'en', 'plugins/faq/faq', 'question', 'Question', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3363, 1, 'en', 'plugins/faq/faq', 'answer', 'Answer', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3364, 1, 'en', 'plugins/faq/faq', 'category', 'Category', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3365, 1, 'en', 'plugins/faq/faq', 'all', 'All', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3366, 1, 'en', 'plugins/faq/faq', 'faq_schema_config', 'FAQ schema configuration (:link)', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3367, 1, 'en', 'plugins/faq/faq', 'learn_more', 'Learn more', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3368, 1, 'en', 'plugins/faq/faq', 'settings.title', 'FAQ', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3369, 1, 'en', 'plugins/faq/faq', 'settings.description', 'Settings for FAQ', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3370, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema', 'Enable FAQ Schema?', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3371, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema_description', 'Learn more: https://developers.google.com/search/docs/data-types/faqpage', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3372, 1, 'en', 'plugins/faq/faq', 'select_category', 'Select a category', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3373, 1, 'en', 'plugins/faq/faq', 'add_item', 'Add item', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3374, 1, 'vi', 'plugins/faq/faq', 'name', 'Câu hỏi thường gặp', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3375, 1, 'vi', 'plugins/faq/faq', 'create', 'Thêm câu hỏi', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3376, 1, 'vi', 'plugins/faq/faq', 'edit', 'Sửa câu hỏi', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3377, 1, 'vi', 'plugins/faq/faq', 'question', 'Câu hỏi', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3378, 1, 'vi', 'plugins/faq/faq', 'answer', 'Trả lời', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3379, 1, 'en', 'plugins/marketplace/marketplace', 'name', 'Marketplace', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3380, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_name', 'Store name', '2021-09-16 07:45:16', '2021-09-16 07:45:16'),
(3381, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_new_order_title', 'Send order to store', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3382, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_new_order_description', 'Send email to store when a customer an order placed', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3383, 1, 'en', 'plugins/marketplace/marketplace', 'email.verify_vendor_title', 'Verify vendor', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3384, 1, 'en', 'plugins/marketplace/marketplace', 'email.verify_vendor_description', 'Send email to the admin when a vendor registers', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3385, 1, 'en', 'plugins/marketplace/marketplace', 'current_balance', 'Current balance', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3386, 1, 'en', 'plugins/marketplace/marketplace', 'settings.name', 'Settings', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3387, 1, 'en', 'plugins/marketplace/marketplace', 'settings.title', 'Settings for marketplace', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3388, 1, 'en', 'plugins/marketplace/marketplace', 'settings.description', '...', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3389, 1, 'en', 'plugins/marketplace/marketplace', 'settings.fee_per_order', 'Fee per order (%), suggest: 2 or 3', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3390, 1, 'en', 'plugins/marketplace/marketplace', 'settings.fee_withdrawal', 'Fee withdrawal (Fixed amount)', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3391, 1, 'en', 'plugins/marketplace/marketplace', 'settings.check_valid_signature', 'Check valid signature in vendor\'s earnings', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3392, 1, 'en', 'plugins/marketplace/marketplace', 'settings.verify_vendor', 'Verify vendor when registered', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3393, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.name', 'Marketplace', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3394, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.description', 'Theme options for Marketplace', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3395, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.logo_vendor_dashboard', 'Logo in the vendor dashboard (Default is the main logo)', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3396, 1, 'en', 'plugins/marketplace/order', 'shipping_method_required', 'Shipping method for \":name\" store order is required.', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3397, 1, 'en', 'plugins/marketplace/order', 'shipping_method_in', 'Shipping method for \":name\" store order is invalid.', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3398, 1, 'en', 'plugins/marketplace/order', 'shipping_option_required', 'Shipping option for \":name\" store order is required.', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3399, 1, 'en', 'plugins/marketplace/store', 'name', 'Stores', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3400, 1, 'en', 'plugins/marketplace/store', 'create', 'New store', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3401, 1, 'en', 'plugins/marketplace/store', 'edit', 'Edit store', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3402, 1, 'en', 'plugins/marketplace/store', 'forms.logo', 'Logo', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3403, 1, 'en', 'plugins/marketplace/store', 'forms.email', 'Email', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3404, 1, 'en', 'plugins/marketplace/store', 'forms.email_placeholder', 'Ex: name@store.com', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3405, 1, 'en', 'plugins/marketplace/store', 'forms.phone', 'Phone', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3406, 1, 'en', 'plugins/marketplace/store', 'forms.phone_placeholder', 'Phone', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3407, 1, 'en', 'plugins/marketplace/store', 'forms.address', 'Address', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3408, 1, 'en', 'plugins/marketplace/store', 'forms.address_placeholder', 'Address', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3409, 1, 'en', 'plugins/marketplace/store', 'forms.city', 'City', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3410, 1, 'en', 'plugins/marketplace/store', 'forms.city_placeholder', 'City', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3411, 1, 'en', 'plugins/marketplace/store', 'forms.state', 'State', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3412, 1, 'en', 'plugins/marketplace/store', 'forms.state_placeholder', 'State', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3413, 1, 'en', 'plugins/marketplace/store', 'forms.country', 'Country', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3414, 1, 'en', 'plugins/marketplace/store', 'forms.country_placeholder', 'Country', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3415, 1, 'en', 'plugins/marketplace/store', 'forms.store_owner', 'Store owner', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3416, 1, 'en', 'plugins/marketplace/store', 'forms.select_store_owner', 'Select a store owner...', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3417, 1, 'en', 'plugins/marketplace/store', 'forms.store', 'Store', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3418, 1, 'en', 'plugins/marketplace/store', 'forms.select_store', 'Select a store...', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3419, 1, 'en', 'plugins/marketplace/store', 'forms.is_vendor', 'Is vendor?', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3420, 1, 'en', 'plugins/marketplace/store', 'store', 'Store', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3421, 1, 'en', 'plugins/marketplace/store', 'store_name', 'Store name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3422, 1, 'en', 'plugins/marketplace/store', 'store_phone', 'Store phone', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3423, 1, 'en', 'plugins/marketplace/store', 'store_link', 'Store link', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3424, 1, 'en', 'plugins/marketplace/unverified-vendor', 'name', 'Unverified vendors', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3425, 1, 'en', 'plugins/marketplace/unverified-vendor', 'verify', 'Verify vendor', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3426, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.email', 'Email', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3427, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.store_name', 'Store name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3428, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.store_phone', 'Store phone', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3429, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.confirmation_alert', 'Are you sure to verify this vendor?', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3430, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.verify_vendor', 'Verify vendor', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3431, 1, 'en', 'plugins/marketplace/withdrawal', 'name', 'Withdrawals', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3432, 1, 'en', 'plugins/marketplace/withdrawal', 'edit', 'Edit withdrawal', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3433, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.pending', 'Pending', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3434, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.processing', 'Processing', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3435, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.completed', 'Completed', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3436, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.canceled', 'Canceled', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3437, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.refused', 'Refused', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3438, 1, 'en', 'plugins/marketplace/withdrawal', 'amount', 'Amount', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3439, 1, 'en', 'plugins/marketplace/withdrawal', 'customer', 'Customer', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3440, 1, 'en', 'plugins/marketplace/withdrawal', 'vendor', 'Vendor', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3441, 1, 'en', 'plugins/marketplace/withdrawal', 'currency', 'Currency', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3442, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount', 'Amount', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3443, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount_placeholder', 'Amount you want to withdrawal', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3444, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.fee', 'Fee', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3445, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.fee_helper', 'You have to pay a fee when withdrawing: :fee', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3446, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.pending_status_helper', 'To complete withdrawal, please update status as processing then completed', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3447, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3448, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-09-16 07:45:17', '2021-09-16 07:45:17');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3449, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3450, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3451, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3452, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3453, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3454, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3455, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3456, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3457, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3458, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list', 'Mailchimp List', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3459, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3460, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3461, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list', 'Sendgrid List', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3462, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3463, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3464, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3465, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3466, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3467, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3468, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3469, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3470, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3471, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3472, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3473, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3474, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3475, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3476, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3477, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3478, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3479, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3480, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3481, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3482, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3483, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3484, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3485, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3486, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3487, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3488, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3489, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3490, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3491, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3492, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3493, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3494, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3495, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3496, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3497, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3498, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3499, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3500, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3501, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3502, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3503, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3504, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3505, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3506, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3507, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3508, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3509, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3510, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3511, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3512, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3513, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3514, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3515, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3516, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3517, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3518, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3519, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3520, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3521, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3522, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3523, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3524, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3525, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3526, 1, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3527, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3528, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3529, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3530, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3531, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-09-16 07:45:17', '2021-09-16 07:45:17'),
(3532, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3533, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3534, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3535, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3536, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3537, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3538, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3539, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3540, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3541, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3542, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3543, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3544, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3545, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3546, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3547, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3548, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3549, 1, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3550, 1, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3551, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3552, 1, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3553, 1, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3554, 1, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3555, 1, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3556, 1, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3557, 1, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3558, 1, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3559, 1, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3560, 1, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3561, 1, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3562, 1, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3563, 1, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3564, 1, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3565, 1, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3566, 1, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3567, 1, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3568, 1, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3569, 1, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3570, 1, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3571, 1, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3572, 1, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3573, 1, 'vi', 'plugins/payment/payment', 'payments', 'Thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3574, 1, 'vi', 'plugins/payment/payment', 'checkout_success', 'Thanh toán thành công!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3575, 1, 'vi', 'plugins/payment/payment', 'view_payment', 'Xem thanh toán #', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3576, 1, 'vi', 'plugins/payment/payment', 'charge_id', 'Mã thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3577, 1, 'vi', 'plugins/payment/payment', 'amount', 'Số tiền', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3578, 1, 'vi', 'plugins/payment/payment', 'currency', 'Loại tiền tệ', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3579, 1, 'vi', 'plugins/payment/payment', 'user', 'Người dùng', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3580, 1, 'vi', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3581, 1, 'vi', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3582, 1, 'vi', 'plugins/payment/payment', 'action', 'Hành động', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3583, 1, 'vi', 'plugins/payment/payment', 'payment_via_card', 'Thanh toán qua thẻ', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3584, 1, 'vi', 'plugins/payment/payment', 'card_number', 'Số thẻ', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3585, 1, 'vi', 'plugins/payment/payment', 'full_name', 'Họ tên', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3586, 1, 'vi', 'plugins/payment/payment', 'payment_via_paypal', 'Thanh toán qua PayPal', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3587, 1, 'vi', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3588, 1, 'vi', 'plugins/payment/payment', 'cvc', 'CVC', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3589, 1, 'vi', 'plugins/payment/payment', 'details', 'Chi tiết', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3590, 1, 'vi', 'plugins/payment/payment', 'payer_name', 'Tên người mua', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3591, 1, 'vi', 'plugins/payment/payment', 'email', 'Email', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3592, 1, 'vi', 'plugins/payment/payment', 'phone', 'Điện thoại', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3593, 1, 'vi', 'plugins/payment/payment', 'country', 'Quốc gia', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3594, 1, 'vi', 'plugins/payment/payment', 'shipping_address', 'Địa chỉ giao hàng', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3595, 1, 'vi', 'plugins/payment/payment', 'payment_details', 'Chi tiết thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3596, 1, 'vi', 'plugins/payment/payment', 'card', 'Thẻ', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3597, 1, 'vi', 'plugins/payment/payment', 'address', 'Địa chỉ', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3598, 1, 'vi', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Không thể lấy mã Stripe để thanh toán.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3599, 1, 'vi', 'plugins/payment/payment', 'payment_id', 'Mã thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3600, 1, 'vi', 'plugins/payment/payment', 'payment_methods', 'Phương thức thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3601, 1, 'vi', 'plugins/payment/payment', 'transactions', 'Lịch sử giao dịch', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3602, 1, 'vi', 'plugins/payment/payment', 'payment_methods_description', 'Cài đặt các phương thức thanh toán cho website', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3603, 1, 'vi', 'plugins/payment/payment', 'paypal_description', 'Khách hàng có thể mua hàng và thanh toán trực tiếp thông qua cổng thanh toán PayPal', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3604, 1, 'vi', 'plugins/payment/payment', 'use', 'Dùng', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3605, 1, 'vi', 'plugins/payment/payment', 'stripe_description', 'Khách hàng có thể mua hàng và thanh toán bằng Visa, Credit card thông qua cổng thanh toán Stripe', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3606, 1, 'vi', 'plugins/payment/payment', 'edit', 'Chỉnh sửa', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3607, 1, 'vi', 'plugins/payment/payment', 'settings', 'Cài đặt', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3608, 1, 'vi', 'plugins/payment/payment', 'activate', 'Kích hoạt', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3609, 1, 'vi', 'plugins/payment/payment', 'deactivate', 'Huỷ kích hoạt', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3610, 1, 'vi', 'plugins/payment/payment', 'update', 'Cập nhật', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3611, 1, 'vi', 'plugins/payment/payment', 'configuration_instruction', 'Hướng dẫn cấu hình :name', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3612, 1, 'vi', 'plugins/payment/payment', 'configuration_requirement', 'Để sử dụng :name bạn cần', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3613, 1, 'vi', 'plugins/payment/payment', 'service_registration', 'Đăng ký dịch vụ với :name', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3614, 1, 'vi', 'plugins/payment/payment', 'after_service_registration_msg', 'Sau khi hoàn tất các bước đăng ký tại :name, bạn sẽ có các thông số Client ID, Client Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3615, 1, 'vi', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Nhập các thông số Client ID, Secret vào ô bên phải', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3616, 1, 'vi', 'plugins/payment/payment', 'method_name', 'Tên phương thức', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3617, 1, 'vi', 'plugins/payment/payment', 'please_provide_information', 'Xin vui lòng cung cấp thông tin', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3618, 1, 'vi', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3619, 1, 'vi', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3620, 1, 'vi', 'plugins/payment/payment', 'stripe_key', 'Stripe Key', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3621, 1, 'vi', 'plugins/payment/payment', 'stripe_secret', 'Stripe Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3622, 1, 'vi', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3623, 1, 'vi', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3624, 1, 'vi', 'plugins/payment/payment', 'secret', 'Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3625, 1, 'vi', 'plugins/payment/payment', 'pay_online_via', 'Thanh toán online qua :name', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3626, 1, 'vi', 'plugins/payment/payment', 'sandbox_mode', 'Chế độ thử nghiệm', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3627, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method', 'Huỷ kích hoạt phương thức', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3628, 1, 'vi', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Bạn có chắc chắn muốn huỷ phương thức thành toán này?', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3629, 1, 'vi', 'plugins/payment/payment', 'agree', 'Đồng ý', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3630, 1, 'vi', 'plugins/payment/payment', 'name', 'Thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3631, 1, 'vi', 'plugins/payment/payment', 'create', 'Thêm thanh toán mới', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3632, 1, 'vi', 'plugins/payment/payment', 'go_back', 'Trở lại', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3633, 1, 'vi', 'plugins/payment/payment', 'information', 'Thông tin', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3634, 1, 'vi', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3635, 1, 'vi', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3636, 1, 'vi', 'plugins/payment/payment', 'methods.cod', 'Thanh toán khi giao hàng (COD)', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3637, 1, 'vi', 'plugins/payment/payment', 'methods.bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3638, 1, 'vi', 'plugins/payment/payment', 'statuses.pending', 'Chưa hoàn tất', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3639, 1, 'vi', 'plugins/payment/payment', 'statuses.completed', 'Đã hoàn thành', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3640, 1, 'vi', 'plugins/payment/payment', 'statuses.refunding', 'Đang hoàn tiền', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3641, 1, 'vi', 'plugins/payment/payment', 'statuses.refunded', 'Đã hoàn tiền', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3642, 1, 'vi', 'plugins/payment/payment', 'statuses.fraud', 'Gian lận', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3643, 1, 'vi', 'plugins/payment/payment', 'statuses.failed', 'Thất bại', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3644, 1, 'vi', 'plugins/payment/payment', 'payment_methods_instruction', 'Hướng dẫn khách hàng thanh toán trực tiếp. Có thể chọn thanh toán khi giao hàng hoặc chuyển khoản', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3645, 1, 'vi', 'plugins/payment/payment', 'payment_method_description', 'Hướng dẫn thanh toán – (Hiển thị ở trang thông báo mua hàng thành công và trang thanh toán)', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3646, 1, 'vi', 'plugins/payment/payment', 'payment_via_cod', 'Thanh toán khi nhận hàng (COD)', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3647, 1, 'vi', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Chuyển khoản qua ngân hàng', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3648, 1, 'vi', 'plugins/payment/payment', 'payment_pending', 'Thực hiện thành công. Thanh toán của bạn đang được xử lý và sẽ được xác nhận bởi nhân viên.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3649, 1, 'vi', 'plugins/payment/payment', 'created_at', 'Ngày tạo', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3650, 1, 'vi', 'plugins/payment/payment', 'payment_channel', 'Phương thức thanh toán', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3651, 1, 'vi', 'plugins/payment/payment', 'total', 'Tổng cộng', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3652, 1, 'vi', 'plugins/payment/payment', 'status', 'Trạng thái', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3653, 1, 'vi', 'plugins/payment/payment', 'default_payment_method', 'Phương thức thanh toán mặc định', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3654, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3655, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3656, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3657, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3658, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3659, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3660, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3661, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3662, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3663, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3664, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3665, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3666, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3667, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3668, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3669, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3670, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3671, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3672, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3673, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3674, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3675, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3676, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3677, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3678, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3679, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3680, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3681, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3682, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3683, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3684, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3685, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3686, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3687, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3688, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3689, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3690, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3691, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3692, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3693, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3694, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3695, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3696, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3697, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3698, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3699, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3700, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3701, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3702, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3703, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3704, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3705, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3706, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3707, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3708, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3709, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3710, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3711, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3712, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-09-16 07:45:18', '2021-09-16 07:45:18'),
(3713, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3714, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3715, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3716, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3717, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3718, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3719, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3720, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3721, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3722, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3723, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3724, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3725, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3726, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3727, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3728, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3729, 1, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3730, 1, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3731, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3732, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3733, 1, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3734, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3735, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3736, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3737, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3738, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3739, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3740, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3741, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3742, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3743, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3744, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3745, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3746, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3747, 1, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3748, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3749, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3750, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3751, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3752, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3753, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3754, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3755, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3756, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3757, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3758, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3759, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3760, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3761, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3762, 1, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3763, 1, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3764, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3765, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3766, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3767, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3768, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3769, 1, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3770, 1, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3771, 1, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3772, 1, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3773, 1, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3774, 1, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3775, 1, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3776, 1, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3777, 1, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3778, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3779, 1, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3780, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3781, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3782, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3783, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3784, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3785, 1, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3786, 1, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3787, 1, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3788, 1, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3789, 1, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3790, 1, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3791, 1, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3792, 1, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3793, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3794, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3795, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3796, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3797, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3798, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3799, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3800, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3801, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3802, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3803, 1, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3804, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3805, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3806, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3807, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3808, 1, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3809, 1, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2021-09-16 07:45:19', '2021-09-16 07:45:19');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3810, 1, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3811, 1, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3812, 1, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3813, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3814, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3815, 1, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3816, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3817, 1, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3818, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3819, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3820, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3821, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3822, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3823, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3824, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3825, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3826, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3827, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3828, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3829, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3830, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3831, 1, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2021-09-16 07:45:19', '2021-09-16 07:45:19'),
(3832, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-09-16 07:45:19', '2021-09-16 07:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$FfApzVTfqjiqvhNCavtkVe2QPKtRh7UE5Vk48zt3YCUgx7uPWeUzO', NULL, '2021-09-16 07:44:26', '2021-09-16 07:44:26', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'martfury', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(4, 'BlogSearchWidget', 'primary_sidebar', 'martfury', 1, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(5, 'BlogCategoriesWidget', 'primary_sidebar', 'martfury', 2, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(6, 'RecentPostsWidget', 'primary_sidebar', 'martfury', 3, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(7, 'TagsWidget', 'primary_sidebar', 'martfury', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(8, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(9, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 2, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(10, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 3, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(11, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 4, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}', '2021-09-16 07:44:28', '2021-09-16 07:44:28'),
(12, 'ProductCategoriesWidget', 'bottom_footer_sidebar', 'martfury', 5, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}', '2021-09-16 07:44:28', '2021-09-16 07:44:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3833;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
