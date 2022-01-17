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

-- 导出  表 cms.qb_admin_menu 结构
CREATE TABLE IF NOT EXISTS `qb_admin_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `groupid` mediumint(5) NOT NULL DEFAULT '0',
  `iftier` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_admin_menu 的数据：31 rows
DELETE FROM `qb_admin_menu`;
/*!40000 ALTER TABLE `qb_admin_menu` DISABLE KEYS */;
INSERT INTO `qb_admin_menu` (`id`, `fid`, `name`, `linkurl`, `color`, `target`, `list`, `groupid`, `iftier`) VALUES
	(12, 0, '内容管理', '', '', 0, 8, 3, 0),
	(81, 12, '表单管理', 'index.php?lfj=module_admin&dirname=form&file=form_content&job=list', '', 0, 11, 3, 0),
	(82, 12, '留言本管理', 'index.php?lfj=module_admin&dirname=guestbook&file=content&job=list', '', 0, 10, 3, 1),
	(83, 0, '标签/风格模板/静态页', '', '', 0, 9, 3, 0),
	(84, 83, '</a>\r\n<font color="#FF0000">主页</font><img src=../images/default/article_elite.gif> <a href="../index.php?&ch=1&chtype=0&jobs=show" target="main">标签</a> <A HREF=\'../index.php?&ch=1&MakeIndex=1\' target=\'_blank\' onclick="return confirm(\'你确实要把首页生成静态吗?生成静态后,如有更改其它相关设置,需要重新点击生成一次静态.才可以看到效果.\');">静态</a> <a href="index.php?lfj=channel&job=list_fid&onlyshow=style" target="main">风格</a><a> ', '#', '', 0, 4, 3, 0),
	(85, 83, '</a>\r\n<a href=\'index.php?lfj=channel&job=list_fid&onlyshow=label\' target=\'main\'><font color="#FF0000"><u>栏目</u></font></a><img src=../images/default/article_elite.gif> <a href="../do/job.php?job=jump&pagetype=list_label" target="main">标签</a> <A HREF=\'index.php?lfj=html&job=list\' target="main">静态</a> <a href="index.php?lfj=channel&job=list_fid&onlyshow=style" target="main">风格</a><a> ', '#', '', 0, 3, 3, 0),
	(86, 83, '</a>\r\n<font color="#FF0000">专题</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=special&job=list&onlyshow=label" target="main">标签</a> <A HREF=\'index.php?lfj=html&job=listsp\' target="main">静态</a> <a href="index.php?lfj=special&job=list&onlyshow=style" target="main">风格</a><a> ', '#', '', 0, 1, 3, 0),
	(87, 0, '会员相关功能', '', '', 0, 7, 3, 0),
	(88, 87, '会员资料管理', 'index.php?lfj=member&job=list', '', 0, 0, 3, 0),
	(89, 87, '文章相关权限', 'index.php?lfj=article_group&job=list', '', 0, 0, 3, 0),
	(90, 87, '基本权限', 'index.php?lfj=group&job=list', '', 0, 0, 3, 1),
	(91, 87, '管理员后台权限设置', 'index.php?lfj=group&job=list_admin', '', 0, 0, 3, 0),
	(73, 12, '专题管理', 'index.php?lfj=special&job=list', '', 0, 13, 3, 0),
	(74, 12, '评论管理', 'index.php?lfj=comment&job=list', '', 0, 12, 3, 1),
	(75, 12, '</a>\r\n<font color="#FF0000">文章</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=post&job=postnew&only=1&mid=0" target="main">发表</a> <a href="index.php?lfj=artic&job=listartic&mid=0&only=1" target="main">管理</a> <a href="index.php?lfj=sort&job=listsort&mid=0&only=1" target="main">栏目</a><a> ', '#', '', 0, 20, 3, 0),
	(76, 12, '</a>\r\n<font color="#FF0000">图片</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=post&job=postnew&only=1&mid=100" target="main">发表</a> <a href="index.php?lfj=artic&job=listartic&mid=100&only=1" target="main">管理</a> <a href="index.php?lfj=sort&job=listsort&mid=100&only=1" target="main">栏目</a><a> ', '#', '', 0, 19, 3, 0),
	(77, 12, '</a>\r\n<font color="#FF0000">软件</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=post&job=postnew&only=1&mid=101" target="main">发表</a> <a href="index.php?lfj=artic&job=listartic&mid=101&only=1" target="main">管理</a> <a href="index.php?lfj=sort&job=listsort&mid=101&only=1" target="main">栏目</a><a> ', '#', '', 0, 18, 3, 0),
	(78, 12, '</a>\r\n<font color="#FF0000">视频</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=post&job=postnew&only=1&mid=102" target="main">发表</a> <a href="index.php?lfj=artic&job=listartic&mid=102&only=1" target="main">管理</a> <a href="index.php?lfj=sort&job=listsort&mid=102&only=1" target="main">栏目</a><a> ', '#', '', 0, 17, 3, 0),
	(79, 12, '</a>\r\n<font color="#FF0000">商品</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=post&job=postnew&only=1&mid=103" target="main">发表</a> <a href="index.php?lfj=artic&job=listartic&mid=103&only=1" target="main">管理</a> <a href="index.php?lfj=sort&job=listsort&mid=103&only=1" target="main">栏目</a><a> ', '#', '', 0, 16, 3, 0),
	(80, 12, '</a>\r\n<font color="#FF0000">产品</font><img src=../images/default/article_elite.gif> <a href="index.php?lfj=post&job=postnew&only=1&mid=105" target="main">发表</a> <a href="index.php?lfj=artic&job=listartic&mid=105&only=1" target="main">管理</a> <a href="index.php?lfj=sort&job=listsort&mid=105&only=1" target="main">栏目</a><a> ', '#', '', 0, 15, 3, 0),
	(92, 0, '系统功能设置', '', '', 0, 6, 3, 0),
	(93, 92, '核心全局参数设置', 'index.php?lfj=center&job=config', '', 0, 0, 3, 0),
	(94, 92, '网站导航菜单设置', 'index.php?lfj=guidemenu&job=list', '', 0, 0, 3, 0),
	(95, 92, '网站内容模型管理', 'index.php?lfj=article_module&job=list', '', 0, 0, 3, 0),
	(96, 92, '友情链接管理', 'index.php?lfj=friendlink&job=list', '', 0, 0, 3, 0),
	(97, 92, '独立页面管理', 'index.php?lfj=alonepage&job=list', '', 0, 0, 3, 0),
	(98, 92, '备份网站数据库', 'index.php?lfj=mysql&job=out', '', 0, 0, 3, 0),
	(99, 92, '万能表单模型管理', 'index.php?lfj=module_admin&dirname=form&file=form_module&job=list', '', 0, 0, 3, 0),
	(100, 92, '文章功能重要设置', 'index.php?lfj=article_more&job=config', '', 0, 0, 3, 0),
	(101, 83, '</a>\r\n<font color="#FF0000">内容</font><img src=../images/default/article_elite.gif> <a href="../do/job.php?job=jump&pagetype=bencandy_label" target="main">内容页标签</a>\r\n<a> ', '#', '', 0, 2, 3, 0),
	(102, 0, '大菜单', '', '', 0, 0, -3, 0);
/*!40000 ALTER TABLE `qb_admin_menu` ENABLE KEYS */;

-- 导出  表 cms.qb_ad_compete_place 结构
CREATE TABLE IF NOT EXISTS `qb_ad_compete_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `adnum` smallint(3) NOT NULL DEFAULT '0',
  `wordnum` smallint(3) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '1',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_ad_compete_place 的数据：1 rows
DELETE FROM `qb_ad_compete_place`;
/*!40000 ALTER TABLE `qb_ad_compete_place` DISABLE KEYS */;
INSERT INTO `qb_ad_compete_place` (`id`, `name`, `isclose`, `list`, `price`, `day`, `adnum`, `wordnum`, `autoyz`, `demourl`) VALUES
	(3, '顶客页竞价广告', 0, 0, 50, 5, 8, 36, 1, '/do/digg.php');
/*!40000 ALTER TABLE `qb_ad_compete_place` ENABLE KEYS */;

-- 导出  表 cms.qb_ad_compete_user 结构
CREATE TABLE IF NOT EXISTS `qb_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `adlink` varchar(200) NOT NULL DEFAULT '',
  `adword` varchar(255) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `color` varchar(20) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_ad_compete_user 的数据：2 rows
DELETE FROM `qb_ad_compete_user`;
/*!40000 ALTER TABLE `qb_ad_compete_user` DISABLE KEYS */;
INSERT INTO `qb_ad_compete_user` (`ad_id`, `uid`, `username`, `begintime`, `endtime`, `money`, `id`, `yz`, `adlink`, `adword`, `hits`, `color`, `fonttype`) VALUES
	(11, 1, 'admin', 1239277578, 1239709578, 50, 3, 1, 'http://www.qibosoft.com/', '齐博官方站', 0, '', 0),
	(12, 1, 'admin', 1239279810, 1239711810, 50, 3, 1, 'http://www.qibosoft.com/bbs', '齐博官方论坛', 0, '', 0);
/*!40000 ALTER TABLE `qb_ad_compete_user` ENABLE KEYS */;

-- 导出  表 cms.qb_ad_config 结构
CREATE TABLE IF NOT EXISTS `qb_ad_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_ad_config 的数据：5 rows
DELETE FROM `qb_ad_config`;
/*!40000 ALTER TABLE `qb_ad_config` DISABLE KEYS */;
INSERT INTO `qb_ad_config` (`c_key`, `c_value`, `c_descrip`) VALUES
	('module_pre', 'ad_', ''),
	('Info_webname', '广告系统', ''),
	('Info_webOpen', '1', ''),
	('module_close', '0', ''),
	('module_id', '24', '');
/*!40000 ALTER TABLE `qb_ad_config` ENABLE KEYS */;

-- 导出  表 cms.qb_ad_norm_place 结构
CREATE TABLE IF NOT EXISTS `qb_ad_norm_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `moneycard` mediumint(6) NOT NULL DEFAULT '0',
  `ifsale` tinyint(1) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '0',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_ad_norm_place 的数据：9 rows
DELETE FROM `qb_ad_norm_place`;
/*!40000 ALTER TABLE `qb_ad_norm_place` DISABLE KEYS */;
INSERT INTO `qb_ad_norm_place` (`id`, `keywords`, `name`, `type`, `isclose`, `begintime`, `endtime`, `adcode`, `posttime`, `list`, `uid`, `hits`, `money`, `moneycard`, `ifsale`, `autoyz`, `demourl`) VALUES
	(1, 'article_list', '文章列表页侧面广告', 'code', 0, 0, 0, 'a:5:{s:4:"word";s:0:"";s:6:"picurl";s:0:"";s:7:"linkurl";s:0:"";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";}', 0, 0, 0, 0, 0, 5, 0, 1, '/do/job.php?job=jump&pagetype=list'),
	(10, 'article_content', '文章内容里边的广告', 'pic', 1, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:32:"other/1_20090326120324_mnfIi.jpg";s:7:"linkurl";s:22:"http://www.qibosoft.com/";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"width";s:3:"400";s:6:"height";s:3:"400";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 0, 0, 5, 1, 1, '/do/job.php?job=jump&pagetype=bencandy'),
	(2, 'article_show', '文章内容页侧边下方广告', 'code', 0, 0, 0, 'a:5:{s:4:"word";s:0:"";s:6:"picurl";s:0:"";s:7:"linkurl";s:0:"";s:8:"flashurl";s:0:"";s:4:"code";s:1782:"<div style="LINE-HEIGHT: 150%"><a href="http://www.zxx6.com/" target=_blank><font color=#ff0000><strong>站长学习网</strong></font></a> 　　<a href="http://www.angelyyl.cn/" target=_blank>冰蓝世界</a><a href="http://www.czin.cn/" target=_blank><br />崇左热线—崇左人的网上家园</a> <br /><a href="http://www.sy50.com/" target=_blank>邵阳网邻 了解邵阳 商务邵阳</a> <br /><a href="http://www.771881.cn/" target=_blank>亲亲你抱抱你-国际女同拉拉网-败家女网站 </a><br /><a href="http://www.aihut.com/" target=_blank>情感小筑原创情感文章网 </a><br /><a href="http://www.popyule.com/" target=_blank>泡泡娱乐网--娱乐综合站qibosoft构建</a> <br /><a href="http://www.china551.cn/" target=_blank><font color=#ff0000>高中物理网</font></a> 　　<a href="http://www.ym988.com/" target=_blank>圆梦模板工作室 </a><br /><a href="http://www.welights.com/" target=_blank>国际灯具网</a> 　　<a href="http://www.hnmssy.cn/" target=_blank>湖南民俗摄影网</a> <br /><a href="http://www.nuoyue.net/" target=_blank><font color=#ff0000>诺跃站长社区 - 站长、菜鸟学习的好地方</font></a> <br /><a href="http://www.qzfl.com/" target=_blank>泉州分类 连接泉州信息，服务百姓生活</a> <br /><a href="http://www.stmsn.com/" target=_blank>中国内衣联盟</a> 　　<a href="http://www.downcc.cn/" target=_blank>大当家软件站 </a><br /><a href="http://www.yt12333.cn/" target=_blank>劳动社保之家-盐亭劳动保障网</a> <br /><a href="http://www.gooyi.cn/" target=_blank>广易网 - 广州最大门户网 </a><br /><a href="http://www.idercn.com/" target=_blank>I.D.部落</a> 　　<a href="http://www.tz0632.com/" target=_blank>滕州城市网</a> 　　<a href="http://www.doubar.com/" target=_blank>豆吧 </a></div>\r\n<div style="LINE-HEIGHT: 150%"><a href="http://www.wfseo.org/" target=_blank><font color=#d2691e>重庆网站优化</font><br /></a><br /></div>";}', 0, 0, 0, 0, 0, 5, 0, 1, '/do/job.php?job=jump&pagetype=bencandy'),
	(11, 'digg_list', '顶客排行榜侧边广告', 'code', 0, 0, 0, 'a:5:{s:4:"word";s:0:"";s:6:"picurl";s:0:"";s:7:"linkurl";s:0:"";s:8:"flashurl";s:0:"";s:4:"code";s:813:"<div style="LINE-HEIGHT: 200%"><a href="http://www.ibioo.com/" target=_blank><font color=#ff0000>绿谷生物网--打造最具活力生物站!</font> </a><br /><a href="http://www.51solo.net/" target=_blank>搜罗娱乐门户－精彩娱乐生活从我开始 </a><br /><a href="http://1.com/45/admin/www.china-highway.com" target=_blank>方向和路线尽在中国高速公路网 </a><br /><a href="http://www.nenbei.com/" target=_blank><font color=#ff0000>嫩北聚合娱乐网欢迎您的到来 </font></a><br /><a href="http://www.liuv.net/" target=_blank><font color=#ff0000>流水设计</font></a> <br /><a href="http://www.fming.net/" target=_blank>蜂鸣原创 文学与摄影的创作平台 </a><br /><a href="http://www.netchinatown.com/" target=_blank>时尚唐城-海外华人精英的网络家园 </a><br /><a href="http://frp.ok586.cn/" target=_blank>上海玻璃钢冷却塔专业生产厂家. </a></div>";}', 0, 0, 0, 0, 0, 5, 0, 1, '/do/digg.php'),
	(19, 'list_page_topad', '列表页侧边顶部广告位', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:13:"ad/listad.jpg";s:7:"linkurl";s:22:"http://www.yeepay.com/";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"width";s:3:"290";s:6:"height";s:3:"130";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 2, 0, 10, 1, 1, '/do/job.php?job=jump&pagetype=list'),
	(18, 'show_topad', '内容页顶部横幅广告', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:18:"ad/ad_show_top.jpg";s:7:"linkurl";s:22:"http://www.yeepay.com/";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"width";s:3:"980";s:6:"height";s:2:"60";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 0, 0, 10, 1, 1, '../do/job.php?job=jump&pagetype=bencandy'),
	(17, 'show_right_top_picad', '内容页侧边顶部图片广告位', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:15:"ad/qyshowad.jpg";s:7:"linkurl";s:43:"http://www.qy.com.cn/idc/product_double.asp";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"width";s:3:"290";s:6:"height";s:3:"110";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 29, 0, 10, 1, 1, '/do/job.php?job=jump&pagetype=bencandy'),
	(20, 'AD_list_topad', '列表页顶部横幅广告', 'pic', 0, 0, 0, 'a:8:{s:4:"word";s:0:"";s:6:"picurl";s:14:"ad/cnidca1.gif";s:7:"linkurl";s:21:"http://www.cnidc.com/";s:8:"flashurl";s:0:"";s:4:"code";s:0:"";s:5:"width";s:3:"980";s:6:"height";s:2:"60";s:9:"pictarget";s:5:"blank";}', 0, 0, 0, 4, 0, 10, 1, 1, '/do/list.php?fid=1'),
	(21, 'sp_show_ad', '专题页广告位', 'code', 0, 0, 0, 'a:5:{s:4:"word";s:0:"";s:6:"picurl";s:0:"";s:7:"linkurl";s:0:"";s:8:"flashurl";s:0:"";s:4:"code";s:943:"<div style="LINE-HEIGHT: 150%"><a href="http://3cq.org/" target=_blank>重庆幼儿教育 一切为了我们的孩子</a> <br /><a href="http://www.liuv.net/" target=_blank>流水设计</a> <br /><a href="http://www.21yao.com/" target=_blank>世纪医药网</a><br /><a href="http://www.fming.net/" target=_blank>蜂鸣原创</a> <br /><a href="http://www.jnrx.net/" target=_blank>胶南热线</a> <br /><a href="http://www.7mt.cn/" target=_blank>骑摩托-中国第一摩托车互动媒体 </a><br /><a href="http://www.hnpolice.net/" target=_blank>湖南公安高等专科学校校友会 </a><br /><a href="http://www.seo178.com/" target=_blank>SEO培训选择--北京SEO培训中心</a> <br /><a href="http://www.51solo.net/" target=_blank>品牌推广,SEO网站优化 </a><br /><a href="http://www.kljy.cn/" target=_blank>致力于儿童教育 </a><br /><a href="http://www.eia8.com/job/" target=_blank>中国环评吧招聘求职网</a> <br /><a href="http://www.wenzhang8.com/" target=_blank>文章吧 打造最好经典文章网 </a>　 </div>";}', 0, 0, 0, 0, 0, 0, 0, 1, '/do/showsp.php?fid=1&id=23');
/*!40000 ALTER TABLE `qb_ad_norm_place` ENABLE KEYS */;

-- 导出  表 cms.qb_ad_norm_user 结构
CREATE TABLE IF NOT EXISTS `qb_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `u_uid` mediumint(7) NOT NULL DEFAULT '0',
  `u_username` varchar(30) NOT NULL DEFAULT '',
  `u_day` smallint(4) NOT NULL DEFAULT '0',
  `u_begintime` int(10) NOT NULL DEFAULT '0',
  `u_endtime` int(10) NOT NULL DEFAULT '0',
  `u_hits` mediumint(7) NOT NULL DEFAULT '0',
  `u_yz` tinyint(1) NOT NULL DEFAULT '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL DEFAULT '0',
  `u_moneycard` mediumint(7) NOT NULL DEFAULT '0',
  `u_posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`),
  KEY `u_endtime` (`u_endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_ad_norm_user 的数据：0 rows
DELETE FROM `qb_ad_norm_user`;
/*!40000 ALTER TABLE `qb_ad_norm_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_ad_norm_user` ENABLE KEYS */;

-- 导出  表 cms.qb_alonepage 结构
CREATE TABLE IF NOT EXISTS `qb_alonepage` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `tpl_head` varchar(50) NOT NULL DEFAULT '',
  `tpl_main` varchar(50) NOT NULL DEFAULT '',
  `tpl_foot` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_alonepage 的数据：1 rows
DELETE FROM `qb_alonepage`;
/*!40000 ALTER TABLE `qb_alonepage` DISABLE KEYS */;
INSERT INTO `qb_alonepage` (`id`, `fid`, `name`, `title`, `posttime`, `uid`, `username`, `style`, `tpl_head`, `tpl_main`, `tpl_foot`, `filename`, `filepath`, `descrip`, `keywords`, `content`, `hits`, `ishtml`) VALUES
	(1, 0, '友情链接', '友情链接', 1229507597, 0, '', '', '', '', '', 'friendlink.htm', '', '', '', '<table cellSpacing=4 cellPadding=4 width="100%" border=0>\r\n<tbody>\r\n<tr>\r\n<td width="20%"><a href="http://www.mmcbbs.com/" target=_blank>菁菁论坛</a></td>\r\n<td width="20%"><a href="http://www.liuv.net/" target=_blank>流水设计</a></td>\r\n<td width="20%"><a href="http://pic.goodod.com/" target=_blank>欧迪手机图片</a></td>\r\n<td width="20%"><a href="http://www.tianyakezhan.com/" target=_blank>天涯客栈</a></td>\r\n<td width="20%"><a href="http://www.czin.cn/" target=_blank>崇左热线</a></td></tr>\r\n<tr>\r\n<td width="20%"><a href="http://www.jneg.com.cn/" target=_blank>金能家园</a></td>\r\n<td width="20%"><a href="http://www.wyrj.com/" target=_blank>屋檐人家</a></td>\r\n<td width="20%"><a href="http://www.nenbei.com/" target=_blank>嫩北网</a></td>\r\n<td width="20%"><a href="http://www.photosbar.com/" target=_blank>图吧</a></td>\r\n<td width="20%"><a href="http://www.ok586.cn/" target=_blank>视览供销</a></td></tr>\r\n<tr>\r\n<td width="20%"><a href="http://www.51solo.net/" target=_blank>我爱搜罗娱乐</a></td>\r\n<td width="20%"><a href="http://www.toopd.com/" target=_blank>飞羽设计</a></td>\r\n<td width="20%"><a href="http://www.qiqig.com/" target=_blank>爱雅</a></td>\r\n<td width="20%"><a href="http://www.jxsrjys.com.cn/" target=_blank>上饶教研</a></td>\r\n<td width="20%"><a href="http://www.unok.net/" target=_blank>优盟网</a></td></tr>\r\n<tr>\r\n<td width="20%"><a href="http://mmm.pudou.com/" target=_blank>扑豆中国</a></td>\r\n<td width="20%"><a href="http://www.itzhan.com/" target=_blank>IT中文</a></td>\r\n<td width="20%"><a href="http://www.hkwtv.com/" target=_blank>香港网视</a></td>\r\n<td width="20%">&nbsp;</td>\r\n<td width="20%">&nbsp;</td></tr></tbody></table>', 54, 0);
/*!40000 ALTER TABLE `qb_alonepage` ENABLE KEYS */;

-- 导出  表 cms.qb_area 结构
CREATE TABLE IF NOT EXISTS `qb_area` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_area 的数据：537 rows
DELETE FROM `qb_area`;
/*!40000 ALTER TABLE `qb_area` DISABLE KEYS */;
INSERT INTO `qb_area` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`) VALUES
	(1, 0, '北京市', 1, 18, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;'),
	(2, 0, '上海市', 1, 19, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;'),
	(3, 0, '天津市', 1, 18, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(4, 0, '重庆市', 1, 40, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(5, 0, '河北省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(6, 0, '山西省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(7, 0, '内蒙古自治区', 1, 12, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(8, 0, '辽宁省', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(9, 0, '吉林省', 1, 9, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(10, 0, '黑龙江省', 1, 13, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(11, 0, '江苏省', 1, 13, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(12, 0, '浙江省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(13, 0, '安徽省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(14, 0, '福建省', 1, 9, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(15, 0, '江西省', 1, 11, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(16, 0, '山东省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(17, 0, '河南省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(18, 0, '湖北省', 1, 17, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(19, 0, '湖南省', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(20, 0, '广东省', 1, 21, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(21, 0, '广西壮族自治区', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(22, 0, '海南省', 1, 21, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(23, 0, '四川省', 1, 21, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(24, 0, '贵州省', 1, 9, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(25, 0, '云南省', 1, 16, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(26, 0, '西藏自治区', 1, 7, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(27, 0, '陕西省', 1, 10, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(28, 0, '甘肃省', 1, 14, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(29, 0, '青海省', 1, 8, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(30, 0, '宁夏回族自治区', 1, 5, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(31, 0, '新疆维吾尔自治区', 1, 18, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(32, 0, '台湾省', 1, 25, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(33, 0, '香港特别行政区', 1, 18, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(34, 0, '澳门特别行政区', 1, 5, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(35, 1, '东城区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(36, 1, '西城区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(37, 1, '崇文区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(38, 1, '宣武区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(39, 1, '朝阳区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(40, 1, '丰台区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(41, 1, '石景山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(42, 1, '海淀区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(43, 1, '门头沟区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(44, 1, '房山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(45, 1, '通州区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(46, 1, '顺义区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(47, 1, '昌平区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(48, 1, '大兴区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(49, 1, '怀柔区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(50, 1, '平谷区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(51, 1, '密云县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(52, 1, '延庆县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(53, 2, '黄浦区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(54, 2, '卢湾区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(55, 2, '徐汇区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(56, 2, '长宁区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(57, 2, '静安区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(58, 2, '普陀区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(59, 2, '闸北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(60, 2, '虹口区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(61, 2, '杨浦区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(62, 2, '闵行区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(63, 2, '宝山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(64, 2, '嘉定区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(65, 2, '浦东新区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(66, 2, '金山区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(67, 2, '松江区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(68, 2, '青浦区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(69, 2, '南汇区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(70, 2, '奉贤区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(71, 2, '崇明县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(72, 3, '和平区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(73, 3, '河东区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(74, 3, '河西区', 2, 0, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;'),
	(75, 3, '南开区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(76, 3, '河北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(77, 3, '红桥区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(78, 3, '塘沽区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(79, 3, '汉沽区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(80, 3, '大港区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(81, 3, '东丽区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(82, 3, '西青区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(83, 3, '津南区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(84, 3, '北辰区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(85, 3, '武清区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(86, 3, '宝坻区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(87, 3, '宁河县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(88, 3, '静海县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(89, 3, '蓟县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(90, 4, '万州区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(91, 4, '涪陵区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(92, 4, '渝中区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(93, 4, '大渡口区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(94, 4, '江北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(95, 4, '沙坪坝区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(96, 4, '九龙坡区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(97, 4, '南岸区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(98, 4, '北碚区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(99, 4, '万盛区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(100, 4, '双桥区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(101, 4, '渝北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(102, 4, '巴南区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(103, 4, '黔江区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(104, 4, '长寿区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(105, 4, '綦江县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(106, 4, '潼南县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(107, 4, '铜梁县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(108, 4, '大足县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(109, 4, '荣昌县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(110, 4, '璧山县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(111, 4, '梁平县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(112, 4, '城口县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(113, 4, '丰都县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(114, 4, '垫江县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(115, 4, '武隆县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(116, 4, '忠县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(117, 4, '开县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(118, 4, '云阳县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(119, 4, '奉节县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(120, 4, '巫山县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(121, 4, '巫溪县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(122, 4, '石柱土家族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(123, 4, '秀山土家族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(124, 4, '酉阳土家族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(125, 4, '彭水苗族土家族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(126, 4, '江津市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(127, 4, '合川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(128, 4, '永川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(129, 4, '南川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(130, 5, '石家庄市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(131, 5, '唐山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(132, 5, '秦皇岛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(133, 5, '邯郸市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(134, 5, '邢台市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(135, 5, '保定市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(136, 5, '张家口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(137, 5, '承德市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(138, 5, '沧州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(139, 5, '廊坊市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(140, 5, '衡水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(141, 6, '太原市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(142, 6, '大同市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(143, 6, '阳泉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(144, 6, '长治市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(145, 6, '晋城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(146, 6, '朔州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(147, 6, '晋中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(148, 6, '运城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(149, 6, '忻州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(150, 6, '临汾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(151, 6, '吕梁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(152, 7, '呼和浩特市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(153, 7, '包头市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(154, 7, '乌海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(155, 7, '赤峰市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(156, 7, '通辽市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(157, 7, '鄂尔多斯市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(158, 7, '呼伦贝尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(159, 7, '巴彦淖尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(160, 7, '乌兰察布市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(161, 7, '兴安盟', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(162, 7, '锡林郭勒盟', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(163, 7, '阿拉善盟', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(164, 8, '沈阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(165, 8, '大连市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(166, 8, '鞍山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(167, 8, '抚顺市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(168, 8, '本溪市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(169, 8, '丹东市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(170, 8, '锦州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(171, 8, '营口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(172, 8, '阜新市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(173, 8, '辽阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(174, 8, '盘锦市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(175, 8, '铁岭市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(176, 8, '朝阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(177, 8, '葫芦岛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(178, 9, '长春市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(179, 9, '吉林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(180, 9, '四平市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(181, 9, '辽源市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(182, 9, '通化市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(183, 9, '白山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(184, 9, '松原市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(185, 9, '白城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(186, 9, '延边朝鲜族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(187, 10, '哈尔滨市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(188, 10, '齐齐哈尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(189, 10, '鸡西市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(190, 10, '鹤岗市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(191, 10, '双鸭山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(192, 10, '大庆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(193, 10, '伊春市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(194, 10, '佳木斯市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(195, 10, '七台河市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(196, 10, '牡丹江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(197, 10, '黑河市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(198, 10, '绥化市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(199, 10, '大兴安岭地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(200, 11, '南京市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(201, 11, '无锡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(202, 11, '徐州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(203, 11, '常州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(204, 11, '苏州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(205, 11, '南通市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(206, 11, '连云港市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(207, 11, '淮安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(208, 11, '盐城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(209, 11, '扬州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(210, 11, '镇江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(211, 11, '泰州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(212, 11, '宿迁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(213, 12, '杭州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(214, 12, '宁波市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(215, 12, '温州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(216, 12, '嘉兴市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(217, 12, '湖州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(218, 12, '绍兴市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(219, 12, '金华市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(220, 12, '衢州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(221, 12, '舟山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(222, 12, '台州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(223, 12, '丽水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(224, 13, '合肥市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(225, 13, '芜湖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(226, 13, '蚌埠市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(227, 13, '淮南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(228, 13, '马鞍山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(229, 13, '淮北市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(230, 13, '铜陵市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(231, 13, '安庆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(232, 13, '黄山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(233, 13, '滁州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(234, 13, '阜阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(235, 13, '宿州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(236, 13, '巢湖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(237, 13, '六安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(238, 13, '亳州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(239, 13, '池州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(240, 13, '宣城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(241, 14, '福州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(242, 14, '厦门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(243, 14, '莆田市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(244, 14, '三明市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(245, 14, '泉州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(246, 14, '漳州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(247, 14, '南平市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(248, 14, '龙岩市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(249, 14, '宁德市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(250, 15, '南昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(251, 15, '景德镇市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(252, 15, '萍乡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(253, 15, '九江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(254, 15, '新余市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(255, 15, '鹰潭市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(256, 15, '赣州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(257, 15, '吉安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(258, 15, '宜春市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(259, 15, '抚州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(260, 15, '上饶市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(261, 16, '济南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(262, 16, '青岛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(263, 16, '淄博市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(264, 16, '枣庄市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(265, 16, '东营市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(266, 16, '烟台市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(267, 16, '潍坊市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(268, 16, '济宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(269, 16, '泰安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(270, 16, '威海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(271, 16, '日照市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(272, 16, '莱芜市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(273, 16, '临沂市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(274, 16, '德州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(275, 16, '聊城市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(276, 16, '滨州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(277, 16, '荷泽市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(278, 17, '郑州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(279, 17, '开封市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(280, 17, '洛阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(281, 17, '平顶山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(282, 17, '安阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(283, 17, '鹤壁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(284, 17, '新乡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(285, 17, '焦作市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(286, 17, '濮阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(287, 17, '许昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(288, 17, '漯河市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(289, 17, '三门峡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(290, 17, '南阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(291, 17, '商丘市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(292, 17, '信阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(293, 17, '周口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(294, 17, '驻马店市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(295, 18, '武汉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(296, 18, '黄石市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(297, 18, '十堰市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(298, 18, '宜昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(299, 18, '襄樊市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(300, 18, '鄂州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(301, 18, '荆门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(302, 18, '孝感市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(303, 18, '荆州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(304, 18, '黄冈市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(305, 18, '咸宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(306, 18, '随州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(307, 18, '恩施土家族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(308, 18, '仙桃市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(309, 18, '潜江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(310, 18, '天门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(311, 18, '神农架林区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(312, 19, '长沙市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(313, 19, '株洲市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(314, 19, '湘潭市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(315, 19, '衡阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(316, 19, '邵阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(317, 19, '岳阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(318, 19, '常德市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(319, 19, '张家界市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(320, 19, '益阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(321, 19, '郴州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(322, 19, '永州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(323, 19, '怀化市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(324, 19, '娄底市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(325, 19, '湘西土家族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(326, 20, '广州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(327, 20, '韶关市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(328, 20, '深圳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(329, 20, '珠海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(330, 20, '汕头市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(331, 20, '佛山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(332, 20, '江门市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(333, 20, '湛江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(334, 20, '茂名市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(335, 20, '肇庆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(336, 20, '惠州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(337, 20, '梅州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(338, 20, '汕尾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(339, 20, '河源市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(340, 20, '阳江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(341, 20, '清远市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(342, 20, '东莞市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(343, 20, '中山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(344, 20, '潮州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(345, 20, '揭阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(346, 20, '云浮市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(347, 21, '南宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(348, 21, '柳州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(349, 21, '桂林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(350, 21, '梧州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(351, 21, '北海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(352, 21, '防城港市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(353, 21, '钦州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(354, 21, '贵港市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(355, 21, '玉林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(356, 21, '百色市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(357, 21, '贺州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(358, 21, '河池市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(359, 21, '来宾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(360, 21, '崇左市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(361, 22, '海口市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(362, 22, '三亚市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(363, 22, '五指山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(364, 22, '琼海市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(365, 22, '儋州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(366, 22, '文昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(367, 22, '万宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(368, 22, '东方市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(369, 22, '定安县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(370, 22, '屯昌县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(371, 22, '澄迈县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(372, 22, '临高县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(373, 22, '白沙黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(374, 22, '昌江黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(375, 22, '乐东黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(376, 22, '陵水黎族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(377, 22, '保亭黎族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(378, 22, '琼中黎族苗族自治县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(379, 22, '西沙群岛', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(380, 22, '南沙群岛', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(381, 22, '中沙群岛的岛礁及其海域', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(382, 23, '成都市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(383, 23, '自贡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(384, 23, '攀枝花市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(385, 23, '泸州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(386, 23, '德阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(387, 23, '绵阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(388, 23, '广元市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(389, 23, '遂宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(390, 23, '内江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(391, 23, '乐山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(392, 23, '南充市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(393, 23, '眉山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(394, 23, '宜宾市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(395, 23, '广安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(396, 23, '达州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(397, 23, '雅安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(398, 23, '巴中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(399, 23, '资阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(400, 23, '阿坝藏族羌族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(401, 23, '甘孜藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(402, 23, '凉山彝族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(403, 24, '贵阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(404, 24, '六盘水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(405, 24, '遵义市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(406, 24, '安顺市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(407, 24, '铜仁地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(408, 24, '黔西南布依族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(409, 24, '毕节地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(410, 24, '黔东南苗族侗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(411, 24, '黔南布依族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(412, 25, '昆明市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(413, 25, '曲靖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(414, 25, '玉溪市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(415, 25, '保山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(416, 25, '昭通市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(417, 25, '丽江市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(418, 25, '思茅市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(419, 25, '临沧市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(420, 25, '楚雄彝族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(421, 25, '红河哈尼族彝族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(422, 25, '文山壮族苗族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(423, 25, '西双版纳傣族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(424, 25, '大理白族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(425, 25, '德宏傣族景颇族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(426, 25, '怒江傈僳族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(427, 25, '迪庆藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(428, 26, '拉萨市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(429, 26, '昌都地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(430, 26, '山南地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(431, 26, '日喀则地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(432, 26, '那曲地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(433, 26, '阿里地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(434, 26, '林芝地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(435, 27, '西安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(436, 27, '铜川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(437, 27, '宝鸡市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(438, 27, '咸阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(439, 27, '渭南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(440, 27, '延安市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(441, 27, '汉中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(442, 27, '榆林市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(443, 27, '安康市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(444, 27, '商洛市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(445, 28, '兰州市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(446, 28, '嘉峪关市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(447, 28, '金昌市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(448, 28, '白银市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(449, 28, '天水市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(450, 28, '武威市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(451, 28, '张掖市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(452, 28, '平凉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(453, 28, '酒泉市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(454, 28, '庆阳市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(455, 28, '定西市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(456, 28, '陇南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(457, 28, '临夏回族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(458, 28, '甘南藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(459, 29, '西宁市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(460, 29, '海东地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(461, 29, '海北藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(462, 29, '黄南藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(463, 29, '海南藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(464, 29, '果洛藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(465, 29, '玉树藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(466, 29, '海西蒙古族藏族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(467, 30, '银川市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(468, 30, '石嘴山市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(469, 30, '吴忠市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(470, 30, '固原市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(471, 30, '中卫市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(472, 31, '乌鲁木齐市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(473, 31, '克拉玛依市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(474, 31, '吐鲁番地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(475, 31, '哈密地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(476, 31, '昌吉回族自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(477, 31, '博尔塔拉蒙古自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(478, 31, '巴音郭楞蒙古自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(479, 31, '阿克苏地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(480, 31, '克孜勒苏柯尔克孜自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(481, 31, '喀什地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(482, 31, '和田地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(483, 31, '伊犁哈萨克自治州', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(484, 31, '塔城地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(485, 31, '阿勒泰地区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(486, 31, '石河子市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(487, 31, '阿拉尔市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(488, 31, '图木舒克市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(489, 31, '五家渠市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(490, 32, '台北市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(491, 32, '高雄市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(492, 32, '基隆市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(493, 32, '新竹市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(494, 32, '台中市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(495, 32, '嘉义市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(496, 32, '台南市', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(497, 32, '台北县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(498, 32, '桃园县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(499, 32, '新竹县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(500, 32, '苗栗县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(501, 32, '台中县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(502, 32, '彰化县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(503, 32, '南投县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(504, 32, '云林县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(505, 32, '嘉义县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(506, 32, '台南县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(507, 32, '高雄县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(508, 32, '屏东县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(509, 32, '宜兰县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(510, 32, '花莲县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(511, 32, '台东县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(512, 32, '澎湖县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(513, 32, '金门县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(514, 32, '连江县', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(515, 33, '中西区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(516, 33, '东区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(517, 33, '南区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(518, 33, '湾仔区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(519, 33, '九龙城区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(520, 33, '观塘区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(521, 33, '深水埗区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(522, 33, '黄大仙区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(523, 33, '油尖旺区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(524, 33, '离岛区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(525, 33, '葵青区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(526, 33, '北区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(527, 33, '西贡区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(528, 33, '沙田区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(529, 33, '大埔区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(530, 33, '荃湾区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(531, 33, '屯门区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(532, 33, '元朗区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(533, 34, '澳门市花地玛堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(534, 34, '澳门市圣安多尼堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(535, 34, '澳门市大堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(536, 34, '澳门市望德堂区', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 0, '', '', '', '', 0, ''),
	(537, 34, '澳门市风顺堂区', 2, 0, 0, '', 0, 0, '', '', '', '', 'N;', '', 0, '', '', 0, '', '', '', '', 0, 'b:0;');
/*!40000 ALTER TABLE `qb_area` ENABLE KEYS */;

-- 导出  表 cms.qb_article 结构
CREATE TABLE IF NOT EXISTS `qb_article` (
  `aid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `smalltitle` varchar(100) NOT NULL DEFAULT '',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `pages` smallint(4) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  `copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `allowdown` varchar(150) NOT NULL DEFAULT '',
  `allowview` varchar(150) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `digg_num` mediumint(7) NOT NULL DEFAULT '0',
  `digg_time` int(10) NOT NULL DEFAULT '0',
  `forbidcomment` tinyint(1) NOT NULL DEFAULT '0',
  `ifvote` tinyint(1) NOT NULL DEFAULT '0',
  `heart` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `lastview` (`yz`,`lastview`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=666 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article 的数据：122 rows
DELETE FROM `qb_article`;
/*!40000 ALTER TABLE `qb_article` DISABLE KEYS */;
INSERT INTO `qb_article` (`aid`, `title`, `smalltitle`, `fid`, `mid`, `fname`, `hits`, `pages`, `comments`, `posttime`, `list`, `uid`, `username`, `author`, `copyfrom`, `copyfromurl`, `titlecolor`, `fonttype`, `picurl`, `ispic`, `yz`, `yzer`, `yztime`, `levels`, `levelstime`, `keywords`, `jumpurl`, `iframeurl`, `style`, `template`, `target`, `ip`, `lastfid`, `money`, `buyuser`, `passwd`, `allowdown`, `allowview`, `editer`, `edittime`, `begintime`, `endtime`, `description`, `lastview`, `digg_num`, `digg_time`, `forbidcomment`, `ifvote`, `heart`, `htmlname`) VALUES
	(565, '三大学生试水校园电子商务　引来央视关注', '', 39, 0, 'web新闻', 2, 1, 0, 1240126531, 1240126531, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '大学生 校园 电子商务 引来 央视 关注', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1292492249, 0, 0, 0, 0, '', ''),
	(566, '新手站长必须知道的50个问题，让你顺利成为草根站长', '', 39, 0, 'web新闻', 20, 3, 1, 1240126684, 1240126684, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '新手 站长 必须 知道 问题', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240138830, 0, 0, '', 1289286094, 3, 1240210732, 0, 0, '搞笑|1~~|', ''),
	(567, '电子商务成功运作四大要素，不要都去做马云', '', 39, 0, 'web新闻', 2, 1, 1, 1240126775, 1240126775, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '电子商务 成功 运作 四大 要素', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240138868, 0, 0, '', 1289286122, 0, 0, 0, 0, '', ''),
	(568, '晒工资网站盛行为跳槽作参考，你曾经跳过几次槽', '', 39, 0, 'web新闻', 1, 1, 0, 1240126816, 1240126816, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '工资 网站 行为 跳槽 参考', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240138934, 0, 0, '', 1292492256, 0, 0, 0, 0, '', ''),
	(569, '婚庆门户三大巨头瓜分天下 市场前景巨大', '', 39, 0, 'web新闻', 0, 1, 0, 1240126852, 1240126852, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '婚庆 门户 三大 巨头 瓜分 天下 市场 前景 巨大', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(570, '12月19日,也即明天将发布V7公测版', '', 38, 0, '一语惊人', 1, 1, 0, 1240126932, 1240126932, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639697, 0, 0, '', 1240212806, 0, 0, 0, 0, '', ''),
	(571, '回顾过去，展望未来，有你相伴！', '', 38, 0, '一语惊人', 2, 1, 0, 1240127012, 1240127012, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639905, 0, 0, '', 1292639906, 0, 0, 0, 0, '', ''),
	(572, '原PHP168产品中的V系列与S系列，现完全独立分开不同的公司运营！', '', 38, 0, '一语惊人', 0, 1, 0, 1240127172, 1240127172, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639985, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(573, '重要公告！V系列将在12月份启用新论坛，并将新增中文名为“齐博cms”！！', '', 38, 0, '一语惊人', 0, 1, 0, 1240127229, 1240127229, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640029, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(574, 'eBay重金购Gmarket 意在重返中国电子商务市场', '', 4, 0, 'IT业界', 0, 1, 0, 1240127281, 1240127281, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'eBay 重金 Gmarket 意在 重返 中国 电子商务 市场', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(575, '通信管理局：代办网站备案均违规 或将被断网', '', 4, 0, 'IT业界', 1, 1, 0, 1240127308, 1240127308, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '通信 管理局 代办 网站 备案 违规', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289291749, 0, 0, 0, 0, '', ''),
	(576, '成都夫妇投资“高回报”网站 被骗64万元', '', 4, 0, 'IT业界', 2, 1, 1, 1240127373, 1240127373, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '成都 夫妇 投资 回报 网站 被骗 64万元', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240202342, 0, 0, 0, 0, '', ''),
	(577, '移动OPhone手机5月将面市对抗iPhone', '', 4, 0, 'IT业界', 0, 1, 0, 1240127449, 1240127449, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '移动 OPhone手机 5月 面市 对抗 iPhone', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(578, '戴志康：和我一样创业的年轻人别浮躁', '', 39, 0, 'web新闻', 5, 1, 0, 1240127959, 1240127959, 1, 'admin', '', '', '', '', 0, 'article/39/1_20090419150430_a2XoC.jpg', 1, 1, '', 0, 0, 0, '戴志康 一样 创业 年轻人 浮躁', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240128030, 0, 0, '', 1290153075, 0, 0, 0, 0, '', ''),
	(579, '暴雪弃九城基于财务原因 网易每年多给9000万', '', 4, 0, 'IT业界', 4, 1, 1, 1240128462, 1240128462, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '暴雪 基于 财务 原因 网易 每年 9000万', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240227601, 0, 0, 0, 0, '', ''),
	(580, '一季度中国网民新增1620万人 总数已达3.16亿', '', 4, 0, 'IT业界', 4, 1, 0, 1240128514, 1240128514, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '一季度 中国 网民 新增 1620万人 总数 3.16亿', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240212764, 0, 0, 0, 0, '', ''),
	(581, '东芝遭遇公司历史上最大净亏损 约合35亿美元', '', 4, 0, 'IT业界', 0, 1, 0, 1240128552, 1240128552, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '东芝 遭遇 公司 历史 最大 亏损 约合 35亿美元', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(582, '韩国购物网站走出“门户阴影”', '', 4, 0, 'IT业界', 1, 1, 0, 1240128654, 1240128654, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '韩国 购物网站 走出 门户 阴影', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240202171, 0, 0, 0, 0, '', ''),
	(583, '产品经理的前世今生（职业规划）', '', 4, 0, 'IT业界', 6, 1, 0, 1240128744, 1240128744, 1, 'admin', '', '', '', '', 0, 'article/4/1_20090419160422_PjOh8_jpg.gif', 1, 1, '', 0, 0, 0, '产品 经理 今生 职业规划', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1290047377, 0, 0, 0, 0, '', ''),
	(664, '官方更名为“齐博CMS”，请大家注意', '', 3, 0, '社会新闻', 2, 1, 0, 1291865005, 1291865005, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1292638787, 0, 0, 0, 0, '', ''),
	(665, '官方在改品牌名称的同时，还启用了新域名', '', 3, 0, '社会新闻', 9, 1, 0, 1291865035, 1291865035, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1292638782, 0, 0, 0, 0, '', ''),
	(593, '更名为齐博CMS,深受各大媒体关注!!', '', 3, 0, '社会新闻', 3, 1, 0, 1240129686, 1240129686, 1, 'admin', '', '', '', '', 0, 'http://i3.sinaimg.cn/home/deco/2009/0330/con_logo_tech_news.gif', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639323, 0, 0, '', 1292639325, 0, 0, 0, 0, '搞笑|1~~|', ''),
	(594, '捷报：V7新突破,在后台可对模块自由复制,协助大家都能做二次开发.满足自己的需要', '', 3, 0, '社会新闻', 1, 1, 0, 1240129723, 1240129723, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639096, 0, 0, '', 1240207624, 0, 0, 0, 0, '', ''),
	(595, 'V7现已增加定时任务功能 ,定时备份数据库功能', '', 3, 0, '社会新闻', 4, 1, 0, 1240129752, 1240129752, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639054, 0, 0, '', 1290047380, 0, 0, 0, 0, '', ''),
	(598, '应大家要求,V7现增加ckeditor编辑器功能', '', 3, 0, '社会新闻', 4, 1, 0, 1240129958, 1240129958, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639000, 0, 0, '', 1292492079, 0, 0, 0, 0, '', ''),
	(599, '齐博风格舞台，有梦想你就来齐博CMS第一届风格大赛现在开始，奖品丰厚，欢迎参与！', '', 3, 0, '社会新闻', 31, 1, 2, 1240130011, 1240130011, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292638965, 0, 0, '', 1289526351, 5, 1241074117, 0, 0, '搞笑|1~~找骂|1~~|', ''),
	(535, '迅雷5,迅雷网络版权所有', '', 26, 101, '装机软件', 6, 1, 0, 1239786953, 1239786953, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '迅雷 网络 版权所有', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239787179, 0, 0, '', 1289453277, 0, 0, 0, 0, '', ''),
	(519, 'SONY DSC-T300', '', 16, 103, '数码产品', 6, 1, 0, 1239775591, 1239775591, 1, 'admin', '', '', '', '', 0, 'article/16/1_20090415140452_ZsBYE.jpg', 1, 1, '', 0, 0, 0, 'SONY DSC-T300', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239776993, 0, 0, '', 1240112568, 0, 0, 0, 0, '', ''),
	(520, '佳能 PowerShot SX200 IS', '', 16, 103, '数码产品', 6, 1, 0, 1239775699, 1239775699, 1, 'admin', '', '', '', '', 0, 'article/16/1_20090415140423_bYWny.jpg', 1, 1, '', 0, 0, 0, '佳能 PowerShot SX200', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239778105, 0, 0, '', 1240209670, 0, 0, 0, 0, '', ''),
	(542, '【超级经典】比尔·盖茨：在哈佛大学毕业典礼上的演讲【强烈推荐】有字幕', '', 14, 102, '网友视频', 49, 1, 0, 1239789196, 1239789196, 1, 'admin', '', '', '', '', 0, 'article/14/1_20090420100452_yuW0C.jpg', 1, 1, '', 0, 0, 0, '盖茨', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240287737, 0, 0, '', 1289443055, 0, 0, 0, 0, '', ''),
	(529, '爱我就别伤害我MTV', '', 18, 104, 'MTV类', 5, 1, 0, 1239785318, 1239785318, 1, 'admin', '', '', '', '', 0, 'article/18/1_20090415160423_hJmPv.jpg', 1, 1, '', 0, 0, 0, '伤害 MTV', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240195782, 0, 0, '', 1240195785, 0, 0, 0, 0, '', ''),
	(530, '求拂MTV', '', 18, 104, 'MTV类', 10, 1, 0, 1239785442, 1239785442, 1, 'admin', '', '', '', '', 0, 'article/18/1_20090415160450_9OWGl.jpg', 1, 1, '', 0, 0, 0, '求拂 MTV', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240195708, 0, 0, '', 1240213307, 0, 0, 0, 0, '', ''),
	(532, '很漂亮的女人再来两张', '', 10, 100, '美女欣赏', 4, 1, 0, 1239786083, 1239786083, 1, 'admin', '', '', '', '', 0, 'article/10/1_20090415170437_jCYhW.jpg', 1, 1, '', 0, 0, 0, '漂亮 女人', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289370913, 0, 0, 0, 0, '', ''),
	(521, 'Nikon D90(单机)', '', 16, 103, '数码产品', 3, 1, 1, 1239775778, 1239775778, 1, 'admin', '', '', '', '', 0, 'article/16/1_20090415140400_cbwQO.jpg', 1, 1, '', 0, 0, 0, 'Nikon D90 单机', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239778082, 0, 0, '', 1239781788, 0, 0, 0, 0, '', ''),
	(522, '富士 S2000HD', '', 16, 103, '数码产品', 1, 1, 0, 1239776022, 1239776022, 1, 'admin', '', '', '', '', 0, 'article/16/1_20090415140414_kv5WX.jpg', 1, 1, '', 0, 0, 0, '富士 S2000HD', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239778042, 0, 0, '', 1240899117, 0, 0, 0, 0, '', ''),
	(537, 'QQ2009 Beta2 (兼容Windows Vista)', '', 26, 101, '装机软件', 2, 1, 0, 1239788244, 1239788244, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'QQ2009 Beta2 兼容 Windows Vista', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289453294, 0, 0, 0, 0, '', ''),
	(538, '万能文章系统', '', 12, 101, '建站软件', 2, 1, 0, 1239788484, 1239788484, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '万能 文章 系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289465148, 0, 0, 0, 0, '', ''),
	(539, 'qibosoft分类信息系统', '', 12, 101, '建站软件', 2, 1, 0, 1239788649, 1239788649, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 分类 信息系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240209778, 0, 0, 0, 0, '', ''),
	(540, 'qibosoft博客系统', '', 12, 101, '建站软件', 1, 1, 0, 1239788777, 1239788777, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 博客 系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240192777, 0, 0, 0, 0, '', ''),
	(541, 'qibosoft知道系统', '', 12, 101, '建站软件', 3, 1, 0, 1239788863, 1239788863, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'qibosoft 知道 系统', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240111969, 0, 0, 0, 0, '', ''),
	(523, '松下 FX550', '', 16, 103, '数码产品', 2, 1, 0, 1239776169, 1239776169, 1, 'admin', '', '', '', '', 0, 'article/16/1_20090415150402_lAoUv.jpg', 1, 1, '', 0, 0, 0, '松下 FX550', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239781923, 0, 0, '', 1239781926, 0, 0, 0, 0, '', ''),
	(524, '奥林巴斯 SP-565UZ', '', 16, 103, '数码产品', 3, 1, 0, 1239776235, 1239776235, 1, 'admin', '', '', '', '', 0, 'article/16/1_20090415140459_Kwcym.jpg', 1, 1, '', 0, 0, 0, '奥林巴斯 SP-565UZ', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239777234, 0, 0, '', 1240208559, 0, 0, 0, 0, '', ''),
	(544, 'M11504 BXF电动晾衣机', '', 30, 105, '晾衣机', 5, 1, 0, 1239790835, 1239790835, 1, 'admin', '', '', '', '', 0, 'http://www.lb138.net/pic/20081226133620-file-M11504BXF正.jpg', 1, 1, '', 0, 0, 0, 'M11504 BXF 电动', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239791099, 0, 0, '', 1239792534, 0, 0, 0, 0, '', ''),
	(531, '人间极品美女2两张供大家测试浏览', '', 10, 100, '美女欣赏', 2, 1, 0, 1239785963, 1239785963, 1, 'admin', '', '', '', '', 0, 'article/10/1_20090415160450_bEErL.jpg', 1, 1, '', 0, 0, 0, '人间 极品美女 张供 大家 测试 浏览', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1239786004, 0, 0, '', 1239786007, 0, 0, 0, 0, '', ''),
	(536, 'WPS个人版永久免费', '', 27, 101, '办公软件', 2, 1, 0, 1239788019, 1239788019, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, 'WPS 个人版 永久 免费', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1239788111, 0, 0, 0, 0, '', ''),
	(545, 'V7将保留V6原来的所有功能', '', 31, 0, '新闻头条', 12, 1, 0, 1240049871, 1240049871, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292639524, 0, 0, '作为中国最主流的CMS平台之一，qibosoft即将发布对官方及站长都具有重要意义V6版，V6定位为CMS领域的创造版，不仅在功能上具有大幅创新，同时在思路上让站长运营更加贴近主流互联网经济。', 1292639527, 0, 0, 0, 0, '', ''),
	(546, 'qibosoft与Phpwind强势整合 打造黄金组合', '', 32, 0, '推荐新闻', 4, 1, 0, 1240050071, 1240050071, 1, 'admin', '', '', '', '#5555AA', 0, '', 0, 1, '', 0, 1, 1240058149, 'qibosoft Phpwind 强势 整合 打造 黄金 组合', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240210097, 4, 1240995136, 0, 0, '搞笑|1~~|', ''),
	(547, 'v7考试系统进一步加强,已实现前台查看考试结果功能', '', 32, 0, '推荐新闻', 2, 1, 0, 1240050179, 1240050179, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 1, 1240058148, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640191, 0, 0, '', 1240146817, 0, 0, 0, 0, '', ''),
	(548, 'v7考试系统已支持随机出题与考试时间限制功能', '', 32, 0, '推荐新闻', 2, 1, 0, 1240050522, 1240050522, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 1, 1240058146, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640138, 0, 0, '', 1240058225, 0, 0, 0, 0, '', ''),
	(549, '透露一下V7的进展,已增强会员积分消费与赚取记录功能', '', 32, 0, '推荐新闻', 1, 1, 0, 1240050670, 1240050670, 1, 'admin', '', '', '', '#0033FF', 0, '', 0, 1, '', 0, 1, 1240058139, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640243, 0, 0, '', 1240142450, 0, 0, 0, 0, '', ''),
	(550, 'chinaz倾力打造IDC交易平台主机网正式上线', '', 32, 0, '推荐新闻', 16, 1, 0, 1240051050, 1240051050, 1, 'admin', '', '', '', '#B50707', 1, 'article/32/1_20090418180444_f8mDG_jpg.gif', 1, 1, '', 0, 1, 1240058150, 'chinaz 倾力 打造 IDC 交易平台 主机 cnidc.com 正式 上线', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240058256, 0, 0, '', 1240899321, 1, 1240210632, 0, 0, '', ''),
	(551, '方便大家创建类似功能的模型,现已增加模型复制功能', '', 33, 0, '图片新闻', 6, 1, 0, 1240051810, 1240051810, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 1, 1240056324, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640365, 0, 0, '', 1240199085, 0, 0, 0, 0, '', ''),
	(552, '李开复：谷歌中国市场份额两年增长一倍', '', 33, 0, '图片新闻', 0, 1, 0, 1240052014, 1240052014, 1, 'admin', '', '', '', '', 0, 'article/33/1_20090418180438_vPiyT.jpg', 1, 1, '', 0, 1, 1240056321, '李开复 谷歌 中国 市场 份额 两年 增长', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240052093, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(553, '央视：PHPWIND南京站长大会---互联网精英为中国互联网发展献计策', '', 33, 0, '图片新闻', 9, 1, 0, 1240052409, 1240052409, 1, 'admin', '', '', '', '', 0, 'article/33/1_20090418190453_qabKt.jpg', 1, 1, '', 0, 1, 1240056320, '央视 PHPWIND 南京 站长 大会 --- 互联网 精英 中国 发展 计策', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240108730, 0, 0, '', 1240212610, 0, 0, 0, 0, '', ''),
	(554, '百度百科：admin5图王', '', 33, 0, '图片新闻', 6, 1, 0, 1240057138, 1240057138, 1, 'admin', '', '', '', '', 0, 'article/33/1_20090418200432_5ZUc2.jpg', 1, 1, '', 0, 1, 1240057560, '百度百科 admin5 图王', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240212754, 0, 0, 0, 0, '', ''),
	(555, '阿飞的财富之旅Chinaz.com', '', 33, 0, '图片新闻', 6, 1, 0, 1240057438, 1240057438, 1, 'admin', '', '', '', '', 0, 'article/33/1_20090418200416_Fs7xV.gif', 1, 1, '', 0, 1, 1240057559, 'Chinaz.com 阿飞 财富 之旅', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240057762, 0, 0, '', 1240213566, 0, 0, 0, 0, '', ''),
	(556, '熊晓鸽：怎样拿到他的钱？', '', 33, 0, '图片新闻', 3, 2, 0, 1240059129, 1240059129, 1, 'admin', '', '', '', '', 0, 'article/33/1_20090418200441_Zm9oq.jpg', 1, 1, '', 0, 1, 1240059153, '熊晓鸽 怎样 拿到', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1240112623, 0, 0, 0, 0, '', ''),
	(557, 'V6风格如何在V7上使用呢', '', 34, 0, '热点事件', 1, 1, 0, 1240060838, 1240060838, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 1, 1240060860, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640605, 0, 0, '', 1240142881, 0, 0, 0, 0, '', ''),
	(558, '文章内容关键字突出显示,有图片时的BUG补丁', '', 34, 0, '热点事件', 2, 1, 0, 1240061182, 1240061182, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 1, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292640555, 0, 0, '', 1240209066, 0, 0, 0, 0, '', ''),
	(559, '中国移动抢跑3G 上网本迎来“白送”时代', '', 34, 0, '热点事件', 0, 1, 0, 1240061760, 1240061760, 1, 'admin', '', '', '', '', 0, 'article/34/1_20090418210444_jnTex.jpg', 1, 1, '', 0, 1, 1240061785, '中国移动 上网 迎来 白送 ”时代', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(560, 'chinaz主机网商品快照功能 让您明明白白去购物', '', 34, 0, '热点事件', 5, 1, 0, 1240062925, 1240062925, 1, 'admin', '', '', '', '', 0, 'article/34/1_20090420110424_5lRC8.jpg', 1, 1, '', 0, 1, 0, '主机 商品 功能 明明白白 购物', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240196570, 0, 0, '', 1240211417, 0, 0, 0, 0, '', ''),
	(601, '刘德华1996年演唱会', '', 14, 102, '网友视频', 8, 1, 0, 1240193993, 1240193993, 1, 'admin', '', '', '', '', 0, 'article/14/1_20090420100416_nC0fV.jpg', 1, 1, '', 0, 0, 0, '刘德华', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1240195173, 0, 0, '', 1290047383, 0, 0, 0, 0, '', ''),
	(603, '齐博V7版文章静态功能,已取得飞跃性突破,定时全站静态+无人监守静态', '', 39, 0, 'web新闻', 4, 1, 0, 1240201330, 1240201330, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292638888, 0, 0, '', 1292638889, 1, 1289289867, 0, 0, '', ''),
	(604, 'V7欢迎大家拍砖，忠言虽逆耳，但利于行，良药虽苦口，但利于病', '', 39, 0, 'web新闻', 21, 1, 1, 1240209505, 1240209505, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1292638835, 0, 0, '', 1291860644, 1, 1289289808, 0, 0, '', ''),
	(605, '中华顶级模特表演艺术', '', 10, 100, '美女欣赏', 1, 1, 0, 1289371004, 1289371004, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141136_wdd4w.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289371010, 0, 0, 0, 0, '', ''),
	(606, '广东全运会美女集中营', '', 10, 100, '美女欣赏', 1, 1, 0, 1289371066, 1289371066, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141139_i1ypy.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289371068, 0, 0, 0, 0, '', ''),
	(607, '除了美丽还是美丽的人', '', 10, 100, '美女欣赏', 1, 1, 0, 1289371116, 1289371116, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141134_qxblz.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289371118, 0, 0, 0, 0, '', ''),
	(608, '续发美女图片集', '', 10, 100, '美女欣赏', 1, 1, 0, 1289371162, 1289371162, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141120_fpwhq.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289371164, 0, 0, 0, 0, '', ''),
	(609, '校园清纯少女写真集', '', 10, 100, '美女欣赏', 2, 1, 0, 1289371211, 1289371211, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141109_hsvcz.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289374136, 0, 0, 0, 0, '', ''),
	(610, '某某艺术学校的校花展', '', 10, 100, '美女欣赏', 2, 1, 0, 1289371256, 1289371256, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141153_lisq8.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289374140, 0, 0, 0, 0, '', ''),
	(611, '清水出芙蓉之美女篇', '', 10, 100, '美女欣赏', 0, 1, 0, 1289371328, 1289371328, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141106_ipncy.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(612, '时尚开放的中国女性', '', 10, 100, '美女欣赏', 0, 1, 0, 1289371376, 1289371376, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110141155_s3htx.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(613, '国产美女大集合', '', 10, 100, '美女欣赏', 2, 1, 0, 1289372452, 1289372452, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110151145_1aiuz.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289372878, 0, 0, 0, 0, '', ''),
	(614, '北京大学校花是这样的哦', '', 10, 100, '美女欣赏', 1, 1, 0, 1289372494, 1289372494, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110151129_l9jnr.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289373032, 0, 0, 0, 0, '', ''),
	(615, '夏天里的美女是这样的哦', '', 10, 100, '美女欣赏', 2, 1, 0, 1289372531, 1289372531, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110151151_yggdp.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289373035, 0, 0, 0, 0, '', ''),
	(616, '清水出芙蓉之少妇篇', '', 10, 100, '美女欣赏', 2, 1, 0, 1289372572, 1289372572, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110151138_sobq7.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289374079, 0, 0, 0, 0, '', ''),
	(617, '超级性感的校园美女就在眼前', '', 10, 100, '美女欣赏', 3, 1, 0, 1289372655, 1289372655, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110151153_b8cy7.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289374066, 0, 0, 0, 0, '', ''),
	(618, '她就是你一生之中苦苦寻找的美女吗?', '', 10, 100, '美女欣赏', 1, 1, 0, 1289372720, 1289372720, 1, 'admin', '', '', '', '', 0, 'article/10/1_20101110151101_2kjyw.jpg.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289374063, 0, 0, 0, 0, '', ''),
	(619, '精武风云', '', 14, 102, '网友视频', 1, 1, 0, 1289443544, 1289443544, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111101118_fwotb.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289443547, 0, 0, 0, 0, '', ''),
	(620, '山楂树之恋', '', 14, 102, '网友视频', 1, 1, 0, 1289443732, 1289443732, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111101151_3mcxo.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289443736, 0, 0, 0, 0, '', ''),
	(621, '铁梨花', '', 14, 102, '网友视频', 1, 1, 0, 1289444013, 1289444013, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111101131_qzlz6.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289444016, 0, 0, 0, 0, '', ''),
	(622, '蜗居', '', 14, 102, '网友视频', 1, 1, 0, 1289444184, 1289444184, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111101155_qokvd.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289444186, 0, 0, 0, 0, '', ''),
	(623, '单身公主相亲记', '', 14, 102, '网友视频', 1, 1, 0, 1289444331, 1289444331, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111101146_5gseq.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289444333, 0, 0, 0, 0, '', ''),
	(624, '天师钟馗', '', 14, 102, '网友视频', 0, 1, 0, 1289444474, 1289444474, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111112_5gxkh.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(625, '青蛇与白蛇', '', 14, 102, '网友视频', 0, 1, 0, 1289444586, 1289444586, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111151_g9bji.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(626, '城北人', '', 14, 102, '网友视频', 1, 1, 0, 1289444719, 1289444719, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111104_b7seu.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289444723, 0, 0, 0, 0, '', ''),
	(627, '三国', '', 14, 102, '网友视频', 0, 1, 0, 1289444990, 1289444990, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111136_av34e.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(628, '大西南剿匪记', '', 14, 102, '网友视频', 0, 1, 0, 1289445159, 1289445159, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111127_oejya.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(629, '非诚勿扰2', '', 14, 102, '网友视频', 2, 1, 0, 1289445315, 1289445315, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111112_vxacq.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289449940, 0, 0, 0, 0, '', ''),
	(630, '梅兰芳', '', 14, 102, '网友视频', 1, 1, 0, 1289445578, 1289445578, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111102_0wmfj.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289445580, 0, 0, 0, 0, '', ''),
	(631, '女人不坏', '', 14, 102, '网友视频', 1, 1, 0, 1289445777, 1289445777, 1, 'admin', '', '', '', '', 0, 'article/14/1_20101111111151_pmvxo.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289445782, 0, 0, 0, 0, '', ''),
	(632, '三星 N148-DP03 全新套餐 特惠巨献 机打发票 包邮 三星笔记本', '', 16, 103, '数码产品', 1, 1, 0, 1289453899, 1289453899, 1, 'admin', '', '', '', '', 0, 'http://img03.taobaocdn.com/imgextra/i7/T1VwlwXaFFXXbSH0E8_100145.jpg_310x310.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289453901, 0, 0, 0, 0, '', ''),
	(633, '宏基/acer AO532h 超薄10寸上网本N450 笔记本全国联保', '', 16, 103, '数码产品', 1, 1, 0, 1289453972, 1289453972, 1, 'admin', '', '', '', '', 0, 'http://img03.taobaocdn.com/bao/uploaded/i3/T1j3xAXeNBXXa35wg3_050109.jpg_310x310.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289453974, 0, 0, 0, 0, '', ''),
	(634, '才990克 军工 原装正品松下 T1 T2 迅驰 二手笔记本电脑 秒上网本', '', 16, 103, '数码产品', 0, 1, 0, 1289454039, 1289454039, 1, 'admin', '', '', '', '', 0, 'http://img06.taobaocdn.com/bao/uploaded/i6/T1W2NuXallXXaaewYa_120947.jpg_310x310.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(635, '高贵LG KG90/KG800 巧克力手机滑盖触摸特价', '', 16, 103, '数码产品', 0, 1, 0, 1289454087, 1289454087, 1, 'admin', '', '', '', '', 0, 'http://img02.taobaocdn.com/bao/uploaded/i2/T1V_VIXiJeXXXpNbzb_122917.jpg_310x310.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(636, '掌上电脑 旋屏手机 触屏 +JAVA +QQ后台 +甩歌', '', 16, 103, '数码产品', 1, 1, 0, 1289454132, 1289454132, 1, 'admin', '', '', '', '', 0, 'http://img03.taobaocdn.com/bao/uploaded/i7/T15QFHXnFOXXcFBFs2_042705.jpg_310x310.jpg', 1, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289454134, 0, 0, 0, 0, '', ''),
	(637, 'phpwind v8.0 社区软件（简体 GBK）', '', 12, 101, '建站软件', 1, 1, 0, 1289475859, 1289475859, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1289475883, 0, 0, '', 1289475861, 0, 0, 0, 0, '', ''),
	(638, 'Discuz! X1.5 正式版最新下载', '', 12, 101, '建站软件', 1, 1, 0, 1289476013, 1289476013, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289476015, 0, 0, 0, 0, '', ''),
	(641, 'qibosoft整站V6.0简体中文版', '', 12, 101, '建站软件', 0, 1, 0, 1289476573, 1289476573, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(640, 'qibosoft行业B2B系统V3.0', '', 12, 101, '建站软件', 0, 1, 0, 1289476488, 1289476488, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(642, 'WinRAR V3.90 Final 官方简体中文版', '', 26, 101, '装机软件', 0, 1, 0, 1289476820, 1289476820, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(643, 'Mydrivers驱动精灵 2010正式版 V3.5 | 完全&升级版', '', 26, 101, '装机软件', 0, 1, 0, 1289476891, 1289476891, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(644, '搜狗拼音输入法 V4.31 正式版', '', 26, 101, '装机软件', 0, 1, 0, 1289476963, 1289476963, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(645, 'ACDSee Photo Manager V10.0.888 官方简体中文版', '', 26, 101, '装机软件', 0, 1, 0, 1289477041, 1289477041, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(646, 'VeryCD 电驴(easyMule) V1.1.15 101020 | 封面管理模式', '', 26, 101, '装机软件', 0, 1, 0, 1289477147, 1289477147, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(647, '千千静听 V5.7 Beta 3修订版 | 歌曲下载/歌词秀优化', '', 26, 101, '装机软件', 0, 1, 0, 1289477230, 1289477230, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(648, '谷歌金山词霸本地增强版 V2.0 2010.3.3.200', '', 27, 101, '办公软件', 0, 1, 0, 1289477316, 1289477316, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(649, 'PDF文件转换王 V1.96', '', 27, 101, '办公软件', 0, 1, 0, 1289477382, 1289477382, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(650, '万能五笔输入法平台 8.1 Beta5 | 测试版', '', 27, 101, '办公软件', 0, 1, 0, 1289477502, 1289477502, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(651, 'Foxmail V6.5.23 | 电子邮件客户端', '', 27, 101, '办公软件', 0, 1, 0, 1289477740, 1289477740, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(652, 'Windows Live Messenger(MSN) V9.0 简体中文版(独立安装包）', '', 27, 101, '办公软件', 0, 1, 0, 1289477875, 1289477875, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(653, 'QQ旋风 V2.9 Beta1(667) | 离线下载新功能/腾讯超级旋风', '', 27, 101, '办公软件', 0, 1, 0, 1289477945, 1289477945, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(654, '急速酷6 V1.3', '', 27, 101, '办公软件', 0, 1, 0, 1289478043, 1289478043, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
	(655, '360安全卫士正式版 V7.3.0.2003 | 中文官方安装版', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478207, 1289478207, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', ''),
	(656, '瑞星杀毒软件2010（免费6个月）22.00.04.98', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478474, 1289478474, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', ''),
	(657, '卡巴斯基全功能安全软件2010 V9.0.0.736sch', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478575, 1289478575, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', ''),
	(658, '金山毒霸', '', 40, 101, '杀毒软件', 1, 1, 0, 1289478756, 1289478756, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289878940, 0, 0, 1, 0, '', ''),
	(659, '江民杀毒软件KV2011 | 正式版', '', 40, 101, '杀毒软件', 0, 1, 0, 1289478928, 1289478928, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', ''),
	(660, '诺顿防病毒软件Norton Antivirus 2011 | 轻巧极速/安全无虑', '', 40, 101, '杀毒软件', 0, 1, 0, 1289479006, 1289479006, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', ''),
	(661, '金山网盾-免疫微软LNK漏洞特别版', '', 40, 101, '杀毒软件', 0, 1, 0, 1289479115, 1289479115, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 0, 0, 0, 1, 0, '', ''),
	(662, '江民杀毒软件KV2010 标准版', '', 40, 101, '杀毒软件', 1, 1, 0, 1289479179, 1289479179, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 0, 0, 0, '', 1289479961, 0, 0, 1, 0, '', ''),
	(663, '感谢“中电云集”为齐博官网赞助服务器与带宽', '', 3, 0, '社会新闻', 7, 1, 0, 1289526733, 1386472967, 1, 'admin', '', '', '', '', 0, '', 0, 1, '', 0, 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', 0, '', 0, 0, '', '', '', '', '', 1291864893, 0, 0, '', 1291864905, 0, 0, 0, 0, '', '');
/*!40000 ALTER TABLE `qb_article` ENABLE KEYS */;

-- 导出  表 cms.qb_article_content_100 结构
CREATE TABLE IF NOT EXISTS `qb_article_content_100` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `photourl` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_content_100 的数据：16 rows
DELETE FROM `qb_article_content_100`;
/*!40000 ALTER TABLE `qb_article_content_100` DISABLE KEYS */;
INSERT INTO `qb_article_content_100` (`id`, `aid`, `rid`, `fid`, `uid`, `photourl`) VALUES
	(1, 531, 509, 10, 1, 'photo/10/1_20090415160401_XMXbb.jpg@@@06C84C97B8F24A26A6C05B4BC5BE4794200608021752@@@\nphoto/10/1_20090415160416_qs6Mj.jpg@@@839-45-5@@@'),
	(2, 532, 510, 10, 1, 'photo/10/1_20090415170406_X57YC.jpg@@@2006_11_06_22_15_11_258@@@\nphoto/10/1_20090415170419_IxNF1.jpg@@@200808%5C1722073@@@'),
	(3, 605, 586, 10, 1, 'photo/10/1_20101110141136_wdd4w.jpg@@@0d7d09f1-f0f3-4276-ae37-5e019675a4fe@@@'),
	(4, 606, 587, 10, 1, 'photo/10/1_20101110141139_i1ypy.jpg@@@2a5570c2-a7b4-400d-8b13-c64a4a0613e8@@@'),
	(5, 607, 588, 10, 1, 'photo/10/1_20101110141134_qxblz.jpg@@@4b5766f9-199a-49f2-a549-8a200dc0b419@@@'),
	(6, 608, 589, 10, 1, 'photo/10/1_20101110141120_fpwhq.jpg@@@40777b29-81ba-48b1-85d2-e11b9a9148aa@@@'),
	(7, 609, 590, 10, 1, 'photo/10/1_20101110141109_hsvcz.jpg@@@331c7842-904f-48d6-b072-04490709bb84@@@'),
	(8, 610, 591, 10, 1, 'photo/10/1_20101110141153_lisq8.jpg@@@5cf208d3-ad7b-4d29-85e0-56d58501039f@@@'),
	(9, 611, 592, 10, 1, 'photo/10/1_20101110141106_ipncy.jpg@@@6df8e2ed-1721-4849-9489-cacbd33aaea2@@@'),
	(10, 612, 593, 10, 1, 'photo/10/1_20101110141155_s3htx.jpg@@@98a8a42d-9ff8-4482-bb68-49bd7db89d80@@@'),
	(11, 613, 594, 10, 1, 'photo/10/1_20101110151145_1aiuz.jpg@@@26d75a2c-70a8-4be5-b519-935c4f0c4855@@@'),
	(12, 614, 595, 10, 1, 'photo/10/1_20101110151129_l9jnr.jpg@@@2e9d868f-d1ea-4d4b-a4b2-e26d9a688b63@@@'),
	(13, 615, 596, 10, 1, 'photo/10/1_20101110151151_yggdp.jpg@@@0d95b391-ad47-414d-a062-0fe205ca809a@@@'),
	(14, 616, 597, 10, 1, 'photo/10/1_20101110151138_sobq7.jpg@@@81b4e9ce-2fb2-4ff1-836a-024a71be2abc@@@'),
	(15, 617, 598, 10, 1, 'photo/10/1_20101110151153_b8cy7.jpg@@@16d72801-bd43-455d-beaf-d0b971485e63@@@'),
	(16, 618, 599, 10, 1, 'photo/10/1_20101110151101_2kjyw.jpg@@@2336d723-504f-4180-9f4d-78b13c598ce4@@@');
/*!40000 ALTER TABLE `qb_article_content_100` ENABLE KEYS */;

-- 导出  表 cms.qb_article_content_101 结构
CREATE TABLE IF NOT EXISTS `qb_article_content_101` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `day_hits` mediumint(7) NOT NULL DEFAULT '0',
  `week_hits` mediumint(7) NOT NULL DEFAULT '0',
  `month_hits` mediumint(7) NOT NULL DEFAULT '0',
  `total_hits` mediumint(7) NOT NULL DEFAULT '0',
  `hits_time` int(10) NOT NULL DEFAULT '0',
  `hits_user` text NOT NULL,
  `my_author` varchar(30) NOT NULL DEFAULT '',
  `my_copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `my_demo` varchar(150) NOT NULL DEFAULT '',
  `operatingsystem` varchar(150) NOT NULL DEFAULT '',
  `softlanguage` varchar(30) NOT NULL DEFAULT '',
  `copyright` varchar(30) NOT NULL DEFAULT '',
  `softsize` varchar(20) NOT NULL DEFAULT '',
  `softurl` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_content_101 的数据：32 rows
DELETE FROM `qb_article_content_101`;
/*!40000 ALTER TABLE `qb_article_content_101` DISABLE KEYS */;
INSERT INTO `qb_article_content_101` (`id`, `aid`, `rid`, `fid`, `uid`, `day_hits`, `week_hits`, `month_hits`, `total_hits`, `hits_time`, `hits_user`, `my_author`, `my_copyfromurl`, `my_demo`, `operatingsystem`, `softlanguage`, `copyright`, `softsize`, `softurl`) VALUES
	(2, 535, 513, 26, 1, 24, 24, 24, 24, 1239787781, '', '迅雷网络', 'http://www.xunlei.com/', 'http://www.xunlei.com/', 'XP/2003', '简体中文', '免费版', '9.5', 'http://down.sandai.net/Thunder5.8.13.699.exe@@@@@@'),
	(3, 536, 514, 27, 1, 1, 1, 1, 1, 1239788031, '', '金山', 'http://www.kingsoft.com/', 'http://www.wps.cn/', 'Windows 2000/XP/Vista', '简体中文', '免费版', '28.3', 'http://kad.www.wps.cn/wps/download/WPS2007.12012.exe@@@@@@'),
	(4, 537, 515, 26, 1, 1, 1, 1, 1, 1239788257, '', '腾讯', 'http://www.qq.com/', 'http://im.qq.com/', '2000/2003/XP', '简体中文', '免费版', '19.8', 'http://dl_dir.qq.com/qqfile/qq/QQ2009/QQ2009Beta2.exe@@@@@@'),
	(5, 538, 516, 12, 1, 1, 1, 1, 1, 1239788490, '', 'qibosoft', 'http://www.qibosoft.com/', 'http://www.qibosoft.com/', 'PHP', '简体中文', '免费版', '1.11', 'http://down.qibosoft.com/module/wnarticle.rar@@@@@@'),
	(6, 539, 517, 12, 1, 2, 2, 2, 2, 1240192795, '', 'qibosoft', 'http://www.qibosoft.com/', 'http://www.qibosoft.com/', 'PHP', '简体中文', '免费版', '0.75', 'http://down.qibosoft.com/module/wnfenlei.rar@@@@@@'),
	(7, 540, 518, 12, 1, 1, 1, 1, 1, 1240192781, '', 'qibosoft', 'http://www.qibosoft.com/', 'http://www.qibosoft.com/', 'PHP', '简体中文', '免费版', '3.13', 'http://down.qibosoft.com/module/blog.rar@@@@@@'),
	(8, 541, 519, 12, 1, 0, 0, 0, 0, 0, '', 'qibosoft', 'http://www.qibosoft.com/', 'http://www.qibosoft.com/', 'PHP', '简体中文', '免费版', '3.31', 'http://down.qibosoft.com/module/zhidao.rar@@@@@@'),
	(9, 637, 618, 12, 1, 0, 0, 0, 0, 0, '', 'phpwind', 'phpwind', 'http://www.phpwind.net', 'Linux/2003/XP/PHP', '简体中文', '免费版', '10', 'http://download.phpwind.net/index.php?m=download&a=do&did=477@@@@@@'),
	(10, 638, 619, 12, 1, 0, 0, 0, 0, 0, '', '康盛创想', 'http://www.comsenz.com/', 'http://www.discuz.net', 'Linux/2003/PHP', '简体中文', '免费版', '7.11', 'http://download2.comsenz.com/DiscuzX/1.5/Discuz_X1.5_SC_GBK.zip@@@@@@'),
	(13, 641, 622, 12, 1, 0, 0, 0, 0, 0, '', 'qibosoft', 'http://www.qibosoft.com/', 'http://v6.qibosoft.com/', 'Linux/2003/PHP', '简体中文', '免费版', '5', 'http://down.qibosoft.com/down.php?v=v6@@@@@@'),
	(12, 640, 621, 12, 1, 0, 0, 0, 0, 0, '', 'qibosoft', 'http://www.qibosoft.com/', 'http://www.gt115.com/', 'Linux/2003/PHP', '简体中文', '免费版', '11', 'http://bbs.qibosoft.com/downV6business.php@@@@@@'),
	(14, 642, 623, 26, 1, 0, 0, 0, 0, 0, '', '', 'http://www.rarlab.com/', '', '2003/XP', '简体中文', '免费版', '3', 'http://down.it168.com/DownLoad.aspx?rsId=16060&dlType=gf@@@@@@'),
	(15, 643, 624, 26, 1, 0, 0, 0, 0, 0, '', '', 'http://www.drivergenius.com/', '', '2003/Linux/XP', '简体中文', '免费版', '25', 'http://down.it168.com/DownLoad.aspx?rsId=106848&dlType=gf@@@@@@'),
	(16, 644, 625, 26, 1, 0, 0, 0, 0, 0, '', '北京搜狗科技发展有限公司', 'http://pinyin.sogou.com/', '', '2003/XP', '简体中文', '免费版', '6', 'http://down.it168.com/DownLoad.aspx?rsId=80927&dlType=gf@@@@@@'),
	(17, 645, 626, 26, 1, 0, 0, 0, 0, 0, '', 'ACD Systems', 'http://www.acdsystems.com/', '', '2003/XP', '简体中文', '免费版', '5', 'http://down.it168.com/DownLoad.aspx?rsId=17460&dlType=gf@@@@@@'),
	(18, 646, 627, 26, 1, 0, 0, 0, 0, 0, '', 'verycd', 'http://www.verycd.com/', '', '2003/XP', '简体中文', '免费版', '7', 'http://down.it168.com/DownLoad.aspx?rsId=7453&dlType=gf@@@@@@'),
	(19, 647, 628, 26, 1, 0, 0, 0, 0, 0, '', 'qianqian', 'http://ttplayer.qianqian.com/', '', '2003/XP', '简体中文', '免费版', '9', 'http://down.it168.com/DownLoad.aspx?rsId=20769&dlType=gf@@@@@@'),
	(20, 648, 629, 27, 1, 0, 0, 0, 0, 0, '', '金山', 'http://u.sl.iciba.com/union/download/index_pwlite.html?uid=3250&sid=&adid=1133&adtype=63', '', '2003/XP', '简体中文', '免费版', '13', 'http://down.it168.com/DownLoad.aspx?rsId=80375&dlType=gf@@@@@@'),
	(21, 649, 630, 27, 1, 0, 0, 0, 0, 0, '', '微星工作室', 'http://www.microsword.net/', '', '2003/XP', '简体中文', '免费版', '6', 'http://down.it168.com/DownLoad.aspx?rsId=81009&dlType=gf@@@@@@'),
	(22, 650, 631, 27, 1, 0, 0, 0, 0, 0, '', '深圳市世强电脑科技有限公司', 'http://www.wnwb.com/', '', '2003/XP', '简体中文', '免费版', '8', 'http://down.it168.com/DownLoad.aspx?rsId=81025&dlType=gf@@@@@@'),
	(23, 651, 632, 27, 1, 0, 0, 0, 0, 0, '', '腾讯', 'http://im.qq.com/foxmail/download.shtml', '', 'XP/2003', '简体中文', '免费版', '9', 'http://down.it168.com/DownLoad.aspx?rsId=1840&dlType=gf@@@@@@'),
	(24, 652, 633, 27, 1, 0, 0, 0, 0, 0, '', '微软Live', 'http://get.live.cn/', '', '2003/XP', '简体中文', '免费版', '12', 'http://down.it168.com/DownLoad.aspx?rsId=1090&dlType=gf@@@@@@'),
	(25, 653, 634, 27, 1, 0, 0, 0, 0, 0, '', '腾讯', 'http://dl_dir.qq.com/', '', 'XP/2003', '简体中文', '免费版', '30', 'http://down.it168.com/DownLoad.aspx?rsId=6669&dlType=gf@@@@@@'),
	(26, 654, 635, 27, 1, 0, 0, 0, 0, 0, '', ' 酷6', 'http://www.ku6.com/soft/speedku6.html', '', '2003/XP', '简体中文', '免费版', '10', 'http://down.it168.com/DownLoad.aspx?rsId=109341&dlType=gf@@@@@@'),
	(27, 655, 636, 40, 1, 0, 0, 0, 0, 0, '', '奇虎360', 'http://www.360.cn/down/soft_down2-3.html', '', '2003/XP', '简体中文', '免费版', '9', 'http://down.it168.com/DownLoad.aspx?rsId=43634&dlType=gf@@@@@@'),
	(28, 656, 637, 40, 1, 0, 0, 0, 0, 0, '', '瑞星科技', 'http://www.rising.com.cn/', '', '2003/XP', '简体中文', '免费版', '10', 'http://down.it168.com/DownLoad.aspx?rsId=43505&dlType=gf@@@@@@'),
	(29, 657, 638, 40, 1, 0, 0, 0, 0, 0, '', '卡巴斯基实验室', 'http://www.kaspersky.com.cn/', '', '2003/XP', '简体中文', '免费版', '10', 'http://down.it168.com/DownLoad.aspx?rsId=107344&dlType=gf@@@@@@'),
	(30, 658, 639, 40, 1, 0, 0, 0, 0, 0, '', '金山', 'http://www.duba.net/', '', 'XP/2003', '简体中文', '免费版', '15', 'http://cd001.www.duba.net/duba/install/2011/ever/KAV101109_DOWN_99_10.exe@@@@@@'),
	(31, 659, 640, 40, 1, 0, 0, 0, 0, 0, '', '北京江民新科技术有限公司', 'http://www.jiangmin.com/', '', '2003/XP', '简体中文', '免费版', '13', 'http://down.it168.com/DownLoad.aspx?rsId=107323&dlType=gf@@@@@@'),
	(32, 660, 641, 40, 1, 0, 0, 0, 0, 0, '', '赛门铁克公司', 'http://www.nt800.com/download/cbnav.htm', '', '2003/XP', '简体中文', '免费版', '15', 'http://down.it168.com/DownLoad.aspx?rsId=15208&dlType=gf@@@@@@'),
	(33, 661, 642, 40, 1, 0, 0, 0, 0, 0, '', '金山软件', 'http://www.duba.net/', '', 'XP/2003', '简体中文', '免费版', '15', 'http://down.it168.com/DownLoad.aspx?rsId=125258&dlType=gf@@@@@@'),
	(34, 662, 643, 40, 1, 0, 0, 0, 0, 0, '', ' 北京江民新科技术有限公司', 'http://www.jiangmin.com/', '', '2003/XP/XP', '简体中文', '免费版', '5', 'http://down.it168.com/DownLoad.aspx?rsId=43469&dlType=gf@@@@@@');
/*!40000 ALTER TABLE `qb_article_content_101` ENABLE KEYS */;

-- 导出  表 cms.qb_article_content_102 结构
CREATE TABLE IF NOT EXISTS `qb_article_content_102` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `day_hits` mediumint(7) NOT NULL DEFAULT '0',
  `week_hits` mediumint(7) NOT NULL DEFAULT '0',
  `month_hits` mediumint(7) NOT NULL DEFAULT '0',
  `total_hits` mediumint(7) NOT NULL DEFAULT '0',
  `hits_time` int(10) NOT NULL DEFAULT '0',
  `hits_user` text NOT NULL,
  `mvurl` mediumtext NOT NULL,
  `my_role` varchar(100) NOT NULL DEFAULT '',
  `my_lang` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_content_102 的数据：15 rows
DELETE FROM `qb_article_content_102`;
/*!40000 ALTER TABLE `qb_article_content_102` DISABLE KEYS */;
INSERT INTO `qb_article_content_102` (`id`, `aid`, `rid`, `fid`, `uid`, `day_hits`, `week_hits`, `month_hits`, `total_hits`, `hits_time`, `hits_user`, `mvurl`, `my_role`, `my_lang`) VALUES
	(9, 542, 520, 14, 1, 1, 1, 1, 9, 1289443058, '', 'http://down.qibosoft.com/other/testv6/1.flv@@@第1集@@@@@@flv\nhttp://down.qibosoft.com/other/testv6/2.flv@@@第2集@@@@@@flv\nhttp://down.qibosoft.com/other/testv6/3.flv@@@第3集@@@@@@flv\nhttp://down.qibosoft.com/other/testv6/4.flv@@@第4集@@@@@@flv', '比尔·盖茨', '英语'),
	(15, 601, 582, 14, 1, 1, 1, 1, 2, 1289443027, '', 'http://player.youku.com/player.php/sid/XODUxMTk5Mjg=/v.swf@@@NBA常规赛@@@@@@swf', '刘德华', '粤语'),
	(16, 619, 600, 14, 1, 1, 1, 1, 1, 1289443554, '', 'http://player.youku.com/player.php/sid/XMjEwMzEyMjM2/v.swf@@@精武风云@@@@@@swf', '甄子丹', '国语'),
	(17, 620, 601, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMjEyNzQzNDQw/v.swf@@@@@@@@@swf', '周冬雨', '国语'),
	(18, 621, 602, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMjE4MTMyOTM2/v.swf@@@@@@@@@swf', '陈数', '国语'),
	(19, 622, 603, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMTI1NzAyMjYw/v.swf@@@@@@@@@swf', '', '国语'),
	(20, 623, 604, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMjA3MjMxNzQw/v.swf@@@@@@@@@swf', '林志颖', '国语'),
	(21, 624, 605, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMTkxODIzNDA0/v.swf@@@@@@@@@swf', '欧阳震华', '国语'),
	(22, 625, 606, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMTE4NTk5NDky/v.swf@@@@@@@@@swf', '焦恩俊', '国语'),
	(23, 626, 607, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMTI5NjYxODky/v.swf@@@@@@@@@swf', '梁静', '国语'),
	(24, 627, 608, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMjE0ODc0MTA4/v.swf@@@@@@@@@swf', '陈建斌', '国语'),
	(25, 628, 609, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMjA1NTI1NzQw/v.swf@@@@@@@@@swf', '柳云龙', '国语'),
	(26, 629, 610, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XNjA2ODU0OTY=/v.swf@@@@@@@@@swf', '', '国语'),
	(27, 630, 611, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XNTk5MjkyMjA=/v.swf@@@@@@@@@swf', '黎明', '国语'),
	(28, 631, 612, 14, 1, 0, 0, 0, 0, 0, '', 'http://player.youku.com/player.php/sid/XMTU2MjI5NzA4/v.swf@@@@@@@@@swf', '周迅', '国语');
/*!40000 ALTER TABLE `qb_article_content_102` ENABLE KEYS */;

-- 导出  表 cms.qb_article_content_103 结构
CREATE TABLE IF NOT EXISTS `qb_article_content_103` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `shoptype` varchar(50) NOT NULL DEFAULT '',
  `martprice` varchar(15) NOT NULL DEFAULT '',
  `nowprice` varchar(20) NOT NULL DEFAULT '',
  `shop_id` varchar(30) NOT NULL DEFAULT '',
  `shopmoney` int(7) NOT NULL DEFAULT '0',
  `shopnum` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_content_103 的数据：11 rows
DELETE FROM `qb_article_content_103`;
/*!40000 ALTER TABLE `qb_article_content_103` DISABLE KEYS */;
INSERT INTO `qb_article_content_103` (`id`, `aid`, `rid`, `fid`, `uid`, `shoptype`, `martprice`, `nowprice`, `shop_id`, `shopmoney`, `shopnum`) VALUES
	(9, 519, 497, 16, 1, 'DSC-T300', '2133', '2111', 'a12', 0, '不限'),
	(10, 520, 498, 16, 1, 'SX200 IS', '2444', '2333', 'fe333', 0, '不限'),
	(11, 521, 499, 16, 1, 'D90', '6555', '5555', 'b434', 0, '不限'),
	(12, 522, 500, 16, 1, 'S2000HD', '1888', '1700', 'aw23', 0, '900'),
	(13, 523, 501, 16, 1, 'DMC-FZ28', '3444', '3333', 'ae233', 0, '900'),
	(14, 524, 502, 16, 1, 'SP-565UZ', '3222', '2222', 'd3434', 0, '不限'),
	(15, 632, 613, 16, 1, 'N148-DP03', '3000', '2000', '', 0, '不限'),
	(16, 633, 614, 16, 1, 'AO532h', '2999', '1999', '', 0, '不限'),
	(17, 634, 615, 16, 1, 'T2', '3999', '2999', '', 0, '不限'),
	(18, 635, 616, 16, 1, 'KG800', '4444', '3999', '', 0, '不限'),
	(19, 636, 617, 16, 1, 'KU888', '3999', '2888', '', 0, '不限');
/*!40000 ALTER TABLE `qb_article_content_103` ENABLE KEYS */;

-- 导出  表 cms.qb_article_content_104 结构
CREATE TABLE IF NOT EXISTS `qb_article_content_104` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `flashurl` varchar(150) NOT NULL DEFAULT '',
  `flashauthor` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_content_104 的数据：2 rows
DELETE FROM `qb_article_content_104`;
/*!40000 ALTER TABLE `qb_article_content_104` DISABLE KEYS */;
INSERT INTO `qb_article_content_104` (`id`, `aid`, `rid`, `fid`, `uid`, `flashurl`, `flashauthor`) VALUES
	(9, 529, 507, 18, 1, 'http://down.qibosoft.com/other/testv6/7k7k_ljlawbshw.swf@@@swf', ''),
	(10, 530, 508, 18, 1, 'http://down.qibosoft.com/other/testv6/7k7k_qiufy.swf@@@swf', '');
/*!40000 ALTER TABLE `qb_article_content_104` ENABLE KEYS */;

-- 导出  表 cms.qb_article_content_105 结构
CREATE TABLE IF NOT EXISTS `qb_article_content_105` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `my_type` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_content_105 的数据：1 rows
DELETE FROM `qb_article_content_105`;
/*!40000 ALTER TABLE `qb_article_content_105` DISABLE KEYS */;
INSERT INTO `qb_article_content_105` (`id`, `aid`, `rid`, `fid`, `uid`, `my_type`) VALUES
	(2, 544, 522, 30, 1, 'M11504 BXF');
/*!40000 ALTER TABLE `qb_article_content_105` ENABLE KEYS */;

-- 导出  表 cms.qb_article_db 结构
CREATE TABLE IF NOT EXISTS `qb_article_db` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=666 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_db 的数据：122 rows
DELETE FROM `qb_article_db`;
/*!40000 ALTER TABLE `qb_article_db` DISABLE KEYS */;
INSERT INTO `qb_article_db` (`aid`) VALUES
	(519),
	(520),
	(521),
	(522),
	(523),
	(524),
	(529),
	(530),
	(531),
	(532),
	(535),
	(536),
	(537),
	(538),
	(539),
	(540),
	(541),
	(542),
	(544),
	(545),
	(546),
	(547),
	(548),
	(549),
	(550),
	(551),
	(552),
	(553),
	(554),
	(555),
	(556),
	(557),
	(558),
	(559),
	(560),
	(565),
	(566),
	(567),
	(568),
	(569),
	(570),
	(571),
	(572),
	(573),
	(574),
	(575),
	(576),
	(577),
	(578),
	(579),
	(580),
	(581),
	(582),
	(583),
	(593),
	(594),
	(595),
	(598),
	(599),
	(601),
	(603),
	(604),
	(605),
	(606),
	(607),
	(608),
	(609),
	(610),
	(611),
	(612),
	(613),
	(614),
	(615),
	(616),
	(617),
	(618),
	(619),
	(620),
	(621),
	(622),
	(623),
	(624),
	(625),
	(626),
	(627),
	(628),
	(629),
	(630),
	(631),
	(632),
	(633),
	(634),
	(635),
	(636),
	(637),
	(638),
	(640),
	(641),
	(642),
	(643),
	(644),
	(645),
	(646),
	(647),
	(648),
	(649),
	(650),
	(651),
	(652),
	(653),
	(654),
	(655),
	(656),
	(657),
	(658),
	(659),
	(660),
	(661),
	(662),
	(663),
	(664),
	(665);
/*!40000 ALTER TABLE `qb_article_db` ENABLE KEYS */;

-- 导出  表 cms.qb_article_module 结构
CREATE TABLE IF NOT EXISTS `qb_article_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alias` varchar(30) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  `iftable` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_article_module 的数据：6 rows
DELETE FROM `qb_article_module`;
/*!40000 ALTER TABLE `qb_article_module` DISABLE KEYS */;
INSERT INTO `qb_article_module` (`id`, `name`, `alias`, `list`, `allowpost`, `style`, `template`, `config`, `keywords`, `ifclose`, `iftable`) VALUES
	(100, '图片模型', '图片', 0, '', '', '', 'a:3:{s:8:"field_db";a:1:{s:8:"photourl";a:15:{s:5:"title";s:8:"图片地址";s:10:"field_name";s:8:"photourl";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:9:"upmorepic";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:6:"search";s:1:"0";s:10:"IfListShow";s:1:"0";s:9:"orderlist";s:1:"0";s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:9:"moduleSet";a:11:{s:5:"alias";s:4:"图片";s:10:"title_name";s:8:"图片名称";s:12:"content_name";s:4:"介绍";s:6:"edit_w";s:3:"500";s:6:"edit_h";s:3:"200";s:11:"description";s:1:"1";s:5:"etype";s:1:"1";s:8:"morepage";s:1:"1";s:9:"no_author";s:1:"1";s:7:"no_from";s:1:"1";s:10:"no_fromurl";s:1:"1";}}', 'photo', 0, 0),
	(101, '下载模型', '软件', 0, '', '', '', 'a:4:{s:8:"field_db";a:8:{s:9:"my_author";a:13:{s:5:"title";s:8:"软件作者";s:10:"field_name";s:9:"my_author";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:6:"search";s:1:"0";s:9:"orderlist";i:8;s:9:"allowview";N;}s:14:"my_copyfromurl";a:14:{s:5:"title";s:8:"厂商主页";s:10:"field_name";s:14:"my_copyfromurl";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:150;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"50";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:7:"my_demo";a:14:{s:5:"title";s:8:"演示网址";s:10:"field_name";s:7:"my_demo";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:150;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"50";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}s:15:"operatingsystem";a:14:{s:5:"title";s:8:"运行环境";s:10:"field_name";s:15:"operatingsystem";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:150;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"60";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:902:"<br>平台选择：<a href=\\"javascript:ToSystem(\\\'Linux\\\')\\">Linux</a>/<a href=\\"javascript:ToSystem(\\\'DOS\\\')\\">DOS</a>/<a href=\\"javascript:ToSystem(\\\'9x\\\')\\">9x</a>/<a href=\\"javascript:ToSystem(\\\'NT\\\')\\">NT</a>/<a href=\\"javascript:ToSystem(\\\'2000\\\')\\">2000</a>/<a href=\\"javascript:ToSystem(\\\'2003\\\')\\">2003</a>/<a href=\\"javascript:ToSystem(\\\'XP\\\')\\">XP</a>/<a href=\\"javascript:ToSystem(\\\'.NET\\\')\\">.NET</a>/<a href=\\"javascript:ToSystem(\\\'ASP\\\')\\">ASP</a>/<a href=\\"javascript:ToSystem(\\\'PHP\\\')\\">PHP</a>/<a href=\\"javascript:ToSystem(\\\'JSP\\\')\\">JSP</a>/<a href=\\"javascript:ToSystem(\\\'CGI\\\')\\">CGI</a>\r\n\r\n<SCRIPT LANGUAGE=\\"JavaScript\\">\r\nfunction ToSystem(va){\r\n	cc=document.getElementById(\\"atc_operatingsystem\\").value\r\n	if(cc==\\\'\\\'){\r\n		document.getElementById(\\"atc_operatingsystem\\").value=va;\r\n	}else{\r\n		document.getElementById(\\"atc_operatingsystem\\").value+=\\"/\\"+va;\r\n	}\r\n	\r\n}\r\n</SCRIPT>";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:5;s:9:"allowview";N;}s:12:"softlanguage";a:14:{s:5:"title";s:8:"软件语言";s:10:"field_name";s:12:"softlanguage";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:34:"简体中文\r\n繁体中文\r\n英文\r\n其他语言";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:4;s:9:"allowview";N;}s:9:"copyright";a:14:{s:5:"title";s:8:"授权形式";s:10:"field_name";s:9:"copyright";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:30:"免费版\r\n试用版\r\n破解版\r\n商业版";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:3;s:9:"allowview";N;}s:8:"softsize";a:14:{s:5:"title";s:8:"文件大小";s:10:"field_name";s:8:"softsize";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:1:"M";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:2;s:9:"allowview";N;}s:7:"softurl";a:15:{s:5:"title";s:8:"软件地址";s:10:"field_name";s:7:"softurl";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:10:"upmorefile";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:6:"search";s:1:"0";s:10:"IfListShow";s:1:"0";s:9:"orderlist";s:1:"1";s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:9:"moduleSet";a:11:{s:5:"alias";s:4:"软件";s:10:"title_name";s:8:"软件名称";s:12:"content_name";s:8:"软件介绍";s:6:"edit_w";s:3:"600";s:6:"edit_h";s:3:"300";s:11:"description";s:1:"1";s:5:"etype";s:1:"0";s:8:"morepage";s:1:"1";s:9:"no_author";s:1:"1";s:7:"no_from";s:1:"1";s:10:"no_fromurl";s:1:"1";}s:5:"tpldb";a:5:{s:4:"post";s:0:"";s:9:"adminpost";s:0:"";s:4:"list";s:0:"";s:4:"show";s:0:"";s:6:"search";s:0:"";}}', 'download', 0, 0),
	(102, '视频模型', '视频', 0, '', '', '', 'a:4:{s:8:"field_db";a:3:{s:5:"mvurl";a:15:{s:5:"title";s:8:"在线观看";s:10:"field_name";s:5:"mvurl";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:8:"upmoremv";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:6:"search";s:1:"0";s:10:"IfListShow";s:1:"0";s:9:"orderlist";s:1:"3";s:9:"allowview";N;}s:7:"my_role";a:14:{s:5:"title";s:8:"领衔主演";s:10:"field_name";s:7:"my_role";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:100;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:2;s:9:"allowview";N;}s:7:"my_lang";a:14:{s:5:"title";s:4:"语言";s:10:"field_name";s:7:"my_lang";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:26:"国语\r\n粤语\r\n英语\r\n其它语言";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:1;s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:9:"moduleSet";a:11:{s:5:"alias";s:4:"视频";s:10:"title_name";s:8:"视频名称";s:12:"content_name";s:8:"视频介绍";s:6:"edit_w";s:3:"500";s:6:"edit_h";s:3:"300";s:11:"description";s:1:"1";s:5:"etype";s:1:"0";s:8:"morepage";s:1:"1";s:9:"no_author";s:1:"1";s:7:"no_from";s:1:"1";s:10:"no_fromurl";s:1:"1";}s:5:"tpldb";a:5:{s:4:"post";s:0:"";s:9:"adminpost";s:0:"";s:4:"list";s:0:"";s:4:"show";s:0:"";s:6:"search";s:0:"";}}', 'mv', 0, 0),
	(103, '商城模型', '商品', 0, '', '', '', 'a:4:{s:8:"field_db";a:6:{s:7:"shop_id";a:14:{s:5:"title";s:8:"商品编号";s:10:"field_name";s:7:"shop_id";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:0;s:9:"allowview";N;}s:8:"shoptype";a:13:{s:5:"title";s:8:"商品型号";s:10:"field_name";s:8:"shoptype";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:6:"search";s:1:"0";s:9:"orderlist";i:0;s:9:"allowview";N;}s:9:"shopmoney";a:14:{s:5:"title";s:8:"积分点数";s:10:"field_name";s:9:"shopmoney";s:10:"field_type";s:3:"int";s:10:"field_leng";i:7;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"7";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"点";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:0;s:9:"allowview";N;}s:9:"martprice";a:14:{s:5:"title";s:8:"市面价格";s:10:"field_name";s:9:"martprice";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"元";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:0;s:9:"allowview";N;}s:8:"nowprice";a:14:{s:5:"title";s:8:"现售价格";s:10:"field_name";s:8:"nowprice";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"元";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:0;s:9:"allowview";N;}s:7:"shopnum";a:14:{s:5:"title";s:6:"库存量";s:10:"field_name";s:7:"shopnum";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:5;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"8";s:8:"form_set";s:0:"";s:10:"form_value";s:4:"不限";s:10:"form_units";s:2:"个";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:0;s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:9:"moduleSet";a:11:{s:5:"alias";s:4:"商品";s:10:"title_name";s:8:"商品名称";s:12:"content_name";s:8:"商品介绍";s:6:"edit_w";s:3:"600";s:6:"edit_h";s:3:"300";s:11:"description";s:1:"1";s:5:"etype";s:1:"0";s:8:"morepage";s:1:"1";s:9:"no_author";s:1:"1";s:7:"no_from";s:1:"1";s:10:"no_fromurl";s:1:"1";}s:5:"tpldb";a:5:{s:4:"post";s:0:"";s:9:"adminpost";s:0:"";s:4:"list";s:0:"";s:4:"show";s:0:"";s:6:"search";s:0:"";}}', 'shop', 0, 0),
	(104, 'FLASH模型', 'FLASH', 0, '', '', '', 'a:4:{s:8:"field_db";a:2:{s:11:"flashauthor";a:14:{s:5:"title";s:9:"FLASH作者";s:10:"field_name";s:11:"flashauthor";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"12";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:2;s:9:"allowview";N;}s:8:"flashurl";a:13:{s:5:"title";s:9:"FLASH地址";s:10:"field_name";s:8:"flashurl";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:150;s:9:"form_type";s:6:"upplay";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:6:"search";s:1:"0";s:9:"orderlist";i:1;s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:9:"moduleSet";a:11:{s:5:"alias";s:5:"FLASH";s:10:"title_name";s:9:"FLASH名称";s:12:"content_name";s:9:"FLASH介绍";s:6:"edit_w";s:3:"500";s:6:"edit_h";s:3:"300";s:11:"description";s:1:"1";s:5:"etype";s:1:"1";s:8:"morepage";s:1:"1";s:9:"no_author";s:1:"1";s:7:"no_from";s:1:"1";s:10:"no_fromurl";s:1:"1";}s:5:"tpldb";a:5:{s:4:"post";s:0:"";s:9:"adminpost";s:0:"";s:4:"list";s:0:"";s:4:"show";s:0:"";s:6:"search";s:0:"";}}', 'flash', 0, 0),
	(105, '产品型模', '产品', 0, '', '', '', 'a:5:{s:8:"field_db";a:1:{s:7:"my_type";a:13:{s:5:"title";s:8:"产品型号";s:10:"field_name";s:7:"my_type";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:100;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"0";s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:9:"moduleSet";a:11:{s:5:"alias";s:4:"产品";s:10:"title_name";s:8:"产品名称";s:12:"content_name";s:8:"产品介绍";s:6:"edit_w";s:3:"500";s:6:"edit_h";s:3:"250";s:11:"description";s:1:"1";s:5:"etype";s:1:"0";s:8:"morepage";s:1:"1";s:9:"no_author";s:1:"1";s:7:"no_from";s:1:"1";s:10:"no_fromurl";s:1:"1";}s:9:"is_upfile";a:0:{}s:5:"tpldb";a:5:{s:4:"post";s:0:"";s:9:"adminpost";s:0:"";s:4:"list";s:0:"";s:4:"show";s:0:"";s:6:"search";s:0:"";}}', '', 0, 0);
/*!40000 ALTER TABLE `qb_article_module` ENABLE KEYS */;

-- 导出  表 cms.qb_channel 结构
CREATE TABLE IF NOT EXISTS `qb_channel` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(30) NOT NULL DEFAULT '',
  `phpname` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(255) NOT NULL DEFAULT '',
  `fids` varchar(255) NOT NULL DEFAULT '',
  `showfid` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `head_tpl` varchar(255) NOT NULL DEFAULT '',
  `main_tpl` varchar(255) NOT NULL DEFAULT '',
  `foot_tpl` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `admin` varchar(150) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_channel 的数据：1 rows
DELETE FROM `qb_channel`;
/*!40000 ALTER TABLE `qb_channel` DISABLE KEYS */;
INSERT INTO `qb_channel` (`id`, `type`, `sort`, `name`, `path`, `phpname`, `htmlname`, `fids`, `showfid`, `style`, `head_tpl`, `main_tpl`, `foot_tpl`, `url`, `logo`, `descrip`, `admin`, `list`, `config`) VALUES
	(1, 0, 0, '网站首页', './', '', 'index.htm', '35,4,3,39', '', 'default', '', '', '', '', '', '', '', 0, 'a:5:{s:4:"line";s:1:"3";s:4:"rows";s:1:"8";s:4:"leng";s:2:"34";s:5:"order";s:4:"list";s:8:"fid_list";N;}');
/*!40000 ALTER TABLE `qb_channel` ENABLE KEYS */;

-- 导出  表 cms.qb_collection 结构
CREATE TABLE IF NOT EXISTS `qb_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_collection 的数据：0 rows
DELETE FROM `qb_collection`;
/*!40000 ALTER TABLE `qb_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_collection` ENABLE KEYS */;

-- 导出  表 cms.qb_comment 结构
CREATE TABLE IF NOT EXISTS `qb_comment` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ifcom` tinyint(1) NOT NULL DEFAULT '0',
  `agree` mediumint(5) NOT NULL DEFAULT '0',
  `disagree` mediumint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `aid` (`aid`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_comment 的数据：3 rows
DELETE FROM `qb_comment`;
/*!40000 ALTER TABLE `qb_comment` DISABLE KEYS */;
INSERT INTO `qb_comment` (`cid`, `aid`, `fid`, `authorid`, `uid`, `username`, `posttime`, `content`, `ip`, `icon`, `yz`, `ifcom`, `agree`, `disagree`) VALUES
	(1, 604, 39, 1, 1, 'admin', 1289286091, '好东西大家要一起分离的哦', '127.0.0.1', 1, 1, 0, 0, 0),
	(2, 566, 39, 1, 1, 'admin', 1289286118, '受教非浅.大家都要过来看看,不看会后悔的呀\\', '127.0.0.1', 1, 1, 0, 0, 0),
	(3, 567, 39, 1, 1, 'admin', 1289286144, '想要在电子商务方面成功,实战很重要!', '127.0.0.1', 1, 1, 0, 0, 0);
/*!40000 ALTER TABLE `qb_comment` ENABLE KEYS */;

-- 导出  表 cms.qb_config 结构
CREATE TABLE IF NOT EXISTS `qb_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_config 的数据：216 rows
DELETE FROM `qb_config`;
/*!40000 ALTER TABLE `qb_config` DISABLE KEYS */;
INSERT INTO `qb_config` (`c_key`, `c_value`, `c_descrip`) VALUES
	('yzImgComment', '0', ''),
	('flashtime', '0', ''),
	('showComment', '1', ''),
	('forbidComment', '0', ''),
	('showCommentRows', '8', ''),
	('viewNoPassGuestBook', '1', ''),
	('yzImgContribute', '0', ''),
	('groupPassContribute', '3', ''),
	('RegCompany', '0', ''),
	('MaxOnlineUser', '1000', ''),
	('groupPassShopYz', '3,4', ''),
	('groupPassPassGuestBook', '3', ''),
	('ifOpenGuestBook', '1', ''),
	('yzImgGuestBook', '1', ''),
	('ContributeFid', '2', ''),
	('groupPassLogYz', '3,4', ''),
	('forbidReg', '0', ''),
	('FtpPwd', 'admin', ''),
	('PostSortStep', '2', ''),
	('ListSonline', '2', ''),
	('_Notice', '29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=', ''),
	('CommentTime', '5', ''),
	('weburl', '/', ''),
	('MailType', 'smtp', ''),
	('yeepay_key', 've4ets3huzxruch0tsf6nga7a2lpckm8h9p7qnefj31q49ms8bhl3qin6q0g', ''),
	('allowMemberCommentPass', '1', ''),
	('AvoidGatherPre', '', ''),
	('AvoidCopy', '0', ''),
	('AvoidGather', '0', ''),
	('AvoidSave', '0', ''),
	('waterpos', '7', ''),
	('adminPostEditType', 'html', ''),
	('article_show_step', '0', ''),
	('ifContribute', '1', ''),
	('allowGuestSearch', '0', ''),
	('kill_badword', '0', ''),
	('ShowKeywordColor', '#F70968', ''),
	('ifShowKeyword', '1', ''),
	('UseFtp', '0', ''),
	('FtpDir', '111', ''),
	('FtpWeb', '', ''),
	('FtpName', 'admin', ''),
	('showsortlogo', '0', ''),
	('groupTime', '180', ''),
	('allowGuestCommentPass', '1', ''),
	('ShowMenu', '0', ''),
	('GuestBookNum', '8', ''),
	('ShopNormalSend', '8', ''),
	('ShopEmsSend', '25', ''),
	('groupUpType', '1', ''),
	('ListLeng', '70', ''),
	('waterimg', 'images/default/water.gif', ''),
	('PostNotice', '<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>', ''),
	('HideNopowerPost', '1', ''),
	('Listsortnameline', '2', ''),
	('allowGuestComment', '1', ''),
	('JsListRows', '5', ''),
	('JsListLeng', '36', ''),
	('ListSonRows', '9', ''),
	('ListSonLeng', '34', ''),
	('SideTitleStyle', 'side_tpl/2', ''),
	('propagandize_jumpto', '/', ''),
	('propagandize_LogDay', '5', ''),
	('propagandize_close', '0', ''),
	('propagandize_Money', '2', ''),
	('YZ_IdcardMoney', '20', ''),
	('EditYzEmail', '0', ''),
	('EditYzMob', '0', ''),
	('EditYzIdcard', '0', ''),
	('YZ_EmailMoney', '10', ''),
	('YZ_MobMoney', '15', ''),
	('MailServer', 'smtp.qq.com', ''),
	('sms_wi_id', '2', ''),
	('sms_wi_pwd', '3', ''),
	('sms_es_key', '2', ''),
	('sms_es_name', '1', ''),
	('sms_type', 'winic', ''),
	('SPlist_filename', 'html/4special{$fid}/list{$page}.htm', ''),
	('regmoney', '5', ''),
	('close_count', '0', ''),
	('Reg_Field', 'a:1:{s:8:\\"field_db\\";a:0:{}}', ''),
	('passport_TogetherLogin', '1', ''),
	('SideSortStyle', 'side_sort/2', ''),
	('yzImgReg', '1', ''),
	('cache_time_js', '-1', ''),
	('list_filename2', 'list.php?fid-{$fid}-page-{$page}.htm', ''),
	('bencandy_filename2', 'bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm', ''),
	('cache_time_com', '-1', ''),
	('heart_time', '30', ''),
	('ArticleHeart', '欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif', ''),
	('heart_noRecord', '1', ''),
	('UseArticleHeart', '1', ''),
	('UseArticleDigg', '0', ''),
	('forbidRegName', '', ''),
	('sortNUM', '27', ''),
	('FtpPort', '21', ''),
	('articleNUM', '78', ''),
	('cache_time_like', '-1', ''),
	('cache_time_new', '-1', ''),
	('is_waterimg', '1', ''),
	('passport_type', '', ''),
	('label_cache_time', '-1', ''),
	('RewriteUrl', '0', ''),
	('Del_MoreUpfile', '1', ''),
	('passport_pre', 'pw_', ''),
	('passport_path', 'bbs', ''),
	('cache_time_pic', '-1', ''),
	('list_cache_time', '0', ''),
	('bencandy_cache_time', '0', ''),
	('showsp_cache_time', '0', ''),
	('cache_time_hot', '-1', ''),
	('RegYz', '1', ''),
	('emailOnly', '1', ''),
	('alipay_key', '', ''),
	('yeepay_id', '10000821064', ''),
	('MoneyRatio', '100', ''),
	('Money2card', '0', ''),
	('index_cache_time', '0', ''),
	('waterAlpha', '80', ''),
	('if_gdimg', '1', ''),
	('reg_group', '8', ''),
	('DefaultIndexHtml', '0', ''),
	('AutoPassCompany', '1', ''),
	('forbidRegIp', '', ''),
	('ForceDel', '0', ''),
	('AutoTitleNum', '1', ''),
	('deleteArticleMoney', '-1', ''),
	('postArticleMoney', '1', ''),
	('comArticleMoney', '3', ''),
	('hotArticleNum', '100', ''),
	('newArticleTime', '24', ''),
	('ListShowIcon', '0', ''),
	('autoGetKeyword', '0', ''),
	('autoGetSmallPic', '1', ''),
	('autoCutSmallPic', '1', ''),
	('ForbidRepeatTitle', '1', ''),
	('viewNoPassArticle', '0', ''),
	('ArticlePicHeight', '600', ''),
	('ArticlePicWidth', '800', ''),
	('ArticleDownloadDirTime', '0', ''),
	('ArticleDownloadUseFtp', '0', ''),
	('SortUseOtherModule', '0', ''),
	('KeepTodayCount', '1', ''),
	('ShopOtherSend', '18', ''),
	('ForbidShowPhpPage', '0', ''),
	('MailPw', '', ''),
	('MailId', '@qq.com', ''),
	('tenpay_id', '1900000109', ''),
	('tenpay_key', '8934e7d15453e97507ef794cf7b0519d', ''),
	('alipay_id', 'test@test.com', ''),
	('guide_word', '首页|/|0||51\r\n新闻|list.php?fid=1|0||9\r\n图片|list.php?fid=9|0||10\r\n下载|list.php?fid=11|0||11\r\n影视|list.php?fid=13|0||12\r\n商城|list.php?fid=15|0||13', ''),
	('FtpHost', '127.0.0.1', ''),
	('updir', 'upload_files', ''),
	('mirror', 'http://down.qibosoft.com/other/testv6/upload_files/', ''),
	('forbid_show_bug', '1', ''),
	('cookieDomain', '', ''),
	('cookiePre', '', ''),
	('bokecc_id', '', ''),
	('miibeian_gov_cn', '京ICP备050453号', ''),
	('copyright', '', ''),
	('mymd5', '73917481', ''),
	('companyTrade', '机械及行业设备\r\n普通机械制造\r\n通用零部件\r\n五金配件\r\n金属工具\r\n电动工具\r\n电子元件\r\n电子器件\r\n照明及照明器具\r\n安全防护设备\r\n包装\r\n造纸及纸制品\r\n电机、电工电器\r\n电工器材\r\n通用仪器仪表\r\n专用仪器仪表\r\n交通运输设备、零部件\r\n办公、文教用品\r\n数码、电脑及网络配件\r\n日常家居用品\r\n木材、木制品\r\n家具\r\n家用电器\r\n礼品、工艺美术品\r\n食品、饮料\r\n通信产品\r\n玩具\r\n印刷设备\r\n运动、休闲、保健用品\r\n鞋、帽\r\n服装\r\n日用化学品\r\n农用化学品\r\n胶粘剂\r\n染料、颜料、涂料和油墨\r\n催化剂和助剂\r\n库存精细化学品\r\n食品和饲料添加剂\r\n塑料\r\n橡胶制品\r\n环保、环保设备\r\n建筑、建材\r\n能源\r\n粮油、农制品\r\n金属\r\n医药、保健及医疗设备\r\n纺织\r\n皮革\r\n煤焦化产品\r\n日常服务\r\n广告服务\r\n教育培训\r\n认证\r\n创意设计\r\n物流服务\r\n进出口代理\r\n维修及安装服务\r\n广告、展览器材\r\n专业录音、放音设备\r\n光学摄影器材\r\n编辑制作设备\r\n播出、前端设备\r\n建筑、装饰业\r\n房地产\r\n安装工程\r\n邮电通信\r\n事务所、公证\r\n卫生、体育、社会、福利\r\n公共服务业\r\n金融、保险\r\n实业公司、商业贸易\r\n高新技术开发区\r\n卡类市场', ''),
	('SPbencandy_filename', 'html/5special{$fid}/show{$id}.htm', ''),
	('limitRegTime', '', ''),
	('YzImg_difficult', '0', ''),
	('YzImg_string', '', ''),
	('YzImg_letter_differ', '0', ''),
	('upfileType', '.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf', ''),
	('upfileMaxSize', '', ''),
	('totalSpace', '100', ''),
	('time', '0', ''),
	('upgrade_Record', 'v7', ''),
	('NewsMakeHtml', '0', ''),
	('alipay_transport', 'https', ''),
	('alipay_service', 'create_partner_trade_by_buyer', ''),
	('alipay_partner', '', ''),
	('pay99_id', '', ''),
	('pay99_key', '', ''),
	('alipay_scale', '100', ''),
	('MakeIndexHtmlTime', '0', ''),
	('admin_url', 'admin', ''),
	('www_url', '/.', ''),
	('style_member', 'blue', ''),
	('list_filename', 'html/{$fid}/{$page}.htm', ''),
	('bencandy_filename', 'html/{$fid}-{$dirid}/{$id}-{$page}.htm', ''),
	('MailPort', '25', ''),
	('photoShowType', '0', ''),
	('allowDownMv', '0', ''),
	('autoPlayFirstMv', '1', ''),
	('EditSystem', '2', ''),
	('XunLei_ID', '08311', ''),
	('FlashGet_ID', '6370', ''),
	('ListPageTitle_nojs', '0', ''),
	('view_sell_article', '0', ''),
	('style', 'default', ''),
	('close_why', '网站维护当中,\r\n暂停访问.', ''),
	('passport_url', '', ''),
	('SPlist_filename2', 'listsp.php?fid-{$fid}-page-{$page}.htm', ''),
	('SPbencandy_filename2', 'showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm', ''),
	('web_open', '1', ''),
	('UserEmailAutoPass', '1', ''),
	('MoneyName', '积分', ''),
	('MoneyDW', '个', ''),
	('BuySpacesizeMoney', '50', ''),
	('UseMoneyType', 'cms', ''),
	('webmail', 'admin@admin.com', ''),
	('description', '提供火爆的新闻资讯', ''),
	('metakeywords', '新闻 时事 政治', ''),
	('webname', 'Bugku awd - 16', ''),
	('memberNotice', '欢迎大家踊跃投稿,投稿可得积分奖励!!', ''),
	('member_contact', '', ''),
	('AutoCutFace', '0', ''),
	('yzImgAdminLogin', '0', ''),
	('DownLoad_readfile', '1', ''),
	('path', '', ''),
	('hideFid', '', '');
/*!40000 ALTER TABLE `qb_config` ENABLE KEYS */;

-- 导出  表 cms.qb_copyfrom 结构
CREATE TABLE IF NOT EXISTS `qb_copyfrom` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keywords` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_copyfrom 的数据：2 rows
DELETE FROM `qb_copyfrom`;
/*!40000 ALTER TABLE `qb_copyfrom` DISABLE KEYS */;
INSERT INTO `qb_copyfrom` (`id`, `name`, `list`, `uid`) VALUES
	(1, '新浪网', 1, 0),
	(2, '搜狐网', 0, 0);
/*!40000 ALTER TABLE `qb_copyfrom` ENABLE KEYS */;

-- 导出  表 cms.qb_crontab 结构
CREATE TABLE IF NOT EXISTS `qb_crontab` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `minutetime` mediumint(4) NOT NULL DEFAULT '0',
  `daytime` varchar(4) NOT NULL DEFAULT '0',
  `whiletime` int(10) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ifstop` (`ifstop`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_crontab 的数据：7 rows
DELETE FROM `qb_crontab`;
/*!40000 ALTER TABLE `qb_crontab` DISABLE KEYS */;
INSERT INTO `qb_crontab` (`id`, `title`, `minutetime`, `daytime`, `whiletime`, `lasttime`, `filepath`, `about`, `ifstop`) VALUES
	(1, '主页静态', 3, '', 0, 1292402491, 'inc/crontab/make_index_html.php', '', 1),
	(2, '备份数据库', 0, '0300', 0, 1292489459, 'inc/crontab/mysqlbak.php', '', 1),
	(3, '清除CK编辑器多余的缩略图', 0, '0330', 0, 1292489510, 'inc/crontab/delete_ckeditor_tmp.php', '', 1),
	(4, '清空附件表', 0, '', 1296504125, 0, 'inc/crontab/delete_table_upfile.php', '', 1),
	(6, '定时发布文章', 15, '', 0, 0, 'inc/crontab/crontab_article.php', '解禁定时发布的文章,到时自动发布', 1),
	(7, '文章列表页静态', 0, '0300', 0, 1292492030, 'inc/crontab/list_html_crontab.php', '', 1),
	(8, '文章内容页静态', 0, '0330', 0, 1292492050, 'inc/crontab/bencandy_html_crontab.php', '', 1);
/*!40000 ALTER TABLE `qb_crontab` ENABLE KEYS */;

-- 导出  表 cms.qb_form_config 结构
CREATE TABLE IF NOT EXISTS `qb_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_config 的数据：4 rows
DELETE FROM `qb_form_config`;
/*!40000 ALTER TABLE `qb_form_config` DISABLE KEYS */;
INSERT INTO `qb_form_config` (`c_key`, `c_value`, `c_descrip`) VALUES
	('module_id', '21', ''),
	('module_pre', 'form_', ''),
	('Info_webOpen', '1', ''),
	('Info_webname', '万能表单', '');
/*!40000 ALTER TABLE `qb_form_config` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content 结构
CREATE TABLE IF NOT EXISTS `qb_form_content` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hits` (`hits`,`yz`),
  KEY `list` (`list`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content 的数据：12 rows
DELETE FROM `qb_form_content`;
/*!40000 ALTER TABLE `qb_form_content` DISABLE KEYS */;
INSERT INTO `qb_form_content` (`id`, `title`, `mid`, `hits`, `posttime`, `list`, `uid`, `username`, `titlecolor`, `yz`, `ip`) VALUES
	(22, '', 7, 0, 1237208241, '1237208241', 1, 'admin', '', 0, '192.168.0.99'),
	(26, '', 6, 7, 1237250809, '1237250809', 1, 'admin', '', 0, '192.168.0.99'),
	(27, '', 3, 1, 1237260673, '1237260673', 1, 'admin', '', 1, '192.168.0.99'),
	(30, '', 2, 7, 1237269830, '1237269830', 1, 'admin', '', 0, '192.168.0.99'),
	(29, '', 2, 2, 1237268864, '1237268864', 1, 'admin', '', 0, '192.168.0.99'),
	(25, '', 3, 2, 1237214289, '1237214289', 1, 'admin', '', 1, '192.168.0.99'),
	(24, '', 6, 3, 1237213169, '1237213169', 1, 'admin', '', 0, '192.168.0.99'),
	(31, '', 2, 6, 1239780761, '1239780761', 1, 'admin', '', 0, '192.168.0.99'),
	(18, '', 3, 0, 1236936110, '1236936110', 1, 'admin', '', 0, '192.168.0.99'),
	(19, '', 5, 0, 1236939584, '1236939584', 1, 'admin', '', 0, '192.168.0.99'),
	(20, '', 6, 0, 1237174883, '1237174883', 1, 'admin', '', 0, '192.168.0.99'),
	(23, '', 7, 0, 1237208253, '1237208253', 1, 'admin', '', 0, '192.168.0.99');
/*!40000 ALTER TABLE `qb_form_content` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_1 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_1` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `interest` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `sortname` varchar(40) NOT NULL DEFAULT '',
  `webtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_1 的数据：0 rows
DELETE FROM `qb_form_content_1`;
/*!40000 ALTER TABLE `qb_form_content_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_form_content_1` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_2 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_2` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `workplace` varchar(100) NOT NULL DEFAULT '',
  `nums` varchar(10) NOT NULL DEFAULT '',
  `jobrequire` mediumtext NOT NULL,
  `workwhere` varchar(50) NOT NULL DEFAULT '',
  `wage` varchar(30) NOT NULL DEFAULT '',
  `asksex` int(1) NOT NULL DEFAULT '0',
  `schoo_age` varchar(20) NOT NULL DEFAULT '',
  `wageyear` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_2 的数据：3 rows
DELETE FROM `qb_form_content_2`;
/*!40000 ALTER TABLE `qb_form_content_2` DISABLE KEYS */;
INSERT INTO `qb_form_content_2` (`id`, `uid`, `workplace`, `nums`, `jobrequire`, `workwhere`, `wage`, `asksex`, `schoo_age`, `wageyear`) VALUES
	(29, 1, 'JAVA程序员', '5', '独立开发程序', '深圳', '800元/月', 2, '高中', '两年以上'),
	(30, 1, '市场总监', '2', '负责产品的销售.', '广州', '8000元/月', 0, '本科', '三年以上'),
	(31, 1, '销售经理', '8', '负责我公司的产品销售.', '广州市', '3000', 0, '大专', '一年以上');
/*!40000 ALTER TABLE `qb_form_content_2` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_3 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_3` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `advicetype` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_3 的数据：3 rows
DELETE FROM `qb_form_content_3`;
/*!40000 ALTER TABLE `qb_form_content_3` DISABLE KEYS */;
INSERT INTO `qb_form_content_3` (`id`, `uid`, `advicetype`, `content`, `truename`, `email`, `mobphone`) VALUES
	(18, 1, '售后客服', '', '222223', '65223@qq.com', '133444444443'),
	(25, 1, '售后客服', 'hhhhhhhhhhhhhhhhhh', '222223', '65223@qq.com', '13377777777'),
	(27, 1, '售后客服', '192.168.0.99/55 all righ\nts reserved \n京ICP备05047353号 \nPowered by PHP168', '222223', '65223@qq.com', '13377777777');
/*!40000 ALTER TABLE `qb_form_content_3` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_4 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_4` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(2) NOT NULL DEFAULT '0',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  `metier` varchar(30) NOT NULL DEFAULT '',
  `my_song` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_4 的数据：0 rows
DELETE FROM `qb_form_content_4`;
/*!40000 ALTER TABLE `qb_form_content_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_form_content_4` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_5 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_5` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `bday` varchar(25) NOT NULL DEFAULT '',
  `school_age` varchar(20) NOT NULL DEFAULT '',
  `native` varchar(30) NOT NULL DEFAULT '',
  `specialty` varchar(40) NOT NULL DEFAULT '',
  `skill` varchar(50) NOT NULL DEFAULT '',
  `sport` varchar(80) NOT NULL DEFAULT '',
  `height` int(3) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(18) NOT NULL DEFAULT '',
  `cp_title` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_5 的数据：1 rows
DELETE FROM `qb_form_content_5`;
/*!40000 ALTER TABLE `qb_form_content_5` DISABLE KEYS */;
INSERT INTO `qb_form_content_5` (`id`, `uid`, `content`, `bday`, `school_age`, `native`, `specialty`, `skill`, `sport`, `height`, `truename`, `oicq`, `email`, `mobphone`, `address`, `telephone`, `idcard`, `cp_title`) VALUES
	(19, 1, '555555555555555', '0000-00-00', '大专', '三项式', '', '', '', 0, '222223', '444444', '65223@qq.com', '13355555555', '3', '一直在fgsgfd3', '44444444444444443', '');
/*!40000 ALTER TABLE `qb_form_content_5` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_6 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_6` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `workposition` varchar(50) NOT NULL DEFAULT '',
  `experience` mediumtext NOT NULL,
  `workyear` int(2) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `schoo_age` varchar(15) NOT NULL DEFAULT '',
  `myage` int(2) NOT NULL DEFAULT '0',
  `graduateschool` varchar(40) NOT NULL DEFAULT '',
  `specialty` varchar(50) NOT NULL DEFAULT '',
  `skill` varchar(50) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `wage` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `worktime` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_6 的数据：3 rows
DELETE FROM `qb_form_content_6`;
/*!40000 ALTER TABLE `qb_form_content_6` DISABLE KEYS */;
INSERT INTO `qb_form_content_6` (`id`, `uid`, `workposition`, `experience`, `workyear`, `truename`, `schoo_age`, `myage`, `graduateschool`, `specialty`, `skill`, `sex`, `telephone`, `wage`, `address`, `email`, `oicq`, `worktime`) VALUES
	(20, 1, '程序员', '55555555555\nkkkkkkkkkkkkkkkkkkkkkk', 5, '222223', '高中', 56, '', '', '', 2, '6767', '面议', '3', '65223@qq.com', '444444', ''),
	(24, 1, 'C语言工程师', '4444444444444', 4, '222223', '大专', 4, '', '', '', 2, '090-89766543', '面议', '3', '65223@qq.com', '444444', '1周内'),
	(26, 1, 'C语言工程师', 'rrrrrrrrrrrrrrrrrrrrrrrrrrr', 4, '222223', '大专', 4, '', '', '', 1, '090-89766543', '1000元-2000元', '3', '65223@qq.com', '444444', '1周内');
/*!40000 ALTER TABLE `qb_form_content_6` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_7 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_7` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `product` varchar(50) NOT NULL DEFAULT '',
  `paymoney` varchar(15) NOT NULL DEFAULT '',
  `paytime` varchar(15) NOT NULL DEFAULT '',
  `paytype` varchar(25) NOT NULL DEFAULT '',
  `sendbank` varchar(30) NOT NULL DEFAULT '',
  `receivebank` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_7 的数据：10 rows
DELETE FROM `qb_form_content_7`;
/*!40000 ALTER TABLE `qb_form_content_7` DISABLE KEYS */;
INSERT INTO `qb_form_content_7` (`id`, `uid`, `product`, `paymoney`, `paytime`, `paytype`, `sendbank`, `receivebank`, `truename`, `oicq`, `telephone`, `mobphone`, `address`) VALUES
	(6, 1, '整站系统(文章+核心)', '6655', '', '网上转帐', '', '', '222223', '444444', '3333333', '13333333333', '3trewtre'),
	(7, 1, '整站系统(文章+核心)', '23', '2009-03-03', '在线支付', 'fff', 'eee', '222223', '444444', '333', '13344444444', '3'),
	(8, 1, '整站系统(文章+核心)', '5', '', '在线支付', '', '', '222223', '444444', '一直在fgsgfd3', '13355555555', '3'),
	(9, 1, '整站系统(文章+核心)', '0.01', '2009-03-13', '在线支付', 'e', 's', '222223', '444444', '一直在fgsgfd3', '13355555555', '3'),
	(10, 1, '整站系统(文章+核心)', '1', '2009-03-13', '在线支付', 'e', 's', '222223', '444444', '一直在fgsgfd3', '13355555555', '3'),
	(11, 1, '整站系统(文章+核心)', '0.01', '2009-03-13', 'olpay', 'e', 's', '222223', '444444', '一直在fgsgfd3', '13355555555', '3'),
	(12, 1, '整站系统(文章+核心)/分类信息系统/商城系统', '54', '2009-03-03', '网上转帐', 't', 't', '222223', '444444', '一直在fgsgfd3', '13355555555', '3'),
	(13, 1, '1/2/商城系统', '4', '', 'olpay', '', '', '222223', '444444', '一直在fgsgfd3', '13344444444', '3'),
	(22, 1, '1', '78', '', 'olpay', '', '', '222223', '444444', '一直在fgsgfd3', '13377777777', '3'),
	(23, 1, '1', '78', '', '网上转帐', '', '', '222223', '444444', '一直在fgsgfd3', '13377777777', '3');
/*!40000 ALTER TABLE `qb_form_content_7` ENABLE KEYS */;

-- 导出  表 cms.qb_form_content_8 结构
CREATE TABLE IF NOT EXISTS `qb_form_content_8` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `roomtype` varchar(30) NOT NULL DEFAULT '',
  `roomnum` int(3) NOT NULL DEFAULT '0',
  `numday` int(3) NOT NULL DEFAULT '0',
  `intotime` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_content_8 的数据：0 rows
DELETE FROM `qb_form_content_8`;
/*!40000 ALTER TABLE `qb_form_content_8` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_form_content_8` ENABLE KEYS */;

-- 导出  表 cms.qb_form_module 结构
CREATE TABLE IF NOT EXISTS `qb_form_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `about` text NOT NULL,
  `usetitle` tinyint(1) NOT NULL DEFAULT '0',
  `repeatpost` tinyint(1) NOT NULL DEFAULT '0',
  `statename` varchar(30) NOT NULL DEFAULT '',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_module 的数据：8 rows
DELETE FROM `qb_form_module`;
/*!40000 ALTER TABLE `qb_form_module` DISABLE KEYS */;
INSERT INTO `qb_form_module` (`id`, `name`, `list`, `style`, `config`, `allowpost`, `endtime`, `about`, `usetitle`, `repeatpost`, `statename`, `allowview`) VALUES
	(1, '版主申请', 0, '', 'a:3:{s:8:"field_db";a:8:{s:8:"sortname";a:14:{s:5:"title";s:18:"申请哪个栏目的版主";s:10:"field_name";s:8:"sortname";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:40;s:9:"form_type";s:8:"checkbox";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:38:"新闻频道\r\n下载频道\r\n图片频道\r\n视频频道";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:9:"orderlist";s:2:"11";s:9:"allowview";N;}s:7:"webtime";a:15:{s:5:"title";s:16:"每天上网几个小时";s:10:"field_name";s:7:"webtime";s:10:"field_type";s:3:"int";s:10:"field_leng";i:10;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"4";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:4:"小时";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"10";s:9:"allowview";N;}s:8:"truename";a:15:{s:5:"title";s:8:"真实姓名";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"7";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"9";s:9:"allowview";N;}s:3:"sex";a:15:{s:5:"title";s:4:"性别";s:10:"field_name";s:3:"sex";s:10:"field_type";s:3:"int";s:10:"field_leng";i:1;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:18:"1|男\r\n2|女\r\n0|保密";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"8";s:9:"allowview";N;}s:4:"oicq";a:15:{s:5:"title";s:6:"联系QQ";s:10:"field_name";s:4:"oicq";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:10;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:8:"mobphone";a:14:{s:5:"title";s:8:"手机号码";s:10:"field_name";s:8:"mobphone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:11;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"11";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}s:8:"interest";a:14:{s:5:"title";s:8:"兴趣爱好";s:10:"field_name";s:8:"interest";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:8:"textarea";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:5;s:9:"allowview";N;}s:9:"introduce";a:14:{s:5:"title";s:8:"自我介绍";s:10:"field_name";s:9:"introduce";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:8:"textarea";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:4;s:9:"allowview";N;}}s:7:"is_html";a:1:{s:7:"content";s:4:"内容";}s:11:"listshow_db";a:2:{s:8:"truename";s:8:"真实姓名";s:3:"sex";s:4:"性别";}}', '3,4,8,9', 0, '<p><strong>如果你有激情,有梦想,就来申请做我们的版主吧!</strong></p>', 0, 0, '审批', ''),
	(2, '招聘表单', 0, '', 'a:3:{s:8:"field_db";a:8:{s:9:"workplace";a:15:{s:5:"title";s:8:"职位名称";s:10:"field_name";s:9:"workplace";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:100;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"30";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"10";s:9:"allowview";N;}s:4:"nums";a:15:{s:5:"title";s:8:"招聘人数";s:10:"field_name";s:4:"nums";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:10;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"4";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"人";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"9";s:9:"allowview";N;}s:10:"jobrequire";a:15:{s:5:"title";s:14:"职位描述及要求";s:10:"field_name";s:10:"jobrequire";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:8:"textarea";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:8;s:9:"allowview";N;}s:8:"wageyear";a:15:{s:5:"title";s:12:"工作经验要求";s:10:"field_name";s:8:"wageyear";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:12;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:40:"应届毕业生\r\n一年以上\r\n两年以上\r\n三年以上";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:9:"workwhere";a:15:{s:5:"title";s:8:"工作地点";s:10:"field_name";s:9:"workwhere";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}s:4:"wage";a:15:{s:5:"title";s:8:"薪水待遇";s:10:"field_name";s:4:"wage";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:5;s:9:"allowview";N;}s:6:"asksex";a:15:{s:5:"title";s:8:"性别要求";s:10:"field_name";s:6:"asksex";s:10:"field_type";s:3:"int";s:10:"field_leng";i:1;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:1:"1";s:8:"form_set";s:18:"1|男\r\n2|女\r\n0|不限";s:10:"form_value";s:1:"0";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"4";s:9:"allowview";N;}s:9:"schoo_age";a:15:{s:5:"title";s:8:"学历要求";s:10:"field_name";s:9:"schoo_age";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:46:"小学\r\n中学\r\n中专\r\n高中\r\n大专\r\n本科\r\n硕士\r\n博士";s:10:"form_value";s:0:"";s:10:"form_units";s:4:"以上";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"3";s:9:"allowview";N;}}s:7:"is_html";a:1:{s:7:"content";s:4:"内容";}s:11:"listshow_db";a:5:{s:8:"wageyear";s:12:"工作经验要求";s:9:"workplace";s:8:"职位名称";s:4:"nums";s:8:"招聘人数";s:6:"asksex";s:8:"性别要求";s:9:"schoo_age";s:8:"学历要求";}}', '', 0, '', 0, 1, '审核', ''),
	(3, '投诉建议', 0, '', 'a:3:{s:8:"field_db";a:5:{s:10:"advicetype";a:15:{s:5:"title";s:8:"投诉类型";s:10:"field_name";s:10:"advicetype";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:34:"售前客服\r\n售后客服\r\n产品质量\r\n其它";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"10";s:9:"allowview";N;}s:8:"mobphone";a:15:{s:5:"title";s:8:"你的电话";s:10:"field_name";s:8:"mobphone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:25;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"8";s:9:"allowview";N;}s:5:"email";a:14:{s:5:"title";s:8:"你的邮箱";s:10:"field_name";s:5:"email";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:7:"content";a:15:{s:5:"title";s:8:"投诉内容";s:10:"field_name";s:7:"content";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:8:"textarea";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"6";s:9:"allowview";N;}s:8:"truename";a:15:{s:5:"title";s:8:"你的称呼";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:1:"8";s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:11:"listshow_db";a:2:{s:10:"advicetype";s:8:"投诉类型";s:8:"truename";s:8:"你的称呼";}}', '', 0, '', 0, 1, '处理', '3,4'),
	(4, '活动报名表', 0, '', 'a:3:{s:8:"field_db";a:6:{s:8:"truename";a:15:{s:5:"title";s:4:"姓名";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:10;s:9:"allowview";N;}s:3:"sex";a:14:{s:5:"title";s:4:"性别";s:10:"field_name";s:3:"sex";s:10:"field_type";s:3:"int";s:10:"field_leng";i:1;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:18:"1|男\r\n2|女\r\n0|保密";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:9;s:9:"allowview";N;}s:3:"age";a:15:{s:5:"title";s:4:"年龄";s:10:"field_name";s:3:"age";s:10:"field_type";s:3:"int";s:10:"field_leng";i:2;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"2";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"岁";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:8;s:9:"allowview";N;}s:8:"mobphone";a:14:{s:5:"title";s:8:"联系电话";s:10:"field_name";s:8:"mobphone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:25;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"12";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:7:"my_song";a:15:{s:5:"title";s:8:"参赛歌曲";s:10:"field_name";s:7:"my_song";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"30";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}s:6:"metier";a:15:{s:5:"title";s:4:"职业";s:10:"field_name";s:6:"metier";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:32:"程序员\r\n销售\r\n文员\r\n工程师\r\n其它";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:5;s:9:"allowview";N;}}s:7:"is_html";a:2:{s:7:"content";s:4:"内容";s:5:"my_88";s:13:"我的字段my_88";}s:11:"listshow_db";a:4:{s:8:"truename";s:4:"姓名";s:3:"age";s:4:"年龄";s:6:"metier";s:4:"职业";s:7:"my_song";s:8:"参赛歌曲";}}', '', 0, '<p>&nbsp;&nbsp; 为感谢广大会员对本网站的支持，特地举行第一届歌唱比赛，欢迎大家踊跃报名参加。具体事宜如下：</p>\r\n<p><strong>报名时间：</strong>从即日起——9月4号晚上8：00截止</p>\r\n<p><strong>节目时间：</strong>9月5号（星期一）晚上8：30——11：00</p>\r\n<p><strong>报名要求：</strong>须是注册会员，有语音设备能在聊天室说话。在比赛当天须用论坛注册名字登陆聊天室.</p>\r\n<p><strong>参赛曲目：</strong>自选。可清唱 可带音乐演唱</p>\r\n<p><strong>评委：</strong>人称鸡顺（召集评委两名，限有道者 有智者 智者 仁者 尊者或以上级别会员）</p>\r\n<p><strong>评选方式：</strong>在比赛结束后，由所有会员在此贴中投票，每人限投2票，投票时间限6天，既从9月5日11：01——9月11日晚8：00止。最后由评委统计票数后，评选出票数最多的前三名。</p>\r\n<p><strong>奖励：</strong>对于获得前三名的歌手，将给予不同程度的魅力和积分奖励。</p>\r\n<p>至于报名人数方面暂时不做要求，将根据大家报名顺序，和聊天室时间，为大家排演唱顺序，将于9月4日晚上10：00以前在该贴公布和发短信通知的形式参加此次比赛的选手名单，和演唱顺序。</p>\r\n<p><strong>主持：</strong>玉箫 嘉宾</p>', 0, 1, '审核', ''),
	(5, '员工资料登记表', 0, '', 'a:3:{s:8:"field_db";a:16:{s:8:"cp_title";a:15:{s:5:"title";s:8:"公司职位";s:10:"field_name";s:8:"cp_title";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:20;s:9:"allowview";N;}s:8:"truename";a:15:{s:5:"title";s:4:"姓名";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:19;s:9:"allowview";N;}s:4:"bday";a:14:{s:5:"title";s:8:"出生日期";s:10:"field_name";s:4:"bday";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:25;s:9:"form_type";s:4:"time";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:18;s:9:"allowview";N;}s:6:"height";a:15:{s:5:"title";s:4:"身高";s:10:"field_name";s:6:"height";s:10:"field_type";s:3:"int";s:10:"field_leng";i:3;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"3";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"CM";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:17;s:9:"allowview";N;}s:6:"native";a:15:{s:5:"title";s:4:"籍贯";s:10:"field_name";s:6:"native";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:16;s:9:"allowview";N;}s:10:"school_age";a:14:{s:5:"title";s:4:"学历";s:10:"field_name";s:10:"school_age";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:45:"初中\r\n中专\r\n高中\r\n大专\r\n本科\r\n硕士\r\n博士\r\nMBA";s:10:"form_value";s:4:"大专";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:15;s:9:"allowview";N;}s:9:"specialty";a:15:{s:5:"title";s:4:"专业";s:10:"field_name";s:9:"specialty";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:40;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:14;s:9:"allowview";N;}s:4:"oicq";a:15:{s:5:"title";s:6:"QQ号码";s:10:"field_name";s:4:"oicq";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:10;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:13;s:9:"allowview";N;}s:5:"email";a:15:{s:5:"title";s:4:"邮箱";s:10:"field_name";s:5:"email";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:12;s:9:"allowview";N;}s:8:"mobphone";a:15:{s:5:"title";s:8:"手机号码";s:10:"field_name";s:8:"mobphone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:11;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"11";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:11;s:9:"allowview";N;}s:5:"skill";a:15:{s:5:"title";s:4:"特长";s:10:"field_name";s:5:"skill";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:10;s:9:"allowview";N;}s:6:"idcard";a:15:{s:5:"title";s:10:"身份证号码";s:10:"field_name";s:6:"idcard";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:18;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"18";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:9;s:9:"allowview";N;}s:5:"sport";a:15:{s:5:"title";s:8:"体育爱好";s:10:"field_name";s:5:"sport";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:80;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:8;s:9:"allowview";N;}s:9:"telephone";a:15:{s:5:"title";s:8:"家庭电话";s:10:"field_name";s:9:"telephone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"12";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:7:"address";a:15:{s:5:"title";s:8:"家庭地址";s:10:"field_name";s:7:"address";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:150;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"30";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}s:7:"content";a:15:{s:5:"title";s:8:"自我评价";s:10:"field_name";s:7:"content";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:0;s:9:"form_type";s:8:"textarea";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:5;s:9:"allowview";N;}}s:7:"is_html";a:0:{}s:11:"listshow_db";a:2:{s:6:"native";s:4:"籍贯";s:8:"truename";s:4:"姓名";}}', '', 0, '', 0, 0, '审核', ''),
	(6, '求职表单', 0, '', 'a:3:{s:8:"field_db";a:16:{s:12:"workposition";a:15:{s:5:"title";s:8:"求职岗位";s:10:"field_name";s:12:"workposition";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"30";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"21";s:9:"allowview";N;}s:8:"truename";a:15:{s:5:"title";s:4:"姓名";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:20;s:9:"allowview";N;}s:3:"sex";a:15:{s:5:"title";s:4:"性别";s:10:"field_name";s:3:"sex";s:10:"field_type";s:3:"int";s:10:"field_leng";i:1;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:18:"1|男\r\n2|女\r\n0|保密";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:19;s:9:"allowview";N;}s:5:"myage";a:15:{s:5:"title";s:4:"年龄";s:10:"field_name";s:5:"myage";s:10:"field_type";s:3:"int";s:10:"field_leng";i:2;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"2";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"岁";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:18;s:9:"allowview";N;}s:9:"schoo_age";a:15:{s:5:"title";s:4:"学历";s:10:"field_name";s:9:"schoo_age";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:45:"初中\r\n中专\r\n高中\r\n大专\r\n本科\r\n硕士\r\n博士\r\nMBA";s:10:"form_value";s:4:"大专";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:17;s:9:"allowview";N;}s:14:"graduateschool";a:15:{s:5:"title";s:8:"毕业学校";s:10:"field_name";s:14:"graduateschool";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:40;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:16;s:9:"allowview";N;}s:9:"specialty";a:15:{s:5:"title";s:4:"专业";s:10:"field_name";s:9:"specialty";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:15;s:9:"allowview";N;}s:5:"skill";a:15:{s:5:"title";s:4:"特长";s:10:"field_name";s:5:"skill";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:14;s:9:"allowview";N;}s:8:"workyear";a:15:{s:5:"title";s:8:"工作年限";s:10:"field_name";s:8:"workyear";s:10:"field_type";s:3:"int";s:10:"field_leng";i:2;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"2";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"年";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:13;s:9:"allowview";N;}s:10:"experience";a:15:{s:5:"title";s:8:"工作经验";s:10:"field_name";s:10:"experience";s:10:"field_type";s:10:"mediumtext";s:10:"field_leng";i:2;s:9:"form_type";s:8:"textarea";s:15:"field_inputleng";s:1:"2";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:12;s:9:"allowview";N;}s:4:"wage";a:15:{s:5:"title";s:8:"期望月薪";s:10:"field_name";s:4:"wage";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:6:"select";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:73:"面议\r\n1000元以下\r\n1000元-2000元\r\n2000元-3000元\r\n3000元-4000元\r\n4000元以上";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:11;s:9:"allowview";N;}s:7:"address";a:15:{s:5:"title";s:10:"当前居住地";s:10:"field_name";s:7:"address";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:255;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"70";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:10;s:9:"allowview";N;}s:9:"telephone";a:15:{s:5:"title";s:8:"联系电话";s:10:"field_name";s:9:"telephone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:25;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:9;s:9:"allowview";N;}s:5:"email";a:15:{s:5:"title";s:8:"联系邮箱";s:10:"field_name";s:5:"email";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:8;s:9:"allowview";N;}s:4:"oicq";a:15:{s:5:"title";s:6:"QQ号码";s:10:"field_name";s:4:"oicq";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:11;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"9";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:8:"worktime";a:15:{s:5:"title";s:8:"到岗日期";s:10:"field_name";s:8:"worktime";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:34:"随时\r\n1周内\r\n2周内\r\n3周内\r\n1个月内";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}}s:7:"is_html";a:1:{s:7:"content";s:4:"内容";}s:11:"listshow_db";a:7:{s:6:"my_537";s:8:"工作经验";s:6:"my_425";s:8:"工作年限";s:8:"truename";s:4:"姓名";s:5:"myage";s:4:"年龄";s:8:"workyear";s:8:"工作年限";s:3:"sex";s:4:"性别";s:12:"workposition";s:8:"求职岗位";}}', '', 0, '', 0, 1, '录用', ''),
	(7, '产品订单', 0, '', 'a:3:{s:8:"field_db";a:11:{s:7:"product";a:15:{s:5:"title";s:8:"产品名称";s:10:"field_name";s:7:"product";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:50;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"40";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"30";s:9:"allowview";N;}s:7:"paytype";a:15:{s:5:"title";s:8:"付款方式";s:10:"field_name";s:7:"paytype";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:25;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:70:"olpay|在线支付\r\n网上转帐\r\nATM机/银行柜台转帐汇款\r\n货到付款\r\n其它方式\r\n";s:10:"form_value";s:5:"olpay";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"29";s:9:"allowview";N;}s:7:"paytime";a:14:{s:5:"title";s:8:"付款日期";s:10:"field_name";s:7:"paytime";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"time";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:28;s:9:"allowview";N;}s:11:"receivebank";a:14:{s:5:"title";s:12:"款项转入银行";s:10:"field_name";s:11:"receivebank";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:27;s:9:"allowview";N;}s:8:"sendbank";a:14:{s:5:"title";s:12:"款项转出银行";s:10:"field_name";s:8:"sendbank";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"20";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:26;s:9:"allowview";N;}s:8:"paymoney";a:15:{s:5:"title";s:8:"支付金额";s:10:"field_name";s:8:"paymoney";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"元";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"25";s:9:"allowview";N;}s:8:"truename";a:15:{s:5:"title";s:10:"联系人姓名";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:15;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"10";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"24";s:9:"allowview";N;}s:4:"oicq";a:14:{s:5:"title";s:8:"联系人QQ";s:10:"field_name";s:4:"oicq";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:11;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"11";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"23";s:9:"allowview";N;}s:9:"telephone";a:14:{s:5:"title";s:10:"联系人电话";s:10:"field_name";s:9:"telephone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"15";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"22";s:9:"allowview";N;}s:8:"mobphone";a:14:{s:5:"title";s:10:"联系人手机";s:10:"field_name";s:8:"mobphone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:11;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"11";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:21;s:9:"allowview";N;}s:7:"address";a:14:{s:5:"title";s:10:"联系人地址";s:10:"field_name";s:7:"address";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:150;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"60";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";s:2:"20";s:9:"allowview";N;}}s:7:"is_html";a:1:{s:7:"content";s:4:"内容";}s:11:"listshow_db";a:3:{s:7:"paytype";s:8:"付款方式";s:8:"truename";s:10:"联系人姓名";s:8:"paymoney";s:8:"支付金额";}}', '', 0, '', 0, 1, '付款', ''),
	(8, '酒店房间预定', 0, '', 'a:3:{s:8:"field_db";a:6:{s:8:"roomtype";a:15:{s:5:"title";s:12:"预订房间类型";s:10:"field_name";s:8:"roomtype";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:5:"radio";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:44:"标准双人房\r\n标准单人房\r\n豪华单人房\r\n总统套房";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:10;s:9:"allowview";N;}s:7:"roomnum";a:15:{s:5:"title";s:8:"预定间数";s:10:"field_name";s:7:"roomnum";s:10:"field_type";s:3:"int";s:10:"field_leng";i:3;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"2";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"间";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:9;s:9:"allowview";N;}s:6:"numday";a:15:{s:5:"title";s:8:"入住几晚";s:10:"field_name";s:6:"numday";s:10:"field_type";s:3:"int";s:10:"field_leng";i:3;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:1:"2";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:2:"晚";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"0";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:8;s:9:"allowview";N;}s:8:"intotime";a:15:{s:5:"title";s:8:"入住时间";s:10:"field_name";s:8:"intotime";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"time";s:15:"field_inputleng";s:0:"";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:7;s:9:"allowview";N;}s:8:"truename";a:15:{s:5:"title";s:8:"顾客姓名";s:10:"field_name";s:8:"truename";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:30;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"12";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"1";s:6:"search";s:1:"0";s:9:"orderlist";i:6;s:9:"allowview";N;}s:9:"telephone";a:15:{s:5:"title";s:8:"联系电话";s:10:"field_name";s:9:"telephone";s:10:"field_type";s:7:"varchar";s:10:"field_leng";i:20;s:9:"form_type";s:4:"text";s:15:"field_inputleng";s:2:"12";s:8:"form_set";s:0:"";s:10:"form_value";s:0:"";s:10:"form_units";s:0:"";s:10:"form_title";s:0:"";s:8:"mustfill";s:1:"1";s:8:"listshow";s:1:"0";s:6:"search";s:1:"0";s:9:"orderlist";i:5;s:9:"allowview";N;}}s:7:"is_html";a:1:{s:7:"content";s:4:"内容";}s:11:"listshow_db";a:3:{s:8:"roomtype";s:12:"预订房间类型";s:7:"roomnum";s:8:"预定间数";s:8:"truename";s:8:"顾客姓名";}}', '', 0, '', 0, 1, '审核', '');
/*!40000 ALTER TABLE `qb_form_module` ENABLE KEYS */;

-- 导出  表 cms.qb_form_reply 结构
CREATE TABLE IF NOT EXISTS `qb_form_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_form_reply 的数据：2 rows
DELETE FROM `qb_form_reply`;
/*!40000 ALTER TABLE `qb_form_reply` DISABLE KEYS */;
INSERT INTO `qb_form_reply` (`rid`, `id`, `mid`, `posttime`, `uid`, `username`, `content`, `ip`) VALUES
	(6, 25, 3, 1237255555, 1, 'admin', '<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width="100%" color=#98fb98 SIZE=1 />\r\n</strong>', '192.168.0.99'),
	(10, 27, 3, 1239591974, 1, 'admin', 'ffffffffffff ', '192.168.0.99');
/*!40000 ALTER TABLE `qb_form_reply` ENABLE KEYS */;

-- 导出  表 cms.qb_friendlink 结构
CREATE TABLE IF NOT EXISTS `qb_friendlink` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` int(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `iswordlink` tinyint(1) DEFAULT NULL,
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_friendlink 的数据：25 rows
DELETE FROM `qb_friendlink`;
/*!40000 ALTER TABLE `qb_friendlink` DISABLE KEYS */;
INSERT INTO `qb_friendlink` (`id`, `fid`, `name`, `url`, `logo`, `descrip`, `list`, `ifhide`, `iswordlink`, `hits`, `posttime`, `uid`, `username`, `yz`, `endtime`) VALUES
	(12, 0, 'PHPWIND官方论坛', 'http://www.phpwind.net/', 'http://www.phpwind.net/logo.gif', 'PHPWIND官方论坛', 32, 0, 0, 0, 0, 0, '', 1, 0),
	(5, 0, '齐博CMS', 'http://www.qibosoft.com', '../images/default/friendlink.gif', '国内著名的CMS建站系统提供商', 40, 0, 0, 0, 0, 0, '', 1, 0),
	(13, 3, '中国站长站', 'http://www.chinazhan.net/', '', '中国站长站', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(16, 2, '群英网络', 'http://www.qy.com.cn/', '', '', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(17, 3, '动网论坛', 'http://www.dvbbs.net/', '', '动网论坛', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(18, 3, 'web开发网', 'http://www.cncms.com.cn/', '', '', 25, 1, 0, 0, 0, 0, '', 1, 0),
	(19, 2, '中国站长导航', 'http://www.hao168.cc/', '', '', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(21, 2, '易宝支付', 'http://www.yeepay.com/', 'friendlink/1_20090418160410_UxB8E.gif', '易宝支付', 39, 0, 0, 0, 0, 0, '', 1, 0),
	(22, 2, '39健康网', 'http://www.39.net/', 'friendlink/1_20090418160438_KDWX7.jpg', '39健康网', 31, 0, 0, 0, 0, 0, '', 1, 0),
	(23, 2, '门户通', 'http://menhutong.com.cn/', 'friendlink/1_20090418160412_bm7cQ.gif', '门户通', 36, 0, 0, 0, 0, 0, '', 1, 0),
	(24, 2, '迅雷', 'http://xunlei.com/', 'friendlink/1_20090418160406_9UoK8.jpg', '迅雷', 33, 0, 0, 0, 0, 0, '', 1, 0),
	(25, 2, '站长网', 'http://admin5.com/', 'friendlink/1_20090418160400_wqpAk.gif', '站长网', 37, 0, 0, 0, 0, 0, '', 1, 0),
	(26, 2, '中国站长站', 'http://www.chinaz.com/', 'friendlink/1_20090418160432_JNCry.gif', '中国站长站', 38, 0, 0, 0, 0, 0, '', 1, 0),
	(27, 2, 'WEB开发网', 'http://www.cncms.com.cn/', 'friendlink/1_20090418160451_64IKO.gif', 'WEB开发网', 34, 0, 0, 0, 0, 0, '', 1, 0),
	(28, 3, '网页教学网', 'http://www.webjx.com/', '', '网页教学网', 27, 0, 0, 0, 0, 0, '', 1, 0),
	(36, 3, '召唤悍妞', 'http://www.fengwu.net/', '', '召唤悍妞', 30, 0, 0, 0, 0, 0, '', 1, 0),
	(29, 2, '中电华通', 'http://www.chinaccnet.com/', '', '中电华通', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(30, 2, '磐石网络', 'http://371.com/', '', '磐石网络', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(31, 3, '1166导航', 'http://www.1166.com/', '', '1166导航', 29, 0, 0, 0, 0, 0, '', 1, 0),
	(32, 2, '快车下载', 'http://union.flashget.com/', '', '快车下载', 0, 0, 0, 0, 0, 0, '', 1, 0),
	(33, 3, '中国建站', 'http://www.jz123.cn/', '', '中国建站', 27, 0, 0, 0, 0, 0, '', 1, 0),
	(34, 3, 'CNZZ', 'http://www.cnzz.cn/', '', 'CNZZ', 26, 0, 0, 0, 0, 0, '', 1, 0),
	(35, 2, 'CEO导航', 'http://www.ceodh.com/', 'friendlink/1_20090418180404_7nYuN.jpg', 'CEO导航', 39, 0, 0, 0, 0, 0, '', 1, 0),
	(37, 2, '财付通', 'http://union.tenpay.com/', '', '财付通', 28, 0, 0, 0, 0, 0, '', 1, 0),
	(38, 2, '财库股票网', 'http://www.caikuu.com', '', '财库股票网', 0, 0, 0, 0, 0, 0, '', 1, 0);
/*!40000 ALTER TABLE `qb_friendlink` ENABLE KEYS */;

-- 导出  表 cms.qb_friendlink_sort 结构
CREATE TABLE IF NOT EXISTS `qb_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_friendlink_sort 的数据：2 rows
DELETE FROM `qb_friendlink_sort`;
/*!40000 ALTER TABLE `qb_friendlink_sort` DISABLE KEYS */;
INSERT INTO `qb_friendlink_sort` (`fid`, `name`, `list`) VALUES
	(2, '友情链接', 0),
	(3, '合作伙伴', 0);
/*!40000 ALTER TABLE `qb_friendlink_sort` ENABLE KEYS */;

-- 导出  表 cms.qb_fu_article 结构
CREATE TABLE IF NOT EXISTS `qb_fu_article` (
  `fid` int(7) NOT NULL DEFAULT '0',
  `aid` int(10) NOT NULL DEFAULT '0',
  KEY `fid` (`fid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_fu_article 的数据：0 rows
DELETE FROM `qb_fu_article`;
/*!40000 ALTER TABLE `qb_fu_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_fu_article` ENABLE KEYS */;

-- 导出  表 cms.qb_fu_sort 结构
CREATE TABLE IF NOT EXISTS `qb_fu_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fmid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_fu_sort 的数据：1 rows
DELETE FROM `qb_fu_sort`;
/*!40000 ALTER TABLE `qb_fu_sort` DISABLE KEYS */;
INSERT INTO `qb_fu_sort` (`fid`, `fup`, `fmid`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `list_html`, `bencandy_html`, `domain`, `domain_dir`) VALUES
	(1, 0, 0, '444', 1, 0, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '', '', '', '');
/*!40000 ALTER TABLE `qb_fu_sort` ENABLE KEYS */;

-- 导出  表 cms.qb_gather_rule 结构
CREATE TABLE IF NOT EXISTS `qb_gather_rule` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT '0',
  `fixsystem` varchar(30) NOT NULL DEFAULT '',
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `webname` varchar(150) NOT NULL DEFAULT '',
  `listurl` varchar(150) NOT NULL DEFAULT '',
  `firstpage` varchar(150) NOT NULL DEFAULT '',
  `page_begin` int(10) NOT NULL DEFAULT '0',
  `page_end` int(10) NOT NULL DEFAULT '0',
  `page_step` int(10) NOT NULL DEFAULT '0',
  `title_minleng` smallint(5) NOT NULL DEFAULT '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL DEFAULT '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL DEFAULT '',
  `show_firstpage` varchar(100) NOT NULL DEFAULT '',
  `show_spe2page` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `copypic` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `file_type` varchar(50) NOT NULL DEFAULT '',
  `file_minleng` mediumint(6) NOT NULL DEFAULT '0',
  `file_minsize` int(9) NOT NULL DEFAULT '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL DEFAULT '0',
  `file_star_string` varchar(150) NOT NULL DEFAULT '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_gather_rule 的数据：3 rows
DELETE FROM `qb_gather_rule`;
/*!40000 ALTER TABLE `qb_gather_rule` DISABLE KEYS */;
INSERT INTO `qb_gather_rule` (`id`, `fid`, `type`, `fixsystem`, `filetype`, `webname`, `listurl`, `firstpage`, `page_begin`, `page_end`, `page_step`, `title_minleng`, `listmoreurl`, `link_include_word`, `link_noinclude_word`, `link_replace_word`, `title_replace_word`, `list_begin_code`, `list_end_code`, `list_begin_preg`, `list_end_preg`, `gatherthesame`, `show_begin_preg`, `show_end_preg`, `show_endfile_preg`, `show_begin_code`, `show_end_code`, `show_replace_word`, `show_morepage`, `show_firstpage`, `show_spe2page`, `posttime`, `list`, `copypic`, `sort`, `file_type`, `file_minleng`, `file_minsize`, `file_includeword`, `file_noincludeword`, `file_explode`, `file_picwidth`, `file_star_string`, `title_rule`, `content_rule`, `title_morepage_rull`, `content_morepage_rull`, `charset_type`) VALUES
	(1, 0, 'article', 'article', '', '腾讯人才激辩', '', '', 0, 0, 1, 0, 'http://edu.qq.com/job/jlgc_more.htm\r\nhttp://edu.qq.com/job/jlgc_more1.htm\r\nhttp://edu.qq.com/job/jlgc_more2.htm', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '<table|<table style="display:none;"', '', '', 0, 1172984270, 1172984423, 0, 0, '', 0, 0, '', '', '', 0, '', '<tr><td height="24" class="font14px"><div align="left">·<a target="_blank" class="blackul" href="{url=NO"}">{title=NO<}</a> ', '<div id="ArticleCnt">{content=*}</div><div id="copyweb">', '', '', 0),
	(2, 0, 'article', 'article', '', '且听风吟原创文学空间----->散文 >> 心灵感悟', 'http://wind.yinsha.com/ashow.php?sid=10&%20size=20&page=[page]', '', 1, 3, 1, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '<tr><td><p class=s11>', '</td></tr>', '', '', '', 0, 1165498531, 1165498610, 0, 0, '', 0, 0, '', '', '', 0, '', '<img src=images/{NO"} border=0>\r\n                    \r\n            <a href="{url=NO"}" target=_blank>{title=NO<}</a> ', '', '', '', 0),
	(3, 0, 'article', 'article', '', '碧海银纱-> 散文 >> 心灵感悟', 'http://wind.yinsha.com/ashow.php?sid=5&%20size=20&page=[page]', '', 1, 8, 1, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 1166582291, 1166582456, 0, 0, '', 0, 0, '', '', '', 0, '', '<img src=images/{NO"} border=0>\r\n                    \r\n            <a href="{url=NO }" target=_blank>{title=NO<}</a> ', '<div align="center" class="s3">作者: {author=NO"}　</div>{*}<tr><td><p class=s11>&nbsp;&nbsp;{content=*}</td></tr>\r\n\r\n', '', '', 0);
/*!40000 ALTER TABLE `qb_gather_rule` ENABLE KEYS */;

-- 导出  表 cms.qb_gather_sort 结构
CREATE TABLE IF NOT EXISTS `qb_gather_sort` (
  `fid` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `fup` mediumint(6) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_gather_sort 的数据：0 rows
DELETE FROM `qb_gather_sort`;
/*!40000 ALTER TABLE `qb_gather_sort` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_gather_sort` ENABLE KEYS */;

-- 导出  表 cms.qb_group 结构
CREATE TABLE IF NOT EXISTS `qb_group` (
  `gid` smallint(4) NOT NULL AUTO_INCREMENT,
  `gptype` tinyint(1) NOT NULL DEFAULT '0',
  `grouptitle` varchar(50) NOT NULL DEFAULT '',
  `levelnum` mediumint(7) NOT NULL DEFAULT '0',
  `totalspace` int(10) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindb` text,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_group 的数据：6 rows
DELETE FROM `qb_group`;
/*!40000 ALTER TABLE `qb_group` DISABLE KEYS */;
INSERT INTO `qb_group` (`gid`, `gptype`, `grouptitle`, `levelnum`, `totalspace`, `allowsearch`, `powerdb`, `allowadmin`, `allowadmindb`) VALUES
	(2, 1, '游客组', 0, 0, 0, 'a:54:{s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:14:"PassContribute";s:1:"1";s:17:"SearchArticleType";s:1:"1";s:16:"PostArticleYzImg";s:1:"1";s:13:"EditPassPower";s:1:"0";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:17:"SetSpecialArticle";s:1:"0";s:17:"SetArticleKeyword";s:1:"0";s:20:"AddArticleKeywordNum";s:0:"";s:21:"AddArticleCopyfromNum";s:0:"";s:18:"SelectArticleStyle";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:13:"SetSmallTitle";s:1:"0";s:19:"CommentArticleYzImg";s:1:"1";s:17:"CollectArticleNum";s:0:"";s:15:"CreatSpecialNum";s:0:"";s:13:"PostNoDelCode";s:1:"0";s:7:"SetVote";s:1:"0";s:11:"SetHtmlName";s:1:"0";s:16:"PassContributeSP";s:1:"0";s:14:"AllowUploadMax";s:1:"0";s:11:"comment_num";s:2:"10";s:10:"comment_yz";s:1:"1";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"0";s:15:"buy_postauto_yz";s:1:"0";s:15:"post_pingpai_yz";s:1:"0";s:10:"use2domain";s:1:"0";s:16:"useHomepageStyle";s:1:"0";s:21:"view_buy_view_contact";s:1:"0";s:13:"post_sell_num";s:0:"";s:12:"post_buy_num";s:0:"";s:13:"post_news_num";s:0:"";s:14:"post_photo_num";s:0:"";s:11:"post_hr_num";s:0:"";s:17:"post_zhanghui_num";s:0:"";s:12:"post_ZLG_num";s:0:"";s:16:"post_pingpai_num";s:0:"";s:19:"post_baojiadian_num";s:0:"";s:19:"post_xunjiadian_num";s:0:"";s:24:"post_info_collection_num";s:0:"";}', 0, ''),
	(3, 1, '超级管理员', 0, 0, 0, 'a:26:{s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:14:"AllowUploadMax";s:1:"1";s:11:"comment_num";s:0:"";s:10:"comment_yz";s:1:"1";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"0";s:15:"buy_postauto_yz";s:1:"0";s:15:"post_pingpai_yz";s:1:"0";s:10:"use2domain";s:1:"0";s:16:"useHomepageStyle";s:1:"0";s:21:"view_buy_view_contact";s:1:"0";s:13:"post_sell_num";s:0:"";s:12:"post_buy_num";s:0:"";s:13:"post_news_num";s:0:"";s:14:"post_photo_num";s:0:"";s:11:"post_hr_num";s:0:"";s:17:"post_zhanghui_num";s:0:"";s:12:"post_ZLG_num";s:0:"";s:16:"post_pingpai_num";s:0:"";s:19:"post_baojiadian_num";s:0:"";s:19:"post_xunjiadian_num";s:0:"";s:24:"post_info_collection_num";s:0:"";s:18:"allow_get_homepage";s:1:"1";}', 1, 'a:151:{s:13:"center_config";s:1:"1";s:17:"set_comsort_index";s:1:"1";s:8:"user_reg";s:1:"1";s:12:"center_cache";s:1:"1";s:19:"article_more_config";s:1:"1";s:11:"cache_cache";s:1:"1";s:14:"article_module";s:1:"1";s:11:"comment_set";s:1:"1";s:18:"setmakeALLhtml_set";s:1:"1";s:11:"module_list";s:1:"1";s:9:"hack_list";s:1:"1";s:9:"blend_set";s:1:"1";s:14:"friendlink_mod";s:1:"1";s:14:"alonepage_list";s:1:"1";s:12:"channel_list";s:1:"1";s:9:"mysql_out";s:1:"1";s:10:"mysql_into";s:1:"1";s:9:"mysql_del";s:1:"1";s:9:"mysql_sql";s:1:"1";s:9:"menu_list";s:1:"1";s:14:"adminmenu_list";s:1:"1";s:15:"membermenu_list";s:1:"1";s:13:"sort_listsort";s:1:"1";s:15:"artic_listartic";s:1:"1";s:12:"comment_list";s:1:"1";s:13:"artic_postnew";s:1:"1";s:12:"artic_addpic";s:1:"1";s:18:"makeindexhtml_make";s:1:"1";s:13:"makehtml_make";s:1:"1";s:15:"spmakehtml_make";s:1:"1";s:15:"setmakehtml_set";s:1:"1";s:11:"index_label";s:1:"1";s:10:"s_list_fid";s:1:"1";s:13:"up_splist_fid";s:1:"1";s:12:"special_list";s:1:"1";s:15:"spsort_listsort";s:1:"1";s:13:"fu_sort_power";s:1:"1";s:14:"fu_artic_power";s:1:"1";s:11:"member_list";s:1:"1";s:12:"company_list";s:1:"1";s:8:"regfield";s:1:"1";s:16:"member_addmember";s:1:"1";s:20:"article_group_config";s:1:"1";s:10:"group_list";s:1:"1";s:16:"group_list_admin";s:1:"1";s:9:"group_add";s:1:"1";s:10:"alipay_set";s:1:"1";s:9:"shoporder";s:1:"1";s:14:"moneycard_make";s:1:"1";s:7:"js_list";s:1:"1";s:12:"propagandize";s:1:"1";s:11:"jfadmin_mod";s:1:"1";s:15:"attachment_list";s:1:"1";s:9:"area_list";s:1:"1";s:10:"upgrade_ol";s:1:"1";s:14:"limitword_list";s:1:"1";s:11:"report_list";s:1:"1";s:13:"copyfrom_list";s:1:"1";s:17:"limitword_replace";s:1:"1";s:24:"article_more_avoidgather";s:1:"1";s:13:"getkeyword_do";s:1:"1";s:17:"googlemap_makemap";s:1:"1";s:15:"gather_copysina";s:1:"1";s:11:"gather_list";s:1:"1";s:16:"gather_list_sort";s:1:"1";s:12:"message_send";s:1:"1";s:9:"mail_send";s:1:"1";s:8:"sms_send";s:1:"1";s:8:"cnzz_set";s:1:"1";s:9:"code_code";s:1:"1";s:15:"style_editstyle";s:1:"1";s:13:"template_list";s:1:"1";s:15:"logs_login_logs";s:1:"1";s:18:"logs_admin_do_logs";s:1:"1";s:4:"oicq";s:1:"1";s:5:"login";s:1:"1";s:8:"adminmap";s:1:"1";s:8:"moneylog";s:1:"1";s:6:"search";s:1:"1";s:6:"webmsg";s:1:"1";s:7:"crontab";s:1:"1";s:23:"Module_hy_center_config";s:1:"1";s:14:"Module_hy_sort";s:1:"1";s:17:"Module_hy_company";s:1:"1";s:17:"Module_hy_comment";s:1:"1";s:18:"Module_hy_renzheng";s:1:"1";s:22:"Module_hy_center_label";s:1:"1";s:21:"Module_hy_companynews";s:1:"1";s:20:"Module_hy_companypic";s:1:"1";s:25:"Module_exam_center_config";s:1:"1";s:21:"Module_exam_exam_sort";s:1:"1";s:22:"Module_exam_exam_title";s:1:"1";s:21:"Module_exam_exam_form";s:1:"1";s:21:"Module_exam_exam_read";s:1:"1";s:24:"Module_exam_center_label";s:1:"1";s:23:"Module_guestbook_center";s:1:"1";s:21:"Module_guestbook_sort";s:1:"1";s:24:"Module_guestbook_content";s:1:"1";s:18:"Module_form_center";s:1:"1";s:23:"Module_form_form_module";s:1:"1";s:24:"Module_form_form_content";s:1:"1";s:22:"Module_count_count_set";s:1:"1";s:17:"Module_count_sort";s:1:"1";s:23:"Module_count_count_list";s:1:"1";s:26:"Module_count_count_listall";s:1:"1";s:27:"Module_count_count_listmore";s:1:"1";s:18:"Module_vote_center";s:1:"1";s:20:"Module_vote_vote_add";s:1:"1";s:21:"Module_vote_vote_list";s:1:"1";s:16:"Module_ad_center";s:1:"1";s:21:"Module_ad_norm_listad";s:1:"1";s:25:"Module_ad_norm_listuserad";s:1:"1";s:24:"Module_ad_compete_listad";s:1:"1";s:26:"Module_ad_compete_listuser";s:1:"1";s:25:"Module_blog_center_config";s:1:"1";s:16:"Module_blog_list";s:1:"1";s:16:"Module_blog_sort";s:1:"1";s:19:"Module_blog_loglist";s:1:"1";s:19:"Module_blog_logsort";s:1:"1";s:18:"Module_blog_member";s:1:"1";s:19:"Module_blog_comment";s:1:"1";s:17:"Module_blog_class";s:1:"1";s:24:"Module_blog_center_label";s:1:"1";s:23:"Module_wn_center_config";s:1:"1";s:22:"Module_wn_center_label";s:1:"1";s:19:"Module_wn_sort_post";s:1:"1";s:14:"Module_wn_post";s:1:"1";s:14:"Module_wn_list";s:1:"1";s:17:"Module_wn_comment";s:1:"1";s:23:"Module_wn_sort_listsort";s:1:"1";s:16:"Module_wn_spsort";s:1:"1";s:17:"Module_wn_special";s:1:"1";s:16:"Module_wn_gather";s:1:"1";s:17:"Module_wn_replace";s:1:"1";s:16:"Module_wn_module";s:1:"1";s:20:"Module_wn_getkeyword";s:1:"1";s:16:"Module_wn_repair";s:1:"1";s:17:"Module_wn_getdata";s:1:"1";s:19:"Module_wn_adminwork";s:1:"1";s:18:"Module_wn_keepdata";s:1:"1";s:23:"Module_w8_center_config";s:1:"1";s:17:"Module_w8_bankuai";s:1:"1";s:15:"Module_w8_huati";s:1:"1";s:15:"Module_w8_level";s:1:"1";s:22:"Module_w8_center_label";s:1:"1";s:14:"Module_w8_list";s:1:"1";s:14:"Module_w8_sort";s:1:"1";s:20:"Module_w8_sort_baike";s:1:"1";s:20:"Module_w8_list_baike";s:1:"1";s:22:"Module_w8_professional";s:1:"1";s:6:"mymenu";a:2:{s:13:"sort_listsort";s:1:"1";s:12:"comment_list";s:1:"1";}}'),
	(4, 1, '前台管理员', 0, 0, 0, 'a:6:{s:14:"AllowUploadMax";s:1:"0";s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:11:"comment_num";s:0:"";s:10:"comment_yz";s:1:"1";s:11:"comment_img";s:1:"1";}', 0, 'a:1:{s:6:"mymenu";N;}'),
	(8, 0, '普通会员', 0, 50, 0, 'a:55:{s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:17:"SearchArticleType";s:1:"1";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:13:"SetSmallTitle";s:1:"0";s:17:"SetSpecialArticle";s:1:"1";s:17:"SetArticleKeyword";s:1:"1";s:20:"AddArticleKeywordNum";s:1:"0";s:16:"PostArticleYzImg";s:1:"0";s:21:"AddArticleCopyfromNum";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SelectArticleStyle";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:17:"CollectArticleNum";s:2:"30";s:15:"CreatSpecialNum";s:1:"7";s:19:"CommentArticleYzImg";s:1:"1";s:11:"SetHtmlName";s:1:"0";s:7:"SetVote";s:1:"1";s:16:"PassContributeSP";s:1:"0";s:13:"PostNoDelCode";s:1:"0";s:14:"AllowUploadMax";s:1:"0";s:11:"comment_num";s:0:"";s:10:"comment_yz";s:1:"0";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"1";s:15:"buy_postauto_yz";s:1:"1";s:15:"post_pingpai_yz";s:1:"1";s:10:"use2domain";s:1:"0";s:16:"useHomepageStyle";s:1:"0";s:21:"view_buy_view_contact";s:1:"0";s:13:"post_sell_num";s:1:"5";s:12:"post_buy_num";s:1:"5";s:13:"post_news_num";s:1:"5";s:14:"post_photo_num";s:2:"10";s:11:"post_hr_num";s:1:"5";s:17:"post_zhanghui_num";s:1:"5";s:12:"post_ZLG_num";s:1:"0";s:16:"post_pingpai_num";s:1:"5";s:19:"post_baojiadian_num";s:1:"5";s:19:"post_xunjiadian_num";s:1:"5";s:24:"post_info_collection_num";s:2:"30";s:18:"allow_get_homepage";s:1:"1";}', 0, ''),
	(9, 0, 'VIP会员', 10000, 0, 0, 'a:54:{s:17:"SearchArticleType";s:1:"0";s:16:"PostArticleYzImg";s:1:"0";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:17:"SetSpecialArticle";s:1:"0";s:17:"SetArticleKeyword";s:1:"0";s:20:"AddArticleKeywordNum";s:0:"";s:21:"AddArticleCopyfromNum";s:0:"";s:18:"SelectArticleStyle";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:13:"SetSmallTitle";s:1:"0";s:19:"CommentArticleYzImg";s:1:"0";s:17:"CollectArticleNum";s:0:"";s:15:"CreatSpecialNum";s:0:"";s:14:"AllowUploadMax";s:1:"0";s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:11:"comment_num";s:2:"30";s:10:"comment_yz";s:1:"0";s:11:"comment_img";s:1:"0";s:16:"sell_postauto_yz";s:1:"1";s:15:"buy_postauto_yz";s:1:"1";s:15:"post_pingpai_yz";s:1:"1";s:10:"use2domain";s:1:"1";s:16:"useHomepageStyle";s:1:"1";s:21:"view_buy_view_contact";s:1:"1";s:9:"topmyinfo";s:0:"";s:12:"topmyinfoday";s:0:"";s:13:"topcompanyday";s:0:"";s:13:"post_sell_num";s:2:"50";s:12:"post_buy_num";s:2:"50";s:13:"post_news_num";s:2:"50";s:14:"post_photo_num";s:3:"100";s:11:"post_hr_num";s:2:"20";s:17:"post_zhanghui_num";s:2:"20";s:12:"post_ZLG_num";s:1:"5";s:19:"post_baojiadian_num";s:2:"50";s:19:"post_xunjiadian_num";s:2:"50";s:16:"post_pingpai_num";s:2:"10";s:24:"post_info_collection_num";s:3:"100";s:18:"allow_get_homepage";s:1:"1";}', 0, ''),
	(10, 0, '钻石会员', 30000, 0, 0, 'a:50:{s:17:"SearchArticleType";s:1:"0";s:19:"CommentArticleYzImg";s:1:"0";s:17:"CollectArticleNum";s:0:"";s:15:"CreatSpecialNum";s:0:"";s:16:"PassContributeSP";s:1:"0";s:16:"PostArticleYzImg";s:1:"0";s:14:"PassContribute";s:1:"1";s:13:"EditPassPower";s:1:"0";s:13:"PostNoDelCode";s:1:"0";s:7:"SetVote";s:1:"0";s:12:"SetTileColor";s:1:"0";s:14:"SetSellArticle";s:1:"0";s:18:"SelectArticleStyle";s:1:"0";s:16:"SelectArticleTpl";s:1:"0";s:13:"SetArticleTpl";s:1:"0";s:18:"SetArticlePosttime";s:1:"0";s:18:"SetArticleViewtime";s:1:"0";s:16:"SetArticleHitNum";s:1:"0";s:18:"SetArticlePassword";s:1:"0";s:19:"SetArticleDownGroup";s:1:"0";s:19:"SetArticleViewGroup";s:1:"0";s:17:"SetArticleJumpurl";s:1:"0";s:19:"SetArticleIframeurl";s:1:"0";s:21:"SetArticleDescription";s:1:"0";s:16:"SetArticleTopCom";s:1:"0";s:11:"SetHtmlName";s:1:"0";s:14:"AllowUploadMax";s:1:"0";s:10:"upfileType";s:0:"";s:13:"upfileMaxSize";s:0:"";s:11:"comment_num";s:0:"";s:10:"comment_yz";s:1:"1";s:11:"comment_img";s:1:"1";s:16:"sell_postauto_yz";s:1:"1";s:15:"buy_postauto_yz";s:1:"1";s:15:"post_pingpai_yz";s:1:"1";s:10:"use2domain";s:1:"1";s:16:"useHomepageStyle";s:1:"1";s:21:"view_buy_view_contact";s:1:"1";s:13:"post_sell_num";s:3:"100";s:12:"post_buy_num";s:3:"100";s:13:"post_news_num";s:3:"100";s:14:"post_photo_num";s:3:"100";s:11:"post_hr_num";s:3:"100";s:17:"post_zhanghui_num";s:3:"100";s:12:"post_ZLG_num";s:2:"10";s:16:"post_pingpai_num";s:2:"10";s:19:"post_baojiadian_num";s:3:"100";s:19:"post_xunjiadian_num";s:3:"100";s:24:"post_info_collection_num";s:3:"300";s:18:"allow_get_homepage";s:1:"1";}', 0, '');
/*!40000 ALTER TABLE `qb_group` ENABLE KEYS */;

-- 导出  表 cms.qb_guestbook_config 结构
CREATE TABLE IF NOT EXISTS `qb_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_guestbook_config 的数据：9 rows
DELETE FROM `qb_guestbook_config`;
/*!40000 ALTER TABLE `qb_guestbook_config` DISABLE KEYS */;
INSERT INTO `qb_guestbook_config` (`c_key`, `c_value`, `c_descrip`) VALUES
	('module_id', '18', ''),
	('GuestBookNum', '20', ''),
	('groupPassPassGuestBook', '3,4', ''),
	('viewNoPassGuestBook', '0', ''),
	('yzImgGuestBook', '1', ''),
	('module_pre', 'guestbook_', ''),
	('ifOpenGuestBook', '1', ''),
	('Info_webname', '留言本', ''),
	('Info_webOpen', '1', '');
/*!40000 ALTER TABLE `qb_guestbook_config` ENABLE KEYS */;

-- 导出  表 cms.qb_guestbook_content 结构
CREATE TABLE IF NOT EXISTS `qb_guestbook_content` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `ico` tinyint(2) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) DEFAULT NULL,
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `blogurl` varchar(150) NOT NULL DEFAULT '',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_guestbook_content 的数据：5 rows
DELETE FROM `qb_guestbook_content`;
/*!40000 ALTER TABLE `qb_guestbook_content` DISABLE KEYS */;
INSERT INTO `qb_guestbook_content` (`id`, `fid`, `ico`, `email`, `oicq`, `weburl`, `blogurl`, `uid`, `username`, `ip`, `content`, `yz`, `posttime`, `list`, `reply`, `mobphone`) VALUES
	(12, 0, 1, '', '', '', '', 1, 'admin', '192.168.0.99', '忘记密码强制进入网站后台的方法是:修改/data/global.php文件,查找$ForceEnter=0;把0改成1即可,强制进入网站的后台.', 1, 1240206881, 1240206881, '', ''),
	(13, 0, 1, '', '', '', '', 1, 'admin', '192.168.0.99', '普通管理员成为超级管理员的方法是,修改文件/data/admin.php,把里边的帐号更换一下即可', 1, 1240206958, 1240206958, '', ''),
	(14, 0, 1, '', '', '', '', 1, 'admin', '192.168.0.99', '整站系统的数据库配置文件是/data/mysql_config.php', 1, 1240207079, 1240207079, '', ''),
	(15, 0, 1, '', '', '', '', 1, 'admin', '192.168.0.99', '服务器默认限制上传文件大小为2M,你如果不修改服务器设置.而想在整站系统上传大于2M的文件.是不可以的.必须先修改服务器设置.一般来说服务器的PHP配置文件放在c:\\windows\\php.ini这里.', 1, 1240207216, 1240207216, '', ''),
	(16, 0, 1, '', '', '', '', 1, 'admin', '192.168.0.99', '如果服务器做了限制.就无法使用采集程序.', 1, 1240207330, 1240207330, '', '');
/*!40000 ALTER TABLE `qb_guestbook_content` ENABLE KEYS */;

-- 导出  表 cms.qb_guestbook_sort 结构
CREATE TABLE IF NOT EXISTS `qb_guestbook_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_guestbook_sort 的数据：2 rows
DELETE FROM `qb_guestbook_sort`;
/*!40000 ALTER TABLE `qb_guestbook_sort` DISABLE KEYS */;
INSERT INTO `qb_guestbook_sort` (`fid`, `fup`, `name`, `mid`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metatitle`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `index_show`, `contents`, `tableid`, `dir_name`, `ifcolor`) VALUES
	(1, 0, '发展建议', 0, 1, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 0, '', '', '', '', 0, 'b:0;', 0, 0, '', '', 0),
	(2, 0, '意见投诉', 0, 1, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', '', 1, '', '', '', '', 0, '', 0, 0, '', '', 0);
/*!40000 ALTER TABLE `qb_guestbook_sort` ENABLE KEYS */;

-- 导出  表 cms.qb_hack 结构
CREATE TABLE IF NOT EXISTS `qb_hack` (
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL DEFAULT '',
  `class2` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_hack 的数据：37 rows
DELETE FROM `qb_hack`;
/*!40000 ALTER TABLE `qb_hack` DISABLE KEYS */;
INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES
	('moneycard_make', '点卡充值管理', 0, '', '', '', '', '', 'index.php?lfj=moneycard&job=make', '', 'other', '电子商务管理', 7, '', 1),
	('smallpic', '提取缩略图', 0, '', '', '', '', '', 'index.php?lfj=smallpic&job=list', '', '', '', 0, '', 0),
	('code_code', 'PHPWIND营销插件', 0, '', '', '', '', '', 'index.php?lfj=code&job=code', '', 'other', '站外功能', 2, '', 0),
	('webstat', '数据统计表', 0, '', '', '', '', '', 'index.php?lfj=webstat&job=list', '', '', '', 0, '', 0),
	('mail_send', '邮件群发', 0, '', '', '', '', '', 'index.php?lfj=mail&job=send', '', 'other', '消息/邮件群发', 2, '', 0),
	('sms_send', '手机短信群发', 0, '', '', '', '', '', 'index.php?lfj=sms&job=send', '', 'other', '消息/邮件群发', 1, '', 0),
	('propagandize', '推广赚取积分功能', 0, '', '', '', '', '', 'index.php?lfj=propagandize&job=list', '', 'other', '其它功能', 8, '', 0),
	('alipay_set', '在线充值支付管理', 0, '', '', '', '', '', 'index.php?lfj=alipay&job=list', '', 'other', '电子商务管理', 9, '', 0),
	('jfadmin_mod', '积分介绍管理', 0, '', '', '', '', '', 'index.php?lfj=jfadmin&job=listjf', '', 'other', '其它功能', 7, '', 0),
	('copyfrom_list', '来源地址管理', 0, '', '', '', '', '', 'index.php?lfj=copyfrom&job=list', '', 'other', '内容模型插件功能', 7, '', 0),
	('js_list', 'JS内容调用', 0, '', '', '', '', '', 'index.php?lfj=js&job=list', '', 'other', '其它功能', 9, '', 0),
	('cnzz_set', 'CNZZ流量统计', 0, '', '', '', '', '', 'index.php?lfj=cnzz&job=ask', '', 'other', '站外功能', 3, '', 0),
	('adminmap', '后台菜单', 0, '', '', '', '', '', 'index.php?lfj=adminmap&job=list', '', 'other', '插件大全', 0, '', 0),
	('attachment_list', '附件管理', 0, '', '', '', '', '', 'index.php?lfj=attachment&job=list', '', 'other', '其它功能', 6, '', 0),
	('moneylog', '用户消费积分记录', 0, '', '', '', '', '', 'index.php?lfj=moneylog&job=list', '', 'other', '插件大全', 0, '', 0),
	('shoporder', '商城订单管理', 0, '', '', '', '', '', 'index.php?lfj=shoporder&job=list', '', 'other', '电子商务管理', 8, '', 0),
	('gather_copysina', '新浪新闻采集', 0, '', '', '', '', '', 'index.php?lfj=gather&job=copysina', '', 'other', '数据采集器', 3, '', 0),
	('gather_list', '采集规则管理', 0, '', '', '', '', '', 'index.php?lfj=gather&job=list', '', 'other', '数据采集器', 2, '', 0),
	('gather_list_sort', '采集规则分类管理', 0, '', '', '', '', '', 'index.php?lfj=gather&job=listsort', '', 'other', '数据采集器', 1, '', 0),
	('login', '用户登录插件', 0, '', 'a:3:{s:10:"systemType";s:6:"php168";s:9:"guestcode";s:0:"";}', '', '', '', 'index.php?lfj=hack&hack=login&job=list', '', '', '', 0, '', 0),
	('upgrade_ol', '系统在线升级', 0, '', '', '', '', '', 'index.php?lfj=upgrade&job=get', '', 'other', '其它功能', 4, '', 0),
	('report_list', '内容好坏举报管理', 0, '', '', '', '', '', 'index.php?lfj=report&job=list', '', 'other', '内容模型插件功能', 8, '', 0),
	('webmsg', '站点统计信息', 0, 'PHP168团队', 'a:3:{s:7:"tplcode";s:491:"<table width=\\"100%\\" cellpadding=\\"0\\" cellspacing=\\"0\\" border=\\"0\\" id=\\"webmsg\\">\r\n     <tr> \r\n      <td height=\\"14\\">文章主题: {$article_num} 篇</td>\r\n    </tr>\r\n    <tr> \r\n      <td height=\\"7\\" >文章栏目: {$sort_num} 个</td>\r\n    </tr>\r\n    <tr> \r\n      <td height=\\"7\\" >文章评论: {$comment_num} 条</td>\r\n    </tr>\r\n	 <tr> \r\n      <td height=\\"7\\" >访客留言: {$guestbook_num} 条</td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\"7\\" >注册会员: {$member_num} 位</td>\r\n    </tr>\r\n</table>";s:6:"cktime";s:2:"60";s:6:"system";a:3:{s:7:"article";s:1:"1";s:4:"sort";s:1:"1";s:10:"memberdata";s:1:"1";}}', '', '', '', 'index.php?lfj=hack&hack=webmsg&job=list', '', '', '', 0, '', 0),
	('logs_login_logs', '后台登录日志', 0, '', '', '', '', '', 'index.php?lfj=logs&job=login_logs', '', 'other', '日志管理', 2, '', 0),
	('logs_admin_do_logs', '后台操作日志', 0, '', '', '', '', '', 'index.php?lfj=logs&job=admin_logs', '', 'other', '日志管理', 1, '', 0),
	('crontab', '定时任务', 0, '', '', '', '', '', 'index.php?lfj=crontab&job=list', '', 'other', '插件大全', 0, '', 0),
	('getkeyword_do', '关键字管理', 0, '', '', '', '', '', 'index.php?lfj=getkeyword&job=list', '', 'other', '内容模型插件功能', 4, '</a><A HREF=\'index.php?lfj=getkeyword&job=list\' target=\'main\'>关键字管理</A> | <A HREF=\'index.php?lfj=getkeyword&job=get\' target=\'main\'>提取关键字</A><a>', 0),
	('search', '搜索', 0, '', 'a:2:{s:10:"systemType";s:6:"web168";s:10:"searchcode";s:456:"<table width=\\"100%\\" cellpadding=\\"0\\" cellspacing=\\"0\\" border=\\"0\\">\r\n  <form name=\\"formsearch\\" method=\\"post\\" action=\\"$webdb[www_url]/search.php\\">\r\n    <tr> \r\n      <td height=\\"14\\"> 关键字:<input type=\\"text\\" name=\\"keyword\\" size=\\"10\\">\r\n        <input type=\\"submit\\" name=\\"Submit32\\" value=\\"搜索\\">\r\n        <input type=\\"hidden\\" name=\\"searchTable\\" value=\\"article\\">\r\n      </td>\r\n    </tr>\r\n   \r\n  </form>\r\n</table>\r\n                ";}', '', '', '', 'index.php?lfj=hack&hack=search&job=list', '', '', '', 0, '', 0),
	('googlemap_makemap', '百度新闻协议/google协议', 0, '', '', '', '', '', 'index.php?lfj=googlemap&job=makemap', '', 'other', '内容模型插件功能', 3, '', 0),
	('limitword_list', '不良词语过滤', 0, '', '', '', '', '', 'index.php?lfj=limitword&job=list', '', 'other', '内容模型插件功能', 9, '', 0),
	('limitword_replace', '字符替换', 0, '', '', '', '', '', 'index.php?lfj=limitword&job=replace', '', 'other', '内容模型插件功能', 6, '', 0),
	('template_list', '模板设置', 0, '', '', '', '', '', 'index.php?lfj=template&job=list', '', 'other', '风格/模板设置', 1, '', 0),
	('article_more_avoidgather', '防采集设置', 0, '', '', '', '', '', 'index.php?lfj=article_more&job=avoidgather', '', 'other', '内容模型插件功能', 5, '', 1),
	('oicq', 'QQ在线聊天', 0, '', 'a:4:{s:8:"qq_style";s:2:"11";s:7:"pic_alt";s:10:"有事点这里";s:6:"qq_num";s:19:"121727818\r\n37352529";s:8:"web_name";s:10:"PHP168整站";}', '<a target=blank href=\'tencent://message/?uin=121727818&Site=PHP168整站&Menu=yes\'><img border=\'0\' SRC=\'http://wpa.qq.com/pa?p=1:121727818:11\' alt=\'有事点这里\'></a><br><br><a target=blank href=\'tencent://message/?uin=37352529&Site=PHP168整站&Menu=yes\'><img border=\'0\' SRC=\'http://wpa.qq.com/pa?p=1:37352529:11\' alt=\'有事点这里\'></a><br><br>', '', '', 'index.php?lfj=hack&hack=oicq&job=edit', '', '', '', 0, '', 0),
	('area_list', '地区管理', 0, '', '', '', '', '', 'index.php?lfj=area&job=list', '', 'other', '其它功能', 5, '', 0),
	('style_editstyle', '风格管理', 0, '', '', '', '', '', 'index.php?lfj=style&job=edittpl', '', 'other', '风格/模板设置', 2, '', 0),
	('message_send', '站内消息群发', 0, '', '', '', '', '', 'index.php?lfj=message&job=send', '', 'other', '消息/邮件群发', 3, '', 0);
/*!40000 ALTER TABLE `qb_hack` ENABLE KEYS */;

-- 导出  表 cms.qb_jfabout 结构
CREATE TABLE IF NOT EXISTS `qb_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_jfabout 的数据：5 rows
DELETE FROM `qb_jfabout`;
/*!40000 ALTER TABLE `qb_jfabout` DISABLE KEYS */;
INSERT INTO `qb_jfabout` (`id`, `fid`, `title`, `content`, `list`) VALUES
	(6, 2, '发表文章可得{$webdb[postArticleMoney]}个积分', '只有审核后的文章才可得积分,没审核的文章不得积分.', 0),
	(7, 2, '删除文章扣除{$webdb[deleteArticleMoney]}个积分', '', 0),
	(5, 1, '用户注册可得{$webdb[regmoney]}个积分', '', 0),
	(8, 2, '文章被设置为精华可得{$webdb[comArticleMoney]}个积分', '', 0),
	(9, 1, '每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.', '', 0);
/*!40000 ALTER TABLE `qb_jfabout` ENABLE KEYS */;

-- 导出  表 cms.qb_jfsort 结构
CREATE TABLE IF NOT EXISTS `qb_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_jfsort 的数据：2 rows
DELETE FROM `qb_jfsort`;
/*!40000 ALTER TABLE `qb_jfsort` DISABLE KEYS */;
INSERT INTO `qb_jfsort` (`fid`, `name`, `list`) VALUES
	(1, '会员中心', 0),
	(2, '文章中心', 0);
/*!40000 ALTER TABLE `qb_jfsort` ENABLE KEYS */;

-- 导出  表 cms.qb_keyword 结构
CREATE TABLE IF NOT EXISTS `qb_keyword` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `num` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keywords` (`keywords`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_keyword 的数据：0 rows
DELETE FROM `qb_keyword`;
/*!40000 ALTER TABLE `qb_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_keyword` ENABLE KEYS */;

-- 导出  表 cms.qb_keywordid 结构
CREATE TABLE IF NOT EXISTS `qb_keywordid` (
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_keywordid 的数据：0 rows
DELETE FROM `qb_keywordid`;
/*!40000 ALTER TABLE `qb_keywordid` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_keywordid` ENABLE KEYS */;

-- 导出  表 cms.qb_label 结构
CREATE TABLE IF NOT EXISTS `qb_label` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `ch` smallint(4) NOT NULL DEFAULT '0',
  `chtype` tinyint(2) NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `typesystem` tinyint(1) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `js_time` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `pagetype` tinyint(3) NOT NULL DEFAULT '0',
  `module` mediumint(6) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `if_js` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=740 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_label 的数据：418 rows
DELETE FROM `qb_label`;
/*!40000 ALTER TABLE `qb_label` DISABLE KEYS */;
INSERT INTO `qb_label` (`lid`, `name`, `ch`, `chtype`, `tag`, `type`, `typesystem`, `code`, `divcode`, `hide`, `js_time`, `uid`, `username`, `posttime`, `pagetype`, `module`, `fid`, `if_js`, `style`) VALUES
	(298, '', 1, 0, 'bodyad', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20090420140457_NOGYw.jpg";s:7:"imglink";s:47:"http://www.phpwind.net/read-htm-tid-761520.html";s:5:"width";s:3:"990";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:3:"990";s:5:"div_h";s:2:"80";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240210319, 0, 0, 0, 0, 'default'),
	(299, '', 1, 0, 'b2', 'comment', 1, 'a:25:{s:9:"tplpart_1";s:579:"<div>\r\n  <div style="float:left;"><b><font color="#990000">{$username}</font></b> 于 <font color="#990000">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> 对 </div>\r\n  <a target=\'_blank\' href="$webdb[www_url]/do/comment.php?fid=$fid&id=$aid" style="overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;"><font color="#0000FF">{$article}</font></a><div style="float:left;">发表如下评论</div></div>\r\n<div style="clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;">　<font color="#666666">{$title}</font></div>";s:13:"tplpart_1code";s:579:"<div>\r\n  <div style="float:left;"><b><font color="#990000">{$username}</font></b> 于 <font color="#990000">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> 对 </div>\r\n  <a target=\'_blank\' href="$webdb[www_url]/do/comment.php?fid=$fid&id=$aid" style="overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;"><font color="#0000FF">{$article}</font></a><div style="float:left;">发表如下评论</div></div>\r\n<div style="clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;">　<font color="#666666">{$title}</font></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"comment";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";N;s:3:"asc";N;s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:149:" SELECT A.*,A.content AS title,B.title AS article FROM qb_comment A LEFT JOIN qb_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 4 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:8:"titlenum";s:2:"80";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"468";s:5:"div_h";s:3:"190";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240996241, 0, 0, 0, 0, 'default'),
	(300, '', 1, 0, 'listpic2', 'article', 1, 'a:29:{s:13:"tplpart_1code";s:322:"<div  class="listpic" style="padding:5px 9px 3px 17px;"> \r\n              <p class=img><a href="$url" target="_blank"><img width="120" height="90" src="$picurl" border="0"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF="$url" title=\'$full_title\' target="_blank">$title</A></p>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"100";s:7:"tplpath";s:24:"/common_pic/img_div1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"10";s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:152:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (10)  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239006574, 0, 0, 0, 0, 'default'),
	(301, '', 1, 0, 'listpic3', 'article', 1, 'a:29:{s:13:"tplpart_1code";s:322:"<div  class="listpic" style="padding:5px 9px 3px 17px;"> \r\n              <p class=img><a href="$url" target="_blank"><img width="120" height="90" src="$picurl" border="0"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF="$url" title=\'$full_title\' target="_blank">$title</A></p>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:24:"/common_pic/img_div1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:133:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239006730, 0, 0, 0, 0, 'default'),
	(152, '', 1, 0, 'hotarticle', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:212:"<div style="background:url($webdb[www_url]/images/default/i/$i.gif) no-repeat 0px 2px;height:23px;text-indent:1.3em;"><A HREF="$url" target=\'_blank\' style="$fontcolor;$fontweight;font-size:13px;">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:1:"0";s:7:"tplpath";s:27:"/common_title/2title_i2.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:3:"all";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.hits";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"9";s:3:"sql";s:97:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE 1  AND A.mid=\'0\'   ORDER BY A.hits DESC LIMIT 9 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"228";s:5:"div_h";s:3:"204";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239609179, 0, 0, 0, 0, 'default'),
	(163, '', 1, 0, 'listpic', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:322:"<div  class="listpic" style="padding:7px 9px 3px 17px;"> \r\n              <p class=img><a href="$url" target="_blank"><img width="120" height="90" src="$picurl" border="0"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF="$url" title=\'$full_title\' target="_blank">$title</A></p>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:24:"/common_pic/img_div1.jpg";s:6:"DivTpl";i:0;s:5:"fiddb";s:2:"33";s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:1:"1";s:7:"rowspan";s:1:"2";s:3:"sql";s:167:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (33)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"3";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"459";s:5:"div_h";s:3:"254";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1241074794, 0, 0, 0, 0, 'default'),
	(472, '', 1, 0, 'index_ad8', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101109141128_eq3o1.jpg";s:7:"imglink";s:26:"http://www.chinaccnet.com/";s:5:"width";s:3:"270";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:3:"269";s:5:"div_h";s:2:"57";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292642659, 0, 0, 0, 0, 'default'),
	(182, '', 1, 0, 'Title1', 'code', 0, 'web新闻', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"220";s:5:"div_h";s:2:"23";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240127514, 0, 0, 0, 0, 'default'),
	(183, '', 1, 0, 'Title2', 'code', 0, '求职招聘', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"255";s:5:"div_h";s:2:"26";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239767486, 0, 0, 0, 0, 'default'),
	(184, '', 1, 0, 'Title3', 'code', 0, '软件下载', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"210";s:5:"div_h";s:2:"23";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022710, 0, 0, 0, 0, 'default'),
	(185, '', 1, 0, 'Title4', 'code', 0, '社会新闻', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"210";s:5:"div_h";s:2:"23";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022689, 0, 0, 0, 0, 'default'),
	(186, '', 1, 0, 'Title5', 'code', 0, '文章评论', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"455";s:5:"div_h";s:2:"24";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022487, 0, 0, 0, 0, 'default'),
	(187, '', 1, 0, 'Title6', 'code', 0, '优秀会员', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240899624, 0, 0, 0, 0, 'default'),
	(188, '', 1, 0, 'Title01', 'code', 0, '热门文章', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"210";s:5:"div_h";s:2:"24";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022429, 0, 0, 0, 0, 'default'),
	(189, '', 1, 0, 'Title02', 'code', 0, '最受关注', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"234";s:5:"div_h";s:2:"23";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022631, 0, 0, 0, 0, 'default'),
	(630, '', 0, 0, 'special_sport_2', 'code', 0, '<a href="#">新闻中心</a> | <a href="#">体育新闻</a> | <a href="#">娱乐新闻</a> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(284, '', 1, 0, 'Title_jinjaad', 'code', 0, '投票调查', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"215";s:5:"div_h";s:2:"26";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022512, 0, 0, 0, 0, 'default'),
	(285, '', 1, 0, 'jinjaad', 'hack_vote', 0, '<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=6\'></SCRIPT>', 'a:4:{s:6:"voteid";s:1:"6";s:5:"div_w";s:3:"229";s:5:"div_h";s:3:"138";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239010747, 0, 0, 0, 0, 'default'),
	(302, '', 1, 0, 'listpic4', 'article', 1, 'a:29:{s:13:"tplpart_1code";s:322:"<div  class="listpic" style="padding:5px 9px 3px 17px;"> \r\n              <p class=img><a href="$url" target="_blank"><img width="120" height="90" src="$picurl" border="0"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF="$url" title=\'$full_title\' target="_blank">$title</A></p>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"103";s:7:"tplpath";s:24:"/common_pic/img_div1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:133:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239006655, 0, 0, 0, 0, 'default'),
	(303, '', 1, 0, 'listpic5', 'article', 1, 'a:29:{s:13:"tplpart_1code";s:322:"<div  class="listpic" style="padding:5px 9px 3px 17px;"> \r\n              <p class=img><a href="$url" target="_blank"><img width="120" height="90" src="$picurl" border="0"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF="$url" title=\'$full_title\' target="_blank">$title</A></p>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"104";s:7:"tplpath";s:24:"/common_pic/img_div1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:133:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'104\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239006692, 0, 0, 0, 0, 'default'),
	(287, '', 1, 0, 'c2', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:147:"<div style="padding-top:5px;color:#ccc;">·<A HREF="$url" target=\'_blank\' style="$fontcolor;$fontweight;font-size:13px;">$title</a> $new $hot</div>";s:13:"tplpart_2code";s:411:"<table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:5px;">\r\n  <tr>\r\n    <td align="left"><a href="$url" target="_blank" style="font-weight:bold;color:#666;" title="$full_title">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align="left" height="18" valign="middle" style="border-bottom:1px dotted #ccc;text-indent:2em;padding-bottom:5px;color:#929292;">$content</td>\r\n  </tr>\r\n</table>";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_zh_content/zh_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:5:"35,38";s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:10:"A.posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:189:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (35,38)  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"68";s:8:"titlenum";s:2:"28";s:9:"titlenum2";s:2:"34";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"222";s:5:"div_h";s:3:"159";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240192238, 0, 0, 0, 0, 'default'),
	(288, '', 1, 0, 'comarticle', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:1110:"<table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:6px;">\r\n  <tr> \r\n    <td align="left" style="border-bottom:1px dotted #eee;padding-bottom:5px;"> \r\n      <div style="background:url($webdb[www_url]/images/default/sdigg.gif) no-repeat;width:44px;height:36px;float:left;">\r\n        <div style="font-size:13px;text-align:center;padding:0px;font-weight:bold;background:#eee;" id="DiggNum_$id">$digg_num</div>\r\n        <div style="text-align:center;font-size:12px;color:#FFF;width:44px;height:20px;overflow:hidden;background:#ccc;" id="DiggDo_$id"><a href="$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id" target="DiggIframe_$id" style="font-size:12px;color:#FFF;">顶一下</a></div>\r\n      </div>\r\n      <div style="margin-left:4px;float:left;width:195px;"> \r\n        <a href="$url" target="_blank" style="$fontcolor;$fontweight;font-size:13px;">$title</a>\r\n      </div>\r\n      <div style="display:none;"><iframe src="$webdb[www_url]/do/job.php?job=digg&type=getnum&id=$id" width=0 height=0 name="DiggIframe_$id" id="DiggIframe_$id"></iframe></div>\r\n    </td>\r\n  </tr>\r\n</table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:1:"0";s:7:"tplpath";s:22:"/article/title_dig.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:10:"A.digg_num";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:106:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.digg_num DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:2:"55";s:8:"titlenum";s:2:"60";s:9:"titlenum2";s:2:"26";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"246";s:5:"div_h";s:3:"243";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239193510, 0, 0, 0, 0, 'default'),
	(338, '', 1, 0, 'bjsptitle', 'code', 0, '推荐专题', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(339, '', 1, 0, 'bjspecial', 'specialsort', 1, 'a:34:{s:9:"tplpart_1";s:442:"<div style="float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;"> \r\n             <a href="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id" target="_blank" style="display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;"><img width="120" height="160" src="$picurl" border="0"></a> \r\n               <A HREF="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id" title=\'$full_title\' target="_blank">$title</A> \r\n</div>";s:13:"tplpart_1code";s:442:"<div style="float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;"> \r\n             <a href="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id" target="_blank" style="display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;"><img width="120" height="160" src="$picurl" border="0"></a> \r\n               <A HREF="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id" title=\'$full_title\' target="_blank">$title</A> \r\n</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:11:"specialsort";s:11:"roll_height";s:2:"50";s:3:"url";s:45:"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:3:"fid";s:0:"";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";N;s:7:"tplpath";s:24:"/common_pic/img_div1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";N;s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:4:"list";s:3:"asc";s:4:"DESC";s:6:"levels";s:1:"1";s:7:"rowspan";s:1:"6";s:3:"sql";s:113:" SELECT A.* FROM qb_special A  WHERE `ifbase`=0  AND A.levels=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";s:0:"";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:0:"";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:0:"";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"953";s:5:"div_h";s:3:"177";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240899961, 0, 0, 0, 0, 'default'),
	(289, '', 1, 0, 'a1', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:147:"<div style="padding-top:6px;color:#ccc;">·<A HREF="$url" target=\'_blank\' style="$fontcolor;$fontweight;font-size:13px;">$title</a> $new $hot</div>";s:13:"tplpart_2code";s:558:"<table width="98%" border="0" cellspacing="0" cellpadding="0" style="margin:3px 0px 5px 0px;">\r\n  <tr> \r\n    <td rowspan="2" width="4%" style="padding-right:3px;padding-bottom:7px;border-bottom:1px dotted #ccc;"><a href="$url"><img src="$picurl" width="100" height="70" border="0"></a></td>\r\n    <td width="96%"> <a href="$url" target="_blank" style="color:#666;font-weight:bold;">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width="96%" style="padding-bottom:7px;text-indent:1em;border-bottom:1px dotted #ccc;color:#929292;">$content</td>\r\n  </tr>\r\n</table>\r\n";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:2:"-1";s:7:"tplpath";s:24:"/common_zh_pic/zh_pc.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"39";s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:10:"A.posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:171:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (39)   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 ";s:4:"sql2";s:183:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.fid IN (39)  AND A.ispic=1 AND R.topic=1 ORDER BY A.posttime DESC LIMIT 1 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"60";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"20";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"221";s:5:"div_h";s:3:"186";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240192058, 0, 0, 0, 0, 'default'),
	(366, '', 1, 0, 'show_34', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:809:"<table  border="0" cellspacing="0" cellpadding="0" style="float:left;width:160px;margin-top:15px;">\r\n  <tr>\r\n    <td align="center"><a href="$url" target="_blank" style="border:1px solid #ccc;display:block;width:120px;height:90px;"><img style="border:1px solid #fff;" src=\'$picurl\' border=0 width="120" height="90"></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align="center" style="padding-top:5px;"><a href="$url" target="_blank">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align="center" style="padding-top:3px;"><strike><b>￥$martprice</b></strike> <b><font color="#FF0000">￥$nowprice</font></b></td>\r\n  </tr>\r\n  <tr>\r\n    <td align="center" style="padding-bottom:18px;padding-top:3px;"><a href="$url" target="_blank"><img src="$webdb[www_url]/images/default/order_button.gif" border="0"></a></td>\r\n  </tr>\r\n</table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"180";s:7:"amodule";s:3:"103";s:7:"tplpath";s:17:"/article/shop.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid ASC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"450";s:5:"div_h";s:3:"200";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1241074246, 0, 0, 0, 0, 'default'),
	(293, '', 1, 0, 'c1', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:254:"<div style="line-height:130%;font-size:13px;color:#ccc;clear:both;"><span style="float:left;">·<A HREF="$url" target=\'_blank\' style="$fontcolor;$fontweight">$title </a></span><span style="float:right;padding-right:3px;color:#666;">({$hits})</span></div>";s:13:"tplpart_2code";s:302:"<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:4px;">\r\n  <tr>\r\n    <td style="font-size:13px;font-weight:bold;">[推荐]<A HREF="$url" target="_blank" style="font-size:15px;font-weight:bold;color:#990000;text-decoration: underline;">$title</A></td>\r\n  </tr>\r\n</table>";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:3:"101";s:7:"tplpath";s:32:"/common_zh_title/zh_bigtitle.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:8:"12,26,27";s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:10:"A.posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:133:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (12,26,27)  AND A.mid=\'101\'   ORDER BY A.posttime DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"30";s:10:"titleflood";s:1:"1";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"226";s:5:"div_h";s:3:"140";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240192810, 0, 0, 0, 0, 'default'),
	(304, '', 1, 0, 'a2', 'member', 1, 'a:19:{s:9:"tplpart_1";s:504:"<div style="float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;"> <CENTER><a style="display:block;width:65px;height:65px;border:1px solid #ccc;" href="$webdb[www_url]/member/homepage.php?uid=$uid" target="_blank"><img style="border:2px solid #fff;" onerror="this.src=\'$webdb[www_url]/images/default/noface.gif\'" width="65" height="65" src="$picurl" border="0"></a><A HREF="$webdb[www_url]/member/homepage.php?uid=$uid" title=\'$full_title\' target="_blank">$title</A></CENTER>\r\n            </div>";s:13:"tplpart_1code";s:504:"<div style="float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;"> <CENTER><a style="display:block;width:65px;height:65px;border:1px solid #ccc;" href="$webdb[www_url]/member/homepage.php?uid=$uid" target="_blank"><img style="border:2px solid #fff;" onerror="this.src=\'$webdb[www_url]/images/default/noface.gif\'" width="65" height="65" src="$picurl" border="0"></a><A HREF="$webdb[www_url]/member/homepage.php?uid=$uid" title=\'$full_title\' target="_blank">$title</A></CENTER>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:7:"group_1";s:0:"";s:7:"group_2";s:0:"";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"6";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:7:"regdate";s:3:"asc";s:4:"DESC";s:6:"levels";N;s:7:"rowspan";s:1:"6";s:3:"sql";s:173:" SELECT M.username AS title,D.*,D.icon AS picurl,D.introduce AS content FROM qb_members M LEFT JOIN qb_memberdata D ON M.uid=D.uid  WHERE 1  ORDER BY D.regdate DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"20";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"235";s:5:"div_h";s:3:"190";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240994881, 0, 0, 0, 0, 'default'),
	(305, '', 1, 0, 'Title04', 'code', 0, '访客留言', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(306, '', 1, 0, 'c02', 'guestbook', 1, 'a:25:{s:9:"tplpart_1";s:384:"<div> <b><font color="#990000">{$username}</font></b> 于<font color="#990000"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>发表的留言:</div> \r\n<div style="clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;">　<a href="$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id" target="_blank"><font color="#666666">{$title}</font></a></div>\r\n";s:13:"tplpart_1code";s:384:"<div> <b><font color="#990000">{$username}</font></b> 于<font color="#990000"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>发表的留言:</div> \r\n<div style="clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;">　<a href="$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id" target="_blank"><font color="#666666">{$title}</font></a></div>\r\n";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:9:"guestbook";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";N;s:3:"asc";N;s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:86:" SELECT A.*,content AS title FROM qb_guestbook A  WHERE 1  ORDER BY A.id DESC LIMIT 4 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:8:"titlenum";s:2:"70";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"231";s:5:"div_h";s:3:"260";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240898314, 0, 0, 0, 0, 'default'),
	(470, '', 1, 0, 'index_ad5', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101027171021_fndoi.gif";s:7:"imglink";s:26:"http://www.chinaccnet.com/";s:5:"width";s:3:"220";s:6:"height";s:2:"50";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292642651, 0, 0, 0, 0, 'default'),
	(471, '', 1, 0, 'index_ad7', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101109141121_uu6ot.gif";s:7:"imglink";s:19:"http://u.admin5.com";s:5:"width";s:3:"990";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"991";s:5:"div_h";s:2:"68";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291791530, 0, 0, 0, 0, 'default'),
	(296, '', 1, 0, 'mainnews', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:630:"<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:8px;">\r\n  <tr>\r\n    <td align="center" style="padding-bottom:5px;"><a href="$url" target="_blank"><b><font color="#D50000" style="font-size:16px;">$title</font></b></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align="left" height="18" valign="middle" style="border-bottom:1px dotted #ccc;line-height:150%;text-indent:2em;color:#929292;padding-bottom:3px;">{$content} 共<font color="#D50000">{$hits}</font>人关注  评论<font color="#D50000">{$comments}</font>条 \r\n      [<a href="$url" style="color:#D50000;" target="_blank">详情</a>]</td>\r\n  </tr>\r\n</table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:2:"-1";s:7:"tplpath";s:24:"/common_title/0title.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"31";s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:166:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (31)   AND R.topic=1 ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"120";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"60";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"461";s:5:"div_h";s:2:"71";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240195933, 0, 0, 0, 0, 'default'),
	(364, '', 1, 0, 'bb1', 'code', 0, '<table width="100%" border="0" cellspacing="1" cellpadding="3" bgcolor="#ffffff">\r\n        <tr align="center" bgcolor="#EBEBEB"> \r\n          <td width="36%">求职岗位</td>\r\n          <td width="13%">学历</td>\r\n          <td width="14%">性别</td>\r\n          <td width="13%">工作年限</td>\r\n          <td width="13%">年龄</td>\r\n          <td width="11%">详情</td>\r\n        </tr> \r\n</table>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"475";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239768502, 0, 0, 0, 0, 'default'),
	(365, '', 1, 0, 'bb2', 'form', 1, 'a:31:{s:9:"tplpart_1";s:527:"<table width="100%" border="0" cellspacing="1" cellpadding="3" style="border-bottom:1px dotted #eee;">\r\n        <tr align="center"> \r\n          \r\n    <td width="36%" align="left"> $workposition</td>\r\n          <td width="13%">$schoo_age</td>\r\n          <td width="14%">$sex</td>\r\n          <td width="13%">{$workyear} 年</td>\r\n          <td width="13%">{$myage} 岁</td>\r\n          \r\n    <td width="11%"><a href="$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id" target="_blank">详情</a></td>\r\n        </tr> \r\n      </table>";s:13:"tplpart_1code";s:527:"<table width="100%" border="0" cellspacing="1" cellpadding="3" style="border-bottom:1px dotted #eee;">\r\n        <tr align="center"> \r\n          \r\n    <td width="36%" align="left"> $workposition</td>\r\n          <td width="13%">$schoo_age</td>\r\n          <td width="14%">$sex</td>\r\n          <td width="13%">{$workyear} 年</td>\r\n          <td width="13%">{$myage} 岁</td>\r\n          \r\n    <td width="11%"><a href="$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id" target="_blank">详情</a></td>\r\n        </tr> \r\n      </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"form";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:1:"6";s:7:"tplpath";s:16:"/form/askjob.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:3:"all";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";N;s:3:"asc";s:4:"DESC";s:6:"levels";N;s:7:"rowspan";s:1:"5";s:3:"sql";s:195:" SELECT A.*,R.*,config AS M_config FROM qb_form_content A LEFT JOIN qb_form_content_6 R ON A.id=R.id LEFT JOIN qb_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'6\'  ORDER BY A.id DESC  LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:0:"";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:0:"";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240899424, 0, 0, 0, 0, 'default'),
	(318, '', 1, 0, 'b02', 'code', 0, '<table width="100%" border="0" cellspacing="1" cellpadding="3" bgcolor="#ffffff">\r\n        <tr align="center" bgcolor="#EBEBEB"> \r\n          <td width="36%">招聘职位</td>\r\n          <td width="13%">学历要求</td>\r\n          <td width="14%">性别要求</td>\r\n          <td width="13%">经验要求</td>\r\n          <td width="13%">月薪待遇</td>\r\n          <td width="11%">详情</td>\r\n        </tr> \r\n      </table>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"490";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239022772, 0, 0, 0, 0, 'default'),
	(330, '', 1, 0, 'mainnews2', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:397:"<div style="clear:both;padding-top:2px;margin-bottom:4px;"><span style="float:left;font-size:13px;color:#ccc;">·<A HREF="$list_url" style="font-size:13px;">{$fname}</A>| <A HREF="$url" target=\'_blank\' style="$fontcolor;font-size:13px;">$title</a>$new$hot</span>                     \r\n    <span style="float:right;color:#993300;padding-right:3px;font-size:13px;">[{$time_m}-{$time_d}]</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:28:"/common_fname/time_fname.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"32";s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:10:"A.posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:1:"1";s:7:"rowspan";s:1:"5";s:3:"sql";s:141:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (32)  AND A.mid=\'0\'   ORDER BY A.posttime DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"48";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"467";s:5:"div_h";s:3:"126";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240280500, 0, 0, 0, 0, 'default'),
	(314, '', 0, 0, '1236087504', 'article', 1, 'a:28:{s:3:"SYS";s:7:"artcile";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:2:"-1";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";s:1:"0";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:7:"default";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:54:" SELECT A.* FROM qb_article A  WHERE A.yz=1   LIMIT 5 ";s:4:"sql2";s:0:"";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:0:"";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:0:"";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 1, ''),
	(316, 'tretre', 0, 0, '1236087539', 'article', 1, 'a:28:{s:3:"SYS";s:7:"artcile";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:2:"-1";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";s:1:"0";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:7:"default";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:54:" SELECT A.* FROM qb_article A  WHERE A.yz=1   LIMIT 5 ";s:4:"sql2";s:0:"";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:0:"";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:0:"";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 1, ''),
	(317, '', 1, 0, 'Title05', 'code', 0, '商城购物', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239778992, 0, 0, 0, 0, 'default'),
	(319, '', 1, 0, 'b022', 'form', 1, 'a:31:{s:9:"tplpart_1";s:521:"<table width="100%" border="0" cellspacing="1" cellpadding="3" style="border-bottom:1px dotted #eee;">\r\n        <tr align="center"> \r\n          \r\n    <td width="36%" align="left">&nbsp;$workplace</td>\r\n          <td width="13%">$schoo_age</td>\r\n          <td width="14%">$asksex</td>\r\n          <td width="13%">$wageyear</td>\r\n          <td width="13%">$wage</td>\r\n          \r\n    <td width="11%"><a href="$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id" target="_blank">详情</a></td>\r\n        </tr> \r\n      </table>";s:13:"tplpart_1code";s:521:"<table width="100%" border="0" cellspacing="1" cellpadding="3" style="border-bottom:1px dotted #eee;">\r\n        <tr align="center"> \r\n          \r\n    <td width="36%" align="left">&nbsp;$workplace</td>\r\n          <td width="13%">$schoo_age</td>\r\n          <td width="14%">$asksex</td>\r\n          <td width="13%">$wageyear</td>\r\n          <td width="13%">$wage</td>\r\n          \r\n    <td width="11%"><a href="$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id" target="_blank">详情</a></td>\r\n        </tr> \r\n      </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"form";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:1:"2";s:7:"tplpath";s:17:"/form/givejob.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:3:"all";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";N;s:3:"asc";s:4:"DESC";s:6:"levels";N;s:7:"rowspan";s:1:"4";s:3:"sql";s:195:" SELECT A.*,R.*,config AS M_config FROM qb_form_content A LEFT JOIN qb_form_content_2 R ON A.id=R.id LEFT JOIN qb_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'2\'  ORDER BY A.id DESC  LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:0:"";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:0:"";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"485";s:5:"div_h";s:2:"70";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240899392, 0, 0, 0, 0, 'default'),
	(322, '', 1, 0, 'bodyad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:11:"ad/cnad.jpg";s:7:"imglink";s:22:"http://www.qibosoft.com/";s:5:"width";s:3:"742";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:3:"742";s:5:"div_h";s:2:"90";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239759405, 0, 0, 0, 0, 'default'),
	(323, '', 1, 0, 'Title4d', 'code', 0, '搜索引擎之PK战', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1237278157, 0, 0, 0, 0, 'default'),
	(324, '', 1, 0, 'c2d', 'hack_vote', 0, '<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=10\'></SCRIPT>', 'a:4:{s:6:"voteid";s:2:"10";s:5:"div_w";s:3:"237";s:5:"div_h";s:3:"145";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239011013, 0, 0, 0, 0, 'default'),
	(325, '', 1, 0, 'Title5d', 'code', 0, '2008年中国站长八大热门', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240113989, 0, 0, 0, 0, 'default'),
	(326, '', 1, 0, 'b2d', 'hack_vote', 0, '<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=11\'></SCRIPT>', 'a:4:{s:6:"voteid";s:2:"11";s:5:"div_w";s:3:"480";s:5:"div_h";s:3:"238";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239011483, 0, 0, 0, 0, 'default'),
	(327, '', 1, 0, 'c02d', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:476:"<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin:3px 0px 12px 0px;">\r\n  <tr> \r\n    <td rowspan="2" width="4%" style="padding-right:3px;"><a href="$url" target="_blank"><img src="$picurl" width="100" height="75" border="0"></a></td>\r\n    <td width="96%"> <a href="$url" target="_blank" style="color:#666;font-weight:bold;">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width="96%" style="color:#929292;text-indent:1em;">$content</td>\r\n  </tr>\r\n</table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"34";s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:211:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (34)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.aid DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"58";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"18";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"230";s:5:"div_h";s:3:"238";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240060985, 0, 0, 0, 0, 'default'),
	(328, '', 1, 0, 'Title04d', 'code', 0, '推荐图文', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"215";s:5:"div_h";s:2:"26";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239345594, 0, 0, 0, 0, 'default'),
	(329, '', 1, 0, 'c2de', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20090420130440_bWzOZ.jpg";s:7:"imglink";s:19:"http://www.371.com/";s:5:"width";s:3:"242";s:6:"height";s:2:"98";}', 'a:3:{s:5:"div_w";s:3:"233";s:5:"div_h";s:2:"87";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240205249, 0, 0, 0, 0, 'default'),
	(347, '', 0, 0, 'show_right_top_picad', 'code', 0, '<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"290";s:5:"div_h";s:3:"110";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240893892, 3, 0, 0, 0, 'default'),
	(469, '', 1, 0, 'index_ad4', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101027171018_bzfar.gif";s:7:"imglink";s:21:"http://www.eydns.com/";s:5:"width";s:3:"220";s:6:"height";s:2:"50";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292642613, 0, 0, 0, 0, 'default'),
	(348, '', 0, 0, 'show_topad', 'code', 0, '<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"990";s:5:"div_h";s:2:"60";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240893880, 3, 0, 0, 0, 'default'),
	(349, '', 0, 0, 'list_page_topad', 'code', 0, '<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=list_page_topad\'></SCRIPT>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"290";s:5:"div_h";s:3:"130";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240893815, 2, 0, 0, 0, 'default'),
	(350, '', 0, 0, 'article_list', 'code', 0, '<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"273";s:5:"div_h";s:2:"56";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292548963, 2, 0, 0, 0, 'default'),
	(351, '', 0, 0, 'article_list_tag', 'code', 0, '广告位', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239279418, 2, 0, 0, 0, 'default'),
	(356, '', 0, 0, 'bbsifmark_tag', 'code', 0, '论坛优秀贴', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(354, '', 0, 0, 'article_show', 'code', 0, '<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240893904, 3, 0, 0, 0, 'default'),
	(355, '', 0, 0, 'article_show_tag', 'code', 0, '广告位', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1239279430, 3, 0, 0, 0, 'default'),
	(358, '', 0, 0, 'view_article_bbs_tag', 'code', 0, '论坛推荐图文', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 3, 0, 0, 0, 'default'),
	(360, '', 1, 0, 'bodyad33', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20090418150428_gPa47.jpg";s:7:"imglink";s:22:"http://www.yeepay.com/";s:5:"width";s:3:"243";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:3:"243";s:5:"div_h";s:2:"90";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240041136, 0, 0, 0, 0, 'default'),
	(468, '', 1, 0, 'index_ad3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101027171006_q2b2q.gif";s:7:"imglink";s:18:"http://www.sudu.cn";s:5:"width";s:3:"220";s:6:"height";s:2:"50";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292642635, 0, 0, 0, 0, 'default'),
	(465, '', 1, 0, 'index_ad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101109141123_k355a.jpg";s:7:"imglink";s:36:"http://www.chinaccnet.com/hyperv.php";s:5:"width";s:3:"740";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"737";s:5:"div_h";s:2:"67";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291714552, 0, 0, 0, 0, 'default'),
	(466, '', 1, 0, 'index_ad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101109141150_bnrt2.jpg";s:7:"imglink";s:22:"http://www.yeepay.com/";s:5:"width";s:3:"240";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"240";s:5:"div_h";s:2:"68";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289462758, 0, 0, 0, 0, 'default'),
	(467, '', 1, 0, 'index_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"266";s:6:"height";s:3:"236";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101109141150_sfgyo.jpg";i:2;s:32:"label/1_20101109141154_f28xx.jpg";}s:7:"piclink";a:2:{i:1;s:19:"http://www.sudu.cn/";i:2;s:26:"http://www.chinaccnet.com/";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"265";s:5:"div_h";s:3:"232";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292642100, 0, 0, 0, 0, 'default'),
	(373, '', 1, 99, 'head_guides', 'code', 0, '      <div class="ico_guide bbs"><a href="http://www_qibosoft_com/bbs/" target=\'_blank\'>社区</a></div>\r\n	  <div class="ico_guide post"><a href="http://www_qibosoft_com/do/post.php">投稿</a></div>\r\n	  <div class="ico_guide sell"><a href="http://www_qibosoft_com/do/buymoneycard.php?paytype=yeepay">充值</a></div>\r\n	  <div class="ico_guide jf"><a href="http://www_qibosoft_com/do/jf.php">积分</a></div>\r\n	  <div class="ico_guide user"><a href="http://www_qibosoft_com/do/list_form.php?mid=2">招聘</a></div>\r\n	  <div class="ico_guide search"><a href="http://www_qibosoft_com/do/search.php">搜索</a></div>\r\n	  <div class="ico_guide book"><a href="http://www_qibosoft_com/do/guestbook.php">留言</a></div>\r\n	  <div class="ico_guide digg"><a href="http://www_qibosoft_com/do/listsp.php?fid=1">专题</a></div>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"700";s:5:"div_h";s:2:"50";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240898798, 0, 0, 0, 0, 'default'),
	(383, '', 0, 0, 'list_page_mv', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:195:"(mv,290,210,false)$mvurl(/mv)\r\n<div style="line-height:170%;text-align:center;padding-top:8px;"><A HREF="$url" target=\'_blank\'  style="$fontcolor;$fontweight" title=\'$full_title\'>$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 1, 0, 'default'),
	(375, '', 0, 0, 'list_top_ad', 'code', 0, '<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"900";s:5:"div_h";s:2:"51";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240893857, 2, 0, 0, 0, 'default'),
	(376, '', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:149:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;">&nbsp;<A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:30:"/common_title/1title_noico.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240201322, 11, 0, 24, 0, 'default'),
	(377, '', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:24:"/common_title/0title.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 23, 0, 'default'),
	(378, '', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(379, '', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(380, '', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(381, '', 0, 0, 'mvshow', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:144:"(mv,400,300,false)$mvurl(/mv)<div style="padding:8px 0 10px 0;"> <A HREF="$url" target=\'_blank\'  style="font-size:14px;"><b>$title</b></a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 19, 0, 'default'),
	(384, '', 0, 0, 'list_page_mv', 'article', 1, 'a:31:{s:13:"tplpart_1code";s:195:"(mv,290,210,false)$mvurl(/mv)\r\n<div style="line-height:170%;text-align:center;padding-top:8px;"><A HREF="$url" target=\'_blank\'  style="$fontcolor;$fontweight" title=\'$full_title\'>$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"A.aid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1240292096, 2, 0, 0, 0, 'default'),
	(385, '', 1, 0, 'showinfo', 'code', 0, '<SCRIPT LANGUAGE="JavaScript">\r\n<!--\r\ndocument.write(\'<span id="num_info"><img alt="内容加载中,请稍候..." src="http://www_qibosoft_com/images/default/ico_loading3.gif"></span>\');\r\ndocument.write(\'<div style="display:none;"><iframe src="http://www_qibosoft_com/do/job.php?job=getinfo&iframeID=num_info" width=0 height=0></iframe></div>\');\r\n//-->\r\n</SCRIPT>', 'a:4:{s:9:"html_edit";s:0:"";s:5:"div_w";s:3:"235";s:5:"div_h";s:2:"55";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1241074422, 0, 0, 0, 0, 'default'),
	(387, '', 0, 0, 'blog_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"310";s:6:"height";s:3:"200";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101108091153_pfput.jpg";i:2;s:32:"label/1_20101108091131_uive7.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289180839, 0, 25, 0, 0, 'default'),
	(388, '', 0, 0, 'blog_hot', 'blog_log', 1, 'a:24:{s:9:"tplpart_1";s:234:" <div class="list"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" class="t$i" target="_blank">$title</a><a href="$webdb[www_url]/blog/?uid=$uid" class="user" target="_blank">$username</a></div>\r\n                ";s:13:"tplpart_1code";s:234:" <div class="list"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" class="t$i" target="_blank">$title</a><a href="$webdb[www_url]/blog/?uid=$uid" class="user" target="_blank">$username</a></div>\r\n                ";s:13:"tplpart_2code";s:0:"";s:13:"RollStyleType";s:0:"";s:3:"url";s:59:"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id";s:5:"width";s:0:"";s:6:"height";s:0:"";s:11:"content_num";s:2:"80";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:8:"posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:76:" SELECT * FROM qb_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";s:9:"titlenum2";s:0:"";s:12:"content_num2";s:0:"";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289182107, 0, 25, 0, 0, 'default'),
	(389, '', 0, 0, 'blog_topic', 'blog_log', 1, 'a:24:{s:9:"tplpart_1";s:446:"<div class="list$i">\r\n            	<div class="title"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target=\'_blank\'>$title</a></div>\r\n                <div class="user"><a href="$webdb[www_url]/blog/?uid=$uid">$username</a></div>\r\n                <div class="content">　{$content}...<a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target=\'_blank\'>[详细]</a>\r\n                </div>\r\n            </div>";s:13:"tplpart_1code";s:446:"<div class="list$i">\r\n            	<div class="title"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target=\'_blank\'>$title</a></div>\r\n                <div class="user"><a href="$webdb[www_url]/blog/?uid=$uid">$username</a></div>\r\n                <div class="content">　{$content}...<a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target=\'_blank\'>[详细]</a>\r\n                </div>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:13:"RollStyleType";s:0:"";s:3:"url";s:59:"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id";s:5:"width";s:0:"";s:6:"height";s:0:"";s:11:"content_num";s:3:"110";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:8:"posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:76:" SELECT * FROM qb_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 5 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";s:9:"titlenum2";s:0:"";s:12:"content_num2";s:0:"";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289186800, 0, 25, 0, 0, 'default'),
	(390, '', 0, 0, 'blog_member1', 'Info_blog_', 1, 'a:28:{s:13:"tplpart_1code";s:406:"<div class="listblog">\r\n                	<a href="$webdb[www_url]/blog/?uid=$uid" target="_blank" class="pic"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/noface.gif\'" width="45" height="45" /></a>\r\n                    <a href="$webdb[www_url]/blog/?uid=$uid" target="_blank" class="name">$title</a>\r\n                    <span>浏览量:<em>$hits</em>次</span>\r\n                </div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"blog";s:6:"wninfo";s:5:"blog_";s:6:"cityId";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"p";s:2:"yz";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:158:"SELECT M.*,B.*,B.webname AS title,M.uid AS id,M.icon AS picurl FROM qb_blog_home B LEFT JOIN qb_memberdata M ON B.uid=M.uid  WHERE 1  ORDER BY 1 DESC LIMIT 8 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"20";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289186011, 0, 25, 0, 0, 'default'),
	(392, '', 0, 0, 'blog_member2', 'Info_blog_', 1, 'a:28:{s:13:"tplpart_1code";s:554:"<div class="listReporter">\r\n                	<a href="$webdb[www_url]/blog/?uid=$uid" target="_blank" class="pic"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/noface.gif\'" width="70" height="70" /></a>\r\n                	<a href="$webdb[www_url]/blog/?uid=$uid" target="_blank" class="name">$title</a>\r\n                    <span>浏览量:<em>$hits</em>次</span>\r\n                    <span><a href="$webdb[www_url]/blog/?uid=$uid" target="_blank"><img src="$webdb[www_url]/images/v7/blog/view.gif"/></a></span>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"blog";s:6:"wninfo";s:5:"blog_";s:6:"cityId";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"p";s:2:"yz";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:5:"B.uid";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:161:"SELECT M.*,B.*,B.webname AS title,M.uid AS id,M.icon AS picurl FROM qb_blog_home B LEFT JOIN qb_memberdata M ON B.uid=M.uid  WHERE 1  ORDER BY B.uid ASC LIMIT 3 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"20";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289186087, 0, 25, 0, 0, 'default'),
	(393, '', 0, 0, 'blog_title1', 'blog_log', 1, 'a:24:{s:9:"tplpart_1";s:152:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span><a href="$webdb[www_url]/blog/?uid=$uid" target="_blank">$username</a></span></div>";s:13:"tplpart_1code";s:207:"<div class="list l$i"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target="_blank">$title</a><span><a href="$webdb[www_url]/blog/?uid=$uid" target="_blank">$username</a></span></div>";s:13:"tplpart_2code";s:0:"";s:13:"RollStyleType";s:0:"";s:3:"url";s:59:"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id";s:5:"width";s:0:"";s:6:"height";s:0:"";s:11:"content_num";s:2:"80";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:8:"posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:76:" SELECT * FROM qb_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 8 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";s:9:"titlenum2";s:0:"";s:12:"content_num2";s:0:"";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(394, '', 0, 0, 'blog_title2', 'blog_log', 1, 'a:24:{s:9:"tplpart_1";s:146:" <div class="list"><a href="$url" target="_blank">$title</a><a href="$webdb[www_url]/blog/?uid=$uid" class="u" target="_blank">$username</a></div>";s:13:"tplpart_1code";s:201:" <div class="list"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target="_blank">$title</a><a href="$webdb[www_url]/blog/?uid=$uid" class="u" target="_blank">$username</a></div>";s:13:"tplpart_2code";s:0:"";s:13:"RollStyleType";s:0:"";s:3:"url";s:59:"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id";s:5:"width";s:0:"";s:6:"height";s:0:"";s:11:"content_num";s:2:"80";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:8:"posttime";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:75:" SELECT * FROM qb_blog_log_article  WHERE 1  ORDER BY posttime ASC LIMIT 7 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";s:9:"titlenum2";s:0:"";s:12:"content_num2";s:0:"";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(395, '', 0, 0, 'blog_title3', 'blog_log', 1, 'a:24:{s:9:"tplpart_1";s:146:" <div class="list"><a href="$url" target="_blank">$title</a><a href="$webdb[www_url]/blog/?uid=$uid" class="u" target="_blank">$username</a></div>";s:13:"tplpart_1code";s:201:" <div class="list"><a href="$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id" target="_blank">$title</a><a href="$webdb[www_url]/blog/?uid=$uid" class="u" target="_blank">$username</a></div>";s:13:"tplpart_2code";s:0:"";s:13:"RollStyleType";s:0:"";s:3:"url";s:59:"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id";s:5:"width";s:0:"";s:6:"height";s:0:"";s:11:"content_num";s:2:"80";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:8:"posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:76:" SELECT * FROM qb_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 7 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";s:9:"titlenum2";s:0:"";s:12:"content_num2";s:0:"";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(396, '', 0, 0, 'blog_photo1', 'blog_photo', 1, 'a:24:{s:9:"tplpart_1";s:255:"<div class="listpic"> <a href="$url" class="pic" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90" /></a> \r\n              <a href="$url" class="title" target="_blank">$title</a> </div>";s:13:"tplpart_1code";s:369:"<div class="listpic"> <a href="$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id" class="pic" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90" /></a> \r\n              <a href="$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id" class="title" target="_blank">$title</a> </div>";s:13:"tplpart_2code";s:0:"";s:13:"RollStyleType";s:0:"";s:3:"url";s:61:"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id";s:5:"width";s:0:"";s:6:"height";s:0:"";s:11:"content_num";s:2:"80";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:8:"posttime";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:74:" SELECT * FROM qb_blog_photo_pic  WHERE 1  ORDER BY posttime DESC LIMIT 4 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"20";s:10:"titleflood";s:1:"0";s:9:"titlenum2";s:0:"";s:12:"content_num2";s:0:"";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(397, '', 0, 0, 'blog_t1', 'code', 0, '热门日志', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(398, '', 0, 0, 'blog_t2', 'code', 0, '推荐图片', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(399, '', 0, 0, 'blog_t3', 'code', 0, '推荐博客', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(400, '', 0, 0, 'blog_t4', 'code', 0, '博文共欣', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(401, '', 0, 0, 'blog_t5', 'code', 0, '<a href="log.php?fid=1" class="F14">健康</a> | <a href="log.php?fid=2" class="F14">美食</a> | <a href="log.php?fid=3" class="F14">旅游</a> <a href="log.php" class="more">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"200";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190367, 0, 25, 0, 0, 'default'),
	(402, '', 0, 0, 'blog_t6', 'code', 0, '精彩日志', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(403, '', 0, 0, 'blog_t7', 'code', 0, '<a  href="log.php?fid=1">社会民生</a> | <a href="log.php?fid=2">情感生活</a> <a href="log.php" class="more" target="_blank">更多...</a>\r\n\r\n', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"150";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190226, 0, 25, 0, 0, 'default'),
	(404, '', 0, 0, 'blog_t8', 'code', 0, '最新博客', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 25, 0, 0, 'default'),
	(405, '', 0, 0, 'blog_t9', 'code', 0, '<a href="photo.php" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190131, 0, 25, 0, 0, 'default'),
	(406, '', 0, 0, 'blog_t10', 'code', 0, '<a href="member.php" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190119, 0, 25, 0, 0, 'default'),
	(407, '', 0, 0, 'blog_t11', 'code', 0, '<a href="member.php" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190100, 0, 25, 0, 0, 'default'),
	(408, '', 0, 0, 'blog_b1', 'code', 0, '<span class="l FB">健康</span><span class="r"><a href="log.php?fid=1">更多...</a></span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190307, 0, 25, 0, 0, 'default'),
	(409, '', 0, 0, 'blog_b2', 'code', 0, '<span class="l FB">美食</span><span class="r"><a href="log.php?fid=2">更多...</a></span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289190336, 0, 25, 0, 0, 'default'),
	(410, '', 0, 0, 'exam_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"300";s:6:"height";s:3:"160";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101108131113_7mfrt.jpg";i:2;s:32:"label/1_20101108131123_dyfe2.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(411, '', 0, 0, 'exam_top1', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:185:"<div class="uu$i"><span class="L"><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a></span><span class="R">{$time_Y}-{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:162:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 10 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"50";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"400";s:5:"div_h";s:3:"250";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366253, 0, 17, 0, 0, 'default'),
	(412, '', 0, 0, 'exam_top2', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:113:"<div class="lista$i"><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"11";s:3:"sql";s:162:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 11 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"40";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"400";s:5:"div_h";s:3:"150";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366296, 0, 17, 0, 0, 'default'),
	(413, '', 0, 0, 'exam_top3', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:134:"<div class="list$i"><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:162:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 10 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"28";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366305, 0, 17, 0, 0, 'default'),
	(414, '', 0, 0, 'exam_a1', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:112:"<div class="list$i"><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:161:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366363, 0, 17, 0, 0, 'default'),
	(415, '', 0, 0, 'exam_a2', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:112:"<div class="list$i"><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:161:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"230";s:5:"div_h";s:3:"112";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366375, 0, 17, 0, 0, 'default'),
	(416, '', 0, 0, 'exam_a3', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:231:"<div class="list"><a href="$webdb[www_url]/exam/list.php?fid=$fid" class="s" target="_blank">[{$fname}]</a><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a><span>{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:161:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366339, 0, 17, 0, 0, 'default'),
	(417, '', 0, 0, 'exam_a4', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:231:"<div class="list"><a href="$webdb[www_url]/exam/list.php?fid=$fid" class="s" target="_blank">[{$fname}]</a><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a><span>{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:161:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366351, 0, 17, 0, 0, 'default'),
	(418, '', 0, 0, 'exam_a5', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:231:"<div class="list"><a href="$webdb[www_url]/exam/list.php?fid=$fid" class="s" target="_blank">[{$fname}]</a><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a><span>{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:161:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366399, 0, 17, 0, 0, 'default'),
	(419, '', 0, 0, 'exam_a6', 'Info_exam_', 1, 'a:27:{s:13:"tplpart_1code";s:231:"<div class="list"><a href="$webdb[www_url]/exam/list.php?fid=$fid" class="s" target="_blank">[{$fname}]</a><a href="$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id" target="_blank">$title</a><span>{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:4:"exam";s:6:"wninfo";s:5:"exam_";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:1:"1";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:161:"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM qb_exam_form A LEFT JOIN qb_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289366390, 0, 17, 0, 0, 'default'),
	(420, '', 0, 0, 'exam_q1', 'code', 0, '	<a href="#">辅导</a> | <a href="#">模拟考场</a> | <a href="#">网校</a> | <a href="#">真题</a> | <a href="#">百科</a> | <a href="#">招聘</a> | <a href="#">更多&gt;&gt;</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(421, '', 0, 0, 'exam_q2', 'code', 0, '	<a href="#">辅导</a> | <a href="#">模拟考场</a> | <a href="#">网校</a> | <a href="#">真题</a> | <a href="#">百科</a> | <a href="#">招聘</a> | <a href="#">更多&gt;&gt;</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(422, '', 0, 0, 'exam_q3', 'code', 0, '	<a href="#">辅导</a> | <a href="#">模拟考场</a> | <a href="#">网校</a> | <a href="#">真题</a> | <a href="#">百科</a> | <a href="#">招聘</a> | <a href="#">更多&gt;&gt;</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(423, '', 0, 0, 'exam_q4', 'code', 0, '<a href="#">辅导</a> | <a href="#">模拟考场</a> | <a href="#">网校</a> | <a href="#">真题</a> | <a href="#">百科</a> | <a href="#">招聘</a> | <a href="#">更多&gt;&gt;</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(424, '', 0, 0, 'exam_tt1', 'code', 0, '计算机1级考试', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(425, '', 0, 0, 'exam_tt2', 'code', 0, '计算机2级考试', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(426, '', 0, 0, 'exam_tt3', 'code', 0, '计算机3级考试', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(427, '', 0, 0, 'exam_tt4', 'code', 0, '计算机4级考试', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(428, '', 0, 0, 'exam_tt5', 'code', 0, '计算机等级考试', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(429, '', 0, 0, 'exam_tt6', 'code', 0, '	<a href="#">一级</a> | <a href="#">二级</a> | <a href="#">三级</a> | <a href="#">四级</a> | <a href="#">视频教程</a> | <a href="#">试题辅导</a> | <a href="#">复习资料</a> | <a href="#">相关下载</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(430, '', 0, 0, 'exam_tt7', 'code', 0, '推荐试题', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(431, '', 0, 0, 'exam_tt8', 'code', 0, '最近更新', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(432, '', 0, 0, 'exam_tt9', 'code', 0, '<a href="#">更多</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(433, '', 0, 0, 'exam_tt10', 'code', 0, '试卷关注排行', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289280336, 0, 17, 0, 0, 'default'),
	(434, '', 0, 0, 'exam_tt11', 'code', 0, '<a href="#">更多</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(435, '', 0, 0, 'exam_tt12', 'code', 0, '模拟试题一', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(436, '', 0, 0, 'exam_tt13', 'code', 0, '<a href="#">更多</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(437, '', 0, 0, 'exam_tt14', 'code', 0, '模拟试题二', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(438, '', 0, 0, 'exam_tt15', 'code', 0, '<a href="#">更多</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(439, '', 0, 0, 'exam_ad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101108161146_axggb.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"990";s:6:"height";s:2:"60";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(440, '', 0, 0, 'exam_ad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101108161103_n32j4.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"490";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(441, '', 0, 0, 'exam_ad3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101108161125_s7nrb.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"490";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(442, '', 0, 0, 'exam_top03', 'code', 0, '	<div class="list"><a href="#">2010会计证签约保</a></div>\r\n                        <div class="list"><a href="#">2010会计证签约保</a></div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 17, 0, 0, 'default'),
	(443, '', 0, 0, 'new_1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:257:"<div class="list$i">\r\n            	\r\n          <div class="title"><a href="$url" target="_blank">$title</a></div>\r\n                \r\n          <div class="content">{$content}...<a href="$url" target="_blank">[详细]</a> \r\n          </div>\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"110";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"390";s:5:"div_h";s:3:"250";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289208353, 2, 0, 0, 0, 'default'),
	(444, '', 0, 0, 'new_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"310";s:6:"height";s:3:"260";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101108161159_zs6we.jpg";i:2;s:32:"label/1_20101108171103_f9fvv.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(445, '', 0, 0, 'new_2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:105:"<div class="list"><em>$i</em><a href="$url" target="_blank">$title</a><span><a>{$hits}次</a></span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"32";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289206999, 2, 0, 0, 0, 'default'),
	(446, '', 0, 0, 'new_photo', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:274:"<div class="listpic">\r\n			 <a href="$url" class="pic" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90" /></a> \r\n              <a href="$url" class="title" target="_blank">$title</a> \r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(447, '', 0, 0, 'new_ps', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:536:"	<table width="100%" border="0" cellspacing="0" align="center" cellpadding="0" class="listtable">\r\n                  <tr>\r\n                    \r\n                <td class="pic"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="70" height="70" /></a></td>\r\n                    <td class="word">\r\n                    	<a href="$url" class="title">$title</a>\r\n                        $content\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:192:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"56";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289207490, 2, 0, 0, 0, 'default'),
	(448, '', 0, 0, 'new_p1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:110:"<div class="list_t_c"> <a href="$url" class="title" target="_blank">$title</a> \r\n              $content </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"120";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289207618, 2, 0, 0, 0, 'default'),
	(449, '', 0, 0, 'new_u1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:108:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289207819, 2, 0, 0, 0, 'default'),
	(450, '', 0, 0, 'new_p2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:108:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289207948, 2, 0, 0, 0, 'default'),
	(451, '', 0, 0, 'new_p3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:108:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(452, '', 0, 0, 'new_tt2', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(453, '', 0, 0, 'new_tt1', 'code', 0, '推荐阅读', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(454, '', 0, 0, 'new_tt3', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(455, '', 0, 0, 'new_tt4', 'code', 0, '今日推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(456, '', 0, 0, 'new_tt6', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(457, '', 0, 0, 'new_tt5', 'code', 0, '网友推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(458, '', 0, 0, 'new_tt8', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(459, '', 0, 0, 'new_tt7', 'code', 0, '民生话题', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(460, '', 0, 0, 'new_tt9', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(461, '', 0, 0, 'new_tt10', 'code', 0, '图片主题', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(462, '', 0, 0, 'new_tt11', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(463, '', 0, 0, 'new_tt12', 'code', 0, '社会聚焦', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(464, '', 0, 0, 'new_tt13', 'code', 0, '点击排行', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(473, '', 1, 0, 'index_hot1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:68:"<div class="listb$i"><a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"34";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"206";s:5:"div_h";s:3:"204";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289464370, 0, 0, 0, 0, 'default'),
	(474, '', 1, 0, 'index_t1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:249:"<div class="lista$i"> <span class="t"><a href="$url" target="_blank">$title</a></span> \r\n                <span class="d">[{$time_m}-{$time_d}]</span> <span class="c">　{$content}<a href="$url" target="_blank">[详情]</a></span> \r\n              </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"130";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"54";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"446";s:5:"div_h";s:3:"209";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291793386, 0, 0, 0, 0, 'default'),
	(475, '', 1, 0, 'index_t2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:308:"<div class="listpic">\r\n        	\r\n        <div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n            \r\n        <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n        </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"991";s:5:"div_h";s:3:"142";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289462842, 0, 0, 0, 0, 'default'),
	(476, '', 1, 0, 'index_down', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:90:"<div class="listc$i"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"206";s:5:"div_h";s:3:"254";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463083, 0, 0, 0, 0, 'default'),
	(477, '', 1, 0, 'index_j1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:219:"<div class="list$i">\r\n                    	<span class="t"><a href="$url" target="_blank">$title</a></span>\r\n                        <span class="c">&nbsp;&nbsp;&nbsp;&nbsp;{$content}.</span>\r\n                    </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"94";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"271";s:5:"div_h";s:3:"237";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289462968, 0, 0, 0, 0, 'default'),
	(478, '', 1, 0, 'index_j2', 'comment', 1, 'a:25:{s:9:"tplpart_1";s:283:"<div class="list"> <span class="t"><em>{$username}</em> 于 {$time_m}-{$time_d} \r\n                      00:54 对 <a href="#" target="_blank">$article</a></span> \r\n                      <span class="a">发表如下评论</span> <span class="c">{$title}...</span> \r\n                    </div>";s:13:"tplpart_1code";s:283:"<div class="list"> <span class="t"><em>{$username}</em> 于 {$time_m}-{$time_d} \r\n                      00:54 对 <a href="#" target="_blank">$article</a></span> \r\n                      <span class="a">发表如下评论</span> <span class="c">{$title}...</span> \r\n                    </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"comment";s:11:"roll_height";s:2:"50";s:3:"url";N;s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";N;s:3:"asc";N;s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:149:" SELECT A.*,A.content AS title,B.title AS article FROM qb_comment A LEFT JOIN qb_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 3 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:8:"titlenum";s:2:"50";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"407";s:5:"div_h";s:3:"194";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463071, 0, 0, 0, 0, 'default'),
	(479, '', 1, 0, 'index_j3', 'article', 1, 'a:33:{s:13:"tplpart_1code";s:501:"	<div class="listpic">\r\n                    \r\n              <div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n                    \r\n              <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="p"><strike>市场价:￥{$martprice}</strike></div>\r\n                    <div class="p"><em>现售价:￥{$nowprice}</em></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:7:"fidtype";s:1:"0";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"103";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:134:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"739";s:5:"div_h";s:3:"180";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292549169, 0, 0, 0, 0, 'default'),
	(480, '', 1, 0, 'index_member', 'member', 1, 'a:20:{s:9:"tplpart_1";s:429:"<div class="listuser">\r\n                	\r\n                <div class="img"><a href="$webdb[www_url]/member/homepage.php?uid=$uid" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nobody.gif\'" width="50" height="50"/></a></div>\r\n                	\r\n                <div class="name"><a href="$webdb[www_url]/member/homepage.php?uid=$uid" target="_blank">$title</a></div>\r\n                </div>";s:13:"tplpart_1code";s:429:"<div class="listuser">\r\n                	\r\n                <div class="img"><a href="$webdb[www_url]/member/homepage.php?uid=$uid" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nobody.gif\'" width="50" height="50"/></a></div>\r\n                	\r\n                <div class="name"><a href="$webdb[www_url]/member/homepage.php?uid=$uid" target="_blank">$title</a></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:7:"group_1";s:0:"";s:7:"group_2";s:0:"";s:13:"RollStyleType";s:0:"";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:7:"regdate";s:3:"asc";s:3:"ASC";s:6:"levels";N;s:7:"rowspan";s:1:"9";s:3:"sql";s:134:" SELECT D.*,D.username AS title,D.icon AS picurl,D.introduce AS content FROM qb_memberdata D  WHERE 1  ORDER BY D.regdate ASC LIMIT 9 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"20";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"223";s:5:"div_h";s:3:"252";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463337, 0, 0, 0, 0, 'default'),
	(481, '', 1, 0, 'index_c1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:101:"  <div class="list"><a href="$url" target="_blank">$title</a><span>[{$time_m}/{$time_d}]</span></div>";s:13:"tplpart_2code";s:741:"<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                          <tr>\r\n                            \r\n                    <td class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                                \r\n                      <div class="m">　　{$content}<a href="$url" target="_blank">[详细]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n               ";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_zh_content/zh_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";s:175:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"70";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"341";s:5:"div_h";s:3:"220";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463102, 0, 0, 0, 0, 'default'),
	(482, '', 1, 0, 'index_c2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:101:"  <div class="list"><a href="$url" target="_blank">$title</a><span>[{$time_m}/{$time_d}]</span></div>";s:13:"tplpart_2code";s:738:"<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                          <tr>                            \r\n                    <td class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                                \r\n                      <div class="m">　　{$content}<a href="$url" target="_blank">[详细]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n              ";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_zh_content/zh_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:162:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";s:174:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list ASC LIMIT 1 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"70";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"346";s:5:"div_h";s:3:"229";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463328, 0, 0, 0, 0, 'default'),
	(483, '', 1, 0, 'index_cc1', 'code', 0, '<span>IT业界</span><a href="#">更多&gt;&gt;</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(484, '', 1, 0, 'index_cc2', 'code', 0, '<span>社会民生</span><a href="#">更多&gt;&gt;</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(485, '', 1, 0, 'index_digg', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:587:"<table width="100%" border="0" cellspacing="0" cellpadding="0" class="listConcern">\r\n                  <tr>\r\n                    <td class="L"><div class="n" id="DiggNum_$id">$digg_num</div><div class="d"><a href="$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id" target="DiggIframe_$id">顶一下</a></div></td>\r\n                    <td class="R"><a href="$url" class="a$i" target="_blank">$title</a></td>\r\n                  </tr>\r\n                </table>\r\n<div style="display:none;"><iframe src="about:blank" width=0 height=0 name="DiggIframe_$id" id="DiggIframe_$id"></iframe></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:22:"/article/title_dig.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"223";s:5:"div_h";s:3:"232";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463372, 0, 0, 0, 0, 'default'),
	(487, '', 1, 0, 'index_pk', 'hack_vote', 0, '<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=10\'></SCRIPT>', 'a:4:{s:6:"voteid";s:2:"10";s:5:"div_w";s:3:"253";s:5:"div_h";s:3:"163";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463349, 0, 0, 0, 0, 'default'),
	(486, '', 1, 0, 'index_tr1', 'specialsort', 1, 'a:35:{s:9:"tplpart_1";s:370:"<div class="listzt">\r\n        	<div class="img"><a target="_blank" href="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="160"/></a></div>\r\n            <div class="t"><a target="_blank" href="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id">$title</a></div>\r\n        </div>";s:13:"tplpart_1code";s:370:"<div class="listzt">\r\n        	<div class="img"><a target="_blank" href="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="160"/></a></div>\r\n            <div class="t"><a target="_blank" href="$webdb[www_url]/do/showsp.php?fid=$fid&id=$id">$title</a></div>\r\n        </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:11:"specialsort";s:13:"RollStyleType";s:0:"";s:11:"roll_height";s:2:"50";s:3:"url";s:45:"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:3:"fid";s:0:"";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"amodule";N;s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";N;s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:4:"list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:106:" SELECT A.* FROM qb_special A  WHERE `ifbase`=0 AND yz=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";s:0:"";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:0:"";s:8:"titlenum";s:2:"28";s:9:"titlenum2";s:0:"";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"985";s:5:"div_h";s:3:"208";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289867209, 0, 0, 0, 0, 'default'),
	(488, '', 1, 0, 'index_tr01', 'code', 0, '<table border="0" cellspacing="0" cellpadding="0">\r\n          <tr>\r\n            <td class="choose"><a href="#" class="nbor">文章</a></td>\r\n            <td><a href="#" class="nbor">图片</a></td>\r\n            <td><a href="#">影视</a></td>\r\n            <td><a href="#">商场</a></td>\r\n            <td><a href="#">flash</a></td>\r\n          </tr>\r\n        </table> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"670";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289292242, 0, 0, 0, 0, 'default'),
	(489, '', 1, 0, 'index_vote2', 'hack_vote', 0, '<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=12\'></SCRIPT>', 'a:4:{s:6:"voteid";s:2:"12";s:5:"div_w";s:3:"444";s:5:"div_h";s:3:"227";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289463384, 0, 0, 0, 0, 'default'),
	(490, '', 0, 0, 'wn_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"280";s:6:"height";s:3:"190";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101109181105_gzaok.jpg";i:2;s:32:"label/1_20101109181113_fwdej.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(491, '', 0, 0, 'wn_topic1', 'Info_wn_', 1, 'a:29:{s:13:"tplpart_1code";s:128:"<div class="list"><a href="$list_url" class="sort" target="_blank">[{$fname}]</a><a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:0:"";s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:73:" SELECT A.* FROM qb_wn_content A   WHERE 1  ORDER BY A.list DESC LIMIT 8 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289303057, 0, 26, 0, 0, 'default'),
	(492, '', 0, 0, 'wn_tg1', 'Info_wn_', 1, 'a:30:{s:13:"tplpart_1code";s:262:"<div class="list$i"> <span class="d">{$time_y}/{$time_m}/{$time_d}</span> <span class="t"><a href="$url" target="_blank">$title</a></span> \r\n                <span class="c">　　{$content}<a href="$url" target="_blank">[查看全文]</a></span> \r\n              </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:3:"190";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"c";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:133:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"40";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289305481, 0, 26, 0, 0, 'default'),
	(493, '', 0, 0, 'wn_tg2', 'Info_wn_', 1, 'a:30:{s:13:"tplpart_1code";s:83:"<div class="list"><a href="$url" target="_blank">$title</a><span>09-14</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:133:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"36";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(494, '', 0, 0, 'wn_tg3', 'Info_wn_', 1, 'a:30:{s:13:"tplpart_1code";s:65:"<div class="list"><a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"12";s:3:"sql";s:133:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 12 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289305655, 0, 26, 0, 0, 'default'),
	(495, '', 0, 0, 'wn_tg4', 'Info_wn_', 1, 'a:30:{s:13:"tplpart_1code";s:328:"<div class="listpic">\r\n                	\r\n              <div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n                    <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"p";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:141:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE A.ispic=1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(496, '', 0, 0, 'wn_tg01', 'Info_wn_', 1, 'a:30:{s:13:"tplpart_1code";s:235:"<div class="list$i">\r\n                	\r\n              <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="m">点击:<span>$hits</span> 评论:<span>$comments</span></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:133:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(497, '', 0, 0, 'wn_tgh1', 'Info_wn_', 1, 'a:30:{s:13:"tplpart_1code";s:196:"<div class="listtc">\r\n                	\r\n              <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="c">　　$content</div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"66";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"c";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:133:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289306541, 0, 26, 0, 0, 'default'),
	(498, '', 0, 0, 'wn_tgh2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101109201135_eoslv.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"240";s:6:"height";s:2:"50";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(499, '', 0, 0, 'wn_ptg4', 'Info_wn_', 1, 'a:32:{s:13:"tplpart_1code";s:156:" <div class="list"><a href="$url" class="sort" target="_blank">[{$fname}]</a><a href="$url" target="_blank">$title</a><span>{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:682:"	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pic_word">\r\n                      <tr>\r\n                        \r\n                  <td class="pic"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60"/></a></td>\r\n                        <td class="word">\r\n                        	\r\n                    <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    		\r\n                    <div class="c">　$content<a href="$url" target="_blank">[查看全文]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"70";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:25:"/common_zh_pic/zh_pic.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"t";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:133:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";s:147:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289308003, 0, 26, 0, 0, 'default'),
	(500, '', 0, 0, 'wn_ptg5', 'Info_wn_', 1, 'a:32:{s:13:"tplpart_1code";s:156:" <div class="list"><a href="$url" class="sort" target="_blank">[{$fname}]</a><a href="$url" target="_blank">$title</a><span>{$time_m}-{$time_d}</span></div>";s:13:"tplpart_2code";s:682:"	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="pic_word">\r\n                      <tr>\r\n                        \r\n                  <td class="pic"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60"/></a></td>\r\n                        <td class="word">\r\n                        	\r\n                    <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    		\r\n                    <div class="c">　$content<a href="$url" target="_blank">[查看全文]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>";s:3:"SYS";s:2:"wn";s:13:"RollStyleType";s:0:"";s:6:"wninfo";s:3:"wn_";s:7:"typefid";s:3:"fid";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"70";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:25:"/common_zh_pic/zh_pic.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";s:1:"1";s:5:"stype";s:1:"t";s:2:"yz";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:132:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 7 ";s:4:"sql2";s:146:"SELECT B.*,A.* FROM qb_wn_content A  LEFT JOIN qb_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(501, '', 0, 0, 'wn_tsf', 'code', 0, '<a href="#">经典文章</a> | <a href="#">伤感文章</a> | <a href="#">情感文章</a> &nbsp;&nbsp; <a href="#">>>更多</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"250";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289308157, 0, 26, 0, 0, 'default'),
	(502, '', 0, 0, 'wn_tp5', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(503, '', 0, 0, 'wn_tp3', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(504, '', 0, 0, 'wn_tp4', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(505, '', 0, 0, 'wn_tp2', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(506, '', 0, 0, 'wn_tp1', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(507, '', 0, 0, 'wn_g1', 'code', 0, '热门话题', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(508, '', 0, 0, 'wn_g3', 'code', 0, '最近更新', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(509, '', 0, 0, 'wn_g2', 'code', 0, '社会焦点', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(510, '', 0, 0, 'wn_g4', 'code', 0, '今日关注', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(511, '', 0, 0, 'wn_g6', 'code', 0, '民生话题', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(512, '', 0, 0, 'wn_g5', 'code', 0, '图片主题', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 26, 0, 0, 'default'),
	(513, '', 0, 0, 'photo_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"298";s:6:"height";s:3:"238";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101110141134_yuvgy.jpg";i:2;s:32:"label/1_20101110141112_eb6bm.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(514, '', 0, 0, 'photo_t1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:313:"	<div class="listpic">\r\n                	<div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="125" height="90"/></a></div>\r\n                    <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"100";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:134:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(515, '', 0, 0, 'photo_t2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:312:"<div class="listpic">\r\n                	<div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n                    <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"100";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"15";s:3:"sql";s:135:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(516, '', 0, 0, 'photo_t3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:68:"<div class="lista$i"><a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"100";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:105:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289374054, 2, 0, 0, 0, 'default'),
	(517, '', 0, 0, 'photo_t4', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:68:"<div class="listb$i"><a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"100";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"11";s:3:"sql";s:104:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list ASC LIMIT 11 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(518, '', 0, 0, 'photo_t6', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(519, '', 0, 0, 'photo_t5', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(520, '', 0, 0, 'photo_t7', 'code', 0, '热门图片', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(521, '', 0, 0, 'photo_t9', 'code', 0, '推荐图片', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(522, '', 0, 0, 'photo_t8', 'code', 0, '最近更新', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(523, '', 0, 0, 'photo_t10', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(524, '', 0, 0, 'photo_t11', 'code', 0, '<a href="#" class="sort choose"><span>国内</span></a>\r\n                <a href="#" class="sort"><span>国际</span></a>\r\n                <a href="#" class="sort"><span>女性</span></a>\r\n                <a href="#" class="sort"><span>娱乐时尚</span></a>\r\n                <a href="#" class="sort"><span>军事</span></a>\r\n                <a href="#" class="sort"><span>社会</span></a>\r\n                <a href="#" class="sort"><span>文化</span></a>\r\n                <a href="#" class="sort"><span>奇趣</span></a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(525, '', 0, 0, 'video_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"318";s:6:"height";s:3:"248";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101111111131_dupyp.jpg";i:2;s:32:"label/1_20101111111135_0n6tg.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(526, '', 0, 0, 'video_t1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:443:"<div class="listvideo">\r\n                	\r\n              <div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="150" height="100"/></a></div>\r\n                    \r\n              <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="m">评论:<span>$comments</span> 播放:<span>$hits</span>次</div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:134:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289446391, 2, 0, 0, 0, 'default'),
	(527, '', 0, 0, 'video_t2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:148:"<div class="list"><a href="$list_url" class="sort">[{$fname}]</a><a href="$url" class="title" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:104:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289449013, 2, 0, 0, 0, 'default'),
	(528, '', 0, 0, 'video_t3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:94:"<div class="lista$i"><a href="$url" target="_blank">$title</a>\r\n\r\n<span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:105:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289448993, 2, 0, 0, 0, 'default'),
	(529, '', 0, 0, 'video_h1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:673:"<table width="100%" border="0" cellspacing="0" cellpadding="0" class="listtable">\r\n                  <tr>\r\n                    \r\n                <td class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="100" height="75"/></a></td>\r\n                    <td class="word">\r\n                       \r\n                  <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                       <div class="m">播放:<span>$hits</span></div>\r\n                       <div class="m">评论:<span>$comments</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:134:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(530, '', 0, 0, 'video_h2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:415:"	<div class="listvideo">\r\n                	\r\n              <div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n                    \r\n              <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="m">播放:<span>$hits</span>次</div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"102";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"15";s:3:"sql";s:135:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289449096, 2, 0, 0, 0, 'default'),
	(531, '', 0, 0, 'video_c1', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(532, '', 0, 0, 'video_c2', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(533, '', 0, 0, 'video_c3', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(534, '', 0, 0, 'video_c5', 'code', 0, '影视热播', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(535, '', 0, 0, 'video_c7', 'code', 0, '精选视频', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(536, '', 0, 0, 'video_c9', 'code', 0, ' <a href="#" class="sort choose"><span>国内</span></a>\r\n                <a href="#" class="sort"><span>国际</span></a>\r\n                <a href="#" class="sort"><span>女性</span></a>\r\n                <a href="#" class="sort"><span>娱乐时尚</span></a>\r\n                <a href="#" class="sort"><span>军事</span></a>\r\n                <a href="#" class="sort"><span>社会</span></a>\r\n                <a href="#" class="sort"><span>文化</span></a>\r\n                <a href="#" class="sort"><span>奇趣</span></a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(537, '', 0, 0, 'video_c10', 'code', 0, '视频排行', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(538, '', 0, 0, 'video_ad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111121107_nd3ch.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"720";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(539, '', 0, 0, 'video_ad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111121116_80r2g.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"260";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(540, '', 0, 0, 'shops_rollpic', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"530";s:6:"height";s:3:"210";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101111141159_txw13.jpg";i:2;s:32:"label/1_20101111141105_k2yzk.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(541, '', 0, 0, 'shops_sort', 'code', 0, '	<dl>\r\n                	<dt><a href="list.php?fid=16" target="_blank">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href="list.php?fid=16" target="_blank">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href="list.php?fid=16" target="_blank">数码产品</a></dt>\r\n                    <dd>\r\n                    	<div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n                        <div><a href="list.php?fid=16" target="_blank">演示分类</a></div>\r\n						\r\n                    </dd>\r\n                </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(542, '', 0, 0, 'shops_p1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:504:"<div class="listshop">\r\n                	\r\n              		<div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n                    \r\n             		 <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="p">市场价<strike>￥{$martprice}</strike></div>\r\n                    <div class="p">现售价<span>￥{$nowprice}</span></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"103";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:134:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(543, '', 0, 0, 'shops_p2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:386:"<div class="listshop">\r\n                	<div class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="120" height="90"/></a></div>\r\n                    <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                    <div class="p">售价<span>￥{$nowprice}</span></div>\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"103";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:134:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list ASC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(544, '', 0, 0, 'shops_p3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:70:"<div class="list l$i"><a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(545, '', 0, 0, 'shops_p4', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:94:"<div class="list l1"><a href="$url" target="_blank">$title</a><span>{$hits}人关注</span></div>";s:13:"tplpart_2code";s:688:"<table width="100%" border="0" cellspacing="0" cellpadding="0" class="listt">\r\n                  <tr>\r\n                    \r\n                <td class="img"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60"/></a></td>\r\n                    <td class="word">\r\n                    	\r\n                  <div class="t"><a href="$url" target="_blank">$title</a></div>\r\n                        <div class="p">市场价<strike>￥{$martprice}</strike></div>\r\n                        <div class="p">现售价<span> ￥{$nowprice}</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"103";s:7:"tplpath";s:25:"/common_zh_pic/zh_pic.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"9";s:3:"sql";s:105:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";s:117:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289457230, 2, 0, 0, 0, 'default'),
	(546, '', 0, 0, 'shops_v1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:65:"<div class="list"><a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289457356, 2, 0, 0, 0, 'default'),
	(547, '', 0, 0, 'shops_f1', 'code', 0, '<dl>\r\n                <dt><a href="#">会员中心</a></dt>\r\n                <dd>\r\n                    <div><a href="#">忘记密码</a></div>\r\n                    <div><a href="#">我要买</a></div>\r\n                    <div><a href="#">查看已购买商品</a></div>\r\n                    <div><a href="#">如何搜索</a></div>\r\n                    <div><a href="#">如何注册成为...</a></div>\r\n                </dd>\r\n            </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(548, '', 0, 0, 'shops_f2', 'code', 0, '<dl>\r\n                <dt><a href="#">商铺之家</a></dt>\r\n                <dd>\r\n                    <div><a href="#">如何申请开店</a></div>\r\n                    <div><a href="#">如何管理店铺</a></div>\r\n                    <div><a href="#">查看售出商品</a></div>\r\n                    <div><a href="#">如何发货</a></div>\r\n                    <div><a href="#">商城商品推荐</a></div>\r\n                </dd>\r\n            </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(549, '', 0, 0, 'shops_f3', 'code', 0, '<dl>\r\n                <dt><a href="#">支付方式</a></dt>\r\n                <dd>\r\n                    <div><a href="#">在线支付</a></div>\r\n                    <div><a href="#">如何注册财付通</a></div>\r\n                    <div><a href="#">如何注册贝宝</a></div>\r\n                    <div><a href="#">使用预付款购物</a></div>\r\n                    <div><a href="#">如何注册支付宝</a></div>\r\n                </dd>\r\n            </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(550, '', 0, 0, 'shops_f4', 'code', 0, '<dl>\r\n                <dt><a href="#">今后服务</a></dt>\r\n                <dd>\r\n                    <div><a href="#">如何购物评价</a></div>\r\n                    <div><a href="#">举报店主或商家</a></div>\r\n                    <div><a href="#">投诉店铺</a></div>\r\n                    <div><a href="#">如何联系卖家</a></div>\r\n                    <div><a href="#">举报申诉</a></div>\r\n                </dd>\r\n            </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(551, '', 0, 0, 'shops_f5', 'code', 0, '<dl>\r\n                <dt><a href="#">客服中心</a></dt>\r\n                <dd>\r\n                    <div><a href="#">会员修改密码</a></div>\r\n                    <div><a href="#">修改收货地址</a></div>\r\n                    <div><a href="#">商品发布规则</a></div>\r\n                    <div><a href="#">会员修改个人信息</a></div>\r\n                </dd>\r\n            </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(552, '', 0, 0, 'shops_f6', 'code', 0, '<dl>\r\n                <dt><a href="#">关于我们</a></dt>\r\n                <dd>\r\n                    <div><a href="#">关于我们</a></div>\r\n                    <div><a href="#">消费者信赖同盟消费者信赖同盟消费者信赖同盟</a></div>\r\n                </dd>\r\n            </dl>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(553, '', 0, 0, 'shops_ad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141108_fefgd.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"230";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(554, '', 0, 0, 'shops_ad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141125_iaj1l.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"230";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(555, '', 0, 0, 'shops_ad3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141143_r4drz.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"230";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(556, '', 0, 0, 'shops_ad4', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141103_rpuaq.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"230";s:6:"height";s:2:"80";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(557, '', 0, 0, 'shops_ad5', 'code', 0, '	<div class="list"><a href="#">好宝宝幼儿园开始招生了</a><span>报名优惠</span></div>\r\n                <div class="list"><a href="#">您想找个好家教吗:</a><em>010:88888888</em></div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(558, '', 0, 0, 'shops_ad6', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141126_b9tqw.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"200";s:6:"height";s:2:"55";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(559, '', 0, 0, 'shops_a_d1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141115_ci14j.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289458738, 2, 0, 0, 0, 'default'),
	(560, '', 0, 0, 'shops_a_d2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141129_5prhy.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(561, '', 0, 0, 'shops_a_d3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141110_oqdpu.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(562, '', 0, 0, 'shops_a_d4', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141131_k3xih.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(563, '', 0, 0, 'shops_a_d5', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111141151_9lauy.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(564, '', 0, 0, 'shops_a_d6', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111151112_vin0e.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(565, '', 0, 0, 'shops_a_d7', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111151133_53hvd.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(566, '', 0, 0, 'shops_a_d8', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111151150_avkih.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(567, '', 0, 0, 'shops_a_d9', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111151107_s9khw.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(568, '', 0, 0, 'shops_a_d10', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111151123_lxocu.gif";s:7:"imglink";s:1:"#";s:5:"width";s:2:"90";s:6:"height";s:2:"35";}', 'a:3:{s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(569, '', 0, 0, 'shops_pp2', 'code', 0, '<a href="#">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(570, '', 0, 0, 'shops_pp1', 'code', 0, '<a href="#" class="sort choose"><span>家居生活</span></a>\r\n                <a href="#" class="sort"><span>电器产品</span></a>\r\n                <a href="#" class="sort"><span>服装鞋帽</span></a>\r\n                <a href="#" class="sort"><span>数码电子</span></a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(571, '', 0, 0, 'shops_pp0', 'code', 0, '商城产品', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(572, '', 0, 0, 'shops_pv3', 'code', 0, '商城公告', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(573, '', 0, 0, 'shops_pv4', 'code', 0, '热销商品', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(574, '', 0, 0, 'shops_pcv2', 'code', 0, '经商之道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(575, '', 0, 0, 'shops_pcv3', 'code', 0, '推荐商品', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(576, '', 0, 0, 'down_ad1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191127_zgile.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"710";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"707";s:5:"div_h";s:2:"69";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289475404, 2, 0, 0, 0, 'default'),
	(577, '', 0, 0, 'down_ad2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191154_ykdyp.jpg";s:7:"imglink";s:21:"http://www.1gftp.com/";s:5:"width";s:3:"270";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"267";s:5:"div_h";s:2:"68";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292643191, 2, 0, 0, 0, 'default'),
	(578, '', 0, 0, 'down_ad3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191142_bnynf.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"710";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:3:"708";s:5:"div_h";s:2:"88";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289475569, 2, 0, 0, 0, 'default'),
	(579, '', 0, 0, 'down_ad4', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191109_shrig.gif";s:7:"imglink";s:21:"http://www.zwidc.com/";s:5:"width";s:3:"270";s:6:"height";s:2:"90";}', 'a:3:{s:5:"div_w";s:3:"268";s:5:"div_h";s:2:"89";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1292643722, 2, 0, 0, 0, 'default'),
	(580, '', 0, 0, 'down_ad5', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111191153_sdera.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"270";s:6:"height";s:2:"85";}', 'a:3:{s:5:"div_w";s:3:"270";s:5:"div_h";s:2:"84";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289475675, 2, 0, 0, 0, 'default'),
	(581, '', 0, 0, 'down_t1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:91:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:105:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"28";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289479954, 2, 0, 0, 0, 'default'),
	(582, '', 0, 0, 'down_t2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:181:"<div class="list l$i"><a href="$list_url" class="sort" target="_blank" >[{$fname}]</a><a href="$url" class="title" target="_blank" >$title</a><span>{$time_m}-{$time_d} </span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"11";s:3:"sql";s:105:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 11 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289480150, 2, 0, 0, 0, 'default'),
	(583, '', 0, 0, 'down_t3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:91:"<div class="list l$i"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:104:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289480275, 2, 0, 0, 0, 'default'),
	(584, '', 0, 0, 'down_t4', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:104:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"34";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289480863, 2, 0, 0, 0, 'default'),
	(585, '', 0, 0, 'down_t5', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:104:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"34";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(586, '', 0, 0, 'down_b1', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"12";s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:106:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (12)   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481170, 2, 0, 0, 0, 'default'),
	(587, '', 0, 0, 'down_b2', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:3:"101";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"26";s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:106:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (26)   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481175, 2, 0, 0, 0, 'default'),
	(588, '', 0, 0, 'down_b3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"27";s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:106:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (27)   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"42";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481159, 2, 0, 0, 0, 'default'),
	(589, '', 0, 0, 'down_b4', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:87:"<div class="list"><a href="$url" target="_blank">$title</a><span>{$hits}次</span></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";s:2:"40";s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:106:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.fid IN (40)   ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(590, '', 0, 0, 'down_c4', 'code', 0, '<a href="list.php?fid=40" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(591, '', 0, 0, 'down_c3', 'code', 0, '<a href="list.php?fid=27" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(592, '', 0, 0, 'down_c2', 'code', 0, '<a href="list.php?fid=26" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(593, '', 0, 0, 'down_c1', 'code', 0, '<a href="list.php?fid=12" target="_blank">更多..</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(594, '', 0, 0, 'down_bv1', 'code', 0, '建站软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(595, '', 0, 0, 'down_bv2', 'code', 0, '装机软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(596, '', 0, 0, 'down_bv3', 'code', 0, '办公软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(597, '', 0, 0, 'down_bv4', 'code', 0, '杀毒软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(598, '', 0, 0, 'down_a4', 'code', 0, '最新更新', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(599, '', 0, 0, 'down_a3', 'code', 0, '今日榜单', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481643, 2, 0, 0, 0, 'default'),
	(600, '', 0, 0, 'down_a2', 'code', 0, '网友推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(601, '', 0, 0, 'down_a1', 'code', 0, '装机推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(602, '', 0, 0, 'down_d2', 'code', 0, '热门推荐软件', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(603, '', 0, 0, 'down_dp2', 'code', 0, '<a href="#">最新源码</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 2, 0, 0, 0, 'default'),
	(604, '', 0, 0, 'down_t3v', 'code', 0, '<div>今日更新软件:<span>5</span>款 驱动更新:<span>1</span>款</div>\r\n                <div>软件总下载量:<em>651</em>次 今日下载量:<em>103</em>次</div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289481879, 2, 0, 0, 0, 'default'),
	(605, '', 0, 0, 'w8_ad', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101111211144_j117r.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"990";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"987";s:5:"div_h";s:2:"67";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1289482282, 0, 27, 0, 0, 'default'),
	(606, '', 1, 99, 'head_search', 'code', 0, '<a href="http://www_qibosoft_com/do/search.php?keyword=齐博CMS" class="b">齐博CMS</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=注册域名" target="_blank">注册域名</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=CEO" target="_blank">CEO</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=源码下载" target="_blank">源码下载</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=IT资讯" target="_blank">IT资讯</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=主机空间" target="_blank">主机空间</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=建站手册" class="b" target="_blank">建站手册</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=论坛程序" target="_blank">论坛程序</a> \r\n        <a href="http://www_qibosoft_com/do/search.php?keyword=健康咨询" class="b" target="_blank">健康咨询</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"617";s:5:"div_h";s:2:"32";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291859716, 0, 0, 0, 0, 'default'),
	(607, '', 0, 0, 'special_sport_1', 'code', 0, '<a href="#">加入收藏</a> | <a href="#">设为首页</a> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"113";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290131646, 11, 0, 19, 0, 'default'),
	(608, '', 0, 0, 'special_sport_2', 'code', 0, '<a href="#">新闻中心</a> | <a href="#">体育新闻</a> | <a href="#">娱乐新闻</a> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"191";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290131639, 11, 0, 19, 0, 'default'),
	(609, '', 0, 0, 'special_sport_3', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101119091126_q0kjm.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"960";s:6:"height";s:3:"160";}', 'a:3:{s:5:"div_w";s:3:"961";s:5:"div_h";s:3:"159";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290137907, 11, 0, 19, 0, 'default'),
	(610, '', 0, 0, 'special_sport_4', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"306";s:6:"height";s:3:"262";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101119101151_gvdry.jpg";i:2;s:32:"label/1_20101119101155_mqgga.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"310";s:5:"div_h";s:3:"262";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132179, 11, 0, 19, 0, 'default'),
	(611, '', 0, 0, 'special_sport_5', 'swf', 0, 'a:3:{s:8:"flashurl";s:58:"http://player.youku.com/player.php/sid/XOTk1OTE2NjQ=/v.swf";s:5:"width";s:3:"305";s:6:"height";s:3:"275";}', 'a:3:{s:5:"div_w";s:3:"302";s:5:"div_h";s:3:"271";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132344, 11, 0, 19, 0, 'default'),
	(612, '', 0, 0, 'special_sport_6', 'code', 0, '希金斯简介', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 19, 0, 'default'),
	(613, '', 0, 0, 'special_sport_7', 'code', 0, '<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="right_content1">\r\n					  <tr>\r\n						<td width="45%"><img src="http://www_qibosoft_com/images/special/sports/tiyu_photo3.gif" width="100" height="80" /></td>\r\n					    <td width="55%">希金斯被认为是最出色的比赛型选手，超常的技术使他得到查过20项排名赛冠军...[<a href="#">详细</a>]</td>\r\n					  </tr>\r\n					 </table>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"243";s:5:"div_h";s:2:"90";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132645, 11, 0, 19, 0, 'default'),
	(614, '', 0, 0, 'special_sport_8', 'code', 0, '爆料媒体', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 19, 0, 'default'),
	(615, '', 0, 0, 'special_sport_9', 'code', 0, '<img src="http://www_qibosoft_com/images/special/sports/tiyu_photo4.gif" width="166" height="78" /><br />上海起火楼工程多次', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"187";s:5:"div_h";s:3:"104";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132805, 11, 0, 19, 0, 'default'),
	(616, '', 0, 0, 'special_sport_10', 'code', 0, '网友调查', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 19, 0, 'default'),
	(617, '', 0, 0, 'special_sport_11', 'code', 0, '<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="right_content1 tiyu_top">\r\n					  <tr>\r\n						<td id="vote_title">你对希金斯被爆打假球这件事怎么看?</td>\r\n				      </tr>\r\n					  <tr>\r\n						<td class="vote_cont">\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 很伤心,希金斯怎能如此道德败坏</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 很郁闷,斯诺克赛场也不是干净的土</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 不可以,希金斯不可能这么做</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 无奈,球员确实光靠打球难养活自己</span>\r\n							<span><input type="radio" name="radiobutton" value="radiobutton" /> 说不清，看事态进展吧</span>\r\n						</td>\r\n				      </tr>\r\n				  </table>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"245";s:5:"div_h";s:3:"210";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290132887, 11, 0, 19, 0, 'default'),
	(618, '', 0, 0, 'special_sport_12', 'code', 0, '<font face="黑体"><a href="#" >希金斯洗脱赌球罪</a> <a href="#">禁赛6个月罚75000英镑</a></font>\r\n\r\n\r\n ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"367";s:5:"div_h";s:2:"20";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133123, 11, 0, 19, 0, 'default'),
	(619, '', 0, 0, 'special_sport_13', 'code', 0, '<font face="黑体"><a href="#" >希金斯赌球丑闻后露面</a> <a href="#">颁奖礼当救场嘉宾</a></font>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"366";s:5:"div_h";s:2:"20";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133184, 11, 0, 19, 0, 'default'),
	(620, '', 0, 0, 'special_sport_14', 'code', 0, '<font face="黑体"><a href="#" >英媒曝希金斯收贿赂故输球</a> <a href="#">已遭台联禁赛</a></font> ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"370";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133258, 11, 0, 19, 0, 'default'),
	(621, '', 0, 0, 'special_sport_15', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div class="content_list">·<a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"375";s:5:"div_h";s:3:"160";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133428, 11, 0, 19, 0, 'default'),
	(622, '', 0, 0, 'special_sport_16', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div class="content_list">·<a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"373";s:5:"div_h";s:3:"163";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133420, 11, 0, 19, 0, 'default'),
	(623, '', 0, 0, 'special_sport_17', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div class="content_list">·<a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"50";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"375";s:5:"div_h";s:3:"108";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133507, 11, 0, 19, 0, 'default'),
	(624, '', 0, 0, 'special_sport_18', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:235:"<div class="photo_list"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="160" height="110" border="0" /></a><br />\r\n  <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"925";s:5:"div_h";s:3:"134";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133716, 11, 0, 19, 0, 'default'),
	(625, '', 0, 0, 'special_sport_19', 'code', 0, '希金斯陷赌球丑闻', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"127";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290133781, 11, 0, 19, 0, 'default'),
	(626, '', 0, 0, 'special_sport_20', 'code', 0, '最新进展', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 19, 0, 'default'),
	(627, '', 0, 0, 'special_sport_21', 'code', 0, '各方声音', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 19, 0, 'default'),
	(628, '', 0, 0, 'special_sport_22', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:194:"<div class="content_list"><span>·[<a href="$list_url" target="_blank">$fname</a>]<a href="$url" target="_blank">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"15";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 15 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"468";s:5:"div_h";s:3:"466";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290134230, 11, 0, 19, 0, 'default'),
	(629, '', 0, 0, 'special_sport_23', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:194:"<div class="content_list"><span>·[<a href="$list_url" target="_blank">$fname</a>]<a href="$url" target="_blank">$title</a></span> \r\n                    <font>{$time_m}月{$time_d}日</font></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"15";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 15 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"468";s:5:"div_h";s:3:"450";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290134248, 11, 0, 19, 0, 'default'),
	(631, '', 0, 0, 'special_car_1', 'code', 0, '加入收藏 | 设为主页', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"147";s:5:"div_h";s:2:"20";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150121, 11, 0, 22, 0, 'default'),
	(632, '', 0, 0, 'special_car_2', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101119151121_pnoj5.gif";s:7:"imglink";s:1:"#";s:5:"width";s:4:"1014";s:6:"height";s:3:"166";}', 'a:3:{s:5:"div_w";s:4:"1008";s:5:"div_h";s:3:"153";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150338, 11, 0, 22, 0, 'default'),
	(633, '', 0, 0, 'special_car_3', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"346";s:6:"height";s:3:"250";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101119151138_usu7n.jpg";i:2;s:32:"label/1_20101119151145_ysl0g.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"180";s:5:"div_h";s:3:"253";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150658, 11, 0, 22, 0, 'default'),
	(634, '', 0, 0, 'special_car_4', 'swf', 0, 'a:3:{s:8:"flashurl";s:58:"http://player.youku.com/player.php/sid/XMjE3NjczMDQ0/v.swf";s:5:"width";s:3:"344";s:6:"height";s:3:"256";}', 'a:3:{s:5:"div_w";s:3:"172";s:5:"div_h";s:3:"257";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150893, 11, 0, 22, 0, 'default'),
	(635, '', 0, 0, 'special_car_5', 'code', 0, '奥迪A3亮相北京车展', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"154";s:5:"div_h";s:2:"17";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290150943, 11, 0, 22, 0, 'default'),
	(636, '', 0, 0, 'special_car_6', 'code', 0, '<a href="#"><span class="STYLE1">[奥迪A3频道]</span></a> <a href="#"><span class="STYLE1">[实际车展]</span></a> \r\n                  <a href="#"><span class="STYLE1">[奥迪车友会]</span></a> <a href="#"><span class="STYLE1">[微博讨论奥迪A3]</span></a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"339";s:5:"div_h";s:2:"16";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290152789, 11, 0, 22, 0, 'default'),
	(637, '', 0, 0, 'special_car_7', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:300:"<div class="Calign"> \r\n                <div class="Text"> <span><a href="$url" target="_blank">$title</a></span></div>\r\n                <div class="line_ys"> <span style="text-indent:20px;">$content<a href="$url" style="color:#98122A;">[全文]</a></span></div>\r\n                 \r\n              </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"2";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 2 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"160";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"370";s:5:"div_h";s:3:"207";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290152800, 11, 0, 22, 0, 'default'),
	(638, '', 0, 0, 'special_car_8', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:55:" <div><a href="$url" target="_blank">$title</a> </div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"347";s:5:"div_h";s:3:"139";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153186, 11, 0, 22, 0, 'default'),
	(639, '', 0, 0, 'special_car_9', 'code', 0, '试驾奥迪A3', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(640, '', 0, 0, 'special_car_10', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:653:"<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                  <tr> \r\n                    <td class="Czhouju"> \r\n                      <div class="L left_tu"><a href="$url" target="_blank"><img width=\'95\' height=\'64\' src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" /></a></div>\r\n                      <div class="L right_zi"> <a href="$url" style="color:#004276;" target="_blank">$title</a><br>\r\n                        $content<span href="$url" style="color:#98122A;">[详细]</span><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:193:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"363";s:5:"div_h";s:3:"248";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153177, 11, 0, 22, 0, 'default'),
	(641, '', 0, 0, 'special_car_11', 'code', 0, '奥迪A3点评', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(642, '', 0, 0, 'special_car_12', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:56:"<div><a href="$url" target="_blank">$title</a> </div>   ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"352";s:5:"div_h";s:3:"137";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153283, 11, 0, 22, 0, 'default'),
	(643, '', 0, 0, 'special_car_13', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:595:"<table width="100%" border="0" cellspacing="0" cellpadding="0">\r\n                  <tr> \r\n                    <td class="Czhouju"> \r\n                      <div class="L left_tu"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="80" height="60" /></div>\r\n                      <div class="L right_zi"> <a href="$url" target="_blank" style="color:#004276;">$title</a><br>　　$content<a href="$url" target="_blank" style="color:#98122A;">[全文]</a><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"2";s:3:"sql";s:192:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 2 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"70";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"355";s:5:"div_h";s:3:"174";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153735, 11, 0, 22, 0, 'default'),
	(644, '', 0, 0, 'special_car_14', 'code', 0, '奥迪A3厂家指标价', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(645, '', 0, 0, 'special_car_15', 'code', 0, '<li>\r\n                            <div class="PA10">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class="CALIGN_C2">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class="PA10">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class="CALIGN_C2">1.4T舒适版<span>26.8万</span></div>\r\n                          </li>\r\n                          <li class="CANSHU">点击进入更多车型参数配置>></li>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"207";s:5:"div_h";s:3:"140";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153727, 11, 0, 22, 0, 'default'),
	(646, '', 0, 0, 'special_car_16', 'code', 0, '推荐指数<span>4</span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"118";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153782, 11, 0, 22, 0, 'default'),
	(647, '', 0, 0, 'special_car_17', 'code', 0, '<img src="http://www_qibosoft_com/images/special/car/c5.gif" /> <img src="http://www_qibosoft_com/images/special/car/c5.gif" /> \r\n                        <img src="http://www_qibosoft_com/images/special/car/c5.gif" /> <img src="http://www_qibosoft_com/images/special/car/c5.gif" /> \r\n                        <img src="http://www_qibosoft_com/images/special/car/c6.gif" />', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"212";s:5:"div_h";s:2:"34";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153844, 11, 0, 22, 0, 'default'),
	(648, '', 0, 0, 'special_car_18', 'code', 0, '微博热议', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(649, '', 0, 0, 'special_car_19', 'code', 0, '高调上市的精品小车奥迪A3<br>\r\n                        能否赢得中国市场消费者的认可？<br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"178";s:5:"div_h";s:2:"48";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290153966, 11, 0, 22, 0, 'default'),
	(650, '', 0, 0, 'special_car_20', 'code', 0, '调查', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(651, '', 0, 0, 'special_car_21', 'code', 0, '1.你如何看到奥迪A3？<br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        高品质时尚下车</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        又一款一炮车来袭</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        与高尔夫同平台，售价较高</label><br>\r\n                        <div style="margin-top:5px;">2.你认为奥迪的最大竞争对手是？</div>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        MINI Cper</label> <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        沃尔沃C30</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        高尔夫 GTI</label> <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        宝马1系</label><br>\r\n                        <label>\r\n                        <input type="radio" name="RadioGroup1" value="单选" />\r\n                        奔驰B级</label><br />\r\n                        <div style="margin:7px;"> \r\n                          <input type="button" value="提交" />\r\n                          <input type="button" value="查看" />\r\n                        </div>\r\n                      ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"210";s:5:"div_h";s:3:"197";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154073, 11, 0, 22, 0, 'default'),
	(652, '', 0, 0, 'special_car_22', 'code', 0, '车友会', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(653, '', 0, 0, 'special_car_23', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:49:"·<A HREF="$url" target=\'_blank\'  >$title</a><br>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:24:"/common_title/0title.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"223";s:5:"div_h";s:2:"90";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154543, 11, 0, 22, 0, 'default'),
	(654, '', 0, 0, 'special_car_24', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:304:"<div class="hpic">\r\n          <div class="auto_08"><a href="$url" target="_blank"><img src="$picurl" width=\'150\' height=\'99\' onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" /></a></div>\r\n          <div class="SHIPAI"><a href="$ur" target="_blank">$title</a></div>\r\n        </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:133:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"988";s:5:"div_h";s:3:"325";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154534, 11, 0, 22, 0, 'default'),
	(655, '', 0, 0, 'special_car_25', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:298:"<div class="spic">\r\n        <div class="auto_08"><a href="$url" target="_blank"><img src="$picurl" width=\'150\' height=\'99\' onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" /></a></div>\r\n        <div class="SHIPAI"><a href="$ur" target="_blank">$title</a></div>\r\n      </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"26";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"350";s:5:"div_h";s:3:"320";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154525, 11, 0, 22, 0, 'default'),
	(656, '', 0, 0, 'special_car_26', 'code', 0, '奥迪A3实拍图', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(657, '', 0, 0, 'special_car_27', 'code', 0, '奥迪在售车型的（部分）', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(658, '', 0, 0, 'special_car_28', 'code', 0, '竞争车型新闻', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(659, '', 0, 0, 'special_car_29', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:53:"<div><a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"13";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 13 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"326";s:5:"div_h";s:3:"312";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154677, 11, 0, 22, 0, 'default'),
	(660, '', 0, 0, 'special_car_30', 'code', 0, '近期上市车型', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 22, 0, 'default'),
	(661, '', 0, 0, 'special_car_31', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101119161159_20k4y.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"240";s:6:"height";s:3:"130";}', 'a:3:{s:5:"div_w";s:3:"240";s:5:"div_h";s:3:"127";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154756, 11, 0, 22, 0, 'default'),
	(662, '', 0, 0, 'special_car_32', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:48:" ·<a href="$url" target="_blank">$title</a><br>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"36";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"243";s:5:"div_h";s:3:"175";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290154845, 11, 0, 22, 0, 'default'),
	(663, '', 0, 0, 'special_finance_1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122151143_g4zey.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"960";s:6:"height";s:3:"150";}', 'a:3:{s:5:"div_w";s:3:"958";s:5:"div_h";s:3:"149";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290409679, 11, 0, 21, 0, 'default'),
	(664, '', 0, 0, 'special_finance_2', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"298";s:6:"height";s:3:"261";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101122151110_kzqtx.jpg";i:2;s:32:"label/1_20101122151126_jorrb.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"294";s:5:"div_h";s:3:"257";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290411221, 11, 0, 21, 0, 'default'),
	(665, '', 0, 0, 'special_finance_3', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:153:"<div class="diao_bt"><a href="$url" target="_blank">$title</a></div>\r\n            <div class="yy">$content<a href="$url" target="_blank">[详细]</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"120";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"358";s:5:"div_h";s:2:"85";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290411923, 11, 0, 21, 0, 'default'),
	(666, '', 0, 0, 'special_finance_4', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:129:"<p><a href="$url" target="_blank">．{$title}</a> <span style="color:#727171;padding-left:10px;">({$time_m}-{$time_d})</span> </p>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"8";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 8 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"380";s:5:"div_h";s:3:"218";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414223, 11, 0, 21, 0, 'default'),
	(667, '', 0, 0, 'special_finance_5', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:129:"<p><a href="$url" target="_blank">．{$title}</a> <span style="color:#727171;padding-left:10px;">({$time_m}-{$time_d})</span> </p>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"9";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 9 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"385";s:5:"div_h";s:3:"234";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414238, 11, 0, 21, 0, 'default'),
	(668, '', 0, 0, 'special_finance_6', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:75:"<div><b><a href="$url" target="_blank">$title</a></b><br>\r\n　$content</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"28";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"205";s:5:"div_h";s:3:"405";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414247, 11, 0, 21, 0, 'default'),
	(669, '', 0, 0, 'special_finance_7', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:67:" <div class="al1"><a href="$url" target="_blank">．$title</a></div>";s:13:"tplpart_2code";s:421:"<div style="width:100%;margin:7px"> \r\n              <div class="al"><a href="$url" target="_blank"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="90" height="65" border="0" /></a></div>\r\n              <div  class="sm"> \r\n                <p><span style="font-weight:bold;">$title</span></p>\r\n                <p>　$content</p>\r\n              </div>\r\n            </div> \r\n           ";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:24:"/common_zh_pic/zh_pc.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 8 ";s:4:"sql2";s:175:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:2:"60";s:8:"titlenum";s:2:"38";s:9:"titlenum2";s:2:"30";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"304";s:5:"div_h";s:3:"303";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414230, 11, 0, 21, 0, 'default'),
	(670, '', 0, 0, 'special_finance_8', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122161156_ehzhv.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"354";s:6:"height";s:3:"120";}', 'a:3:{s:5:"div_w";s:3:"354";s:5:"div_h";s:3:"119";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414265, 11, 0, 21, 0, 'default'),
	(671, '', 0, 0, 'special_finance_9', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:424:"<div class="ren_h">\r\n                <div class="at"><img src="$webdb[www_url]/images/special/finance/finace_3.jpg" width="15" height="16" /></div>\r\n                <div class="ab"><a href="$url" target="_blank">$title</a></div>\r\n              </div>\r\n              <div class="ren_by"> \r\n                \r\n  <p>{$content} <a href="$url" target="_blank"><font color="#990000">[更多]</font></a> \r\n  </p>\r\n              </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"1";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"270";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"553";s:5:"div_h";s:3:"144";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414255, 11, 0, 21, 0, 'default'),
	(672, '', 0, 0, 'special_finance_10', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:165:"  <div><span style="float:left;"><a href="$url" target="_blank">．$title</a></span><span style="float:right;">({$time_m} -{$time_d})</span><br />\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"459";s:5:"div_h";s:3:"320";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290413983, 11, 0, 21, 0, 'default'),
	(673, '', 0, 0, 'special_finance_11', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:165:"  <div><span style="float:left;"><a href="$url" target="_blank">．$title</a></span><span style="float:right;">({$time_m} -{$time_d})</span><br />\r\n            </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"371";s:5:"div_h";s:3:"306";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290413975, 11, 0, 21, 0, 'default'),
	(674, '', 0, 0, 'special_finance_12', 'code', 0, '滚动报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(675, '', 0, 0, 'special_finance_19', 'code', 0, '法案的主要条例', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(676, '', 0, 0, 'special_finance_20', 'code', 0, '相关报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(677, '', 0, 0, 'special_finance_21', 'code', 0, '最新报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(678, '', 0, 0, 'special_finance_22', 'code', 0, '追踪报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(679, '', 0, 0, 'special_finance_23', 'code', 0, '汇改大事记', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(680, '', 0, 0, 'special_finance_24', 'code', 0, '美元对人民币走势', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(681, '', 0, 0, 'special_finance_25', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122161134_anvod.jpg";s:7:"imglink";s:1:"#";s:5:"width";s:3:"211";s:6:"height";s:3:"133";}', 'a:3:{s:5:"div_w";s:3:"213";s:5:"div_h";s:3:"129";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290414346, 11, 0, 21, 0, 'default'),
	(682, '', 0, 0, 'special_finance_28', 'code', 0, 'admin@qibosoft.com', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 21, 0, 'default'),
	(683, '', 0, 0, 'special_sp1_1', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101122161145_th99u.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"950";s:6:"height";s:3:"150";}', 'a:3:{s:5:"div_w";s:3:"948";s:5:"div_h";s:3:"149";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416100, 11, 0, 20, 0, 'default'),
	(684, '', 0, 0, 'special_sp1_2', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"300";s:6:"height";s:3:"220";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101122161104_gaaxz.jpg";i:2;s:32:"label/1_20101122161110_yoshc.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"147";s:5:"div_h";s:3:"219";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416339, 11, 0, 20, 0, 'default'),
	(685, '', 0, 0, 'special_sp1_3', 'swf', 0, 'a:3:{s:8:"flashurl";s:58:"http://player.youku.com/player.php/sid/XMjIxMTM5MTMy/v.swf";s:5:"width";s:3:"301";s:6:"height";s:3:"261";}', 'a:3:{s:5:"div_w";s:3:"164";s:5:"div_h";s:3:"268";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416435, 11, 0, 20, 0, 'default'),
	(686, '', 0, 0, 'special_sp1_4', 'code', 0, '<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="line-height:23px;">\r\n					  <tr>\r\n						\r\n                      <td width="39%"><img src="http://i1.sinaimg.cn/dy/2010/0512/S11612T1273624471182.jpg" width=82 height=98/></td>\r\n					    <td width="61%">\r\n							<div class="Cor3"><a href="#">从差生到唐宁街主人</a></div>\r\n							<div class="TEXT">贵族后裔：身为威廉四世后裔卡梅伦沿循贵族轨迹：著名私立小学—伊顿公学—牛津大学。\r\n</div>\r\n						</td>\r\n					  </tr>\r\n				  </table>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"237";s:5:"div_h";s:3:"106";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416780, 11, 0, 20, 0, 'default'),
	(687, '', 0, 0, 'special_sp1_5', 'code', 0, '<div class="TANGBIAOT">\r\n					   <a href="#" style="font-weight:bold;">政坛新星：</a>\r\n					 <a href="#">2005年卡梅伦在几乎无人看好的情况下，以出色的况下，以出色的况下，以出色的成功当选保况下，以出色况下，以出色的的守党党首。</a></div>\r\n					<div class="TANGBIAOT">\r\n					  <a href="#" style="font-weight:bold;">力主变革：</a>\r\n				  <a href="#">卡梅伦以“变革”的口号打动了选民，在工党领导内忧外患之下，民众最想看到的无疑就是“变革”。</a> </div>\r\n					<div class="TANGBIAOT">\r\n					  <a href="#" style="font-weight:bold;">面临破题：</a>\r\n				  <a href="#">卡梅伦称将重建民众对政治的信任，但如何实现目重建民众对政治的信任，但如何实标依然有待观察。</a></div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"248";s:5:"div_h";s:3:"232";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290416775, 11, 0, 20, 0, 'default'),
	(688, '', 0, 0, 'special_sp1_9', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:237:"<div class="photo_list">    \r\n<a href="$url" target="_blank">\r\n<img width="164" height="123" src="$picurl" border=0 onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" /></a>\r\n\r\n<a href="$url" target="_blank">$title</a>\r\n</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"p";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"5";s:3:"sql";s:132:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"20";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"904";s:5:"div_h";s:3:"153";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476968, 11, 0, 20, 0, 'default'),
	(689, '', 0, 0, 'special_sp1_10', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:571:"<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0" class="right_content1">\r\n					  <tr>\r\n						\r\n                <td width="37%"><a href="$url" target="_blank">\r\n				<img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" border="0" width="100" height="68" /></a></td>\r\n					    \r\n                <td width="63%"><a href="$url" style="color:#1F4363;" target="_blank">$title</a> \r\n                  <div style="color:#6A6A6A;">　$content  [<a href="$url" target="_blank">详细</a>]</div></td>\r\n					  </tr>\r\n					 </table>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:33:"/common_pic/title_pic_content.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:2:"cp";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:193:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"50";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"310";s:5:"div_h";s:3:"229";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476975, 11, 0, 20, 0, 'default'),
	(690, '', 0, 0, 'special_sp1_11', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:71:"<div class="Lianjie">· <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:103:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"351";s:5:"div_h";s:3:"326";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476984, 11, 0, 20, 0, 'default'),
	(691, '', 0, 0, 'special_sp1_12', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:176:"<div class="Tbiaoti"><a href="$url" target="_blank">$title</a></div>\r\n		\r\n<div class="xwzi">{$content} <a href="$url" target="_blank" style="color:#990000;">  [详情] </a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:162:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:3:"100";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"236";s:5:"div_h";s:3:"232";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476992, 11, 0, 20, 0, 'default'),
	(692, '', 0, 0, 'special_sp1_13', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:72:" <div class="Lianjie">· <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"7";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"46";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"360";s:5:"div_h";s:3:"190";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476960, 11, 0, 20, 0, 'default'),
	(693, '', 0, 0, 'special_sp1_14', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:72:" <div class="Lianjie">· <a href="$url" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:3:"ASC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:101:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"359";s:5:"div_h";s:3:"162";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476946, 11, 0, 20, 0, 'default'),
	(694, '', 0, 0, 'special_sp1_15', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:72:"<div class="BJ_ljie">· <a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:73:"<div class="BIAOTI"><a href="$url" target="_blank">$title</a></div>\r\n				";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:32:"/common_zh_title/zh_bigtitle.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"t";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"44";s:9:"titlenum2";s:2:"32";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"354";s:5:"div_h";s:3:"196";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476932, 11, 0, 20, 0, 'default'),
	(695, '', 0, 0, 'special_sp1_16', 'code', 0, ' 应国务院总理温家宝邀请，大不列颠及北爱尔兰联合王国首相戴维·卡梅伦将于11月9日至10日对中国进行正式访问。 ', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"330";s:5:"div_h";s:2:"43";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476395, 11, 0, 20, 0, 'default'),
	(696, '', 0, 0, 'special_sp1_17', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:102:"<a href="$url" target="blank" class="t" style="color:#013979;">$title</a> \r\n						<div>$content </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:29:"/common_content/content_1.jpg";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"c";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:163:" SELECT A.*,A.aid AS id,R.content FROM qb_article A LEFT JOIN qb_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"60";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"30";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"235";s:5:"div_h";s:3:"186";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476939, 11, 0, 20, 0, 'default'),
	(697, '', 0, 0, 'special_sp1_18', 'article', 1, 'a:32:{s:13:"tplpart_1code";s:72:"<div class="BJ_ljie">· <a href="$url" target="_blank">$title</a></div> ";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"artcile";s:13:"RollStyleType";s:0:"";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:7:"newhour";s:2:"24";s:7:"hothits";s:3:"100";s:7:"amodule";s:1:"0";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:5:"stype";s:1:"4";s:2:"yz";s:1:"1";s:7:"hidefid";N;s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:6:"A.list";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"3";s:3:"sql";s:102:" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 3 ";s:4:"sql2";N;s:7:"colspan";s:1:"1";s:11:"content_num";s:2:"80";s:12:"content_num2";s:3:"120";s:8:"titlenum";s:2:"40";s:9:"titlenum2";s:2:"40";s:10:"titleflood";s:1:"0";s:10:"c_rolltype";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"310";s:5:"div_h";s:3:"108";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1290476954, 11, 0, 20, 0, 'default'),
	(698, '', 0, 0, 'special_sp1_19', 'code', 0, '访华行程', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(699, '', 0, 0, 'special_sp1_20', 'code', 0, '聚焦英国首相卡梅伦', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(700, '', 0, 0, 'special_sp1_21', 'code', 0, '图片报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(701, '', 0, 0, 'special_sp1_22', 'code', 0, '图文报道', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(702, '', 0, 0, 'special_sp1_23', 'code', 0, '时事追踪', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(703, '', 0, 0, 'special_sp1_24', 'code', 0, '大会议程', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(704, '', 0, 0, 'special_sp1_25', 'code', 0, '最新消息', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(705, '', 0, 0, 'special_sp1_26', 'code', 0, '编辑推荐', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 11, 0, 20, 0, 'default'),
	(706, '', 0, 0, 'hy_1', 'rollpic', 0, 'a:6:{s:8:"rolltype";s:1:"0";s:5:"width";s:3:"470";s:6:"height";s:3:"185";s:6:"picurl";a:2:{i:1;s:32:"label/1_20101205111206_kttht.jpg";i:2;s:32:"label/1_20101205111212_fjnu8.jpg";}s:7:"piclink";a:2:{i:1;s:1:"#";i:2;s:1:"#";}s:6:"picalt";a:2:{i:1;s:0:"";i:2;s:0:"";}}', 'a:3:{s:5:"div_w";s:3:"467";s:5:"div_h";s:3:"185";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291518928, 0, 16, 0, 0, 'default'),
	(707, '', 0, 0, 'hy_2', 'Info_hy_', 1, 'a:28:{s:13:"tplpart_1code";s:91:"<div class="list"><a href="$webdb[www_url]/home/?uid=$uid" target="_blank">$title</a></div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"company";s:7:"typefid";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:8:"renzheng";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:3:"rid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"6";s:3:"sql";s:64:"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"240";s:5:"div_h";s:3:"139";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291709105, 0, 16, 0, 0, 'default'),
	(708, '', 0, 0, 'hy_3', 'Info_hy_', 1, 'a:28:{s:13:"tplpart_1code";s:93:"<div class="list"><a href="$webdb[www_url]/home/?uid=$uid" target="_blank">$title</a>\r\n</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"company";s:7:"typefid";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:8:"renzheng";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:3:"rid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"18";s:3:"sql";s:65:"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 18 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"720";s:5:"div_h";s:3:"141";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291709113, 0, 16, 0, 0, 'default'),
	(709, '', 0, 0, 'hy_4', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101205111241_4shk3.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"730";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"732";s:5:"div_h";s:2:"70";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291519747, 0, 16, 0, 0, 'default'),
	(710, '', 0, 0, 'hy_5', 'pic', 0, 'a:4:{s:6:"imgurl";s:32:"label/1_20101205111239_s46xf.gif";s:7:"imglink";s:1:"#";s:5:"width";s:3:"250";s:6:"height";s:2:"70";}', 'a:3:{s:5:"div_w";s:3:"249";s:5:"div_h";s:2:"69";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291519795, 0, 16, 0, 0, 'default'),
	(711, '', 0, 0, 'hy_6', 'Info_hy_', 1, 'a:28:{s:13:"tplpart_1code";s:99:"	<div class="listmun$i"><a href="$webdb[www_url]/home/?uid=$uid" target="_blank">$title</a>\r\n</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"company";s:7:"typefid";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:8:"renzheng";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:3:"rid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:65:"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"236";s:5:"div_h";s:3:"250";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291709135, 0, 16, 0, 0, 'default'),
	(712, '', 0, 0, 'hy_7', 'Info_hy_', 1, 'a:28:{s:13:"tplpart_1code";s:99:"	<div class="listmun$i"><a href="$webdb[www_url]/home/?uid=$uid" target="_blank">$title</a>\r\n</div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"company";s:7:"typefid";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"4";s:2:"yz";s:3:"all";s:8:"renzheng";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:3:"rid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:2:"10";s:3:"sql";s:65:"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"30";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"241";s:5:"div_h";s:3:"249";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291709124, 0, 16, 0, 0, 'default'),
	(713, '', 0, 0, 'hy_10', 'Info_hy_', 1, 'a:28:{s:13:"tplpart_1code";s:330:"<div class="list$i">\r\n                	<a href="$webdb[www_url]/home/?uid=$uid" target="_blank" class="img"><img src="$picurl" onerror="this.src=\'$webdb[www_url]/images/default/nopic.jpg\'" width="100" height="35" /></a>\r\n                <a href="$webdb[www_url]/home/?uid=$uid" target="_blank">$title</a>\r\n\r\n                </div>";s:13:"tplpart_2code";s:0:"";s:3:"SYS";s:7:"company";s:7:"typefid";N;s:5:"width";s:3:"250";s:6:"height";s:3:"187";s:8:"rolltype";s:10:"scrollLeft";s:8:"rolltime";s:1:"3";s:11:"roll_height";s:2:"50";s:11:"content_num";s:2:"80";s:7:"newhour";s:2:"24";s:7:"hothits";s:2:"30";s:7:"tplpath";s:0:"";s:6:"DivTpl";i:1;s:5:"fiddb";N;s:8:"moduleid";N;s:5:"stype";s:1:"p";s:2:"yz";s:3:"all";s:8:"renzheng";s:3:"all";s:10:"timeformat";s:11:"Y-m-d H:i:s";s:5:"order";s:3:"rid";s:3:"asc";s:4:"DESC";s:6:"levels";s:3:"all";s:7:"rowspan";s:1:"4";s:3:"sql";s:64:"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 4 ";s:7:"colspan";s:1:"1";s:8:"titlenum";s:2:"18";s:10:"titleflood";s:1:"0";}', 'a:3:{s:5:"div_w";s:3:"244";s:5:"div_h";s:3:"141";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291709129, 0, 16, 0, 0, 'default'),
	(714, '', 0, 0, 'hy_a5', 'code', 0, '<a href="#" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(715, '', 0, 0, 'hy_a3', 'code', 0, '<a href="#" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(716, '', 0, 0, 'hy_a2', 'code', 0, '<a href="#" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(717, '', 0, 0, 'hy_a1', 'code', 0, '<a href="#" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(718, '', 0, 0, 'hy_a4', 'code', 0, '<a href="#" target="_blank">更多...</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(719, '', 0, 0, 'hy_b4', 'code', 0, '最新加入', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(720, '', 0, 0, 'hy_b3', 'code', 0, '新进企业', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(721, '', 0, 0, 'hy_b1', 'code', 0, '推荐企业', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"78";s:5:"div_h";s:2:"32";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291520936, 0, 16, 0, 0, 'default'),
	(722, '', 0, 0, 'hy_b7', 'code', 0, '热门公司', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 16, 0, 0, 'default'),
	(723, '', 0, 0, 'hy_c1', 'code', 0, '	<div class="h"><a href="#" target="_blank">为什么要申请金牌会员?</a></div>\r\n                    <div class="l">| <a href="#" target="_blank">金牌会员开通流程</a></div>\r\n                    <div class="l">| <a href="#" target="_blank">在线申请开通金牌会员</a></div>\r\n                    <div class="l">| <a href="#" target="_blank">金牌会员服务介绍</a></div>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:3:"239";s:5:"div_h";s:2:"97";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291520874, 0, 16, 0, 0, 'default'),
	(724, '', 0, 0, 'hy_c2', 'code', 0, '<a href="#" target="_blank">怎么成为旺铺?</a>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"81";s:5:"div_h";s:2:"34";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291520901, 0, 16, 0, 0, 'default'),
	(725, '', 0, 0, 'hy_c3', 'code', 0, '公司旺铺', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"82";s:5:"div_h";s:2:"30";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1291520931, 0, 16, 0, 0, 'default'),
	(726, '', 1, 0, 'index_t22', 'code', 0, '<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(727, '', 1, 0, 'index_t23', 'code', 0, '<br><br>2 这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(728, '', 1, 0, 'index_t24', 'code', 0, '<br><br>33这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(729, '', 1, 0, 'index_t25', 'code', 0, '<br><br>44这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(730, '', 1, 0, 'index_j32', 'code', 0, 'dd<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>dd', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:2:"50";s:5:"div_h";s:2:"21";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 1293084023, 0, 0, 0, 0, 'default'),
	(731, '', 1, 0, 'index_j33', 'code', 0, '<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(732, '', 1, 0, 'index_j34', 'code', 0, 'd<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(733, '', 1, 0, 'index_tr12', 'code', 0, '1<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(734, '', 1, 0, 'index_tr13', 'code', 0, '2<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>2', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(735, '', 1, 0, 'index_tr14', 'code', 0, '3<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>3', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(736, '', 1, 0, 'index_tr15', 'code', 0, '4<br><br>这是演示内容,请自由添加其它内容<br><br><br><br>6', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(737, '', 1, 0, 'index_trrr1', 'code', 0, '<span id="Span6" onmouseover="ShowTab(6,6,11)">文章</span>\r\n            <span id="Span7" onmouseover="ShowTab(7,6,11)">图片</span>\r\n            <span id="Span8" onmouseover="ShowTab(8,6,11)">影视</span>\r\n            <span id="Span9" onmouseover="ShowTab(9,6,11)">商场</span>\r\n            <span id="Span10" onmouseover="ShowTab(10,6,11)">flash</span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(738, '', 1, 0, 'index_bfj3', 'code', 0, '<span id="Span11" onmouseover="ShowTab(11,11,15)">服装</span>\r\n                    <span id="Span12" onmouseover="ShowTab(12,11,15)">数码</span>\r\n                    <span id="Span13" onmouseover="ShowTab(13,11,15)">食品</span>\r\n                    <span id="Span14" onmouseover="ShowTab(14,11,15)">美容</span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default'),
	(739, '', 1, 0, 'index_5t2', 'code', 0, '	<span id="Span1" onmouseover="ShowTab(1,1,6)">文章</span>\r\n            <span id="Span2" onmouseover="ShowTab(2,1,6)">图片</span>\r\n            <span id="Span3" onmouseover="ShowTab(3,1,6)">影视</span>\r\n            <span id="Span4" onmouseover="ShowTab(4,1,6)">商场</span>\r\n            <span id="Span5" onmouseover="ShowTab(5,1,6)">flash</span>', 'a:4:{s:9:"html_edit";N;s:5:"div_w";s:0:"";s:5:"div_h";s:0:"";s:11:"div_bgcolor";s:0:"";}', 0, 0, 1, 'admin', 0, 0, 0, 0, 0, 'default');
/*!40000 ALTER TABLE `qb_label` ENABLE KEYS */;

-- 导出  表 cms.qb_limitword 结构
CREATE TABLE IF NOT EXISTS `qb_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_limitword 的数据：2 rows
DELETE FROM `qb_limitword`;
/*!40000 ALTER TABLE `qb_limitword` DISABLE KEYS */;
INSERT INTO `qb_limitword` (`id`, `oldword`, `newword`) VALUES
	(1, '造反', '造**'),
	(2, '法轮功', '法**功');
/*!40000 ALTER TABLE `qb_limitword` ENABLE KEYS */;

-- 导出  表 cms.qb_memberdata 结构
CREATE TABLE IF NOT EXISTS `qb_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(32) NOT NULL DEFAULT '',
  `groupid` smallint(4) NOT NULL DEFAULT '0',
  `grouptype` tinyint(1) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `money` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `totalspace` bigint(13) NOT NULL DEFAULT '0',
  `usespace` bigint(13) NOT NULL DEFAULT '0',
  `oltime` int(10) NOT NULL DEFAULT '0',
  `lastvist` int(10) NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `regdate` int(10) NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `icon` varchar(150) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `provinceid` mediumint(6) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `idcard` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `email_yz` tinyint(1) NOT NULL DEFAULT '0',
  `mob_yz` tinyint(1) NOT NULL DEFAULT '0',
  `idcard_yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_memberdata 的数据：12 rows
DELETE FROM `qb_memberdata`;
/*!40000 ALTER TABLE `qb_memberdata` DISABLE KEYS */;
INSERT INTO `qb_memberdata` (`uid`, `username`, `question`, `groupid`, `grouptype`, `groups`, `yz`, `newpm`, `medals`, `money`, `totalspace`, `usespace`, `oltime`, `lastvist`, `lastip`, `regdate`, `regip`, `sex`, `bday`, `icon`, `introduce`, `hits`, `lastview`, `oicq`, `msn`, `homepage`, `email`, `provinceid`, `cityid`, `address`, `postalcode`, `mobphone`, `telephone`, `idcard`, `truename`, `config`, `moneycard`, `email_yz`, `mob_yz`, `idcard_yz`) VALUES
	(1, 'admin', '', 3, 1, '', 1, 0, '', 1220, 0, 86796321, 4070739, 1639823754, '112.236.225.155', 1253678332, '127.0.0.1', 1, '1890-00-00', 'icon/1.jpg', '', 110, 1291684782, '888888', '', '', '222@qq.com', 20, 345, 'cvbnmmm', '', '13399999999', '', '', '张学友', 'a:1:{s:7:"endtime";s:0:"";}', 5, 0, 0, 0),
	(37, 'test11', '', 8, 1, '', 1, 0, '', 5, 0, 10658, 0, 1288663688, '127.0.0.1', 1288663688, '127.0.0.1', 0, '0000-00-00', '', '', 8, 1290069604, '', '', '', 'test11@dew.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(36, 'test10', '', 8, 1, '', 1, 0, '', 5, 0, 14283, 0, 1288663488, '127.0.0.1', 1288663488, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test10@dsa.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(35, 'test9', '', 8, 1, '', 1, 0, '', 5, 0, 13302, 0, 1288663331, '127.0.0.1', 1288663331, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test9@dsa.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(34, 'test8', '', 8, 1, '', 1, 0, '', 5, 0, 10725, 0, 1288663154, '127.0.0.1', 1288663154, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test8@dsa.cm', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(33, 'test7', '', 8, 1, '', 1, 0, '', 5, 0, 12667, 165, 1289264760, '127.0.0.1', 1288663028, '127.0.0.1', 0, '0000-00-00', '', '', 1, 1289286772, '', '', '', 'test7@es.cm', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(32, 'test6', '', 8, 1, '', 1, 0, '', 5, 0, 144578, 0, 1288662836, '127.0.0.1', 1288662836, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test6@dsa.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(31, 'test5', '', 8, 1, '', 1, 0, '', 5, 0, 107377, 208, 1288662640, '127.0.0.1', 1288662633, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test5@ds.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(30, 'test4', '', 8, 1, '', 1, 0, '', 5, 0, 17044, 0, 1288662370, '127.0.0.1', 1288662370, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test4@qq.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(29, 'test3', '', 8, 1, '', 1, 0, '', 5, 0, 160010, 35, 1289182968, '127.0.0.1', 1288662223, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test3@qq.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(28, 'test2', '', 8, 1, '', 1, 0, '', 5, 0, 80741, 355, 1289182962, '127.0.0.1', 1288661813, '127.0.0.1', 0, '0000-00-00', '', '', 0, 0, '', '', '', 'test2@qq.cn', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0),
	(27, 'test1', '', 8, 1, '', 1, 0, '', 5, 0, 113391, 3498, 1288668780, '127.0.0.1', 1288661559, '127.0.0.1', 0, '0000-00-00', '', '', 1, 1288668776, '', '', '', 'test1@qq.com', 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0);
/*!40000 ALTER TABLE `qb_memberdata` ENABLE KEYS */;

-- 导出  表 cms.qb_members 结构
CREATE TABLE IF NOT EXISTS `qb_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_members 的数据：12 rows
DELETE FROM `qb_members`;
/*!40000 ALTER TABLE `qb_members` DISABLE KEYS */;
INSERT INTO `qb_members` (`uid`, `username`, `password`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
	(27, 'test1', '42b72f913c3201fc62660d512f5ac746'),
	(28, 'test2', '48b83a2a920f7284c9f0e1bf03012b68'),
	(29, 'test3', 'e12234d4575a12bfd61d61294f32b086'),
	(30, 'test4', 'e125db4ab2e60069409c5857be05d01d'),
	(31, 'test5', '5b25f8c229db5db622a1b29f1ef97c34'),
	(32, 'test6', '8ae9db4d88e6b21cfadffbf909a2c6b1'),
	(33, 'test7', 'cb7127945eb632e244223d3befccd92a'),
	(34, 'test8', '63a8d0a081205ac5966769ad0b50b218'),
	(35, 'test9', 'cdc10f414c38f0b165c8aef0eb57f7fd'),
	(36, 'test10', '3960033ed2f9e184af7e5c8cc99d062c'),
	(37, 'test11', '16617490bce8593838933c93db5218eb');
/*!40000 ALTER TABLE `qb_members` ENABLE KEYS */;

-- 导出  表 cms.qb_menu 结构
CREATE TABLE IF NOT EXISTS `qb_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_menu 的数据：6 rows
DELETE FROM `qb_menu`;
/*!40000 ALTER TABLE `qb_menu` DISABLE KEYS */;
INSERT INTO `qb_menu` (`id`, `fid`, `name`, `linkurl`, `color`, `target`, `moduleid`, `type`, `hide`, `list`) VALUES
	(9, 0, '新闻', 'list.php?fid=1', '', 0, 0, 0, 0, 18),
	(10, 0, '图片', 'list.php?fid=9', '', 0, 0, 0, 0, 16),
	(11, 0, '下载', 'list.php?fid=11', '', 0, 0, 0, 0, 14),
	(12, 0, '影视', 'list.php?fid=13', '', 0, 0, 0, 0, 12),
	(13, 0, '商城', 'list.php?fid=15', '', 0, 0, 0, 0, 10),
	(51, 0, '首页', '/', '', 0, 0, 0, 0, 20);
/*!40000 ALTER TABLE `qb_menu` ENABLE KEYS */;

-- 导出  表 cms.qb_module 结构
CREATE TABLE IF NOT EXISTS `qb_module` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `pre` varchar(20) NOT NULL DEFAULT '',
  `dirname` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `admindir` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `admingroup` varchar(150) NOT NULL DEFAULT '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_module 的数据：4 rows
DELETE FROM `qb_module`;
/*!40000 ALTER TABLE `qb_module` DISABLE KEYS */;
INSERT INTO `qb_module` (`id`, `type`, `name`, `pre`, `dirname`, `domain`, `admindir`, `config`, `list`, `admingroup`, `adminmember`, `ifclose`) VALUES
	(23, 2, '投票系统', 'vote_', 'vote', '', '', '', 0, '', '', 0),
	(18, 2, '留言本', 'guestbook_', 'guestbook', '', '', '', 0, '', '', 0),
	(24, 2, '广告系统', 'ad_', 'a_d', '', '', '', 0, '', '', 0),
	(21, 2, '万能表单', 'form_', 'form', '', '', '', 0, '', '', 0);
/*!40000 ALTER TABLE `qb_module` ENABLE KEYS */;

-- 导出  表 cms.qb_moneycard 结构
CREATE TABLE IF NOT EXISTS `qb_moneycard` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `moneyrmb` int(7) NOT NULL DEFAULT '0',
  `moneycard` int(7) NOT NULL DEFAULT '0',
  `ifsell` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_moneycard 的数据：0 rows
DELETE FROM `qb_moneycard`;
/*!40000 ALTER TABLE `qb_moneycard` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_moneycard` ENABLE KEYS */;

-- 导出  表 cms.qb_moneylog 结构
CREATE TABLE IF NOT EXISTS `qb_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_moneylog 的数据：0 rows
DELETE FROM `qb_moneylog`;
/*!40000 ALTER TABLE `qb_moneylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_moneylog` ENABLE KEYS */;

-- 导出  表 cms.qb_olpay 结构
CREATE TABLE IF NOT EXISTS `qb_olpay` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL DEFAULT '0',
  `numcode` varchar(32) NOT NULL DEFAULT '',
  `money` varchar(15) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT '0',
  `moduleid` mediumint(5) NOT NULL DEFAULT '0',
  `formid` mediumint(5) NOT NULL DEFAULT '0',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `articleid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_olpay 的数据：3 rows
DELETE FROM `qb_olpay`;
/*!40000 ALTER TABLE `qb_olpay` DISABLE KEYS */;
INSERT INTO `qb_olpay` (`id`, `orderid`, `numcode`, `money`, `ifpay`, `posttime`, `uid`, `username`, `paytype`, `moduleid`, `formid`, `banktype`, `articleid`) VALUES
	(33, 0, '08nyzxrb9a', '10', 0, 1284605041, 1, 'admin', 1, 0, 0, 'yeepay', 0),
	(34, 0, 'qaqec2flpj', '1', 0, 1291882682, 1, 'admin', 1, 0, 0, 'tenpay', 0),
	(35, 0, 'tge8v0ag0w', '1', 0, 1291882786, 1, 'admin', 1, 0, 0, 'tenpay', 0);
/*!40000 ALTER TABLE `qb_olpay` ENABLE KEYS */;

-- 导出  表 cms.qb_pm 结构
CREATE TABLE IF NOT EXISTS `qb_pm` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `togroups` varchar(80) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` enum('rebox','sebox','public') NOT NULL DEFAULT 'rebox',
  `ifnew` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(130) NOT NULL DEFAULT '',
  `mdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_pm 的数据：0 rows
DELETE FROM `qb_pm`;
/*!40000 ALTER TABLE `qb_pm` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_pm` ENABLE KEYS */;

-- 导出  表 cms.qb_propagandize 结构
CREATE TABLE IF NOT EXISTS `qb_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_propagandize 的数据：0 rows
DELETE FROM `qb_propagandize`;
/*!40000 ALTER TABLE `qb_propagandize` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_propagandize` ENABLE KEYS */;

-- 导出  表 cms.qb_reply 结构
CREATE TABLE IF NOT EXISTS `qb_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `subhead` varchar(150) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `topic` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `aid` (`aid`,`topic`)
) ENGINE=MyISAM AUTO_INCREMENT=647 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_reply 的数据：126 rows
DELETE FROM `qb_reply`;
/*!40000 ALTER TABLE `qb_reply` DISABLE KEYS */;
INSERT INTO `qb_reply` (`rid`, `subhead`, `postdate`, `aid`, `fid`, `uid`, `topic`, `content`, `orderid`) VALUES
	(73, '', 0, 0, 0, 0, 0, '<p>&nbsp;&nbsp; 诸位站长、企业用户及关注qibosoft的同仁朋友： <br />\r\n&nbsp;&nbsp; 欢迎使用qibosoft整站系统,目前默认安装的系统,虽然标题不一样.但内容都是一样的.这仅仅是演示数据而已,请不要误会系统出了问题。</p>\r\n', 0),
	(517, '', 1239788649, 539, 12, 1, 1, '非常好用的分类信息系统', 0),
	(518, '', 1239788777, 540, 12, 1, 1, '很漂亮的博客程序', 0),
	(519, '', 1239788863, 541, 12, 1, 1, '功能非常强大.类似百度知道', 0),
	(522, '', 1239790835, 544, 30, 1, 1, '<div><div><span>产品性能特点</span> </div>\r\n<div>1、主机采用先进的超短型晾衣机专用交流管状电机，具有过电流、过电压、过热保护，延长晾衣机机芯使用寿命.使用寿命长达10年以上,超短型的电机也方便拆卸和更换<br />\r\n2、国内晾衣机行业中首家真正采用无线遥控控制，多种使用方式的无线遥控器使用方便,不受方向和障碍物限制，独立控制晾衣架的升,降,停、照明、消毒以及风干等功能,遥控性能及距离均领先于同类晾衣架.使用GP12V电池，省电耐用<br />\r\n3、晾衣机具有独特的过载、遇障碍物自动停止的保护功能，是目前市面上的晾衣架保护功能最齐全的晾衣机<br />\r\n4、采用集中型卷线器可使晾衣机在使用时钢丝绳整齐有序，碰障碍物自动停机不燎乱，大大提高产品的使用寿命<br />\r\n5、独特的抗风机构使衣杆前后左右摆动小，是目前抗风能力最好的晾衣机<br />\r\n6、采用市面上钢性好、强度最大的剪刀片和耐磨304#不锈钢的钢丝绳，让您使用无忧愁<br />\r\n7、多功能四杆配置的衣杆可自由伸缩、快速定位、被杆可灵活放置，您晾晒衣物和被子更方便<br />\r\n8、超薄紧凑的主机,流线时尚的外观设计，凸显您家阳台独特的尊贵<br />\r\n9、轻巧、环保的全铝合金外壳，永不生锈，让您的晾衣机永无脱漆和生锈的烦恼<br />\r\n10、精致的晾衣机照明灯取代阳台原有灯具，让您的阳台更添温馨高贵</div>\r\n<div>&nbsp;</div>\r\n<div>官方网址:<br />\r\n<a href="http://www.lb138.net/product_view.asp?id=4833" target="_blank">http://www.lb138.net/product_view.asp?id=4833</a></div>\r\n</div>\r\n', 0),
	(547, '', 1240126739, 566, 39, 1, 0, '先了解一下同一台服务器上其他网站的运行情况。<br />\r\n&nbsp; &nbsp; （4）网站空间的价格。现在提供网站空间服务的服务商很多，质量和服务也千差万别，价格同样有很大差异，一般来说，著名的大型服务商的虚拟主机产品价格要贵一些，而一些小型公司可能价格比较便宜，可根据网站的重要程度来决定选择哪种层次的虚拟主机提供商。选有《中华人民共和国增值电信业务经营许可证》的服务商更放心.<br />\r\n<br />\r\n9 什么叫虚拟主机 <br />\r\n<br />\r\n在网络服务器上开辟出一定配额的磁盘空间供用户放置网站、文件等内容，最基本的虚拟主机功能包含web访问和文件传输功能。&nbsp;&nbsp;<br />\r\n<br />\r\n所谓虚拟主机，也叫“网站空间”就是把一台运行在互联网上的服务器划分成多个“虚拟”的服务器，每一个虚拟主机都具有独立的域名和完整的Internet服务器（支持WWW、FTP、E-mail等）功能。一台服务器上的不同虚拟主机是各自独立的，并由用户自行管理。但一台服务器主机只能够支持一定数量的虚拟主机，当超过这个数量时，用户将会感到性能急剧下降。<br />\r\n<br />\r\n虚拟主机技术是互联网服务器采用的节省服务器硬体成本的技术，虚拟主机技术主要应用于HTTP服务，将一台服务器的某项或者全部服务内容逻辑划分为多个服务单位，对外表现为多个服务器，从而充分利用服务器硬体资源。如果划分是系统级别的，则称为虚拟服务器。<br />\r\n<br />\r\n<br />\r\n10．什么叫HTML语言<br />\r\n<br />\r\nHTML（HyperTextMark-upLanguage）即超文本标记语言，是WWW的描述语言。设计HTML语言的目的是为了能把存放在一台电脑中的文本或图形与另一台电脑中的文本或图形方便地联系在一起，形成有机的整体，人们不用考虑具体信息是在当前电脑上还是在网络的其它电脑上。我们只需使用鼠标在某一文档中点取一个图标，Internet就会马上转到与此图标相关的内容上去，而这些信息可能存放在网络的另一台电脑中。 HTML文本是由HTML命令组成的描述性文本，HTML命令可以说明文字、图形、动画、声音、表格、链接等。HTML的结构包括头部（Head）、主体（Body）两大部分，其中头部描述浏览器所需的信息，而主体则包含所要说明的具体内容。具体介绍:<a href="http://tool.admin5.com/shouce/html/" target="_blank"><font color="#0000ff">http://tool.admin5.com/shouce/html/</font></a><br />\r\n<br />\r\n11 什么叫ASP<br />\r\n<br />\r\nASP是Active Server Page的缩写，意为“活动服务器网页”。ASP是微软公司开发的代替CGI脚本程序的一种应用,它可以与数据库和其它程序进行交互，是一种简单、方便的编程工具。ASP的网页文件的格式是.asp，现在常用于各种动态网站中。 ASP是一种服务器端脚本编写环境，可以用来创建和运行动态网页或Web应用程序。ASP网页可以包含HTML标记、普通文本、脚本命令以及COM组件等。利用ASP可以向网页中添加交互式内容（如在线表单），也可以创建使用HTML网页作为用户界面的web应用程序。 与HTML相比，ASP网页具有以下特点： <br />\r\n<br />\r\n（1）利用ASP可以实现突破静态网页的一些功能限制，实现动态网页技术； <br />\r\n<br />\r\n（2）ASP文件是包含在HTML代码所组成的文件中的，易于修改和测试； <br />\r\n<br />\r\n（3）服务器上的ASP解释程序会在服务器端制定ASP程序，并将结果以HTML格式传送到客户端浏览器上，因此使用各种浏览器都可以正常浏览ASP所产生的网页； <br />\r\n<br />\r\n（4）ASP提供了一些内置对象，使用这些对象可以使服务器端脚本功能更强。例如可以从web浏览器中获取用户通过HTML表单提交的信息，并在脚本中对这些信息进行处理，然后向web浏览器发送信息； <br />\r\n<br />\r\n（5）ASP可以使用服务器端ActiveX组件来执行各种各样的任务，例如存取数据库、发现哦那个Email或访问文件系统等。 <br />\r\n<br />\r\n（6）由于服务器是将ASP程序执行的结果以HTML格式传回客户端浏览器，因此使用者不会看到ASP所编写的原始程序代码，可防止ASP程序代码被窃取。<br />\r\n<br />\r\n12 什么叫php<br />\r\n<br />\r\nPHP是一个基于服务端来创建动态网站的脚本语言，您可以用PHP和HTML生成网站主页。当一个访问者打开主页时，服务端便执行PHP的命令并将执行结果发送至访问者的浏览器中，这类似于ASP和CoildFusion，然而PHP和他们不同之处在于PHP开放源码和跨越平台，PHP可以运行在WINDOWS NT和多种版本的UNIX上。它不需要任何预先处理而快速反馈结果，它也不需要mod_perl的调整来使您的服务器的内存映象减小。PHP消耗的资源较少，当PHP作为Apache Web服务器一部分时，运行代码不需要调用外部二进制程序，服务器不需要承担任何额外的负担。 <br />\r\n<br />\r\n除了能够操作您的页面外，PHP还能发送HIIP的标题。您可以设置cookie,管理数字签名和重定向用户，而且它提供了极好的连通性</p>\r\n</td></tr></tbody></table>\r\n', 0),
	(546, '', 1240126684, 566, 39, 1, 0, '到其它数据库（还有DBC），集成各种外部库来做用PDF文档解析XML的任何事情。 <br />\r\n<br />\r\n有了PHP就无需特殊的开发环境和IDE，您可以以&lt;？php 作为程序块的开始，可以以 ？&gt;作为PHP代码块的结束，当然您也可以用带有 &lt;% %&gt;的标记甚至用&lt;script LANGUAGE=“php”&gt;&lt;/script&gt;的ASP的格式来配置 PHP，PHP会在那些标志间处理所有的事情。 <br />\r\n<br />\r\nPHP的编程语言类似与C和Perl。在使用它们之前您没必要声明任何变量，而且建立数组和Hash是很简单的事情。PHP还有一些面向对象的特征，可以为组织和打包您的代码提供很好的帮助。 <br />\r\n<br />\r\n虽然PHP在Apache里能快速运行，但是在PHP网站里有一些用来对Microsoft IIS 和 Netscape Enterprise Serer无缝结合的指令集。如果您还没有copy PHP的话，您可以在 http: //www.php.com 下载，您也可以使用操作手册，它里边包括了所有的关于PHP的功能和特性的说明<br />\r\n<br />\r\n13．什么叫pr值 <br />\r\n<br />\r\n什么叫pr： PR值全称为PageRank，PageRank(网页级别)是Google用于评测一个网页“重要性”的一种方法。在揉合了诸如Title标识和Keywords标识等所有其它因素之后，Google通过PageRank来调整结果，使那些更具“重要性”的网页在搜索结果中另网站排名获得提升，从而提高搜索结果的相关性和质量。 <br />\r\nPR值最高为10，一般PR值达到4，就算是一个不错的网站了。 <br />\r\nPR值，即PageRank，网页的级别技术。取自Google的创始人Larry Page，它是Google排名运算法则（排名公式）的一部分，用来标识网页的等级/重要性。级别从1到10级，10级为满分。PR值越高说明该网页越受欢迎（越重要）。例如：一个PR值为1的网站表明这个网站不太具有流行度，而PR值为7到10则表明这个网站非常受欢迎（或者说极其重要）。 <br />\r\n我们可以这样说：一个网站的外部链接数越多其PR值就越高；外部链接站点的级别越高（假如Macromedia的网站链到你的网站上），网站的PR值就越高。例如：如果ABC.COM网站上有一个XYZ.COM网站的链接，那为ABC.COM网站必须提供一些较好的网站内容，从而Google会把来自XYZ.COM的链接作为它对ABC.COM网站投的一票。你可以下载和安装Google工具条来检查你的网站级别（PR值）。 提示：1. <a href="http://www.abc.com/" target="_blank"><font color="#0000ff">www.abc.com</font></a> 与abc.com 的pr值是不同性质的。 [url=http://www.abc.com与<a href="http://www.abc.com/a.htm" target="_blank"><font color="#0000ff">www.abc.com/a.htm</font></a>]<font color="#0000ff">www.abc.com与</font><a href="http://www.abc.com/a.htm" target="_blank"><font color="#0000ff">www.abc.com/a.htm</font></a>[/url] 也是不同的 2. 并不是pr高，页面的搜索效果就好， pr高，他给别人链接，别的页面搜索排名靠前。 所以很多本身pr不高，但是有很多外链pr高的链接，搜索关键词排名靠前。 3.pr 一般是3个月更新一次，多与有价值 高pr的网站做链接，减少链接出去的低质网站，和被惩罚网站，有利于pr的提高。 <br />\r\n<br />\r\n14 如何查询一个网站的PR值&nbsp;&nbsp;<br />\r\n<br />\r\n很简单，你可以到google的官方网站去安装一个 google toolbar ，然后你在访问网页的时候发现浏览器的菜单栏部分会有一个pr值显示。当然，现在也有很多网站提供在线查询pr值的功能,比如 <a href="http://tool.admin5.com/" target="_blank"><font color="#0000ff">http://tool.admin5.com/</font></a><br />\r\n<br />\r\n15 什么是FTP<br />\r\n<br />\r\nFTP(File Transfer Protocol，文件传输协议是Internet上使用非常广泛的一种通讯协议，它是为Internet用户进行文件传输(包括文件的上传和下载)而制定的。要想实现FTP文件传输，必须在相连的两端都装有支持FTP协议的软件，装在您的电脑上的叫FTP客户端软件，装在另一端服务器上的叫做FTP服务器端软件。 <br />\r\n<br />\r\n客户端FTP软件使用方法很简单，启动后首先要与远程主机建立连接，然后向远程主机发出传输命令，远程主机在收到命令后就给予响应，并执行正确的命令。目前Windows系统中最常用的FTP软件是CUTEFTP。FTP有一个根本的限制，那就是，如果用户在某个主机上没有注册获得授权，即没有用户名和口令，就不能与该主机进行文件传输。但匿名FTP服务器除外，它允许用户以anonymous作为用户名，以Email地址作密码来登录，从而使用户获得免费资源。<br />\r\n<br />\r\n<br />\r\n16 怎么上传自己的内容到空间 <br />\r\n<br />\r\n利用FTP工具，即文件传输工具，比如cuteftp，将你的网页上传到WEB服务器指定的目录里。 <br />\r\ncuteftp具体上传具体步骤： <br />\r\nCuteFTP的窗口有四个部分，上面是连接情况，左边是本地文件，右边是服务器上的文件，下面是上传，下载的情况。 <br />\r\n首先在CuteFTP的菜单“文件”——站点管理器——将你刚才申请的站点标签，FTP主机地址（如<a href="ftp://yue.hhh.net/" target="_blank"><font color="#0000ff">ftp://YUE.HHH.NET</font></a>），用户名，密码填好连接就可以了！过一会就会显示连接成功。然后选择本地的你做好的网页所在的文件夹就可以开始上传了！ <br />\r\n<br />\r\n<br />\r\n<br />\r\n17 什么叫CMS<br />\r\n<br />\r\nCMS是Content Management System的缩写，意为“内容管理系统”。 <br />\r\nCMS具有许多基于模板的优秀设计，可以加快网站开发的速度和减少开发的成本。 <br />\r\nCMS的功能并不只限于文本处理，它也可以处理图片、Flash动画、声像流、图像甚至电子邮件档案。 <br />\r\nCMS其实是一个很广泛的称呼，从一般的博客程序，新闻发布程序，到综合性的网站管理程序都可以被称为内容管理系统。<br />\r\n<br />\r\n18 什么叫IIs<br />\r\n<br />\r\n&nbsp;&nbsp;Internet信息服务（Internet Information Services，以下简称IIS），是由微软公司提供的基于运行Microsoft Windows的因特网基本服务。最初是Windows NT版本的可选包，随后捆绑在Windows 2000、Windows XP Professional和Windows Server 2003一起发行，值得注意的是，在普遍使用的Windows XP home版本上并没有IIS。<br />\r\n<br />\r\n19 什么叫服务器<br />\r\n<br />\r\n服务器就是一台计算机。他和其它计算机不同的就是他的主要作用是用来资源共享的。比如说ftp文件上传、下载，一台计算机架设成为Ftp服务器之后，其它的计算机就可以通过IP地址来进行访问了，可以上传、下载东西。WEB服务器也是一样，只是他用来放网站的，用户可以通过IP地址访问。<br />\r\n<br />\r\n20 什么叫SEO<br />\r\n<br />\r\nUse some technics to make your website in the top places in Search Engine when somebody is using Search Engine to find something（英文描述），一般可简称为搜索引擎优化。与之相关的搜索知识还有Search Engine Marketing(搜索引擎营销）、Search Engine Positioning（搜索引擎定位）、Search Engine Ranking（搜索引擎排名）。<br />\r\n<br />\r\nSEO的主要工作是通过了解各类搜索引擎如何抓取互联网页面、如何进行索引以及如何确定其对某一特定关键词的搜索结果排名等技术，来对网页进行相关的优化，使其提高搜索引擎排名，从而提高网站访问量，最终提升网站的销售能力或宣传能力的技术。 <br />\r\n<br />\r\n搜索引擎优化是这么一种技术，即是遵循搜索引擎科学而全面的理论机制，对网站结构、网页文字语言和站点间的互动外交策略等进行合理规划部署来发掘网站的最大潜力而使其在搜索引擎中具有较强的自然排名竞争优势，从而对促进企业在线销售和强化网络品牌起到作用。<br />\r\n<br />\r\n简单的说，SEO是一种让网站在百度，谷歌，雅虎等搜索引擎获得较好的排名从而赢得更多潜在客户一种的网络营销方式，也是SEM(搜索引擎营销）的一种方式。<br />\r\n<br />\r\n21 什么叫B2B<br />\r\n<br />\r\nB2B是（business to bussiness）的缩写，是企业与企业之间通过互联网进行产品、服务及信息的交换. B2B是企业与企业之间通过互联网进行产品、服务及信息的交换。 B2B是企业实现电子商务、推动企业业务发展的一个最佳切入点，企业获得最直接的利益就是降低成本和提高效率，从长远来看也能带来巨额的回报。跟以前相比，企业总体战略中越来越重视与信息技术的结合。公司的CEO们认识到，必须有所作为，才能保持企业的竞争能力。信息技术对企业正日益变得生死攸关，新的信息技术投资能真正增强企业实力，而不仅限于改善企业的日常运作<br />\r\n<br />\r\n22 什么叫C2C<br />\r\n<br />\r\nC2C就是consumer to consumer，也有叫Client to Client，也就是用户到用户的电子商务，类似淘宝这样的由用户供货，卖给用户并从中收取手续费的电子商务网站就是C2C网站.<br />\r\n<br />\r\n23 什么叫web2.0<br />\r\n<br />\r\nWeb2.0，是相对Web1.0（2003年以前的互联网模式）的新的一类互联网应用的统称，是一次从核心内容到外部应用的革命。由Web1.0单纯通过网络浏览器浏览html网页模式向内容更丰富、联系性更强、工具性更强的Web2.0互联网模式的发展已经成为互联网新的发展趋势。 <br />\r\nWeb1.0到Web2.0的转变，具体的说，从模式上是单纯的“读”向“写”、“共同建设”发展；由被动地接收互联网信息向主动创造互联网信息迈进！从基本构成单元上，是由“网页”向“发表/记录的信息”发展；从工具上，是由互联网浏览器向各类浏览.<br />\r\n<br />\r\n24 什么叫div+css<br />\r\n<br />\r\ndiv是层 css是样式 可以说这两个是制作网页的核心 ,比如说某些网页上的漂浮广告就是用div层制作的,就是符合w3c标准的网页布局方法，div+css是这个标准提倡的一种方法。真名是：xhtml?　<br />\r\n<br />\r\n<br />\r\n25 什么叫数据库<br />\r\n<br />\r\n数据库就是"按照数据结构来组织、存储和管理数据的仓库",在经济管理的日常工作中，常常需要把某些相关的数据放进这样"仓库"，并根据管理的需要进行相应的处理。例如，一些单位常常要把职工的基本情况(比如姓名、性别、年龄、工资、基本状况等)存放在表中，这张表就可以看成是一个数据库，通过它就可以根据需要随时查询某职工的基本情况，也可以查询某个年龄段内的职工人数等等。这些工作如果都能在计算机上自动进行，那我们的人事管理就可以达到极高的水平。此外，在财务管理、仓库管理、生产管理等管理事业中也需要建立众多的这种"数据库"，使其可以利用计算机实现财务、仓库、生产的自动化管理。 <br />\r\n说白了，数据库就像是按行列顺序排列的很科学的数据集合。可以随时按某种顺序（或行或列）进行添加，想用时随时可以按任意一种顺序读取数据，十分方便。<br />\r\n<br />\r\n26 MYSQL数据库怎么备份恢复<br />\r\n<br />\r\n如果数据库名字是abcd <br />\r\n服务器是linux系列：数据库的路径是/var/lib/mysql/abcd <br />\r\n如果是windows系列：数据库路径是：...\\mysql\\data\\abcd <br />\r\n<br />\r\n有两张方法备份，一种是直接备份文件夹，一种是备份数据。 <br />\r\n直接备份文件夹比较方便和安全（需要先把数据库服务停了）。 <br />\r\n另一种直接用mysqldump备份，需要把数据库应用方面停掉.<br />\r\n<br />\r\n27 mssql数据库如何远程复制<br />\r\n<br />\r\n首先SQL Server数据库备份有两种方式，一种是使用BACKUP DATABASE将数据库文件备份出去，另外一种就是直接拷贝数据库文件mdf和日志文件ldf的方式。我建议使用第二种方式的备份与恢复。</p>\r\n<p>&nbsp;</p>\r\n</td></tr></tbody></table>\r\n', 0),
	(544, '', 1240126531, 565, 39, 1, 1, '<p>福州现有30万在校大学生，但是到目前为止还没有比较成熟、专门针对福州大学生的电子商务网站。3个原本不认识的福建农林大学的学生，为了开创校园电子商务网站品牌走到了一起。他们的创业还引起了央视的关注。</p>\r\n<p>　　还没赢利 准备打持久战</p>\r\n<p>　　这3名大学生创办的66校园网(<a href="http://www.66xiaoyuan.com">www.66xiaoyuan.com</a>)内容包括校园商城、社区服务、校园专区、就业创业、文化传媒等各方面，销售的物品包括吃穿住用行各个方面。近日记者来到福建农林大学东区一栋宿舍楼底层仓库，里面摆放着几台电脑和一些简易家具。这里是66校园网创业团队的办公地点。</p>\r\n<p>　　“条件很简陋，不好意思。”诸葛宇衍说。他是福建农林大学通信工程专业2008届毕业生，负责网站的整体营运。</p>\r\n<p>　　他告诉记者，2008年3月，66校园网创业团队启动。12月，网站开始运营。除了他，农林大学化工专业2009届毕业生陈群辉负责外联和商品采购，植物保护专业2008届毕业生苏建汉负责网站的技术维护。</p>\r\n<p>　　“福州现有30万在校大学生，这是一个很大的市场。但是到目前为止还没有一个比较成熟、专门针对福州大学生的电子商务网站。”陈群辉说，虽然开业至今，66网站还没有实现赢利，但是他们看准了这块市场，将坚持做下去。</p>\r\n<p>　　他们把实现赢利的希望寄托在今年下半年。“要有一个让顾客接受的过程，首先要让他们认识这个网站，觉得这个网站好用。”诸葛宇衍说，现在他们正采取各种措施在福州各所高校推广网站，树立品牌。</p>\r\n<p>　　连锁“忽悠” 组成创业团队</p>\r\n<p>　　在创业之前，他们并不认识，是共同的志向让他们走到了一起。2007年8月，诸葛宇衍拿着表哥给的1万多元钱，代理了某培训机构在榕城各高校的宣传和推广业务。其间，他负责在福建农林大学举办了一次免费试讲。最后交钱参加培训的只有2人，其中就包括陈群辉。</p>\r\n<p>　　“我是被他‘忽悠’进来的。”陈群辉笑着说，之所以参加培训，是因为他也有创业理想。“认识宇衍后，我觉得他是一个会做大事的人。”</p>\r\n<p>　　2007年年底，陈群辉读了马云的《阿里巴巴》。之后连续3个晚上，他都睡不着觉。“我在想，什么时候自己能像马云一样，在电子商务领域做出点名堂来。”</p>\r\n<p>　　通过校园论坛，陈群辉找到了论坛版主苏建汉，商谈合作事宜，没想到一拍即合。三人就这样走到了一起。</p>\r\n<p>　　“真正开始做的时候，我们遇到很多问题，找不到可以借鉴的经验，只能靠自己摸索。”陈群辉说。相对今年夏天才毕业的陈群辉，已经毕业大半年的诸葛宇衍和苏建汉压力显得大多了，但是“每当有人叫我们送货上门时，又有了希望”。</p>\r\n<p>　　“只要还有一个顾客，我们也要服务好。”2月底，他们的创业吸引了中央电视台的关注。陈群辉在接受央视记者采访时表示，只要他还在，“就会把这个网站坚持做下去”。</p>\r\n<p><br />\r\n文章来自: 站长网(<a href="http://www.admin5.com">www.admin5.com</a>) 详文参考：<a href="http://www.admin5.com/article/20090417/143322.shtml">http://www.admin5.com/article/20090417/143322.shtml</a></p>\r\n', 0),
	(507, '', 1239785318, 529, 18, 1, 1, '<u><em>爱我就别伤害我MTV</em></u>', 0),
	(508, '', 1239785442, 530, 18, 1, 1, '<em>求拂MTV</em>', 0),
	(497, '', 1239775591, 519, 16, 1, 1, '<ul><li><font color="#717171">相机类型：</font><a target="_blank"><font color="#000000">卡片数码相机</font></a> </li><li><font color="#717171">有效像素：</font><a target="_blank"><font color="#000000">1010万像素</font></a> </li><li><font color="#717171">光学变焦倍数：</font><a target="_blank"><font color="#000000">5倍光学变焦</font></a> </li><li><font color="#717171">液晶屏尺寸：</font><a target="_blank"><font color="#000000">3.5英寸</font></a> </li><li><font color="#717171">防抖功能：</font><a target="_blank"><font color="#000000">光学防抖</font></a> </li><li><font color="#717171">存储介质：</font><a target="_blank"><font color="#000000">MS Duo记忆棒</font></a>,<a target="_blank"><font color="#000000">MS Pro Duo记忆棒</font></a>,<a target="_blank"><font color="#000000">MS Pro-HG Duo记忆棒</font></a> </li><li><font color="#717171">焦距(相当于35mm)：</font>33-165mm </li><li><font color="#717171">电池：</font><a target="_blank"><font color="#000000">专用可充电锂电池</font></a>,NP-BD1(标配)/智慧型锂</li></ul>\r\n', 0),
	(498, '', 1239775699, 520, 16, 1, 1, '<ul><li><font color="#717171">相机类型：</font><a target="_blank"><font color="#000000">单反数码相机</font></a> </li><li><font color="#717171">有效像素：</font><a target="_blank"><font color="#000000">1510万像素</font></a> </li><li><font color="#717171">光学变焦倍数：</font><a target="_blank"><font color="#000000">视镜头而定</font></a> </li><li><font color="#717171">焦距(相当于35mm)：</font>视镜头而定 </li><li><font color="#717171">液晶屏尺寸：</font><a target="_blank"><font color="#000000">3英寸</font></a> </li><li><font color="#717171">防抖功能：</font><a target="_blank"><font color="#000000">无拍照防抖功能</font></a> </li><li><font color="#717171">存储介质：</font><a target="_blank"><font color="#000000">SD卡</font></a>,<a target="_blank"><font color="#000000">SDHC卡</font></a> </li><li><font color="#717171">电池：</font><a target="_blank"><font color="#000000">专用可充电锂电池</font></a>,LP-E5,1080毫安 </li></ul>\r\n', 0),
	(499, '', 1239775778, 521, 16, 1, 1, '<ul><li><font color="#717171">相机类型：</font><a target="_blank"><font color="#000000">单反数码相机</font></a> </li><li><font color="#717171">有效像素：</font><a target="_blank"><font color="#000000">1230万像素</font></a> </li><li><font color="#717171">光学变焦倍数：</font><a target="_blank"><font color="#000000">视镜头而定</font></a> </li><li><font color="#717171">焦距(相当于35mm)：</font>视镜头而定 </li><li><font color="#717171">液晶屏尺寸：</font><a target="_blank"><font color="#000000">3.0英寸</font></a> </li><li><font color="#717171">存储介质：</font><a target="_blank"><font color="#000000">SD卡</font></a>,<a target="_blank"><font color="#000000">SDHC卡</font></a>,存储格式:压缩的NEF(RAW):12-bit压缩,JPEG-Baseline标准,压缩率:FINE(1/4),NORMAL(1/8),BASIC(1/16) </li><li><font color="#717171">电池：</font><a target="_blank"><font color="#000000">专用可充电锂电池</font></a>,EN-EL3e </li></ul>\r\n', 0),
	(500, '', 1239776022, 522, 16, 1, 1, '<li><font color="#717171">相机类型：</font><font color="#000000">长焦数码相机</font> </li><li><font color="#717171">有效像素：</font><font color="#000000">1000万像素</font> </li><li><font color="#717171">光学变焦倍数：</font><font color="#000000">15倍光学变焦</font> </li><li><font color="#717171">焦距(相当于35mm)：</font>27.6-414mm </li><li><font color="#717171">液晶屏尺寸：</font><font color="#000000">2.7英寸</font> </li><li><font color="#717171">防抖功能：</font><font color="#000000">光学防抖</font> </li><li><font color="#717171">存储介质：</font><font color="#000000">SD卡</font>,<font color="#000000">SDHC卡</font> </li><li><font color="#717171">电池：</font><font color="#000000">4节5号AA电池</font> </li>', 0),
	(501, '', 1239776169, 523, 16, 1, 1, '<font color="#717171"><ul><li>相机类型：消费数码相机 </li><li>有效像素：1210万像素 </li><li>光学变焦倍数：5倍光学变焦 </li><li>液晶屏尺寸：3英寸 </li><li>防抖功能：光学防抖,MEGA O.I.S </li><li>存储介质：SD卡,SDHC卡 </li><li>焦距(相当于35mm)：25-125mm </li></ul>\r\n</font>', 0),
	(513, '', 1239786953, 535, 26, 1, 1, '非常好用的下载工具', 0),
	(514, '', 1239788019, 536, 27, 1, 1, '版本：6.3.0.1705 (2008-09-27)<br />\r\nWindows 2000/XP/Vista(含32位、64位) ', 0),
	(515, '', 1239788244, 537, 26, 1, 1, '<p style="color:#333333;">全新推出的用户操作界面，为您带来更简洁雅致的视觉体验。 </p>\r\n<p style="color:#333333;">推荐功能：“好友印象”说出心中的Ta、“游戏人生”展示玩家成长经历</p>\r\n', 0),
	(502, '', 1239776235, 524, 16, 1, 1, '<ul><li><font color="#717171">相机类型：</font><a target="_blank"><font color="#000000">卡片数码相机</font></a> </li><li><font color="#717171">有效像素：</font><a target="_blank"><font color="#000000">1010万像素</font></a> </li><li><font color="#717171">光学变焦倍数：</font><a target="_blank"><font color="#000000">5倍光学变焦</font></a> </li><li><font color="#717171">液晶屏尺寸：</font><a target="_blank"><font color="#000000">3.5英寸</font></a> </li><li><font color="#717171">防抖功能：</font><a target="_blank"><font color="#000000">光学防抖</font></a> </li><li><font color="#717171">存储介质：</font><a target="_blank"><font color="#000000">MS Duo记忆棒</font></a>,<a target="_blank"><font color="#000000">MS Pro Duo记忆棒</font></a>,<a target="_blank"><font color="#000000">MS Pro-HG Duo记忆棒</font></a> </li><li><font color="#717171">焦距(相当于35mm)：</font>33-165mm </li><li><font color="#717171">电池：</font><a target="_blank"><font color="#000000">专用可充电锂电池</font></a>,NP-BD1(标配)/智慧型锂</li></ul>\r\n', 0),
	(520, '', 1239789196, 542, 14, 1, 1, '&nbsp;&nbsp; 比尔·盖茨于2008年6月27日退休了，他在<font color="#3366cc">微软</font>同事的心目中是一个什么形象呢？这个当属与他一起共同执掌了微软28年之久的<font color="#3366cc">CEO</font>鲍尔默最有话语权了。“他是一个比较内向的小伙子，不太爱说话，但身上充满了活力，尤其是一到晚上就活跃起来。当时的情况是，经常在我早上醒来时，他才准备睡觉。”鲍尔默在最近接受《<font color="#3366cc">华尔街日报</font>》采访时，如此形容比尔·盖茨。鲍尔默说的对，也许只有活力才是成功的最关键因素，这是比尔·盖茨留给大家最好的礼物！', 0),
	(509, '', 1239785963, 531, 10, 1, 1, '<p>sfdsfd</p>\r\n', 0),
	(510, '', 1239786083, 532, 10, 1, 1, 'ff', 0),
	(516, '', 1239788484, 538, 12, 1, 1, '相当于万能模型!', 0),
	(545, '', 1240126684, 566, 39, 1, 1, '新手站长必须知道的50个问题&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;大家觉的好的话一定要顶啊 <table cellspacing="0"><tbody><tr><td><p>1 建立网站的步骤是什么<br />\r\n<br />\r\n1、申请一个空间空间 <br />\r\n2、申请自己的域名<br />\r\n3、制作自己的网站 <br />\r\n4 上传自己的内容到空间 <br />\r\n5、推广自己的网站<br />\r\n<br />\r\n<br />\r\n2&nbsp;&nbsp;制作网站需要那些工具<br />\r\n<br />\r\n推荐网页三剑客：FLASH+DREAMWEAVER+FIREWORKS。 <br />\r\nFLASH可以创建何种小、下载速度快的网页动画。 <br />\r\nFIREWORKS可以设计各种位图和矢量图形，悬停按钮，分割图片。 <br />\r\nDREAMWEAVER综合功能强大，有网站管理功能。 <br />\r\nFRONTPAGE易用，但很难做出好看的效果。 <br />\r\n<br />\r\n<br />\r\n3 什么叫域名<br />\r\n<br />\r\n从技术角度来看，域名是在Internet上用于解决IP地址对应的一种方法。一个完整的域名由二个或二个以上部分组成，各部分之间用英文的句号"."来分隔，最后一个"."的右边部分称为顶级域名（TLD，也称为一级域名），最后一个"."的左边部分称为二级域名（SLD），二级域名的左边部分称为三级域名，以此类推，每一级的域名控制它下一级域名的分配。 <br />\r\n顶级域名由美国政府控制的ICANN来定义和分配，分为通用顶级域名(gTLD, General Top Level Domain，国内也称为国际域名)和国家代码顶级域名(ccTLD, Country Code Top Level Domain)。 <br />\r\n通用顶级域名中向用户开放的只有.com、.net和.org三个通用顶级域名，由InterNIC来管理（目前ICANN委托美国Network Solutions公司承担InterNIC的运行和管理工作），国家代码顶级域名有240多个，它们由二个字母缩写来表示，分别代表不同的国家，.cn是中国的国家代码顶级域名，由CNNIC来管理（目前中国政府委托中国科学院计算机网络信息中心承担CNNIC的运行和管理工作）。 <br />\r\n从商业角度来看，域名是"企业的网上商标"。企业都非常重视自己的商标，而作为网上商标的域名，其重要性和其价值也已被全世界的企业所认识。域名和商标都在各自的范畴内具有唯一性，并且随着Internet的发展。从企业树立形象的角度看，域名和商标有着潜移默化的联系。所以，域名与商标有一定的共同特点。许多企业在选择域名时，往往希望用和自己企业商标一致的域名。但是，域名和商标相比又具有更强的唯一性。 <br />\r\n从域名价值角度来看，域名是互联网上最基础的东西，也是一个稀有的全球资源，无论是做ICP和电子商务，还是在网上开展其它活动，都要从域名开始，一个名正言顺和易于宣传推广的域名是互联网企业和网站成功的第一步。<br />\r\n<br />\r\n4 如何解析域名<br />\r\n<br />\r\n域名解析就是域名到IP地址的转换过程。IP地址是网路上标识您站点的数字地址，为了简单好记，采用域名来代替ip地址标识站点地址。域名的解析工作由DNS服务器完成。 <br />\r\n如何设置域名解析？ <br />\r\n<br />\r\n您可按以下的步骤办理： <br />\r\n（1）域名可以通过“网络服务管理平台”来管理： <br />\r\n1）浏览：<a href="http://idc.admin5.com/---" target="_blank"><font color="#0000ff">http://idc.admin5.com/---</font></a>＞通过数字ID及对应密码登录客户网络管理系统---＞域名服务---＞域名管理---＞点击需要解析的域名---＞－－&gt;域名解析服务---＞填写三级域名或者IP地址---＞保存设定，系统自动解析---＞域名生效 <br />\r\n<br />\r\nA.新域名初次设置域名解析或在原域名解析中新添域名解析记录，设置将在30分钟左右全球DNS生效； <br />\r\n<br />\r\nB.对已存在的域名解析记录进行IP地址修改，变更结果在管理平台的DNS上是30分钟左右生效，全球DNS一般6-12小时生效； <br />\r\n<br />\r\n5 如何查询一个域名是否被注册 <br />\r\n<br />\r\n请使用域名WHOIS查询。 WHOIS是一个用来查询已经被注册域名的详细信息的数据库（如域名所有人、域名注册商、域名注册日期和过期日期等）。通过WHOIS来实现对域名注册信息查询（WHOIS Database）。 WHOIS查询系统支持国际域名WHOIS查询，国内域名WHOIS查询，英文域名WHOIS查询，中文域名WHOIS 查询。您也可以到<a href="http://tool.admin5.com/" target="_blank"><font color="#0000ff">http://tool.admin5.com/</font></a>查询信息<br />\r\n<br />\r\n6&nbsp;&nbsp;什么地方域名注册好<br />\r\n<br />\r\n推荐几个域名注册商<br />\r\n<br />\r\n中国频道&nbsp;&nbsp;<a href="http://www.35.com/" target="_blank"><font color="#0000ff">www.35.com</font></a><br />\r\n中国万网&nbsp;&nbsp;<a href="http://www.net.cn/" target="_blank"><font color="#0000ff">www.net.cn</font></a><br />\r\n中国新网&nbsp;&nbsp;<a href="http://www.paycenter.com.cn/" target="_blank"><font color="#0000ff">www.paycenter.com.cn</font></a><br />\r\n新网互联&nbsp;&nbsp;mgt.dns.com.cn<br />\r\n商务中国&nbsp;&nbsp;<a href="http://www.bizcn.com/" target="_blank"><font color="#0000ff">www.bizcn.com</font></a><br />\r\n易名中国&nbsp;&nbsp;<a href="http://www.ename.cn/" target="_blank"><font color="#0000ff">www.ename.cn</font></a><br />\r\n<br />\r\nidc.admin5.com 有便宜的1块钱CN域名，如果你不想投入太多资金的话，可以申请用户去注册。<br />\r\n<br />\r\n<br />\r\n7 什么叫网站空间<br />\r\n<br />\r\n网站空间，简单地讲，就是存放网站内容的空间，我们在上网时，通过域名就可以访问到对方的网站内容，然后看对方网站的文章，或下载音乐、电影什么的。<br />\r\n&nbsp; &nbsp;&nbsp; &nbsp; 网站空间可以采用虚拟主机或者专用服务器，那网站是采用虚拟主机还是专用服务器?需要根据网站的情况和预期发展状况进行综合考虑。站长网（<a href="http://www.admin5.com/" target="_blank"><font color="#0000ff">www.admin5.com</font></a>）的一般建议是：一般小型企业网站内容比较少，功能简单，访问量也不大，采用虚拟主机即可，如果虚拟主机无法满足网站的正常运营，或者网站有某些特殊功能，则应考虑采用专用服务器的方式。国内90%以上的网站都是采用虚拟主机.一般来说，企业网站的空间较小，采用虚拟主机就可以,娱乐性质的网站要大一点,下载服务，音乐电影等大型网站往往需要自己组建WEB服务器.<br />\r\n<br />\r\n8 怎样选择网站空间 <br />\r\n<br />\r\n网站建成之后，要购买一个网站空间才能发布网站内容，在选择网站空间和网站空间服务商时，主要应考虑的因素包括：网站空间的大小、操作系统、对一些特殊功能如数据库的支持，网站空间的稳定性和速度，网站空间服务商的专业水平等。下面是一些通常需要考虑的内容：<br />\r\n&nbsp; &nbsp; （1）网站空间服务商的专业水平和服务质量。这是选择网站空间的第一要素，如果选择了质量比较低下的空间服务商，很可能会在网站运营中遇到各种问题，甚至经常出现网站无法正常访问的情况，或者遇到问题时很难得到及时的解决，这样都会严重影响网络营销工作的开展。<br />\r\n&nbsp; &nbsp; （2）虚拟主机的网络空间大小、操作系统、对一些特殊功能如数据库等是否支持。可根据网站程序所占用的空间，以及预计以后运营中所增加的空间来选择虚拟主机的空间大小，应该留有足够的余量，以免影响网站正常运行。一般说来虚拟主机空间越大价格也相应较高，因此需在一定范围内权衡，也没有必要购买过大的空间。虚拟主机可能有多种不同的配置，如操作系统和数据库配置等，需要根据自己网站的功能来进行选择，如果可能，最好在网站开发之前就先了解一下虚拟主机产品的情况，以免在网站开发之后找不到合适的虚拟主机提供商。<br />\r\n&nbsp; &nbsp; （3）网站空间的稳定性和速度等。这些因素都影响网站的正常运作，需要有一定的了解，如果可能，在正式购买之前，</p>\r\n</td></tr></tbody></table>\r\n', 0),
	(523, '', 1240049871, 545, 31, 1, 1, '<p>齐博CMS作为中国最主流的CMS平台之一，齐博官方即将发布对官方及站长都具有重要意义V7版，V7定位为CMS领域的创造版，不仅在功能上具有大幅创新，同时在思路上让站长运营更加贴近主流互联网经济。</p>\r\n<p><strong>V7版包含的几个重要核心理念：</strong></p>\r\n<p>核心关注站长通过运作网站内容的盈利模式，而不再仅仅依靠广告。</p>\r\n<p>齐博官方坚信站长是互联网的核心，站长完全可运营主流的互联网平台。齐博官方期望能协助站长建立一批有影响力的商务站和领域站。</p>\r\n<p>V7将建强大会员中心，成齐博核心体系。新版本大幅优化美工及细节，将改变以前只重技术不重美工的现象。</p>\r\n<p>D、齐博技术团队强调用户体验，更注重开放性团队建设，将实用型、可盈利型系统逐步、稳步推进。</p>\r\n<p><strong>V7版部分功能如下：</strong></p>\r\n<p>1、V7将嵌入快捷小额支付平台，为站长赢利提供基础，包含手机卡支付、游戏卡支付等。</p>\r\n<p>2、V7与PW、DZ进一步整合.高深度齐博CMS与PW整合版实现会员中心整合PW数据，附件与图片实现无缝推送、栏目内文章混排，专题图片CMS+BBS混排等。</p>\r\n<p>3、V7整站将具备订单商务模块，提供手机短信服务体系功能。</p>\r\n<p>4、V7将支持模糊搜索、体系内按模块类别搜索。</p>\r\n<p>5、V7支持在线FTP传送文件、完美支持附件通过FTP传到远程服务器.</p>\r\n<p>6、V7投稿功能将做细、做强，缩略图、所属栏目、内容简介、附件等都将细化处理。</p>\r\n<p>7、V7专题页面将体现大气、内容丰富的形式，能调用CMS文章、图片、BBS帖子。独立页增加标签专题功能.</p>\r\n<p>8、热点：V7重要子系统首页将能调用为整站核心首页调用显示，整站体系将更灵活</p>\r\n<p>9、V7下载将增加自定义功能，同时纳入积分体系。投票功能进一步加强,支持PK方式投票与人物评选投票.</p>\r\n<p>10、V7企业会员、个人会员可通过手机验证与邮箱验证</p>\r\n<p>11、知道系统将与整站融合，提供体系内完整的咨询方案与知识方案。</p>\r\n<p>12、标签新增支持调用自定义表单数据内容。系统自带招聘、报名、售后等多个默认模型。</p>\r\n<p>13、无评论,不新闻-----V6文章评论功能将深度优化, 让用户有更好阅读性,参与性.</p>\r\n<p>14、V7用户可以通过推销管理员推荐文章获得积分;最新新闻和热点新闻可通过标签控制。</p>\r\n<p>15、新增RSS订阅功能、实现跨库整合、浏览文章后发表心情投票功能、最新新闻和热点新闻可通过标签控制、</p>\r\n<p>16、V7将建造强大新闻门户模型，适合做各类资讯门户，模型可关注官方站。</p>\r\n<p>17、V7列表页面将优化，更适合阅读习惯与布局。链接功能也将在V6中优化</p>\r\n<p>18、视频、图片、下载等模块大幅优化，应用主流表现形式。</p>\r\n<p>19、V7提供在线升级功能。</p>\r\n<p>20、V7系统将方便用户搭建服务体系。方便企业售后、商务站等企业对个人的服务模型。</p>\r\n<p>21、强大的专题功能，可以任意调用网站图片，标题，视频等数据。</p>\r\n<p>22、热点：V7系统支持用户个性化系统构造功能，用户可根据需要梳理功能，从而只搭建自己需要功能的合适体系。</p>\r\n<p>在中国信息化之路上， 齐博作为国内杰出技术团队，理解程序为用户所用，不断创新梳理，为用户、合作伙伴、机构等开发实用、卓越的互联网产品。</p>\r\n', 0),
	(524, '', 1240050071, 546, 32, 1, 1, '<p>作为中国互联网平台中最优秀的两支技术团队之一，qibosoft与PHPwind此次再度携手，继qibosoft V5.0与PHPWIND 7.0高深度整合后，V6版与PW7.0将再次强势整合。完美解决CMS与BBS融合问题， CMS+BBS黄金组合已经形成。</p>\r\n<p><strong>qibosoft V6与PW7.0整合版将有以下几大新亮点：</strong></p>\r\n<p>会员中心整合PW数据，用户对所发帖子的追踪、修改、查看都可以在V6会员中心进行。V6会员中心将成为qibosoft核心体系之一。</p>\r\n<p>附件与图片实现无缝推送。PW论坛图片及附件将会非常方便快捷推送到CMS体系。</p>\r\n<p>qibosoft 与PW实现栏目内文章混排，同时可实现静态化。</p>\r\n<p>V6专题图片实现CMS+BBS混排。同个栏目中可混排两个体系的图片。</p>\r\n<p>qibosoft 与PHPwind能解决原创文章来源，让社区与门户完整整合，将平台体系搭建得更合理、有更好生命力。</p>\r\n<p><strong>qibosoft V5.0与PW7.0深度整合版已有功能如下：</strong></p>\r\n<p>一、短消息同步</p>\r\n<p>二、论坛贴子可推荐至qibosoft整站文章系统显示</p>\r\n<p>三、qibosoft系统与论坛整合的内容都能参与整站搜索</p>\r\n<p>四、同步注册 、登录与退出</p>\r\n<p>五、qibosoft与phpwind积分同步</p>\r\n<p>六、整站首页可以调用显示论坛的各项统计信息</p>\r\n<p>七、整站可以通过标签自由调用显示论坛的各个栏目的贴子</p>\r\n<p>八、整站系统的采集功能可以采集数据到论坛的栏目，快速充实丰富论坛资料</p>\r\n<p>两个平台的深度融合，使用户有机会同时利用两个专业技术团队开发的产品，让用户项目在技术方面有更强的拓展性。</p>\r\n', 0),
	(525, '', 1240050179, 547, 32, 1, 1, '<div>如题所示,并且试题支持上传图片,WORD,音频,视频功能.</div>\r\n<p>&nbsp;</p>\r\n', 0),
	(526, '', 1240050522, 548, 32, 1, 1, '<p>如题所示功能已实现</p>\r\n', 0),
	(527, '', 1240050670, 549, 32, 1, 1, '如题所示,只要大家提的建议,是实用的,多人需要的,官方都会一一采纳.<br />\r\n<br />\r\n当然已增强与完善的远远不止这个功能,晚些会一一向大家报告进展情况.<br />\r\n<br />\r\n<p>&nbsp;</p>\r\n', 0),
	(528, '', 1240051050, 550, 32, 1, 1, '2009年3月23日，中国站长站旗下专业IDC交易平台，主机网（CNIDC.com）正式上线发布。<p align="center"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/32/1_20090418180444_f8mDG.jpg" width="368" height="111" border="0" alt="9.jpg" title="9.jpg" /></p>\r\n<p align="center"><strong>&nbsp;图：IDC交易平台主机网（cnidc.com）</strong></p>\r\n<p>主机网（CNIDC.com），立足于IDC行业的B2C交易（B：IDC厂商，C：网站主、企业等客户），依托中国站长站（chinaz.com）7年的站长行业优势，将IDC商家、个人站长及企业用户等IDC终端消费群体，进行无缝隙的对接，保证双方的安全交易，致力于打造中国最专业的主机交易平台。</p>\r\n<p>主机网通过在交易过程中建立的信用体制，来维护和保证整个平台的公正性，以此解决现有IDC行业的价格战、行业规范失调、用户交易无保障等问题。</p>\r\n<p>自有技术开发的这一平台经过了严密的优化处理，不仅让卖家入驻、管理和销售更加简易快捷，同时还做到了让买家浏览、比较、购买更加通畅。主机网依托于中国站长站超过100万的庞大用户群体以及60万的活跃用户资源，以期打造一个中国主机行业最专业的在线交易平台。</p>\r\n<p align="center"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/32/1_20090418180412_jK2np.jpg" width="415" height="185" border="0" alt="99.jpg" title="99.jpg" /></p>\r\n<p align="center"><strong>图：IDC交易平台主机网（cnidc.com）正式上线</strong></p>\r\n<p>据了解，主机网历时半年多时间封闭开发，仔细论证了IDC交易过程中出现的种种可能问题，力争做到交易双方在交易便捷的同时，切实保障双方的交易安全。作为一个交易平台，主机网从商家申请认证、商品发布、服务评级以及现金体现，到用户购买商品、付款方式、信用评价等各个环节，都有一套严密的保障措施。</p>\r\n<p>主机网IDC交易平台技术负责人介绍，针对交易平台的特殊性，主机网在权益保护方面做出了最大化的保障举措。这些保障举措包括消费者保障计划、CNIDC认证商家，以及7天无理由退款等措施，全面维护消费者的权益。</p>\r\n<p>不仅技术有保障，使用也更加便捷。经由信用为基础的销售推荐榜，使得用户购买变得有章可循。整合了国内功能强大的在线支付平台----支付宝和财付通，绑定各大网上银行，也为广大IDC用户提供了安全快捷的在线交易服务。对于品类繁多的主机商品，强大智能的搜索系统让您快速找到您需要的那一款。</p>\r\n<p>作为一个IDC行业的B2C平台，主机网涵盖了虚拟主机、服务器托管、服务器租用、服务器合租、VPS主机等五个细分类别，满足了网站空间使用的不同要求。主机网同时还提供IDC行业资讯，以及其他IDC相关的技术教程等。</p>\r\n<p>对于CNIDC的发展历程，中国站长站创始人阿飞（姚剑军）介绍到，早在2005年底CNIDC就已经推出，当时网站名叫“中国主机评测网”，但是忙于cnzz免费统计的原因，这个网站一直搁置至今。2008年，CNZZ独立成立公司，CNIDC的重新规划也提上日程，成为2009年中国站长站的主要工作，网站也从以前的评测路线，改为一个有严格信誉体系的B2C平台。</p>\r\n<p>“我觉得创业者如果没有诚信体系，我们就创造一个诚信体系，如果没有支付体系，我们建设支付体系，我们只有这个样子，才有机会。”借用马云的这句话，姚剑军道出了推出主机网（cnidc.com）的初衷。姚剑军说，目前互联网交易还有很多不规范的地方，特别像IDC这种行业，更是没有一个行业规范可言，国内各大大小小的IDC服务商参差不齐。主机网的使命之一，就是我们必须让这个行业有行业规范。我们必须得有行业规范，得有诚信体系；我们必须让有实力，服务质量好，产品质量好的公司能够从中脱颖而出。让所有买主机的人都达成一个共识，那就是，买主机，上主机网，我相信我们的努力能为站长带来帮助！</p>\r\n<p>“让天下没有难买的主机！”这是姚剑军给予主机网（CNIDC.com）在IDC行业发展中的愿景。</p>\r\n<p align="center"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/32/1_20090418180427_C2M5c.gif" width="510" height="156" border="0" alt="999.gif" title="999.gif" />&nbsp;&nbsp;</p>\r\n<p align="center"><strong>图：主机网（cnidc.com），中国最专业的主机交易平台</strong></p>\r\n<p><strong>主机网地址</strong>：<a href="http://www.cnidc.com/">www.cnidc.com</a></p>\r\n<p><strong>主机网相关信息</strong>：</p>\r\n<p><a href="http://www.chinaz.com/News/Biz/0323F1Q2009.html">阿飞：我们为什么做主机网</a></p>\r\n<p><a href="http://www.chinaz.com/News/IT/0323F2432009.html">主机网：多重保障打造最专业主机交易平台</a></p>\r\n<p><a href="http://www.chinaz.com/News/Biz/0323F2452009.html">主机网“三心服务”让天下没有难买的主机</a></p>\r\n<p><a href="http://www.cnidc.com/help/index.php?action=artikel&cat=1&id=19&artlang=zh">主机网交易流程</a> </p>\r\n<p><a href="http://www.cnidc.com/help/index.php?action=artikel&cat=2&id=28&artlang=zh">安全购物指南</a> </p>\r\n<p><a href="http://www.cnidc.com/help/index.php?action=artikel&cat=2&id=23&artlang=zh">消费者保障计划</a></p>\r\n', 0),
	(529, '', 1240051810, 551, 33, 1, 1, '<div>如题所示.考虑到有些模型是类似的.重复创建比较影响效率.因此现在新增模型的复制功能.</div>\r\n', 0),
	(530, '', 1240052014, 552, 33, 1, 1, '4月18日消息，谷歌大中华区总裁<a href="http://go.tech.163.com/renwu/data/6.html"><font color="#1e50a2">李开复</font></a>希望谷歌在中国市场份额能够得到更好增长，不仅从质量上，也从数量上超越竞争对手<a href="http://go.tech.163.com/info/detail.jsp?id=5"><font color="#1e50a2">百度</font></a><a href="http://go.tech.163.com/info/detail.jsp?id=5"><font color="#1e50a2"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://cimg20.163.com/tech/2008/3/31/20080331145327d1893.png" width="18" height="18" border="0" /></font></a>。今天，李开复在博鳌亚洲论坛接受<a href="http://go.tech.163.com/info/web/2.html" target="_blank"><font color="#1e50a2">网易<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://cimg20.163.com/tech/2008/3/31/20080331145327d1893.png" width="18" height="18" /></font></a>科技专访时表示，过去两年来，谷歌中国市场份额已经增长一倍，今年仍会推出更多的新产品，吸引更多的人来使用谷歌搜索引擎。<p><strong>报业问题可以达成共赢</strong></p>\r\n<p>在美国，传统报业媒体老总们开始指责谷歌无偿掠夺了他们花大价钱采访到的新闻，并且让网民养成了免费获得新闻的习惯。不过谷歌大中华区总裁李开复认为，随着时代的进步和传播载体的变化，谷歌已经与很多传统媒体的网站保持非常良好的关系，通过在线的谷歌广告系统也取得了很好的合作，是一种共赢的关系。</p>\r\n<p><strong>市场份额两年增一倍 搜索质量第一</strong></p>\r\n<p>李开复认为谷歌中国的中文搜索质量已经是绝对的第一。“过去两年我们的市场份额增加了一倍，可以看出我们的数据明显在成长。”</p>\r\n<p>对于谷歌中文的搜索质量，李开复表示，从谷歌内部的评估结果看，谷歌目前已经是第一的水平。</p>\r\n<p>李开复表示，从搜索质量的判断角度来说，“判断标准有四点，首先是第一页的结果，谁的相关性结果最多，其次是作弊的网站，是否能够侵入到你的搜索结果里面，三是索引是否最大最完整，第四是索引是否最新。”</p>\r\n<p>在这四个指标里面，李开复表示，索引最新都差不多，但是其他三个方面，谷歌远超过竞争对手。</p>\r\n<p>但是谷歌在中国的市场份额仍落后于百度，李开复解释说，“因为很多人不理解，不知道，不相信谷歌已经是搜索结果最好，所以我们希望将来更多的网民试一下。还有一个原因是大家的搜索习惯，因为认为觉得搜索质量差不多，所以不愿意更换搜索引擎。”</p>\r\n<p><strong>音乐搜索是唯一一家正版音乐搜索</strong></p>\r\n<p>和百度在中国大陆搜索市场的竞争，是李开复很长时间都要一直面对的一个问题。</p>\r\n<p>对于谷歌新近推出的音乐搜索，李开复认为，谷歌新近推出的音乐搜索是中国唯一一家“正版的音乐搜索”，和唱片公司合作，有助于网友进行更好的体验。“谷歌的音乐搜索不是一个模仿式的产品，不但是免费的，而且是正版和高质量的，还要有创新的功能。而正版授权仅仅针对中国大陆地区。”</p>\r\n<p>李开复认为，音乐搜索正版化其实不是谷歌最大的优势，而是最大的挑战，谷歌音乐搜索的核心优势是搜索质量和体验，对于有说法提出谷歌音乐搜索结果比较少一事，李开复表示，“搜索的结果应该是越少越好，而不是越多越好。一个好的正版高质量搜索就可以让用户满意。如果广告反馈的效果好，音乐搜索还会向中国大陆市场以外推广。”</p>\r\n<p>谷歌推出音乐搜索之举被业界认为是进入其在华最大竞争对手百度最强势的MP3搜索领域，与百度展开直接竞争，而百度此前曾经和一些大型唱片公司就是否侵权产生了分歧，百度首席执行官<a href="http://go.tech.163.com/renwu/data/45.html"><font color="#1e50a2">李彦宏</font></a>在昨天接受网易科技专访时表示，对于版权问题，百度非常重视，对于网上任何侵权的信息，都会立即将链接删除下线，同时百度也不希望成为音乐内容的提供者。</p>\r\n<p><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/33/1_20090418180432_EwElB.jpg" width="500" height="381" border="0" alt="2.jpg" title="2.jpg" /></p>\r\n<p><strong>开发更多新产品吸引更多用户</strong></p>\r\n<p>李开复表示，希望开发更多的新产品来吸引用户。</p>\r\n<p>李开复表示，和对手的差距还需要进一步拉开，Google要求做到，两米之外，就可以看出搜索的优势。“谷歌的整合搜索包括了地图、不但有网页、照片、视频、<a href="http://tech.163.com/special/00092FUU/blog_tech.html" target="_blank"><font color="#1e50a2">博客</font></a>、音乐，任何一个搜索词，无论是常见关键词还是长尾关键词，都能在谷歌得到最有效的搜索结果。”</p>\r\n<p>除了加强音乐搜索外，对于一些用户喜欢问答型搜索，谷歌也和天涯进行了合作。谷歌的个人主页igoogle，还有移动搜索和地图搜索，也会是谷歌重点加强的三个领域，“上百位谷歌工程师，正在专注的做整合搜索，再下一步，还会有一些很好的产品出现。”</p>\r\n<p><strong>3G会是市场催化剂</strong> </p>\r\n<p><strong>针对3G移动互联网搜索市场，谷歌做了很多的准备</strong></p>\r\n<p>谷歌刚刚和中国移动续签了移动互联网搜索的协议，李开复和<a href="http://go.tech.163.com/renwu/data/1.html"><font color="#1e50a2">丁磊</font></a>也一起为中国电信拍摄了最新的3G宣传广告，不过李开复坦言，尽管谷歌保持开放心态愿意与所有的电信运营商在无线互联网上合作，但是由于双方精力有限、人手有限，不排除有些厂商会选择其他的搜索厂商。</p>\r\n<p>“我们认为3G是一个催化剂，让过去很慢的服务变得很快，经过收费的下降，3G将普及到全国。但谷歌不会参加更多的产品的设置，手机可以上网，也会是一个很必要的问题，让我们专注的产品，搜索和地图达到主流，但我们不会推出软硬件产品。”</p>\r\n<p>不过谷歌的Android手机平台软件会是一个例外，李开复表示，谷歌的软件可以让用户拥有一个高质量的免费开源的手机操作系统，让用户拥有一个很好的使用体验，还可以让任何手机制造商可以制造出来高质量的手机。”</p>\r\n<p>李开复说，“对于中国手机制造商和电信运营商来说，很多操作系统需要国外的手机操作系统，每次都要需要国外的支持，但是没有源代码，修改会非常麻烦，所以谷歌的手机操作系统，是将一个最新最好的操作系统和浏览器，免费的送给移动运营商和中国手机制造商。”</p>\r\n<p><strong>互联网会帮助企业度过经济危机</strong></p>\r\n<p>对于这次影响全球的经济危机，李开复认为，互联网企业是相对健康的，“希望互联网能够引导中国企业脱离此次经济危机，更好的利用互联网上面的资源，进行更好的推广，搜索广告和游戏相对是比较看好的行业，但是品牌广告是下降的，不过没有美国下降的那么严重。”</p>\r\n<p>李开复认为，当前企业要降低成本，收紧腰带，借助互联网，不仅能够平安的度过寒冬，也可以在春暖花开的时候，在世界金融复苏的时候，得到很好的成长。</p>\r\n<p>对于金融危机的影响，李开复表示从谷歌客户的统计数据看，影响较大的是出口型企业，谷歌全球成长是6%，尤其是中国成长远超过全球，“谷歌搜索广告去年第四季度增长特别的好，我们的成长远远超过业界同行。第一个季度我们预计会保持和业界一致甚至更好的增长。春节之后，中国也在保持很好的增长。”</p>\r\n<p>对于招聘计划，李开复表示，谷歌全球的人员的增长可能会相对缓慢一些，维持在稳定的水平，但是没有下降，中国区的人手则保持增长。（林一木）</p>\r\n', 0),
	(531, '', 1240052409, 553, 33, 1, 1, '<p><span>央视网消息： 随着信息产业在中国飞速发展，一些互联网企业曾经实现了快速成长，但是在当前金融危机影响下，互联网也需要进行思路的整理和调整，互联网精英站长会召开，让部分优秀的互联网精英齐聚南京，为中国的互联网健康有序成长献计献策。<br />\r\n&nbsp;&nbsp;&nbsp; <p align="center">&nbsp;</p>\r\n</span></p>\r\n<p align="center">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align="center">&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p align="center"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/33/1_20090418190417_93pys.jpg" width="546" height="372" border="0" alt="4.jpg" title="4.jpg" /></p>\r\n<p>&nbsp;</p>\r\n<p align="center">&nbsp;</p>\r\n<p align="center">&nbsp;</p>\r\n<p align="center"><span><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/33/1_20090418190427_FSk2e.jpg" width="548" height="323" border="0" alt="5.jpg" title="5.jpg" /><p><br />\r\n&nbsp;&nbsp;&nbsp; 近日，来自全国各地的近200位网站站长和互联网精英齐聚南京，对未来社区发展和盈利等焦点话题进行了深入的探讨，众多资深站长们分享了自己的创业故事以及做网站的多年体会。本次大会针对全球和中国互联网发展前瞻性观点的行业分析，顶级技术工程师开发社区的网络应用以创造可持续发展的商业模式，在线广告平台和商业模式，以及互联网行业发展方向、经营理念、技术方案、网站收益等话题进行讨论和分享。 </p>\r\n</span></p>\r\n<p><br />\r\n&nbsp;&nbsp;&nbsp; 近日，来自全国各地的近200位网站站长和互联网精英齐聚南京，对未来社区发展和盈利等焦点话题进行了深入的探讨，众多资深站长们分享了自己的创业故事以及做网站的多年体会。本次大会针对全球和中国互联网发展前瞻性观点的行业分析，顶级技术工程师开发社区的网络应用以创造可持续发展的商业模式，在线广告平台和商业模式，以及互联网行业发展方向、经营理念、技术方案、网站收益等话题进行讨论和分享。 </p>\r\n<p>&nbsp;</p>\r\n<p><br />\r\n&nbsp;&nbsp;</p>\r\n<h1><font size="4">CHINAZ:专访PHPWind 王学集：其实，我是一个程序员</font></h1><p>6月11日，雨后的杭州下午，PHPWind Forums v6.3和LXBlog v6.0正式版发布前，有点消瘦的王学集老道地起身用小青瓷茶壶泡了一壶茶，坐下后扶了扶下眼镜，悠闲地抿了一小口茶，一身的商人性格流露出来。但之后对着电脑接受采访的习惯，俨然又摇身变为一个程序员。</p>\r\n<p>王学集1998年一触网，地道的80后便开始施展自己的兴趣和爱好。起初是一种投入和迷惑，之后是满足感和被关注。2002年王学集上大学的同时，另一个身份已经是一个兼职程序员了。在做了一短时间的技术服务后，王学集开发了自己的产品，2003年将重点放在了论坛服务上。网络的快速发展后对社区软件的极大需求对王学集的技术研发团队是一个刺激，他们看到了自己产品的市场化前景，于是在2004年PHPWind正式成为一个通用论坛项目。2005年，毕业后没上研究生的王学集以自己优秀的产品打动了投资人，拿到了一笔钱，这个二人团队在母校旁边创立了自己的技术服务公司，同时他的身份由程序员变为了CEO。</p>\r\n<p>王学集坦言在成为管理者之后他便不再参与产品的研发了。原因是公司员工40多人，80%是负责产品的技术人员，他虽然是产品的创始人之一，但他担心如果自己以CEO的身份继续参与具体项目会给其他技术人员造成束缚，不利于产品和公司的发展。但他仍一直是自己产品的第一个测试者，把自己首先当成用户，之后再与研发人员交流心得，以保持产品的用户体验舒适。</p>\r\n<p>谈到产品本身，王学集表示现在PHPWind提供的建站软件服务已经非常成熟，即使建站者在没有任何计算机程序背景下，建一个网站的同样也是简单并且不失个性化。PHPWind提供了一系列建立网站的软件，比如社区、博客、SNS系统等，建站者可以根据自己的需求将不同的软件进行组合达到自己的个性化需求。目前PHP专注于更大范围内的社区网站技术支持，为建站者提供“一条龙”增值服务，包括域名、软件、购买空间，和从小站升级到大中型站点的服务等。</p>\r\n<p>王学集认为论坛作为社区产品，与博客相比较生命力更强，市场仍具备发展潜力，因此公司目前的任务是继续丰富和完善产品本身，更要迎合用户和潮流的不断变化，并在此基础之上为高级用户提供具备自成长性的产品，在此他笑称服务拼的就是内功，用户不可能因为同情而付费。</p>\r\n<p>在回忆公司发展时王学集承认自己曾经犯过两个错误，一是不应该理想化地上马网上商城项目，二是贸然在北京开设分公司。王学集表示，两个错误责任在他，使公司发展上有些冒进了，但做出下马决定的也是他，源于他对用户的负责。王学集认为对用户承诺的兑现是一个天大的事，纸上谈兵要不得，他宁可走专精路线也不能让过度膨胀砸了PHPWind的金字招牌。</p>\r\n<p>在商言商，在被问道如何看待竞争对手时王学集并无太多激动。他觉得每个好的产品都有存在的理由，想在好的市场上发展，必须要有一个竞争对手，没有竞争就没有进步，如果自己的产品不好，就不会出现在第一和第二位的争议里面。但对于对手的不正当竞争王学集表示一定会严肃对待。</p>\r\n<p>对于之前有传言称阿里巴巴旗下品牌阿里妈妈以5000万人民币的价格对PHPWind收购一事，王学集再次重申两家公司只是在社区论坛产品方面的业务合作，并没有涉及任何资本交易。他认为阿里妈妈之所以选择PHPWind的社区论坛产品，是因为看重PHPWind对于社区论坛产品的专注，和产品本身的安全、高负载和运行的高速。王学集同时表示，正是因为公司对产品和用户的关注，才使得外界对PHPWind频频关注，这是一件顺理成章的事。</p>\r\n<p>王学集在回想发展历程时有些感慨，他觉得PHPWind依靠用户的口碑传播能够取得一些成绩很不容易，这也是用户对PHPWind系列产品的认同和肯定，专注是发家之本，辛苦没有白费。</p>\r\n<p>2006年11月，PHPWind在短短的四年不到的时间里注册会员达到100万。</p>\r\n<p>2007年厦门站长大会评选出07年度十大新锐站长，王学集名列其中。</p>\r\n<p>2008年6月12日,PHPWind Forums v6.0发布至今已经有七个月时间，王学集带领他的团队又一次兑现了承诺。</p>\r\n<p>王学集认为取得成功是偶然也是必然。自己的初衷根本就不是为了赢利，而是为了兴趣。但在建了一个有价值的产品后，赢利与兴趣便有了交集，但持续对产品质量的追求才能换得用户的忠诚。</p>\r\n<p>最后谈到角色的过度，王学集认为自己的位置算是变化地比较自然，他觉得管理和技术都是在产生价值，并不对立。虽然王学集坚持认为自己现在完全成为了老板，但一谈到自家产品时他的老板神态便悄然消失，与年龄相称的热情一下就被激发出来，专业的口吻和严整地逻辑思维让人几乎忽略掉他会是领导团队的管理者和面对投资方的经理人。没办法，被人看穿只能怪王学集骨子的那种气质，程序员独有的对产品的专注。（完）</p>\r\n<p><strong>关于PHPWind</strong></p>\r\n<p>PHPWind创立于2002年，在过去的6年时间里，PHPWind一直定为于建站软件开发及提供增值服务，致力于为站长提供简便、有效、可持续的建站解决方案。公司核心产品论坛系统是一套开源软件系统，同时PHPWind拥有众多原创的核心技术包括：独创的模版设计体系、数据库的多表散列设计理念、索引数据文件的利用及其算法、文件读写稳定性算法、数据库索引负载均衡算法、多重安全防护体系等，目前已经成为国内应用广泛的论坛软件之一。 </p>\r\n', 0),
	(532, '', 1240057138, 554, 33, 1, 1, '<p>　　<a href="http://192.168.0.99/view/762692.htm" target="_blank"><font color="#3366cc">章征军</font></a>，网络人称图王，网络界最仗义的个人网站站长，甚至被很多站长尊称为老大，虽然没有发展成一个大站，但是却帮助了无数的小站成长。” <br />\r\n</p>\r\n<div>&nbsp;</div>\r\n　　这是中国站长大会给图王的一个介绍。<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/33/1_20090418200452_bsk1Z.jpg" width="300" height="450" border="0" alt="6.jpg" title="6.jpg" />图王网群或者图王，目前在中国站长圈子里俨然是一个品牌，国内知名站长聚会都少不了图王的参与，图王在站长中非常受尊重。站长们对图王的尊敬来源于图王本人的人品非常好。在中国网络网行业里，个人网站已经成为一股不可小觑的新势力，个人网站以每年两万五千多个的速度快速递增，而且这种增加趋势还在加大。个人网站如此之多，很多相对弱小的网站站长非常需要建站前辈的帮忙，而图王在其中，正是扮演无私奉献的角色。 <br />\r\n<div>&nbsp;</div>\r\n　　估计很多站长朋友只知道图王这个名字，有不少人知道章征军的，或很多朋友都不知道图王这个名字的来历。图王之所以叫图王，其实是因为他第一个的网站88gg.com，这是一个图片站。当时是跟k6（k666是最早的站长论坛，如今很多知名站长，包括站长站阿飞等人都是出之该论坛。）合作的，当时这个站流量非常大。他也比较用心，天天排图片（这也给了我们以后刚刚作网站的一点经验，起始作网站，最好找一个大的网站合作一下，多学一点经验，多开拓一下视野，少一些摸索的时间）当时直接的图片网站很少，数码相机刚流行，各个论坛贴图的图片特别多，图王从朋友搞到一个pro的抓论坛图片的软件，常常借助网吧的大带宽，直接一个论坛一个论坛的抓取下来。 <br />\r\n<div>&nbsp;</div>\r\n　　一天晚上抓下来数万张图片的，然后用acdsee整理微缩再上传，图王做事情很痴狂，乐此不彼，全部手工做的网站，坚持了一年，整理了上百万张图片。手工做了近50个图片网站。当时搜索还没有封网站，常常搜索图片一类的排在第一页的一大半都是图王的，50多个网站，虽然每个网站流量不大，几千ip，全部加起来流量很猛，图王是他的qq名字，所以因此而得名，那个时候图王认识了很大一批新型的站长，相互沟通学习，基本上是知无不说，跟很多未谋面的站长形成了铁关系，多年来的友情，积累图王的关系网。特别是在短信联盟以后，成为每家联盟的活跃分子。一方面帮联盟拉站长，一方面帮站长找联盟，联盟红火的2年，图王也交了2年的朋友， 图王太相信朋友，也上当过，吃过2次大亏。在跟k6停止合作以后，他一直帮上海一个朋友组建联盟，介绍了很多站长过去，最后联盟朋友消失，几十g的图片数据服务器也没了。后来一次跟北京的一个朋友合作推广日付联盟。朋友在支付过几天以后，也玩了消失，幸好金额不大，图王自己垫付了。从此他再也没跟联盟去合作，拉他做联盟的超过几十个公司，他都宛然拒绝，后来碰到04年的严打，严打前，图王悄悄将几十个图片网站低价抛售。乐的一身轻闲，天天买起了域名，研究起了seo，他也常常写点东西，搞流量，作弊什么的，在每个论坛都是点击率很高的，也常常对朋友建站方面，推广方面，怎么买广告、怎么做联盟广告方面进行指导，图王盛名就这样流传开了。 <br />\r\n<div>&nbsp;</div>\r\n　　图王帮助过的很多站长，很多后来通过网络赚到了钱或者把自己的站也做得很大，其中包括知名站点广捷居。03年底的时候，<a href="http://192.168.0.99/view/2178514.htm" target="_blank"><font color="#3366cc">gjj</font></a>认识了图王，图王后来带动广捷居在自己的站上做广告，然后教如何弄搜索等，广捷居然后自己再研究。后来广捷居在彩信上发展起来，成就了gjj也成就广捷居站。类似很多站长的成功都离不开图王的帮忙。 <br />\r\n<div>&nbsp;</div>\r\n　　其实我个人认识图王是比较晚的，具体时间我都忘了，大概是05年。我之前一直做网站，做过各类网站，也包括后来的流客网，得到过图王不少指点。虽然我和图王聊天的次数也不是很多，一般没有事情不会打搅他，因为他自己的事情也很多，需要他帮助的站长无数。但是我通过网站和朋友，侧面了解到图王对中国站长的种种好处，也无意中推动中国互联网的发展，这些都是非常值得我们佩服的。 <br />\r\n<div>&nbsp;</div>\r\n　　每天看到图王的qq总是在线，在qq里对朋友也一直是乐此不彼，他现在在做一个站长资讯网www.2D29.CN希望这样的朋友更多一点，这样的网站更多一点后来的人少走一些弯路，更容易取得成功。 <br />\r\n<div>&nbsp;</div>\r\n　　最后，我替我和所有得到过图王帮助的朋友，向图王表示忠心感谢，也希望图王在以后的事业上取得更大的成功！ HEHE<br />\r\n', 0),
	(533, '', 1240057438, 555, 33, 1, 1, '<p>　阿飞，原名姚剑军。中国站长站创始人。1982年生人。目前身价千万。 </p>\r\n<p align="center"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/33/1_20090418200404_25EwL.gif" width="400" height="316" border="0" alt="9.gif" title="9.gif" /></p>\r\n<p align="center"><strong>　　中国站长站创始人　阿飞</strong></p>\r\n<p><strong>　　阿飞是成功的</strong></p>\r\n<p><strong>　　阿飞是成功的，无论从他以一个中专生的身份，到千万身价的过程，还是从2002年建立中国站长站，2003年早期中国站长站就出现在各大网址站首页名站推荐里。</strong></p>\r\n<p><strong>　　目前，中国站长站的盈利额每个月都在涨，实现了每个月都是最高盈利额奇迹。至于每月数值，阿飞含糊地说，大于20万。</strong></p>\r\n<p><strong>　　阿飞是专一的</strong></p>\r\n<p><strong>　　在互联网泱泱的大国里，阿飞只选中了为站长服务的网站，而且，又只选了，源代码下载这一项业务。盈利渠道就是广告。</strong></p>\r\n<p><strong>　　专注的投入，即为他更有效地利用了创业之初紧缺的资源，又让他着眼于每一处细节的提升。</strong></p>\r\n<p><strong>　　中国站长站现在拥有近三十个员工，主要还是技术人员；中国站长站目前成为行业名站，主要的盈利渠道还是一个：广告。中国站长站发展已经稳固成熟，但是前景展望仍然是：更多地为站长服务。中国的站长越来越多，看重站长的公司也越来越多，站长在中国互联网的地位起来越高，这似乎更注定了，阿飞专一的更长久的理由。</strong></p>\r\n<p><strong>　　阿飞是睿智的</strong></p>\r\n<p><strong>　　阿飞的睿智，在于他懂得量力而为、舍大取小。也更表现在他的善于营销。比如，他巧妙地在源码压缩里放入中国站长站的txt介绍文件、访问快捷方式，这为牢牢抓住站长起到非常大的作用，后来的很多源码下载网站也纷纷模仿阿飞的做法。</strong></p>\r\n<p><strong>　　他的睿智，还表现在他混迹于k666等论坛的时候，发现论坛顶部满满的广告，发现什么是站长最大的需要，瞅中了商机。</strong></p>\r\n<p><strong>　　阿飞也曾是盲目的</strong></p>\r\n<p><strong>　　2000年，阿飞上网的时候，随大流也做个人主页。然后就做了一个看似很大的网站：我爱我网。看起来很美，其实整个网站只有江湖游戏栏目比较有人气，当时在线的大概有几百人吧，每个月也有固定的收入。但他花费了很多时间在网站的其他栏目上，这些栏目的内容他却都没办法做精，白花了很大精力。这是他走过的最大弯路。他也曾经为了拥有一台服务器将江湖游戏包给了别人，然后去做本地门户站，等网站搭建起来后发现本地上网的人并不多，最后不得不关掉。</strong></p>\r\n<p><strong>阿飞也曾是脆弱的</strong></p>\r\n<p>　　人总是看到别人的成功心潮澎湃，创业的激情波涛汹涌，其实，每一个人的成功，都不容易。成功背后的不容易，似乎更值得警醒关注。</p>\r\n<p>　　中国站长站成长的路上，也曾困难重重，有几次差一点就关掉。2002年3月建站后，不久的7月份，因为^法**功的内容被公安机关搬走了服务器，因为数据全在上面，网站被关了一个月。那时服务器在山东，阿飞只能托山东的朋友去找公安拿。最后罚了款还是把服务器拿回来了，网站才重新开放。</p>\r\n<p>　　2004年初，阿飞的服务器被人DDOS攻击，连续攻击了半个月，就因为中国站长站不买他们的防火墙。这半个月时间，阿飞差不多没信心把网站开下去了。最终还是因为朋友的帮助才解决了问题，网站得以重开。</p>\r\n<p>　　其实还有，情感问题，导致的阿飞无心做站，萌生放弃的念头。</p>\r\n<p>　　也曾有过，早期有人出几十万想收购中国站长站，不由心动。</p>\r\n<p>　　<strong>阿飞告诉大家：</strong></p>\r\n<p>　　1. 不管碰上了什么事，坚持下来了，对自己经常做总结并做调整，阶段性地做一些事情。</p>\r\n<p>　　2. 量力而为、舍大取小。一开始不要做大而全的网站，很累，而且并不是那么好发展。一个人的能力是很有限的，过大过全的网站，无论在物质上还是精力上的投入都是巨大的，做站切记量力而行。</p>\r\n<p>　　3. 网站的内容是根本，扎扎实实将网站做好才能吸引用户。做得比较成功的个人站主题都比较单一。主题单一并不意味着内容单一。单一的主题，定位更明确，同时也更容易更深地内容挖掘，让网站真正有“料”，而不只是宽泛的皮毛。</p>\r\n<p>　　4. 一个好的网站＝好的内容+合理的宣传。这也是网站发展的精华所在。</p>\r\n<p>　　5. 要将眼光看远一点。作任何事情都要有明确的目标和详细可行的计划，还要有敢说敢做的性格，如果仅有计划和目标而不实际动手，那么计划永远都是停留在笔记本上的计划，只有用双手实践才能让它完美。</p>\r\n<p>　　只是，为什么收支还只能扯平？</p>\r\n<p>　　<strong>阿飞创业的故事情节</strong></p>\r\n<p>　　2000年，1982年生人阿飞中专毕业了。毕业等于失业，阿飞一直呆在家里，有大把的时间来无聊。无聊又没钱的人，网吧似乎是个不二选择。那时阿飞整天泡在网吧里，与游戏和个人主页为伍，前途一片迷茫。</p>\r\n<p>　　阿飞每月的上网费大于一千，这样无所事事，泡网花钱的孩子，一定是父母的心头之恨。2000年7月，是个里程碑似的日子，阿飞的个人主页，居然赚了8848和易趣的广告费三百多元。阿飞第一次，体验到了从网上赚到钱的感觉。</p>\r\n<p>　　2000年8月，一个大得承载了阿飞不着边际的宏伟理想的“我爱我网”建成了。我爱我网看起来很美，其实整个网站只有江湖游戏栏目比较有人气，当时在线的大概有几百人吧，每个月也有固定的收入。但阿飞花费了很多时间在网站的其他栏目上，只是这些栏目的内容他都没办法做精，白花了很大精力。</p>\r\n<p>　　2000年10月25日，阿飞进了厦门大学就读计算机信息管理专业。但他很快发现，大学里学不到他想要的东西。很多理论的东西，也没有办法用到实际应用上来。中专毕业的阿飞比其他同学早接触电脑，很多同学都向他请教电脑的事情。而且，对于同学们来说，当时有固定收入的阿飞，无异是个“款”，都很羡慕。阿飞应该感觉到骄傲才对，可是，棋无对手的他，突然觉得，那个大学毕业证，对他来说，没有什么意义。</p>\r\n<p>　　2001年6月，阿飞弃学回家，专心他的建网之路。至今问起他，对放弃大学学业，是否后悔。他答得很干脆，不会。他甚至觉得庆幸，他没有虚度三年光阴。阿飞认为中国的教育是失败的，包括他的公司招人，有很多人在大学三年虚度，走上社会，却什么都不会。全都很迷茫。阿飞庆幸他不是这群人中的一个，至少没有浪费这三年时间。</p>\r\n<p>　　在这期间，阿飞曾和两个山东人(我爱我网的用户)合买了一台服务器。为了要这台服务器，他将当时站上最火的并且有收入的江湖栏目让两个山东人运营，收入也归他们。后来这个栏目的人气下降，因为那时候网游已经火起来，阿飞清楚地记得，最开始火的是石器时代。这样，阿飞发现我爱我网没什么发展，因为网站上什么内容都有，一点特色都没有，除掉江湖，网站就是个垃圾了。拖着一个庞大的垃圾网站行走的阿飞，可以说终于累垮了也可以说非常聪明地，在2001年9月，关闭了我爱我网。</p>\r\n<p>　　然后阿飞，又试图建过地方门户，也曾经建过社区网站“梦里长安”，但都不能把阿飞带到理想的顶峰。</p>\r\n<p>　　这些年，为了做站的需要，阿飞长期泡在一些站长聚集的地方，比如K666和Yuzi。2002年的互联网，个人网站已经慢慢多起来。k666是一个站长论坛，人气很不错，还有一些源码下载，广告也做得满满的。yuzi是一家提供论坛等建站程序的，也会有一群站长经常聚在里面。但是阿飞发现他们网站做得并不好，并且，他想：随着网民越来越多，个人站长也将会越来越多，做一个针对站长服务的网站应该会很有前景。</p>\r\n<p>　　2001年底，阿飞分析酝酿着他的建站计划。他考虑从源码下载入手，当时个人站长或者中小型网站做站，很多都是用现成的源码，每个做网站的人电脑里都会放着各种各样的源代码(阿飞也同样)。于是阿飞把自己收集了很久的源码拿出来重新整理。一个人做其实特别累，而且可能做不好，他就找了QQ上的一个叫顽石的朋友来帮忙。</p>\r\n<p>　　顽石当时好像是在网吧上班，有很多的时间，阿飞告诉他要做的东西并希望顽石能帮他一起来做这个网站。顽石答应了，但他向阿飞表示只算是帮阿飞。可能顽石对能不能做起来这个网站心里并没有底。阿飞一直在说服他。</p>\r\n<p>　　阿飞拿了一套下载系统修改成自己需要的，并且自己制作网页。源码由顽石负责更新，阿飞负责更新以外的如程序修改、网页制作、网站合作这些事情。阿飞和顽石两个人没日没夜大概花了一个多月时间，将所有的源码分类整理，最后在02年的3月初推出了网站，当时网站其实只有一个源码下载栏目。</p>\r\n<p>　　中国站长站的域名阿飞也是找了非常久，第一个选择的域名是2001年底注册的chinazzz.net，即中国站长站的意思，当时没有钱可以买到更好的域名。2002年1月抢注了chinazzz.com。再后来，朋友推荐说cnzzz.com会更好记，于是换了cnzzz.com，在网站发布的时候用的域名其实是cnzzz.com。一直到后来抢注到了chinaz.com这个域名。</p>\r\n<p>　　网站规划先从源码下载入手，然后再做站长论坛，再扩展其他服务。那时个人站还都是租空间，阿飞也是同样。但此时阿飞发现，真正要做好网站，服务器稳定是非常重要的。为了能有一台自己的服务器，阿飞将我爱我网的江湖游戏运营权出让给了两个山东人，然后他又写了一份计划书，找老爸要来一部分钱，花了两万多买了一台服务器。</p>\r\n<p>　　中国站长站开放一个多月后，就有一家厦门的主机商找上门要投放广告。第一笔好像是100块钱做的浮动广告。营利模式在创建之初就想好了，就是做广告，直接卖广告给这些卖虚拟主机的人。只是他没有想到，利益会来的这么快。一直到现在，发展的速度比阿飞自己想象的快很多，他没有想到中国个人网站的数量会这么快增加到这么多。</p>\r\n<p>　　2003年，中国站长站已经有了十几万访问量，在个人站中已经有了一定的知名度，已经出现在包括hao123在内的各大网址站首页名站推荐里。很多主机商都自动找上门来要投放广告。</p>\r\n<p>　　2005年下半年，阿飞的公司正式成立。目前规模大概有近三十个人，盈利额每个月都在涨，实现了每个月都是最高盈利额奇迹。</p>\r\n<p>&nbsp;</p>\r\n', 0),
	(534, '', 1240059129, 556, 33, 1, 1, '<strong>熊晓鸽简介：</strong> <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/33/1_20090418200406_BlSMk.jpg" width="800" height="532" border="0" alt="9.jpg" title="9.jpg" /></p>\r\n<p>&nbsp;被誉为“中国引入高科技产业风险基金的第一人”、“中国信息的使者”的熊晓鸽先生，出生于湖南湘潭市，做过4 年电工；1981年毕业于湖南大学外语系；1984年，在机电部任翻译和英语教师的他以全国统考总分第三名的成绩录取为中国社科院研究生院新闻国际英语写作专业研究生；1986年秋天，他在新华社国际部工作时，获得美国波士顿大学全额奖学金赴美留学。1987年底，获得大众传播学硕士学位后，进入费莱彻法律与外交学院攻读国际经济与商理博士学位。攻读博士学位期间，他在全球最大的出版机构卡纳斯公司工作，担任了《电子导报》亚洲版的主任编辑。1991年秋，荣获美国最具影响力的美华协会“99最佳新闻报道奖”和“留美最杰出青年”称号。1993年，他代表 IDG集团投资2000万美元与上海科委合作，成立中国第一家合资技术风险公司，熊哓鸽亲自担任总经理；同年，与广东银行合作，成立另一家技术合资公司。1998年，代表 IDG集团策划与国家科技部建立科技风险投资基金，在今后七年内向中国的技术产业提供十亿美元的创业基金</p>\r\n<p>过去几年随着一家又一家技术型公司的上市和投资“选秀”节目《赢在中国》的热播，怎样获得风险投资，从熊晓鸽手中获得投资成为众多年轻人的理想。</p>\r\n<p>　　如果你熟悉一个人的经历，你就更容易知道他的取舍。</p>\r\n<p>　　<strong>77级大学生</strong></p>\r\n<p>　　熊晓鸽出生于湖南省湘潭市。</p>\r\n<p>　　熊晓鸽的青少年时代恰逢文革，他的父亲从部队转业后在当地钢厂担任干部，经过父亲的安排，1973年，熊晓鸽到工厂当了一名电工。</p>\r\n<p>　　1977年恢复高考，一直在自学中的熊晓鸽顺利考上湖南大学。他报考的是当时颇为热门的工业自控专业，不过此时学校正在招募具有一定语言基础的学生以成立英语专业，熊晓鸽被选上。</p>\r\n<p>　　77年高考入取率是4.8%，熊晓鸽事后总结，这意味政府会给你安排一份好工作，1981年，大学毕业后熊晓鸽第一次报考研究生没有通过，随后被分配到机电部担任翻译和英语教师。</p>\r\n<p>　　在湖南大学上学期间，熊晓鸽有一篇文章在《湖南日报》头版发表，内容为美国外教教他们学习英文，这激发了他最初对记者工作的兴趣。1984年，他以全国统考总分第三名的成绩，被录取为中国社科院研究生院新闻系英语采编专业的研究生。</p>\r\n<p>　　当时熊晓鸽就读的这个班是由新华社出资，其目的就在于定向培养记者。熊晓鸽因为曾经是军人的父亲的影响，一度希望成为一名战地记者。1986年，整个上半年，熊晓鸽都在新华社中东非洲组实习。</p>\r\n<p>　　在就读研究生期间，熊晓鸽与学校的数名外教相处融洽。其中一名来自哥伦比亚大学的外教建议熊晓鸽去美国学习新闻。他认为中国的新闻从业人员仍然有需要向外界学习的地方，熊晓鸽先是有些犹豫，既然他的职业生涯已经颇为明确，随着对外界了解的增加，最后“顿悟”，决定接受老师的这个建议。</p>\r\n<p>　　熊晓鸽无疑是赶上了赴美留学的好时间，在提供美国老师的推荐信，及十篇在《中国日报》发表的英文文章之后，很快就获得波士顿大学传播系的录取通知书，并且大学提供全额奖学金。</p>\r\n<p>　　作为一个花絮，当时的熊晓鸽并不知道，赴美留学需要考托福，否则就不能获得赴美签证申请表，当然这对英语专业人士来说不构成什么问题，熊晓鸽准备了两周，考了617分，顺利通过。</p>\r\n<p>　　熊晓鸽清理了他在北京的财产，买了一张飞往美国的机票和一些他以为用得着的生活用品，当时人们的收入还不高，而美元却颇不便宜，同早期赴美的中国留学生一样，在忙完这一些之后，熊晓鸽就只剩38美元了。</p>\r\n<p>　　在父亲的挥手送别下，这个原本生活已经稳定下来的中国年轻人带着38美元来到了美国。</p>\r\n<p>　　<strong>一个湖南人在美国</strong></p>\r\n<p>　　让熊晓鸽记忆深刻的是他在美国的头两天，在抵达美国之后，熊晓鸽的担保人，也就是那位哥伦比亚大学的老师将他送到学校的临时宿舍，在为其支付了两个晚上计44美元费用之后，塞给他100美元，告诉熊晓鸽，把账单寄给他，他来付钱。</p>\r\n<p>　　第二天，熊晓鸽去学校报到，找到了一份助教的工作，每月可以赚375美元，然后找到了一个四人合租的房子，每月只需要100美元，搬家的时候又找到了一份组装自行车的工作。熊晓鸽给担保人打电话，告诉他不再需要代为支付账单了，担保人说：“我们全家都为你骄傲!”</p>\r\n<p>　　经济上的压力仍然存在，虽然波士顿大学传播系的课程为两年，但是熊晓鸽只有一年的奖学金。除了加倍的学业之外，熊晓鸽还要不断打工获得一些收入。最终熊晓鸽用八个月的时间完成了所有的学分，并且撰写了论文，获得硕士学位。熊晓鸽事后总结：外人可能觉得这是一件骄傲的事情，但他只是觉得压力。</p>\r\n<p>硕士毕业后，波士顿大学给予熊晓鸽攻读博士的奖学金。但不久熊晓鸽又收到了弗莱彻法律与外交学院的奖学金，该学院为塔弗茨大学与哈佛大学合办，于是转学至弗莱彻学院，攻读国际经济与商理博士学位。</p>\r\n<p>　　熊晓鸽之后的职业生涯受到了波士顿大学传播学院的肯定，1998年，学院授予熊晓鸽“杰出校友”称号。表彰他在新闻出版领域内的成就，称赞他是专业领域内的一位杰出的代表。一同获奖的还有007系列影片《明日帝国》的剧作人布鲁斯-费尔斯坦，美国有线电视HBO台副总裁乔-玻尔。</p>\r\n<p>　　在攻读博士期间，其导师的朋友创办了一份面向中国的电子类刊物，需要一名既懂电子又懂新闻的人，熊晓鸽去应征，顺利被卡纳斯集团聘用。本来打算是课余兼职，但是最后在《电子导报》一干就干了三年。因为半工半读，一直没有完成博士论文。</p>\r\n<p>　　在《电子导报》工作期间，恰逢时任中信集团董事长的荣毅仁访问美国，在弗莱彻法律与外交学院演讲，而《电子导报》是晚宴的赞助商。当晚来了很多业内人士，包括IDG创办人麦戈文。</p>\r\n<p>　　席间麦戈文对荣毅仁谈起了他的《计算机世界》，麦戈文让熊晓鸽帮助翻译一下，这样熊晓鸽就认识了他以后的老板麦戈文。</p>\r\n<p>　　<strong>[麦戈文与IDG]</strong></p>\r\n<p>　　急速发展的信息产业在催生苹果、微软这样的行业巨头的同时，产业本身也产生了对市场资讯的大量需求。</p>\r\n<p>　　1964年麦戈文以5000美元创办了一家计算机市场研究公司，即国际数据公司（IDC），三年后，国际数据集团公司（IDG）成立。</p>\r\n<p>　　麦戈文对中国市场情有独衷。他是第一位和中国大陆建立合作出版事业的西方人。1980年他与第四机械工业部即后来的电子工业部合资成立了中国计算机世界出版服务公司，随后出版了《计算机世界》周报。</p>\r\n<p>　　2000年2月28日，麦戈文向其母校麻省理工学院捐款3.5亿美元，这也是美国历史上个人向大学提供的最大一笔捐款。麦戈文应该是美国大公司高层领导人中拜访中国次数最多的企业家。就在前不久，第102次来到中国的麦戈文当选为2007年中国经济年度人物。</p>\r\n<p>　　1991年，熊晓鸽获得了绿卡，这个时候他所在的《电子导报》已经停刊，卡纳斯集团觉得基于当时的环境在中国发展刊物比较难，希望熊晓鸽在香港和台湾工作，而熊晓鸽仍然希望同国内有更多联系，这样他就尝试联系了麦戈文。</p>\r\n<p>　　一谈之下，两人颇为投缘。当年的11月6号，熊晓鸽正式入职IDG。入职后的第一份工作是把国内当时的《国际电子报》合并到《计算机世界》。麦戈文对熊晓鸽的办事方式较为满意，当时麦戈文正在考察亚太地区市场，于是让熊晓鸽陪同考察。</p>\r\n<p>　　一路中，两人交换了各自对新兴市场的看法。当时IDG亚太地区业务分别有两位经理人打理，其中一个是香港人，常驻香港，负责新加坡、马来西亚等地，另一个是美国人，常驻台湾，负责整个亚太区。麦戈文提出，三个人共同拿出一份报告。</p>\r\n<p>　　恰逢年末，圣诞节前夕，两位经理人都去度假了，而熊晓鸽则努力完成了这份报告。这样，麦戈文决定任命熊晓鸽为亚太区主任，后来则扶正为亚太区总裁。</p>\r\n<p>　　就这一段戏剧性的经历，熊晓鸽事后在接受新浪访谈的时候回忆：“完了一想，我说虽然我的报告采用了，我想看看人家的，我说麦先生你把他们俩的报告给我看看，他说他俩都没交，说他们要去度假，很忙，所以你就照你的做吧，他们俩另外安排工作，所以后来美国驻台湾的地方也撤回去了，后来他也离开公司了，另外一个香港的总经理，他后来移民到加拿大去了，没有听过他们怎么样说我不好，因为他们大概也没什么办法，因为给了他一个机会，他们俩都不写，那就不能怪我。”</p>\r\n<p>&nbsp;</p>\r\n<p>　　<strong>IdgVC之赢在中国</strong></p>\r\n<p>　　1993年，熊晓鸽代表IDG投资2000万美元与上海科委合作，成立中国第一家合资技术风险公司“太平洋技术风险投资（中国）基金”，后更名为“IDG技术创业投资基金”，熊晓鸽任总经理。</p>\r\n<p><font color="#666666">【独家稿件声明】凡注明 “和讯网”来源之作品(文字、图片、图表及音视频)，未经和讯网授权，任何媒体和个人不得全部或者部分转载。如需转载，请与和讯网(010-85650997)联系；经许可后转载务必请注明出处，违者本网将依法追究。</font><br />\r\n　1998年10月27日IDG与科技部签署合作备忘录，计划在未来7年时间在中国建立运营一笔风险投资基金以扶持中小科技企业。事后在接受《三联生活周刊》的采访时熊晓鸽说：“这与其说是lDG在海外做的最大一笔投资，不如说是麦戈文商业生涯中最大的一个赌注。”</p>\r\n<p>　　当时国内对风险投资这个概念缺乏了解，相信那一时期，熊晓鸽面对过足够多困惑的目光。另一方面，地方政府希望这种投资局限于特定区域，或者是特定开发区，否则就不可能提供相应优惠措施。合资企业只有外方占股超过25%，才可享受到政策优惠。IDG是同地方政府合作的，并且风险投资倾向于小额占股，这样最终很难在合资企业拥有超过25%的股份。</p>\r\n<p>　　一个更为关键的问题是，熊晓鸽本人并没有从事过风险投资行业，他对风险投资的认识来源于在美国从事记者期间对相关人士的采访。2007年2月熊晓鸽在接受《京华时报》采访时回忆说：“感觉这就是个不靠谱的事情。”</p>\r\n<p>　　<strong>[猴子称大王]</strong></p>\r\n<p>　　根据熊晓鸽本人提供的数字，IDG的第一支基金是从1993年开始，到2003年为止，年均回报率为36%。第二支基金是从1999年开始，回报率超过了40%。</p>\r\n<p>　　IDG已经投资了200多家公司，在海外上市的中国概念股中，一半以上的公司，IDG在不同阶段介入过。IDG投资过的企业包括腾讯、百度、搜狐、搜房、金蝶、当当、3721、易趣，在逐渐兴起的Web2.0项目中，IDG投资了土豆、讯雷、中搜。</p>\r\n<p>　　在所谓TMT领域，可能唯一具有高知名度，但是IDG又没有介入的就是阿里巴巴了。熊晓鸽事后解释，马云最初获得的500万美元的风险投资是由高盛牵头在硅谷敲定的，随后软银开始大量投资。他始终无缘介入。</p>\r\n<p>　　IDG在中国风险投资领域成功的理由很简单，用熊晓鸽的话说就是：山中无老虎，猴子称大王。随着中国产业结构升级，在这一过程中，融资需求产生了很大的变化，就在其他海外机构仍然处于观望时，IDG在一个恰到好处的时机介入了这一领域。</p>\r\n<p>　　由于中国本来就没有风险投资的历史，虽然IDG团队大都为半路出家，但可能正因为如此，随着时间的积累，形成了一套更贴近市场现实的评估标准。另一方面，随着IDG投资项目的增加，形成了“规模”优势，具体一个项目涉及的相关企业，可能正是IDG注资的公司，一方面资讯更为充分，另一方面IDG可以从中牵线搭桥推动企业发展。</p>\r\n<p>　　随着中国市场被看好，风险投资领域本身竞争激烈。IDG开始由幕后转向台前，正在热播的创业类选秀节目《赢在中国》，整个制作费用为3000万元，由三家合作方分担，IDG提供了其中1000万元。熊晓鸽开始被广为人知。</p>\r\n<p>　　<strong>怎样拿到熊晓鸽们的钱</strong></p>\r\n<p>　　从网站留言看，最初的一段时间熊晓鸽在《赢在中国》中的表现，很是让一些受众不适应，有网友在自己的博客上写道：“提问时刁钻、刻薄，还经常不留情面地打断选手的回答，最让人受不了的是他那斜勾勾看人的目光。”</p>\r\n<p>　　这引伸出一个问题，熊晓鸽们取舍投资项目的关键是什么？</p>\r\n<p>　　实际上中国风险投资的成功率非常之高，高到不能对应“风险投资”这个名词。印象上，风险投资可能投10个项目，能够成功1个。而在中国这个数字要高得多，熊晓鸽认为这个数字就IDG来说正好相反，也就是投资10个项目，5个都成功了，熊晓鸽认为IDG只有12%的项目属于失败。</p>\r\n<p>　　业内人士认为，中国市场，规模大、增长快、成本低。作为TMT产业最重要的人力资本这一块，目前上海工程师的薪酬仍然只有硅谷的1/10。</p>\r\n<p>&nbsp;</p>\r\n<p>　　除上述的原因之外，很重要的一点，中国经济体现了后发优势，许多商业模式都在成熟市场得到了很好的检验，相应中国的企业存在拷贝的机会。几乎每一家中国创新企业都有其海外原型，百度与谷歌、搜狐与雅虎、当当与亚马逊，更不用说Web2.0企业了。</p>\r\n<p>　　阿里巴巴旗下的产品也是有其原型的，只是大家相对陌生一些，中国供应商实际上是展会推广服务，环球资源网在很早之前就在提供类似服务，而诚信通的买家互评机制也是借鉴了eBay在C2C上的做法。</p>\r\n<p><font color="#666666">【独家稿件声明】凡注明 “和讯网”来源之作品(文字、图片、图表及音视频)，未经和讯网授权，任何媒体和个人不得全部或者部分转载。如需转载，请与和讯网(010-85650997)联系；经许可后转载务必请注明出处，违者本网将依法追究。</font><br />\r\n与此对应，国内的风险投资商会更倾向于拷贝型的业务，而不是基于本地市场的业务创新。虽然也有例外，比如分众传媒。创新没有受到资本更多的鼓励。</p>\r\n<p>　　<strong>[所谓执行力]</strong></p>\r\n<p>　　就根本来说，风险投资是要求相对短时间内获得高额回报的融资方式。</p>\r\n<p>　　风险投资商会从两个方面考虑问题：首先是执行人的背景，这意味他可能推动的社会资源，另一方面则是从项目的可操作性着眼。</p>\r\n<p>　　IDG是《时尚》的合作伙伴，媒体在中国仍然是高壁垒的行业，至少，获得刊号非常困难。《时尚》创办人吴泓通过努力获得其主管部门国家旅游局的支持，主管部门不但在最初的时候支持吴泓创办《时尚》，并且在2000年把《中外饭店》和《中国旅游导报》划转由《时尚》杂志社主办。《中外饭店》改为《时尚家居》重新出版，《中国旅游导报》则改为《时尚健康》。</p>\r\n<p>　　而IDG投资的搜房网，其创办人莫天全之前担任过道琼斯Teleres亚洲及中国董事总经理，道琼斯Teleres是美国最大的互联网房地产资讯服务商，实际上莫天全参与道琼斯Teleres发展的最初阶段。</p>\r\n<p>　　另一方面，所从事的业务越直观，越简单越好，这意味可操作性。搜房网的业务模式很简单，足够的流量推动在线广告收入的增长。而中国房地产行业在很长一段时间都可以看好。或者换一个角度，就《时尚》而言，其从业人员需要足够多的技能，但是并不像财经内容那么困难。</p>\r\n<p>　　为什么一段时间网站都倾向于“娱乐化”，这可能不是网站管理层的认识，体现的是投资者的要求。娱乐服务的商业模式很简单，对员工没有特殊的要求，增长的流量推动在线广告收入的增长，既然在线广告市场一直保持增长的势头。当然，今天的问题是，太多人主意想到一块去了。</p>\r\n<p>　　最忌讳的是一个模糊的目标，如果一项业务推动得不顺利，那么风险投资商至少还可以选择放弃，但是一个难以评估的结果，会让投资者无所适从。</p>\r\n<p>　　随着《赢在中国》节目演绎到第三季，唯一不变的评委熊晓鸽在镜头前更加自如，但是海选式的筛选机制，是否能够寻觅到合适的投资机会，仍然有待案例证明。</p>\r\n<p>　　<strong>时尚熊晓鸽</strong></p>\r\n<p>　　2006年9月30日，北京东方君悦大酒店，在第四届“Bazaar明星慈善夜”慈善拍卖活动现场，熊晓鸽以99999元竞得Fendi B手袋一个，这无疑是一个女用手袋，不知道他事后打算如何处理。</p>\r\n<p>　　2007年12月8日，熊晓鸽出资100万元人民币，认养成都大熊猫繁育研究基地2006年出生的一对双胞胎大熊猫，并将其命名为“乐山”和“乐水”。这应该定义为一个慈善行为，但是也有浓浓的时尚意味。</p>\r\n<p>　　我们知道，IDG是《时尚》的合作伙伴，1997年IDG和《时尚》合资成立了时之尚广告公司，但是IDG并没有时尚媒体资源，后来经IDG的介绍，《时尚》购买了美国赫斯特出版集团旗下的Cosmopolitan和Esquire的版权。</p>\r\n<p>　　熊晓鸽对“时尚”的兴趣有逐渐增强的倾向。2006年8月，IDG联手《时尚》推出了时尚网站Yoka..com，熊晓鸽亲自担任这家公司的董事长。这家网站上汇集了《时尚》旗下众多刊物的电子版，只是时间上稍微滞后一些。</p>\r\n<p>　　熊晓鸽解释：随着中国经济的发展，客户对于高端时尚品的追求欲望将更加强烈。而Yoka..com专注于为高端品牌、高端人群提供服务，契合了当前国人追求时尚的趋势，对应了国际一线品牌对中国进行渗透的需求。</p>\r\n<p>　　或者有兴趣方面的原因，但是某种意义上也说明了他对趋势的理解，中国社会正在迅速的中产化，以往赢得中国市场的关键始终在于价格，这种情况正在发生改变。同技术型产品不同，基于品牌形成的消费偏好能够实现长期的溢价。</p>\r\n<p>　　<strong>结语</strong></p>\r\n<p>　　有时候猛然间会感觉到，这个世界的变化实在是过于迅速，要很努力才能跟得上社会的发展。熊晓鸽在过去30年的时间里通过自身努力赶上了', 0),
	(535, '', 1240059129, 556, 33, 1, 0, '社会的节拍。而跟上浪潮是所有人共同的课题，不只是风险投资，我们需要尽可能适应所有新生的事物。</p>\r\n<p><table border="0" cellspacing="0" cellpadding="0" width="100%"><tbody><tr><td style="color:#666;font-size:14px;">　　【独家稿件声明】凡注明 “和讯网”来源之作品（文字、图片、图表）， 未经和讯网授权，任何媒体和个人不得全部或者部分转载。如需转载，请与 010-85650997 联系；经许可后转载务必请注明出处，并添加源链接，违者本网将依法追究责任。</td></tr></tbody></table>\r\n</p>\r\n', 0),
	(536, '', 1240060838, 557, 34, 1, 1, '<p>请修改一下原来的PHP168目录为data目录即可解决</p>\r\n', 0),
	(537, '', 1240061182, 558, 34, 1, 1, '<div>在后台设置文章内容关键字突出显示时,如果内容有图片.并且图片含有文字描述时.而此描述文字包括有关键字时.将会导致图片无法显示.<br />\r\n<br />\r\n解决方法是.修改文件<br />\r\n/inc/article_function.php<br />\r\n查找<br />\r\nrequire_once(ROOT_PATH."data/keyword.php");<br />\r\n在他下面一行添加如下代码<br />\r\n$content=preg_replace("/ alt=([^ ]+) /is","",$content);</div>\r\n', 0),
	(538, '', 1240061760, 559, 34, 1, 1, '<p><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/34/1_20090418210411_MAuzU.jpg" width="500" height="333" border="0" alt="1.jpg" title="1.jpg" /></p>\r\n<p>中国移动G3笔记本发布暨合作伙伴加盟仪式在北京举行。中国移动正式宣布与联想、戴尔、惠普、海尔、清华同方、方正等17家国内外PC厂商开展深度合作，共推出29款中国移动定制G3笔记本。此举开创了国内运营商与PC厂商大规模合作的先河，标志着3G（TD-SCDMA）产业化发展取得重大进展。对于用户来说，上网本已经开始向手机发展，当年可以有预存话费换手机，如今也可有条件的“白送”笔记本。<br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/34/1_20090418210415_iM0Xb.jpg" width="500" height="333" border="0" alt="1.jpg" title="1.jpg" /><br />\r\n<br />\r\n<br />\r\n中国移动副总裁鲁向东（中）与17家合作伙伴举杯共庆<br />\r\n<br />\r\n&nbsp; &nbsp; 中国移动作为本次发布会的东道主，邀请了17家合作伙伴的高层领导出席，这种国内PC厂商高层云集的场面即便是在英特尔的倡导下也难得一见。联想大中华及俄罗斯区副总裁 刘杰、中国惠普信息产品集团(PSG)副总裁兼总经理 张永利、戴尔全球副总裁、大中华区消费业务总经理 杨超均上台致辞。足见3G的第一炮已经在国内外PC厂商中开了花。<br />\r\n<br />\r\n</p>\r\n', 0),
	(539, '', 1240062925, 560, 34, 1, 1, '<p>明明白白购主机--专业IDC交易网站主机网（CNIDC）推出“商品快照”功能，让用户更好了解商品动态信息</p>\r\n<p><strong>中国站长站（chinaz.com）4月13日消息：</strong>作为一种对网页历史数据的保存，我们对“网页快照”功能早已熟悉，各大网页搜索引擎中都使用了这一功能。网上贸易中实现某种“快照”功能，是否可以更加全面地了解一个商品的动态信息呢？近期，主机网（<a href="http://www.cnidc.com/">www.cnidc.com</a>）即推出了这一项功能。</p>\r\n<p>主机网推出的这一保存历史数据的功能叫“商品快照”，技术原理上和搜索引擎的“网页快照”相似，只是把这一技术功能巧妙地融入到了商品交易当中。</p>\r\n<p>主机网是一家专业IDC交易平台。众所周知，主机（网站空间）涵盖的指标信息繁多，往往一项指标的改变，就会使得性价比大相径庭。比如支持脚本的不同（ASP，ASP.NET，PHP ）、数据库类型（ACCESS，MSSQL，MySQL），甚至是IIS连接数、流量限制、机房线路、是否代备案等，有时候一项指标的变化，就会使得主机的性能有天上地下的区别，这往往会使用户陷入一种被动的局面。</p>\r\n<p align="center"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/34/1_20090418210456_2Vexh.gif" width="448" height="364" border="0" alt="1.gif" title="1.gif" /></p>\r\n<p align="center">&nbsp;<strong>图：标明信息有变化的一件商品</strong></p>\r\n<p align="center"><strong></strong><p align="center"><strong><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/34/1_20090418210410_CH9Ep.gif" width="417" height="366" border="0" alt="9.gif" title="9.gif" /><p align="center">&nbsp;图：上述商品最新信息数据</p>\r\n</strong></p>\r\n<p align="center">&nbsp;图：上述商品最新信息数据</p>\r\n<p>&nbsp;</p>\r\n<p align="center">&nbsp;图：上述商品最新信息数据</p>\r\n<p>&nbsp;</p>\r\n<p align="center">&nbsp;图：上述商品最新信息数据</p>\r\n<p>&nbsp;</p>\r\n<p align="center">&nbsp;图：上述商品最新信息数据</p>\r\n<p>或许用户是通过朋友介绍而来，或者是用户在参看信息之后相隔很久才购买，在这个时间间隔期里，主机商（IDC）或许就会对某件商品指标进行一定的变动。而主机网推出的“商品快照”功能，将完全杜绝这一情况的发生，让用户全面了解该商品的历史数据，做到心里有数，明明白白购物。</p>\r\n<p align="center">&nbsp;</p>\r\n<p align="center"><strong>&nbsp;图：无信息变化的一件商品</strong></p>\r\n<p>据了解，“商品快照”功能在国内网上交易行业并不多见。技术负责人于东锋介绍，主机相比其他商品在指标上更加复杂，加之全面了解主机性能具有一定的技术难度，如何让用户便捷地了解一件主机商品，至少在信息获取上具有一定优势，“网页快照”即可大大缓解这一矛盾。</p>\r\n<p>作为一家专业IDC交易平台，主机网一直在维护用户权益上精益求精，包括消费者保障计划、CNIDC认证商家，以及7天无理由退款等措施。此番推出“商品快照”功能，即是全方位维护消费者权益的又一悉心举措。</p>\r\n<p><strong>关于主机网：</strong>主机网（CNIDC.com），一家IDC交易平台，也是中国大陆首家专业主机交易平台，于2009年3月23日上线。</p>\r\n<p>主机网立足于IDC行业的B2C交易（B：IDC厂商，C：网站主、企业等客户），依托中国站长站（chinaz.com）7年的站长行业优势，将IDC商家、个人站长及企业用户等IDC终端消费群体，进行无缝隙对接，保证双方安全交易，致力于打造中国最专业主机交易平台。</p>\r\n<p>作为一个IDC行业B2C平台，主机网涵盖了虚拟主机、服务器托管、服务器租用、服务器合租、VPS主机等五个细分类别，满足了网站空间使用的不同要求。主机网同时还提供IDC行业资讯，以及其他IDC相关的技术教程等。主机网网站地址：<a href="http://www.cnidc.com/">www.cnidc.com</a>&nbsp;。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</p>\r\n', 0),
	(548, '', 1240126775, 567, 39, 1, 1, '<p>随着网络购物环境的日渐成熟，越来越多的消费者开始网上购物，社会商业交易环境突破了商家传统的营销模式。互联网时代的进步，产生了新的营销模式——电子商务。</p>\r\n<p>　　电子商务运作得好，不仅仅是商家/厂家单纯产品销售的网络平台，更可以作为商家/厂家售后服务的沟通平台，及时传达市场政策和信息的工作平台，最终形成企业自身一体化运作的商业增值平台。公司或个人如能充分利用互联网环境，就可大大降低企业的市场运作成本，提高效率，同时消费者也能从这个扁平化的网络平台上得到快捷高效的服务，应该是众多厂家/公司今后营销发展的主流。如跟不上这一时代变化，不抢先行动，落后就要挨打，就要被这个互联网时代淘汰，尤其是对终端产品的生产/销售型企业/公司，至关重要。</p>\r\n<p>　　而一个公司要想把电子商务运作成功，需对以下四大要素给予足够重视，防止电子商务营运操作不当。否则，不是盲目投资上马，就是方向、思路、策略型错误，不得要领，最后不得不以失败告终。</p>\r\n<p>　　要素一：自建电子商务平台的重要性</p>\r\n<p>　　很多公司其实现在还在电子商务门外转悠，以为靠阿里巴巴、慧聪网等商业平台上发布商业信息开展工作，就是开展了电子商务，其实，这是在为比别人做嫁衣，你的电子商务命运永远拽在别人的手心里，那些信息发布型商业平台只能作为你宣传推广的网络环境而已。</p>\r\n<p>　　要想把自己的电子商务操作起来，自己的命运就要自己掌握，必须建立自己的电子商务交易平台，平台越早建越好，因为你的平台也是需要时间积累的，早建早受益，后面激发的能量越多，对你公司今后的发展越有利。</p>\r\n<p>　　要素二：建立电子商务平台应遵循循环、可持续发展，逐步提升，稳妥推进</p>\r\n<p>　　1、避免被理论空谈者误导</p>\r\n<p>　　近期通过对多家开展电子商务的公司进行观察发现，很多一开始高调进入，大肆投资的公司不是陷入困境，就是没有了声音，问题在哪?问题出在操作者一开始没有冷静，盲目投资造成，或者一开始心态就有问题， 总想骗老板，骗投资者，或者想造成表面繁荣假象，借机上市，圈钱，结果无一有好下场，泡沫裂了，自己一溜之，其实这些都是操作缺乏经验，没有务实做实业的心态，不懂装懂，破坏电子商务的良好形象。</p>\r\n<p>　　2、早做早受益</p>\r\n<p>　　真正要想把电子商务操作成功，必须抓住公司核心，从 品牌 + 网络平台 + 市场 三个方向上展开，对一个已有品牌，已有市场环境基础的公司来说，启动电子商务相对来说容易些，对一个初始没有品牌，没有市场客户，什么都空白的公司来说，起步期相对需要时间的验证，毕竟这也是一个低成本起步的操作，做任何事总要从基础做起的，不可能一蹿而就，早做早受益。</p>\r\n<p>　　3、建电子商务平台可循环式，可持续发展</p>\r\n<p>　　自建电子商务平台时，不一定一下子投入几百万就是必须的。笔者根据多年的经验，建议起步首先着手建一个基础的电子商务平台，有些后台功能以后可逐步上。这样既起步快，节约时间;又可避免浪费不必要的成本投入。电子商务首抓的是销售、推广，而现在很多缺乏实际操作经验的人总是一开始强调后台功能要如何大，如何强，其实一开始根本用不上，甚至永远也用不上，理论脱离实际。电子商务的循环式、可持续发展才是上上策，操作上逐步提升，稳妥推进，各方参与者都能接受，成功的概率很高。</p>\r\n<p>　　要素三：公司整体团队对电子商务的高度认同、重视</p>\r\n<p>　　电子商务毕竟是近几年发展的新型事物，很多公司的老板、握有决策权的高层管理者在这方面其实都没什么经验和认识，甚至不懂，有的可能听说过。如果在这方面公司团队没有高度的认同、重视，电子商务在公司内部的运用、引进、发展方面，就可能存在着一道不可逾越的鸿沟，这里强调的是团队，不是一个人。</p>\r\n<p>　　一般来说，高度重视的公司会加大投入，全力支持，这样的公司，电子商务发展就快，见效也快;反之，就会原地踏步，或小有进步，瓶颈不解除，做强做大的日子就望眼欲穿，也许要等到同类型竞争者刺激一下，才会醒一醒，行动不行动还不一定知道。所以公司整体团队对电子商务的高度重视，也是电子商务成功运作的关键要素。</p>\r\n<p>　　要素四：要有可靠的电子商务操作领头人</p>\r\n<p>　　公司要找到一个有实战经验的带头人，不能是理论空谈家，给其提供对公司、对个人都有利的空间发展平台，捆绑式发展，这样，公司的电子商务才可持续发展下去，否则，一个人一个思路，耽误公司电子商务的顺利发展，造成不必要的时间、费用浪费。当然，选一个这样务实操作的人也确实不容易，何况真正懂这一领域的专家并不多。</p>\r\n<p>　　对于想用电子商务引领今后发展的生产型、营销型、服务型公司/企业，只要对以上四点核心要素领悟得当，就可最大限度地避免电子商务操作进入误区。在当前经济危机下，以低成本的电子商务模式，务实地把公司各项工作开展起来，就能在这个快速发展的互联网时代，领先一步走在行业的前面;领先竞争对手，早得商机;引领消费者潮流，受益无穷。</p>\r\n<p><br />\r\n文章来自: 站长网(<a href="http://www.admin5.com/">www.admin5.com</a>) 详文参考：<a href="http://www.admin5.com/article/20090408/141109.shtml">http://www.admin5.com/article/20090408/141109.shtml</a></p>\r\n', 0),
	(549, '', 1240126816, 568, 39, 1, 1, '<p>您愿意将自己的工资“公之于众”吗?要知道，现在已经有越来越多的人在网络的“阳台”上对自己的工资“大晒特晒”。进入“一晒网”、“晒工资吧”、“搜薪网”等提供给网民晒工资的专门网站，均能看到不同职业不同人群所“晒”出来的工资单。</p>\r\n<p>　　来自广州的网友YAMO，是在外企工作了5年的高级软件工程师，他在“一晒网”上详细罗列了自己的收入情况，“年薪(税前)8万元。基本工资：1406元;岗位津贴：2858元……”</p>\r\n<p>　　除了像YAMO一样“晒”工资，网友们还对“晒”出的工资作出评价，或者与大家分享自己的工资如何开销的心得。在“搜薪网”上，网友bkh不仅“晒”工资，还从年收入、股票、生活等各项分析自己如何用微薄的工资得出21万的存款。从一些“晒工资”的网站上，网友们能了解到各个行业的工资排行榜，甚至能通过网站提供的软件，输入自己所处的职位、工资收入等，量身订造一份“薪资比较报告”。</p>\r\n<p>　　曾有网友总结了 “晒工资”的四大心理动机，分别是“夸富”、“宣泄”、“攀比”、“交流”，对于这种“晒”工资网站，网友们多表示提倡。网友“小人鸟”说，“大家都晒一晒工资，互相参考一下，能够作为自己更换工作的参考”。 何剑辉</p>\r\n<p><br />\r\n</p>\r\n', 0),
	(550, '', 1240126852, 569, 39, 1, 1, '<p>个性需求催生“旅游婚纱”</p>\r\n<p>　　“拍婚纱照要学姚明叶莉，选背景要挑青山绿水。”这是最近在年轻情侣中十分流行的一句话。一种将旅游和婚纱摄影结合在一起的旅游方式开始在全国流行起来，一批批时尚新人们选择了一边出门旅行，一边拍摄婚纱照，以个性化的方式记录人生的重要时刻。</p>\r\n<p>　　风景定格浪漫瞬间</p>\r\n<p>　　传统的婚纱摄影，拍摄地往往是影楼、室内影棚或是就近的公园。这种老套路拍出来的照片几乎都是流水作业，渐渐不能满足年轻人的口味。</p>\r\n<p>　　“这种将旅游和婚纱摄影结合在一起，以旅游线路上的天然风景为背景，摄影作品独一无二的新兴婚纱拍摄方式，正越来越吸引时尚的年轻人。”</p>\r\n<p>　　“姚明效应”带热旅游婚纱摄影，旅行社、影楼自然不会放过这绝好商机。据介绍，姚明叶莉拍婚纱的太湖源、四川四姑娘山、九寨沟、云南丽江、三亚天涯海角等风景独特的旅游胜地，成了很多新人们拍婚纱照选择的地方。</p>\r\n<p>　　据专业人士分析，旅游婚纱摄影是突破旅游单一概念，引入旅游新元素—摄影的创新，从目前旅游业逐步向高端、细分发展趋势来看，将来的旅游婚纱摄影将成为又一重要旅游产品。</p>\r\n<p>　　随着旅游婚纱的刚性需求的加大，跨区域跨省会乃至跨国度的需求逐步放大，那么如何才能了解到各地婚纱影楼、摄影工作室的详细情况、优惠信息、拍摄风格呢?很简单“网络”，因此在近几年网络上出现了大量的全国性、区域性婚纱摄影网站，随着几年的“优胜劣汰”，目前国内已经出现了婚纱摄影三大门户鼎足而立瓜分天下的景象，也成为全国各地新人们选择影楼和摄影工作室的最权威的网络平台，三大门户久久结婚网、中国婚纱摄影网、幸福婚嫁网各有特色，致力于为广大新人们提供最全面最优秀的服务平台。</p>\r\n<p>　　婚纱摄影第一门户 中国婚纱摄影网 <a href="http://www.wed114.cn">http://www.wed114.cn</a></p>\r\n<p>　　中国婚纱摄影网专注于婚纱摄影行业，囊括中国大部分城市的影楼和摄影工作室，目前已经开通城市达到140多个，15000个影楼和摄影工作室正式入驻开通网上商铺，堪称中国最大的婚纱摄影网站，最吸引消费者的在于最详细的商家信息，包括商家基本信息，精选作品展示，优惠券，最值得消费者注意的是提供了商家点评、留言反馈、最新优惠活动、团购信息发布等。</p>\r\n<p>　　通过我们对其上面100多个商家的查访，普遍认为中国婚纱摄影网在国内首次引进了“婚纱摄影诚信”机制，并建立了“行业大联盟”，类似于淘宝的信用度，可以通过最客观的方式为消费者提供最权威的借鉴指标，通过信用积分机制，准新人们可以了解其他网友对商家的客观评价，不过也有个别商家反应有些点评似乎是竞争对手恶意评价，希望中国婚纱摄影网对点评的监管力度加大，这样才可以形成更客观的信用机制。</p>\r\n<p>　　目前，中国婚纱摄影网除最完善的全国影楼信息库外，还有非常丰富的内容内涵，包含中国婚纱写真图库(堪称中国最大婚纱写真图库)、中国摄影圈(据说已经有近3万摄影师入驻其中，具了解应该属于SNS交流平台)、中国结婚新闻中心(很专业的结婚新闻中心，信息发布很快)、中国婚纱摄影论坛(主要涉及婚纱摄影方面)、中国影楼人才网(通过了解，该网刚刚上线不久，不过已经有很多的商家在上面发布招聘信息，也有很多摄影师、化妆师等进入，逐步形成专业的影楼招聘、求职中心)。</p>\r\n<p>　　编辑小结：编辑通过多方面了解，认为中国婚纱摄影网经营理念清晰明确，致力于为全国准新人们提供选择影楼、摄影工作室最权威的服务平台，通过商家自行管理，消费者反馈、点评可以第一时间了解各商家信用、最新活动、团购信息等信息，让消费者和商家得到真正的实惠。思考问题：虽然全网内容丰富、信息更新效率很高，但是全站贯穿性还待提高，特别论坛活动组织方面还需下大功夫。</p>\r\n<p>　　婚嫁第一门户 久久结婚网 <a href="http://www.99wed.com">http://www.99wed.com</a></p>\r\n<p>　　久久结婚网是目前全国新概念的婚礼服务及婚礼用品的全新展示平台，久久婚嫁网汇集了北京、上海、杭州众多婚礼服务商家的最新资讯和最多促销信息，运用商家网上店铺全方位推介与准新人消费的完美结合，通过网络良好的及时互动和商家精彩纷呈的优惠活动相结合，实现网民网上浏览咨询和网下洽谈交易，为准新人和商家提供一个高效、便捷的一站式婚礼消费平台。</p>\r\n<p>　　久久结婚网主要以社区为主导，通过大量社区活动辅助，建立了中国最大的婚庆社区，通过社区人气带动全网。具了解自成立以来，日P150万，独立IP5万，网站商家会员入驻数量500多家。通过流量分析看出久久结婚网90%以上的访问量来源于社区，因此久久结婚网的结婚社区不愧为中国第一婚庆社区。久久结婚网主要频道包含结婚资讯、结婚知道、结婚社区、结婚文集、结婚商家(包含婚纱摄影、婚庆、礼仪等等)。</p>\r\n<p>　　通过了解，久久结婚网将在2009年，启动区域拓展模式来渗透到中国70%以上的区域市场。同时也加大线下婚展规模，并购结婚行业杂志，探索影视娱乐项目来架构结婚产业立体媒体，以期形成中国结婚产业传媒制高点。</p>\r\n<p>　　编辑小结：久久结婚网是中国最早涉及婚庆行业网站之一，通过频繁社区活动迅速发展至今，久久结婚网树立了婚庆行业全国知名品牌，为广大商家所接受，久久结婚网通过“专注、创新、激情、梦想”的理念，独特的运营模式，吸引了大量的商家及忠实客户群。编辑通过认真了解和分析，发现久久结婚网目前仍然没有走出社区导向型的模式，主要人气仍然聚集于社区，由于社区的网友中准新人所占比例并不是很高，因此虽然久久结婚网有很高的流量和知名度，但是针对商家所带来的实际意义有待思考。</p>\r\n<p>　　北京婚庆第一门户 幸福婚嫁网 <a href="http://www.xfwed.com">http://www.xfwed.com</a></p>\r\n<p>　　幸福婚嫁网专注于北京婚庆行业，在北京、天津等周边区域，幸福婚嫁网有着相当的知名度，自创建以来，一直致力于为广大网友和北京婚嫁服务企业提供服务，对北京婚嫁行业的相关资源进行了内容和咨询的有机整合，方便网友及时获得所需信息。基于在婚嫁行业内建立的信誉及信息优势，目前“幸福婚嫁网”已成为国内婚嫁领域领先的行业门户网站，迅速、及时地提供各地婚嫁发展动向，婚嫁最新潮流，婚嫁市场动态和全面的企业信息，为消费者提供专业的婚嫁消费指导、婚嫁企业推荐、新婚产品导购等服务，引领全新的婚嫁消费理念。</p>\r\n<p>　　同样在北京叱诧风云的婚嫁网站，谁曾想到无限风光的背后有多少的辛酸，用幸福婚嫁网创始人刘小东的话说，婚嫁网就是为婚嫁行业中的企业提供一个展示、品牌推广的舞台;为即将踏上婚礼殿堂的准新人提供一个婚礼经验交流、服务采购的平台。为了实现这个梦想，幸福婚嫁网付出了很多，这是所有的网友都能见证的。幸福婚嫁网的最新动态还是团购为主，因为他的论坛还是有些人气，聚集人气只能通过不断搞活动。</p>\r\n<p>　　编辑小结：幸福婚嫁网是中国最早涉及婚庆行业网站之一，通过社区大量团购活动聚集人气，通过对本地婚庆市场的全方位挖掘，幸福婚嫁网亦然成为北京最大婚庆平台。北京首都，政治文化中心，幸福婚嫁网专注于北京，相信在将来幸福婚嫁网可以发展的更好。思考问题：由于本网主要涵盖北京区域，区域性市场和商家有限，网民和准新人数量有限，因此幸福婚嫁网发展至今遇到了瓶颈，如何突破这个瓶颈对本地市场的深挖掘和更多新的业务拓展将是幸福婚嫁网应该考虑的问题。另外如何稳固论坛的本地人气凝聚力也是很严峻的问题。</p>\r\n<p>　　婚嫁网站对整个结婚行业起到整合、推动的作用，那对于本类网站来说，这个市场到底有多大?</p>\r\n<p>　　数字最能说明问题。据《中国结婚产业发展调查报告》显示，我国最近5年来平均登记结婚人数为811万对，其中城镇居民占41%。在新婚消费方面， 88.40%的新人需要拍摄婚纱照;49.14%的新人计划请婚庆公司为他们筹办婚礼;78.74%的新人准备到酒楼举办婚宴;36.83%的新人要为新娘购买婚纱;67.66%的新人将安排蜜月旅游。每对新人的加权平均消费金额达到12.58万元。按此计算，中国城镇结婚人群一年的消费总额为4183亿元(811万元×41%×12.58万元)。</p>\r\n<p>　　编辑的话：我列举以上三大网站并不表示这三大网站已经垄断全国婚庆网上市场，只是因为他们各有特色，发展良好。而全国各地方均有大小不同的婚庆类网站，其中也不乏优秀之作，比如杭州、武汉、成都等地都有不错的地方婚庆网，因此我们也不能以偏概全。</p>\r\n<p><a href="http://www.admin5.com/article/20090417/143375.shtml"></a></p>\r\n', 0),
	(551, '', 1240126932, 570, 38, 1, 1, '公测版,暂时不可以用于建站,大家想建站的话,请等待25日发布的RC版.RC版可建站使用,至于正式版的话,估计要春节后,才可发布了.<br />\r\n目前完善的功能大致有如下:<br />\r\n<br />\r\n<br />\r\n积分消费记录<br />\r\n<br />\r\n留言本分类<br />\r\n<br />\r\n系统模块自由安装,删除无痕<br />\r\n<br />\r\n标签优化<br />\r\n<br />\r\n验证码加强<br />\r\n<br />\r\n会员中心增加可选风格功能<br />\r\n<br />\r\n,列表页的最新,最新,相关,增加取消JS调用显示标题<br />\r\n<br />\r\n<br />\r\n后台有开关,收费内容,是否完全不给看,还是只给看部分<br />\r\n<br />\r\n对过去所有安全问题进行升级修正.<br />\r\n<br />\r\n插件中心,进一步优化.灵活性更强<br />\r\n<br />\r\n投票的进一步加强<br />\r\n关键字管理 搜索功能<br />\r\n增加一个网站后台地图<br />\r\n<br />\r\n优化一下图片加水印功能<br />\r\n<br />\r\n增加CK编辑器<br />\r\n<br />\r\n增加定时任务<br />\r\n<br />\r\n定时备份数据库<br />\r\n定时发文章<br />\r\n<br />\r\n文章列表与内容页调用标签，可以自适应栏目的FID，即本栏目里的内容。<br />\r\n<br />\r\n<br />\r\n文章静态功能,已取得飞跃性突破,定时全站静态+无人监守静态<br />\r\n<br />\r\n优化生成机制。单列表内容过多，发布生成跳转等待时间过长。有待优化。<br />\r\n<br />\r\n双击页即可进行标签修改<br />\r\n<br />\r\n等等<br />\r\n', 0),
	(552, '', 1240127012, 571, 38, 1, 1, '<p>-----2004年10月11日，菁菁新闻系统1.0版发布 </p>\r\n<p>-----2004年11月23日，菁菁整站1.5版发布 </p>\r\n<p>-----2005年1月27日，菁菁整站1.6版发布 </p>\r\n<p>-----2005年3月4日，菁菁整站1.61版发布 </p>\r\n<p>-----2005年2月11日，菁菁整站1.8版发布 </p>\r\n<p>-----2005年3月28日，菁菁整站2.0版发布 </p>\r\n<p>-----2005年4月20日，168整站系统3.0版发布(同时菁菁整站更名为168整站系统) </p>\r\n<p>-----2005年5月14日，168整站系统3.1版发布 </p>\r\n<p>-----2005年10月6日，168整站系统3.5版发布 </p>\r\n<p>-----2007年1月1日，PHP168整站系统4.0BETA版发布(同时168整站系统更名为PHP168整站系统) </p>\r\n<p>-----2007年3月20日，PHP168整站系统4.0正式版发布 </p>\r\n<p>-----2007年4月6-26日,26日工作室宣布成立(广州天河东圃黄村路140号天雅居C3栋1008) </p>\r\n<p>-----2007年4月26-6月10日推出VIP会员活动。 </p>\r\n<p>-----2007年6月8日，PHP168整站系统4.0SP版发布 </p>\r\n<p>-----2007年6月27日，推出授权版程序正式销售 </p>\r\n<p>-----2007年7月26日,与迅雷下载联盟结成合作伙伴关系。 </p>\r\n<p>-----2007年8月4日，PHP168整站V4.0SP2全功能版发布 </p>\r\n<p>-----2007年8月15日,与PHPWIND结成合作伙伴关系。 </p>\r\n<p>-----2007年8月18日,发布圈子系统。 </p>\r\n<p>-----2007年09月22日, PHP168整站V4.0SP3 全功能版发布 </p>\r\n<p>-----2007年10月23日,与快车下载联盟结成合作伙伴关系。 </p>\r\n<p>-----2007年10月25日,与动网PHP结成合作伙伴关系。 </p>\r\n<p>-----2007年11月02日,注册广州跃创软件科技有限公司(广州天河东圃黄村路140号天雅居C3栋1008) </p>\r\n<p>-----2008年1月1日,发布《分类信息系统》与《万能文章系统》 </p>\r\n<p>-----2008年1月10日,与播客CC结成合作伙伴关系。 </p>\r\n<p>-----2008年1月18日,与CNZZ中国站长联盟结成合作伙伴关系。 </p>\r\n<p>-----2008年4月09日,PHP168整站2008版整站授权版正式推出。 </p>\r\n<p>-----2008年6月01日,PHP168整站2008免费版正式推出。 </p>\r\n<p>-----2008年8月14日,2008全功能版整站系统正式推出。 </p>\r\n<p>-----2008年9月02日,php168知道系统免费版正式推出。 </p>\r\n<p>-----2008年10月15日,php168与phpwind联手打造深度整合版系统。 </p>\r\n<p>-----2008年10月27日,2008版分类信息系统发布。 </p>\r\n<p>-----2008年12月1日,公司更名为：广州协天软件科技有限公司（广州市天河区东圃黄村大道2号骏业商业中心701） </p>\r\n<p>-----2009年4月15日,PHP168整站V6之BETA2内部测试版正式发布 </p>\r\n<p>-----2009年4月20日,PHP168整站V6测试版正式发布 </p>\r\n<p>-----2009年4月20日,PHP168整站V6.0整站系统正式发布 </p>\r\n<p>-----2009年5月23日,PHP168分类信息系统V6版(整合版)发布 </p>\r\n<p>-----2009年5月23日,PHP168分类信息系统V6版(独立版)发布 </p>\r\n<p>-----2009年5月31日,PHP168V6整站系统简体中文UTF8版发布 </p>\r\n<p>-----2009年7月1日,PHP168整站V6.02整站系统正式发布 </p>\r\n<p>-----2009年10月22日,PHP168整站V6分类信息增强包发布 </p>\r\n<p>-----2009年11月27日,PHP168整站V6最新增强版发布 </p>\r\n<p>-----2010年12月1日,PHP168正式启用新官网及新论坛，将PHP168更名为：齐博软件，官网域名改为：<a href="http://www.qibosoft.com">http://www.qibosoft.com</a> <br />\r\n&nbsp;&nbsp;&nbsp;&nbsp; 齐博软件技术交流区改为：<a href="http://bbs.qibosoft.com">http://bbs.qibosoft.com</a>,同时原域名停止使用</p>\r\n', 0),
	(553, '', 1240127172, 572, 38, 1, 1, '现向广大用户作如下公告声明： <br />\r\n<br />\r\n原PHP168产品中的V系列与S系列，现完全独立分开不同的公司所运营！两家公司没有任何连带关系。 <br />\r\n<br />\r\n之前购买PHP168产品中V系列的产品（如6.02以下所有整站版本、B2B系统、分类系统、地方门户系统等等，基于V系列核心开发的），及用V系列订制开发的产品今后的升级与售后服务仍属本公司负责。 <br />\r\n<br />\r\n而之前购买PHP168产品中S系列的产品以及用S系列订制开发的产品，升级与售后服务等等，请联系S系列官方。 <br />\r\n<br />\r\n本公司即日起，针对原PHP168产品中的S系列，不销售，也不开发，也不提供售后支持。', 0),
	(554, '', 1240127229, 573, 38, 1, 1, '<p>据大量网友反馈，现在V系列与S系列共用一个论坛，过于混乱。官方经过慎重考虑，将在12月份启用新论坛 <br />\r\n<a href="http://bbs.qibosoft.com">http://bbs.qibosoft.com</a> <br />\r\n作为V系列的官方论坛交流讨论区。 </p>\r\n<p>另外，这么多年以来，虽然大家一致认为要与世界接轨，使用时尚的英文名，因此PHP168CMS&nbsp; V系列一直没有中文名，作为中文，世界上使用人数最多的语言，我们怎么能忽略中文呢，忽略自己的母语呢？因此，官方初步暂定为V系列取个中文名为“齐博CMS”、“齐博地方生活门系统”、“齐博B2B行业门户系统”、“齐博分类系统” </p>\r\n<p>齐博喻义为：官方与广大网友齐头并进、吸纳百川、博采众长、共同发展。 <br />\r\n因此V系列将启用新域名 <br />\r\n<a href="http://www.qibosoft.com">http://www.qibosoft.com</a> </p>\r\n<p>&nbsp;</p>\r\n<p><br />\r\n注：关于域名为什么取soft结尾而不取CMS结尾呢？因为SOFT含义更广,主要是参照<a href="http://www.microsoft.com">www.microsoft.com</a></p>\r\n', 0),
	(555, '', 1240127281, 574, 4, 1, 1, '新浪科技讯 北京时间4月18日下午消息，据国外媒体报道，美国投资调研机构伯恩斯坦调研公司(Bernstein Research)分析师杰弗里·林德塞(Jeffrey Lindsay)周五表示，eBay收购Gmarket旨在重返中国和日本等亚洲市场。<p>　　最近几周，eBay动作频繁，先是宣布分拆Skype，然后又以每股24美元的价格收购Gmarket所有普通股和ADS，总收购价格约为12亿美元。对此，林德塞认为，这是eBay的一次重大战略调整，即重新回归核心的电子商务业务。</p>\r\n<p>　　林德塞称，eBay可能利用Gmarket这个平台重返中国和日本等亚洲市场。在前CEO梅格·惠特曼(Meg Whitman)时代，eBay在亚洲市场的表现并不令人满意，最后放弃。而在新任CEO约翰·多纳霍(John Donahoe)的领导下，eBay希望重返亚洲市场。</p>\r\n<p>　　截至2007年，eBay的互联网拍卖部门一直是韩国领先的电子商务供应商。后来，Gmarket的崛起抢占了eBay的风头。林德塞称，收购Gmarket之后，eBay将围绕Gmarket制定出亚洲，尤其是中国市场的业务战略。</p>\r\n<p>　　除了Gmarket，林德塞认为eBay下一步还可能收购拉美电子商务公司MercadoLibre、欧洲电子商务公司Tradus、在线票务公司StubHub和分类广告公司Craig\'s List等。(李明)</p>\r\n', 0),
	(556, '', 1240127308, 575, 4, 1, 1, '“本店专业代理备案，速度超快，一分钟搞定。”最近，在一些论坛和电子商务网站上，出现了帮人快速网站备案的帖子。这些发帖者均声称，由于“信息产业部”最近政策调整，一般网站很难通过备案，自己却可以帮助网站备案成功，而且最多几分钟就能搞定。对此，上海市通信管理局相关人士表示，网站备案流程依然通畅，提醒个人站长千万别图省事而给自己留下后患。<p>　　<strong>网站备案最快也需一天</strong></p>\r\n<p>　　在拍拍网上，记者看到一个名为“杰儿设计工作室”的卖家，把“网站备案/快速备案/一分钟备案”变成了一件商品，并详细说明了交易的条件：“活站”即从来都没有备过案的网站，几分钟搞定，费用是20元一个站;而用户已经提交但没有备案成功的网站，被称为“死站”，需要十分钟，价格也上涨至50元。“死站”备案比较繁琐，需要10分钟时间通过，费用是50元一个站。买家只要提供“网站名称”、“域名”、“网站负责人姓名”、“备案省简称”即可。</p>\r\n<p>　　根据2005年信产部(现为工信部)发布的《互联网信息服务管理办法》(以下简称《办法》)规定，在国内服务器上放置的所有网站都必须备案，且办理时间在二十个工作日内。那么，这些提供“一分钟快速备案”服务的人又是怎么速成的呢?</p>\r\n<p>　　据上海市通信管理局相关人士介绍，去年开始，各地通管局和工信部便发现了此类问题，原因是当时备案系统网站有一个漏洞——同一主体同一个备案号可以同时应用于不同域名的网站。所谓一分钟备案成功，其实就是在老备案号下添加一个新域名。不过发现漏洞之后，工信部很快将其修复，现在只要出现修改域名情况，都会显示“未审核”状态。这个说法也得到了一位提供“快速备案服务”客服的承认，他告诉记者，现在已经不可能1分钟备案成功了，最快也要一天，宣传口号“一分钟备案”其实只是个噱头而已。</p>\r\n<p>　　<strong>使用代办可能会被断网</strong></p>\r\n<p>　　上述通管局人士提醒记者，目前网上这些所谓“代办备案”的服务其实都是在违规操作，根据《办法》，备案时必须提交包括主办单位名称、性质、有效证件号码、主管的单位、网站负责人基本信息、服务器放置地等多重信息，而“代办备案者”根本不会向申请方要这么多信息。如此一来，即使申请方能在开始备案成功，但一旦被通管局发现其信息有误，其备案号将会马上被注销，且通知ISP接入方断网，到时才是“竹篮打水一场空”。</p>\r\n<p>　　至于“网站备案难申请”的说法，更被斥为谣言。仅在3月份，上海市通管局便审批通过了1.5万多条网站备案，“最快一个小时，最慢一周也就审核成功了，只要信息真实完整，没有一家不通过的。”</p>\r\n', 0),
	(557, '', 1240127373, 576, 4, 1, 1, '花1000元买下一个网站，在网站上发布虚假的投资信息，以高回报的许诺来招揽顾客。一旦有顾客上门，便劝其投资，并返给一定的“盈利”作为回报，当收到大量资金后，就卷钱逃走。从今年2月截止被捕时，吴锋(化名)、陈石(化名)等人用上述方式作案数次。受害人中，一对成都夫妇被骗走近64万元。近日，成都锦江检察院以涉嫌诈骗罪将吴锋、陈石批捕，其他几名同伙仍然在逃。<p>　　<strong>找网站投资被骗60多万</strong></p>\r\n<p>　　今年2月11日，成都人李丽(化名)通过网络搜索，找到一家名为“北京某证券投资有限公司”的网站，网页上介绍，在该公司投资回报很高。李丽致电该公司，听他们介绍了“高回报投资”情况。在和丈夫董华(化名)商量并几次致电该公司咨询后，两人决定出钱投资。</p>\r\n<p>　　2月12日，董华向公司指定的账户上汇入38000元，第二天，公司就返回了1900元的“盈利”，并说公司有内盘操作，是投资的最佳时机。当天，董华又存入了21万元，此后两天也再次收到了“返利”。就这样，夫妻俩陆续将40多万元汇入了投资公司的账户。</p>\r\n<p>　　2月20日，公司打来电话，要他们追加投资，此时董华夫妇已没有资金，于是准备退出，要公司方将本金和盈利一起还，对方回复，需要一个星期的时间。</p>\r\n<p>　　当天晚上，李丽在网上查找该公司，却发现网页已经消失，电话也没人接。此时，他们已向该公司汇了71万多元，期间虽返还了7万多元的“盈利”，但还有近64万元不知去向。2月21日早上，董华乘飞机前往北京，发现该公司根本就不存在，赶忙报案。</p>\r\n<p>　　<strong>买网站作案嫌疑人落网</strong></p>\r\n<p>　　接报后，警方立即展开调查。3月11日，嫌疑人吴锋和陈石落入法网。</p>\r\n<p>　　吴锋交代，他是福建人，今年2月5日，他和陈石等人从福建前往海口，花1000元买下一个假网站，并在网上发布了高回报的投资信息和联系方式。他说，将董华夫妇的60多万元骗到手后，他们就关掉了网站，并将这笔钱分赃、挥霍。又据陈石交代，之前他们也如法炮制，作了4至5次“投资”，但骗得的金额都在5万以下。</p>\r\n', 0),
	(558, '', 1240127449, 577, 4, 1, 1, '新浪科技讯 4月17日消息，知情人士于4月16日晚间透露，中国移动OPhone手机已完成基本的研发工作，经过小范围测试，效果良好。<p>　　据悉，5月初，基于EDGE版本的OPhone手机将面市，基于TD-SCDMA标准的手机也将于第四季度上市。</p>\r\n<p>　　OPhone手机是以中国移动OMS手机操作系统平台为基础研发的一种互联网手机，OMS又是中国移动以谷歌Android为基础。</p>\r\n<p>　　与传统手机相比，oPhone手机在互联网浏览方面的优势是其他手机不可比拟，oPhone不仅支持移动互联网，通过oPhone也可以很舒适的浏览 Http互联网的内容，因此，oPhone手机被可以与iPhone手机相抗衡。(康钊) <br />\r\n</p>\r\n', 0),
	(559, '', 1240127959, 578, 39, 1, 1, '<p>&nbsp;</p>\r\n<p>　　<strong>这是新浪科技<a href="http://tech.sina.com.cn/talk/silverage/index.html" target="_blank">《白银时代》系列访谈</a>第一期</strong>。《白银时代》是新浪科技频道推出的一个强档栏目，以深度报道、人物特写、评论、调查、图表、访谈等多种形式向网民深度剖析、展现一个个快速成长的创业型高科技企业的方方面面。近期，新浪科技也将陆续邀请其他备受关注的创业企业创始人做客新浪，与广大网友进行交流。</p>\r\n<p>　　<strong>以下为戴志康聊天文字实录：</strong> </p>\r\n<p>　　<strong>精彩观点：</strong></p>\r\n<p><font face="楷体_GB2312">　　- 之前我们迫于盈利压力和生存问题，每个小公司都有生存的问题，我们采取一部分软件免费、一部分软件收费的策略</font></p>\r\n<p><font face="楷体_GB2312">　　- 互联网上，尤其是最近几年永恒不变的真理，就是只要有用户使用就有它的价值，就是你自己的核心竞争力</font></p>\r\n<p><font face="楷体_GB2312">　　- 我最开始做这个东西就是为了找工作，首先这个软件本身会有很多人用，用了以后我就出名，出名以后我可以找一份好的工作，我不想念研究生或者在求学方面做进一步的尝试</font></p>\r\n<p><font face="楷体_GB2312">　　- 我家是一个书香门第，一直希望我能够念研究生、博士、出国留学。我尝试过，但不适合这么做，并不是我不想这么做。后来我执意一个人到北京来，自己创业、自己做事情</font></p>\r\n<p><font face="楷体_GB2312">　　- 我们对风险投资有自己的理解，首先我们不是靠概念、炒作生存的公司。第二我们做的事情对自己负责、也要对投资人负责</font></p>\r\n<p><font face="楷体_GB2312">　　- 不要浮躁，你不要觉得我要去融多少资？赚多少大钱？等等。要有简单、淳朴的理想，往往这个理想会成为你一生、半生贡献的事业。你一开始什么都没有，既没有技术也没有人脉的情况下做很大的事情，成功的概率会很低，不然你总想着要赚钱、盈利、融资，你不断的失望、落差，会打击创业的积极性<p align="center">&nbsp;</p>\r\n<p align="center">图为Discuz！CEO戴志康</p>\r\n</font></p>\r\n<p align="center">&nbsp;</p>\r\n<p align="center">图为Discuz！CEO戴志康</p>\r\n<p>&nbsp;</p>\r\n<p align="center">&nbsp;</p>\r\n<p align="center">图为Discuz！CEO戴志康</p>\r\n<p>　　<strong>主持人： </strong>各位网友上午好，欢迎大家来到第一期的新浪科技白银时代系列访谈，<strong>我是今天的主持人，《第一财经》日报记者杨国强</strong>。今天请到的嘉宾是Discuz！CEO戴志康，他是带着上大学创造的30多万到北京创立公司的。先请他简单介绍一下自己。</p>\r\n<p>　　<strong>戴志康：</strong> 各位网友大家好，今天很高兴有机会跟大家交流一些创业和人生成长的经验和经历，这些经验和经历未必很成熟和正确，但是有这样一个交流的空间，对大家来说尤其是对我自己来说是一个非常好的机会。</p>\r\n<p>　　<strong>主持人： </strong>下面首先引进一个网友的问题。</p>\r\n<p>　　<strong>网友：</strong>你24岁，是不是在学校就想着创业，怎么想干论坛？</p>\r\n<p>　　<strong>戴志康：</strong> 我肯定是在学校想创业的事情，上了大学觉得大学和心中预期的不一样，我很想做一些自己的事情，大学教的东西和我的兴趣有偏差，所以在大学真正上了一年，就开始做这个事情。之所以做论坛，考虑很简单，一个是做软件，上面有很多的网友交流，你会有很多用户，这个用户间接地使用你的软件，你的软件通过互联网传播，很多人用就是一个不错的事情。</p>\r\n<p>　　<strong>主持人： </strong>据说你在大学的时候就赚了很多钱，然后到北京成立了Discuz！公司，讲讲经历？</p>\r\n<p>　　<strong>戴志康：</strong> 当时很简单，一直做，就做好。虽然当时看不到商业前景和盈利空间，你做一件事情要对得起自己的付出和自己之前的理想和想法，所以我觉得创业和开公司是形式上的问题，一切是顺理成章的。</p>\r\n<p>　　<strong>主持人： </strong>你的公司在04、05年发展非常好的情况下，现在想着Discuz！全部免费，你是基于什么样的考虑？</p>\r\n<p>　　<strong>戴志康：</strong> 我做这个东西的初衷是让很多人用它它能够影响很多互联网用户使用习惯，之前我们迫于盈利压力和生存问题，每个小公司都有生存的问题，我们采取一部分的软件是免费、一部分软件是收费的策略，后来发现收费的门槛越来越高，不是很多人有钱购买这个软件，很多都是个人的网站，而且个人的网站都是互联网创立的生力军，一旦我们自身成熟的时候，我们肯定把软件免费给大家使用，这样突出了我们的理想。</p>\r\n<p>　　<strong>主持人： </strong>现在很多网友对Discuz！程序不是很清楚，它到底是做什么的，有什么特点？</p>\r\n<p>　　<strong>戴志康：</strong> Discuz！是BBS软件，说起论坛，和我们日常上网BBS、社区都有不同的形式，每一个社区有不同的形式，这个BBS是社区中最基础、最根本的形式，Discuz！的软件让中小网站、大型网站通过使用软件轻松地构建起自己的社区系统。我们本身在安全性上、代码的优化、功能的设计方面都是以用户为本。</p>\r\n<p>　　这个项目开始的时间不是很长，大概是3、4年的时间，但是取得了一个我认为就我自己来讲一个不错的成绩。</p>\r\n<p>　　<strong>主持人： </strong>你是从什么时候开始想到把这个程序来免费的？</p>\r\n<p>　　<strong>戴志康：</strong> 大概是05年3月份。</p>\r\n<p>　　<strong>主持人： </strong>05年3月份到年底的12月底，这之间有一个很长的过程？</p>\r\n<p>　　<strong>戴志康：</strong> 这个过程就是不断的思想斗争不断的思考，到底什么时候做？什么时候适合做？</p>\r\n<p>　　<strong>主持人： </strong>05年12月份觉得适合？</p>\r\n<p>　　<strong>戴志康：</strong> 对，主要是自身的情况来决定的，我们是一个公司，我们自身要生存，我们自身要有生存条件维持健康的发展。所以当时我们是这样觉得，之前因为论坛软件的销售额05年这个阶段成长的比较迅猛，所以在之后突然就感觉到似乎不是太需要考虑生存的压力，你要更想怎么把这个事情发展壮大。</p>\r\n<p>　　所以，05年12月是一个比较好的时机，主要的原因是我们自身的条件达到这个要求。</p>\r\n<p align="center">&nbsp;</p>\r\n<p align="center">图为Discuz！CEO戴志康</p>\r\n<p>　　<strong>主持人： </strong>你们规模占到整个论坛的70%左右，我不知道免费以后，有没有新的盈利模式？</p>\r\n<p>　　<strong>戴志康：</strong> 盈利模式是这样，互联网公司是以用户为中心，我们要做软件公司，靠销售软件、靠销售相关的东西实现自己价值的公司。我觉得互联网上，尤其是最近几年永恒不变的真理就是只要有用户使用就有它的价值，有一部分用户使用你的软件，离不开你的软件，这就是你自己的核心竞争力。我觉得只要有人使用就会有你的价值。</p>\r\n<p>　　<strong>主持人： </strong>盈利模式的问题就是用户稳定以后再去考虑的问题？</p>\r\n<p>　　<strong>戴志康：</strong> 应该说是这样。</p>\r\n<p>　　<strong>主持人： </strong>免费以后你的收入来源就没有了，你打算怎么熬过去？</p>\r\n<p>　　<strong>戴志康：</strong> 并不是没有，之前我们有其他的业务，社区软件的技术支持、解决方案、相关的服务，这会提供相对稳定的经济来源，这些我们会拿过来，用于支撑我们的软件开发、软件设计与软件的完善与升级。</p>\r\n<p>　　<strong>主持人： </strong>你们公司现在有多少人？</p>\r\n<p>　　<strong>戴志康：</strong> 16、17人。</p>\r\n<p>　　<strong>主持人： </strong>技术和市场的比例是不一样的？</p>\r\n<p>　　<strong>戴志康：</strong> 我们只有两个是非技术人员，要么是技术支持等等。</p>\r\n<p>　　<strong>主持人： </strong>给你们公司定位，是技术型的？还是服务型的？</p>\r\n<p>　　<strong>戴志康：</strong> 我自己是搞技术出来的，我比较崇尚的是技术型公司。</p>\r\n<p>　　<strong>主持人： </strong>下面我们谈一下关于公司管理的问题。平常你在公司和员工的交流多吗？年龄应该会比你大，怎么处理这个关系？</p>\r\n<p>　　<strong>戴志康：</strong> 年龄不是问题，大家都有同样的志向、同样的理想。所以在开始招聘的时候，这个人可用可不做，我们在开始招聘的时候把关是比较严的我一直在寻找有共同的理想、共同的志向加入到这个Team中，我们不可能提供极高的薪酬和极具竞争力的概念，我们提供的是一个理想，他如果认同这个理想，他会来参与并且来努力工作实现大家共同的价值。</p>\r\n<p>　　虽然我有很多同事的年龄都比我大，但是我依然和他们有共同语言，因为这个项目我是作为管理者出现的，一开始是由我打造、完成的，所以他们自身对我有认同感，我也不是抱着命令、管理的心态，我抱着大家一起参与等等，然后纠正问题，共同实现目标，所以管理问题不大。</p>\r\n<p>　　<strong>主持人： </strong>当你的公司人数多了以后，原来主要是做技术的工作，现在的工作有转变吗？</p>\r\n<p>　　<strong>戴志康：</strong> 现在技术的工作基本上做的极少了，主要是做技术管理、技术交接，比如我原来负责的代码，交接给其他人，再一个是教学的培训，比如每周对新的程序员做指导和讲解，还有对整个公司的发展方向、合作等等方面也会有参与到。</p>\r\n<p>　　<strong>主持人： </strong>我不知道你喜欢什么样的员工，你怎样招到你喜欢的员工的？</p>\r\n<p>　　<strong>戴志康：</strong> 我觉得人和人之间的感觉很重要，其实我对有些人有一种一见如故的感觉，哪怕很长时间不来往，如果有共同的感兴趣的话题，眼睛就会冒着理想相同的光但是在招聘的时候，这种人不多。再一个是你的理想可以激起他的激情的人，如果你跟他讲讲你的理想，他觉得这件事情不错，或者是投身进来做。有时候是你的理想你的激情感染他来努力工作的，这种人不错。</p>\r\n<p>　　因为我们是小的技术创业公司，单纯为了赚钱，单纯为了找一份安稳的工作，这样的人不适合这样的团队。</p>\r\n<p>　　<strong>网友：</strong>请你谈谈创业初始的想法是什么？</p>\r\n<p>　　<strong>戴志康：</strong> 一直很简单，我最开始做这个东西就是为了找工作，首先这个软件本身会有很多人用，用了以后我就出名，出名以后我可以找一份好的工作，我不想念研究生或者在求学方面做进一步的尝试。你起码自身得有一定的产品经验、有一定的技术实力，你做的东西有人用，你就会有好的工作机会。</p>\r\n<p>　　但是真正工作摆在你的面前，你会觉得我之前付出的一、两年的心血中断掉，觉得很不甘心，觉得对不起以前为它付出的时间、精力和感情。所以自己做，做完以后，发现这个产业、这个产品还有小的团队，不断的壮大，你更不可能放弃它，心中有一种责任感或者是使命感把它做好。</p>\r\n<p>　　目前来讲，创业小的团队比较多，其实我觉得我们的创业目的很单纯、很单一，一开始是为了找工作，之后为了一个使命感和责任感，再将来为了实现自己的价值，实现产品的价值、实现团队的价值的目标来奋斗。</p>\r\n<p>　　<strong>主持人： </strong>你从04年毕业从一个大学生转变为公司的管理者的过程中，你觉得你自己学到了什么？</p>\r\n<p>　　<strong>戴志康：</strong> 学到了太多东西，如果有些事情你不去实践，在书中是无法体会到的。我学到的最有用的是怎么样和人建立互相信任、互相了解的过程，这个是最重要的。</p>\r\n<p>　　<strong>主持人： </strong>在创业的过程中经常会向一些人询问一些问题，或者是你不懂的东西吗？</p>\r\n<p>　　<strong>戴志康：</strong> 询问的方式很少，但是经常会交流和聊天，如果别人说到我不懂或者不知道的东西，我回来会仔细看一下。北京的IT环境比较好，我会选择和周围的朋友聊一聊这方面的事情。</p>\r\n<p>&nbsp;</p>\r\n', 0),
	(560, '', 1240128462, 579, 4, 1, 1, '【TechWeb报道】4月17日消息，据国外媒体报道，动视暴雪(Activision-Blizzard) 昨日宣布放弃《魔兽世界》在中国的运营商九城，将《魔兽世界》其独家运营权授予网易公司，期限为三年。分析认为，此举主要是基于财务原因。&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n　　暴雪娱乐和九城四年的合同到今年6月份到期，暴雪昨天证实了之前的传闻：将不再同九城续约，《魔兽世界》的经营权将落入九城竞争对手网易之手。对暴雪娱乐而言，网易并不陌生，之前他们就《魔兽争霸III》、《星际争霸II》和战网进行过合作。新的合同将持续到2010年夏天。<br />\r\n<br />\r\n　　这一举措必将沉重打击了九城，当年在九城获得《魔兽世界》授权后的一年，其收入就增加了一倍。今年年初，九城发布的报告显示，魔兽世界玩家数量还在不断增加，2月份《魔兽世界》同时在线人数创造了历史最高记录。<br />\r\n&nbsp;<br />\r\n　　Wedbush Morgan分析师Michael Pachter认为，暴雪娱乐公司之所以选择网易取代九城主要是基于财务原因。在和九城合作期间，据估计暴雪娱乐公司可以获得22%的特许权使用费，也就是每年能获得5000至5500万美元的收入。分析师预计这次同网易合作，暴雪娱乐公司至少可以获得55%的特许权许可费，这样的话年收入可达1.4亿美元。这样一做比较，就可以看出同网易合作要比同九城合作每年多赚9000万美元。<br />\r\n<br />\r\n　　与此同时，动视暴雪公司周四表示预计该公司第一季度收入超出预期，因为《使命召唤》、《吉他英雄》以及《魔兽世界》销售强劲。8.6亿美元的净收入目标很容易实现。<br />\r\n', 0),
	(561, '', 1240128514, 580, 4, 1, 1, '新华网博鳌(海南)4月18日电 (记者杜宇、陈雍容、周慧敏) 工业和信息化部副部长奚国华18日说，2009年一季度中国网民新增1620万人，互联网网民总数达到3.16亿人。<p>　　奚国华是在此间举行的博鳌亚洲论坛2009年年会上作出上述表示的。</p>\r\n<p>　　奚国华说，即便是在国际金融危机给实体经济带来重创的形势下，互联网发展势头依然不减。互联网宽带化趋势更加明显，宽带网民规模占网民总数的90%以上。IPv4地址资源增长迅速，2008年达到1.8亿个，域名总量达到1600万个。中国境内网站数达到287.8万个。</p>\r\n<p>　　奚国华表示，在互联网产业、电子商务、网络广告和网络游戏占据重要地位。据估计，2008年中国电子商务市场规模约为3万亿元，同比增长41.7%。网络广告整体市场规模约为120亿元，同比增长55.8%;网络游戏市场规模在190亿元至200亿元，同比增长50%左右。</p>\r\n<p>　　另外，据奚国华介绍，截至2009年3月，中国电话用户总数达到10.06亿户，其中移动电话用户达到6.7亿户，在电话用户总数中的比重达到66.1%。</p>\r\n', 0),
	(562, '', 1240128552, 581, 4, 1, 1, '【搜狐IT消息】北京时间4月17日消息，据国外媒体报道，日本最大半导体企业东芝公司周五透露，其上个财年(截止3月31日)全年净亏损3500亿日元(约合35亿美元)。这是该公司有史以来最大的净亏损。同时，东芝表示将于下月前在日本裁员3900名合同制员工。<p>　　据悉，上月末，东芝公司已经裁掉4500名临时员工。此外，该公司已经延迟或取消投资新工厂的计划。</p>\r\n<p>　　先前，东芝曾估计亏损2800亿日元，实际超出这个数字。该公司将其中原因部分归于一项850亿日元的递延所得税计划。</p>\r\n<p>　　今年1月，东芝宣布重组计划，旨在一年内节约固定开支3000亿日元。有分析师认为，东芝对节约开支的预期过于乐观。其他分析师则对东芝的债务情况表示担忧，尤其是在眼下信贷艰难的情况下。</p>\r\n<p>　　上月，东芝公司的管理层发生了一些变化，现任首席执行官西田厚聪(Atsutoshi Nishida)将于6月下台，取而代之的是公司社会基础设施部负责人佐佐木则夫(Norio Sasaki)。</p>\r\n<p>　　65岁的西田厚聪担任CEO达4年，在任期间，他对东芝进行了大范围扩张，包括2006年投资37亿美元收购西屋公司(Westinghouse)股份以加强对核能源工业的控制。此外，还投入大量资金扩大闪存芯片的产量。</p>\r\n<p>　　2007年，东芝花费10亿美元购入一家索尼工厂并为索尼的PS3生产处理器。今年2月，东芝表示和富士通达成协议，准备购买其硬盘业务，不过尚未对收购价格达成一致。在进行收购之后，东芝将成为世界上最大的笔记本硬盘制造商。</p>\r\n<p>　　尽管营收有所增长，但分析师表示，西田厚聪的扩展性战略受全球经济危机影响将没法实现，而需求下降、芯片价格下降加上股价下跌，使东芝在养老金计划及信贷级别分类上面临巨大压力。(柯柯编译)</p>\r\n', 0),
	(563, '', 1240128654, 582, 4, 1, 1, '<div><span style="color:#525252;font-size:9pt;">韩国的购物网站现在不仅仅是卖东西的商城了，服务已经囊括了搜索、信息共享、价格比较等。有的</span><span style="color:#525252;font-size:9pt;">C2C</span><span style="color:#525252;font-size:9pt;">网站甚至还增加了游戏、漫画、电影等一些只有在门户网站里才会经常用到的服务。再加上直接访问购物网站的网民比重在增加，大有“摆脱”门户网站特别是“</span><span style="color:#525252;font-size:9pt;">naver</span><span style="color:#525252;font-size:9pt;">”的意图。因为这些购物网站目前在</span><span style="color:#525252;font-size:9pt;">Naver</span><span style="color:#525252;font-size:9pt;">里投放了大量的广告，还要支付成交后的手续费，这些开支的比重是很大的。</span></div>\r\n<div><span style="color:#525252;font-size:9pt;"><br />\r\n</span><span style="color:#525252;font-size:9pt;">依据</span><span style="color:#525252;font-size:9pt;">Rankey.com</span><span style="color:#525252;font-size:9pt;">（览客韩国）的数据来看，</span><span style="color:#525252;font-size:9pt;">Naver</span><span style="color:#525252;font-size:9pt;">给</span><span style="color:#525252;font-size:9pt;">Gmarket</span><span style="color:#525252;font-size:9pt;">带来的访客流量已经从</span><span style="color:#525252;font-size:9pt;">2006</span><span style="color:#525252;font-size:9pt;">年的</span><span style="color:#525252;font-size:9pt;">39%</span><span style="color:#525252;font-size:9pt;">降低到去年的</span><span style="color:#525252;font-size:9pt;">26%</span><span style="color:#525252;font-size:9pt;">。另外，从收入结构来看购物网站也正趋同于门户网站，</span><span style="color:#525252;font-size:9pt;">2005</span><span style="color:#525252;font-size:9pt;">年购物网站的广告收入和其他收入所占比重从</span><span style="color:#525252;font-size:9pt;">2005</span><span style="color:#525252;font-size:9pt;">年的</span><span style="color:#525252;font-size:9pt;">19%</span><span style="color:#525252;font-size:9pt;">增加至去年的</span><span style="color:#525252;font-size:9pt;">45%</span><span style="color:#525252;font-size:9pt;">。</span><span style="color:#525252;font-size:9pt;"><br />\r\n<br />\r\n</span><span style="color:#525252;font-size:9pt;">相关业界资深人士表示“</span><span style="color:#525252;font-size:9pt;">Gmarket</span><span style="color:#525252;font-size:9pt;">的广告效果并不亚于门户网站”，“会员数为</span><span style="color:#525252;font-size:9pt;">1570</span><span style="color:#525252;font-size:9pt;">万名，每月平均访问人数在</span><span style="color:#525252;font-size:9pt;">1810</span><span style="color:#525252;font-size:9pt;">万人，所以广告招商并不难”。</span><span style="color:#525252;font-size:9pt;"><br />\r\n<br />\r\n</span><span style="color:#525252;font-size:9pt;">目前很多公司都在争先恐后开通门户型服务，所以也加速了购物网站向门户网站发展的进程。</span><span style="color:#525252;font-size:9pt;">Interpark</span><span style="color:#525252;font-size:9pt;">在开通了与</span><span style="color:#525252;font-size:9pt;">Naver</span><span style="color:#525252;font-size:9pt;">“知识购物”相似的价格比较服务“</span><span style="color:#525252;font-size:9pt;">e</span><span style="color:#525252;font-size:9pt;">最低价”后，很受欢迎。在整个网站的</span><span style="color:#525252;font-size:9pt;">15</span><span style="color:#525252;font-size:9pt;">个频道里流量处于第三，使用率比较高。</span><span style="color:#525252;font-size:9pt;">D&amp;shop</span><span style="color:#525252;font-size:9pt;">也开通了</span><span style="color:#525252;font-size:9pt;">3</span><span style="color:#525252;font-size:9pt;">个商品比较、搜索服务，反应也不错。</span></div>\r\n<div>&nbsp;</div>\r\n<div><span style="color:#525252;font-size:9pt;">另外购物网站也在强化类似于门户的趋势信息和内容。</span><span style="color:#525252;font-size:9pt;">Lotte.com</span><span style="color:#525252;font-size:9pt;">发行的类似于时尚杂志的“</span><span style="color:#525252;font-size:9pt;">Fashion &amp; The City</span><span style="color:#525252;font-size:9pt;">”的每周浏览量也在</span><span style="color:#525252;font-size:9pt;">200</span><span style="color:#525252;font-size:9pt;">万以上，</span><span style="color:#525252;font-size:9pt;">istyle24</span><span style="color:#525252;font-size:9pt;">在</span><span style="color:#525252;font-size:9pt;">2006</span><span style="color:#525252;font-size:9pt;">年开通“时尚杂志”频道以后，已经拥有了</span><span style="color:#525252;font-size:9pt;">3000</span><span style="color:#525252;font-size:9pt;">多个时尚精华内容，</span><span style="color:#525252;font-size:9pt;">Hmall</span><span style="color:#525252;font-size:9pt;">的最新杂志“</span><span style="color:#525252;font-size:9pt;">HMall</span><span style="color:#525252;font-size:9pt;">杂志”也可以免费阅读。</span><span style="color:#525252;font-size:9pt;"><br />\r\n<br />\r\n</span></div>\r\n<div><p><span style="color:#525252;font-size:9pt;">Gmarket</span><span style="color:#525252;font-size:9pt;">事业部的柳光进董事说：“信息提供、价格比较”等这些不亚于门户网站的服务拓宽了购物网站的服务范围，如果能通过差异化服务来提高用户黏度，那么购物网站将从门户网站的影响中走出来。</span><span style="color:#525252;font-size:9pt;"><br />\r\n</span></p>\r\n</div>\r\n', 0),
	(564, '', 1240128744, 583, 4, 1, 1, '<p><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www_qibosoft_com/Tmp_updir/article/4/1_20090419160422_PjOh8.jpg" width="583" height="370" border="0" alt="23.jpg" title="23.jpg" /></p>\r\n<p>根据我个人对互联网产品经理（以下简称PM）的理解，画了上面这个草图，想表达几方面的内容：</p>\r\n<p>1、蓝色箭头指向代表PM在工作过程中要接触到的对象。<br />\r\n2、蓝色箭头以PM为中心，指向周围的各部门，说明其在沟通和协调过程中扮演着主动的角色。<br />\r\n3、绿色箭头代表，互联网企业中，PM最经常由哪些工种转变而来。<br />\r\n4、整个图形是人的形状，头部、左膀右臂、双脚、心脏。</p>\r\n<p>我做的这个图只能说具有代表性，不具普遍性，因为企业不同、部门组织不同、管理模式不同都决定PM在工作过程中有差异。今天我只是希望用这个图来和大家讨论一下PM在职业生涯中的起点、支点、增长点。</p>\r\n<p><strong>一、产品经理的起点</strong></p>\r\n<p>图中有三条绿色的虚线，分别指向PM，说明这三个部门或者说这三类工种最可能发展为PM，他们分别是负责产品营销的部门、负责产品运营的部门、负责产品实现的部门。</p>\r\n<p>负责产品营销的部门和市场接触最多，对市场的需求也会逐渐的更了解，而一个产品的起点就在于市场的需求。所以只要能把市场需求表达出来，并让产品实现的部门加以实施，这就已经是PM的起点了。从市场转过来的PM个性很鲜明，沟通能力强、表达能力强、应变能力强，但毕竟还处在过渡阶段，需要学习的方向是产品的管理和经营，例如设计产品功能并且做出产品初步原型，描述产品逻辑等等。</p>\r\n<p>负责产品运营的部门可以说掌握着丰富的行业资源，他们拥有BD、PR、客服等等工种。他们了解行业，对同类产品的历史和现状甚至小小的改动都知晓。用网络游戏行业来举例，盛大是一个典型的游戏运营商，也许他们根本不需要自己开发游戏，只需要把别人做好的游戏产品拿来运作就行，可是一旦他们决定要自己开发一款网络游戏的时候就可以很快的实施，因为他们在运营产品的同时积累了大量的产品经验和市场经验。所以这个部门下的工种也是很容易转为PM的。</p>\r\n<p>负责产品实现的部门，这是现在PM的黄埔军校，可以说80%的PM是从这个部门走出来的。这个部门最了解产品的功能、使用逻辑、数据结构、信息结构等等。他们掌握着产品的“形”。再加上现在好多公司将负责开发的项目经理、负责产品demo的产品设计都称为PM。</p>\r\n<p>还有一种特殊的现象，就是好多企业的老板或者CEO，都在兼任着PM这个职务的事情。</p>\r\n<p>各位看官，您在企业担任的工种是否属于以上几个部门之中呢？如果是，那么可以试试往PM方向发展哦。</p>\r\n<p><strong>二、产品经理的支点</strong></p>\r\n<p>如果想往PM方向发展，或者现在就已经渐渐的进入PM这个角色，那么需要具备哪些支点来支撑PM这个职位的发展呢？</p>\r\n<p>1）脸皮要厚</p>\r\n<p>文章开始那副图表现的是，蓝色箭头以PM为中心，指向不同的部门。说明其在沟通和协调过程中扮演着主动的角色。</p>\r\n<p>各位男士都追过女生吧？主动的前提不就是脸皮厚么？如果在约会之前考虑要是被拒绝了该多丢脸啊，考虑约对方会不会让对方生气，考虑对方是不是根本就不会理睬自己，最后自己被自己吓着了，决定放弃。</p>\r\n<p>PM在工作过程中也是一样，会有很多计划外的事情，例如调整页面、需求变更、迎合市场需要临时做个专题等等。不可能任何事情都在各部门的计划之内，那么在别人档期之外的事情，PM如何实施呢？都找领导来协调？如果事事都这样还需要PM做什么？那就脸皮厚点，豁达一些，都是有感情的动物，没有什么事情是协调不了的。丢点面子是小，耽误了事情那就麻烦大了。</p>\r\n<p>另外，PM在产品管理经营过程中，会遇到很多临时性的沟通，不敢保证每次沟通PM都能够理解，都能够记住，需要PM多问多了解，如果PM自身姿态过高，那么很可能因为不重视而出现问题。</p>\r\n<p>至于其他支点或者说PM应该具备的技能，有篇文章说得很全面，包括沟通能力、无授权领导能力、学习能力、商业敏感度、热爱产品、注重细节、日常产品管理能力等等，推荐大家看看《<a href="http://hi.baidu.com/myey8/blog/item/a24a87640d2514f8f636547d.html" target="_blank"><font color="#0033cc">产品经理应具备的能力</font></a>》</p>\r\n<p>作为一名成功的PM，除了具备这些能力之外，还有一个必须的支点，那就是心态，工作1-5年是锻炼一个人的能力，5-10年更多的就是在锻炼心态，关于这个问题以后会专门和大家讨论。</p>\r\n<p><strong>三、产品经理的增长点</strong></p>\r\n<p>担任PM的这三年多的时间里，我深深的被这个职位所着迷，对我来说，PM已经不仅仅是一份工作，更多的是一种生活方式。当然，我也担心时间长了会出现“审美疲劳”的问题，于是我也常想，PM能做多久、能向哪里发展、能如何一直着迷下去。</p>\r\n<p>首先：PM在一个企业中因为接触的领域最广，所以需要学习的东西也要最多，不需要成为专才，但是起码也得是个通才。所以PM是个不断积累的职业，即使有一天你失去了这个职位，那么积累的东西别人是拿不走的。</p>\r\n<p>其次：都说PM其实是这个产品的CEO，那么PM之后出来自己创业至少可以比较快的进入状态，能少走一些弯路。</p>\r\n<p>第三：PM既然是和产品捆绑在一起的，那么产品的市场应该也是和PM有关系的，产品业绩的好坏也需要作为PM考核的一部分，产品卖得好，PM拿的薪水多，没有达到市场预期就扣PM的薪水，那么PM其实可以是个薪酬丰厚的职位。</p>\r\n<p>第四：无论互联网行业还是传统行业，PM都是相通的，跨行业并不难。</p>\r\n<p>等等等等???</p>\r\n', 0),
	(646, '', 0, 665, 3, 1, 1, '网址是<a href="http://www.qibosoft.com">www.qibosoft.com</a>', 0),
	(574, '', 1240129686, 593, 3, 1, 1, '<div>一路有你,感谢广大网友一如继往的支持! <br />\r\n同时,也深受广大媒体的关注: <br />\r\n媒体相关报道如下: <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://i3.sinaimg.cn/home/deco/2009/0330/con_logo_tech_news.gif" width="110" height="27" border="0" /><a href="http://tech.sina.com.cn/i/2010-12-02/17214935910.shtml" target="_blank"><font color="#0070af">http://tech.sina.com.cn/i/2010-12-02/17214935910.shtml</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://cn.yimg.com/ycn/head/img/yahoologocontent.gif" width="118" height="32" border="0" /><a href="http://tech.cn.yahoo.com/yxk/20101202/4yh9.html" target="_blank"><font color="#0070af">http://tech.cn.yahoo.com/yxk/20101202/4yh9.html</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://bbs.qibosoft.com/images/ifeng_logo2.gif" width="118" height="45" border="0" /><a href="http://tech.ifeng.com/internet/detail_2010_12/01/3295860_0.shtml" target="_blank"><font color="#0070af">http://tech.ifeng.com/internet/detail_2010_12/01/3295860_0.shtml</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.techweb.com.cn/img/images/logo_s.gif" width="77" height="28" border="0" /> <br />\r\n<a href="http://www.techweb.com.cn/internet/2010-12-02/723633.shtml" target="_blank"><font color="#0070af">http://www.techweb.com.cn/internet/2010-12-02/723633.shtml</font></a> <br />\r\n<a href="http://www.techweb.com.cn/news/2010-12-01/723350.shtml" target="_blank"><font color="#0070af">http://www.techweb.com.cn/news/2010-12-01/723350.shtml</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.admin5.com/images/2008a/logodongtian.gif" width="122" height="60" border="0" /><a href="http://www.admin5.com/plus/view.php?aid=291514" target="_blank"><font color="#0070af">http://www.admin5.com/plus/view.php?aid=291514</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.chinaz.com/images/logo.gif" width="165" height="60" border="0" /><a href="http://www.chinaz.com/Webmaster/report/12011464202010.html" target="_blank"><font color="#0070af">http://www.chinaz.com/Webmaster/report/12011464202010.html</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.cncms.com/templates/cncms/skins/default/images/logo.jpg" width="157" height="51" border="0" /><a href="http://news.cncms.com/2010/1202/4504.html" target="_blank"><font color="#0070af">http://news.cncms.com/2010/1202/4504.html</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://bbs.qibosoft.com/images/mop.jpg" width="102" height="43" border="0" /><a href="http://tech.mop.com/net/2010/1202/1735542633.shtml" target="_blank"><font color="#0070af">http://tech.mop.com/net/2010/1202/1735542633.shtml</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://sudu.cn/images/head/newlogo.gif" width="175" height="60" border="0" /><a href="http://sudu.cn/service/detail.php?id=11689" target="_blank"><font color="#0070af">http://sudu.cn/service/detail.php?id=11689</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.eastadmin.com/templets/index_img/logo.gif" width="200" height="45" border="0" /><a href="http://www.eastadmin.com/plus/view.php?aid=4277" target="_blank"><font color="#0070af">http://www.eastadmin.com/plus/view.php?aid=4277</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.phpchina.com/templates/phpchina/images/logo.gif" width="188" height="45" border="0" /><a href="http://www.phpchina.com/index.php?action-viewnews-itemid-37657-php-1" target="_blank"><font color="#0070af">http://www.phpchina.com/index.php?action-viewnews-itemid-37657-php-1</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.im286.cn/templets/im2862/images/logo.png" width="162" height="44" border="0" /><a href="http://www.im286.cn/plus/view.php?aid=26387" target="_blank"><font color="#0070af">http://www.im286.cn/plus/view.php?aid=26387</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://news.cnzz.cn/Skin/new_cn/Images/logo.jpg" width="140" height="70" border="0" /><a href="http://news.cnzz.cn/NewsInfo/22214.aspx" target="_blank"><font color="#0070af">http://news.cnzz.cn/NewsInfo/22214.aspx</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.donews.com//images/indx_tmp/bg_04.gif" width="178" height="73" border="0" /><a href="http://www.donews.com/net/201011/284543.shtm" target="_blank"><font color="#0070af">http://www.donews.com/net/201011/284543.shtm</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://soft.yesky.com/TLimages2009/yesky/images/logo/c_newlogo.gif" width="91" height="36" border="0" /><a href="http://soft.yesky.com/news/22/11672522.shtml" target="_blank"><font color="#0070af">http://soft.yesky.com/news/22/11672522.shtml</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.cnii.com.cn/iframe/tplimg/53.files/images/logo.gif" width="150" height="70" border="0" /><a href="http://www.cnii.com.cn/internet/content/2010-12/03/content_816067.htm" target="_blank"><font color="#0070af">http://www.cnii.com.cn/internet/content/2010-12/03/content_816067.htm</font></a> <br />\r\n<br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://tech.ddvip.com/2010/images/logo.gif" width="191" height="60" border="0" /><a href="http://tech.ddvip.com/2010-12/1291174067163689.html" target="_blank"><font color="#0070af">http://tech.ddvip.com/2010-12/1291174067163689.html</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.gdwest.com/images/west/logo.png" width="163" height="52" border="0" /><a href="http://www.gdwest.com/news/96/12620.htm" target="_blank"><font color="#0070af">http://www.gdwest.com/news/96/12620.htm</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.itbear.com.cn/images/show_logo.gif" width="127" height="24" border="0" /><a href="http://www.itbear.com.cn/ZiXun/2010-11/29998.html" target="_blank"><font color="#0070af">http://www.itbear.com.cn/ZiXun/2010-11/29998.html</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://bbs.flashget.com/images/Zentendo_03/logo.gif" width="330" height="120" border="0" /><a href="http://bbs.flashget.com/viewthread.php?tid=32508&extra=page%3D1" target="_blank"><font color="#0070af">http://bbs.flashget.com/viewthread.php?tid=32508&amp;extra=page%3D1</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.php100.com/templets/images/logo.png" width="139" height="69" border="0" /><a href="http://www.php100.com/html/phpnews/PHPxinwen/2010/1121/6867.html" target="_blank"><font color="#0070af">http://www.php100.com/html/phpnews/PHPxinwen/2010/1121/6867.html</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.qibosoft.com/upload_files_p888/friendlink/40001_20100228160200_idba9.gif" width="88" height="31" border="0" /><a href="http://www.chinaccnet.com/content.php?module=content_newsdetail&news_id=29" target="_blank"><font color="#0070af">http://www.chinaccnet.com/content.php?module=content_newsdetail&amp;news_id=29</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.west263.com/info/templets/images/Default_11.gif" width="156" height="47" border="0" /><a href="http://www.west263.com/info/html/xingyezixun/yejiedongtai/20101122/1930518.html" target="_blank"><font color="#0070af">http://www.west263.com/info/html/xingyezixun/yejiedongtai/20101122/1930518.html</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.ndiis.com/new/logo.gif" width="220" height="80" border="0" /><a href="http://www.ndiis.com/news/nws_dtl.asp?nid=10000026" target="_blank"><font color="#0070af">http://www.ndiis.com/news/nws_dtl.asp?nid=10000026</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.ifengwo.com/images/logo.gif" width="207" height="70" border="0" /><a href="http://www.ifengwo.com/zuozhewenzhang/201011/20-182606.html" target="_blank"><font color="#0070af">http://www.ifengwo.com/zuozhewenzhang/201011/20-182606.html</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.jz123.cn/image/logo.png" width="210" height="60" border="0" /><a href="http://www.jz123.cn/plus/view.php?aid=35318" target="_blank"><font color="#0070af">http://www.jz123.cn/plus/view.php?aid=35318</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.bbscode.com/templets/index_img/logo.gif" width="180" height="60" border="0" /><a href="http://www.bbscode.com/text/news/2010/1123/59092.html" target="_blank"><font color="#0070af">http://www.bbscode.com/text/news/2010/1123/59092.html</font></a> <br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.pd.sd.cn/tp/image/logo.gif" width="180" height="60" border="0" /><a href="http://www.pd.sd.cn/html/2010/11/22093130206.htm" target="_blank"><font color="#0070af">http://www.pd.sd.cn/html/2010/11/22093130206.htm</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.txwb.com/Skin/txwb/logo.gif" width="219" height="60" border="0" /><a href="http://www.txwb.com/Article/hyzx/wlzz/201011/85119.html" target="_blank"><font color="#0070af">http://www.txwb.com/Article/hyzx/wlzz/201011/85119.html</font></a> <br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src="http://www.cn37.cn/cn37/cn37_logo.gif" width="168" height="60" border="0" /><a href="http://www.cn37.cn/article/2714.html" target="_blank"><font color="#0070af">http://www.cn37.cn/article/2714.html</font></a> <br />\r\n<a href="http://news.ename.cn/yuming_xinwen_2010_12_01_25820.html" target="_blank"><font color="#0070af">http://news.ename.cn/yuming_xinwen_2010_12_01_25820.html</font></a> <br />\r\n<br />\r\n<a href="http://news.syd.com.cn/content/2010-12/02/content_25176700.htm" target="_blank"><font color="#0070af">http://news.syd.com.cn/content/2010-12/02/content_25176700.htm</font></a> <br />\r\n<br />\r\n<a href="http://www.jiaonan.com/html/2010/11/22093115441.htm" target="_blank"><font color="#0070af">http://www.jiaonan.com/html/2010/11/22093115441.htm</font></a> <br />\r\n<br />\r\n<a href="http://www.gdwest.com/news/96/12620.htm" target="_blank"><font color="#0070af">http://www.gdwest.com/news/96/12620.htm</font></a> <br />\r\n<br />\r\n<br />\r\n<a href="http://edu.codepub.com/2010/1123/27371.php" target="_blank"><font color="#0070af">http://edu.codepub.com/2010/1123/27371.php</font></a> <br />\r\n<a href="http://www.xinfengit.com/201011/23115011.html" target="_blank"><font color="#0070af">http://www.xinfengit.com/201011/23115011.html</font></a> <br />\r\n<a href="http://236z.com/plus/view.php?aid=127792" target="_blank"><font color="#0070af">http://236z.com/plus/view.php?aid=127792</font></a>&nbsp;&nbsp; <br />\r\n<a href="http://www.qq050.com/article.asp?id=3772" target="_blank"><font color="#0070af">http://www.qq050.com/article.asp?id=3772</font></a> <br />\r\n<a href="http://www.webjx.com/news/focus-27784.html" target="_blank"><font color="#0070af">http://www.webjx.com/news/focus-27784.html</font></a> <br />\r\n<a href="http://www.55175.cn/Comments.asp?ArticleID=4733" target="_blank"><font color="#0070af">http://www.55175.cn/Comments.asp?ArticleID=4733</font></a> <br />\r\n<a href="http://www.zz360.net/plus/view-3492-1.html" target="_blank"><font color="#0070af">http://www.zz360.net/plus/view-3492-1.html</font></a> <br />\r\n<a href="http://www.ok.net.cn/html/24/n-21324.html" target="_blank"><font color="#0070af">http://www.ok.net.cn/html/24/n-21324.html</font></a> <br />\r\n<a href="http://www.91papa.com/html/56-3/3033.htm" target="_blank"><font color="#0070af">http://www.91papa.com/html/56-3/3033.htm</font></a> <br />\r\n<a href="http://www.jzc8.com/article/1972/96929_1.html" target="_blank"><font color="#0070af">http://www.jzc8.com/article/1972/96929_1.html</font></a> <br />\r\n<a href="http://www.idczhuji.com/idczhuji/news/zhujinews/2010/1125/8183.html" target="_blank"><font color="#0070af">http://www.idczhuji.com/idczhuji/news/zhujinews/2010/1125/8183.html</font></a> <br />\r\n<a href="http://www.news365.com.cn/gdxww/170900.htm" target="_blank"><font color="#0070af">http://www.news365.com.cn/gdxww/170900.htm</font></a> <br />\r\n<a href="http://www.qq050.com/article.asp?id=3772" target="_blank"><font color="#0070af">http://www.qq050.com/article.asp?id=3772</font></a> <br />\r\n<a href="http://www.zz360.net/plus/view-3492-1.html" target="_blank"><font color="#0070af">http://www.zz360.net/plus/view-3492-1.html</font></a> <br />\r\n<a href="http://www.cn37.cn/article/2714.html" target="_blank"><font color="#0070af">http://www.cn37.cn/article/2714.html</font></a> <br />\r\n<a href="http://www.txwb.com/Article/hyzx/wlzz/201011/85119.html" target="_blank"><font color="#0070af">http://www.txwb.com/Article/hyzx/wlzz/201011/85119.html</font></a> <br />\r\n<a href="http://www.ok.net.cn/html/24/n-21324.html" target="_blank"><font color="#0070af">http://www.ok.net.cn/html/24/n-21324.html</font></a> <br />\r\n<a href="http://www.zunmi.com/news/201012/15350.html" target="_blank"><font color="#0070af">http://www.zunmi.com/news/201012/15350.html</font></a> <br />\r\n<a href="http://www.hackbase.com/news/2010-12-03/39856.html" target="_blank"><font color="#0070af">http://www.hackbase.com/news/2010-12-03/39856.html</font></a> <br />\r\n<a href="http://www.china-code.net/al-ccmmVYSLlN-374521.html" target="_blank"><font color="#0070af">http://www.china-code.net/al-ccmmVYSLlN-374521.html</font></a> <br />\r\n<a href="http://www.sootoo.com/content/71993.shtml" target="_blank"><font color="#0070af">http://www.sootoo.com/content/71993.shtml</font></a> <br />\r\n<a href="http://www.5b.com.cn/hulianwangxun/2010/12/01/5b129117823411188.shtml" target="_blank"><font color="#0070af">http://www.5b.com.cn/hulianwangxun/2010/12/01/5b129117823411188.shtml</font></a> <br />\r\n<a href="http://www.jzc8.com/article/1972/96929_1.html" target="_blank"><font color="#0070af">http://www.jzc8.com/article/1972/96929_1.html</font></a> <br />\r\n<a href="http://www.bbscode.com/text/news/2010/1123/59092.html" target="_blank"><font color="#0070af">http://www.bbscode.com/text/news/2010/1123/59092.html</font></a> <br />\r\n<a href="http://www.phoer.net/?action-viewnews-itemid-199237" target="_blank"><font color="#0070af">http://www.phoer.net/?action-viewnews-itemid-199237</font></a> <br />\r\n<a href="http://news.xilele.com/keji/266664.htm" target="_blank"><font color="#0070af">http://news.xilele.com/keji/266664.htm</font></a> <br />\r\n<a href="http://news.xinmin.cn/rollnews/2010/12/02/8075967.html" target="_blank"><font color="#0070af">http://news.xinmin.cn/rollnews/2010/12/02/8075967.html</font></a> <br />\r\n<a href="http://flash.longonline.net/article/240/sort02047/2010/20101125133367.asp" target="_blank"><font color="#0070af">http://flash.longonline.net/article/240/sort02047/2010/20101125133367.asp</font></a> <br />\r\n<a href="http://www.zhanzhang.com/news/trend/20101204/29250.html" target="_blank"><font color="#0070af">http://www.zhanzhang.com/news/trend/20101204/29250.html</font></a> <br />\r\n<a href="http://www.pd.sd.cn/html/2010/11/22093130206.htm" target="_blank"><font color="#0070af">http://www.pd.sd.cn/html/2010/11/22093130206.htm</font></a> <br />\r\n<a href="http://www.5b.com.cn/hulianwangxun/2010/12/01/5b129117823411188.shtml" target="_blank"><font color="#0070af">http://www.5b.com.cn/hulianwangxun/2010/12/01/5b129117823411188.shtml</font></a></div>\r\n', 0),
	(575, '', 1240129723, 594, 3, 1, 1, '为满足大家做二次开发,今天已实现可以在后台轻松复制出同样的模块,功能就像以前的万能文章可以装多份一样的. <br />\r\n<br />\r\n打个比喻,官方默认提供的考试系统,你可能有多种用途,界面完全不一样,一个是正规的考虑,一个是平时的练习,甚至一个是中学,一个是小学,你不想混在一起.那么你可以在后台复制一份,就可以了, <br />\r\n<br />\r\n复制后,你可以对风格进行个性化的修改,懂点程序的话,还可以进行更深一步的修改. <br />\r\n<br />\r\n当然万能文章的功能就更多了,比如女性频道,科技频道,这是最需要的,最不想混在一起的. <br />\r\n<br />\r\n这些功能,只须在后台一键就可实现. <br />\r\n<br />\r\n不需要大家操作数据库,修改任何程序.方便更多的新手用户,老手的话,可以做进一步的二次开发,比如可以开发给别人使用.或者是做做外单.等等. <br />\r\n<br />\r\n<br />\r\n这就是齐博所要追求的易用,实用 <br />\r\n', 0),
	(576, '', 1240129752, 595, 3, 1, 1, '定时任务可以执行诸如,多久生成一次首页静态,<br />\r\n<br />\r\n每天某个时候执行一次任务.<br />\r\n<br />\r\n<br />\r\n未来某个时候执行一次任务<br />\r\n<br />\r\n即三大功能,第一种是,隔多久执行一次,第二种是,每天的某个时间执行一次,第三种是,未来某个时候,只执行一次.<br />\r\n<br />\r\n<br />\r\n<br />\r\n定时备份数据库的功能也已实现,<br />\r\n,即大家可以设置每天晚上什么时候自动备份数据库.推荐是凌晨最好,这个时候,服务器压力最小,影响不大.<br />\r\n<br />\r\n这样,每天自动备份一次,大家就不怕网站出现不可意料的后果了,特别是对于新用户来说,经常不记得备份数据库的.<br />\r\n', 0),
	(579, '', 1240129958, 598, 3, 1, 1, '看到大家的渴望之情如此高涨, 已增加ckeditor编辑器功能.<br />\r\n', 0),
	(580, '', 1240130011, 599, 3, 1, 1, '<div>齐博CMS之V7版，昨天下午已向大家揭开了面纱，这个版本，对我们来说，将起着承前启后的里程碑作用，在功能上，我们在保留了V6的所有功能的基础上，还增加了相当多的实用功能模块与一些特色功能。以满足大家不同的需求。 <br />\r\n至于风格方面，因每个人的审美观不一样，虽然大部分人很认可当前的风格，但是也有部分人不太认可当前的风格。 <br />\r\n无论是做人，还是做事，我们都怀着一颗感恩的心，为感谢大家一如继往对我们的支持。所以我们尽可能的设法去满足大家的需求。 <br />\r\n为此官方正式举办首次模板风格大赛，希望通过这次大赛，以淘出更多精美的模板，以满足更多的人需求。 <br />\r\n<br />\r\n大赛奖品如下： <br />\r\n一等奖：1000元人民币现金 + （CMS整站、地方门户、B2B系统、分类系统）任选一个+铜板1000个 <br />\r\n二等奖：500元人民币现金 + （CMS整站、地方门户、B2B系统、分类系统）任选一个+铜板500个 <br />\r\n三等等：300元人民币现金 + （CMS整站、地方门户、B2B系统、分类系统）任选一个+铜板300个 <br />\r\n鼓励奖：100元人民币现金 + （CMS整站、地方门户、B2B系统、分类系统）任选一个+铜板100个 <br />\r\n<br />\r\n凡是获奖用户，我们将会提供一个展示平台，也即我们会新开一个风格制作者认证区，让大家想要付费做风格的，更快的找到你。 <br />\r\n<br />\r\n<br />\r\n所有名次名额及截止日期待定，视参赛人数与参赛作品再做决定。 <br />\r\n<br />\r\n评选方式由官方及版主评选为主，网友投票为辅。 <br />\r\n<br />\r\n即日起，只要提供首页PS图的，经核查不是盗版他人，并且质量过得去的，即可提前拿到V7测试版，在本机测试调试风格使用。 <br />\r\n<br />\r\n注:风格制作方法跟V6的基本一样的 <br />\r\n<br />\r\n另外，欢迎大家继续对V7版拍砖，无论是风格还是功能方面，只有这样，我们才会更快的完善好程序，让大家尽快的用上V7版。</div>\r\n', 0),
	(582, '', 1240193993, 601, 14, 1, 1, '&nbsp;&nbsp; 刘德华出生于香港新界大埔泰亨村，在家中排行第四。<br />\r\n<div>&nbsp;</div>\r\n　　他有三个姊姊、一个弟弟和一个妹妹。由于出生在大家族。刘德华在黄大仙天主教小学毕业后升读可立中学，当时他热心参加校内学校剧社的表演，参与幕后制作负责编剧。<br />\r\n<div>&nbsp;</div>\r\n　　而教授他有关戏剧方面知识的老师，就是后来的著名舞台剧编剧杜国威。<br />\r\n<div>&nbsp;</div>\r\n　　中六上学期后，到香港电视广播有限公司(TVB)的艺员训练班受训。1981年在电视剧《花艇小英雄》中首次亮相。', 0),
	(584, '', 1240201330, 603, 39, 1, 1, '齐博V7版文章静态功能,在今天,已取得飞跃性突破,定时全站静态+无人监守静态<br />\r\n定时全站静态指的是,你可以开启定时任务,让他在每天凌晨少人访问,服务器压力最小的时候,自动全站静态一次,以方便补全一些遗漏的静态页面.<br />\r\n<br />\r\n<br />\r\n无人监守静态指的是,点击一下全站静态,即可关闭网页,让他在后台悄悄的运行.不需要你开着浏览器,苦苦的等待几个小时,把数万篇文章,一直生成为止.甚至有时候,网速变慢,卡断.又得人为的刷新一下继续下一步<br />\r\n<br />\r\n这也是众多CMS一直存在的问题,严重的困扰着大家不想启用静态.<br />\r\n<br />\r\n今天,齐博CMS已经解决了一直以为如此困扰大家的难题.<br />\r\n<br />\r\n并且也已解决发布文章,如果列表页有上百页,要等待好久才能跳转生成完静态的问题.', 0),
	(585, '', 1240209505, 604, 39, 1, 1, '欢迎大家对现在的V7版，进行功能上不足的建议，与细节做得不到位而提出批评。我们很乐于倾听各方面不同的声音。 <br />\r\n<br />\r\n只有大家勇于把问题指出来，我们才可以更快的完善好系统。让大家早日的使用。 <br />\r\n<br />\r\n称赞之语可以说无人不爱听，但是太多的称赞，就会蒙避自己的双眼，看不到问题的所在。就会导致问题得不到解决，系统得不到更好的完善，也就影响到大家在今后的使用。', 0),
	(586, '', 0, 605, 10, 1, 1, '<p>没有</p>\r\n', 0),
	(587, '', 0, 606, 10, 1, 1, '无', 0),
	(588, '', 0, 607, 10, 1, 1, '无', 0),
	(589, '', 0, 608, 10, 1, 1, '无', 0),
	(590, '', 0, 609, 10, 1, 1, '无', 0),
	(591, '', 0, 610, 10, 1, 1, '无', 0),
	(592, '', 0, 611, 10, 1, 1, '无', 0),
	(593, '', 0, 612, 10, 1, 1, '无', 0),
	(594, '', 0, 613, 10, 1, 1, '无', 0),
	(595, '', 0, 614, 10, 1, 1, '无', 0),
	(596, '', 0, 615, 10, 1, 1, '无', 0),
	(597, '', 0, 616, 10, 1, 1, '无', 0),
	(598, '', 0, 617, 10, 1, 1, '无', 0),
	(599, '', 0, 618, 10, 1, 1, '无', 0),
	(600, '', 0, 619, 14, 1, 1, '<p>导演: 刘伟强</p>\r\n<p>主演: 甄子丹舒淇黄秋生黄渤霍思燕周扬木幡龙</p>\r\n<p>制片国家/地区: 中国香港</p>\r\n<p>类型: 动作剧情</p>\r\n<p>语言: 粤语</p>\r\n<p>片长: 110分钟</p>\r\n<p>版本: DVD版</p>\r\n<p>内容提供商: 乐视</p>\r\n<p>上映日期: 2010-09-21 中国<br />\r\n</p>\r\n', 0),
	(601, '', 0, 620, 14, 1, 1, '<p>导演: 张艺谋</p>\r\n<p>主演: 周冬雨窦骁于新博李雪健奚美娟萨仁娜吕丽萍孙海英成泰燊</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 剧情爱情</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 115分钟</p>\r\n<p>版本: 高清版</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010-09-15 中国<br />\r\n</p>\r\n', 0),
	(602, '', 0, 621, 14, 1, 1, '<p>导演: 郭靖宇</p>\r\n<p>主演: 陈数巍子张少华史可</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 古装</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 43集全</p>\r\n<p>内容提供商: 九州</p>\r\n<p>上映日期: 2010 <br />\r\n</p>\r\n', 0),
	(603, '', 0, 622, 14, 1, 1, '<p>导演: 滕华弢</p>\r\n<p>主演: 海青张嘉译文章郝平邬君梅</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 伦理</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 33集全</p>\r\n<p>内容提供商: 佳韵社</p>\r\n<p>上映日期: 2008 <br />\r\n</p>\r\n', 0),
	(604, '', 0, 623, 14, 1, 1, '<p>导演: 陈铭章</p>\r\n<p>主演: 林志颖赵靓郭品超陈彦妃洪小玲郑恺</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 言情偶像</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 30集全</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010 </p>\r\n', 0),
	(605, '', 0, 624, 14, 1, 1, '<p>导演: 潘文杰</p>\r\n<p>主演: 欧阳震华冯绍峰曾宝仪霍思燕</p>\r\n<p>制片国家/地区: 中国香港</p>\r\n<p>类型: 古装神话</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 40集全</p>\r\n<p>内容提供商: 盛世骄阳</p>\r\n<p>上映日期: 2010 </p>\r\n<p>&nbsp;</p>\r\n', 0),
	(606, '', 0, 625, 14, 1, 1, '<p>导演: 赖水清谢益文曾丽珍</p>\r\n<p>主演: 焦恩俊范文芳张玉燕李铭顺李立群宋达民</p>\r\n<p>制片国家/地区: 新加坡</p>\r\n<p>类型: 古装武侠</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 48集全</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010 <br />\r\n</p>\r\n', 0),
	(607, '', 0, 626, 14, 1, 1, '<p>导演: 高伟宁</p>\r\n<p>主演: 梁静战卫华马书良</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 言情都市</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 24集全</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010 <br />\r\n</p>\r\n', 0),
	(608, '', 0, 627, 14, 1, 1, '<p>导演: 高希希</p>\r\n<p>主演: 陈建斌陆毅黄维德聂远林心如陈好赵柯于和伟刘竞于荣光</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 历史战争</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 95集全</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010 <br />\r\n</p>\r\n', 0),
	(609, '', 0, 628, 14, 1, 1, '<p>&nbsp;<br />\r\n导演: 李舒</p>\r\n<p>主演: 柳云龙马苏申军谊蒋林静魏宗万</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 剧情战争</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 45分钟</p>\r\n<p>版本: 40集全</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010 <br />\r\n</p>\r\n', 0),
	(610, '', 0, 629, 14, 1, 1, '<p><br />\r\n导演: 冯小刚</p>\r\n<p>主演: 葛优舒淇姚晨</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 爱情</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 90分钟</p>\r\n<p>版本: 预告片</p>\r\n<p>内容提供商: 迅雷</p>\r\n<p>上映日期: 2010 </p>\r\n', 0),
	(611, '', 0, 630, 14, 1, 1, '<p>导演: 陈凯歌</p>\r\n<p>主演: 黎明章子怡孙红雷陈红李胜素余少群王学圻潘粤明安藤政信英达</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 传记剧情历史</p>\r\n<p>语言: 国语</p>\r\n<p>片长: 100分钟</p>\r\n<p>版本: 高清版</p>\r\n<p>内容提供商: 华数传媒</p>\r\n<p>上映日期: 2008-12-05 中国</p>\r\n<p>&nbsp;</p>\r\n', 0),
	(612, '', 0, 631, 14, 1, 1, '<p><br />\r\n导演: 徐克</p>\r\n<p>主演: 周迅桂纶镁张雨绮方中信彭于晏冯德伦沈畅</p>\r\n<p>制片国家/地区: 中国内地</p>\r\n<p>类型: 喜剧</p>\r\n<p>语言: 国语粤语</p>\r\n<p>片长: 120分钟</p>\r\n<p>版本: 高清版</p>\r\n<p>内容提供商: 华数传媒</p>\r\n<p>上映日期: 2008-10-16 新加坡<br />\r\n</p>\r\n', 0),
	(613, '', 0, 632, 16, 1, 1, '<li>产品名称：三星 N148-DP03 </li><li>品牌: Samsung/三星 </li><li>系列: N便携系列 </li><li>N便携系列型号: N148-DP03 </li><li>成色: 全新 </li><li>CPU平台: Atom/凌动 </li><li>凌动处理器型号: N450 </li><li>CPU频率量级: 1.66GHz </li><li>CPU电压规格: 低电压版(LV) </li><li>内存容量: 1G </li><li>硬盘容量: 250G </li><li>显卡类型: 集成 </li><li>集成显卡型号: Intel GMA X3150 </li><li>显存容量: 共享内存容量 </li><li>光驱类型: 无 </li><li>屏幕比例: 宽屏16：9 </li><li>屏幕尺寸: 10寸 </li><li>重量: 1-1.5公斤 </li><li>电池类型: 6芯锂电池 </li><li>指纹功能: 无 </li><li>蓝牙功能: 无 </li><li>摄像头功能: 有 </li><li>3G上网功能: 无 </li><li>售后服务: 全国联保 </li><li>上市时间: 2010年 </li><li>颜色分类: 红色 </li><li>笔记本套餐: 套餐一&nbsp;套餐二... </li><li>笔记本定位: 便携定位 </li><li>笔记本价格区间: 3000元以下 </li>', 0),
	(614, '', 0, 633, 16, 1, 1, '<table cellspacing="0" cellpadding="0" width="100%"><tbody><tr><td><p>1：宏基532N450CPU大量到货,因资金压太多,所以全部批价1999元包邮出售,我们郑重承诺：该产品保证正品全新香港行货,如假全额退款，且承担一切费用的赔偿，并接受投诉。请买家放心购,另送4样配件,马上抢吧!,注包邮只发圆通快递,发顺丰或EMS需补差价</p>\r\n<p>2机子是由香港批量发过来的，包装跟本本是分开的！所以机身编码与外包装编码未必对的上～</p>\r\n<p>3.机子自带英文正版 WIN7系统(需改装中文W7和XP的朋友注明一下)</p>\r\n<p>4.香港行货机子贴有正版系统标</p>\r\n<p><br />\r\n5.原配件有，笔记本一台(含电池2200毫安），电源适配器一个，电源线一条，说明书一本，</p>\r\n<p>配置套餐如下:</p>\r\n<p>注意:标配套捷威LT2107有白和红色可选,N450/1G内存250G硬盘 1880元特价包邮</p>\r\n<p>标配套餐：宏基532H/凌动N450/1G内存/160G硬盘3芯电池=1999元包邮</p>\r\n<p>套餐一：宏基532H/凌动N450/2G内存/160G硬盘3芯电池=2199元包邮</p>\r\n<p>套餐二:宏基532H/凌动N450/2G内存/320G硬盘3芯电池=2330元包邮</p>\r\n<p>套餐三;宏基532H/凌动N450/2G内存/250G硬盘3芯电池=2280元包邮</p>\r\n<p>另有6芯电池选购,需要换6芯电池加150元</p>\r\n</td></tr></tbody></table>\r\n', 0),
	(615, '', 0, 634, 16, 1, 1, '<li>品牌: Panasonic/松下 </li><li>松下系列: CF系列 </li><li>CF系列型号: 其它型号 </li><li>成色: 9成新以上 </li><li>CPU平台: 奔腾M(Dothan) </li><li>奔腾M(Dothan): 其它型号 </li><li>CPU频率量级: 1.0GHz </li><li>CPU电压规格: 超低电压版(ULV) </li><li>内存容量: 512M </li><li>硬盘容量: 40G </li><li>显卡类型: 集成 </li><li>集成显卡型号: 其它集成显卡型号 </li><li>显存容量: 64M </li><li>光驱类型: 无 </li><li>屏幕比例: 普屏4：3 </li><li>屏幕尺寸: 12寸 </li><li>重量: 1公斤以下 </li><li>上市时间: 2007年 </li><li>颜色分类: 黄金版&nbsp;钻石版... </li><li>笔记本套餐: 标准套餐 </li><li>笔记本定位: 便携定位 </li><li>笔记本价格区间: 3000元以下 </li>', 0),
	(616, '', 0, 635, 16, 1, 1, '<li>产品名称：LG KG800 </li><li>上市时间: 2006年 </li><li>06年上市月份: 4月 </li><li>网络类型: GSM </li><li>外观样式: 滑盖 </li><li>主屏尺寸: 2.0英寸 </li><li>屏幕颜色: 26万 </li><li>机身颜色: 酒红色+5元&nbsp;黑色... </li><li>手机套餐: 套餐三&nbsp;套餐一... </li><li>铃声: MP3铃声 </li><li>摄像头: 130万 </li><li>是否智能手机: 非智能手机 </li><li>操作系统: 无操作系统 </li><li>储存功能: 不支持存储卡 </li><li>适合送给谁: 中年男性&nbsp;中年女性... </li><li>适合的送礼场景: 商务送礼&nbsp;爱意表达 </li><li>高级功能: MP3播放... </li><li>适合的送礼人物类型: 时尚爱美型&nbsp;事业型 </li><li>宝贝成色: 9.99成新 </li><li>售后服务: 店铺三包 </li><li>品牌: LG </li><li>LG型号: KG800 </li><li>手机价格区间: 1000元以下 </li>', 0),
	(617, '', 0, 636, 16, 1, 1, '<li>品牌: Sharp/夏普 </li><li>夏普型号: 其它夏普型号 </li><li>其它夏普型号: 其它夏普型号 </li><li>上市时间: 2010年 </li><li>10年上市月份: 5月 </li><li>网络类型: GSM </li><li>外观样式: 滑盖 </li><li>主屏尺寸: 2.8英寸 </li><li>屏幕颜色: 1600万 </li><li>机身颜色: 棕色&nbsp;黑色 </li><li>手机套餐: 套餐四&nbsp;套餐三... </li><li>铃声: MP3铃声 </li><li>摄像头: 200万 </li><li>是否智能手机: 非智能手机 </li><li>操作系统: 无操作系统 </li><li>储存功能: TF(microSD)卡 </li><li>适合送给谁: 男青年&nbsp;少男&nbsp;少女... </li><li>高级功能: 双卡双待&nbsp;手写输入... </li><li>适合的送礼场景: 商务送礼&nbsp;乔迁新居... </li><li>适合的送礼人物类型: 时尚爱美型&nbsp;事业型 </li><li>宝贝成色: 9.99成新 </li><li>售后服务: 店铺三包 </li>', 0),
	(618, '', 0, 637, 12, 1, 1, '<p>著名的免费开源BBS</p>\r\n', 0),
	(619, '', 0, 638, 12, 1, 1, '<p>著名的免费开源BBS程序</p>\r\n', 0),
	(622, '', 0, 641, 12, 1, 1, 'qibosoft CMS是PHP领域当前功能最强大的开源系统，全局采用“核心+模块+系统+插件”模式， 代码全部开 源，可极其方便的进行二次开发，所有功能模块可以自由安装与删除，个人用户完全免费使用。', 0),
	(621, '', 0, 640, 12, 1, 1, 'qibosoft行业B2B将为青年用户朋友提供创业平台。也是现阶段国内PHP领域唯一一家品牌的B2B开发方。<br />\r\n', 0),
	(623, '', 0, 642, 26, 1, 1, '最多人使用的RAR软件', 0),
	(624, '', 0, 643, 26, 1, 1, '驱动精灵是一款适合绝大多数电脑用户的老牌专业驱动程序智能管理软件，驱动精灵不仅可以快速检测识别所有硬件设备，还可以智能判断硬件状态，为用户提供最快最稳定的驱动程序下载，安装、备份、还原、卸载等全套专业级驱动程序管理功能。', 0),
	(625, '', 0, 644, 26, 1, 1, '<p>搜狗拼音输入法是当前网上最流行、用户好评率最高、功能最强大的拼音输入法，并且承诺永久免费、绝无插件。</p>\r\n', 0),
	(626, '', 0, 645, 26, 1, 1, '不论您拍摄的相片是什么类型－家人与朋友的，或是作为业余爱好而拍摄的艺术照－您都需要相片管理软件来轻松快捷地整理以及查看、修正和共享这些相片。', 0),
	(627, '', 0, 646, 26, 1, 1, '以海报(封面)视图或详情模式管理下载的资源缺陷修复：下载任务进度有时意外变成0.0%且状态被置为错误缺陷修复', 0),
	(628, '', 0, 647, 26, 1, 1, '千千静听是一款完全免费的音乐播放软件，拥有自主研发的全新音频引擎，集播放、音效、转换、歌词等众多功能于一身。其小巧精致、操作简捷、功能强大的特点，深得用户喜爱，被网友评为中国十大优秀软件之一，并且成为目前国内最受欢迎的音乐播放软件。', 0),
	(629, '', 0, 648, 27, 1, 1, '《谷歌金山词霸合作版》是金山软件与全球最大的搜索引擎公司Google(谷歌)联手推出的、面向个人用户的免费词典、翻译软件。传承了金山词霸十年经典品质的同时，也给用户带来了更强的功能、更优的交互体验。', 0),
	(630, '', 0, 649, 27, 1, 1, '一款高质量的PDF文档转换工具。完全兼容PDF规格，超强转换功能。可自由地将各种文本文件迅速地转换成为PDF文件。', 0),
	(631, '', 0, 650, 27, 1, 1, '万能五笔输入法平台：你会五笔，打五笔；你会拼音，打拼音；会英语打英语；不会拼音不会英语，打笔画,你想什么就打什么，而且是一种优先选择五笔字型高速输入为主的快速输入法，各种输入法随意使用，无需转换，随心所欲，易学好用。', 0),
	(632, '', 0, 651, 27, 1, 1, 'Foxmail是一款著名的电子邮件客户端软件,提供基于Internet标准的电子邮件收发功能.Foxmail 6.0致力于提供更便捷、更舒适的Foxmail产品使用体验.Foxmail6.5 正式版对 Beta3 版的主要改进 方便用户备忘、轻松管理各个事项，并可对重要事项设置提醒。', 0),
	(633, '', 0, 652, 27, 1, 1, '跳槽的时候，你的MSN聊天记录可曾带走了？工作多年，你的聊天记录可曾丢失过？公司、家庭、台式机、笔记本……多台电脑的MSN聊天记录无法合并，覆盖还是舍弃，还在艰难取舍么？个性表情带不走？传输文件没有备份？…… ', 0),
	(634, '', 0, 653, 27, 1, 1, '1.推出离线下载功能，支持HTTP，eMule，BT三大协议（暂对年费会员、Vip5及以上放量中）', 0),
	(635, '', 0, 654, 27, 1, 1, '极速酷6能够让你在观看视频时的速度有显著的提高。让你体验到很快很享受的感觉:炫酷桌面播放 极速酷6新增桌面播放功能，在为您加速的前提下还提供了脱离网页的桌面播放功能，让您可以在桌面轻松播放您喜欢的酷6视频。并且您可以根据您的喜好来调整区域的尺寸。 ', 0),
	(636, '', 0, 655, 40, 1, 1, '360安全卫士是当前功能最强、效果最好、最受用户欢迎的上网必备安全软件。由于使用方便，用户口碑好，目前4.2亿中国网民中，首选安装360的已超过3亿。', 0),
	(637, '', 0, 656, 40, 1, 1, '瑞星杀毒软件2010版产品介绍： 1、查杀病毒后台查杀：在不影响用户工作的情况下进行病毒的处理。', 0),
	(638, '', 0, 657, 40, 1, 1, '卡巴斯基全功能安全软件 2010将实时自动保护您全家的上网安全。', 0),
	(639, '', 0, 658, 40, 1, 1, '<p>2010年11月10日下午16：00开始，金山毒霸开始全面免费。从这时开始，所有用户都可以下载到没有服务期限的金山毒霸。</p>\r\n', 0),
	(640, '', 0, 659, 40, 1, 1, '江民杀毒软件KV2011是全功能专业安全软件，全面融合杀毒软件、防火墙、安全检测、漏洞修复等核心安全功能为有机整体，打破杀毒软件、防火墙等专业软件各司其职的界限，为个人电脑用户提供全面的安全防护。', 0),
	(641, '', 0, 660, 40, 1, 1, '捍卫你的每次点击&nbsp; 引领炫酷网络防护先驱诺顿防病毒软件2011立足SONAR3第三代主动行为防护', 0),
	(642, '', 0, 661, 40, 1, 1, '<div style="font-size:12px;font-family:宋体;">金山网盾首个成功免疫微软LNK（快捷方式）漏洞.</div>\r\n', 0),
	(643, '', 0, 662, 40, 1, 1, '&nbsp;江民杀毒软件KV2010系江民反病毒资深研发团队历时一年之久，悉心打造的一款新型全功能杀毒软件。', 0),
	(644, '', 0, 663, 3, 1, 1, '中电云集（<a href="http://www.chinaccnet.com">www.chinaccnet.com</a>） 是一家拥有中华人民共和国增值电信业务经营许可证，获准经营因特网数据中心业务（IDC）、因特网接入服务业务（ISP）及移动互联网服务的多元化增值电信运营商。公司以运营自建型互联网数据中心为主，同时兼计算机网络技术管理、技术开发、技术服务、转让，实业投资，投资管理为铺的多元化公司。 <br />\r\n　　公司倡导“引领数据中心未来”的经营理念，“客户至上，创新服务”的服务理念。无论对大、小客户，我们都始终秉承诚信的合作态度。公司始终以先进的技术手段及系统架构、高质量的线路、全天候的运行监控、完善的功能和专业的技术支持，确保为每个用户提供安全、可靠、高品质的顶级网络环境。 <br />\r\n', 0),
	(645, '', 0, 664, 3, 1, 1, '一切是为了发展需要', 0);
/*!40000 ALTER TABLE `qb_reply` ENABLE KEYS */;

-- 导出  表 cms.qb_report 结构
CREATE TABLE IF NOT EXISTS `qb_report` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_report 的数据：0 rows
DELETE FROM `qb_report`;
/*!40000 ALTER TABLE `qb_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_report` ENABLE KEYS */;

-- 导出  表 cms.qb_shoporderproduct 结构
CREATE TABLE IF NOT EXISTS `qb_shoporderproduct` (
  `pid` int(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `orderid` mediumint(7) DEFAULT NULL,
  `shopid` int(10) NOT NULL DEFAULT '0',
  `shopuid` mediumint(7) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `amount` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_shoporderproduct 的数据：0 rows
DELETE FROM `qb_shoporderproduct`;
/*!40000 ALTER TABLE `qb_shoporderproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_shoporderproduct` ENABLE KEYS */;

-- 导出  表 cms.qb_shoporderuser 结构
CREATE TABLE IF NOT EXISTS `qb_shoporderuser` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `telphone` varchar(20) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `sendtype` varchar(50) NOT NULL DEFAULT '',
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `olpaytype` varchar(25) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `othersay` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `totalmoney` varchar(15) NOT NULL DEFAULT '',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_shoporderuser 的数据：0 rows
DELETE FROM `qb_shoporderuser`;
/*!40000 ALTER TABLE `qb_shoporderuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_shoporderuser` ENABLE KEYS */;

-- 导出  表 cms.qb_sort 结构
CREATE TABLE IF NOT EXISTS `qb_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fmid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_sort 的数据：24 rows
DELETE FROM `qb_sort`;
/*!40000 ALTER TABLE `qb_sort` DISABLE KEYS */;
INSERT INTO `qb_sort` (`fid`, `fup`, `fmid`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `list_html`, `bencandy_html`, `domain`, `domain_dir`) VALUES
	(1, 0, 0, '新闻中心', 1, 8, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:25:"template/default/news.htm";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:11:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:14:"label_bencandy";s:0:"";s:10:"channelDir";s:4:"nnew";s:13:"channelDomain";s:0:"";s:10:"label_list";s:0:"";s:15:"ListShowBigType";s:13:"bigsort_tpl/0";}', '', '', '', ''),
	(3, 1, 0, '社会新闻', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:9:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:10:"list_tpl/6";s:15:"ListShowBigType";N;s:10:"label_list";s:0:"";s:14:"label_bencandy";s:0:"";}', '', '', '', ''),
	(4, 1, 0, 'IT业界', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 31, '', '', 1, '3', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:11:"list_tpl/10";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(29, 0, 105, '产品库', 1, 1, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, 'a:1:{s:10:"label_list";s:0:"";}', '', '', '', ''),
	(30, 29, 105, '晾衣机', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:0:"";s:15:"ListShowBigType";N;s:14:"label_bencandy";s:0:"";}', '', '', '', ''),
	(9, 0, 100, '图片中心', 1, 1, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:26:"template/default/photo.htm";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:15:"ListShowBigType";s:1:"0";s:10:"label_list";s:0:"";}', '', '', '', ''),
	(10, 9, 100, '美女欣赏', 2, 0, 0, '', 0, 0, '', '', '22', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '11', '', 1, '8', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(11, 0, 101, '下载中心', 1, 4, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:29:"template/default/download.htm";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:15:"ListShowBigType";s:1:"0";s:10:"label_list";s:0:"";}', '', '', '', ''),
	(12, 11, 101, '建站软件', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:6:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";s:0:"";s:12:"sonListorder";s:1:"0";s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";}', '', '', '', ''),
	(13, 0, 102, '影视频道', 1, 1, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:26:"template/default/video.htm";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:15:"ListShowBigType";s:0:"";s:10:"label_list";s:0:"";}', '', '', '', ''),
	(14, 13, 102, '网友视频', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";s:14:"label_bencandy";s:0:"";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(15, 0, 103, '商城频道', 1, 1, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:25:"template/default/shop.htm";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:15:"ListShowBigType";s:0:"";s:10:"label_list";s:0:"";}', '', '', '', ''),
	(16, 15, 103, '数码产品', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:6:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";s:0:"";s:12:"sonListorder";s:1:"0";s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";}', '', '', '', ''),
	(17, 0, 104, 'FLASH频道', 1, 1, 1, '', 0, 0, '', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";s:0:"";s:12:"sonTitleLeng";s:0:"";s:9:"cachetime";N;s:12:"sonListorder";s:1:"0";s:14:"listContentNum";N;s:12:"ListShowType";N;s:15:"ListShowBigType";s:1:"0";s:10:"label_list";s:0:"";}', '', '', '', ''),
	(18, 17, 104, 'MTV类', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '3', '', '', '', 0, 'a:8:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";s:15:"ListShowBigType";N;s:10:"label_list";s:0:"";}', '', '', '', ''),
	(26, 11, 101, '装机软件', 2, 0, 0, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '', '', '', ''),
	(27, 11, 101, '办公软件', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:1:"0";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(31, 1, 0, '新闻头条', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 1, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:10:"list_tpl/3";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(32, 1, 0, '推荐新闻', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 1, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:0:"";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(33, 1, 0, '图片新闻', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 1, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:0:"";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(34, 1, 0, '热点事件', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 1, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:10:"list_tpl/2";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(38, 1, 0, '一语惊人', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:10:"list_tpl/4";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(39, 1, 0, 'web新闻', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 1, '', '', '', '', 0, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:10:"list_tpl/8";s:15:"ListShowBigType";N;}', '', '', '', ''),
	(40, 11, 101, '杀毒软件', 2, 0, 0, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 0, '', '', '', '', 1, 'a:7:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;s:14:"listContentNum";s:0:"";s:12:"ListShowType";s:0:"";s:15:"ListShowBigType";N;}', '', '', '', '');
/*!40000 ALTER TABLE `qb_sort` ENABLE KEYS */;

-- 导出  表 cms.qb_special 结构
CREATE TABLE IF NOT EXISTS `qb_special` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(25) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `aids` text NOT NULL,
  `tids` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(1) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `htmlfile` varchar(50) NOT NULL DEFAULT '',
  `banner` varchar(150) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `ifbase` tinyint(1) NOT NULL DEFAULT '0',
  `htmlname` varchar(80) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ifbase` (`ifbase`),
  KEY `yz` (`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_special 的数据：8 rows
DELETE FROM `qb_special`;
/*!40000 ALTER TABLE `qb_special` DISABLE KEYS */;
INSERT INTO `qb_special` (`id`, `fid`, `title`, `titlecolor`, `keywords`, `style`, `template`, `picurl`, `content`, `aids`, `tids`, `jumpurl`, `target`, `uid`, `username`, `posttime`, `list`, `hits`, `lastview`, `levels`, `levelstime`, `htmlfile`, `banner`, `allowpost`, `ifbase`, `htmlname`, `yz`) VALUES
	(10, 1, '主页幻灯片', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', '', '', '7,142,184,248,250,249', '3,8,9,10,11,6,12,14,13,5,7,4', '', 0, 1, 'admin', 1237382603, 1237382603, 25, 1290130070, 0, 0, '', '', '3,4', 1, '', 1),
	(11, 1, '主页头条', '', '新闻 时事', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:0:"";}', '', '', '7,142,184,248,250,249', '3,8,9,10,11,6,12,14,13,5,7,4', '', 0, 1, 'admin', 1237382706, 1237382706, 103, 1290130075, 0, 1238675329, '', '', '3,4', 1, '', 1),
	(19, 1, '希金斯赌球丑闻后首露面', '', '', '', 'a:3:{s:4:"head";s:25:"template/default/none.htm";s:4:"foot";s:25:"template/default/none.htm";s:8:"bencandy";s:34:"template/special/special_sport.htm";}', 'special/1_20101119091108_agkc8.jpg', '斯诺克名将希金斯涉嫌赌一案今日公布了最终的审判结果，希金斯没有被定罪为“赌球”，最终只被禁赛6个月并将于11月份重返球坛，不过希金斯因违规探讨赌球行为以及未能及时上报的过失被罚款75000英镑，他的原经纪人帕特-穆尼则被永远禁止参加斯诺克事务。\r\n', '561,562,563,564', '', '', 0, 1, 'admin', 1240114393, 1240124310, 264, 1290479332, 1, 1240116319, '', '', '', 0, '', 1),
	(20, 1, '英国首相卡梅伦2010年访华', '', '', '', 'a:3:{s:4:"head";s:25:"template/default/none.htm";s:4:"foot";s:25:"template/default/none.htm";s:8:"bencandy";s:24:"template/special/sp1.htm";}', 'special/1_20101122161134_u6aeu.jpg', '　　昨天下午，英国首相戴维·卡梅伦一行访问北大，并在北京大学办公楼礼堂发表演讲。他强调，中国的崛起对于其他国家的发展不是威胁，而是一种机遇，英中两国要在各个领域加强交流与合作。\r\n\r\n　　戴维·卡梅伦43岁当选英国第53任首相，是英国自1812年以来最年轻的首相。北京大学是戴维·卡梅伦上任后首次访华48小时行程中的重要一站。\r\n', '595,596,597,598,599,600,601', '23,25,26,27,28,29,30,31', '', 0, 1, 'admin', 1240116689, 1240116689, 304, 1291704336, 1, 1240117139, '', '', '', 0, '', 1),
	(21, 1, '聚焦美国汇率改革促进公平贸易法案', '', '', '', 'a:3:{s:4:"head";s:25:"template/default/none.htm";s:4:"foot";s:25:"template/default/none.htm";s:8:"bencandy";s:36:"template/special/special_finance.htm";}', 'special/1_20101122151126_wvvvp.jpg', '美国会众议院29日以348比79的投票结果通过《汇率改革促进公平贸易法案》，旨在对所谓低估本币汇率的国家征收特别关税。这一做法被认为是近期美国贸易保护主义升温的体现。', '587,590,591,593,594,595,596,598', '23,24,25,26,28,29,27,30,31', '', 0, 1, 'admin', 1240120502, 1240120502, 284, 1290479317, 1, 1240121484, '', '', '', 0, '', 1),
	(22, 1, '奥迪A3限量版上市 四款同级进口车型导购', '', '', '', 'a:3:{s:4:"head";s:25:"template/default/none.htm";s:4:"foot";s:25:"template/default/none.htm";s:8:"bencandy";s:32:"template/special/special_car.htm";}', 'special/1_20101119161104_fdxqf.jpg', '   限量版奥迪A3 Sportback已经正式上市，在同级车的市场当中，同为进口车型的宝马1系车型以及大众的尚酷等四款车型不论实在价格上还是车辆级别上都是奥迪A3的竞争对手\r\n', '597,595', '31,30,29,28,20,21,22,23,27,26,25,24', '', 0, 1, 'admin', 1240121828, 1240121828, 334, 1290479324, 1, 1240122051, '', '', '', 0, '', 1),
	(24, 1, '成长中和成功的中国CEO', '', '', '', 'a:3:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:8:"bencandy";s:28:"template/default/showsp2.htm";}', 'special/1_20090419140403_B36H1.jpg', '太多的故事和意见都值得我们这些还没步入成功人士来参考。\r\n他们或许已经成功，或者有些还在成长中，不论怎样，做到今天，他们都已经是真正的英雄。', '583,584,585,586,594,595,597,598,600,601', '17,19,28,29,31,30,20,21,22,23,24,27,26,25', '', 0, 1, 'admin', 1240124312, 1240124312, 332, 1291791067, 1, 1240125051, '', 'special/1_20090419150403_aMUbN.jpg', '', 0, '', 1),
	(23, 1, '中国互联网观点参考', '', '', '', 'a:3:{s:4:"head";s:25:"template/default/none.htm";s:4:"foot";s:25:"template/default/none.htm";s:8:"bencandy";s:28:"template/special/showsp2.htm";}', 'special/1_20090419140451_9nuT0.jpg', '不管是创业热潮涌起的昨天，还是金融危机依然继续的今天，\r\n更好的技术与应用始终是产业发展的重中之重。只是在多变的年代里，得到的回答也在不停变换。\r\n哪项技术会成为下一个大热门，它们会如何改变我们的生活？CEO们看到的产业未来，和我们眼中的有什么不一样？\r\n2009年2月起，腾讯科技计划走访百位互联网、IT界著名CEO和CTO，将他们的答案一一为网友呈现', '597,598', '17,19,18,23,20,21,22,27,28,26,25,24', '', 0, 1, 'admin', 1240122281, 1240122281, 32, 1290479390, 1, 1240122359, '', 'special/1_20090419150453_IGx32.jpg', '', 0, '', 1);
/*!40000 ALTER TABLE `qb_special` ENABLE KEYS */;

-- 导出  表 cms.qb_special_comment 结构
CREATE TABLE IF NOT EXISTS `qb_special_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_special_comment 的数据：0 rows
DELETE FROM `qb_special_comment`;
/*!40000 ALTER TABLE `qb_special_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_special_comment` ENABLE KEYS */;

-- 导出  表 cms.qb_spsort 结构
CREATE TABLE IF NOT EXISTS `qb_spsort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_spsort 的数据：3 rows
DELETE FROM `qb_spsort`;
/*!40000 ALTER TABLE `qb_spsort` DISABLE KEYS */;
INSERT INTO `qb_spsort` (`fid`, `fup`, `name`, `class`, `sons`, `type`, `admin`, `list`, `listorder`, `passwd`, `logo`, `descrip`, `style`, `template`, `jumpurl`, `maxperpage`, `metakeywords`, `metadescription`, `allowcomment`, `allowpost`, `allowviewtitle`, `allowviewcontent`, `allowdownload`, `forbidshow`, `config`, `list_html`, `bencandy_html`) VALUES
	(1, 0, '时事新闻专题', 1, 0, 1, '', 0, 0, '', '', '', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '', '', 0, '', '', '', '', 0, 'a:4:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;}', '', ''),
	(2, 0, '娱乐新闻专题', 1, 0, 1, '', 0, 0, '', '', 'fff', '', 'a:4:{s:4:"head";s:0:"";s:4:"foot";s:0:"";s:4:"list";s:0:"";s:8:"bencandy";s:0:"";}', '', 0, '33', '', 0, '', '', '', '', 0, 'a:4:{s:11:"sonTitleRow";N;s:12:"sonTitleLeng";N;s:9:"cachetime";N;s:12:"sonListorder";N;}', '', ''),
	(3, 0, '2008北京生活大盘点', 1, 0, 1, '', 0, 0, '', '', '', '', '', '', 0, '', '', 1, '', '', '', '', 0, '', '', '');
/*!40000 ALTER TABLE `qb_spsort` ENABLE KEYS */;

-- 导出  表 cms.qb_template 结构
CREATE TABLE IF NOT EXISTS `qb_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_template 的数据：12 rows
DELETE FROM `qb_template`;
/*!40000 ALTER TABLE `qb_template` DISABLE KEYS */;
INSERT INTO `qb_template` (`id`, `name`, `type`, `filepath`, `descrip`, `list`) VALUES
	(5, '头部白板', 7, 'template/default/none.htm', '', 0),
	(6, '底部白板', 8, 'template/default/none.htm', '', 0),
	(23, '文章列表页(左宽右窄)', 2, 'template/default/list.htm', '', 0),
	(22, '内容页(左宽右窄)', 3, 'template/default/bencandy.htm', '', 0),
	(24, '主页(左宽右窄)', 1, 'template/default/index.htm', '', 0),
	(20, '内容页(上下型)', 3, 'template/default/bencandy_tpl_2.htm', '', 0),
	(21, '独立页', 9, 'template/default/alonepage.htm', '', 0),
	(25, '专题模板一(头与底要白板)', 11, 'template/special/showsp2.htm', '', 0),
	(26, '专题模板二(头与底要白板)', 11, 'template/special/special_sport.htm', '', 0),
	(27, '专题模板三(头与底要白板)', 11, 'template/special/special_car.htm', '', 0),
	(28, '专题模板四(头与底要白板)', 11, 'template/special/special_finance.htm', '', 0),
	(29, '专题模板五(头与底要白板)', 11, 'template/special/sp1.htm', '', 0);
/*!40000 ALTER TABLE `qb_template` ENABLE KEYS */;

-- 导出  表 cms.qb_template_bak 结构
CREATE TABLE IF NOT EXISTS `qb_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_template_bak 的数据：0 rows
DELETE FROM `qb_template_bak`;
/*!40000 ALTER TABLE `qb_template_bak` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_template_bak` ENABLE KEYS */;

-- 导出  表 cms.qb_upfile 结构
CREATE TABLE IF NOT EXISTS `qb_upfile` (
  `up_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `module_id` smallint(4) NOT NULL DEFAULT '0',
  `ids` varchar(255) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `if_tmp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_upfile 的数据：0 rows
DELETE FROM `qb_upfile`;
/*!40000 ALTER TABLE `qb_upfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `qb_upfile` ENABLE KEYS */;

-- 导出  表 cms.qb_vote_comment 结构
CREATE TABLE IF NOT EXISTS `qb_vote_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_vote_comment 的数据：7 rows
DELETE FROM `qb_vote_comment`;
/*!40000 ALTER TABLE `qb_vote_comment` DISABLE KEYS */;
INSERT INTO `qb_vote_comment` (`id`, `cid`, `vid`, `uid`, `username`, `posttime`, `content`, `ip`, `icon`, `yz`) VALUES
	(11, 10, 0, 1, 'admin', 1237279209, 'rrrrrrrrrrrrrrr', '192.168.0.99', 0, 1),
	(12, 10, 0, 1, 'admin', 1237279223, 'dddddddddddddddd', '192.168.0.99', 0, 1),
	(14, 6, 0, 1, 'admin', 1239025849, '&nbsp;证&nbsp;码:', '127.0.0.1', 0, 1),
	(22, 6, 0, 1, 'admin', 1283825218, 'fdsadf', '127.0.0.1', 0, 1),
	(19, 11, 0, 1, 'admin', 1240210890, '不错呀', '192.168.0.99', 0, 1),
	(20, 11, 0, 1, 'admin', 1255082863, 'fdsa', '127.0.0.1', 0, 1),
	(21, 11, 0, 1, 'admin', 1283823884, 'll', '127.0.0.1', 0, 1);
/*!40000 ALTER TABLE `qb_vote_comment` ENABLE KEYS */;

-- 导出  表 cms.qb_vote_config 结构
CREATE TABLE IF NOT EXISTS `qb_vote_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_vote_config 的数据：4 rows
DELETE FROM `qb_vote_config`;
/*!40000 ALTER TABLE `qb_vote_config` DISABLE KEYS */;
INSERT INTO `qb_vote_config` (`c_key`, `c_value`, `c_descrip`) VALUES
	('module_id', '23', ''),
	('Info_webOpen', '1', ''),
	('Info_webname', '投票系统', ''),
	('module_pre', 'vote_', '');
/*!40000 ALTER TABLE `qb_vote_config` ENABLE KEYS */;

-- 导出  表 cms.qb_vote_element 结构
CREATE TABLE IF NOT EXISTS `qb_vote_element` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `cid` int(7) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `votenum` int(7) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `img` varchar(100) NOT NULL DEFAULT '',
  `describes` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_vote_element 的数据：21 rows
DELETE FROM `qb_vote_element`;
/*!40000 ALTER TABLE `qb_vote_element` DISABLE KEYS */;
INSERT INTO `qb_vote_element` (`id`, `cid`, `title`, `votenum`, `list`, `img`, `describes`, `url`) VALUES
	(37, 6, '熊晓鸽', 4, 10, '', '', ''),
	(38, 6, '马化腾', 4, 7, '', '', ''),
	(39, 6, '马云', 2, 5, '', '', ''),
	(41, 6, '李彦宏', 6, 6, '', '', ''),
	(81, 11, '阿里妈妈和淘宝合并', 0, 4, 'vote/1_20090418220434_DSazk.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(80, 11, 'Chinaz之CNIDC主机网上线', 0, 9, 'vote/1_20090419090435_51j39.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(68, 6, '丁磊', 12, 9, '', '', ''),
	(70, 10, '百度粉丝团', 6, 0, 'vote/1_20090317160304_1cyPh.gif', '我是百度粉丝团', 'http://www.baidu.com'),
	(71, 10, '谷歌粉丝团', 2, 0, 'vote/1_20090317160317_NO50S.gif', '我是谷歌粉丝团', 'http://www.google.cn'),
	(72, 11, '博客已死，SNS当立', 1, 8, 'vote/1_20090419090425_nkqeB.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(73, 11, 'CN域名白菜到猪肉', 2, 10, 'vote/1_20090419090455_L5Iz8.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(74, 11, '九九音乐网倒闭', 1, 3, 'vote/1_20090419090414_BVe9o.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(75, 11, '番茄花园被告', 2, 6, 'vote/1_20090419090445_qQiaW.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(76, 11, '红火的全国站长大会', 2, 5, 'vote/1_20090419090445_QVf6M.jpg', '', 'http://www.admin5.com/article/20081231/124093.shtml'),
	(77, 11, '丁磊养猪', 0, 7, 'vote/1_20090419090459_1MkWx.jpg', '', 'http://bbs.chinaz.com/Shuiba/thread-1240750-1-1.html'),
	(82, 12, '中电云集', 11, 0, 'vote/1_20101109161100_eooqn.jpg', '', 'http://www.chinaccnet.com/'),
	(83, 12, '华夏名网', 11, 0, 'vote/1_20101109161103_nulvn.jpg', '', 'http://www.sudu.cn/'),
	(84, 12, '群英网络', 11, 0, 'vote/1_20101109161108_q5bre.jpg', '', 'http://www.qy.com.cn/'),
	(85, 12, '371数据', 12, 0, 'vote/1_20101109161112_omvjo.jpg', '', 'http://www.371.com/'),
	(86, 12, '中网互联', 11, 0, 'vote/1_20101109161116_zlkqh.jpg', '', 'http://www.zwidc.com/'),
	(87, 12, '星辉互联', 11, 0, 'vote/1_20101109161120_ylaj7.jpg', '', 'http://www.eydns.com/');
/*!40000 ALTER TABLE `qb_vote_element` ENABLE KEYS */;

-- 导出  表 cms.qb_vote_topic 结构
CREATE TABLE IF NOT EXISTS `qb_vote_topic` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `limittime` int(10) NOT NULL DEFAULT '0',
  `limitip` tinyint(1) NOT NULL DEFAULT '0',
  `ip` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `user` text NOT NULL,
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `forbidguestvote` tinyint(1) NOT NULL DEFAULT '0',
  `ifcomment` tinyint(1) NOT NULL DEFAULT '0',
  `tplcode` text NOT NULL,
  `votetype` tinyint(2) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- 正在导出表  cms.qb_vote_topic 的数据：4 rows
DELETE FROM `qb_vote_topic`;
/*!40000 ALTER TABLE `qb_vote_topic` DISABLE KEYS */;
INSERT INTO `qb_vote_topic` (`cid`, `name`, `about`, `type`, `limittime`, `limitip`, `ip`, `posttime`, `user`, `begintime`, `endtime`, `forbidguestvote`, `ifcomment`, `tplcode`, `votetype`, `aid`, `uid`) VALUES
	(6, '互联网哪些前辈是你支持的', '互联网哪些前辈是你支持和影响到你的？', 2, 600, 0, '', 1164793927, '', 1233749543, 1265256743, 0, 1, '<div class="voteid" title="$describes">{$button}{$title}({$votenum})</div>', 0, 0, 0),
	(11, '2008年中国站长十大热门事件投票', '-------请为你觉得2008年最热门的站长事件投上一票.', 2, 500, 0, '', 1237281523, '', 1233749543, 1580789543, 0, 1, '<table width="100%" border="0" cellspacing="0" cellpadding="0" style="width:118px;float:left;margin-top:4px;" class="voteid">\r\n  <tr> \r\n    <td align="center"><A HREF="$url" target="_blank" style="border:1px solid #ccc;display:block;width:100px;height:75px;"><img alt="{$title}" style="border:1px solid #fff;" src="$img" border="0" width="100" height="75"></A></td>\r\n  </tr>\r\n  <tr> \r\n    <td align="center">\r\n      <div  style="width:110px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">{$button}(<b><font color="#FF0000" >{$votenum}</font></b>)<a HREF="$url" target="_blank" title="{$title}">{$title}</a></div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td>{$describes}</td>\r\n  </tr>\r\n  <tr> \r\n    <td></td>\r\n  </tr>\r\n</table>\r\n\r\n', 1, 0, 0),
	(10, '哪个搜索引擎好?', '你喜欢使用哪个搜索引擎呢,请投上一票?', 1, 15, 0, '', 1237275830, '', 0, 0, 0, 1, '<table width="100%" border="0" cellspacing="0" cellpadding="0" style="width:90px;float:left;">\r\n  <tr> \r\n    <td align="center" valign="middle" style="line-height:40px;"> <a href="$url" target=_blank> \r\n      <b>$title</b></a> </td>\r\n  </tr>\r\n  <tr> \r\n    <td align="center"><a href="$url" target="_blank"><img alt="$describes" src="$img" width="80" height="30" border="0"></a></td>\r\n  </tr>\r\n  <tr> \r\n    <td align="center" style="line-height:20px;"> <font color="#990000">共 <b><font color="#FF0000">$votenum</font> 票 \r\n      </b></font></td>\r\n  </tr>\r\n  <tr> \r\n    <td align="center" style="line-height:40px;"><a href="$webdb[www_url]/do/vote.php?action=vote&voteId=$id" target="_blank"><u>投一票</u></a> \r\n      <a href="$webdb[www_url]/do/vote.php?job=show&cid=$cid#postcomment" target="_blank"><u>评一评</u></a></td>\r\n  </tr>\r\n</table>', 2, 0, 0),
	(12, '请为你最喜欢的IDC投上宝贵的一票', '', 2, 0, 0, '', 1289292937, '', 0, 0, 0, 0, '<div class="listVote" title="{$describes}">\r\n                    	<div class="img"><A HREF="$url" target="_blank"><img src="$img" width="120" height="60"/></A></div>\r\n                        <div class="word">{$button} (<span>{$votenum}</span>)$title</div>\r\n                    </div>', 1, 0, 0);
/*!40000 ALTER TABLE `qb_vote_topic` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
