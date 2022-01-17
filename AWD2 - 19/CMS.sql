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

-- 导出  表 cms.lmx_ad 结构
CREATE TABLE IF NOT EXISTS `lmx_ad` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `http` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `width` mediumint(5) unsigned NOT NULL,
  `height` mediumint(5) unsigned NOT NULL,
  `exstr` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_ad 的数据：0 rows
DELETE FROM `lmx_ad`;
/*!40000 ALTER TABLE `lmx_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_ad` ENABLE KEYS */;

-- 导出  表 cms.lmx_book 结构
CREATE TABLE IF NOT EXISTS `lmx_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `mail` varchar(255) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_book 的数据：4 rows
DELETE FROM `lmx_book`;
/*!40000 ALTER TABLE `lmx_book` DISABLE KEYS */;
INSERT INTO `lmx_book` (`id`, `name`, `ip`, `content`, `mail`, `tel`, `time`, `uid`, `ischeck`) VALUES
	(9, '诗圣杜甫阿斯蒂芬', '127.0.0.1', '爱的色放', '诗圣杜甫阿斯蒂芬', '123123', 1409151994, 0, 1),
	(6, '测试姓名', '127.0.0.1', '测试留言内容', '111111@16.com', '123456789', 1409149063, 0, 0),
	(7, '测试姓名', '127.0.0.1', '测试留言内容', '123123@126.com', '213123', 1409149077, 0, 1),
	(8, 'admin', '', '测试管理员回复', '', '', 1409149097, 7, 0);
/*!40000 ALTER TABLE `lmx_book` ENABLE KEYS */;

-- 导出  表 cms.lmx_cj 结构
CREATE TABLE IF NOT EXISTS `lmx_cj` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mid` mediumint(5) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_cj 的数据：0 rows
DELETE FROM `lmx_cj`;
/*!40000 ALTER TABLE `lmx_cj` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_cj` ENABLE KEYS */;

