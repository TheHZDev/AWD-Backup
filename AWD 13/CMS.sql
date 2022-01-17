-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.47-0ubuntu0.14.04.1 - (Ubuntu)
-- 服务器操作系统:                      debian-linux-gnu
-- HeidiSQL 版本:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 cms 的数据库结构
CREATE DATABASE IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cms`;

-- 导出  表 cms.emlog_attachment 结构
CREATE TABLE IF NOT EXISTS `emlog_attachment` (
  `aid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `blogid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `width` smallint(5) NOT NULL DEFAULT '0',
  `height` smallint(5) NOT NULL DEFAULT '0',
  `mimetype` varchar(40) NOT NULL DEFAULT '',
  `thumfor` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `blogid` (`blogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_attachment 的数据：0 rows
DELETE FROM `emlog_attachment`;
/*!40000 ALTER TABLE `emlog_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlog_attachment` ENABLE KEYS */;

-- 导出  表 cms.emlog_blog 结构
CREATE TABLE IF NOT EXISTS `emlog_blog` (
  `gid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `date` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `excerpt` longtext NOT NULL,
  `alias` varchar(200) NOT NULL DEFAULT '',
  `author` int(10) NOT NULL DEFAULT '1',
  `sortid` tinyint(3) NOT NULL DEFAULT '-1',
  `type` varchar(20) NOT NULL DEFAULT 'blog',
  `views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `top` enum('n','y') NOT NULL DEFAULT 'n',
  `hide` enum('n','y') NOT NULL DEFAULT 'n',
  `checked` enum('n','y') NOT NULL DEFAULT 'y',
  `allow_remark` enum('n','y') NOT NULL DEFAULT 'y',
  `password` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`),
  KEY `date` (`date`),
  KEY `author` (`author`),
  KEY `sortid` (`sortid`),
  KEY `type` (`type`),
  KEY `views` (`views`),
  KEY `comnum` (`comnum`),
  KEY `hide` (`hide`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_blog 的数据：3 rows
DELETE FROM `emlog_blog`;
/*!40000 ALTER TABLE `emlog_blog` DISABLE KEYS */;
INSERT INTO `emlog_blog` (`gid`, `title`, `date`, `content`, `excerpt`, `alias`, `author`, `sortid`, `type`, `views`, `comnum`, `attnum`, `top`, `hide`, `checked`, `allow_remark`, `password`) VALUES
	(1, '五一快乐！', 1536587825, '<a target="_blank" href="https://baike.baidu.com/item/%E5%9B%BD%E9%99%85%E5%8A%B3%E5%8A%A8%E8%8A%82/519420" data-lemmaid="519420" style="color:#136EC2;text-decoration-line:none;font-family:arial, 宋体, sans-serif;font-size:14px;text-indent:28px;white-space:normal;background-color:#FFFFFF;">国际劳动节</a><span style="color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;text-indent:28px;white-space:normal;background-color:#FFFFFF;">又称“五一国际劳动节”、“</span><a target="_blank" href="https://baike.baidu.com/item/%E5%9B%BD%E9%99%85%E7%A4%BA%E5%A8%81%E6%B8%B8%E8%A1%8C%E6%97%A5/842618" data-lemmaid="842618" style="color:#136EC2;text-decoration-line:none;font-family:arial, 宋体, sans-serif;font-size:14px;text-indent:28px;white-space:normal;background-color:#FFFFFF;">国际示威游行日</a><span style="color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;text-indent:28px;white-space:normal;background-color:#FFFFFF;">”（International Workers\' Day或者May Day），是世界上80多个国家的全国性节日。定在每年的五月一日。它是全世界劳动人民共同拥有的节日。</span>', '', '', 1, -1, 'blog', 0, 0, 0, 'n', 'n', 'y', 'y', ''),
	(2, '美句摘抄', 1619756451, '快乐很简单,就是春天的鲜花,夏天的绿荫,秋天的野果,冬天的漫天飞雪。', '', '', 1, -1, 'blog', 0, 0, 0, 'n', 'n', 'y', 'y', ''),
	(3, '2021 hvv记录', 1619756554, '<p>\r\n	第一次hw好紧张。\r\n</p>', '', '', 1, -1, 'blog', 0, 0, 0, 'n', 'n', 'y', 'y', '');
/*!40000 ALTER TABLE `emlog_blog` ENABLE KEYS */;

-- 导出  表 cms.emlog_comment 结构
CREATE TABLE IF NOT EXISTS `emlog_comment` (
  `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `gid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` bigint(20) NOT NULL,
  `poster` varchar(20) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `mail` varchar(60) NOT NULL DEFAULT '',
  `url` varchar(75) NOT NULL DEFAULT '',
  `ip` varchar(128) NOT NULL DEFAULT '',
  `hide` enum('n','y') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`cid`),
  KEY `gid` (`gid`),
  KEY `date` (`date`),
  KEY `hide` (`hide`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_comment 的数据：0 rows
DELETE FROM `emlog_comment`;
/*!40000 ALTER TABLE `emlog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlog_comment` ENABLE KEYS */;

-- 导出  表 cms.emlog_kl_album 结构
CREATE TABLE IF NOT EXISTS `emlog_kl_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `truename` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` text,
  `album` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL DEFAULT '0',
  `w` smallint(5) NOT NULL DEFAULT '0',
  `h` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_kl_album 的数据：0 rows
DELETE FROM `emlog_kl_album`;
/*!40000 ALTER TABLE `emlog_kl_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlog_kl_album` ENABLE KEYS */;

-- 导出  表 cms.emlog_link 结构
CREATE TABLE IF NOT EXISTS `emlog_link` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) NOT NULL DEFAULT '',
  `siteurl` varchar(75) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `hide` enum('n','y') NOT NULL DEFAULT 'n',
  `taxis` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_link 的数据：1 rows
