-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.47-0ubuntu0.14.04.1 - (Ubuntu)
-- 服务器操作系统:                      debian-linux-gnu
-- HeidiSQL 版本:                  11.1.0.6116
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

-- 导出  表 cms.yx_admin 结构
CREATE TABLE IF NOT EXISTS `yx_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` tinyint(4) NOT NULL DEFAULT '1',
  `username` char(10) NOT NULL,
  `realname` char(15) NOT NULL,
  `password` char(32) NOT NULL,
  `lastlogin_time` int(10) unsigned NOT NULL,
  `lastlogin_ip` char(15) NOT NULL,
  `iflock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortpower` text NOT NULL,
  `extendpower` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usename` (`username`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- 正在导出表  cms.yx_admin 的数据：1 rows
DELETE FROM `yx_admin`;
/*!40000 ALTER TABLE `yx_admin` DISABLE KEYS */;
INSERT INTO `yx_admin` (`id`, `groupid`, `username`, `realname`, `password`, `lastlogin_time`, `lastlogin_ip`, `iflock`, `sortpower`, `extendpower`) VALUES
	(1, 1, 'admin', 'YX', '168a73655bfecefdb15b14984dd2ad60', 1625308617, '112.236.172.52', 0, '', '');
/*!40000 ALTER TABLE `yx_admin` ENABLE KEYS */;

-- 导出  表 cms.yx_collectrules 结构
CREATE TABLE IF NOT EXISTS `yx_collectrules` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL COMMENT '采集项目名',
  `url` varchar(255) NOT NULL COMMENT '列表url',
  `replaces` text NOT NULL COMMENT '内容替换',
  `banhtml` varchar(255) NOT NULL COMMENT '禁止的html标签',
  `sort` varchar(350) NOT NULL COMMENT '栏目id',
  `exsort` varchar(350) NOT NULL,
  `pages` text NOT NULL COMMENT '分页设置',
  `numlimit` int(5) NOT NULL COMMENT '数量限制',
  `listrangrule` varchar(100) NOT NULL COMMENT '列表范围规则',
  `listsrcrule` varchar(100) NOT NULL COMMENT '内容src规则',
  `account` varchar(25) NOT NULL COMMENT '发布账户',
  `conrangrule` varchar(100) NOT NULL COMMENT '内容范围',
  `titlerule` varchar(100) NOT NULL COMMENT '标题规则',
  `places` varchar(100) NOT NULL COMMENT '内容定位',
  `picturerule` varchar(100) NOT NULL COMMENT '封面图规则',
  `keywordsrule` varchar(100) NOT NULL COMMENT '关键字规则',
  `descriptionrule` varchar(100) NOT NULL COMMENT '描述规则',
  `contentrule` varchar(100) NOT NULL COMMENT '内容规则',
  `method` varchar(100) NOT NULL,
  `tpcontent` varchar(100) NOT NULL,
  `norder` int(4) NOT NULL,
  `recmd` tinyint(1) NOT NULL,
  `hitsrule` varchar(100) NOT NULL,
  `ispass` tinyint(1) NOT NULL,
  `origin` varchar(30) NOT NULL,
  `addtimerule` varchar(100) NOT NULL,
  `releids` varchar(255) NOT NULL,
  `photolistrule` varchar(100) NOT NULL COMMENT '图集src规则',
  `conlistrule` varchar(100) NOT NULL COMMENT '图片描述规则',
  `exrule` text NOT NULL COMMENT '拓展字段规则',
  `lasttime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_collectrules 的数据：1 rows
DELETE FROM `yx_collectrules`;
/*!40000 ALTER TABLE `yx_collectrules` DISABLE KEYS */;
INSERT INTO `yx_collectrules` (`id`, `pname`, `url`, `replaces`, `banhtml`, `sort`, `exsort`, `pages`, `numlimit`, `listrangrule`, `listsrcrule`, `account`, `conrangrule`, `titlerule`, `places`, `picturerule`, `keywordsrule`, `descriptionrule`, `contentrule`, `method`, `tpcontent`, `norder`, `recmd`, `hitsrule`, `ispass`, `origin`, `addtimerule`, `releids`, `photolistrule`, `conlistrule`, `exrule`, `lasttime`) VALUES
	(2, '演示站采集测试', 'http://www.oschina.net/code/list?lang=&amp;catalog=&amp;show=time&amp;sort=&amp;p=*', '', 'iframe,object,script,html,body', ',000000,100001,100005,100016', '', '1', 0, '.code_list li', '.code_title a:eq(0)', 'admin', '.Body', '.QTitle h1', '', '.ShowUserOutline img', '', '', '.Content', 'default/column/content', 'news_content', 0, 0, '1,100', 1, '原创', '2013-11-15 11:10:10,2014-11-15 11:10:10', '', '', '', '', 0);
/*!40000 ALTER TABLE `yx_collectrules` ENABLE KEYS */;

-- 导出  表 cms.yx_extend 结构
CREATE TABLE IF NOT EXISTS `yx_extend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0',
  `tableinfo` varchar(255) DEFAULT NULL,
  `type` int(4) DEFAULT '0',
  `defvalue` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ifsearch` tinyint(1) NOT NULL DEFAULT '0',
  `norder` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_extend 的数据：19 rows
DELETE FROM `yx_extend`;
/*!40000 ALTER TABLE `yx_extend` DISABLE KEYS */;
INSERT INTO `yx_extend` (`id`, `pid`, `tableinfo`, `type`, `defvalue`, `name`, `ifsearch`, `norder`) VALUES
	(7, 0, 'extend_conment', 1, '', '内容评论', 0, 0),
	(8, 7, 'aid', 1, '0', '资讯id', 0, 2),
	(9, 7, 'comby', 1, '', '评论者', 0, 4),
	(10, 7, 'comcontent', 3, '', '评论内容', 0, 3),
	(11, 7, 'type', 1, '0', '类型', 0, 1),
	(12, 0, 'extend_guestbook', 1, '', '留言本', 0, 0),
	(13, 12, 'tname', 1, '', '姓名', 0, 0),
	(14, 12, 'tel', 1, '', '电话', 0, 0),
	(15, 12, 'qq', 1, '', 'QQ', 0, 0),
	(16, 12, 'content', 3, '', '留言内容', 0, 0),
	(17, 12, 'reply', 2, '', '回复内容', 0, 0),
	(18, 0, 'extend_product', 0, '', '产品信息', 0, 0),
	(19, 18, 'pinpai', 1, '', '品牌', 0, 0),
	(20, 18, 'caizhi', 1, '', '材质', 0, 0),
	(21, 18, 'chandi', 1, '', '产地', 0, 0),
	(22, 18, 'jiage', 1, '0', '价格', 0, 0),
	(23, 7, 'title', 2, '', '标题', 0, 5),
	(24, 7, 'sortname', 1, '', '栏目名称', 0, 6),
	(25, 7, 'backcontent', 2, '', '评论回复', 0, 0);
/*!40000 ALTER TABLE `yx_extend` ENABLE KEYS */;

-- 导出  表 cms.yx_extend_conment 结构
CREATE TABLE IF NOT EXISTS `yx_extend_conment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `ispass` tinyint(1) NOT NULL,
  `aid` varchar(250) NOT NULL,
  `comby` varchar(250) NOT NULL,
  `comcontent` text NOT NULL,
  `type` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sortname` varchar(250) NOT NULL,
  `backcontent` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_extend_conment 的数据：0 rows
DELETE FROM `yx_extend_conment`;
/*!40000 ALTER TABLE `yx_extend_conment` DISABLE KEYS */;
/*!40000 ALTER TABLE `yx_extend_conment` ENABLE KEYS */;

-- 导出  表 cms.yx_extend_guestbook 结构
CREATE TABLE IF NOT EXISTS `yx_extend_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addtime` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `ispass` tinyint(1) NOT NULL,
  `tname` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `qq` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `reply` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_extend_guestbook 的数据：1 rows
DELETE FROM `yx_extend_guestbook`;
/*!40000 ALTER TABLE `yx_extend_guestbook` DISABLE KEYS */;
INSERT INTO `yx_extend_guestbook` (`id`, `addtime`, `ip`, `ispass`, `tname`, `tel`, `qq`, `content`, `reply`) VALUES
	(1, 1439525302, 'unknown', 1, '李某某', '13865748765', '404133748', '测试内容', '测试回复');
/*!40000 ALTER TABLE `yx_extend_guestbook` ENABLE KEYS */;

-- 导出  表 cms.yx_extend_product 结构
CREATE TABLE IF NOT EXISTS `yx_extend_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pinpai` varchar(250) NOT NULL,
  `caizhi` varchar(250) NOT NULL,
  `chandi` varchar(250) NOT NULL,
  `jiage` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_extend_product 的数据：6 rows
DELETE FROM `yx_extend_product`;
/*!40000 ALTER TABLE `yx_extend_product` DISABLE KEYS */;
INSERT INTO `yx_extend_product` (`id`, `pinpai`, `caizhi`, `chandi`, `jiage`) VALUES
	(1, '', '', '', ''),
	(2, '', '', '', ''),
	(3, '山水之间', '陶瓷', '景德镇市茶餐具', '99'),
	(4, '宜兴龙纹', '紫砂', '江苏宜兴', '2000'),
	(5, 'housing', '陶瓷', '英国', '30'),
	(6, 'Zassenhaus', '原木，钢', '德国', '300');
/*!40000 ALTER TABLE `yx_extend_product` ENABLE KEYS */;

-- 导出  表 cms.yx_fragment 结构
CREATE TABLE IF NOT EXISTS `yx_fragment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL COMMENT '前台调用标记',
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_fragment 的数据：1 rows
DELETE FROM `yx_fragment`;
/*!40000 ALTER TABLE `yx_fragment` DISABLE KEYS */;
INSERT INTO `yx_fragment` (`id`, `title`, `sign`, `content`) VALUES
	(1, '公告信息', 'notice', '本站为YXcms的默认演示模板，YXcms是一款基于PHP+MYSQL构建的高效网站管理系统。 后台地址请在网址后面加上/index.php?r=admin进入。 后台的用户名:admin;密码:123456，请进入后修改默认密码。');
/*!40000 ALTER TABLE `yx_fragment` ENABLE KEYS */;

-- 导出  表 cms.yx_group 结构
CREATE TABLE IF NOT EXISTS `yx_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `power` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_group 的数据：2 rows
DELETE FROM `yx_group`;
/*!40000 ALTER TABLE `yx_group` DISABLE KEYS */;
INSERT INTO `yx_group` (`id`, `name`, `power`) VALUES
	(1, '超级管理员', '-1'),
	(2, '网站编辑', '283,1,228,10,11,12,13,14,15,16,157,158,174,268,288,317,22,23,24,25,26,27,150,151,152,153,154,155,156,159,160,269,289,290,291,318,188,189,190,191,192,229,238,239,240,241,243,244,308,309,310,311,312,313');
/*!40000 ALTER TABLE `yx_group` ENABLE KEYS */;

