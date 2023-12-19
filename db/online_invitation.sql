-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 06:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_invitation`
--

-- --------------------------------------------------------

--
-- Table structure for table `oi_commentmeta`
--

CREATE TABLE `oi_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oi_comments`
--

CREATE TABLE `oi_comments` (
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

--
-- Dumping data for table `oi_comments`
--

INSERT INTO `oi_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-12-14 01:58:35', '2023-12-14 01:58:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oi_links`
--

CREATE TABLE `oi_links` (
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
-- Table structure for table `oi_options`
--

CREATE TABLE `oi_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oi_options`
--

INSERT INTO `oi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.wedding.local', 'yes'),
(2, 'home', 'http://dev.wedding.local', 'yes'),
(3, 'blogname', 'Online Invitation', 'yes'),
(4, 'blogdescription', 'Online Invitation', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'symeng.t@bizsolution.com.kh', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:37:\"admin-menu-editor-pro/menu-editor.php\";i:1;s:28:\"admin-registration/index.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:35:\"customize-admin-dashboard/index.php\";i:5;s:37:\"disable-json-api/disable-json-api.php\";i:6;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'invitation', 'yes'),
(41, 'stylesheet', 'invitation', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1718071115', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'oi_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1702745918;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1702778318;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1702778345;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1702778346;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1702778577;a:1:{s:44:\"puc_cron_check_updates-admin-menu-editor-pro\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1703123922;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1703210318;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1702743574;s:7:\"checked\";a:1:{s:10:\"invitation\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.2\";s:7:\"version\";s:5:\"6.4.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1702743563;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(129, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:27:\"symeng.t@bizsolution.com.kh\";s:7:\"version\";s:5:\"6.4.2\";s:9:\"timestamp\";i:1702519129;}', 'no'),
(131, '_site_transient_timeout_browser_9c1ce27f08b16479d2e17743062b28ed', '1703123946', 'no'),
(132, '_site_transient_browser_9c1ce27f08b16479d2e17743062b28ed', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"120.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_5eb78744eba60b19a8380318056b086b', '1703123946', 'no'),
(134, '_site_transient_php_check_5eb78744eba60b19a8380318056b086b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'yes'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(157, 'theme_mods_twentytwentyfour', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1702519243;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(158, 'current_theme', 'Online Invitation', 'yes'),
(159, 'theme_mods_invitation', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(163, 'disable_rest_api_options', 'a:3:{s:7:\"version\";s:3:\"1.7\";s:13:\"default_allow\";b:1;s:5:\"roles\";a:1:{s:4:\"none\";a:2:{s:13:\"default_allow\";b:0;s:10:\"allow_list\";a:114:{s:1:\"/\";b:0;s:9:\"/batch/v1\";b:0;s:11:\"/oembed/1.0\";b:0;s:17:\"/oembed/1.0/embed\";b:0;s:17:\"/oembed/1.0/proxy\";b:0;s:6:\"/wp/v2\";b:0;s:12:\"/wp/v2/posts\";b:0;s:32:\"/wp/v2/posts/(?P&lt;id&gt;[\\d]+)\";b:0;s:46:\"/wp/v2/posts/(?P&lt;parent&gt;[\\d]+)/revisions\";b:0;s:66:\"/wp/v2/posts/(?P&lt;parent&gt;[\\d]+)/revisions/(?P&lt;id&gt;[\\d]+)\";b:0;s:42:\"/wp/v2/posts/(?P&lt;id&gt;[\\d]+)/autosaves\";b:0;s:66:\"/wp/v2/posts/(?P&lt;parent&gt;[\\d]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:12:\"/wp/v2/pages\";b:0;s:32:\"/wp/v2/pages/(?P&lt;id&gt;[\\d]+)\";b:0;s:46:\"/wp/v2/pages/(?P&lt;parent&gt;[\\d]+)/revisions\";b:0;s:66:\"/wp/v2/pages/(?P&lt;parent&gt;[\\d]+)/revisions/(?P&lt;id&gt;[\\d]+)\";b:0;s:42:\"/wp/v2/pages/(?P&lt;id&gt;[\\d]+)/autosaves\";b:0;s:66:\"/wp/v2/pages/(?P&lt;parent&gt;[\\d]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:12:\"/wp/v2/media\";b:0;s:32:\"/wp/v2/media/(?P&lt;id&gt;[\\d]+)\";b:0;s:45:\"/wp/v2/media/(?P&lt;id&gt;[\\d]+)/post-process\";b:0;s:37:\"/wp/v2/media/(?P&lt;id&gt;[\\d]+)/edit\";b:0;s:17:\"/wp/v2/menu-items\";b:0;s:37:\"/wp/v2/menu-items/(?P&lt;id&gt;[\\d]+)\";b:0;s:47:\"/wp/v2/menu-items/(?P&lt;id&gt;[\\d]+)/autosaves\";b:0;s:71:\"/wp/v2/menu-items/(?P&lt;parent&gt;[\\d]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:13:\"/wp/v2/blocks\";b:0;s:33:\"/wp/v2/blocks/(?P&lt;id&gt;[\\d]+)\";b:0;s:47:\"/wp/v2/blocks/(?P&lt;parent&gt;[\\d]+)/revisions\";b:0;s:67:\"/wp/v2/blocks/(?P&lt;parent&gt;[\\d]+)/revisions/(?P&lt;id&gt;[\\d]+)\";b:0;s:43:\"/wp/v2/blocks/(?P&lt;id&gt;[\\d]+)/autosaves\";b:0;s:67:\"/wp/v2/blocks/(?P&lt;parent&gt;[\\d]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:117:\"/wp/v2/templates/(?P&lt;parent&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/revisions\";b:0;s:137:\"/wp/v2/templates/(?P&lt;parent&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/revisions/(?P&lt;id&gt;[\\d]+)\";b:0;s:113:\"/wp/v2/templates/(?P&lt;id&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/autosaves\";b:0;s:137:\"/wp/v2/templates/(?P&lt;parent&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:16:\"/wp/v2/templates\";b:0;s:23:\"/wp/v2/templates/lookup\";b:0;s:103:\"/wp/v2/templates/(?P&lt;id&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)\";b:0;s:122:\"/wp/v2/template-parts/(?P&lt;parent&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/revisions\";b:0;s:142:\"/wp/v2/template-parts/(?P&lt;parent&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/revisions/(?P&lt;id&gt;[\\d]+)\";b:0;s:118:\"/wp/v2/template-parts/(?P&lt;id&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/autosaves\";b:0;s:142:\"/wp/v2/template-parts/(?P&lt;parent&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:21:\"/wp/v2/template-parts\";b:0;s:28:\"/wp/v2/template-parts/lookup\";b:0;s:108:\"/wp/v2/template-parts/(?P&lt;id&gt;([^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)[\\/\\w%-]+)\";b:0;s:17:\"/wp/v2/navigation\";b:0;s:37:\"/wp/v2/navigation/(?P&lt;id&gt;[\\d]+)\";b:0;s:51:\"/wp/v2/navigation/(?P&lt;parent&gt;[\\d]+)/revisions\";b:0;s:71:\"/wp/v2/navigation/(?P&lt;parent&gt;[\\d]+)/revisions/(?P&lt;id&gt;[\\d]+)\";b:0;s:47:\"/wp/v2/navigation/(?P&lt;id&gt;[\\d]+)/autosaves\";b:0;s:71:\"/wp/v2/navigation/(?P&lt;parent&gt;[\\d]+)/autosaves/(?P&lt;id&gt;[\\d]+)\";b:0;s:12:\"/wp/v2/types\";b:0;s:35:\"/wp/v2/types/(?P&lt;type&gt;[\\w-]+)\";b:0;s:15:\"/wp/v2/statuses\";b:0;s:40:\"/wp/v2/statuses/(?P&lt;status&gt;[\\w-]+)\";b:0;s:17:\"/wp/v2/taxonomies\";b:0;s:44:\"/wp/v2/taxonomies/(?P&lt;taxonomy&gt;[\\w-]+)\";b:0;s:17:\"/wp/v2/categories\";b:0;s:37:\"/wp/v2/categories/(?P&lt;id&gt;[\\d]+)\";b:0;s:11:\"/wp/v2/tags\";b:0;s:31:\"/wp/v2/tags/(?P&lt;id&gt;[\\d]+)\";b:0;s:12:\"/wp/v2/menus\";b:0;s:32:\"/wp/v2/menus/(?P&lt;id&gt;[\\d]+)\";b:0;s:26:\"/wp/v2/wp_pattern_category\";b:0;s:46:\"/wp/v2/wp_pattern_category/(?P&lt;id&gt;[\\d]+)\";b:0;s:12:\"/wp/v2/users\";b:0;s:32:\"/wp/v2/users/(?P&lt;id&gt;[\\d]+)\";b:0;s:15:\"/wp/v2/users/me\";b:0;s:66:\"/wp/v2/users/(?P&lt;user_id&gt;(?:[\\d]+|me))/application-passwords\";b:0;s:77:\"/wp/v2/users/(?P&lt;user_id&gt;(?:[\\d]+|me))/application-passwords/introspect\";b:0;s:90:\"/wp/v2/users/(?P&lt;user_id&gt;(?:[\\d]+|me))/application-passwords/(?P&lt;uuid&gt;[\\w\\-]+)\";b:0;s:15:\"/wp/v2/comments\";b:0;s:35:\"/wp/v2/comments/(?P&lt;id&gt;[\\d]+)\";b:0;s:13:\"/wp/v2/search\";b:0;s:59:\"/wp/v2/block-renderer/(?P&lt;name&gt;[a-z0-9-]+/[a-z0-9-]+)\";b:0;s:18:\"/wp/v2/block-types\";b:0;s:54:\"/wp/v2/block-types/(?P&lt;namespace&gt;[a-zA-Z0-9_-]+)\";b:0;s:85:\"/wp/v2/block-types/(?P&lt;namespace&gt;[a-zA-Z0-9_-]+)/(?P&lt;name&gt;[a-zA-Z0-9_-]+)\";b:0;s:54:\"/wp/v2/global-styles/(?P&lt;parent&gt;[\\d]+)/revisions\";b:0;s:86:\"/wp/v2/global-styles/themes/(?P&lt;stylesheet&gt;[\\/\\s%\\w\\.\\(\\)\\[\\]\\@_\\-]+)/variations\";b:0;s:111:\"/wp/v2/global-styles/themes/(?P&lt;stylesheet&gt;[^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)\";b:0;s:43:\"/wp/v2/global-styles/(?P&lt;id&gt;[\\/\\w-]+)\";b:0;s:15:\"/wp/v2/settings\";b:0;s:13:\"/wp/v2/themes\";b:0;s:97:\"/wp/v2/themes/(?P&lt;stylesheet&gt;[^\\/:&lt;&gt;\\*\\?&quot;\\|]+(?:\\/[^\\/:&lt;&gt;\\*\\?&quot;\\|]+)?)\";b:0;s:14:\"/wp/v2/plugins\";b:0;s:54:\"/wp/v2/plugins/(?P&lt;plugin&gt;[^.\\/]+(?:\\/[^.\\/]+)?)\";b:0;s:15:\"/wp/v2/sidebars\";b:0;s:36:\"/wp/v2/sidebars/(?P&lt;id&gt;[\\w-]+)\";b:0;s:19:\"/wp/v2/widget-types\";b:0;s:48:\"/wp/v2/widget-types/(?P&lt;id&gt;[a-zA-Z0-9_-]+)\";b:0;s:55:\"/wp/v2/widget-types/(?P&lt;id&gt;[a-zA-Z0-9_-]+)/encode\";b:0;s:55:\"/wp/v2/widget-types/(?P&lt;id&gt;[a-zA-Z0-9_-]+)/render\";b:0;s:14:\"/wp/v2/widgets\";b:0;s:36:\"/wp/v2/widgets/(?P&lt;id&gt;[\\w\\-]+)\";b:0;s:29:\"/wp/v2/block-directory/search\";b:0;s:33:\"/wp/v2/pattern-directory/patterns\";b:0;s:30:\"/wp/v2/block-patterns/patterns\";b:0;s:32:\"/wp/v2/block-patterns/categories\";b:0;s:18:\"/wp-site-health/v1\";b:0;s:43:\"/wp-site-health/v1/tests/background-updates\";b:0;s:42:\"/wp-site-health/v1/tests/loopback-requests\";b:0;s:37:\"/wp-site-health/v1/tests/https-status\";b:0;s:45:\"/wp-site-health/v1/tests/dotorg-communication\";b:0;s:45:\"/wp-site-health/v1/tests/authorization-header\";b:0;s:34:\"/wp-site-health/v1/directory-sizes\";b:0;s:35:\"/wp-site-health/v1/tests/page-cache\";b:0;s:19:\"/wp-block-editor/v1\";b:0;s:31:\"/wp-block-editor/v1/url-details\";b:0;s:21:\"/wp/v2/menu-locations\";b:0;s:48:\"/wp/v2/menu-locations/(?P&lt;location&gt;[\\w-]+)\";b:0;s:26:\"/wp-block-editor/v1/export\";b:0;s:39:\"/wp-block-editor/v1/navigation-fallback\";b:0;}}}}', 'yes'),
(164, 'acf_version', '5.8.3', 'yes'),
(165, 'ws_menu_editor_pro', 'a:24:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";N;s:19:\"custom_network_menu\";N;s:18:\"first_install_time\";i:1702519377;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:11:\"super_admin\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:1;s:20:\"unused_item_position\";s:8:\"relative\";s:23:\"unused_item_permissions\";s:9:\"unchanged\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}}', 'yes'),
(167, 'ame_pro_external_updates', 'O:8:\"stdClass\":5:{s:9:\"lastCheck\";i:1702743579;s:14:\"checkedVersion\";s:6:\"999999\";s:6:\"update\";O:8:\"stdClass\":10:{s:4:\"slug\";s:21:\"admin-menu-editor-pro\";s:7:\"version\";s:6:\"2.22.1\";s:12:\"download_url\";N;s:12:\"translations\";a:0:{}s:2:\"id\";i:0;s:8:\"homepage\";s:27:\"http://adminmenueditor.com/\";s:6:\"tested\";s:5:\"6.4.1\";s:14:\"upgrade_notice\";N;s:5:\"icons\";a:2:{s:2:\"1x\";s:121:\"https://adminmenueditor.com/wp-content/plugins/ame-paypal-helper/wp-update-server/icons/admin-menu-editor-pro-128x128.png\";s:2:\"2x\";s:121:\"https://adminmenueditor.com/wp-content/plugins/ame-paypal-helper/wp-update-server/icons/admin-menu-editor-pro-256x256.png\";}s:8:\"filename\";s:37:\"admin-menu-editor-pro/menu-editor.php\";}s:11:\"updateClass\";s:22:\"Puc_v4p4_Plugin_Update\";s:15:\"updateBaseClass\";s:13:\"Plugin_Update\";}', 'no'),
(168, 'WPLANG', '', 'yes'),
(169, 'new_admin_email', 'symeng.t@bizsolution.com.kh', 'yes'),
(170, 'whl_page', 'login', 'yes'),
(171, 'whl_redirect_admin', '404', 'yes'),
(181, 'ws_ame_meta_boxes', '{\"format\":{\"name\":\"Admin Menu Editor meta boxes\",\"version\":\"1.0\"},\"screens\":{\"page\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"D:\\\\BIZ-Project\\\\Wedding Invitation Online\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"pageparentdiv\":{\"id\":\"pageparentdiv\",\"title\":\"Page Attributes\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"D:\\\\BIZ-Project\\\\Wedding Invitation Online\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"postimagediv\":{\"id\":\"postimagediv\",\"title\":\"Featured image\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"D:\\\\BIZ-Project\\\\Wedding Invitation Online\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentstatusdiv\":{\"id\":\"commentstatusdiv\",\"title\":\"Discussion\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"D:\\\\BIZ-Project\\\\Wedding Invitation Online\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentsdiv\":{\"id\":\"commentsdiv\",\"title\":\"Comments\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":null},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"D:\\\\BIZ-Project\\\\Wedding Invitation Online\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"authordiv\":{\"id\":\"authordiv\",\"title\":\"Author\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"D:\\\\BIZ-Project\\\\Wedding Invitation Online\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}},\"acf-field-group\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\MAMP\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\MAMP\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}}}}', 'no'),
(189, '_transient_timeout_acf_plugin_updates', '1702778571', 'no'),
(190, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231128\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(194, '_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0', '1703210580', 'no'),
(195, '_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(196, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:12:\"Unauthorized\";}}', 'yes'),
(197, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":2}', 'yes'),
(203, 'ws_ame_dashboard_widgets', '{\n    \"format\": {\n        \"name\": \"Admin Menu Editor dashboard widgets\",\n        \"version\": \"1.1\"\n    },\n    \"widgets\": [\n        {\n            \"id\": \"dashboard_site_health\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"Site Health Status\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_right_now\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"At a Glance\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_activity\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"Activity\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_quick_press\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"<span class=\\\"hide-if-no-js\\\">Quick Draft<\\/span> <span class=\\\"hide-if-js\\\">Your Recent Drafts<\\/span>\",\n                \"location\": \"side\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_primary\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"WordPress Events and News\",\n                \"location\": \"side\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\pisal-wedding\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        }\n    ],\n    \"welcomePanel\": [],\n    \"siteComponentHash\": \"162e0c56620a2572e14ed34882503fe0\"\n}', 'no'),
(204, 'options_', '<p class=\"text-wrapper-18\">កម្មវិធីថ្ងៃទី១៖ ​ថ្ងៃពុធ ទី២៤ ខែមករា ឆ្នាំ២០២៤</p>\r\n\r\n<div class=\"label-9\">\r\n<div class=\"label-10\">\r\n<p class=\"text-wrapper-19\">ម៉ោង ១៣ : ៥០\r\nម៉ោង ១៤ : ០០\r\nម៉ោង ១៤ : ៤៥\r\nម៉ោង ១៦ : ០០</p>\r\n\r\n<div class=\"text-wrapper-19\">រសៀល\r\nរសៀល\r\nរសៀល\r\nរសៀល</div>\r\n<p class=\"text-wrapper-20\">: ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី\r\n: ពិធីក្រុងពាលី\r\n: ពិធីសូត្រមន្ត (ចម្រើនព្រះបរិត្ត)\r\n: ពិធីព្រេនជីដូន ជីតា និងព្រេនគួចចំណងដៃតូច</p>\r\n\r\n</div>\r\n</div>', 'no'),
(205, '_options_', 'field_657c0132bf7b8', 'no'),
(206, 'options_event_description', '<div>\r\n<div style=\"text-align: center;\">ទីតាំងពិធីនៅ មជ្ឈមណ្ឌលសន្និបាត និងពិព័រណ៍អន្តរជាតិជ្រោយចង្វារ ( OCIC អគារ A )</div>\r\n</div>\r\n<p style=\"text-align: center;\">កម្មវិធីថ្ងៃទី១៖ ​ថ្ងៃពុធ ទី២៤ ខែមករា ឆ្នាំ២០២៤</p>\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span></p>\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n<p style=\"text-align: center;\">កម្មវិធីថ្ងៃទី២៖ ​ថ្ងៃព្រហស្បតិ៍ ទី២៥ ខែមករា ឆ្នាំ២០២៤</p>\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span></p>\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #2b608e;\">ម៉ោង ១៣ : ៥០ រសៀល : ជួបជុំភ្ញៀវកិត្តិយសទាំងអស់រៀបចំពិធីក្រុងពាលី</span>\r\n\r\n<span style=\"color: #96afda;\">                                        <span style=\"color: #2b608e;\"> : កំណត់ពិធីរៀង ឬរាប់ផ្លែឈើ, គួច ឬភ្ជាប់ព្រលឹង</span></span>\r\n<p style=\"padding-left: 160px;\"><span style=\"color: #2b608e;\">ទាំង១៩ (បំពាក់វត្ថុអនុស្សាវរីយ៍) ព្រេន ឬសែនជំនូន</span></p>\r\n&nbsp;\r\n\r\n&nbsp;', 'no'),
(207, '_options_event_description', 'field_657c0132bf7b8', 'no'),
(208, 'options_event_description_en', '<p class=\"at-chroy-changva-2\" style=\"text-align: center;\">AT CHROY CHANGVA INTERNATIONAL CONVENTION AND EXHIBITION CENTER ( OCIC BUILDING A )</p>\r\n\r\n<h5 class=\"day-wednesday\" style=\"text-align: center;\"><span class=\"span\">Day </span><span class=\"text-wrapper-23\">1</span> <span class=\"span\">, Wednesday </span><span class=\"text-wrapper-23\">24</span> <span class=\"span\">January </span><span class=\"text-wrapper-23\">2024</span></h5>\r\n<div class=\"label-9\">\r\n<div class=\"label-10\">\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">13:30 pm : Arrival of all distinguished guest</span></p>\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">14:00 pm : Honoring Ancestors &amp; Acclaiming Ceremony</span></p>\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">14:00 pm : Honoring Ancestors &amp; Acclaiming Ceremony</span></p>\r\n<span style=\"color: #2b608e;\">14:00 pm : Honoring Ancestors &amp; Acclaiming Ceremony</span>\r\n\r\n</div>\r\n<div class=\"text-wrapper-24\" style=\"text-align: center;\"><span style=\"color: #2b608e;\">End of Day 1</span></div>\r\n<div>\r\n<div class=\"label-10\">\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">13:30 pm : Arrival of all distinguished guest</span></p>\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">14:00 pm : Honoring Ancestors &amp; Acclaiming Ceremony</span></p>\r\n<p class=\"text-wrapper-19\"><span style=\"color: #2b608e;\">14:00 pm : Honoring Ancestors &amp; Acclaiming Ceremony</span></p>\r\n<span style=\"color: #2b608e;\">14:00 pm : Honoring Ancestors &amp; Acclaiming Ceremony</span>\r\n\r\n</div>\r\n<div class=\"text-wrapper-24\" style=\"text-align: center;\"><span style=\"color: #2b608e;\">End of Day 2</span></div>\r\n</div>\r\n</div>\r\n<div class=\"text-wrapper-25\"></div>', 'no'),
(209, '_options_event_description_en', 'field_657c046579eb8', 'no'),
(221, '_site_transient_timeout_php_check_133413fa91fc050a1c5770fd6e67cbaa', '1703302537', 'no'),
(222, '_site_transient_php_check_133413fa91fc050a1c5770fd6e67cbaa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(230, '_site_transient_timeout_theme_roots', '1702745373', 'no'),
(231, '_site_transient_theme_roots', 'a:1:{s:10:\"invitation\";s:7:\"/themes\";}', 'no');
INSERT INTO `oi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(232, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1702743577;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.2.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.4.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231128\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:37:\"disable-json-api/disable-json-api.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/disable-json-api\";s:4:\"slug\";s:16:\"disable-json-api\";s:6:\"plugin\";s:37:\"disable-json-api/disable-json-api.php\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/disable-json-api/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/disable-json-api.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/disable-json-api/assets/icon-256x256.png?rev=1001011\";s:2:\"1x\";s:69:\"https://ps.w.org/disable-json-api/assets/icon-128x128.png?rev=1001011\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/disable-json-api/assets/banner-1544x500.png?rev=1001011\";s:2:\"1x\";s:71:\"https://ps.w.org/disable-json-api/assets/banner-772x250.png?rev=1001011\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:34:\"wps-hide-login-/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:34:\"wps-hide-login-/wps-hide-login.php\";s:11:\"new_version\";s:6:\"1.9.10\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}}s:7:\"checked\";a:7:{s:37:\"admin-menu-editor-pro/menu-editor.php\";s:6:\"999999\";s:28:\"admin-registration/index.php\";s:3:\"1.0\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.3\";s:35:\"customize-admin-dashboard/index.php\";s:3:\"1.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:37:\"disable-json-api/disable-json-api.php\";s:3:\"1.8\";s:34:\"wps-hide-login-/wps-hide-login.php\";s:6:\"1.9.10\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `oi_postmeta`
--

CREATE TABLE `oi_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oi_postmeta`
--

INSERT INTO `oi_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1702523895:1'),
(11, 7, '_wp_page_template', 'templates/home.php'),
(12, 9, '_edit_last', '1'),
(13, 9, '_edit_lock', '1702626273:1');

-- --------------------------------------------------------

--
-- Table structure for table `oi_posts`
--

CREATE TABLE `oi_posts` (
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
-- Dumping data for table `oi_posts`
--

INSERT INTO `oi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-12-14 01:58:35', '2023-12-14 01:58:35', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-12-14 01:58:35', '2023-12-14 01:58:35', '', 0, 'http://dev.wedding.local/?p=1', 0, 'post', '', 1),
(4, 1, '2023-12-14 01:59:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-12-14 01:59:06', '0000-00-00 00:00:00', '', 0, 'http://dev.wedding.local/?p=4', 0, 'post', '', 0),
(7, 1, '2023-12-14 10:20:30', '2023-12-14 03:20:30', '', 'Invitation', '', 'publish', 'closed', 'closed', '', 'invitation', '', '', '2023-12-14 10:20:30', '2023-12-14 03:20:30', '', 0, 'http://dev.wedding.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-12-14 10:20:30', '2023-12-14 03:20:30', '', 'Invitation', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-12-14 10:20:30', '2023-12-14 03:20:30', '', 7, 'http://dev.wedding.local/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-12-15 14:33:33', '2023-12-15 07:33:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"content\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Event Description', 'event-description', 'publish', 'closed', 'closed', '', 'group_657c011d44663', '', '', '2023-12-15 14:46:55', '2023-12-15 07:46:55', '', 0, 'http://dev.wedding.local/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2023-12-15 14:33:33', '2023-12-15 07:33:33', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Event Description', 'event_description', 'publish', 'closed', 'closed', '', 'field_657c0132bf7b8', '', '', '2023-12-15 14:35:14', '2023-12-15 07:35:14', '', 9, 'http://dev.wedding.local/?post_type=acf-field&#038;p=10', 0, 'acf-field', '', 0),
(11, 1, '2023-12-15 14:46:55', '2023-12-15 07:46:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Event Description EN', 'event_description_en', 'publish', 'closed', 'closed', '', 'field_657c046579eb8', '', '', '2023-12-15 14:46:55', '2023-12-15 07:46:55', '', 9, 'http://dev.wedding.local/?post_type=acf-field&p=11', 1, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oi_termmeta`
--

CREATE TABLE `oi_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oi_terms`
--

CREATE TABLE `oi_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oi_terms`
--

INSERT INTO `oi_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oi_term_relationships`
--

CREATE TABLE `oi_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oi_term_relationships`
--

INSERT INTO `oi_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oi_term_taxonomy`
--

CREATE TABLE `oi_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oi_term_taxonomy`
--

INSERT INTO `oi_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oi_usermeta`
--

CREATE TABLE `oi_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `oi_usermeta`
--

INSERT INTO `oi_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'petter'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'oi_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'oi_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"86e1565510e2830ad244e8d966ed265e166409d48cc7c4fa40d0ceeb0230df98\";a:4:{s:10:\"expiration\";i:1702870535;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36\";s:5:\"login\";i:1702697735;}}'),
(17, 1, 'oi_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"192.168.90.0\";}'),
(19, 1, 'oi_user-settings', 'mfold=o&hidetb=1'),
(20, 1, 'oi_user-settings-time', '1702625825');

-- --------------------------------------------------------

--
-- Table structure for table `oi_users`
--

CREATE TABLE `oi_users` (
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
-- Dumping data for table `oi_users`
--

INSERT INTO `oi_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'petter', '$P$BqhsLb0331I34gGdJQwwhw93zR6HQx/', 'petter', 'symeng.t@bizsolution.com.kh', 'http://dev.wedding.local', '2023-12-14 01:58:35', '', 0, 'petter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oi_commentmeta`
--
ALTER TABLE `oi_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oi_comments`
--
ALTER TABLE `oi_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `oi_links`
--
ALTER TABLE `oi_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `oi_options`
--
ALTER TABLE `oi_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `oi_postmeta`
--
ALTER TABLE `oi_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oi_posts`
--
ALTER TABLE `oi_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `oi_termmeta`
--
ALTER TABLE `oi_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oi_terms`
--
ALTER TABLE `oi_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `oi_term_relationships`
--
ALTER TABLE `oi_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `oi_term_taxonomy`
--
ALTER TABLE `oi_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `oi_usermeta`
--
ALTER TABLE `oi_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `oi_users`
--
ALTER TABLE `oi_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oi_commentmeta`
--
ALTER TABLE `oi_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oi_comments`
--
ALTER TABLE `oi_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oi_links`
--
ALTER TABLE `oi_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oi_options`
--
ALTER TABLE `oi_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `oi_postmeta`
--
ALTER TABLE `oi_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oi_posts`
--
ALTER TABLE `oi_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oi_termmeta`
--
ALTER TABLE `oi_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oi_terms`
--
ALTER TABLE `oi_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oi_term_taxonomy`
--
ALTER TABLE `oi_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oi_usermeta`
--
ALTER TABLE `oi_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oi_users`
--
ALTER TABLE `oi_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