DELETE FROM `emlog_link`;
/*!40000 ALTER TABLE `emlog_link` DISABLE KEYS */;
INSERT INTO `emlog_link` (`id`, `sitename`, `siteurl`, `description`, `hide`, `taxis`) VALUES
	(1, 'emlog', 'http://www.emlog.net', 'emlog官方主页', 'n', 0);
/*!40000 ALTER TABLE `emlog_link` ENABLE KEYS */;

-- 导出  表 cms.emlog_navi 结构
CREATE TABLE IF NOT EXISTS `emlog_navi` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `naviname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(75) NOT NULL DEFAULT '',
  `newtab` enum('n','y') NOT NULL DEFAULT 'n',
  `hide` enum('n','y') NOT NULL DEFAULT 'n',
  `taxis` smallint(4) unsigned NOT NULL DEFAULT '0',
  `isdefault` enum('n','y') NOT NULL DEFAULT 'n',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_navi 的数据：5 rows
DELETE FROM `emlog_navi`;
/*!40000 ALTER TABLE `emlog_navi` DISABLE KEYS */;
INSERT INTO `emlog_navi` (`id`, `naviname`, `url`, `newtab`, `hide`, `taxis`, `isdefault`, `type`, `type_id`) VALUES
	(1, '首页', '', 'n', 'n', 1, 'y', 1, 0),
	(2, '微语', 't', 'n', 'n', 2, 'y', 2, 0),
	(3, '登录', 'admin', 'n', 'n', 3, 'y', 3, 0),
	(4, '相册', '?plugin=kl_album', 'n', 'n', 2, 'y', 2, 0),
	(5, '相册', '?plugin=kl_album', 'n', 'n', 4, 'y', 0, 0);
/*!40000 ALTER TABLE `emlog_navi` ENABLE KEYS */;

-- 导出  表 cms.emlog_options 结构
CREATE TABLE IF NOT EXISTS `emlog_options` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_options 的数据：58 rows
DELETE FROM `emlog_options`;
/*!40000 ALTER TABLE `emlog_options` DISABLE KEYS */;
INSERT INTO `emlog_options` (`option_id`, `option_name`, `option_value`) VALUES
	(1, 'blogname', '点滴记忆'),
	(2, 'bloginfo', '个人博客'),
	(3, 'site_title', ''),
	(4, 'site_description', ''),
	(5, 'site_key', 'emlog'),
	(6, 'log_title_style', '0'),
	(7, 'blogurl', ''),
	(8, 'icp', ''),
	(9, 'footer_info', ''),
	(10, 'admin_perpage_num', '15'),
	(11, 'rss_output_num', '10'),
	(12, 'rss_output_fulltext', 'y'),
	(13, 'index_lognum', '10'),
	(14, 'index_comnum', '10'),
	(15, 'index_twnum', '10'),
	(16, 'index_newtwnum', '5'),
	(17, 'index_newlognum', '5'),
	(18, 'index_randlognum', '5'),
	(19, 'index_hotlognum', '5'),
	(20, 'comment_subnum', '20'),
	(21, 'nonce_templet', 'default'),
	(22, 'admin_style', 'default'),
	(23, 'tpl_sidenum', '1'),
	(24, 'comment_code', 'n'),
	(25, 'comment_needchinese', 'y'),
	(26, 'comment_interval', '15'),
	(27, 'isgravatar', 'y'),
	(28, 'isthumbnail', 'y'),
	(29, 'comment_paging', 'y'),
	(30, 'comment_pnum', '15'),
	(31, 'comment_order', 'newer'),
	(32, 'login_code', 'n'),
	(33, 'reply_code', 'n'),
	(34, 'iscomment', 'y'),
	(35, 'ischkcomment', 'n'),
	(36, 'ischkreply', 'n'),
	(37, 'isurlrewrite', '0'),
	(38, 'isalias', 'n'),
	(39, 'isalias_html', 'n'),
	(40, 'isgzipenable', 'n'),
	(41, 'isxmlrpcenable', 'n'),
	(42, 'ismobile', 'y'),
	(43, 'isexcerpt', 'n'),
	(44, 'excerpt_subnum', '300'),
	(45, 'istwitter', 'y'),
	(46, 'istreply', 'n'),
	(47, 'topimg', 'content/templates/default/images/top/default.jpg'),
	(48, 'custom_topimgs', 'a:0:{}'),
	(49, 'timezone', '8'),
	(50, 'active_plugins', 'a:1:{i:0;s:21:"kl_album/kl_album.php";}'),
	(51, 'widget_title', 'a:13:{s:7:"blogger";s:12:"个人资料";s:8:"calendar";s:6:"日历";s:7:"twitter";s:12:"最新微语";s:3:"tag";s:6:"标签";s:4:"sort";s:6:"分类";s:7:"archive";s:6:"存档";s:7:"newcomm";s:12:"最新评论";s:6:"newlog";s:12:"最新文章";s:10:"random_log";s:12:"随机文章";s:6:"hotlog";s:12:"热门文章";s:4:"link";s:6:"链接";s:6:"search";s:6:"搜索";s:11:"custom_text";s:15:"自定义组件";}'),
	(52, 'custom_widget', 'a:0:{}'),
	(53, 'widgets1', 'a:5:{i:0;s:8:"calendar";i:1;s:7:"archive";i:2;s:7:"newcomm";i:3;s:4:"link";i:4;s:6:"search";}'),
	(54, 'widgets2', ''),
	(55, 'widgets3', ''),
	(56, 'widgets4', ''),
	(57, 'kl_album_config', 'a:0:{}'),
	(58, 'kl_album_info', 'a:1:{i:0;a:5:{s:4:"name";s:4:"flag";s:11:"description";s:10:"2021-04-30";s:8:"restrict";s:6:"public";s:7:"addtime";i:1619756369;s:3:"pwd";s:0:"";}}');
/*!40000 ALTER TABLE `emlog_options` ENABLE KEYS */;

-- 导出  表 cms.emlog_reply 结构
CREATE TABLE IF NOT EXISTS `emlog_reply` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hide` enum('n','y') NOT NULL DEFAULT 'n',
  `ip` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gid` (`tid`),
  KEY `hide` (`hide`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_reply 的数据：0 rows
DELETE FROM `emlog_reply`;
/*!40000 ALTER TABLE `emlog_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlog_reply` ENABLE KEYS */;

-- 导出  表 cms.emlog_sort 结构
CREATE TABLE IF NOT EXISTS `emlog_sort` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sortname` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(200) NOT NULL DEFAULT '',
  `taxis` smallint(4) unsigned NOT NULL DEFAULT '0',
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_sort 的数据：0 rows
DELETE FROM `emlog_sort`;
/*!40000 ALTER TABLE `emlog_sort` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlog_sort` ENABLE KEYS */;