-- 导出  表 cms.yx_link 结构
CREATE TABLE IF NOT EXISTS `yx_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) NOT NULL,
  `norder` int(5) NOT NULL COMMENT '排序',
  `name` varchar(30) NOT NULL COMMENT '站点名',
  `url` varchar(300) NOT NULL COMMENT '站点地址',
  `picture` varchar(30) NOT NULL COMMENT '本地logo',
  `logourl` varchar(50) NOT NULL COMMENT '远程logo',
  `info` varchar(300) NOT NULL COMMENT '介绍',
  `ispass` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_link 的数据：3 rows
DELETE FROM `yx_link`;
/*!40000 ALTER TABLE `yx_link` DISABLE KEYS */;
INSERT INTO `yx_link` (`id`, `groupname`, `norder`, `name`, `url`, `picture`, `logourl`, `info`, `ispass`) VALUES
	(1, 'banner', 100, '首页banner1', '#', '1435642012.png', '', '', 1),
	(2, 'banner', 100, '首页banner2', '#', '1435642060.png', '', '', 1),
	(3, 'friends', 100, 'Yxcms', 'http://www.yxcms.net', '1435642319.png', '', 'Yxcms是一款高效,灵活,实用,免费的企业建站系统', 1);
/*!40000 ALTER TABLE `yx_link` ENABLE KEYS */;

-- 导出  表 cms.yx_members 结构
CREATE TABLE IF NOT EXISTS `yx_members` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `groupid` int(3) NOT NULL,
  `account` varchar(30) NOT NULL,
  `openid` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `rmb` int(8) NOT NULL DEFAULT '0',
  `crmb` int(8) NOT NULL DEFAULT '0',
  `nickname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `headpic` varchar(80) NOT NULL,
  `regtime` int(11) NOT NULL,
  `regip` varchar(16) NOT NULL,
  `lasttime` int(11) NOT NULL,
  `lastip` varchar(16) NOT NULL,
  `islock` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_members 的数据：0 rows
DELETE FROM `yx_members`;
/*!40000 ALTER TABLE `yx_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `yx_members` ENABLE KEYS */;

-- 导出  表 cms.yx_member_group 结构
CREATE TABLE IF NOT EXISTS `yx_member_group` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `notallow` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_member_group 的数据：2 rows
DELETE FROM `yx_member_group`;
/*!40000 ALTER TABLE `yx_member_group` DISABLE KEYS */;
INSERT INTO `yx_member_group` (`id`, `name`, `notallow`) VALUES
	(1, '未登录', 'member/infor|member/order|member/news|member/photo'),
	(2, '普通会员', '');
/*!40000 ALTER TABLE `yx_member_group` ENABLE KEYS */;

-- 导出  表 cms.yx_method 结构
CREATE TABLE IF NOT EXISTS `yx_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rootid` int(10) unsigned NOT NULL,
  `pid` float unsigned NOT NULL,
  `operate` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ifmenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否菜单显示',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_method 的数据：135 rows
DELETE FROM `yx_method`;
/*!40000 ALTER TABLE `yx_method` DISABLE KEYS */;
INSERT INTO `yx_method` (`id`, `rootid`, `pid`, `operate`, `name`, `ifmenu`) VALUES
	(1, 1, 0, 'admin', '后台登陆管理', 1),
	(2, 1, 1, 'index', '管理员管理', 1),
	(4, 1, 1, 'admindel', '管理员删除', 0),
	(5, 1, 1, 'adminedit', '管理员编辑', 0),
	(6, 1, 1, 'adminlock', '管理员锁定', 0),
	(7, 1, 1, 'group', '权限管理', 1),
	(8, 1, 1, 'groupedit', '管理组编辑', 0),
	(9, 1, 1, 'groupdel', '管理组删除', 0),
	(10, 10, 0, 'news', '资讯管理', 1),
	(11, 10, 10, 'index', '已有资讯', 1),
	(12, 10, 10, 'add', '添加资讯', 1),
	(13, 10, 10, 'edit', '资讯编辑', 0),
	(14, 10, 10, 'del', '资讯删除', 0),
	(15, 10, 10, 'lock', '资讯锁定', 0),
	(16, 10, 10, 'recmd', '资讯推荐', 0),
	(17, 17, 0, 'dbback', '数据库管理', 1),
	(18, 17, 17, 'index', '数据库备份', 1),
	(19, 17, 17, 'recover', '备份恢复', 0),
	(20, 17, 17, 'detail', '备份详细', 0),
	(21, 17, 17, 'del', '备份删除', 0),
	(22, 22, 0, 'index', '后台面板', 0),
	(23, 22, 22, 'index', '后台首页', 0),
	(24, 22, 22, 'login', '登陆', 0),
	(25, 22, 22, 'logout', '退出登陆', 0),
	(26, 22, 22, 'verify', '验证码', 0),
	(27, 22, 22, 'welcome', '服务器环境', 0),
	(28, 28, 0, 'set', '全局设置', 1),
	(29, 28, 28, 'index', '网站设置', 1),
	(30, 30, 0, 'sort', '分类管理', 1),
	(31, 30, 30, 'index', '栏目列表', 1),
	(32, 30, 30, 'edit', '分类编辑', 0),
	(33, 30, 30, 'del', '分类删除', 0),
	(160, 150, 150, 'delpic', '图集单张图删除', 0),
	(277, 0, 0, 'appmanage', '应用管理', 1),
	(85, 28, 28, 'menuname', '后台功能', 1),
	(159, 150, 150, 'images_upload', '图片批量上传', 0),
	(158, 10, 10, 'FileManagerJson', '编辑器上传管理', 0),
	(157, 10, 10, 'UploadJson', '编辑器上传', 0),
	(150, 150, 0, 'photo', '图集管理', 1),
	(151, 150, 150, 'index', '已有图集', 1),
	(152, 150, 150, 'add', '添加图集', 1),
	(153, 150, 150, 'edit', '图集编辑', 0),
	(154, 150, 150, 'del', '图集删除', 0),
	(155, 150, 150, 'lock', '图集锁定', 0),
	(156, 150, 150, 'recmd', '图集推荐', 0),
	(174, 10, 10, 'cutcover', '封面图剪切', 0),
	(236, 30, 30, 'PageUploadJson', '单页上传', 0),
	(235, 30, 30, 'pageedit', '单页编辑', 0),
	(234, 30, 30, 'pageadd', '添加单页栏目', 0),
	(233, 30, 30, 'photoedit', '图集栏目编辑', 0),
	(232, 30, 30, 'photoadd', '添加图集栏目', 0),
	(231, 30, 30, 'newsedit', '文章栏目编辑', 0),
	(230, 30, 30, 'newsadd', '添加文章栏目', 0),
	(182, 28, 28, 'clear', '网站缓存', 1),
	(188, 188, 0, 'link', '友情链接', 1),
	(189, 188, 188, 'index', '链接列表', 1),
	(190, 188, 188, 'add', '添加链接', 1),
	(191, 188, 188, 'edit', '链接编辑', 0),
	(192, 188, 188, 'del', '链接删除', 0),
	(228, 1, 1, 'adminnow', '账户管理', 1),
	(229, 188, 188, 'lock', '锁定', 0),
	(237, 30, 30, 'PageFileManagerJson', '单页上传管理', 0),
	(238, 238, 0, 'fragment', '碎片管理', 1),
	(239, 238, 238, 'index', '碎片列表', 1),
	(240, 238, 238, 'add', '碎片添加', 1),
	(241, 238, 238, 'edit', '碎片编辑', 0),
	(242, 238, 238, 'del', '碎片删除', 0),
	(243, 238, 238, 'UploadJson', '编辑器上传', 0),
	(244, 238, 238, 'FileManagerJson', '编辑器上传管理', 0),
	(245, 28, 28, 'tpchange', '前台模板', 1),
	(251, 30, 30, 'pluginadd', '添加应用栏目', 0),
	(252, 30, 30, 'pluginedit', '应用栏目编辑', 0),
	(258, 258, 0, 'extendfield', '自定义表', 1),
	(259, 258, 258, 'index', '自定义表列表', 1),
	(260, 258, 258, 'tableadd', '添加自定义表', 1),
	(261, 258, 258, 'tableedit', '拓展表编辑', 0),
	(262, 258, 258, 'tabledel', '拓展表删除', 0),
	(263, 258, 258, 'fieldlist', '字段列表', 0),
	(264, 258, 258, 'fieldadd', '添加字段', 0),
	(265, 258, 258, 'fieldedit', '编辑字段', 0),
	(266, 258, 258, 'fielddel', '字段删除', 0),
	(267, 258, 258, 'file', '文件上传', 0),
	(268, 10, 10, 'ex_field', '字段拓展', 0),
	(269, 150, 150, 'ex_field', '字段拓展', 0),
	(270, 30, 30, 'linkadd', '添加自定义栏目', 0),
	(271, 30, 30, 'linkedit', '自定义栏目编辑', 0),
	(283, 0, 0, 'member', '会员管理(应用)', 1),
	(288, 10, 10, 'colchange', '资讯转移栏目', 0),
	(289, 150, 150, 'colchange', '图集转移栏目', 0),
	(290, 150, 150, 'UploadJson', '图集编辑器上传', 0),
	(291, 150, 150, 'FileManagerJson', '图集编辑器上传管理', 0),
	(292, 28, 28, 'tplist', '模板文件列表', 0),
	(293, 28, 28, 'tpadd', '模板文件添加', 0),
	(294, 28, 28, 'tpedit', '模板文件编辑', 0),
	(295, 28, 28, 'tpdel', '删除模板文件', 0),
	(296, 28, 28, 'tpgetcode', '获取模板内容', 0),
	(297, 258, 258, 'meslist', '自定义表信息', 0),
	(298, 258, 258, 'mesedit', '自定义表信息添加', 0),
	(299, 258, 258, 'mesedit', '自定义表信息编辑', 0),
	(300, 258, 258, 'mesdel', '自定义表信息删除', 0),
	(331, 258, 258, 'meslock', '自定义表信息审核', 0),
	(301, 30, 30, 'add', '添加栏目', 1),
	(302, 30, 30, 'extendadd', '添加表单栏目', 0),
	(303, 30, 30, 'extendedit', '表单栏目编辑', 0),
	(304, 30, 30, 'placelist', '内容定位列表', 1),
	(305, 30, 30, 'placeadd', '添加内容定位', 1),
	(306, 30, 30, 'placeedit', '定位编辑', 0),
	(307, 30, 30, 'placedel', '定位删除', 0),
	(308, 308, 0, 'tags', 'TAG标签', 1),
	(309, 308, 308, 'index', '标签列表', 1),
	(310, 308, 308, 'del', '删除标签', 0),
	(311, 308, 308, 'hits', '编辑点击量', 0),
	(312, 308, 308, 'add', '生成标签', 1),
	(313, 308, 308, 'mesup', '文档数量更新', 0),
	(314, 314, 0, 'files', '附件管理', 1),
	(315, 314, 314, 'index', '上传文件管理', 1),
	(316, 314, 314, 'del', '删除文件', 0),
	(317, 10, 10, 'orderchange', '列表ajax排序', 0),
	(318, 150, 150, 'orderchange', '列表ajax排序', 0),
	(319, 30, 30, 'orderchange', '列表ajax排序', 0),
	(320, 17, 17, 'sqlrun', 'SQL执行', 1),
	(321, 30, 30, 'cutcover', '栏目封面剪切', 0),
	(322, 238, 238, 'saveimage', '图片本地化', 0),
	(323, 10, 10, 'saveimage', '图片本地化', 0),
	(324, 10, 10, 'delcover', '删除封面图', 0),
	(325, 30, 30, 'delcover', '删除封面图', 0),
	(326, 30, 30, 'pagesaveimage', '图片本地化', 0),
	(328, 30, 30, 'sortsmove', '栏目批量移动', 0),
	(329, 30, 30, 'sortsedit', '栏目批量编辑', 0),
	(330, 30, 30, 'ifmenu', '栏目设置隐藏', 0),
	(332, 258, 258, 'mesadd', '自定义表添加信息', 0),
	(333, 308, 308, 'hadd', '手动添加标签', 0),
	(334, 308, 308, 'edit', '标签编辑', 0),
	(335, 335, 0, 'seo', 'SEO优化', 1),
	(336, 335, 335, 'sitemap', 'SiteMap', 1);
