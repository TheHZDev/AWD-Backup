-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.37-0ubuntu0.18.04.1 - (Ubuntu)
-- 服务器操作系统:                      Linux
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

-- 导出  表 cms.blue_ad 结构
CREATE TABLE IF NOT EXISTS `blue_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(40) NOT NULL,
  `time_set` tinyint(1) NOT NULL DEFAULT '0',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `exp_content` text NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_ad 的数据：0 rows
DELETE FROM `blue_ad`;
/*!40000 ALTER TABLE `blue_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_ad` ENABLE KEYS */;

-- 导出  表 cms.blue_admin 结构
CREATE TABLE IF NOT EXISTS `blue_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `purview` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL,
  `last_login_time` int(10) NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_admin 的数据：1 rows
DELETE FROM `blue_admin`;
/*!40000 ALTER TABLE `blue_admin` DISABLE KEYS */;
INSERT INTO `blue_admin` (`admin_id`, `admin_name`, `email`, `pwd`, `purview`, `add_time`, `last_login_time`, `last_login_ip`) VALUES
	(1, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'all', 1645870986, 1645871057, '');
/*!40000 ALTER TABLE `blue_admin` ENABLE KEYS */;

-- 导出  表 cms.blue_admin_log 结构
CREATE TABLE IF NOT EXISTS `blue_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) NOT NULL,
  `add_time` int(10) NOT NULL,
  `log_value` varchar(255) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_admin_log 的数据：0 rows
DELETE FROM `blue_admin_log`;
/*!40000 ALTER TABLE `blue_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_admin_log` ENABLE KEYS */;

-- 导出  表 cms.blue_ad_phone 结构
CREATE TABLE IF NOT EXISTS `blue_ad_phone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(10) NOT NULL,
  `start_time` int(10) unsigned NOT NULL DEFAULT '0',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_ad_phone 的数据：0 rows
DELETE FROM `blue_ad_phone`;
/*!40000 ALTER TABLE `blue_ad_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_ad_phone` ENABLE KEYS */;

