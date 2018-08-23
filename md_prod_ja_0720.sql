-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: mdmysql.mysqldb.chinacloudapi.cn    Database: md_prod_ja
-- ------------------------------------------------------
-- Server version	5.5.0.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qywlj_assets`
--

DROP TABLE IF EXISTS `qywlj_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_assets`
--

LOCK TABLES `qywlj_assets` WRITE;
/*!40000 ALTER TABLE `qywlj_assets` DISABLE KEYS */;
INSERT INTO `qywlj_assets` VALUES (1,0,0,195,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(8,1,17,54,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(9,1,55,56,1,'com_cpanel','com_cpanel','{}'),(10,1,57,58,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,59,62,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),(12,1,63,64,1,'com_login','com_login','{}'),(13,1,65,66,1,'com_mailto','com_mailto','{}'),(14,1,67,68,1,'com_massmail','com_massmail','{}'),(15,1,69,70,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,71,74,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),(17,1,75,76,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,77,156,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),(19,1,157,160,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(20,1,161,162,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),(21,1,163,164,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),(22,1,165,166,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,167,168,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),(24,1,169,172,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),(26,1,173,174,1,'com_wrapper','com_wrapper','{}'),(27,8,18,53,2,'com_content.category.2','Uncategorised','{}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),(30,19,158,159,2,'com_newsfeeds.category.5','Uncategorised','{}'),(32,24,170,171,2,'com_users.category.7','Uncategorised','{}'),(33,1,175,176,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,177,178,1,'com_joomlaupdate','com_joomlaupdate','{}'),(35,1,179,180,1,'com_tags','com_tags','{}'),(36,1,181,182,1,'com_contenthistory','com_contenthistory','{}'),(37,1,183,184,1,'com_ajax','com_ajax','{}'),(38,1,185,186,1,'com_postinstall','com_postinstall','{}'),(39,18,78,79,2,'com_modules.module.1','Main Menu','{}'),(40,18,80,81,2,'com_modules.module.2','Login','{}'),(41,18,82,83,2,'com_modules.module.3','Popular Articles','{}'),(42,18,84,85,2,'com_modules.module.4','Recently Added Articles','{}'),(43,18,86,87,2,'com_modules.module.8','Toolbar','{}'),(44,18,88,89,2,'com_modules.module.9','Quick Icons','{}'),(45,18,90,91,2,'com_modules.module.10','Logged-in Users','{}'),(46,18,92,93,2,'com_modules.module.12','Admin Menu','{}'),(47,18,94,95,2,'com_modules.module.13','Admin Submenu','{}'),(48,18,96,97,2,'com_modules.module.14','User Status','{}'),(49,18,98,99,2,'com_modules.module.15','Title','{}'),(50,18,100,101,2,'com_modules.module.16','Login Form','{}'),(51,18,102,103,2,'com_modules.module.17','Breadcrumbs','{}'),(52,18,104,105,2,'com_modules.module.79','Multilanguage status','{}'),(53,18,106,107,2,'com_modules.module.86','Joomla Version','{}'),(54,16,72,73,2,'com_menus.menu.1','Main Menu','{}'),(55,18,108,109,2,'com_modules.module.87','Sample Data','{}'),(56,11,60,61,2,'com_languages.language.2','Chinese Simplified (zh-CN)','{}'),(57,1,187,190,1,'com_sppagebuilder','SP Page Builder','{}'),(58,18,110,111,2,'com_modules.module.88','SP Page Builder','{}'),(59,18,112,113,2,'com_modules.module.89','SP Page Builder','{}'),(60,18,114,115,2,'com_modules.module.90','SP Page Builder Admin Menu','{}'),(61,1,191,192,1,'com_emerald','com_emerald','{}'),(62,1,193,194,1,'com_roksprocket','RokSprocket','{}'),(63,18,116,117,2,'com_modules.module.91','RokSprocket Module','{}'),(64,57,188,189,2,'com_sppagebuilder.page.1','Home','{}'),(65,18,118,119,2,'com_modules.module.92','轮播图','{}'),(66,18,120,121,2,'com_modules.module.93','ceshi','{}'),(67,18,122,123,2,'com_modules.module.94','公司文化','{}'),(68,18,124,125,2,'com_modules.module.95','IT网络实验室','{}'),(69,27,19,20,3,'com_content.article.1','经典场景','{}'),(70,27,21,22,3,'com_content.article.2','优化应用','{}'),(71,27,23,24,3,'com_content.article.3','个性化、智能化','{}'),(72,27,25,26,3,'com_content.article.4','软件测试','{}'),(73,27,27,28,3,'com_content.article.5','理论工程导论','{}'),(74,27,29,30,3,'com_content.article.6','计算操作系统','{}'),(75,27,31,32,3,'com_content.article.7','计算机的组成原理与实践','{}'),(76,18,126,127,2,'com_modules.module.96','热门课程','{}'),(79,18,128,129,2,'com_modules.module.99','SJ Mega Menu','{}'),(80,18,130,131,2,'com_modules.module.100','菜单','{}'),(81,18,132,133,2,'com_modules.module.101','十大经典案例','{}'),(82,27,33,34,3,'com_content.article.8','案例一','{}'),(83,27,35,36,3,'com_content.article.9','案例二','{}'),(84,27,37,38,3,'com_content.article.10','案例三','{}'),(85,27,39,40,3,'com_content.article.11','案例四','{}'),(86,27,41,42,3,'com_content.article.12','案例五','{}'),(87,27,43,44,3,'com_content.article.13','案例六','{}'),(88,27,45,46,3,'com_content.article.14','案例七','{}'),(89,27,47,48,3,'com_content.article.15','案例八','{}'),(90,27,49,50,3,'com_content.article.16','案例九','{}'),(91,27,51,52,3,'com_content.article.17','案例十','{}'),(92,18,134,135,2,'com_modules.module.102','按钮','{}'),(93,18,136,137,2,'com_modules.module.103','独创的教学模式 铸就行业领先品质','{}'),(94,18,138,139,2,'com_modules.module.104','金牌讲师','{}'),(95,18,140,141,2,'com_modules.module.105','slideshow','{}'),(97,18,142,143,2,'com_modules.module.106','备案号','{}'),(98,18,144,145,2,'com_modules.module.107','高级课程','{}'),(99,18,146,147,2,'com_modules.module.108','中级课程','{}'),(100,18,148,149,2,'com_modules.module.109','低级课程','{}'),(101,18,150,151,2,'com_modules.module.110','普通课程','{}'),(102,18,152,153,2,'com_modules.module.111','我的商城','{}'),(103,18,154,155,2,'com_modules.module.112','测试商城模块iframe','{}');
/*!40000 ALTER TABLE `qywlj_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_associations`
--

DROP TABLE IF EXISTS `qywlj_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_associations`
--

LOCK TABLES `qywlj_associations` WRITE;
/*!40000 ALTER TABLE `qywlj_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_banner_clients`
--

DROP TABLE IF EXISTS `qywlj_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_banner_clients`
--

LOCK TABLES `qywlj_banner_clients` WRITE;
/*!40000 ALTER TABLE `qywlj_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_banner_tracks`
--

DROP TABLE IF EXISTS `qywlj_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_banner_tracks`
--

LOCK TABLES `qywlj_banner_tracks` WRITE;
/*!40000 ALTER TABLE `qywlj_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_banners`
--

DROP TABLE IF EXISTS `qywlj_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_banners`
--

LOCK TABLES `qywlj_banners` WRITE;
/*!40000 ALTER TABLE `qywlj_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_categories`
--

DROP TABLE IF EXISTS `qywlj_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_categories`
--

LOCK TABLES `qywlj_categories` WRITE;
/*!40000 ALTER TABLE `qywlj_categories` DISABLE KEYS */;
INSERT INTO `qywlj_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',553,'2018-05-23 02:48:31',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',0,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-05-23 02:48:31',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-05-23 02:48:31',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-05-23 02:48:31',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-05-23 02:48:31',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',553,'2018-05-23 02:48:31',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `qywlj_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_contact_details`
--

DROP TABLE IF EXISTS `qywlj_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_contact_details`
--