/*!40000 ALTER TABLE `yx_method` ENABLE KEYS */;

-- 导出  表 cms.yx_news 结构
CREATE TABLE IF NOT EXISTS `yx_news` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sort` varchar(350) NOT NULL COMMENT '类别',
  `exsort` varchar(350) NOT NULL,
  `account` char(15) NOT NULL COMMENT '发布者账户',
  `title` varchar(60) NOT NULL COMMENT '标题',
  `places` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL COMMENT '标题颜色',
  `picture` varchar(80) NOT NULL,
  `keywords` varchar(300) NOT NULL COMMENT '关键字',
  `description` varchar(600) NOT NULL,
  `content` text NOT NULL COMMENT '内容',
  `method` varchar(100) NOT NULL COMMENT '方法',
  `tpcontent` varchar(100) NOT NULL COMMENT '模板',
  `norder` int(4) NOT NULL COMMENT '排序',
  `recmd` tinyint(1) NOT NULL COMMENT '推荐',
  `hits` int(10) NOT NULL COMMENT '点击量',
  `ispass` tinyint(1) NOT NULL,
  `origin` varchar(30) NOT NULL COMMENT '来源',
  `addtime` int(11) NOT NULL,
  `releids` varchar(255) NOT NULL,
  `extfield` int(10) NOT NULL DEFAULT '0' COMMENT '拓展字段',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_news 的数据：9 rows
DELETE FROM `yx_news`;
/*!40000 ALTER TABLE `yx_news` DISABLE KEYS */;
INSERT INTO `yx_news` (`id`, `sort`, `exsort`, `account`, `title`, `places`, `color`, `picture`, `keywords`, `description`, `content`, `method`, `tpcontent`, `norder`, `recmd`, `hits`, `ispass`, `origin`, `addtime`, `releids`, `extfield`) VALUES
	(1, ',000000,100003,100005,100008', '', 'admin', '拼图前端框架', '101', '', '20150630/thumb_1435644447.jpg', '框架,开发,设备,电脑,游戏,简单,便捷,灵活,平板,快乐,自动,响应,优秀,国内,适应,领导者,手机', '拼图是优秀的响应式前端CSS开源框架，国内前端框架先驱及领导者，自动适应手机、平板、电脑等设备，让前端开发像游戏般快乐、简单、灵活、便捷', '<p>\r\n	<span style="color:#333333;font-family:\'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;white-space:normal;background-color:#FFFFFF;">拼图是优秀的响应式前端CSS开源框架，国内前端框架先驱及领导者，自动适应手机、平板、电脑等设备，让前端开发像游戏般快乐、简单、灵活、便捷</span>\r\n</p>\r\n<p>\r\n	<span style="color:#333333;font-family:\'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;white-space:normal;background-color:#FFFFFF;">进入<a href="http://v1.pintuer.com/" target="_blank">【拼图】</a></span>\r\n</p>', 'default/column/content', 'news_content', 100, 0, 30, 1, '原创', 1435644394, '', 0),
	(2, ',000000,100003,100004', '', 'admin', 'phalcon一个PHP+C的后台框架', '101', '', '20150630/thumb_1435644512.jpg', '使用,功能,需要,更加,可以,我们,其他,简单,易于,希望,喜欢,以及,丰富,扩展,目标,拥有,所在,一切,人员,这里,地方,贡献,开发,一个,一直,欢迎,加入我们,帮助,性能,卓越,所有,的方式,暴露,出来,因为,语言,框架,开发者,高性能,学习,针对,直接,对象,只是,为了,任意,目的,编写,根据,优化', 'Phalcon 是开源、全功能栈、使用 C 扩展编写、针对高性能优化的 PHP 5 框架。 开发者不需要学习和使用 C 语言的功能， 因为所有的功能都以 PHP 类的方式暴露出来，可以直接使用', '<p>\r\n	<span style="color:#333333;font-family:\'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;white-space:normal;background-color:#FFFFFF;">Phalcon 是开源、全功能栈、使用 C 扩展编写、针对高性能优化的 PHP 5 框架。 开发者不需要学习和使用 C 语言的功能， 因为所有的功能都以 PHP 类的方式暴露出来，可以直接使用。 Phalcon 也是松耦合的，可以根据项目的需要任意使用其他对象。Phalcon 不只是为了卓越的性能, 我们的目标是让它更加健壮，拥有更加丰富的功能以及更加简单易于使用。我们希望您能喜欢Phalcon所在的一切。 也一直欢迎您能加入我们并帮助。 您并不需要是一个C开发人员，这里有很多其他地方需要您的贡献。</span> \r\n</p>\r\n<p>\r\n	<span style="color:#333333;font-family:\'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;white-space:normal;background-color:#FFFFFF;">进入<a href="https://www.phalconphp.com/zh/" target="_blank">【<span style="color:#333333;font-family:\'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;white-space:normal;background-color:#FFFFFF;">Phalcon</span>】</a></span> \r\n</p>', 'default/column/content', 'news_content', 100, 0, 32, 1, '原创', 1435644475, '', 0),
	(3, ',000000,100003,100004', '', 'admin', 'PHP超文本预处理器', '', '', '', '处理器,语言,通用,脚本', 'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域', '<p>\r\n	PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行编译后代码，编译可以达到加密和优化代码运行，使代码运行更快。\r\n</p>\r\n<p>\r\n	PHP原始为Personal Home Page的缩写，已经正式更名为 "PHP: Hypertext Preprocessor"。注意不是“Hypertext Preprocessor”的缩写，这种将名称放到定义中的写法被称作递归缩写。PHP于1994年由Rasmus Lerdorf创建，刚刚开始是Rasmus Lerdorf为了要维护个人网页而制作的一个简单的用Perl语言编写的程序。这些工具程序用来显示 Rasmus Lerdorf 的个人履历，以及统计网页流量。后来又用C语言重新编写，包括可以访问数据库。他将这些程序和一些表单直译器整合起来，称为 PHP/FI。PHP/FI 可以和数据库连接，产生简单的动态网页程序。\r\n</p>', 'default/column/content', 'news_content', 100, 0, 30, 1, '原创', 1435805367, '', 0),
	(4, ',000000,100003,100004', '', 'admin', 'MVC框架在PHP中的使用', '', '', '', '使用,同步,程序,可以,存在,统计数据,分别,不同,表示,比如,确保,更新,应该,改变,同一个,一旦,目的,代码,本来,框架,数据,实现,分离,目的是,模型,从而', 'MVC (Modal View Controler)本来是存在于Desktop程序中的，M是指数据模型，V是指用户界面，C则是控制器。使用MVC的目的是将M和V的实现代码分离，从而使同一个程序可以使用不同的表现形式。比如一批统计数据你可以分别用柱状图、饼图来表示。C存在的目的则是确保M和V的同步，一旦M改变，V应该同步更新...', '<p>\r\n	MVC (Modal View Controler)本来是存在于Desktop程序中的，M是指数据模型，V是指用户界面，C则是控制器。使用MVC的目的是将M和V的实现代码分离，从而使同一个程序可以使用不同的表现形式。比如一批统计数据你可以分别用柱状图、饼图来表示。C存在的目的则是确保M和V的同步，一旦M改变，V应该同步更新。&nbsp;\r\n</p>\r\n<p>\r\n	模型－视图－控制器（MVC）是Xerox PARC在八十年代为编程语言Smalltalk－80发明的一种软件设计模式，至今已被广泛使用。最近几年被推荐为Sun公司J2EE平台的设计模式，并且受到越来越多的使用 ColdFusion 和 PHP 的开发者的欢迎。模型－视图－控制器模式是一个有用的工具箱，它有很多好处，但也有一些缺点。 MVC如何工作 MVC是一个设计模式，它强制性的使应用程序的输入、处理和输出分开。\r\n</p>\r\n<p>\r\n	使用MVC应用程序被分成三个核心部件：模型、视图、控制器。它们各自处理自己的任务。&nbsp;\r\n</p>\r\n<p>\r\n	视图 视图是用户看到并与之交互的界面。对老式的Web应用程序来说，视图就是由HTML元素组成的界面，在新式的Web应用程序中，HTML依旧在视图中扮演着重要的角色，但一些新的技术已层出不穷，它们包括Macromedia Flash和象XHTML，XML/XSL，WML等一些标识语言和Web services. 如何处理应用程序的界面变得越来越有挑战性。MVC一个大的好处是它能为你的应用程序处理很多不同的视图。在视图中其实没有真正的处理发生，不管这些数据是联机存储的还是一个雇员列表，作为视图来讲，它只是作为一种输出数据并允许用户操纵的方式。&nbsp;\r\n</p>\r\n<p>\r\n	模型 模型表示企业数据和业务规则。在MVC的三个部件中，模型拥有最多的处理任务。例如它可能用象EJBs和ColdFusion Components这样的构件对象来处理数据库。被模型返回的数据是中立的，就是说模型与数据格式无关，这样一个模型能为多个视图提供数据。由于应用于模型的代码只需写一次就可以被多个视图重用，所以减少了代码的重复性。&nbsp;\r\n</p>\r\n<p>\r\n	控制器 控制器接受用户的输入并调用模型和视图去完成用户的需求。所以当单击Web页面中的超链接和发送HTML表单时，控制器本身不输出任何东西和做任何处理。它只是接收请求并决定调用哪个模型构件去处理请求，然后用确定用哪个视图来显示模型处理返回的数据。 现在我们总结MVC的处理过程，首先控制器接收用户的请求，并决定应该调用哪个模型来进行处理，然后模型用业务逻辑来处理用户的请求并返回数据，最后控制器用相应的视图格式化模型返回的数据，并通过表示层呈现给用户。&nbsp;\r\n</p>\r\n<p>\r\n	为什么要使用 MVC 大部分Web应用程序都是用像ASP，PHP，或者CFML这样的过程化语言来创建的。它们将像数据库查询语句这样的数据层代码和像HTML这样的表示层代码混在一起。经验比较丰富的开发者会将数据从表示层分离开来，但这通常不是很容易做到的，它需要精心的计划和不断的尝试。MVC从根本上强制性的将它们分开。尽管构造MVC应用程序需要一些额外的工作，但是它给我们带来的好处是无庸质疑的。 首先，最重要的一点是多个视图能共享一个模型，正如我所提及的，现在需要用越来越多的方式来访问你的应用程序。对此，其中一个解决之道是使用MVC，无论你的用户想要Flash界面或是 WAP 界面；用一个模型就能处理它们。由于你已经将数据和业务规则从表示层分开，所以你可以最大化的重用你的代码了。 由于模型返回的数据没有进行格式化，所以同样的构件能被不同界面使用。例如，很多数据可能用HTML来表示，但是它们也有可能要用Macromedia Flash和WAP来表示。模型也有状态管理和数据持久性处理的功能，例如，基于会话的购物车和电子商务过程也能被Flash网站或者无线联网的应用程序所重用。 因为模型是自包含的，并且与控制器和视图相分离，所以很容易改变你的应用程序的数据层和业务规则。如果你想把你的数据库从MySQL移植到Oracle，或者改变你的基于RDBMS数据源到LDAP，只需改变你的模型即可。一旦你正确的实现了模型，不管你的数据来自数据库或是LDAP服务器，视图将会正确的显示它们。由于运用MVC的应用程序的三个部件是相互对立，改变其中一个不会影响其它两个，所以依据这种设计思想你能构造良好的松偶合的构件。 对我来说，控制器的也提供了一个好处，就是可以使用控制器来联接不同的模型和视图去完成用户的需求，这样控制器可以为构造应用程序提供强有力的手段。给定一些可重用的模型和视图，控制器可以根据用户的需求选择模型进行处理，然后选择视图将处理结果显示给用户。 MVC的缺点 MVC的缺点是由于它没有明确的定义，所以完全理解MVC并不是很容易。使用MVC需要精心的计划，由于它的内部原理比较复杂，所以需要花费一些时间去思考。 你将不得不花费相当可观的时间去考虑如何将MVC运用到你的应用程序，同时由于模型和视图要严格的分离，这样也给调试应用程序到来了一定的困难。每个构件在使用之前都需要经过彻底的测试。一旦你的构件经过了测试，你就可以毫无顾忌的重用它们了。 根据我个人经验，由于我们将一个应用程序分成了三个部件，所以使用MVC同时也意味着你将要管理比以前更多的文件，这一点是显而易见的。这样好像我们的工作量增加了，但是请记住这比起它所能带给我们的好处是不值一提。 MVC并不适合小型甚至中等规模的应用程序，花费大量时间将MVC应用到规模并不是很大的应用程序通常会得不偿失。 MVC是一条创建软件的好途径 MVC设计模式是一个很好创建软件的途径，它所提倡的一些原则，像内容和显示互相分离可能比较好理解。但是如果你要隔离模型、视图和控制器的构件，你可能需要重新思考你的应用程序，尤其是应用程序的构架方面。如果你肯接受MVC，并且有能力应付它所带来的额外的工作和复杂性，MVC将会使你的软件在健壮性，代码重用和结构方面上一个新的台阶。\r\n</p>', 'default/column/content', 'news_content', 100, 0, 31, 1, '原创', 1435806189, '', 0),
	(5, ',000000,100003,100004', '', 'admin', '为什么选者PHP作为后台语言', '', '', '', '为什么,搭建,网站,究竟,选择,企业,作为,后台,语言,越来越,使用', '越来越多的企业使用PHP+MYSQL搭建网站，究竟PHP有什么好，为什么要选择用PHP', '越来越多的企业使用PHP+MYSQL搭建网站，究竟PHP有什么好，为什么要选择用PHP?<br />\r\n&nbsp; &nbsp;1. 跨平台，性能优越，跟Linux/Unix结合别跟Windows结合性能强45%，并且和很多免费的平台结合非常省钱，比如LAMP (Linux/Apache/Mysql/PHP)或者FAMP(FreeBSD/Apache/Mysql/PHP)结合，或者数据应用够大可以考虑换 PostgreSQL或者Oracle，支持N种数据库。（N &gt;= 10）<br />\r\n&nbsp; &nbsp;2. 语法简单，如果有学习C和Perl的很容易上手，并且跟ASP有部分类似。有成熟的开发工具，比如NuPHPed，或者Zend Studio等等，再Linux平台下可以使用Eclipse等等。<br />\r\n&nbsp; &nbsp;3. 目前主流技术都支持，比如WebService、Ajax、XML等等，足够应用。<br />\r\n&nbsp; &nbsp;4. 有比较完整的支持，比如使用ADODB或者PEAR::DB做数据库抽象层，用Smarty或者smart template做模板层，如果是PHP 5.1的话，还能够使用PDO（PHP Data Object）来访问数据库。<br />\r\n&nbsp; &nbsp;5. 有很成熟的框架，比支持MVC的框架：phpMVC，支持类似ASP.net的事件驱动的框架：Prado，支持类似Ruby On Rails的快速开发的框架：Cake等等，足够满足你的应用需求。 PHP<br />\r\n&nbsp; &nbsp;6. PHP 5已经有成熟的面向对象体系，能够适应基本的面向对象要求。适合开发大型项目。<br />\r\n&nbsp; &nbsp;7. 有成熟的社区来支持PHP的开发，比如国内的CSDN，喜悦国际村等等。&nbsp;<br />\r\n&nbsp; &nbsp;8. 目前已经很多大型应用都是使用PHP，比如淘宝网、Yahoo、163、Sina等等大型门户，很多选用PHP来作为他们的开发语言，所以大型门户都能够选用它，足够大部分企业的使用了。<br />', 'default/column/content', 'news_content', 100, 0, 33, 1, '原创', 1435807492, '', 0),
	(6, ',000000,100003,100004', '', 'admin', '7个主流的 PHP 框架', '', '', 'NoPic.gif', '框架,主流', 'Laravel: Laravel The PHP Framework for Web Artisans and one of the best php framework in year 2014. Laravel is powerful feature like Restful routing, Composer Powered, Beautiful inbuilt templating (Blade template) and expressive syntax etc', '<p>\r\n	1. Laravel: Laravel The PHP Framework for Web Artisans and one of the best php framework in year 2014. Laravel is powerful feature like Restful routing, Composer Powered, Beautiful inbuilt templating (Blade template) and expressive syntax etc.\r\n</p>\r\n<p>\r\n	2. Yii Framework: Yii Framework is fast, secure, stable, high performance php framework for developing Web 2.0 applications. Yii2 provided basis and advanced application installation based on requirement. Yii Framework comes with Rich Feature Layered caching scheme, Model-View-Controller (MVC) design pattern, Database Access Objects (DAO)/ Active Record, I18N/L10N, Role based access and authentication, Gii (automatic code generation) crud generator module, AJAX-enabled widgets, Detailed documentation, Easily integrated third party code and system etc. Yii is ideal framework for develop social media, enterprizes web application, SAAS, PAAS etc.\r\n</p>\r\n<p>\r\n	3. Zend Framework: No doubt about Zend Framework in this list and top 3 possible because it is flexible architecture and widely acceptable for enterprises web application development.\r\n</p>\r\n<p>\r\n	4. CodeIgniter: CodeIgniter is one of simple, powerful php framework. According to PHP creator Rasmus Lerdorf “CodeIgniter is faster, lighter and the least like a framework.”\r\n</p>\r\n<p>\r\n	5. CakePHP: Cakephp is one of oldest PHP Framework build by Polish programmer Michal Tatarynowicz inspiring by Ruby on Rails in April 2005. Scratch, Hot Scripts and Croogo CMS made in Cakephp.\r\n</p>\r\n<p>\r\n	6. Symfony: Symfony Framework is focus to set of reusable PHP Components for Enterprises Web Projects. Drupal, phpBB, Laravel, OROCRM and PIWIK etc. using symfony.\r\n</p>\r\n<p>\r\n	7. Phalcon: Phalcon is open source, high performance web application framework for PHP. It implemented C extension for optimize performance to goal of handle more requests per second than other PHP Frameworks. Phalcon has all the feature which might make it No. 1 PHP Framework as Compare Laravel.\r\n</p>', 'default/column/content', 'news_content', 100, 0, 31, 1, '原创', 1435809548, '', 0),
	(7, ',000000,100003,100004', '', 'admin', 'PHP的前景和趋势', '', '', '', '星期三,预言,如此,演讲,互联网,推广,脚本,趋势,前景,语言,基本,运用,网络,普及', 'PHP脚本语言的基本 性会令其在网络运用 上比Java更易推广和普及，互联网溜览器的先驱Marc Andreessen在Zend/PHP星期三的演讲中如此预言', 'BURLINGAME, Calif 消息： PHP脚本语言的基本 性会令其在网络运用 上比Java更易推广和普及，互联网溜览器的先驱Marc Andreessen在Zend/PHP星期三的演讲中如此预言。<br />\r\nAndreessen (安德森)说：自从1995年，Sun Microsystems 开创并揭晓 Java以来，Java取得 了极大的成功，这首要 是因为Java把它的语言优势更多的落实在程序员的运用 方面，而不是放在机器上，这使得软件开发的难度明显降低。但是，Andreessen也提到，与从前相比，Java现在已经添加 了许多 并不令人喜好 的特征 。<br />\r\nJava 在过去数年来一直比C和C++更易运用 ，直到近来 变得庞杂 了。Andreessen提到，现在有人认为它甚至比C++还难学。(Java)简易性的年代已经过去了：“PHP现在正处在比Java更有利的环境态势中取得 成长 。”<br />\r\n这些见解 或许不会被Java 的拥护者所认同 -- 他们中的大多数来自于由数百万 程序员和数百家公司组成的，掌控软件前途的Java 社团。<br />\r\n但即使在IBM，那些曾着力把Java 带进服务器以及以Java 为核心的WebSphere 服务器软件的高层人员，现在也看到了PHP的优势超越了Java 。<br />\r\n“简易性是它最大的特性 。”　 IBM正处成长 中的IT集团的副总裁Rod Smith提到，PHP在一个报告会上惹起 了IBM的重视 。 ”他们并不着力于添加 语言特征 去和其它的语言竞争，“ 而代之以 ”基本 的方式，而不是很不幸的，咱们 在Java身上曾做过的方式。“<br />\r\nPHP是一个开源软件，它包含 一个引擎用于简化调用PHP脚本的程序，和一个大的预建脚本库。(PHP)众多的成长 都由Zend公司掌控，后者还出售PHP产品包，编程工具和服务。&nbsp;<br />\r\n狂热的程序员在计算机界并不新鲜，他们坚持要建立自身 的产品作为基准平台。事实上，Microsoft有许多 广受欢迎的，开发者易用的编程工具，它们的成功首要 归功于Windows平台。<br />\r\nPHP已被广泛运用 ，当前 已有大约2千2百万网页运用 PHP，数目 还在稳步增长。大约450个程序员有权威去审核软件的改良 。首要 运用 PHP的企业包含 Yahoo, Lufthansa 和 Deutsche Telekom\'s T-Online.<br />\r\nPHP比Java的运用 范围窄多了，(Java)不仅可用于Web服务器，并且 还可以用于PC，手机，带芯片的支付卡等许多 设施。Java其中的一些技能 ，如JSP，倒是像PHP一样处理同样的事情。<br />\r\nJava 和 PHP是在同一竞争水平，(Java)现在领先 “ Eclipse 的总经理MikeMilinkovich在一个报告会上说。Eclipse是一个开源编程工具，长期支撑 Java，现在同时支撑 PHP。” 我期盼PHP在市场上能紧追猛赶(Java)。<br />\r\nJava 和PHP之间也在相互靠拢。Oracle，作为一家同时售卖Java服务器软件和其自身数据库软件可同样用于Java或PHP的公司，也是那些在服务于 Java之余还致力于协助PHP的企业中的一员。Oracle产品战略副总裁KenJacobs在一个会议上讲，Java的223特征 要求 “ 将帮助在Java社区和PHP社区之间搭建桥梁。”<br />\r\n即便是Andreessen，他刚协助发起一个叫Ning 的运用 ，用于在线交换图片，信息和其他内容，也知晓 Java的位置 。<br />\r\n"我的新公司正设法把Java 和PHP整合起来。这须要 庞大 的投入。" 他谈到他们的技能 决策。“咱们 系统的核心是Java做的。就像一个操作系统，像一个系统编程项目。在它上面有一个运用 层 -- 实际上你看到的一切都是用PHP做的。”&nbsp;<br />\r\nPHP，就像Linux和Apache的开源项目一样，现在已经受到了计算机产业巨头的亲睐。 IBM和Oracle 正致力于让PHP运用 从它们的数据库提取信息，他们的背书是特别主要 的，zend CEO Doron Gerstel说。<br />\r\n"IBM和Oracle 支撑 它的事实--给了IT用户一个(庞大 的)信心保证。巨头都支撑 它，那它必须 是好东西 " Gerstel在一个报告会上说。<br />\r\nPHP在预期11月初推出(译者注：此文写于05年)的新版5.1里，将包含 一个更快的引擎来处理PHP脚本，PHP的创造者和Zend 的共同奠基人Zeev Suraski说。还将包含 一个底层的“数据抽象层”以便利于PHP和不一样 的数据库连接，一个高水平层用于与XML数据交换，后者产生和服务于Web 服务件(Web services)。<br />\r\n版本6，预期在2006年推出，将支撑 Unicode字符解码，(Unicode)支撑 广泛的字母，使系统的多国运用 能更简易地实现。<br />\r\nAndreessen说他相信Web是最多新运用 竞逐的场所，部分原由 在于Web运用 的即时性，避开了桌面软件广泛性的挑战。<br />\r\n"Microsoft 讲了许多 关于Avalon(Windows Vista 的显示技能 )和扁平客户(fat clients)。但疑问 在于你非得等到系统已装在机子上，才能用到。<br />\r\n在Web模式里，就不用了。" Andreessen说，”毫无疑问，Web模式将统领今后(软件运用 )的10年，20年，30年。"<br />\r\n现在PC上正发生一些有趣的改动 ，但只出现在Web溜览器那些依靠 互联网数据和服务的运用 上。(这里)Java再次落后于与其无关的脚本技能 ，Javascrīpt和其衍生物，可产生诱人用户界面的AJAX技能 。<br />\r\nJavascrīpt，现更连同AJAX一起，跟Java相比，一直是溜览器客户端开发的规则 方式。“ Andreessen说，”Java applets在溜览器上从未达到咱们 期望的深度。“<br />\r\n(当然)不是每私人 都有同样的见解 。Google在溜览器上用了一些前沿技能 如AJAX，但其CEO Eric Schmidt本周初与Sun的CEO Scott McNealy会面时宣告 ，Java的桌面版将搭载Google的工具栏。<br />\r\n"在公司内部Java运行环境(JRE)之多令我吃惊，要么是CIO(直接)用它(JRE)来规则 化了，要么是足够的运用 让CIO觉得JRE应该成为公司软件架构的规则 "，Schmidt在Sun-Google会谈中讲到。作为夥伴，Google将协助成长 Java。<br />\r\nNetscape着力推动用Javascrīpt来开发超过HTML规则 许可的，修改动 多端的网页，并且 完全不须要 难处 的Java语言， Andreessen提到。“咱们 要把Javascrīpt作连接HTML和Java的桥梁，这是一场与Sun公司庞大 无比的战斗。” Andreessen说， “他们(Sun公司)要疯了，在我告诉他们这桥梁的名字叫Javascrīpt时，他们疯得更厉害了。”<br />\r\nJava不是独一 失诺的客户软件，Macromedia公司的Flash，是一种能在溜览器上产生动画，声音，电影等一些耀眼夺目标 软件运用 ，也在榜内。<br />\r\n"我认为Flash是一项最令人激动的技能 ，它已很接近成功的边缘，但就是没有成功。“ Andreessen说到<br />', 'default/column/content', 'news_content', 100, 0, 30, 1, '原创', 1435809971, '', 0),
	(8, ',000000,100003,100005,100007', '', 'admin', 'Html5发展历程', '', '', '', '标准,发布,其它,一个,历程,发展,通用,标记,语言,应用', '标准通用标记语言下的一个应用HTML标准自1999年12月发布的HTML4.01后，后继的HTML5和其它标准被束之高阁...', '标准通用标记语言下的一个应用HTML标准自1999年12月发布的HTML4.01后，后继的HTML5和其它标准被束之高阁，为了推动Web标准化运动的发展，一些公司联合起来，成立了一个叫做 Web Hypertext Application Technology Working Group （Web超文本应用技术工作组 -WHATWG） 的组织。WHATWG 致力于 Web 表单和应用程序，而W3C（World Wide Web Consortium，万维网联盟） 专注于XHTML2.0。在 2006 年，双方决定进行合作，来创建一个新版本的 HTML。<br />\r\nHTML5草案的前身名为 Web Applications 1.0，于2004年被WHATWG提出，于2007年被W3C接纳，并成立了新的 HTML 工作团队。<br />\r\nHTML 5 的第一份正式草案已于2008年1月22日公布。HTML5 仍处于完善之中。然而，大部分现代浏览器已经具备了某些 HTML5 支持。<br />\r\n2012年12月17日，万维网联盟（W3C）正式宣布凝结了大量网络工作者心血的HTML5规范已经正式定稿。根据W3C的发言稿称：“HTML5是开放的Web网络平台的奠基石。”<br />\r\n2013年5月6日， HTML 5.1正式草案公布。该规范定义了第五次重大版本，第一次要修订万维网的核心语言：超文本标记语言（HTML）。在这个版本中，新功能不断推出，以帮助Web应用程序的作者，努力提高新元素互操作性。<br />\r\n本次草案的发布，从2012年12月27日至今，进行了多达近百项的修改，包括HTML和XHTML的标签，相关的API、Canvas等，同时HTML5的图像img标签及svg也进行了改进，性能得到进一步提升。<br />\r\n支持Html5的浏览器包括Firefox（火狐浏览器），IE9及其更高版本，Chrome（谷歌浏览器），Safari，Opera等；国内的遨游浏览器（Maxthon），以及基于IE或Chromium（Chrome的工程版或称实验版）所推出的360浏览器、搜狗浏览器、QQ浏览器、猎豹浏览器等国产浏览器同样具备支持HTML5的能力。<br />\r\n在移动设备开发HTML5应用只有两种方法，要不就是全使用HTML5的语法，要不就是仅使用JavaScript引擎。<br />\r\nJavaScript引擎的构建方法让制作手机网页游戏成为可能。由于界面层很复杂，已预订了一个UI工具包去使用。<br />\r\n纯HTML5手机应用运行缓慢并错漏百出，但优化后的效果会好转。尽管不是很多人愿意去做这样的优化，但依然可以去尝试。<br />\r\nHTML5手机应用的最大优势就是可以在网页上直接调试和修改。原先应用的开发人员可能需要花费非常大的力气才能达到HTML5的效果，不断地重复编码、调试和运行，这是首先得解决的一个问题。因此也有许多手机杂志客户端是基于HTML5标准，开发人员可以轻松调试修改。<br />\r\n2014年10月29日，万维网联盟泪流满面地宣布，经过几乎8年的艰辛努力，HTML5标准规范终于最终制定完成了，并已公开发布。<br />\r\n在此之前的几年时间里，已经有很多开发者陆续使用了HTML5的部分技术，Firefox、Google Chrome、Opera、Safari 4+、Internet Explorer 9+都已支持HTML5，但直到今天，我们才看到“正式版”。<br />\r\nHTML5将会取代1999年制定的HTML 4.01、XHTML 1.0标准，以期能在互联网应用迅速发展的时候，使网络标准达到符合当代的网络需求，为桌面和移动平台带来无缝衔接的丰富内容。<br />\r\nW3C CEO Jeff Jaffe博士表示：“HTML5将推动Web进入新的时代。不久以前，Web还只是上网看一些基础文档，而如今，Web是一个极大丰富的平台。我们已经进入一个稳定阶段，每个人都可以按照标准行事，并且可用于所有浏览器。如果我们不能携起手来，就不会有统一的Web。”<br />\r\nHTML5还有望成为梦想中的“开放Web平台”(Open Web Platform)的基石，如能实现可进一步推动更深入的跨平台Web应用。<br />\r\n接下来，W3C将致力于开发用于实时通信、电子支付、应用开发等方面的标准规范，还会创建一系列的隐私、安全防护措施。<br />\r\nW3C还曾在2012年透露说，计划在2016年底前发布HTML 5.1。<br />', 'default/column/content', 'news_content', 100, 0, 30, 1, '原创', 1435810481, '', 0),
	(9, ',000000,100003,100006', '', 'admin', '如何做好企业网络推广', '', '', '', '方法,推广,论坛,包括,博客,社交,这么,网站推广,开始,已经,企业,做好,临近,如何,到来,一个,我们', '新的一年，新的开始，2014年我们用过很多网络推广的方法，包括论坛推广，软文推广，博客推广，网站推广，社交网络推广等方法。用了这么多的网络推广的方法...', '<p>\r\n	新的一年，新的开始，2014年我们用过很多网络推广的方法，包括论坛推广，软文推广，博客推广，网站推广，社交网络推广等方法。用了这么多的网络推广的方法，可是，效果如何呢?。\r\n</p>\r\n<p>\r\n	不知不觉，我做网站推广已经有四年多的时间了，从最开始的QQ群推广，QQ空间推广，到现在的网站推广，论坛推广，分类信息网推广等。但是，总感觉效果不太好，我一直都希望找到一种理想中的网络推广的方法。　　回首2014年各种网络推广方法，各种伤心　　2014年最火的，莫过于SEO了。通常大家都会做一个相关行业的网站，然后利用SEO技术来推广网站，希望把关键词排名给做上去。这样，我们就可以靠关键词自动来流量了。\r\n</p>\r\n<p>\r\n	我们每天不停的寻找外链资源，每天不停的发外链，每天不停的做伪原创，看收录，查排名，经常纠结于每一个细节上的问题。看看搜外论坛的SEO基础问题咨询，还是处在当初我们那个SEO教徒阶段，以为SEO可以给我们想要的一切。\r\n</p>\r\n<p>\r\n	慢慢地我们明白了，哪怕你的外链再多，网站优化的再好，没有优质的内容还是不行的。即使你有高质量的内容，不懂得如何利用好这些内容也是没多大用处的，因为你没有粉丝。人只要一出名了，哪怕你弄一些垃圾粉丝都会认为是好的，这将是粉丝的重要性。试问，您有粉丝吗?有就来个粉丝炖豆腐吃了吧。\r\n</p>\r\n<p>\r\n	对于分类信息网，像百姓网，58同城，赶集网等，说实话确实也不错。但是，单键也是非常的激烈，一个县光是网络公司就几十个，都在等着这个县有人做网站。一个县又有能多少做网站的呢?即使做网站也不一定会找你。至于产品，你的产品好吗，好产品哪不是呀，为何不上淘宝在分类信息网买你的呢?\r\n</p>\r\n<p>\r\n	对于论坛推广，我有几百个论坛的帐号，每天在几十个论坛推广我的玩具。可是效果呢，不太好。我以为，只要产品让别人看见了，别人就会买。但是上论坛的都是些什么人呢?有钱人一般很少玩论坛，都是一些吊丝和一些家庭主妇的多，好多男孩子都跑去泡妞了，许多女孩子都跑去约会了。我现在是很少逛论坛了。\r\n</p>\r\n<p>\r\n	到此，2014年的网络推广的那些事邵连虎博客就不和大家唠叨了，谈着也伤心。不过，在这期间，我一直在想方法，一直在寻找着更好的网络推广的方法。看来上天真的对每个人都很公平，在你最绝望的时候，他总会给你一些惊喜，　　第一，2015年理想中的网络推广之粉丝经济　　许多中小企业都想在网络中推广自己的产品或业务，可是一直找不到合适的方法。踏入网络的行业已是越来越多，竞争也越来越难，想要靠单纯的卖产品估计是会死的很惨。　　不管什么事情，都有有付出才有回报。你想让用户买你的产品，接你的业务，前提是你能给你的用户什么。比如技术支持，问题咨询，免费服务等。也就是说，你得给用户一个购买你产品或业务的理由。\r\n</p>\r\n<p>\r\n	说的有点笼统，可能好多朋友不是很明白是啥意思。那么我就结合自己的一些经验和想法与大家慢慢说下吧。\r\n</p>\r\n<p>\r\n	前段时间，我发现在我的QQ空间有一个卖蜂蜜的朋友，我也写了一篇文章叫《利用“现金抽奖”游戏卖蜂蜜的创意营销案例》，大家可以看下。这篇文章主要是介绍利用游戏卖蜂蜜的，但是，他的前提是在你有粉丝的基础上才可以完成的。　　为什么呢?因为蜂蜜哥卖蜂蜜不走淘宝，只靠转帐。你想想，如果你来玩这个游戏，你能卖出多少蜂蜜呢?我想你能卖出一瓶就算是不错的了。假如，我们把这个游戏让卢松松来卖，他的卢松松博客有上万个粉丝，是不是比你卖的多呢?　　不管是新浪微博，还是微信，还是QQ空间，许多名人都有自己的粉丝，我们也可台叫他们为“自媒体” 。他们可以说，不管是卖产品，还是卖服务，还是做培训，都有很多人甘愿直接转帐，他们也不管卖什么产品，也都会好卖。粉丝就像教徒一样，非常相信他们的教主，他们的教主当然也不会欺骗他们的教徒。　　不管你是哪个行业的企业，商家，个人，都可以以你的公司为名做一个自媒体来展现公司的产品及文化。大公司我们在这就不谈了，他们也不需要用我的这个方法，只谈谈在网络上没有一席之地的企业。\r\n</p>\r\n<p>\r\n	比如，我们可以弄一个QQ空间来报道一些公司每天发生的事情，一些新产品信息。总之，你的这个QQ就是关于你们公司的，让用户能亲身的感觉的感觉到就像真正的到你的公司一样的感觉，也就是所谓的“洗脑”。你能给用户提供什么服务，尽量都要无私的拿出来，你帮助了用户，用户才会更信任你。\r\n</p>\r\n<p>\r\n	用户不仅可以用QQ空间，也可以用微信，微博，网站等做一个自媒体平台。这样的好处是即可以用于推广，又可以与粉丝互动，把粉丝当成自己的朋友一样。我来给大家举个例子，比如你是做网站的，可以给用户免费提供网站方面问题的咨询，如果可以，提供点技术支持。如果您是卖礼物的，可以给用户提供送礼物方面的知识以及如何选择礼物等。　　粉丝经济靠的不是多高的销售技巧，也不是多么牛逼的人物才可以实现的。大家只要用心对待你的用户，不要欺骗他们，拿出质量的保证以及售后的保障。我相信，是人他都会有良心，你拿一颗真心对待别人，用户都会很感恩的，最终就会通过产品或者服务来回报您。\r\n</p>\r\n<p>\r\n	第二，2015年理想中的网络推广之品牌推广　　“再小的个体，也有自己的品牌”，我非常喜欢这句话，因为它很公平，它不论高低，不管贵贱，让一些小人物也可以有自己的品牌。我只是一个普通人，却可以用邵连虎博客和连虎网络这二个品牌让国人都知道，在这个世界上有我这号人物。　　品牌是什么，好多人经常这样问。在我认为，品牌就像是自己的名字一样，别要只要听到这个名字就会知道是你。只不过，品牌不在用在人身上的，是用在产品或者服务上的。没有品牌，就像逛超市一样，看了千千万万个产品，却没有记住一个产品的名字，只知道那是吃的还是喝的或是穿的。　　以前，好多朋友找我公司做网站，我就问他们，网站的名字你想下叫什么，好多网友就直接说成产品的名字。比如，一个邳州朋友想做租车网站，就直接起名成邳州租车网站，一个邳州朋友想做婚庆网站，就直接起名为邳州婚庆网站。试问，邳州那么多的公司，让别人怎么记住您呢 ?\r\n</p>\r\n<p>\r\n	品牌的重要性，我已经和大家说了，下面跟大家说下如何做好品牌推广，品牌推广其实我一直都知道，只是，我玩的不够好罢了，给大家分享一个别人利用品牌推广的案例。　　前段时间，我一直在各大论坛推广我的玩具。可是，销量一直不好，我便到百度搜索儿童玩具的好处，因为我想通过玩具的好处让客户来买我的玩具。一搜索，首先出现的就是很多电商网站，而且还有一些百度文库。　　对于百度的搜索结果，我一般都喜欢看百度经验和文库。为什么呢?因为百度自家的产品知识都是优质的，审核也非常的严格。一连看了几篇文章，发现没有自己想要的东西。不过，我却发现了一个问题。在这个文章中，都会出现一个玩具商城的网站民。\r\n</p>\r\n<p>\r\n	一连看到好几个这个玩具商城的名字，我便百度搜索下，也找到了他们的网站。原来，他们是一个B2B玩具商城，利用百度产品来推广自己的玩具商城的。看到这，大家想下自己，你们的网站是如何推广的呢?　　可能有些朋友感觉没什么，我们自己也经常做百度文库和百度经验，没什么大不了的。可是，大家做的多少呢?很多人做百度文库，百度经验只是为了做外链。一看不能留外链。我相信好多人都放弃了。在网络推广中，我们最好忘记什么是SEO，不要一味的做外链，堆积关键词。\r\n</p>\r\n<p>\r\n	2015年的到来，可以说SEO是越来越不好做了。我这里所说的SEO是那些以为SEO就是发外链，堆积关键词的那些朋友们。当然，到一个平台发软文能留外链当然是更好。不过，如果不能留外链我们就不做了吗?品牌推广，就是弥补了SEO的不足之处，没有外链，我们可以做品牌推广。　　 &nbsp;1，品牌推广的内容　　至于品牌推广的内容，大家可以自己写原创文章，就像我一样，每天写一些关于网站建设，SEO优化，网络推广方面的文章，而且在文章中会插入我的邵连虎博客品牌和我的网络公司连虎网络。大家也可以写一些关于公司的产品方面的文章，可以写一些产品的好处，然后在文章中插入你们公司的品牌。　　品牌推广的内容，不是只靠原创内容。内容最好是原创，但是，如果实在写不出，不能逼着你们写吧。大家可以百度搜索一些相关文章，然后把这些文章给改下，加入自己的品牌信息就可以了。在这提醒大家一下，大家一定要尊重别人的版权信息，最好的方法是能留下原文出处的就留下，不能留下的在文章底部写下版本信息，比如，此文原作者邵连虎博客，经张三改编而成。而且，大家在转载的时候，看下文章是不是允许转载，以及转载的要求等。切记，否则你的品牌推广，将会带来反效果，让别人讨厌。\r\n</p>\r\n<p>\r\n	2，品牌推广的平台　　品牌推广的平台，也就是我们要将这些内容发布什么样的平台上面。对于平台的选择，大家最好选择一些相关行业的平台。比如，建站发表到A5，站长之家等站长平台，玩具发表到慧聪，阿里等相关玩具类目，或者发表到一些玩具论坛上面。　　大家还可以把这些内容发表到百度文库，百度经验，这二个是大家必须选择也是最好的平台。百度文库和经验相对其他的平台，审核是有点难度。不过大家只要做了就会知道是有技巧的，不要为了做外链而做，否则只是一味的审核不通过。技巧，大家自己去研究吧。　　其实推广的平台有很多，像QQ空间，微博，微信，陌陌，豆瓣，百度空间，360图书管，豆丁文库等。总之，哪里有目标用户，就是我们发布内容的好地方。\r\n</p>\r\n<p>\r\n	3，品牌推广的方法　　品牌推广的方法不是单靠软文，只是软文是最好的选择。现在是内容时代，只要你有好的内容能帮助到用户，百度也会第一时间把您的内容展现给用户。就像上面我所说的那个利用玩具知识来推广网站的案例，虽然好多文章并不是自己写的。我们要学会寻找这个内容的资源，给重新整理。　　品牌推广用的最多的也是评论推广，比如现在好多人都有自己的博客。我们可以到这些博客上面来推广我们的品牌。大家可以看下博客导航网站，没事的时候，我们找一些人气旺旺的博客，去留言，发表自己的看法。评论不只是推广自己的公司，我们直接用呢称写上品牌名，评论要写出我们真实的想法，如果说的有理，将会有很多人围观，间接的推广您的品牌。　　留言推广大家可以利用微博，把微博名称弄成自己的公司品牌，可以评论一些微博或者和一些相关行业的微博交流，发表自己的看法，没事点个赞。至于这个赞，以前好多人都会集赞，我不懂是干嘛的。当有人给我点赞的时候，我才知道，原来有些时候，我们关注一条信息，我们不想多说些时候，只要想告诉对方，我看过，而点赞却是告诉对方最好的方法，而且对方也会留意的。　　现在，智能手机是非常的方便，像手机上常玩的有微信，微博，陌陌，微视，来往，美拍，今日头条等。这些都是人们喜欢玩的，而且人气也非常的旺。没事的时候，看看这些信息也是不错的，感觉不错就发表下自己的评论，头像弄成公司的LOGO，呢称弄成自己的品牌。这样，既可以关注一些信息，也可以推广自己的公司，双收获呀。　　最后，邵连虎博客还是要和大家总结一下，建立一个公司网站，想了一品牌名称，然后到各大平台去推广您的品牌。免费提供一些服务，经常与粉丝互动，与粉丝交朋友。在某一细分行业，做出自己的品牌，让别人一看到这个产品，就知道是你们公司好，一提到服务，就知道你们公司好，那么，你们就离成功不远了。\r\n</p>', 'default/column/content', 'news_content', 100, 0, 30, 1, '转载', 1435810750, '', 0);
/*!40000 ALTER TABLE `yx_news` ENABLE KEYS */;

-- 导出  表 cms.yx_orders 结构
CREATE TABLE IF NOT EXISTS `yx_orders` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `ordersubject` varchar(90) NOT NULL COMMENT '订单名称',
  `ordernum` varchar(20) NOT NULL COMMENT ' 订单号',
  `tradenum` varchar(32) NOT NULL COMMENT '支付平台订单号',
  `account` varchar(30) NOT NULL COMMENT '账户',
  `total` float NOT NULL COMMENT '总价',
  `freight` float NOT NULL COMMENT '运费',
  `freighttype` varchar(20) NOT NULL COMMENT '邮寄方式',
  `freightpayment` varchar(10) NOT NULL COMMENT '邮费支付方',
  `freightnum` varchar(32) NOT NULL COMMENT '物流订单号',
  `freightname` varchar(90) NOT NULL COMMENT '物流公司',
  `receivename` varchar(30) NOT NULL COMMENT '收货人',
  `receiveaddress` varchar(255) NOT NULL COMMENT '收货地址',
  `receivezip` varchar(20) NOT NULL COMMENT '邮编',
  `receivephone` varchar(30) NOT NULL COMMENT '电话',
  `receivemobile` varchar(30) NOT NULL COMMENT '手机',
  `ordertime` int(11) NOT NULL COMMENT '订单时间',
  `state` tinyint(1) NOT NULL COMMENT '订单状态',
  `mess` text NOT NULL COMMENT '订单信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_orders 的数据：0 rows
DELETE FROM `yx_orders`;
/*!40000 ALTER TABLE `yx_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `yx_orders` ENABLE KEYS */;

