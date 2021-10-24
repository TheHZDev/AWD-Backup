-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `catfish_comments`
--

DROP TABLE IF EXISTS `catfish_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` text,
  `uid` int(11) NOT NULL DEFAULT '0',
  `to_uid` int(11) NOT NULL DEFAULT '0',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `content` text NOT NULL,
  `comment_type` smallint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `status` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_comments`
--

LOCK TABLES `catfish_comments` WRITE;
/*!40000 ALTER TABLE `catfish_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `catfish_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_guestbook`
--

DROP TABLE IF EXISTS `catfish_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `msg` text NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_guestbook`
--

LOCK TABLES `catfish_guestbook` WRITE;
/*!40000 ALTER TABLE `catfish_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `catfish_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_links`
--

DROP TABLE IF EXISTS `catfish_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL,
  `link_name` varchar(255) NOT NULL,
  `link_image` varchar(255) DEFAULT NULL,
  `link_target` varchar(25) NOT NULL DEFAULT '_blank',
  `link_description` text NOT NULL,
  `link_location` int(2) NOT NULL DEFAULT '1',
  `link_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_links`
--

LOCK TABLES `catfish_links` WRITE;
/*!40000 ALTER TABLE `catfish_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `catfish_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_nav`
--

DROP TABLE IF EXISTS `catfish_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `target` varchar(25) NOT NULL DEFAULT '_blank',
  `href` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `href` (`href`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_nav`
--

LOCK TABLES `catfish_nav` WRITE;
/*!40000 ALTER TABLE `catfish_nav` DISABLE KEYS */;
INSERT INTO `catfish_nav` VALUES (1,1,0,'首页','_self','/index','',1,0),(2,1,0,'Bugku','_blank','https://ctf.bugku.com/','',1,0);
/*!40000 ALTER TABLE `catfish_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_nav_cat`
--

DROP TABLE IF EXISTS `catfish_nav_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `nav_name` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `remark` text,
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_nav_cat`
--

LOCK TABLES `catfish_nav_cat` WRITE;
/*!40000 ALTER TABLE `catfish_nav_cat` DISABLE KEYS */;
INSERT INTO `catfish_nav_cat` VALUES (1,'导航菜单',1,'');
/*!40000 ALTER TABLE `catfish_nav_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_options`
--

DROP TABLE IF EXISTS `catfish_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_options`
--

LOCK TABLES `catfish_options` WRITE;
/*!40000 ALTER TABLE `catfish_options` DISABLE KEYS */;
INSERT INTO `catfish_options` VALUES (1,'title','Bugku AWD S1赛季收官战',1),(2,'subtitle','S2赛季8月择日开启',1),(3,'keyword','',1),(4,'description','11111',1),(5,'template','default',1),(6,'record','',1),(7,'copyright','s:19:\"Bugku CTF by:Harry.\";',1),(8,'statistics','s:0:\"\";',1),(9,'email','admin@qq.com',0),(10,'filter','',0),(11,'comment','0',0),(12,'slideshowWidth','900',0),(13,'slideshowHeight','235',0),(14,'domain','/',1),(15,'logo','/data/uploads/20210724/ee1c491a995ce4453fea4d37f529844d.png',1),(16,'captcha','1',0),(17,'bulletin','',0),(18,'spare','a:12:{s:7:\"rewrite\";i:0;s:13:\"notAllowLogin\";i:0;s:10:\"closeSlide\";i:0;s:11:\"openMessage\";i:1;s:12:\"closeComment\";i:0;s:4:\"datu\";i:0;s:14:\"everyPageShows\";i:10;s:3:\"ico\";s:59:\"/data/uploads/20210724/081b616226f37c909c9b4a9f7ea1f112.ico\";s:10:\"timeFormat\";s:11:\"Y-m-d H:i:s\";s:6:\"guanbi\";i:0;s:12:\"closeSitemap\";i:0;s:8:\"closeRSS\";i:0;}',0),(19,'write','0',0),(20,'checkwrite','0',0),(21,'pageSettings','a:2:{s:5:\"hunhe\";a:6:{i:1;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:2;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:3;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:4;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:5;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:6;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}}s:5:\"tuwen\";a:3:{i:1;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:2;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}i:3;a:4:{s:6:\"biaoti\";s:0:\"\";s:8:\"shuliang\";s:2:\"10\";s:7:\"fangshi\";s:9:\"post_date\";s:6:\"fenlei\";s:1:\"0\";}}}',1),(22,'cbase','YToyMjp7czo0MDoiL2FwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQ29tbW9uLnBocCI7czozMjoiMDA1M2NkZGI1Mjg0ZGUyZWY3ZDM3MmU1MTg4ODQyNjMiO3M6Mzk6Ii9hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0luZGV4LnBocCI7czozMjoiZDU5NTM0ZWNmNTRjMjE0ZjljYTg2M2Q0YmFlNmRkZGUiO3M6NDE6Ii9hcHBsaWNhdGlvbi9hZG1pbi92aWV3L2luZGV4L2Zvb3Rlci5odG1sIjtzOjMyOiJhMWNmY2RhYWY3ZTNjYjM5YmE1NTkwZjVhMjcyOTM2NCI7czo0MToiL2FwcGxpY2F0aW9uL2FkbWluL3ZpZXcvaW5kZXgvaGVhZGVyLmh0bWwiO3M6MzI6IjA0YTFhOGM1N2RhNjRkNWIxYmZiYjdjMzU3YzJkZjFlIjtzOjQwOiIvYXBwbGljYXRpb24vYWRtaW4vdmlldy9pbmRleC9pbmRleC5odG1sIjtzOjMyOiJlYmUyNTQ5NmYyNDgzMzdmMzk2MzY5NTI3YWZjMmMzMiI7czozMToiL2FwcGxpY2F0aW9uL2NvbW1vbi9QYWNrYWdlLnBocCI7czozMjoiOWZiYWJkNTZjYmIxYmQ2NjNjYjhmZWY1NWJjN2E5NWQiO3M6MzA6Ii9hcHBsaWNhdGlvbi9jb21tb24vUGx1Z2luLnBocCI7czozMjoiYTcyZTIwM2U0NmI3YjQ1OTZmOTcwZjk2ZTJlMGE2OTMiO3M6NDE6Ii9hcHBsaWNhdGlvbi9lbnN1cmUvY29udHJvbGxlci9Db21tb24ucGhwIjtzOjMyOiI0YjVkZmE4NzQ3YzM0ODQ0ZTJjZGRhZWZiOTZmNTYwNCI7czo0MDoiL2FwcGxpY2F0aW9uL2Vuc3VyZS9jb250cm9sbGVyL0luZGV4LnBocCI7czozMjoiOGY1MGUzODJkZjYxYjNkMGI2NzIwMDc5Y2E2YWVmM2QiO3M6NDA6Ii9hcHBsaWNhdGlvbi9pbmRleC9jb250cm9sbGVyL0NvbW1vbi5waHAiO3M6MzI6Ijk1OTJjNWIzMmExOTM2ODBiMmI3ZWI1MTk2ODEyODRhIjtzOjM5OiIvYXBwbGljYXRpb24vaW5kZXgvY29udHJvbGxlci9JbmRleC5waHAiO3M6MzI6IjY2ZDg0NDc1YzI0ZTVlM2I2Mzc0ODBjMjFkNjgwOTY2IjtzOjM5OiIvYXBwbGljYXRpb24vbG9naW4vY29udHJvbGxlci9JbmRleC5waHAiO3M6MzI6ImNmNjQ0YmY5NWFiOTI5OWE2NzM5Yjc3YjQxOTliYjkzIjtzOjQwOiIvYXBwbGljYXRpb24vbG9naW4vdmlldy9pbmRleC9pbmRleC5odG1sIjtzOjMyOiIzNjI3NTA4ODZkMjAwMWRhODk4OGFjYzJjN2MxN2Y2YSI7czo0MzoiL2FwcGxpY2F0aW9uL2xvZ2luL3ZpZXcvaW5kZXgvcmVnaXN0ZXIuaHRtbCI7czozMjoiMzE2OGU5NjNjZTMzZjU0NTYwNGI4YTRmNThjYzk3MzkiO3M6Mzk6Ii9hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvQ29tbW9uLnBocCI7czozMjoiYjFkMmIxNjVhZGFmYTI1NDc5NmViY2UyM2MzZTAzZTIiO3M6Mzg6Ii9hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvSW5kZXgucGhwIjtzOjMyOiI3MGNiOTVjMDU0N2QxNzVjZDA5NjIzYjQ1YzFiN2FmMSI7czo0MDoiL2FwcGxpY2F0aW9uL3VzZXIvdmlldy9pbmRleC9mb290ZXIuaHRtbCI7czozMjoiZTAxNTI0NDRmODZmNmIzYzM2NDk4ZjA1MjU5OGZkMmQiO3M6MjM6Ii9hcHBsaWNhdGlvbi9jb25maWcucGhwIjtzOjMyOiJjOTYwMTYzYmRiMjM3NDVmZjY4N2YzMDIxMWMxY2RkNyI7czoyNzoiL3B1YmxpYy9jb21tb24vanMvZm9vdGVyLmpzIjtzOjMyOiJiZDQxZDhkMTMyZDA4NDE4ZDcyODQ2OGI4M2E1MTYyZiI7czoyNjoiL3B1YmxpYy9jb21tb24vanMvaW5kZXguanMiO3M6MzI6ImQyNjJiZDE2ZGJhNjIyZTFhMjAwMWY1OWI1NjlkMzg3IjtzOjI5OiIvcHVibGljL2NvbW1vbi9qcy9wdXNoUGFnZS5qcyI7czozMjoiYTQ5OTIxMzBlZDI1MjBkNzgzZTQ5ODU5NDBhYzdjMDAiO3M6MzI6Ii9wdWJsaWMvY29tbW9uL2pzL3VzZXIvZm9vdGVyLmpzIjtzOjMyOiI3OTg3NmJkYWJhMTBiMGQ5ZjQwZDllZTI5NzVjMjlhZiI7fQ==',0),(23,'c_random_verification','ad1a61eaf3988667a8732d27079d21d9',0),(24,'p_announcement_announcement','Bugku awd S2赛季将于8月择日开启！',0),(25,'plugins','a:1:{i:0;s:12:\"announcement\";}',0),(26,'c_ensure','a:6:{s:6:\"uptime\";i:0;s:6:\"extime\";i:0;s:7:\"rantime\";i:0;s:7:\"mintime\";i:0;s:6:\"status\";i:0;s:2:\"pw\";s:0:\"\";}',0);
/*!40000 ALTER TABLE `catfish_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_posts`
--

DROP TABLE IF EXISTS `catfish_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0',
  `post_keywords` varchar(150) NOT NULL,
  `post_source` varchar(150) DEFAULT NULL,
  `post_date` datetime DEFAULT '2000-01-01 00:00:00',
  `post_content` longtext,
  `post_title` text,
  `post_excerpt` text,
  `post_status` int(2) DEFAULT '1',
  `comment_status` int(2) DEFAULT '1',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00',
  `post_comment` datetime DEFAULT '2000-01-01 00:00:00',
  `parent_id` bigint(20) unsigned DEFAULT '0',
  `post_type` int(2) DEFAULT '0',
  `comment_count` bigint(20) DEFAULT '0',
  `thumbnail` text,
  `template` text,
  `smeta` text,
  `post_hits` int(11) DEFAULT '0',
  `post_like` int(11) DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `post_modified` (`post_modified`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`),
  KEY `post_hits` (`post_hits`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_posts`
--

LOCK TABLES `catfish_posts` WRITE;
/*!40000 ALTER TABLE `catfish_posts` DISABLE KEYS */;
INSERT INTO `catfish_posts` VALUES (1,1,'',NULL,'2016-10-17 15:34:31','<p>这是一个范例页面。它和文章不同，因为它的页面位置是固定的，主要用于不同于文章页的内容，比如：大多数人会新增一个“关于”页面向访客介绍自己。它可能类似下面这样：</p><blockquote><p>我是一个很有趣的人，我创建了网站和博客。并且，顺便提一下，我的妻子也很好。</p></blockquote><p>……或下面这样：</p><blockquote><p>Bugku awd</p></blockquote><p>作为一个新的bugku用户，您可以前往“页面管理”删除这个页面，并建立属于您的全新内容。祝您使用愉快！</p><p><br/></p>','我的第一个页面','',1,1,'2021-07-24 14:57:58','2000-01-01 00:00:00',0,1,0,'','page.html',NULL,0,0,0,0,1),(5,1,'awd,bugku','','2021-07-24 15:05:20','<p>新赛季将于8月开启！</p><p><img class=\"img-responsive\" src=\"http://42.193.116.184/data/uploads/20210724/16271103606081.jpg\" _src=\"http://42.193.116.184/data/uploads/20210724/16271103606081.jpg\"/></p>','新赛季将于8月开启！','',1,1,'2021-07-24 15:09:50','2000-01-01 00:00:00',0,7,0,'',NULL,NULL,4,0,0,0,1),(2,1,'awd,bugku','bugku','2016-10-17 15:42:11','<p>欢迎使用Bugku awd。这是您的第一篇文章。编辑或删除它，然后开始写作吧！</p>','世界，您好！','欢迎使用bugku awd。这是您的第一篇文章。编辑或删除它，然后开始写作吧！',1,1,'2021-07-24 14:54:57','2000-01-01 00:00:00',0,0,0,'',NULL,NULL,5,1,0,0,0),(3,1,'awd,bugku','bugku','2021-07-24 14:55:25','<p>Bugku AWD S1赛季收官战</p>','Bugku AWD S1赛季收官战','Bugku AWD S1赛季收官战',1,1,'2021-07-24 14:55:25','2000-01-01 00:00:00',0,0,0,'',NULL,NULL,2,0,1,0,1),(4,1,'awd,bugku','bugku','2021-07-24 14:56:45','<div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"color:#cc0000;min-width: 0px;\">比赛通知群：641952034</span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"color:#cc0000;min-width: 0px;\"><br style=\"min-width: 0px;\"/></span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"color:#cc0000;min-width: 0px;\">本场比赛为Bugku Awd S1赛季收官之战，Bugku awd排位赛为每年两个赛季，S2赛季将于8月择日开启！</span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"color:#45b4fe;min-width: 0px;\"><br style=\"min-width: 0px;\"/></span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"color:#45b4fe;min-width: 0px;\">S1赛季将按照段位奖励战队勋章，S1赛季前3名将获得实体奖杯。</span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">比赛以战队为单位报名（需要队长报名）<span style=\"color:#cc0000;min-width: 0px;\">报名需填写1-3个队员的真实ip (不填无法访问到靶机，比赛中可修改ip)</span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">报名消耗战队资金，队员可以把自己的金币捐赠到战队资金，AWD|PVP报名扣除金币将从战队资金扣&nbsp;<a href=\"https://ctf.bugku.com/user/team.html\" style=\"color: rgb(102, 102, 102); min-width: 0px; transition: color 0.2s ease 0s;\">战队资金送门</a></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">比赛共10轮，每轮5分钟，加固时间30分钟（总计80分钟，加固时间内无法互相攻击）</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">每次有效攻击加10分相反被攻击者减去10分，任何web服务不可用每轮扣100分</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"text-decoration:line-through;min-width: 0px;\">比赛无局域网概念，因此可以省略IP扫描步骤，相邻靶机用端口区分（8001-8050）</span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\"><span style=\"font-weight: bolder; min-width: 0px;\"><span style=\"color:#5fb878;min-width: 0px;\">本次赛事采用新的线上awd模式，采用域名模拟局域网（192-168-1-</span><span style=\"color:#cc0000;min-width: 0px;\">X</span><span style=\"color:#5fb878;min-width: 0px;\">.awd.bugku.cn）</span><span style=\"color:#cc0000;min-width: 0px;\">X=1-254</span><span style=\"color:#5fb878;min-width: 0px;\">，所以需要参赛人员扫描存活IP，扫描端口服务进行攻击。</span></span></div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">本次比赛将启用积分+金币奖励！</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">金币奖励：</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">第一名：奖励50战队资金</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">第二名：奖励30战队资金</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">第三名：奖励20战队资金</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">积分规则：</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">每场比赛基础分2000分，赛后根据所剩积分除以100，例：A战队打完比赛后积分为3500分那么赛后所积段位分为35分。</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">倔强青铜 0-100分</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">不屈白银 100-250分</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">荣耀黄金 250-450分</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">华贵铂金 450-700分</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">璀璨钻石 700-1000分</div><div style=\"min-width: 0px; color: rgb(80, 80, 80); font-family: Inter, sans-serif; font-size: 15px; white-space: normal;\">攻防大师 1000分以上（攻防大师段位第一名为最强王者）</div><p><br/></p>','比赛通知！','比赛通知群：641952034本场比赛为Bugku Awd S1赛季收官之战，Bugku awd排位赛为每年两个赛季，S2赛季将于8月择日开启！S1赛季将按照段位奖励战队勋章，S1赛季前3名将获得实体奖杯。比赛以战队为单位报名（需要队长报名）报名需填写1-3个队员的真实ip (不填无法访问到靶机，比赛中可修改ip)报名消耗战队资金，队员可以把自己的金币捐赠到战队资金，AWD|PVP报名扣除金币将从战队资金扣 战队资金送门比赛共10轮，每轮5分钟，加固时间30分钟（总计80分钟，加固时间内无法互相攻击）每次有效攻击加10分相反被攻击者减去10分，任何web服务不可用每轮扣100分比赛无局域网概念，因此可以省略IP扫描步骤，相邻靶机用端口区分（8001-8050）本次赛事采用新的线上awd模式，采用域名模拟局域网（192-168-1-X.awd.bugku.cn）X=1-254，所以需要参赛人员扫描存活IP，扫描端口服务进行攻击。本次比赛将启用积分+金币奖励！金币奖励：第一名：奖励50战队资金第二名：奖励30战队资金第三名：奖励20战队资金积分规则：每场比赛基础分2000分，赛后根据所剩积...',1,1,'2021-07-24 14:56:45','2000-01-01 00:00:00',0,0,0,'',NULL,NULL,2,0,0,0,1);
/*!40000 ALTER TABLE `catfish_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_slide`
--

DROP TABLE IF EXISTS `catfish_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_pic` varchar(255) DEFAULT NULL,
  `slide_url` varchar(255) DEFAULT NULL,
  `slide_des` varchar(255) DEFAULT NULL,
  `slide_status` int(2) NOT NULL DEFAULT '1',
  `listorder` int(10) DEFAULT '0',
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_slide`
--

LOCK TABLES `catfish_slide` WRITE;
/*!40000 ALTER TABLE `catfish_slide` DISABLE KEYS */;
INSERT INTO `catfish_slide` VALUES (1,'','/data/uploads/20210724/6b85a7d4ac12d291f7e6ee0ea358d8a9.png','https://ctf.bugku.com/','',1,0),(2,'','/data/uploads/20210724/fe0872a48dadb035e427ec6c14dc41bc.png','https://ctf.bugku.com/','',1,0);
/*!40000 ALTER TABLE `catfish_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_term_relationships`
--

DROP TABLE IF EXISTS `catfish_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_term_relationships`
--

LOCK TABLES `catfish_term_relationships` WRITE;
/*!40000 ALTER TABLE `catfish_term_relationships` DISABLE KEYS */;
INSERT INTO `catfish_term_relationships` VALUES (6,5,1);
/*!40000 ALTER TABLE `catfish_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_terms`
--

DROP TABLE IF EXISTS `catfish_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `parent_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_terms`
--

LOCK TABLES `catfish_terms` WRITE;
/*!40000 ALTER TABLE `catfish_terms` DISABLE KEYS */;
INSERT INTO `catfish_terms` VALUES (1,'awd','',0),(2,'ctf','',0);
/*!40000 ALTER TABLE `catfish_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_user_favorites`
--

DROP TABLE IF EXISTS `catfish_user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_user_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `title` text,
  `url` text,
  `description` text,
  `object_id` int(11) DEFAULT NULL,
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_user_favorites`
--

LOCK TABLES `catfish_user_favorites` WRITE;
/*!40000 ALTER TABLE `catfish_user_favorites` DISABLE KEYS */;
INSERT INTO `catfish_user_favorites` VALUES (1,1,'世界，您好！','index/Index/article/id/2','欢迎使用Catfish。这是您的第一篇文章。编辑或删除它，然后开始写作吧！',2,'2021-07-24 14:52:44');
/*!40000 ALTER TABLE `catfish_user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catfish_users`
--

DROP TABLE IF EXISTS `catfish_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catfish_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(50) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `avatar` varchar(255) DEFAULT NULL,
  `sex` smallint(1) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `signature` text,
  `last_login_ip` varchar(16) DEFAULT NULL,
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '1',
  `score` int(11) NOT NULL DEFAULT '0',
  `user_type` smallint(1) DEFAULT '7',
  `coin` int(11) NOT NULL DEFAULT '0',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catfish_users`
--

LOCK TABLES `catfish_users` WRITE;
/*!40000 ALTER TABLE `catfish_users` DISABLE KEYS */;
INSERT INTO `catfish_users` VALUES (1,'admin','0192023a7bbd73250516f069df18b500','admin','admin@qq.com','',NULL,0,NULL,NULL,'124.132.95.131','2021-07-25 16:53:46','2021-07-24 14:47:48','',1,0,1,0,'');
/*!40000 ALTER TABLE `catfish_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-01 12:09:04
