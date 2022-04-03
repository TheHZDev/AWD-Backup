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

-- 导出  表 cms.pe_ad 结构
CREATE TABLE IF NOT EXISTS `pe_ad` (
  `ad_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ad_logo` varchar(100) NOT NULL,
  `ad_url` varchar(100) NOT NULL,
  `ad_position` varchar(15) NOT NULL,
  `ad_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_ad 的数据：4 rows
DELETE FROM `pe_ad`;
/*!40000 ALTER TABLE `pe_ad` DISABLE KEYS */;
INSERT INTO `pe_ad` (`ad_id`, `ad_logo`, `ad_url`, `ad_position`, `ad_order`) VALUES
	(1, 'data/attachment/2012-11/jdt1.jpg', '', 'index_jdt', 0),
	(2, 'data/attachment/2012-11/jdt2.jpg', '', 'index_jdt', 0),
	(3, 'data/attachment/2012-11/ad1.jpg', '', 'header', 0),
	(4, 'data/attachment/2012-11/ad2.jpg', '', 'footer', 0);
/*!40000 ALTER TABLE `pe_ad` ENABLE KEYS */;

-- 导出  表 cms.pe_admin 结构
CREATE TABLE IF NOT EXISTS `pe_admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理id',
  `admin_name` varchar(20) NOT NULL COMMENT '管理名',
  `admin_pw` varchar(32) NOT NULL COMMENT '管理密码',
  `admin_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理注册时间',
  `admin_ltime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理上次登录时间',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_admin 的数据：1 rows
DELETE FROM `pe_admin`;
/*!40000 ALTER TABLE `pe_admin` DISABLE KEYS */;
INSERT INTO `pe_admin` (`admin_id`, `admin_name`, `admin_pw`, `admin_atime`, `admin_ltime`) VALUES
	(1, 'admin', '7fef6171469e80d32c0559f88b377245', 1269059337, 1614397988);
/*!40000 ALTER TABLE `pe_admin` ENABLE KEYS */;

-- 导出  表 cms.pe_article 结构
CREATE TABLE IF NOT EXISTS `pe_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_name` varchar(100) NOT NULL,
  `article_text` text NOT NULL,
  `article_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `article_clicknum` int(10) unsigned NOT NULL DEFAULT '0',
  `class_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`),
  KEY `class_id` (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_article 的数据：1 rows
DELETE FROM `pe_article`;
/*!40000 ALTER TABLE `pe_article` DISABLE KEYS */;
INSERT INTO `pe_article` (`article_id`, `article_name`, `article_text`, `article_atime`, `article_clicknum`, `class_id`) VALUES
	(4, 'S1-4 flag', '让我看看是谁脸皮这么厚打开了', 1614397620, 0, 1);
/*!40000 ALTER TABLE `pe_article` ENABLE KEYS */;

-- 导出  表 cms.pe_ask 结构
CREATE TABLE IF NOT EXISTS `pe_ask` (
  `ask_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ask_text` text NOT NULL,
  `ask_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `ask_replytext` text NOT NULL,
  `ask_replytime` int(10) unsigned NOT NULL DEFAULT '0',
  `ask_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `user_ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`ask_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_ask 的数据：0 rows
DELETE FROM `pe_ask`;
/*!40000 ALTER TABLE `pe_ask` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_ask` ENABLE KEYS */;

-- 导出  表 cms.pe_cart 结构
CREATE TABLE IF NOT EXISTS `pe_cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cart_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_num` smallint(5) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cart_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_cart 的数据：0 rows
DELETE FROM `pe_cart`;
/*!40000 ALTER TABLE `pe_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_cart` ENABLE KEYS */;

-- 导出  表 cms.pe_category 结构
CREATE TABLE IF NOT EXISTS `pe_category` (
  `category_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `category_pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `category_name` varchar(30) NOT NULL,
  `category_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_category 的数据：1 rows
DELETE FROM `pe_category`;
/*!40000 ALTER TABLE `pe_category` DISABLE KEYS */;
INSERT INTO `pe_category` (`category_id`, `category_pid`, `category_name`, `category_order`) VALUES
	(1, 0, '日用品', 1);
/*!40000 ALTER TABLE `pe_category` ENABLE KEYS */;

-- 导出  表 cms.pe_class 结构
CREATE TABLE IF NOT EXISTS `pe_class` (
  `class_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(30) NOT NULL,
  `class_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_class 的数据：1 rows
DELETE FROM `pe_class`;
/*!40000 ALTER TABLE `pe_class` DISABLE KEYS */;
INSERT INTO `pe_class` (`class_id`, `class_name`, `class_order`) VALUES
	(1, '网站公告', 0);
/*!40000 ALTER TABLE `pe_class` ENABLE KEYS */;

-- 导出  表 cms.pe_collect 结构
CREATE TABLE IF NOT EXISTS `pe_collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `collect_atime` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`collect_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_collect 的数据：0 rows
DELETE FROM `pe_collect`;
/*!40000 ALTER TABLE `pe_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_collect` ENABLE KEYS */;

-- 导出  表 cms.pe_comment 结构
CREATE TABLE IF NOT EXISTS `pe_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `comment_text` text NOT NULL COMMENT '留言内容',
  `comment_atime` int(10) NOT NULL DEFAULT '0' COMMENT '留言时间',
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL COMMENT '接受方用户id',
  `user_name` varchar(20) NOT NULL,
  `user_ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_comment 的数据：0 rows
DELETE FROM `pe_comment`;
/*!40000 ALTER TABLE `pe_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_comment` ENABLE KEYS */;

-- 导出  表 cms.pe_link 结构
CREATE TABLE IF NOT EXISTS `pe_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `link_name` varchar(50) NOT NULL COMMENT '友情链接名称',
  `link_url` varchar(100) NOT NULL COMMENT '友情链接url',
  `link_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '友情链接排序',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_link 的数据：1 rows
DELETE FROM `pe_link`;
/*!40000 ALTER TABLE `pe_link` DISABLE KEYS */;
INSERT INTO `pe_link` (`link_id`, `link_name`, `link_url`, `link_order`) VALUES
	(1, 'BugkuCTF', 'http://https://ctf.bugku.com/', 1);
/*!40000 ALTER TABLE `pe_link` ENABLE KEYS */;

-- 导出  表 cms.pe_order 结构
CREATE TABLE IF NOT EXISTS `pe_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_money` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '订单金额',
  `order_productmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0',
  `order_state` varchar(10) NOT NULL DEFAULT 'notpay',
  `order_payway` varchar(10) NOT NULL DEFAULT 'alipay_js',
  `order_text` varchar(255) NOT NULL COMMENT '订单留言',
  `order_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `order_ptime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款时间',
  `order_stime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `order_wlname` varchar(20) NOT NULL,
  `order_wlid` varchar(20) NOT NULL,
  `order_wlmoney` decimal(5,1) NOT NULL,
  `order_outid` bigint(15) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_tname` varchar(10) NOT NULL,
  `user_phone` char(11) NOT NULL COMMENT '用户手机',
  `user_tel` varchar(20) NOT NULL,
  `user_address` varchar(255) NOT NULL COMMENT '用户地址',
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_order 的数据：0 rows
DELETE FROM `pe_order`;
/*!40000 ALTER TABLE `pe_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_order` ENABLE KEYS */;

-- 导出  表 cms.pe_orderdata 结构
CREATE TABLE IF NOT EXISTS `pe_orderdata` (
  `orderdata_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单数据id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `product_name` varchar(50) NOT NULL COMMENT '订单名称',
  `product_smoney` decimal(10,1) NOT NULL DEFAULT '0.0',
  `product_num` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`orderdata_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_orderdata 的数据：0 rows
DELETE FROM `pe_orderdata`;
/*!40000 ALTER TABLE `pe_orderdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_orderdata` ENABLE KEYS */;

-- 导出  表 cms.pe_page 结构
CREATE TABLE IF NOT EXISTS `pe_page` (
  `page_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(20) NOT NULL,
  `page_text` text NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_page 的数据：12 rows
DELETE FROM `pe_page`;
/*!40000 ALTER TABLE `pe_page` DISABLE KEYS */;
INSERT INTO `pe_page` (`page_id`, `page_name`, `page_text`) VALUES
	(1, '购物指南', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(2, '支付方式', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(3, '常见问题', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(4, '配送时间及运费', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(5, '验货与签收', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(6, '订单查询', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(7, '退换货流程', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(8, '退换货条款', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(9, '用户协议', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(10, '公司简介', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(11, '联系我们', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>'),
	(12, '诚聘英才', '<a target="_blank" href="http://www.phpshe.com">请在此填写相关内容</a>');
/*!40000 ALTER TABLE `pe_page` ENABLE KEYS */;

-- 导出  表 cms.pe_payway 结构
CREATE TABLE IF NOT EXISTS `pe_payway` (
  `payway_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `payway_name` varchar(10) NOT NULL,
  `payway_mark` varchar(15) NOT NULL,
  `payway_logo` varchar(100) NOT NULL,
  `payway_model` text NOT NULL,
  `payway_config` text NOT NULL,
  `payway_text` varchar(255) NOT NULL,
  `payway_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `payway_state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`payway_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_payway 的数据：2 rows
DELETE FROM `pe_payway`;
/*!40000 ALTER TABLE `pe_payway` DISABLE KEYS */;
INSERT INTO `pe_payway` (`payway_id`, `payway_name`, `payway_mark`, `payway_logo`, `payway_model`, `payway_config`, `payway_text`, `payway_order`, `payway_state`) VALUES
	(1, '支付宝', 'alipay', 'include/plugin/payway/alipay/logo.gif', 'a:4:{s:12:"alipay_class";a:3:{s:4:"name";s:15:"支付宝接口";s:9:"form_type";s:6:"select";s:10:"form_value";a:3:{s:9:"alipay_js";s:18:"即时到账收款";s:9:"alipay_db";s:18:"担保交易收款";s:10:"alipay_sgn";s:15:"双功能收款";}}s:11:"alipay_name";a:2:{s:4:"name";s:15:"支付宝账户";s:9:"form_type";s:4:"text";}s:10:"alipay_pid";a:2:{s:4:"name";s:18:"合作者身份Pid";s:9:"form_type";s:4:"text";}s:10:"alipay_key";a:2:{s:4:"name";s:18:"安全校验码Key";s:9:"form_type";s:4:"text";}}', 'a:4:{s:12:"alipay_class";s:10:"alipay_sgn";s:11:"alipay_name";s:16:"koyshe@gmail.com";s:10:"alipay_pid";s:16:"2088102457797916";s:10:"alipay_key";s:32:"esfsclzgahxncgzi3bbe7giwa2ywxyv3";}', '国内领先的第三方支付平台，为电子商务提供“简单、安全、快速”的在线支付解决方案。', 0, 1),
	(2, '银行转账/汇款', 'bank', 'include/plugin/payway/bank/logo.gif', 'a:1:{s:9:"bank_text";a:2:{s:4:"name";s:12:"收款信息";s:9:"form_type";s:8:"textarea";}}', 'a:1:{s:9:"bank_text";s:130:"建设银行 621700254000005xxxx 刘某某\r\n工商银行 621700254000005xxxx 刘某某\r\n农业银行 621700254000005xxxx 刘某某";}', '当您提交订单后，请到银行汇款所购商品款项，待款项到达后我们安排发货。', 0, 1);
/*!40000 ALTER TABLE `pe_payway` ENABLE KEYS */;

-- 导出  表 cms.pe_product 结构
CREATE TABLE IF NOT EXISTS `pe_product` (
  `product_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `product_name` varchar(50) NOT NULL COMMENT '商品名称',
  `product_text` text NOT NULL COMMENT '商品描述',
  `product_logo` varchar(200) NOT NULL COMMENT '商品logo',
  `product_mmoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品市场价',
  `product_smoney` decimal(10,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品商城价',
  `product_wlmoney` decimal(5,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '商品物流价',
  `product_mark` varchar(10) NOT NULL COMMENT '商品货号',
  `product_weight` decimal(7,2) NOT NULL COMMENT '商品尺寸',
  `product_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '商品状态',
  `product_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品发布时间',
  `product_num` smallint(5) unsigned NOT NULL COMMENT '商品库存数',
  `product_sellnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品销售数',
  `product_clicknum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数',
  `product_collectnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品收藏数',
  `product_asknum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品咨询数',
  `product_commentnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品评价数',
  `product_istuijian` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `category_id` smallint(5) unsigned NOT NULL COMMENT '商品分类id',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_product 的数据：5 rows
DELETE FROM `pe_product`;
/*!40000 ALTER TABLE `pe_product` DISABLE KEYS */;
INSERT INTO `pe_product` (`product_id`, `product_name`, `product_text`, `product_logo`, `product_mmoney`, `product_smoney`, `product_wlmoney`, `product_mark`, `product_weight`, `product_state`, `product_atime`, `product_num`, `product_sellnum`, `product_clicknum`, `product_collectnum`, `product_asknum`, `product_commentnum`, `product_istuijian`, `category_id`) VALUES
	(1, '纯棉毛巾', 'test', 'data/attachment/2021-02/20210227115734b.png', 22.0, 15.0, 0.0, '1001', 0.00, 1, 1614398040, 9999, 0, 0, 0, 0, 0, 0, 1),
	(2, 'flag', 'flag{xxx}', '', 10.0, 8.0, 0.0, '1002', 0.00, 1, 1614398280, 9999, 0, 0, 0, 0, 0, 1, 1),
	(3, 'switch日版', 'test', 'data/attachment/2021-02/20210227120126r.png', 2000.0, 1999.0, 0.0, '1003', 0.00, 1, 1614398460, 9999, 0, 0, 0, 0, 0, 0, 1),
	(4, 'Macbook pro', 'test', 'data/attachment/2021-02/20210227120332j.png', 16666.0, 15999.0, 0.0, '1004', 0.00, 1, 1614398580, 9999, 0, 0, 0, 0, 0, 0, 1),
	(5, '夏季超薄丝袜', '<img src="http://81.70.197.140/include/plugin/editor/plugins/emoticons/images/2.gif" border="0" alt="" />', 'data/attachment/2021-02/20210227120517g.png', 22.0, 19.0, 0.0, '1004', 0.00, 1, 1614398640, 9999, 0, 0, 0, 0, 0, 1, 1);
/*!40000 ALTER TABLE `pe_product` ENABLE KEYS */;

-- 导出  表 cms.pe_setting 结构
CREATE TABLE IF NOT EXISTS `pe_setting` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL,
  KEY `setting_key` (`setting_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_setting 的数据：11 rows
DELETE FROM `pe_setting`;
/*!40000 ALTER TABLE `pe_setting` DISABLE KEYS */;
INSERT INTO `pe_setting` (`setting_key`, `setting_value`) VALUES
	('web_title', '欢迎使用xxx商城系统'),
	('web_keywords', 'php'),
	('web_description', '开源免费网上商城系统'),
	('web_copyright', '2021-2022 bugku'),
	('web_tpl', 'default'),
	('web_phone', '131xxxxxxxx'),
	('web_icp', ''),
	('web_weibo', ''),
	('web_tongji', ''),
	('web_logo', 'data/attachment/2021-02/20210227114426q.png'),
	('web_qq', '');
/*!40000 ALTER TABLE `pe_setting` ENABLE KEYS */;

-- 导出  表 cms.pe_user 结构
CREATE TABLE IF NOT EXISTS `pe_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名',
  `user_pw` varchar(32) NOT NULL COMMENT '用户密码',
  `user_tname` varchar(10) NOT NULL COMMENT '用户姓名',
  `user_phone` char(11) NOT NULL COMMENT '用户手机',
  `user_tel` varchar(20) NOT NULL COMMENT '固定电话',
  `user_qq` varchar(10) NOT NULL COMMENT '用户QQ',
  `user_email` varchar(30) NOT NULL COMMENT '用户email',
  `user_atime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户注册时间',
  `user_ltime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户上次登录时间',
  `user_address` varchar(255) NOT NULL COMMENT '用户地址',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.pe_user 的数据：0 rows
DELETE FROM `pe_user`;
/*!40000 ALTER TABLE `pe_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `pe_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