-- 导出  表 cms.yx_order_detail 结构
CREATE TABLE IF NOT EXISTS `yx_order_detail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL COMMENT '商品编号',
  `ordernum` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `num` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_order_detail 的数据：0 rows
DELETE FROM `yx_order_detail`;
/*!40000 ALTER TABLE `yx_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `yx_order_detail` ENABLE KEYS */;

-- 导出  表 cms.yx_page 结构
CREATE TABLE IF NOT EXISTS `yx_page` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` varchar(350) NOT NULL,
  `content` text NOT NULL,
  `edittime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_page 的数据：1 rows
DELETE FROM `yx_page`;
/*!40000 ALTER TABLE `yx_page` DISABLE KEYS */;
INSERT INTO `yx_page` (`id`, `sort`, `content`, `edittime`) VALUES
	(1, ',000000,100001', '<span style="color:#333333;font-family:\'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif;font-size:14px;line-height:24px;text-indent:28px;white-space:normal;background-color:#FFFFFF;">Yxcms是一款高效,灵活,实用,免费的企业建站系统,基于PHP和mysql技术,让您拥有更加专业的企业建站和企业网站制作服务。采用三级缓存：数据库缓存、模板缓存、静态缓存，可使网站数据达到百万级负载.采用功能与显示分离设计，灵活的标签库和任意拓展的插件机制，让您随心所欲，将DIY进行到底。拥有建站各种实用功能，摒弃各种复杂繁琐的功能操作。卓越的用户体验，让您使用起来方便明了。遵循BSD开源协议，不对用户做任何功能限制，保证用户二次商业开发使用。</span>', '2015-06-30 12:56:53');