-- 导出  表 cms.emlog_tag 结构
CREATE TABLE IF NOT EXISTS `emlog_tag` (
  `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` varchar(60) NOT NULL DEFAULT '',
  `gid` text NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `tagname` (`tagname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_tag 的数据：0 rows
DELETE FROM `emlog_tag`;
/*!40000 ALTER TABLE `emlog_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `emlog_tag` ENABLE KEYS */;

-- 导出  表 cms.emlog_twitter 结构
CREATE TABLE IF NOT EXISTS `emlog_twitter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `author` int(10) NOT NULL DEFAULT '1',
  `date` bigint(20) NOT NULL,
  `replynum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_twitter 的数据：1 rows
DELETE FROM `emlog_twitter`;
/*!40000 ALTER TABLE `emlog_twitter` DISABLE KEYS */;
INSERT INTO `emlog_twitter` (`id`, `content`, `img`, `author`, `date`, `replynum`) VALUES
	(1, '使用微语记录您身边的新鲜事', '', 1, 1536587825, 0);
/*!40000 ALTER TABLE `emlog_twitter` ENABLE KEYS */;

-- 导出  表 cms.emlog_user 结构
CREATE TABLE IF NOT EXISTS `emlog_user` (
  `uid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `role` varchar(60) NOT NULL DEFAULT '',
  `ischeck` enum('n','y') NOT NULL DEFAULT 'n',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.emlog_user 的数据：1 rows
DELETE FROM `emlog_user`;
/*!40000 ALTER TABLE `emlog_user` DISABLE KEYS */;
INSERT INTO `emlog_user` (`uid`, `username`, `password`, `nickname`, `role`, `ischeck`, `photo`, `email`, `description`) VALUES
	(1, 'admin', '$P$BWtki1REF8Bqpx5u0/756xdthhWVs2.', '', 'admin', 'n', '', '', '');
/*!40000 ALTER TABLE `emlog_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
