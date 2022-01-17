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

-- 导出  表 cms.admin 结构
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `guanliyuan` char(50) DEFAULT NULL,
  `mima` char(50) DEFAULT NULL,
  `dengji` char(50) DEFAULT NULL,
  `chuangjianshijian` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.admin 的数据：1 rows
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `guanliyuan`, `mima`, `dengji`, `chuangjianshijian`) VALUES
	(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '1', '1552652581');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- 导出  表 cms.art 结构
CREATE TABLE IF NOT EXISTS `art` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `aid` char(50) DEFAULT NULL,
  `tid` char(50) DEFAULT NULL,
  `biaoti` varchar(500) DEFAULT NULL,
  `waibulianjie` varchar(500) DEFAULT NULL,
  `guanjianci` varchar(500) DEFAULT NULL,
  `zhaiyao` varchar(500) DEFAULT NULL,
  `zuozhe` char(50) DEFAULT NULL,
  `fabushijian` char(50) DEFAULT NULL,
  `fabudao` char(50) DEFAULT NULL,
  `tuijian` char(50) DEFAULT NULL,
  `suoluetu` text,
  `paixu` int(6) DEFAULT '50',
  `neirong` mediumtext,
  `dianji` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.art 的数据：35 rows
DELETE FROM `art`;
/*!40000 ALTER TABLE `art` DISABLE KEYS */;
INSERT INTO `art` (`id`, `aid`, `tid`, `biaoti`, `waibulianjie`, `guanjianci`, `zhaiyao`, `zuozhe`, `fabushijian`, `fabudao`, `tuijian`, `suoluetu`, `paixu`, `neirong`, `dianji`) VALUES
	(1, NULL, '8', '产品分类1门1', '', '', '', 'admin', '1564558980', '', '', '../../upload/up/15645590610.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '2'),
	(2, NULL, '8', '产品分类1门2', '', '', '', 'admin', '1564559340', '', '', '../../upload/up/15645593770.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '2'),
	(3, NULL, '8', '产品分类1门3', '', '', '', 'admin', '1564559340', '', '', '../../upload/up/15645594350.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '1'),
	(4, NULL, '8', '产品分类1门4', '', '', '', 'admin', '1564559400', '', '', '../../upload/up/15645594580.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '1'),
	(5, NULL, '9', '产品分类2门1', '', '', '', 'admin', '1564559460', '', '', '../../upload/up/15645594880.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(6, NULL, '9', '产品分类2门2', '', '', '', 'admin', '1564559460', '', '', '../../upload/up/15645595150.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(7, NULL, '9', '产品分类2门3', '', '', '', 'admin', '1564559460', '', '', '../../upload/up/15645595340.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '2'),
	(8, NULL, '9', '产品分类2门4', '', '', '', 'admin', '1564559520', '', '', '../../upload/up/15645595920.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(9, NULL, '10', '产品分类3门1', '', '', '', 'admin', '1564559580', '', '', '../../upload/up/15645596210.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(10, NULL, '10', '产品分类3门2', '', '', '', 'admin', '1564559580', '', '', '../../upload/up/15645596440.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(11, NULL, '10', '产品分类3门4', '', '', '', 'admin', '1564559640', '', '', '../../upload/up/15645596730.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '1'),
	(12, NULL, '10', '产品分类3门4', '', '', '', 'admin', '1564559640', '', '', '../../upload/up/15645597010.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(13, NULL, '11', '第一张图', 'http://www.zhanbangzhu.com/', '', '', 'admin', '1564560180', '', '', '../../upload/up/15645602640.jpg', 50, '', ''),
	(14, NULL, '11', '第二张图', 'http://www.zhanbangzhu.com/', '', '', 'admin', '1564560240', '', '', '../../upload/up/15645602950.jpg', 50, '', ''),
	(15, NULL, '4', '生态木的特点', '', '', '（一）生态木与其他材料产品的区别　　<br/>1、与天然木质产品的区别　　生态木系列产品在施工中非常便捷，工艺简单、工期短。因生态木的表面机理与天然木材的纹理有异曲同工之妙，因此，表现效果与天然木材的纯自然效果相似。生态木即使泡在水中也不会出现膨胀、变形，可以在不同的潮湿的环境中使用。其他室内外木质产品适用于干燥环境，但存在阳光曝晒后容易出现开裂、褪色现象。而生态木则避免了这种缺陷。在恶劣的气候条...', 'admin', '1564560480', '', '一级', '', 50, '<pre id="best-content-2167410385">（一）&nbsp;生态木与其他材料产品的区别</pre>\r\n<pre id="best-content-2167410385">　　1、与天然木质产品的区别\r\n　　生态木系列产品在施工中非常便捷，工艺简单、工期短。因生态木的表面机理与天然木材的纹理有异曲同工之妙，因此，表现效果与天然木材的纯自然效果相似。生态木即使泡在水中也不会出现膨胀、变形，可以在不同的潮湿的环境中使用。其他室内外木质产品适用于干燥环境，但存在阳光曝晒后容易出现开裂、褪色现象。而生态木则避免了这种缺陷。在恶劣的气候条件下使用生态木产品都不会出现开裂、变形、褪色等问题。\r\n　　2、与塑木的区别\r\n　　生态木与塑木的区别因聚合分子的成份不同，所以物理性能有天壤之别。生态木的制作工艺和原理与一般的塑木产品相同。塑木产品的木质纹理其本上是通过压模形成人工的木质纹理，木质感不真实。塑木材料采用PE、稻草、秸杆等原料，无法对基本原料进行充分的有机聚合，只有通过对PE材料的充分利用来实现物理性能，因此，PE塑料成份较高，其性能基本上为塑料的性能。容易出现遇热膨胀，遇冷收缩现象，变形系数不易控制。其搞老化能力也相应较低。在室外的应用中极易褪色，热变、强度均达不到生态木的效果。\r\n　　3、与金属产品的区别\r\n　　普通金属都是通过喷涂技术来达到表面色泽、纹理，给人感觉生冷、坚硬，缺乏木质产品的自然、生动效果。但强度高于生态木。其次是价格高，不能用天潮湿环境，抗腐蚀性较差。\r\n　　（二）生态木的应用范围：\r\n　　外墙装饰\r\n　　应用于外墙装饰的产品主要有长城板、户外地板、方木、遮阳板、叠式板五大系列。主要应用于各种不同的室外墙板车员。外墙装饰产品多为中空多腔结构，可有效的达到保温与隔音的作用，其优异的抗褪色度、耐候性与防老化性可保证产品使用20年以上，符合节能环保建筑外墙标准。\r\n　　室内装饰</pre>', ''),
	(16, NULL, '4', '走过千山万水 ,归来才是最美的风景', '', '', '走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归来才是最美的风景走过千山万水,归...', 'admin', '1564560480', '', '一级', '', 50, '走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景<br>走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景走过千山万水 ,归来才是最美的风景<br>', ''),
	(17, NULL, '4', '购实木家具要避开“套路”', '', '', '购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开...', 'admin', '1564560540', '', '一级', '', 50, '购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”<br><br>购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”购实木家具要避开“套路”<br>', '4'),
	(18, NULL, '4', '新零售”成机遇 橱柜实体店如何迎接“春', '', '', '新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零售”成机遇橱柜实体店如何迎接“春新零...', 'admin', '1564560540', '', '', '', 50, '新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春<br><br>新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春新零售”成机遇 橱柜实体店如何迎接“春<br>', ''),
	(19, NULL, '4', '橱柜是木工做的好还是定做的好', '', '', '橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木...', 'admin', '1564560540', '', '一级', '', 50, '橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好<br><br>橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好橱柜是木工做的好还是定做的好<br>', ''),
	(20, NULL, '4', '实木家具划痕去除方法', '', '', '实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法', 'admin', '1564560540', '', '', '', 50, '实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法<br><br>实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法实木家具划痕去除方法<br>', '1'),
	(21, NULL, '4', '如何为新家具除味', '', '', '如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味...', 'admin', '1564560600', '', '一级', '', 50, '如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味<br><br>如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味如何为新家具除味<br>', ''),
	(22, NULL, '4', '清洁家具的误区', '', '', '清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区', 'admin', '1564560600', '', '', '', 50, '清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区<br><br>清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区清洁家具的误区<br>', ''),
	(23, NULL, '4', '木质家具清洁去污的方法', '', '', '1.木质家具沾上污渍怎么办？如果沾上了污渍，可以用一些茶水涂抹一下，然后洒上玉米粉进行涂抹，很快可以去除污渍，使家具光洁如初。如果沾上墨迹，可以用白醋和水的混合液进行擦拭，然后用清水洗净即可。2.木质家具浸入了水印怎么办？如果我们在用湿抹布清洁家具的过程中，当水迹没有及时擦干净的话，可能浸入漆膜的空隙处，时间一长会留下水印，影响美观。这时，我们可以在水印上面铺一块湿润的布，然后用熨熨干，可以去除水...', 'admin', '1564560600', '', '一级', '../../upload/up/15645606530.jpg', 50, '<div class="newinfoText"> <p>\r\n	1.木质家具沾上污渍怎么办？如果沾上了污渍，可以用一些茶水涂抹一下，然后洒上玉米粉进行涂抹，很快可以去除污渍，使家具光洁如初。如果沾上墨迹，可以用白醋和水的混合液进行擦拭，然后用清水洗净即可。</p>\r\n<p>\r\n	2.木质家具浸入了水印怎么办？如果我们在用湿抹布清洁家具的过程中，当水迹没有及时擦干净的话，可能浸入漆膜的空隙处，时间一长会留下水印，影响美观。这时，我们可以在水印上面铺一块湿润的布，然后用熨熨干，可以去除水印。</p>\r\n<p>\r\n	3.涂了白漆的家具变黄了怎么办？白色的家具，时间一长有些地方会出现黄斑，影响美观，怎么清洁呢。办法是，在抹布上涂一点牙膏，然后在黄斑上反复擦拭，注意不要用力太大，就可以去除黄斑了。</p>\r\n </div>', '1'),
	(24, NULL, '4', '几款常用橱柜板材知识介绍', '', '', '几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍', 'admin', '1564560660', '', '', '../../upload/up/15645606960.jpg', 50, '几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍<br><br>几款常用橱柜板材知识介绍几款常用橱柜板材知识介绍<br>', ''),
	(25, NULL, '3', '资质1', '', '', '', 'admin', '1564561980', '', '', '../../upload/up/15645620300.jpg', 50, '<div align="center"><img src="../../upload/up/1564562014_0.jpg"></div>', '1'),
	(26, NULL, '3', '资质2', '', '', '', 'admin', '1564561980', '', '', '../../upload/up/15645620610.jpg', 50, '<div align="center"><img src="../../upload/up/1564562047_0.jpg"></div>', ''),
	(27, NULL, '3', '资质3', '', '', '', 'admin', '1564562040', '', '', '../../upload/up/15645620870.jpg', 50, '<div align="center"><img src="../../upload/up/1564562075_0.jpg"></div>', ''),
	(28, NULL, '5', '成功案例1', '', '', '', 'admin', '1564562160', '', '', '../../upload/up/15645621810.jpg', 50, '<div align="center"><img src="../../upload/up/1564562172_0.jpg"></div>', ''),
	(29, NULL, '5', '成功案例2', '', '', '', 'admin', '1564562160', '', '', '../../upload/up/15645622000.jpg', 50, '<div align="center"><img src="../../upload/up/1564562192_0.jpg"></div>', ''),
	(30, NULL, '5', '成功案例3', '', '', '', 'admin', '1564562160', '', '', '../../upload/up/15645622220.jpg', 50, '<div align="center"><img src="../../upload/up/1564562213_0.jpg"></div>', ''),
	(31, NULL, '8', '产品分类1门5', '', '', '', 'admin', '1564562640', '', '', '../../upload/up/15645627520.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(32, NULL, '8', '产品分类1门6', '', '', '', 'admin', '1564562700', '', '', '../../upload/up/15645627760.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(33, NULL, '8', '产品分类1门7', '', '', '', 'admin', '1564562760', '', '', '../../upload/up/15645627960.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', '1'),
	(34, NULL, '8', '产品分类1门8', '', '', '', 'admin', '1564562760', '', '', '../../upload/up/15645628180.jpg', 50, '<div align="center"><img src="../../upload/up/1564559045_0.jpg"></div>', ''),
	(35, NULL, '5', '成功案例4', '', '', '成功案例4成功案例4成功案例4成功案例4成功案例4', 'admin', '1564563360', '', '', '../../upload/up/15645634180.jpg', 50, '成功案例4成功案例4成功案例4成功案例4成功案例4', '');
/*!40000 ALTER TABLE `art` ENABLE KEYS */;

-- 导出  表 cms.info 结构
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `diaoyongbiaoqian` char(50) DEFAULT NULL,
  `shuyu` char(50) DEFAULT NULL,
  `leixing` char(50) DEFAULT NULL,
  `morenzhi` varchar(250) DEFAULT NULL,
  `neirong` mediumtext,
  `paixu` int(6) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.info 的数据：23 rows
DELETE FROM `info`;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` (`id`, `diaoyongbiaoqian`, `shuyu`, `leixing`, `morenzhi`, `neirong`, `paixu`) VALUES
	(1, '启动模式', '1', 'select', '电脑版;手机版;电脑+手机版', '电脑+手机版', 1),
	(2, '电脑模板文件', '1', 'select', '', 'pc1', 2),
	(3, '手机模板文件', '1', 'select', '', 'm1', 3),
	(4, '发布时同步更新', '1', 'select', '是;否', '否', 4),
	(5, '电脑站网址', '1', 'input', '/', '/', 5),
	(6, '手机站网址', '1', 'input', '/m/', '/m/', 6),
	(7, '网站SEO标题', '1', 'input', '这里填写网站SEO标题', '致力于打造优秀的全自动SEO解决方案', 7),
	(8, '网站SEO关键词', '1', 'input', '这里填写网站SEO关键词', '免费cms,企业cms,cms源码,cms系统,企业网站源码,公司网站源码,网站源码下载,php网站源码', 8),
	(9, '网站SEO描述', '1', 'textarea', '这里填写网站SEO描述', '免费cms,企业cms,cms源码,cms系统,企业网站源码,公司网站源码,网站源码下载,php网站源码', 9),
	(81, '百度排名', '7', 'textarea', '', '站帮主|>50|1642226991;免费cms|>50|1642226991;企业cms|>50|1642226992;cms源码|>50|1642226992;cms系统|>50|1642226992;企业网站源码|>50|1642226993;公司网站源码|>50|1642226993;网站源码下载|>50|1642226994;php网站源码|>50|1642226994;站帮主cms|>50|1642226995&;站帮主|>50|1642226996;免费cms|>50|1642226996;企业cms|>50|1642226997;cms源码|>50|1642226997;cms系统|>50|1642226997;企业网站源码|>50|1642226998;公司网站源码|>50|1642226998;网站源码下载|>50|1642226999;php网站源码|>50|1642226999;站帮主cms|>50|1642227000', 50),
	(82, 'robots', '5', 'textarea', '', 'User-agent: *\r\nDisallow: /cms/', 50),
	(83, '360自动推送', '5', 'textarea', '', '', 50),
	(84, '百度自动推送', '5', 'select', '开启;关闭', '开启', 50),
	(107, '随机插入', 'wyc', 'textarea', '一行一个：关键词|链接', '站帮主|http://www.zhanbangzhu.com\r\n站帮主cms|http://www.zhanbangzhu.com\r\n网站自动更新文章|http://www.zhanbangzhu.com', 52),
	(108, '开启伪原创', 'wyc', 'select', '是;否', '是', 50),
	(112, '随机插入图片', 'wyc', 'select', '是;否', '否', 51),
	(113, '随机图片库', 'wyc', 'file', '', '', 54),
	(114, '底部左边文字', '2', 'input', '', '中国广西南宁江南区', 50),
	(115, '底部中间文字', '2', 'input', '', '电话：400-888-8888 手机：13988999988', 50),
	(116, '底部右边文字', '2', 'input', '', 'admin@baidu.com', 50),
	(117, '最底部文字', '2', 'textarea', '', 'ICP备********号 Copyright © 2002-2017 某某生态木材有限公司 版权所有 Power by 站帮主CMS 技术支持：站帮主', 50),
	(118, '网站顶部右侧电话', '2', 'input', '', '0771-8888888', 50),
	(119, '手机站手机底部信息', '2', 'textarea', '', '<div class="hotline">\r\n<a href="tel:" class="tel_number">400-888-8888</a><br>\r\n地址：中国广西南宁江南区<br>\r\n邮箱：admin@baidu.com\r\n</div>', 50);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;

-- 导出  表 cms.liandong 结构
CREATE TABLE IF NOT EXISTS `liandong` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `lid` char(50) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `pinyin` char(50) DEFAULT NULL,
  `paixu` char(50) DEFAULT NULL,
  `run` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.liandong 的数据：1 rows
DELETE FROM `liandong`;
/*!40000 ALTER TABLE `liandong` DISABLE KEYS */;
INSERT INTO `liandong` (`id`, `lid`, `name`, `pinyin`, `paixu`, `run`) VALUES
	(1, '0', '发布到', '', '1', '0');
/*!40000 ALTER TABLE `liandong` ENABLE KEYS */;

-- 导出  表 cms.moxing 结构
CREATE TABLE IF NOT EXISTS `moxing` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `mid` char(50) DEFAULT NULL,
  `diaoyongmingcheng` char(50) DEFAULT NULL,
  `leixing` char(50) DEFAULT NULL,
  `morenzhi` text,
  `paixu` int(6) DEFAULT '50',
  `bitian` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.moxing 的数据：16 rows
DELETE FROM `moxing`;
/*!40000 ALTER TABLE `moxing` DISABLE KEYS */;
INSERT INTO `moxing` (`id`, `mid`, `diaoyongmingcheng`, `leixing`, `morenzhi`, `paixu`, `bitian`) VALUES
	(1, '0', '公共模型', '', '', 1, '0'),
	(2, '1', '标题', 'input', '', 0, '0'),
	(3, '1', '外部链接', 'input', '', 1002, '0'),
	(4, '1', '关键词', 'input', '', 1003, '0'),
	(5, '1', '摘要', 'textarea', '', 1004, '0'),
	(6, '1', '作者', 'input', '', 1005, '0'),
	(7, '1', '发布时间', 'radio', '当前时间;待发布', 1007, '0'),
	(8, '1', '点击', 'input', '', 1007, '0'),
	(9, '1', '发布到', 'liandong', '1', 1008, '0'),
	(10, '1', '推荐', 'radio', '一级;二级;三级;四级;五级', 1009, '0'),
	(11, '1', '缩略图', 'file', '', 1010, '0'),
	(12, '1', '排序', 'input', '', 1005, '0'),
	(13, '0', '文章模型', '', '', 50, '0'),
	(14, '13', '内容', 'body', '', 2, '1'),
	(25, '', '', '', '', 0, '0'),
	(26, '', '', '', '', 0, '0');
/*!40000 ALTER TABLE `moxing` ENABLE KEYS */;

-- 导出  表 cms.type 结构
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(6) DEFAULT NULL,
  `lanmumingcheng` char(50) DEFAULT NULL,
  `fulanmumingcheng` char(50) DEFAULT NULL,
  `shujumoxing` char(50) DEFAULT NULL,
  `lanmumoban` char(50) DEFAULT NULL,
  `xiangqingmoban` char(50) DEFAULT NULL,
  `baocunlujing` char(50) DEFAULT NULL,
  `youhuabiaoti` varchar(500) DEFAULT NULL,
  `youhuaguanjianci` varchar(500) DEFAULT NULL,
  `youhuazhaiyao` varchar(500) DEFAULT NULL,
  `lanmutupian` varchar(500) DEFAULT NULL,
  `lanmuneirong` mediumtext,
  `paixu` int(6) DEFAULT '50',
  `run` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.type 的数据：11 rows
DELETE FROM `type`;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`id`, `tid`, `lanmumingcheng`, `fulanmumingcheng`, `shujumoxing`, `lanmumoban`, `xiangqingmoban`, `baocunlujing`, `youhuabiaoti`, `youhuaguanjianci`, `youhuazhaiyao`, `lanmutupian`, `lanmuneirong`, `paixu`, `run`) VALUES
	(1, 0, '关于我们', 'guanyuwomen', '', 'list_danye.html', 'art_news.html', 'guanyuwomen', '关于我们', '关于我们', '关于我们', '../../upload/up/15645617390.jpg', '<div>\r\n	<p>\r\n		创业邦成立于2007年，是中国领先的专业创业服务平台，致力于帮助创业者实现创业梦想，推动各领域高成长企业快速发展。</p>\r\n	<p>\r\n		创业邦为创业者提供高价值的资讯与服务，推动中国创新创业。旗下拥有传媒互动、创业孵化、融资服务等业务。</p>\r\n</div>\r\n<h4>\r\n	产品与服务</h4>\r\n<div>\r\n	创业邦传媒\r\n	<p>\r\n		包括 创业邦网站、杂志、App、微信公众号、微博、数据库、创业创新榜单、研究报告及峰会等，为创业者提供全方位、高价值的资讯与数据服务。 创业邦100未来领袖峰会每年一届，发布“ 创业邦100”榜单，致力于挖掘具备独角兽潜质的创新公司。</p>\r\n</div>\r\n<div>\r\n	创新中国DEMO CHINA\r\n	<p>\r\n		创新产品服务、商业模式的展示平台。2006年开始举办，2015年，每届峰会已达万人规模，超过1500位一线投资人列席、100余个创新项目进行展示。已累计助力500余家企业融资超过30亿美元。</p>\r\n</div>\r\n<div>\r\n	创业邦成长营BANG CAMP\r\n	<p>\r\n		每期成长营为60个创新项目提供90天的孵化加速服务。通过产品打磨、商业模式梳理、融资演练、推广分析、领导力沙盘等系统实战培训，助力创业者思维通道和能力结构的快速搭建。2016年计划开办5期。</p>\r\n</div>\r\n<div>\r\n	创业邦创新空间DEMO SPACE\r\n	<p>\r\n		创业邦旗下实体创新孵化空间，集创业邦媒体、活动、投资、导师、社群等资源优势，为初创企业提供优质办公空间和全面孵化加速服务。2016年，创业邦孵化器已在北京、上海、深圳、广州、杭州、苏州、成都、重庆、南京、常州等10个城市开放。</p>\r\n</div>\r\n<div>\r\n	创业邦天使基金\r\n	<p>\r\n		专注于早期高科技领域的投资，并为所投资公司提供公司治理、人才引进、资源合作、融资咨询等增值服务。 创业邦天使基金同时拥有美元及人民币基金，截止到2015年底，已投资30余个创业项目。</p>\r\n</div>\r\n', 50, ''),
	(2, 0, '产品展示', 'chanpinzhanshi', '13', 'list_pro.html', 'art_pro.html', 'chanpinzhanshi', '产品展示', '产品展示', '产品展示', '../../upload/up/15645617520.jpg', '', 50, ''),
	(3, 0, '荣誉资质', 'rongyuzizhi', '13', 'list_pro.html', 'art_pro.html', 'rongyuzizhi', '荣誉资质', '荣誉资质', '荣誉资质', '../../upload/up/15645617640.jpg', '', 50, ''),
	(4, 0, '新闻资讯', 'xinwenzixun', '13', 'list_news.html', 'art_news.html', 'xinwenzixun', '新闻资讯', '新闻资讯', '新闻资讯', '../../upload/up/15645617780.jpg', '', 50, ''),
	(5, 0, '成功案例', 'chenggonganli', '13', 'list_pro.html', 'art_pro.html', 'chenggonganli', '成功案例', '成功案例', '成功案例', '../../upload/up/15645617900.jpg', '', 50, ''),
	(6, 0, '销售网络', 'xiaoshouwangluo', '', 'list_danye.html', 'art_news.html', 'xiaoshouwangluo', '销售网络', '销售网络', '销售网络', '../../upload/up/15645618070.jpg', '<div align="center"><img src="../../upload/up/1564562252_0.jpg"></div>', 50, ''),
	(7, 0, '联系我们', 'lianxiwomen', '', 'list_danye.html', 'art_news.html', 'lianxiwomen', '联系我们', '联系我们', '联系我们', '../../upload/up/15645618190.jpg', '地址：这里是您的公司地址<br>电话：400-0000-9988<br>传真：400-0000-9988<br>邮编：000000<br>邮箱：这里是您公司的邮箱地址 <br>', 50, ''),
	(8, 2, '产品分类1', 'chanpinfenlei1', '13', 'list_pro.html', 'art_pro.html', 'chanpinfenlei1', '产品分类1', '产品分类1', '产品分类1', '', '', 50, ''),
	(9, 2, '产品分类2', 'chanpinfenlei2', '13', 'list_pro.html', 'art_pro.html', 'chanpinfenlei2', '产品分类2', '产品分类2', '产品分类2', '', '', 50, ''),
	(10, 2, '产品分类3', 'chanpinfenlei3', '13', 'list_pro.html', 'art_pro.html', 'chanpinfenlei3', '产品分类3', '产品分类3', '产品分类3', '', '', 50, ''),
	(11, 0, '首页幻灯片', 'shouyehuandengpian', '13', 'list_news.html', 'art_news.html', 'shouyehuandengpian', '首页幻灯片', '首页幻灯片', '首页幻灯片', '', '', 50, '110');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;

-- 导出  表 cms.youad 结构
CREATE TABLE IF NOT EXISTS `youad` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `shuyu` char(50) DEFAULT NULL,
  `biaoti` varchar(50) DEFAULT NULL,
  `tupian` varchar(250) DEFAULT NULL,
  `width` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `lianjie` varchar(250) DEFAULT NULL,
  `run` char(50) DEFAULT NULL,
  `paixu` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 正在导出表  cms.youad 的数据：2 rows
DELETE FROM `youad`;
/*!40000 ALTER TABLE `youad` DISABLE KEYS */;
INSERT INTO `youad` (`id`, `shuyu`, `biaoti`, `tupian`, `width`, `height`, `lianjie`, `run`, `paixu`) VALUES
	(1, '1', '站帮主CMS', '', '100', '100', 'http://www.zhanbangzhu.com/index.html', '1', '50'),
	(2, '1', '站帮主CMS教程', '', '100', '100', 'http://www.zbzcms.com/', '1', '50');
/*!40000 ALTER TABLE `youad` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
