/*
Navicat MySQL Data Transfer

Source Server         : local-connection
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : bookcitylaravelwp_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-11-22 21:47:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book_l02_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_commentmeta`;
CREATE TABLE `book_l02_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_commentmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `book_l02_comments`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_comments`;
CREATE TABLE `book_l02_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_comments
-- ----------------------------
INSERT INTO `book_l02_comments` VALUES ('1', '1', 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-27 09:38:09', '2020-09-27 09:38:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', '0', '1', '', 'comment', '0', '0');

-- ----------------------------
-- Table structure for `book_l02_links`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_links`;
CREATE TABLE `book_l02_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_links
-- ----------------------------

-- ----------------------------
-- Table structure for `book_l02_options`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_options`;
CREATE TABLE `book_l02_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_options
-- ----------------------------
INSERT INTO `book_l02_options` VALUES ('1', 'siteurl', 'http://bookcity.test/blog', 'yes');
INSERT INTO `book_l02_options` VALUES ('2', 'home', 'http://bookcity.test/blog', 'yes');
INSERT INTO `book_l02_options` VALUES ('3', 'blogname', 'BookCity', 'yes');
INSERT INTO `book_l02_options` VALUES ('4', 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO `book_l02_options` VALUES ('5', 'users_can_register', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('6', 'admin_email', 'devmin@test.com', 'yes');
INSERT INTO `book_l02_options` VALUES ('7', 'start_of_week', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('8', 'use_balanceTags', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('9', 'use_smilies', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('10', 'require_name_email', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('11', 'comments_notify', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('12', 'posts_per_rss', '10', 'yes');
INSERT INTO `book_l02_options` VALUES ('13', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('14', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `book_l02_options` VALUES ('15', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `book_l02_options` VALUES ('16', 'mailserver_pass', 'password', 'yes');
INSERT INTO `book_l02_options` VALUES ('17', 'mailserver_port', '110', 'yes');
INSERT INTO `book_l02_options` VALUES ('18', 'default_category', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('19', 'default_comment_status', 'open', 'yes');
INSERT INTO `book_l02_options` VALUES ('20', 'default_ping_status', 'open', 'yes');
INSERT INTO `book_l02_options` VALUES ('21', 'default_pingback_flag', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('22', 'posts_per_page', '10', 'yes');
INSERT INTO `book_l02_options` VALUES ('23', 'date_format', 'F j, Y', 'yes');
INSERT INTO `book_l02_options` VALUES ('24', 'time_format', 'g:i a', 'yes');
INSERT INTO `book_l02_options` VALUES ('25', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `book_l02_options` VALUES ('26', 'comment_moderation', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('27', 'moderation_notify', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('28', 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `book_l02_options` VALUES ('29', 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes');
INSERT INTO `book_l02_options` VALUES ('30', 'hack_file', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('31', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `book_l02_options` VALUES ('32', 'moderation_keys', '', 'no');
INSERT INTO `book_l02_options` VALUES ('33', 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('34', 'category_base', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `book_l02_options` VALUES ('36', 'comment_max_links', '2', 'yes');
INSERT INTO `book_l02_options` VALUES ('37', 'gmt_offset', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('38', 'default_email_category', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('39', 'recently_edited', '', 'no');
INSERT INTO `book_l02_options` VALUES ('40', 'template', 'bookcity', 'yes');
INSERT INTO `book_l02_options` VALUES ('41', 'stylesheet', 'bookcity', 'yes');
INSERT INTO `book_l02_options` VALUES ('42', 'comment_registration', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('43', 'html_type', 'text/html', 'yes');
INSERT INTO `book_l02_options` VALUES ('44', 'use_trackback', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('45', 'default_role', 'subscriber', 'yes');
INSERT INTO `book_l02_options` VALUES ('46', 'db_version', '48748', 'yes');
INSERT INTO `book_l02_options` VALUES ('47', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('48', 'upload_path', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('49', 'blog_public', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('50', 'default_link_category', '2', 'yes');
INSERT INTO `book_l02_options` VALUES ('51', 'show_on_front', 'posts', 'yes');
INSERT INTO `book_l02_options` VALUES ('52', 'tag_base', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('53', 'show_avatars', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('54', 'avatar_rating', 'G', 'yes');
INSERT INTO `book_l02_options` VALUES ('55', 'upload_url_path', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('56', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `book_l02_options` VALUES ('57', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `book_l02_options` VALUES ('58', 'thumbnail_crop', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('59', 'medium_size_w', '300', 'yes');
INSERT INTO `book_l02_options` VALUES ('60', 'medium_size_h', '300', 'yes');
INSERT INTO `book_l02_options` VALUES ('61', 'avatar_default', 'mystery', 'yes');
INSERT INTO `book_l02_options` VALUES ('62', 'large_size_w', '1024', 'yes');
INSERT INTO `book_l02_options` VALUES ('63', 'large_size_h', '1024', 'yes');
INSERT INTO `book_l02_options` VALUES ('64', 'image_default_link_type', 'none', 'yes');
INSERT INTO `book_l02_options` VALUES ('65', 'image_default_size', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('66', 'image_default_align', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('67', 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('68', 'close_comments_days_old', '14', 'yes');
INSERT INTO `book_l02_options` VALUES ('69', 'thread_comments', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('70', 'thread_comments_depth', '5', 'yes');
INSERT INTO `book_l02_options` VALUES ('71', 'page_comments', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('72', 'comments_per_page', '50', 'yes');
INSERT INTO `book_l02_options` VALUES ('73', 'default_comments_page', 'newest', 'yes');
INSERT INTO `book_l02_options` VALUES ('74', 'comment_order', 'asc', 'yes');
INSERT INTO `book_l02_options` VALUES ('75', 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('76', 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('77', 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('78', 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('79', 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `book_l02_options` VALUES ('80', 'timezone_string', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('81', 'page_for_posts', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('82', 'page_on_front', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('83', 'default_post_format', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('84', 'link_manager_enabled', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('85', 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('86', 'site_icon', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('87', 'medium_large_size_w', '768', 'yes');
INSERT INTO `book_l02_options` VALUES ('88', 'medium_large_size_h', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('89', 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO `book_l02_options` VALUES ('90', 'show_comments_cookies_opt_in', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('91', 'admin_email_lifespan', '1616751479', 'yes');
INSERT INTO `book_l02_options` VALUES ('92', 'disallowed_keys', '', 'no');
INSERT INTO `book_l02_options` VALUES ('93', 'comment_previously_approved', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('94', 'auto_plugin_theme_update_emails', 'a:0:{}', 'no');
INSERT INTO `book_l02_options` VALUES ('95', 'initial_db_version', '48748', 'yes');
INSERT INTO `book_l02_options` VALUES ('96', 'book_L02_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes');
INSERT INTO `book_l02_options` VALUES ('97', 'fresh_site', '0', 'yes');
INSERT INTO `book_l02_options` VALUES ('98', 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('99', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('100', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('101', 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('102', 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('103', 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('104', 'cron', 'a:7:{i:1601365093;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601372291;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601372293;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601372319;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601372323;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601890691;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('105', 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('106', 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('107', 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('108', 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('109', 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('110', 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('111', 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('112', 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('113', 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `book_l02_options` VALUES ('115', 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('116', '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601364945;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `book_l02_options` VALUES ('117', 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601200071;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes');
INSERT INTO `book_l02_options` VALUES ('119', '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601364945;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `book_l02_options` VALUES ('122', '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601364945;s:7:\"checked\";a:4:{s:8:\"bookcity\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `book_l02_options` VALUES ('123', '_site_transient_timeout_browser_ce4e9e986b0fbc713624d54b83c36283', '1601804321', 'no');
INSERT INTO `book_l02_options` VALUES ('124', '_site_transient_browser_ce4e9e986b0fbc713624d54b83c36283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `book_l02_options` VALUES ('125', '_site_transient_timeout_php_check_09014c84783552a9b699e7274e96a72d', '1601804322', 'no');
INSERT INTO `book_l02_options` VALUES ('126', '_site_transient_php_check_09014c84783552a9b699e7274e96a72d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');
INSERT INTO `book_l02_options` VALUES ('130', 'can_compress_scripts', '1', 'no');
INSERT INTO `book_l02_options` VALUES ('145', 'finished_updating_comment_type', '1', 'yes');
INSERT INTO `book_l02_options` VALUES ('146', 'current_theme', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('147', 'theme_mods_bookcity', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes');
INSERT INTO `book_l02_options` VALUES ('148', 'theme_switched', '', 'yes');
INSERT INTO `book_l02_options` VALUES ('152', 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('156', 'category_children', 'a:0:{}', 'yes');
INSERT INTO `book_l02_options` VALUES ('173', '_site_transient_timeout_theme_roots', '1601366742', 'no');
INSERT INTO `book_l02_options` VALUES ('174', '_site_transient_theme_roots', 'a:1:{s:8:\"bookcity\";s:7:\"/themes\";}', 'no');
INSERT INTO `book_l02_options` VALUES ('175', '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":10,\"critical\":0}', 'yes');

-- ----------------------------
-- Table structure for `book_l02_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_postmeta`;
CREATE TABLE `book_l02_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_postmeta
-- ----------------------------
INSERT INTO `book_l02_postmeta` VALUES ('1', '2', '_wp_page_template', 'default');
INSERT INTO `book_l02_postmeta` VALUES ('2', '3', '_wp_page_template', 'default');
INSERT INTO `book_l02_postmeta` VALUES ('3', '5', '_edit_lock', '1601201559:1');
INSERT INTO `book_l02_postmeta` VALUES ('4', '6', '_edit_lock', '1601201609:1');
INSERT INTO `book_l02_postmeta` VALUES ('5', '7', '_edit_lock', '1601202416:1');
INSERT INTO `book_l02_postmeta` VALUES ('16', '14', '_wp_attached_file', '2020/09/cameron-venti-fqMC-PcCs7o-unsplash-scaled.jpg');
INSERT INTO `book_l02_postmeta` VALUES ('17', '14', '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1786;s:6:\"height\";i:2560;s:4:\"file\";s:53:\"2020/09/cameron-venti-fqMC-PcCs7o-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"cameron-venti-fqMC-PcCs7o-unsplash-209x300.jpg\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"cameron-venti-fqMC-PcCs7o-unsplash-714x1024.jpg\";s:5:\"width\";i:714;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"cameron-venti-fqMC-PcCs7o-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"cameron-venti-fqMC-PcCs7o-unsplash-768x1101.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1101;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"cameron-venti-fqMC-PcCs7o-unsplash-1071x1536.jpg\";s:5:\"width\";i:1071;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"cameron-venti-fqMC-PcCs7o-unsplash-1429x2048.jpg\";s:5:\"width\";i:1429;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"cameron-venti-fqMC-PcCs7o-unsplash.jpg\";}');
INSERT INTO `book_l02_postmeta` VALUES ('18', '15', '_edit_lock', '1601204391:1');
INSERT INTO `book_l02_postmeta` VALUES ('19', '16', '_wp_attached_file', '2020/09/cameron-venti-fqMC-PcCs7o-unsplash-1-scaled.jpg');
INSERT INTO `book_l02_postmeta` VALUES ('20', '16', '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1786;s:6:\"height\";i:2560;s:4:\"file\";s:55:\"2020/09/cameron-venti-fqMC-PcCs7o-unsplash-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"cameron-venti-fqMC-PcCs7o-unsplash-1-209x300.jpg\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"cameron-venti-fqMC-PcCs7o-unsplash-1-714x1024.jpg\";s:5:\"width\";i:714;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"cameron-venti-fqMC-PcCs7o-unsplash-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"cameron-venti-fqMC-PcCs7o-unsplash-1-768x1101.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1101;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"cameron-venti-fqMC-PcCs7o-unsplash-1-1071x1536.jpg\";s:5:\"width\";i:1071;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"cameron-venti-fqMC-PcCs7o-unsplash-1-1429x2048.jpg\";s:5:\"width\";i:1429;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"cameron-venti-fqMC-PcCs7o-unsplash-1.jpg\";}');
INSERT INTO `book_l02_postmeta` VALUES ('25', '19', '_edit_lock', '1601204605:1');
INSERT INTO `book_l02_postmeta` VALUES ('26', '20', '_wp_attached_file', '2020/09/clement-m-igX2deuD9lc-unsplash-scaled.jpg');
INSERT INTO `book_l02_postmeta` VALUES ('27', '20', '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:49:\"2020/09/clement-m-igX2deuD9lc-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"clement-m-igX2deuD9lc-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"clement-m-igX2deuD9lc-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"clement-m-igX2deuD9lc-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"clement-m-igX2deuD9lc-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:44:\"clement-m-igX2deuD9lc-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:44:\"clement-m-igX2deuD9lc-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:34:\"clement-m-igX2deuD9lc-unsplash.jpg\";}');
INSERT INTO `book_l02_postmeta` VALUES ('32', '19', '_wp_trash_meta_status', 'publish');
INSERT INTO `book_l02_postmeta` VALUES ('33', '19', '_wp_trash_meta_time', '1601204758');
INSERT INTO `book_l02_postmeta` VALUES ('34', '19', '_wp_desired_post_slug', '19');
INSERT INTO `book_l02_postmeta` VALUES ('35', '15', '_wp_trash_meta_status', 'publish');
INSERT INTO `book_l02_postmeta` VALUES ('36', '15', '_wp_trash_meta_time', '1601204758');
INSERT INTO `book_l02_postmeta` VALUES ('37', '15', '_wp_desired_post_slug', 'my-post');
INSERT INTO `book_l02_postmeta` VALUES ('38', '23', '_edit_lock', '1601205461:1');
INSERT INTO `book_l02_postmeta` VALUES ('39', '24', '_wp_attached_file', '2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-scaled.jpg');
INSERT INTO `book_l02_postmeta` VALUES ('40', '24', '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1914;s:6:\"height\";i:2560;s:4:\"file\";s:57:\"2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-765x1024.jpg\";s:5:\"width\";i:765;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-768x1027.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1027;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1148x1536.jpg\";s:5:\"width\";i:1148;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1531x2048.jpg\";s:5:\"width\";i:1531;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash.jpg\";}');
INSERT INTO `book_l02_postmeta` VALUES ('44', '26', '_wp_attached_file', '2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-scaled.jpg');
INSERT INTO `book_l02_postmeta` VALUES ('45', '26', '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1914;s:6:\"height\";i:2560;s:4:\"file\";s:59:\"2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-224x300.jpg\";s:5:\"width\";i:224;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-765x1024.jpg\";s:5:\"width\";i:765;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-768x1027.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1027;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:54:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-1148x1536.jpg\";s:5:\"width\";i:1148;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:54:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1-1531x2048.jpg\";s:5:\"width\";i:1531;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1.jpg\";}');
INSERT INTO `book_l02_postmeta` VALUES ('54', '23', '_thumbnail_id', '20');
INSERT INTO `book_l02_postmeta` VALUES ('55', '23', '_wp_trash_meta_status', 'publish');
INSERT INTO `book_l02_postmeta` VALUES ('56', '23', '_wp_trash_meta_time', '1601205616');
INSERT INTO `book_l02_postmeta` VALUES ('57', '23', '_wp_desired_post_slug', 'update');

-- ----------------------------
-- Table structure for `book_l02_posts`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_posts`;
CREATE TABLE `book_l02_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_posts
-- ----------------------------
INSERT INTO `book_l02_posts` VALUES ('0', '1', '2020-09-27 09:38:09', '2020-09-27 09:38:09', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://bookcity.test/blog/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-27 09:38:09', '2020-09-27 09:38:09', '', '0', 'http://bookcity.test/blog/?page_id=2', '0', 'page', '', '0');
INSERT INTO `book_l02_posts` VALUES ('1', '1', '2020-09-27 09:38:09', '2020-09-27 09:38:09', '<!-- wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-27 09:38:09', '2020-09-27 09:38:09', '', '0', 'http://bookcity.test/blog/?p=1', '0', 'post', '', '1');
INSERT INTO `book_l02_posts` VALUES ('3', '1', '2020-09-27 09:38:09', '2020-09-27 09:38:09', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://bookcity.test/blog.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-27 09:38:09', '2020-09-27 09:38:09', '', '0', 'http://bookcity.test/blog/?page_id=3', '0', 'page', '', '0');
INSERT INTO `book_l02_posts` VALUES ('4', '1', '2020-09-27 09:38:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-27 09:38:42', '0000-00-00 00:00:00', '', '0', 'http://bookcity.test/blog/?p=4', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('5', '1', '2020-09-27 10:14:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-27 10:14:43', '0000-00-00 00:00:00', '', '0', 'http://bookcity.test/blog/?p=5', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('6', '1', '2020-09-27 10:15:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-27 10:15:07', '0000-00-00 00:00:00', '', '0', 'http://bookcity.test/blog/?p=6', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('7', '1', '2020-09-27 10:17:03', '2020-09-27 10:17:03', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"background\":\"#ba0c49\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:2px;background-color:#ba0c49;color:#fffffa\">Download now</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"text\":\"#ba0c49\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color\" style=\"border-radius:2px;color:#ba0c49\">About Cervantes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'News', '', 'publish', 'open', 'open', '', 'news', '', '', '2020-09-27 10:29:04', '2020-09-27 10:29:04', '', '0', 'http://bookcity.test/blog/?p=7', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('8', '1', '2020-09-27 10:17:03', '2020-09-27 10:17:03', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently</p>\n<!-- /wp:paragraph -->', 'News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-27 10:17:03', '2020-09-27 10:17:03', '', '7', 'http://bookcity.test/blog/2020/09/27/7-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('9', '1', '2020-09-27 10:18:37', '2020-09-27 10:18:37', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently</p>\n<!-- /wp:paragraph -->', 'News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-27 10:18:37', '2020-09-27 10:18:37', '', '7', 'http://bookcity.test/blog/2020/09/27/7-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('10', '1', '2020-09-27 10:21:16', '2020-09-27 10:21:16', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently</p>\n<!-- /wp:paragraph -->', 'Untitled Reusable Block', '', 'publish', 'closed', 'closed', '', 'untitled-reusable-block', '', '', '2020-09-27 10:21:16', '2020-09-27 10:21:16', '', '0', 'http://bookcity.test/blog/2020/09/27/untitled-reusable-block/', '0', 'wp_block', '', '0');
INSERT INTO `book_l02_posts` VALUES ('11', '1', '2020-09-27 10:22:05', '2020-09-27 10:22:05', '<!-- wp:block {\"ref\":10} /-->', 'News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-27 10:22:05', '2020-09-27 10:22:05', '', '7', 'http://bookcity.test/blog/2020/09/27/7-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('12', '1', '2020-09-27 10:25:10', '2020-09-27 10:25:10', '<!-- wp:block {\"ref\":10} /-->\n\n<!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"background\":\"#ba0c49\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:2px;background-color:#ba0c49;color:#fffffa\">Download now</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"text\":\"#ba0c49\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color\" style=\"border-radius:2px;color:#ba0c49\">About Cervantes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-27 10:25:10', '2020-09-27 10:25:10', '', '7', 'http://bookcity.test/blog/2020/09/27/7-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('13', '1', '2020-09-27 10:29:04', '2020-09-27 10:29:04', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"background\":\"#ba0c49\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:2px;background-color:#ba0c49;color:#fffffa\">Download now</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"text\":\"#ba0c49\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color\" style=\"border-radius:2px;color:#ba0c49\">About Cervantes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->', 'News', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-09-27 10:29:04', '2020-09-27 10:29:04', '', '7', 'http://bookcity.test/blog/2020/09/27/7-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('14', '1', '2020-09-27 10:29:33', '2020-09-27 10:29:33', '', 'cameron-venti-fqMC-PcCs7o-unsplash', '', 'inherit', 'open', 'closed', '', 'cameron-venti-fqmc-pccs7o-unsplash', '', '', '2020-09-27 10:29:33', '2020-09-27 10:29:33', '', '0', 'http://bookcity.test/blog/wp-content/uploads/2020/09/cameron-venti-fqMC-PcCs7o-unsplash.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `book_l02_posts` VALUES ('15', '1', '2020-09-27 10:55:33', '2020-09-27 10:55:33', '<!-- wp:image {\"id\":16,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/cameron-venti-fqMC-PcCs7o-unsplash-1-714x1024.jpg\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>dddddddddddddddddddddddddddddddddddjjjdjdjdjdjdjdj</p>\n<!-- /wp:paragraph -->', 'My Post', '', 'trash', 'open', 'open', '', 'my-post__trashed', '', '', '2020-09-27 11:05:58', '2020-09-27 11:05:58', '', '0', 'http://bookcity.test/blog/?p=15', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('16', '1', '2020-09-27 10:55:08', '2020-09-27 10:55:08', '', 'cameron-venti-fqMC-PcCs7o-unsplash-1', '', 'inherit', 'open', 'closed', '', 'cameron-venti-fqmc-pccs7o-unsplash-1', '', '', '2020-09-27 10:55:08', '2020-09-27 10:55:08', '', '15', 'http://bookcity.test/blog/wp-content/uploads/2020/09/cameron-venti-fqMC-PcCs7o-unsplash-1.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `book_l02_posts` VALUES ('17', '1', '2020-09-27 10:55:33', '2020-09-27 10:55:33', '<!-- wp:image {\"id\":16,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/cameron-venti-fqMC-PcCs7o-unsplash-1-714x1024.jpg\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image -->', 'My Post', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-27 10:55:33', '2020-09-27 10:55:33', '', '15', 'http://bookcity.test/blog/2020/09/27/15-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('18', '1', '2020-09-27 10:57:51', '2020-09-27 10:57:51', '<!-- wp:image {\"id\":16,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/cameron-venti-fqMC-PcCs7o-unsplash-1-714x1024.jpg\" alt=\"\" class=\"wp-image-16\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>dddddddddddddddddddddddddddddddddddjjjdjdjdjdjdjdj</p>\n<!-- /wp:paragraph -->', 'My Post', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-27 10:57:51', '2020-09-27 10:57:51', '', '15', 'http://bookcity.test/blog/2020/09/27/15-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('19', '1', '2020-09-27 11:04:36', '2020-09-27 11:04:36', '<!-- wp:image {\"id\":20,\"sizeSlug\":\"thumbnail\"} -->\n<figure class=\"wp-block-image size-thumbnail\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/clement-m-igX2deuD9lc-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-20\"/><figcaption>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"background\":\"#ba0c49\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:2px;background-color:#ba0c49;color:#fffffa\">Download now</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"text\":\"#ba0c49\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color\" style=\"border-radius:2px;color:#ba0c49\">About Cervantes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:heading -->\n<h2>kkkkkkkkkkkkkkkkkkkk</h2>\n<!-- /wp:heading -->', '', '', 'trash', 'open', 'open', '', '19__trashed', '', '', '2020-09-27 11:05:58', '2020-09-27 11:05:58', '', '0', 'http://bookcity.test/blog/?p=19', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('20', '1', '2020-09-27 11:02:48', '2020-09-27 11:02:48', '', 'clement-m-igX2deuD9lc-unsplash', '', 'inherit', 'open', 'closed', '', 'clement-m-igx2deud9lc-unsplash', '', '', '2020-09-27 11:02:48', '2020-09-27 11:02:48', '', '19', 'http://bookcity.test/blog/wp-content/uploads/2020/09/clement-m-igX2deuD9lc-unsplash.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `book_l02_posts` VALUES ('21', '1', '2020-09-27 11:04:36', '2020-09-27 11:04:36', '<!-- wp:image {\"id\":20,\"sizeSlug\":\"thumbnail\"} -->\n<figure class=\"wp-block-image size-thumbnail\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/clement-m-igX2deuD9lc-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-20\"/><figcaption>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</figcaption></figure>\n<!-- /wp:image -->', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-27 11:04:36', '2020-09-27 11:04:36', '', '19', 'http://bookcity.test/blog/2020/09/27/19-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('22', '1', '2020-09-27 11:05:32', '2020-09-27 11:05:32', '<!-- wp:image {\"id\":20,\"sizeSlug\":\"thumbnail\"} -->\n<figure class=\"wp-block-image size-thumbnail\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/clement-m-igX2deuD9lc-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-20\"/><figcaption>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:buttons {\"align\":\"center\"} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"background\":\"#ba0c49\",\"text\":\"#fffffa\"}}} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:2px;background-color:#ba0c49;color:#fffffa\">Download now</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"borderRadius\":2,\"style\":{\"color\":{\"text\":\"#ba0c49\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color\" style=\"border-radius:2px;color:#ba0c49\">About Cervantes</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:heading -->\n<h2>kkkkkkkkkkkkkkkkkkkk</h2>\n<!-- /wp:heading -->', '', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-27 11:05:32', '2020-09-27 11:05:32', '', '19', 'http://bookcity.test/blog/2020/09/27/19-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('23', '1', '2020-09-27 11:08:31', '2020-09-27 11:08:31', '<!-- wp:media-text {\"mediaId\":24,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-24\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"className\":\"blog-st\"} -->\n<p class=\"blog-st\">jjjjjjjjjjjjjjjjjdkdkdjdjdjjdjdjdjddjdjdkjdkjdkdjdjdkjddjkdjd</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Update', '', 'trash', 'open', 'open', '', 'update__trashed', '', '', '2020-09-27 11:20:16', '2020-09-27 11:20:16', '', '0', 'http://bookcity.test/blog/?p=23', '0', 'post', '', '0');
INSERT INTO `book_l02_posts` VALUES ('24', '1', '2020-09-27 11:06:45', '2020-09-27 11:06:45', '', 'alkhatab-al-saqri-c8Xe5MT_8CU-unsplash', '', 'inherit', 'open', 'closed', '', 'alkhatab-al-saqri-c8xe5mt_8cu-unsplash', '', '', '2020-09-27 11:06:45', '2020-09-27 11:06:45', '', '23', 'http://bookcity.test/blog/wp-content/uploads/2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `book_l02_posts` VALUES ('25', '1', '2020-09-27 11:08:02', '2020-09-27 11:08:02', '<!-- wp:image {\"id\":24,\"sizeSlug\":\"thumbnail\"} -->\n<figure class=\"wp-block-image size-thumbnail\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-24\"/></figure>\n<!-- /wp:image -->', 'Update', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-09-27 11:08:02', '2020-09-27 11:08:02', '', '23', 'http://bookcity.test/blog/2020/09/27/23-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('26', '1', '2020-09-27 11:10:38', '2020-09-27 11:10:38', '', 'alkhatab-al-saqri-c8Xe5MT_8CU-unsplash', '', 'inherit', 'open', 'closed', '', 'alkhatab-al-saqri-c8xe5mt_8cu-unsplash-2', '', '', '2020-09-27 11:10:38', '2020-09-27 11:10:38', '', '23', 'http://bookcity.test/blog/wp-content/uploads/2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-1.jpg', '0', 'attachment', 'image/jpeg', '0');
INSERT INTO `book_l02_posts` VALUES ('28', '1', '2020-09-27 11:11:01', '2020-09-27 11:11:01', '<!-- wp:image {\"id\":24,\"width\":150,\"height\":150,\"sizeSlug\":\"thumbnail\"} -->\n<figure class=\"wp-block-image size-thumbnail is-resized\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-24\" width=\"150\" height=\"150\"/></figure>\n<!-- /wp:image -->', 'Update', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-09-27 11:11:01', '2020-09-27 11:11:01', '', '23', 'http://bookcity.test/blog/2020/09/27/23-revision-v1/', '0', 'revision', '', '0');
INSERT INTO `book_l02_posts` VALUES ('29', '1', '2020-09-27 11:14:12', '2020-09-27 11:14:12', '<!-- wp:media-text {\"mediaId\":24,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://bookcity.test/blog/wp-content/uploads/2020/09/alkhatab-al-saqri-c8Xe5MT_8CU-unsplash-150x150.jpg\" alt=\"\" class=\"wp-image-24\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"className\":\"blog-st\"} -->\n<p class=\"blog-st\">jjjjjjjjjjjjjjjjjdkdkdjdjdjjdjdjdjddjdjdkjdkjdkdjdjdkjddjkdjd</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Update', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-09-27 11:14:12', '2020-09-27 11:14:12', '', '23', 'http://bookcity.test/blog/2020/09/27/23-revision-v1/', '0', 'revision', '', '0');

-- ----------------------------
-- Table structure for `book_l02_termmeta`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_termmeta`;
CREATE TABLE `book_l02_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_termmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `book_l02_terms`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_terms`;
CREATE TABLE `book_l02_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_terms
-- ----------------------------
INSERT INTO `book_l02_terms` VALUES ('1', 'Uncategorized', 'uncategorized', '0');

-- ----------------------------
-- Table structure for `book_l02_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_term_relationships`;
CREATE TABLE `book_l02_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_term_relationships
-- ----------------------------
INSERT INTO `book_l02_term_relationships` VALUES ('1', '1', '0');
INSERT INTO `book_l02_term_relationships` VALUES ('7', '1', '0');
INSERT INTO `book_l02_term_relationships` VALUES ('15', '1', '0');
INSERT INTO `book_l02_term_relationships` VALUES ('19', '1', '0');
INSERT INTO `book_l02_term_relationships` VALUES ('23', '1', '0');

-- ----------------------------
-- Table structure for `book_l02_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_term_taxonomy`;
CREATE TABLE `book_l02_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_term_taxonomy
-- ----------------------------
INSERT INTO `book_l02_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '2');

-- ----------------------------
-- Table structure for `book_l02_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_usermeta`;
CREATE TABLE `book_l02_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_usermeta
-- ----------------------------
INSERT INTO `book_l02_usermeta` VALUES ('1', '1', 'nickname', 'devmin');
INSERT INTO `book_l02_usermeta` VALUES ('2', '1', 'first_name', '');
INSERT INTO `book_l02_usermeta` VALUES ('3', '1', 'last_name', '');
INSERT INTO `book_l02_usermeta` VALUES ('4', '1', 'description', '');
INSERT INTO `book_l02_usermeta` VALUES ('5', '1', 'rich_editing', 'true');
INSERT INTO `book_l02_usermeta` VALUES ('6', '1', 'syntax_highlighting', 'true');
INSERT INTO `book_l02_usermeta` VALUES ('7', '1', 'comment_shortcuts', 'false');
INSERT INTO `book_l02_usermeta` VALUES ('8', '1', 'admin_color', 'modern');
INSERT INTO `book_l02_usermeta` VALUES ('9', '1', 'use_ssl', '0');
INSERT INTO `book_l02_usermeta` VALUES ('10', '1', 'show_admin_bar_front', 'true');
INSERT INTO `book_l02_usermeta` VALUES ('11', '1', 'locale', '');
INSERT INTO `book_l02_usermeta` VALUES ('12', '1', 'book_L02_capabilities', 'a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `book_l02_usermeta` VALUES ('13', '1', 'book_L02_user_level', '10');
INSERT INTO `book_l02_usermeta` VALUES ('14', '1', 'dismissed_wp_pointers', '');
INSERT INTO `book_l02_usermeta` VALUES ('15', '1', 'show_welcome_panel', '1');
INSERT INTO `book_l02_usermeta` VALUES ('16', '1', 'session_tokens', 'a:1:{s:64:\"8da26f166966c48df9eec1fc9eb48c96b77af34103a09aa0b8efac1dba07a27c\";a:4:{s:10:\"expiration\";i:1602409119;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601199519;}}');
INSERT INTO `book_l02_usermeta` VALUES ('17', '1', 'book_L02_dashboard_quick_press_last_post_id', '4');
INSERT INTO `book_l02_usermeta` VALUES ('18', '1', 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `book_l02_usermeta` VALUES ('19', '1', 'book_L02_user-settings', 'libraryContent=browse');
INSERT INTO `book_l02_usermeta` VALUES ('20', '1', 'book_L02_user-settings-time', '1601205603');

-- ----------------------------
-- Table structure for `book_l02_users`
-- ----------------------------
DROP TABLE IF EXISTS `book_l02_users`;
CREATE TABLE `book_l02_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of book_l02_users
-- ----------------------------
INSERT INTO `book_l02_users` VALUES ('1', 'devmin', '$P$BIS6jeCS6Y0PDZ878DNU.GqCaoS.Uu.', 'devmin', 'devmin@test.com', 'http://bookcity.test/blog', '2020-09-27 09:38:07', '', '0', 'devmin');
