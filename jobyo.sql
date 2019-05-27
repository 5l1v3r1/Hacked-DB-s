-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2019 at 07:27 PM
-- Server version: 10.3.11-MariaDB-1:10.3.11+maria~stretch
-- PHP Version: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobyo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_commentmeta`
--

CREATE TABLE `wpjo_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_comments`
--

CREATE TABLE `wpjo_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_links`
--

CREATE TABLE `wpjo_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_options`
--

CREATE TABLE `wpjo_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_options`
--

INSERT INTO `wpjo_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://jobyo.mainfor.edu.es', 'yes'),
(2, 'home', 'http://jobyo.mainfor.edu.es', 'yes'),
(3, 'blogname', 'Jobyo', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tic@mainfor.edu.es', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:7:\"blog/?$\";s:24:\"index.php?post_type=blog\";s:37:\"blog/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=blog&feed=$matches[1]\";s:32:\"blog/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=blog&feed=$matches[1]\";s:24:\"blog/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=blog&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:37:\"index.php?blog=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:31:\"index.php?blog=$matches[1]&tb=1\";s:45:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?blog=$matches[1]&feed=$matches[2]\";s:40:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?blog=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?blog=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?blog=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?blog=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"sucuri-scanner/sucuri.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'grupo_mainjobs', 'yes'),
(41, 'stylesheet', 'grupo_mainjobs', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:\"title\";s:13:\"Encuéntranos\";s:4:\"text\";s:187:\"<p><strong>Dirección</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Horas</strong><br />Lunes a viernes: 9:00AM a 5:00PM<br />Sábado y domingo: 11:00AM a 3:00PM</p>\";}i:3;a:2:{s:5:\"title\";s:20:\"Acerca de este sitio\";s:4:\"text\";s:95:\"Este puede ser un buen lugar para presentarte y presentar tu sitio o incluir algunos créditos.\";}i:4;a:2:{s:5:\"title\";s:13:\"Encuéntranos\";s:4:\"text\";s:187:\"<p><strong>Dirección</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Horas</strong><br />Lunes a viernes: 9:00AM a 5:00PM<br />Sábado y domingo: 11:00AM a 3:00PM</p>\";}i:5;a:2:{s:5:\"title\";s:20:\"Acerca de este sitio\";s:4:\"text\";s:95:\"Este puede ser un buen lugar para presentarte y presentar tu sitio o incluir algunos créditos.\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:25:\"sucuri-scanner/sucuri.php\";s:19:\"sucuriscanUninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wpjo_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_ES', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:7:\"general\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'cron', 'a:8:{i:1558969968;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558975590;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558976435;a:1:{s:25:\"sucuriscan_scheduled_scan\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1558998966;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559041747;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559042180;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1559045407;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1496059615;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(149, 'current_theme', '', 'yes'),
(150, 'theme_mods_grupo_mainjobs', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:4:{s:14:\"Secondary menu\";i:2;s:9:\"Main menu\";i:4;s:6:\"Footer\";i:5;s:9:\"Secciones\";i:6;}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(492, 'widget_testimonialrotatorwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(494, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(495, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(496, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(511, 'category_children', 'a:0:{}', 'yes'),
(521, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1497610145;s:7:\"version\";s:3:\"4.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(743, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(747, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"tic@mainfor.edu.es\";s:7:\"version\";s:5:\"5.2.1\";s:9:\"timestamp\";i:1558507013;}', 'no'),
(1040, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2874, 'wp_page_for_privacy_policy', '0', 'yes'),
(2875, 'show_comments_cookies_opt_in', '0', 'yes'),
(2876, 'db_upgraded', '', 'yes'),
(3472, 'can_compress_scripts', '0', 'no'),
(3920, 'recovery_keys', 'a:0:{}', 'yes'),
(4018, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1558968284;s:15:\"version_checked\";s:5:\"5.2.1\";s:12:\"translations\";a:0:{}}', 'no'),
(4019, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558968286;s:7:\"checked\";a:2:{s:14:\"grupo_mainjobs\";s:0:\"\";s:15:\"twentyseventeen\";s:3:\"2.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(4040, '_site_transient_timeout_theme_roots', '1558970085', 'no'),
(4041, '_site_transient_theme_roots', 'a:2:{s:14:\"grupo_mainjobs\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(4042, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558968286;s:7:\"checked\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:25:\"sucuri-scanner/sucuri.php\";s:6:\"1.8.21\";s:43:\"testimonial-rotator/testimonial-rotator.php\";s:5:\"2.5.2\";}s:8:\"response\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:25:\"sucuri-scanner/sucuri.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/sucuri-scanner\";s:4:\"slug\";s:14:\"sucuri-scanner\";s:6:\"plugin\";s:25:\"sucuri-scanner/sucuri.php\";s:11:\"new_version\";s:6:\"1.8.21\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/sucuri-scanner/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/sucuri-scanner.1.8.21.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/sucuri-scanner/assets/icon-256x256.png?rev=1235419\";s:2:\"1x\";s:67:\"https://ps.w.org/sucuri-scanner/assets/icon-128x128.png?rev=1235419\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/sucuri-scanner/assets/banner-772x250.png?rev=1235419\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"testimonial-rotator/testimonial-rotator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/testimonial-rotator\";s:4:\"slug\";s:19:\"testimonial-rotator\";s:6:\"plugin\";s:43:\"testimonial-rotator/testimonial-rotator.php\";s:11:\"new_version\";s:5:\"2.5.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/testimonial-rotator/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/testimonial-rotator.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/testimonial-rotator/assets/icon-256x256.png?rev=1839708\";s:2:\"1x\";s:72:\"https://ps.w.org/testimonial-rotator/assets/icon-128x128.png?rev=1839708\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/testimonial-rotator/assets/banner-1544x500.jpg?rev=1839711\";s:2:\"1x\";s:74:\"https://ps.w.org/testimonial-rotator/assets/banner-772x250.jpg?rev=1839710\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_postmeta`
--

CREATE TABLE `wpjo_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_postmeta`
--

INSERT INTO `wpjo_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(29, 18, '_menu_item_type', 'custom'),
(30, 18, '_menu_item_menu_item_parent', '0'),
(31, 18, '_menu_item_object_id', '18'),
(32, 18, '_menu_item_object', 'custom'),
(33, 18, '_menu_item_target', ''),
(34, 18, '_menu_item_classes', 'a:1:{i:0;s:8:\"facebook\";}'),
(35, 18, '_menu_item_xfn', ''),
(36, 18, '_menu_item_url', '#'),
(38, 19, '_menu_item_type', 'custom'),
(39, 19, '_menu_item_menu_item_parent', '0'),
(40, 19, '_menu_item_object_id', '19'),
(41, 19, '_menu_item_object', 'custom'),
(42, 19, '_menu_item_target', ''),
(43, 19, '_menu_item_classes', 'a:1:{i:0;s:7:\"twitter\";}'),
(44, 19, '_menu_item_xfn', ''),
(45, 19, '_menu_item_url', '#'),
(47, 20, '_menu_item_type', 'custom'),
(48, 20, '_menu_item_menu_item_parent', '0'),
(49, 20, '_menu_item_object_id', '20'),
(50, 20, '_menu_item_object', 'custom'),
(51, 20, '_menu_item_target', ''),
(52, 20, '_menu_item_classes', 'a:1:{i:0;s:8:\"linkedin\";}'),
(53, 20, '_menu_item_xfn', ''),
(54, 20, '_menu_item_url', '#'),
(56, 21, '_menu_item_type', 'custom'),
(57, 21, '_menu_item_menu_item_parent', '0'),
(58, 21, '_menu_item_object_id', '21'),
(59, 21, '_menu_item_object', 'custom'),
(60, 21, '_menu_item_target', ''),
(61, 21, '_menu_item_classes', 'a:1:{i:0;s:8:\"telefono\";}'),
(62, 21, '_menu_item_xfn', ''),
(63, 21, '_menu_item_url', 'tel:+0034900812816'),
(65, 22, '_menu_item_type', 'custom'),
(66, 22, '_menu_item_menu_item_parent', '0'),
(67, 22, '_menu_item_object_id', '22'),
(68, 22, '_menu_item_object', 'custom'),
(69, 22, '_menu_item_target', ''),
(70, 22, '_menu_item_classes', 'a:1:{i:0;s:5:\"email\";}'),
(71, 22, '_menu_item_xfn', ''),
(72, 22, '_menu_item_url', 'mailto:jovenes@jobyo.com'),
(74, 23, '_menu_item_type', 'custom'),
(75, 23, '_menu_item_menu_item_parent', '0'),
(76, 23, '_menu_item_object_id', '23'),
(77, 23, '_menu_item_object', 'custom'),
(78, 23, '_menu_item_target', ''),
(79, 23, '_menu_item_classes', 'a:1:{i:0;s:20:\"visible-print-inline\";}'),
(80, 23, '_menu_item_xfn', ''),
(81, 23, '_menu_item_url', '#'),
(83, 24, '_edit_lock', '1496935474:3'),
(84, 24, '_edit_last', '3'),
(89, 27, '_menu_item_type', 'custom'),
(90, 27, '_menu_item_menu_item_parent', '0'),
(91, 27, '_menu_item_object_id', '27'),
(92, 27, '_menu_item_object', 'custom'),
(93, 27, '_menu_item_target', ''),
(94, 27, '_menu_item_classes', 'a:1:{i:0;s:4:\"home\";}'),
(95, 27, '_menu_item_xfn', ''),
(96, 27, '_menu_item_url', 'http://jobyo.mainfor.edu.es/'),
(116, 30, '_menu_item_type', 'custom'),
(117, 30, '_menu_item_menu_item_parent', '0'),
(118, 30, '_menu_item_object_id', '30'),
(119, 30, '_menu_item_object', 'custom'),
(120, 30, '_menu_item_target', ''),
(121, 30, '_menu_item_classes', 'a:1:{i:0;s:4:\"blog\";}'),
(122, 30, '_menu_item_xfn', ''),
(123, 30, '_menu_item_url', '#'),
(129, 33, '_menu_item_type', 'custom'),
(130, 33, '_menu_item_menu_item_parent', '0'),
(131, 33, '_menu_item_object_id', '33'),
(132, 33, '_menu_item_object', 'custom'),
(133, 33, '_menu_item_target', ''),
(134, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 33, '_menu_item_xfn', ''),
(136, 33, '_menu_item_url', '#'),
(138, 34, '_menu_item_type', 'custom'),
(139, 34, '_menu_item_menu_item_parent', '0'),
(140, 34, '_menu_item_object_id', '34'),
(141, 34, '_menu_item_object', 'custom'),
(142, 34, '_menu_item_target', ''),
(143, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(144, 34, '_menu_item_xfn', ''),
(145, 34, '_menu_item_url', '#'),
(147, 35, '_edit_last', '3'),
(148, 35, '_wp_page_template', 'default'),
(149, 35, '_edit_lock', '1497284755:3'),
(177, 57, '_edit_lock', '1497439204:3'),
(178, 57, '_edit_last', '3'),
(179, 57, '_wp_page_template', 'default'),
(180, 59, '_edit_lock', '1496315736:3'),
(181, 59, '_edit_last', '3'),
(184, 61, '_menu_item_type', 'post_type'),
(185, 61, '_menu_item_menu_item_parent', '0'),
(186, 61, '_menu_item_object_id', '57'),
(187, 61, '_menu_item_object', 'page'),
(188, 61, '_menu_item_target', ''),
(189, 61, '_menu_item_classes', 'a:1:{i:0;s:12:\"nuevo-alumno\";}'),
(190, 61, '_menu_item_xfn', ''),
(191, 61, '_menu_item_url', ''),
(202, 59, 'Participantes', '25'),
(203, 59, 'Empresas', '40'),
(204, 59, 'Web', 'http://trabajoenweb.com/'),
(207, 67, '_edit_lock', '1496333836:3'),
(208, 67, '_edit_last', '3'),
(213, 70, '_wp_attached_file', '2017/05/web.png'),
(214, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:398;s:4:\"file\";s:15:\"2017/05/web.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"web-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"web-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 59, '_thumbnail_id', '70'),
(220, 77, '_edit_lock', '1497438168:3'),
(221, 77, '_edit_last', '3'),
(222, 77, '_wp_page_template', 'default'),
(223, 79, '_menu_item_type', 'post_type'),
(224, 79, '_menu_item_menu_item_parent', '0'),
(225, 79, '_menu_item_object_id', '77'),
(226, 79, '_menu_item_object', 'page'),
(227, 79, '_menu_item_target', ''),
(228, 79, '_menu_item_classes', 'a:1:{i:0;s:7:\"empresa\";}'),
(229, 79, '_menu_item_xfn', ''),
(230, 79, '_menu_item_url', ''),
(232, 80, '_edit_lock', '1497543986:3'),
(233, 80, '_edit_last', '3'),
(234, 80, '_wp_page_template', 'default'),
(237, 24, '_wp_old_slug', 'grupo-mainjobs'),
(247, 88, '_wp_attached_file', '2017/05/logitipo_jobyo.svg'),
(249, 89, '_wp_attached_file', '2017/05/logotipo_color.svg'),
(250, 24, '_thumbnail_id', '89'),
(256, 96, '_edit_last', '3'),
(257, 96, '_wp_page_template', 'default'),
(258, 96, '_edit_lock', '1497606689:3'),
(274, 108, '_edit_lock', '1497439423:3'),
(275, 108, '_edit_last', '3'),
(278, 110, '_edit_lock', '1497529384:3'),
(279, 110, '_edit_last', '3'),
(284, 113, '_edit_lock', '1497439230:3'),
(285, 113, '_edit_last', '3'),
(296, 124, '_edit_lock', '1497605994:3'),
(297, 125, '_wp_attached_file', '2017/06/2e3663a.jpg'),
(298, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:19:\"2017/06/2e3663a.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"2e3663a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"2e3663a-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 124, '_edit_last', '3'),
(300, 124, '_thumbnail_id', '125'),
(303, 124, 'Empresa', 'Mainfor Soluciones Tecnológicas'),
(308, 128, '_edit_lock', '1497438111:3'),
(309, 128, '_edit_last', '3'),
(322, 139, '_edit_lock', '1497439022:3'),
(323, 139, '_edit_last', '3'),
(328, 142, '_wp_attached_file', '2017/06/007-placeholder.svg'),
(329, 139, '_thumbnail_id', '142'),
(332, 144, '_edit_lock', '1497439179:3'),
(333, 144, '_edit_last', '3'),
(334, 145, '_edit_lock', '1497529318:3'),
(335, 145, '_edit_last', '3'),
(336, 145, '_wp_page_template', 'default'),
(339, 153, '_edit_lock', '1497440859:3'),
(340, 153, '_edit_last', '3'),
(343, 155, '_edit_lock', '1497443503:3'),
(344, 155, '_edit_last', '3'),
(347, 157, '_edit_lock', '1497529229:3'),
(348, 157, '_edit_last', '3'),
(353, 159, '_wp_attached_file', '2017/06/jovenes.svg'),
(354, 155, '_thumbnail_id', '159'),
(357, 157, '_thumbnail_id', '88'),
(360, 160, '_wp_attached_file', '2017/06/recursos.svg'),
(361, 153, '_thumbnail_id', '160'),
(368, 165, '_menu_item_type', 'post_type'),
(369, 165, '_menu_item_menu_item_parent', '0'),
(370, 165, '_menu_item_object_id', '57'),
(371, 165, '_menu_item_object', 'page'),
(372, 165, '_menu_item_target', ''),
(373, 165, '_menu_item_classes', 'a:1:{i:0;s:5:\"about\";}'),
(374, 165, '_menu_item_xfn', ''),
(375, 165, '_menu_item_url', ''),
(377, 166, '_menu_item_type', 'post_type'),
(378, 166, '_menu_item_menu_item_parent', '0'),
(379, 166, '_menu_item_object_id', '77'),
(380, 166, '_menu_item_object', 'page'),
(381, 166, '_menu_item_target', ''),
(382, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(383, 166, '_menu_item_xfn', ''),
(384, 166, '_menu_item_url', ''),
(386, 167, '_menu_item_type', 'custom'),
(387, 167, '_menu_item_menu_item_parent', '0'),
(388, 167, '_menu_item_object_id', '167'),
(389, 167, '_menu_item_object', 'custom'),
(390, 167, '_menu_item_target', ''),
(391, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(392, 167, '_menu_item_xfn', ''),
(393, 167, '_menu_item_url', '#'),
(395, 168, '_menu_item_type', 'custom'),
(396, 168, '_menu_item_menu_item_parent', '0'),
(397, 168, '_menu_item_object_id', '168'),
(398, 168, '_menu_item_object', 'custom'),
(399, 168, '_menu_item_target', ''),
(400, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(401, 168, '_menu_item_xfn', ''),
(402, 168, '_menu_item_url', '#'),
(408, 172, '_edit_lock', '1497607520:3'),
(409, 172, '_edit_last', '3'),
(412, 175, '_edit_lock', '1497615518:3'),
(413, 175, '_edit_last', '3'),
(414, 175, '_wp_page_template', 'default'),
(419, 181, '_wp_attached_file', '2017/06/contacto.svg'),
(420, 175, '_thumbnail_id', '181'),
(421, 182, '_edit_lock', '1497606514:3'),
(422, 182, '_edit_last', '3'),
(423, 182, '_wp_page_template', 'default'),
(426, 124, 'Descripcion', 'Trabajo e investigo en educación y formación, que no son lo mismo. Me interesan las tendencias en innovación educativa y el elearning. '),
(427, 124, 'LinkedIn', 'https://www.linkedin.com/in/suvires'),
(428, 184, '_edit_lock', '1497606709:3'),
(429, 184, '_edit_last', '3'),
(430, 185, '_wp_attached_file', '2017/06/alicia_llamas.jpg'),
(431, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:25:\"2017/06/alicia_llamas.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"alicia_llamas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"alicia_llamas-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 184, 'Cargo', 'Diseño y desarrollo web'),
(433, 184, 'LinkedIn', 'https://www.linkedin.com/in/alillago/'),
(435, 184, '_thumbnail_id', '185'),
(440, 184, 'Descripcion', 'Creo que una de las experiencias que más pueden enriquecer a las personas es salir de su zona de confort. Nadie dijo que fuera fácil.'),
(445, 124, 'Cargo', 'Learning Project Manager'),
(453, 190, '_wp_attached_file', '2017/06/Man-6-icon.png'),
(454, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2017/06/Man-6-icon.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Man-6-icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Man-6-icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(455, 189, 'LinkedIn', '#'),
(456, 189, '_edit_last', '3'),
(457, 189, '_edit_lock', '1497614125:3'),
(459, 189, '_thumbnail_id', '190'),
(466, 194, '_edit_last', '3'),
(467, 194, '_wp_page_template', 'default'),
(468, 194, '_edit_lock', '1497610400:3'),
(469, 197, '_menu_item_type', 'post_type'),
(470, 197, '_menu_item_menu_item_parent', '0'),
(471, 197, '_menu_item_object_id', '194'),
(472, 197, '_menu_item_object', 'page'),
(473, 197, '_menu_item_target', ''),
(474, 197, '_menu_item_classes', 'a:1:{i:0;s:13:\"participantes\";}'),
(475, 197, '_menu_item_xfn', ''),
(476, 197, '_menu_item_url', ''),
(478, 201, '_wp_attached_file', '2017/06/people-1003991_1920.jpg'),
(479, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:31:\"2017/06/people-1003991_1920.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"people-1003991_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"people-1003991_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"people-1003991_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"people-1003991_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(480, 194, '_thumbnail_id', '201'),
(481, 202, '_form', '<label> Nombre (requerido)\n    [text* your-name] </label>\n\n<label> Tu correo electrónico (requerido)\n    [email* your-email] </label>\n\n<label> Asunto\n    [text your-subject] </label>\n\n<label> Mensaje\n    [textarea your-message] </label>\n\n[submit \"Enviar\"]'),
(482, 202, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"Jobyo \"[your-subject]\"\";s:6:\"sender\";s:44:\"[your-name] <wordpress@jobyo.mainfor.edu.es>\";s:9:\"recipient\";s:18:\"tic@mainfor.edu.es\";s:4:\"body\";s:192:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Jobyo (http://jobyo.mainfor.edu.es)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(483, 202, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Jobyo \"[your-subject]\"\";s:6:\"sender\";s:38:\"Jobyo <wordpress@jobyo.mainfor.edu.es>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:137:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en Jobyo (http://jobyo.mainfor.edu.es)\";s:18:\"additional_headers\";s:28:\"Reply-To: tic@mainfor.edu.es\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(484, 202, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:74:\"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\";s:4:\"spam\";s:85:\"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:24:\"El campo es obligatorio.\";s:16:\"invalid_too_long\";s:28:\"El campo es demasiado largo.\";s:17:\"invalid_too_short\";s:28:\"El campo es demasiado corto.\";s:12:\"invalid_date\";s:34:\"El formato de fecha es incorrecto.\";s:14:\"date_too_early\";s:50:\"La fecha es anterior a la más temprana permitida.\";s:13:\"date_too_late\";s:50:\"La fecha es posterior a la más tardía permitida.\";s:13:\"upload_failed\";s:46:\"Hubo un error desconocido subiendo el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:31:\"El archivo es demasiado grande.\";s:23:\"upload_failed_php_error\";s:43:\"Se ha producido un error subiendo la imagen\";s:14:\"invalid_number\";s:36:\"El formato de número no es válido.\";s:16:\"number_too_small\";s:45:\"El número es menor que el mínimo permitido.\";s:16:\"number_too_large\";s:45:\"El número es mayor que el máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:17:\"captcha_not_match\";s:37:\"El código introducido es incorrecto.\";s:13:\"invalid_email\";s:71:\"La dirección de correo electrónico que has introducido no es válida.\";s:11:\"invalid_url\";s:21:\"La URL no es válida.\";s:11:\"invalid_tel\";s:38:\"El número de teléfono no es válido.\";}'),
(485, 202, '_additional_settings', ''),
(486, 202, '_locale', 'es_ES'),
(489, 205, '_edit_lock', '1497614190:3'),
(490, 205, '_edit_last', '3'),
(491, 205, '_thumbnail_id', '190'),
(498, 210, '_edit_lock', '1497615333:3'),
(499, 210, '_edit_last', '3'),
(500, 210, '_thumbnail_id', '190');

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_posts`
--

CREATE TABLE `wpjo_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_posts`
--

INSERT INTO `wpjo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-05-29 11:16:04', '2017-05-29 11:16:04', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo \"cosas\" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://jobyo.mainfor.edu.es/wp-admin/\">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2017-05-29 11:16:04', '2017-05-29 11:16:04', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=2', 0, 'page', '', 0),
(18, 3, '2017-05-29 14:26:23', '2017-05-29 14:26:23', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-05-29 15:11:23', '2017-05-29 15:11:23', '', 0, 'http://jobyo.mainfor.edu.es/?p=18', 1, 'nav_menu_item', '', 0),
(19, 3, '2017-05-29 14:26:36', '2017-05-29 14:26:36', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-05-29 15:11:23', '2017-05-29 15:11:23', '', 0, 'http://jobyo.mainfor.edu.es/?p=19', 2, 'nav_menu_item', '', 0),
(20, 3, '2017-05-29 14:26:49', '2017-05-29 14:26:49', '', 'LinkedIn', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2017-05-29 15:11:23', '2017-05-29 15:11:23', '', 0, 'http://jobyo.mainfor.edu.es/?p=20', 3, 'nav_menu_item', '', 0),
(21, 3, '2017-05-29 14:27:30', '2017-05-29 14:27:30', '', '900 812 816', '', 'publish', 'closed', 'closed', '', '900-812-816', '', '', '2017-05-29 15:11:23', '2017-05-29 15:11:23', '', 0, 'http://jobyo.mainfor.edu.es/?p=21', 5, 'nav_menu_item', '', 0),
(22, 3, '2017-05-29 14:27:56', '2017-05-29 14:27:56', '', 'jovenes@jobyo.com', '', 'publish', 'closed', 'closed', '', 'jovenesjobyo-com', '', '', '2017-05-29 15:11:23', '2017-05-29 15:11:23', '', 0, 'http://jobyo.mainfor.edu.es/?p=22', 6, 'nav_menu_item', '', 0),
(23, 3, '2017-05-29 14:28:42', '2017-05-29 14:28:42', '', '#', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-05-29 15:11:23', '2017-05-29 15:11:23', '', 0, 'http://jobyo.mainfor.edu.es/?p=23', 4, 'nav_menu_item', '', 0),
(24, 3, '2017-05-29 14:41:00', '2017-05-29 14:41:00', '', 'Jobyó', '', 'publish', 'open', 'open', '', 'jobyo', '', '', '2017-06-08 09:09:59', '2017-06-08 09:09:59', '', 0, 'http://jobyo.mainfor.edu.es/?p=24', 0, 'post', '', 0),
(26, 3, '2017-05-29 14:41:00', '2017-05-29 14:41:00', '', 'Grupo Mainjobs', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-05-29 14:41:00', '2017-05-29 14:41:00', '', 24, 'http://jobyo.mainfor.edu.es/2017/05/29/24-revision-v1/', 0, 'revision', '', 0),
(27, 3, '2017-05-29 14:45:16', '2017-05-29 14:45:16', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2017-06-16 07:29:50', '2017-06-16 07:29:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=27', 1, 'nav_menu_item', '', 0),
(30, 3, '2017-05-29 14:45:16', '2017-05-29 14:45:16', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-06-16 07:29:50', '2017-06-16 07:29:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=30', 5, 'nav_menu_item', '', 0),
(33, 3, '2017-05-29 17:07:00', '2017-05-29 17:07:00', '', 'Aviso legal', '', 'publish', 'closed', 'closed', '', 'aviso-legal', '', '', '2017-05-29 17:07:00', '2017-05-29 17:07:00', '', 0, 'http://jobyo.mainfor.edu.es/?p=33', 1, 'nav_menu_item', '', 0),
(34, 3, '2017-05-29 17:07:00', '2017-05-29 17:07:00', '', 'Política de cookies', '', 'publish', 'closed', 'closed', '', 'politica-de-cookies', '', '', '2017-05-29 17:07:00', '2017-05-29 17:07:00', '', 0, 'http://jobyo.mainfor.edu.es/?p=34', 2, 'nav_menu_item', '', 0),
(35, 3, '2017-05-29 17:24:27', '2017-05-29 17:24:27', '<h1 style=\"text-align: center;\">trabajo (job) + jóvenes (yó)</h1>\r\n<h2 style=\"text-align: center;\">Actualmente somos: <strong>1.000 participantes </strong></h2>\r\n<h3 style=\"text-align: center;\">personas formadas + docentes expertos + empresas colaboradoras</h3>', '¿Quiénes formamos parte?', '', 'publish', 'closed', 'closed', '', 'quienes-formamos-parte', '', '', '2017-06-12 16:25:34', '2017-06-12 16:25:34', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=35', 0, 'page', '', 0),
(36, 3, '2017-05-29 17:24:27', '2017-05-29 17:24:27', '', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-29 17:24:27', '2017-05-29 17:24:27', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/29/35-revision-v1/', 0, 'revision', '', 0),
(37, 3, '2017-05-29 17:25:28', '2017-05-29 17:25:28', 'Somos un total de 1.000 personas dentro de este programa entre: personas que se han formado', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2017-05-29 17:25:28', '2017-05-29 17:25:28', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/29/35-autosave-v1/', 0, 'revision', '', 0),
(38, 3, '2017-05-29 17:26:05', '2017-05-29 17:26:05', '<p style=\"text-align: center;\">Somos un total de 1.000 personas dentro de este programa entre: participantes que se han formado con alguno de nuestros programas, docentes expertos y empresas colaboradoras.</p>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-29 17:26:05', '2017-05-29 17:26:05', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/29/35-revision-v1/', 0, 'revision', '', 0),
(43, 3, '2017-05-29 17:36:46', '2017-05-29 17:36:46', '<h2 style=\"text-align: center;\">Somos un total de 1.000 personas dentro de este programa entre: participantes que se han formado con alguno de nuestros programas, docentes expertos y empresas colaboradoras.</h2>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-29 17:36:46', '2017-05-29 17:36:46', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/29/35-revision-v1/', 0, 'revision', '', 0),
(44, 3, '2017-05-29 17:37:06', '2017-05-29 17:37:06', '<h3 style=\"text-align: center;\">Somos un total de 1.000 personas dentro de este programa entre: participantes que se han formado con alguno de nuestros programas, docentes expertos y empresas colaboradoras.</h3>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-29 17:37:06', '2017-05-29 17:37:06', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/29/35-revision-v1/', 0, 'revision', '', 0),
(45, 3, '2017-05-29 17:37:42', '2017-05-29 17:37:42', '<h3 style=\"text-align: center;\">1.000 participantes entre: personas formadas, docentes expertos y empresas colaboradoras.</h3>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-29 17:37:42', '2017-05-29 17:37:42', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/29/35-revision-v1/', 0, 'revision', '', 0),
(55, 3, '2017-05-30 09:35:57', '2017-05-30 09:35:57', '<h3 style=\"text-align: center;\">1.000 participantes entre: personas formadas, docentes expertos y empresas colaboradoras</h3>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-30 09:35:57', '2017-05-30 09:35:57', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/30/35-revision-v1/', 0, 'revision', '', 0),
(56, 3, '2017-05-30 09:46:43', '2017-05-30 09:46:43', '<h3 style=\"text-align: center;\">1.000 participantes: personas formadas + docentes expertos + empresas colaboradoras</h3>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-05-30 09:46:43', '2017-05-30 09:46:43', '', 35, 'http://jobyo.mainfor.edu.es/2017/05/30/35-revision-v1/', 0, 'revision', '', 0),
(57, 3, '2017-05-30 10:15:35', '2017-05-30 10:15:35', '<h2><strong>Acelerar la empleabilidad</strong> de los jóvenes titulados de España y Latinoamérica y cubrir necesidades prácticas.</h2>', 'Nuestra \"meta description\"', '', 'publish', 'closed', 'closed', '', 'sobre-jobyo', '', '', '2017-06-14 06:49:52', '2017-06-14 06:49:52', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=57', 0, 'page', '', 0),
(58, 3, '2017-05-30 10:15:35', '2017-05-30 10:15:35', '<p style=\"text-align: center;\"><strong>Jobyó</strong> nace para cubrir necesidades prácticas de los jóvenes de España y Latinoamérica. Una formación basada en la práctica, en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con docentes que son trabajadores en activo en cada uno de los sectores.</p>', '<meta description>', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-05-30 10:15:35', '2017-05-30 10:15:35', '', 57, 'http://jobyo.mainfor.edu.es/2017/05/30/57-revision-v1/', 0, 'revision', '', 0),
(59, 3, '2017-05-30 10:19:13', '2017-05-30 10:19:13', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Trabajo en web', '', 'publish', 'open', 'open', '', 'trabajo-en-web', '', '', '2017-06-01 11:00:27', '2017-06-01 11:00:27', '', 0, 'http://jobyo.mainfor.edu.es/?p=59', 0, 'post', '', 0),
(60, 3, '2017-05-30 10:19:13', '2017-05-30 10:19:13', '', 'Trabajo en web', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-05-30 10:19:13', '2017-05-30 10:19:13', '', 59, 'http://jobyo.mainfor.edu.es/2017/05/30/59-revision-v1/', 0, 'revision', '', 0),
(61, 3, '2017-05-30 10:25:58', '2017-05-30 10:25:58', '', '¿Aún no formas parte? Pulsa aquí', '', 'publish', 'closed', 'closed', '', 'aun-no-formas-parte-pulsa-aqui-2', '', '', '2017-06-16 10:12:47', '2017-06-16 10:12:47', '', 0, 'http://jobyo.mainfor.edu.es/?p=61', 3, 'nav_menu_item', '', 0),
(62, 3, '2017-05-30 10:28:56', '2017-05-30 10:28:56', '<p style=\"text-align: center;\"><strong>Jobyó</strong> nace para cubrir necesidades prácticas de los jóvenes de España y Latinoamérica. Una formación basada en la práctica, en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con docentes que son trabajadores en activo en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-05-30 10:28:56', '2017-05-30 10:28:56', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(63, 3, '2017-06-09 12:54:51', '2017-06-09 12:54:51', '<h2 style=\"text-align: left;\">Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>\n<h3 style=\"text-align: left;\">Doble objetivo:</h3>\n<ol>\n 	<li><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong></li>\n 	<li>Dar a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean.</strong></li>\n</ol>\n&nbsp;\n\n¿Quiéres sabes como lo haceos\n<p style=\"text-align: center;\"></p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2017-06-09 12:54:51', '2017-06-09 12:54:51', '', 57, 'http://jobyo.mainfor.edu.es/57-autosave-v1/', 0, 'revision', '', 0),
(64, 3, '2017-05-30 10:35:04', '2017-05-30 10:35:04', '<p style=\"text-align: center;\"><strong>Jobyó</strong> nace para <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica. Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-05-30 10:35:04', '2017-05-30 10:35:04', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(65, 3, '2017-05-30 10:37:18', '2017-05-30 10:37:18', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 'Trabajo en web', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-05-30 10:37:18', '2017-05-30 10:37:18', '', 59, 'http://jobyo.mainfor.edu.es/59-revision-v1/', 0, 'revision', '', 0),
(66, 3, '2017-05-30 10:37:34', '2017-05-30 10:37:34', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Trabajo en web', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-05-30 10:37:34', '2017-05-30 10:37:34', '', 59, 'http://jobyo.mainfor.edu.es/59-revision-v1/', 0, 'revision', '', 0),
(67, 3, '2017-05-30 10:47:41', '2017-05-30 10:47:41', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Formación y empleo en Biomasa', '', 'publish', 'open', 'open', '', 'formacion-y-empleo-en-biomasa', '', '', '2017-06-01 10:54:13', '2017-06-01 10:54:13', '', 0, 'http://jobyo.mainfor.edu.es/?p=67', 0, 'post', '', 0),
(68, 3, '2017-05-30 10:47:41', '2017-05-30 10:47:41', '', 'Formación y empleo en Biomasa', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-05-30 10:47:41', '2017-05-30 10:47:41', '', 67, 'http://jobyo.mainfor.edu.es/67-revision-v1/', 0, 'revision', '', 0),
(69, 3, '2017-06-01 10:54:13', '2017-06-01 10:54:13', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Formación y empleo en Biomasa', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-06-01 10:54:13', '2017-06-01 10:54:13', '', 67, 'http://jobyo.mainfor.edu.es/67-revision-v1/', 0, 'revision', '', 0),
(70, 3, '2017-06-01 11:00:25', '2017-06-01 11:00:25', '', 'web', '', 'inherit', 'open', 'closed', '', 'web', '', '', '2017-06-01 11:00:25', '2017-06-01 11:00:25', '', 59, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/05/web.png', 0, 'attachment', 'image/png', 0),
(71, 3, '2017-06-01 11:18:50', '2017-06-01 11:18:50', '<h2 style=\"text-align: center;\"><strong>Jobyó</strong> nace para <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica.</h2>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-01 11:18:50', '2017-06-01 11:18:50', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(72, 3, '2017-06-01 11:19:01', '2017-06-01 11:19:01', '<h3 style=\"text-align: center;\"><strong>Jobyó</strong> nace para <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica.</h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-01 11:19:01', '2017-06-01 11:19:01', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(73, 3, '2017-06-01 14:29:42', '2017-06-01 14:29:42', '<h3 style=\"text-align: center;\">Doble objetivo:</h3>\r\n<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los j<strong>óvenes universitarios con talento</strong> y dar  a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean</strong>.</p>\r\n<p style=\"text-align: center;\"></p>\r\n<p style=\"text-align: center;\">RRHH de tu empresa + Jóvenes universitarios  + Jobyó =<strong> (Jóvenes con trabajo de calidad en empresas líderes. talento joven en tu empresa)</strong></p>\r\n<p style=\"text-align: center;\"></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Jobyó</strong> nace para acelerar la empleabilidad de los jóvenes titulados <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica.</h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-01 14:29:42', '2017-06-01 14:29:42', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(74, 3, '2017-06-01 14:29:48', '2017-06-01 14:29:48', '<h3 style=\"text-align: center;\">Doble objetivo:</h3>\r\n<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento</strong> y dar  a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean</strong>.</p>\r\n<p style=\"text-align: center;\">RRHH de tu empresa + Jóvenes universitarios  + Jobyó =<strong> (Jóvenes con trabajo de calidad en empresas líderes. talento joven en tu empresa)</strong></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Jobyó</strong> nace para acelerar la empleabilidad de los jóvenes titulados <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica.</h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-01 14:29:48', '2017-06-01 14:29:48', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(75, 3, '2017-06-01 16:19:04', '2017-06-01 16:19:04', '<h3 style=\"text-align: center;\"> Doble objetivo:</h3>\r\n<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento</strong> y dar  a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean</strong>.</p>\r\n<p style=\"text-align: center;\">RRHH de tu empresa + Jóvenes universitarios  + Jobyó =<strong> (Jóvenes con trabajo de calidad en empresas líderes. talento joven en tu empresa)</strong></p>\r\n\r\n<h3 style=\"text-align: center;\"><strong>Jobyó</strong> nace para acelerar la empleabilidad de los jóvenes titulados <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica.</h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-01 16:19:04', '2017-06-01 16:19:04', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(77, 3, '2017-06-07 09:58:49', '2017-06-07 09:58:49', '<h2><strong>Ponle cara</strong> a nuestras empresas, trabajaras con ell@s.</h2>', 'Empresas \'Jobyó\'', '', 'publish', 'closed', 'closed', '', 'empresas-jobyo', '', '', '2017-06-14 10:42:34', '2017-06-14 10:42:34', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=77', 0, 'page', '', 0),
(78, 3, '2017-06-07 09:58:49', '2017-06-07 09:58:49', '<p style=\"text-align: center;\">Aplicación de los conocimientos \'in situ\', resolviendo problemas reales.</p>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-07 09:58:49', '2017-06-07 09:58:49', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(79, 3, '2017-06-07 10:01:40', '2017-06-07 10:01:40', '', 'Conoce a las empresas', '', 'publish', 'closed', 'closed', '', 'conoce-a-las-empresas-2', '', '', '2017-06-16 10:12:47', '2017-06-16 10:12:47', '', 0, 'http://jobyo.mainfor.edu.es/?p=79', 2, 'nav_menu_item', '', 0),
(80, 3, '2017-06-07 10:15:39', '2017-06-07 10:15:39', '<h2>Pensado por las <strong>empresas,</strong> para los <strong>jóvenes.</strong></h2>', 'Nuestros programas', '', 'publish', 'closed', 'closed', '', 'nuestros-programas', '', '', '2017-06-15 16:20:55', '2017-06-15 16:20:55', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=80', 0, 'page', '', 0),
(81, 3, '2017-06-07 10:15:39', '2017-06-07 10:15:39', '<p style=\"text-align: center;\">Queremos que nuestros alumnos destaquen en tu empresa gracias a una formación basada en soluciones reales, necesidades evidentes que hay actualmente en las empresas…</p>', 'Nuestros programas', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-06-07 10:15:39', '2017-06-07 10:15:39', '', 80, 'http://jobyo.mainfor.edu.es/80-revision-v1/', 0, 'revision', '', 0),
(82, 3, '2017-06-08 08:57:58', '2017-06-08 08:57:58', '', 'Jobyó', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-06-08 08:57:58', '2017-06-08 08:57:58', '', 24, 'http://jobyo.mainfor.edu.es/24-revision-v1/', 0, 'revision', '', 0),
(88, 3, '2017-06-08 09:09:04', '2017-06-08 09:09:04', '', 'logitipo_jobyo', '', 'inherit', 'open', 'closed', '', 'logitipo_jobyo', '', '', '2017-06-08 09:09:04', '2017-06-08 09:09:04', '', 0, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/05/logitipo_jobyo.svg', 0, 'attachment', 'image/svg+xml', 0),
(89, 3, '2017-06-08 09:09:56', '2017-06-08 09:09:56', '', 'logotipo_color', '', 'inherit', 'open', 'closed', '', 'logotipo_color', '', '', '2017-06-08 09:09:56', '2017-06-08 09:09:56', '', 24, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/05/logotipo_color.svg', 0, 'attachment', 'image/svg+xml', 0),
(91, 3, '2017-06-09 12:12:47', '2017-06-09 12:12:47', '<h2 style=\"text-align: left;\"><strong>Jobyó</strong> nace para acelerar la empleabilidad de los jóvenes titulados <strong>cubrir necesidades</strong> prácticas de los jóvenes de España y Latinoamérica.</h2>\r\n<h3 style=\"text-align: center;\"></h3>\r\n<h3 style=\"text-align: center;\">Doble objetivo:</h3>\r\n<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento</strong> y dar  a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean</strong>.</p>\r\n<p style=\"text-align: center;\">RRHH de tu empresa + Jóvenes universitarios  + Jobyó =<strong> (Jóvenes con trabajo de calidad en empresas líderes. talento joven en tu empresa)</strong></p>\r\n\r\n<h3 style=\"text-align: center;\"></h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-09 12:12:47', '2017-06-09 12:12:47', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(92, 3, '2017-06-09 12:24:51', '2017-06-09 12:24:51', '<h2 style=\"text-align: left;\"><strong>A</strong>celerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>\r\n<h3 style=\"text-align: center;\"></h3>\r\n<h3 style=\"text-align: center;\">Doble objetivo:</h3>\r\n<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento</strong> y dar  a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean</strong>.</p>\r\n<p style=\"text-align: center;\">RRHH de tu empresa + Jóvenes universitarios  + Jobyó =<strong> (Jóvenes con trabajo de calidad en empresas líderes. talento joven en tu empresa)</strong></p>\r\n\r\n<h3 style=\"text-align: center;\"></h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-09 12:24:51', '2017-06-09 12:24:51', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(93, 3, '2017-06-09 12:27:25', '2017-06-09 12:27:25', '<h2 style=\"text-align: left;\"><strong>A</strong>celerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>\r\n<h3 style=\"text-align: left;\">Doble objetivo:</h3>\r\n<ol>\r\n 	<li><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong></li>\r\n 	<li>Dar a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean</strong>.</li>\r\n</ol>\r\n<p style=\"text-align: center;\">RRHH de tu empresa + Jóvenes universitarios  + Jobyó =<strong> (Jóvenes con trabajo de calidad en empresas líderes. talento joven en tu empresa)</strong></p>\r\n\r\n<h3 style=\"text-align: center;\"></h3>\r\n<p style=\"text-align: center;\">Una<strong> formación</strong> basada en la <strong>práctica,</strong> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán una vez finalizado el curso (y durante el periodo de prácticas) y guiada con <strong>docentes</strong> que son <strong>trabajadores en activo</strong> en cada uno de los sectores.</p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-09 12:27:25', '2017-06-09 12:27:25', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(94, 3, '2017-06-09 12:39:32', '2017-06-09 12:39:32', '<h2 style=\"text-align: left;\">Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>\r\n<h3 style=\"text-align: left;\">Doble objetivo:</h3>\r\n<ol>\r\n 	<li><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong></li>\r\n 	<li>Dar a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean.</strong></li>\r\n</ol>\r\n<p style=\"text-align: center;\"></p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-09 12:39:32', '2017-06-09 12:39:32', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(95, 3, '2017-06-09 12:55:06', '2017-06-09 12:55:06', '<h2 style=\"text-align: left;\">Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>\r\n<h3 style=\"text-align: left;\">Doble objetivo:</h3>\r\n<ol>\r\n 	<li><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong></li>\r\n 	<li>Dar a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean.</strong></li>\r\n</ol>\r\n&nbsp;\r\n<p style=\"text-align: right;\"><a href=\"#\">¿Quieres sabes cómo lo hacemos?</a></p>\r\n<p style=\"text-align: center;\"></p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-09 12:55:06', '2017-06-09 12:55:06', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(96, 3, '2017-06-12 10:00:26', '2017-06-12 10:00:26', '<h2 class=\"p1\">Una <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas.</h2>', '¿Cómo trabajamos?', '', 'publish', 'closed', 'closed', '', 'como-trabaja-jobyo', '', '', '2017-06-14 06:49:37', '2017-06-14 06:49:37', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=96', 0, 'page', '', 0),
(97, 3, '2017-06-12 10:00:26', '2017-06-12 10:00:26', '', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-12 10:00:26', '2017-06-12 10:00:26', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(98, 3, '2017-06-12 10:01:29', '2017-06-12 10:01:29', '<h2 class=\"p1\">Nuestra <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas y guiada con <b>docentes</b> que son <b>trabajadores en activo</b> en cada uno de los sectores.</h2>', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2017-06-12 10:01:29', '2017-06-12 10:01:29', '', 96, 'http://jobyo.mainfor.edu.es/96-autosave-v1/', 0, 'revision', '', 0),
(99, 3, '2017-06-12 10:02:42', '2017-06-12 10:02:42', '<h2 class=\"p1\">Nuestra <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas y guiada con <b>docentes</b> que son <b>trabajadores en activo</b> en cada uno de los sectores.</h2>', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-12 10:02:42', '2017-06-12 10:02:42', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(100, 3, '2017-06-12 10:02:51', '2017-06-12 10:02:51', '<h2 class=\"p1\">Una <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas y guiada con <b>docentes</b> que son <b>trabajadores en activo</b> en cada uno de los sectores.</h2>', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-12 10:02:51', '2017-06-12 10:02:51', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(101, 3, '2017-06-12 10:03:10', '2017-06-12 10:03:10', '<h2 class=\"p1\">Una <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas.</h2>', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-12 10:03:10', '2017-06-12 10:03:10', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(104, 3, '2017-06-12 10:29:37', '2017-06-12 10:29:37', '<h2 class=\"p1\">Una <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas.</h2>\r\n<h3 class=\"p1\">RRHH de tu empresa + Jóvenes universitarios</h3>', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-12 10:29:37', '2017-06-12 10:29:37', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(107, 3, '2017-06-12 16:25:34', '2017-06-12 16:25:34', '<h1 style=\"text-align: center;\">trabajo (job) + jóvenes (yó)</h1>\r\n<h2 style=\"text-align: center;\">Actualmente somos: <strong>1.000 participantes </strong></h2>\r\n<h3 style=\"text-align: center;\">personas formadas + docentes expertos + empresas colaboradoras</h3>', '¿Quiénes formamos parte?', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-06-12 16:25:34', '2017-06-12 16:25:34', '', 35, 'http://jobyo.mainfor.edu.es/35-revision-v1/', 0, 'revision', '', 0),
(108, 3, '2017-06-12 17:42:47', '2017-06-12 17:42:47', '<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong></p>', 'Objetivo 01', '', 'publish', 'open', 'open', '', 'objetivo-01', '', '', '2017-06-13 12:34:22', '2017-06-13 12:34:22', '', 0, 'http://jobyo.mainfor.edu.es/?p=108', 0, 'post', '', 0),
(109, 3, '2017-06-12 17:42:47', '2017-06-12 17:42:47', '<strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong>', 'Objetivo 01', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2017-06-12 17:42:47', '2017-06-12 17:42:47', '', 108, 'http://jobyo.mainfor.edu.es/108-revision-v1/', 0, 'revision', '', 0),
(110, 3, '2017-06-12 17:43:02', '2017-06-12 17:43:02', '<p style=\"text-align: center;\">Dar a los jóvenes la <strong>oportunidad que se merecen para acceder al mercado laboral que desean.</strong></p>', 'Objetivo 02', '', 'publish', 'open', 'open', '', 'objetivo-02', '', '', '2017-06-15 12:00:36', '2017-06-15 12:00:36', '', 0, 'http://jobyo.mainfor.edu.es/?p=110', 0, 'post', '', 0),
(111, 3, '2017-06-12 17:43:02', '2017-06-12 17:43:02', 'Dar a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean.</strong>', 'Objetivo 02', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-06-12 17:43:02', '2017-06-12 17:43:02', '', 110, 'http://jobyo.mainfor.edu.es/110-revision-v1/', 0, 'revision', '', 0),
(112, 3, '2017-06-13 12:01:34', '2017-06-13 12:01:34', '<h2 style=\"text-align: left;\">Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>\r\n<h3 style=\"text-align: left;\"></h3>\r\n<p style=\"text-align: right;\"><a href=\"#\">¿Quieres sabes cómo lo hacemos?</a></p>\r\n<p style=\"text-align: center;\"></p>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-13 12:01:34', '2017-06-13 12:01:34', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(113, 3, '2017-06-13 12:13:47', '2017-06-13 12:13:47', '<h3 style=\"text-align: center;\">Funcionamos así</h3>\r\n<p style=\"text-align: center;\"><a href=\"http://jobyo.mainfor.edu.es/nuestros-proyectos/\">conócenos</a></p>', '', '', 'publish', 'open', 'open', '', '113-2', '', '', '2017-06-14 11:20:45', '2017-06-14 11:20:45', '', 0, 'http://jobyo.mainfor.edu.es/?p=113', 0, 'post', '', 0),
(114, 3, '2017-06-13 12:13:47', '2017-06-13 12:13:47', '<h3 style=\"text-align: center;\">Funcionamos así</h3>\r\n<p style=\"text-align: center;\"><a href=\"#\">conócenos</a></p>', '', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2017-06-13 12:13:47', '2017-06-13 12:13:47', '', 113, 'http://jobyo.mainfor.edu.es/113-revision-v1/', 0, 'revision', '', 0),
(115, 3, '2017-06-13 12:14:07', '2017-06-13 12:14:07', '<h2 style=\"text-align: left;\">Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-13 12:14:07', '2017-06-13 12:14:07', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(116, 3, '2017-06-13 12:25:10', '2017-06-13 12:25:10', '<h2 style=\"text-align: right;\">Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y <strong>cubrir necesidades</strong> prácticas.</h2>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-13 12:25:10', '2017-06-13 12:25:10', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(117, 3, '2017-06-13 12:25:35', '2017-06-13 12:25:35', '<h2 class=\"p1\">Una <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas.</h2>', '¿Cómo trabaja Jobyó?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-13 12:25:35', '2017-06-13 12:25:35', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(118, 3, '2017-06-13 12:27:49', '2017-06-13 12:27:49', '<h2>Acelerar la empleabilidad de los jóvenes titulados de España y Latinoamérica y cubrir necesidades prácticas.</h2>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-13 12:27:49', '2017-06-13 12:27:49', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(119, 3, '2017-06-13 12:34:22', '2017-06-13 12:34:22', '<p style=\"text-align: center;\"><strong>Incorporar a empresas líderes</strong> de España y Latinoamérica a los <strong>jóvenes universitarios con talento.</strong></p>', 'Objetivo 01', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2017-06-13 12:34:22', '2017-06-13 12:34:22', '', 108, 'http://jobyo.mainfor.edu.es/108-revision-v1/', 0, 'revision', '', 0),
(120, 3, '2017-06-13 12:34:25', '2017-06-13 12:34:25', '<p style=\"text-align: center;\">Dar a los jóvenes la <strong>oportunidad de acceder al mercado laboral que desean.</strong></p>', 'Objetivo 02', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-06-13 12:34:25', '2017-06-13 12:34:25', '', 110, 'http://jobyo.mainfor.edu.es/110-revision-v1/', 0, 'revision', '', 0),
(121, 3, '2017-06-14 06:49:37', '2017-06-14 06:49:37', '<h2 class=\"p1\">Una <b>formación</b> basada en la <b>práctica,</b> en casos reales que ayudan a los participantes a tener una visión real sobre lo que desarrollarán durante el periodo de prácticas.</h2>', '¿Cómo trabajamos?', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-06-14 06:49:37', '2017-06-14 06:49:37', '', 96, 'http://jobyo.mainfor.edu.es/96-revision-v1/', 0, 'revision', '', 0),
(122, 3, '2017-06-14 06:49:52', '2017-06-14 06:49:52', '<h2><strong>Acelerar la empleabilidad</strong> de los jóvenes titulados de España y Latinoamérica y cubrir necesidades prácticas.</h2>', 'Nuestra \"meta description\"', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-06-14 06:49:52', '2017-06-14 06:49:52', '', 57, 'http://jobyo.mainfor.edu.es/57-revision-v1/', 0, 'revision', '', 0),
(124, 3, '2017-06-14 09:28:28', '2017-06-14 09:28:28', 'Maestro de Educación Infantil y pedagogo. Trabajo e investigo en educación y formación, que no son lo mismo. Me interesan las tendencias en innovación educativa y el elearning. Soy pleísta, de PLE (entorno personal de aprendizaje).\r\n\r\nTodo tiene que estar en el diseño instruccional. Mis herramientas de autor: eXeLearning, Storyline y Camtasia. Mi plataforma: Moodle. Mis estándares: HTML5, CSS3, SCORM y xAPI/Tin Can Api. Mi filosofía: usabilidad, accesibilidad y experiencia de usuario. Mis apuestas: MOOC, mobile learning (responsive learning) y social learning.', 'Miguel Ángel Suvires García', '', 'publish', 'open', 'open', '', 'miguel-angel-suvires-garcia', '', '', '2017-06-16 09:21:02', '2017-06-16 09:21:02', '', 0, 'http://jobyo.mainfor.edu.es/?p=124', 0, 'post', '', 0),
(125, 3, '2017-06-14 09:28:03', '2017-06-14 09:28:03', '', '2e3663a', '', 'inherit', 'open', 'closed', '', '2e3663a', '', '', '2017-06-14 09:28:03', '2017-06-14 09:28:03', '', 124, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/2e3663a.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 3, '2017-06-14 09:28:28', '2017-06-14 09:28:28', 'Maestro de Educación Infantil y pedagogo. Trabajo e investigo en educación y formación, que no son lo mismo. Me interesan las tendencias en innovación educativa y el elearning. Soy pleísta, de PLE (entorno personal de aprendizaje).\r\n\r\nTodo tiene que estar en el diseño instruccional. Mis herramientas de autor: eXeLearning, Storyline y Camtasia. Mi plataforma: Moodle. Mis estándares: HTML5, CSS3, SCORM y xAPI/Tin Can Api. Mi filosofía: usabilidad, accesibilidad y experiencia de usuario. Mis apuestas: MOOC, mobile learning (responsive learning) y social learning.', 'Miguel Ángel Suvires García', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2017-06-14 09:28:28', '2017-06-14 09:28:28', '', 124, 'http://jobyo.mainfor.edu.es/124-revision-v1/', 0, 'revision', '', 0),
(127, 3, '2017-06-14 09:58:49', '2017-06-14 09:58:49', '<p style=\"text-align: center;\">Ponle cara a nuestras empresas, trabajaras con ellos.</p>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-14 09:58:49', '2017-06-14 09:58:49', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(128, 3, '2017-06-14 10:00:19', '2017-06-14 10:00:19', '<ul>\r\n 	<li>Aplicación de los conocimientos<strong> \'in situ\',</strong> resolviendo problemas reales.</li>\r\n 	<li>Serás<strong> tu propio proyecto.</strong></li>\r\n 	<li>Estarás <strong>a la altura.</strong></li>\r\n</ul>', 'En las empresas...', '', 'publish', 'open', 'open', '', 'definicion', '', '', '2017-06-14 10:19:11', '2017-06-14 10:19:11', '', 0, 'http://jobyo.mainfor.edu.es/?p=128', 0, 'post', '', 0),
(129, 3, '2017-06-14 10:00:19', '2017-06-14 10:00:19', '<ul>\r\n 	<li>Aplicación de los conocimientos \'in situ\', resolviendo problemas reales.</li>\r\n 	<li>Serás tu propio proyecto.</li>\r\n 	<li></li>\r\n</ul>', 'Definición', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2017-06-14 10:00:19', '2017-06-14 10:00:19', '', 128, 'http://jobyo.mainfor.edu.es/128-revision-v1/', 0, 'revision', '', 0),
(130, 3, '2017-06-14 10:00:37', '2017-06-14 10:00:37', '<ul>\r\n 	<li>Aplicación de los conocimientos \'in situ\', resolviendo problemas reales.</li>\r\n 	<li>Serás tu propio proyecto.</li>\r\n</ul>', 'Definición', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2017-06-14 10:00:37', '2017-06-14 10:00:37', '', 128, 'http://jobyo.mainfor.edu.es/128-revision-v1/', 0, 'revision', '', 0),
(131, 3, '2017-06-14 10:05:45', '2017-06-14 10:05:45', '<ul>\r\n 	<li>Aplicación de los conocimientos \'in situ\', resolviendo problemas reales.</li>\r\n 	<li>Serás tu propio proyecto.</li>\r\n</ul>', 'En las empresas...', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2017-06-14 10:05:45', '2017-06-14 10:05:45', '', 128, 'http://jobyo.mainfor.edu.es/128-revision-v1/', 0, 'revision', '', 0),
(132, 3, '2017-06-14 10:12:23', '2017-06-14 10:12:23', '<h2 style=\"text-align: center;\">Ponle cara a nuestras empresas, trabajaras con ellos.</h2>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-14 10:12:23', '2017-06-14 10:12:23', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(133, 3, '2017-06-14 10:12:38', '2017-06-14 10:12:38', '<h2 style=\"text-align: center;\"><strong>Ponle cara</strong> a nuestras empresas, trabajaras con ellos.</h2>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-14 10:12:38', '2017-06-14 10:12:38', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(134, 3, '2017-06-14 10:13:34', '2017-06-14 10:13:34', '<ul>\r\n 	<li>Aplicación de los conocimientos<strong> \'in situ\',</strong> resolviendo problemas reales.</li>\r\n 	<li>Serás<strong> tu propio proyecto.</strong></li>\r\n</ul>', 'En las empresas...', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2017-06-14 10:13:34', '2017-06-14 10:13:34', '', 128, 'http://jobyo.mainfor.edu.es/128-revision-v1/', 0, 'revision', '', 0),
(135, 3, '2017-06-14 10:19:11', '2017-06-14 10:19:11', '<ul>\r\n 	<li>Aplicación de los conocimientos<strong> \'in situ\',</strong> resolviendo problemas reales.</li>\r\n 	<li>Serás<strong> tu propio proyecto.</strong></li>\r\n 	<li>Estarás <strong>a la altura.</strong></li>\r\n</ul>', 'En las empresas...', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2017-06-14 10:19:11', '2017-06-14 10:19:11', '', 128, 'http://jobyo.mainfor.edu.es/128-revision-v1/', 0, 'revision', '', 0),
(136, 3, '2017-06-14 10:22:46', '2017-06-14 10:22:46', '<h2 style=\"text-align: left;\"><strong>Ponle cara</strong> a nuestras empresas, trabajaras con ellos.</h2>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-14 10:22:46', '2017-06-14 10:22:46', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(137, 3, '2017-06-14 10:23:04', '2017-06-14 10:23:04', '<h2><strong>Ponle cara</strong> a nuestras empresas, trabajaras con ellos.</h2>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-14 10:23:04', '2017-06-14 10:23:04', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(138, 3, '2017-06-14 10:42:34', '2017-06-14 10:42:34', '<h2><strong>Ponle cara</strong> a nuestras empresas, trabajaras con ell@s.</h2>', 'Empresas \'Jobyó\'', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-06-14 10:42:34', '2017-06-14 10:42:34', '', 77, 'http://jobyo.mainfor.edu.es/77-revision-v1/', 0, 'revision', '', 0),
(139, 3, '2017-06-14 11:04:55', '2017-06-14 11:04:55', '', '¿Quieres que esté aquí tu empresa?', '', 'publish', 'open', 'open', '', 'quieres-que-este-aqui-tu-empresa', '', '', '2017-06-14 11:11:32', '2017-06-14 11:11:32', '', 0, 'http://jobyo.mainfor.edu.es/?p=139', 0, 'post', '', 0),
(140, 3, '2017-06-14 11:04:55', '2017-06-14 11:04:55', '<a href=\"#\">Cuéntanos qué hacéis</a>', '¿Quieres que esté aquí tu empresa?', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2017-06-14 11:04:55', '2017-06-14 11:04:55', '', 139, 'http://jobyo.mainfor.edu.es/139-revision-v1/', 0, 'revision', '', 0),
(141, 3, '2017-06-14 11:11:25', '2017-06-14 11:11:25', '', '¿Quieres que esté aquí tu empresa?', '', 'inherit', 'closed', 'closed', '', '139-autosave-v1', '', '', '2017-06-14 11:11:25', '2017-06-14 11:11:25', '', 139, 'http://jobyo.mainfor.edu.es/139-autosave-v1/', 0, 'revision', '', 0),
(142, 3, '2017-06-14 11:11:28', '2017-06-14 11:11:28', '', '007-placeholder', '', 'inherit', 'open', 'closed', '', '007-placeholder', '', '', '2017-06-14 11:11:28', '2017-06-14 11:11:28', '', 139, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/007-placeholder.svg', 0, 'attachment', 'image/svg+xml', 0),
(143, 3, '2017-06-14 11:11:32', '2017-06-14 11:11:32', '', '¿Quieres que esté aquí tu empresa?', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2017-06-14 11:11:32', '2017-06-14 11:11:32', '', 139, 'http://jobyo.mainfor.edu.es/139-revision-v1/', 0, 'revision', '', 0),
(144, 3, '2017-06-14 11:19:39', '0000-00-00 00:00:00', '', 'Nuestros proyectos', '', 'draft', 'open', 'open', '', '', '', '', '2017-06-14 11:19:39', '2017-06-14 11:19:39', '', 0, 'http://jobyo.mainfor.edu.es/?p=144', 0, 'post', '', 0),
(145, 3, '2017-06-14 11:20:22', '2017-06-14 11:20:22', '<h2>Funcionan gracias a la <strong>siguiente fórmula:</strong></h2>', 'Nuestros proyectos', '', 'publish', 'closed', 'closed', '', 'nuestros-proyectos', '', '', '2017-06-15 12:23:15', '2017-06-15 12:23:15', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=145', 0, 'page', '', 0),
(146, 3, '2017-06-14 11:20:22', '2017-06-14 11:20:22', 'Proyectos pensados para que nuestros participantes destaquen en tu empresa., gracias a una formación basada en soluciones reales, necesidades evidentes...', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-14 11:20:22', '2017-06-14 11:20:22', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wpjo_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(147, 3, '2017-06-14 11:20:45', '2017-06-14 11:20:45', '<h3 style=\"text-align: center;\">Funcionamos así</h3>\r\n<p style=\"text-align: center;\"><a href=\"http://jobyo.mainfor.edu.es/nuestros-proyectos/\">conócenos</a></p>', '', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2017-06-14 11:20:45', '2017-06-14 11:20:45', '', 113, 'http://jobyo.mainfor.edu.es/113-revision-v1/', 0, 'revision', '', 0),
(148, 3, '2017-06-14 11:23:23', '2017-06-14 11:23:23', '<h2 style=\"text-align: center;\"><strong>Proyectos para destacar en las empresas,</strong> gracias a una formación basada en soluciones reales, necesidades evidentes que hay actualmente en las empresas…</h2>', 'Nuestros programas', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-06-14 11:23:23', '2017-06-14 11:23:23', '', 80, 'http://jobyo.mainfor.edu.es/80-revision-v1/', 0, 'revision', '', 0),
(149, 3, '2017-06-14 11:23:51', '2017-06-14 11:23:51', '<h2 style=\"text-align: center;\"><strong>Proyectos para destacar en las empresas,</strong> gracias a una formación basada en soluciones reales, necesidades evidentes que hay actualmente en las empresas…</h2>', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-14 11:23:51', '2017-06-14 11:23:51', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0),
(150, 3, '2017-06-14 11:24:02', '2017-06-14 11:24:02', '<h2><strong>Proyectos para destacar en las empresas,</strong> gracias a una formación basada en soluciones reales, necesidades evidentes que hay actualmente en las empresas…</h2>', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-14 11:24:02', '2017-06-14 11:24:02', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0),
(151, 3, '2017-06-14 11:24:30', '2017-06-14 11:24:30', '<h2><strong>Proyectos para destacar en las empresas.</strong></h2>\r\n<h3>Gracias a una formación basada en soluciones reales, necesidades evidentes que hay actualmente en las empresas…</h3>', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-14 11:24:30', '2017-06-14 11:24:30', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0),
(152, 3, '2017-06-14 11:26:14', '2017-06-14 11:26:14', '<h2><strong>Proyectos para destacar en las empresas.</strong></h2>\r\n<h3>Gracias a la siguiente fórmula:</h3>', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-14 11:26:14', '2017-06-14 11:26:14', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0),
(153, 3, '2017-06-14 11:29:09', '2017-06-14 11:29:09', '<p style=\"text-align: center;\">de las empresas</p>', 'RRHH', '', 'publish', 'open', 'open', '', 'rrhh', '', '', '2017-06-14 11:49:59', '2017-06-14 11:49:59', '', 0, 'http://jobyo.mainfor.edu.es/?p=153', 0, 'post', '', 0),
(154, 3, '2017-06-14 11:29:09', '2017-06-14 11:29:09', 'de las empresas', 'RRHH', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-06-14 11:29:09', '2017-06-14 11:29:09', '', 153, 'http://jobyo.mainfor.edu.es/153-revision-v1/', 0, 'revision', '', 0),
(155, 3, '2017-06-14 11:30:00', '2017-06-14 11:30:00', '<p style=\"text-align: center;\">con espíritu de superación</p>', 'Jóvenes universitarios', '', 'publish', 'open', 'open', '', 'jovenes-universitarios', '', '', '2017-06-14 11:50:08', '2017-06-14 11:50:08', '', 0, 'http://jobyo.mainfor.edu.es/?p=155', 0, 'post', '', 0),
(156, 3, '2017-06-14 11:30:00', '2017-06-14 11:30:00', 'con espíritu de superación', 'Jóvenes universitarios', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-06-14 11:30:00', '2017-06-14 11:30:00', '', 155, 'http://jobyo.mainfor.edu.es/155-revision-v1/', 0, 'revision', '', 0),
(157, 3, '2017-06-14 11:30:51', '2017-06-14 11:30:51', '<p style=\"text-align: center;\"><a href=\"http://jobyo.mainfor.edu.es/nuestros-programas/\">Ve nuestros proyectos</a></p>', 'La solución: Jobyó', '', 'publish', 'open', 'open', '', 'la-solucion-jobyo', '', '', '2017-06-15 12:18:50', '2017-06-15 12:18:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=157', 0, 'post', '', 0),
(158, 3, '2017-06-14 11:30:51', '2017-06-14 11:30:51', '<p style=\"text-align: center;\"><a href=\"#\">Ve nuestros proyectos</a></p>', 'La solución: Jobyó', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-06-14 11:30:51', '2017-06-14 11:30:51', '', 157, 'http://jobyo.mainfor.edu.es/157-revision-v1/', 0, 'revision', '', 0),
(159, 3, '2017-06-14 11:47:04', '2017-06-14 11:47:04', '', 'jovenes', '', 'inherit', 'open', 'closed', '', 'jovenes', '', '', '2017-06-14 11:47:04', '2017-06-14 11:47:04', '', 155, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/jovenes.svg', 0, 'attachment', 'image/svg+xml', 0),
(160, 3, '2017-06-14 11:49:41', '2017-06-14 11:49:41', '', 'recursos', '', 'inherit', 'open', 'closed', '', 'recursos', '', '', '2017-06-14 11:49:41', '2017-06-14 11:49:41', '', 153, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/recursos.svg', 0, 'attachment', 'image/svg+xml', 0),
(161, 3, '2017-06-14 11:49:59', '2017-06-14 11:49:59', '<p style=\"text-align: center;\">de las empresas</p>', 'RRHH', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2017-06-14 11:49:59', '2017-06-14 11:49:59', '', 153, 'http://jobyo.mainfor.edu.es/153-revision-v1/', 0, 'revision', '', 0),
(162, 3, '2017-06-14 11:50:08', '2017-06-14 11:50:08', '<p style=\"text-align: center;\">con espíritu de superación</p>', 'Jóvenes universitarios', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2017-06-14 11:50:08', '2017-06-14 11:50:08', '', 155, 'http://jobyo.mainfor.edu.es/155-revision-v1/', 0, 'revision', '', 0),
(164, 3, '2017-06-14 12:34:29', '2017-06-14 12:34:29', '<h2><strong>Proyectos para destacar.</strong></h2>\r\n<h3>Gracias a la siguiente fórmula:</h3>', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-14 12:34:29', '2017-06-14 12:34:29', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0),
(165, 3, '2017-06-14 13:06:19', '2017-06-14 13:06:19', '', 'Nuestra \"meta description\"', '', 'publish', 'closed', 'closed', '', 'nuestra-meta-description', '', '', '2017-06-16 07:29:50', '2017-06-16 07:29:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=165', 2, 'nav_menu_item', '', 0),
(166, 3, '2017-06-14 13:06:51', '2017-06-14 13:06:51', '', 'Empresas \'Jobyó\'', '', 'publish', 'closed', 'closed', '', 'empresas-jobyo', '', '', '2017-06-16 07:29:50', '2017-06-16 07:29:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=166', 3, 'nav_menu_item', '', 0),
(167, 3, '2017-06-14 13:06:52', '2017-06-14 13:06:52', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2017-06-16 07:29:50', '2017-06-16 07:29:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=167', 6, 'nav_menu_item', '', 0),
(168, 3, '2017-06-14 13:07:12', '2017-06-14 13:07:12', '', 'Participantes', '', 'publish', 'closed', 'closed', '', 'participantes', '', '', '2017-06-16 07:29:50', '2017-06-16 07:29:50', '', 0, 'http://jobyo.mainfor.edu.es/?p=168', 4, 'nav_menu_item', '', 0),
(169, 3, '2017-06-15 12:00:36', '2017-06-15 12:00:36', '<p style=\"text-align: center;\">Dar a los jóvenes la <strong>oportunidad que se merecen para acceder al mercado laboral que desean.</strong></p>', 'Objetivo 02', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-06-15 12:00:36', '2017-06-15 12:00:36', '', 110, 'http://jobyo.mainfor.edu.es/110-revision-v1/', 0, 'revision', '', 0),
(170, 3, '2017-06-15 12:18:50', '2017-06-15 12:18:50', '<p style=\"text-align: center;\"><a href=\"http://jobyo.mainfor.edu.es/nuestros-programas/\">Ve nuestros proyectos</a></p>', 'La solución: Jobyó', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2017-06-15 12:18:50', '2017-06-15 12:18:50', '', 157, 'http://jobyo.mainfor.edu.es/157-revision-v1/', 0, 'revision', '', 0),
(171, 3, '2017-06-15 12:23:15', '2017-06-15 12:23:15', '<h2>Funcionan gracias a la <strong>siguiente fórmula:</strong></h2>', 'Nuestros proyectos', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2017-06-15 12:23:15', '2017-06-15 12:23:15', '', 145, 'http://jobyo.mainfor.edu.es/145-revision-v1/', 0, 'revision', '', 0),
(172, 3, '2017-06-15 12:30:57', '2017-06-15 12:30:57', '<ul>\r\n 	<li><strong>Doble titulación:</strong> Grupo Mainjobs + URJC.</li>\r\n 	<li><strong>3 meses de prácticas</strong> en empresa.</li>\r\n 	<li><strong>Orientación académica</strong> desde el primer día.</li>\r\n 	<li><strong>Docentes en activo</strong> en el sector.</li>\r\n</ul>\r\n<p style=\"text-align: center;\"><a href=\"#\">¿Necesitas más info? Pulsa aquí</a></p>', 'La masa madre de nuestros programas', '', 'publish', 'open', 'open', '', 'la-masa-madre-de-nuestros-programas', '', '', '2017-06-16 10:03:39', '2017-06-16 10:03:39', '', 0, 'http://jobyo.mainfor.edu.es/?p=172', 0, 'post', '', 0),
(173, 3, '2017-06-15 12:30:57', '2017-06-15 12:30:57', '<ul>\r\n 	<li><strong>Doble titulación:</strong> Grupo Mainjobs + URJC.</li>\r\n 	<li><strong>3 meses de prácticas</strong> en empresa.</li>\r\n 	<li><strong>Orientación académica</strong> desde el primer día.</li>\r\n 	<li><strong>Docentes en activo</strong> en el sector.</li>\r\n</ul>', 'La masa madre de nuestros programas', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-06-15 12:30:57', '2017-06-15 12:30:57', '', 172, 'http://jobyo.mainfor.edu.es/172-revision-v1/', 0, 'revision', '', 0),
(174, 3, '2017-06-15 16:20:55', '2017-06-15 16:20:55', '<h2>Pensado por las <strong>empresas,</strong> para los <strong>jóvenes.</strong></h2>', 'Nuestros programas', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-06-15 16:20:55', '2017-06-15 16:20:55', '', 80, 'http://jobyo.mainfor.edu.es/80-revision-v1/', 0, 'revision', '', 0),
(175, 3, '2017-06-15 16:29:27', '2017-06-15 16:29:27', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>\r\n<a href=\"#\">Ayúdame</a>', '¿Has visto nuestros programas y <br/> ninguno se adapta a tus necesidades?', '', 'publish', 'closed', 'closed', '', 'has-visto-todos-nuestros-programas-y-no-encuentras-ninguno-que-se-adapte-a-tus-necesidades', '', '', '2017-06-16 12:18:38', '2017-06-16 12:18:38', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=175', 0, 'page', '', 0),
(176, 3, '2017-06-15 16:29:27', '2017-06-15 16:29:27', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>', '¿Has visto todos nuestros programas y no encuentras ninguno que se adapte a tus necesidades?', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-06-15 16:29:27', '2017-06-15 16:29:27', '', 175, 'http://jobyo.mainfor.edu.es/175-revision-v1/', 0, 'revision', '', 0),
(177, 3, '2017-06-15 17:34:24', '2017-06-15 17:34:24', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>\r\n#', '¿Has visto todos nuestros programas y no encuentras ninguno que se adapte a tus necesidades?', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-06-15 17:34:24', '2017-06-15 17:34:24', '', 175, 'http://jobyo.mainfor.edu.es/175-revision-v1/', 0, 'revision', '', 0),
(179, 3, '2017-06-15 17:39:12', '2017-06-15 17:39:12', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>\r\n<a href=\"#\">Ayúdame</a>', '¿Has visto todos nuestros programas y no encuentras ninguno que se adapte a tus necesidades?', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-06-15 17:39:12', '2017-06-15 17:39:12', '', 175, 'http://jobyo.mainfor.edu.es/175-revision-v1/', 0, 'revision', '', 0),
(181, 3, '2017-06-16 07:19:17', '2017-06-16 07:19:17', '', 'contacto', '', 'inherit', 'open', 'closed', '', 'contacto-2', '', '', '2017-06-16 07:19:17', '2017-06-16 07:19:17', '', 175, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/contacto.svg', 0, 'attachment', 'image/svg+xml', 0),
(182, 3, '2017-06-16 08:05:17', '2017-06-16 08:05:17', '<h2>¿Qué nos une? Somos profesionales activos que en nuestro día a día nos enfrentamos a situaciones actuales de cada sector.</h2>', 'Detrás de todo esto, estamos nosotr@s:', '', 'publish', 'closed', 'closed', '', 'detras-de-todo-esto-estamos-nosotrs', '', '', '2017-06-16 09:43:11', '2017-06-16 09:43:11', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=182', 0, 'page', '', 0),
(183, 3, '2017-06-16 08:05:17', '2017-06-16 08:05:17', '<h2>¿Qué nos une? Somos profesionales activos.</h2>', 'Detrás de todo esto, estamos nosotr@s:', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2017-06-16 08:05:17', '2017-06-16 08:05:17', '', 182, 'http://jobyo.mainfor.edu.es/182-revision-v1/', 0, 'revision', '', 0),
(184, 3, '2017-06-16 08:52:54', '2017-06-16 08:52:54', '', 'Alicia Llamas Góngora', '', 'publish', 'open', 'open', '', 'alicia-llamas-gongora', '', '', '2017-06-16 09:08:26', '2017-06-16 09:08:26', '', 0, 'http://jobyo.mainfor.edu.es/?p=184', 0, 'post', '', 0),
(185, 3, '2017-06-16 08:52:01', '2017-06-16 08:52:01', '', 'alicia_llamas', '', 'inherit', 'open', 'closed', '', 'alicia_llamas', '', '', '2017-06-16 08:52:01', '2017-06-16 08:52:01', '', 184, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/alicia_llamas.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 3, '2017-06-16 08:52:54', '2017-06-16 08:52:54', '', 'Alicia Llamas Góngora', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2017-06-16 08:52:54', '2017-06-16 08:52:54', '', 184, 'http://jobyo.mainfor.edu.es/184-revision-v1/', 0, 'revision', '', 0),
(187, 3, '2017-06-16 09:43:11', '2017-06-16 09:43:11', '<h2>¿Qué nos une? Somos profesionales activos que en nuestro día a día nos enfrentamos a situaciones actuales de cada sector.</h2>', 'Detrás de todo esto, estamos nosotr@s:', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2017-06-16 09:43:11', '2017-06-16 09:43:11', '', 182, 'http://jobyo.mainfor.edu.es/182-revision-v1/', 0, 'revision', '', 0),
(189, 3, '2017-06-16 09:59:47', '2017-06-16 09:59:47', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <strong>enim ad minim veniam,</strong> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>\r\nExcepteur sint occaecat cupidatat non proident, <strong>sunt in culpa</strong> qui officia deserunt mollit anim id est laborum.', 'Nombre y apellidos', '', 'publish', 'open', 'open', '', 'nombre-y-apellidos', '', '', '2017-06-16 11:54:46', '2017-06-16 11:54:46', '', 0, 'http://jobyo.mainfor.edu.es/?p=189', 0, 'post', '', 0),
(190, 3, '2017-06-16 09:58:55', '2017-06-16 09:58:55', '', 'Man-6-icon', '', 'inherit', 'open', 'closed', '', 'man-6-icon', '', '', '2017-06-16 09:58:55', '2017-06-16 09:58:55', '', 189, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/Man-6-icon.png', 0, 'attachment', 'image/png', 0),
(191, 3, '2017-06-16 09:59:03', '2017-06-16 09:59:03', '', 'Borrador creado el 16 June, 2017 a las 9:59 am', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-06-16 09:59:03', '2017-06-16 09:59:03', '', 189, 'http://jobyo.mainfor.edu.es/189-revision-v1/', 0, 'revision', '', 0),
(192, 3, '2017-06-16 09:59:47', '2017-06-16 09:59:47', '<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <strong>enim ad minim veniam,</strong> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h2>', 'Nombre y apellidos', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-06-16 09:59:47', '2017-06-16 09:59:47', '', 189, 'http://jobyo.mainfor.edu.es/189-revision-v1/', 0, 'revision', '', 0),
(193, 3, '2017-06-16 10:03:39', '2017-06-16 10:03:39', '<ul>\r\n 	<li><strong>Doble titulación:</strong> Grupo Mainjobs + URJC.</li>\r\n 	<li><strong>3 meses de prácticas</strong> en empresa.</li>\r\n 	<li><strong>Orientación académica</strong> desde el primer día.</li>\r\n 	<li><strong>Docentes en activo</strong> en el sector.</li>\r\n</ul>\r\n<p style=\"text-align: center;\"><a href=\"#\">¿Necesitas más info? Pulsa aquí</a></p>', 'La masa madre de nuestros programas', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2017-06-16 10:03:39', '2017-06-16 10:03:39', '', 172, 'http://jobyo.mainfor.edu.es/172-revision-v1/', 0, 'revision', '', 0),
(194, 3, '2017-06-16 10:12:17', '2017-06-16 10:12:17', '<h2>Son los que mejor <strong>nos definen.</strong></h2>', 'Ell@s', '', 'publish', 'closed', 'closed', '', 'participantes', '', '', '2017-06-16 10:55:08', '2017-06-16 10:55:08', '', 0, 'http://jobyo.mainfor.edu.es/?page_id=194', 0, 'page', '', 0),
(195, 3, '2017-06-16 10:08:00', '2017-06-16 10:08:00', '', 'Ell@s.', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-06-16 10:08:00', '2017-06-16 10:08:00', '', 194, 'http://jobyo.mainfor.edu.es/194-revision-v1/', 0, 'revision', '', 0),
(196, 3, '2017-06-16 10:12:17', '2017-06-16 10:12:17', 'Son los que mejor nos pueden definir.', 'Ell@s.', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-06-16 10:12:17', '2017-06-16 10:12:17', '', 194, 'http://jobyo.mainfor.edu.es/194-revision-v1/', 0, 'revision', '', 0),
(197, 3, '2017-06-16 10:12:47', '2017-06-16 10:12:47', '', 'Conoce a los participantes', '', 'publish', 'closed', 'closed', '', 'conoce-a-los-participantes-2', '', '', '2017-06-16 10:12:47', '2017-06-16 10:12:47', '', 0, 'http://jobyo.mainfor.edu.es/?p=197', 1, 'nav_menu_item', '', 0),
(198, 3, '2017-06-16 10:13:05', '2017-06-16 10:13:05', '<h1>Son los que mejor nos pueden definir.</h1>', 'Ell@s', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-06-16 10:13:05', '2017-06-16 10:13:05', '', 194, 'http://jobyo.mainfor.edu.es/194-revision-v1/', 0, 'revision', '', 0),
(199, 3, '2017-06-16 10:13:13', '2017-06-16 10:13:13', '<h2>Son los que mejor nos pueden definir.</h2>', 'Ell@s', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-06-16 10:13:13', '2017-06-16 10:13:13', '', 194, 'http://jobyo.mainfor.edu.es/194-revision-v1/', 0, 'revision', '', 0),
(200, 3, '2017-06-16 10:13:25', '2017-06-16 10:13:25', '<h2>Son los que mejor <strong>nos pueden definir.</strong></h2>', 'Ell@s', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-06-16 10:13:25', '2017-06-16 10:13:25', '', 194, 'http://jobyo.mainfor.edu.es/194-revision-v1/', 0, 'revision', '', 0),
(201, 3, '2017-06-16 10:14:33', '2017-06-16 10:14:33', '', 'people-1003991_1920', '', 'inherit', 'open', 'closed', '', 'people-1003991_1920', '', '', '2017-06-16 10:14:33', '2017-06-16 10:14:33', '', 194, 'http://jobyo.mainfor.edu.es/wp-content/uploads/2017/06/people-1003991_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 3, '2017-06-16 10:49:05', '2017-06-16 10:49:05', '<label> Nombre (requerido)\r\n    [text* your-name] </label>\r\n\r\n<label> Tu correo electrónico (requerido)\r\n    [email* your-email] </label>\r\n\r\n<label> Asunto\r\n    [text your-subject] </label>\r\n\r\n<label> Mensaje\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Enviar\"]\n1\nJobyo \"[your-subject]\"\n[your-name] <wordpress@jobyo.mainfor.edu.es>\ntic@mainfor.edu.es\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Jobyo (http://jobyo.mainfor.edu.es)\nReply-To: [your-email]\n\n\n\n\nJobyo \"[your-subject]\"\nJobyo <wordpress@jobyo.mainfor.edu.es>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en Jobyo (http://jobyo.mainfor.edu.es)\nReply-To: tic@mainfor.edu.es\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Contacto', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2017-06-16 10:49:46', '2017-06-16 10:49:46', '', 0, 'http://jobyo.mainfor.edu.es/?post_type=wpcf7_contact_form&#038;p=202', 0, 'wpcf7_contact_form', '', 0),
(203, 3, '2017-06-16 10:54:28', '2017-06-16 10:54:28', '<h2>Son los que mejor <strong>nos definen.</strong></h2>', 'Ell@s', '', 'inherit', 'closed', 'closed', '', '194-revision-v1', '', '', '2017-06-16 10:54:28', '2017-06-16 10:54:28', '', 194, 'http://jobyo.mainfor.edu.es/194-revision-v1/', 0, 'revision', '', 0),
(204, 3, '2017-06-16 10:58:28', '2017-06-16 10:58:28', '<blockquote>\r\n<h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <strong>enim ad minim veniam,</strong> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h2>\r\n</blockquote>', 'Nombre y apellidos', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-06-16 10:58:28', '2017-06-16 10:58:28', '', 189, 'http://jobyo.mainfor.edu.es/189-revision-v1/', 0, 'revision', '', 0),
(205, 3, '2017-06-16 11:03:02', '2017-06-16 11:03:02', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do <strong>eiusmod tempor incididunt</strong> ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>', 'Nombre y apellidos', '', 'publish', 'open', 'open', '', 'nombre-y-apellidos-2', '', '', '2017-06-16 11:03:02', '2017-06-16 11:03:02', '', 0, 'http://jobyo.mainfor.edu.es/?p=205', 0, 'post', '', 0),
(206, 3, '2017-06-16 11:03:02', '2017-06-16 11:03:02', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do <strong>eiusmod tempor incididunt</strong> ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>', 'Nombre y apellidos', '', 'inherit', 'closed', 'closed', '', '205-revision-v1', '', '', '2017-06-16 11:03:02', '2017-06-16 11:03:02', '', 205, 'http://jobyo.mainfor.edu.es/205-revision-v1/', 0, 'revision', '', 0),
(207, 3, '2017-06-16 11:03:54', '2017-06-16 11:03:54', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <strong>enim ad minim veniam,</strong> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>', 'Nombre y apellidos', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-06-16 11:03:54', '2017-06-16 11:03:54', '', 189, 'http://jobyo.mainfor.edu.es/189-revision-v1/', 0, 'revision', '', 0),
(208, 3, '2017-06-16 11:54:37', '2017-06-16 11:54:37', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <strong>enim ad minim veniam,</strong> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>\n&nbsp;', 'Nombre y apellidos', '', 'inherit', 'closed', 'closed', '', '189-autosave-v1', '', '', '2017-06-16 11:54:37', '2017-06-16 11:54:37', '', 189, 'http://jobyo.mainfor.edu.es/189-autosave-v1/', 0, 'revision', '', 0),
(209, 3, '2017-06-16 11:54:46', '2017-06-16 11:54:46', '<blockquote>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut <strong>enim ad minim veniam,</strong> quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</blockquote>\r\nExcepteur sint occaecat cupidatat non proident, <strong>sunt in culpa</strong> qui officia deserunt mollit anim id est laborum.', 'Nombre y apellidos', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-06-16 11:54:46', '2017-06-16 11:54:46', '', 189, 'http://jobyo.mainfor.edu.es/189-revision-v1/', 0, 'revision', '', 0),
(210, 3, '2017-06-16 11:59:10', '2017-06-16 11:59:10', 'hola', 'Alumno destacado', '', 'publish', 'open', 'open', '', 'alumno-destacado', '', '', '2017-06-16 11:59:10', '2017-06-16 11:59:10', '', 0, 'http://jobyo.mainfor.edu.es/?p=210', 0, 'post', '', 0),
(211, 3, '2017-06-16 11:59:10', '2017-06-16 11:59:10', 'hola', 'Alumno destacado', '', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2017-06-16 11:59:10', '2017-06-16 11:59:10', '', 210, 'http://jobyo.mainfor.edu.es/210-revision-v1/', 0, 'revision', '', 0),
(212, 3, '2017-06-16 12:18:10', '2017-06-16 12:18:10', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>\r\n<a href=\"#\">Ayúdame</a>', '¿Has visto nuestros programas y no hay ninguno que se adapte a tus necesidades?', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-06-16 12:18:10', '2017-06-16 12:18:10', '', 175, 'http://jobyo.mainfor.edu.es/175-revision-v1/', 0, 'revision', '', 0),
(213, 3, '2017-06-16 12:18:27', '2017-06-16 12:18:27', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>\r\n<a href=\"#\">Ayúdame</a>', '¿Has visto nuestros programas y ninguno se adapta a tus necesidades?', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-06-16 12:18:27', '2017-06-16 12:18:27', '', 175, 'http://jobyo.mainfor.edu.es/175-revision-v1/', 0, 'revision', '', 0),
(214, 3, '2017-06-16 12:18:38', '2017-06-16 12:18:38', '<h2>Dinos qué buscas y <strong>te ayudamos a encontrarlo.</strong></h2>\r\n<a href=\"#\">Ayúdame</a>', '¿Has visto nuestros programas y <br/> ninguno se adapta a tus necesidades?', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2017-06-16 12:18:38', '2017-06-16 12:18:38', '', 175, 'http://jobyo.mainfor.edu.es/175-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_termmeta`
--

CREATE TABLE `wpjo_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_terms`
--

CREATE TABLE `wpjo_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_terms`
--

INSERT INTO `wpjo_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Redes Sociales', 'redes-sociales', 0),
(3, 'Logotipos', 'logotipos', 0),
(4, 'Principal', 'principal', 0),
(5, 'Footer', 'footer', 0),
(6, 'Secciones', 'secciones', 0),
(7, 'Programas formativos', 'programas-formativos', 0),
(8, 'Objetivos', 'objetivos', 0),
(9, 'Empresarios/as', 'empresariosas', 0),
(10, 'Caracteristicas empresas', 'caracteristicas-empresas', 0),
(11, 'Descripción proyectos', 'descripcion-proyectos', 0),
(12, 'Características programas', 'caracteristicas-programas', 0),
(13, 'Equipo', 'equipo', 0),
(14, 'Alumnado', 'alumnado', 0),
(15, 'destacado', 'destacado', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_term_relationships`
--

CREATE TABLE `wpjo_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_term_relationships`
--

INSERT INTO `wpjo_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 3, 0),
(27, 4, 0),
(30, 4, 0),
(33, 5, 0),
(34, 5, 0),
(59, 7, 0),
(61, 6, 0),
(67, 7, 0),
(79, 6, 0),
(108, 8, 0),
(110, 8, 0),
(113, 8, 0),
(124, 9, 0),
(124, 13, 0),
(128, 10, 0),
(139, 9, 0),
(144, 1, 0),
(153, 11, 0),
(155, 11, 0),
(157, 11, 0),
(165, 4, 0),
(166, 4, 0),
(167, 4, 0),
(168, 4, 0),
(172, 12, 0),
(184, 13, 0),
(189, 14, 0),
(197, 6, 0),
(205, 14, 0),
(210, 14, 0),
(210, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_term_taxonomy`
--

CREATE TABLE `wpjo_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_term_taxonomy`
--

INSERT INTO `wpjo_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 3),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 3),
(12, 12, 'category', '', 0, 1),
(13, 13, 'category', '', 0, 2),
(14, 14, 'category', '', 0, 3),
(15, 15, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_usermeta`
--

CREATE TABLE `wpjo_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_usermeta`
--

INSERT INTO `wpjo_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminjobyo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wpjo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wpjo_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wpjo_dashboard_quick_press_last_post_id', '3'),
(17, 2, 'nickname', 'jmoreno'),
(18, 2, 'first_name', 'Jorge'),
(19, 2, 'last_name', 'Moreno'),
(20, 2, 'description', ''),
(21, 2, 'rich_editing', 'true'),
(22, 2, 'comment_shortcuts', 'false'),
(23, 2, 'admin_color', 'fresh'),
(24, 2, 'use_ssl', '0'),
(25, 2, 'show_admin_bar_front', 'true'),
(26, 2, 'locale', ''),
(27, 2, 'wpjo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(28, 2, 'wpjo_user_level', '10'),
(29, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(30, 3, 'nickname', 'allamas'),
(31, 3, 'first_name', 'Alicia'),
(32, 3, 'last_name', 'Llamas'),
(33, 3, 'description', ''),
(34, 3, 'rich_editing', 'true'),
(35, 3, 'comment_shortcuts', 'false'),
(36, 3, 'admin_color', 'fresh'),
(37, 3, 'use_ssl', '0'),
(38, 3, 'show_admin_bar_front', 'false'),
(39, 3, 'locale', ''),
(40, 3, 'wpjo_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(41, 3, 'wpjo_user_level', '10'),
(42, 3, 'dismissed_wp_pointers', ''),
(43, 3, 'session_tokens', 'a:6:{s:64:\"d0ee22b5e934b6405777677622dd3471e1228e5ee3c932370331aaef284da382\";a:4:{s:10:\"expiration\";i:1498038979;s:2:\"ip\";s:13:\"85.51.148.129\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1496829379;}s:64:\"4f9950cf74a9c92a10abab93e69f48f9bfeeb25a3cab302aaabd64be8f7003a8\";a:4:{s:10:\"expiration\";i:1498219678;s:2:\"ip\";s:14:\"92.186.218.234\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1497010078;}s:64:\"e43c422c31d44b73975cc15070431aed20fa09b2d0bfeac5cd4d37a6469b1073\";a:4:{s:10:\"expiration\";i:1498479433;s:2:\"ip\";s:14:\"92.186.218.234\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1497269833;}s:64:\"0ca9e24ef8ceb0abae5f58d5f8bdbecd33ef992d371ebf59f15774e8d7359635\";a:4:{s:10:\"expiration\";i:1497700818;s:2:\"ip\";s:14:\"92.186.218.234\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1497528018;}s:64:\"3677ddcc9da3edd5cb2093ccb1c00328a90351524c66abeb996fa22a6d35b0bd\";a:4:{s:10:\"expiration\";i:1497701897;s:2:\"ip\";s:14:\"92.186.218.234\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1497529097;}s:64:\"848fd062a8951bf1cd687afd9aa7ea320bee5537d4f7caae8cb9bb7b32088456\";a:4:{s:10:\"expiration\";i:1497702554;s:2:\"ip\";s:14:\"92.186.218.234\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\";s:5:\"login\";i:1497529754;}}'),
(44, 3, 'wpjo_dashboard_quick_press_last_post_id', '163'),
(45, 3, 'wpjo_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(46, 3, 'wpjo_user-settings-time', '1497439465'),
(47, 3, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(48, 3, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:18:\"add-post-type-blog\";i:1;s:12:\"add-post_tag\";}'),
(49, 3, 'nav_menu_recently_edited', '6'),
(50, 3, 'closedpostboxes_page', 'a:0:{}'),
(51, 3, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(52, 3, 'closedpostboxes_post', 'a:0:{}'),
(53, 3, 'metaboxhidden_post', 'a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(54, 3, 'wpjo_media_library_mode', 'grid'),
(55, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"92.186.218.0\";}'),
(57, 2, 'wpjo_dashboard_quick_press_last_post_id', '224'),
(58, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"90.163.144.0\";}'),
(61, 2, 'syntax_highlighting', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wpjo_users`
--

CREATE TABLE `wpjo_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpjo_users`
--

INSERT INTO `wpjo_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminjobyo', '$P$BK.STJnZ9i0JhVge7fB6/mMg9PgmCO/', 'adminjobyo', 'tic@mainfor.edu.es', '', '2017-05-29 11:16:03', '', 0, 'adminjobyo'),
(2, 'jmoreno', '$P$B5t9lXVwtqYB28vQnxUfk8ApnxkTZ0.', 'jmoreno', 'jmoreno@mainfor.edu.es', '', '2017-05-29 11:16:49', '', 0, 'Jorge Moreno'),
(3, 'allamas', '$P$BSweIdkc0yzZm1/x.BgYB13TQcGauY.', 'allamas', 'allamas@mainfor.edu.es', '', '2017-05-29 11:17:16', '', 0, 'Alicia Llamas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpjo_commentmeta`
--
ALTER TABLE `wpjo_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpjo_comments`
--
ALTER TABLE `wpjo_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wpjo_links`
--
ALTER TABLE `wpjo_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpjo_options`
--
ALTER TABLE `wpjo_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpjo_postmeta`
--
ALTER TABLE `wpjo_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpjo_posts`
--
ALTER TABLE `wpjo_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpjo_termmeta`
--
ALTER TABLE `wpjo_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpjo_terms`
--
ALTER TABLE `wpjo_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpjo_term_relationships`
--
ALTER TABLE `wpjo_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpjo_term_taxonomy`
--
ALTER TABLE `wpjo_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpjo_usermeta`
--
ALTER TABLE `wpjo_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpjo_users`
--
ALTER TABLE `wpjo_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpjo_commentmeta`
--
ALTER TABLE `wpjo_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpjo_comments`
--
ALTER TABLE `wpjo_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpjo_links`
--
ALTER TABLE `wpjo_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpjo_options`
--
ALTER TABLE `wpjo_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4043;

--
-- AUTO_INCREMENT for table `wpjo_postmeta`
--
ALTER TABLE `wpjo_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `wpjo_posts`
--
ALTER TABLE `wpjo_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `wpjo_termmeta`
--
ALTER TABLE `wpjo_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpjo_terms`
--
ALTER TABLE `wpjo_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wpjo_term_taxonomy`
--
ALTER TABLE `wpjo_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wpjo_usermeta`
--
ALTER TABLE `wpjo_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wpjo_users`
--
ALTER TABLE `wpjo_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