-- 导出  表 cms.blue_ann 结构
CREATE TABLE IF NOT EXISTS `blue_ann` (
  `ann_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) NOT NULL,
  `author` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `content` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `click` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ann_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_ann 的数据：0 rows
DELETE FROM `blue_ann`;
/*!40000 ALTER TABLE `blue_ann` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_ann` ENABLE KEYS */;

-- 导出  表 cms.blue_ann_cat 结构
CREATE TABLE IF NOT EXISTS `blue_ann_cat` (
  `cid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) NOT NULL,
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_ann_cat 的数据：4 rows
DELETE FROM `blue_ann_cat`;
/*!40000 ALTER TABLE `blue_ann_cat` DISABLE KEYS */;
INSERT INTO `blue_ann_cat` (`cid`, `cat_name`, `show_order`) VALUES
	(1, '网站公告', 0),
	(2, '付费推广', 0),
	(3, '帮助中心', 0),
	(4, '关于本站', 0);
/*!40000 ALTER TABLE `blue_ann_cat` ENABLE KEYS */;

-- 导出  表 cms.blue_arc_cat 结构
CREATE TABLE IF NOT EXISTS `blue_arc_cat` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cat_indent` tinyint(1) NOT NULL DEFAULT '1',
  `is_havechild` tinyint(1) NOT NULL DEFAULT '0',
  `show_order` tinyint(3) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_arc_cat 的数据：0 rows
DELETE FROM `blue_arc_cat`;
/*!40000 ALTER TABLE `blue_arc_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_arc_cat` ENABLE KEYS */;

-- 导出  表 cms.blue_area 结构
CREATE TABLE IF NOT EXISTS `blue_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` varchar(20) NOT NULL,
  `parentid` int(10) NOT NULL,
  `area_indent` int(1) NOT NULL DEFAULT '0',
  `ishavechild` tinyint(1) NOT NULL DEFAULT '0',
  `show_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_area 的数据：1 rows
DELETE FROM `blue_area`;
/*!40000 ALTER TABLE `blue_area` DISABLE KEYS */;
INSERT INTO `blue_area` (`area_id`, `area_name`, `parentid`, `area_indent`, `ishavechild`, `show_order`) VALUES
	(1, '地区一', 0, 0, 0, 0);
/*!40000 ALTER TABLE `blue_area` ENABLE KEYS */;

-- 导出  表 cms.blue_article 结构
CREATE TABLE IF NOT EXISTS `blue_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `author` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `pub_date` int(10) NOT NULL DEFAULT '0',
  `lit_pic` varchar(100) NOT NULL,
  `descript` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `click` int(10) NOT NULL DEFAULT '0',
  `comment` int(10) NOT NULL DEFAULT '0',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0',
  `is_check` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_article 的数据：0 rows
DELETE FROM `blue_article`;
/*!40000 ALTER TABLE `blue_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_article` ENABLE KEYS */;

-- 导出  表 cms.blue_attachment 结构
CREATE TABLE IF NOT EXISTS `blue_attachment` (
  `att_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(6) NOT NULL,
  `att_name` varchar(40) NOT NULL,
  `att_type` tinyint(1) NOT NULL DEFAULT '1',
  `is_required` tinyint(1) NOT NULL DEFAULT '1',
  `unit` varchar(20) NOT NULL,
  `att_val` varchar(255) NOT NULL,
  `show_order` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`att_id`),
  KEY `postid` (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_attachment 的数据：0 rows
DELETE FROM `blue_attachment`;
/*!40000 ALTER TABLE `blue_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_attachment` ENABLE KEYS */;

-- 导出  表 cms.blue_buy_record 结构
CREATE TABLE IF NOT EXISTS `blue_buy_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `pid` smallint(5) NOT NULL,
  `exp` smallint(5) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_buy_record 的数据：0 rows
DELETE FROM `blue_buy_record`;
/*!40000 ALTER TABLE `blue_buy_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_buy_record` ENABLE KEYS */;

-- 导出  表 cms.blue_card_order 结构
CREATE TABLE IF NOT EXISTS `blue_card_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `time` int(10) NOT NULL,
  `is_pay` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_card_order 的数据：0 rows
DELETE FROM `blue_card_order`;
/*!40000 ALTER TABLE `blue_card_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_card_order` ENABLE KEYS */;

-- 导出  表 cms.blue_card_type 结构
CREATE TABLE IF NOT EXISTS `blue_card_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `is_close` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_card_type 的数据：1 rows
DELETE FROM `blue_card_type`;
/*!40000 ALTER TABLE `blue_card_type` DISABLE KEYS */;
INSERT INTO `blue_card_type` (`id`, `name`, `value`, `price`, `is_close`) VALUES
	(1, '便民卡', 100, 30, 0);
/*!40000 ALTER TABLE `blue_card_type` ENABLE KEYS */;

-- 导出  表 cms.blue_category 结构
CREATE TABLE IF NOT EXISTS `blue_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `englishname` varchar(100) NOT NULL,
  `title_color` varchar(20) NOT NULL,
  `parentid` int(10) NOT NULL DEFAULT '0',
  `model` smallint(5) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cat_indent` tinyint(1) NOT NULL DEFAULT '1',
  `is_havechild` tinyint(1) NOT NULL DEFAULT '0',
  `show_order` tinyint(3) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_category 的数据：0 rows
DELETE FROM `blue_category`;
/*!40000 ALTER TABLE `blue_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_category` ENABLE KEYS */;

-- 导出  表 cms.blue_comment 结构
CREATE TABLE IF NOT EXISTS `blue_comment` (
  `com_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `mood` tinyint(3) NOT NULL,
  `content` mediumtext NOT NULL,
  `pub_date` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `is_check` tinyint(1) NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `postid` (`post_id`),
  KEY `userid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_comment 的数据：0 rows
DELETE FROM `blue_comment`;
/*!40000 ALTER TABLE `blue_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_comment` ENABLE KEYS */;

-- 导出  表 cms.blue_config 结构
CREATE TABLE IF NOT EXISTS `blue_config` (
  `name` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_config 的数据：18 rows
DELETE FROM `blue_config`;
/*!40000 ALTER TABLE `blue_config` DISABLE KEYS */;
INSERT INTO `blue_config` (`name`, `value`) VALUES
	('site_name', 'BUGKUAWD'),
	('site_url', 'http://www.bugku.com'),
	('description', 'BUGKU'),
	('keywords', ''),
	('tel', '1|2'),
	('icp', ''),
	('count', ''),
	('isclose', '0'),
	('reason', ''),
	('cookie_hash', 'admin_'),
	('url_rewrite', '0'),
	('qq', '1|2'),
	('qq_group', '1|2'),
	('right', 'BUGKU AWD'),
	('info_is_check', '0'),
	('comment_is_check', '0'),
	('news_is_check', '0'),
	('is_gzip', '0');
/*!40000 ALTER TABLE `blue_config` ENABLE KEYS */;

-- 导出  表 cms.blue_flash_image 结构
CREATE TABLE IF NOT EXISTS `blue_flash_image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `show_order` tinyint(3) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_flash_image 的数据：0 rows
DELETE FROM `blue_flash_image`;
/*!40000 ALTER TABLE `blue_flash_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_flash_image` ENABLE KEYS */;

-- 导出  表 cms.blue_guest_book 结构
CREATE TABLE IF NOT EXISTS `blue_guest_book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `add_time` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_guest_book 的数据：0 rows
DELETE FROM `blue_guest_book`;
/*!40000 ALTER TABLE `blue_guest_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_guest_book` ENABLE KEYS */;

-- 导出  表 cms.blue_ipbanned 结构
CREATE TABLE IF NOT EXISTS `blue_ipbanned` (
  `ip` varchar(15) NOT NULL,
  `add_time` int(11) NOT NULL,
  `exp` smallint(5) NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_ipbanned 的数据：0 rows
DELETE FROM `blue_ipbanned`;
/*!40000 ALTER TABLE `blue_ipbanned` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_ipbanned` ENABLE KEYS */;

-- 导出  表 cms.blue_link 结构
CREATE TABLE IF NOT EXISTS `blue_link` (
  `linkid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `linkname` varchar(30) NOT NULL,
  `linksite` varchar(255) NOT NULL,
  `linklogo` varchar(255) NOT NULL,
  `showorder` tinyint(3) NOT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_link 的数据：0 rows
DELETE FROM `blue_link`;
/*!40000 ALTER TABLE `blue_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_link` ENABLE KEYS */;

-- 导出  表 cms.blue_model 结构
CREATE TABLE IF NOT EXISTS `blue_model` (
  `model_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(20) NOT NULL,
  `show_order` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_model 的数据：0 rows
DELETE FROM `blue_model`;
/*!40000 ALTER TABLE `blue_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_model` ENABLE KEYS */;

-- 导出  表 cms.blue_navigate 结构
CREATE TABLE IF NOT EXISTS `blue_navigate` (
  `navid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navname` varchar(30) NOT NULL,
  `navlink` varchar(255) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `showorder` tinyint(3) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`navid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_navigate 的数据：0 rows
DELETE FROM `blue_navigate`;
/*!40000 ALTER TABLE `blue_navigate` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_navigate` ENABLE KEYS */;

-- 导出  表 cms.blue_pay 结构
CREATE TABLE IF NOT EXISTS `blue_pay` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `key` varchar(60) NOT NULL,
  `email` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `fee` float(6,2) NOT NULL DEFAULT '0.00',
  `logo` varchar(40) NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT '0',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_pay 的数据：2 rows
DELETE FROM `blue_pay`;
/*!40000 ALTER TABLE `blue_pay` DISABLE KEYS */;
INSERT INTO `blue_pay` (`id`, `code`, `name`, `userid`, `key`, `email`, `description`, `fee`, `logo`, `is_open`, `show_order`) VALUES
	(1, 'alipay', '支付宝', '', '', '', '支付宝网站(www.alipay.com)是国内先进的网上支付平台，由全球最佳B2B公司阿里巴巴公司创办，致力于为网络交易用户提供优质的安全支付服务。', 0.00, 'images/alipay.jpg', 1, 0),
	(2, 'bank', '银行转账', '', '', '', '账号:\r\n户名:dd\r\n开户行:', 0.00, '', 1, 0);
/*!40000 ALTER TABLE `blue_pay` ENABLE KEYS */;

-- 导出  表 cms.blue_post 结构
CREATE TABLE IF NOT EXISTS `blue_post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `area_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `lit_pic` varchar(50) NOT NULL,
  `link_man` varchar(30) NOT NULL,
  `link_phone` varchar(20) NOT NULL,
  `link_qq` varchar(20) NOT NULL,
  `link_email` varchar(40) NOT NULL,
  `link_address` varchar(255) NOT NULL,
  `pub_date` int(10) NOT NULL,
  `useful_time` int(10) NOT NULL,
  `click` int(10) NOT NULL DEFAULT '0',
  `comment` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL,
  `is_check` tinyint(1) NOT NULL DEFAULT '1',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0',
  `rec_start` int(10) NOT NULL,
  `rec_time` smallint(5) NOT NULL,
  `top_type` tinyint(1) NOT NULL,
  `top_start` int(10) NOT NULL,
  `top_time` int(10) NOT NULL,
  `is_head_line` tinyint(1) NOT NULL,
  `head_line_start` int(10) NOT NULL,
  `head_line_time` smallint(5) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `catid` (`cat_id`,`user_id`,`area_id`,`is_recommend`,`rec_start`,`rec_time`,`top_type`,`top_start`,`top_time`,`is_head_line`,`head_line_start`,`head_line_time`),
  KEY `postid` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_post 的数据：0 rows
DELETE FROM `blue_post`;
/*!40000 ALTER TABLE `blue_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_post` ENABLE KEYS */;

-- 导出  表 cms.blue_post_att 结构
CREATE TABLE IF NOT EXISTS `blue_post_att` (
  `post_id` int(10) unsigned NOT NULL,
  `att_id` smallint(6) unsigned NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_post_att 的数据：0 rows
DELETE FROM `blue_post_att`;
/*!40000 ALTER TABLE `blue_post_att` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_post_att` ENABLE KEYS */;

-- 导出  表 cms.blue_post_pic 结构
CREATE TABLE IF NOT EXISTS `blue_post_pic` (
  `pic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `pic_path` varchar(255) NOT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_post_pic 的数据：0 rows
DELETE FROM `blue_post_pic`;
/*!40000 ALTER TABLE `blue_post_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `blue_post_pic` ENABLE KEYS */;

-- 导出  表 cms.blue_service 结构
CREATE TABLE IF NOT EXISTS `blue_service` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `service` varchar(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_service 的数据：8 rows
DELETE FROM `blue_service`;
/*!40000 ALTER TABLE `blue_service` DISABLE KEYS */;
INSERT INTO `blue_service` (`id`, `name`, `type`, `service`, `price`) VALUES
	(1, '大类置顶', 'info', 'top2', 10.00),
	(2, '小类置顶', 'info', 'top1', 5.00),
	(3, '分类信息推荐', 'info', 'rec', 10.00),
	(4, '分类信息头条', 'info', 'head_line', 10.00),
	(5, '大类置顶', 'company', 'top2', 10.00),
	(6, '小类置顶', 'company', 'top1', 5.00),
	(7, '商家黄页推荐', 'company', 'rec', 10.00),
	(8, '商家黄页头条', 'company', 'head_line', 10.00);
/*!40000 ALTER TABLE `blue_service` ENABLE KEYS */;

-- 导出  表 cms.blue_task 结构
CREATE TABLE IF NOT EXISTS `blue_task` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `last_time` int(10) NOT NULL,
  `exp` smallint(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`last_time`,`exp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_task 的数据：1 rows
DELETE FROM `blue_task`;
/*!40000 ALTER TABLE `blue_task` DISABLE KEYS */;
INSERT INTO `blue_task` (`id`, `name`, `last_time`, `exp`) VALUES
	(1, 'update_info', 1645871027, 1);
/*!40000 ALTER TABLE `blue_task` ENABLE KEYS */;

-- 导出  表 cms.blue_user 结构
CREATE TABLE IF NOT EXISTS `blue_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `email` varchar(40) NOT NULL,
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `face_pic` varchar(50) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reg_time` int(10) NOT NULL,
  `last_login_time` int(10) unsigned NOT NULL,
  `last_login_ip` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.blue_user 的数据：1 rows
DELETE FROM `blue_user`;
/*!40000 ALTER TABLE `blue_user` DISABLE KEYS */;
INSERT INTO `blue_user` (`user_id`, `user_name`, `pwd`, `email`, `birthday`, `sex`, `money`, `face_pic`, `mobile_phone`, `home_phone`, `office_phone`, `qq`, `msn`, `address`, `reg_time`, `last_login_time`, `last_login_ip`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '0000-00-00', 0, 0.00, '', '', '', '', '', '', '', 1645870986, 1645871057, '');
/*!40000 ALTER TABLE `blue_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