LOCK TABLES `qywlj_contact_details` WRITE;
/*!40000 ALTER TABLE `qywlj_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_content`
--

DROP TABLE IF EXISTS `qywlj_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_content`
--

LOCK TABLES `qywlj_content` WRITE;
/*!40000 ALTER TABLE `qywlj_content` DISABLE KEYS */;
INSERT INTO `qywlj_content` VALUES (1,69,'经典场景','2018-05-24-08-53-28','测试网络实验室','',1,2,'2018-05-24 08:53:28',553,'','2018-05-24 08:53:28',0,0,'0000-00-00 00:00:00','2018-05-24 08:53:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,16,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,70,'优化应用','2018-05-24-08-53-50','优化应用','',1,2,'2018-05-24 08:53:50',553,'','2018-05-24 08:53:50',0,0,'0000-00-00 00:00:00','2018-05-24 08:53:50','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,15,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,71,'个性化、智能化','2018-05-24-08-54-32','个性化智能化','',1,2,'2018-05-24 08:54:32',553,'','2018-05-24 08:54:32',0,0,'0000-00-00 00:00:00','2018-05-24 08:54:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,14,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,72,'软件测试','2018-05-25-01-28-03','辅导老师:李太白                        开课时间： 2018年04月02日 ~ 2018年06月30日','',1,2,'2018-05-25 01:28:03',553,'','2018-05-25 01:28:03',0,0,'0000-00-00 00:00:00','2018-05-25 01:28:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,13,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,73,'理论工程导论','2018-05-25-01-28-25','辅导老师:李太白                        开课时间： 2018年04月02日 ~ 2018年06月30日','',1,2,'2018-05-25 01:28:25',553,'','2018-05-25 01:28:25',0,0,'0000-00-00 00:00:00','2018-05-25 01:28:25','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,12,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,74,'计算操作系统','2018-05-25-01-28-38','辅导老师:李太白                        开课时间： 2018年04月02日 ~ 2018年06月30日','',1,2,'2018-05-25 01:28:38',553,'','2018-05-25 01:28:38',0,0,'0000-00-00 00:00:00','2018-05-25 01:28:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,11,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,75,'计算机的组成原理与实践','2018-05-25-01-28-57','辅导老师:李太白                        开课时间： 2018年04月02日 ~ 2018年06月30日','',1,2,'2018-05-25 01:28:57',553,'','2018-05-26 07:49:01',553,0,'0000-00-00 00:00:00','2018-05-25 01:28:57','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,10,'','',2,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,82,'案例一','2018-05-25-07-01-55','Rack安装与配置','',1,2,'2018-05-25 07:01:55',553,'','2018-05-25 07:01:55',0,0,'0000-00-00 00:00:00','2018-05-25 07:01:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,9,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,83,'案例二','2018-05-25-07-02-11','PXE全自动批量装机平台','',1,2,'2018-05-25 07:02:11',553,'','2018-05-25 07:02:11',0,0,'0000-00-00 00:00:00','2018-05-25 07:02:11','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,8,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,84,'案例三','2018-05-25-07-02-25','构建CDN分发网络','',1,2,'2018-05-25 07:02:25',553,'','2018-05-25 07:02:25',0,0,'0000-00-00 00:00:00','2018-05-25 07:02:25','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,7,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,85,'案例四','2018-05-25-07-02-41','KVM虚拟化平台解决方案','',1,2,'2018-05-25 07:02:41',553,'','2018-05-25 07:02:41',0,0,'0000-00-00 00:00:00','2018-05-25 07:02:41','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,6,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,86,'案例五','2018-05-25-07-02-54','KVM虚拟化平台解决方案','',1,2,'2018-05-25 07:02:54',553,'','2018-05-25 07:02:54',0,0,'0000-00-00 00:00:00','2018-05-25 07:02:54','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,5,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,87,'案例六','2018-05-25-07-03-08','企业运维常用Shell脚本','',1,2,'2018-05-25 07:03:08',553,'','2018-05-25 07:03:08',0,0,'0000-00-00 00:00:00','2018-05-25 07:03:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,88,'案例七','2018-05-25-07-03-23','网络存储解决方案','',1,2,'2018-05-25 07:03:23',553,'','2018-05-25 07:03:23',0,0,'0000-00-00 00:00:00','2018-05-25 07:03:23','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(15,89,'案例八','2018-05-25-07-03-34','基于高效Java平台','',1,2,'2018-05-25 07:03:34',553,'','2018-05-25 07:03:34',0,0,'0000-00-00 00:00:00','2018-05-25 07:03:34','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,90,'案例九','2018-05-25-07-03-45','服务器群监控方案','',1,2,'2018-05-25 07:03:45',553,'','2018-05-25 07:03:45',0,0,'0000-00-00 00:00:00','2018-05-25 07:03:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(17,91,'案例十','2018-05-25-07-03-58','构建千万并发量的高可用集群','',1,2,'2018-05-25 07:03:58',553,'','2018-05-25 07:03:58',0,0,'0000-00-00 00:00:00','2018-05-25 07:03:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,17,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `qywlj_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_content_frontpage`
--

DROP TABLE IF EXISTS `qywlj_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_content_frontpage`
--

LOCK TABLES `qywlj_content_frontpage` WRITE;
/*!40000 ALTER TABLE `qywlj_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_content_rating`
--

DROP TABLE IF EXISTS `qywlj_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_content_rating`
--

LOCK TABLES `qywlj_content_rating` WRITE;
/*!40000 ALTER TABLE `qywlj_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_content_types`
--

DROP TABLE IF EXISTS `qywlj_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_content_types`
--

LOCK TABLES `qywlj_content_types` WRITE;
/*!40000 ALTER TABLE `qywlj_content_types` DISABLE KEYS */;
INSERT INTO `qywlj_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `qywlj_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_contentitem_tag_map`
--

DROP TABLE IF EXISTS `qywlj_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_contentitem_tag_map`
--

LOCK TABLES `qywlj_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `qywlj_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_core_log_searches`
--

DROP TABLE IF EXISTS `qywlj_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_core_log_searches`
--

LOCK TABLES `qywlj_core_log_searches` WRITE;
/*!40000 ALTER TABLE `qywlj_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_country`
--

DROP TABLE IF EXISTS `qywlj_emerald_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_country` (
  `id` char(2) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_country`
--

LOCK TABLES `qywlj_emerald_country` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_country` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_country` VALUES ('AD','Andorra'),('AE','United Arab Emirates'),('AF','Afghanistan'),('AG','Antigua and Barbuda'),('AI','Anguilla'),('AL','Albania'),('AM','Armenia'),('AN','Netherlands Antilles'),('AO','Angola'),('AQ','Antarctica'),('AR','Argentina'),('AS','American Samoa'),('AT','Austria'),('AU','Australia'),('AW','Aruba'),('AX','Åland Islands'),('AZ','Azerbaijan'),('BA','Bosnia and Herzegovina'),('BB','Barbados'),('BD','Bangladesh'),('BE','Belgium'),('BF','Burkina Faso'),('BG','Bulgaria'),('BH','Bahrain'),('BI','Burundi'),('BJ','Benin'),('BL','Saint Barthélemy'),('BM','Bermuda'),('BN','Brunei'),('BO','Bolivia'),('BQ','British Antarctic Territory'),('BR','Brazil'),('BS','Bahamas'),('BT','Bhutan'),('BV','Bouvet Island'),('BW','Botswana'),('BY','Belarus'),('BZ','Belize'),('CA','Canada'),('CC','Cocos [Keeling] Islands'),('CD','Congo - Kinshasa'),('CF','Central African Republic'),('CG','Congo - Brazzaville'),('CH','Switzerland'),('CI','Côte d’Ivoire'),('CK','Cook Islands'),('CL','Chile'),('CM','Cameroon'),('CN','China'),('CO','Colombia'),('CR','Costa Rica'),('CS','Serbia and Montenegro'),('CT','Canton and Enderbury Islands'),('CU','Cuba'),('CV','Cape Verde'),('CX','Christmas Island'),('CY','Cyprus'),('CZ','Czech Republic'),('DD','East Germany'),('DE','Germany'),('DJ','Djibouti'),('DK','Denmark'),('DM','Dominica'),('DO','Dominican Republic'),('DZ','Algeria'),('EC','Ecuador'),('EE','Estonia'),('EG','Egypt'),('EH','Western Sahara'),('ER','Eritrea'),('ES','Spain'),('ET','Ethiopia'),('FI','Finland'),('FJ','Fiji'),('FK','Falkland Islands'),('FM','Micronesia'),('FO','Faroe Islands'),('FQ','French Southern and Antarctic Territories'),('FR','France'),('FX','Metropolitan France'),('GA','Gabon'),('GB','United Kingdom'),('GD','Grenada'),('GE','Georgia'),('GF','French Guiana'),('GG','Guernsey'),('GH','Ghana'),('GI','Gibraltar'),('GL','Greenland'),('GM','Gambia'),('GN','Guinea'),('GP','Guadeloupe'),('GQ','Equatorial Guinea'),('GR','Greece'),('GS','South Georgia and the South Sandwich Islands'),('GT','Guatemala'),('GU','Guam'),('GW','Guinea-Bissau'),('GY','Guyana'),('HK','Hong Kong SAR China'),('HM','Heard Island and McDonald Islands'),('HN','Honduras'),('HR','Croatia'),('HT','Haiti'),('HU','Hungary'),('ID','Indonesia'),('IE','Ireland'),('IL','Israel'),('IM','Isle of Man'),('IN','India'),('IO','British Indian Ocean Territory'),('IQ','Iraq'),('IR','Iran'),('IS','Iceland'),('IT','Italy'),('JE','Jersey'),('JM','Jamaica'),('JO','Jordan'),('JP','Japan'),('JT','Johnston Island'),('KE','Kenya'),('KG','Kyrgyzstan'),('KH','Cambodia'),('KI','Kiribati'),('KM','Comoros'),('KN','Saint Kitts and Nevis'),('KP','North Korea'),('KR','South Korea'),('KW','Kuwait'),('KY','Cayman Islands'),('KZ','Kazakhstan'),('LA','Laos'),('LB','Lebanon'),('LC','Saint Lucia'),('LI','Liechtenstein'),('LK','Sri Lanka'),('LR','Liberia'),('LS','Lesotho'),('LT','Lithuania'),('LU','Luxembourg'),('LV','Latvia'),('LY','Libya'),('MA','Morocco'),('MC','Monaco'),('MD','Moldova'),('ME','Montenegro'),('MF','Saint Martin'),('MG','Madagascar'),('MH','Marshall Islands'),('MI','Midway Islands'),('MK','Macedonia'),('ML','Mali'),('MM','Myanmar [Burma]'),('MN','Mongolia'),('MO','Macau SAR China'),('MP','Northern Mariana Islands'),('MQ','Martinique'),('MR','Mauritania'),('MS','Montserrat'),('MT','Malta'),('MU','Mauritius'),('MV','Maldives'),('MW','Malawi'),('MX','Mexico'),('MY','Malaysia'),('MZ','Mozambique'),('NA','Namibia'),('NC','New Caledonia'),('NE','Niger'),('NF','Norfolk Island'),('NG','Nigeria'),('NI','Nicaragua'),('NL','Netherlands'),('NO','Norway'),('NP','Nepal'),('NQ','Dronning Maud Land'),('NR','Nauru'),('NT','Neutral Zone'),('NU','Niue'),('NZ','New Zealand'),('OM','Oman'),('PA','Panama'),('PC','Pacific Islands Trust Territory'),('PE','Peru'),('PF','French Polynesia'),('PG','Papua New Guinea'),('PH','Philippines'),('PK','Pakistan'),('PL','Poland'),('PM','Saint Pierre and Miquelon'),('PN','Pitcairn Islands'),('PR','Puerto Rico'),('PS','Palestinian Territories'),('PT','Portugal'),('PU','U.S. Miscellaneous Pacific Islands'),('PW','Palau'),('PY','Paraguay'),('PZ','Panama Canal Zone'),('QA','Qatar'),('RE','Réunion'),('RO','Romania'),('RS','Serbia'),('RU','Russia'),('RW','Rwanda'),('SA','Saudi Arabia'),('SB','Solomon Islands'),('SC','Seychelles'),('SD','Sudan'),('SE','Sweden'),('SG','Singapore'),('SH','Saint Helena'),('SI','Slovenia'),('SJ','Svalbard and Jan Mayen'),('SK','Slovakia'),('SL','Sierra Leone'),('SM','San Marino'),('SN','Senegal'),('SO','Somalia'),('SR','Suriname'),('ST','São Tomé and Príncipe'),('SU','Union of Soviet Socialist Republics'),('SV','El Salvador'),('SY','Syria'),('SZ','Swaziland'),('TC','Turks and Caicos Islands'),('TD','Chad'),('TF','French Southern Territories'),('TG','Togo'),('TH','Thailand'),('TJ','Tajikistan'),('TK','Tokelau'),('TL','Timor-Leste'),('TM','Turkmenistan'),('TN','Tunisia'),('TO','Tonga'),('TR','Türkiye'),('TT','Trinidad and Tobago'),('TV','Tuvalu'),('TW','Taiwan'),('TZ','Tanzania'),('UA','Ukraine'),('UG','Uganda'),('UM','U.S. Minor Outlying Islands'),('US','United States'),('UY','Uruguay'),('UZ','Uzbekistan'),('VA','Vatican City'),('VC','Saint Vincent and the Grenadines'),('VD','North Vietnam'),('VE','Venezuela'),('VG','British Virgin Islands'),('VI','U.S. Virgin Islands'),('VN','Vietnam'),('VU','Vanuatu'),('WF','Wallis and Futuna'),('WK','Wake Island'),('WS','Samoa'),('YD','People`s Democratic Republic of Yemen'),('YE','Yemen'),('YT','Mayotte'),('ZA','South Africa'),('ZM','Zambia'),('ZW','Zimbabwe'),('ZZ','Unknown or Invalid Region');
/*!40000 ALTER TABLE `qywlj_emerald_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_coupons`
--

DROP TABLE IF EXISTS `qywlj_emerald_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL DEFAULT '',
  `discount` double(12,2) NOT NULL DEFAULT '0.00',
  `discount_type` set('PROCENT','SUM','FIXED') NOT NULL DEFAULT 'PROCENT',
  `user_ids` text NOT NULL,
  `strict` tinyint(1) NOT NULL DEFAULT '0',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `use_num` int(10) NOT NULL DEFAULT '0',
  `used_num` int(10) NOT NULL DEFAULT '0',
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `plan_ids` text NOT NULL,
  `use_user` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `trash` (`trash`),
  KEY `extime` (`extime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_coupons`
--

LOCK TABLES `qywlj_emerald_coupons` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_coupons` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_coupons` VALUES (1,'六一折扣',10.00,'PROCENT','',0,'2018-07-12 00:00:00','2018-07-13 00:00:00',1,0,0,0,'0000-00-00 00:00:00',1,'',1),(2,'折扣',90.00,'PROCENT','',0,'2018-07-12 00:00:00','2018-07-13 00:00:00',1,0,0,0,'0000-00-00 00:00:00',1,'[\"19\",\"15\"]',1);
/*!40000 ALTER TABLE `qywlj_emerald_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_coupons_history`
--

DROP TABLE IF EXISTS `qywlj_emerald_coupons_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_coupons_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `coupon_id` int(11) NOT NULL DEFAULT '0',
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `discount` float(10,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) NOT NULL DEFAULT '',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_sub` (`subscription_id`),
  KEY `ids_plan` (`plan_id`),
  KEY `idx_coupon` (`coupon_id`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_coupons_history`
--

LOCK TABLES `qywlj_emerald_coupons_history` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_coupons_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_coupons_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_exp_alerts`
--

DROP TABLE IF EXISTS `qywlj_emerald_exp_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_exp_alerts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_subscription_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `stime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_exp_alerts`
--

LOCK TABLES `qywlj_emerald_exp_alerts` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_exp_alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_exp_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_fields`
--

DROP TABLE IF EXISTS `qywlj_emerald_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `params` text NOT NULL,
  `access` tinyint(1) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `ctime` datetime DEFAULT '0000-00-00 00:00:00',
  `ordering` tinyint(1) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `checked_out` int(11) DEFAULT '0',
  `checked_out_time` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_fields`
--

LOCK TABLES `qywlj_emerald_fields` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_fields` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_fields` VALUES (4,'PHP','date','{\"params\":{\"max_days\":\"3\",\"min_days\":\"1\",\"note\":\"Select date and how many days and click apply.\"}}',1,1,0,'2018-07-14 01:00:36',0,'',553,'2018-07-19 05:35:58');
/*!40000 ALTER TABLE `qywlj_emerald_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_hikashop_orders`
--

DROP TABLE IF EXISTS `qywlj_emerald_hikashop_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_hikashop_orders` (
  `order_id` int(10) NOT NULL DEFAULT '0',
  `subscriptions` varchar(255) NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_hikashop_orders`
--

LOCK TABLES `qywlj_emerald_hikashop_orders` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_hikashop_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_hikashop_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_invoice_to`
--

DROP TABLE IF EXISTS `qywlj_emerald_invoice_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_invoice_to` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `fields` text,
  `ip` varchar(17) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_invoice_to`
--

LOCK TABLES `qywlj_emerald_invoice_to` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_invoice_to` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_invoice_to` VALUES (1,553,'{\"billto\":\"test\",\"address\":\"test\",\"city\":\"test\",\"zip\":\"test\",\"country\":\"CN\",\"state\":\"190\",\"tax_id\":\"200002\",\"phone\":\"12345767890\",\"vies\":0}','::1'),(2,553,'{\"billto\":\"test\",\"address\":\"test\",\"city\":\"test\",\"zip\":\"test\",\"country\":\"AF\",\"tax_id\":\"200002\",\"phone\":\"12345767890\",\"vies\":0}','::1'),(3,554,'{\"billto\":\"test\",\"address\":\"test\",\"city\":\"test\",\"zip\":\"test\",\"country\":\"AF\",\"tax_id\":\"200002\",\"phone\":\"12345767890\",\"vies\":0}','::1'),(4,559,'{\"billto\":\"32\",\"address\":\"32\",\"city\":\"32\",\"zip\":\"32\",\"country\":\"AF\",\"tax_id\":\"32\",\"phone\":\"132\",\"vies\":0}','117.62.199.204'),(5,558,'{\"billto\":\"1111\",\"vies\":0,\"address\":\"aaa\",\"city\":\"bbb\",\"zip\":\"000000\",\"country\":\"CN\",\"state\":\"192\",\"tax_id\":\"123456\",\"phone\":\"12345678\"}','222.94.206.164');
/*!40000 ALTER TABLE `qywlj_emerald_invoice_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_plans`
--

DROP TABLE IF EXISTS `qywlj_emerald_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL DEFAULT '',
  `group_id` int(10) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` datetime DEFAULT '0000-00-00 00:00:00',
  `synctime` datetime DEFAULT '0000-00-00 00:00:00',
  `ordering` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  `grant_reg` tinyint(1) NOT NULL DEFAULT '0',
  `grant_new` tinyint(1) NOT NULL DEFAULT '0',
  `invisible` tinyint(1) NOT NULL DEFAULT '0',
  `invisible_in_history` tinyint(1) NOT NULL DEFAULT '0',
  `access_pay` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_group` (`group_id`),
  KEY `idx_state` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_plans`
--

LOCK TABLES `qywlj_emerald_plans` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_plans` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_plans` VALUES (15,'Linux',7,1,'2018-07-11 05:20:37','2018-07-19 06:05:47','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"50.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"1\",\"days_type\":\"days\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"0\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"0\",\"purchase_limit_period\":\"0\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\",\"redirect_fail\":\"\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"0\",\"donation_max_price\":\"\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"<image src=\\\"http:\\/\\/p2.so.qhimgs1.com\\/bdr\\/200_200_\\/t018b6f38a0007e4822.jpg\\\" style=\\\"height:250px;width:450px;\\\"><\\/image>\\r\\n<p>\\r\\n  Linux\\u662f\\u4e00\\u6b3e\\u514d\\u8d39\\u7684\\u64cd\\u4f5c\\u7cfb\\u7edf\\uff0c\\u7528\\u6237\\u53ef\\u4ee5\\u901a\\u8fc7\\u7f51\\u7edc\\u6216\\u5176\\u4ed6\\u9014\\u5f84\\u514d\\u8d39\\u83b7\\u5f97\\uff0c\\u5e76\\u53ef\\u4ee5\\u4efb\\u610f\\u4fee\\u6539\\u5176\\u6e90\\u4ee3\\u7801\\u3002\\u5177\\u6709\\u5b8c\\u5168\\u514d\\u8d39\\uff0c\\u591a\\u7528\\u6237\\u591a\\u4efb\\u52a1\\uff0c\\u826f\\u597d\\u7684\\u754c\\u9762\\uff0c\\u652f\\u6301\\u591a\\u79cd\\u5e73\\u53f0\\u7684\\u7279\\u6027\\u3002\\r\\n<\\/p>\",\"description_history\":\"\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"\",\"key\":\"\",\"email\":\"\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"USD\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"0\",\"errorlog\":\"0\"},\"offline\":{\"enable\":\"0\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"Offline Payment Instructions\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"0\",\"redirect\":\"\",\"billing\":\"0\",\"bill_inst\":\"\"}},\"crossplans\":{\"method\":\"disc\",\"plan_price_active\":\"0\",\"plan_price_discount\":\"5\",\"cp_plans\":[\"22\",\"19\",\"17\",\"18\"],\"plans_hide_active\":\"0\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"1\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1),(17,'Java',9,1,'2018-07-11 05:21:22','2018-07-19 09:38:23','0000-00-00 00:00:00',6,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"1000.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"1\",\"days_type\":\"days\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"1\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"1\",\"purchase_limit_period\":\"1\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\",\"redirect_fail\":\"\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"0\",\"donation_max_price\":\"\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"<image src=\\\"http:\\/\\/p0.so.qhimgs1.com\\/bdr\\/200_200_\\/t0151467e81a9004d5a.jpg\\\" style=\\\"height:250px;width:450px;\\\"><\\/image>\\r\\n<br>\\r\\n<p>\\r\\n  Java\\u4e00\\u79cd\\u53ef\\u4ee5\\u64b0\\u5199\\u8de8\\u5e73\\u53f0\\u5e94\\u7528\\u8f6f\\u4ef6\\u7684\\u9762\\u5411\\u5bf9\\u8c61\\u7684\\u7a0b\\u5e8f\\u8bbe\\u8ba1\\u8bed\\u8a00\\u3002\\u6280\\u672f\\u5177\\u6709\\u5353\\u8d8a\\u7684\\u901a\\u7528\\u6027\\u3001\\u9ad8\\u6548\\u6027\\u3001\\u5e73\\u53f0\\u79fb\\u690d\\u6027\\u548c\\u5b89\\u5168\\u6027\\u3002\\r\\n<\\/p>\",\"description_history\":\"\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"\",\"key\":\"\",\"email\":\"\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"USD\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"0\",\"errorlog\":\"0\"},\"offline\":{\"enable\":\"0\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"Offline Payment Instructions\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"0\",\"redirect\":\"\",\"billing\":\"0\",\"bill_inst\":\"\"}},\"crossplans\":{\"method\":\"and\",\"plan_price_active\":\"0\",\"plan_price_discount\":\"20\",\"cp_plans\":[\"22\",\"19\",\"28\",\"18\",\"15\"],\"plans_hide\":[\"22\",\"19\",\"28\",\"18\",\"15\"],\"plans_hide_active\":\"1\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"1\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1),(18,'Python',8,1,'2018-07-11 05:27:53','2018-07-19 06:44:26','0000-00-00 00:00:00',1,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"300.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"14\",\"days_type\":\"days\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"0\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"0\",\"purchase_limit_period\":\"0\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\",\"redirect_fail\":\"\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"0\",\"donation_max_price\":\"\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"<image src=\\\"http:\\/\\/static.open-open.com\\/lib\\/uploadImg\\/20160623\\/20160623173015_416.png\\\" style=\\\"height:250px;width:450px;\\\"><\\/image>\\r\\n<br>\\r\\n<p>\\r\\n  python \\u662f\\u4e00\\u79cd\\u9762\\u5411\\u5bf9\\u8c61\\u7684\\u89e3\\u91ca\\u578b\\u8ba1\\u7b97\\u673a\\u7a0b\\u5e8f\\u8bbe\\u8ba1\\u8bed\\u8a00,\\u5177\\u6709\\u7b80\\u5355\\u3001\\u6613\\u5b66\\u3001\\u901f\\u5ea6\\u5feb\\u3001\\u514d\\u8d39\\u3001\\u5f00\\u6e90\\u3001\\u9ad8\\u5c42\\u8bed\\u8a00\\u3001\\u53ef\\u79fb\\u690d\\u6027\\u3001\\u89e3\\u91ca\\u6027\\u7b49\\u4f18\\u70b9\\u3002\\r\\n<\\/p>\",\"description_history\":\"\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"\",\"key\":\"\",\"email\":\"\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"USD\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"0\",\"errorlog\":\"0\"},\"offline\":{\"enable\":\"0\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"Offline Payment Instructions\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"0\",\"redirect\":\"\",\"billing\":\"0\",\"bill_inst\":\"\"}},\"crossplans\":{\"method\":\"disc\",\"plan_price_active\":\"1\",\"plan_price_discount\":\"20\",\"cp_plans\":[\"22\",\"19\",\"17\",\"28\",\"15\"],\"plans_hide_active\":\"1\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"1\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1),(19,'PHP',9,1,'2018-07-11 05:28:23','2018-07-19 09:57:53','0000-00-00 00:00:00',5,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"150.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"1\",\"days_type\":\"months\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"1\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"0\",\"purchase_limit_period\":\"0\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\\/mdjoomla\",\"redirect_fail\":\"\\/mdjoomla\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"0\",\"donation_max_price\":\"\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"<image src=\\\"http:\\/\\/p5.so.qhimgs1.com\\/bdr\\/200_200_\\/t0175ea6ef5a4cf2bbb.png\\\" style=\\\"height:250px;width:450px;\\\"><\\/image>\\r\\n<br>\\r\\n<p>\\r\\n  PHP\\u662f\\u4e00\\u79cdHTML\\u5185\\u5d4c\\u5f0f\\u8bed\\u8a00\\uff0c\\uff0c\\u662f\\u4e00\\u79cd\\u5728\\u670d\\u52a1\\u5668\\u7aef\\u6267\\u884c\\u7684\\u5d4c\\u5165HTML\\u6587\\u6863\\u7684\\u811a\\u672c\\u8bed\\u8a00\\uff0c\\u8bed\\u8a00\\u7684\\u98ce\\u683c\\u6709\\u7c7b\\u4f3c\\u4e8eC\\u8bed\\u8a00\\uff0c\\u88ab\\u5e7f\\u6cdb\\u5730\\u8fd0\\u7528\\u3002PHP\\u5177\\u6709\\u5feb\\u6377\\u6027\\u3001\\u8de8\\u5e73\\u53f0\\u6027\\u9ad8\\u3001\\u6548\\u7387\\u9ad8\\u3001\\u4e13\\u4e1a\\u4e13\\u6ce8\\u7b49\\u4f18\\u52bf\\uff0c\\u5b83\\u8fd8\\u662f\\u4e00\\u79cd\\u5f00\\u653e\\u7684\\u6e90\\u4ee3\\u7801\\uff0c\\u53ef\\u4ee5\\u5bf9\\u56fe\\u50cf\\u8fdb\\u884c\\u5904\\u7406\\u3002\\r\\n<\\/p>\\r\\n\",\"description_history\":\"\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"2088031360028775\",\"key\":\"u30nuv4lpghqh9zsnqamj6sczl627ciy\",\"email\":\"jsxiaochuang@mindme.cn\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"RMB\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"1\",\"errorlog\":\"1\"},\"offline\":{\"enable\":\"1\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"2207558858@qq.com\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"2328228945@qq.com\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"1\",\"redirect\":\"https:\\/\\/lms.mindme.com.cn\\/mdjoomla\",\"billing\":\"1\",\"bill_inst\":\"321\"}},\"crossplans\":{\"method\":\"and\",\"plan_price_active\":\"0\",\"plan_price_discount\":\"20\",\"plans_hide_active\":\"0\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"3232\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1),(22,'Git',9,1,'2018-07-11 07:22:32','2018-07-19 09:59:20','0000-00-00 00:00:00',4,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"1000.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"1\",\"days_type\":\"days\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"1\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"0\",\"purchase_limit_period\":\"0\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"fields\":[\"4\"],\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\",\"redirect_fail\":\"\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"1\",\"donation_max_price\":\"50\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"<image src=\\\"https:\\/\\/timgsa.baidu.com\\/timg?image&quality=80&size=b9999_10000&sec=1531370378652&di=9837e7006c524c90f77d89f379e7d629&imgtype=0&src=http%3A%2F%2Fwww.th7.cn%2Fd%2Ffile%2Fp%2F2017%2F01%2F17%2F3e16a41c6925fa5636c96cf862bd7c35.jpg\\\" style=\\\"height:250px;width:450px;\\\"><\\/image>\\r\\n<p>\\r\\n  Git\\u662f\\u4e00\\u4e2a\\u514d\\u8d39\\u7684\\u3001\\u5f00\\u6e90\\u7684\\u5206\\u5e03\\u5f0f\\u7248\\u672c\\u63a7\\u5236\\u7cfb\\u7edf\\uff0c\\u65e8\\u5728\\u5feb\\u901f\\u9ad8\\u6548\\u5730\\u5904\\u7406\\u4ece\\u5c0f\\u578b\\u5230\\u5927\\u578b\\u7684\\u6240\\u6709\\u9879\\u76ee\\u3002\\u5b83\\u6613\\u4e8e\\u5b66\\u4e60\\uff0c\\u5177\\u6709\\u6781\\u5c0f\\u7684\\u5360\\u7528\\u7a7a\\u95f4\\uff0c\\u5177\\u6709\\u95ea\\u7535\\u822c\\u7684\\u5feb\\u901f\\u6027\\u80fd\\r\\n<\\/p>\",\"description_history\":\"<p>\\r\\n  Git\\u662f\\u4e00\\u4e2a\\u514d\\u8d39\\u7684\\u3001\\u5f00\\u6e90\\u7684\\u5206\\u5e03\\u5f0f\\u7248\\u672c\\u63a7\\u5236\\u7cfb\\u7edf\\uff0c\\u65e8\\u5728\\u5feb\\u901f\\u9ad8\\u6548\\u5730\\u5904\\u7406\\u4ece\\u5c0f\\u578b\\u5230\\u5927\\u578b\\u7684\\u6240\\u6709\\u9879\\u76ee\\u3002\\u5b83\\u6613\\u4e8e\\u5b66\\u4e60\\uff0c\\u5177\\u6709\\u6781\\u5c0f\\u7684\\u5360\\u7528\\u7a7a\\u95f4\\uff0c\\u5177\\u6709\\u95ea\\u7535\\u822c\\u7684\\u5feb\\u901f\\u6027\\u80fd\\r\\n<\\/p>\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"2088031360028775\",\"key\":\"u30nuv4lpghqh9zsnqamj6sczl627ciy\",\"email\":\"jsxiaochuang@mindme.cn\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"RMB\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"1\",\"errorlog\":\"1\"},\"offline\":{\"enable\":\"1\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"2207558858@qq.com\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"Offline Payment Instructions\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"0\",\"redirect\":\"\",\"billing\":\"0\",\"bill_inst\":\"\"}},\"crossplans\":{\"plan_price\":[\"28\",\"18\"],\"method\":\"and\",\"plan_price_active\":\"1\",\"plan_price_discount\":\"0\",\"cp_plans\":[\"19\",\"17\",\"28\",\"18\",\"30\",\"15\"],\"plans_hide\":[\"19\",\"17\",\"28\",\"18\",\"30\",\"15\"],\"plans_hide_active\":\"1\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"1\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1),(28,'oracle',8,1,'2018-07-12 07:23:08','2018-07-19 06:05:28','0000-00-00 00:00:00',0,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"200.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"1\",\"days_type\":\"days\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"0\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"0\",\"purchase_limit_period\":\"0\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\",\"redirect_fail\":\"\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"0\",\"donation_max_price\":\"\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"<image src=\\\"https:\\/\\/timgsa.baidu.com\\/timg?image&quality=80&size=b9999_10000&sec=1531378126702&di=795b6348046a16ede46ef5bb3c29c1c6&imgtype=0&src=http%3A%2F%2Fwww.mianfeiwendang.com%2Fpic%2Fcffc7ec96dd36d6336b9fd7f%2F1-160-png_6_0_0_312_796_288_88_892.979_1262.879-519-0-257-519.jpg\\\" style=\\\"height:250px;width:450px;\\\"><\\/image>\\r\\n<br>\\r\\n<p>\\r\\n\\t\\u6570\\u636e\\u5e93\\u7cfb\\u7edf\\u53ef\\u79fb\\u690d\\u6027\\u597d\\u3001\\u4f7f\\u7528\\u65b9\\u4fbf\\u3001\\u529f\\u80fd\\u5f3a\\uff0c\\u9002\\u7528\\u4e8e\\u5404\\u7c7b\\u5927\\u3001\\u4e2d\\u3001\\u5c0f\\u3001\\u5fae\\u673a\\u73af\\u5883\\u3002\\u5b83\\u662f\\u4e00\\u79cd\\u9ad8\\u6548\\u7387\\u3001\\u53ef\\u9760\\u6027\\u597d\\u7684 \\u9002\\u5e94\\u9ad8\\u541e\\u5410\\u91cf\\u7684\\u6570\\u636e\\u5e93\\u89e3\\u51b3\\u65b9\\u6848\\u3002\\r\\n<\\/p>\\r\\n\",\"description_history\":\"\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"\",\"key\":\"\",\"email\":\"\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"USD\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"0\",\"errorlog\":\"0\"},\"offline\":{\"enable\":\"0\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"Offline Payment Instructions\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"0\",\"redirect\":\"\",\"billing\":\"0\",\"bill_inst\":\"\"}},\"crossplans\":{\"method\":\"or\",\"plan_price_active\":\"0\",\"plan_price_discount\":\"20\",\"cp_plans\":[\"22\",\"19\",\"17\",\"18\",\"15\"],\"plans_hide_active\":\"1\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"1\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1),(30,'shell',7,1,'2018-07-19 06:11:51','2018-07-19 07:02:59','0000-00-00 00:00:00',0,1,0,'0000-00-00 00:00:00','{\"properties\":{\"price\":\"100.00\",\"currency\":\"$\",\"layout_price\":\"Sign 00\",\"discount\":\"0\",\"days\":\"1\",\"days_type\":\"days\",\"cl_period\":\"2\",\"date_from\":\"\",\"date_to\":\"\",\"date_fixed\":\"0\",\"purchase_limit\":\"0\",\"purchase_limit_active\":\"0\",\"purchase_limit_user\":\"0\",\"purchase_limit_user_period\":\"0\",\"purchase_limit_period\":\"0\",\"purchase_limit_period_in\":\"DAY\",\"count_limit\":\"0\",\"count_limit_mode\":\"0\",\"invisible\":\"0\",\"invisible_in_history\":\"0\",\"muaccess\":\"\",\"redirect\":\"\",\"redirect_fail\":\"\",\"terms\":\"\",\"rds\":\"0\",\"rds_email_login\":\"0\",\"grant_reg\":\"0\",\"grant_new\":\"0\",\"granturl\":\"\",\"donation\":\"0\",\"donation_max_price\":\"\",\"donation_step\":\"5\",\"donation_manual\":\"0\"},\"descriptions\":{\"description\":\"\",\"description_history\":\"\"},\"gateway\":{\"message\":\"This is very secure payment\"},\"gateways\":{\"alipay\":{\"enable\":\"1\",\"label\":\"Pay with AliPay\",\"image\":\"alipay.png\",\"partner\":\"\",\"key\":\"\",\"email\":\"\",\"cert\":\"\\/components\\/com_emerald\\/library\\/gateways\\/alipay\\/cacert.pem\",\"service\":\"create_partner_trade_by_buyer\",\"currency\":\"RMB\",\"charset\":\"utf-8\",\"transport\":\"https\",\"demo\":\"0\",\"errorlog\":\"0\"},\"offline\":{\"enable\":\"0\",\"label\":\"Pay offline\",\"image\":\"offline.gif\",\"email\":\"\",\"subject\":\"New offline payment request\",\"adm_body\":\"### Hello Admin, \\r\\n\\r\\n User [USER] have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. Please reply this email to provide additional instructions.\\r\\n\\r\\nSincerely your,\\r\\noffline gateway robot\",\"cus_subj\":\"Offline Payment Instructions\",\"cus_body\":\"### Hello [USER]\\r\\n\\r\\nYou have requested to purchase [SUBSCR_NAME]:[GROUPNAME] by offline money transfer. New order [ORDER_ID] has been created. You can chek it\'s status [here]([HISTORY_URL]) \\r\\n\\r\\nPlease transfer with amount of **[PRICE]** to our bank account.\\r\\n\\r\\nYou bank account details here.\\r\\n\\r\\nSincerely your,\\r\\nSitename\",\"published\":\"0\",\"redirect\":\"\",\"billing\":\"0\",\"bill_inst\":\"\"}},\"crossplans\":{\"method\":\"or\",\"plan_price_active\":\"0\",\"plan_price_discount\":\"20\",\"plans_hide_active\":\"0\",\"required\":\"0\",\"required_behave\":\"0\",\"show_grant\":\"1\",\"ud_price_step\":\"1\"},\"alerts\":{\"alert_enable_success\":\"1\",\"alert_enable_fail\":\"1\",\"alert_enable_expire\":\"1\",\"alert_enable_cancel\":\"1\",\"general_expire\":\"10,5\",\"extra_emails\":\"\",\"send_as\":\"html\",\"msg_successful_sbj\":\"Subscription created successfully\",\"msg_successful\":\"\",\"msg_fail_sbj\":\"Subscription created but not yet active\",\"msg_fail\":\"\",\"msg_expiration_sbj\":\"Your subscription is just about to expire in %d days\",\"msg_expiration\":\"\",\"msg_cancel_sbj\":\"Your subscription has been canceled\",\"msg_cancel\":\"\"},\"restrictions\":{\"rules\":[]}}',0,0,0,0,1);
/*!40000 ALTER TABLE `qywlj_emerald_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_plans_actions`
--

DROP TABLE IF EXISTS `qywlj_emerald_plans_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_plans_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` text,
  `plan_id` int(11) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plan` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_plans_actions`
--

LOCK TABLES `qywlj_emerald_plans_actions` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_plans_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_plans_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_plans_groups`
--

DROP TABLE IF EXISTS `qywlj_emerald_plans_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_plans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_plans_groups`
--

LOCK TABLES `qywlj_emerald_plans_groups` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_plans_groups` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_plans_groups` VALUES (3,'普通会员','','','2018-07-10 07:57:28',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','zh-CN',7),(4,'初级会员','','','2018-07-10 07:58:12',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','zh-CN',6),(5,'中级会员','','','2018-07-10 07:58:40',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','zh-CN',5),(6,'高级会员','','','2018-07-10 07:58:54',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','*',4),(7,'初级课程','','','2018-07-10 07:59:37',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','zh-CN',3),(8,'中级课程','','','2018-07-10 07:59:57',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','*',2),(9,'高级课程','','','2018-07-10 08:00:13',1,0,'0000-00-00 00:00:00',1,'{\"properties\":{\"template\":\"default\"}}','en-GB',1);
/*!40000 ALTER TABLE `qywlj_emerald_plans_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_plans_rules`
--

DROP TABLE IF EXISTS `qywlj_emerald_plans_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_plans_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rule` text,
  `plan_id` int(11) DEFAULT '0',
  `option` varchar(30) DEFAULT NULL,
  `controller` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plan` (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_plans_rules`
--

LOCK TABLES `qywlj_emerald_plans_rules` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_plans_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_plans_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_serial`
--

DROP TABLE IF EXISTS `qywlj_emerald_serial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_serial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `subscription_id` int(11) DEFAULT '0',
  `field_id` int(11) DEFAULT '0',
  `serial` text,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_serial`
--

LOCK TABLES `qywlj_emerald_serial` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_serial` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_serial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_states`
--

DROP TABLE IF EXISTS `qywlj_emerald_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` char(2) NOT NULL DEFAULT 'US',
  `state` varchar(10) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq` (`country`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_states`
--

LOCK TABLES `qywlj_emerald_states` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_states` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_states` VALUES (1,'US','AL','Alabama'),(2,'US','AK','Alaska'),(3,'US','AZ','Arizona'),(4,'US','AR','Arkansas'),(5,'US','CA','California'),(6,'US','CO','Colorado'),(7,'US','CT','Connecticut'),(8,'US','DE','Delaware'),(9,'US','DC','District of Columbia'),(10,'US','FL','Florida'),(11,'US','GA','Georgia'),(12,'US','HI','Hawaii'),(13,'US','ID','Idaho'),(14,'US','IL','Illinois'),(15,'US','IN','Indiana'),(16,'US','IA','Iowa'),(17,'US','KS','Kansas'),(18,'US','KY','Kentucky'),(19,'US','LA','Louisiana'),(20,'US','ME','Maine'),(21,'US','MD','Maryland'),(22,'US','MA','Massachusetts'),(23,'US','MI','Michigan'),(24,'US','MN','Minnesota'),(25,'US','MS','Mississippi'),(26,'US','MO','Missouri'),(27,'US','MT','Montana'),(28,'US','NE','Nebraska'),(29,'US','NV','Nevada'),(30,'US','NH','New Hampshire'),(31,'US','NJ','New Jersey'),(32,'US','NM','New Mexico'),(33,'US','NY','New York'),(34,'US','NC','North Carolina'),(35,'US','ND','North Dakota'),(36,'US','OH','Ohio'),(37,'US','OK','Oklahoma'),(38,'US','OR','Oregon'),(39,'US','PA','Pennsylvania'),(40,'US','RI','Rhode Island'),(41,'US','SC','South Carolina'),(42,'US','SD','South Dakota'),(43,'US','TN','Tennessee'),(44,'US','TX','Texas'),(45,'US','UT','Utah'),(46,'US','VT','Vermont'),(47,'US','VA','Virginia'),(48,'US','WA','Washington'),(49,'US','WV','West Virginia'),(50,'US','WI','Wisconsin'),(51,'US','WY','Wyoming'),(52,'CA','AB','Alberta'),(53,'CA','BC','British Columbia'),(54,'CA','MB','Manitoba'),(55,'CA','NB','New Brunswick'),(56,'CA','NL','Newfoundland and Labrador'),(57,'CA','NT','Northwest Territories'),(58,'CA','NS','Nova Scotia'),(59,'CA','NU','Nunavut'),(60,'CA','ON','Ontario'),(61,'CA','PE','Prince Edward Island'),(62,'CA','QC','Quebec'),(63,'CA','SK','Saskatchewan'),(64,'CA','YT','Yukon'),(65,'AU','ACT','Australian Capital Territory'),(66,'AU','NSW','New South Wales'),(67,'AU','AU-NT','Northern Terittory'),(68,'AU','QLD','Queensland'),(69,'AU','AU-SA','South Australia'),(70,'AU','TAS','Tasmania'),(71,'AU','VIC','Victoria'),(72,'AU','AU-WA','Western Australia'),(73,'GR','GR-ATT','Αττική'),(74,'GR','GR-EFV','Εύβοια'),(75,'GR','GR-EVT','Ευρυτανία'),(76,'GR','GR-FOK','Φωκίδα'),(77,'GR','GR-FTH','Φθιώτιδα'),(78,'GR','GR-VIO','Βοιωτία'),(79,'GR','GR-HAL','Χαλκιδική'),(80,'GR','GR-IMA','Ημαθία'),(81,'GR','GR-KIL','Κιλκίς'),(82,'GR','GR-PEL','Πέλλα'),(83,'GR','GR-PIE','Πιερία'),(84,'GR','GR-SER','Σέρρες'),(85,'GR','GR-THE','Θεσσαλονίκη'),(86,'GR','GR-CHA','Χανιά'),(87,'GR','GR-IRA','Ηράκλειο'),(88,'GR','GR-LAS','Λασίθι'),(89,'GR','GR-RET','Ρέθυμνο'),(90,'GR','GR-DRA','Δράμα'),(91,'GR','GR-EVR','Έβρος'),(92,'GR','GR-KAV','Καβάλα'),(93,'GR','GR-ROD','Ροδόπη'),(94,'GR','GR-XAN','Ξάνθη'),(95,'GR','GR-ART','Άρτα'),(96,'GR','GR-IOA','Ιωάννινα'),(97,'GR','GR-PRE','Πρέβεζα'),(98,'GR','GR-THS','Θεσπρωτία'),(99,'GR','GR-KER','Κέρκυρα'),(100,'GR','GR-KEF','Κεφαλληνία'),(101,'GR','GR-LEF','Λευκάδα'),(102,'GR','GR-ZAK','Ζάκυνθος'),(103,'GR','GR-CHI','Χίος'),(104,'GR','GR-LES','Λέσβος'),(105,'GR','GR-SAM','Σάμος'),(106,'GR','GR-ARK','Αρκαδία'),(107,'GR','GR-ARG','Αργολίδα'),(108,'GR','GR-KOR','Κορινθία'),(109,'GR','GR-LAK','Λακωνία'),(110,'GR','GR-MES','Μεσσηνία'),(111,'GR','GR-KYK','Κυκλάδες'),(112,'GR','GR-DOD','Δωδεκάνησα'),(113,'GR','GR-KAR','Καρδίτσα'),(114,'GR','GR-LAR','Λάρισα'),(115,'GR','GR-MAG','Μαγνησία'),(116,'GR','GR-TRI','Τρίκαλα'),(117,'GR','GR-ACH','Αχαΐα'),(118,'GR','GR-AIT','Αιτωλοακαρνανία'),(119,'GR','GR-ILI','Ηλεία'),(120,'GR','GR-FLO','Φλώρινα'),(121,'GR','GR-GRE','Γρεβενά'),(122,'GR','GR-KAS','Καστοριά'),(123,'GR','GR-KOZ','Κοζάνη'),(124,'GR','GR-AGO','Άγιο Όρος'),(125,'DE','DE-BW','Baden-Württemberg'),(126,'DE','DE-BY','Bayern'),(127,'DE','DE-BE','Berlin'),(128,'DE','DE-BB','Brandenburg'),(129,'DE','DE-HB','Freie Hansestadt Bremen'),(130,'DE','DE-HH','Hamburg'),(131,'DE','DE-HE','Hessen'),(132,'DE','DE-MV','Mecklenburg-Vorpommern'),(133,'DE','DE-NI','Niedersachsen'),(134,'DE','DE-NW','Nordrhein-Westfalen'),(135,'DE','DE-RP','Rheinland-Pfalz'),(136,'DE','DE-SL','Saarland'),(137,'DE','DE-SN','Sachsen'),(138,'DE','DE-ST','Sachsen-Anhalt'),(139,'DE','DE-SH','Schleswig-Holstein'),(140,'DE','DE-TH','Thüringen'),(181,'CN','CN-BJ','Beijing Municipality'),(182,'CN','CN-TJ','Tianjin Municipality'),(183,'CN','CN-HE','Hebei Province'),(184,'CN','CN-SX','Shanxi Province'),(185,'CN','CN-NM','Nei Mongol Autonomous Region'),(186,'CN','CN-LN','Liaoning Province'),(187,'CN','CN-JL','Jilin Province'),(188,'CN','CN-HL','Heilongjiang Province'),(189,'CN','CN-SH','Shanghai Municipality'),(190,'CN','CN-JS','Jiangsu Province'),(191,'CN','CN-ZJ','Zhejiang Province'),(192,'CN','CN-AH','Anhui Province'),(193,'CN','CN-FJ','Fujian Province'),(194,'CN','CN-JX','Jiangxi Province'),(195,'CN','CN-SD','Shandong Province'),(196,'CN','CN-HA','Henan Province'),(197,'CN','CN-HB','Hubei Province'),(198,'CN','CN-HN','Hunan Province'),(199,'CN','CN-GD','Guangdong Province'),(200,'CN','CN-GX','Guangxi Zhuang Autonomous Region'),(201,'CN','CN-HI','Hainan Province'),(202,'CN','CN-CQ','Chongqing Municipality'),(203,'CN','CN-SC','Sichuan Province'),(204,'CN','CN-GZ','Guizhou Province'),(205,'CN','CN-YN','Yunnan Province'),(206,'CN','CN-XZ','Xizang Autonomous Region'),(207,'CN','CN-SN','Shaanxi Province'),(208,'CN','CN-GS','Gansu Province'),(209,'CN','CN-QH','Qinghai Province'),(210,'CN','CN-NX','Ningxia Hui Autonomous Region'),(211,'CN','CN-XJ','Xinjiang Uyghur Autonomous Region'),(212,'CN','CN-HK','Xianggang Special Administrative Region'),(213,'CN','CN-MC','Aomen Special Administrative Region');
/*!40000 ALTER TABLE `qywlj_emerald_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_subscriptions`
--

DROP TABLE IF EXISTS `qywlj_emerald_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `plan_id` int(10) NOT NULL DEFAULT '0',
  `invoice_id` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `purchased` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastsent` datetime DEFAULT '0000-00-00 00:00:00',
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `discount` float(12,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(45) DEFAULT NULL,
  `access_count` int(10) NOT NULL DEFAULT '0',
  `access_count_mode` tinyint(4) NOT NULL DEFAULT '0',
  `access_limit` int(10) NOT NULL DEFAULT '0',
  `gateway` varchar(45) NOT NULL DEFAULT 'undefined',
  `gateway_id` varchar(200) NOT NULL DEFAULT '',
  `parent` int(1) NOT NULL DEFAULT '0',
  `track_active` tinyint(1) NOT NULL DEFAULT '0',
  `track_disactive` tinyint(1) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` text,
  `invoice_num` int(11) NOT NULL DEFAULT '0',
  `fields` text,
  `params` text,
  `upgrade_from` int(11) DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `idx_trak_a` (`track_active`),
  KEY `idx_track_disa` (`track_disactive`),
  KEY `idx_gtwid` (`gateway_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_plan` (`plan_id`),
  KEY `idx_active` (`activated`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_subscriptions`
--

LOCK TABLES `qywlj_emerald_subscriptions` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_subscriptions` DISABLE KEYS */;
INSERT INTO `qywlj_emerald_subscriptions` VALUES (110,560,18,0,1,'2018-07-12 02:14:54','2018-07-13 02:14:54','2018-07-12 02:14:56','2018-07-12 02:14:54','0000-00-00 00:00:00',200.00,0.00,NULL,0,0,0,'manual','015586C0',0,0,0,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(115,560,15,0,1,'2018-07-12 02:18:10','2018-07-13 02:18:10','2018-07-12 02:18:11','2018-07-12 02:18:10','0000-00-00 00:00:00',100.00,0.00,NULL,0,0,0,'manual','80B8993A',0,0,0,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(118,558,17,0,1,'2018-07-12 02:41:28','2018-07-13 02:41:28','2018-07-12 02:41:29','2018-07-12 02:41:28','0000-00-00 00:00:00',300.00,0.00,NULL,0,0,0,'manual','75153D89',0,0,1,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(119,553,17,0,1,'2018-07-12 02:44:40','2018-07-13 02:44:40','2018-07-12 02:44:42','2018-07-12 02:44:40','0000-00-00 00:00:00',300.00,0.00,NULL,0,0,0,'manual','FCE41AA3',0,0,1,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(120,553,15,1,1,'2018-07-12 03:04:06','2018-07-13 03:04:06','2018-07-12 03:03:57','2018-07-12 03:04:06','0000-00-00 00:00:00',100.00,0.00,'none',0,0,0,'alipay','7043A8DA',0,0,1,1,0,'0000-00-00 00:00:00',NULL,10,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(135,560,19,0,1,'2018-07-12 08:42:58','2018-08-12 08:42:58','2018-07-12 08:43:00','2018-07-12 08:42:58','0000-00-00 00:00:00',250.00,0.00,NULL,0,0,0,'manual','2B4C6226',0,0,0,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(136,553,19,0,1,'2018-07-12 08:43:10','2018-08-12 08:43:10','2018-07-12 08:43:12','2018-07-12 08:43:10','0000-00-00 00:00:00',250.00,0.00,NULL,0,0,0,'manual','C375586A',0,1,0,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(137,557,19,0,1,'2018-07-12 08:43:23','2018-08-12 08:43:23','2018-07-12 08:43:25','2018-07-12 08:43:23','0000-00-00 00:00:00',250.00,0.00,NULL,0,0,0,'manual','6FF68505',0,0,0,1,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(138,553,18,0,1,'2018-07-12 08:43:44','2018-07-26 08:43:44','2018-07-12 08:43:47','2018-07-12 08:43:44','0000-00-00 00:00:00',230.00,0.00,NULL,0,0,0,'manual','F0337382',0,1,0,1,553,'2018-07-19 05:51:40',NULL,0,'[]','{\"properties\":{\"currency\":\"\\uffe5\",\"layout_price\":\"Sign 00\"}}',0,NULL),(139,559,28,0,1,'2018-07-12 08:44:11','2018-07-13 08:44:11','2018-07-12 08:44:13','2018-07-12 08:44:11','0000-00-00 00:00:00',150.00,0.00,NULL,0,0,0,'manual','090E698F',0,0,0,1,553,'2018-07-17 02:19:33',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(140,553,15,1,1,'2018-08-12 00:00:00','2018-08-13 00:00:00','2018-07-12 08:44:36','2018-07-12 08:46:17','0000-00-00 00:00:00',47.50,2.50,'CROSS',0,0,0,'manual','538760DA',0,0,0,1,0,'0000-00-00 00:00:00',NULL,10,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,''),(141,553,22,1,1,'2018-08-13 00:00:00','2018-08-14 00:00:00','2018-07-19 05:49:53','2018-07-19 05:50:13','0000-00-00 00:00:00',300.00,700.00,'CROSS',0,0,0,'alipay','01F01642',0,0,0,1,0,'0000-00-00 00:00:00',NULL,10,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,''),(142,553,19,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-07-19 05:07:12','2018-07-18 03:54:01','0000-00-00 00:00:00',150.00,0.00,'none',0,0,0,'alipay','',0,0,0,0,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(143,553,17,2,1,'2018-07-13 09:17:22','2018-07-14 09:17:22','2018-07-13 09:17:08','2018-07-13 09:17:22','0000-00-00 00:00:00',300.00,0.00,'none',0,0,0,'alipay','C70D369D',0,0,1,1,0,'0000-00-00 00:00:00',NULL,10,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(144,553,22,0,1,'2018-08-14 00:00:00','2018-08-15 00:00:00','2018-07-19 05:51:07','2018-07-19 05:51:06','0000-00-00 00:00:00',0.00,0.00,NULL,0,0,0,'manual','0BAB2659',0,0,0,1,0,'0000-00-00 00:00:00',NULL,0,NULL,'{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(145,553,15,0,1,'2018-08-15 00:00:00','2018-08-16 00:00:00','2018-07-19 05:51:31','2018-07-19 05:51:30','0000-00-00 00:00:00',47.50,0.00,NULL,0,0,0,'manual','B3123C9E',0,0,0,1,0,'0000-00-00 00:00:00',NULL,0,NULL,'{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(146,553,22,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-07-19 06:05:55','0000-00-00 00:00:00','0000-00-00 00:00:00',-700.00,1700.00,'CROSS',0,0,0,'undefined','',0,0,0,0,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL),(147,558,19,5,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','2018-07-19 06:18:40','0000-00-00 00:00:00','0000-00-00 00:00:00',150.00,0.00,'none',0,0,0,'alipay','',0,0,0,0,0,'0000-00-00 00:00:00',NULL,0,'[]','{\"properties\":{\"currency\":\"$\",\"layout_price\":\"Sign 00\"}}',0,NULL);
/*!40000 ALTER TABLE `qywlj_emerald_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_taxes`
--

DROP TABLE IF EXISTS `qywlj_emerald_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` char(2) DEFAULT NULL,
  `state_id` int(11) NOT NULL DEFAULT '0',
  `tax` float(10,2) NOT NULL DEFAULT '0.00',
  `tax_name` varchar(255) NOT NULL DEFAULT '',
  `vies` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_taxes`
--

LOCK TABLES `qywlj_emerald_taxes` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_emerald_url_history`
--

DROP TABLE IF EXISTS `qywlj_emerald_url_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_emerald_url_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  `ctime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subscription_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_emerald_url_history`
--

LOCK TABLES `qywlj_emerald_url_history` WRITE;
/*!40000 ALTER TABLE `qywlj_emerald_url_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_emerald_url_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_extensions`
--

DROP TABLE IF EXISTS `qywlj_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_extensions`
--

LOCK TABLES `qywlj_extensions` WRITE;
/*!40000 ALTER TABLE `qywlj_extensions` DISABLE KEYS */;
INSERT INTO `qywlj_extensions` VALUES (1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_jed_info\":\"0\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','','',0,'0000-00-00 00:00:00',0,0),(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"zh-CN\",\"site\":\"zh-CN\"}','','',0,'0000-00-00 00:00:00',0,0),(12,0,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,0,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,0,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,0,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,0,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,0,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"1\",\"change_login_name\":\"1\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"1\",\"debugGroups\":\"1\",\"sef_advanced\":0,\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,0,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,0,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"5cdc1bc7191d4f5f0d10b7a6f9f27087\"}','','',0,'0000-00-00 00:00:00',0,0),(104,0,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,0,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,0,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(318,0,'mod_sampledata','module','mod_sampledata','',1,1,1,0,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(400,0,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,0,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,0,'plg_content_vote','plugin','vote','content',0,0,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.35.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','','',0,'0000-00-00 00:00:00',3,0),(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,0,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',3,0),(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',6,0),(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,0,'plg_system_languagecode','plugin','languagecode','system',0,1,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,0,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1532049391}','','',0,'0000-00-00 00:00:00',0,0),(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1527043756,\"unique_id\":\"d72fc9e2207547ef57d72a2be559d7aed9742481\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,0,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,0,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','','',0,'0000-00-00 00:00:00',0,0),(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',0,0),(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','','',0,'0000-00-00 00:00:00',0,0),(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','','',0,'0000-00-00 00:00:00',0,0),(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','','',0,'0000-00-00 00:00:00',0,0),(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','','',0,'0000-00-00 00:00:00',0,0),(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','','',0,'0000-00-00 00:00:00',0,0),(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','','',0,'0000-00-00 00:00:00',0,0),(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','','',0,'0000-00-00 00:00:00',0,0),(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','','',0,'0000-00-00 00:00:00',0,0),(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','','',0,'0000-00-00 00:00:00',0,0),(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','','',0,'0000-00-00 00:00:00',0,0),(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','','',0,'0000-00-00 00:00:00',0,0),(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','','',0,'0000-00-00 00:00:00',0,0),(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','','',0,'0000-00-00 00:00:00',0,0),(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','','',0,'0000-00-00 00:00:00',0,0),(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(479,0,'plg_sampledata_blog','plugin','blog','sampledata',0,1,1,0,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}','','','',0,'0000-00-00 00:00:00',0,0),(480,0,'plg_system_sessiongc','plugin','sessiongc','system',0,1,1,0,'{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}','','','',0,'0000-00-00 00:00:00',0,0),(503,0,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,0,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,0,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,0,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.7.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,10002,'ChineseSimplifiedzh-CN','language','zh-CN','',0,1,0,0,'{\"name\":\"Chinese Simplified (zh-CN)\",\"type\":\"language\",\"creationDate\":\"2018\\u5e745\\u6708\",\"author\":\"Joomla!\\u4e2d\\u6587\\u5b98\\u7f51 www.joomlachina.org.cn \\u5468\\u6c38\\u5efa \",\"copyright\":\"\\u7248\\u6743\\u6240\\u6709 (C) 2005 - 2018 Joomla!\\u4e2d\\u6587\\u5b98\\u7f51 www.joomlachina.org.cn\",\"authorEmail\":\"zhou_yongjian@hotmail.com\",\"authorUrl\":\"www.joomlachina.org.cn\",\"version\":\"3.8.8.1\",\"description\":\"zh-CN \\u7f51\\u7ad9\\u524d\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,10002,'ChineseSimplifiedzh-CN','language','zh-CN','',1,1,0,0,'{\"name\":\"Chinese Simplified (zh-CN)\",\"type\":\"language\",\"creationDate\":\"2018\\u5e745\\u6708\",\"author\":\"Joomla!\\u4e2d\\u6587\\u5b98\\u7f51 www.joomlachina.org.cn \\u5468\\u6c38\\u5efa \",\"copyright\":\"\\u7248\\u6743\\u6240\\u6709 (C) 2005 - 2018 Joomla!\\u4e2d\\u6587\\u5b98\\u7f51 www.joomlachina.org.cn\",\"authorEmail\":\"zhou_yongjian@hotmail.com\",\"authorUrl\":\"www.joomlachina.org.cn\",\"version\":\"3.8.8.1\",\"description\":\"zh-CN \\u7ba1\\u7406\\u540e\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,0,'SP Page Builder','component','com_sppagebuilder','',1,1,0,0,'{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright @ 2010 - 2017 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"3.0.4\",\"description\":\"\",\"group\":\"\",\"filename\":\"sppagebuilder\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,0,'SP Page Builder','module','mod_sppagebuilder','',0,1,0,0,'{\"name\":\"SP Page Builder\",\"type\":\"module\",\"creationDate\":\"Oct 2016\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.2\",\"description\":\"Module to display content from SP Page Builder\",\"group\":\"\",\"filename\":\"mod_sppagebuilder\"}','{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,0,'mod_sppagebuilder_icons','module','mod_sppagebuilder_icons','',1,1,2,0,'{\"name\":\"mod_sppagebuilder_icons\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.0.2\",\"description\":\"MOD_SPPAGEBUILDER_ICONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_icons\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10006,0,'mod_sppagebuilder_admin_menu','module','mod_sppagebuilder_admin_menu','',1,1,2,0,'{\"name\":\"mod_sppagebuilder_admin_menu\",\"type\":\"module\",\"creationDate\":\"August 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2017 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"1.3\",\"description\":\"MOD_SPPAGEBUILDER_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sppagebuilder_admin_menu\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10007,10023,'com_emerald','component','com_emerald','',1,1,0,0,'{\"name\":\"com_emerald\",\"type\":\"component\",\"creationDate\":\"November 2011\",\"author\":\"MintJoomla\",\"copyright\":\" (c) 2005-2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.104\",\"description\":\"\",\"group\":\"\",\"filename\":\"emerald\"}','{\"moderate\":\"6\",\"copyright\":\"0\",\"tmpl_prefix\":\"t3\",\"date_format\":\"Y\\u5e74m\\u6708d\\u65e5\",\"iid_history\":\"106\",\"iid_list\":\"106\",\"activate\":\"1\",\"general_login_url\":\"index.php?option=com_users&view=login\",\"cron_key\":\"\",\"price_dec\":\"2\",\"price_sep\":\",\",\"price_point\":\".\",\"use_invoice\":\"1\",\"vies\":\"1\",\"vat\":\"1\",\"tax_id_rec\":\"1\",\"name\":\"\",\"logo\":\"\",\"country\":\"CN\",\"address\":\"\",\"tax_id\":\"\",\"phone\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,10023,'Emerald - Action - Alert','file','alert','',0,1,0,0,'{\"name\":\"Emerald - Action - Alert\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.13\",\"description\":\"Emerald action to send email alert.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10010,10023,'Emerald - Field - Note','file','note','',0,1,0,0,'{\"name\":\"Emerald - Field - Note\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.4\",\"description\":\"Add note to purchase\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10013,10023,'Emerald - Import - Emerald 8','file','emerald8','',0,1,0,0,'{\"name\":\"Emerald - Import - Emerald 8\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.13\",\"description\":\"Emerald import.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10016,10023,'Emerald - Rule - Universal','file','default','',0,1,0,0,'{\"name\":\"Emerald - Rule - Universal\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.4\",\"description\":\"Universal restriction rule works with any Joomla extensions.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10017,10023,'Emerald - Content Helper','plugin','emerald','content',0,1,1,0,'{\"name\":\"Emerald - Content Helper\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"MintJoomla\",\"copyright\":\" (c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.6\",\"description\":\"EMR_CONTENT_HELPER_DESCR\",\"group\":\"\",\"filename\":\"emerald\"}','{\"mark\":\"1\",\"link\":\"1\",\"mark_type\":\"2\",\"pic\":\"components\\/com_emerald\\/images\\/sign.gif\",\"pic_subscr\":\"\",\"pic_subscr_text\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10019,10023,'Search - Emerald','plugin','emerald','search',0,1,1,0,'{\"name\":\"Search - Emerald\",\"type\":\"plugin\",\"creationDate\":\"June 2014\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2014 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.1\",\"description\":\"Search Plugin for Emerald\",\"group\":\"\",\"filename\":\"emerald\"}','{\"search_limit\":\"50\",\"area_name\":\"Emerald\"}','','',0,'0000-00-00 00:00:00',0,0),(10020,10023,'Emerald - Restricter','plugin','emerald','system',0,1,1,0,'{\"name\":\"Emerald - Restricter\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"MintJoomla\",\"copyright\":\" (c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.20\",\"description\":\"EMR_SYSTEM_DESCR\",\"group\":\"\",\"filename\":\"emerald\"}','{\"se\":\"1\",\"bots\":\"googlebot\\r\\nmediapartners-google\\r\\nyahoo-verticalcrawler\\r\\nyahoo! slurp\\r\\nyahoo-mm\\r\\ninktomi\\r\\nslurp\\r\\niltrovatore-setaccio\\r\\nfast-webcrawler\\r\\nmsnbot\\r\\nask jeeves\\r\\nteoma\\r\\nscooter\\r\\npsbot\\r\\nopenbot\\r\\nia_archiver\\r\\nalmaden\\r\\nbaiduspider\\r\\nzyborg\\r\\ngigabot\\r\\nnaverbot\\r\\nsurveybot\\r\\nboitho.com-dc\\r\\nobjectssearch\\r\\nanswerbus\\r\\nnsohu-search\",\"skip_group\":\"8\",\"skip_access\":\"3\",\"require\":\"0\",\"free_num\":\"0\",\"free_num_text\":\"You\'ve just user {0} out of {1} free accesses to restricted content!\",\"link\":\"Subscribe now\"}','','',0,'0000-00-00 00:00:00',0,0),(10021,10023,'User - Emerald Subscriptions','plugin','emerald','user',0,1,1,0,'{\"name\":\"User - Emerald Subscriptions\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"MintJoomla\",\"copyright\":\" (c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.7\",\"description\":\"EMR_USER_DESCR\",\"group\":\"\",\"filename\":\"emerald\"}','{\"register\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10022,10023,'Emerald - Gateway - Offile','file','offline','',0,1,0,0,'{\"name\":\"Emerald - Gateway - Offile\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.3\",\"description\":\"Payment processor\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10023,0,'Emerald - Package - Core','package','pkg_emerald','',0,1,1,0,'{\"name\":\"Emerald - Package - Core\",\"type\":\"package\",\"creationDate\":\"\\u672a\\u77e5\",\"author\":\"\\u672a\\u77e5\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"10.104\",\"description\":\"\\n\\t\\t<div class=\\\"hero-unit\\\" style=\\\"text-align: left;\\\">\\n\\t\\t\\t<h1>Emerald 10 Membership <small><b>Mint<\\/b>Joomla<\\/small><\\/h1>\\n\\t\\t\\t<p>Emerald is a great, very mature membership extension.<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t<div class=\\\"well\\\" style=\\\"text-align:left;\\\">\\n\\t\\t\\t<h2>You have successfully installed emerald package!<\\/h2>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Emerald 10 Extension<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Payment Gateway - Offline<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Plugin System - Restricter<\\/li>\\n\\t\\t\\t\\t<li>Plugin User - Granter<\\/li>\\n\\t\\t\\t\\t<li>Plugin Content - Cleaner<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li>Rule - Universal<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t<\\/div>\\n\\t\\t<div class=\\\"alert alert-info\\\">Please read <a href=\\\"http:\\/\\/docs.mintjoomla.com\\/en\\/emerald\\/emerald-quick-start\\\" target=\\\"_blank\\\">Quick Start<\\/a> tutorial.<\\/div>\\n\\t\\t<div class=\\\"alert alert-error\\\">Please do not forget to enable (publish) all Emerald plugins<\\/div>\\n\\t\",\"group\":\"\",\"filename\":\"pkg_emerald\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10024,0,'Emerald - Action - Acymailing','file','acymail','',0,1,0,0,'{\"name\":\"Emerald - Action - Acymailing\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.4\",\"description\":\"Emerald action.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10025,0,'Emerald - Action - Group','file','group','',0,1,0,0,'{\"name\":\"Emerald - Action - Group\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.7\",\"description\":\"Emerald action.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10026,0,'Emerald - Action - Hook URL','file','hook','',0,1,0,0,'{\"name\":\"Emerald - Action - Hook URL\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.3\",\"description\":\"Emerald action.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10027,0,'Emerald - Action - Custom JavaScript','file','js','',0,1,0,0,'{\"name\":\"Emerald - Action - Custom JavaScript\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.10\",\"description\":\"Emerald action.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10028,0,'Emerald - Action - SQL','file','sql','',0,1,0,0,'{\"name\":\"Emerald - Action - SQL\",\"type\":\"file\",\"creationDate\":\"July 2013\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2013 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.4\",\"description\":\"Emerald action.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10029,0,'Emerald - Field - CrossSell','file','crosssell','',0,1,0,0,'{\"name\":\"Emerald - Field - CrossSell\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.7\",\"description\":\"Sell additional other plans along with this one wil lover price.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10030,0,'Emerald - Field - Manual Date','file','date','',0,1,0,0,'{\"name\":\"Emerald - Field - Manual Date\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.1\",\"description\":\"Allow user to select dates he wants.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10031,0,'Emerald - Field - Serial Numbers','file','serial','',0,1,0,0,'{\"name\":\"Emerald - Field - Serial Numbers\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.2\",\"description\":\"This field allow to release one of serial numbers, voucher, certificate in the list.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10032,0,'Emerald - Field - UpSell','file','upsell','',0,1,0,0,'{\"name\":\"Emerald - Field - UpSell\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.6\",\"description\":\"Sell additional items along with plan like customer support or mail delivery.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10033,0,'Emerald - Gateway - AliPay','file','alipay','',0,1,0,0,'{\"name\":\"Emerald - Gateway - AliPay\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.36\",\"description\":\"Chinese Payment processor AliPay\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10034,0,'Emerald - Rule - Core Articles','file','com_content','',0,1,0,0,'{\"name\":\"Emerald - Rule - Core Articles\",\"type\":\"file\",\"creationDate\":\"March 2012\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.7\",\"description\":\"Emerald rule core Joomla articles.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10035,0,'Emerald - Rule - Remository','file','com_remository','',0,1,0,0,'{\"name\":\"Emerald - Rule - Remository\",\"type\":\"file\",\"creationDate\":\"Jun 2015\",\"author\":\"MintJoomla\",\"copyright\":\"(c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"10.3\",\"description\":\"Emerald rule to download file through Remository.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10038,0,'System - RokCommon','plugin','rokcommon','system',0,1,1,0,'{\"name\":\"System - RokCommon\",\"type\":\"plugin\",\"creationDate\":\"August 4, 2016\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2016 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2.5\",\"description\":\"RokCommon System Plugin\",\"group\":\"\",\"filename\":\"rokcommon\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10039,0,'RokSprocket','component','com_roksprocket','',1,1,0,0,'{\"name\":\"RokSprocket\",\"type\":\"component\",\"creationDate\":\"April 13, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2018 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.23\",\"description\":\"Parent for all PHP based projects\",\"group\":\"\",\"filename\":\"roksprocket\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10040,0,'RokSprocket Module','module','mod_roksprocket','',0,1,1,0,'{\"name\":\"RokSprocket Module\",\"type\":\"module\",\"creationDate\":\"April 13, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2018 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.23\",\"description\":\"RokSprocket makes it easy to display content in a dynamic, visual layout.\",\"group\":\"\",\"filename\":\"mod_roksprocket\"}','{\"run_content_plugins\":\"onmodule\"}','','',0,'0000-00-00 00:00:00',0,0),(10041,0,'System - RokSprocket','plugin','roksprocket','system',0,1,1,0,'{\"name\":\"System - RokSprocket\",\"type\":\"plugin\",\"creationDate\":\"April 13, 2018\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2018 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"2.1.23\",\"description\":\"RokSprocket System Plugin\",\"group\":\"\",\"filename\":\"roksprocket\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(10042,0,'Content - RokInjectModule','plugin','rokinjectmodule','content',0,1,1,0,'{\"name\":\"Content - RokInjectModule\",\"type\":\"plugin\",\"creationDate\":\"August 20, 2015\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2015 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"1.7\",\"description\":\"RokInjectModule Content Plugin.  Use format [module-{moduleid}] in your article to inject a module. You can also specify a style, eg: [module-28 style=xhtml]\",\"group\":\"\",\"filename\":\"rokinjectmodule\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(10046,10049,'SJ Mega Menu','module','mod_sj_megamenu_res','',0,1,0,0,'{\"name\":\"SJ Mega Menu\",\"type\":\"module\",\"creationDate\":\"November 2012\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (c) 2009-2012 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"3.1.1\",\"description\":\"TPL_YTFRAMEWORK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sj_megamenu_res\"}','{\"style_layout\":\"layout1\",\"show_heading_title\":\"0\",\"bg_menu\":\"#444444\",\"menu_event\":\"click\",\"moofx\":\"easeInOutCirc\",\"moofxtimeout\":\"150\",\"css_style\":\"0\",\"sub_animation\":\"\",\"megamenutype\":\"horizontal\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"mobilemenutype\":\"sidebar\",\"tag_id\":\"container_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}','','',0,'0000-00-00 00:00:00',0,0),(10047,10049,'System - Extra Menu Params','plugin','x_menu_params','system',0,1,1,0,'{\"name\":\"System - Extra Menu Params\",\"type\":\"plugin\",\"creationDate\":\"November 2012\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (c) 2012 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.ytcvn.com\",\"version\":\"3.0.1\",\"description\":\"YouTech Extra Params plugin for Joomla 3.0.x\",\"group\":\"\",\"filename\":\"x_menu_params\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10048,10049,'Extra Mega Menu - Ajax','plugin','xmenu','ajax',0,1,1,0,'{\"name\":\"Extra Mega Menu - Ajax\",\"type\":\"plugin\",\"creationDate\":\"March 2017\",\"author\":\"smartaddons.com\",\"copyright\":\"Copyright (C) 2010 - 2015 SmartAddons. All rights reserved.\",\"authorEmail\":\"contact@smartaddons.com\",\"authorUrl\":\"www.smartaddons.com\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"xmenu\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10049,0,'SJ Mega Menu','package','pkg_sjmegamenu','',0,0,1,0,'{\"name\":\"SJ Mega Menu\",\"type\":\"package\",\"creationDate\":\"March 2017\",\"author\":\"YouTech Company\",\"copyright\":\"Copyright (c) 2009-2012 YouTech Company\",\"authorEmail\":\"contact@ytcvn.com\",\"authorUrl\":\"http:\\/\\/www.smartaddons.com\",\"version\":\"3.1.1\",\"description\":\"TPL_YTFRAMEWORK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_sjmegamenu\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10051,0,'RokCommon','library','lib_rokcommon','',0,1,1,0,'{\"name\":\"RokCommon\",\"type\":\"library\",\"creationDate\":\"August 4, 2016\",\"author\":\"RocketTheme, LLC\",\"copyright\":\"(C) 2005 - 2016 RocketTheme, LLC. All rights reserved.\",\"authorEmail\":\"support@rockettheme.com\",\"authorUrl\":\"http:\\/\\/www.rockettheme.com\",\"version\":\"3.2.5\",\"description\":\"RokCommon Shared Library\",\"group\":\"\",\"filename\":\"lib_rokcommon\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10056,0,'PKG_MINIORANGESAMLSSO_NAME','package','pkg_MiniorangeSamlSSO','',0,1,1,0,'{\"name\":\"PKG_MINIORANGESAMLSSO_NAME\",\"type\":\"package\",\"creationDate\":\"May 2017\",\"author\":\"miniOrange Security Software Pvt. Ltd.\",\"copyright\":\"\",\"authorEmail\":\"info@miniorange.com\",\"authorUrl\":\"\",\"version\":\"5.1\",\"description\":\"PKG_MINIORANGESAMLSSO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pkg_MiniorangeSamlSSO\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10057,0,'Cobalt - Package - Library','library','mint','',0,1,1,0,'{\"name\":\"Cobalt - Package - Library\",\"type\":\"library\",\"creationDate\":\"November 2012\",\"author\":\"MintJoomla\",\"copyright\":\"Copyright (C) 2012\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"www.mintjoomla.com\",\"version\":\"9.29\",\"description\":\"\\n    \\n\\tThis is MintJoomla - Cobal t8 Library Pack\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mint\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10058,0,'miniorangesamlplugin','library','miniorangesamlplugin','',0,0,1,0,'{\"name\":\"LIB_MINIORANGESAMLPLUGIN_NAME\",\"type\":\"library\",\"creationDate\":\"May 2017\",\"author\":\"miniOrange Security Software Pvt. Ltd.\",\"copyright\":\"Copyright 2017 miniOrange. All Rights Reserved.\",\"authorEmail\":\"info@miniorange.com\",\"authorUrl\":\"www.miniorange.com\",\"version\":\"5.1\",\"description\":\"LIB_MINIORANGESAMLPLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"miniorangesamlplugin\"}','{}','','',0,'0000-00-00 00:00:00',0,-1),(10059,0,'plg_authentication_miniorangesaml','plugin','miniorangesaml','authentication',0,0,1,0,'{\"name\":\"plg_authentication_miniorangesaml\",\"type\":\"plugin\",\"creationDate\":\"May 2017\",\"author\":\"miniOrange Security Software Pvt. Ltd.\",\"copyright\":\"Copyright 2017 miniOrange. All Rights Reserved.\",\"authorEmail\":\"info@miniorange.com\",\"authorUrl\":\"www.miniorange.com\",\"version\":\"5.1\",\"description\":\"PLG_MINIORANGE_SAML_DESCRIPTION\",\"group\":\"\",\"filename\":\"miniorangesaml\"}','{}','','',0,'0000-00-00 00:00:00',0,-1),(10060,0,'Hikashop Emerald Membership Integration','plugin','emerald','hikashop',0,0,1,0,'{\"name\":\"Hikashop Emerald Membership Integration\",\"type\":\"plugin\",\"creationDate\":\"Dec 2013\",\"author\":\"MintJoomla\",\"copyright\":\" (c) 2012 MintJoomla\",\"authorEmail\":\"support@mintjoomla.com\",\"authorUrl\":\"http:\\/\\/www.mintjoomla.com\",\"version\":\"9.14\",\"description\":\"\\n\\t\\t\\tThis plugin assign new subscritpion to the user on product purchased according to plan Hikashop action settings\\n\\t\\t\\t\",\"group\":\"\",\"filename\":\"emerald\"}','{}','','',0,'0000-00-00 00:00:00',0,-1),(10061,0,'PLG_SYSTEM_SAMLREDIRECT_NAME','plugin','samlredirect','system',0,0,1,0,'{\"name\":\"PLG_SYSTEM_SAMLREDIRECT_NAME\",\"type\":\"plugin\",\"creationDate\":\"May 2017\",\"author\":\"miniOrange Security Software Pvt. Ltd.\",\"copyright\":\"Copyright 2017 miniOrange. All Rights Reserved.\",\"authorEmail\":\"info@miniorange.com\",\"authorUrl\":\"www.miniorange.com\",\"version\":\"5.1\",\"description\":\"PLG_SYSTEM_SAMLREDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"samlredirect\"}','{}','','',0,'0000-00-00 00:00:00',0,-1),(10062,0,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','{}','','',0,'0000-00-00 00:00:00',0,-1),(10063,0,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','{}','','',0,'0000-00-00 00:00:00',0,-1),(10064,0,'com_miniorange_saml','component','com_miniorange_saml','',1,0,1,0,'{\"name\":\"com_miniorange_saml\",\"type\":\"component\",\"creationDate\":\"May 2017\",\"author\":\"miniOrange\",\"copyright\":\"2017 miniOrange\",\"authorEmail\":\"info@miniorange.com\",\"authorUrl\":\"http:\\/\\/www.miniorange.com\",\"version\":\"5.1\",\"description\":\"\",\"group\":\"\",\"filename\":\"miniorange_saml\"}','{}','','',0,'0000-00-00 00:00:00',0,-1);
/*!40000 ALTER TABLE `qywlj_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_fields`
--

DROP TABLE IF EXISTS `qywlj_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_fields`
--

LOCK TABLES `qywlj_fields` WRITE;
/*!40000 ALTER TABLE `qywlj_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_fields_categories`
--

DROP TABLE IF EXISTS `qywlj_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_fields_categories`
--

LOCK TABLES `qywlj_fields_categories` WRITE;
/*!40000 ALTER TABLE `qywlj_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_fields_groups`
--

DROP TABLE IF EXISTS `qywlj_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_fields_groups`
--

LOCK TABLES `qywlj_fields_groups` WRITE;
/*!40000 ALTER TABLE `qywlj_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_fields_values`
--

DROP TABLE IF EXISTS `qywlj_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_fields_values`
--

LOCK TABLES `qywlj_fields_values` WRITE;
/*!40000 ALTER TABLE `qywlj_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_filters`
--

DROP TABLE IF EXISTS `qywlj_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_filters`
--

LOCK TABLES `qywlj_finder_filters` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links`
--

DROP TABLE IF EXISTS `qywlj_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links`
--

LOCK TABLES `qywlj_finder_links` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms0`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms0`
--

LOCK TABLES `qywlj_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms1`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms1`
--

LOCK TABLES `qywlj_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms2`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms2`
--

LOCK TABLES `qywlj_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms3`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms3`
--

LOCK TABLES `qywlj_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms4`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms4`
--

LOCK TABLES `qywlj_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms5`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms5`
--

LOCK TABLES `qywlj_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms6`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms6`
--

LOCK TABLES `qywlj_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms7`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms7`
--

LOCK TABLES `qywlj_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms8`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms8`
--

LOCK TABLES `qywlj_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_terms9`
--

DROP TABLE IF EXISTS `qywlj_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_terms9`
--

LOCK TABLES `qywlj_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_termsa`
--

DROP TABLE IF EXISTS `qywlj_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_termsa`
--

LOCK TABLES `qywlj_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_termsb`
--

DROP TABLE IF EXISTS `qywlj_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_termsb`
--

LOCK TABLES `qywlj_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_termsc`
--

DROP TABLE IF EXISTS `qywlj_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_termsc`
--

LOCK TABLES `qywlj_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_termsd`
--

DROP TABLE IF EXISTS `qywlj_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_termsd`
--

LOCK TABLES `qywlj_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_termse`
--

DROP TABLE IF EXISTS `qywlj_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_termse`
--

LOCK TABLES `qywlj_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_links_termsf`
--

DROP TABLE IF EXISTS `qywlj_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_links_termsf`
--

LOCK TABLES `qywlj_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_taxonomy`
--

DROP TABLE IF EXISTS `qywlj_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_taxonomy`
--

LOCK TABLES `qywlj_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `qywlj_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `qywlj_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `qywlj_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_taxonomy_map`
--

LOCK TABLES `qywlj_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_terms`
--

DROP TABLE IF EXISTS `qywlj_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_terms`
--

LOCK TABLES `qywlj_finder_terms` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_terms_common`
--

DROP TABLE IF EXISTS `qywlj_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_terms_common`
--

LOCK TABLES `qywlj_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_terms_common` DISABLE KEYS */;
INSERT INTO `qywlj_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `qywlj_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_tokens`
--

DROP TABLE IF EXISTS `qywlj_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_tokens`
--

LOCK TABLES `qywlj_finder_tokens` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `qywlj_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_tokens_aggregate`
--

LOCK TABLES `qywlj_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_finder_types`
--

DROP TABLE IF EXISTS `qywlj_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_finder_types`
--

LOCK TABLES `qywlj_finder_types` WRITE;
/*!40000 ALTER TABLE `qywlj_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_languages`
--

DROP TABLE IF EXISTS `qywlj_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_languages`
--

LOCK TABLES `qywlj_languages` WRITE;
/*!40000 ALTER TABLE `qywlj_languages` DISABLE KEYS */;
INSERT INTO `qywlj_languages` VALUES (1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,2),(2,56,'zh-CN','Chinese Simplified (zh-CN)','简体中文(中国)','zh','zh_cn','','','','',1,1,1);
/*!40000 ALTER TABLE `qywlj_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_menu`
--

DROP TABLE IF EXISTS `qywlj_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_menu`
--

LOCK TABLES `qywlj_menu` WRITE;
/*!40000 ALTER TABLE `qywlj_menu` DISABLE KEYS */;
INSERT INTO `qywlj_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,67,0,'*',0),(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',1,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',1,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',1,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'main','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',1,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,20,0,'*',1),(11,'main','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',1,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(13,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',21,26,0,'*',1),(14,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',1,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',22,23,0,'*',1),(15,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',1,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',24,25,0,'*',1),(16,'main','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',1,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',27,28,0,'*',1),(17,'main','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',1,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',29,30,0,'*',1),(18,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(19,'main','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',33,34,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',1,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',35,36,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',1,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',37,38,0,'*',1),(22,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations','component',1,1,1,34,0,'0000-00-00 00:00:00',0,0,'class:associations',0,'',39,40,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_sppagebuilder&view=page&id=1','component',1,1,1,10003,553,'2018-07-19 05:44:06',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',41,42,1,'*',0),(102,'main','COM_SPPAGEBUILDER','com-sppagebuilder','','com-sppagebuilder','index.php?option=com_sppagebuilder','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'class:component',0,'{}',43,44,0,'',1),(106,'mainmenu','管理员商城','2018-05-23-08-33-40','','2018-05-23-08-33-40','index.php?option=com_emerald&view=emcpanel','component',1,1,1,10007,553,'2018-07-18 23:47:36',0,6,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',45,46,0,'zh-CN',0),(107,'mainmenu','商城','2018-05-23-08-33-54','','2018-05-23-08-33-54','index.php?option=com_emerald&view=emlist','component',-2,1,1,10007,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"link\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',47,50,0,'*',0),(108,'mainmenu','会员登录','2018-05-29-03-22-33','','2018-05-29-03-22-33','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"101\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"101\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"108\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',51,52,0,'zh-CN',0),(109,'mainmenu','会员注册','2018-05-29-03-23-17','','2018-05-29-03-23-17','index.php?option=com_users&view=registration','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"109\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',53,54,0,'zh-CN',0),(110,'mainmenu','会员登出','2018-06-12-06-56-33','','2018-06-12-06-56-33','index.php?option=com_users&view=login&layout=logout&task=user.menulogout','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"logout\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"xmp_width\":\"\",\"dropdown_position\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',55,56,0,'*',0),(112,'mainmenu','测试','2018-06-16-07-05-51','','2018-05-23-08-33-54/2018-06-16-07-05-51','index.php?option=com_content&view=article&id=17','component',-2,107,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"112\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',48,49,0,'*',0),(113,'mainmenu','测试商城','1111','','1111','index.php?option=com_emerald&view=emlist','component',1,1,1,10007,0,'0000-00-00 00:00:00',1,1,' ',0,'{\"groups\":[\"8\",\"7\",\"9\"],\"link\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"sjmenulayout\":\"{\\\"width\\\":600,\\\"menuItem\\\":1,\\\"menuAlign\\\":\\\"right\\\",\\\"layout\\\":[{\\\"type\\\":\\\"row\\\",\\\"attr\\\":[{\\\"type\\\":\\\"column\\\",\\\"colGrid\\\":12,\\\"menuParentId\\\":\\\"113\\\",\\\"moduleId\\\":\\\"\\\"}]}]}\",\"sjmegamenu\":\"0\",\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',57,58,0,'*',0),(114,'mainmenu','历史','2018-07-11-01-45-41','','2018-07-11-01-45-41','index.php?option=com_emerald&view=emhistory','component',1,1,1,10007,553,'2018-07-12 05:47:57',0,1,' ',0,'{\"link\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"choose_icon\":\"icon\",\"image_icon\":\"\",\"icon\":\"\",\"xmp_showsubtitle\":\"0\",\"xmp_description\":\"\",\"xmp_showlink\":\"1\",\"xmp_tag_id\":\"\",\"xmp_tag_class\":\"\",\"xmp_float\":\"left\",\"xmp_width\":\"\",\"dropdown_position\":\"left\",\"backgroundtype\":\"color\",\"backgroundimage\":\"\",\"backgroundcolor\":\"#ffffff\"}',59,60,0,'*',0),(118,'main','com_emerald','com-emerald','','com-emerald','index.php?option=com_emerald','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'components/com_emerald/images/sidebar/plans.png',0,'{}',61,66,0,'',1),(119,'main','em_about','em-about','','com-emerald/em-about','index.php?option=com_emerald','component',1,118,2,10007,0,'0000-00-00 00:00:00',0,1,'components/com_emerald/images/sidebar/about.png',0,'{}',62,63,0,'',1),(120,'main','em_config','em-config','','com-emerald/em-config','index.php?option=com_config&view=component&component=com_emerald','component',1,118,2,10007,0,'0000-00-00 00:00:00',0,1,'class:config',0,'{}',64,65,0,'',1);
/*!40000 ALTER TABLE `qywlj_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_menu_types`
--

DROP TABLE IF EXISTS `qywlj_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_menu_types`
--

LOCK TABLES `qywlj_menu_types` WRITE;
/*!40000 ALTER TABLE `qywlj_menu_types` DISABLE KEYS */;
INSERT INTO `qywlj_menu_types` VALUES (1,0,'mainmenu','Main Menu','The main menu for the site',0);
/*!40000 ALTER TABLE `qywlj_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_messages`
--

DROP TABLE IF EXISTS `qywlj_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_messages`
--

LOCK TABLES `qywlj_messages` WRITE;
/*!40000 ALTER TABLE `qywlj_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_messages_cfg`
--

DROP TABLE IF EXISTS `qywlj_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_messages_cfg`
--

LOCK TABLES `qywlj_messages_cfg` WRITE;
/*!40000 ALTER TABLE `qywlj_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_modules`
--

DROP TABLE IF EXISTS `qywlj_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_modules`
--

LOCK TABLES `qywlj_modules` WRITE;
/*!40000 ALTER TABLE `qywlj_modules` DISABLE KEYS */;
INSERT INTO `qywlj_modules` VALUES (1,39,'Main Menu','','',1,'position-1',0,'0000-00-00 00:00:00','2018-05-23 08:42:07','0000-00-00 00:00:00',-2,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"5\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',1,'',0,'0000-00-00 00:00:00','2018-07-11 01:12:13','0000-00-00 00:00:00',-2,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"profilelink\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'',0,'0000-00-00 00:00:00','2018-05-25 02:57:18','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,55,'Sample Data','','',0,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sampledata',6,1,'{}',1,'*'),(88,58,'SP Page Builder','','',0,'',0,'0000-00-00 00:00:00','2018-05-23 03:00:29','0000-00-00 00:00:00',-2,'mod_sppagebuilder',1,1,'',0,'*'),(89,59,'SP Page Builder','','',0,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sppagebuilder_icons',1,1,'',1,'*'),(90,60,'SP Page Builder Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sppagebuilder_admin_menu',1,1,'',1,'*'),(92,65,'轮播图','','<html>\r\n <head>\r\n   <script src=\"/mdjoomla/jquery-1.11.1.min.js\" type=\"text/javascript\"></script>\r\n  <style type=\"text/css\">\r\n#banner {\r\n    position: relative;\r\n    width: 100%;\r\n    height:400px;\r\n    overflow: hidden;\r\n}\r\n\r\n#banner_list img {\r\n    border: 0px;\r\n    height:400px;\r\nwidth:100%;\r\n}\r\n\r\n\r\n#banner_text {\r\n    position: absolute;\r\n    width: 120px;\r\n    z-index: 1002;\r\n    right: 3px;\r\n    bottom: 3px;\r\n}\r\n\r\n#banner ul {\r\n    position: absolute;\r\n    list-style-type: none;\r\n    filter: Alpha(Opacity=80);\r\n    opacity: 0.8;\r\n    z-index: 1002;\r\n    margin: 0;\r\n    padding: 0;\r\n    bottom: 0;\r\n    right: 0px;\r\n} \r\n\r\n#banner ul li {\r\n    padding: 0px 8px;\r\n    float: left;\r\n    display: block;\r\n    color: #FFF;\r\n    background: #6f4f67;\r\n    cursor: pointer;\r\n    border: 1px solid #333;\r\n}\r\n\r\n#banner ul li .on {\r\n    background-color: #000;\r\n}\r\n\r\n#banner_list a {\r\n    position: absolute;\r\n    width:100%;\r\n}\r\n</style> \r\n  <script type=\"text/javascript\">\r\n    var t = 0;\r\n    var n = 0;\r\n    var count = 0;\r\n    $(document).ready(function() {\r\n        count = $(\"#banner_list a\").length;\r\n        $(\"#banner_list a:not(:first-child)\").hide();\r\n        $(\"#banner_info\").click(function() {\r\n            window.open($(\"#banner_list a:first-child\").attr(\'href\'), \"_blank\")\r\n        });\r\n        $(\"#banner li\").click(function() {\r\n            var i = $(this).text() - 1; \r\n            n = i;\r\n            if (i >= count) return;\r\n            $(\"#banner_info\").unbind().click(function() {\r\n                window.open($(\"#banner_list a\").eq(i).attr(\'href\'),)\r\n            });$(\"#banner_list a\").filter(\":visible\").fadeOut(500).parent().children().eq(i).fadeIn(1000);\r\n            document.getElementById(\"banner\").style.background = \"\";\r\n            $(this).toggleClass(\"on\");\r\n            $(this).siblings().removeAttr(\"class\");\r\n        });\r\n       var imgwidth = $(\"#banner_list img\").width();\r\n     \r\n       var x1 = imgwidth*0.59;\r\n       var x2 = imgwidth*0.768;\r\n       $(\"#box\").attr(\"coords\",\'\"\'+x1+\',270,\'+x2+\',324\"\');\r\n    })\r\n  \r\n    function showAuto() {\r\n        n = n >= (count - 1) ? 0 : ++n;\r\n        $(\"#banner li\").eq(n).trigger(\'click\');\r\n    }\r\n</script> \r\n   \r\n </head>\r\n <body>\r\n  <div id=\"banner\"> \r\n   <div id=\"banner_bg\"> \r\n   </div> \r\n   <!--标题背景--> \r\n   <div id=\"banner_info\"> \r\n   </div> \r\n   <!--标题--> \r\n   <ul> \r\n    <li class=\"on\"> 1 </li> \r\n    <li> 2 </li> \r\n    <li> 3 </li> \r\n    <li> 4 </li> \r\n   </ul> \r\n   <div id=\"banner_list\"> \r\n    <a><img src=\"images/IT.jpg\" usemap=\"#testmap\"/>\r\n      <map name=\"testmap\">\r\n       	<area shape=\"rect\" coords=\"\" href=\"https://lms.mindme.com.cn:8000/getfunctions.php\" target=\"_blank\" id=\"box\">\r\n     </map></a>\r\n    <a href=\"https://mdtest.mindme.com.cn/desktop/tool/open/home\" target=\"_blank\"><img src=\"images/weike.jpg\" /></a> \r\n    <a href=\"study-path/study.html\" target=\"_blank\"><img src=\"images/num.jpg\" /></a> \r\n    <a href=\"/smartschool/test/study.html\" target=\"_blank\"><img src=\"images/free.jpg\" /></a> \r\n   </div> \r\n  </div> \r\n </body>\r\n</html>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,66,'ceshi','','',1,'',0,'0000-00-00 00:00:00','2018-07-11 01:11:50','0000-00-00 00:00:00',-2,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(94,67,'公司文化','','<html>\r\n  <head>\r\n    <script src=\"components/com_sppagebuilder/assets/js/jQueryRotate.js\"></script>\r\n    <script src=\"jquery-1.11.1.min.js\"></script>\r\n<script>\r\n	$(document).ready(function(){  \r\n       var mainwidth = $(window).width();\r\n       var content_upper = $(\".content_upper\").width()\r\n       var margin = mainwidth - content_upper;\r\n      var marginleftright = margin/2;\r\n      $(\".content_upper\").css(\"margin-left\",marginleftright+\"px\");\r\n      $(\".content_upper\").css(\"margin-right\",marginleftright+\"px\");\r\n      \r\n      var margin_below = mainwidth - 730;\r\n      var below_margin = margin_below/2;\r\n      $(\".content_below\").css(\"margin-left\",below_margin+\"px\");\r\n      $(\".content_below\").css(\"margin-right\",below_margin+\"px\");\r\n      \r\n    	 var t=0,a=10,v=t*a,s=15,updown=true;  // s路程,a加速度,t时间,updown判断上升还是下降\r\n			var tip = null;\r\n            function jump(eleObj, topVal){\r\n                if(t<=0){\r\n                    updown=true;\r\n                }else if(t*t*a>=s){\r\n                    updown=false;\r\n                }\r\n                if(updown){\r\n                    t=t+0.01\r\n                }else{\r\n                    t=t-0.01;\r\n                }\r\n                $(eleObj).css(\"top\",(t*t*a + topVal)+\"px\");// 设置图片的top值\r\n                tip = setTimeout(\"jump(\'\"+ eleObj + \"\', \" + topVal + \")\", 5);\r\n            }\r\n			\r\n			\r\n			\r\n			function turnAround(eleObj) {\r\n				$(eleObj).rotate({\r\n					bind: {\r\n						mouseover : function() {\r\n							$(this).rotate({ angle:0,animateTo:360,easing: $.easing.easeInOutExpo })\r\n						}\r\n						\r\n					}\r\n				});\r\n			}\r\n			\r\n			// 设置跳动\r\n			turnAround(\".b1 img\")\r\n			turnAround(\".b2 img\")\r\n			turnAround(\".b3 img\");\r\n			turnAround(\".b4 img\");\r\n      \r\n      \r\n      \r\n});  \r\n		\r\n	</script>\r\n  </head>\r\n  <body>\r\n    	<div class=\"content\" style=\"width: 100%; height: 100%; background-color: #e4e4e4;\">\r\n<div class=\"content_img\" style=\"width: 100%; height: 500px; background-repeat: no-repeat; float: left; margin: 2px 0;\">\r\n<div class=\"content_upper\" style=\"width: 70%; height: 40%; float: left; position: relative; overflow: hidden;\">\r\n<div class=\"upper_left\" style=\"position: absolute; top: 0%; left: 0;\"><img src=\"images/01.png\" alt=\"无法显示\" /></div>\r\n<div class=\"upper_middle_txt\" style=\"width:76.55%; height: 181px; position: absolute; top:12px; left: 0%;\">\r\n<ul style=\"list-style: none;position:relative;left:3.5%;\">\r\n<li style=\"list-style: none; margin-bottom: 10px; color: #7d7d7d; font-size: 22px; margin: 10px 0; font-family: \'微软雅黑\';\">优质化的服务、专业化的团队、实战化的课程</li>\r\n<li style=\"list-style: none; margin-bottom: 6px; color: #f83b00; font-size: 26px; font-family: \'微软雅黑\'; letter-spacing: 2px;\">让学员从课程到实战的过渡变得更容易！</li>\r\n<li style=\"list-style: none; color: #7c7c7c; font-size: 15px; font-family: \'微软雅黑\'; line-height: 30px;\">\r\n<p>江苏晓创教育科技有限公司是北京市明达启慧科技有限公司在南京成立的以教育云平台为主的分公司，北京明达专家团队根据多年的IT工作经验，利用云平台、DOCKER、ANSIBLE等高新技术将工作过程还原为可再现的IT真实操作。并整合和优化教育资源，打造个性化的工作+学习环境。承揽教育行业各类课程建设、数字化教学资源和多媒体产品等项目的开发和制作，提供教学管理平台、MOOC在线平台和IT实验管理系统软件的开发和信息化建设。为各类高校、教育管理部门及教育机构提供专业化的教育信息化解决方案。</p>\r\n</li>\r\n</ul>\r\n</div>\r\n<div class=\"upper_middle_img\" style=\"width: 23.45%; height: 100%; position: absolute; top: 0; left: 76.55%;\"><img style=\"width: 388px; height: 191px;\" src=\"images/03.png\" alt=\"无法显示\" /></div>\r\n</div>\r\n<div class=\"content_below\" style=\"width: 730px; height:150px; position: relative; top:45%;\">\r\n<div class=\"bleow_left1\" style=\"position: absolute; top: -4%; left: -1%; display: block; text-align: center; width: 123px; height: 123px; border: 1px dashed #db3400; border-radius: 130px;\"><span class=\"r1\" style=\"display: block; text-align: center; position: absolute; top: 105%; left: 20%; color: #999999; font-size: 18px; font-family: \'微软雅黑\';\">明事达理</br>启迪智慧</span></div>\r\n<div class=\"bleow_left2\" style=\"width: 123px; height: 123px; border: 1px dashed #db3400; border-radius: 130px; margin-top: 126px; position: absolute; top: -21.4%; left: 23%; display: block; text-align: center;\"><span class=\"r2\" style=\"display: block; text-align: center; position: absolute; top: 105%; left: 15%; color: #999999; font-size: 18px; font-family: \'微软雅黑\';\">开放  进取</br>协作  共赢</span></div>\r\n<div class=\"bleow_right1\" style=\"width: 123px; height: 123px; border: 1px dashed #db3400; border-radius: 130px; position: absolute; top: -4%; right: -1%; display: block; text-align: center;\"><span class=\"r3\" style=\"display: block; text-align: center; position: absolute; top: 105%; left: 5%; color: #999999; font-size: 18px; font-family: \'微软雅黑\';\">客户需求是我们前进的动力</span></div>\r\n<div class=\"bleow_right2\" style=\"width: 123px; height: 123px; border: 1px dashed #db3400; border-radius: 130px; display: block; text-align: center; margin-top: 126px; position: absolute; top: -21.4%; right: 23%;\"><span class=\"r4\" style=\"display: block; text-align: center; position: absolute; top: 105%; left: 5%; color: #999999; font-size: 18px; font-family: \'微软雅黑\';\">不断创新是我们前行的目标</span></div>\r\n<!-- ********************************************** -->\r\n<div class=\"b1\"><!-- <span>企业文化</span> --> <img style=\"width: 103px; height: 103px; position: absolute; top: 2%; left: 0.4%;\" src=\"images/10.png\" alt=\"无法显示\" /></div>\r\n<div class=\"b2\"><!-- <span>企业精神</span> --> <img style=\"width: 103px; height: 103px; position: absolute; top: 69%; left: 24.4%;\" src=\"images/12.png\" alt=\"无法显示\" /></div>\r\n<div class=\"b3\"><!-- <span>技术理念</span> --> <img style=\"width: 103px; height: 103px; position: absolute; top: 2%; right: 0.4%;\" src=\"images/11.png\" alt=\"无法显示\" /></div>\r\n<div class=\"b4\"><!-- <span>服务理念</span> --> <img style=\"width: 103px; height: 103px; position: absolute; top: 69%; right: 24.4%;\" src=\"images/13.png\" alt=\"无法显示\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n  </body>\r\n</html>\r\n\r\n',1,'',0,'0000-00-00 00:00:00','2018-07-11 03:51:33','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,68,'IT网络实验室','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_roksprocket',1,0,'{\"run_content_plugins\":\"onmodule\",\"provider\":\"joomla\",\"layout\":\"grids\",\"joomla_articles\":{\"1\":{\"root\":{\"article\":\"1\"}},\"2\":{\"root\":{\"article\":\"2\"}},\"3\":{\"root\":{\"article\":\"3\"}}},\"joomla_sort\":\"automatic\",\"joomla_sort_manual_append\":\"after\",\"grids_themes\":\"basic\",\"display_limit\":\"\\u221e\",\"grids_columns\":\"3\",\"grids_previews_length\":\"20\",\"grids_strip_html_tags\":\"1\",\"grids_animations\":[\"fade\",\"scale\",\"rotate\"],\"grids_resize_enable\":\"1\",\"grids_resize_width\":\"392\",\"grids_resize_height\":\"366\",\"grids_title_default\":\"title\",\"grids_description_default\":\"primary\",\"grids_image_default\":\"primary\",\"grids_image_default_custom\":\"\",\"grids_link_default\":\"none\",\"grids_link_default_custom\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"module_cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(96,76,'热门课程','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_roksprocket',1,0,'{\"run_content_plugins\":\"onmodule\",\"provider\":\"joomla\",\"layout\":\"strips\",\"joomla_articles\":{\"1\":{\"root\":{\"article\":\"4\"}},\"2\":{\"root\":{\"article\":\"5\"}},\"3\":{\"root\":{\"article\":\"6\"}},\"4\":{\"root\":{\"article\":\"7\"}}},\"joomla_sort\":\"automatic\",\"joomla_sort_manual_append\":\"after\",\"strips_themes\":\"default\",\"display_limit\":\"\\u221e\",\"strips_previews_length\":\"20\",\"strips_strip_html_tags\":\"1\",\"strips_items_per_page\":\"4\",\"strips_items_per_row\":\"4\",\"strips_show_arrows\":\"hide\",\"strips_show_pagination\":\"0\",\"strips_animation\":\"flyIn\",\"strips_autoplay\":\"0\",\"strips_autoplay_delay\":\"3\",\"strips_resize_enable\":\"0\",\"strips_resize_width\":\"0\",\"strips_resize_height\":\"0\",\"strips_title_default\":\"none\",\"strips_image_default\":\"none\",\"strips_description_default\":\"none\",\"strips_image_default_custom\":\"\",\"strips_link_default\":\"none\",\"strips_link_default_custom\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"module_cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(99,79,'SJ Mega Menu','','',0,'',0,'0000-00-00 00:00:00','2018-05-25 02:53:27','0000-00-00 00:00:00',-2,'mod_sj_megamenu_res',1,1,'',0,'*'),(100,80,'菜单','','',1,'position-3',0,'0000-00-00 00:00:00','2018-06-12 06:30:29','0000-00-00 00:00:00',0,'mod_sj_megamenu_res',1,0,'{\"style_layout\":\"layout2\",\"show_heading_title\":\"0\",\"heading_title\":\"\",\"bg_menu\":\"#444444\",\"menutype\":\"mainmenu\",\"menu_event\":\"hover\",\"moofx\":\"easeInOutCirc\",\"moofxtimeout\":\"150\",\"css_style\":\"1\",\"sub_animation\":\"menu-slide-down\",\"megamenutype\":\"horizontal\",\"active\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"mobilemenutype\":\"sidebar\",\"tag_id\":\"container_menu\",\"moduleclass_sfx\":\"\",\"layout\":\"_:default\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(101,81,'十大经典案例','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_roksprocket',1,0,'{\"run_content_plugins\":\"onmodule\",\"provider\":\"joomla\",\"layout\":\"grids\",\"joomla_articles\":{\"1\":{\"root\":{\"article\":\"8\"}},\"2\":{\"root\":{\"article\":\"9\"}},\"3\":{\"root\":{\"article\":\"10\"}},\"4\":{\"root\":{\"article\":\"11\"}},\"5\":{\"root\":{\"article\":\"12\"}},\"6\":{\"root\":{\"article\":\"13\"}},\"7\":{\"root\":{\"article\":\"16\"}},\"8\":{\"root\":{\"article\":\"17\"}},\"9\":{\"root\":{\"article\":\"14\"}},\"10\":{\"root\":{\"article\":\"15\"}}},\"joomla_sort\":\"automatic\",\"joomla_sort_manual_append\":\"after\",\"grids_themes\":\"basic\",\"display_limit\":\"\\u221e\",\"grids_columns\":\"5\",\"grids_previews_length\":\"20\",\"grids_strip_html_tags\":\"1\",\"grids_animations\":[\"rotate\"],\"grids_resize_enable\":\"1\",\"grids_resize_width\":\"400\",\"grids_resize_height\":\"170\",\"grids_title_default\":\"title\",\"grids_description_default\":\"primary\",\"grids_image_default\":\"primary\",\"grids_image_default_custom\":\"\",\"grids_link_default\":\"none\",\"grids_link_default_custom\":\"\",\"cache\":\"0\",\"moduleclass_sfx\":\"\",\"module_cache\":\"1\",\"cache_time\":\"900\"}',0,'*'),(102,92,'按钮','','<center><a href=\"https://www.icourse163.org/category/computer\"  target=\"_blank\"><button class=\"bu\">&nbsp;&nbsp;&nbsp;&nbsp;查看更多>></button></a></center>\r\n	<style type=\"text/css\">\r\n		.bu{\r\n			height: 50px;\r\n			width: 300px;\r\n			font-size: 25px;\r\n			border: 2px dashed #db3400;\r\n			background-color: white;	\r\n			cursor:pointer;\r\n			border-radius: 50px;\r\n                        font-family:\"微软雅黑\"; \r\n		}\r\n		.bu:hover{\r\n			background-color: #db3400;\r\n		}\r\na:link{\r\n			color: black;\r\n		}\r\n	</style>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(103,93,'独创的教学模式 铸就行业领先品质','','<script src=\"/mdjoomla/jquery-1.11.1.min.js\"></script>	\r\n<script type=\"text/javascript\">\r\n		function test1(){\r\n			document.getElementById(\'img12\').setAttribute(\'src\',\'/mdjoomla/images/new-1-1.png\');\r\n		}\r\n		function test1_1(){\r\n			document.getElementById(\'img12\').setAttribute(\'src\',\'/mdjoomla/images/new-1.png\');	\r\n		}\r\n      function test2(){\r\n			document.getElementById(\'img21\').setAttribute(\'src\',\'/mdjoomla/images/new-2-1.png\');\r\n		}\r\n		function test2_1(){\r\n			document.getElementById(\'img21\').setAttribute(\'src\',\'/mdjoomla/images/new-2.png\');	\r\n		}\r\n      function test3(){\r\n			document.getElementById(\'img32\').setAttribute(\'src\',\'/mdjoomla/images/new-3-1.png\');\r\n		}\r\n		function test3_1(){\r\n			document.getElementById(\'img32\').setAttribute(\'src\',\'/mdjoomla/images/new-3.png\');	\r\n		}\r\n      function test4(){\r\n			document.getElementById(\'img41\').setAttribute(\'src\',\'/mdjoomla/images/new-4-1.png\');\r\n		}\r\n		function test4_1(){\r\n			document.getElementById(\'img41\').setAttribute(\'src\',\'/mdjoomla/images/new-4.png\');	\r\n		}\r\n     \r\n	</script>\r\n	<ul id=\"ultest\">\r\n		<li id=\"li12\" onmouseover=\"test1()\"  onmouseout=\"test1_1()\">\r\n			<img src=\"/mdjoomla/images/new-1.png\" id=\"img12\">\r\n			<span >IT网络实验</span>\r\n			<p>线上线下联合教学 保证质量</p>\r\n		</li>\r\n		<li id=\"li23\" onmouseover=\"test2()\"  onmouseout=\"test2_1()\">\r\n			<img src=\"/mdjoomla/images/new-2.png\" id=\"img21\">\r\n			<span>主流技术</span>\r\n			<p>紧跟时下前沿技术</p>\r\n		</li>\r\n		<li id=\"li34\" onmouseover=\"test3()\"  onmouseout=\"test3_1()\">\r\n			<img src=\"/mdjoomla/images/new-3.png\" id=\"img32\">\r\n			<span>实战教学</span>\r\n			<p>与项目全流程实战</p>\r\n		</li>\r\n		<li id=\"li45\" onmouseover=\"test4()\"  onmouseout=\"test4_1()\">\r\n			<img src=\"/mdjoomla/images/new-4.png\" id=\"img41\">\r\n			<span>名师团队</span>\r\n			<p>资深总监实战讲师指导</p>\r\n		</li>\r\n	</ul>\r\n	<style type=\"text/css\">\r\n		#ultest{\r\n			list-style: none;\r\n			margin: 0;\r\n			padding: 0;\r\n          width:100%;\r\n          height:250px;\r\n		}\r\n		#ultest li{\r\n			list-style-type: none;\r\n          	margin:0;\r\n			padding: 0;\r\n			float: left;\r\n			height: 250px;\r\n			width: 200px;\r\n			text-align: center;\r\n			color: #9a9a9a;\r\n			cursor: pointer;\r\n		}\r\n		#ultest li img{\r\n			height: 250px;\r\n			width: 200px;\r\n		}\r\n		#ultest span{\r\n			position: relative;\r\n			top: -115px;\r\n          font-size: 21px;\r\n		}\r\n		#ultest p{\r\n			position: relative;\r\n			top: -100px;\r\n		}\r\n		#ultest li:hover span{\r\n			color: #db3400;\r\n		}\r\n		#ultest li:hover p{\r\n			color: #db3400;\r\n		}\r\n	</style>\r\n<script> \r\n var widthtest = $(window).width();\r\n  var lileftright = widthtest-800;\r\n  var leftright = lileftright/8;\r\n  var marginright = leftright - 15;\r\n  var marginleft = marginright + 43;\r\n  $(\"#ultest li\").css(\"margin-left\",marginright+\"px\");\r\n  $(\"#ultest li\").css(\"margin-right\",marginright+\"px\");\r\n  $(\"#li12\").css(\"margin-left\",marginleft+\"px\");\r\n</script>',1,'',0,'0000-00-00 00:00:00','2018-05-26 02:58:31','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(104,94,'金牌讲师','','<script type=\"text/javascript\" src=\"/jquery.min.js\"></script>\r\n	\r\n		\r\n<style type=\"text/css\">\r\n			* {padding: 0;margin: 0;}\r\n			body {background: #f3f3f3;}\r\n			.Box {position: relative;}\r\n			.Box .content {width: 1200px;margin: 0 auto;}\r\n			.Box h2 {text-align: center;margin-bottom: 35px;padding-top: 250px;}\r\n			.Box .Box_con {position: relative;}\r\n			.Box .Box_con .btnl {position: absolute;}\r\n			.Box .Box_con .btn {display: block;width: 41px;height: 41px;position: absolute;top: 80px;cursor: pointer;}\r\n			.Box .Box_con .btnl {background: url(/images/jtl02.png) no-repeat center;left: -72px;}\r\n			.Box .Box_con .btnr {background: url(/images/jtr02.png) no-repeat center;right: -72px;}\r\n			.Box .Box_con .btnl:hover {background: url(/images/jtl03.png) no-repeat center;}\r\n			.Box .Box_con .btnr:hover {background: url(/images/jtr03.png) no-repeat center;}\r\n			.Box .Box_con .conbox {position: relative;overflow: hidden;}\r\n			.Box .Box_con .conbox ul {position: relative;list-style: none;}\r\n			.Box .Box_con .conbox ul li {float: left;width: 285px;height: 200px;margin-left: 20px;overflow: hidden;}\r\n			.Box .Box_con .conbox ul li:first-child {margin-left: 0;}\r\n			.Box .Box_con .conbox ul li img {display: block;width: 285px;height: 200px;transition: all 0.5s;}\r\n			.Box .Box_con .conbox ul li:hover img {transform: scale(1.1);}\r\n			\r\n</style>\r\n<div class=\"Box\">\r\n    	<div class=\"content\">\r\n    		<div class=\"Box_con clearfix\">\r\n    			<span class=\"btnl btn\" id=\"btnl\"></span>\r\n    			<span class=\"btnr btn\" id=\"btnr\"></span>\r\n    			\r\n    			<div class=\"conbox\" id=\"BoxUl\">\r\n	    			<ul>\r\n	    				<li class=\"cur\"><img src=\"images/zs-1.jpg\" alt=\"\"/></li>\r\n	    				\r\n	    				<li class=\"cur\"><img src=\"images/zs-2.jpg\" alt=\"\"/></li>\r\n	    				\r\n	    				<li class=\"cur\"><img src=\"images/zs-3.jpg\" alt=\"\"/></li>\r\n	    			\r\n	    				<li class=\"cur\"><img src=\"images/zs-4.jpg\" alt=\"\"/></li>\r\n	    				\r\n	    				\r\n    				</ul>\r\n    			</div>\r\n    			\r\n    		</div>\r\n    		\r\n    	</div>\r\n    </div>\r\n	\r\n    <script type=\"text/javascript\">\r\n    	//滚动元素id，左切换按钮，右切换按钮，切换元素个数id,滚动方式，切换方向，是否自动滚动，滚动距离，滚动时间，滚动间隔，显示个数\r\n    	LbMove(\'BoxUl\',\'btnl\',\'btnr\',\'BoxSwitch\',true,\'left\',true,305,1000,5000,3);\r\n		function LbMove(boxID,btn_left,btn_right,btnBox,Car,direction,way,moveLengh,speed,Interval,number){\r\n				var        _ID   = $(\"#\"+boxID+\"\");\r\n				var  _btn_left   = $(\"#\"+btn_left+\"\");\r\n				var _btn_right   = $(\"#\"+btn_right+\"\");\r\n				var    _btnBox   = $(\"#\"+btnBox+\"\");\r\n				var        jsq   = 0\r\n				var      timer     ;\r\n				var         cj     ;\r\n				var     no_way   = 0;\r\n				var  no_wayGet   = 0;\r\n				var       fade   = 0;\r\n				var   new_time   = new Date;\r\n				\r\n				var ID_liLen , ID_liheight , cbtmBtn ;\r\n				ID_liLen    = _ID.find(\"li\").length;\r\n				ID_liheight = _ID.find(\"li\").innerHeight();\r\n				\r\n				if(direction == \"left\" || direction == \"right\"){\r\n					_ID.find(\"ul\").width(ID_liLen*moveLengh);\r\n					}else if(direction == \"top\" || direction == \"bottom\"){\r\n						_ID.find(\"ul\").height(ID_liLen*moveLengh);\r\n						_btnBox.hide()\r\n						}else if(direction == \"fade\"){\r\n							_ID.find(\"ul\").width(moveLengh).height(ID_liheight);\r\n							_ID.find(\"li\").eq(0).show().siblings().hide();\r\n							_ID.find(\"li\").css({\"position\":\"absolute\",\"left\":0,\"top\":0});\r\n							}\r\n				_btnBox.empty();\r\n				for(i=0;i<ID_liLen;i++){\r\n					_btnBox.append(\"<span></span>\");\r\n					};\r\n				_btnBox.find(\"span\").eq(0).addClass(\"cur\");\r\n\r\n				if(way == false){\r\n						_btn_left.hide();\r\n						_btn_right.hide();\r\n						_btnBox.hide();\r\n						}\r\n				\r\n				\r\n				function Carousel(){\r\n					if(way == false){\r\n						no_way++;\r\n						\r\n						if(direction == \"left\"){\r\n							_ID.find(\"ul\").css({\"left\":-no_way});	\r\n							no_wayGet = parseInt(_ID.find(\"ul\").css(\"left\"));\r\n							if(no_wayGet == -moveLengh){\r\n								no_way = 0\r\n								_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n								_ID.find(\"ul\").css({\"left\":0});\r\n								}\r\n						}\r\n\r\n						if(direction == \"right\"){\r\n								\r\n							no_wayGet = parseInt(_ID.find(\"ul\").css(\"left\"));\r\n							if(no_wayGet == 0){\r\n								no_way = -moveLengh\r\n								_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n								_ID.find(\"ul\").css({\"left\":0});\r\n								}\r\n							_ID.find(\"ul\").css({\"left\":no_way});\r\n						}\r\n						\r\n						if(direction == \"top\"){\r\n							_ID.find(\"ul\").css({\"top\":-no_way});	\r\n							no_wayGet = parseInt(_ID.find(\"ul\").css(\"top\"));\r\n							if(no_wayGet == -moveLengh){\r\n								no_way = 0\r\n								_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n								_ID.find(\"ul\").css({\"top\":0});\r\n								}\r\n						}\r\n						\r\n						if(direction == \"bottom\"){\r\n								\r\n							no_wayGet = parseInt(_ID.find(\"ul\").css(\"top\"));\r\n							if(no_wayGet == 0){\r\n								no_way = -moveLengh\r\n								_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n								_ID.find(\"ul\").css({\"top\":0});\r\n								}\r\n							_ID.find(\"ul\").css({\"top\":no_way});\r\n						}\r\n						\r\n						\r\n						}else if(way == true){\r\n\r\n						if(direction == \"left\"){\r\n							_ID.find(\"ul\").animate({left:-moveLengh},speed,function(){\r\n								_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n								_ID.find(\"ul\").css({\"left\":0});\r\n								});	\r\n							if(jsq<ID_liLen-1){\r\n								jsq++;\r\n								_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n								}else{\r\n									jsq = 0;\r\n									_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n									}\r\n							\r\n						}\r\n						\r\n						if(direction == \"right\"){\r\n							_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n							_ID.find(\"ul\").css({\"left\":-moveLengh});\r\n							_ID.find(\"ul\").stop().animate({left:0},speed);\r\n							if(jsq>0){\r\n								jsq--;\r\n								_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n								}else{\r\n									jsq = ID_liLen-1;\r\n									_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n									}\r\n							\r\n						}\r\n						\r\n						if(direction == \"top\"){\r\n							_ID.find(\"ul\").animate({top:-moveLengh},speed,function(){\r\n								_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n								_ID.find(\"ul\").css({\"top\":0});\r\n								});	\r\n						}\r\n						\r\n						if(direction == \"bottom\"){\r\n							_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n							_ID.find(\"ul\").css({\"top\":-moveLengh});\r\n							_ID.find(\"ul\").stop().animate({top:0},speed);\r\n								\r\n						}\r\n						if(direction == \"fade\"){\r\n							\r\n							if(fade<ID_liLen-1){\r\n								fade++;\r\n								}else{fade = 0}\r\n							_ID.find(\"li\").eq(fade).fadeIn(speed).siblings().fadeOut(speed);\r\n							_btnBox.find(\"span\").eq(fade).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n							\r\n						}\r\n					\r\n					}\r\n					}\r\n					\r\n					\r\n				if(Car == true){\r\n						\r\n					if(ID_liLen>number){\r\n						timer =	setInterval(Carousel,Interval);\r\n						}else{\r\n							clearInterval(timer);\r\n							_btn_left.hide();\r\n							_btn_right.hide();\r\n							_btnBox.hide();\r\n							}\r\n					}else{\r\n						clearInterval(timer);\r\n						}\r\n				_ID.find(\"li\").hover(function(){\r\n					clearInterval(timer);\r\n					},function(){\r\n						if(Car == true){\r\n							if(ID_liLen>number){\r\n								timer =	setInterval(Carousel,Interval);\r\n								}else{\r\n									clearInterval(timer);\r\n									_btn_left.hide();\r\n									_btn_right.hide();\r\n									_btnBox.hide();\r\n									}\r\n							}else{\r\n								clearInterval(timer);\r\n								}\r\n						});\r\n					\r\n					\r\n				_btn_right.hover(function(){\r\n					clearInterval(timer);\r\n					},function(){\r\n						if(Car == true){\r\n							if(ID_liLen>number){\r\n								timer =	setInterval(Carousel,Interval);\r\n								}else{\r\n									clearInterval(timer);\r\n									_btn_left.hide();\r\n									_btn_right.hide();\r\n									_btnBox.hide();\r\n									}\r\n							}else{\r\n								clearInterval(timer);\r\n								}\r\n						\r\n						}).click(function(){\r\n							if(new Date - new_time>500){\r\n								new_time = new Date;\r\n							\r\n							if(direction == \"left\" || direction == \"right\"){\r\n								_ID.find(\"ul\").animate({left:-moveLengh},speed,function(){\r\n									_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n									_ID.find(\"ul\").css({\"left\":0});\r\n									});	\r\n								}\r\n							\r\n							\r\n							if(direction == \"top\" || direction == \"bottom\"){\r\n								_ID.find(\"ul\").animate({top:-moveLengh},speed,function(){\r\n									_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n									_ID.find(\"ul\").css({\"top\":0});\r\n									});	\r\n								}\r\n							if(direction == \"fade\"){\r\n							\r\n							if(fade>0){\r\n								fade--;\r\n								}else{fade = ID_liLen-1}\r\n									_ID.find(\"li\").stop(true,true).eq(fade).fadeIn(speed).siblings().fadeOut(speed);\r\n									\r\n								}\r\n							if(jsq<ID_liLen-1){\r\n								jsq++;\r\n								_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n								}else{\r\n									jsq = 0;\r\n									_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n									};\r\n							\r\n								\r\n								}else{};\r\n							});\r\n				_btn_left.hover(function(){\r\n					clearInterval(timer);\r\n					},function(){\r\n						if(Car == true){\r\n							if(ID_liLen>number){\r\n								timer =	setInterval(Carousel,Interval);\r\n								}else{\r\n									clearInterval(timer);\r\n									_btn_left.hide();\r\n									_btn_right.hide();\r\n									_btnBox.hide();\r\n									}\r\n							}else{\r\n								clearInterval(timer);\r\n								}\r\n						}).click(function(){\r\n							if(new Date - new_time>500){\r\n								new_time = new Date;\r\n\r\n							if(direction == \"left\" || direction == \"right\"){\r\n								_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n								_ID.find(\"ul\").css({\"left\":-moveLengh});\r\n								_ID.find(\"ul\").stop().animate({left:0},speed);\r\n								}\r\n							\r\n							if(direction == \"top\" || direction == \"bottom\"){\r\n								_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n								_ID.find(\"ul\").css({\"top\":-moveLengh});\r\n								_ID.find(\"ul\").stop().animate({top:0},speed);\r\n									\r\n								}\r\n							if(direction == \"fade\"){\r\n							\r\n							if(fade<ID_liLen-1){\r\n								fade++;\r\n								}else{fade = 0}\r\n									_ID.find(\"li\").stop(true,true).eq(fade).fadeIn(speed).siblings().fadeOut(speed);\r\n									\r\n								}\r\n							if(jsq>0){\r\n								jsq--;\r\n								_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n								}else{\r\n									jsq = ID_liLen-1;\r\n									_btnBox.find(\"span\").eq(jsq).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n									};\r\n								}else{};\r\n							});\r\n					\r\n				_btnBox.find(\"span\").hover(function(){\r\n					clearInterval(timer);\r\n\r\n					},function(){\r\n						if(Car == true){\r\n							if(ID_liLen>number){\r\n								timer =	setInterval(Carousel,Interval);\r\n								}else{\r\n									clearInterval(timer);\r\n									_btn_left.hide();\r\n									_btn_right.hide();\r\n									_btnBox.hide();\r\n									}\r\n							}else{\r\n								clearInterval(timer);\r\n								}\r\n						}).click(function(){\r\n							if(new Date - new_time>500){\r\n								new_time = new Date;\r\n							cbtmBtn = $(this).index();\r\n							$(this).addClass(\"cur\").siblings().removeClass(\"cur\");\r\n							if(direction == \"fade\"){\r\n											_ID.find(\"li\").eq(cbtmBtn).fadeIn(speed).siblings().fadeOut(speed);\r\n										}else{\r\n							if(cbtmBtn>jsq){\r\n								cj =cbtmBtn - jsq;\r\n								jsq = cbtmBtn;\r\n								\r\n								_ID.find(\"ul\").stop().animate({left:-moveLengh*cj},speed,function(){\r\n									for(i=0;i<cj;i++){\r\n										_ID.find(\"ul\").css({\"left\":0})\r\n										_ID.find(\"li:first\").insertAfter(_ID.find(\"li:last\"));\r\n										};\r\n									});\r\n								}else{\r\n									cj = jsq - cbtmBtn;\r\n									jsq = cbtmBtn;\r\n									_ID.find(\"ul\").css({\"left\":-moveLengh*cj});\r\n									for(i=0;i<cj;i++){\r\n										_ID.find(\"ul\").stop().animate({left:0},speed);\r\n										_ID.find(\"li:last\").insertBefore(_ID.find(\"li:first\"));\r\n										};\r\n									};\r\n									};\r\n								}else{};\r\n							});\r\n}\r\n\r\n	</script>',1,'',0,'0000-00-00 00:00:00','2018-07-11 03:51:37','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(105,95,'slideshow','','<div class=\"slideshow\">[yt_content_slider style=\"default\" margin=\"0\" items_column0=\"1\" items_column1=\"1\" items_column2=\"1\" items_column3=\"1\" items_column4=\"1\" transitionin=\"\" transitionout=\"\" arrows=\"yes\" arrow_position=\"arrow-default\" pagination=\"no\" autoplay=\"no\" autoheight=\"yes\" hoverpause=\"yes\" lazyload=\"no\" loop=\"yes\" speed=\"0.8\" delay=\"4\" items_column0=\"1\" ] [yt_content_slider_item src=\"images/slideshow/1.jpg\" caption=\"yes\" ]\r\n<div class=\"content\">\r\n<h3 class=\"title-small lora\">Welcome to University</h3>\r\n<h2 class=\"title-lage\">Education for the Creatives</h2>\r\n<p class=\"des\">Inceptos at dis blanditiis quaerat mollitia aspernatur purus hic dignissimos excepturi blandit,feugiat repellat! Blandit, laboriosam montes, egestas ipsa tenetur</p>\r\n<a class=\"button-find\" href=\"#\">find out more</a></div>\r\n[/yt_content_slider_item] [yt_content_slider_item src=\"images/slideshow/2.jpg\" caption=\"yes\" ]\r\n<div class=\"content\">\r\n<h3 class=\"title-small lora\">Welcome to University</h3>\r\n<h2 class=\"title-lage\">Education for the Creatives</h2>\r\n<p class=\"des\">Inceptos at dis blanditiis quaerat mollitia aspernatur purus hic dignissimos excepturi blandit,feugiat repellat! Blandit, laboriosam montes, egestas ipsa tenetur</p>\r\n<a class=\"button-find\" href=\"#\">find out more</a></div>\r\n[/yt_content_slider_item] [yt_content_slider_item src=\"images/slideshow/3.jpg\" caption=\"yes\" ]\r\n<div class=\"content\">\r\n<h3 class=\"title-small lora\">Welcome to University</h3>\r\n<h2 class=\"title-lage\">Education for the Creatives</h2>\r\n<p class=\"des\">Inceptos at dis blanditiis quaerat mollitia aspernatur purus hic dignissimos excepturi blandit,feugiat repellat! Blandit, laboriosam montes, egestas ipsa tenetur</p>\r\n<a class=\"button-find\" href=\"#\">find out more</a></div>\r\n[/yt_content_slider_item] [/yt_content_slider]</div>',1,'',0,'0000-00-00 00:00:00','2018-06-16 07:50:34','0000-00-00 00:00:00',-2,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(106,97,'备案号','','<div style=\"width:350px;margin:0 auto; padding:20px 0;\">\r\n 	<a target=\"_blank\" href=\"http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32010602010405\" style=\"display:inline-block;text-decoration:none;height:20px;line-height:20px;\"><img src=\"images/sss.jpg\" style=\"float:left;\"/><p style=\"float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;\">苏公网安备 32010602010405号</p></a><span style=\"float:right;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;\">| 苏ICP备18005277号</span>\r\n 	</div>',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(107,98,'高级课程','','<iframe src=\"index.php?option=com_emerald&view=emlist\" target=\"_blank\">\r\n  \r\n</iframe>',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(108,99,'中级课程','','<table class=\"table-plans\" width=\"100%\">\r\n	<tbody><tr>\r\n					<td align=\"center\" width=\"50%\">\r\n				<h3>\r\n					python				</h3>\r\n			</td>\r\n					<td align=\"center\" width=\"50%\">\r\n				<h3>\r\n					Oracle				</h3>\r\n			</td>\r\n			</tr>\r\n	<tr valign=\"top\">\r\n					<td align=\"center\" width=\"50%\" class=\"well well-small\">\r\n				<h2>\r\n										$ 1.00				</h2>\r\n\r\n				\r\n				1 Day			</td>\r\n					<td align=\"center\" width=\"50%\" class=\"well well-small\">\r\n				<h2>\r\n										$ 1.00				</h2>\r\n\r\n				\r\n				1 Day			</td>\r\n			</tr>\r\n	<tr>\r\n					<td align=\"center\" width=\"50%\">\r\n				<img src=\"http://static.open-open.com/lib/uploadImg/20160623/20160623173015_416.png\" style=\"height:250px;width:100%;\">\r\n<br>\r\n<p>\r\n  python 是一种面向对象的解释型计算机程序设计语言,具有简单、易学、速度快、免费、开源、高层语言、可移植性、解释性等优点。\r\n</p>\r\n				<div class=\"alert alert-info alert-plan\" style=\"display: none;\">\r\n					<small>\r\n																													</small>\r\n				</div>\r\n			</td>\r\n					<td align=\"center\" width=\"50%\">\r\n				<img src=\"http://p1.so.qhimgs1.com/bdr/200_200_/t017cbda0a6bb9f3ffd.jpg\" style=\"height:250px;width=:100%;\">\r\n				<div class=\"alert alert-info alert-plan\" style=\"display: none;\">\r\n					<small>\r\n																													</small>\r\n				</div>\r\n			</td>\r\n			</tr>\r\n\r\n	<tr>\r\n					<td align=\"center\" valign=\"top\">\r\n											</td>\r\n					<td align=\"center\" valign=\"top\">\r\n											</td>\r\n			</tr>\r\n\r\n	<tr>\r\n					<td align=\"center\" width=\"50%\">\r\n									<a href=\"/mdjoomla/index.php/1111?view=empayment&amp;sid=18\" class=\"btn btn-warning\">\r\n						Buy Now</a>\r\n							</td>\r\n					<td align=\"center\" width=\"50%\">\r\n									<a href=\"/mdjoomla/index.php/1111?view=empayment&amp;sid=16\" class=\"btn btn-warning\">\r\n						Buy Now</a>\r\n							</td>\r\n			</tr>\r\n</tbody></table>',1,'',0,'0000-00-00 00:00:00','2018-07-19 08:49:13','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(109,100,'低级课程','','<table class=\"table-plans\" width=\"100%\">\r\n	<tbody><tr>\r\n					<td align=\"center\" width=\"100%\">\r\n				<h3>\r\n					Linux				</h3>\r\n			</td>\r\n			</tr>\r\n	<tr valign=\"top\">\r\n					<td align=\"center\" width=\"100%\" class=\"well well-small\">\r\n				<h2>\r\n										$ 1.00				</h2>\r\n\r\n				\r\n				1 Day			</td>\r\n			</tr>\r\n	<tr>\r\n					<td align=\"center\" width=\"100%\">\r\n				<img src=\"http://p2.so.qhimgs1.com/bdr/200_200_/t018b6f38a0007e4822.jpg\" style=\"height:250px;width:450px;\">\r\n				<div class=\"alert alert-info alert-plan\" style=\"display: none;\">\r\n					<small>\r\n																													</small>\r\n				</div>\r\n			</td>\r\n			</tr>\r\n\r\n	<tr>\r\n					<td align=\"center\" valign=\"top\">\r\n											</td>\r\n			</tr>\r\n\r\n	<tr>\r\n					<td align=\"center\" width=\"100%\">\r\n									<a href=\"/mdjoomla/index.php/1111?view=empayment&amp;sid=15\" class=\"btn btn-warning\">\r\n						Buy Now</a>\r\n							</td>\r\n			</tr>\r\n</tbody></table>',1,'',0,'0000-00-00 00:00:00','2018-07-19 08:49:16','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(110,101,'普通课程','','<table class=\"table-plans\" width=\"100%\">\r\n	<tbody><tr>\r\n					<td align=\"center\" width=\"33.33%\">\r\n				<h3>\r\n					Oracle安装				</h3>\r\n			</td>\r\n					<td align=\"center\" width=\"33.33%\">\r\n				<h3>\r\n					docker 安装				</h3>\r\n			</td>\r\n					<td align=\"center\" width=\"33.33%\">\r\n				<h3>\r\n					普通课程				</h3>\r\n			</td>\r\n			</tr>\r\n	<tr valign=\"top\">\r\n					<td align=\"center\" width=\"33.33%\" class=\"well well-small\">\r\n				<h2>\r\n										$ 1.00				</h2>\r\n\r\n				\r\n				1 Day			</td>\r\n					<td align=\"center\" width=\"33.33%\" class=\"well well-small\">\r\n				<h2>\r\n										$ 1.00				</h2>\r\n\r\n				\r\n				1 Day			</td>\r\n					<td align=\"center\" width=\"33.33%\" class=\"well well-small\">\r\n				<h2>\r\n										$ 1.00				</h2>\r\n\r\n				\r\n				1 Day			</td>\r\n			</tr>\r\n	<tr>\r\n					<td align=\"center\" width=\"33.33%\">\r\n				\r\n				<div class=\"alert alert-info alert-plan\" style=\"display: none;\">\r\n					<small>\r\n																													</small>\r\n				</div>\r\n			</td>\r\n					<td align=\"center\" width=\"33.33%\">\r\n				\r\n				<div class=\"alert alert-info alert-plan\" style=\"display: none;\">\r\n					<small>\r\n																													</small>\r\n				</div>\r\n			</td>\r\n					<td align=\"center\" width=\"33.33%\">\r\n				\r\n				<div class=\"alert alert-info alert-plan\" style=\"display: none;\">\r\n					<small>\r\n																													</small>\r\n				</div>\r\n			</td>\r\n			</tr>\r\n\r\n	<tr>\r\n					<td align=\"center\" valign=\"top\">\r\n											</td>\r\n					<td align=\"center\" valign=\"top\">\r\n											</td>\r\n					<td align=\"center\" valign=\"top\">\r\n											</td>\r\n			</tr>\r\n\r\n	<tr>\r\n					<td align=\"center\" width=\"33.33%\">\r\n									<a href=\"/mdjoomla/index.php/1111?view=empayment&amp;sid=13\" class=\"btn btn-warning\">\r\n						Buy Now</a>\r\n							</td>\r\n					<td align=\"center\" width=\"33.33%\">\r\n									<a href=\"/mdjoomla/index.php/1111?view=empayment&amp;sid=12\" class=\"btn btn-warning\">\r\n						Buy Now</a>\r\n							</td>\r\n					<td align=\"center\" width=\"33.33%\">\r\n									<a href=\"/mdjoomla/index.php/1111?view=empayment&amp;sid=10\" class=\"btn btn-warning\">\r\n						Buy Now</a>\r\n							</td>\r\n			</tr>\r\n</tbody></table>',1,'',0,'0000-00-00 00:00:00','2018-07-19 08:49:18','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(111,102,'我的商城','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_wrapper',1,1,'{\"url\":\"index.php\\/1111?view=emlist\",\"add\":\"1\",\"scrolling\":\"auto\",\"width\":\"100%\",\"height\":\"200\",\"height_auto\":\"1\",\"frameborder\":\"0\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(112,103,'测试商城模块iframe','','',1,'',0,'0000-00-00 00:00:00','2018-07-19 08:49:21','0000-00-00 00:00:00',-2,'mod_wrapper',1,0,'{\"url\":\"https:\\/\\/mdtest.mindme.com.cn\\/index.php?option=com_emerald&view=emlist\",\"add\":\"1\",\"scrolling\":\"no\",\"width\":\"100%\",\"height\":\"200\",\"height_auto\":\"1\",\"frameborder\":\"0\",\"target\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `qywlj_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_modules_menu`
--

DROP TABLE IF EXISTS `qywlj_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_modules_menu`
--

LOCK TABLES `qywlj_modules_menu` WRITE;
/*!40000 ALTER TABLE `qywlj_modules_menu` DISABLE KEYS */;
INSERT INTO `qywlj_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(89,0),(90,0),(92,0),(93,0),(94,0),(95,0),(96,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,0),(111,0),(112,0);
/*!40000 ALTER TABLE `qywlj_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_newsfeeds`
--

DROP TABLE IF EXISTS `qywlj_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_newsfeeds`
--

LOCK TABLES `qywlj_newsfeeds` WRITE;
/*!40000 ALTER TABLE `qywlj_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_overrider`
--

DROP TABLE IF EXISTS `qywlj_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_overrider`
--

LOCK TABLES `qywlj_overrider` WRITE;
/*!40000 ALTER TABLE `qywlj_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_postinstall_messages`
--

DROP TABLE IF EXISTS `qywlj_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_postinstall_messages`
--

LOCK TABLES `qywlj_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `qywlj_postinstall_messages` DISABLE KEYS */;
INSERT INTO `qywlj_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1),(7,700,'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE','PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY','PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION','plg_captcha_recaptcha',1,'action','site://plugins/captcha/recaptcha/postinstall/actions.php','recaptcha_postinstall_action','site://plugins/captcha/recaptcha/postinstall/actions.php','recaptcha_postinstall_condition','3.8.6',1);
/*!40000 ALTER TABLE `qywlj_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_redirect_links`
--

DROP TABLE IF EXISTS `qywlj_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_redirect_links`
--

LOCK TABLES `qywlj_redirect_links` WRITE;
/*!40000 ALTER TABLE `qywlj_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_rokcommon_configs`
--

DROP TABLE IF EXISTS `qywlj_rokcommon_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_rokcommon_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) NOT NULL DEFAULT '',
  `type` varchar(45) NOT NULL,
  `file` varchar(256) NOT NULL,
  `priority` int(10) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_rokcommon_configs`
--

LOCK TABLES `qywlj_rokcommon_configs` WRITE;
/*!40000 ALTER TABLE `qywlj_rokcommon_configs` DISABLE KEYS */;
INSERT INTO `qywlj_rokcommon_configs` VALUES (3,'roksprocket','container','/components/com_roksprocket/container.xml',10),(4,'roksprocket','library','/components/com_roksprocket/lib',10);
/*!40000 ALTER TABLE `qywlj_rokcommon_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_roksprocket_items`
--

DROP TABLE IF EXISTS `qywlj_roksprocket_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_roksprocket_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` varchar(45) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `provider_id` varchar(45) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module_id`),
  KEY `idx_module_order` (`module_id`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_roksprocket_items`
--

LOCK TABLES `qywlj_roksprocket_items` WRITE;
/*!40000 ALTER TABLE `qywlj_roksprocket_items` DISABLE KEYS */;
INSERT INTO `qywlj_roksprocket_items` VALUES (4,'95','joomla','1',0,'{\"grids_item_title\":\"-none-\",\"grids_item_description\":\"\\u4ee5Oracle RAC\\u4e3a\\u5178\\u578b\\u573a\\u666f\\uff0c\\u5b9e\\u73b0IT\\u5b9e\\u9a8c\\u5ba4\\u7684\\u63a7\\u5236\\u6a21\\u5757\\u548c\\u5de5\\u4f5c\\u6d41\\u6a21\\u5757\\uff0c \\u5e76\\u5b8c\\u6210\\u4e0eClaroline\\u5b66\\u4e60\\u5e73\\u53f0\\u7684\\u5bf9\\u63a5\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'images\\/321.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_1__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(5,'95','joomla','2',1,'{\"grids_item_title\":\"-none-\",\"grids_item_description\":\"\\u9488\\u5bf9\\u5ba2\\u6237\\u9700\\u6c42\\uff0c\\u4e30\\u5bcc\\u5404\\u79cd\\u5b9e\\u9a8c\\u573a\\u666f\\uff0c\\u4f18\\u5316\\u5e94\\u7528\\u3002\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'images\\/213.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_2__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(6,'95','joomla','3',2,'{\"grids_item_title\":\"-none-\",\"grids_item_description\":\"\\u5b8c\\u5584IT\\u5b9e\\u9a8c\\u5ba4\\u7684\\u5404\\u79cd\\u573a\\u666f\\u5206\\u6790\\uff0c\\u63d0\\u4f9b\\u4e2a\\u6027\\u5316\\u3001\\u667a\\u80fd\\u5316\\u7684\\u5b66\\u4e60\\u6307\\u5bfc\\u3002\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'images\\/123.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_3__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(39,'101','joomla','8',0,'{\"grids_item_title\":\"-default-\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/39C25CE3F3E38294B86C8E80E57A2D52.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_8__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(40,'101','joomla','9',1,'{\"grids_item_title\":\"-default-\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/75cb56ab-adad-4488-9947-752f07e3a267.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_9__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(41,'101','joomla','10',2,'{\"grids_item_title\":\"-default-\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/efd0745c-96b7-44d3-8fb1-ad7b8bab1a48.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_10__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(42,'101','joomla','11',3,'{\"grids_item_title\":\"-default-\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/C5EACBDB80FE5088E5D4718A201D0475.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_11__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(43,'101','joomla','12',4,'{\"grids_item_title\":\"-default-\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/B106122EAF8C48A609E27C9257DE04CC.PNG\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_12__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(44,'101','joomla','13',5,'{\"grids_item_title\":\"-default-\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/6B3A6A1B8BB4A757DCC26E2834A44907.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_13__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(45,'101','joomla','14',6,'{\"grids_item_title\":\"\\u6848\\u4f8b\\u4e5d\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/af364546-d221-4825-a185-e6f0ecbefb43.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_14__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(46,'101','joomla','15',7,'{\"grids_item_title\":\"\\u6848\\u4f8b\\u5341\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/677bb440-38fe-4838-a205-b49600dd8469.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_15__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(47,'101','joomla','16',8,'{\"grids_item_title\":\"\\u6848\\u4f8b\\u4e03\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/8D19D5C53B786FF3E07959D686AF945D.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_16__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(48,'101','joomla','17',9,'{\"grids_item_title\":\"\\u6848\\u4f8b\\u516b\",\"grids_item_description\":\"-default-\",\"grids_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/EEBB8E840E0598286E8238186730978C.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_17__params_grids_item_image\'}\",\"grids_item_link\":\"-default-\",\"strips_item_title\":\"-default-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"tabs_item_link\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"strips_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"strips_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"strips_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(49,'96','joomla','4',0,'{\"strips_item_title\":\"\\u8f6f\\u4ef6\\u6d4b\\u8bd5\",\"strips_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/F3963FD1D3298267311BB063C8701B74.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_4__params_strips_item_image\'}\",\"strips_item_link\":\"https:\\/\\/www.icourse163.org\\/course\\/NJU-1001773008\",\"strips_item_description\":\"-article-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"grids_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"grids_item_description\":\"-default-\",\"tabs_item_link\":\"-default-\",\"grids_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"grids_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(50,'96','joomla','5',1,'{\"strips_item_title\":\"\\u7406\\u8bba\\u5de5\\u7a0b\\u4e13\\u4e1a\\u5bfc\\u8bba\",\"strips_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/B2EB1322678007B1DE2203945C93A9C6-1441539697097\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_5__params_strips_item_image\'}\",\"strips_item_link\":\"https:\\/\\/www.icourse163.org\\/course\\/HIT-298007\",\"strips_item_description\":\"-article-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"grids_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"grids_item_description\":\"-default-\",\"tabs_item_link\":\"-default-\",\"grids_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"grids_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(51,'96','joomla','6',2,'{\"strips_item_title\":\"\\u8ba1\\u7b97\\u673a\\u64cd\\u4f5c\\u7cfb\\u7edf\",\"strips_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/2FBF2643E1153A9C7CEA9F5D0B0CD3D6.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_6__params_strips_item_image\'}\",\"strips_item_link\":\"https:\\/\\/www.icourse163.org\\/course\\/NJU-1001571004\",\"strips_item_description\":\"-article-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"grids_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"grids_item_description\":\"-default-\",\"tabs_item_link\":\"-default-\",\"grids_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"grids_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}'),(52,'96','joomla','7',3,'{\"strips_item_title\":\"\\u8ba1\\u7b97\\u673a\\u7684\\u7ec4\\u6210\\u539f\\u7406\\u4e0e\\u5b9e\\u8df5\",\"strips_item_image\":\"{\'type\':\'mediamanager\',\'path\':\'https:\\/\\/edu-image.nosdn.127.net\\/F017D32B34F781FDABEC3128E4199E9D.jpg\',\'preview\':\'\',\'link\':\'index.php?option=com_media&view=images&layout=default&tmpl=component&e_name=items_joomla_7__params_strips_item_image\'}\",\"strips_item_link\":\"https:\\/\\/www.icourse163.org\\/course\\/NJU-1001616012\",\"strips_item_description\":\"-article-\",\"tabs_item_title\":\"-default-\",\"tables_item_title\":\"-default-\",\"lists_item_title\":\"-default-\",\"grids_item_title\":\"-default-\",\"mosaic_item_title\":\"-default-\",\"tables_item_description\":\"-default-\",\"mosaic_item_description\":\"-default-\",\"quotes_item_description\":\"-default-\",\"tabs_item_icon\":\"-default-\",\"grids_item_description\":\"-default-\",\"tabs_item_link\":\"-default-\",\"grids_item_image\":\"-default-\",\"lists_item_image\":\"-default-\",\"mosaic_item_image\":\"-default-\",\"quotes_item_image\":\"-default-\",\"tables_item_image\":\"-default-\",\"mosaic_item_link\":\"-default-\",\"quotes_item_author\":\"-none-\",\"lists_item_link\":\"-default-\",\"grids_item_link\":\"-default-\",\"tables_item_class\":\"-none-\",\"tabs_item_description\":\"-default-\",\"mosaic_item_tags\":\"-article-\",\"sliders_item_title\":\"-default-\",\"quotes_item_subtext\":\"-none-\",\"tables_item_price\":\"-none-\",\"features_item_title\":\"-default-\",\"lists_item_description\":\"-default-\",\"sliders_item_description\":\"-default-\",\"headlines_item_image\":\"-default-\",\"features_item_description\":\"-default-\",\"quotes_item_link\":\"-default-\",\"tables_item_feature_1\":\"-none-\",\"headlines_item_link\":\"-default-\",\"quotes_item_direction\":\"-bottomleft-\",\"sliders_item_image\":\"-default-\",\"tables_item_feature_2\":\"-none-\",\"features_item_image\":\"-default-\",\"features_item_link\":\"-default-\",\"sliders_item_link\":\"-default-\",\"tables_item_feature_3\":\"-none-\",\"headlines_item_description\":\"-default-\",\"tables_item_feature_4\":\"-none-\",\"tables_item_link\":\"-default-\",\"tables_item_link_text\":\"Buy Now\"}');
/*!40000 ALTER TABLE `qywlj_roksprocket_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_schemas`
--

DROP TABLE IF EXISTS `qywlj_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_schemas`
--

LOCK TABLES `qywlj_schemas` WRITE;
/*!40000 ALTER TABLE `qywlj_schemas` DISABLE KEYS */;
INSERT INTO `qywlj_schemas` VALUES (700,'3.8.6-2018-02-14'),(10003,'3.0.alpha1-2017-10-1');
/*!40000 ALTER TABLE `qywlj_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_session`
--

DROP TABLE IF EXISTS `qywlj_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_session`
--

LOCK TABLES `qywlj_session` WRITE;
/*!40000 ALTER TABLE `qywlj_session` DISABLE KEYS */;
INSERT INTO `qywlj_session` VALUES ('1vbc256tkpgap7ikk0au5cji6p',0,1,'1532049427','joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMjA0OTQyNTtzOjQ6Imxhc3QiO2k6MTUzMjA0OTQyNztzOjM6Im5vdyI7aToxNTMyMDQ5NDI3O31zOjU6InRva2VuIjtzOjMyOiJINVhSa0Y4V2pTVjg5a0dMVktEanYzSDNGWUtaOVYydiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('522pidk25kdq3608c68tsva4b9',1,0,'1531993550','joomla|s:964:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1O3M6NToidG9rZW4iO3M6MzI6IkdCQ0cwaUREYzlUZk5VYXRhUVByZXcyWmNINElOSzZ1IjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzE5OTM1NDQ7czo0OiJsYXN0IjtpOjE1MzE5OTM1NDk7czozOiJub3ciO2k6MTUzMTk5MzU0OTt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO31zOjE1OiJjb21fcm9rc3Byb2NrZXQiO086ODoic3RkQ2xhc3MiOjE6e3M6MTA6InJlZGlyZWN0ZWQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZnJvbSI7czoxMToiY29tX21vZHVsZXMiO319czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',553,'admin'),('9lkfd4e3vd5ql5299iqj5ugkr6',1,0,'1532049836','joomla|s:868:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMjA0OTY2ODtzOjQ6Imxhc3QiO2k6MTUzMjA0OTgyMjtzOjM6Im5vdyI7aToxNTMyMDQ5ODIzO31zOjU6InRva2VuIjtzOjMyOiJLZTA0VExURFhOZ3lUak1yZXZRVTlpZ2FWR05jRHUyNiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',553,'admin'),('c57eahmha8fgeomt9auhru4mjd',0,1,'1531993595','joomla|s:1140:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyMTtzOjU6InRva2VuIjtzOjMyOiJJaWt1ak1VbUkyN1NzcWxSU0t0eW1hQWZmbEpYOEtVbSI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTMxOTkxOTQ5O3M6NDoibGFzdCI7aToxNTMxOTkzNTk1O3M6Mzoibm93IjtpOjE1MzE5OTM1OTU7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6MTp7czo2OiJyZXR1cm4iO3M6ODg6Imh0dHBzOi8vbWR0ZXN0Lm1pbmRtZS5jb20uY24vbWRqb29tbGEvaW5kZXgucGhwL2NvbXBvbmVudC9lbWVyYWxkLz92aWV3PWVtcGF5bWVudCZzaWQ9MjIiO319fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjEzOiJ0cnlfdGhpc19wbGFuIjtzOjI6IjIyIjtzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),('dqea8uasf2o76hnaakg4kef1lg',0,1,'1531994405','joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMTk5NDQwMztzOjQ6Imxhc3QiO2k6MTUzMTk5NDQwNTtzOjM6Im5vdyI7aToxNTMxOTk0NDA1O31zOjU6InRva2VuIjtzOjMyOiJBODlNY1BWUXJXVFYzQVNST0hFWjNPQUV2Z2hqcTZWeSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('i1i9fejs5n4vmapna2056d2nm9',0,1,'1531994483','joomla|s:1140:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxOTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzE5OTM1MjU7czo0OiJsYXN0IjtpOjE1MzE5OTM2NDI7czozOiJub3ciO2k6MTUzMTk5NDQ4Mzt9czo1OiJ0b2tlbiI7czozMjoiNWw1aVhBdFcwMWJJMVNnMzJXMHpGbng1MEFHV01WZEQiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6MTp7czo2OiJyZXR1cm4iO3M6ODg6Imh0dHBzOi8vbWR0ZXN0Lm1pbmRtZS5jb20uY24vbWRqb29tbGEvaW5kZXgucGhwL2NvbXBvbmVudC9lbWVyYWxkLz92aWV3PWVtcGF5bWVudCZzaWQ9MTkiO319fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjEzOiJ0cnlfdGhpc19wbGFuIjtzOjI6IjE5IjtzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',0,''),('i2lnljaamv9bn1c3p0nn5n312l',0,0,'1532020902','joomla|s:744:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzIwMjA4MDk7czo0OiJsYXN0IjtpOjE1MzIwMjA5MDE7czozOiJub3ciO2k6MTUzMjAyMDkwMjt9czo1OiJ0b2tlbiI7czozMjoiRjJzdjZJT1RXM1ppTHpaVUROSVBBTGtUdW9UUmE3d2EiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNTUzIjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',553,'admin'),('n69gmfbihpb94lavu5bk1i44rn',1,1,'1531993509','joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMTk5MzUwOTtzOjQ6Imxhc3QiO2k6MTUzMTk5MzUwOTtzOjM6Im5vdyI7aToxNTMxOTkzNTA5O31zOjU6InRva2VuIjtzOjMyOiJsbWE5QW1MT0tkSjBSUlZZVzhxQzB6QWJRZjRtS0pxRiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('nmbi3l2km2m42u09etp97v5tgm',0,1,'1532049393','joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMjA0OTM5MDtzOjQ6Imxhc3QiO2k6MTUzMjA0OTM5MztzOjM6Im5vdyI7aToxNTMyMDQ5MzkzO31zOjU6InRva2VuIjtzOjMyOiJGTm83OU92U3VpZXNkRkdBdkFNaWJiMXJGMXczZExuYyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('omqi604gqnmudcdp6lmviuqgjj',0,1,'1531994276','joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMTk5NDI3NDtzOjQ6Imxhc3QiO2k6MTUzMTk5NDI3NjtzOjM6Im5vdyI7aToxNTMxOTk0Mjc2O31zOjU6InRva2VuIjtzOjMyOiJkdVdjU0hBcEJITW5XbzQ2ZVNrb3N0TkNLSmh0UDM4QSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('s0nlcmmgqj3eo40dblicn6slhj',0,0,'1532049706','joomla|s:1148:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MzIwNDk0MTg7czo0OiJsYXN0IjtpOjE1MzIwNDk3MDU7czozOiJub3ciO2k6MTUzMjA0OTcwNjt9czo1OiJ0b2tlbiI7czozMjoiUzY1S0t2ZldacUxqRHZyS09ieTgyUDhIRjJxNGFYNFciO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjg4OiJodHRwczovL21kdGVzdC5taW5kbWUuY29tLmNuL21kam9vbWxhL2luZGV4LnBocC9jb21wb25lbnQvZW1lcmFsZC8/dmlldz1lbXBheW1lbnQmc2lkPTIyIjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO31zOjEzOiJ0cnlfdGhpc19wbGFuIjtzOjI6IjIyIjtzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',553,'admin'),('th7eblno481ih7kc50v2eld7ug',1,0,'1532020887','joomla|s:744:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMjAyMDg3NTtzOjQ6Imxhc3QiO2k6MTUzMjAyMDg4MDtzOjM6Im5vdyI7aToxNTMyMDIwODg3O31zOjU6InRva2VuIjtzOjMyOiJzeEV1N1pBVzFUN2U0UVIxdzlYVEtVQVh1cUUxaFNQYSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',553,'admin'),('ttr30hvqlnml9df3189282orb5',0,1,'1532036807','joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMjAzNjgwMjtzOjQ6Imxhc3QiO2k6MTUzMjAzNjgwNjtzOjM6Im5vdyI7aToxNTMyMDM2ODA3O31zOjU6InRva2VuIjtzOjMyOiJ4OUppTU1SVkkyZ0Eya1A0UnlmUVVVUmF1ajV1eGpYTyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('u4gj2mr1g6lc8jv5pgbc8gpouf',0,0,'1531994365','joomla|s:1252:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNTM7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTMxOTkwOTc2O3M6NDoibGFzdCI7aToxNTMxOTk0MzY0O3M6Mzoibm93IjtpOjE1MzE5OTQzNjU7fXM6NToidG9rZW4iO3M6MzI6Ik95U1JiZVZISG45R2xXaEhZUTBLa2QyZDg5Njc5NlhzIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6NToidXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NToibG9naW4iO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZm9ybSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjthOjA6e31zOjY6InJldHVybiI7czo2NzoiaHR0cHM6Ly9tZHRlc3QubWluZG1lLmNvbS5jbi9tZGpvb21sYS9pbmRleC5waHAvMjAxOC0wNS0yMy0wOC0zMy00MCI7fX19czoxMToiY29tX2VtZXJhbGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJlbXBsYW4iO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',553,'admin'),('un45vmgnluvrfe5ljs4jhdcr3n',0,0,'1532036783','joomla|s:744:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMjAzNjc4MjtzOjQ6Imxhc3QiO2k6MTUzMjAzNjc4MjtzOjM6Im5vdyI7aToxNTMyMDM2NzgyO31zOjU6InRva2VuIjtzOjMyOiJaNjdlWU9jaXdaNHBZTjJZemF6Y1R5N0l3VHk1eU5QcCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI1NTMiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',553,'admin');
/*!40000 ALTER TABLE `qywlj_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_spmedia`
--

DROP TABLE IF EXISTS `qywlj_spmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_spmedia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `caption` varchar(2048) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `extension` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_spmedia`
--

LOCK TABLES `qywlj_spmedia` WRITE;
/*!40000 ALTER TABLE `qywlj_spmedia` DISABLE KEYS */;
INSERT INTO `qywlj_spmedia` VALUES (1,'background','images/2018/05/24/background.jpg','images/2018/05/24/_spmedia_thumbs/background.jpg','background','','','image','com_sppagebuilder','2018-05-24 01:48:53',553,'0000-00-00 00:00:00',0),(2,'1_02','images/2018/05/24/1_02.jpg','images/2018/05/24/_spmedia_thumbs/1_02.jpg','1_02','','','image','com_sppagebuilder','2018-05-24 09:46:53',553,'0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `qywlj_spmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_sppagebuilder`
--

DROP TABLE IF EXISTS `qywlj_sppagebuilder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_sppagebuilder` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `catid` int(10) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `og_title` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `css` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_sppagebuilder`
--

LOCK TABLES `qywlj_sppagebuilder` WRITE;
/*!40000 ALTER TABLE `qywlj_sppagebuilder` DISABLE KEYS */;
INSERT INTO `qywlj_sppagebuilder` VALUES (1,64,'Home','[{\"id\":1527044935134,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"sppb-text-left\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":{\"md\":\" -15px  -15px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"animationduration\":\"300\",\"animationdelay\":\"0\",\"class\":\".sppb-row-container{width:100%;}\"},\"layout\":\"12\",\"columns\":[{\"id\":1527044935133,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1527044935137,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"轮播\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":1,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"92\",\"global_width\":{\"md\":\"100\",\"sm\":\"\",\"xs\":\"\"}}}]}]},{\"id\":1527152961143,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"IT网络实验室 —— 主打产品  三大特色\",\"heading_selector\":\"h3\",\"title_fontsize\":{\"md\":\"46\",\"sm\":\"\",\"xs\":\"\"},\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":{\"md\":\"30px 0px  0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"background_image\":\"images/2018/05/24/1_02.jpg\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"animationduration\":\"300\",\"animationdelay\":\"0\",\"subtitle\":\"我们专注IT领域已经5年，我们的专家团队将把工作中的不同行业、不同数据中心的IT复杂工作如标准配置、处理流程、Troubleshooting、灾难恢复等精简为一个个典型案例。\",\"title_margin_bottom\":{\"md\":\"20\",\"sm\":\"\",\"xs\":\"\"},\"title_margin_top\":{\"md\":\"5\",\"sm\":\"\",\"xs\":\"\"},\"title_text_color\":\"#ffffff\",\"subtitle_fontsize\":{\"md\":\"16\",\"sm\":\"\",\"xs\":\"\"},\"color\":\"#8e9aa2\"},\"layout\":\"12\",\"columns\":[{\"id\":1527152961142,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1527152961146,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"实验室\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\" 100px  100px\",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"95\",\"global_text_color\":\"#ffffff\",\"global_link_color\":\"#8e9aa2\"}}]}]},{\"id\":1527212023359,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"热门课程\",\"heading_selector\":\"h3\",\"title_fontsize\":{\"md\":\"46\",\"sm\":\"\",\"xs\":\"\"},\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":{\"md\":\"50px 0px 50px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"md\":\"0px 0px 0px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"animationduration\":\"300\",\"animationdelay\":\"0\",\"title_text_color\":\"#797979\",\"subtitle\":\"网络数字化教学资源推动了现代教育技术的普及和应用工作\",\"subtitle_fontsize\":{\"md\":\"16\",\"sm\":\"\",\"xs\":\"\"},\"title_margin_top\":{\"md\":\"\",\"sm\":\"\",\"xs\":\"\"},\"background_color\":\"#efefef\",\"title_margin_bottom\":{\"md\":\"20\",\"sm\":\"\",\"xs\":\"\"},\"color\":\"#9a9a9a\"},\"layout\":\"12\",\"columns\":[{\"id\":1527212023358,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1527212023362,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"热门课程\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\" 100px  100px\",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"96\",\"global_link_color\":\"#9a9a9a\"}}]}]},{\"id\":1527299832318,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":{\"md\":\"50px 0px 50px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"md\":\"0px 0px 0px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"animationduration\":\"300\",\"animationdelay\":\"0\",\"background_color\":\"#efefef\"},\"layout\":\"12\",\"columns\":[{\"id\":1527299832317,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1527299832321,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"按钮\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"-50px   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"102\"}}]}]},{\"id\":1531991955581,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":\"50px 0px 50px 0px\",\"margin\":\"0px 0px 0px 0px\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":\"0\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"layout\":\"12\",\"columns\":[{\"id\":1531991955580,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1531991955584,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"107\"}}]}]},{\"id\":1527232069139,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"十大经典案例加深巩固知识体系\",\"heading_selector\":\"h3\",\"title_fontsize\":{\"md\":\"46\",\"sm\":\"\",\"xs\":\"\"},\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":{\"md\":\"50px 0px 50px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"md\":\"0px 0px 0px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"animationduration\":\"300\",\"animationdelay\":\"0\",\"subtitle\":\"数百计优秀经典的案例库中，精心挑选，为您量身定做的案例，都是实战，让你在实战中成长，在成长中学会实战，从零基础到实战近在咫尺之遥！\",\"title_margin_bottom\":{\"md\":\"20\",\"sm\":\"\",\"xs\":\"\"},\"color\":\"rgba(134, 134, 134, 1)\"},\"layout\":\"12\",\"columns\":[{\"id\":1527232069138,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1527232069142,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"十大经典案例\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\" 100px  100px\",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"101\"}}]}]},{\"id\":1527302745844,\"visibility\":true,\"collapse\":false,\"settings\":{\"admin_label\":\"\",\"title\":\"独创的教学模式 铸就行业领先品质\",\"heading_selector\":\"h3\",\"title_fontsize\":{\"md\":\"46\",\"sm\":\"\",\"xs\":\"\"},\"title_fontweight\":\"\",\"title_position\":\"sppb-text-center\",\"columns_align_center\":0,\"fullscreen\":0,\"no_gutter\":0,\"padding\":{\"md\":\"50px 0px 50px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"margin\":{\"md\":\"0px 0px 0px 0px\",\"sm\":\"   \",\"xs\":\"   \"},\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0 0\",\"background_video\":0,\"hidden_xs\":0,\"hidden_sm\":0,\"hidden_md\":0,\"animationduration\":\"300\",\"animationdelay\":\"0\",\"background_color\":\"#efefef\",\"subtitle\":\"多元化课程，实战教学，与企业无缝对接\",\"subtitle_fontsize\":{\"md\":\"16\",\"sm\":\"\",\"xs\":\"\"},\"title_text_color\":\"#868686\",\"title_margin_bottom\":{\"md\":\"20\",\"sm\":\"\",\"xs\":\"\"},\"color\":\"#868686\"},\"layout\":\"12\",\"columns\":[{\"id\":1527302745843,\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"scroll\",\"background_position\":\"0 0\",\"items_align_center\":0,\"boxshadow\":\"0 0 0 0 #fff\",\"sm_col\":\"\",\"xs_col\":\"\",\"hidden_xs\":\"\",\"hidden_sm\":\"\",\"hidden_md\":\"\",\"animationduration\":\"300\",\"animationdelay\":\"0\"},\"addons\":[{\"id\":1527302745847,\"name\":\"module\",\"visibility\":true,\"settings\":{\"admin_label\":\"独创的教学模式\",\"title\":\"\",\"heading_selector\":\"h3\",\"title_fontsize\":\"\",\"title_lineheight\":\"\",\"title_letterspace\":\"0\",\"module_type\":\"module\",\"class\":\"\",\"global_use_background\":0,\"global_user_border\":0,\"global_margin\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_padding\":{\"md\":\"   \",\"sm\":\"   \",\"xs\":\"   \"},\"global_use_animation\":0,\"use_global_width\":0,\"hidden_md\":0,\"hidden_sm\":0,\"hidden_xs\":0,\"id\":\"103\",\"global_text_color\":\"#868686\"}}]}]}]','com_sppagebuilder','page',0,0,1,0,1,0,'2018-05-23 03:05:12',553,'2018-07-19 09:19:29',553,0,'0000-00-00 00:00:00','','','','*',2157,'');
/*!40000 ALTER TABLE `qywlj_sppagebuilder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_sppagebuilder_integrations`
--

DROP TABLE IF EXISTS `qywlj_sppagebuilder_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_sppagebuilder_integrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL,
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_sppagebuilder_integrations`
--

LOCK TABLES `qywlj_sppagebuilder_integrations` WRITE;
/*!40000 ALTER TABLE `qywlj_sppagebuilder_integrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_sppagebuilder_integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_sppagebuilder_languages`
--

DROP TABLE IF EXISTS `qywlj_sppagebuilder_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_sppagebuilder_languages` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_sppagebuilder_languages`
--

LOCK TABLES `qywlj_sppagebuilder_languages` WRITE;
/*!40000 ALTER TABLE `qywlj_sppagebuilder_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_sppagebuilder_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_sppagebuilder_sections`
--

DROP TABLE IF EXISTS `qywlj_sppagebuilder_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_sppagebuilder_sections` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `section` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_sppagebuilder_sections`
--

LOCK TABLES `qywlj_sppagebuilder_sections` WRITE;
/*!40000 ALTER TABLE `qywlj_sppagebuilder_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_sppagebuilder_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_tags`
--

DROP TABLE IF EXISTS `qywlj_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_tags`
--

LOCK TABLES `qywlj_tags` WRITE;
/*!40000 ALTER TABLE `qywlj_tags` DISABLE KEYS */;
INSERT INTO `qywlj_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',553,'2018-05-23 02:48:31','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `qywlj_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_template_styles`
--

DROP TABLE IF EXISTS `qywlj_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_template_styles`
--

LOCK TABLES `qywlj_template_styles` WRITE;
/*!40000 ALTER TABLE `qywlj_template_styles` DISABLE KEYS */;
INSERT INTO `qywlj_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"1\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `qywlj_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_ucm_base`
--

DROP TABLE IF EXISTS `qywlj_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_ucm_base`
--

LOCK TABLES `qywlj_ucm_base` WRITE;
/*!40000 ALTER TABLE `qywlj_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_ucm_content`
--

DROP TABLE IF EXISTS `qywlj_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_ucm_content`
--

LOCK TABLES `qywlj_ucm_content` WRITE;
/*!40000 ALTER TABLE `qywlj_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_ucm_history`
--

DROP TABLE IF EXISTS `qywlj_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_ucm_history`
--

LOCK TABLES `qywlj_ucm_history` WRITE;
/*!40000 ALTER TABLE `qywlj_ucm_history` DISABLE KEYS */;
INSERT INTO `qywlj_ucm_history` VALUES (1,1,1,'','2018-05-24 08:53:28',553,1811,'9a1b3c3b1ad7919af250997789f5dcb2c545d952','{\"id\":1,\"asset_id\":69,\"title\":\"\\u7ecf\\u5178\\u573a\\u666f\",\"alias\":\"2018-05-24-08-53-28\",\"introtext\":\"\\u6d4b\\u8bd5\\u7f51\\u7edc\\u5b9e\\u9a8c\\u5ba4\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-24 08:53:28\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-24 08:53:28\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-24 08:53:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(2,2,1,'','2018-05-24 08:53:50',553,1793,'fbacd9701e3a1b185170c3cdad03b02bda571016','{\"id\":2,\"asset_id\":70,\"title\":\"\\u4f18\\u5316\\u5e94\\u7528\",\"alias\":\"2018-05-24-08-53-50\",\"introtext\":\"\\u4f18\\u5316\\u5e94\\u7528\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-24 08:53:50\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-24 08:53:50\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-24 08:53:50\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,3,1,'','2018-05-24 08:54:32',553,1823,'073e5c554c887fb577f02a5ffb712c8a452dfd9e','{\"id\":3,\"asset_id\":71,\"title\":\"\\u4e2a\\u6027\\u5316\\u3001\\u667a\\u80fd\\u5316\",\"alias\":\"2018-05-24-08-54-32\",\"introtext\":\"\\u4e2a\\u6027\\u5316\\u667a\\u80fd\\u5316\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-24 08:54:32\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-24 08:54:32\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-24 08:54:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,4,1,'','2018-05-25 01:28:03',553,1922,'3b2e0560d8eba79ccaab1ed750730ed22e8971e7','{\"id\":4,\"asset_id\":72,\"title\":\"\\u8f6f\\u4ef6\\u6d4b\\u8bd5\",\"alias\":\"2018-05-25-01-28-03\",\"introtext\":\"\\u8f85\\u5bfc\\u8001\\u5e08:\\u674e\\u592a\\u767d                        \\u5f00\\u8bfe\\u65f6\\u95f4\\uff1a 2018\\u5e7404\\u670802\\u65e5 ~ 2018\\u5e7406\\u670830\\u65e5\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 01:28:03\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 01:28:03\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 01:28:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(5,5,1,'','2018-05-25 01:28:25',553,1934,'6bdb3f7c8976d8fd580227c6d8f108440d56bf78','{\"id\":5,\"asset_id\":73,\"title\":\"\\u7406\\u8bba\\u5de5\\u7a0b\\u5bfc\\u8bba\",\"alias\":\"2018-05-25-01-28-25\",\"introtext\":\"\\u8f85\\u5bfc\\u8001\\u5e08:\\u674e\\u592a\\u767d                        \\u5f00\\u8bfe\\u65f6\\u95f4\\uff1a 2018\\u5e7404\\u670802\\u65e5 ~ 2018\\u5e7406\\u670830\\u65e5\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 01:28:25\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 01:28:25\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 01:28:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(6,6,1,'','2018-05-25 01:28:38',553,1934,'b2e1002fe5f2245ca43272a3536053629a51d78f','{\"id\":6,\"asset_id\":74,\"title\":\"\\u8ba1\\u7b97\\u64cd\\u4f5c\\u7cfb\\u7edf\",\"alias\":\"2018-05-25-01-28-38\",\"introtext\":\"\\u8f85\\u5bfc\\u8001\\u5e08:\\u674e\\u592a\\u767d                        \\u5f00\\u8bfe\\u65f6\\u95f4\\uff1a 2018\\u5e7404\\u670802\\u65e5 ~ 2018\\u5e7406\\u670830\\u65e5\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 01:28:38\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 01:28:38\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 01:28:38\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(7,7,1,'','2018-05-25 01:28:57',553,1964,'577eae57356bc2c6ebb31acf1cea79dbb6475aea','{\"id\":7,\"asset_id\":75,\"title\":\"\\u8ba1\\u7b97\\u673a\\u7684\\u7ec4\\u6210\\u539f\\u7406\\u4e0e\\u5b9e\\u8df5\",\"alias\":\"2018-05-25-01-28-57\",\"introtext\":\"\\u8f85\\u5bfc\\u8001\\u5e08:\\u674e\\u592a\\u767d                        \\u5f00\\u8bfe\\u65f6\\u95f4\\uff1a 2018\\u5e7404\\u670802\\u65e5 ~ 2018\\u5e7406\\u670830\\u65e5\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 01:28:57\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 01:28:57\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 01:28:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(8,8,1,'','2018-05-25 07:01:55',553,1797,'580958ba6da4bccf74d220290987c562bb08b1d3','{\"id\":8,\"asset_id\":82,\"title\":\"\\u6848\\u4f8b\\u4e00\",\"alias\":\"2018-05-25-07-01-55\",\"introtext\":\"Rack\\u5b89\\u88c5\\u4e0e\\u914d\\u7f6e\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:01:55\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:01:55\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:01:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(9,9,1,'','2018-05-25 07:02:11',553,1820,'616e04d57ffd3d5987d6cea8f013696fd16aa672','{\"id\":9,\"asset_id\":83,\"title\":\"\\u6848\\u4f8b\\u4e8c\",\"alias\":\"2018-05-25-07-02-11\",\"introtext\":\"PXE\\u5168\\u81ea\\u52a8\\u6279\\u91cf\\u88c5\\u673a\\u5e73\\u53f0\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:02:11\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:02:11\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:02:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(10,10,1,'','2018-05-25 07:02:25',553,1803,'5495f96c0a70705bd4bd3fc601ac5b88b960c37d','{\"id\":10,\"asset_id\":84,\"title\":\"\\u6848\\u4f8b\\u4e09\",\"alias\":\"2018-05-25-07-02-25\",\"introtext\":\"\\u6784\\u5efaCDN\\u5206\\u53d1\\u7f51\\u7edc\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:02:25\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:02:25\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:02:25\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(11,11,1,'','2018-05-25 07:02:41',553,1821,'07017358b84b17151be166a5aa10e9f98698f1ed','{\"id\":11,\"asset_id\":85,\"title\":\"\\u6848\\u4f8b\\u56db\",\"alias\":\"2018-05-25-07-02-41\",\"introtext\":\"KVM\\u865a\\u62df\\u5316\\u5e73\\u53f0\\u89e3\\u51b3\\u65b9\\u6848\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:02:41\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:02:41\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:02:41\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(12,12,1,'','2018-05-25 07:02:54',553,1821,'5740db4f4fdd3c5ac7a0a0d6f5a1e2d6380a45cd','{\"id\":12,\"asset_id\":86,\"title\":\"\\u6848\\u4f8b\\u4e94\",\"alias\":\"2018-05-25-07-02-54\",\"introtext\":\"KVM\\u865a\\u62df\\u5316\\u5e73\\u53f0\\u89e3\\u51b3\\u65b9\\u6848\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:02:54\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:02:54\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:02:54\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,13,1,'','2018-05-25 07:03:08',553,1817,'9db20c4e480314d977df4a3e756d71b3198facdb','{\"id\":13,\"asset_id\":87,\"title\":\"\\u6848\\u4f8b\\u516d\",\"alias\":\"2018-05-25-07-03-08\",\"introtext\":\"\\u4f01\\u4e1a\\u8fd0\\u7ef4\\u5e38\\u7528Shell\\u811a\\u672c\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:03:08\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:03:08\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:03:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(14,14,1,'','2018-05-25 07:03:23',553,1812,'47f5fcfde7dd301c022629d1af2669b6ebe10f0c','{\"id\":14,\"asset_id\":88,\"title\":\"\\u6848\\u4f8b\\u4e03\",\"alias\":\"2018-05-25-07-03-23\",\"introtext\":\"\\u7f51\\u7edc\\u5b58\\u50a8\\u89e3\\u51b3\\u65b9\\u6848\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:03:23\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:03:23\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:03:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(15,15,1,'','2018-05-25 07:03:34',553,1804,'5cd79188aafa6b45f53b49afe4745b04da83154d','{\"id\":15,\"asset_id\":89,\"title\":\"\\u6848\\u4f8b\\u516b\",\"alias\":\"2018-05-25-07-03-34\",\"introtext\":\"\\u57fa\\u4e8e\\u9ad8\\u6548Java\\u5e73\\u53f0\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:03:34\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:03:34\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:03:34\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(16,16,1,'','2018-05-25 07:03:45',553,1812,'99fbeeb313358ea63c7da989874c23b8feb418c7','{\"id\":16,\"asset_id\":90,\"title\":\"\\u6848\\u4f8b\\u4e5d\",\"alias\":\"2018-05-25-07-03-45\",\"introtext\":\"\\u670d\\u52a1\\u5668\\u7fa4\\u76d1\\u63a7\\u65b9\\u6848\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:03:45\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:03:45\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:03:45\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(17,17,1,'','2018-05-25 07:03:58',553,1842,'5030e236d5e7ae8d1147f1177c943d4156884161','{\"id\":17,\"asset_id\":91,\"title\":\"\\u6848\\u4f8b\\u5341\",\"alias\":\"2018-05-25-07-03-58\",\"introtext\":\"\\u6784\\u5efa\\u5343\\u4e07\\u5e76\\u53d1\\u91cf\\u7684\\u9ad8\\u53ef\\u7528\\u96c6\\u7fa4\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 07:03:58\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-25 07:03:58\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-05-25 07:03:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,7,1,'','2018-05-26 07:49:01',553,1984,'cced77c4f56848483648dc721b50a143e9ed9fbc','{\"id\":7,\"asset_id\":\"75\",\"title\":\"\\u8ba1\\u7b97\\u673a\\u7684\\u7ec4\\u6210\\u539f\\u7406\\u4e0e\\u5b9e\\u8df5\",\"alias\":\"2018-05-25-01-28-57\",\"introtext\":\"\\u8f85\\u5bfc\\u8001\\u5e08:\\u674e\\u592a\\u767d                        \\u5f00\\u8bfe\\u65f6\\u95f4\\uff1a 2018\\u5e7404\\u670802\\u65e5 ~ 2018\\u5e7406\\u670830\\u65e5\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-05-25 01:28:57\",\"created_by\":\"553\",\"created_by_alias\":\"\",\"modified\":\"2018-05-26 07:49:01\",\"modified_by\":\"553\",\"checked_out\":\"553\",\"checked_out_time\":\"2018-05-26 07:48:53\",\"publish_up\":\"2018-05-25 01:28:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"10\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `qywlj_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_update_sites`
--

DROP TABLE IF EXISTS `qywlj_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_update_sites`
--

LOCK TABLES `qywlj_update_sites` WRITE;
/*!40000 ALTER TABLE `qywlj_update_sites` DISABLE KEYS */;
INSERT INTO `qywlj_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1532049827,''),(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,1532049829,''),(3,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1532049830,''),(4,'RocketTheme Update Directory','collection','http://updates.rockettheme.com/joomla/updates.xml',1,1532049832,''),(7,'mod_sj_megamenu_res','extension','http://www.smartaddons/joomla3/extensions/updates/mod_sj_megamenu_res.xml',1,1532049832,''),(8,'plg_sys_x_menu_params','extension','http://www.smartaddons/joomla3/extensions/updates/plg_sys_x_menu_params.xml',0,0,''),(9,'MiniorangeSSO','extension','http://miniorange.com/joomla_plugin_update.xml',1,1532049836,'');
/*!40000 ALTER TABLE `qywlj_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_update_sites_extensions`
--

DROP TABLE IF EXISTS `qywlj_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_update_sites_extensions`
--

LOCK TABLES `qywlj_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `qywlj_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `qywlj_update_sites_extensions` VALUES (1,700),(2,802),(2,10002),(3,28),(4,10040),(4,10042),(4,10051),(7,10046),(8,10047),(9,10056);
/*!40000 ALTER TABLE `qywlj_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_updates`
--

DROP TABLE IF EXISTS `qywlj_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_updates`
--

LOCK TABLES `qywlj_updates` WRITE;
/*!40000 ALTER TABLE `qywlj_updates` DISABLE KEYS */;
INSERT INTO `qywlj_updates` VALUES (1,2,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml','',''),(2,2,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,2,0,'Romanian','','pkg_ro-RO','package','',0,'3.7.3.1','','https://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,2,0,'Flemish','','pkg_nl-BE','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,2,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.8.0.1','','https://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,2,0,'French','','pkg_fr-FR','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/fr-FR_details.xml','',''),(7,2,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml','',''),(8,2,0,'Georgian','','pkg_ka-GE','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/ka-GE_details.xml','',''),(9,2,0,'Greek','','pkg_el-GR','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/el-GR_details.xml','',''),(10,2,0,'Japanese','','pkg_ja-JP','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/ja-JP_details.xml','',''),(11,2,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.2','','https://update.joomla.org/language/details3/he-IL_details.xml','',''),(12,2,0,'Bengali','','pkg_bn-BD','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/bn-BD_details.xml','',''),(13,2,0,'Hungarian','','pkg_hu-HU','package','',0,'3.8.7.1','','https://update.joomla.org/language/details3/hu-HU_details.xml','',''),(14,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/af-ZA_details.xml','',''),(15,2,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/ar-AA_details.xml','',''),(16,2,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/be-BY_details.xml','',''),(17,2,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.6.5.2','','https://update.joomla.org/language/details3/bg-BG_details.xml','',''),(18,2,0,'Catalan','','pkg_ca-ES','package','',0,'3.8.3.3','','https://update.joomla.org/language/details3/ca-ES_details.xml','',''),(19,2,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/zh-CN_details.xml','',''),(20,2,0,'Croatian','','pkg_hr-HR','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/hr-HR_details.xml','',''),(21,2,0,'Czech','','pkg_cs-CZ','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(22,1,700,'Joomla','','joomla','file','',0,'3.8.10','','https://update.joomla.org/core/sts/extension_sts.xml','',''),(23,2,0,'Danish','','pkg_da-DK','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/da-DK_details.xml','',''),(24,2,0,'Dutch','','pkg_nl-NL','package','',0,'3.8.9.1','','https://update.joomla.org/language/details3/nl-NL_details.xml','',''),(25,2,0,'Esperanto','','pkg_eo-XX','package','',0,'3.8.8.1','','https://update.joomla.org/language/details3/eo-XX_details.xml','',''),(26,2,0,'Estonian','','pkg_et-EE','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/et-EE_details.xml','',''),(27,2,0,'Italian','','pkg_it-IT','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/it-IT_details.xml','',''),(28,2,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml','',''),(29,2,0,'Korean','','pkg_ko-KR','package','',0,'3.8.7.3','','https://update.joomla.org/language/details3/ko-KR_details.xml','',''),(30,2,0,'Latvian','','pkg_lv-LV','package','',0,'3.7.3.1','','https://update.joomla.org/language/details3/lv-LV_details.xml','',''),(31,2,0,'Macedonian','','pkg_mk-MK','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/mk-MK_details.xml','',''),(32,2,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.8.9.1','','https://update.joomla.org/language/details3/nb-NO_details.xml','',''),(33,2,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml','',''),(34,2,0,'Persian','','pkg_fa-IR','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/fa-IR_details.xml','',''),(35,2,0,'Polish','','pkg_pl-PL','package','',0,'3.8.8.2','','https://update.joomla.org/language/details3/pl-PL_details.xml','',''),(36,2,0,'Portuguese','','pkg_pt-PT','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/pt-PT_details.xml','',''),(37,2,0,'Russian','','pkg_ru-RU','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/ru-RU_details.xml','',''),(38,2,0,'English AU','','pkg_en-AU','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/en-AU_details.xml','',''),(39,2,0,'Slovak','','pkg_sk-SK','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/sk-SK_details.xml','',''),(40,2,0,'English US','','pkg_en-US','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/en-US_details.xml','',''),(41,2,0,'Swedish','','pkg_sv-SE','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/sv-SE_details.xml','',''),(42,2,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(43,2,0,'Tamil','','pkg_ta-IN','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/ta-IN_details.xml','',''),(44,2,0,'Thai','','pkg_th-TH','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/th-TH_details.xml','',''),(45,2,0,'Turkish','','pkg_tr-TR','package','',0,'3.8.2.1','','https://update.joomla.org/language/details3/tr-TR_details.xml','',''),(46,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.7.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml','',''),(47,2,0,'Uyghur','','pkg_ug-CN','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/ug-CN_details.xml','',''),(48,2,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.2','','https://update.joomla.org/language/details3/sq-AL_details.xml','',''),(49,2,0,'Basque','','pkg_eu-ES','package','',0,'3.7.5.1','','https://update.joomla.org/language/details3/eu-ES_details.xml','',''),(50,2,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.2','','https://update.joomla.org/language/details3/hi-IN_details.xml','',''),(51,2,0,'German DE','','pkg_de-DE','package','',0,'3.8.10.2','','https://update.joomla.org/language/details3/de-DE_details.xml','',''),(52,2,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/pt-BR_details.xml','',''),(53,2,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/sr-YU_details.xml','',''),(54,2,0,'Spanish','','pkg_es-ES','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/es-ES_details.xml','',''),(55,2,0,'Bosnian','','pkg_bs-BA','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/bs-BA_details.xml','',''),(56,2,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/sr-RS_details.xml','',''),(57,2,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/vi-VN_details.xml','',''),(58,2,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/id-ID_details.xml','',''),(59,2,0,'Finnish','','pkg_fi-FI','package','',0,'3.8.1.1','','https://update.joomla.org/language/details3/fi-FI_details.xml','',''),(60,2,0,'Swahili','','pkg_sw-KE','package','',0,'3.8.8.1','','https://update.joomla.org/language/details3/sw-KE_details.xml','',''),(61,2,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/srp-ME_details.xml','',''),(62,2,0,'English CA','','pkg_en-CA','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/en-CA_details.xml','',''),(63,2,0,'French CA','','pkg_fr-CA','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/fr-CA_details.xml','',''),(64,2,0,'Welsh','','pkg_cy-GB','package','',0,'3.8.5.1','','https://update.joomla.org/language/details3/cy-GB_details.xml','',''),(65,2,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/si-LK_details.xml','',''),(66,2,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/prs-AF_details.xml','',''),(67,2,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.2','','https://update.joomla.org/language/details3/tk-TM_details.xml','',''),(68,2,0,'Irish','','pkg_ga-IE','package','',0,'3.8.7.1','','https://update.joomla.org/language/details3/ga-IE_details.xml','',''),(69,2,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/dz-BT_details.xml','',''),(70,2,0,'Slovenian','','pkg_sl-SI','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/sl-SI_details.xml','',''),(71,2,0,'Spanish CO','','pkg_es-CO','package','',0,'3.8.6.1','','https://update.joomla.org/language/details3/es-CO_details.xml','',''),(72,2,0,'German CH','','pkg_de-CH','package','',0,'3.8.10.2','','https://update.joomla.org/language/details3/de-CH_details.xml','',''),(73,2,0,'German AT','','pkg_de-AT','package','',0,'3.8.10.2','','https://update.joomla.org/language/details3/de-AT_details.xml','',''),(74,2,0,'German LI','','pkg_de-LI','package','',0,'3.8.10.2','','https://update.joomla.org/language/details3/de-LI_details.xml','',''),(75,2,0,'German LU','','pkg_de-LU','package','',0,'3.8.10.2','','https://update.joomla.org/language/details3/de-LU_details.xml','',''),(76,2,0,'English NZ','','pkg_en-NZ','package','',0,'3.8.10.1','','https://update.joomla.org/language/details3/en-NZ_details.xml','',''),(77,4,0,'RokGallery Extension','','mod_rokgallery','module','',0,'2.42','0802','http://updates.rockettheme.com/joomla/286/21ffe006','',''),(78,4,0,'RokBooster Plugin','','rokbooster','plugin','system',0,'1.1.17','0802','http://updates.rockettheme.com/joomla/287/cb577720','',''),(79,4,0,'RokAjaxSearch Module','','mod_rokajaxsearch','module','',0,'2.0.4','0802','http://updates.rockettheme.com/joomla/290/1d5a0af1','',''),(80,4,0,'RokWeather Module','','mod_rokweather','module','',0,'2.0.4','0802','http://updates.rockettheme.com/joomla/292/a0cbba72','',''),(81,4,0,'RokStock Module','','mod_rokstock','module','',0,'2.0.3','0802','http://updates.rockettheme.com/joomla/295/87c1121c','',''),(82,4,0,'RokMiniEvents3 Module','','mod_rokminievents3','module','',0,'3.0.3','0802','http://updates.rockettheme.com/joomla/297/1686051690','',''),(83,4,0,'RokQuickCart Extension','','com_rokquickcart','component','',1,'2.1.5','0802','http://updates.rockettheme.com/joomla/298/ddfa10eb','',''),(84,4,0,'RokPad Plugin','','rokpad','plugin','editors',0,'2.1.9','0802','http://updates.rockettheme.com/joomla/299/e07875c9','',''),(85,4,0,'RokNavMenu Module','','mod_roknavmenu','module','',0,'2.0.9','0802','http://updates.rockettheme.com/joomla/300/5a9aa468','',''),(86,4,0,'RokBox Plugin','','rokbox','plugin','system',0,'2.0.13','0802','http://updates.rockettheme.com/joomla/301/dfc993d8','',''),(87,4,0,'RokCandy Extension','','rokcandy','plugin','system',0,'2.0.2','0802','http://updates.rockettheme.com/joomla/302/2df8a4e2','',''),(88,4,0,'RokComments Plugin','','rokcomments','plugin','content',0,'2.0.3','0802','http://updates.rockettheme.com/joomla/303/d1fd7b76','',''),(89,4,0,'RokSocialButtons Plugin','','roksocialbuttons','plugin','content',0,'1.5.3','0802','http://updates.rockettheme.com/joomla/381/269989291','','');
/*!40000 ALTER TABLE `qywlj_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_user_keys`
--

DROP TABLE IF EXISTS `qywlj_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_user_keys`
--

LOCK TABLES `qywlj_user_keys` WRITE;
/*!40000 ALTER TABLE `qywlj_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_user_notes`
--

DROP TABLE IF EXISTS `qywlj_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_user_notes`
--

LOCK TABLES `qywlj_user_notes` WRITE;
/*!40000 ALTER TABLE `qywlj_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_user_profiles`
--

DROP TABLE IF EXISTS `qywlj_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_user_profiles`
--

LOCK TABLES `qywlj_user_profiles` WRITE;
/*!40000 ALTER TABLE `qywlj_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `qywlj_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_user_usergroup_map`
--

DROP TABLE IF EXISTS `qywlj_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_user_usergroup_map`
--

LOCK TABLES `qywlj_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `qywlj_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `qywlj_user_usergroup_map` VALUES (553,8),(557,2),(558,2),(559,2),(560,2),(561,2);
/*!40000 ALTER TABLE `qywlj_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_usergroups`
--

DROP TABLE IF EXISTS `qywlj_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_usergroups`
--

LOCK TABLES `qywlj_usergroups` WRITE;
/*!40000 ALTER TABLE `qywlj_usergroups` DISABLE KEYS */;
INSERT INTO `qywlj_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `qywlj_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_users`
--

DROP TABLE IF EXISTS `qywlj_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_users`
--

LOCK TABLES `qywlj_users` WRITE;
/*!40000 ALTER TABLE `qywlj_users` DISABLE KEYS */;
INSERT INTO `qywlj_users` VALUES (553,'Super User','admin','2207558858@qq.com','$2y$10$d7RWbK3HrSa3IH592sKk9ucNcqppmK0nKxhEzRg9an2igrRNLmLvK',0,1,'2018-05-23 02:48:31','2018-07-20 01:21:11','0','','0000-00-00 00:00:00',0,'','',0),(557,'test01','test01','2328228945@qq.com','$2y$10$BJWSsU6iaznpU/ceCyVVluQLj.Wy.w3rlLlzzHKFvt5rUFIzILavi',0,0,'2018-05-29 03:25:45','2018-05-29 06:47:11','','{\"language\":\"en-GB\",\"activate\":0}','0000-00-00 00:00:00',0,'','',0),(558,'user01','user01','2214287850@qq.com','$2y$10$97B4bUuJIowaybx9WHQ9buAJ/6caS853hZtG34tmJYBQ7jQGG4IPG',0,0,'2018-06-16 01:36:24','2018-07-19 09:00:40','','{\"language\":\"zh-CN\",\"admin_style\":\"\",\"admin_language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(559,'user02','user02','1976769850@qq.com','$2y$10$gzfI/iT1wq3mY54BDgQMauTx6aRkAgdkqq0gogxzInkljUiQvb7N6',0,0,'2018-06-16 01:37:20','2018-07-12 01:16:58','','{\"language\":\"zh-CN\",\"admin_style\":\"\",\"admin_language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(560,'mdtest','mdtest','12345678@163.com','$2y$10$RxmYcNOwT9TgGjiWKQOO1eu37U78X81.7wqaE/2IUYVW8ENwt6Yxi',0,0,'2018-07-11 05:42:45','0000-00-00 00:00:00','','{\"language\":\"zh-CN\"}','0000-00-00 00:00:00',0,'','',0),(561,'yhadmin','yhadmin','12345678@123.163.com','$2y$10$PtF9lxY8kX4RP/XHljieAuQjASlEnSA.Z3oHrRbhXLyHe0ILpQISG',0,0,'2018-07-18 01:45:48','2018-07-18 07:11:05','','{\"language\":\"en-GB\"}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `qywlj_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_utf8_conversion`
--

DROP TABLE IF EXISTS `qywlj_utf8_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_utf8_conversion`
--

LOCK TABLES `qywlj_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `qywlj_utf8_conversion` DISABLE KEYS */;
INSERT INTO `qywlj_utf8_conversion` VALUES (2);
/*!40000 ALTER TABLE `qywlj_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qywlj_viewlevels`
--

DROP TABLE IF EXISTS `qywlj_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qywlj_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qywlj_viewlevels`
--

LOCK TABLES `qywlj_viewlevels` WRITE;
/*!40000 ALTER TABLE `qywlj_viewlevels` DISABLE KEYS */;
INSERT INTO `qywlj_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `qywlj_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-20  1:24:13
