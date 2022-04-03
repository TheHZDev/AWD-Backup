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


-- 导出 mac 的数据库结构
CREATE DATABASE IF NOT EXISTS `mac` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mac`;

-- 导出  表 mac.mac_art 结构
CREATE TABLE IF NOT EXISTS `mac_art` (
  `a_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) NOT NULL DEFAULT '',
  `a_subname` varchar(255) NOT NULL,
  `a_enname` varchar(255) NOT NULL DEFAULT '',
  `a_letter` char(1) NOT NULL DEFAULT '',
  `a_color` char(6) NOT NULL DEFAULT '',
  `a_from` varchar(32) NOT NULL DEFAULT '',
  `a_author` varchar(32) NOT NULL,
  `a_tag` varchar(64) NOT NULL DEFAULT '',
  `a_pic` varchar(255) NOT NULL DEFAULT '',
  `a_type` smallint(6) NOT NULL DEFAULT '0',
  `a_topic` varchar(255) NOT NULL DEFAULT '',
  `a_level` tinyint(1) NOT NULL DEFAULT '0',
  `a_hide` tinyint(1) NOT NULL DEFAULT '0',
  `a_lock` tinyint(1) NOT NULL DEFAULT '0',
  `a_up` mediumint(8) NOT NULL DEFAULT '0',
  `a_down` mediumint(8) NOT NULL DEFAULT '0',
  `a_hits` mediumint(8) NOT NULL DEFAULT '0',
  `a_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `a_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `a_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `a_addtime` int(10) NOT NULL DEFAULT '0',
  `a_time` int(10) NOT NULL DEFAULT '0',
  `a_hitstime` int(10) NOT NULL DEFAULT '0',
  `a_maketime` int(10) NOT NULL DEFAULT '0',
  `a_remarks` varchar(255) NOT NULL DEFAULT '',
  `a_content` mediumtext NOT NULL,
  PRIMARY KEY (`a_id`),
  KEY `a_type` (`a_type`),
  KEY `a_level` (`a_level`),
  KEY `a_hits` (`a_hits`),
  KEY `a_dayhits` (`a_dayhits`),
  KEY `a_weekhits` (`a_weekhits`),
  KEY `a_monthhits` (`a_monthhits`),
  KEY `a_addtime` (`a_addtime`),
  KEY `a_time` (`a_time`),
  KEY `a_maketime` (`a_maketime`),
  KEY `a_hide` (`a_hide`),
  KEY `a_letter` (`a_letter`),
  KEY `a_down` (`a_down`),
  KEY `a_up` (`a_up`),
  KEY `a_tag` (`a_tag`),
  KEY `a_name` (`a_name`),
  KEY `a_enname` (`a_enname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_art 的数据：0 rows
DELETE FROM `mac_art`;
/*!40000 ALTER TABLE `mac_art` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_art` ENABLE KEYS */;