/*!40000 ALTER TABLE `yx_page` ENABLE KEYS */;

-- 导出  表 cms.yx_photo 结构
CREATE TABLE IF NOT EXISTS `yx_photo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sort` varchar(350) NOT NULL COMMENT '类别',
  `exsort` varchar(350) NOT NULL,
  `account` char(15) NOT NULL COMMENT '发布者账户',
  `title` varchar(60) NOT NULL COMMENT '标题',
  `places` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL COMMENT '标题颜色',
  `picture` varchar(80) NOT NULL COMMENT '封面图',
  `keywords` varchar(300) NOT NULL COMMENT '关键字',
  `description` varchar(600) NOT NULL,
  `photolist` text NOT NULL COMMENT '图片集',
  `conlist` text NOT NULL COMMENT '图片说明',
  `content` text NOT NULL COMMENT '内容',
  `method` varchar(100) NOT NULL COMMENT '方法',
  `tpcontent` varchar(100) NOT NULL COMMENT '模板',
  `norder` int(4) NOT NULL COMMENT '排序',
  `recmd` tinyint(1) NOT NULL COMMENT '推荐',
  `hits` int(10) NOT NULL COMMENT '点击量',
  `ispass` tinyint(1) NOT NULL,
  `addtime` int(11) NOT NULL,
  `releids` varchar(255) NOT NULL,
  `extfield` int(10) NOT NULL DEFAULT '0' COMMENT '拓展字段',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_photo 的数据：10 rows
