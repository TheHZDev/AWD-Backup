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

-- 导出  表 cms.my_admin 结构
CREATE TABLE IF NOT EXISTS `my_admin` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `username` varchar(20) NOT NULL COMMENT '//用户名',
  `password` char(40) NOT NULL COMMENT '//密码',
  `count` mediumint(8) unsigned NOT NULL COMMENT '//登录次数',
  `login_time` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_admin 的数据：1 rows
DELETE FROM `my_admin`;
/*!40000 ALTER TABLE `my_admin` DISABLE KEYS */;
INSERT INTO `my_admin` (`id`, `username`, `password`, `count`, `login_time`) VALUES
	(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 14, '2021-06-11 18:18:55');
/*!40000 ALTER TABLE `my_admin` ENABLE KEYS */;

-- 导出  表 cms.my_article 结构
CREATE TABLE IF NOT EXISTS `my_article` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `title` varchar(200) NOT NULL COMMENT '//标题',
  `color` varchar(20) DEFAULT NULL COMMENT '//标题颜色',
  `cid` smallint(5) NOT NULL DEFAULT '0' COMMENT '//所属分类',
  `attr` varchar(100) DEFAULT NULL COMMENT '//自定义属性',
  `tag` varchar(200) DEFAULT NULL COMMENT '//TAG标签',
  `thumb` varchar(200) DEFAULT NULL COMMENT '//缩略图',
  `html` varchar(100) DEFAULT NULL COMMENT '//生成的静态htmlURL',
  `ishtml` tinyint(1) unsigned DEFAULT '0' COMMENT '//是否生成静态',
  `author` varchar(100) DEFAULT NULL COMMENT '//作者',
  `source` varchar(100) DEFAULT NULL COMMENT '//来源',
  `info` varchar(250) DEFAULT NULL COMMENT '//摘要',
  `content` text NOT NULL,
  `time` datetime NOT NULL COMMENT '//添加时间',
  `updatetime` datetime DEFAULT NULL COMMENT '//更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2451 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_article 的数据：5 rows