-- 导出  表 mac.mac_art_relation 结构
CREATE TABLE IF NOT EXISTS `mac_art_relation` (
  `r_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `r_type` tinyint(1) NOT NULL DEFAULT '0',
  `r_a` mediumint(8) NOT NULL DEFAULT '0',
  `r_b` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`r_id`),
  KEY `r_type` (`r_type`),
  KEY `r_a` (`r_a`),
  KEY `r_b` (`r_b`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_art_relation 的数据：0 rows
DELETE FROM `mac_art_relation`;
/*!40000 ALTER TABLE `mac_art_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_art_relation` ENABLE KEYS */;

-- 导出  表 mac.mac_art_topic 结构
CREATE TABLE IF NOT EXISTS `mac_art_topic` (
  `t_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_tpl` varchar(128) NOT NULL DEFAULT '',
  `t_pic` varchar(255) NOT NULL DEFAULT '',
  `t_content` varchar(255) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_level` tinyint(1) NOT NULL DEFAULT '0',
  `t_up` mediumint(8) NOT NULL DEFAULT '0',
  `t_down` mediumint(8) NOT NULL DEFAULT '0',
  `t_score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `t_scoreall` mediumint(8) NOT NULL DEFAULT '0',
  `t_scorenum` smallint(6) NOT NULL DEFAULT '0',
  `t_hits` mediumint(8) NOT NULL DEFAULT '0',
  `t_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_addtime` int(10) NOT NULL DEFAULT '0',
  `t_time` int(10) NOT NULL DEFAULT '0',
  `t_hitstime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`t_id`),
  KEY `t_sort` (`t_sort`),
  KEY `t_hide` (`t_hide`),
  KEY `t_level` (`t_level`),
  KEY `t_up` (`t_up`),
  KEY `t_down` (`t_down`),
  KEY `t_score` (`t_score`),
  KEY `t_scoreall` (`t_scoreall`),
  KEY `t_scorenum` (`t_scorenum`),
  KEY `t_hits` (`t_hits`),
  KEY `t_dayhits` (`t_dayhits`),
  KEY `t_weekhits` (`t_weekhits`),
  KEY `t_monthhits` (`t_monthhits`),
  KEY `t_addtime` (`t_addtime`),
  KEY `t_time` (`t_time`),
  KEY `t_hitstime` (`t_hitstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_art_topic 的数据：0 rows
DELETE FROM `mac_art_topic`;
/*!40000 ALTER TABLE `mac_art_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_art_topic` ENABLE KEYS */;

-- 导出  表 mac.mac_art_type 结构
CREATE TABLE IF NOT EXISTS `mac_art_type` (
  `t_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_pid` smallint(6) NOT NULL DEFAULT '0',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_tpl` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_list` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_art` varchar(64) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_union` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`t_id`),
  KEY `t_pid` (`t_pid`),
  KEY `t_sort` (`t_sort`),
  KEY `t_hide` (`t_hide`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_art_type 的数据：6 rows
DELETE FROM `mac_art_type`;
/*!40000 ALTER TABLE `mac_art_type` DISABLE KEYS */;
INSERT INTO `mac_art_type` (`t_id`, `t_name`, `t_enname`, `t_pid`, `t_sort`, `t_hide`, `t_tpl`, `t_tpl_list`, `t_tpl_art`, `t_key`, `t_des`, `t_title`, `t_union`) VALUES
	(1, 'ç«™å†…æ–°é—»', 'zhanneixinwen', 0, 1, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
	(2, 'å¨±ä¹åŠ¨æ€', 'yuledongtai', 0, 2, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
	(3, 'å…«å¦çˆ†æ–™', 'baguabaoliao', 0, 3, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
	(4, 'å½±ç‰‡èµ„è®¯', 'yingpianzixun', 0, 4, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
	(5, 'æ˜Žæ˜Ÿèµ„è®¯', 'mingxingzixun', 0, 5, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', ''),
	(6, 'ç”µè§†èµ„è®¯', 'dianshizixun', 0, 6, 0, 'art_type.html', 'art_list.html', 'art_detail.html', '', '', '', '');
/*!40000 ALTER TABLE `mac_art_type` ENABLE KEYS */;

-- 导出  表 mac.mac_collect 结构
CREATE TABLE IF NOT EXISTS `mac_collect` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) NOT NULL DEFAULT '',
  `c_url` varchar(255) NOT NULL DEFAULT '',
  `c_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `c_mid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `c_appid` varchar(30) NOT NULL DEFAULT '',
  `c_appkey` varchar(30) NOT NULL DEFAULT '',
  `c_param` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_collect 的数据：0 rows
DELETE FROM `mac_collect`;
/*!40000 ALTER TABLE `mac_collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_collect` ENABLE KEYS */;

-- 导出  表 mac.mac_comment 结构
CREATE TABLE IF NOT EXISTS `mac_comment` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_type` int(11) DEFAULT '0',
  `c_vid` int(11) DEFAULT '0',
  `c_rid` int(11) DEFAULT '0',
  `c_hide` tinyint(1) DEFAULT '0',
  `c_name` varchar(64) NOT NULL DEFAULT '',
  `c_ip` varchar(32) NOT NULL DEFAULT '',
  `c_content` varchar(128) NOT NULL DEFAULT '',
  `c_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_vid` (`c_vid`),
  KEY `c_type` (`c_type`),
  KEY `c_rid` (`c_rid`),
  KEY `c_time` (`c_time`),
  KEY `c_hide` (`c_hide`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_comment 的数据：0 rows
DELETE FROM `mac_comment`;
/*!40000 ALTER TABLE `mac_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_comment` ENABLE KEYS */;

-- 导出  表 mac.mac_gbook 结构
CREATE TABLE IF NOT EXISTS `mac_gbook` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `g_vid` int(11) DEFAULT '0',
  `g_hide` tinyint(1) DEFAULT '0',
  `g_sort` smallint(6) NOT NULL DEFAULT '0',
  `g_name` varchar(64) NOT NULL DEFAULT '',
  `g_content` varchar(255) NOT NULL DEFAULT '',
  `g_reply` varchar(255) NOT NULL DEFAULT '',
  `g_ip` int(10) NOT NULL DEFAULT '0',
  `g_time` int(10) NOT NULL DEFAULT '0',
  `g_replytime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`g_id`),
  KEY `g_vid` (`g_vid`),
  KEY `g_time` (`g_time`),
  KEY `g_hide` (`g_hide`),
  KEY `g_sort` (`g_sort`),
  KEY `g_replytime` (`g_replytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_gbook 的数据：0 rows
DELETE FROM `mac_gbook`;
/*!40000 ALTER TABLE `mac_gbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_gbook` ENABLE KEYS */;

-- 导出  表 mac.mac_link 结构
CREATE TABLE IF NOT EXISTS `mac_link` (
  `l_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `l_name` varchar(64) NOT NULL DEFAULT '',
  `l_url` varchar(255) NOT NULL DEFAULT '',
  `l_logo` varchar(255) NOT NULL DEFAULT '',
  `l_type` tinyint(1) NOT NULL DEFAULT '0',
  `l_sort` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`l_id`),
  KEY `l_sort` (`l_sort`),
  KEY `l_type` (`l_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_link 的数据：0 rows
DELETE FROM `mac_link`;
/*!40000 ALTER TABLE `mac_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_link` ENABLE KEYS */;

-- 导出  表 mac.mac_manager 结构
CREATE TABLE IF NOT EXISTS `mac_manager` (
  `m_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `m_name` varchar(32) NOT NULL DEFAULT '',
  `m_password` varchar(32) NOT NULL DEFAULT '',
  `m_levels` varchar(32) NOT NULL DEFAULT '',
  `m_random` varchar(32) NOT NULL DEFAULT '',
  `m_status` tinyint(1) NOT NULL DEFAULT '0',
  `m_logintime` int(10) NOT NULL DEFAULT '0',
  `m_loginip` int(10) NOT NULL DEFAULT '0',
  `m_loginnum` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `m_status` (`m_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_manager 的数据：1 rows
DELETE FROM `mac_manager`;
/*!40000 ALTER TABLE `mac_manager` DISABLE KEYS */;
INSERT INTO `mac_manager` (`m_id`, `m_name`, `m_password`, `m_levels`, `m_random`, `m_status`, `m_logintime`, `m_loginip`, `m_loginnum`) VALUES
	(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'b,c,d,e,f,g,h,i,j', '550225ca0ae5a5c7344c6e5337906a90', 1, 1612196490, 0, 0);
/*!40000 ALTER TABLE `mac_manager` ENABLE KEYS */;

-- 导出  表 mac.mac_user 结构
CREATE TABLE IF NOT EXISTS `mac_user` (
  `u_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `u_qid` varchar(32) NOT NULL DEFAULT '',
  `u_name` varchar(32) NOT NULL DEFAULT '',
  `u_password` varchar(32) NOT NULL DEFAULT '',
  `u_qq` varchar(16) NOT NULL DEFAULT '',
  `u_email` varchar(32) NOT NULL DEFAULT '',
  `u_phone` varchar(16) NOT NULL DEFAULT '',
  `u_status` tinyint(1) NOT NULL DEFAULT '0',
  `u_flag` tinyint(1) NOT NULL DEFAULT '0',
  `u_question` varchar(255) NOT NULL DEFAULT '',
  `u_answer` varchar(255) NOT NULL DEFAULT '',
  `u_group` smallint(6) NOT NULL DEFAULT '0',
  `u_points` smallint(6) NOT NULL DEFAULT '0',
  `u_regtime` int(10) NOT NULL DEFAULT '0',
  `u_logintime` int(10) NOT NULL DEFAULT '0',
  `u_loginnum` smallint(6) NOT NULL DEFAULT '0',
  `u_extend` smallint(6) NOT NULL DEFAULT '0',
  `u_loginip` int(10) NOT NULL DEFAULT '0',
  `u_random` varchar(32) NOT NULL DEFAULT '',
  `u_fav` text NOT NULL,
  `u_plays` text NOT NULL,
  `u_downs` text NOT NULL,
  `u_start` int(10) NOT NULL DEFAULT '0',
  `u_end` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`),
  KEY `u_group` (`u_group`),
  KEY `u_status` (`u_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_user 的数据：0 rows
DELETE FROM `mac_user`;
/*!40000 ALTER TABLE `mac_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_user` ENABLE KEYS */;

-- 导出  表 mac.mac_user_card 结构
CREATE TABLE IF NOT EXISTS `mac_user_card` (
  `c_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `c_number` varchar(16) NOT NULL DEFAULT '',
  `c_pass` varchar(8) NOT NULL DEFAULT '',
  `c_money` smallint(6) NOT NULL DEFAULT '0',
  `c_point` smallint(6) NOT NULL DEFAULT '0',
  `c_used` tinyint(1) NOT NULL DEFAULT '0',
  `c_sale` tinyint(1) NOT NULL DEFAULT '0',
  `c_user` smallint(6) NOT NULL DEFAULT '0',
  `c_addtime` int(10) NOT NULL DEFAULT '0',
  `c_usetime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_used` (`c_used`),
  KEY `c_sale` (`c_sale`),
  KEY `c_user` (`c_user`),
  KEY `c_addtime` (`c_addtime`),
  KEY `c_usetime` (`c_usetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_user_card 的数据：0 rows
DELETE FROM `mac_user_card`;
/*!40000 ALTER TABLE `mac_user_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_user_card` ENABLE KEYS */;

-- 导出  表 mac.mac_user_group 结构
CREATE TABLE IF NOT EXISTS `mac_user_group` (
  `ug_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `ug_name` varchar(32) NOT NULL DEFAULT '',
  `ug_type` varchar(255) NOT NULL DEFAULT '',
  `ug_popedom` varchar(32) NOT NULL DEFAULT '',
  `ug_upgrade` smallint(6) NOT NULL DEFAULT '0',
  `ug_popvalue` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ug_id`),
  KEY `ug_upgrade` (`ug_upgrade`),
  KEY `ug_popvalue` (`ug_popvalue`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_user_group 的数据：1 rows
DELETE FROM `mac_user_group`;
/*!40000 ALTER TABLE `mac_user_group` DISABLE KEYS */;
INSERT INTO `mac_user_group` (`ug_id`, `ug_name`, `ug_type`, `ug_popedom`, `ug_upgrade`, `ug_popvalue`) VALUES
	(1, 'æ™®é€šä¼šå‘˜', '', '', 0, 1);
/*!40000 ALTER TABLE `mac_user_group` ENABLE KEYS */;

-- 导出  表 mac.mac_user_pay 结构
CREATE TABLE IF NOT EXISTS `mac_user_pay` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_order` int(11) NOT NULL DEFAULT '0',
  `p_uid` mediumint(8) NOT NULL DEFAULT '0',
  `p_price` smallint(6) NOT NULL DEFAULT '0',
  `p_time` int(10) NOT NULL DEFAULT '0',
  `p_point` smallint(6) NOT NULL DEFAULT '0',
  `p_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`p_id`),
  KEY `p_order` (`p_order`),
  KEY `p_uid` (`p_uid`),
  KEY `p_status` (`p_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_user_pay 的数据：0 rows
DELETE FROM `mac_user_pay`;
/*!40000 ALTER TABLE `mac_user_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_user_pay` ENABLE KEYS */;

-- 导出  表 mac.mac_user_visit 结构
CREATE TABLE IF NOT EXISTS `mac_user_visit` (
  `uv_id` int(11) NOT NULL AUTO_INCREMENT,
  `uv_uid` int(11) DEFAULT '0',
  `uv_ip` int(10) NOT NULL DEFAULT '0',
  `uv_ly` varchar(128) NOT NULL DEFAULT '',
  `uv_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_user_visit 的数据：0 rows
DELETE FROM `mac_user_visit`;
/*!40000 ALTER TABLE `mac_user_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_user_visit` ENABLE KEYS */;

-- 导出  表 mac.mac_vod 结构
CREATE TABLE IF NOT EXISTS `mac_vod` (
  `d_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) NOT NULL DEFAULT '',
  `d_subname` varchar(255) NOT NULL DEFAULT '',
  `d_enname` varchar(255) NOT NULL DEFAULT '',
  `d_letter` char(1) NOT NULL DEFAULT '',
  `d_color` char(6) NOT NULL DEFAULT '',
  `d_pic` varchar(255) NOT NULL DEFAULT '',
  `d_picthumb` varchar(255) NOT NULL DEFAULT '',
  `d_picslide` varchar(255) NOT NULL DEFAULT '',
  `d_starring` varchar(255) NOT NULL DEFAULT '',
  `d_directed` varchar(255) NOT NULL DEFAULT '',
  `d_tag` varchar(64) NOT NULL DEFAULT '',
  `d_remarks` varchar(64) NOT NULL DEFAULT '',
  `d_area` varchar(16) NOT NULL DEFAULT '',
  `d_lang` varchar(16) NOT NULL DEFAULT '',
  `d_year` smallint(4) NOT NULL DEFAULT '0',
  `d_type` smallint(6) NOT NULL DEFAULT '0',
  `d_type_expand` varchar(255) NOT NULL DEFAULT '',
  `d_class` varchar(255) NOT NULL DEFAULT '',
  `d_topic` varchar(255) NOT NULL DEFAULT '0',
  `d_hide` tinyint(1) NOT NULL DEFAULT '0',
  `d_lock` tinyint(1) NOT NULL DEFAULT '0',
  `d_state` int(8) NOT NULL DEFAULT '0',
  `d_level` tinyint(1) NOT NULL DEFAULT '0',
  `d_usergroup` smallint(6) NOT NULL DEFAULT '0',
  `d_stint` smallint(6) NOT NULL DEFAULT '0',
  `d_stintdown` smallint(6) NOT NULL DEFAULT '0',
  `d_hits` mediumint(8) NOT NULL DEFAULT '0',
  `d_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `d_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `d_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `d_duration` smallint(6) NOT NULL DEFAULT '0',
  `d_up` mediumint(8) NOT NULL DEFAULT '0',
  `d_down` mediumint(8) NOT NULL DEFAULT '0',
  `d_score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `d_scoreall` mediumint(8) NOT NULL DEFAULT '0',
  `d_scorenum` smallint(6) NOT NULL DEFAULT '0',
  `d_addtime` int(10) NOT NULL DEFAULT '0',
  `d_time` int(10) NOT NULL DEFAULT '0',
  `d_hitstime` int(10) NOT NULL DEFAULT '0',
  `d_maketime` int(10) NOT NULL DEFAULT '0',
  `d_content` text NOT NULL,
  `d_playfrom` varchar(255) NOT NULL DEFAULT '',
  `d_playserver` varchar(255) NOT NULL DEFAULT '',
  `d_playnote` varchar(255) NOT NULL DEFAULT '',
  `d_playurl` mediumtext NOT NULL,
  `d_downfrom` varchar(255) NOT NULL DEFAULT '',
  `d_downserver` varchar(255) NOT NULL DEFAULT '',
  `d_downnote` varchar(255) NOT NULL DEFAULT '',
  `d_downurl` mediumtext NOT NULL,
  PRIMARY KEY (`d_id`),
  KEY `d_type` (`d_type`),
  KEY `d_state` (`d_state`),
  KEY `d_level` (`d_level`),
  KEY `d_hits` (`d_hits`),
  KEY `d_dayhits` (`d_dayhits`),
  KEY `d_weekhits` (`d_weekhits`),
  KEY `d_monthhits` (`d_monthhits`),
  KEY `d_stint` (`d_stint`),
  KEY `d_stintdown` (`d_stintdown`),
  KEY `d_hide` (`d_hide`),
  KEY `d_usergroup` (`d_usergroup`),
  KEY `d_score` (`d_score`),
  KEY `d_addtime` (`d_addtime`),
  KEY `d_time` (`d_time`),
  KEY `d_maketime` (`d_maketime`),
  KEY `d_topic` (`d_topic`),
  KEY `d_letter` (`d_letter`),
  KEY `d_name` (`d_name`),
  KEY `d_enname` (`d_enname`),
  KEY `d_year` (`d_year`),
  KEY `d_area` (`d_area`),
  KEY `d_language` (`d_lang`),
  KEY `d_starring` (`d_starring`),
  KEY `d_directed` (`d_directed`),
  KEY `d_tag` (`d_tag`),
  KEY `d_type_expand` (`d_type_expand`),
  KEY `d_class` (`d_class`),
  KEY `d_lock` (`d_lock`),
  KEY `d_up` (`d_up`),
  KEY `d_down` (`d_down`),
  KEY `d_scoreall` (`d_scoreall`),
  KEY `d_scorenum` (`d_scorenum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_vod 的数据：0 rows
DELETE FROM `mac_vod`;
/*!40000 ALTER TABLE `mac_vod` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_vod` ENABLE KEYS */;

-- 导出  表 mac.mac_vod_class 结构
CREATE TABLE IF NOT EXISTS `mac_vod_class` (
  `c_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(64) NOT NULL DEFAULT '',
  `c_pid` smallint(6) NOT NULL DEFAULT '0',
  `c_sort` smallint(6) NOT NULL DEFAULT '0',
  `c_hide` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `c_sort` (`c_sort`),
  KEY `c_pid` (`c_pid`),
  KEY `c_hide` (`c_hide`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_vod_class 的数据：116 rows
DELETE FROM `mac_vod_class`;
/*!40000 ALTER TABLE `mac_vod_class` DISABLE KEYS */;
INSERT INTO `mac_vod_class` (`c_id`, `c_name`, `c_pid`, `c_sort`, `c_hide`) VALUES
	(1, 'æƒŠæ‚š', 1, 1, 0),
	(2, 'æ‚¬ç–‘', 1, 2, 0),
	(3, 'é­”å¹»', 1, 3, 0),
	(4, 'ç½ªæ¡ˆ', 1, 4, 0),
	(5, 'ç¾éš¾', 1, 5, 0),
	(6, 'åŠ¨ç”»', 1, 6, 0),
	(7, 'å¤è£…', 1, 7, 0),
	(8, 'é’æ˜¥', 1, 8, 0),
	(9, 'æ­Œèˆž', 1, 9, 0),
	(10, 'æ–‡è‰º', 1, 10, 0),
	(11, 'ç”Ÿæ´»', 1, 10, 0),
	(12, 'åŽ†å²', 1, 10, 0),
	(13, 'åŠ±å¿—', 1, 10, 0),
	(14, 'é¢„å‘Šç‰‡', 1, 10, 0),
	(15, 'è¨€æƒ…', 2, 1, 0),
	(16, 'éƒ½å¸‚', 2, 2, 0),
	(17, 'å®¶åº­', 2, 3, 0),
	(18, 'ç”Ÿæ´»', 2, 4, 0),
	(19, 'å¶åƒ', 2, 5, 0),
	(20, 'å–œå‰§', 2, 6, 0),
	(21, 'åŽ†å²', 2, 7, 0),
	(22, 'å¤è£…', 2, 8, 0),
	(23, 'æ­¦ä¾ ', 2, 9, 0),
	(24, 'åˆ‘ä¾¦', 2, 10, 0),
	(25, 'æˆ˜äº‰', 2, 11, 0),
	(26, 'ç¥žè¯', 2, 12, 0),
	(27, 'å†›æ—…', 2, 13, 0),
	(28, 'è°æˆ˜', 2, 14, 0),
	(29, 'å•†æˆ˜', 2, 15, 0),
	(30, 'æ ¡å›­', 2, 16, 0),
	(31, 'ç©¿è¶Š', 2, 17, 0),
	(32, 'æ‚¬ç–‘', 2, 18, 0),
	(33, 'çŠ¯ç½ª', 2, 19, 0),
	(34, 'ç§‘å¹»', 2, 20, 0),
	(35, 'é¢„å‘Šç‰‡', 2, 21, 0),
	(36, 'è„±å£ç§€', 3, 1, 0),
	(37, 'çœŸäººç§€', 3, 2, 0),
	(38, 'é€‰ç§€', 3, 3, 0),
	(39, 'æƒ…æ„Ÿ', 3, 4, 0),
	(40, 'è®¿è°ˆ', 3, 5, 0),
	(41, 'æ—¶å°š', 3, 6, 0),
	(42, 'æ™šä¼š', 3, 7, 0),
	(43, 'è´¢ç»', 3, 8, 0),
	(44, 'ç›Šæ™º', 3, 9, 0),
	(45, 'éŸ³ä¹', 3, 10, 0),
	(46, 'æ¸¸æˆ', 3, 11, 0),
	(47, 'èŒåœº', 3, 12, 0),
	(48, 'ç¾Žé£Ÿ', 3, 13, 0),
	(49, 'æ—…æ¸¸', 3, 14, 0),
	(50, 'å†’é™©', 4, 1, 0),
	(51, 'çƒ­è¡€', 4, 2, 0),
	(52, 'æžç¬‘', 4, 3, 0),
	(53, 'å°‘å¥³', 4, 4, 0),
	(54, 'æŽ¨ç†', 4, 5, 0),
	(55, 'ç«žæŠ€', 4, 6, 0),
	(56, 'ç›Šæ™º', 4, 7, 0),
	(57, 'ç«¥è¯', 4, 8, 0),
	(58, 'ç»å…¸', 4, 9, 0),
	(59, 'æƒŠæ‚š', 1, 1, 0),
	(60, 'æ‚¬ç–‘', 1, 2, 0),
	(61, 'é­”å¹»', 1, 3, 0),
	(62, 'ç½ªæ¡ˆ', 1, 4, 0),
	(63, 'ç¾éš¾', 1, 5, 0),
	(64, 'åŠ¨ç”»', 1, 6, 0),
	(65, 'å¤è£…', 1, 7, 0),
	(66, 'é’æ˜¥', 1, 8, 0),
	(67, 'æ­Œèˆž', 1, 9, 0),
	(68, 'æ–‡è‰º', 1, 10, 0),
	(69, 'ç”Ÿæ´»', 1, 10, 0),
	(70, 'åŽ†å²', 1, 10, 0),
	(71, 'åŠ±å¿—', 1, 10, 0),
	(72, 'é¢„å‘Šç‰‡', 1, 10, 0),
	(73, 'è¨€æƒ…', 2, 1, 0),
	(74, 'éƒ½å¸‚', 2, 2, 0),
	(75, 'å®¶åº­', 2, 3, 0),
	(76, 'ç”Ÿæ´»', 2, 4, 0),
	(77, 'å¶åƒ', 2, 5, 0),
	(78, 'å–œå‰§', 2, 6, 0),
	(79, 'åŽ†å²', 2, 7, 0),
	(80, 'å¤è£…', 2, 8, 0),
	(81, 'æ­¦ä¾ ', 2, 9, 0),
	(82, 'åˆ‘ä¾¦', 2, 10, 0),
	(83, 'æˆ˜äº‰', 2, 11, 0),
	(84, 'ç¥žè¯', 2, 12, 0),
	(85, 'å†›æ—…', 2, 13, 0),
	(86, 'è°æˆ˜', 2, 14, 0),
	(87, 'å•†æˆ˜', 2, 15, 0),
	(88, 'æ ¡å›­', 2, 16, 0),
	(89, 'ç©¿è¶Š', 2, 17, 0),
	(90, 'æ‚¬ç–‘', 2, 18, 0),
	(91, 'çŠ¯ç½ª', 2, 19, 0),
	(92, 'ç§‘å¹»', 2, 20, 0),
	(93, 'é¢„å‘Šç‰‡', 2, 21, 0),
	(94, 'è„±å£ç§€', 3, 1, 0),
	(95, 'çœŸäººç§€', 3, 2, 0),
	(96, 'é€‰ç§€', 3, 3, 0),
	(97, 'æƒ…æ„Ÿ', 3, 4, 0),
	(98, 'è®¿è°ˆ', 3, 5, 0),
	(99, 'æ—¶å°š', 3, 6, 0),
	(100, 'æ™šä¼š', 3, 7, 0),
	(101, 'è´¢ç»', 3, 8, 0),
	(102, 'ç›Šæ™º', 3, 9, 0),
	(103, 'éŸ³ä¹', 3, 10, 0),
	(104, 'æ¸¸æˆ', 3, 11, 0),
	(105, 'èŒåœº', 3, 12, 0),
	(106, 'ç¾Žé£Ÿ', 3, 13, 0),
	(107, 'æ—…æ¸¸', 3, 14, 0),
	(108, 'å†’é™©', 4, 1, 0),
	(109, 'çƒ­è¡€', 4, 2, 0),
	(110, 'æžç¬‘', 4, 3, 0),
	(111, 'å°‘å¥³', 4, 4, 0),
	(112, 'æŽ¨ç†', 4, 5, 0),
	(113, 'ç«žæŠ€', 4, 6, 0),
	(114, 'ç›Šæ™º', 4, 7, 0),
	(115, 'ç«¥è¯', 4, 8, 0),
	(116, 'ç»å…¸', 4, 9, 0);
/*!40000 ALTER TABLE `mac_vod_class` ENABLE KEYS */;

-- 导出  表 mac.mac_vod_relation 结构
CREATE TABLE IF NOT EXISTS `mac_vod_relation` (
  `r_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `r_type` tinyint(1) NOT NULL DEFAULT '0',
  `r_a` mediumint(8) NOT NULL DEFAULT '0',
  `r_b` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`r_id`),
  KEY `r_type` (`r_type`),
  KEY `r_a` (`r_a`),
  KEY `r_b` (`r_b`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_vod_relation 的数据：0 rows
DELETE FROM `mac_vod_relation`;
/*!40000 ALTER TABLE `mac_vod_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_vod_relation` ENABLE KEYS */;

-- 导出  表 mac.mac_vod_topic 结构
CREATE TABLE IF NOT EXISTS `mac_vod_topic` (
  `t_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_tpl` varchar(128) NOT NULL DEFAULT '',
  `t_pic` varchar(255) NOT NULL DEFAULT '',
  `t_content` varchar(255) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_level` tinyint(1) NOT NULL DEFAULT '0',
  `t_up` mediumint(8) NOT NULL DEFAULT '0',
  `t_down` mediumint(8) NOT NULL DEFAULT '0',
  `t_score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `t_scoreall` mediumint(8) NOT NULL DEFAULT '0',
  `t_scorenum` smallint(6) NOT NULL DEFAULT '0',
  `t_hits` mediumint(8) NOT NULL DEFAULT '0',
  `t_dayhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_weekhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_monthhits` mediumint(8) NOT NULL DEFAULT '0',
  `t_addtime` int(10) NOT NULL DEFAULT '0',
  `t_time` int(10) NOT NULL DEFAULT '0',
  `t_hitstime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`t_id`),
  KEY `t_sort` (`t_sort`),
  KEY `t_hide` (`t_hide`),
  KEY `t_level` (`t_level`),
  KEY `t_up` (`t_up`),
  KEY `t_down` (`t_down`),
  KEY `t_score` (`t_score`),
  KEY `t_scoreall` (`t_scoreall`),
  KEY `t_scorenum` (`t_scorenum`),
  KEY `t_hits` (`t_hits`),
  KEY `t_dayhits` (`t_dayhits`),
  KEY `t_weekhits` (`t_weekhits`),
  KEY `t_monthhits` (`t_monthhits`),
  KEY `t_addtime` (`t_addtime`),
  KEY `t_time` (`t_time`),
  KEY `t_hitstime` (`t_hitstime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_vod_topic 的数据：0 rows
DELETE FROM `mac_vod_topic`;
/*!40000 ALTER TABLE `mac_vod_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_vod_topic` ENABLE KEYS */;

-- 导出  表 mac.mac_vod_type 结构
CREATE TABLE IF NOT EXISTS `mac_vod_type` (
  `t_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(64) NOT NULL DEFAULT '',
  `t_enname` varchar(128) NOT NULL DEFAULT '',
  `t_pid` smallint(6) NOT NULL DEFAULT '0',
  `t_sort` smallint(6) NOT NULL DEFAULT '0',
  `t_hide` tinyint(1) NOT NULL DEFAULT '0',
  `t_tpl` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_list` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_vod` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_play` varchar(64) NOT NULL DEFAULT '',
  `t_tpl_down` varchar(64) NOT NULL DEFAULT '',
  `t_key` varchar(255) NOT NULL DEFAULT '',
  `t_des` varchar(255) NOT NULL DEFAULT '',
  `t_title` varchar(255) NOT NULL DEFAULT '',
  `t_union` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`t_id`),
  KEY `t_sort` (`t_sort`),
  KEY `t_pid` (`t_pid`),
  KEY `t_hide` (`t_hide`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 正在导出表  mac.mac_vod_type 的数据：15 rows
DELETE FROM `mac_vod_type`;
/*!40000 ALTER TABLE `mac_vod_type` DISABLE KEYS */;
INSERT INTO `mac_vod_type` (`t_id`, `t_name`, `t_enname`, `t_pid`, `t_sort`, `t_hide`, `t_tpl`, `t_tpl_list`, `t_tpl_vod`, `t_tpl_play`, `t_tpl_down`, `t_key`, `t_des`, `t_title`, `t_union`) VALUES
	(1, 'ç”µå½±', 'dianying', 0, 1, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(2, 'è¿žç»­å‰§', 'lianxuju', 0, 2, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(3, 'ç»¼è‰º', 'zongyi', 0, 3, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(4, 'åŠ¨æ¼«', 'dongman', 0, 4, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(5, 'åŠ¨ä½œç‰‡', 'dongzuopian', 1, 11, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(6, 'å–œå‰§ç‰‡', 'xijupian', 1, 12, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(7, 'çˆ±æƒ…ç‰‡', 'aiqingpian', 1, 13, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(8, 'ç§‘å¹»ç‰‡', 'kehuanpian', 1, 14, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(9, 'ææ€–ç‰‡', 'kongbupian', 1, 14, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(10, 'å‰§æƒ…ç‰‡', 'juqingpian', 1, 16, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(11, 'æˆ˜äº‰ç‰‡', 'zhanzhengpian', 1, 17, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(12, 'å›½äº§å‰§', 'guochanju', 2, 21, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(13, 'æ¸¯å°å‰§', 'gangtaiju', 2, 22, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(14, 'æ—¥éŸ©å‰§', 'rihanju', 2, 23, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', ''),
	(15, 'æ¬§ç¾Žå‰§', 'oumeiju', 2, 24, 0, 'vod_type.html', 'vod_list.html', 'vod_detail.html', 'vod_play.html', 'vod_down.html', '', '', '', '');
/*!40000 ALTER TABLE `mac_vod_type` ENABLE KEYS */;

-- 导出  表 mac.tmptable 结构
CREATE TABLE IF NOT EXISTS `tmptable` (
  `d_name1` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  mac.tmptable 的数据：0 rows
DELETE FROM `tmptable`;
/*!40000 ALTER TABLE `tmptable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmptable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
