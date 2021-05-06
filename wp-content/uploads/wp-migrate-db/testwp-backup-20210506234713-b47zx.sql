# WordPress MySQL database migration
#
# Generated: Thursday 6. May 2021 23:47 UTC
# Hostname: localhost
# Database: `testwp`
# URL: //localhost/testwp
# Path: C:\\xampp\\htdocs\\testwp
# Tables: wpso_actionscheduler_actions, wpso_actionscheduler_claims, wpso_actionscheduler_groups, wpso_actionscheduler_logs, wpso_commentmeta, wpso_comments, wpso_links, wpso_options, wpso_postmeta, wpso_posts, wpso_term_relationships, wpso_term_taxonomy, wpso_termmeta, wpso_terms, wpso_usermeta, wpso_users, wpso_wc_admin_note_actions, wpso_wc_admin_notes, wpso_wc_category_lookup, wpso_wc_customer_lookup, wpso_wc_download_log, wpso_wc_order_coupon_lookup, wpso_wc_order_product_lookup, wpso_wc_order_stats, wpso_wc_order_tax_lookup, wpso_wc_product_meta_lookup, wpso_wc_reserved_stock, wpso_wc_tax_rate_classes, wpso_wc_webhooks, wpso_woocommerce_api_keys, wpso_woocommerce_attribute_taxonomies, wpso_woocommerce_downloadable_product_permissions, wpso_woocommerce_log, wpso_woocommerce_order_itemmeta, wpso_woocommerce_order_items, wpso_woocommerce_payment_tokenmeta, wpso_woocommerce_payment_tokens, wpso_woocommerce_sessions, wpso_woocommerce_shipping_zone_locations, wpso_woocommerce_shipping_zone_methods, wpso_woocommerce_shipping_zones, wpso_woocommerce_tax_rate_locations, wpso_woocommerce_tax_rates
# Table Prefix: wpso_
# Post Types: revision, attachment, elementor_library, page, post
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wpso_actionscheduler_actions`
#

DROP TABLE IF EXISTS `wpso_actionscheduler_actions`;


#
# Table structure of table `wpso_actionscheduler_actions`
#

CREATE TABLE `wpso_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_actionscheduler_actions`
#
INSERT INTO `wpso_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2021-05-01 14:49:31', '2021-05-01 14:49:31', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1619880571;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1619880571;s:19:"scheduled_timestamp";i:1619880571;s:9:"timestamp";i:1619880571;}', 1, 1, '2021-05-01 14:49:40', '2021-05-01 14:49:40', 0, NULL),
(7, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-05-01 15:32:38', '2021-05-01 15:32:38', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1619883158;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1619883158;s:19:"scheduled_timestamp";i:1619883158;s:9:"timestamp";i:1619883158;}', 0, 1, '2021-05-01 15:32:40', '2021-05-01 15:32:40', 0, NULL),
(8, 'action_scheduler/migration_hook', 'complete', '2021-05-06 18:36:40', '2021-05-06 18:36:40', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1620326200;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1620326200;s:19:"scheduled_timestamp";i:1620326200;s:9:"timestamp";i:1620326200;}', 1, 1, '2021-05-06 18:37:06', '2021-05-06 18:37:06', 0, NULL) ;

#
# End of data contents of table `wpso_actionscheduler_actions`
# --------------------------------------------------------



#
# Delete any existing table `wpso_actionscheduler_claims`
#

DROP TABLE IF EXISTS `wpso_actionscheduler_claims`;


#
# Table structure of table `wpso_actionscheduler_claims`
#

CREATE TABLE `wpso_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_actionscheduler_claims`
#

#
# End of data contents of table `wpso_actionscheduler_claims`
# --------------------------------------------------------



#
# Delete any existing table `wpso_actionscheduler_groups`
#

DROP TABLE IF EXISTS `wpso_actionscheduler_groups`;


#
# Table structure of table `wpso_actionscheduler_groups`
#

CREATE TABLE `wpso_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_actionscheduler_groups`
#
INSERT INTO `wpso_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration') ;

#
# End of data contents of table `wpso_actionscheduler_groups`
# --------------------------------------------------------



#
# Delete any existing table `wpso_actionscheduler_logs`
#

DROP TABLE IF EXISTS `wpso_actionscheduler_logs`;


#
# Table structure of table `wpso_actionscheduler_logs`
#

CREATE TABLE `wpso_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_actionscheduler_logs`
#
INSERT INTO `wpso_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2021-05-01 14:48:31', '2021-05-01 14:48:31'),
(2, 6, 'action started via Async Request', '2021-05-01 14:49:40', '2021-05-01 14:49:40'),
(3, 6, 'action complete via Async Request', '2021-05-01 14:49:40', '2021-05-01 14:49:40'),
(4, 7, 'action created', '2021-05-01 15:32:38', '2021-05-01 15:32:38'),
(5, 7, 'action started via Async Request', '2021-05-01 15:32:40', '2021-05-01 15:32:40'),
(6, 7, 'action complete via Async Request', '2021-05-01 15:32:40', '2021-05-01 15:32:40'),
(7, 8, 'action created', '2021-05-06 18:35:40', '2021-05-06 18:35:40'),
(8, 8, 'action started via WP Cron', '2021-05-06 18:37:06', '2021-05-06 18:37:06'),
(9, 8, 'action complete via WP Cron', '2021-05-06 18:37:06', '2021-05-06 18:37:06') ;

#
# End of data contents of table `wpso_actionscheduler_logs`
# --------------------------------------------------------



#
# Delete any existing table `wpso_commentmeta`
#

DROP TABLE IF EXISTS `wpso_commentmeta`;


#
# Table structure of table `wpso_commentmeta`
#

CREATE TABLE `wpso_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_commentmeta`
#

#
# End of data contents of table `wpso_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpso_comments`
#

DROP TABLE IF EXISTS `wpso_comments`;


#
# Table structure of table `wpso_comments`
#