DELETE FROM `yx_photo`;
/*!40000 ALTER TABLE `yx_photo` DISABLE KEYS */;
INSERT INTO `yx_photo` (`id`, `sort`, `exsort`, `account`, `title`, `places`, `color`, `picture`, `keywords`, `description`, `photolist`, `conlist`, `content`, `method`, `tpcontent`, `norder`, `recmd`, `hits`, `ispass`, `addtime`, `releids`, `extfield`) VALUES
	(1, ',000000,100002', '100017,100021,100022,100024', 'admin', '常熟市文化广电新闻出版局', '', '', '1506300215571546842590.png', '新闻出版,广电,文化', '常熟市文化广电新闻出版局', '1506300215571546842590.png ,1506300215591877540619.png ,1506300216001891940230.png ', '首页,列表样式一,列表样式二', '&lt;span style=&quot;color:#333333;font-family:\\\'Microsoft YaHei\\\', simsun, \\\'Helvetica Neue\\\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;text-align:center;white-space:normal;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;text-indent:28px;white-space:normal;background-color:#FFFFFF;&quot;&gt;根据《中共苏州市委、苏州市人民政府关于印发〈常熟市人民政府机构改革方案〉的通知》（苏委〔2009〕275号）和《中共常熟市委、常熟市人民政府关于印发〈常熟市人民政府机构改革实施意见〉的通知》（常发〔2010〕4号），设立常熟市文化广电新闻出版局，挂“常熟市文物局”、“常熟市版权局”牌子，为市政府工作部门，正科级建制&lt;/span&gt;&lt;/span&gt;', 'default/column/content', 'photo_content', 100, 0, 31, 1, 1435644924, '', 0),
	(2, ',000000,100002', '100016,100020,100023,100025', 'admin', '小胖妞模板网', '', '', '1506300220031481440664.png', '模板', '小胖妞模板网', '1506300220031481440664.png ,1506300220051919311843.png ,1506300220071549770218.png ', '首页,栏目页,模板页', '小胖妞模板网', 'default/column/content', 'photo_content', 100, 0, 31, 1, 1435645163, '', 0),
	(3, ',000000,100002', '100018,100020,100021,100024', 'admin', '北京外国语大学', '', '', '1506300229482129600064.png', '大学,外国语,北京', '北京外国语大学', '150630022159159647826.png ,1506300222001905899246.png ,1506300229482129600064.png ', '列表页,内容页,首页', '北京外国语大学', 'default/column/content', 'photo_content', 100, 0, 31, 1, 1435645256, '', 0),
	(4, ',000000,100002', '100019,100020,100023,100025', 'admin', '美浩工作室', '', '', '150630023220650531797.png', '工作室', '美浩工作室', '150630023220650531797.png ,1506300232221386468141.png ,1506300232241145919893.png ', '首页,案例页,论坛页', '美浩工作室', 'default/column/content', 'photo_content', 100, 0, 31, 1, 1435645876, '', 0),
	(5, ',000000,100002', '100019,100020,100023,100025', 'admin', '中电六所智能系统有限公司', '', '', '150630023349974356615.png', '有限公司,系统,智能', '中电六所智能系统有限公司', '150630023349974356615.png ,1506300233501594117165.png ', '首页,列表页', '&lt;span style=&quot;color:#333333;font-family:\\\'Microsoft YaHei\\\', simsun, \\\'Helvetica Neue\\\', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;text-align:center;white-space:normal;background-color:#FFFFFF;&quot;&gt;中电六所智能系统有限公司&lt;/span&gt;', 'default/column/content', 'photo_content', 100, 0, 32, 1, 1435646005, '', 0),
	(6, ',000000,100002', '', 'admin', '网云工作室', '', '', '150630024342113548484.png', '工作室', '网云工作室', '150630024342113548484.png ,150630024343509801399.png ', '首页,列表页', '网云工作室', 'default/column/content', 'photo_content', 100, 0, 32, 1, 1435646436, '', 0),
	(7, ',000000,100011', '', 'admin', '山水之间人文茶器', '', '', '150630030053419355515.jpg', '人文,山水,人心,长久,温暖,景德镇,之间,本色,手工', '山水间 本色手作盖碗 人文茶器 景德镇纯手工盖碗\r\n人文茶器温暖人心的长久陪伴', '1506300300501970643183.jpg ,150630030052472540922.jpg ,150630030053419355515.jpg ,1506300300541547700613.jpg ', '圆筒,长底,圆体,传统', '&lt;p&gt;\r\n	山水间本色手作盖碗,人文茶器&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	景德镇纯手工盖碗\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	人文茶器温暖人心的长久陪伴\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;', 'default/column/content', 'photo_pcontent', 100, 0, 31, 1, 1435647617, '', 3),
	(8, ',000000,100011', '', 'admin', '手工紫砂壶', '', '', '1506300305431242487463.jpg', '手工', '手工紫砂壶', '1506300305392063905464.jpg ,150630030541852991339.jpg ,15063003054262323237.jpg ,1506300305431242487463.jpg ', ',,,', '紫砂壶长久以来，即被人们推崇为理想的注茶器。它优良的实用功能，在明清两代的文献中即有所记载。明清两代人们认为茶壶之所以“黜银锡及闽豫瓷，而尚宜陶”，是由于紫砂壶能发出茶之色、香、味，并且既不夺香，又煮熟汤气。关于“越宿不馊”的说法也有其一定的道理。', 'default/column/content', 'photo_pcontent', 100, 0, 30, 1, 1435647826, '', 4),
	(9, ',000000,100011', '', 'admin', '创意咖啡杯', '', '', '1506300307401269555756.jpg', '咖啡,创意', '创意咖啡杯', '150630030737380344725.jpg ,1506300307381538704174.jpg ,1506300307401269555756.jpg ,150630030741882276299.jpg ', '熊,兔子,猫头鹰,狗', '骨质瓷（Bone china）： 简称骨瓷，亦称骨灰瓷，生产始于英国，学界一般认为第一个成功生产出骨质瓷的英国人是约西亚· 斯波德（Josiah Spode）（1755-1827年）。乔西亚.斯波德将煅烧后的骨头与瓷土和矿物熔剂直接混合而成为传统的硬质瓷原料，在19世纪初试验成功。随后他又开始进行生产骨瓷配方的系统性研究，1821年底，骨灰和瓷石多少的比例被“标准化”，当时，人们认为以长石为熔剂含骨灰46%的坯料生产出的瓷器是最好的产品。', 'default/column/content', 'photo_pcontent', 100, 0, 31, 1, 1435648021, '', 5),
	(10, ',000000,100011', '', 'admin', '传统咖啡研磨机', '', '', '150630030930848913083.jpg', '咖啡,传统', '传统咖啡研磨机', '150630030929260152539.jpg ,150630030930848913083.jpg ,1506300309311307190140.jpg ,15063003093246117802.jpg ', '顶柄,侧柄,双柄,侧柄', '德国人对机械的要求高，讲究精细，这款德国Zassenhaus 40098 Santiago 实木手摇咖啡研磨机的研磨器拥有锥毛刺磨床专利权，由高品质的特殊钢材制成，经久耐用。独特的研磨控制系统，只需调整手摇柄下方的螺钉即可精确控制粉末的研磨粗细研磨度，顺时针调整为粗，逆时针为细。同时也能确保产生因研磨导致的较少热量，保留咖啡豆原始的香气与营养成分。实木外壳清新自然，造型高雅大方。', 'default/column/content', 'photo_pcontent', 100, 0, 31, 1, 1435648143, '', 6);