-- 导出  表 cms.lmx_cj_data 结构
CREATE TABLE IF NOT EXISTS `lmx_cj_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `uid` mediumint(5) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `is_in` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`),
  KEY `uid` (`uid`),
  KEY `is_in` (`is_in`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_cj_data 的数据：0 rows
DELETE FROM `lmx_cj_data`;
/*!40000 ALTER TABLE `lmx_cj_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_cj_data` ENABLE KEYS */;

-- 导出  表 cms.lmx_cj_list 结构
CREATE TABLE IF NOT EXISTS `lmx_cj_list` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `array` text NOT NULL,
  `url_str` text NOT NULL,
  `classid` mediumint(5) unsigned NOT NULL,
  `lcontent` varchar(255) NOT NULL,
  `is_fenci_tags` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `time_jg` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `is_info_page` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info_page_regular` text NOT NULL,
  `content_url_box` text NOT NULL,
  `content_url_regular` text NOT NULL,
  `ztid` varchar(255) NOT NULL,
  `tagsname` varchar(255) NOT NULL,
  `str_y_replace` varchar(255) NOT NULL,
  `str_n_replace` varchar(255) NOT NULL,
  `str_remove` text NOT NULL,
  `remove_html` varchar(255) NOT NULL,
  `list_dy_url` text NOT NULL,
  `list_url_tem` varchar(255) NOT NULL,
  `pre_page` varchar(255) NOT NULL,
  `fix_page` varchar(255) NOT NULL,
  `start_page` int(10) unsigned NOT NULL DEFAULT '0',
  `end_page` int(10) unsigned NOT NULL DEFAULT '0',
  `jg_page` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `desc_page` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remove_page_fix` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`),
  KEY `rid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_cj_list 的数据：0 rows
DELETE FROM `lmx_cj_list`;
/*!40000 ALTER TABLE `lmx_cj_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_cj_list` ENABLE KEYS */;

-- 导出  表 cms.lmx_cj_url 结构
CREATE TABLE IF NOT EXISTS `lmx_cj_url` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `urlmd5` char(32) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `lid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `urlmd5` (`urlmd5`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_cj_url 的数据：0 rows
DELETE FROM `lmx_cj_url`;
/*!40000 ALTER TABLE `lmx_cj_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_cj_url` ENABLE KEYS */;

-- 导出  表 cms.lmx_column 结构
CREATE TABLE IF NOT EXISTS `lmx_column` (
  `classid` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `classname` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `mid` mediumint(5) unsigned NOT NULL,
  `classtype` tinyint(1) NOT NULL DEFAULT '0',
  `classpath` varchar(100) NOT NULL,
  `classurl` varchar(255) NOT NULL,
  `listtem` varchar(50) NOT NULL,
  `contem` varchar(50) NOT NULL,
  `searchtem` varchar(50) NOT NULL,
  `singletem` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `images` varchar(255) NOT NULL,
  `pagenum` mediumint(5) unsigned NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0',
  `islist` tinyint(1) unsigned NOT NULL COMMENT '是否为列表分页',
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`classid`),
  KEY `uid` (`uid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_column 的数据：12 rows
DELETE FROM `lmx_column`;
/*!40000 ALTER TABLE `lmx_column` DISABLE KEYS */;
INSERT INTO `lmx_column` (`classid`, `uid`, `classname`, `title`, `mid`, `classtype`, `classpath`, `classurl`, `listtem`, `contem`, `searchtem`, `singletem`, `description`, `keywords`, `sort`, `images`, `pagenum`, `display`, `islist`, `domain`) VALUES
	(1, 0, '关于我们', '关于我们', 0, 1, 'about.html', '', '', '', '', 'about', '关于我们', '关于我们', 9, '', 0, 0, 0, ''),
	(11, 5, '产品1', '产品1', 1, 0, 'product/chanpin1', '', 'product', 'product', 'index', '', '产品1', '产品1', 0, '', 9, 0, 1, ''),
	(3, 1, '主营范围', '主营范围', 0, 1, 'zhuyingfanwei.html', '', '', '', '', 'about', '主营范围', '主营范围', 0, '', 0, 0, 0, ''),
	(4, 1, '联系我们', '联系我们', 0, 1, 'contact.html', '', '', '', '', 'about', '联系我们', '联系我们', 0, '', 0, 0, 0, ''),
	(5, 0, '产品中心', '产品中心', 1, 0, 'product', '', 'product', 'product', 'index', '', '产品中心', '产品中心', 8, '', 9, 0, 1, ''),
	(6, 0, '新闻动态', '新闻动态', 2, 0, 'news', '', 'news', 'news', 'index', '', '新闻动态', '新闻动态', 7, '', 10, 0, 1, ''),
	(7, 6, '行业新闻', '行业新闻', 2, 0, 'news/xingyexinwen', '', 'news', 'news', 'index', '', '行业新闻', '行业新闻', 0, '', 10, 0, 1, ''),
	(8, 6, '公司新闻', '公司新闻', 2, 0, 'news/gongsixinwen', '', 'news', 'news', 'index', '', '公司新闻', '公司新闻', 0, '', 10, 0, 1, ''),
	(12, 5, '产品2', '产品2', 1, 0, 'product/chanpin2', '', 'product', 'product', 'index', '', '产品2', '产品2', 0, '', 9, 0, 1, ''),
	(13, 5, '产品3', '产品3', 1, 0, 'product/chanpin3', '', 'product', 'product', 'index', '', '产品3', '产品3', 0, '', 9, 0, 1, ''),
	(14, 5, '产品4', '产品4', 1, 0, 'product/chanpin4', '', 'product', 'product', 'index', '', '产品4', '产品4', 0, '', 9, 0, 1, ''),
	(15, 1, '留言反馈', '', 0, 2, '', '/index.php?m=Book&a=index', '', '', '', '', '', '', 0, '', 0, 0, 0, '');
/*!40000 ALTER TABLE `lmx_column` ENABLE KEYS */;

-- 导出  表 cms.lmx_dyfield 结构
CREATE TABLE IF NOT EXISTS `lmx_dyfield` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldtype` varchar(255) NOT NULL,
  `fieldname` varchar(255) NOT NULL,
  `fieldtitle` varchar(255) NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fieldname` (`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_dyfield 的数据：0 rows
DELETE FROM `lmx_dyfield`;
/*!40000 ALTER TABLE `lmx_dyfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_dyfield` ENABLE KEYS */;

-- 导出  表 cms.lmx_dyform 结构
CREATE TABLE IF NOT EXISTS `lmx_dyform` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formname` varchar(255) NOT NULL,
  `must` varchar(255) NOT NULL,
  `fieldid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_dyform 的数据：0 rows
DELETE FROM `lmx_dyform`;
/*!40000 ALTER TABLE `lmx_dyform` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_dyform` ENABLE KEYS */;

-- 导出  表 cms.lmx_dyformcon 结构
CREATE TABLE IF NOT EXISTS `lmx_dyformcon` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_dyformcon 的数据：0 rows
DELETE FROM `lmx_dyformcon`;
/*!40000 ALTER TABLE `lmx_dyformcon` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_dyformcon` ENABLE KEYS */;

-- 导出  表 cms.lmx_field 结构
CREATE TABLE IF NOT EXISTS `lmx_field` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) unsigned NOT NULL,
  `fname` varchar(20) NOT NULL,
  `ftitle` varchar(100) NOT NULL,
  `ftype` varchar(50) NOT NULL,
  `ismust` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `defaults` text NOT NULL,
  `vice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_field 的数据：4 rows
DELETE FROM `lmx_field`;
/*!40000 ALTER TABLE `lmx_field` DISABLE KEYS */;
INSERT INTO `lmx_field` (`fid`, `mid`, `fname`, `ftitle`, `ftype`, `ismust`, `sort`, `defaults`, `vice`) VALUES
	(1, 1, 'content', '正文', 'editor', 0, 0, '', 1),
	(2, 2, 'content', '正文', 'editor', 0, 0, '', 1),
	(3, 1, 'pic', '产品图片', 'image', 0, 2, '', 0),
	(4, 1, 'duotp', '产品图片集', 'moreimage', 0, 1, '', 0);
/*!40000 ALTER TABLE `lmx_field` ENABLE KEYS */;

-- 导出  表 cms.lmx_file 结构
CREATE TABLE IF NOT EXISTS `lmx_file` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0为图片 1为文件',
  `name` varchar(255) NOT NULL,
  `temname` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `size` varchar(50) NOT NULL,
  `issmall` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `filepath` (`path`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_file 的数据：6 rows
DELETE FROM `lmx_file`;
/*!40000 ALTER TABLE `lmx_file` DISABLE KEYS */;
INSERT INTO `lmx_file` (`fid`, `type`, `name`, `temname`, `path`, `time`, `size`, `issmall`) VALUES
	(4, 0, '201408271642357617.jpg', '1.jpg', '/file/d/product/20140827/201408271642357617.jpg', 1409128955, '20.74KB', 0),
	(2, 0, '201408271523025580.jpg', '2.jpg', '/file/slide/20140827/201408271523025580.jpg', 1409124182, '87.73KB', 0),
	(3, 0, '201408271523022322.jpg', '3.jpg', '/file/slide/20140827/201408271523022322.jpg', 1409124182, '49.47KB', 0),
	(5, 0, '201408271644398005.jpg', '2.jpg', '/file/d/product/20140827/201408271644398005.jpg', 1409129079, '21.25KB', 0),
	(6, 0, '201408271645056451.jpg', '3.jpg', '/file/d/product/20140827/201408271645056451.jpg', 1409129105, '21.5KB', 0),
	(7, 0, '201408271649165919.jpg', '4.jpg', '/file/d/product/20140827/201408271649165919.jpg', 1409129356, '25.74KB', 0);
/*!40000 ALTER TABLE `lmx_file` ENABLE KEYS */;

-- 导出  表 cms.lmx_link 结构
CREATE TABLE IF NOT EXISTS `lmx_link` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `isimg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isimg` (`isimg`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_link 的数据：2 rows
DELETE FROM `lmx_link`;
/*!40000 ALTER TABLE `lmx_link` DISABLE KEYS */;
INSERT INTO `lmx_link` (`id`, `name`, `url`, `img`, `isimg`, `sort`, `remarks`) VALUES
	(1, 'bugku ctf', 'http://ctf.bugku.com', '', 0, 0, ''),
	(2, 'Bugku', 'http://www.bugku.com', '', 0, 0, '');
/*!40000 ALTER TABLE `lmx_link` ENABLE KEYS */;

-- 导出  表 cms.lmx_log 结构
CREATE TABLE IF NOT EXISTS `lmx_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_log 的数据：8 rows
DELETE FROM `lmx_log`;
/*!40000 ALTER TABLE `lmx_log` DISABLE KEYS */;
INSERT INTO `lmx_log` (`id`, `content`, `time`, `username`, `userip`) VALUES
	(1, '【admin】登录后台', 1641619147, 'admin', '112.236.225.155'),
	(2, '修改基本设置', 1641619180, 'admin', '112.236.225.155'),
	(3, '增加管理员【admin1】', 1641619195, 'admin', '112.236.225.155'),
	(4, '增加管理员【bugku】', 1641619215, 'admin', '112.236.225.155'),
	(5, '修改友情链接', 1641619236, 'admin', '112.236.225.155'),
	(6, '修改友情链接', 1641619246, 'admin', '112.236.225.155'),
	(7, '修改基本设置', 1641619285, 'admin', '112.236.225.155'),
	(8, '【admin】退出后台', 1641619313, 'admin', '112.236.225.155');
/*!40000 ALTER TABLE `lmx_log` ENABLE KEYS */;

-- 导出  表 cms.lmx_module 结构
CREATE TABLE IF NOT EXISTS `lmx_module` (
  `mid` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_module 的数据：2 rows
DELETE FROM `lmx_module`;
/*!40000 ALTER TABLE `lmx_module` DISABLE KEYS */;
INSERT INTO `lmx_module` (`mid`, `mname`, `tab`, `content`) VALUES
	(1, '产品模型', 'product_data', ''),
	(2, '新闻模型', 'news_data', '');
/*!40000 ALTER TABLE `lmx_module` ENABLE KEYS */;

-- 导出  表 cms.lmx_news_data 结构
CREATE TABLE IF NOT EXISTS `lmx_news_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` mediumint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `tuijian` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remen` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `title` (`title`),
  KEY `list` (`id`,`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_news_data 的数据：7 rows
DELETE FROM `lmx_news_data`;
/*!40000 ALTER TABLE `lmx_news_data` DISABLE KEYS */;
INSERT INTO `lmx_news_data` (`id`, `classid`, `title`, `keywords`, `description`, `time`, `url`, `tuijian`, `remen`, `click`) VALUES
	(1, 7, '测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻', '测试新闻,测试新闻测试新闻测试新闻,测试新闻', '测试新闻测试新闻测试新闻测试新闻', 1409129633, '', 0, 0, 20),
	(2, 7, '测试新闻测试新闻测试新闻', '测试新闻测试新闻测试新闻', '测试新闻测试新闻测试新闻', 1409129645, '', 0, 0, 60),
	(3, 7, '测试新闻测试新闻测试新闻', '测试新闻', '测试新闻测试新闻', 1409129653, '', 0, 0, 32),
	(4, 7, '测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻', '', '测试新闻测试新闻测试新闻', 1409129661, '', 0, 0, 69),
	(5, 8, '测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻', '', '测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻', 1409129672, '', 0, 0, 52),
	(6, 8, '测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻', '', '测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻', 1409129677, '', 0, 0, 115),
	(7, 8, '内容外部链接内容外部链接内容外部链接', '', '', 1409129683, 'http://baidu.com', 0, 0, 66);
/*!40000 ALTER TABLE `lmx_news_data` ENABLE KEYS */;

-- 导出  表 cms.lmx_news_data_1 结构
CREATE TABLE IF NOT EXISTS `lmx_news_data_1` (
  `uid` int(10) unsigned NOT NULL,
  `content` mediumtext NOT NULL,
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_news_data_1 的数据：7 rows
DELETE FROM `lmx_news_data_1`;
/*!40000 ALTER TABLE `lmx_news_data_1` DISABLE KEYS */;
INSERT INTO `lmx_news_data_1` (`uid`, `content`) VALUES
	(1, '<p>测试新闻测试新闻测试新闻</p>'),
	(2, '<p>测试新闻测试新闻测试新闻测试新闻测试新闻</p>'),
	(3, '<p>测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻</p>'),
	(4, '<p>测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻</p>'),
	(5, '<p>测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻</p>'),
	(6, '<p>测试新闻测试新闻测试新闻测试新闻测试新闻测试新闻</p>'),
	(7, '');
/*!40000 ALTER TABLE `lmx_news_data_1` ENABLE KEYS */;

-- 导出  表 cms.lmx_product_data 结构
CREATE TABLE IF NOT EXISTS `lmx_product_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classid` mediumint(5) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `remen` tinyint(1) NOT NULL DEFAULT '0',
  `tuijian` tinyint(1) NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `duotp` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `classid` (`classid`),
  KEY `list` (`id`,`classid`),
  KEY `remen` (`remen`),
  KEY `tuijian` (`tuijian`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_product_data 的数据：10 rows
DELETE FROM `lmx_product_data`;
/*!40000 ALTER TABLE `lmx_product_data` DISABLE KEYS */;
INSERT INTO `lmx_product_data` (`id`, `classid`, `title`, `keywords`, `description`, `time`, `url`, `pic`, `remen`, `tuijian`, `click`, `duotp`) VALUES
	(1, 5, '产品测试内容产品测试内容产品测试内容', '产品测试内容,产品测试内容,产品测试内容', '产品测试内容产品测试内容', 1409128924, '', '/file/d/product/20140827/201408271642357617.jpg', 0, 0, 62, ''),
	(2, 5, '产品测试内容产品测试内容产品测试内容', '', '产品测试内容产品测试内容产品测试内容', 1409129062, '', '/file/d/product/20140827/201408271644398005.jpg', 0, 0, 39, ''),
	(3, 5, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409129093, '', '/file/d/product/20140827/201408271645056451.jpg', 0, 0, 70, ''),
	(4, 5, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409129346, '', '/file/d/product/20140827/201408271649165919.jpg', 0, 0, 73, ''),
	(5, 11, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409139621, '', '/file/d/product/20140827/201408271649165919.jpg', 0, 0, 52, ''),
	(6, 11, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409139634, '', '/file/d/product/20140827/201408271645056451.jpg', 0, 0, 19, ''),
	(7, 11, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409139645, '', '/file/d/product/20140827/201408271644398005.jpg', 0, 0, 11, ''),
	(8, 11, '产品测试内容产品测试内容产品测试内容', '', '产品测试内容产品测试内容产品测试内容', 1409139655, '', '/file/d/product/20140827/201408271642357617.jpg', 0, 0, 84, ''),
	(9, 12, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409139667, '', '/file/d/product/20140827/201408271649165919.jpg', 0, 0, 17, ''),
	(10, 12, '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', '产品测试内容产品测试内容产品测试内容', 1409139675, '', '/file/d/product/20140827/201408271645056451.jpg', 0, 0, 42, '/file/d/product/20140827/201408271649165919.jpg#####/file/d/product/20140827/201408271645056451.jpg#####/file/d/product/20140827/201408271644398005.jpg#####/file/d/product/20140827/201408271642357617.jpg');
/*!40000 ALTER TABLE `lmx_product_data` ENABLE KEYS */;

-- 导出  表 cms.lmx_product_data_1 结构
CREATE TABLE IF NOT EXISTS `lmx_product_data_1` (
  `uid` int(10) unsigned NOT NULL,
  `content` mediumtext NOT NULL,
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_product_data_1 的数据：10 rows
DELETE FROM `lmx_product_data_1`;
/*!40000 ALTER TABLE `lmx_product_data_1` DISABLE KEYS */;
INSERT INTO `lmx_product_data_1` (`uid`, `content`) VALUES
	(1, '<p>产品介绍产品介绍产品介绍产品介绍产品介绍产品介绍</p>'),
	(2, ''),
	(3, ''),
	(4, '<p>产品测试内容产品测试内容产品测试内容</p>'),
	(5, '<p>产品测试内容产品测试内容产品测试内容</p>'),
	(6, '<p>产品测试内容产品测试内容产品测试内容</p>'),
	(7, '<p>产品测试内容产品测试内容产品测试内容</p>'),
	(8, '<p>产品测试内容产品测试内容产品测试内容</p>'),
	(9, ''),
	(10, '<p>产品测试内容产品测试内容产品测试内容</p>');
/*!40000 ALTER TABLE `lmx_product_data_1` ENABLE KEYS */;

-- 导出  表 cms.lmx_search 结构
CREATE TABLE IF NOT EXISTS `lmx_search` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `classid` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` int(5) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL,
  `url` text NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_search 的数据：0 rows
DELETE FROM `lmx_search`;
/*!40000 ALTER TABLE `lmx_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_search` ENABLE KEYS */;

-- 导出  表 cms.lmx_singlecon 结构
CREATE TABLE IF NOT EXISTS `lmx_singlecon` (
  `classid` mediumint(5) NOT NULL,
  `content` mediumtext NOT NULL,
  KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_singlecon 的数据：3 rows
DELETE FROM `lmx_singlecon`;
/*!40000 ALTER TABLE `lmx_singlecon` DISABLE KEYS */;
INSERT INTO `lmx_singlecon` (`classid`, `content`) VALUES
	(1, '<p><img src="/file/p/20140827/201408271713506112.jpg" title="未标题-2.jpg"/>环保科技有限公司，是一家专业从事环保设备生产与销售的技术密集型企业。我们不仅拥有强大完备的生产能力和十余年环保设备研发生产服务史，更有着一支热爱环保事业、诚信敬业的高素质团队。</p>'),
	(3, '<p>主营范围</p>'),
	(4, '<p>联系我们</p>');
/*!40000 ALTER TABLE `lmx_singlecon` ENABLE KEYS */;

-- 导出  表 cms.lmx_slide 结构
CREATE TABLE IF NOT EXISTS `lmx_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_slide 的数据：1 rows
DELETE FROM `lmx_slide`;
/*!40000 ALTER TABLE `lmx_slide` DISABLE KEYS */;
INSERT INTO `lmx_slide` (`id`, `name`, `content`) VALUES
	(1, '首页焦点图', '');
/*!40000 ALTER TABLE `lmx_slide` ENABLE KEYS */;

-- 导出  表 cms.lmx_slide_data 结构
CREATE TABLE IF NOT EXISTS `lmx_slide_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `img` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_slide_data 的数据：2 rows
DELETE FROM `lmx_slide_data`;
/*!40000 ALTER TABLE `lmx_slide_data` DISABLE KEYS */;
INSERT INTO `lmx_slide_data` (`id`, `uid`, `img`, `content`, `sort`, `url`) VALUES
	(1, 1, '/file/slide/20140827/201408271523022322.jpg', '', 0, ''),
	(2, 1, '/file/slide/20140827/201408271523025580.jpg', '', 0, '');
/*!40000 ALTER TABLE `lmx_slide_data` ENABLE KEYS */;

-- 导出  表 cms.lmx_tags 结构
CREATE TABLE IF NOT EXISTS `lmx_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tem` varchar(255) NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pagenum` int(10) unsigned NOT NULL DEFAULT '10',
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `classid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `remen` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tuijian` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `remen` (`remen`),
  KEY `tuijian` (`tuijian`),
  KEY `classid` (`classid`),
  KEY `list` (`id`,`num`,`remen`,`tuijian`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_tags 的数据：0 rows
DELETE FROM `lmx_tags`;
/*!40000 ALTER TABLE `lmx_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_tags` ENABLE KEYS */;

-- 导出  表 cms.lmx_tags_info 结构
CREATE TABLE IF NOT EXISTS `lmx_tags_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `infoid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `classid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list` (`id`,`uid`,`classid`,`infoid`),
  KEY `uid` (`uid`),
  KEY `info` (`infoid`,`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_tags_info 的数据：0 rows
DELETE FROM `lmx_tags_info`;
/*!40000 ALTER TABLE `lmx_tags_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_tags_info` ENABLE KEYS */;

-- 导出  表 cms.lmx_user 结构
CREATE TABLE IF NOT EXISTS `lmx_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pwd` char(32) NOT NULL,
  `currtime` int(10) NOT NULL,
  `currip` varchar(100) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL,
  `lastip` varchar(100) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `errortime` int(10) unsigned NOT NULL,
  `num1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `errortime1` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_user 的数据：3 rows
DELETE FROM `lmx_user`;
/*!40000 ALTER TABLE `lmx_user` DISABLE KEYS */;
INSERT INTO `lmx_user` (`id`, `name`, `pwd`, `currtime`, `currip`, `lasttime`, `lastip`, `num`, `errortime`, `num1`, `errortime1`) VALUES
	(1, 'admin', 'abfd52a1f2dbe04893233c9416d12bd8', 1641619147, '112.236.225.155', 1641619139, '112.236.225.155', 0, 0, 0, 0),
	(2, 'admin1', 'abfd52a1f2dbe04893233c9416d12bd8', 1641619195, '112.236.225.155', 1641619195, '112.236.225.155', 0, 0, 0, 0),
	(3, 'bugku', 'abfd52a1f2dbe04893233c9416d12bd8', 1641619215, '112.236.225.155', 1641619215, '112.236.225.155', 0, 0, 0, 0);
/*!40000 ALTER TABLE `lmx_user` ENABLE KEYS */;

-- 导出  表 cms.lmx_userlog 结构
CREATE TABLE IF NOT EXISTS `lmx_userlog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_userlog 的数据：1 rows
DELETE FROM `lmx_userlog`;
/*!40000 ALTER TABLE `lmx_userlog` DISABLE KEYS */;
INSERT INTO `lmx_userlog` (`id`, `name`, `ip`, `time`) VALUES
	(1, 'admin', '112.236.225.155', 1641619147);
/*!40000 ALTER TABLE `lmx_userlog` ENABLE KEYS */;

-- 导出  表 cms.lmx_zt 结构
CREATE TABLE IF NOT EXISTS `lmx_zt` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tem` varchar(255) NOT NULL,
  `islist` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pagenum` int(10) unsigned NOT NULL,
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_zt 的数据：0 rows
DELETE FROM `lmx_zt`;
/*!40000 ALTER TABLE `lmx_zt` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_zt` ENABLE KEYS */;

-- 导出  表 cms.lmx_zt_info 结构
CREATE TABLE IF NOT EXISTS `lmx_zt_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `infoid` int(11) NOT NULL,
  `classid` mediumint(5) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `remen` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tuijian` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `infoid` (`infoid`),
  KEY `uid` (`uid`),
  KEY `list` (`id`,`infoid`,`uid`,`classid`,`remen`,`tuijian`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.lmx_zt_info 的数据：0 rows
DELETE FROM `lmx_zt_info`;
/*!40000 ALTER TABLE `lmx_zt_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `lmx_zt_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