CREATE TABLE `wpso_comments` (
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
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_comments`
#
INSERT INTO `wpso_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-01 14:07:40', '2021-05-01 14:07:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wpso_comments`
# --------------------------------------------------------



#
# Delete any existing table `wpso_links`
#

DROP TABLE IF EXISTS `wpso_links`;


#
# Table structure of table `wpso_links`
#

CREATE TABLE `wpso_links` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_links`
#

#
# End of data contents of table `wpso_links`
# --------------------------------------------------------



#
# Delete any existing table `wpso_options`
#

DROP TABLE IF EXISTS `wpso_options`;


#
# Table structure of table `wpso_options`
#

CREATE TABLE `wpso_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=914 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_options`
#
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://localhost/testwp', 'yes'),
(2, 'home', 'https://localhost/testwp', 'yes'),
(3, 'blogname', 'ecommerce', 'yes'),
(4, 'blogdescription', 'gato', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@kaizencommerce.tk', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:162:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=13&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:23:"elementor/elementor.php";i:1;s:29:"versionpress/versionpress.php";i:2;s:27:"woocommerce/woocommerce.php";i:3;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'hello-elementor', 'yes'),
(41, 'stylesheet', 'hello-elementor', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:23:"elementor/elementor.php";a:2:{i:0;s:21:"Elementor\\Maintenance";i:1;s:9:"uninstall";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1635430060', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wpso_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(107, 'cron', 'a:18:{i:1620344849;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1620344911;a:1:{s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1620344916;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1620345590;a:1:{s:44:"vp_commit_frequently_written_entities_hourly";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1620345600;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620346061;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1620348067;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1620353260;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1620377309;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1620396460;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620396468;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620398911;a:1:{s:14:"wc_admin_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620398919;a:2:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620409709;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620427496;a:1:{s:28:"elementor/tracker/send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1620569260;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1621176569;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}s:7:"version";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1619880820;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(120, 'https_detection_errors', 'a:0:{}', 'yes'),
(145, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(157, 'schema-ActionScheduler_StoreSchema', '3.0.1619880509', 'yes'),
(158, 'schema-ActionScheduler_LoggerSchema', '2.0.1619880509', 'yes'),
(161, 'woocommerce_schema_version', '430', 'yes'),
(162, 'woocommerce_store_address', 'Urb los rios calle Misisipi casa nmro 185 Pampanito Trujillo Venezuela', 'yes'),
(163, 'woocommerce_store_address_2', '', 'yes'),
(164, 'woocommerce_store_city', 'Venezuela, Trujillo', 'yes'),
(165, 'woocommerce_default_country', 'VE', 'yes'),
(166, 'woocommerce_store_postcode', '3152', 'yes'),
(167, 'woocommerce_allowed_countries', 'all', 'yes'),
(168, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(169, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(170, 'woocommerce_ship_to_countries', '', 'yes'),
(171, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(172, 'woocommerce_default_customer_address', 'base', 'yes'),
(173, 'woocommerce_calc_taxes', 'no', 'yes'),
(174, 'woocommerce_enable_coupons', 'yes', 'yes'),
(175, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(176, 'woocommerce_currency', 'GBP', 'yes'),
(177, 'woocommerce_currency_pos', 'left', 'yes'),
(178, 'woocommerce_price_thousand_sep', '', 'yes'),
(179, 'woocommerce_price_decimal_sep', '', 'yes'),
(180, 'woocommerce_price_num_decimals', '0', 'yes'),
(181, 'woocommerce_shop_page_id', '6', 'yes'),
(182, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(183, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(184, 'woocommerce_placeholder_image', '5', 'yes'),
(185, 'woocommerce_weight_unit', 'kg', 'yes'),
(186, 'woocommerce_dimension_unit', 'cm', 'yes'),
(187, 'woocommerce_enable_reviews', 'yes', 'yes'),
(188, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(189, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(190, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(191, 'woocommerce_review_rating_required', 'yes', 'no'),
(192, 'woocommerce_manage_stock', 'yes', 'yes'),
(193, 'woocommerce_hold_stock_minutes', '60', 'no'),
(194, 'woocommerce_notify_low_stock', 'yes', 'no'),
(195, 'woocommerce_notify_no_stock', 'yes', 'no'),
(196, 'woocommerce_stock_email_recipient', 'admin@kaizencommerce.tk', 'no'),
(197, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(198, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(199, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(200, 'woocommerce_stock_format', '', 'yes'),
(201, 'woocommerce_file_download_method', 'force', 'no'),
(202, 'woocommerce_downloads_require_login', 'no', 'no'),
(203, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(204, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(205, 'woocommerce_prices_include_tax', 'no', 'yes'),
(206, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(207, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(208, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(209, 'woocommerce_tax_classes', '', 'yes'),
(210, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(211, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(212, 'woocommerce_price_display_suffix', '', 'yes'),
(213, 'woocommerce_tax_total_display', 'itemized', 'no'),
(214, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(215, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(216, 'woocommerce_ship_to_destination', 'billing', 'no'),
(217, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(218, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(219, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(220, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(221, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(222, 'woocommerce_registration_generate_username', 'yes', 'no'),
(223, 'woocommerce_registration_generate_password', 'yes', 'no'),
(224, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(225, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(226, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(227, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(228, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(229, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(230, 'woocommerce_trash_pending_orders', '', 'no'),
(231, 'woocommerce_trash_failed_orders', '', 'no'),
(232, 'woocommerce_trash_cancelled_orders', '', 'no'),
(233, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(234, 'woocommerce_email_from_name', 'ecommerce', 'no'),
(235, 'woocommerce_email_from_address', 'admin@kaizencommerce.tk', 'no'),
(236, 'woocommerce_email_header_image', '', 'no'),
(237, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(238, 'woocommerce_email_base_color', '#96588a', 'no') ;
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(239, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(240, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(241, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(242, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(243, 'woocommerce_cart_page_id', '7', 'no'),
(244, 'woocommerce_checkout_page_id', '8', 'no'),
(245, 'woocommerce_myaccount_page_id', '9', 'no'),
(246, 'woocommerce_terms_page_id', '', 'no'),
(247, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(248, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(249, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(250, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(251, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(252, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(253, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(254, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(255, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(256, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(257, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(258, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(259, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(260, 'woocommerce_api_enabled', 'no', 'yes'),
(261, 'woocommerce_allow_tracking', 'yes', 'no'),
(262, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(263, 'woocommerce_single_image_width', '600', 'yes'),
(264, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(265, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(266, 'woocommerce_demo_store', 'no', 'no'),
(267, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(268, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(269, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(271, 'product_cat_children', 'a:0:{}', 'yes'),
(272, 'default_product_cat', '15', 'yes'),
(275, 'woocommerce_version', '5.2.2', 'yes'),
(276, 'woocommerce_db_version', '5.2.2', 'yes'),
(281, 'action_scheduler_lock_async-request-runner', '1620344879', 'yes'),
(282, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(283, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:"database_prefix";s:32:"fq0Y8ryTflfzkL3RAqwrBt4qtaDmB0g8";}', 'yes'),
(285, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(288, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(290, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(292, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(293, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(294, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(295, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(296, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(299, 'woocommerce_admin_version', '2.1.5', 'yes'),
(300, 'woocommerce_admin_install_timestamp', '1619880511', 'yes'),
(304, 'wc_remote_inbox_notifications_specs', 'a:16:{s:20:"paypal_ppcp_gtm_2021";O:8:"stdClass":8:{s:4:"slug";s:20:"paypal_ppcp_gtm_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:38:"Offer more options with the new PayPal";s:7:"content";s:113:"Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:36:"open_wc_paypal_payments_product_page";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:61:"https://woocommerce.com/products/woocommerce-paypal-payments/";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-04-05 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-04-21 00:00:00";}i:2;O:8:"stdClass":2:{s:4:"type";s:2:"or";s:8:"operands";a:7:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:43:"woocommerce-gateway-paypal-express-checkout";}}i:1;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:30:"woocommerce-gateway-paypal-pro";}}i:2;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:37:"woocommerce-gateway-paypal-pro-hosted";}}i:3;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:35:"woocommerce-gateway-paypal-advanced";}}i:4;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:40:"woocommerce-gateway-paypal-digital-goods";}}i:5;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:31:"woocommerce-paypal-here-gateway";}}i:6;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:44:"woocommerce-gateway-paypal-adaptive-payments";}}}}i:3;O:8:"stdClass":2:{s:4:"type";s:2:"or";s:8:"operands";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:3:"not";s:7:"operand";a:1:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:27:"woocommerce-paypal-payments";}}}}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:27:"woocommerce-paypal-payments";s:7:"version";s:5:"1.2.1";s:8:"operator";s:1:"<";}}}}}s:23:"facebook_pixel_api_2021";O:8:"stdClass":8:{s:4:"slug";s:23:"facebook_pixel_api_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:44:"Improve the performance of your Facebook ads";s:7:"content";s:168:"Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:30:"upgrade_now_facebook_pixel_api";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:11:"Upgrade now";}}s:3:"url";s:67:"plugin-install.php?tab=plugin-information&plugin=&section=changelog";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-02-15 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-02-29 00:00:00";}i:2;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:24:"facebook-for-woocommerce";s:7:"version";s:5:"2.1.4";s:8:"operator";s:2:"<=";}}}s:16:"facebook_ec_2021";O:8:"stdClass":8:{s:4:"slug";s:16:"facebook_ec_2021";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:59:"Sync your product catalog with Facebook to help boost sales";s:7:"content";s:170:"A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:22:"learn_more_facebook_ec";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:42:"https://woocommerce.com/products/facebook/";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":2:{s:4:"type";s:18:"publish_after_time";s:13:"publish_after";s:19:"2021-03-01 00:00:00";}i:1;O:8:"stdClass":2:{s:4:"type";s:19:"publish_before_time";s:14:"publish_before";s:19:"2021-03-15 00:00:00";}i:2;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:24:"facebook-for-woocommerce";}}}}s:37:"ecomm-need-help-setting-up-your-store";O:8:"stdClass":8:{s:4:"slug";s:37:"ecomm-need-help-setting-up-your-store";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:32:"Need help setting up your Store?";s:7:"content";s:350:"Schedule a free 30-min <a href="https://wordpress.com/support/concierge-support/">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:16:"set-up-concierge";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:21:"Schedule free session";}}s:3:"url";s:34:"https://wordpress.com/me/concierge";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:1:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:3:{i:0;s:35:"woocommerce-shipping-australia-post";i:1;s:32:"woocommerce-shipping-canada-post";i:2;s:30:"woocommerce-shipping-royalmail";}}}}s:20:"woocommerce-services";O:8:"stdClass":8:{s:4:"slug";s:20:"woocommerce-services";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"WooCommerce Shipping & Tax";s:7:"content";s:255:"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:84:"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:1:{i:0;s:20:"woocommerce-services";}}i:1;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:"<";s:4:"days";i:2;}}}s:32:"ecomm-unique-shopping-experience";O:8:"stdClass":8:{s:4:"slug";s:32:"ecomm-unique-shopping-experience";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:53:"For a shopping experience as unique as your customers";s:7:"content";s:274:"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:43:"learn-more-ecomm-unique-shopping-experience";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:71:"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":2:{s:4:"type";s:17:"plugins_activated";s:7:"plugins";a:3:{i:0;s:35:"woocommerce-shipping-australia-post";i:1;s:32:"woocommerce-shipping-canada-post";i:2;s:30:"woocommerce-shipping-royalmail";}}i:1;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:"<";s:4:"days";i:2;}}}s:37:"wc-admin-getting-started-in-ecommerce";O:8:"stdClass":8:{s:4:"slug";s:37:"wc-admin-getting-started-in-ecommerce";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:38:"Getting Started in eCommerce - webinar";s:7:"content";s:174:"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:17:"watch-the-webinar";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:17:"Watch the webinar";}}s:3:"url";s:28:"https://youtu.be/V_2XtCOyZ7o";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:12:"setup_client";s:9:"operation";s:2:"!=";s:5:"value";b:1;}i:1;O:8:"stdClass":2:{s:4:"type";s:2:"or";s:8:"operands";a:3:{i:0;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:13:"product_count";s:9:"operation";s:1:"=";s:5:"value";s:1:"0";}i:1;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:7:"revenue";s:9:"operation";s:1:"=";s:5:"value";s:4:"none";}i:2;O:8:"stdClass":4:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:7:"revenue";s:9:"operation";s:1:"=";s:5:"value";s:10:"up-to-2500";}}}}}s:18:"your-first-product";O:8:"stdClass":8:{s:4:"slug";s:18:"your-first-product";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:18:"Your first product";s:7:"content";s:461:"That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:82:"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:12:"stored_state";s:5:"index";s:22:"there_were_no_products";s:9:"operation";s:1:"=";s:5:"value";b:1;}i:1;O:8:"stdClass":4:{s:4:"type";s:12:"stored_state";s:5:"index";s:22:"there_are_now_products";s:9:"operation";s:1:"=";s:5:"value";b:1;}i:2;O:8:"stdClass":3:{s:4:"type";s:13:"product_count";s:9:"operation";s:2:">=";s:5:"value";i:1;}i:3;O:8:"stdClass":5:{s:4:"type";s:18:"onboarding_profile";s:5:"index";s:13:"product_types";s:9:"operation";s:8:"contains";s:5:"value";s:8:"physical";s:7:"default";a:0:{}}}}s:31:"wc-square-apple-pay-boost-sales";O:8:"stdClass":8:{s:4:"slug";s:31:"wc-square-apple-pay-boost-sales";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"Boost sales with Apple Pay";s:7:"content";s:191:"Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:27:"boost-sales-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:97:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:9:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:18:"woocommerce-square";s:8:"operator";s:2:">=";s:7:"version";s:3:"2.3";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:27:"wc_square_apple_pay_enabled";s:5:"value";i:1;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:38:"wc-square-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:4;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:38:"wc-square-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:5;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:6;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:7;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:8;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:38:"wc-square-apple-pay-grow-your-business";O:8:"stdClass":8:{s:4:"slug";s:38:"wc-square-apple-pay-grow-your-business";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:45:"Grow your business with Square and Apple Pay ";s:7:"content";s:178:"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:34:"grow-your-business-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:104:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:9:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:18:"woocommerce-square";s:8:"operator";s:2:">=";s:7:"version";s:3:"2.3";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:27:"wc_square_apple_pay_enabled";s:5:"value";i:2;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:31:"wc-square-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:4;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:31:"wc-square-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:5;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:6;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}i:7;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:8;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:32:"wcpay-apple-pay-is-now-available";O:8:"stdClass":8:{s:4:"slug";s:32:"wcpay-apple-pay-is-now-available";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:53:"Apple Pay is now available with WooCommerce Payments!";s:7:"content";s:397:"Increase your conversion rate by offering a fast and secure checkout with <a href="https://woocommerce.com/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay" target="_blank">Apple Pay</a>®. It’s free to get started with <a href="https://woocommerce.com/payments/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay" target="_blank">WooCommerce Payments</a>.";}}s:7:"actions";a:2:{i:0;O:8:"stdClass":6:{s:4:"name";s:13:"add-apple-pay";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:13:"Add Apple Pay";}}s:3:"url";s:69:"/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}i:1;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:121:"https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:3:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:20:"woocommerce-payments";s:8:"operator";s:2:">=";s:7:"version";s:5:"2.3.0";}i:2;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:26:"wcpay_is_apple_pay_enabled";s:5:"value";b:0;s:7:"default";b:0;s:9:"operation";s:1:"=";}}}s:27:"wcpay-apple-pay-boost-sales";O:8:"stdClass":8:{s:4:"slug";s:27:"wcpay-apple-pay-boost-sales";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:26:"Boost sales with Apple Pay";s:7:"content";s:205:"Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:27:"boost-sales-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:96:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:26:"wcpay_is_apple_pay_enabled";s:5:"value";i:1;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:2;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:34:"wcpay-apple-pay-grow-your-business";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:34:"wcpay-apple-pay-grow-your-business";O:8:"stdClass":8:{s:4:"slug";s:34:"wcpay-apple-pay-grow-your-business";s:4:"type";s:9:"marketing";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:58:"Grow your business with WooCommerce Payments and Apple Pay";s:7:"content";s:178:"Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:34:"grow-your-business-marketing-guide";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:19:"See marketing guide";}}s:3:"url";s:103:"https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:4:{i:0;O:8:"stdClass":4:{s:4:"type";s:14:"plugin_version";s:6:"plugin";s:11:"woocommerce";s:8:"operator";s:2:">=";s:7:"version";s:3:"4.8";}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:26:"wcpay_is_apple_pay_enabled";s:5:"value";i:2;s:7:"default";b:0;s:9:"operation";s:1:"=";}i:2;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:8:"actioned";s:9:"operation";s:2:"!=";}i:3;O:8:"stdClass":4:{s:4:"type";s:11:"note_status";s:9:"note_name";s:27:"wcpay-apple-pay-boost-sales";s:6:"status";s:10:"unactioned";s:9:"operation";s:2:"!=";}}}s:37:"wc-admin-optimizing-the-checkout-flow";O:8:"stdClass":8:{s:4:"slug";s:37:"wc-admin-optimizing-the-checkout-flow";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:28:"Optimizing the checkout flow";s:7:"content";s:171:"It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:28:"optimizing-the-checkout-flow";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:78:"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:">";s:4:"days";i:3;}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:9:"operation";s:8:"contains";s:5:"value";s:8:"payments";s:7:"default";a:0:{}}}}s:39:"wc-admin-first-five-things-to-customize";O:8:"stdClass":8:{s:4:"slug";s:39:"wc-admin-first-five-things-to-customize";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:45:"The first 5 things to customize in your store";s:7:"content";s:173:"Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:10:"learn-more";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:10:"Learn more";}}s:3:"url";s:82:"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:10:"unactioned";}}s:5:"rules";a:2:{i:0;O:8:"stdClass":3:{s:4:"type";s:18:"wcadmin_active_for";s:9:"operation";s:1:">";s:4:"days";i:2;}i:1;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:5:"value";s:9:"NOT EMPTY";s:7:"default";s:9:"NOT EMPTY";s:9:"operation";s:2:"!=";}}}s:32:"wc-payments-qualitative-feedback";O:8:"stdClass":8:{s:4:"slug";s:32:"wc-payments-qualitative-feedback";s:4:"type";s:4:"info";s:6:"status";s:10:"unactioned";s:12:"is_snoozable";i:0;s:6:"source";s:15:"woocommerce.com";s:7:"locales";a:1:{i:0;O:8:"stdClass":3:{s:6:"locale";s:5:"en_US";s:5:"title";s:55:"WooCommerce Payments setup - let us know what you think";s:7:"content";s:146:"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.";}}s:7:"actions";a:1:{i:0;O:8:"stdClass":6:{s:4:"name";s:35:"qualitative-feedback-from-new-users";s:7:"locales";a:1:{i:0;O:8:"stdClass":2:{s:6:"locale";s:5:"en_US";s:5:"label";s:14:"Share feedback";}}s:3:"url";s:39:"https://automattic.survey.fm/wc-pay-new";s:18:"url_is_admin_query";b:0;s:10:"is_primary";b:1;s:6:"status";s:8:"actioned";}}s:5:"rules";a:1:{i:0;O:8:"stdClass":5:{s:4:"type";s:6:"option";s:11:"option_name";s:45:"woocommerce_task_list_tracked_completed_tasks";s:9:"operation";s:8:"contains";s:5:"value";s:20:"woocommerce-payments";s:7:"default";a:0:{}}}}}', 'yes'),
(305, 'wc_remote_inbox_notifications_stored_state', 'O:8:"stdClass":2:{s:22:"there_were_no_products";b:1;s:22:"there_are_now_products";b:0;}', 'yes'),
(307, 'wc_blocks_db_schema_version', '260', 'yes'),
(308, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(324, 'woocommerce_onboarding_profile', 'a:8:{s:12:"setup_client";b:1;s:8:"industry";a:1:{i:0;a:1:{s:4:"slug";s:27:"fashion-apparel-accessories";}}s:13:"product_types";a:2:{i:0;s:8:"physical";i:1;s:9:"downloads";}s:13:"product_count";s:4:"1-10";s:14:"selling_venues";s:2:"no";s:19:"business_extensions";a:0:{}s:5:"theme";s:10:"storefront";s:9:"completed";b:1;}', 'yes'),
(334, 'current_theme', 'Hello Elementor', 'yes'),
(335, 'theme_switched', '', 'yes'),
(336, 'theme_mods_storefront', 'a:3:{s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1620338480;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}}}}', 'yes'),
(337, 'woocommerce_catalog_rows', '4', 'yes'),
(338, 'woocommerce_catalog_columns', '3', 'yes'),
(339, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(341, 'storefront_nux_fresh_site', '0', 'yes'),
(352, 'woocommerce_task_list_tracked_completed_tasks', 'a:2:{i:0;s:13:"store_details";i:1;s:8:"shipping";}', 'yes'),
(372, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(395, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:"suggestions";a:26:{i:0;a:4:{s:4:"slug";s:28:"product-edit-meta-tab-header";s:7:"context";s:28:"product-edit-meta-tab-header";s:5:"title";s:22:"Recommended extensions";s:13:"allow-dismiss";b:0;}i:1;a:6:{s:4:"slug";s:39:"product-edit-meta-tab-footer-browse-all";s:7:"context";s:28:"product-edit-meta-tab-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:2;a:9:{s:4:"slug";s:46:"product-edit-mailchimp-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-mailchimp";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:116:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg";s:5:"title";s:25:"Mailchimp for Memberships";s:4:"copy";s:79:"Completely automate your email lists by syncing membership changes to Mailchimp";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/mailchimp-woocommerce-memberships/";}i:3;a:9:{s:4:"slug";s:19:"product-edit-addons";s:7:"product";s:26:"woocommerce-product-addons";s:14:"show-if-active";a:2:{i:0;s:25:"woocommerce-subscriptions";i:1;s:20:"woocommerce-bookings";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg";s:5:"title";s:15:"Product Add-Ons";s:4:"copy";s:93:"Offer add-ons like gift wrapping, special messages or other special options for your products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-add-ons/";}i:4;a:9:{s:4:"slug";s:46:"product-edit-woocommerce-subscriptions-gifting";s:7:"product";s:33:"woocommerce-subscriptions-gifting";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:116:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg";s:5:"title";s:25:"Gifting for Subscriptions";s:4:"copy";s:70:"Let customers buy subscriptions for others - they\'re the ultimate gift";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/woocommerce-subscriptions-gifting/";}i:5;a:9:{s:4:"slug";s:42:"product-edit-teams-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-for-teams";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:112:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg";s:5:"title";s:21:"Teams for Memberships";s:4:"copy";s:123:"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/teams-woocommerce-memberships/";}i:6;a:8:{s:4:"slug";s:29:"product-edit-variation-images";s:7:"product";s:39:"woocommerce-additional-variation-images";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:118:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg";s:5:"title";s:27:"Additional Variation Images";s:4:"copy";s:72:"Showcase your products in the best light with a image for each variation";s:11:"button-text";s:10:"Learn More";s:3:"url";s:73:"https://woocommerce.com/products/woocommerce-additional-variation-images/";}i:7;a:9:{s:4:"slug";s:47:"product-edit-woocommerce-subscription-downloads";s:7:"product";s:34:"woocommerce-subscription-downloads";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:113:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg";s:5:"title";s:22:"Subscription Downloads";s:4:"copy";s:57:"Give customers special downloads with their subscriptions";s:11:"button-text";s:10:"Learn More";s:3:"url";s:68:"https://woocommerce.com/products/woocommerce-subscription-downloads/";}i:8;a:8:{s:4:"slug";s:31:"product-edit-min-max-quantities";s:7:"product";s:30:"woocommerce-min-max-quantities";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg";s:5:"title";s:18:"Min/Max Quantities";s:4:"copy";s:81:"Specify minimum and maximum allowed product quantities for orders to be completed";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/min-max-quantities/";}i:9;a:8:{s:4:"slug";s:28:"product-edit-name-your-price";s:7:"product";s:27:"woocommerce-name-your-price";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg";s:5:"title";s:15:"Name Your Price";s:4:"copy";s:70:"Let customers pay what they want - useful for donations, tips and more";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/name-your-price/";}i:10;a:8:{s:4:"slug";s:42:"product-edit-woocommerce-one-page-checkout";s:7:"product";s:29:"woocommerce-one-page-checkout";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:108:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg";s:5:"title";s:17:"One Page Checkout";s:4:"copy";s:92:"Don\'t make customers click around - let them choose products, checkout & pay all on one page";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/woocommerce-one-page-checkout/";}i:11;a:4:{s:4:"slug";s:19:"orders-empty-header";s:7:"context";s:24:"orders-list-empty-header";s:5:"title";s:20:"Tools for your store";s:13:"allow-dismiss";b:0;}i:12;a:6:{s:4:"slug";s:30:"orders-empty-footer-browse-all";s:7:"context";s:24:"orders-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:13;a:8:{s:4:"slug";s:19:"orders-empty-zapier";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:18:"woocommerce-zapier";s:4:"icon";s:97:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg";s:5:"title";s:6:"Zapier";s:4:"copy";s:88:"Save time and increase productivity by connecting your store to more than 1000+ services";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/woocommerce-zapier/";}i:14;a:8:{s:4:"slug";s:30:"orders-empty-shipment-tracking";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:29:"woocommerce-shipment-tracking";s:4:"icon";s:108:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg";s:5:"title";s:17:"Shipment Tracking";s:4:"copy";s:86:"Let customers know when their orders will arrive by adding shipment tracking to emails";s:11:"button-text";s:10:"Learn More";s:3:"url";s:51:"https://woocommerce.com/products/shipment-tracking/";}i:15;a:8:{s:4:"slug";s:32:"orders-empty-table-rate-shipping";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:31:"woocommerce-table-rate-shipping";s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg";s:5:"title";s:19:"Table Rate Shipping";s:4:"copy";s:122:"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/table-rate-shipping/";}i:16;a:8:{s:4:"slug";s:40:"orders-empty-shipping-carrier-extensions";s:7:"context";s:22:"orders-list-empty-body";s:4:"icon";s:118:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg";s:5:"title";s:27:"Shipping Carrier Extensions";s:4:"copy";s:116:"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again";s:11:"button-text";s:13:"Find Carriers";s:8:"promoted";s:26:"category-shipping-carriers";s:3:"url";s:99:"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/";}i:17;a:8:{s:4:"slug";s:32:"orders-empty-google-product-feed";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:25:"woocommerce-product-feeds";s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg";s:5:"title";s:19:"Google Product Feed";s:4:"copy";s:76:"Increase sales by letting customers find you when they\'re shopping on Google";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/google-product-feed/";}i:18;a:4:{s:4:"slug";s:35:"products-empty-header-product-types";s:7:"context";s:26:"products-list-empty-header";s:5:"title";s:23:"Other types of products";s:13:"allow-dismiss";b:0;}i:19;a:6:{s:4:"slug";s:32:"products-empty-footer-browse-all";s:7:"context";s:26:"products-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:20;a:8:{s:4:"slug";s:30:"products-empty-product-vendors";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-vendors";s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg";s:5:"title";s:15:"Product Vendors";s:4:"copy";s:47:"Turn your store into a multi-vendor marketplace";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-vendors/";}i:21;a:8:{s:4:"slug";s:26:"products-empty-memberships";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:23:"woocommerce-memberships";s:4:"icon";s:102:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg";s:5:"title";s:11:"Memberships";s:4:"copy";s:76:"Give members access to restricted content or products, for a fee or for free";s:11:"button-text";s:10:"Learn More";s:3:"url";s:57:"https://woocommerce.com/products/woocommerce-memberships/";}i:22;a:9:{s:4:"slug";s:35:"products-empty-woocommerce-deposits";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-deposits";s:14:"show-if-active";a:1:{i:0;s:20:"woocommerce-bookings";}s:4:"icon";s:99:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg";s:5:"title";s:8:"Deposits";s:4:"copy";s:75:"Make it easier for customers to pay by offering a deposit or a payment plan";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-deposits/";}i:23;a:8:{s:4:"slug";s:40:"products-empty-woocommerce-subscriptions";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:25:"woocommerce-subscriptions";s:4:"icon";s:104:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg";s:5:"title";s:13:"Subscriptions";s:4:"copy";s:97:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis";s:11:"button-text";s:10:"Learn More";s:3:"url";s:59:"https://woocommerce.com/products/woocommerce-subscriptions/";}i:24;a:8:{s:4:"slug";s:35:"products-empty-woocommerce-bookings";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-bookings";s:4:"icon";s:99:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg";s:5:"title";s:8:"Bookings";s:4:"copy";s:99:"Allow customers to book appointments, make reservations or rent equipment without leaving your site";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-bookings/";}i:25;a:8:{s:4:"slug";s:30:"products-empty-product-bundles";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-bundles";s:4:"icon";s:106:"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg";s:5:"title";s:15:"Product Bundles";s:4:"copy";s:49:"Offer customizable bundles and assembled products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-bundles/";}}s:7:"updated";i:1619883160;}', 'no'),
(439, 'woocommerce_tracker_last_send', '1619968789', 'yes'),
(526, 'wpmdb_saved_profiles', 'a:1:{i:1;a:4:{s:4:"name";s:6:"Export";s:5:"value";s:995:"{"current_migration":{"connected":false,"intent":"savefile","tables_option":"all","tables_selected":[],"backup_option":"none","backup_tables_selected":[],"post_types_option":"all","post_types_selected":[],"advanced_options_selected":["gzip_file","replace_guids","exclude_transients"],"profile_name":"Export","selected_existing_profile":null,"profile_type":null,"status":"","stages":[],"current_stage":"","stages_complete":[],"running":false,"migration_enabled":false,"migration_id":null},"search_replace":{"standard_search_replace":{"domain":{"search":"","replace":""},"path":{"search":"","replace":""}},"standard_options_enabled":["domain","path"],"standard_search_visible":true,"custom_search_replace":[{"replace_old":"\\/\\/localhost\\/testwp","replace_new":"\\/\\/localhost\\/testwp","id":"ae264d10-bfea-4ee2-bfed-ab6f1fefcd24"},{"replace_old":"C:\\\\xampp\\\\htdocs\\\\testwp","replace_new":"C:\\\\xampp\\\\htdocs\\\\testwp","id":"9c22c564-753e-4ea5-82d2-5a75428f6fe2"}],"custom_search_domain_locked":false}}";s:4:"guid";s:36:"2c9c9c40-b082-4732-a8e2-09ac513d9810";s:4:"date";i:1620311478;}}', 'no'),
(527, 'wpmdb_recent_migrations', '', 'no'),
(531, 'wpmdb_remote_migration_state', '', 'no'),
(542, 'wpmdb_usage', 'a:2:{s:6:"action";s:4:"pull";s:4:"time";i:1620344830;}', 'no'),
(553, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36";}', 'yes'),
(645, 'action_scheduler_migration_status', 'complete', 'yes'),
(753, 'theme_mods_hello-elementor', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(768, 'blog_public', '1', 'yes'),
(769, 'upload_path', '', 'yes'),
(770, 'upload_url_path', '', 'yes'),
(817, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(818, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(820, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:"{{WP_PLUGIN_DIR}}/woocommerce";}', 'yes'),
(821, 'wpmdb_settings', 'a:13:{s:3:"key";s:40:"o/XlghHIkdauDjvbHQ0XqD7Qtf5mfy/mHA5l1Nhk";s:10:"allow_pull";b:1;s:10:"allow_push";b:1;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"whitelist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;s:14:"allow_tracking";N;s:28:"compatibility_plugin_version";s:3:"1.2";}', 'no'),
(823, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(824, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.7.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.7.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.7.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.7.1-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.7.1";s:7:"version";s:5:"5.7.1";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1620340904;s:15:"version_checked";s:5:"5.7.1";s:12:"translations";a:0:{}}', 'no'),
(827, '_site_transient_timeout_theme_roots', '1620342704', 'no'),
(828, '_site_transient_theme_roots', 'a:5:{s:15:"hello-elementor";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no'),
(829, '_transient_timeout__woocommerce_helper_updates', '1620384104', 'no'),
(830, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1620340904;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no') ;
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(831, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1620340936;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:5:"4.1.9";s:23:"elementor/elementor.php";s:5:"3.2.3";s:9:"hello.php";s:5:"1.7.2";s:29:"versionpress/versionpress.php";s:9:"4.0-beta2";s:27:"woocommerce/woocommerce.php";s:5:"5.2.2";s:31:"wp-migrate-db/wp-migrate-db.php";s:3:"2.0";s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";s:6:"1.9.15";}s:8:"response";a:1:{s:31:"wp-migrate-db/wp-migrate-db.php";O:8:"stdClass":12:{s:2:"id";s:27:"w.org/plugins/wp-migrate-db";s:4:"slug";s:13:"wp-migrate-db";s:6:"plugin";s:31:"wp-migrate-db/wp-migrate-db.php";s:11:"new_version";s:5:"2.0.1";s:3:"url";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/wp-migrate-db.2.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889";s:2:"1x";s:66:"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889";s:2:"1x";s:68:"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.7.1";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.9";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.4.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:23:"elementor/elementor.php";O:8:"stdClass":9:{s:2:"id";s:23:"w.org/plugins/elementor";s:4:"slug";s:9:"elementor";s:6:"plugin";s:23:"elementor/elementor.php";s:11:"new_version";s:5:"3.2.3";s:3:"url";s:40:"https://wordpress.org/plugins/elementor/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/elementor.3.2.3.zip";s:5:"icons";a:3:{s:2:"2x";s:62:"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768";s:2:"1x";s:54:"https://ps.w.org/elementor/assets/icon.svg?rev=1426809";s:3:"svg";s:54:"https://ps.w.org/elementor/assets/icon.svg?rev=1426809";}s:7:"banners";a:2:{s:2:"2x";s:65:"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479";s:2:"1x";s:64:"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"5.2.2";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/woocommerce.5.2.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(832, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1620340906;s:7:"checked";a:5:{s:15:"hello-elementor";s:5:"2.3.1";s:10:"storefront";s:5:"3.5.1";s:14:"twentynineteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.7";s:15:"twentytwentyone";s:3:"1.3";}s:8:"response";a:0:{}s:9:"no_update";a:5:{s:15:"hello-elementor";a:6:{s:5:"theme";s:15:"hello-elementor";s:11:"new_version";s:5:"2.3.1";s:3:"url";s:45:"https://wordpress.org/themes/hello-elementor/";s:7:"package";s:63:"https://downloads.wordpress.org/theme/hello-elementor.2.3.1.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:3:"5.6";}s:10:"storefront";a:6:{s:5:"theme";s:10:"storefront";s:11:"new_version";s:5:"3.5.1";s:3:"url";s:40:"https://wordpress.org/themes/storefront/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/storefront.3.5.1.zip";s:8:"requires";b:0;s:12:"requires_php";s:5:"5.6.0";}s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.7";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.3";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
(833, 'wpmdb_schema_version', '2', 'no'),
(834, '_site_transient_timeout_browser_3651f072395347537c74089989c88a66', '1620945708', 'no'),
(835, '_site_transient_browser_3651f072395347537c74089989c88a66', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"90.0.4430.93";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(836, '_site_transient_timeout_php_check_62ad80f1739dc9fe3abaa2e5cae471cd', '1620945710', 'no'),
(837, '_site_transient_php_check_62ad80f1739dc9fe3abaa2e5cae471cd', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(838, '_site_transient_timeout_wpmdb_upgrade_data', '1620384112', 'no'),
(839, '_site_transient_wpmdb_upgrade_data', 'a:5:{s:17:"wp-migrate-db-pro";a:3:{s:7:"version";s:5:"2.0.2";s:6:"tested";s:3:"5.7";s:12:"requires_php";s:3:"5.6";}s:29:"wp-migrate-db-pro-media-files";a:3:{s:7:"version";s:5:"2.0.1";s:6:"tested";s:3:"5.7";s:12:"requires_php";s:3:"5.6";}s:21:"wp-migrate-db-pro-cli";a:3:{s:7:"version";s:3:"1.4";s:6:"tested";s:3:"5.7";s:12:"requires_php";s:3:"5.6";}s:33:"wp-migrate-db-pro-multisite-tools";a:3:{s:7:"version";s:3:"1.3";s:6:"tested";s:3:"5.7";s:12:"requires_php";s:3:"5.6";}s:36:"wp-migrate-db-pro-theme-plugin-files";a:3:{s:7:"version";s:3:"1.1";s:6:"tested";s:3:"5.7";s:12:"requires_php";s:3:"5.6";}}', 'no'),
(840, '_transient_shipping-transient-version', '1620340916', 'yes'),
(841, '_transient_timeout_wc_shipping_method_count_legacy', '1622932916', 'no'),
(842, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1620340916";s:5:"value";i:0;}', 'no') ;
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(843, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1620384117', 'no'),
(844, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:"sandboxed";b:0;s:5:"error";N;s:8:"location";a:1:{s:2:"ip";b:0;}s:6:"events";a:2:{i:0;a:10:{s:4:"type";s:6:"meetup";s:5:"title";s:64:"Demo + Discussion group: Creating and Registering Block Patterns";s:3:"url";s:68:"https://www.meetup.com/learn-wordpress-discussions/events/277669527/";s:6:"meetup";s:27:"Learn WordPress Discussions";s:10:"meetup_url";s:51:"https://www.meetup.com/learn-wordpress-discussions/";s:4:"date";s:19:"2021-05-11 11:00:00";s:8:"end_date";s:19:"2021-05-11 12:00:00";s:20:"start_unix_timestamp";i:1620756000;s:18:"end_unix_timestamp";i:1620759600;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"US";s:8:"latitude";d:37.779998779297;s:9:"longitude";d:-122.41999816895;}}i:1;a:10:{s:4:"type";s:8:"wordcamp";s:5:"title";s:18:"WordCamp Venezuela";s:3:"url";s:36:"https://venezuela.wordcamp.org/2021/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2021-05-06 16:00:00";s:8:"end_date";s:19:"2021-05-07 00:00:00";s:20:"start_unix_timestamp";i:1620331200;s:18:"end_unix_timestamp";i:1620360000;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"VE";s:8:"latitude";d:10.4805937;s:9:"longitude";d:-66.9036063;}}}}', 'no'),
(845, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1620384137', 'no'),
(846, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 32378 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 32473 bytes received</p></div>', 'no'),
(847, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1620351750', 'no'),
(848, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:4872;}s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4761;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2715;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2590;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1998;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1855;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1832;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1512;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1506;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1497;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1489;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1480;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1468;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1310;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1255;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:1244;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1227;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1152;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1124;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:1051;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:948;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:928;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:905;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:886;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:876;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:822;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:815;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:805;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:803;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:780;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:762;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:743;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:726;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:725;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:713;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:712;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:679;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:671;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:664;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:663;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:661;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:660;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:652;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:647;}s:9:"gutenberg";a:3:{s:4:"name";s:9:"gutenberg";s:4:"slug";s:9:"gutenberg";s:5:"count";i:630;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:601;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:598;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:595;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:588;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:588;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:576;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:571;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:564;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:561;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:557;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:557;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:545;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:543;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:543;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:540;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:530;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:519;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:510;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:501;}s:9:"elementor";a:3:{s:4:"name";s:9:"elementor";s:4:"slug";s:9:"elementor";s:5:"count";i:501;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:499;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:491;}s:5:"block";a:3:{s:4:"name";s:5:"block";s:4:"slug";s:5:"block";s:5:"count";i:491;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:488;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:487;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:474;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:464;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:458;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:454;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:446;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:445;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:444;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:443;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:441;}s:8:"shipping";a:3:{s:4:"name";s:8:"shipping";s:4:"slug";s:8:"shipping";s:5:"count";i:437;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:432;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:424;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:419;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:409;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:408;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:407;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:406;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:400;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:391;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:390;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:388;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:380;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:379;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:372;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:371;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:364;}s:6:"import";a:3:{s:4:"name";s:6:"import";s:4:"slug";s:6:"import";s:5:"count";i:363;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:355;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:354;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:347;}}', 'no'),
(854, 'elementor_version', '3.2.3', 'yes'),
(855, 'elementor_install_history', 'a:1:{s:5:"3.2.3";i:1620341098;}', 'yes'),
(858, '_elementor_installed_time', '1620341158', 'yes'),
(859, '_transient_timeout_elementor_remote_info_api_data_3.2.3', '1620348366', 'no'),
(860, '_transient_elementor_remote_info_api_data_3.2.3', 'a:0:{}', 'no'),
(861, '_transient_woocommerce_reports-transient-version', '1620341183', 'yes'),
(862, '_transient_timeout_orders-all-statuses', '1620945983', 'no'),
(863, '_transient_orders-all-statuses', 'a:2:{s:7:"version";s:10:"1620341183";s:5:"value";a:0:{}}', 'no'),
(865, '_transient_timeout_wc_onboarding_product_data', '1620427597', 'no') ;
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(866, '_transient_wc_onboarding_product_data', 'a:6:{s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:18:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Thu, 06 May 2021 22:46:16 GMT";s:12:"content-type";s:31:"application/json; charset=UTF-8";s:14:"content-length";s:5:"11513";s:12:"x-robots-tag";s:7:"noindex";s:4:"link";s:60:"<https://woocommerce.com/wp-json/>; rel="https://api.w.org/"";s:22:"x-content-type-options";s:7:"nosniff";s:29:"access-control-expose-headers";s:33:"X-WP-Total, X-WP-TotalPages, Link";s:28:"access-control-allow-headers";s:73:"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type";s:13:"x-wccom-cache";s:3:"HIT";s:13:"cache-control";s:10:"max-age=60";s:5:"allow";s:3:"GET";s:16:"content-encoding";s:4:"gzip";s:4:"x-rq";s:16:"mia1 86 168 3121";s:3:"age";s:2:"24";s:7:"x-cache";s:3:"hit";s:4:"vary";s:23:"Accept-Encoding, Origin";s:13:"accept-ranges";s:5:"bytes";}}s:4:"body";s:48068:"{"products":[{"title":"WooCommerce Google Analytics","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png","excerpt":"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"2d21f7de14dfb8e9885a4622be701ddf","slug":"woocommerce-google-analytics-integration","id":1442927},{"title":"WooCommerce Tax","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png","excerpt":"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.","link":"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"f31b3b9273cce188cc2b27f7849d02dd","slug":"woocommerce-services","id":3220291},{"title":"Stripe","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png","excerpt":"Accept all major debit and credit cards as well as local payment methods with Stripe.","link":"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"50bb7a985c691bb943a9da4d2c8b5efd","slug":"woocommerce-gateway-stripe","id":18627},{"title":"Jetpack","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png","excerpt":"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.","link":"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"d5bfef9700b62b2b132c74c74c3193eb","slug":"jetpack","id":2725249},{"title":"Facebook for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png","excerpt":"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.","link":"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"0ea4fe4c2d7ca6338f8a322fb3e4e187","slug":"facebook-for-woocommerce","id":2127297},{"title":"Amazon Pay","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png","excerpt":"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.","link":"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"9865e043bbbe4f8c9735af31cb509b53","slug":"woocommerce-gateway-amazon-payments-advanced","id":238816},{"title":"Square for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png","excerpt":"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.","link":"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"e907be8b86d7df0c8f8e0d0020b52638","slug":"woocommerce-square","id":1770503},{"title":"WooCommerce Shipping","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png","excerpt":"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.","link":"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"f31b3b9273cce188cc2b27f7849d02dd","slug":"woocommerce-services","id":2165910},{"title":"Mailchimp for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png","excerpt":"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.","link":"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"b4481616ebece8b1ff68fc59b90c1a91","slug":"mailchimp-for-woocommerce","id":2545166},{"title":"WooCommerce Payments","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png","excerpt":"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"8c6319ca-8f41-4e69-be63-6b15ee37773b","slug":"woocommerce-payments","id":5278104},{"title":"PayPal Checkout","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png","excerpt":"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"69e6cba62ac4021df9e117cc3f716d07","slug":"woocommerce-gateway-paypal-express-checkout","id":1597922},{"title":"WooCommerce Subscriptions","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png","excerpt":"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;199.00","hash":"6115e6d7e297b623a169fdcf5728b224","slug":"woocommerce-subscriptions","id":27147},{"title":"ShipStation Integration","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png","excerpt":"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!","link":"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"9de8640767ba64237808ed7f245a49bb","slug":"woocommerce-shipstation-integration","id":18734},{"title":"Product Add-Ons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png","excerpt":"Offer add-ons like gift wrapping, special messages or other special options for your products.","link":"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"147d0077e591e16db9d0d67daeb8c484","slug":"woocommerce-product-addons","id":18618},{"title":"PayFast Payment Gateway","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png","excerpt":"Take payments on your WooCommerce store via PayFast (redirect method).","link":"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"557bf07293ad916f20c207c6c9cd15ff","slug":"woocommerce-payfast-gateway","id":18596},{"title":"Google Ads &amp; Marketing by Kliken","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png","excerpt":"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.","link":"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"bf66e173-a220-4da7-9512-b5728c20fc16","slug":"kliken-marketing-for-google","id":3866145},{"title":"USPS Shipping Method","image":"","excerpt":"Get shipping rates from the USPS API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"83d1524e8f5f1913e58889f83d442c32","slug":"woocommerce-shipping-usps","id":18657},{"title":"UPS Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png","excerpt":"Get shipping rates from the UPS API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8dae58502913bac0fbcdcaba515ea998","slug":"woocommerce-shipping-ups","id":18665},{"title":"Braintree for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png","excerpt":"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"27f010c8e34ca65b205ddec88ad14536","slug":"woocommerce-gateway-paypal-powered-by-braintree","id":1489837},{"title":"WooCommerce Memberships","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png","excerpt":"Give members access to restricted content or products, for a fee or for free.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;199.00","hash":"9288e7609ad0b487b81ef6232efa5cfc","slug":"woocommerce-memberships","id":958589},{"title":"Shipment Tracking","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png","excerpt":"Add shipment tracking information to your orders.","link":"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"1968e199038a8a001c9f9966fd06bf88","slug":"woocommerce-shipment-tracking","id":18693},{"title":"Table Rate Shipping","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png","excerpt":"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.","link":"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"3034ed8aff427b0f635fe4c86bbf008a","slug":"woocommerce-table-rate-shipping","id":18718},{"title":"Checkout Field Editor","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png","excerpt":"Optimize your checkout process by adding, removing or editing fields to suit your needs.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"2b8029f0d7cdd1118f4d843eb3ab43ff","slug":"woocommerce-checkout-field-editor","id":184594},{"title":"WooCommerce Bookings","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png","excerpt":"Allow customers to book appointments, make reservations or rent equipment without leaving your site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/themes.woocommerce.com\\/hotel\\/","price":"&#36;249.00","hash":"911c438934af094c2b38d5560b9f50f3","slug":"WooCommerce Bookings","id":390890},{"title":"Product Bundles","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1","excerpt":"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.","link":"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"aa2518b5-ab19-4b75-bde9-60ca51e20f28","slug":"woocommerce-product-bundles","id":18716},{"title":"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png","excerpt":"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"e4000666-9275-4c71-8619-be61fb41c9f9","slug":"woocommerce-amazon-ebay-integration","id":3545890},{"title":"Min\\/Max Quantities","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png","excerpt":"Specify minimum and maximum allowed product quantities for orders to be completed.","link":"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"2b5188d90baecfb781a5aa2d6abb900a","slug":"woocommerce-min-max-quantities","id":18616},{"title":"LiveChat for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png","excerpt":"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.","link":"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com","price":"&#36;0.00","hash":"5344cc1f-ed4a-4d00-beff-9d67f6d372f3","slug":"livechat-woocommerce","id":1348888},{"title":"Authorize.Net","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png","excerpt":"Authorize.Net gateway with support for pre-orders and subscriptions.","link":"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8b61524fe53add7fdd1a8d1b00b9327d","slug":"woocommerce-gateway-authorize-net-cim","id":178481},{"title":"FedEx Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg","excerpt":"Get shipping rates from the FedEx API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1a48b598b47a81559baadef15e320f64","slug":"woocommerce-shipping-fedex","id":18620},{"title":"Product CSV Import Suite","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png","excerpt":"Import, merge, and export products and variations to and from WooCommerce using a CSV file.","link":"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"7ac9b00a1fe980fb61d28ab54d167d0d","slug":"woocommerce-product-csv-import-suite","id":18680},{"title":"Follow-Ups","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png","excerpt":"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.","link":"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"05ece68fe94558e65278fe54d9ec84d2","slug":"woocommerce-follow-up-emails","id":18686},{"title":"WooCommerce Customer \\/ Order \\/ Coupon Export","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png","excerpt":"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.","link":"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"914de15813a903c767b55445608bf290","slug":"woocommerce-customer-order-csv-export","id":18652},{"title":"Australia Post Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif","excerpt":"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43","slug":"woocommerce-shipping-australia-post","id":18622},{"title":"Canada Post Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png","excerpt":"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"ac029cdf3daba20b20c7b9be7dc00e0e","slug":"woocommerce-shipping-canada-post","id":18623},{"title":"Product Vendors","image":"","excerpt":"Turn your store into a multi-vendor marketplace","link":"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"a97d99fccd651bbdd728f4d67d492c31","slug":"woocommerce-product-vendors","id":219982},{"title":"Smart Coupons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png","excerpt":"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/demo.storeapps.org\\/?demo=sc","price":"&#36;99.00","hash":"05c45f2aa466106a466de4402fff9dde","slug":"woocommerce-smart-coupons","id":18729},{"title":"WooCommerce Accommodation Bookings","image":"","excerpt":"Book accommodation using WooCommerce and the WooCommerce Bookings extension.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"99b2a7a4af90b6cefd2a733b3b1f78e7","slug":"woocommerce-accommodation-bookings","id":1412069},{"title":"WooCommerce Brands","image":"","excerpt":"Create, assign and list brands for products, and allow customers to view by brand.","link":"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"8a88c7cbd2f1e73636c331c7a86f818c","slug":"woocommerce-brands","id":18737},{"title":"Xero","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png","excerpt":"Save time with automated sync between WooCommerce and your Xero account.","link":"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"f0dd29d338d3c67cf6cee88eddf6869b","slug":"woocommerce-xero","id":18733},{"title":"WooCommerce Zapier","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png","excerpt":"Integrate with 3000+ cloud apps and services today.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;59.00","hash":"0782bdbe932c00f4978850268c6cfe40","slug":"woocommerce-zapier","id":243589},{"title":"Dynamic Pricing","image":"","excerpt":"Bulk discounts, role-based pricing and much more","link":"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"9a41775bb33843f52c93c922b0053986","slug":"woocommerce-dynamic-pricing","id":18643},{"title":"Royal Mail","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png","excerpt":"Offer Royal Mail shipping rates to your customers","link":"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"03839cca1a16c4488fcb669aeb91a056","slug":"woocommerce-shipping-royalmail","id":182719},{"title":"AutomateWoo","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png","excerpt":"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.","link":"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"ba9299b8-1dba-4aa0-a313-28bc1755cb88","slug":"automatewoo","id":4652610},{"title":"Advanced Notifications","image":"","excerpt":"Easily setup \\"new order\\" and stock email notifications for multiple recipients of your choosing.","link":"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"112372c44b002fea2640bd6bfafbca27","slug":"woocommerce-advanced-notifications","id":18740},{"title":"Name Your Price","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png","excerpt":"Allow customers to define the product price. Also useful for accepting user-set donations.","link":"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"31b4e11696cd99a3c0572975a84f1c08","slug":"woocommerce-name-your-price","id":18738},{"title":"WooCommerce Points and Rewards","image":"","excerpt":"Reward your customers for purchases and other actions with points which can be redeemed for discounts.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"1649b6cca5da8b923b01ca56b5cdd246","slug":"woocommerce-points-and-rewards","id":210259},{"title":"WooCommerce Print Invoices &amp; Packing lists","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png","excerpt":"Generate invoices, packing slips, and pick lists for your WooCommerce orders.","link":"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"465de1126817cdfb42d97ebca7eea717","slug":"woocommerce-pip","id":18666},{"title":"WooCommerce Pre-Orders","image":"","excerpt":"Allow customers to order products before they are available.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"b2dc75e7d55e6f5bbfaccb59830f66b7","slug":"woocommerce-pre-orders","id":178477},{"title":"WooCommerce Subscription Downloads","image":"","excerpt":"Offer additional downloads to your subscribers, via downloadable products listed in your store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"5be9e21c13953253e4406d2a700382ec","slug":"woocommerce-subscription-downloads","id":420458},{"title":"Google Product Feed","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png","excerpt":"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.","link":"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"d55b4f852872025741312839f142447e","slug":"woocommerce-product-feeds","id":18619},{"title":"WooCommerce Additional Variation Images","image":"","excerpt":"Add gallery images per variation on variable products within WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/","price":"&#36;49.00","hash":"c61dd6de57dcecb32bd7358866de4539","slug":"woocommerce-additional-variation-images","id":477384},{"title":"WooCommerce Deposits","image":"","excerpt":"Enable customers to pay for products using a deposit or a payment plan.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;179.00","hash":"de192a6cf12c4fd803248da5db700762","slug":"woocommerce-deposits","id":977087},{"title":"PayPal Payments Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png","excerpt":"Take credit card payments directly on your checkout using PayPal Pro.","link":"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"6d23ba7f0e0198937c0029f9e865b40e","slug":"woocommerce-gateway-paypal-pro","id":18594},{"title":"WooCommerce AvaTax","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png","excerpt":"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"57077a4b28ba71cacf692bcf4a1a7f60","slug":"woocommerce-avatax","id":1389326},{"title":"Amazon S3 Storage","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png","excerpt":"Serve digital products via Amazon S3","link":"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"473bf6f221b865eff165c97881b473bb","slug":"woocommerce-amazon-s3-storage","id":18663},{"title":"Cart Add-ons","image":"","excerpt":"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart","link":"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"3a8ef25334396206f5da4cf208adeda3","slug":"woocommerce-cart-add-ons","id":18717},{"title":"Gravity Forms Product Add-ons","image":"","excerpt":"Powerful product add-ons, Gravity style","link":"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/","price":"&#36;99.00","hash":"a6ac0ab1a1536e3a357ccf24c0650ed0","slug":"woocommerce-gravityforms-product-addons","id":18633},{"title":"Klarna Checkout","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png","excerpt":"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).","link":"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/","price":"&#36;0.00","hash":"90f8ce584e785fcd8c2d739fd4f40d78","slug":"klarna-checkout-for-woocommerce","id":2754152},{"title":"Shipping Multiple Addresses","image":"","excerpt":"Allow your customers to ship individual items in a single order to multiple addresses.","link":"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"aa0eb6f777846d329952d5b891d6f8cc","slug":"woocommerce-shipping-multiple-addresses","id":18741},{"title":"Composite Products","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1","excerpt":"Create product kit builders and custom product configurators using existing products.","link":"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"0343e0115bbcb97ccd98442b8326a0af","slug":"woocommerce-composite-products","id":216836},{"title":"Bulk Stock Management","image":"","excerpt":"Edit product and variation stock levels in bulk via this handy interface","link":"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"02f4328d52f324ebe06a78eaaae7934f","slug":"woocommerce-bulk-stock-management","id":18670},{"title":"WooCommerce Email Customizer","image":"","excerpt":"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"bd909fa97874d431f203b5336c7e8873","slug":"woocommerce-email-customizer","id":853277},{"title":"TaxJar","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png","excerpt":"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.","link":"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"12072d8e-e933-4561-97b1-9db3c7eeed91","slug":"taxjar-simplified-taxes-for-woocommerce","id":514914},{"title":"Force Sells","image":"","excerpt":"Force products to be added to the cart","link":"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"3ebddfc491ca168a4ea4800b893302b0","slug":"woocommerce-force-sells","id":18678},{"title":"WooCommerce Quick View","image":"","excerpt":"Show a quick-view button to view product details and add to cart via lightbox popup","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"619c6e57ce72c49c4b57e15b06eddb65","slug":"woocommerce-quick-view","id":187509},{"title":"WooCommerce Purchase Order Gateway","image":"","excerpt":"Receive purchase orders via your WooCommerce-powered online store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"573a92318244ece5facb449d63e74874","slug":"woocommerce-gateway-purchase-order","id":478542},{"title":"WooCommerce Paid Courses","image":"","excerpt":"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"bad2a02a063555b7e2bee59924690763","slug":"woothemes-sensei","id":152116},{"title":"Returns and Warranty Requests","image":"","excerpt":"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.","link":"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"9b4c41102e6b61ea5f558e16f9b63e25","slug":"woocommerce-warranty","id":228315},{"title":"Product Enquiry Form","image":"","excerpt":"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.","link":"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"5a0f5d72519a8ffcc86669f042296937","slug":"woocommerce-product-enquiry-form","id":18601},{"title":"WooCommerce Box Office","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png","excerpt":"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"e704c9160de318216a8fa657404b9131","slug":"woocommerce-box-office","id":1628717},{"title":"WooCommerce Order Barcodes","image":"","excerpt":"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"889835bb29ee3400923653e1e44a3779","slug":"woocommerce-order-barcodes","id":391708},{"title":"WooCommerce 360\\u00ba Image","image":"","excerpt":"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"24eb2cfa3738a66bf3b2587876668cd2","slug":"woocommerce-360-image","id":512186},{"title":"WooCommerce Photography","image":"","excerpt":"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"ee76e8b9daf1d97ca4d3874cc9e35687","slug":"woocommerce-photography","id":583602},{"title":"Software Add-on","image":"","excerpt":"Sell License Keys for Software","link":"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"79f6dbfe1f1d3a56a86f0509b6d6b04b","slug":"woocommerce-software-add-on","id":18683},{"title":"WooCommerce Bookings Availability","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png","excerpt":"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.","link":"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"30770d2a-e392-4e82-baaa-76cfc7d02ae3","slug":"woocommerce-bookings-availability","id":4228225},{"title":"WooCommerce Products Compare","image":"","excerpt":"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"c3ba0a4a3199a0cc7a6112eb24414548","slug":"woocommerce-products-compare","id":853117},{"title":"WooCommerce Store Catalog PDF Download","image":"","excerpt":"Offer your customers a PDF download of your product catalog, generated by WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"79ca7aadafe706364e2d738b7c1090c4","slug":"woocommerce-store-catalog-pdf-download","id":675790},{"title":"eWAY","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg","excerpt":"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.","link":"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"2c497769d98d025e0d340cd0b5ea5da1","slug":"woocommerce-gateway-eway","id":18604},{"title":"Catalog Visibility Options","image":"","excerpt":"Transform WooCommerce into an online catalog by removing eCommerce functionality","link":"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"12e791110365fdbb5865c8658907967e","slug":"woocommerce-catalog-visibility-options","id":18648},{"title":"Sequential Order Numbers Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png","excerpt":"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes","link":"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"0b18a2816e016ba9988b93b1cd8fe766","slug":"woocommerce-sequential-order-numbers-pro","id":18688},{"title":"WooCommerce Blocks","image":"","excerpt":"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"c2e9f13a-f90c-4ffe-a8a5-b432399ec263","slug":"woo-gutenberg-products-block","id":3076677},{"title":"Conditional Shipping and Payments","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1","excerpt":"Use conditional logic to restrict the shipping and payment options available on your store.","link":"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1f56ff002fa830b77017b0107505211a","slug":"woocommerce-conditional-shipping-and-payments","id":680253},{"title":"WooCommerce Checkout Add-Ons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png","excerpt":"Highlight relevant products, offers like free shipping and other up-sells during checkout.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8fdca00b4000b7a8cc26371d0e470a8f","slug":"woocommerce-checkout-add-ons","id":466854},{"title":"WooCommerce Order Status Manager","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png","excerpt":"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"51fd9ab45394b4cad5a0ebf58d012342","slug":"woocommerce-order-status-manager","id":588398},{"title":"WooCommerce Google Analytics Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png","excerpt":"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"d8aed8b7306b509eec1589e59abe319f","slug":"woocommerce-google-analytics-pro","id":1312497},{"title":"QuickBooks Sync for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png","excerpt":"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).","link":"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"c5e32e20-7c1f-4585-8b15-d930c2d842ac","slug":"myworks-woo-sync-for-quickbooks-online","id":4065824},{"title":"WooCommerce One Page Checkout","image":"","excerpt":"Create special pages where customers can choose products, checkout &amp; pay all on the one page.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"c9ba8f8352cd71b5508af5161268619a","slug":"woocommerce-one-page-checkout","id":527886},{"title":"WooCommerce Product Search","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png","excerpt":"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/demo.itthinx.com\\/wps\\/","price":"&#36;49.00","hash":"c84cc8ca16ddac3408e6b6c5871133a8","slug":"woocommerce-product-search","id":512174},{"title":"First Data","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png","excerpt":"FirstData gateway for WooCommerce","link":"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"eb3e32663ec0810592eaf0d097796230","slug":"woocommerce-gateway-firstdata","id":18645},{"title":"WooSlider","image":"","excerpt":"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0","link":"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/www.wooslider.com\\/","price":"&#36;49.00","hash":"209d98f3ccde6cc3de7e8732a2b20b6a","slug":"wooslider","id":46506},{"title":"WooCommerce Social Login","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png","excerpt":"Enable Social Login for seamless checkout and account creation.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/","price":"&#36;79.00","hash":"b231cd6367a79cc8a53b7d992d77525d","slug":"woocommerce-social-login","id":473617},{"title":"Coupon Shortcodes","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png","excerpt":"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.","link":"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"ac5d9d51-70b2-4d8f-8b89-24200eea1394","slug":"woocommerce-coupon-shortcodes","id":244762},{"title":"Variation Swatches and Photos","image":"","excerpt":"Show color and image swatches instead of dropdowns for variable products.","link":"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/","price":"&#36;99.00","hash":"37bea8d549df279c8278878d081b062f","slug":"woocommerce-variation-swatches-and-photos","id":18697},{"title":"WooCommerce Order Status Control","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png","excerpt":"Use this extension to automatically change the order status to \\"completed\\" after successful payment.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"32400e509c7c36dcc1cd368e8267d981","slug":"woocommerce-order-status-control","id":439037},{"title":"Jilt","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png","excerpt":"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.","link":"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"b53aafb64dca33835e41ee06de7e9816","slug":"jilt-for-woocommerce","id":2754876},{"title":"Opayo","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png","excerpt":"Take payments on your WooCommerce store via Opayo (formally SagePay).","link":"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"6bc0cca47d0274d8ef9b164f6fbec1cc","slug":"woocommerce-gateway-sagepay-form","id":18599},{"title":"EU VAT Number","image":"","excerpt":"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.","link":"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"d2720c4b4bb8d6908e530355b7a2d734","slug":"woocommerce-eu-vat-number","id":18592},{"title":"QuickBooks Commerce (formerly TradeGecko)","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png","excerpt":"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"21da7811f7fc1f13ee19daa7415f0ff3","slug":"woocommerce-tradegecko","id":245960},{"title":"WooCommerce Tab Manager","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png","excerpt":"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"89a9ac74850855cfe772b4b4ee1e31e0","slug":"woocommerce-tab-manager","id":132195}]}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;s:13:"http_response";O:25:"WP_HTTP_Requests_Response":5:{s:11:"\0*\0response";O:17:"Requests_Response":10:{s:4:"body";s:48068:"{"products":[{"title":"WooCommerce Google Analytics","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png","excerpt":"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"2d21f7de14dfb8e9885a4622be701ddf","slug":"woocommerce-google-analytics-integration","id":1442927},{"title":"WooCommerce Tax","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png","excerpt":"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.","link":"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"f31b3b9273cce188cc2b27f7849d02dd","slug":"woocommerce-services","id":3220291},{"title":"Stripe","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png","excerpt":"Accept all major debit and credit cards as well as local payment methods with Stripe.","link":"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"50bb7a985c691bb943a9da4d2c8b5efd","slug":"woocommerce-gateway-stripe","id":18627},{"title":"Jetpack","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png","excerpt":"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.","link":"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"d5bfef9700b62b2b132c74c74c3193eb","slug":"jetpack","id":2725249},{"title":"Facebook for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png","excerpt":"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.","link":"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"0ea4fe4c2d7ca6338f8a322fb3e4e187","slug":"facebook-for-woocommerce","id":2127297},{"title":"Amazon Pay","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png","excerpt":"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.","link":"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"9865e043bbbe4f8c9735af31cb509b53","slug":"woocommerce-gateway-amazon-payments-advanced","id":238816},{"title":"Square for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png","excerpt":"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.","link":"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"e907be8b86d7df0c8f8e0d0020b52638","slug":"woocommerce-square","id":1770503},{"title":"WooCommerce Shipping","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png","excerpt":"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.","link":"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"f31b3b9273cce188cc2b27f7849d02dd","slug":"woocommerce-services","id":2165910},{"title":"Mailchimp for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png","excerpt":"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.","link":"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"b4481616ebece8b1ff68fc59b90c1a91","slug":"mailchimp-for-woocommerce","id":2545166},{"title":"WooCommerce Payments","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png","excerpt":"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"8c6319ca-8f41-4e69-be63-6b15ee37773b","slug":"woocommerce-payments","id":5278104},{"title":"PayPal Checkout","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png","excerpt":"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"69e6cba62ac4021df9e117cc3f716d07","slug":"woocommerce-gateway-paypal-express-checkout","id":1597922},{"title":"WooCommerce Subscriptions","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png","excerpt":"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;199.00","hash":"6115e6d7e297b623a169fdcf5728b224","slug":"woocommerce-subscriptions","id":27147},{"title":"ShipStation Integration","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png","excerpt":"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!","link":"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"9de8640767ba64237808ed7f245a49bb","slug":"woocommerce-shipstation-integration","id":18734},{"title":"Product Add-Ons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png","excerpt":"Offer add-ons like gift wrapping, special messages or other special options for your products.","link":"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"147d0077e591e16db9d0d67daeb8c484","slug":"woocommerce-product-addons","id":18618},{"title":"PayFast Payment Gateway","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png","excerpt":"Take payments on your WooCommerce store via PayFast (redirect method).","link":"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"557bf07293ad916f20c207c6c9cd15ff","slug":"woocommerce-payfast-gateway","id":18596},{"title":"Google Ads &amp; Marketing by Kliken","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png","excerpt":"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.","link":"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"bf66e173-a220-4da7-9512-b5728c20fc16","slug":"kliken-marketing-for-google","id":3866145},{"title":"USPS Shipping Method","image":"","excerpt":"Get shipping rates from the USPS API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"83d1524e8f5f1913e58889f83d442c32","slug":"woocommerce-shipping-usps","id":18657},{"title":"UPS Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png","excerpt":"Get shipping rates from the UPS API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8dae58502913bac0fbcdcaba515ea998","slug":"woocommerce-shipping-ups","id":18665},{"title":"Braintree for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png","excerpt":"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"27f010c8e34ca65b205ddec88ad14536","slug":"woocommerce-gateway-paypal-powered-by-braintree","id":1489837},{"title":"WooCommerce Memberships","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png","excerpt":"Give members access to restricted content or products, for a fee or for free.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;199.00","hash":"9288e7609ad0b487b81ef6232efa5cfc","slug":"woocommerce-memberships","id":958589},{"title":"Shipment Tracking","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png","excerpt":"Add shipment tracking information to your orders.","link":"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"1968e199038a8a001c9f9966fd06bf88","slug":"woocommerce-shipment-tracking","id":18693},{"title":"Table Rate Shipping","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png","excerpt":"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.","link":"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"3034ed8aff427b0f635fe4c86bbf008a","slug":"woocommerce-table-rate-shipping","id":18718},{"title":"Checkout Field Editor","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png","excerpt":"Optimize your checkout process by adding, removing or editing fields to suit your needs.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"2b8029f0d7cdd1118f4d843eb3ab43ff","slug":"woocommerce-checkout-field-editor","id":184594},{"title":"WooCommerce Bookings","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png","excerpt":"Allow customers to book appointments, make reservations or rent equipment without leaving your site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/themes.woocommerce.com\\/hotel\\/","price":"&#36;249.00","hash":"911c438934af094c2b38d5560b9f50f3","slug":"WooCommerce Bookings","id":390890},{"title":"Product Bundles","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1","excerpt":"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.","link":"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"aa2518b5-ab19-4b75-bde9-60ca51e20f28","slug":"woocommerce-product-bundles","id":18716},{"title":"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png","excerpt":"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"e4000666-9275-4c71-8619-be61fb41c9f9","slug":"woocommerce-amazon-ebay-integration","id":3545890},{"title":"Min\\/Max Quantities","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png","excerpt":"Specify minimum and maximum allowed product quantities for orders to be completed.","link":"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"2b5188d90baecfb781a5aa2d6abb900a","slug":"woocommerce-min-max-quantities","id":18616},{"title":"LiveChat for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png","excerpt":"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.","link":"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com","price":"&#36;0.00","hash":"5344cc1f-ed4a-4d00-beff-9d67f6d372f3","slug":"livechat-woocommerce","id":1348888},{"title":"Authorize.Net","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png","excerpt":"Authorize.Net gateway with support for pre-orders and subscriptions.","link":"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8b61524fe53add7fdd1a8d1b00b9327d","slug":"woocommerce-gateway-authorize-net-cim","id":178481},{"title":"FedEx Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg","excerpt":"Get shipping rates from the FedEx API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1a48b598b47a81559baadef15e320f64","slug":"woocommerce-shipping-fedex","id":18620},{"title":"Product CSV Import Suite","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png","excerpt":"Import, merge, and export products and variations to and from WooCommerce using a CSV file.","link":"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"7ac9b00a1fe980fb61d28ab54d167d0d","slug":"woocommerce-product-csv-import-suite","id":18680},{"title":"Follow-Ups","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png","excerpt":"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.","link":"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"05ece68fe94558e65278fe54d9ec84d2","slug":"woocommerce-follow-up-emails","id":18686},{"title":"WooCommerce Customer \\/ Order \\/ Coupon Export","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png","excerpt":"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.","link":"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"914de15813a903c767b55445608bf290","slug":"woocommerce-customer-order-csv-export","id":18652},{"title":"Australia Post Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif","excerpt":"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43","slug":"woocommerce-shipping-australia-post","id":18622},{"title":"Canada Post Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png","excerpt":"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"ac029cdf3daba20b20c7b9be7dc00e0e","slug":"woocommerce-shipping-canada-post","id":18623},{"title":"Product Vendors","image":"","excerpt":"Turn your store into a multi-vendor marketplace","link":"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"a97d99fccd651bbdd728f4d67d492c31","slug":"woocommerce-product-vendors","id":219982},{"title":"Smart Coupons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png","excerpt":"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/demo.storeapps.org\\/?demo=sc","price":"&#36;99.00","hash":"05c45f2aa466106a466de4402fff9dde","slug":"woocommerce-smart-coupons","id":18729},{"title":"WooCommerce Accommodation Bookings","image":"","excerpt":"Book accommodation using WooCommerce and the WooCommerce Bookings extension.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"99b2a7a4af90b6cefd2a733b3b1f78e7","slug":"woocommerce-accommodation-bookings","id":1412069},{"title":"WooCommerce Brands","image":"","excerpt":"Create, assign and list brands for products, and allow customers to view by brand.","link":"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"8a88c7cbd2f1e73636c331c7a86f818c","slug":"woocommerce-brands","id":18737},{"title":"Xero","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png","excerpt":"Save time with automated sync between WooCommerce and your Xero account.","link":"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"f0dd29d338d3c67cf6cee88eddf6869b","slug":"woocommerce-xero","id":18733},{"title":"WooCommerce Zapier","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png","excerpt":"Integrate with 3000+ cloud apps and services today.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;59.00","hash":"0782bdbe932c00f4978850268c6cfe40","slug":"woocommerce-zapier","id":243589},{"title":"Dynamic Pricing","image":"","excerpt":"Bulk discounts, role-based pricing and much more","link":"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"9a41775bb33843f52c93c922b0053986","slug":"woocommerce-dynamic-pricing","id":18643},{"title":"Royal Mail","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png","excerpt":"Offer Royal Mail shipping rates to your customers","link":"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"03839cca1a16c4488fcb669aeb91a056","slug":"woocommerce-shipping-royalmail","id":182719},{"title":"AutomateWoo","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png","excerpt":"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.","link":"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"ba9299b8-1dba-4aa0-a313-28bc1755cb88","slug":"automatewoo","id":4652610},{"title":"Advanced Notifications","image":"","excerpt":"Easily setup \\"new order\\" and stock email notifications for multiple recipients of your choosing.","link":"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"112372c44b002fea2640bd6bfafbca27","slug":"woocommerce-advanced-notifications","id":18740},{"title":"Name Your Price","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png","excerpt":"Allow customers to define the product price. Also useful for accepting user-set donations.","link":"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"31b4e11696cd99a3c0572975a84f1c08","slug":"woocommerce-name-your-price","id":18738},{"title":"WooCommerce Points and Rewards","image":"","excerpt":"Reward your customers for purchases and other actions with points which can be redeemed for discounts.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"1649b6cca5da8b923b01ca56b5cdd246","slug":"woocommerce-points-and-rewards","id":210259},{"title":"WooCommerce Print Invoices &amp; Packing lists","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png","excerpt":"Generate invoices, packing slips, and pick lists for your WooCommerce orders.","link":"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"465de1126817cdfb42d97ebca7eea717","slug":"woocommerce-pip","id":18666},{"title":"WooCommerce Pre-Orders","image":"","excerpt":"Allow customers to order products before they are available.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"b2dc75e7d55e6f5bbfaccb59830f66b7","slug":"woocommerce-pre-orders","id":178477},{"title":"WooCommerce Subscription Downloads","image":"","excerpt":"Offer additional downloads to your subscribers, via downloadable products listed in your store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"5be9e21c13953253e4406d2a700382ec","slug":"woocommerce-subscription-downloads","id":420458},{"title":"Google Product Feed","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png","excerpt":"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.","link":"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"d55b4f852872025741312839f142447e","slug":"woocommerce-product-feeds","id":18619},{"title":"WooCommerce Additional Variation Images","image":"","excerpt":"Add gallery images per variation on variable products within WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/","price":"&#36;49.00","hash":"c61dd6de57dcecb32bd7358866de4539","slug":"woocommerce-additional-variation-images","id":477384},{"title":"WooCommerce Deposits","image":"","excerpt":"Enable customers to pay for products using a deposit or a payment plan.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;179.00","hash":"de192a6cf12c4fd803248da5db700762","slug":"woocommerce-deposits","id":977087},{"title":"PayPal Payments Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png","excerpt":"Take credit card payments directly on your checkout using PayPal Pro.","link":"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"6d23ba7f0e0198937c0029f9e865b40e","slug":"woocommerce-gateway-paypal-pro","id":18594},{"title":"WooCommerce AvaTax","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png","excerpt":"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"57077a4b28ba71cacf692bcf4a1a7f60","slug":"woocommerce-avatax","id":1389326},{"title":"Amazon S3 Storage","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png","excerpt":"Serve digital products via Amazon S3","link":"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"473bf6f221b865eff165c97881b473bb","slug":"woocommerce-amazon-s3-storage","id":18663},{"title":"Cart Add-ons","image":"","excerpt":"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart","link":"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"3a8ef25334396206f5da4cf208adeda3","slug":"woocommerce-cart-add-ons","id":18717},{"title":"Gravity Forms Product Add-ons","image":"","excerpt":"Powerful product add-ons, Gravity style","link":"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/","price":"&#36;99.00","hash":"a6ac0ab1a1536e3a357ccf24c0650ed0","slug":"woocommerce-gravityforms-product-addons","id":18633},{"title":"Klarna Checkout","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png","excerpt":"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).","link":"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/","price":"&#36;0.00","hash":"90f8ce584e785fcd8c2d739fd4f40d78","slug":"klarna-checkout-for-woocommerce","id":2754152},{"title":"Shipping Multiple Addresses","image":"","excerpt":"Allow your customers to ship individual items in a single order to multiple addresses.","link":"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"aa0eb6f777846d329952d5b891d6f8cc","slug":"woocommerce-shipping-multiple-addresses","id":18741},{"title":"Composite Products","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1","excerpt":"Create product kit builders and custom product configurators using existing products.","link":"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"0343e0115bbcb97ccd98442b8326a0af","slug":"woocommerce-composite-products","id":216836},{"title":"Bulk Stock Management","image":"","excerpt":"Edit product and variation stock levels in bulk via this handy interface","link":"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"02f4328d52f324ebe06a78eaaae7934f","slug":"woocommerce-bulk-stock-management","id":18670},{"title":"WooCommerce Email Customizer","image":"","excerpt":"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"bd909fa97874d431f203b5336c7e8873","slug":"woocommerce-email-customizer","id":853277},{"title":"TaxJar","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png","excerpt":"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.","link":"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"12072d8e-e933-4561-97b1-9db3c7eeed91","slug":"taxjar-simplified-taxes-for-woocommerce","id":514914},{"title":"Force Sells","image":"","excerpt":"Force products to be added to the cart","link":"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"3ebddfc491ca168a4ea4800b893302b0","slug":"woocommerce-force-sells","id":18678},{"title":"WooCommerce Quick View","image":"","excerpt":"Show a quick-view button to view product details and add to cart via lightbox popup","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"619c6e57ce72c49c4b57e15b06eddb65","slug":"woocommerce-quick-view","id":187509},{"title":"WooCommerce Purchase Order Gateway","image":"","excerpt":"Receive purchase orders via your WooCommerce-powered online store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"573a92318244ece5facb449d63e74874","slug":"woocommerce-gateway-purchase-order","id":478542},{"title":"WooCommerce Paid Courses","image":"","excerpt":"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"bad2a02a063555b7e2bee59924690763","slug":"woothemes-sensei","id":152116},{"title":"Returns and Warranty Requests","image":"","excerpt":"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.","link":"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"9b4c41102e6b61ea5f558e16f9b63e25","slug":"woocommerce-warranty","id":228315},{"title":"Product Enquiry Form","image":"","excerpt":"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.","link":"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"5a0f5d72519a8ffcc86669f042296937","slug":"woocommerce-product-enquiry-form","id":18601},{"title":"WooCommerce Box Office","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png","excerpt":"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"e704c9160de318216a8fa657404b9131","slug":"woocommerce-box-office","id":1628717},{"title":"WooCommerce Order Barcodes","image":"","excerpt":"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"889835bb29ee3400923653e1e44a3779","slug":"woocommerce-order-barcodes","id":391708},{"title":"WooCommerce 360\\u00ba Image","image":"","excerpt":"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"24eb2cfa3738a66bf3b2587876668cd2","slug":"woocommerce-360-image","id":512186},{"title":"WooCommerce Photography","image":"","excerpt":"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"ee76e8b9daf1d97ca4d3874cc9e35687","slug":"woocommerce-photography","id":583602},{"title":"Software Add-on","image":"","excerpt":"Sell License Keys for Software","link":"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"79f6dbfe1f1d3a56a86f0509b6d6b04b","slug":"woocommerce-software-add-on","id":18683},{"title":"WooCommerce Bookings Availability","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png","excerpt":"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.","link":"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"30770d2a-e392-4e82-baaa-76cfc7d02ae3","slug":"woocommerce-bookings-availability","id":4228225},{"title":"WooCommerce Products Compare","image":"","excerpt":"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"c3ba0a4a3199a0cc7a6112eb24414548","slug":"woocommerce-products-compare","id":853117},{"title":"WooCommerce Store Catalog PDF Download","image":"","excerpt":"Offer your customers a PDF download of your product catalog, generated by WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"79ca7aadafe706364e2d738b7c1090c4","slug":"woocommerce-store-catalog-pdf-download","id":675790},{"title":"eWAY","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg","excerpt":"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.","link":"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"2c497769d98d025e0d340cd0b5ea5da1","slug":"woocommerce-gateway-eway","id":18604},{"title":"Catalog Visibility Options","image":"","excerpt":"Transform WooCommerce into an online catalog by removing eCommerce functionality","link":"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"12e791110365fdbb5865c8658907967e","slug":"woocommerce-catalog-visibility-options","id":18648},{"title":"Sequential Order Numbers Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png","excerpt":"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes","link":"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"0b18a2816e016ba9988b93b1cd8fe766","slug":"woocommerce-sequential-order-numbers-pro","id":18688},{"title":"WooCommerce Blocks","image":"","excerpt":"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"c2e9f13a-f90c-4ffe-a8a5-b432399ec263","slug":"woo-gutenberg-products-block","id":3076677},{"title":"Conditional Shipping and Payments","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1","excerpt":"Use conditional logic to restrict the shipping and payment options available on your store.","link":"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1f56ff002fa830b77017b0107505211a","slug":"woocommerce-conditional-shipping-and-payments","id":680253},{"title":"WooCommerce Checkout Add-Ons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png","excerpt":"Highlight relevant products, offers like free shipping and other up-sells during checkout.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8fdca00b4000b7a8cc26371d0e470a8f","slug":"woocommerce-checkout-add-ons","id":466854},{"title":"WooCommerce Order Status Manager","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png","excerpt":"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"51fd9ab45394b4cad5a0ebf58d012342","slug":"woocommerce-order-status-manager","id":588398},{"title":"WooCommerce Google Analytics Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png","excerpt":"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"d8aed8b7306b509eec1589e59abe319f","slug":"woocommerce-google-analytics-pro","id":1312497},{"title":"QuickBooks Sync for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png","excerpt":"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).","link":"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"c5e32e20-7c1f-4585-8b15-d930c2d842ac","slug":"myworks-woo-sync-for-quickbooks-online","id":4065824},{"title":"WooCommerce One Page Checkout","image":"","excerpt":"Create special pages where customers can choose products, checkout &amp; pay all on the one page.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"c9ba8f8352cd71b5508af5161268619a","slug":"woocommerce-one-page-checkout","id":527886},{"title":"WooCommerce Product Search","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png","excerpt":"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/demo.itthinx.com\\/wps\\/","price":"&#36;49.00","hash":"c84cc8ca16ddac3408e6b6c5871133a8","slug":"woocommerce-product-search","id":512174},{"title":"First Data","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png","excerpt":"FirstData gateway for WooCommerce","link":"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"eb3e32663ec0810592eaf0d097796230","slug":"woocommerce-gateway-firstdata","id":18645},{"title":"WooSlider","image":"","excerpt":"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0","link":"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/www.wooslider.com\\/","price":"&#36;49.00","hash":"209d98f3ccde6cc3de7e8732a2b20b6a","slug":"wooslider","id":46506},{"title":"WooCommerce Social Login","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png","excerpt":"Enable Social Login for seamless checkout and account creation.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/","price":"&#36;79.00","hash":"b231cd6367a79cc8a53b7d992d77525d","slug":"woocommerce-social-login","id":473617},{"title":"Coupon Shortcodes","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png","excerpt":"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.","link":"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"ac5d9d51-70b2-4d8f-8b89-24200eea1394","slug":"woocommerce-coupon-shortcodes","id":244762},{"title":"Variation Swatches and Photos","image":"","excerpt":"Show color and image swatches instead of dropdowns for variable products.","link":"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/","price":"&#36;99.00","hash":"37bea8d549df279c8278878d081b062f","slug":"woocommerce-variation-swatches-and-photos","id":18697},{"title":"WooCommerce Order Status Control","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png","excerpt":"Use this extension to automatically change the order status to \\"completed\\" after successful payment.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"32400e509c7c36dcc1cd368e8267d981","slug":"woocommerce-order-status-control","id":439037},{"title":"Jilt","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png","excerpt":"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.","link":"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"b53aafb64dca33835e41ee06de7e9816","slug":"jilt-for-woocommerce","id":2754876},{"title":"Opayo","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png","excerpt":"Take payments on your WooCommerce store via Opayo (formally SagePay).","link":"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"6bc0cca47d0274d8ef9b164f6fbec1cc","slug":"woocommerce-gateway-sagepay-form","id":18599},{"title":"EU VAT Number","image":"","excerpt":"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.","link":"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"d2720c4b4bb8d6908e530355b7a2d734","slug":"woocommerce-eu-vat-number","id":18592},{"title":"QuickBooks Commerce (formerly TradeGecko)","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png","excerpt":"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"21da7811f7fc1f13ee19daa7415f0ff3","slug":"woocommerce-tradegecko","id":245960},{"title":"WooCommerce Tab Manager","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png","excerpt":"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"89a9ac74850855cfe772b4b4ee1e31e0","slug":"woocommerce-tab-manager","id":132195}]}";s:3:"raw";s:48706:"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Thu, 06 May 2021 22:46:16 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11513\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel="https://api.w.org/"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nX-WCCOM-Cache: HIT\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: mia1 86 168 3121\r\nAge: 24\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{"products":[{"title":"WooCommerce Google Analytics","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png","excerpt":"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"2d21f7de14dfb8e9885a4622be701ddf","slug":"woocommerce-google-analytics-integration","id":1442927},{"title":"WooCommerce Tax","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png","excerpt":"Automatically calculate how much sales tax should be collected for WooCommerce orders - by city, country, or state - at checkout.","link":"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"f31b3b9273cce188cc2b27f7849d02dd","slug":"woocommerce-services","id":3220291},{"title":"Stripe","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png","excerpt":"Accept all major debit and credit cards as well as local payment methods with Stripe.","link":"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"50bb7a985c691bb943a9da4d2c8b5efd","slug":"woocommerce-gateway-stripe","id":18627},{"title":"Jetpack","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png","excerpt":"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.","link":"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"d5bfef9700b62b2b132c74c74c3193eb","slug":"jetpack","id":2725249},{"title":"Facebook for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png","excerpt":"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.","link":"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"0ea4fe4c2d7ca6338f8a322fb3e4e187","slug":"facebook-for-woocommerce","id":2127297},{"title":"Amazon Pay","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png","excerpt":"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.","link":"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"9865e043bbbe4f8c9735af31cb509b53","slug":"woocommerce-gateway-amazon-payments-advanced","id":238816},{"title":"Square for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png","excerpt":"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.","link":"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"e907be8b86d7df0c8f8e0d0020b52638","slug":"woocommerce-square","id":1770503},{"title":"WooCommerce Shipping","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png","excerpt":"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.","link":"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"f31b3b9273cce188cc2b27f7849d02dd","slug":"woocommerce-services","id":2165910},{"title":"Mailchimp for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png","excerpt":"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.","link":"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"b4481616ebece8b1ff68fc59b90c1a91","slug":"mailchimp-for-woocommerce","id":2545166},{"title":"WooCommerce Payments","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png","excerpt":"Securely accept payments, track cash flow, and manage recurring revenue from your dashboard \\u2014 all without setup costs or monthly fees.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"8c6319ca-8f41-4e69-be63-6b15ee37773b","slug":"woocommerce-payments","id":5278104},{"title":"PayPal Checkout","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png","excerpt":"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"69e6cba62ac4021df9e117cc3f716d07","slug":"woocommerce-gateway-paypal-express-checkout","id":1597922},{"title":"WooCommerce Subscriptions","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png","excerpt":"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;199.00","hash":"6115e6d7e297b623a169fdcf5728b224","slug":"woocommerce-subscriptions","id":27147},{"title":"ShipStation Integration","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png","excerpt":"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!","link":"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"9de8640767ba64237808ed7f245a49bb","slug":"woocommerce-shipstation-integration","id":18734},{"title":"Product Add-Ons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png","excerpt":"Offer add-ons like gift wrapping, special messages or other special options for your products.","link":"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"147d0077e591e16db9d0d67daeb8c484","slug":"woocommerce-product-addons","id":18618},{"title":"PayFast Payment Gateway","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png","excerpt":"Take payments on your WooCommerce store via PayFast (redirect method).","link":"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"557bf07293ad916f20c207c6c9cd15ff","slug":"woocommerce-payfast-gateway","id":18596},{"title":"Google Ads &amp; Marketing by Kliken","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png","excerpt":"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.","link":"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"bf66e173-a220-4da7-9512-b5728c20fc16","slug":"kliken-marketing-for-google","id":3866145},{"title":"USPS Shipping Method","image":"","excerpt":"Get shipping rates from the USPS API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"83d1524e8f5f1913e58889f83d442c32","slug":"woocommerce-shipping-usps","id":18657},{"title":"UPS Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png","excerpt":"Get shipping rates from the UPS API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8dae58502913bac0fbcdcaba515ea998","slug":"woocommerce-shipping-ups","id":18665},{"title":"Braintree for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png","excerpt":"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"27f010c8e34ca65b205ddec88ad14536","slug":"woocommerce-gateway-paypal-powered-by-braintree","id":1489837},{"title":"WooCommerce Memberships","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-updated.png","excerpt":"Give members access to restricted content or products, for a fee or for free.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;199.00","hash":"9288e7609ad0b487b81ef6232efa5cfc","slug":"woocommerce-memberships","id":958589},{"title":"Shipment Tracking","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png","excerpt":"Add shipment tracking information to your orders.","link":"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"1968e199038a8a001c9f9966fd06bf88","slug":"woocommerce-shipment-tracking","id":18693},{"title":"Table Rate Shipping","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png","excerpt":"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.","link":"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"3034ed8aff427b0f635fe4c86bbf008a","slug":"woocommerce-table-rate-shipping","id":18718},{"title":"Checkout Field Editor","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png","excerpt":"Optimize your checkout process by adding, removing or editing fields to suit your needs.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"2b8029f0d7cdd1118f4d843eb3ab43ff","slug":"woocommerce-checkout-field-editor","id":184594},{"title":"WooCommerce Bookings","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png","excerpt":"Allow customers to book appointments, make reservations or rent equipment without leaving your site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/themes.woocommerce.com\\/hotel\\/","price":"&#36;249.00","hash":"911c438934af094c2b38d5560b9f50f3","slug":"WooCommerce Bookings","id":390890},{"title":"Product Bundles","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1","excerpt":"Offer personalized product bundles, bulk discount packages, and assembled\\u00a0products.","link":"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"aa2518b5-ab19-4b75-bde9-60ca51e20f28","slug":"woocommerce-product-bundles","id":18716},{"title":"Multichannel for WooCommerce: Google, Amazon, eBay &amp; Walmart Integration","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/Woo-Extension-Store-Logo-v2.png","excerpt":"Get the official Google, Amazon, eBay and Walmart extension and create, sync and manage multichannel listings directly from WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"e4000666-9275-4c71-8619-be61fb41c9f9","slug":"woocommerce-amazon-ebay-integration","id":3545890},{"title":"Min\\/Max Quantities","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png","excerpt":"Specify minimum and maximum allowed product quantities for orders to be completed.","link":"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"2b5188d90baecfb781a5aa2d6abb900a","slug":"woocommerce-min-max-quantities","id":18616},{"title":"LiveChat for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png","excerpt":"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.","link":"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com","price":"&#36;0.00","hash":"5344cc1f-ed4a-4d00-beff-9d67f6d372f3","slug":"livechat-woocommerce","id":1348888},{"title":"Authorize.Net","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Authorize.net-updated.png","excerpt":"Authorize.Net gateway with support for pre-orders and subscriptions.","link":"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8b61524fe53add7fdd1a8d1b00b9327d","slug":"woocommerce-gateway-authorize-net-cim","id":178481},{"title":"FedEx Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg","excerpt":"Get shipping rates from the FedEx API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1a48b598b47a81559baadef15e320f64","slug":"woocommerce-shipping-fedex","id":18620},{"title":"Product CSV Import Suite","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png","excerpt":"Import, merge, and export products and variations to and from WooCommerce using a CSV file.","link":"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"7ac9b00a1fe980fb61d28ab54d167d0d","slug":"woocommerce-product-csv-import-suite","id":18680},{"title":"Follow-Ups","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png","excerpt":"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.","link":"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"05ece68fe94558e65278fe54d9ec84d2","slug":"woocommerce-follow-up-emails","id":18686},{"title":"WooCommerce Customer \\/ Order \\/ Coupon Export","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-updated.png","excerpt":"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.","link":"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"914de15813a903c767b55445608bf290","slug":"woocommerce-customer-order-csv-export","id":18652},{"title":"Australia Post Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif","excerpt":"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43","slug":"woocommerce-shipping-australia-post","id":18622},{"title":"Canada Post Shipping Method","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png","excerpt":"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.","link":"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"ac029cdf3daba20b20c7b9be7dc00e0e","slug":"woocommerce-shipping-canada-post","id":18623},{"title":"Product Vendors","image":"","excerpt":"Turn your store into a multi-vendor marketplace","link":"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"a97d99fccd651bbdd728f4d67d492c31","slug":"woocommerce-product-vendors","id":219982},{"title":"Smart Coupons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png","excerpt":"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/demo.storeapps.org\\/?demo=sc","price":"&#36;99.00","hash":"05c45f2aa466106a466de4402fff9dde","slug":"woocommerce-smart-coupons","id":18729},{"title":"WooCommerce Accommodation Bookings","image":"","excerpt":"Book accommodation using WooCommerce and the WooCommerce Bookings extension.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"99b2a7a4af90b6cefd2a733b3b1f78e7","slug":"woocommerce-accommodation-bookings","id":1412069},{"title":"WooCommerce Brands","image":"","excerpt":"Create, assign and list brands for products, and allow customers to view by brand.","link":"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"8a88c7cbd2f1e73636c331c7a86f818c","slug":"woocommerce-brands","id":18737},{"title":"Xero","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png","excerpt":"Save time with automated sync between WooCommerce and your Xero account.","link":"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"f0dd29d338d3c67cf6cee88eddf6869b","slug":"woocommerce-xero","id":18733},{"title":"WooCommerce Zapier","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png","excerpt":"Integrate with 3000+ cloud apps and services today.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;59.00","hash":"0782bdbe932c00f4978850268c6cfe40","slug":"woocommerce-zapier","id":243589},{"title":"Dynamic Pricing","image":"","excerpt":"Bulk discounts, role-based pricing and much more","link":"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"9a41775bb33843f52c93c922b0053986","slug":"woocommerce-dynamic-pricing","id":18643},{"title":"Royal Mail","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png","excerpt":"Offer Royal Mail shipping rates to your customers","link":"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"03839cca1a16c4488fcb669aeb91a056","slug":"woocommerce-shipping-royalmail","id":182719},{"title":"AutomateWoo","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png","excerpt":"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.","link":"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"ba9299b8-1dba-4aa0-a313-28bc1755cb88","slug":"automatewoo","id":4652610},{"title":"Advanced Notifications","image":"","excerpt":"Easily setup \\"new order\\" and stock email notifications for multiple recipients of your choosing.","link":"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"112372c44b002fea2640bd6bfafbca27","slug":"woocommerce-advanced-notifications","id":18740},{"title":"Name Your Price","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png","excerpt":"Allow customers to define the product price. Also useful for accepting user-set donations.","link":"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"31b4e11696cd99a3c0572975a84f1c08","slug":"woocommerce-name-your-price","id":18738},{"title":"WooCommerce Points and Rewards","image":"","excerpt":"Reward your customers for purchases and other actions with points which can be redeemed for discounts.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"1649b6cca5da8b923b01ca56b5cdd246","slug":"woocommerce-points-and-rewards","id":210259},{"title":"WooCommerce Print Invoices &amp; Packing lists","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-updated.png","excerpt":"Generate invoices, packing slips, and pick lists for your WooCommerce orders.","link":"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"465de1126817cdfb42d97ebca7eea717","slug":"woocommerce-pip","id":18666},{"title":"WooCommerce Pre-Orders","image":"","excerpt":"Allow customers to order products before they are available.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"b2dc75e7d55e6f5bbfaccb59830f66b7","slug":"woocommerce-pre-orders","id":178477},{"title":"WooCommerce Subscription Downloads","image":"","excerpt":"Offer additional downloads to your subscribers, via downloadable products listed in your store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"5be9e21c13953253e4406d2a700382ec","slug":"woocommerce-subscription-downloads","id":420458},{"title":"Google Product Feed","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png","excerpt":"Feed product data to Google Merchant Center for setting up Google product listings &amp; product ads.","link":"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"d55b4f852872025741312839f142447e","slug":"woocommerce-product-feeds","id":18619},{"title":"WooCommerce Additional Variation Images","image":"","excerpt":"Add gallery images per variation on variable products within WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/","price":"&#36;49.00","hash":"c61dd6de57dcecb32bd7358866de4539","slug":"woocommerce-additional-variation-images","id":477384},{"title":"WooCommerce Deposits","image":"","excerpt":"Enable customers to pay for products using a deposit or a payment plan.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;179.00","hash":"de192a6cf12c4fd803248da5db700762","slug":"woocommerce-deposits","id":977087},{"title":"PayPal Payments Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png","excerpt":"Take credit card payments directly on your checkout using PayPal Pro.","link":"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"6d23ba7f0e0198937c0029f9e865b40e","slug":"woocommerce-gateway-paypal-pro","id":18594},{"title":"WooCommerce AvaTax","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-Avalara-updated.png","excerpt":"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"57077a4b28ba71cacf692bcf4a1a7f60","slug":"woocommerce-avatax","id":1389326},{"title":"Amazon S3 Storage","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png","excerpt":"Serve digital products via Amazon S3","link":"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"473bf6f221b865eff165c97881b473bb","slug":"woocommerce-amazon-s3-storage","id":18663},{"title":"Cart Add-ons","image":"","excerpt":"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart","link":"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"3a8ef25334396206f5da4cf208adeda3","slug":"woocommerce-cart-add-ons","id":18717},{"title":"Gravity Forms Product Add-ons","image":"","excerpt":"Powerful product add-ons, Gravity style","link":"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/","price":"&#36;99.00","hash":"a6ac0ab1a1536e3a357ccf24c0650ed0","slug":"woocommerce-gravityforms-product-addons","id":18633},{"title":"Klarna Checkout","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png","excerpt":"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).","link":"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/","price":"&#36;0.00","hash":"90f8ce584e785fcd8c2d739fd4f40d78","slug":"klarna-checkout-for-woocommerce","id":2754152},{"title":"Shipping Multiple Addresses","image":"","excerpt":"Allow your customers to ship individual items in a single order to multiple addresses.","link":"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"aa0eb6f777846d329952d5b891d6f8cc","slug":"woocommerce-shipping-multiple-addresses","id":18741},{"title":"Composite Products","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1","excerpt":"Create product kit builders and custom product configurators using existing products.","link":"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"0343e0115bbcb97ccd98442b8326a0af","slug":"woocommerce-composite-products","id":216836},{"title":"Bulk Stock Management","image":"","excerpt":"Edit product and variation stock levels in bulk via this handy interface","link":"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"02f4328d52f324ebe06a78eaaae7934f","slug":"woocommerce-bulk-stock-management","id":18670},{"title":"WooCommerce Email Customizer","image":"","excerpt":"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"bd909fa97874d431f203b5336c7e8873","slug":"woocommerce-email-customizer","id":853277},{"title":"TaxJar","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png","excerpt":"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.","link":"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"12072d8e-e933-4561-97b1-9db3c7eeed91","slug":"taxjar-simplified-taxes-for-woocommerce","id":514914},{"title":"Force Sells","image":"","excerpt":"Force products to be added to the cart","link":"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"3ebddfc491ca168a4ea4800b893302b0","slug":"woocommerce-force-sells","id":18678},{"title":"WooCommerce Quick View","image":"","excerpt":"Show a quick-view button to view product details and add to cart via lightbox popup","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"619c6e57ce72c49c4b57e15b06eddb65","slug":"woocommerce-quick-view","id":187509},{"title":"WooCommerce Purchase Order Gateway","image":"","excerpt":"Receive purchase orders via your WooCommerce-powered online store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"573a92318244ece5facb449d63e74874","slug":"woocommerce-gateway-purchase-order","id":478542},{"title":"WooCommerce Paid Courses","image":"","excerpt":"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"bad2a02a063555b7e2bee59924690763","slug":"woothemes-sensei","id":152116},{"title":"Returns and Warranty Requests","image":"","excerpt":"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.","link":"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"9b4c41102e6b61ea5f558e16f9b63e25","slug":"woocommerce-warranty","id":228315},{"title":"Product Enquiry Form","image":"","excerpt":"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.","link":"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"5a0f5d72519a8ffcc86669f042296937","slug":"woocommerce-product-enquiry-form","id":18601},{"title":"WooCommerce Box Office","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png","excerpt":"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"e704c9160de318216a8fa657404b9131","slug":"woocommerce-box-office","id":1628717},{"title":"WooCommerce Order Barcodes","image":"","excerpt":"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"889835bb29ee3400923653e1e44a3779","slug":"woocommerce-order-barcodes","id":391708},{"title":"WooCommerce 360\\u00ba Image","image":"","excerpt":"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"24eb2cfa3738a66bf3b2587876668cd2","slug":"woocommerce-360-image","id":512186},{"title":"WooCommerce Photography","image":"","excerpt":"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"ee76e8b9daf1d97ca4d3874cc9e35687","slug":"woocommerce-photography","id":583602},{"title":"Software Add-on","image":"","excerpt":"Sell License Keys for Software","link":"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;129.00","hash":"79f6dbfe1f1d3a56a86f0509b6d6b04b","slug":"woocommerce-software-add-on","id":18683},{"title":"WooCommerce Bookings Availability","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png","excerpt":"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.","link":"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"30770d2a-e392-4e82-baaa-76cfc7d02ae3","slug":"woocommerce-bookings-availability","id":4228225},{"title":"WooCommerce Products Compare","image":"","excerpt":"WooCommerce Products Compare will allow your potential customers to easily compare products within your store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-products-compare\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"c3ba0a4a3199a0cc7a6112eb24414548","slug":"woocommerce-products-compare","id":853117},{"title":"WooCommerce Store Catalog PDF Download","image":"","excerpt":"Offer your customers a PDF download of your product catalog, generated by WooCommerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-store-catalog-pdf-download\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"79ca7aadafe706364e2d738b7c1090c4","slug":"woocommerce-store-catalog-pdf-download","id":675790},{"title":"eWAY","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg","excerpt":"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.","link":"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"2c497769d98d025e0d340cd0b5ea5da1","slug":"woocommerce-gateway-eway","id":18604},{"title":"Catalog Visibility Options","image":"","excerpt":"Transform WooCommerce into an online catalog by removing eCommerce functionality","link":"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"12e791110365fdbb5865c8658907967e","slug":"woocommerce-catalog-visibility-options","id":18648},{"title":"Sequential Order Numbers Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-updated.png","excerpt":"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes","link":"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"0b18a2816e016ba9988b93b1cd8fe766","slug":"woocommerce-sequential-order-numbers-pro","id":18688},{"title":"WooCommerce Blocks","image":"","excerpt":"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"c2e9f13a-f90c-4ffe-a8a5-b432399ec263","slug":"woo-gutenberg-products-block","id":3076677},{"title":"Conditional Shipping and Payments","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1","excerpt":"Use conditional logic to restrict the shipping and payment options available on your store.","link":"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"1f56ff002fa830b77017b0107505211a","slug":"woocommerce-conditional-shipping-and-payments","id":680253},{"title":"WooCommerce Checkout Add-Ons","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-updated.png","excerpt":"Highlight relevant products, offers like free shipping and other up-sells during checkout.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"8fdca00b4000b7a8cc26371d0e470a8f","slug":"woocommerce-checkout-add-ons","id":466854},{"title":"WooCommerce Order Status Manager","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-updated.png","excerpt":"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;49.00","hash":"51fd9ab45394b4cad5a0ebf58d012342","slug":"woocommerce-order-status-manager","id":588398},{"title":"WooCommerce Google Analytics Pro","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/01\\/Thumbnail-GAPro-updated.png","excerpt":"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"d8aed8b7306b509eec1589e59abe319f","slug":"woocommerce-google-analytics-pro","id":1312497},{"title":"QuickBooks Sync for WooCommerce","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png","excerpt":"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).","link":"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"c5e32e20-7c1f-4585-8b15-d930c2d842ac","slug":"myworks-woo-sync-for-quickbooks-online","id":4065824},{"title":"WooCommerce One Page Checkout","image":"","excerpt":"Create special pages where customers can choose products, checkout &amp; pay all on the one page.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"c9ba8f8352cd71b5508af5161268619a","slug":"woocommerce-one-page-checkout","id":527886},{"title":"WooCommerce Product Search","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png","excerpt":"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/demo.itthinx.com\\/wps\\/","price":"&#36;49.00","hash":"c84cc8ca16ddac3408e6b6c5871133a8","slug":"woocommerce-product-search","id":512174},{"title":"First Data","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-FirstData-updated.png","excerpt":"FirstData gateway for WooCommerce","link":"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"eb3e32663ec0810592eaf0d097796230","slug":"woocommerce-gateway-firstdata","id":18645},{"title":"WooSlider","image":"","excerpt":"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0","link":"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/www.wooslider.com\\/","price":"&#36;49.00","hash":"209d98f3ccde6cc3de7e8732a2b20b6a","slug":"wooslider","id":46506},{"title":"WooCommerce Social Login","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-updated.png","excerpt":"Enable Social Login for seamless checkout and account creation.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/","price":"&#36;79.00","hash":"b231cd6367a79cc8a53b7d992d77525d","slug":"woocommerce-social-login","id":473617},{"title":"Coupon Shortcodes","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png","excerpt":"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.","link":"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"ac5d9d51-70b2-4d8f-8b89-24200eea1394","slug":"woocommerce-coupon-shortcodes","id":244762},{"title":"Variation Swatches and Photos","image":"","excerpt":"Show color and image swatches instead of dropdowns for variable products.","link":"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/","price":"&#36;99.00","hash":"37bea8d549df279c8278878d081b062f","slug":"woocommerce-variation-swatches-and-photos","id":18697},{"title":"WooCommerce Order Status Control","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-updated.png","excerpt":"Use this extension to automatically change the order status to \\"completed\\" after successful payment.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"32400e509c7c36dcc1cd368e8267d981","slug":"woocommerce-order-status-control","id":439037},{"title":"Jilt","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2017\\/12\\/Thumbnail-Jilt-updated.png","excerpt":"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.","link":"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"b53aafb64dca33835e41ee06de7e9816","slug":"jilt-for-woocommerce","id":2754876},{"title":"Opayo","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png","excerpt":"Take payments on your WooCommerce store via Opayo (formally SagePay).","link":"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;79.00","hash":"6bc0cca47d0274d8ef9b164f6fbec1cc","slug":"woocommerce-gateway-sagepay-form","id":18599},{"title":"EU VAT Number","image":"","excerpt":"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.","link":"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;29.00","hash":"d2720c4b4bb8d6908e530355b7a2d734","slug":"woocommerce-eu-vat-number","id":18592},{"title":"QuickBooks Commerce (formerly TradeGecko)","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png","excerpt":"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;0.00","hash":"21da7811f7fc1f13ee19daa7415f0ff3","slug":"woocommerce-tradegecko","id":245960},{"title":"WooCommerce Tab Manager","image":"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-updated.png","excerpt":"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.","link":"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons","demo_url":"","price":"&#36;99.00","hash":"89a9ac74850855cfe772b4b4ee1e31e0","slug":"woocommerce-tab-manager","id":132195}]}";s:7:"headers";O:25:"Requests_Response_Headers":1:{s:7:"\0*\0data";a:18:{s:6:"server";a:1:{i:0;s:5:"nginx";}s:4:"date";a:1:{i:0;s:29:"Thu, 06 May 2021 22:46:16 GMT";}s:12:"content-type";a:1:{i:0;s:31:"application/json; charset=UTF-8";}s:14:"content-length";a:1:{i:0;s:5:"11513";}s:12:"x-robots-tag";a:1:{i:0;s:7:"noindex";}s:4:"link";a:1:{i:0;s:60:"<https://woocommerce.com/wp-json/>; rel="https://api.w.org/"";}s:22:"x-content-type-options";a:1:{i:0;s:7:"nosniff";}s:29:"access-control-expose-headers";a:1:{i:0;s:33:"X-WP-Total, X-WP-TotalPages, Link";}s:28:"access-control-allow-headers";a:1:{i:0;s:73:"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type";}s:13:"x-wccom-cache";a:1:{i:0;s:3:"HIT";}s:13:"cache-control";a:1:{i:0;s:10:"max-age=60";}s:5:"allow";a:1:{i:0;s:3:"GET";}s:16:"content-encoding";a:1:{i:0;s:4:"gzip";}s:4:"x-rq";a:1:{i:0;s:16:"mia1 86 168 3121";}s:3:"age";a:1:{i:0;s:2:"24";}s:7:"x-cache";a:1:{i:0;s:3:"hit";}s:4:"vary";a:1:{i:0;s:23:"Accept-Encoding, Origin";}s:13:"accept-ranges";a:1:{i:0;s:5:"bytes";}}}s:11:"status_code";i:200;s:16:"protocol_version";d:1.1;s:7:"success";b:1;s:9:"redirects";i:0;s:3:"url";s:59:"https://woocommerce.com/wp-json/wccom-extensions/1.0/search";s:7:"history";a:0:{}s:7:"cookies";O:19:"Requests_Cookie_Jar":1:{s:10:"\0*\0cookies";a:0:{}}}s:11:"\0*\0filename";N;s:4:"data";N;s:7:"headers";N;s:6:"status";N;}}', 'no') ;
INSERT INTO `wpso_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(867, 'elementor_active_kit', '17', 'yes'),
(868, 'elementor_scheme_color', 'a:4:{i:1;s:7:"#6ec1e4";i:2;s:7:"#54595f";i:3;s:7:"#7a7a7a";i:4;s:7:"#61ce70";}', 'yes'),
(869, 'elementor_scheme_typography', 'a:4:{i:1;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"600";}i:2;a:2:{s:11:"font_family";s:11:"Roboto Slab";s:11:"font_weight";s:3:"400";}i:3;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"400";}i:4;a:2:{s:11:"font_family";s:6:"Roboto";s:11:"font_weight";s:3:"500";}}', 'yes'),
(870, 'elementor_scheme_color-picker', 'a:8:{i:1;s:7:"#6ec1e4";i:2;s:7:"#54595f";i:3;s:7:"#7a7a7a";i:4;s:7:"#61ce70";i:5;s:7:"#4054b2";i:6;s:7:"#23a455";i:7;s:4:"#000";i:8;s:4:"#fff";}', 'yes'),
(871, 'elementor_log', 'a:1:{s:32:"8ecb06197559d7eff897ea4c1ce1d028";O:31:"Elementor\\Core\\Logger\\Items\\PHP":9:{s:7:"\0*\0file";s:68:"C:\\xampp\\htdocs\\testwp\\wp-content\\plugins\\elementor\\includes\\api.php";s:7:"\0*\0line";i:160;s:7:"\0*\0date";s:19:"2021-05-06 22:46:51";s:7:"\0*\0type";s:7:"warning";s:10:"\0*\0message";s:43:"Undefined array key &quot;pro_widgets&quot;";s:7:"\0*\0meta";a:1:{s:5:"trace";a:1:{i:0;a:3:{s:8:"function";s:8:"shutdown";s:5:"class";s:29:"Elementor\\Core\\Logger\\Manager";s:4:"type";s:2:"->";}}}s:8:"\0*\0times";i:2;s:14:"\0*\0times_dates";a:2:{i:0;s:19:"2021-05-06 22:46:51";i:1;s:19:"2021-05-06 22:58:32";}s:7:"\0*\0args";a:5:{s:4:"type";s:7:"warning";s:7:"message";s:33:"Undefined array key "pro_widgets"";s:4:"file";s:68:"C:\\xampp\\htdocs\\testwp\\wp-content\\plugins\\elementor\\includes\\api.php";s:4:"line";i:160;s:5:"trace";b:1;}}}', 'no'),
(909, '_site_transient_timeout_wpmdb_licence_response', '1620387979', 'no'),
(910, '_site_transient_wpmdb_licence_response', '200', 'no'),
(912, 'wpmdb_state_timeout_609480013fd3b', '1620431238', 'no'),
(913, 'wpmdb_state_609480013fd3b', 'a:25:{s:6:"action";s:19:"wpmdb_migrate_table";s:6:"intent";s:4:"pull";s:3:"url";s:25:"https://kaizencommerce.tk";s:3:"key";s:40:"dAvmYb/7/EvFEJ6rRUCyUCHrGdgPA9mJz3NtJ+UU";s:9:"form_data";s:625:"save_computer=1&gzip_file=1&action=pull&connection_info=https%3A%2F%2Fkaizencommerce.tk%0D%0AdAvmYb%2F7%2FEvFEJ6rRUCyUCHrGdgPA9mJz3NtJ%2BUU&import_find_replace=1&replace_old%5B%5D=&replace_new%5B%5D=&replace_old%5B%5D=%2F%2Fkaizencommerce.tk&replace_new%5B%5D=%2F%2Flocalhost%2Ftestwp&replace_old%5B%5D=%2Fhome%2Fsshhgpvi%2Fkaizencommerce.tk&replace_new%5B%5D=C%3A%5C%5Cxampp%5C%5Chtdocs%5C%5Ctestwp&table_migrate_option=migrate_only_with_prefix&replace_guids=1&exclude_transients=1&create_backup=1&backup_option=backup_only_with_prefix&save_migration_profile_option=new&create_new_profile=kaizencommerce.tk&remote_json_data=";s:5:"stage";s:6:"backup";s:5:"nonce";s:10:"50137ea8a5";s:12:"site_details";a:2:{s:5:"local";a:10:{s:12:"is_multisite";s:5:"false";s:8:"site_url";s:24:"https://localhost/testwp";s:8:"home_url";s:24:"https://localhost/testwp";s:6:"prefix";s:5:"wpso_";s:15:"uploads_baseurl";s:44:"https://localhost/testwp/wp-content/uploads/";s:7:"uploads";a:6:{s:4:"path";s:49:"C:\\xampp\\htdocs\\testwp/wp-content/uploads/2021/05";s:3:"url";s:51:"https://localhost/testwp/wp-content/uploads/2021/05";s:6:"subdir";s:8:"/2021/05";s:7:"basedir";s:41:"C:\\xampp\\htdocs\\testwp/wp-content/uploads";s:7:"baseurl";s:43:"https://localhost/testwp/wp-content/uploads";s:5:"error";b:0;}s:11:"uploads_dir";s:33:"wp-content/uploads/wp-migrate-db/";s:8:"subsites";a:0:{}s:13:"subsites_info";a:0:{}s:20:"is_subdomain_install";s:5:"false";}s:6:"remote";a:10:{s:12:"is_multisite";s:5:"false";s:8:"site_url";s:25:"https://kaizencommerce.tk";s:8:"home_url";s:25:"https://kaizencommerce.tk";s:6:"prefix";s:5:"wpso_";s:15:"uploads_baseurl";s:45:"https://kaizencommerce.tk/wp-content/uploads/";s:7:"uploads";a:6:{s:4:"path";s:59:"/home/sshhgpvi/kaizencommerce.tk/wp-content/uploads/2021/05";s:3:"url";s:52:"https://kaizencommerce.tk/wp-content/uploads/2021/05";s:6:"subdir";s:8:"/2021/05";s:7:"basedir";s:51:"/home/sshhgpvi/kaizencommerce.tk/wp-content/uploads";s:7:"baseurl";s:44:"https://kaizencommerce.tk/wp-content/uploads";s:5:"error";b:0;}s:11:"uploads_dir";s:33:"wp-content/uploads/wp-migrate-db/";s:8:"subsites";a:0:{}s:13:"subsites_info";a:0:{}s:20:"is_subdomain_install";s:5:"false";}}s:11:"temp_prefix";s:5:"_mig_";s:5:"error";i:0;s:15:"remote_state_id";s:13:"60947fea80ce7";s:13:"dump_filename";s:34:"testwp-backup-20210506234713-b47zx";s:8:"dump_url";s:96:"https://localhost/testwp/wp-content/uploads/wp-migrate-db/testwp-backup-20210506234713-yccmm.sql";s:10:"db_version";s:5:"5.5.5";s:8:"site_url";s:24:"https://localhost/testwp";s:18:"find_replace_pairs";a:2:{s:11:"replace_old";a:2:{i:1;s:19:"//kaizencommerce.tk";i:2;s:32:"/home/sshhgpvi/kaizencommerce.tk";}s:11:"replace_new";a:2:{i:1;s:18:"//localhost/testwp";i:2;s:25:"C:\\\\xampp\\\\htdocs\\\\testwp";}}s:18:"migration_state_id";s:13:"609480013fd3b";s:5:"table";s:12:"wpso_options";s:11:"current_row";s:0:"";s:10:"last_table";s:1:"0";s:12:"primary_keys";s:0:"";s:4:"gzip";i:1;s:10:"bottleneck";d:1048576;s:6:"prefix";s:5:"wpso_";s:16:"dumpfile_created";b:1;}', 'no') ;

#
# End of data contents of table `wpso_options`
# --------------------------------------------------------



#
# Delete any existing table `wpso_postmeta`
#

DROP TABLE IF EXISTS `wpso_postmeta`;


#
# Table structure of table `wpso_postmeta`
#

CREATE TABLE `wpso_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_postmeta`
#
INSERT INTO `wpso_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"woocommerce-placeholder-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 13, '_edit_lock', '1620338325:1'),
(12, 15, '_edit_lock', '1620341847:1'),
(13, 15, '_elementor_edit_mode', 'builder'),
(14, 17, '_elementor_edit_mode', 'builder'),
(15, 17, '_elementor_template_type', 'kit'),
(16, 17, '_elementor_version', '3.2.3'),
(17, 15, '_elementor_template_type', 'wp-page'),
(18, 15, '_elementor_version', '3.2.3'),
(19, 17, '_elementor_css', 'a:6:{s:4:"time";i:1620341241;s:5:"fonts";a:2:{i:0;s:6:"Roboto";i:1;s:11:"Roboto Slab";}s:5:"icons";a:0:{}s:20:"dynamic_elements_ids";a:0:{}s:6:"status";s:4:"file";i:0;s:0:"";}'),
(20, 18, '_elementor_edit_mode', 'builder'),
(21, 18, '_elementor_template_type', 'wp-page'),
(22, 18, '_elementor_version', '3.2.3'),
(23, 18, '_wp_page_template', 'default'),
(24, 18, '_elementor_data', '[{"id":"6e7c05e","elType":"section","settings":[],"elements":[{"id":"4660ae0","elType":"column","settings":{"_column_size":100,"_inline_size":null},"elements":[{"id":"4dd8e2c","elType":"widget","settings":[],"elements":[],"widgetType":"image"}],"isInner":false}],"isInner":false},{"id":"4317989","elType":"section","settings":[],"elements":[{"id":"f4fd49f","elType":"column","settings":{"_column_size":100,"_inline_size":null},"elements":[{"id":"70cd2d8","elType":"widget","settings":{"youtube_url":"https:\\/\\/www.youtube.com\\/watch?v=XHOmBV4js_E","vimeo_url":"https:\\/\\/vimeo.com\\/235215203","dailymotion_url":"https:\\/\\/www.dailymotion.com\\/video\\/x6tqhqb"},"elements":[],"widgetType":"video"}],"isInner":false}],"isInner":false},{"id":"5fd84fb","elType":"section","settings":[],"elements":[{"id":"e900db8","elType":"column","settings":{"_column_size":100,"_inline_size":null},"elements":[{"id":"f3e4488","elType":"widget","settings":{"social_icon_list":[{"social_icon":{"value":"fab fa-facebook","library":"fa-brands"},"_id":"4d132ca"},{"social_icon":{"value":"fab fa-twitter","library":"fa-brands"},"_id":"fb19b88"},{"social_icon":{"value":"fab fa-youtube","library":"fa-brands"},"_id":"d3c20ec"}]},"elements":[],"widgetType":"social-icons"}],"isInner":false}],"isInner":false}]'),
(25, 15, '_oembed_7befe71c04536851b6485e7b012d3f0d', '<iframe title="Video Placeholder" width="800" height="450" src="https://www.youtube.com/embed/XHOmBV4js_E?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'),
(26, 15, '_oembed_time_7befe71c04536851b6485e7b012d3f0d', '1620341934') ;

#
# End of data contents of table `wpso_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpso_posts`
#

DROP TABLE IF EXISTS `wpso_posts`;


#
# Table structure of table `wpso_posts`
#

CREATE TABLE `wpso_posts` (
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_posts`
#
INSERT INTO `wpso_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-01 14:07:40', '2021-05-01 14:07:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-05-01 14:07:40', '2021-05-01 14:07:40', '', 0, 'https://localhost/testwp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-01 14:07:40', '2021-05-01 14:07:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="https://localhost/testwp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-05-01 14:07:40', '2021-05-01 14:07:40', '', 0, 'https://localhost/testwp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-01 14:07:40', '2021-05-01 14:07:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: https://localhost/testwp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-05-01 14:07:40', '2021-05-01 14:07:40', '', 0, 'https://localhost/testwp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-01 14:07:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-01 14:07:48', '0000-00-00 00:00:00', '', 0, 'https://localhost/testwp/?p=4', 0, 'post', '', 0),
(5, 1, '2021-05-01 14:48:29', '2021-05-01 14:48:29', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-05-01 14:48:29', '2021-05-01 14:48:29', '', 0, 'https://localhost/testwp/wp-content/uploads/2021/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2021-05-01 14:48:30', '2021-05-01 14:48:30', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2021-05-01 14:48:30', '2021-05-01 14:48:30', '', 0, 'https://localhost/testwp/shop/', 0, 'page', '', 0),
(7, 1, '2021-05-01 14:48:30', '2021-05-01 14:48:30', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-05-01 14:48:30', '2021-05-01 14:48:30', '', 0, 'https://localhost/testwp/cart/', 0, 'page', '', 0),
(8, 1, '2021-05-01 14:48:30', '2021-05-01 14:48:30', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-05-01 14:48:30', '2021-05-01 14:48:30', '', 0, 'https://localhost/testwp/checkout/', 0, 'page', '', 0),
(9, 1, '2021-05-01 14:48:30', '2021-05-01 14:48:30', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-05-01 14:48:30', '2021-05-01 14:48:30', '', 0, 'https://localhost/testwp/my-account/', 0, 'page', '', 0),
(13, 1, '2021-05-06 22:01:08', '2021-05-06 22:01:08', '', 'Home page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2021-05-06 22:01:08', '2021-05-06 22:01:08', '', 0, 'https://localhost/testwp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-05-06 22:01:08', '2021-05-06 22:01:08', '', 'Home page', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-05-06 22:01:08', '2021-05-06 22:01:08', '', 13, 'https://localhost/testwp/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-05-06 22:46:43', '2021-05-06 22:46:43', '', 'Esta pagina la creo aaron', '', 'publish', 'closed', 'closed', '', 'esta-pagina-la-creo-aaron', '', '', '2021-05-06 22:46:43', '2021-05-06 22:46:43', '', 0, 'https://localhost/testwp/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-05-06 22:46:43', '2021-05-06 22:46:43', '', 'Esta pagina la creo aaron', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-05-06 22:46:43', '2021-05-06 22:46:43', '', 15, 'https://localhost/testwp/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-05-06 22:46:50', '2021-05-06 22:46:50', '', 'Default Kit', '', 'publish', 'closed', 'closed', '', 'default-kit', '', '', '2021-05-06 22:46:50', '2021-05-06 22:46:50', '', 0, 'https://localhost/testwp/?elementor_library=default-kit', 0, 'elementor_library', '', 0),
(18, 1, '2021-05-06 22:49:19', '2021-05-06 22:49:19', '<img src="https://localhost/testwp/wp-content/plugins/elementor/assets/images/placeholder.png" title="" alt="" />															\n		https://www.youtube.com/watch?v=XHOmBV4js_E		\n					<a target="_blank" rel="noopener">\n						Facebook\n											</a>\n					<a target="_blank" rel="noopener">\n						Twitter\n											</a>\n					<a target="_blank" rel="noopener">\n						Youtube\n											</a>', 'Esta pagina la creo aaron', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2021-05-06 22:49:19', '2021-05-06 22:49:19', '', 15, 'https://localhost/testwp/?p=18', 0, 'revision', '', 0) ;

#
# End of data contents of table `wpso_posts`
# --------------------------------------------------------



#
# Delete any existing table `wpso_term_relationships`
#

DROP TABLE IF EXISTS `wpso_term_relationships`;


#
# Table structure of table `wpso_term_relationships`
#

CREATE TABLE `wpso_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_term_relationships`
#
INSERT INTO `wpso_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wpso_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wpso_term_taxonomy`
#

DROP TABLE IF EXISTS `wpso_term_taxonomy`;


#
# Table structure of table `wpso_term_taxonomy`
#

CREATE TABLE `wpso_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_term_taxonomy`
#
INSERT INTO `wpso_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0) ;

#
# End of data contents of table `wpso_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wpso_termmeta`
#

DROP TABLE IF EXISTS `wpso_termmeta`;


#
# Table structure of table `wpso_termmeta`
#

CREATE TABLE `wpso_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_termmeta`
#

#
# End of data contents of table `wpso_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpso_terms`
#

DROP TABLE IF EXISTS `wpso_terms`;


#
# Table structure of table `wpso_terms`
#

CREATE TABLE `wpso_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_terms`
#
INSERT INTO `wpso_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wpso_terms`
# --------------------------------------------------------



#
# Delete any existing table `wpso_usermeta`
#

DROP TABLE IF EXISTS `wpso_usermeta`;


#
# Table structure of table `wpso_usermeta`
#

CREATE TABLE `wpso_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_usermeta`
#
INSERT INTO `wpso_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kaizencommerce'),
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
(12, 1, 'wpso_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wpso_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wpso_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"190.79.155.0";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:4kKz0YE9HhVaHRUpi+kCv8qF'),
(20, 1, 'last_update', '1619883141'),
(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1619883150140'),
(22, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{"shipping":1}'),
(23, 1, 'wc_last_active', '1620259200'),
(24, 1, 'woocommerce_admin_homepage_layout', '"two_columns"'),
(25, 1, 'session_tokens', 'a:4:{s:64:"2672ec74938a41f8b318439c3dc7bcb203f952364c928f7d713b7e84b5a9f9be";a:4:{s:10:"expiration";i:1620484941;s:2:"ip";s:13:"190.79.155.33";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36";s:5:"login";i:1620312141;}s:64:"06f0fc1668510b87593e5e68c1a2eb38c2998553d8530463d0b4e8d1c9a1b20d";a:4:{s:10:"expiration";i:1620485964;s:2:"ip";s:14:"181.170.36.166";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36";s:5:"login";i:1620313164;}s:64:"3b3808994e3cc1b116cb8ee1b097625e6d76defdea19e360f3b25141d6b5ce4f";a:4:{s:10:"expiration";i:1620511215;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36";s:5:"login";i:1620338415;}s:64:"540876ec3a1d367ef375f8defe7d6ee0f04ffe9f163c80430d36046b1adf42bc";a:4:{s:10:"expiration";i:1621550500;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36";s:5:"login";i:1620340900;}}'),
(26, 1, '_order_count', '0'),
(30, 1, 'wpso_user-settings', 'editor=tinymce'),
(31, 1, 'wpso_user-settings-time', '1620338415') ;

#
# End of data contents of table `wpso_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wpso_users`
#

DROP TABLE IF EXISTS `wpso_users`;


#
# Table structure of table `wpso_users`
#

CREATE TABLE `wpso_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_users`
#
INSERT INTO `wpso_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kaizencommerce', '$P$BMs2/zXhKoN8S/lv51Mv3j8hXSVqda1', 'kaizencommerce', 'admin@kaizencommerce.tk', 'https://localhost/testwp', '2021-05-01 14:07:40', '', 0, 'kaizencommerce') ;

#
# End of data contents of table `wpso_users`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_admin_note_actions`
#

DROP TABLE IF EXISTS `wpso_wc_admin_note_actions`;


#
# Table structure of table `wpso_wc_admin_note_actions`
#

CREATE TABLE `wpso_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_admin_note_actions`
#
INSERT INTO `wpso_wc_admin_note_actions` ( `action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(19, 18, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(54, 19, 'customize-store-with-storefront', 'Let\'s go!', 'https://localhost/testwp/wp-admin/themes.php?page=storefront-welcome', 'actioned', 1, ''),
(55, 20, 'remove-legacy-coupon-menu', 'Remove legacy coupon menu', 'https://localhost/testwp/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', 1, ''),
(56, 21, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, ''),
(57, 22, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(75, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(93, 24, 'add-first-product', 'Add a product', 'https://localhost/testwp/wp-admin/admin.php?page=wc-admin&task=products', 'actioned', 0, ''),
(94, 25, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/managing-products/?utm_source=inbox', 'actioned', 0, ''),
(146, 26, 'view-payment-gateways', 'Learn more', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(147, 27, 'open-marketing-hub', 'Open marketing hub', 'https://localhost/testwp/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(216, 2, 'open_wc_paypal_payments_product_page', 'Learn more', 'https://woocommerce.com/products/woocommerce-paypal-payments/', 'actioned', 1, ''),
(217, 3, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, ''),
(218, 4, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, ''),
(219, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(220, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(221, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(222, 8, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, ''),
(223, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, ''),
(224, 10, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, ''),
(225, 11, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, ''),
(226, 12, 'add-apple-pay', 'Add Apple Pay', '/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments', 'actioned', 1, ''),
(227, 12, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay', 'actioned', 1, ''),
(228, 13, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, ''),
(229, 14, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, ''),
(230, 15, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, ''),
(231, 16, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, ''),
(232, 17, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 1, '') ;

#
# End of data contents of table `wpso_wc_admin_note_actions`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_admin_notes`
#

DROP TABLE IF EXISTS `wpso_wc_admin_notes`;


#
# Table structure of table `wpso_wc_admin_notes`
#

CREATE TABLE `wpso_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_admin_notes`
#
INSERT INTO `wpso_wc_admin_notes` ( `note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sign up for tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(2, 'paypal_ppcp_gtm_2021', 'marketing', 'en_US', 'Offer more options with the new PayPal', 'Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(3, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved performance and measurement of your Facebook ad campaigns.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(4, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href="https://wordpress.com/support/concierge-support/">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(9, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wcpay-apple-pay-is-now-available', 'marketing', 'en_US', 'Apple Pay is now available with WooCommerce Payments!', 'Increase your conversion rate by offering a fast and secure checkout with <a href="https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay" target="_blank">Apple Pay</a>®. It’s free to get started with <a href="https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay" target="_blank">WooCommerce Payments</a>.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2021-05-03 16:25:34', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-01 14:48:31', NULL, 0, 'plain', '', 0, 'info'),
(19, 'storefront-customize', 'info', 'en_US', 'Design your store with Storefront 🎨', 'Visit the Storefront settings page to start setup and customization of your shop.', '{}', 'unactioned', 'storefront', '2021-05-01 14:54:14', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'Coupon management has moved!', 'Coupons can now be managed from Marketing &gt; Coupons. Click the button below to remove the legacy WooCommerce &gt; Coupons menu item.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-01 15:32:52', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-02 15:19:48', NULL, 0, 'plain', '', 0, 'info'),
(22, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week. We\'re here to help your business succeed! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-05-02 15:19:48', NULL, 0, 'plain', '', 0, 'info'),
(23, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-03 16:25:34', NULL, 0, 'plain', '', 0, 'info'),
(24, 'wc-admin-add-first-product-note', 'email', 'en_US', 'Store setup', 'Nice one, you’ve created a WooCommerce store! Now it’s time to add your first product.<br /><br />There are three ways to add your products: you can <strong>create products manually, import them at once via CSV file</strong>, or <strong>migrate them from another service</strong>.<br /><br /><a href="https://docs.woocommerce.com/document/managing-products/?utm_source=help_panel">Explore our docs</a> for more information, or just get started!', '{"role":"administrator"}', 'unactioned', 'woocommerce-admin', '2021-05-04 19:34:12', NULL, 0, 'plain', 'http://localhost/testwp/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/admin_notes/openbox+purple.png', 0, 'info'),
(25, 'wc-admin-adding-and-managing-products', 'info', 'en_US', 'Adding and Managing Products', 'Learn more about how to set up products in WooCommerce through our useful documentation about adding and managing products.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-04 19:34:12', NULL, 0, 'plain', '', 0, 'info'),
(26, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-06 14:50:31', NULL, 0, 'plain', '', 0, 'info'),
(27, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-05-06 14:50:31', NULL, 0, 'plain', '', 0, 'info') ;

#
# End of data contents of table `wpso_wc_admin_notes`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_category_lookup`
#

DROP TABLE IF EXISTS `wpso_wc_category_lookup`;


#
# Table structure of table `wpso_wc_category_lookup`
#

CREATE TABLE `wpso_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_category_lookup`
#
INSERT INTO `wpso_wc_category_lookup` ( `category_tree_id`, `category_id`) VALUES
(15, 15) ;

#
# End of data contents of table `wpso_wc_category_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_customer_lookup`
#

DROP TABLE IF EXISTS `wpso_wc_customer_lookup`;


#
# Table structure of table `wpso_wc_customer_lookup`
#

CREATE TABLE `wpso_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_customer_lookup`
#

#
# End of data contents of table `wpso_wc_customer_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_download_log`
#

DROP TABLE IF EXISTS `wpso_wc_download_log`;


#
# Table structure of table `wpso_wc_download_log`
#

CREATE TABLE `wpso_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_download_log`
#

#
# End of data contents of table `wpso_wc_download_log`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_order_coupon_lookup`
#

DROP TABLE IF EXISTS `wpso_wc_order_coupon_lookup`;


#
# Table structure of table `wpso_wc_order_coupon_lookup`
#

CREATE TABLE `wpso_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_order_coupon_lookup`
#

#
# End of data contents of table `wpso_wc_order_coupon_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_order_product_lookup`
#

DROP TABLE IF EXISTS `wpso_wc_order_product_lookup`;


#
# Table structure of table `wpso_wc_order_product_lookup`
#

CREATE TABLE `wpso_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_order_product_lookup`
#

#
# End of data contents of table `wpso_wc_order_product_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_order_stats`
#

DROP TABLE IF EXISTS `wpso_wc_order_stats`;


#
# Table structure of table `wpso_wc_order_stats`
#

CREATE TABLE `wpso_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_order_stats`
#

#
# End of data contents of table `wpso_wc_order_stats`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_order_tax_lookup`
#

DROP TABLE IF EXISTS `wpso_wc_order_tax_lookup`;


#
# Table structure of table `wpso_wc_order_tax_lookup`
#

CREATE TABLE `wpso_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_order_tax_lookup`
#

#
# End of data contents of table `wpso_wc_order_tax_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_product_meta_lookup`
#

DROP TABLE IF EXISTS `wpso_wc_product_meta_lookup`;


#
# Table structure of table `wpso_wc_product_meta_lookup`
#

CREATE TABLE `wpso_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_product_meta_lookup`
#

#
# End of data contents of table `wpso_wc_product_meta_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_reserved_stock`
#

DROP TABLE IF EXISTS `wpso_wc_reserved_stock`;


#
# Table structure of table `wpso_wc_reserved_stock`
#

CREATE TABLE `wpso_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_reserved_stock`
#

#
# End of data contents of table `wpso_wc_reserved_stock`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_tax_rate_classes`
#

DROP TABLE IF EXISTS `wpso_wc_tax_rate_classes`;


#
# Table structure of table `wpso_wc_tax_rate_classes`
#

CREATE TABLE `wpso_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_tax_rate_classes`
#
INSERT INTO `wpso_wc_tax_rate_classes` ( `tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate') ;

#
# End of data contents of table `wpso_wc_tax_rate_classes`
# --------------------------------------------------------



#
# Delete any existing table `wpso_wc_webhooks`
#

DROP TABLE IF EXISTS `wpso_wc_webhooks`;


#
# Table structure of table `wpso_wc_webhooks`
#

CREATE TABLE `wpso_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_wc_webhooks`
#

#
# End of data contents of table `wpso_wc_webhooks`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wpso_woocommerce_api_keys`;


#
# Table structure of table `wpso_woocommerce_api_keys`
#

CREATE TABLE `wpso_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_api_keys`
#

#
# End of data contents of table `wpso_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wpso_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wpso_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wpso_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wpso_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wpso_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wpso_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wpso_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wpso_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_log`
#

DROP TABLE IF EXISTS `wpso_woocommerce_log`;


#
# Table structure of table `wpso_woocommerce_log`
#

CREATE TABLE `wpso_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_log`
#

#
# End of data contents of table `wpso_woocommerce_log`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wpso_woocommerce_order_itemmeta`;


#
# Table structure of table `wpso_woocommerce_order_itemmeta`
#

CREATE TABLE `wpso_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_order_itemmeta`
#

#
# End of data contents of table `wpso_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wpso_woocommerce_order_items`;


#
# Table structure of table `wpso_woocommerce_order_items`
#

CREATE TABLE `wpso_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_order_items`
#

#
# End of data contents of table `wpso_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_payment_tokenmeta`
#

DROP TABLE IF EXISTS `wpso_woocommerce_payment_tokenmeta`;


#
# Table structure of table `wpso_woocommerce_payment_tokenmeta`
#

CREATE TABLE `wpso_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_payment_tokenmeta`
#

#
# End of data contents of table `wpso_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_payment_tokens`
#

DROP TABLE IF EXISTS `wpso_woocommerce_payment_tokens`;


#
# Table structure of table `wpso_woocommerce_payment_tokens`
#

CREATE TABLE `wpso_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_payment_tokens`
#

#
# End of data contents of table `wpso_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wpso_woocommerce_sessions`;


#
# Table structure of table `wpso_woocommerce_sessions`
#

CREATE TABLE `wpso_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_sessions`
#
INSERT INTO `wpso_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:737:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2021-05-01T15:32:21+00:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:23:"admin@kaizencommerce.tk";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1620484947) ;

#
# End of data contents of table `wpso_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_shipping_zone_locations`
#

DROP TABLE IF EXISTS `wpso_woocommerce_shipping_zone_locations`;


#
# Table structure of table `wpso_woocommerce_shipping_zone_locations`
#

CREATE TABLE `wpso_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_shipping_zone_locations`
#
INSERT INTO `wpso_woocommerce_shipping_zone_locations` ( `location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VE', 'country') ;

#
# End of data contents of table `wpso_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_shipping_zone_methods`
#

DROP TABLE IF EXISTS `wpso_woocommerce_shipping_zone_methods`;


#
# Table structure of table `wpso_woocommerce_shipping_zone_methods`
#

CREATE TABLE `wpso_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_shipping_zone_methods`
#

#
# End of data contents of table `wpso_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_shipping_zones`
#

DROP TABLE IF EXISTS `wpso_woocommerce_shipping_zones`;


#
# Table structure of table `wpso_woocommerce_shipping_zones`
#

CREATE TABLE `wpso_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_shipping_zones`
#
INSERT INTO `wpso_woocommerce_shipping_zones` ( `zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Venezuela', 0) ;

#
# End of data contents of table `wpso_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wpso_woocommerce_tax_rate_locations`;


#
# Table structure of table `wpso_woocommerce_tax_rate_locations`
#

CREATE TABLE `wpso_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wpso_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wpso_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wpso_woocommerce_tax_rates`;


#
# Table structure of table `wpso_woocommerce_tax_rates`
#

CREATE TABLE `wpso_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpso_woocommerce_tax_rates`
#

#
# End of data contents of table `wpso_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