/*!40000 ALTER TABLE `yx_photo` ENABLE KEYS */;

-- 导出  表 cms.yx_place 结构
CREATE TABLE IF NOT EXISTS `yx_place` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `norder` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_place 的数据：1 rows
DELETE FROM `yx_place`;
/*!40000 ALTER TABLE `yx_place` DISABLE KEYS */;
INSERT INTO `yx_place` (`id`, `name`, `norder`) VALUES
	(101, '首页推荐', 100);
/*!40000 ALTER TABLE `yx_place` ENABLE KEYS */;

-- 导出  表 cms.yx_sort 结构
CREATE TABLE IF NOT EXISTS `yx_sort` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '模型类别',
  `path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ename` varchar(100) NOT NULL,
  `picwidth` int(5) NOT NULL,
  `picheight` int(5) NOT NULL,
  `picture` varchar(80) NOT NULL,
  `deep` int(5) unsigned NOT NULL DEFAULT '1' COMMENT '深度',
  `norder` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `ifmenu` tinyint(1) NOT NULL COMMENT '是否前台显示',
  `method` varchar(100) NOT NULL COMMENT '模型方法',
  `tplist` varchar(100) NOT NULL COMMENT '列表模板',
  `keywords` varchar(255) NOT NULL COMMENT '描述',
  `description` varchar(300) NOT NULL COMMENT '描述',
  `url` varchar(255) NOT NULL COMMENT '外部链接',
  `extendid` int(10) NOT NULL COMMENT '拓展表id',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=100028 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_sort 的数据：27 rows
