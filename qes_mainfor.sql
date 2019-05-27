-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2019 at 07:35 PM
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
-- Database: `qes_mainfor`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://qes.edu.es', 'yes'),
(2, 'home', 'http://qes.edu.es', 'yes'),
(3, 'blogname', 'QES', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tic@mainfor.es', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"categories-images/categories-images.php\";i:1;s:43:\"wp-maintenance-mode/wp-maintenance-mode.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:82:\"/home/qes/domains/qes.edu.es/public_html/wp-content/themes/twentyfifteen/style.css\";i:2;s:99:\"/home/qes/domains/qes.edu.es/public_html/wp-content/plugins/categories-images/categories-images.php\";i:3;s:79:\"/home/qes/domains/qes.edu.es/public_html/wp-content/plugins/akismet/akismet.php\";i:4;s:103:\"/home/qes/domains/qes.edu.es/public_html/wp-content/plugins/wp-maintenance-mode/wp-maintenance-mode.php\";i:5;s:0:\"\";}', 'no'),
(41, 'template', 'twentyfifteen', 'yes'),
(42, 'stylesheet', 'twentyfifteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30135', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(90, 'WPLANG', 'es_ES', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1431311184;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1431329700;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1431331970;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1431354586;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(100, '_transient_random_seed', 'c49082c6bbb14199a62d33866cebfdf8', 'yes'),
(127, 'recently_activated', 'a:1:{s:39:\"categories-images/categories-images.php\";i:1426764042;}', 'yes'),
(166, 'theme_mods_twentyfifteen', 'a:2:{s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"social\";i:0;}s:12:\"header_image\";s:13:\"remove-header\";}', 'yes'),
(167, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(173, 'wpmm_settings', 'a:3:{s:7:\"general\";a:10:{s:6:\"status\";i:1;s:11:\"bypass_bots\";i:1;s:12:\"backend_role\";s:13:\"administrator\";s:13:\"frontend_role\";s:13:\"administrator\";s:11:\"meta_robots\";i:1;s:11:\"redirection\";s:0:\"\";s:7:\"exclude\";a:0:{}s:6:\"notice\";i:1;s:10:\"admin_link\";i:0;s:11:\"status_date\";s:19:\"2015-03-19 10:10:57\";}s:6:\"design\";a:10:{s:5:\"title\";s:27:\"QES QUALITY ENGLISH SCHOOLS\";s:7:\"heading\";s:0:\"\";s:13:\"heading_color\";s:0:\"\";s:4:\"text\";s:265:\"<p><img class=\"aligncenter\" src=\"./qes.edu.es/wp-content/uploads/2015/03/logotipo-qes1\" alt=\"\" width=\"660\" height=\"28\" /></p>\r\n<p style=\"text-align: center;font-family: Arial;color: #;font-size: 10px;text-decoration: none\"><a href=\"wp-admin\">Administración</a></p>\";s:10:\"text_color\";s:0:\"\";s:7:\"bg_type\";s:5:\"color\";s:8:\"bg_color\";s:0:\"\";s:9:\"bg_custom\";s:0:\"\";s:13:\"bg_predefined\";s:7:\"bg1.jpg\";s:10:\"custom_css\";a:0:{}}s:7:\"modules\";a:22:{s:16:\"countdown_status\";i:0;s:15:\"countdown_start\";s:0:\"\";s:17:\"countdown_details\";a:3:{s:4:\"days\";s:1:\"0\";s:5:\"hours\";s:1:\"1\";s:7:\"minutes\";s:1:\"0\";}s:15:\"countdown_color\";s:0:\"\";s:16:\"subscribe_status\";i:0;s:14:\"subscribe_text\";s:0:\"\";s:20:\"subscribe_text_color\";s:0:\"\";s:13:\"social_status\";i:0;s:13:\"social_target\";i:1;s:13:\"social_github\";s:0:\"\";s:15:\"social_dribbble\";s:0:\"\";s:14:\"social_twitter\";s:0:\"\";s:15:\"social_facebook\";s:0:\"\";s:16:\"social_pinterest\";s:0:\"\";s:14:\"social_google+\";s:0:\"\";s:15:\"social_linkedin\";s:0:\"\";s:14:\"contact_status\";i:0;s:13:\"contact_email\";s:0:\"\";s:15:\"contact_effects\";s:20:\"move_top|move_bottom\";s:9:\"ga_status\";i:0;s:7:\"ga_code\";s:0:\"\";s:10:\"custom_css\";a:0:{}}}', 'yes'),
(174, 'wpmm_version', '2.0.3', 'yes'),
(424, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"tic@mainfor.es\";s:7:\"version\";s:5:\"4.1.5\";s:9:\"timestamp\";i:1430990917;}', 'yes'),
(435, 'db_upgraded', '', 'yes'),
(476, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.2.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.2\";s:7:\"version\";s:5:\"4.2.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.2\";s:7:\"version\";s:5:\"4.2.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.2.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.2\";s:7:\"version\";s:5:\"4.2.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1431291826;s:15:\"version_checked\";s:5:\"4.1.5\";s:12:\"translations\";a:0:{}}', 'yes'),
(523, '_site_transient_timeout_theme_roots', '1431293625', 'yes'),
(524, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}', 'yes'),
(525, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1431291827;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.3\";s:14:\"twentythirteen\";s:3:\"1.4\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.2.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.4.zip\";}s:14:\"twentythirteen\";a:4:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'yes'),
(526, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1431291827;s:8:\"response\";a:1:{s:39:\"categories-images/categories-images.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"32132\";s:4:\"slug\";s:17:\"categories-images\";s:6:\"plugin\";s:39:\"categories-images/categories-images.php\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/categories-images/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/categories-images.2.5.zip\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:43:\"wp-maintenance-mode/wp-maintenance-mode.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"13204\";s:4:\"slug\";s:19:\"wp-maintenance-mode\";s:6:\"plugin\";s:43:\"wp-maintenance-mode/wp-maintenance-mode.php\";s:11:\"new_version\";s:5:\"2.0.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/wp-maintenance-mode/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/wp-maintenance-mode.2.0.3.zip\";}}}', 'yes'),
(527, '_transient_doing_cron', '1550584807.2489330768585205078125', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(11, 9, '_edit_lock', '1426756103:2'),
(12, 9, '_edit_last', '2'),
(13, 11, '_edit_lock', '1426756144:2'),
(14, 11, '_edit_last', '2'),
(15, 14, '_edit_lock', '1426756330:2'),
(16, 14, '_edit_last', '2'),
(17, 16, '_menu_item_type', 'post_type'),
(18, 16, '_menu_item_menu_item_parent', '0'),
(19, 16, '_menu_item_object_id', '11'),
(20, 16, '_menu_item_object', 'page'),
(21, 16, '_menu_item_target', ''),
(22, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 16, '_menu_item_xfn', ''),
(24, 16, '_menu_item_url', ''),
(25, 17, '_menu_item_type', 'post_type'),
(26, 17, '_menu_item_menu_item_parent', '0'),
(27, 17, '_menu_item_object_id', '9'),
(28, 17, '_menu_item_object', 'page'),
(29, 17, '_menu_item_target', ''),
(30, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 17, '_menu_item_xfn', ''),
(32, 17, '_menu_item_url', ''),
(33, 18, '_menu_item_type', 'post_type'),
(34, 18, '_menu_item_menu_item_parent', '0'),
(35, 18, '_menu_item_object_id', '14'),
(36, 18, '_menu_item_object', 'page'),
(37, 18, '_menu_item_target', ''),
(38, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 18, '_menu_item_xfn', ''),
(40, 18, '_menu_item_url', ''),
(41, 19, '_menu_item_type', 'post_type'),
(42, 19, '_menu_item_menu_item_parent', '0'),
(43, 19, '_menu_item_object_id', '14'),
(44, 19, '_menu_item_object', 'page'),
(45, 19, '_menu_item_target', ''),
(46, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 19, '_menu_item_xfn', ''),
(48, 19, '_menu_item_url', ''),
(49, 19, '_menu_item_orphaned', '1426756333'),
(50, 20, '_menu_item_type', 'post_type'),
(51, 20, '_menu_item_menu_item_parent', '0'),
(52, 20, '_menu_item_object_id', '11'),
(53, 20, '_menu_item_object', 'page'),
(54, 20, '_menu_item_target', ''),
(55, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 20, '_menu_item_xfn', ''),
(57, 20, '_menu_item_url', ''),
(58, 20, '_menu_item_orphaned', '1426756333'),
(59, 21, '_menu_item_type', 'post_type'),
(60, 21, '_menu_item_menu_item_parent', '0'),
(61, 21, '_menu_item_object_id', '9'),
(62, 21, '_menu_item_object', 'page'),
(63, 21, '_menu_item_target', ''),
(64, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 21, '_menu_item_xfn', ''),
(66, 21, '_menu_item_url', ''),
(67, 21, '_menu_item_orphaned', '1426756335'),
(78, 27, '_wp_attached_file', '2015/03/logotipo-qes1.png'),
(79, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:499;s:4:\"file\";s:25:\"2015/03/logotipo-qes1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logotipo-qes1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"logotipo-qes1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:0;}}'),
(84, 29, '_edit_lock', '1427214176:2'),
(85, 29, '_edit_last', '2'),
(86, 30, '_menu_item_type', 'post_type'),
(87, 30, '_menu_item_menu_item_parent', '0'),
(88, 30, '_menu_item_object_id', '29'),
(89, 30, '_menu_item_object', 'page'),
(90, 30, '_menu_item_target', ''),
(91, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 30, '_menu_item_xfn', ''),
(93, 30, '_menu_item_url', ''),
(94, 32, '_menu_item_type', 'post_type'),
(95, 32, '_menu_item_menu_item_parent', '0'),
(96, 32, '_menu_item_object_id', '29'),
(97, 32, '_menu_item_object', 'page'),
(98, 32, '_menu_item_target', ''),
(99, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 32, '_menu_item_xfn', ''),
(101, 32, '_menu_item_url', ''),
(102, 32, '_menu_item_orphaned', '1427214367'),
(103, 33, '_menu_item_type', 'post_type'),
(104, 33, '_menu_item_menu_item_parent', '0'),
(105, 33, '_menu_item_object_id', '29'),
(106, 33, '_menu_item_object', 'page'),
(107, 33, '_menu_item_target', ''),
(108, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 33, '_menu_item_xfn', ''),
(110, 33, '_menu_item_url', ''),
(112, 34, '_edit_lock', '1427214596:2'),
(113, 34, '_edit_last', '2'),
(114, 35, '_menu_item_type', 'post_type'),
(115, 35, '_menu_item_menu_item_parent', '0'),
(116, 35, '_menu_item_object_id', '34'),
(117, 35, '_menu_item_object', 'page'),
(118, 35, '_menu_item_target', ''),
(119, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 35, '_menu_item_xfn', ''),
(121, 35, '_menu_item_url', ''),
(122, 37, '_edit_lock', '1427214646:2'),
(123, 37, '_edit_last', '2'),
(124, 38, '_menu_item_type', 'post_type'),
(125, 38, '_menu_item_menu_item_parent', '0'),
(126, 38, '_menu_item_object_id', '37'),
(127, 38, '_menu_item_object', 'page'),
(128, 38, '_menu_item_target', ''),
(129, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 38, '_menu_item_xfn', ''),
(131, 38, '_menu_item_url', ''),
(132, 40, '_edit_lock', '1427214830:2'),
(133, 40, '_edit_last', '2'),
(134, 41, '_menu_item_type', 'post_type'),
(135, 41, '_menu_item_menu_item_parent', '0'),
(136, 41, '_menu_item_object_id', '40'),
(137, 41, '_menu_item_object', 'page'),
(138, 41, '_menu_item_target', ''),
(139, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 41, '_menu_item_xfn', ''),
(141, 41, '_menu_item_url', ''),
(142, 43, '_edit_lock', '1427214887:2'),
(143, 43, '_edit_last', '2'),
(144, 44, '_menu_item_type', 'post_type'),
(145, 44, '_menu_item_menu_item_parent', '0'),
(146, 44, '_menu_item_object_id', '43'),
(147, 44, '_menu_item_object', 'page'),
(148, 44, '_menu_item_target', ''),
(149, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 44, '_menu_item_xfn', ''),
(151, 44, '_menu_item_url', ''),
(152, 46, '_edit_lock', '1427214918:2'),
(153, 46, '_edit_last', '2'),
(154, 47, '_menu_item_type', 'post_type'),
(155, 47, '_menu_item_menu_item_parent', '0'),
(156, 47, '_menu_item_object_id', '46'),
(157, 47, '_menu_item_object', 'page'),
(158, 47, '_menu_item_target', ''),
(159, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 47, '_menu_item_xfn', ''),
(161, 47, '_menu_item_url', ''),
(162, 49, '_menu_item_type', 'post_type'),
(163, 49, '_menu_item_menu_item_parent', '0'),
(164, 49, '_menu_item_object_id', '46'),
(165, 49, '_menu_item_object', 'page'),
(166, 49, '_menu_item_target', ''),
(167, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 49, '_menu_item_xfn', ''),
(169, 49, '_menu_item_url', ''),
(171, 50, '_menu_item_type', 'post_type'),
(172, 50, '_menu_item_menu_item_parent', '0'),
(173, 50, '_menu_item_object_id', '43'),
(174, 50, '_menu_item_object', 'page'),
(175, 50, '_menu_item_target', ''),
(176, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 50, '_menu_item_xfn', ''),
(178, 50, '_menu_item_url', ''),
(180, 51, '_menu_item_type', 'post_type'),
(181, 51, '_menu_item_menu_item_parent', '0'),
(182, 51, '_menu_item_object_id', '40'),
(183, 51, '_menu_item_object', 'page'),
(184, 51, '_menu_item_target', ''),
(185, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 51, '_menu_item_xfn', ''),
(187, 51, '_menu_item_url', ''),
(189, 52, '_edit_lock', '1427215171:2'),
(190, 52, '_edit_last', '2'),
(191, 53, '_menu_item_type', 'post_type'),
(192, 53, '_menu_item_menu_item_parent', '0'),
(193, 53, '_menu_item_object_id', '52'),
(194, 53, '_menu_item_object', 'page'),
(195, 53, '_menu_item_target', ''),
(196, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 53, '_menu_item_xfn', ''),
(198, 53, '_menu_item_url', ''),
(199, 55, '_menu_item_type', 'post_type'),
(200, 55, '_menu_item_menu_item_parent', '0'),
(201, 55, '_menu_item_object_id', '52'),
(202, 55, '_menu_item_object', 'page'),
(203, 55, '_menu_item_target', ''),
(204, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 55, '_menu_item_xfn', ''),
(206, 55, '_menu_item_url', ''),
(208, 56, '_edit_lock', '1427215273:2'),
(209, 56, '_edit_last', '2'),
(210, 57, '_menu_item_type', 'post_type'),
(211, 57, '_menu_item_menu_item_parent', '0'),
(212, 57, '_menu_item_object_id', '56'),
(213, 57, '_menu_item_object', 'page'),
(214, 57, '_menu_item_target', ''),
(215, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 57, '_menu_item_xfn', ''),
(217, 57, '_menu_item_url', ''),
(218, 59, '_edit_lock', '1427215355:2'),
(219, 59, '_edit_last', '2'),
(220, 60, '_menu_item_type', 'post_type'),
(221, 60, '_menu_item_menu_item_parent', '0'),
(222, 60, '_menu_item_object_id', '59'),
(223, 60, '_menu_item_object', 'page'),
(224, 60, '_menu_item_target', ''),
(225, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 60, '_menu_item_xfn', ''),
(227, 60, '_menu_item_url', ''),
(228, 62, '_edit_lock', '1427215416:2'),
(229, 62, '_edit_last', '2'),
(230, 63, '_menu_item_type', 'post_type'),
(231, 63, '_menu_item_menu_item_parent', '0'),
(232, 63, '_menu_item_object_id', '62'),
(233, 63, '_menu_item_object', 'page'),
(234, 63, '_menu_item_target', ''),
(235, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 63, '_menu_item_xfn', ''),
(237, 63, '_menu_item_url', ''),
(238, 65, '_edit_last', '2'),
(239, 66, '_menu_item_type', 'post_type'),
(240, 66, '_menu_item_menu_item_parent', '0'),
(241, 66, '_menu_item_object_id', '65'),
(242, 66, '_menu_item_object', 'page'),
(243, 66, '_menu_item_target', ''),
(244, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 66, '_menu_item_xfn', ''),
(246, 66, '_menu_item_url', ''),
(247, 65, '_edit_lock', '1427215428:2'),
(248, 68, '_menu_item_type', 'post_type'),
(249, 68, '_menu_item_menu_item_parent', '0'),
(250, 68, '_menu_item_object_id', '65'),
(251, 68, '_menu_item_object', 'page'),
(252, 68, '_menu_item_target', ''),
(253, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 68, '_menu_item_xfn', ''),
(255, 68, '_menu_item_url', ''),
(257, 69, '_menu_item_type', 'post_type'),
(258, 69, '_menu_item_menu_item_parent', '0'),
(259, 69, '_menu_item_object_id', '62'),
(260, 69, '_menu_item_object', 'page'),
(261, 69, '_menu_item_target', ''),
(262, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(263, 69, '_menu_item_xfn', ''),
(264, 69, '_menu_item_url', ''),
(266, 70, '_menu_item_type', 'post_type'),
(267, 70, '_menu_item_menu_item_parent', '0'),
(268, 70, '_menu_item_object_id', '59'),
(269, 70, '_menu_item_object', 'page'),
(270, 70, '_menu_item_target', ''),
(271, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 70, '_menu_item_xfn', ''),
(273, 70, '_menu_item_url', ''),
(277, 27, '_wp_attachment_is_custom_background', 'twentyfifteen');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(9, 2, '2015-03-19 08:48:32', '2015-03-19 08:48:32', '<p style=\"text-align: justify;\"><em><strong>QES</strong></em>, es una marca de calidad que se otorga a los centros de enseñanza de idiomas, que cumplen con una serie de criterios de calidad en la enseñanza de inglés y preparación de exámenes oficiales. Todos los centros registrados con nuestra marca, son centros de referencia a nivel nacional.</p>\r\n<p style=\"text-align: justify;\">Todos los centros <em><strong>QES</strong></em> forman una red de centros, que se unen para trabajar juntos y participar en futuros proyectos formativos. Siempre bajo un mismo objetivo, <em><strong>FORMACIÓN DE CALIDAD EN LA ENSEÑANZA DE INGLÉS</strong>.</em></p>\r\n<p style=\"text-align: justify;\"><em>Los beneficios </em>para los centros <strong><em>QES</em></strong>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Pertenecer a la red de <strong>centros de mayor calidad a nivel nacional</strong>.</li>\r\n	<li style=\"text-align: justify;\">Una <strong>mejora de imagen de marca</strong>.</li>\r\n	<li style=\"text-align: justify;\">Tendrá a su disposición un <strong> Proyectos</strong>, para la participación en concursos de la administración pública y proyectos con empresas.</li>\r\n	<li style=\"text-align: justify;\"><strong>Ampliará su catálogo formativo</strong>, incluyendo los cursos de inglés en la modalidad online.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><em><strong>QES</strong></em> es una marca que pertenece a la empresa formación <em>Mainfor</em>, centro examinador registrado por <strong><em>Trinity College London</em></strong>.</p>\r\n<em>Mainfor</em> desarrolla productos de consultoría formativa y selección. Actualmente son proveedores de empresas, administraciones públicas, agentes sociales, centros de formación y colegios profesionales.\r\n\r\nAlgunos datos relativos a los últimos tres años de actividad:\r\n<ul>\r\n	<li>Empresas que han confiado en nosotros su formación: Más de 1.000.</li>\r\n	<li>Personas beneficiarias de los proyectos gestionados: Más de 20.000.</li>\r\n	<li>Equipo de técnicos y consultores de estructura (personal no docente): 28.</li>\r\n	<li>Red de docentes y consultores colaboradores: 110 profesionales.</li>\r\n	<li>Disponibilidad de instalaciones y formadores en todo el territorio nacional.</li>\r\n	<li>Fabricantes de contenidos e-learning para empresas y la administración.</li>\r\n	<li>Certificaciones: ISO 9001 - ISO 14001.</li>\r\n	<li>Partenariados académicos: UNIR, Universidad San Pablo CEU, Trinity College London,</li>\r\n	<li>Microsoft, Sage, Adobe.</li>\r\n</ul>', '¿Qué es QES?', '', 'publish', 'open', 'open', '', 'que-es-qes', '', '', '2015-03-19 09:10:43', '2015-03-19 09:10:43', '', 0, 'http://qes.edu.es/?page_id=9', 1, 'page', '', 0),
(10, 2, '2015-03-19 08:48:32', '2015-03-19 08:48:32', '<p style=\"text-align: justify;\"><em><strong>QES</strong></em>, es una marca de calidad que se otorga a los centros de enseñanza de idiomas, que cumplen con una serie de criterios de calidad en la enseñanza de inglés y preparación de exámenes oficiales. Todos los centros registrados con nuestra marca, son centros de referencia a nivel nacional.</p>\r\n<p style=\"text-align: justify;\">Todos los centros <em><strong>QES</strong></em> forman una red de centros, que se unen para trabajar juntos y participar en futuros proyectos formativos. Siempre bajo un mismo objetivo, <em><strong>FORMACIÓN DE CALIDAD EN LA ENSEÑANZA DE INGLÉS</strong>.</em></p>\r\n<p style=\"text-align: justify;\"><em>Los beneficios </em>para los centros <strong><em>QES</em></strong>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Pertenecer a la red de <strong>centros de mayor calidad a nivel nacional</strong>.</li>\r\n	<li style=\"text-align: justify;\">Una <strong>mejora de imagen de marca</strong>.</li>\r\n	<li style=\"text-align: justify;\">Tendrá a su disposición un <strong> Proyectos</strong>, para la participación en concursos de la administración pública y proyectos con empresas.</li>\r\n	<li style=\"text-align: justify;\"><strong>Ampliará su catálogo formativo</strong>, incluyendo los cursos de inglés en la modalidad online.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><em><strong>QES</strong></em> es una marca que pertenece a la empresa formación <em>Mainfor</em>, centro examinador registrado por <strong><em>Trinity College London</em></strong>.</p>\r\n<em>Mainfor</em> desarrolla productos de consultoría formativa y selección. Actualmente son proveedores de empresas, administraciones públicas, agentes sociales, centros de formación y colegios profesionales.\r\n\r\nAlgunos datos relativos a los últimos tres años de actividad:\r\n<ul>\r\n	<li>Empresas que han confiado en nosotros su formación: Más de 1.000.</li>\r\n	<li>Personas beneficiarias de los proyectos gestionados: Más de 20.000.</li>\r\n	<li>Equipo de técnicos y consultores de estructura (personal no docente): 28.</li>\r\n	<li>Red de docentes y consultores colaboradores: 110 profesionales.</li>\r\n	<li>Disponibilidad de instalaciones y formadores en todo el territorio nacional.</li>\r\n	<li>Fabricantes de contenidos e-learning para empresas y la administración.</li>\r\n	<li>Certificaciones: ISO 9001 - ISO 14001.</li>\r\n	<li>Partenariados académicos: UNIR, Universidad San Pablo CEU, Trinity College London,</li>\r\n	<li>Microsoft, Sage, Adobe.</li>\r\n</ul>', '¿Qué es QES?', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-03-19 08:48:32', '2015-03-19 08:48:32', '', 9, 'http://qes.edu.es/?p=10', 0, 'revision', '', 0),
(11, 2, '2015-03-19 08:55:37', '2015-03-19 08:55:37', '<p style=\"text-align: justify;\">Para poder obtener la <em><strong>marca QES</strong></em> y formar parte de nuestra <strong><em>red de centros</em></strong>, tienen que cumplir los siguientes <strong><em>criterios de calidad</em></strong>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Haber examinado a un número considerable de alumnos, con un alto porcentaje de aprobados, en los dos últimos años.</li>\r\n	<li style=\"text-align: justify;\">Tener una plantilla media de al menos dos trabajadores en el último año.</li>\r\n	<li style=\"text-align: justify;\">Disponer de dos profesores bilingües, con formación pedagógica y al menos 1.000 horas de experiencia docente.</li>\r\n	<li style=\"text-align: justify;\">Tener docentes con contratos indefinidos, en la categoría de personal docente, con una antigüedad mínima de un año.</li>\r\n	<li style=\"text-align: justify;\">Ser centro inscrito o registrado por el Servicio Público de Empleo Estatal. Cuenten con las instalaciones, dotaciones y recursos necesarios para la realización de las actividades que requieran presencia del alumnado.</li>\r\n	<li style=\"text-align: justify;\">Ser centro examinador registrado Trinity College London.</li>\r\n	<li style=\"text-align: justify;\">Poseer el certificado de calidad NORMA ISO9001.</li>\r\n</ul>', 'Requisitos Centros QES', '', 'publish', 'open', 'open', '', 'requisitos-centros-qes', '', '', '2015-03-19 09:11:24', '2015-03-19 09:11:24', '', 0, 'http://qes.edu.es/?page_id=11', 2, 'page', '', 0),
(12, 2, '2015-03-19 08:55:37', '2015-03-19 08:55:37', '<p style=\"text-align: justify;\">Para poder obtener la <em><strong>marca QES</strong></em> y formar parte de nuestra <strong><em>red de centros</em></strong>, tienen que cumplir los siguientes <strong><em>criterios de calidad</em></strong>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Haber examinado a un número considerable de alumnos, con un alto porcentaje de aprobados, en los dos últimos años.</li>\r\n	<li style=\"text-align: justify;\">Tener una plantilla media de al menos dos trabajadores en el último año.</li>\r\n	<li style=\"text-align: justify;\">Disponer de dos profesores bilingües, con formación pedagógica y al menos 1.000 horas de experiencia docente.</li>\r\n	<li style=\"text-align: justify;\">Tener docentes con contratos indefinidos, en la categoría de personal docente, con una antigüedad mínima de un año.</li>\r\n	<li style=\"text-align: justify;\">Ser centro inscrito o registrado por el Servicio Público de Empleo Estatal. Cuenten con las instalaciones, dotaciones y recursos necesarios para la realización de las actividades que requieran presencia del alumnado.</li>\r\n	<li style=\"text-align: justify;\">Ser centro examinador registrado Trinity College London.</li>\r\n	<li style=\"text-align: justify;\">Poseer el certificado de calidad NORMA ISO9001.</li>\r\n</ul>', 'Requisitos Centros QES', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-19 08:55:37', '2015-03-19 08:55:37', '', 11, 'http://qes.edu.es/?p=12', 0, 'revision', '', 0),
(13, 2, '2015-03-19 08:56:06', '2015-03-19 08:56:06', '<p style=\"text-align: justify;\">Para poder obtener la <em><strong>marca QES</strong></em> y formar parte de nuestra <strong><em>red de centros</em></strong>, tienen que cumplir los siguientes <strong><em>criterios de calidad</em></strong>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Haber examinado a un número considerable de alumnos, con un alto porcentaje de aprobados, en los dos últimos años.</li>\r\n	<li style=\"text-align: justify;\">Tener una plantilla media de al menos dos trabajadores en el último año.</li>\r\n	<li style=\"text-align: justify;\">Disponer de dos profesores bilingües, con formación pedagógica y al menos 1.000 horas de experiencia docente.</li>\r\n	<li style=\"text-align: justify;\">Tener docentes con contratos indefinidos, en la categoría de personal docente, con una antigüedad mínima de un año.</li>\r\n	<li style=\"text-align: justify;\">Ser centro inscrito o registrado por el Servicio Público de Empleo Estatal. Cuenten con las instalaciones, dotaciones y recursos necesarios para la realización de las actividades que requieran presencia del alumnado.</li>\r\n	<li style=\"text-align: justify;\">Ser centro examinador registrado Trinity College London.</li>\r\n	<li style=\"text-align: justify;\">Poseer el certificado de calidad NORMA ISO9001.</li>\r\n</ul>', 'Requisitos Centros QES', '', 'inherit', 'open', 'open', '', '11-autosave-v1', '', '', '2015-03-19 08:56:06', '2015-03-19 08:56:06', '', 11, 'http://qes.edu.es/?p=13', 0, 'revision', '', 0),
(14, 2, '2015-03-19 09:02:10', '2015-03-19 09:02:10', '<p style=\"text-align: justify;\">Para que su centro obtenga el reconocimiento de nuestra marca <em><strong>QES</strong></em> y formar parte de nuestra red de centros, debe cumplimentar la <em><strong>solicitud de adhesión</strong></em> y enviarla junto con la documentación solicitada, al siguiente correo electrónico:</p>\r\n<p style=\"text-align: justify;\">Será revisada por nuestros <strong>D<em>pto. RRHH y Calidad</em>, </strong>y se le dará respuesta en la mayor brevedad.</p>\r\n<p style=\"text-align: justify;\">Una vez comprobado que el centro cumple con todos los criterios de calidad, se firmará un acuerdo de colaboración firmado por ambas partes. Posteriormente, se colocará una placa con la <em><strong>marca QES</strong></em> en sus instalaciones con el número de registro correspondiente, para acreditar que pertenece a la<em><strong> red de centros de calidad QES</strong></em>.</p>', 'Solicitud de adhesión QES', '', 'publish', 'open', 'closed', '', 'solicitud-de-adhesion-qes', '', '', '2015-03-19 09:11:02', '2015-03-19 09:11:02', '', 0, 'http://qes.edu.es/?page_id=14', 3, 'page', '', 0),
(15, 2, '2015-03-19 09:02:10', '2015-03-19 09:02:10', '<p style=\"text-align: justify;\">Para que su centro obtenga el reconocimiento de nuestra marca <em><strong>QES</strong></em> y formar parte de nuestra red de centros, debe cumplimentar la <em><strong>solicitud de adhesión</strong></em> y enviarla junto con la documentación solicitada, al siguiente correo electrónico:</p>\r\n<p style=\"text-align: justify;\">Será revisada por nuestros <strong>D<em>pto. RRHH y Calidad</em>, </strong>y se le dará respuesta en la mayor brevedad.</p>\r\n<p style=\"text-align: justify;\">Una vez comprobado que el centro cumple con todos los criterios de calidad, se firmará un acuerdo de colaboración firmado por ambas partes. Posteriormente, se colocará una placa con la <em><strong>marca QES</strong></em> en sus instalaciones con el número de registro correspondiente, para acreditar que pertenece a la<em><strong> red de centros de calidad QES</strong></em>.</p>', 'Solicitud de adhesión QES', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-03-19 09:02:10', '2015-03-19 09:02:10', '', 14, 'http://qes.edu.es/?p=15', 0, 'revision', '', 0),
(16, 2, '2015-03-19 09:09:30', '2015-03-19 09:09:30', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2015-03-19 09:13:16', '2015-03-19 09:13:16', '', 0, 'http://qes.edu.es/?p=16', 2, 'nav_menu_item', '', 0),
(17, 2, '2015-03-19 09:10:05', '2015-03-19 09:10:05', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2015-03-19 09:13:16', '2015-03-19 09:13:16', '', 0, 'http://qes.edu.es/?p=17', 1, 'nav_menu_item', '', 0),
(18, 2, '2015-03-19 09:10:30', '2015-03-19 09:10:30', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2015-03-19 09:13:16', '2015-03-19 09:13:16', '', 0, 'http://qes.edu.es/?p=18', 3, 'nav_menu_item', '', 0),
(19, 2, '2015-03-19 09:12:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-19 09:12:12', '0000-00-00 00:00:00', '', 0, 'http://qes.edu.es/?p=19', 1, 'nav_menu_item', '', 0),
(20, 2, '2015-03-19 09:12:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-19 09:12:13', '0000-00-00 00:00:00', '', 0, 'http://qes.edu.es/?p=20', 1, 'nav_menu_item', '', 0),
(21, 2, '2015-03-19 09:12:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-19 09:12:14', '0000-00-00 00:00:00', '', 0, 'http://qes.edu.es/?p=21', 1, 'nav_menu_item', '', 0),
(27, 2, '2015-03-19 11:23:49', '2015-03-19 11:23:49', '', 'logotipo-qes', '', 'inherit', 'open', 'open', '', 'logotipo-qes', '', '', '2015-03-19 11:23:49', '2015-03-19 11:23:49', '', 0, 'http://qes.edu.es/wp-content/uploads/2015/03/logotipo-qes1.png', 0, 'attachment', 'image/png', 0),
(29, 2, '2015-03-24 16:25:14', '2015-03-24 16:25:14', '(Incluir aquí todos los datos del centro y su registro como centro autorizado por Trinity y un localizador de Centros QES más próximo por ejemplo con su código postal o ciudad). \r\nEjemplo:\r\nCentro Mainfor \r\nNº registro QES: SPAIN – MA - 01\r\nNº registro Trinity College London:……..\r\nTeléfono: 952 062 923\r\nE-mail: info@mainfor.es\r\nDirección:\r\nAv. Jorge Luis Borges 15 29010 Málaga (Incluir mapa google maps)\r\n', 'Localizar Centros QES', '', 'publish', 'open', 'open', '', 'localizar-centros-qes', '', '', '2015-03-24 16:25:14', '2015-03-24 16:25:14', '', 0, 'http://qes.edu.es/?page_id=29', 0, 'page', '', 0),
(30, 2, '2015-03-24 16:25:14', '2015-03-24 16:25:14', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2015-03-24 16:25:14', '2015-03-24 16:25:14', '', 0, 'http://qes.edu.es/?p=30', 4, 'nav_menu_item', '', 0),
(31, 2, '2015-03-24 16:25:14', '2015-03-24 16:25:14', '(Incluir aquí todos los datos del centro y su registro como centro autorizado por Trinity y un localizador de Centros QES más próximo por ejemplo con su código postal o ciudad). \r\nEjemplo:\r\nCentro Mainfor \r\nNº registro QES: SPAIN – MA - 01\r\nNº registro Trinity College London:……..\r\nTeléfono: 952 062 923\r\nE-mail: info@mainfor.es\r\nDirección:\r\nAv. Jorge Luis Borges 15 29010 Málaga (Incluir mapa google maps)\r\n', 'Localizar Centros QES', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-03-24 16:25:14', '2015-03-24 16:25:14', '', 29, 'http://qes.edu.es/?p=31', 0, 'revision', '', 0),
(32, 2, '2015-03-24 16:26:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-24 16:26:06', '0000-00-00 00:00:00', '', 0, 'http://qes.edu.es/?p=32', 1, 'nav_menu_item', '', 0),
(33, 2, '2015-03-24 16:27:23', '2015-03-24 16:27:23', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2015-03-24 16:27:23', '2015-03-24 16:27:23', '', 0, 'http://qes.edu.es/?p=33', 1, 'nav_menu_item', '', 0),
(34, 2, '2015-03-24 16:32:01', '2015-03-24 16:32:01', 'Mainfor, como centro examinador registrado por Trinity College London, impartió en el año 2014, los cursos de preparación de exámenes oficiales de Trinity en la modalidad presencial y semipresencial, en Málaga y Madrid. En este año, se va realizar la expansión de este producto a nivel nacional en la modalidad online, con la colaboración de la red de centros QES.\r\n\r\nLa formación online es impartida por Mainfor a través de su plataforma y la examinación por el centro QES correspondiente. \r\n \r\nLos beneficios que obtienen los centros QES participando en este proyecto son:\r\n \r\nPertenecer a la red de centros de mayor calidad, trabajando en equipo por un mismo objetivo.\r\nUna retribución de la facturación de los alumnos que  deriven al método online.\r\nUna mejora de imagen de marca. Campañas comerciales gratuitas, tanto a nivel físico como a nivel online (web y redes sociales), mejorando su posicionamiento en el mercado. Con nuestras estrategias de comunicación, conseguirá captar más alumnos.\r\nTendrá a su disposición un Dpto. Proyectos para la participación en concursos de la administración pública y proyectos con empresas.\r\nAmpliará su catálogo formativo, incluyendo los cursos de inglés en la modalidad online.\r\n\r\nLa documentación necesaria para participar en el proyecto:\r\n\r\n Certificados que acrediten todo los requisitos solicitados para ser centro QES.\r\n Fotos del centro (aulas, fachada, recepción y secretaría).\r\n Solicitud de adhesión de centro.\r\n Convenio de Colaboración.\r\n', 'Preparación online de los certificado ISE de Trinity College London', '', 'publish', 'open', 'open', '', 'preparacion-online-de-los-certificado-ise-de-trinity-college-london', '', '', '2015-03-24 16:32:01', '2015-03-24 16:32:01', '', 0, 'http://qes.edu.es/?page_id=34', 0, 'page', '', 0),
(35, 2, '2015-03-24 16:32:01', '2015-03-24 16:32:01', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2015-03-24 16:32:01', '2015-03-24 16:32:01', '', 0, 'http://qes.edu.es/?p=35', 5, 'nav_menu_item', '', 0),
(36, 2, '2015-03-24 16:32:01', '2015-03-24 16:32:01', 'Mainfor, como centro examinador registrado por Trinity College London, impartió en el año 2014, los cursos de preparación de exámenes oficiales de Trinity en la modalidad presencial y semipresencial, en Málaga y Madrid. En este año, se va realizar la expansión de este producto a nivel nacional en la modalidad online, con la colaboración de la red de centros QES.\r\n\r\nLa formación online es impartida por Mainfor a través de su plataforma y la examinación por el centro QES correspondiente. \r\n \r\nLos beneficios que obtienen los centros QES participando en este proyecto son:\r\n \r\nPertenecer a la red de centros de mayor calidad, trabajando en equipo por un mismo objetivo.\r\nUna retribución de la facturación de los alumnos que  deriven al método online.\r\nUna mejora de imagen de marca. Campañas comerciales gratuitas, tanto a nivel físico como a nivel online (web y redes sociales), mejorando su posicionamiento en el mercado. Con nuestras estrategias de comunicación, conseguirá captar más alumnos.\r\nTendrá a su disposición un Dpto. Proyectos para la participación en concursos de la administración pública y proyectos con empresas.\r\nAmpliará su catálogo formativo, incluyendo los cursos de inglés en la modalidad online.\r\n\r\nLa documentación necesaria para participar en el proyecto:\r\n\r\n Certificados que acrediten todo los requisitos solicitados para ser centro QES.\r\n Fotos del centro (aulas, fachada, recepción y secretaría).\r\n Solicitud de adhesión de centro.\r\n Convenio de Colaboración.\r\n', 'Preparación online de los certificado ISE de Trinity College London', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-03-24 16:32:01', '2015-03-24 16:32:01', '', 34, 'http://qes.edu.es/?p=36', 0, 'revision', '', 0),
(37, 2, '2015-03-24 16:32:58', '2015-03-24 16:32:58', 'Participar en las próximas convocatorias de planes de formación, con la colaboración de los Centros QES. \r\n\r\nPróximas convocatorias:\r\n 	\r\nPlanes de formación de ámbito estatal.\r\nPrograma estatal para la cualificación y mejora de la empleabilidad de jóvenes.\r\nPlanes de formación de ámbito autonómico.\r\n', 'Convocatorias de Planes de Formación', '', 'publish', 'open', 'open', '', 'convocatorias-de-planes-de-formacion', '', '', '2015-03-24 16:32:58', '2015-03-24 16:32:58', '', 0, 'http://qes.edu.es/?page_id=37', 0, 'page', '', 0),
(38, 2, '2015-03-24 16:32:58', '2015-03-24 16:32:58', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2015-03-24 16:32:58', '2015-03-24 16:32:58', '', 0, 'http://qes.edu.es/?p=38', 6, 'nav_menu_item', '', 0),
(39, 2, '2015-03-24 16:32:58', '2015-03-24 16:32:58', 'Participar en las próximas convocatorias de planes de formación, con la colaboración de los Centros QES. \r\n\r\nPróximas convocatorias:\r\n 	\r\nPlanes de formación de ámbito estatal.\r\nPrograma estatal para la cualificación y mejora de la empleabilidad de jóvenes.\r\nPlanes de formación de ámbito autonómico.\r\n', 'Convocatorias de Planes de Formación', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2015-03-24 16:32:58', '2015-03-24 16:32:58', '', 37, 'http://qes.edu.es/?p=39', 0, 'revision', '', 0),
(40, 2, '2015-03-24 16:36:06', '2015-03-24 16:36:06', 'Los exámenes y evaluaciones de Trinity están diseñados para ayudar el progreso de los estudiantes.\r\n\r\nInspirar a los alumnos y marcan sus logros en cada etapa de su desarrollo y en todos los niveles de competencia.\r\n\r\nLos exámenes se centran en la evaluación de las habilidades y la eficacia con que se pueden aplicar a los candidatos lo que han aprendido, no sólo en el conocimiento por sí mismo.\r\n\r\nTambién animamos a los candidatos a traer sus propias decisiones e intereses en nuestros exámenes - esto motiva a los estudiantes y hace que la evaluación sea más agradable.\r\n\r\nLos exámenes Trinity son reconocidos internacionalmente y totalmente acreditados por Ofqual (Oficina de las Cualificaciones y el Reglamento de Exámenes) y otras autoridades educativas de muchos países de todo el mundo.', '¿Por qué es coger Trinity?', '', 'publish', 'open', 'open', '', 'por-que-es-coger-trinity', '', '', '2015-03-24 16:36:06', '2015-03-24 16:36:06', '', 0, 'http://qes.edu.es/?page_id=40', 0, 'page', '', 0),
(41, 2, '2015-03-24 16:36:07', '2015-03-24 16:36:07', ' ', '', '', 'publish', 'open', 'open', '', '41', '', '', '2015-03-24 16:36:07', '2015-03-24 16:36:07', '', 0, 'http://qes.edu.es/?p=41', 7, 'nav_menu_item', '', 0),
(42, 2, '2015-03-24 16:36:06', '2015-03-24 16:36:06', 'Los exámenes y evaluaciones de Trinity están diseñados para ayudar el progreso de los estudiantes.\r\n\r\nInspirar a los alumnos y marcan sus logros en cada etapa de su desarrollo y en todos los niveles de competencia.\r\n\r\nLos exámenes se centran en la evaluación de las habilidades y la eficacia con que se pueden aplicar a los candidatos lo que han aprendido, no sólo en el conocimiento por sí mismo.\r\n\r\nTambién animamos a los candidatos a traer sus propias decisiones e intereses en nuestros exámenes - esto motiva a los estudiantes y hace que la evaluación sea más agradable.\r\n\r\nLos exámenes Trinity son reconocidos internacionalmente y totalmente acreditados por Ofqual (Oficina de las Cualificaciones y el Reglamento de Exámenes) y otras autoridades educativas de muchos países de todo el mundo.', '¿Por qué es coger Trinity?', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2015-03-24 16:36:06', '2015-03-24 16:36:06', '', 40, 'http://qes.edu.es/?p=42', 0, 'revision', '', 0),
(43, 2, '2015-03-24 16:36:57', '2015-03-24 16:36:57', '<strong>Trinity College London y sus exámenes gozan de la acreditación oficial</strong> de OfQual y sus homólogos en el Reino Unido y forman parte del Marco Nacional de Certificaciones a su vez incluido en la EQF (European Qualifications Framework- Marco Europeo de Cualificaciones).\r\n\r\n&nbsp;\r\n\r\nLos <strong>exámenes de inglés</strong> GESE e ISE están calibrados externamente con el <strong>Marco común europeo</strong> de referencia por un estudio liderado por la Universidad de Lancaster, líder mundial en el campo de la evaluación, estudio que duró 2 años y ganó varios premios.\r\n\r\n&nbsp;\r\n\r\nTodos <strong>los exámenes de Trinity</strong> Integrated Skills in English (ISE) forman parte de la <strong>tabla de certificaciones acreditadas</strong>por la Conferencia de Rectores de las Universidades Españolas (CRUE). Esto permite la acreditación del nivel de inglés al nivel correspondiente a través de un certificado de Trinity para fines de Bolonia (recibir el grado), Master\'s, Erasmus etc.\r\n\r\n&nbsp;\r\n\r\n<strong>Tabla de equivalencias </strong><strong>(incluir tabla)</strong>', '¿Qué reconocimiento posee?', '', 'publish', 'open', 'open', '', 'que-reconocimiento-posee', '', '', '2015-03-24 16:36:57', '2015-03-24 16:36:57', '', 0, 'http://qes.edu.es/?page_id=43', 0, 'page', '', 0),
(44, 2, '2015-03-24 16:36:57', '2015-03-24 16:36:57', ' ', '', '', 'publish', 'open', 'open', '', '44', '', '', '2015-03-24 16:36:57', '2015-03-24 16:36:57', '', 0, 'http://qes.edu.es/?p=44', 8, 'nav_menu_item', '', 0),
(45, 2, '2015-03-24 16:36:57', '2015-03-24 16:36:57', '<strong>Trinity College London y sus exámenes gozan de la acreditación oficial</strong> de OfQual y sus homólogos en el Reino Unido y forman parte del Marco Nacional de Certificaciones a su vez incluido en la EQF (European Qualifications Framework- Marco Europeo de Cualificaciones).\r\n\r\n&nbsp;\r\n\r\nLos <strong>exámenes de inglés</strong> GESE e ISE están calibrados externamente con el <strong>Marco común europeo</strong> de referencia por un estudio liderado por la Universidad de Lancaster, líder mundial en el campo de la evaluación, estudio que duró 2 años y ganó varios premios.\r\n\r\n&nbsp;\r\n\r\nTodos <strong>los exámenes de Trinity</strong> Integrated Skills in English (ISE) forman parte de la <strong>tabla de certificaciones acreditadas</strong>por la Conferencia de Rectores de las Universidades Españolas (CRUE). Esto permite la acreditación del nivel de inglés al nivel correspondiente a través de un certificado de Trinity para fines de Bolonia (recibir el grado), Master\'s, Erasmus etc.\r\n\r\n&nbsp;\r\n\r\n<strong>Tabla de equivalencias </strong><strong>(incluir tabla)</strong>', '¿Qué reconocimiento posee?', '', 'inherit', 'open', 'open', '', '43-revision-v1', '', '', '2015-03-24 16:36:57', '2015-03-24 16:36:57', '', 43, 'http://qes.edu.es/?p=45', 0, 'revision', '', 0),
(46, 2, '2015-03-24 16:37:34', '2015-03-24 16:37:34', 'Los <strong>examenes ISE de Trinity</strong> evalúan las cuatro habilidades del lenguaje - hablar, escribir, escuchar y leer - que interactúan entre sí como lo hacen en el mundo real. Un <strong>examen ISE</strong> forma parte natural de cualquier curso de estudio del idioma Inglés, llevada a cabo en grupo o de forma individual.\r\n<h3>Los tres componentes</h3>\r\n<h4>PORTFOLIO</h4>\r\nEl alumno deberá presentar tres redacciones (Correspondencia, relato fáctico y redacción creativa/descriptiva). Para cada uno de estos formatos, existen cinco posibles temas.\r\n<h4>EXAMEN ESCRITO</h4>\r\nSe deberán completar 2 o 3 ejercicios escritos según nivel. Entre los que figuran ejercicios de Lecto-escritura, de correspondencia y redacción craetiva. Cada uno de ellos tendrá un límite de entre 200 y 300 palabras.\r\n<h4>ENTREVISTA</h4>\r\nEl alumno tendrá que presentar una discruso de pre-exposición del topic, la exposición del portfolio. Según nivel tendrá que agregar a esta parte, un interactive task, audición y/o conversación.', '¿Cómo es un examen Trinity?', '', 'publish', 'open', 'open', '', 'como-es-un-examen-trinity', '', '', '2015-03-24 16:37:34', '2015-03-24 16:37:34', '', 0, 'http://qes.edu.es/?page_id=46', 0, 'page', '', 0),
(47, 2, '2015-03-24 16:37:35', '2015-03-24 16:37:35', ' ', '', '', 'publish', 'open', 'open', '', '47', '', '', '2015-03-24 16:37:35', '2015-03-24 16:37:35', '', 0, 'http://qes.edu.es/?p=47', 9, 'nav_menu_item', '', 0),
(48, 2, '2015-03-24 16:37:34', '2015-03-24 16:37:34', 'Los <strong>examenes ISE de Trinity</strong> evalúan las cuatro habilidades del lenguaje - hablar, escribir, escuchar y leer - que interactúan entre sí como lo hacen en el mundo real. Un <strong>examen ISE</strong> forma parte natural de cualquier curso de estudio del idioma Inglés, llevada a cabo en grupo o de forma individual.\r\n<h3>Los tres componentes</h3>\r\n<h4>PORTFOLIO</h4>\r\nEl alumno deberá presentar tres redacciones (Correspondencia, relato fáctico y redacción creativa/descriptiva). Para cada uno de estos formatos, existen cinco posibles temas.\r\n<h4>EXAMEN ESCRITO</h4>\r\nSe deberán completar 2 o 3 ejercicios escritos según nivel. Entre los que figuran ejercicios de Lecto-escritura, de correspondencia y redacción craetiva. Cada uno de ellos tendrá un límite de entre 200 y 300 palabras.\r\n<h4>ENTREVISTA</h4>\r\nEl alumno tendrá que presentar una discruso de pre-exposición del topic, la exposición del portfolio. Según nivel tendrá que agregar a esta parte, un interactive task, audición y/o conversación.', '¿Cómo es un examen Trinity?', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-03-24 16:37:34', '2015-03-24 16:37:34', '', 46, 'http://qes.edu.es/?p=48', 0, 'revision', '', 0),
(49, 2, '2015-03-24 16:38:40', '2015-03-24 16:38:40', ' ', '', '', 'publish', 'open', 'open', '', '49', '', '', '2015-03-24 16:38:58', '2015-03-24 16:38:58', '', 0, 'http://qes.edu.es/?p=49', 3, 'nav_menu_item', '', 0),
(50, 2, '2015-03-24 16:38:39', '2015-03-24 16:38:39', ' ', '', '', 'publish', 'open', 'open', '', '50', '', '', '2015-03-24 16:38:58', '2015-03-24 16:38:58', '', 0, 'http://qes.edu.es/?p=50', 2, 'nav_menu_item', '', 0),
(51, 2, '2015-03-24 16:38:38', '2015-03-24 16:38:38', ' ', '', '', 'publish', 'open', 'open', '', '51', '', '', '2015-03-24 16:38:58', '2015-03-24 16:38:58', '', 0, 'http://qes.edu.es/?p=51', 1, 'nav_menu_item', '', 0),
(52, 2, '2015-03-24 16:41:41', '2015-03-24 16:41:41', 'Con nuestro método propio Lesson Plans te prepararás para superar el examen oficial realizando clases grupales por videoconferencia, clases de conversación online y prácticas en el campus virtual, abordando las 3 partes del examen: Portfolio, Controlled Written Examination, Interview.\r\n\r\n<strong>Las claves del método online:</strong>\r\n\r\n-     <strong>      Preparación de las 4 competencias</strong>\r\n\r\nLos cursos tienen un enfoque totalmente práctico y están diseñados específicamente para superar los exámenes de Trinity College London, preparando las 4 competencias que se evalúan en las 3 partes del examen: Portfolio , Interview y Controlled Written Examination.\r\n\r\nDispondrá de: <strong>Plataforma online, Clases online y Clases de conversación.</strong>\r\n\r\n<strong>Estos cursos online, están compuestos de:</strong>\r\n<ul>\r\n	<li>Grabación de todas las sesiones de formación para su revisión.</li>\r\n	<li>Clases de conversación con profesores nativos.</li>\r\n	<li>Prueba de nivel (escrita y oral) y asesoramiento (plan de estudios personalizado) gratuito.</li>\r\n</ul>\r\n<strong>-           Profesores Expertos/Nativos</strong>\r\n\r\nLos profesores de los cursos preparatorios de los exámenes de Trinity son <strong>formadores expertos y nativos</strong> que te guiarán durante la formación para que puedas <strong>superar los exámenes</strong>.\r\n\r\n<strong>-           Título oficial e internacional</strong>\r\n\r\nTodos los exámenes de <strong>Trinity Integrated Skills in English (ISE)</strong> forman parte de la tabla de certificaciones acreditadas por la Conferencia de Rectores de las Universidades Españolas (CRUE). Esto permite la<strong>acreditación del nivel de inglés al nivel correspondiente a través de un certificado de Trinity</strong> para fines de Bolonia (recibir el grado), Programas de postgrado, Erasmus, etc.', 'Lesson Plans Method', '', 'publish', 'open', 'open', '', 'lesson-plans-method', '', '', '2015-03-24 16:41:41', '2015-03-24 16:41:41', '', 0, 'http://qes.edu.es/?page_id=52', 0, 'page', '', 0),
(53, 2, '2015-03-24 16:41:41', '2015-03-24 16:41:41', ' ', '', '', 'publish', 'open', 'open', '', '53', '', '', '2015-03-24 16:41:41', '2015-03-24 16:41:41', '', 0, 'http://qes.edu.es/?p=53', 10, 'nav_menu_item', '', 0),
(54, 2, '2015-03-24 16:41:41', '2015-03-24 16:41:41', 'Con nuestro método propio Lesson Plans te prepararás para superar el examen oficial realizando clases grupales por videoconferencia, clases de conversación online y prácticas en el campus virtual, abordando las 3 partes del examen: Portfolio, Controlled Written Examination, Interview.\r\n\r\n<strong>Las claves del método online:</strong>\r\n\r\n-     <strong>      Preparación de las 4 competencias</strong>\r\n\r\nLos cursos tienen un enfoque totalmente práctico y están diseñados específicamente para superar los exámenes de Trinity College London, preparando las 4 competencias que se evalúan en las 3 partes del examen: Portfolio , Interview y Controlled Written Examination.\r\n\r\nDispondrá de: <strong>Plataforma online, Clases online y Clases de conversación.</strong>\r\n\r\n<strong>Estos cursos online, están compuestos de:</strong>\r\n<ul>\r\n	<li>Grabación de todas las sesiones de formación para su revisión.</li>\r\n	<li>Clases de conversación con profesores nativos.</li>\r\n	<li>Prueba de nivel (escrita y oral) y asesoramiento (plan de estudios personalizado) gratuito.</li>\r\n</ul>\r\n<strong>-           Profesores Expertos/Nativos</strong>\r\n\r\nLos profesores de los cursos preparatorios de los exámenes de Trinity son <strong>formadores expertos y nativos</strong> que te guiarán durante la formación para que puedas <strong>superar los exámenes</strong>.\r\n\r\n<strong>-           Título oficial e internacional</strong>\r\n\r\nTodos los exámenes de <strong>Trinity Integrated Skills in English (ISE)</strong> forman parte de la tabla de certificaciones acreditadas por la Conferencia de Rectores de las Universidades Españolas (CRUE). Esto permite la<strong>acreditación del nivel de inglés al nivel correspondiente a través de un certificado de Trinity</strong> para fines de Bolonia (recibir el grado), Programas de postgrado, Erasmus, etc.', 'Lesson Plans Method', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-03-24 16:41:41', '2015-03-24 16:41:41', '', 52, 'http://qes.edu.es/?p=54', 0, 'revision', '', 0),
(55, 2, '2015-03-24 16:42:13', '2015-03-24 16:42:13', ' ', '', '', 'publish', 'open', 'open', '', '55', '', '', '2015-03-24 16:42:13', '2015-03-24 16:42:13', '', 0, 'http://qes.edu.es/?p=55', 1, 'nav_menu_item', '', 0),
(56, 2, '2015-03-24 16:43:28', '2015-03-24 16:43:28', '<ul>\r\n	<li>NIVEL A2 – ISE</li>\r\n	<li>NIVEL B1 – ISE I</li>\r\n	<li>NIVEL B2 – ISE II</li>\r\n	<li>NIVEL C1 – ISE III</li>\r\n</ul>', 'CURSOS', '', 'publish', 'open', 'open', '', 'cursos', '', '', '2015-03-24 16:43:28', '2015-03-24 16:43:28', '', 0, 'http://qes.edu.es/?page_id=56', 0, 'page', '', 0),
(57, 2, '2015-03-24 16:43:29', '2015-03-24 16:43:29', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2015-03-24 16:43:29', '2015-03-24 16:43:29', '', 0, 'http://qes.edu.es/?p=57', 11, 'nav_menu_item', '', 0),
(58, 2, '2015-03-24 16:43:28', '2015-03-24 16:43:28', '<ul>\r\n	<li>NIVEL A2 – ISE</li>\r\n	<li>NIVEL B1 – ISE I</li>\r\n	<li>NIVEL B2 – ISE II</li>\r\n	<li>NIVEL C1 – ISE III</li>\r\n</ul>', 'CURSOS', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-03-24 16:43:28', '2015-03-24 16:43:28', '', 56, 'http://qes.edu.es/?p=58', 0, 'revision', '', 0),
(59, 2, '2015-03-24 16:44:54', '2015-03-24 16:44:54', 'Realiza sin compromiso tu prueba de nivel y obtén tu resultado totalmente gratis.', 'Prueba de nivel gratuita', '', 'publish', 'open', 'open', '', 'prueba-de-nivel-gratuita', '', '', '2015-03-24 16:44:54', '2015-03-24 16:44:54', '', 0, 'http://qes.edu.es/?page_id=59', 0, 'page', '', 0),
(60, 2, '2015-03-24 16:44:54', '2015-03-24 16:44:54', ' ', '', '', 'publish', 'open', 'open', '', '60', '', '', '2015-03-24 16:44:54', '2015-03-24 16:44:54', '', 0, 'http://qes.edu.es/?p=60', 12, 'nav_menu_item', '', 0),
(61, 2, '2015-03-24 16:44:54', '2015-03-24 16:44:54', 'Realiza sin compromiso tu prueba de nivel y obtén tu resultado totalmente gratis.', 'Prueba de nivel gratuita', '', 'inherit', 'open', 'open', '', '59-revision-v1', '', '', '2015-03-24 16:44:54', '2015-03-24 16:44:54', '', 59, 'http://qes.edu.es/?p=61', 0, 'revision', '', 0),
(62, 2, '2015-03-24 16:45:43', '2015-03-24 16:45:43', 'Quiero más información y reservar mi plaza.\r\n\r\n“Campos para rellenar la solicitud de información”.', '¡Inscríbete ahora!', '', 'publish', 'open', 'open', '', 'inscribete-ahora', '', '', '2015-03-24 16:45:43', '2015-03-24 16:45:43', '', 0, 'http://qes.edu.es/?page_id=62', 0, 'page', '', 0),
(63, 2, '2015-03-24 16:45:43', '2015-03-24 16:45:43', ' ', '', '', 'publish', 'open', 'open', '', '63', '', '', '2015-03-24 16:45:43', '2015-03-24 16:45:43', '', 0, 'http://qes.edu.es/?p=63', 13, 'nav_menu_item', '', 0),
(64, 2, '2015-03-24 16:45:43', '2015-03-24 16:45:43', 'Quiero más información y reservar mi plaza.\r\n\r\n“Campos para rellenar la solicitud de información”.', '¡Inscríbete ahora!', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2015-03-24 16:45:43', '2015-03-24 16:45:43', '', 62, 'http://qes.edu.es/?p=64', 0, 'revision', '', 0),
(65, 2, '2015-03-24 16:46:07', '2015-03-24 16:46:07', '', 'Opinión de nuestros alumnos QES', '', 'publish', 'open', 'open', '', 'opinion-de-nuestros-alumnos-qes', '', '', '2015-03-24 16:46:07', '2015-03-24 16:46:07', '', 0, 'http://qes.edu.es/?page_id=65', 0, 'page', '', 0),
(66, 2, '2015-03-24 16:46:07', '2015-03-24 16:46:07', ' ', '', '', 'publish', 'open', 'open', '', '66', '', '', '2015-03-24 16:46:07', '2015-03-24 16:46:07', '', 0, 'http://qes.edu.es/?p=66', 14, 'nav_menu_item', '', 0),
(67, 2, '2015-03-24 16:46:07', '2015-03-24 16:46:07', '', 'Opinión de nuestros alumnos QES', '', 'inherit', 'open', 'open', '', '65-revision-v1', '', '', '2015-03-24 16:46:07', '2015-03-24 16:46:07', '', 65, 'http://qes.edu.es/?p=67', 0, 'revision', '', 0),
(68, 2, '2015-03-24 16:46:38', '2015-03-24 16:46:38', ' ', '', '', 'publish', 'open', 'open', '', '68', '', '', '2015-03-24 16:46:38', '2015-03-24 16:46:38', '', 0, 'http://qes.edu.es/?p=68', 3, 'nav_menu_item', '', 0),
(69, 2, '2015-03-24 16:46:38', '2015-03-24 16:46:38', ' ', '', '', 'publish', 'open', 'open', '', '69', '', '', '2015-03-24 16:46:38', '2015-03-24 16:46:38', '', 0, 'http://qes.edu.es/?p=69', 2, 'nav_menu_item', '', 0),
(70, 2, '2015-03-24 16:46:38', '2015-03-24 16:46:38', ' ', '', '', 'publish', 'open', 'open', '', '70', '', '', '2015-03-24 16:46:38', '2015-03-24 16:46:38', '', 0, 'http://qes.edu.es/?p=70', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'QES', 'qes', 0),
(3, 'CENTROS QES', 'centros-qes', 0),
(4, 'PROYECTOS QES', 'proyectos-qes', 0),
(5, 'CERTIFICACIÓN TRINITY', 'certificacion-trinity', 0),
(6, 'METODOLOGÍA ONLINE', 'metodologia-online', 0),
(7, 'CURSOS ONLINE PREPARACIÓN', 'cursos-online-preparacion', 0),
(8, 'INSCRIPCIÓN', 'inscripcion', 0),
(9, 'Blog QES', 'blog-qes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(30, 2, 0),
(33, 3, 0),
(35, 2, 0),
(38, 2, 0),
(41, 2, 0),
(44, 2, 0),
(47, 2, 0),
(49, 5, 0),
(50, 5, 0),
(51, 5, 0),
(53, 2, 0),
(55, 6, 0),
(57, 2, 0),
(60, 2, 0),
(63, 2, 0),
(66, 2, 0),
(68, 8, 0),
(69, 8, 0),
(70, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 14),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 3),
(9, 9, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:\"e9de6b67c95b3644efcb0d29b387e7380da6c864f68a8d33471f994b41671e4e\";a:4:{s:10:\"expiration\";i:1426861592;s:2:\"ip\";s:13:\"213.227.17.16\";s:2:\"ua\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0\";s:5:\"login\";i:1426688792;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 2, 'nickname', 'mpulido'),
(17, 2, 'first_name', 'Mario'),
(18, 2, 'last_name', 'Pulido'),
(19, 2, 'description', ''),
(20, 2, 'rich_editing', 'true'),
(21, 2, 'comment_shortcuts', 'false'),
(22, 2, 'admin_color', 'fresh'),
(23, 2, 'use_ssl', '0'),
(24, 2, 'show_admin_bar_front', 'true'),
(25, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(26, 2, 'wp_user_level', '10'),
(27, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(29, 2, 'wp_dashboard_quick_press_last_post_id', '4'),
(30, 2, 'wp_user-settings', 'editor=tinymce&hidetb=1&advImgDetails=hide&libraryContent=browse'),
(31, 2, 'wp_user-settings-time', '1427214967'),
(32, 2, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(33, 2, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),
(35, 2, 'nav_menu_recently_edited', '9');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B3sCzdA9zvgmCJquuBW80f0w0EMw/r0', 'admin', 'tic@mainfor.es', '', '2015-03-18 14:23:51', '', 0, 'admin'),
(2, 'mpulido', '$P$BG.71HVq1/tEaEz/WzVODs5x.Kf6iP0', 'mpulido', 'mpulido@mainfor.es', '', '2015-03-18 14:31:03', '', 0, 'Mario Pulido');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmm_subscribers`
--

CREATE TABLE `wp_wpmm_subscribers` (
  `id_subscriber` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `insert_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_wpmm_subscribers`
--
ALTER TABLE `wp_wpmm_subscribers`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wpmm_subscribers`
--
ALTER TABLE `wp_wpmm_subscribers`
  MODIFY `id_subscriber` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
