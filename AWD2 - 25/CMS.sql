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

-- 导出  表 cms.5isns_cache 结构
CREATE TABLE IF NOT EXISTS `5isns_cache` (
  `k` char(32) NOT NULL DEFAULT '',
  `v` mediumtext NOT NULL,
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_cache 的数据：4 rows
DELETE FROM `5isns_cache`;
/*!40000 ALTER TABLE `5isns_cache` DISABLE KEYS */;
INSERT INTO `5isns_cache` (`k`, `v`, `expiry`) VALUES
	('5isns_navlist-top', '[\n    {\n        "id": "1",\n        "pid": "1",\n        "name": "文章",\n        "alias": "thread",\n        "link": "thread-list",\n        "icon": "",\n        "target": "_self",\n        "status": "1",\n        "sort": "0",\n        "update_time": "0",\n        "create_time": "0"\n    },\n    {\n        "id": "2",\n        "pid": "1",\n        "name": "文档",\n        "alias": "doc",\n        "link": "doc-list",\n        "icon": "",\n        "target": "_self",\n        "status": "1",\n        "sort": "0",\n        "update_time": "0",\n        "create_time": "0"\n    },\n    {\n        "id": "3",\n        "pid": "1",\n        "name": "话题",\n        "alias": "tags",\n        "link": "tags-taglist",\n        "icon": "",\n        "target": "_self",\n        "status": "1",\n        "sort": "0",\n        "update_time": "0",\n        "create_time": "0"\n    }\n]', 1646362141),
	('5isns_navlist-bottom', '[]', 1646362141),
	('5isns_tj_topiclist_6', '{\n    "1": {\n        "id": "1",\n        "uid": "1",\n        "type": "2",\n        "free": "0",\n        "score": "0",\n        "title": "F·L·A·G",\n        "choice": "1",\n        "settop": "0",\n        "sc": "0",\n        "view": "2",\n        "img_num": "0",\n        "file_num": "0",\n        "filelist": "",\n        "first_img": "",\n        "status": "1",\n        "update_time": "1646362039",\n        "create_time": "1646361730",\n        "reply": "0",\n        "keywords": "",\n        "description": "？？？？？",\n        "content": "&lt;p&gt;？？？？？&lt;/p&gt;",\n        "create_time_fmt": "5分钟前",\n        "user": {\n            "id": "1",\n            "userip": "1881468121",\n            "nickname": "admin",\n            "username": "admin",\n            "password": "438a9aeb6935d9a33963e446c3f121a8",\n            "avatar": "0",\n            "usermail": "admin@admin.com",\n            "mobile": "",\n            "regtime": "1646360549",\n            "sex": "0",\n            "status": "1",\n            "rz": "0",\n            "statusdes": null,\n            "userhome": null,\n            "description": "这个家伙很懒，什么都没有留下",\n            "last_login_time": "1646361214",\n            "last_login_ip": "1881468121",\n            "salt": "NMPS95H5MPDH4VB7",\n            "logins": "2",\n            "leader_id": "1",\n            "is_inside": "1",\n            "extend": {\n                "uid": "1",\n                "point": "0",\n                "expoint1": "0",\n                "expoint2": "0",\n                "expoint3": "0",\n                "doc_num": "1",\n                "topic_num": "1",\n                "fensi_num": "0",\n                "cate_num": "0",\n                "focus_mydoc_num": "0",\n                "focus_mytopic_num": "0",\n                "focus_mycate_num": "0",\n                "focus_user_num": "0",\n                "focus_doc_num": "0",\n                "focus_topic_num": "0",\n                "focus_cate_num": "0",\n                "grades": "0",\n                "grades_days": "-1",\n                "grades_nums": "-1",\n                "grades_bili": "0",\n                "grades_limittime": "0",\n                "grades_type": "0",\n                "grades_name": null,\n                "grades_time": "0",\n                "up_grades": "2",\n                "up_grades_bili": "100",\n                "up_grades_limittime": "0,0,0,0",\n                "up_grades_type": "1,2,3,4",\n                "up_grades_name": "普通会员",\n                "up_grades_time": "1646360563",\n                "keywords": null,\n                "notify_set": null,\n                "mailstatus": "0",\n                "mobilestatus": "0",\n                "status": "0",\n                "update_time": "0",\n                "create_time": "0"\n            },\n            "create_ip_fmt": "112.36.236.217",\n            "create_date_fmt": "2022-03-04",\n            "login_ip_fmt": "112.36.236.217",\n            "login_date_fmt": "2022-03-04",\n            "avatar_url": "/public/common/images/avatar.png",\n            "avatar_path": "",\n            "online_status": 1,\n            "sexname": "保密"\n        }\n    }\n}', 1646362141),
	('5isns_rz_userlist_3', '[]', 1646362141);
/*!40000 ALTER TABLE `5isns_cache` ENABLE KEYS */;

-- 导出  表 cms.5isns_chongzhi 结构
CREATE TABLE IF NOT EXISTS `5isns_chongzhi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `score` int(10) NOT NULL,
  `rmb` int(10) NOT NULL,
  `errorcode` varchar(200) DEFAULT NULL COMMENT '错误代码',
  `trade_no` varchar(200) DEFAULT NULL COMMENT '单号',
  `out_trade_no` varchar(200) DEFAULT NULL COMMENT '商户单号',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1支付宝',
  `actiontype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1充值2打赏',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1成功',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户充值表';

-- 正在导出表  cms.5isns_chongzhi 的数据：1 rows
DELETE FROM `5isns_chongzhi`;
/*!40000 ALTER TABLE `5isns_chongzhi` DISABLE KEYS */;
INSERT INTO `5isns_chongzhi` (`id`, `uid`, `score`, `rmb`, `errorcode`, `trade_no`, `out_trade_no`, `type`, `actiontype`, `itemid`, `status`, `update_time`, `create_time`) VALUES
	(1, 1, 20, 2, '', NULL, 'e5aca0e5c6c727cdc07e102a94476c7e', 1, 2, 1, 0, 0, 1646361754);
/*!40000 ALTER TABLE `5isns_chongzhi` ENABLE KEYS */;

-- 导出  表 cms.5isns_comment 结构
CREATE TABLE IF NOT EXISTS `5isns_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '上级评论',
  `uid` int(11) NOT NULL COMMENT '所属会员',
  `fid` int(11) NOT NULL COMMENT '所属帖子',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1帖子2文档',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `ding` int(11) DEFAULT '0' COMMENT '赞',
  `reply` int(11) DEFAULT '0' COMMENT '回复',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='评论表';

-- 正在导出表  cms.5isns_comment 的数据：0 rows
DELETE FROM `5isns_comment`;
/*!40000 ALTER TABLE `5isns_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_comment` ENABLE KEYS */;

-- 导出  表 cms.5isns_doccon 结构
CREATE TABLE IF NOT EXISTS `5isns_doccon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `choice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '精品',
  `settop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '顶置',
  `praise` int(11) NOT NULL DEFAULT '0' COMMENT '赞',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `sc` int(11) NOT NULL DEFAULT '0' COMMENT '收藏量',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `down` int(11) NOT NULL DEFAULT '0' COMMENT '下载量',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply` int(11) NOT NULL DEFAULT '0' COMMENT '回复',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `description` varchar(200) NOT NULL COMMENT '描述',
  `fileid` varchar(11) NOT NULL DEFAULT '0' COMMENT '文件id',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `pageid` int(11) NOT NULL DEFAULT '0' COMMENT '页数',
  `showpage` int(11) NOT NULL DEFAULT '2' COMMENT '默认显示页数',
  `raty` varchar(11) NOT NULL DEFAULT '0' COMMENT '评分',
  `ctype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '转换类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_doccon 的数据：1 rows
DELETE FROM `5isns_doccon`;
/*!40000 ALTER TABLE `5isns_doccon` DISABLE KEYS */;
INSERT INTO `5isns_doccon` (`id`, `uid`, `title`, `choice`, `settop`, `praise`, `view`, `sc`, `score`, `down`, `status`, `update_time`, `create_time`, `reply`, `keywords`, `description`, `fileid`, `sha1`, `pageid`, `showpage`, `raty`, `ctype`) VALUES
	(1, 1, 'writeup', 1, 1, 0, 2, 0, 0, 0, 1, 1646362013, 1646361994, 0, '', 'writeup', '1', 'e63ed980199fab33e7e42417ff59a3e2', 0, 0, '0', 0);
/*!40000 ALTER TABLE `5isns_doccon` ENABLE KEYS */;

-- 导出  表 cms.5isns_file 结构
CREATE TABLE IF NOT EXISTS `5isns_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '我的附件，便于清理附件',
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT '我的帖子id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0正常1帖子2文档3话题4会员组5认证材料',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `savename` varchar(100) NOT NULL DEFAULT '' COMMENT '保存名称',
  `savepath` varchar(255) NOT NULL DEFAULT '' COMMENT '文件保存路径',
  `ext` char(10) NOT NULL DEFAULT '' COMMENT '文件后缀',
  `mime` char(50) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `size` int(15) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` char(100) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文件表';

-- 正在导出表  cms.5isns_file 的数据：1 rows
DELETE FROM `5isns_file`;
/*!40000 ALTER TABLE `5isns_file` DISABLE KEYS */;
INSERT INTO `5isns_file` (`id`, `uid`, `tid`, `type`, `name`, `savename`, `savepath`, `ext`, `mime`, `size`, `sha1`, `width`, `height`, `comment`, `score`, `downloads`, `isimage`, `create_time`, `update_time`, `status`) VALUES
	(1, 1, 1, 2, 'flag.docx', '1_e63ed980199fab33e7e42417ff59a3e2.docx', '98/1_e63ed980199fab33e7e42417ff59a3e2.docx', 'docx', 'doc', 11159, 'e63ed980199fab33e7e42417ff59a3e2', 0, 0, '', 0, 0, 0, 1646361987, 0, 1);
/*!40000 ALTER TABLE `5isns_file` ENABLE KEYS */;

-- 导出  表 cms.5isns_jubao 结构
CREATE TABLE IF NOT EXISTS `5isns_jubao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '所属会员',
  `fid` int(11) NOT NULL COMMENT '帖子文档用户',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0用户1帖子2文档',
  `reason` tinyint(1) NOT NULL DEFAULT '1' COMMENT '原因',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='举报表';

-- 正在导出表  cms.5isns_jubao 的数据：0 rows
DELETE FROM `5isns_jubao`;
/*!40000 ALTER TABLE `5isns_jubao` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_jubao` ENABLE KEYS */;

-- 导出  表 cms.5isns_kv 结构
CREATE TABLE IF NOT EXISTS `5isns_kv` (
  `k` char(32) NOT NULL DEFAULT '',
  `v` mediumtext NOT NULL,
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_kv 的数据：0 rows
DELETE FROM `5isns_kv`;
/*!40000 ALTER TABLE `5isns_kv` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_kv` ENABLE KEYS */;

-- 导出  表 cms.5isns_menu 结构
CREATE TABLE IF NOT EXISTS `5isns_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` char(255) NOT NULL DEFAULT '' COMMENT 'controller',
  `action` char(255) NOT NULL DEFAULT '' COMMENT 'action',
  `is_hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `icon` char(30) NOT NULL DEFAULT '' COMMENT '图标',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10240 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- 正在导出表  cms.5isns_menu 的数据：105 rows
DELETE FROM `5isns_menu`;
/*!40000 ALTER TABLE `5isns_menu` DISABLE KEYS */;
INSERT INTO `5isns_menu` (`id`, `name`, `pid`, `sort`, `module`, `controller`, `action`, `is_hide`, `icon`, `status`, `update_time`, `create_time`) VALUES
	(1, '系统管理', 0, 10, 'system', '', '', 0, 'fa-wrench', 1, 1491578008, 9),
	(2, '用户管理', 0, 9, 'users', '', '', 0, 'fa-group', 1, 1491578008, 9),
	(5, '帖子管理', 0, 7, 'topics', '', '', 0, 'fa-file-text-o', 1, 1491578008, 9),
	(6, '文档管理', 0, 7, 'docs', '', '', 0, 'fa-file-word-o', 1, 1491578008, 9),
	(7, '记录管理', 0, 6, 'records', '', '', 0, 'fa-bar-chart', 1, 1491578008, 9),
	(8, '前台设置', 0, 8, 'front', '', '', 0, 'fa-laptop', 1, 1491578008, 9),
	(801, '话题列表', 8, 5, 'front', 'topiccate', 'list', 0, 'fa-th-large', 1, 1491318724, 0),
	(8011, '话题编辑', 801, 0, 'front', 'topiccate', 'edit', 1, '', 1, 1491674180, 0),
	(8012, '话题删除', 801, 0, 'front', 'topiccate', 'del', 1, '', 1, 1491674201, 0),
	(8013, '话题添加', 801, 0, 'front', 'topiccate', 'add', 1, '', 1, 1491666947, 0),
	(8014, '话题批量删除', 801, 0, 'front', 'topiccate', 'alldel', 1, '', 1, 1491674201, 0),
	(8015, '话题状态更新', 801, 3, 'front', 'topiccate', 'cstatus', 1, '', 1, 1491837214, 0),
	(802, '前台导航', 8, 4, 'front', 'nav', 'list', 0, 'fa-hand-o-right', 1, 1491668183, 0),
	(8021, '导航添加', 802, 3, 'front', 'nav', 'add', 1, '', 1, 1491837214, 0),
	(8022, '导航编辑', 802, 3, 'front', 'nav', 'edit', 1, '', 1, 1491837214, 0),
	(8023, '导航批量删除', 802, 3, 'front', 'nav', 'alldel', 1, '', 1, 1491837214, 0),
	(8024, '导航删除', 802, 3, 'front', 'nav', 'del', 1, '', 1, 1491837214, 0),
	(8025, '导航状态更新', 802, 3, 'front', 'nav', 'cstatus', 1, '', 1, 1491837214, 0),
	(501, '帖子列表', 5, 5, 'topics', 'topic', 'list', 0, 'fa-file-o', 1, 1491318724, 0),
	(5011, '帖子编辑', 501, 0, 'topics', 'topic', 'edit', 1, '', 1, 1491674180, 0),
	(5012, '帖子删除', 501, 0, 'topics', 'topic', 'del', 1, '', 1, 1491674201, 0),
	(5013, '帖子添加', 501, 0, 'topics', 'topic', 'add', 1, '', 1, 1491666947, 0),
	(5014, '帖子批量删除', 501, 0, 'topics', 'topic', 'alldel', 1, '', 1, 1491674201, 0),
	(502, '帖子评论', 5, 5, 'topics', 'topic_comment', 'list', 0, 'fa-comments', 1, 1491318724, 0),
	(5021, '评论编辑', 502, 0, 'topics', 'topic_comment', 'edit', 1, '', 1, 1491674180, 0),
	(5022, '评论删除', 502, 0, 'topics', 'topic_comment', 'del', 1, '', 1, 1491674201, 0),
	(5023, '评论添加', 502, 0, 'topics', 'topic_comment', 'add', 1, '', 1, 1491666947, 0),
	(5024, '评论批量删除', 502, 0, 'topics', 'topic_comment', 'alldel', 1, '', 1, 1491674201, 0),
	(601, '文档列表', 6, 5, 'docs', 'doc', 'list', 0, 'fa-file-o', 1, 1491318724, 0),
	(6011, '文档编辑', 601, 0, 'docs', 'doc', 'edit', 1, '', 1, 1491674180, 0),
	(6012, '文档删除', 601, 0, 'docs', 'doc', 'del', 1, '', 1, 1491674201, 0),
	(6013, '文档添加', 601, 0, 'docs', 'doc', 'add', 1, '', 1, 1491666947, 0),
	(6014, '文档批量删除', 601, 0, 'docs', 'doc', 'alldel', 1, '', 1, 1491674201, 0),
	(602, '文档评论', 6, 5, 'docs', 'doc_comment', 'list', 0, 'fa-comments', 1, 1491318724, 0),
	(6021, '评论编辑', 602, 0, 'docs', 'doc_comment', 'edit', 1, '', 1, 1491674180, 0),
	(6022, '评论删除', 602, 0, 'docs', 'doc_comment', 'del', 1, '', 1, 1491674201, 0),
	(6023, '评论添加', 602, 0, 'docs', 'doc_comment', 'add', 1, '', 1, 1491666947, 0),
	(6024, '评论批量删除', 602, 0, 'docs', 'doc_comment', 'alldel', 1, '', 1, 1491674201, 0),
	(101, '菜单列表', 1, 5, 'system', 'menu', 'list', 0, 'fa-align-justify', 1, 1491318724, 0),
	(1011, '菜单编辑', 101, 0, 'system', 'menu', 'edit', 1, '', 1, 1491674180, 0),
	(1012, '菜单删除', 101, 0, 'system', 'menu', 'del', 1, '', 1, 1491674201, 0),
	(1013, '菜单添加', 101, 0, 'system', 'menu', 'add', 1, '', 1, 1491666947, 0),
	(1014, '菜单批量删除', 101, 0, 'system', 'menu', 'alldel', 1, '', 1, 1491674201, 0),
	(1015, '菜单状态更新', 101, 3, 'system', 'menu', 'cstatus', 1, '', 1, 1491837214, 0),
	(102, '系统配置', 1, 6, 'system', 'config', 'setting', 0, 'fa-cogs', 1, 1491668183, 0),
	(103, '清理缓存', 1, 0, 'system', 'sys', 'cache', 0, 'fa-sign-language', 1, 1491668183, 0),
	(104, '回收站', 1, 2, 'system', 'trash', 'list', 0, 'fa-recycle', 1, 1492320214, 1492311462),
	(1041, '数据列表', 104, 1, 'system', 'trash', 'datalist', 1, '', 1, 1491318724, 0),
	(1042, '数据删除', 104, 1, 'system', 'trash', 'datadel', 1, '', 1, 1491318724, 0),
	(1043, '数据恢复', 104, 1, 'system', 'trash', 'restoredata', 1, '', 1, 1491318724, 0),
	(105, '备份数据', 1, 1, 'system', 'database', 'list', 0, 'fa-inbox', 1, 1491318724, 0),
	(1051, '备份数据', 105, 1, 'system', 'database', 'export', 1, '', 1, 1491318724, 0),
	(1052, '优化表', 105, 1, 'system', 'database', 'optimize', 1, '', 1, 1491318724, 0),
	(1053, '修复表', 105, 1, 'system', 'database', 'repair', 1, '', 1, 1491318724, 0),
	(106, '还原数据', 1, 0, 'system', 'database', 'importlist', 0, 'fa-undo', 1, 1491318724, 0),
	(1061, '还原数据库', 106, 0, 'system', 'database', 'import', 1, '', 1, 1491318724, 0),
	(1062, '删除数据库', 106, 0, 'system', 'database', 'delete', 1, '', 1, 1491318724, 0),
	(1063, '下载备份', 106, 0, 'system', 'database', 'download', 1, '', 1, 1491318724, 0),
	(107, '积分规则', 1, 5, 'system', 'pointrule', 'list', 0, 'fa-align-justify', 1, 1491318724, 0),
	(1071, '规则编辑', 107, 0, 'system', 'pointrule', 'edit', 1, '', 1, 1491674180, 0),
	(1072, '规则删除', 107, 0, 'system', 'pointrule', 'del', 1, '', 1, 1491674201, 0),
	(1073, '规则添加', 107, 0, 'system', 'pointrule', 'add', 1, '', 1, 1491666947, 0),
	(1074, '规则批量删除', 107, 0, 'system', 'pointrule', 'alldel', 1, '', 1, 1491674201, 0),
	(1075, '规则状态更新', 107, 3, 'system', 'pointrule', 'cstatus', 1, '', 1, 1491837214, 0),
	(201, '会员列表', 2, 3, 'users', 'user', 'list', 0, 'fa-user', 1, 1491837214, 0),
	(2011, '会员添加', 201, 3, 'users', 'user', 'add', 1, '', 1, 1491837214, 0),
	(2012, '会员编辑', 201, 3, 'users', 'user', 'edit', 1, '', 1, 1491837214, 0),
	(2013, '会员批量删除', 201, 3, 'users', 'user', 'alldel', 1, '', 1, 1491837214, 0),
	(2014, '会员删除', 201, 3, 'users', 'user', 'del', 1, '', 1, 1491837214, 0),
	(2015, '会员授权', 201, 3, 'users', 'user', 'auth', 1, '', 1, 1491837214, 0),
	(202, '会员等级', 2, 2, 'users', 'usergrade', 'list', 0, 'fa-signal', 1, 1491837214, 0),
	(2021, '会员等级添加', 202, 3, 'users', 'usergrade', 'add', 1, '', 1, 1491837214, 0),
	(2022, '会员等级编辑', 202, 3, 'users', 'usergrade', 'edit', 1, '', 1, 1491837214, 0),
	(2023, '会员等级批量删除', 202, 3, 'users', 'usergrade', 'alldel', 1, '', 1, 1491837214, 0),
	(2024, '会员等级删除', 202, 3, 'users', 'usergrade', 'del', 1, '', 1, 1491837214, 0),
	(2025, '会员等级授权', 202, 3, 'users', 'usergrade', 'auth', 1, '', 1, 1491837214, 0),
	(204, '会员审核', 2, 1, 'users', 'rzuser', 'list', 0, 'fa-id-card', 1, 1492000451, 0),
	(2041, '认证审核', 204, 3, 'users', 'rzuser', 'cstatus', 1, '', 1, 1491837214, 0),
	(701, '积分记录', 7, 3, 'records', 'pointnote', 'list', 0, 'fa-database', 1, 1491837214, 0),
	(7011, '记录添加', 701, 3, 'records', 'pointnote', 'add', 1, '', 1, 1491837214, 0),
	(7012, '记录编辑', 701, 3, 'records', 'pointnote', 'edit', 1, '', 1, 1491837214, 0),
	(7013, '记录批量删除', 701, 3, 'records', 'pointnote', 'alldel', 1, '', 1, 1491837214, 0),
	(7014, '记录删除', 701, 3, 'records', 'pointnote', 'del', 1, '', 1, 1491837214, 0),
	(702, '消息记录', 7, 2, 'records', 'message', 'list', 0, 'fa-volume-up', 1, 1491318724, 0),
	(7021, '消息添加', 702, 3, 'records', 'message', 'add', 1, '', 1, 1491837214, 0),
	(7022, '消息编辑', 702, 3, 'records', 'message', 'edit', 1, '', 1, 1491837214, 0),
	(7023, '消息批量删除', 702, 3, 'records', 'message', 'alldel', 1, '', 1, 1491837214, 0),
	(7024, '消息删除', 702, 3, 'records', 'message', 'del', 1, '', 1, 1491837214, 0),
	(703, '举报记录', 7, 2, 'records', 'jubao', 'list', 0, 'fa-volume-up', 1, 1491318724, 0),
	(7031, '举报批量删除', 703, 3, 'records', 'jubao', 'alldel', 1, '', 1, 1491837214, 0),
	(7032, '举报删除', 703, 3, 'records', 'jubao', 'del', 1, '', 1, 1491837214, 0),
	(704, '提现记录', 7, 3, 'records', 'tixian', 'list', 0, 'fa-database', 1, 1491837214, 0),
	(7041, '提现通过', 704, 3, 'records', 'tixian', 'cstatus', 1, '', 1, 1491837214, 0),
	(7042, '删除申请', 704, 3, 'records', 'tixian', 'del', 1, '', 1, 1491837214, 0),
	(4, '扩展管理', 0, 7, 'expand', '', '', 0, 'fa-linode', 1, 1491578008, 9),
	(401, '插件列表', 4, 5, 'expand', 'plugins', 'list', 0, 'fa-file-o', 1, 1491318724, 0),
	(4011, '插件安装', 401, 0, 'expand', 'plugins', 'install', 1, '', 1, 1491674180, 0),
	(4012, '插件卸载', 401, 0, 'expand', 'plugins', 'uninstall', 1, '', 1, 1491674201, 0),
	(4013, '插件禁用', 401, 0, 'expand', 'plugins', 'forbidden', 1, '', 1, 1491666947, 0),
	(4014, '插件配置', 401, 0, 'expand', 'plugins', 'config', 1, '', 1, 1491666947, 0),
	(4015, '插件数据', 401, 0, 'expand', 'plugins', 'manage', 1, '', 1, 1491666947, 0),
	(402, '模块列表', 4, 5, 'expand', 'modules', 'list', 0, 'fa-file-o', 1, 1491318724, 0),
	(4021, '模块安装', 402, 0, 'expand', 'modules', 'install', 1, '', 1, 1491674180, 0),
	(4022, '模块卸载', 402, 0, 'expand', 'modules', 'uninstall', 1, '', 1, 1491674201, 0),
	(4023, '模块禁用', 402, 0, 'expand', 'modules', 'forbidden', 1, '', 1, 1491666947, 0);
/*!40000 ALTER TABLE `5isns_menu` ENABLE KEYS */;

-- 导出  表 cms.5isns_message 结构
CREATE TABLE IF NOT EXISTS `5isns_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '所属会员',
  `touid` int(11) NOT NULL DEFAULT '0' COMMENT '发送对象',
  `type` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1系统消息2私信',
  `content` text NOT NULL COMMENT '内容',
  `id_to_id` varchar(100) NOT NULL COMMENT '对话',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态2表示已读',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息表';

-- 正在导出表  cms.5isns_message 的数据：0 rows
DELETE FROM `5isns_message`;
/*!40000 ALTER TABLE `5isns_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_message` ENABLE KEYS */;

-- 导出  表 cms.5isns_nav 结构
CREATE TABLE IF NOT EXISTS `5isns_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL COMMENT '顶部还是底部',
  `name` varchar(20) NOT NULL COMMENT '导航名称',
  `alias` varchar(20) DEFAULT '' COMMENT '导航别称',
  `link` varchar(255) DEFAULT '' COMMENT '导航链接',
  `icon` varchar(255) DEFAULT '' COMMENT '导航图标',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='导航表';

-- 正在导出表  cms.5isns_nav 的数据：3 rows
DELETE FROM `5isns_nav`;
/*!40000 ALTER TABLE `5isns_nav` DISABLE KEYS */;
INSERT INTO `5isns_nav` (`id`, `pid`, `name`, `alias`, `link`, `icon`, `target`, `status`, `sort`, `update_time`, `create_time`) VALUES
	(1, 1, '文章', 'thread', 'thread-list', '', '_self', 1, 0, 0, 0),
	(2, 1, '文档', 'doc', 'doc-list', '', '_self', 1, 0, 0, 0),
	(3, 1, '话题', 'tags', 'tags-taglist', '', '_self', 1, 0, 0, 0);
/*!40000 ALTER TABLE `5isns_nav` ENABLE KEYS */;

-- 导出  表 cms.5isns_plugins 结构
CREATE TABLE IF NOT EXISTS `5isns_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '插件文件名',
  `cnname` varchar(100) NOT NULL DEFAULT '' COMMENT '插件中文名称',
  `author` varchar(100) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(100) NOT NULL DEFAULT '' COMMENT '版本',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '插件描述',
  `config` text COMMENT '配置数据',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件表';

-- 正在导出表  cms.5isns_plugins 的数据：0 rows
DELETE FROM `5isns_plugins`;
/*!40000 ALTER TABLE `5isns_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_plugins` ENABLE KEYS */;

-- 导出  表 cms.5isns_point_note 结构
CREATE TABLE IF NOT EXISTS `5isns_point_note` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `inctype` char(1) NOT NULL DEFAULT '+',
  `score` int(10) NOT NULL,
  `itemid` varchar(11) NOT NULL DEFAULT '0' COMMENT '表示帖子或者其他各种类型的主键id',
  `to_uid` varchar(11) NOT NULL DEFAULT '0' COMMENT '规则id或者受益人uid',
  `scoretype` varchar(30) NOT NULL DEFAULT '' COMMENT '积分类型',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1下载附件2下载文档3付费阅读4充值5购买会员6打赏7提现8积分规则',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `description` varchar(200) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_point_note 的数据：0 rows
DELETE FROM `5isns_point_note`;
/*!40000 ALTER TABLE `5isns_point_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_point_note` ENABLE KEYS */;

-- 导出  表 cms.5isns_point_rule 结构
CREATE TABLE IF NOT EXISTS `5isns_point_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则ID',
  `controller` varchar(30) NOT NULL DEFAULT '' COMMENT '规则名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1为增加2为减少',
  `score` varchar(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `num` varchar(11) NOT NULL DEFAULT '0' COMMENT '二十四小时奖赏次数',
  `tasknum` varchar(11) NOT NULL DEFAULT '0' COMMENT '奖赏次数',
  `scoretype` varchar(30) NOT NULL DEFAULT '' COMMENT '积分类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分规则表';

-- 正在导出表  cms.5isns_point_rule 的数据：0 rows
DELETE FROM `5isns_point_rule`;
/*!40000 ALTER TABLE `5isns_point_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_point_rule` ENABLE KEYS */;

-- 导出  表 cms.5isns_queue 结构
CREATE TABLE IF NOT EXISTS `5isns_queue` (
  `queueid` int(11) unsigned NOT NULL DEFAULT '0',
  `v` int(11) NOT NULL DEFAULT '0',
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `queueid` (`queueid`,`v`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_queue 的数据：0 rows
DELETE FROM `5isns_queue`;
/*!40000 ALTER TABLE `5isns_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_queue` ENABLE KEYS */;

-- 导出  表 cms.5isns_raty_user 结构
CREATE TABLE IF NOT EXISTS `5isns_raty_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `score` int(10) NOT NULL,
  `itemid` int(11) NOT NULL COMMENT '文档id',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_raty_user 的数据：0 rows
DELETE FROM `5isns_raty_user`;
/*!40000 ALTER TABLE `5isns_raty_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_raty_user` ENABLE KEYS */;

-- 导出  表 cms.5isns_rzuser 结构
CREATE TABLE IF NOT EXISTS `5isns_rzuser` (
  `uid` int(11) NOT NULL COMMENT '会员',
  `mobile` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `name` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `statusdes` varchar(200) DEFAULT NULL COMMENT '认证描述',
  `idcard` varchar(32) NOT NULL COMMENT '身份证或机构代码证',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '证件照片',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键词',
  `rzdescrib` varchar(200) DEFAULT NULL COMMENT '关键词',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1个人2企业',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1通过',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户认证表';

-- 正在导出表  cms.5isns_rzuser 的数据：0 rows
DELETE FROM `5isns_rzuser`;
/*!40000 ALTER TABLE `5isns_rzuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_rzuser` ENABLE KEYS */;

-- 导出  表 cms.5isns_searchword 结构
CREATE TABLE IF NOT EXISTS `5isns_searchword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '热搜关键词',
  `uid` int(10) NOT NULL,
  `num` int(20) NOT NULL DEFAULT '1' COMMENT '搜索次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户热搜表';

-- 正在导出表  cms.5isns_searchword 的数据：0 rows
DELETE FROM `5isns_searchword`;
/*!40000 ALTER TABLE `5isns_searchword` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_searchword` ENABLE KEYS */;

-- 导出  表 cms.5isns_session 结构
CREATE TABLE IF NOT EXISTS `5isns_session` (
  `sid` char(32) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `fid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `url` char(32) NOT NULL DEFAULT '',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `useragent` char(128) NOT NULL DEFAULT '',
  `data` char(255) NOT NULL DEFAULT '',
  `bigdata` tinyint(1) NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `ip` (`ip`),
  KEY `fid` (`fid`),
  KEY `uid_last_date` (`uid`,`last_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_session 的数据：1 rows
DELETE FROM `5isns_session`;
/*!40000 ALTER TABLE `5isns_session` DISABLE KEYS */;
INSERT INTO `5isns_session` (`sid`, `uid`, `fid`, `url`, `ip`, `useragent`, `data`, `bigdata`, `last_date`) VALUES
	('7kdbj17r2m1g8o77c9o4f3ucq5', 1, 0, '?c=sys', 1881468121, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.109 Safari/537.36', 'doc_create|a:0:{}thread_create|a:1:{s:5:"token";s:32:"e5aca0e5c6c727cdc07e102a94476c7e";}thread_con|a:1:{s:5:"token";s:32:"e5aca0e5c6c727cdc07e102a94476c7e";}doc_con|a:1:{s:5:"token";s:32:"3a5fdf7a2626156e30fa40a933907d76";}', 0, 1646362109);
/*!40000 ALTER TABLE `5isns_session` ENABLE KEYS */;

-- 导出  表 cms.5isns_session_data 结构
CREATE TABLE IF NOT EXISTS `5isns_session_data` (
  `sid` char(32) NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_session_data 的数据：0 rows
DELETE FROM `5isns_session_data`;
/*!40000 ALTER TABLE `5isns_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_session_data` ENABLE KEYS */;

-- 导出  表 cms.5isns_tagsandother 结构
CREATE TABLE IF NOT EXISTS `5isns_tagsandother` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '话题名称',
  `tid` int(11) NOT NULL COMMENT '话题id',
  `did` int(11) NOT NULL COMMENT '管理目标id',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '关联目标类型0用户1帖子2文档',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_tagsandother 的数据：0 rows
DELETE FROM `5isns_tagsandother`;
/*!40000 ALTER TABLE `5isns_tagsandother` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_tagsandother` ENABLE KEYS */;

-- 导出  表 cms.5isns_tixian 结构
CREATE TABLE IF NOT EXISTS `5isns_tixian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `score` int(11) NOT NULL DEFAULT '0',
  `rmb` varchar(100) NOT NULL DEFAULT '' COMMENT '金额',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '账号',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1支付宝',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '申请时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '通过时间',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提现表';

-- 正在导出表  cms.5isns_tixian 的数据：0 rows
DELETE FROM `5isns_tixian`;
/*!40000 ALTER TABLE `5isns_tixian` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_tixian` ENABLE KEYS */;

-- 导出  表 cms.5isns_topic 结构
CREATE TABLE IF NOT EXISTS `5isns_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1单页2帖子',
  `free` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0免费1付费2部分收费',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '付费积分',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `choice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '精贴',
  `settop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '顶置',
  `sc` int(11) NOT NULL DEFAULT '0' COMMENT '收藏',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `img_num` int(11) NOT NULL DEFAULT '0' COMMENT '图片数量',
  `file_num` int(11) NOT NULL DEFAULT '0' COMMENT '附件数量',
  `filelist` text COMMENT '附件列表',
  `first_img` varchar(100) DEFAULT NULL COMMENT '首图片',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply` int(11) NOT NULL DEFAULT '0' COMMENT '回复',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键词',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_topic 的数据：1 rows
DELETE FROM `5isns_topic`;
/*!40000 ALTER TABLE `5isns_topic` DISABLE KEYS */;
INSERT INTO `5isns_topic` (`id`, `uid`, `type`, `free`, `score`, `title`, `choice`, `settop`, `sc`, `view`, `img_num`, `file_num`, `filelist`, `first_img`, `status`, `update_time`, `create_time`, `reply`, `keywords`, `description`, `content`) VALUES
	(1, 1, 2, 0, 0, 'F·L·A·G', 1, 0, 0, 2, 0, 0, '', '', 1, 1646362039, 1646361730, 0, '', '？？？？？', '&lt;p&gt;？？？？？&lt;/p&gt;');
/*!40000 ALTER TABLE `5isns_topic` ENABLE KEYS */;

-- 导出  表 cms.5isns_topiccate 结构
CREATE TABLE IF NOT EXISTS `5isns_topiccate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '话题ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '话题名称',
  `gradeid` varchar(255) NOT NULL DEFAULT '' COMMENT '限制发布的用户组',
  `choice` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐话题',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '话题描述',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '话题图片id',
  `characters` varchar(10) NOT NULL COMMENT '所属字母',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `doc_num` int(11) NOT NULL DEFAULT '0' COMMENT '文档数量',
  `topic_num` int(11) NOT NULL DEFAULT '0' COMMENT '帖子数量',
  `user_num` int(11) NOT NULL DEFAULT '0' COMMENT '关注数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题表';

-- 正在导出表  cms.5isns_topiccate 的数据：0 rows
DELETE FROM `5isns_topiccate`;
/*!40000 ALTER TABLE `5isns_topiccate` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_topiccate` ENABLE KEYS */;

-- 导出  表 cms.5isns_user 结构
CREATE TABLE IF NOT EXISTS `5isns_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userip` varchar(32) NOT NULL COMMENT 'IP',
  `nickname` char(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `username` varchar(32) NOT NULL COMMENT '名称',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `avatar` int(11) DEFAULT '0' COMMENT '头像',
  `usermail` varchar(32) NOT NULL COMMENT '邮箱',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `regtime` varchar(32) NOT NULL COMMENT '注册时间',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '正常',
  `rz` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否认证,什么认证类型',
  `statusdes` varchar(200) DEFAULT NULL COMMENT '认证描述',
  `userhome` varchar(32) DEFAULT NULL COMMENT '家乡',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `last_login_time` varchar(20) DEFAULT '0' COMMENT '最后登陆时间',
  `last_login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  `salt` varchar(20) DEFAULT NULL COMMENT 'salt',
  `logins` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登錄次數',
  `leader_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '上级会员ID',
  `is_inside` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为后台使用者',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `usermail` (`usermail`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  cms.5isns_user 的数据：1 rows
DELETE FROM `5isns_user`;
/*!40000 ALTER TABLE `5isns_user` DISABLE KEYS */;
INSERT INTO `5isns_user` (`id`, `userip`, `nickname`, `username`, `password`, `avatar`, `usermail`, `mobile`, `regtime`, `sex`, `status`, `rz`, `statusdes`, `userhome`, `description`, `last_login_time`, `last_login_ip`, `salt`, `logins`, `leader_id`, `is_inside`) VALUES
	(1, '1881468121', 'admin', 'admin', '438a9aeb6935d9a33963e446c3f121a8', 0, 'admin@admin.com', '', '1646360549', 0, 1, 0, NULL, NULL, NULL, '1646361214', '1881468121', 'NMPS95H5MPDH4VB7', 2, 1, 1);
/*!40000 ALTER TABLE `5isns_user` ENABLE KEYS */;

-- 导出  表 cms.5isns_usergrade 结构
CREATE TABLE IF NOT EXISTS `5isns_usergrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `score` int(11) NOT NULL COMMENT '等级所需积分',
  `gmtype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1购买2升级',
  `type` varchar(32) NOT NULL DEFAULT '0' COMMENT '1发帖2发文档3回帖4查看付费内容5下载附件6下载文档',
  `days` int(11) NOT NULL DEFAULT '0' COMMENT '天数涉及查看付费内容|下载附件|下载文档',
  `nums` int(11) NOT NULL DEFAULT '0' COMMENT '次数涉及下载附件|下载文档',
  `bili` int(11) NOT NULL DEFAULT '0' COMMENT '比例涉及付费内容|下载附件|下载文档',
  `limittime` varchar(255) NOT NULL DEFAULT '0' COMMENT '时间涉及发帖|发文档|回帖|下载',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '等级图标id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员等级表';

-- 正在导出表  cms.5isns_usergrade 的数据：1 rows
DELETE FROM `5isns_usergrade`;
/*!40000 ALTER TABLE `5isns_usergrade` DISABLE KEYS */;
INSERT INTO `5isns_usergrade` (`id`, `name`, `score`, `gmtype`, `type`, `days`, `nums`, `bili`, `limittime`, `cover_id`, `status`, `create_time`, `update_time`) VALUES
	(2, '普通会员', 0, 2, '1,2,3,4', 0, 0, 100, '0,0,0,0', 0, 1, 1556592145, 0);
/*!40000 ALTER TABLE `5isns_usergrade` ENABLE KEYS */;

-- 导出  表 cms.5isns_usersandother 结构
CREATE TABLE IF NOT EXISTS `5isns_usersandother` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '名称',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `did` int(11) NOT NULL COMMENT '管理目标id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '关联目标类型0用户1帖子2话题3文档4消息5评论点赞',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.5isns_usersandother 的数据：0 rows
DELETE FROM `5isns_usersandother`;
/*!40000 ALTER TABLE `5isns_usersandother` DISABLE KEYS */;
/*!40000 ALTER TABLE `5isns_usersandother` ENABLE KEYS */;

-- 导出  表 cms.5isns_user_extend 结构
CREATE TABLE IF NOT EXISTS `5isns_user_extend` (
  `uid` int(11) NOT NULL COMMENT '会员',
  `point` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `expoint1` int(11) DEFAULT '0' COMMENT '扩展积分1',
  `expoint2` int(11) DEFAULT '0' COMMENT '扩展积分2',
  `expoint3` int(11) DEFAULT '0' COMMENT '扩展积分3',
  `doc_num` int(11) DEFAULT '0' COMMENT '文档数量',
  `topic_num` int(11) DEFAULT '0' COMMENT '帖子数量',
  `fensi_num` int(11) DEFAULT '0' COMMENT '粉丝数量',
  `cate_num` int(11) DEFAULT '0' COMMENT '我的话题数量',
  `focus_mydoc_num` int(11) DEFAULT '0' COMMENT '被收藏文档数量',
  `focus_mytopic_num` int(11) DEFAULT '0' COMMENT '被收藏帖子数量',
  `focus_mycate_num` int(11) DEFAULT '0' COMMENT '被关注话题数量',
  `focus_user_num` int(11) DEFAULT '0' COMMENT '关注用户数量',
  `focus_doc_num` int(11) DEFAULT '0' COMMENT '收藏文档数量',
  `focus_topic_num` int(11) DEFAULT '0' COMMENT '收藏帖子数量',
  `focus_cate_num` int(11) DEFAULT '0' COMMENT '关注话题数量',
  `grades` tinyint(1) NOT NULL DEFAULT '0' COMMENT '购买等级',
  `grades_days` int(11) DEFAULT '-1' COMMENT '天数',
  `grades_nums` int(11) DEFAULT '-1' COMMENT '次数',
  `grades_bili` int(11) NOT NULL DEFAULT '0' COMMENT '比例涉及付费内容|下载附件|下载文档',
  `grades_limittime` varchar(255) NOT NULL DEFAULT '0' COMMENT '时间限制',
  `grades_type` varchar(255) NOT NULL DEFAULT '0' COMMENT '权限',
  `grades_name` varchar(100) DEFAULT NULL COMMENT '购买等级名称',
  `grades_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '购买更新时间',
  `up_grades` tinyint(1) NOT NULL DEFAULT '0' COMMENT '升级等级',
  `up_grades_bili` int(11) NOT NULL DEFAULT '0' COMMENT '比例涉及付费内容|下载附件|下载文档',
  `up_grades_limittime` varchar(255) NOT NULL DEFAULT '0' COMMENT '时间限制',
  `up_grades_type` varchar(255) NOT NULL DEFAULT '0' COMMENT '权限',
  `up_grades_name` varchar(100) DEFAULT NULL COMMENT '升级等级名称',
  `up_grades_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '升级更新时间',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键词',
  `notify_set` text COMMENT '请求数据',
  `mailstatus` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱是否认证',
  `mobilestatus` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机是否认证',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1通过',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户附加信息表';

-- 正在导出表  cms.5isns_user_extend 的数据：1 rows
DELETE FROM `5isns_user_extend`;
/*!40000 ALTER TABLE `5isns_user_extend` DISABLE KEYS */;
INSERT INTO `5isns_user_extend` (`uid`, `point`, `expoint1`, `expoint2`, `expoint3`, `doc_num`, `topic_num`, `fensi_num`, `cate_num`, `focus_mydoc_num`, `focus_mytopic_num`, `focus_mycate_num`, `focus_user_num`, `focus_doc_num`, `focus_topic_num`, `focus_cate_num`, `grades`, `grades_days`, `grades_nums`, `grades_bili`, `grades_limittime`, `grades_type`, `grades_name`, `grades_time`, `up_grades`, `up_grades_bili`, `up_grades_limittime`, `up_grades_type`, `up_grades_name`, `up_grades_time`, `keywords`, `notify_set`, `mailstatus`, `mobilestatus`, `status`, `update_time`, `create_time`) VALUES
	(1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, '0', '0', NULL, 0, 2, 100, '0,0,0,0', '1,2,3,4', '普通会员', 1646360563, NULL, NULL, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `5isns_user_extend` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