DELETE FROM `yx_sort`;
/*!40000 ALTER TABLE `yx_sort` DISABLE KEYS */;
INSERT INTO `yx_sort` (`id`, `type`, `path`, `name`, `ename`, `picwidth`, `picheight`, `picture`, `deep`, `norder`, `ifmenu`, `method`, `tplist`, `keywords`, `description`, `url`, `extendid`) VALUES
	(100001, 3, ',000000', '系统介绍', 'aboutus', 0, 0, '20150630/thumb_1435644326.png', 1, 100, 1, 'page/index', 'page_index', 'yxcms,简洁,简单,快捷', 'Yxcms是一款高效,灵活,实用,免费的企业建站系统,基于PHP和mysql技术,让您拥有更加专业的企业建站和企业网站制作服务。采用三级缓存：数据库缓存、模板缓存、静态缓存，可使网站数据达到百万级负载.采用功能与显示分离设计，灵活的标签库和任意拓展的插件机制，让您随心所欲，将DIY进行到底。拥有建站各种实用功能，摒弃各种复杂繁琐的功能操作。卓越的用户体验，让您使用起来方便明了。遵循BSD开源协议，不对用户做任何功能限制，保证用户二次商业开发使用。', '', 0),
	(100002, 2, ',000000', '模板演示', 'demoshow', 340, 340, '', 1, 100, 1, 'photo/index', 'photo_index,photo_content', 'yxcms,模板,演示', 'yxcms模板演示', '10', 0),
	(100003, 1, ',000000', '建站知识', 'knowledge', 225, 76, '', 1, 100, 1, 'news/index', 'news_index,news_content', '网站建设,基本常识', '网站建设常识', '10', 0),
	(100004, 1, ',000000,100003', '后台技术', 'background', 225, 76, '', 2, 100, 1, 'news/index', 'news_indexs,news_content', '网站,后台,知识', '网站后台知识', '10', 0),
	(100005, 1, ',000000,100003', '前端技术', 'frontend', 225, 76, '', 2, 100, 1, 'news/index', 'news_index,news_content', '网站,前端,概括,介绍', '网站前端概括介绍', '10', 0),
	(100006, 1, ',000000,100003', '推广知识', 'promotion', 225, 76, '', 2, 100, 1, 'news/index', 'news_indexs,news_content', '网站,推广,知识', '网站推广知识', '10', 0),
	(100007, 1, ',000000,100003,100005', '前端基础', 'frontbase', 225, 76, '', 3, 100, 1, 'news/index', 'news_index,news_content', '网站,前端,基础,介绍', '网站前端基础介绍', '10', 0),
	(100008, 1, ',000000,100003,100005', '前端框架', 'frontframe', 225, 76, '', 3, 100, 1, 'news/index', 'news_index,news_content', '前端,框架,介绍', '主流和非主流的前端框架介绍', '10', 0),
	(100009, 1, ',000000,100003,100005,100007', 'JavaScript', 'javascript', 225, 76, '', 4, 100, 1, 'news/index', 'news_index,news_content', 'JavaScript,入门,介绍', 'JavaScript入门介绍', '10', 0),
	(100010, 1, ',000000,100003,100005,100007', 'Css', 'css', 225, 76, '', 4, 100, 1, 'news/index', 'news_index,news_content', 'Css,入门,介绍', 'Css入门介绍', '10', 0),
	(100011, 2, ',000000', '产品展示', 'products', 271, 271, '', 1, 100, 1, 'photo/index', 'photo_indexp,photo_pcontent', '产品,演示', '产品展示', '10', 18),
	(100012, 6, ',000000', '留言本', 'guestbook', 0, 0, '', 1, 100, 1, 'extend/index', 'extend_guestbook', '在线留言', '在线留言', '10||感谢您的留言', 12),
	(100013, 2, ',000000', '行业', '100013', 271, 271, '', 1, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100014, 2, ',000000', '风格', '100014', 271, 271, '', 1, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100015, 2, ',000000', '颜色', '100015', 271, 271, '', 1, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100016, 2, ',000000,100013', '互联网', '100016', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100017, 2, ',000000,100013', '政府', '100017', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100018, 2, ',000000,100013', '学校', '100018', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100019, 2, ',000000,100013', '科技', '100019', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100020, 2, ',000000,100014', '现代', '100020', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100021, 2, ',000000,100014', '民族', '100021', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100022, 2, ',000000,100014', '艳丽', '100022', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100023, 2, ',000000,100014', '简洁', '100023', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100024, 2, ',000000,100015', '红色', 'red', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100025, 2, ',000000,100015', '蓝色', 'blue', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100026, 2, ',000000,100015', '黄色', 'yellow', 271, 271, '', 2, 100, 0, 'photo/index', 'photo_index,photo_content', '', '', '10', 0),
	(100027, 6, ',000000', '内容评论', '100027', 0, 0, '', 1, 100, 0, 'extend/index', 'extend_index', '', '', '10||留言成功等待审核', 7);
/*!40000 ALTER TABLE `yx_sort` ENABLE KEYS */;

-- 导出  表 cms.yx_tags 结构
CREATE TABLE IF NOT EXISTS `yx_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` varchar(255) NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '0',
  `mesnum` int(10) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.yx_tags 的数据：59 rows
DELETE FROM `yx_tags`;
/*!40000 ALTER TABLE `yx_tags` DISABLE KEYS */;
INSERT INTO `yx_tags` (`id`, `name`, `url`, `hits`, `mesnum`, `addtime`) VALUES
	(1, '为什么', '', 0, 0, 1439525250),
	(2, '搭建', '', 0, 0, 1439525250),
	(3, '网站', '', 0, 0, 1439525250),
	(4, '究竟', '', 0, 0, 1439525250),
	(5, '选择', '', 0, 0, 1439525250),
	(6, '企业', '', 0, 0, 1439525250),
	(7, '作为', '', 0, 0, 1439525250),
	(8, '后台', '', 0, 0, 1439525250),
	(9, '语言', '', 0, 0, 1439525250),
	(10, '越来越', '', 0, 0, 1439525250),
	(11, '使用', '', 0, 0, 1439525250),
	(12, '功能', '', 0, 0, 1439525250),
	(13, '需要', '', 0, 0, 1439525250),
	(14, '更加', '', 0, 0, 1439525250),
	(15, '可以', '', 0, 0, 1439525250),
	(16, '我们', '', 0, 0, 1439525250),
	(17, '其他', '', 0, 0, 1439525250),
	(18, '简单', '', 0, 0, 1439525250),
	(19, '易于', '', 0, 0, 1439525250),
	(20, '希望', '', 0, 0, 1439525250),
	(21, '喜欢', '', 0, 0, 1439525250),
	(22, '以及', '', 0, 0, 1439525250),
	(23, '丰富', '', 0, 0, 1439525250),
	(24, '扩展', '', 0, 0, 1439525250),
	(25, '目标', '', 0, 0, 1439525250),
	(26, '拥有', '', 0, 0, 1439525250),
	(27, '所在', '', 0, 0, 1439525250),
	(28, '一切', '', 0, 0, 1439525250),
	(29, '人员', '', 0, 0, 1439525250),
	(30, '这里', '', 0, 0, 1439525250),
	(31, '地方', '', 0, 0, 1439525250),
	(32, '贡献', '', 0, 0, 1439525250),
	(33, '开发', '', 0, 0, 1439525250),
	(34, '一个', '', 0, 0, 1439525250),
	(35, '一直', '', 0, 0, 1439525250),
	(36, '欢迎', '', 0, 0, 1439525250),
	(37, '加入我们', '', 0, 0, 1439525250),
	(38, '帮助', '', 0, 0, 1439525250),
	(39, '性能', '', 0, 0, 1439525250),
	(40, '卓越', '', 0, 0, 1439525250),
	(41, '所有', '', 0, 0, 1439525250),
	(42, '的方式', '', 0, 0, 1439525250),
	(43, '暴露', '', 0, 0, 1439525250),
	(44, '出来', '', 0, 0, 1439525250),
	(45, '因为', '', 0, 0, 1439525250),
	(46, '框架', '', 0, 0, 1439525250),
	(47, '开发者', '', 0, 0, 1439525250),
	(48, '高性能', '', 0, 0, 1439525250),
	(49, '学习', '', 0, 0, 1439525250),
	(50, '针对', '', 0, 0, 1439525250),
	(51, '直接', '', 0, 0, 1439525250),
	(52, '对象', '', 0, 0, 1439525250),
	(53, '只是', '', 0, 0, 1439525250),
	(54, '为了', '', 0, 0, 1439525250),
	(55, '任意', '', 0, 0, 1439525250),
	(56, '目的', '', 0, 0, 1439525250),
	(57, '编写', '', 0, 0, 1439525250),
	(58, '根据', '', 0, 0, 1439525250),
	(59, '优化', '', 0, 0, 1439525250);
/*!40000 ALTER TABLE `yx_tags` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