DELETE FROM `my_article`;
/*!40000 ALTER TABLE `my_article` DISABLE KEYS */;
INSERT INTO `my_article` (`id`, `title`, `color`, `cid`, `attr`, `tag`, `thumb`, `html`, `ishtml`, `author`, `source`, `info`, `content`, `time`, `updatetime`) VALUES
	(2446, '测试标题', '#000000', 85, '无', '11', '', 'ceshi1/2446.html', 1, 'Admin', '本站', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', '<p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。<br /></p>', '2018-08-29 21:20:35', '2018-08-29 21:20:35'),
	(2447, '测试标题1', '#FF0000', 85, '加粗', '11', '', 'ceshi1/2447.html', 1, 'Admin', '本站', '11', '<p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。。<br /></p>', '2018-08-29 21:21:12', '2018-08-29 21:21:12'),
	(2448, '测试标题3', '#000000', 86, '无', '11', '', 'ceshi2/2448.html', 1, 'Admin', '本站', '22222', '<p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</p><p><br /></p>', '2018-08-29 21:21:43', '2018-08-29 21:21:43'),
	(2449, '测试标题4', '#0000FF', 85, '无', '11', '', 'ceshi1/2449.html', 1, 'Admin', '本站', '222', '<p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p>', '2018-08-29 21:22:15', '2018-08-29 21:22:15'),
	(2450, '测试标题5', '#000000', 86, '无', '11', '', 'ceshi2/2450.html', 1, 'Admin', '本站', 'www11', '<p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。</p><p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容。<br /></p>', '2018-08-29 21:22:39', '2018-08-29 21:22:39');
/*!40000 ALTER TABLE `my_article` ENABLE KEYS */;

-- 导出  表 cms.my_dan 结构
CREATE TABLE IF NOT EXISTS `my_dan` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `title` varchar(200) NOT NULL COMMENT '//标题',
  `dan_name` varchar(200) NOT NULL COMMENT '//单页名称',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//是否显示在首页',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '//是否静态',
  `filename` varchar(100) NOT NULL COMMENT '//文件名',
  `keywords` varchar(100) NOT NULL COMMENT '//关键词',
  `description` varchar(200) NOT NULL COMMENT '//描述',
  `content` text NOT NULL COMMENT '//主体',
  `sort` smallint(5) NOT NULL COMMENT '//排序',
  `time` datetime NOT NULL COMMENT '//添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_dan 的数据：0 rows
DELETE FROM `my_dan`;
/*!40000 ALTER TABLE `my_dan` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_dan` ENABLE KEYS */;

-- 导出  表 cms.my_link 结构
CREATE TABLE IF NOT EXISTS `my_link` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `linkname` varchar(20) NOT NULL COMMENT '//链接名称',
  `linkurl` varchar(200) NOT NULL COMMENT '//链接地址',
  `sort` smallint(5) unsigned DEFAULT NULL COMMENT '//排序',
  `time` datetime DEFAULT NULL COMMENT '//添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_link 的数据：2 rows
DELETE FROM `my_link`;
/*!40000 ALTER TABLE `my_link` DISABLE KEYS */;
INSERT INTO `my_link` (`id`, `linkname`, `linkurl`, `sort`, `time`) VALUES
	(6, '百度', 'http://www.baidu.com', 6, '2018-08-12 21:39:01'),
	(8, 'bugku', 'http://www.bugku.com/', 8, '2018-08-29 21:50:11');
/*!40000 ALTER TABLE `my_link` ENABLE KEYS */;

-- 导出  表 cms.my_nav 结构
CREATE TABLE IF NOT EXISTS `my_nav` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `nav_name` varchar(20) NOT NULL COMMENT '//中文名字',
  `nav_ename` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '//分类标题',
  `keyword` varchar(100) NOT NULL COMMENT '//关键词',
  `info` varchar(200) DEFAULT NULL COMMENT '//描述',
  `sort` smallint(5) unsigned NOT NULL COMMENT '//排序',
  `time` datetime DEFAULT NULL COMMENT '//添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_nav 的数据：2 rows
DELETE FROM `my_nav`;
/*!40000 ALTER TABLE `my_nav` DISABLE KEYS */;
INSERT INTO `my_nav` (`id`, `nav_name`, `nav_ename`, `title`, `keyword`, `info`, `sort`, `time`) VALUES
	(85, '测试分类1', 'ceshi1', '测试分类1', '测试分类1', '测试分类1', 85, '2018-08-29 21:19:31'),
	(86, '测试分类2', 'ceshi2', '测试分类2', '测试分类2', '测试分类2', 86, '2018-08-29 21:19:50');
/*!40000 ALTER TABLE `my_nav` ENABLE KEYS */;

-- 导出  表 cms.my_online 结构
CREATE TABLE IF NOT EXISTS `my_online` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//id',
  `ip` varchar(100) DEFAULT NULL COMMENT '//IP',
  `lailu` text COMMENT '//来路URL',
  `browser` text COMMENT '//浏览器信息',
  `time` datetime DEFAULT NULL COMMENT '//时间',
  `dates` date DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13874 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_online 的数据：15 rows
DELETE FROM `my_online`;
/*!40000 ALTER TABLE `my_online` DISABLE KEYS */;
INSERT INTO `my_online` (`id`, `ip`, `lailu`, `browser`, `time`, `dates`) VALUES
	(13859, '127.0.0.1', 'http://localhost/myadmin/?a=admin', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-13 22:26:57', '2018-08-13'),
	(13860, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-14 21:25:03', '2018-08-14'),
	(13861, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-15 21:44:30', '2018-08-15'),
	(13862, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-16 21:28:29', '2018-08-16'),
	(13863, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-17 22:10:00', '2018-08-17'),
	(13864, '::1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '2018-08-17 22:39:56', '2018-08-17'),
	(13865, '127.0.0.1', 'http://localhost/index.html', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-18 00:00:08', '2018-08-18'),
	(13866, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-19 09:40:35', '2018-08-19'),
	(13867, '::1', 'http://localhost/myadmin/?a=admin', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '2018-08-24 22:02:18', '2018-08-24'),
	(13868, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-24 22:07:34', '2018-08-24'),
	(13869, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-25 22:24:45', '2018-08-25'),
	(13870, '127.0.0.1', 'http://localhost/myadmin/?a=admin', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-26 00:01:25', '2018-08-26'),
	(13871, '::1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '2018-08-26 10:22:53', '2018-08-26'),
	(13872, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-28 21:00:03', '2018-08-28'),
	(13873, '127.0.0.1', '地址栏直接输入', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0', '2018-08-29 21:14:41', '2018-08-29');
/*!40000 ALTER TABLE `my_online` ENABLE KEYS */;

-- 导出  表 cms.my_system 结构
CREATE TABLE IF NOT EXISTS `my_system` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '//ID',
  `title` varchar(200) DEFAULT NULL COMMENT '//网站标题',
  `url` varchar(200) DEFAULT NULL COMMENT '//网站域名',
  `thumb` varchar(200) NOT NULL COMMENT '//logo',
  `keywords` varchar(200) DEFAULT NULL COMMENT '//关键词',
  `description` varchar(300) DEFAULT NULL COMMENT '//网站描述',
  `webname` varchar(200) DEFAULT NULL COMMENT '网站名称',
  `page_size` varchar(20) NOT NULL COMMENT '//后台分页',
  `page_size_index` varchar(20) NOT NULL COMMENT '//前台分页',
  `footer` varchar(1000) DEFAULT NULL COMMENT '//底部信息',
  `index_main` text NOT NULL COMMENT '//首页内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.my_system 的数据：1 rows
DELETE FROM `my_system`;
/*!40000 ALTER TABLE `my_system` DISABLE KEYS */;
INSERT INTO `my_system` (`id`, `title`, `url`, `thumb`, `keywords`, `description`, `webname`, `page_size`, `page_size_index`, `footer`, `index_main`) VALUES
	(1, 'Bugku S1 AWD排位赛-19', 'http://www.abc.net', '../view/index/images/logo.png', 'cms,cms建站系统', 'Bugku S1 AWD排位赛-19', 'Bugku S1 AWD排位赛-19', '20', '20', 'Copyright ©2021 bugku.NET. All Rights Reserved', '<p>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容<span style=\\"color:#FF0000;\\">测试内容测试内容</span>测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试。</p><p>内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容<strong>测试内容测试内容测试内</strong>容测试内容测试内容<span style=\\"color:#3333FF;\\"><strong>测试内容测试内容测</strong></span>试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容</p><p>内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容<br /></p>');
/*!40000 ALTER TABLE `my_system` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
