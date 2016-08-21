/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : mml

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2016-07-24 10:00:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aid` int(6) NOT NULL AUTO_INCREMENT,
  `province` varchar(50) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `rname` varchar(50) DEFAULT NULL,
  `rpho` char(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `code` int(6) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `uid` (`uid`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('7', '浙江', '杭州爱谁谁的', '点睡', '1232', '1', '123');
INSERT INTO `address` VALUES ('11', '江西', '九江123123', '123', '321', '1', '123');
INSERT INTO `address` VALUES ('12', '福建', '福州wangwi', '12333', '3211111', '1', '10086');
INSERT INTO `address` VALUES ('14', '四川', '成都12312311', 'tyc', '121444444', '1', '888');
INSERT INTO `address` VALUES ('15', '四川', '成都12312311', 'tyc', '121444444', '1', '888');
INSERT INTO `address` VALUES ('16', '福建', '福州wangwi', '12333', '3211111', '1', '10086');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cwords` varchar(200) DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `FK_Reference_1` (`uid`),
  KEY `FK_Reference_7` (`gid`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`gid`) REFERENCES `goods` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '4', '这东西可好了', '2016-07-21 00:00:00', '1');
INSERT INTO `comments` VALUES ('2', '5', '这东西可好了', '2016-07-21 00:00:00', '3');
INSERT INTO `comments` VALUES ('3', '6', '这东西可好了', '2016-07-21 21:08:42', '4');
INSERT INTO `comments` VALUES ('4', '3', '东西一般，下次我不会再来买了', '2016-07-21 21:08:43', '2');
INSERT INTO `comments` VALUES ('5', '4', '老板服务态度真好', '2016-07-21 21:08:44', '1');
INSERT INTO `comments` VALUES ('6', '2', '货真价实', '2016-07-21 21:08:44', '3');
INSERT INTO `comments` VALUES ('7', '1', '东西还不错', '2016-07-21 21:08:46', '4');
INSERT INTO `comments` VALUES ('8', '6', '物流太慢了，不过东西质量不错', '2016-07-21 21:08:47', '2');
INSERT INTO `comments` VALUES ('9', '3', '东西掉了，老板又给补发，下次还来', '2016-07-21 21:08:48', '3');
INSERT INTO `comments` VALUES ('10', '2', '好，给五颗星', '2016-07-19 15:01:27', '1');
INSERT INTO `comments` VALUES ('11', '3', '我是这个店的老客户了，东西挺不错的', '2016-07-21 21:08:07', '12');
INSERT INTO `comments` VALUES ('12', '4', '我是这个店的老客户了，东西挺不错的', '2016-07-21 21:08:52', '23');
INSERT INTO `comments` VALUES ('13', '4', '我是这个店的老客户了，东西挺不错的', '2016-07-21 21:09:00', '23');
INSERT INTO `comments` VALUES ('14', '5', '我是这个店的老客户了，东西挺不错的', '2016-07-21 21:09:01', '12');
INSERT INTO `comments` VALUES ('15', '3', '我是这个店的老客户了，东西挺不错的', '2016-07-21 21:09:02', '2');
INSERT INTO `comments` VALUES ('16', '6', '我是这个店的老客户了，东西挺不错的', '2016-07-21 21:08:18', '6');
INSERT INTO `comments` VALUES ('17', '2', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 16:44:39', '8');
INSERT INTO `comments` VALUES ('18', '2', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 21:09:04', '1');
INSERT INTO `comments` VALUES ('19', '3', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 21:08:25', '8');
INSERT INTO `comments` VALUES ('20', '1', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 16:44:47', '12');
INSERT INTO `comments` VALUES ('21', '4', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 21:09:06', '18');
INSERT INTO `comments` VALUES ('22', '6', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 21:09:07', '17');
INSERT INTO `comments` VALUES ('23', '4', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 21:09:08', '27');
INSERT INTO `comments` VALUES ('24', '5', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 21:09:10', '25');
INSERT INTO `comments` VALUES ('25', '2', '性价比高，已经买过很多次了，推荐朋友来买', '2016-07-21 16:45:09', '23');
INSERT INTO `comments` VALUES ('26', '4', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:08:30', '21');
INSERT INTO `comments` VALUES ('27', '1', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 16:45:11', '26');
INSERT INTO `comments` VALUES ('28', '2', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 16:45:15', '22');
INSERT INTO `comments` VALUES ('29', '4', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:12', '24');
INSERT INTO `comments` VALUES ('30', '6', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:14', '16');
INSERT INTO `comments` VALUES ('31', '4', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:15', '15');
INSERT INTO `comments` VALUES ('32', '3', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:16', '11');
INSERT INTO `comments` VALUES ('33', '3', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:17', '10');
INSERT INTO `comments` VALUES ('34', '2', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:18', '9');
INSERT INTO `comments` VALUES ('35', '5', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:19', '8');
INSERT INTO `comments` VALUES ('36', '6', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:19', '7');
INSERT INTO `comments` VALUES ('37', '4', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:21', '6');
INSERT INTO `comments` VALUES ('38', '3', '东西还行，值得够买，下回还买，一直在米米乐买。一个字顶，俩字顶顶。', '2016-07-21 21:09:22', '5');
INSERT INTO `comments` VALUES ('39', '5', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:22', '19');
INSERT INTO `comments` VALUES ('40', '6', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:24', '20');
INSERT INTO `comments` VALUES ('41', '3', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:25', '1');
INSERT INTO `comments` VALUES ('42', '2', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 16:46:55', '2');
INSERT INTO `comments` VALUES ('43', '4', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:27', '3');
INSERT INTO `comments` VALUES ('44', '5', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:28', '4');
INSERT INTO `comments` VALUES ('45', '6', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:29', '5');
INSERT INTO `comments` VALUES ('46', '4', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:30', '6');
INSERT INTO `comments` VALUES ('47', '3', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:32', '7');
INSERT INTO `comments` VALUES ('48', '1', 'sdsddf', '2016-07-24 02:12:45', '8');
INSERT INTO `comments` VALUES ('49', '3', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:33', '9');
INSERT INTO `comments` VALUES ('50', '4', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:34', '10');
INSERT INTO `comments` VALUES ('51', '5', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:35', '11');
INSERT INTO `comments` VALUES ('52', '6', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:36', '12');
INSERT INTO `comments` VALUES ('53', '3', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:38', '13');
INSERT INTO `comments` VALUES ('54', '2', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 16:48:24', '14');
INSERT INTO `comments` VALUES ('55', '3', '已到货、用后追评……米米乐以往的神速！准备体验中', '2016-07-21 21:09:39', '15');
INSERT INTO `comments` VALUES ('56', '4', '高端大气上档次，东西很好！', '2016-07-21 21:09:41', '16');
INSERT INTO `comments` VALUES ('57', '5', '高端大气上档次，东西很好！', '2016-07-21 21:09:42', '17');
INSERT INTO `comments` VALUES ('58', '4', '高端大气上档次，东西很好！', '2016-07-21 21:09:43', '18');
INSERT INTO `comments` VALUES ('59', '3', '高端大气上档次，东西很好！', '2016-07-21 21:09:44', '19');
INSERT INTO `comments` VALUES ('60', '5', '高端大气上档次，东西很好！', '2016-07-21 21:09:46', '20');
INSERT INTO `comments` VALUES ('61', '6', '高端大气上档次，东西很好！', '2016-07-21 21:09:47', '21');
INSERT INTO `comments` VALUES ('62', '3', '高端大气上档次，东西很好！', '2016-07-21 21:09:48', '22');
INSERT INTO `comments` VALUES ('63', '4', '高端大气上档次，东西很好！', '2016-07-21 21:09:49', '23');
INSERT INTO `comments` VALUES ('64', '1', '高端大气上档次，东西很好！', '2016-07-21 16:48:35', '24');
INSERT INTO `comments` VALUES ('65', '1', '高端大气上档次，东西很好！', '2016-07-21 21:09:52', '25');
INSERT INTO `comments` VALUES ('66', '1', '高端大气上档次，东西很好！', '2016-07-21 21:09:52', '26');
INSERT INTO `comments` VALUES ('67', '2', '高端大气上档次，东西很好！', '2016-07-21 16:48:38', '27');
INSERT INTO `comments` VALUES ('68', '2', '高端大气上档次，东西很好！', '2016-07-21 21:09:54', '22');
INSERT INTO `comments` VALUES ('69', '2', '高端大气上档次，东西很好！', '2016-07-21 21:09:55', '21');
INSERT INTO `comments` VALUES ('70', '2', '高端大气上档次，东西很好！', '2016-07-21 21:09:56', '3');
INSERT INTO `comments` VALUES ('71', '4', '高端大气上档次，东西很好！', '2016-07-21 21:09:57', '4');
INSERT INTO `comments` VALUES ('72', '3', '高端大气上档次，东西很好！', '2016-07-21 21:09:58', '6');
INSERT INTO `comments` VALUES ('73', '5', '高端大气上档次，东西很好！', '2016-07-21 21:09:59', '7');
INSERT INTO `comments` VALUES ('74', '6', '高端大气上档次，东西很好！', '2016-07-21 21:09:59', '24');
INSERT INTO `comments` VALUES ('75', '1', 'HAMAPI', '2016-07-24 03:13:20', '3');
INSERT INTO `comments` VALUES ('76', '1', null, '2016-07-24 06:16:31', '8');
INSERT INTO `comments` VALUES ('77', '1', null, '2016-07-24 06:17:13', '8');
INSERT INTO `comments` VALUES ('78', '1', null, '2016-07-24 06:18:03', '8');
INSERT INTO `comments` VALUES ('79', '1', null, '2016-07-24 06:19:25', '8');
INSERT INTO `comments` VALUES ('80', '1', null, '2016-07-24 06:20:27', '8');
INSERT INTO `comments` VALUES ('81', '1', null, '2016-07-24 06:21:35', '8');
INSERT INTO `comments` VALUES ('82', '1', null, '2016-07-24 06:22:06', '8');
INSERT INTO `comments` VALUES ('83', '1', null, '2016-07-24 06:22:39', '8');
INSERT INTO `comments` VALUES ('84', '1', null, '2016-07-24 06:22:56', '8');
INSERT INTO `comments` VALUES ('85', '1', null, '2016-07-24 06:23:04', '8');
INSERT INTO `comments` VALUES ('86', '1', null, '2016-07-24 06:23:16', '8');
INSERT INTO `comments` VALUES ('87', '1', null, '2016-07-24 06:23:18', '8');
INSERT INTO `comments` VALUES ('88', '1', null, '2016-07-24 06:23:38', '8');
INSERT INTO `comments` VALUES ('89', '1', null, '2016-07-24 06:23:59', '8');
INSERT INTO `comments` VALUES ('90', '1', '222', '2016-07-24 06:24:40', '8');
INSERT INTO `comments` VALUES ('91', '1', '很好吃！', '2016-07-24 09:24:43', '3');

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`),
  KEY `FK_Reference_4` (`gid`),
  KEY `FK_Reference_5` (`oid`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`gid`) REFERENCES `goods` (`gid`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('84', '3', '120', '44');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `gname` varchar(50) NOT NULL,
  `gprice` decimal(10,2) NOT NULL,
  `gnum` int(11) DEFAULT NULL,
  `gaddress` varchar(100) DEFAULT NULL,
  `gstatus` varchar(20) DEFAULT NULL,
  `gimageurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `FK_Reference_3` (`tid`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', '大毛领斗篷红色羽绒服女中长款大码', '100.00', '100', '北京', 'T', '1.jpg');
INSERT INTO `goods` VALUES ('2', '2', '雅诗兰黛特润眼霜', '200.00', '122', '上海', 'T', '2.jpg');
INSERT INTO `goods` VALUES ('3', '3', '陶华碧老干妈 风味豆豉油制辣椒', '20.00', '885', '北京', 'T', '3.jpg');
INSERT INTO `goods` VALUES ('4', '3', 'A果园新疆特产吐鲁番葡萄干', '30.00', '187', '北京', 'T', '4.jpg');
INSERT INTO `goods` VALUES ('5', '2', '红酒透亮矿物蚕丝面膜贴', '280.00', '293', '上海', 'T', '5.jpg');
INSERT INTO `goods` VALUES ('6', '2', '玉兰油 Olay 多效修护霜', '300.00', '95', '上海', 'T', '6.jpg');
INSERT INTO `goods` VALUES ('7', '1', 'TOMIF透明风篮球服套装男', '280.00', '194', '北京', 'T', '7.jpg');
INSERT INTO `goods` VALUES ('8', '1', '卫衣男连帽', '100.00', '296', '上海', 'T', '8.jpg');
INSERT INTO `goods` VALUES ('9', '3', '四川特产休闲食品零食小吃双流兔头', '25.00', '295', '上海', 'T', '9.jpg');
INSERT INTO `goods` VALUES ('10', '3', '友臣肉松饼', '48.00', '200', '北京', 'T', '10.jpg');
INSERT INTO `goods` VALUES ('11', '2', '欧莱雅（LOREAL）复颜抗皱紧致滋润日霜', '480.00', '296', '上海', 'T', '11.jpg');
INSERT INTO `goods` VALUES ('12', '4', '东升农场 无公害奶白菜', '18.00', '94', '北京', 'T', '12.jpg');
INSERT INTO `goods` VALUES ('13', '1', '雪纺连衣裙女夏2016新款中长款', '43.00', '288', '上海', 'T', '13.jpg');
INSERT INTO `goods` VALUES ('14', '1', '新款纯色长款防风男士春季风衣外套', '300.00', '300', '上海', 'T', '14.jpg');
INSERT INTO `goods` VALUES ('15', '2', '魅力润颜嫩白柔护霜', '80.00', '100', '北京', 'T', '15.jpg');
INSERT INTO `goods` VALUES ('16', '3', '康师傅红烧牛肉面', '4.00', '94', '北京', 'T', '16.jpg');
INSERT INTO `goods` VALUES ('17', '4', '小汤山 新土豆', '1.00', '9994', '北京', 'T', '17.jpg');
INSERT INTO `goods` VALUES ('18', '4', '小汤山 甜玉米', '2.00', '2998', '上海', 'T', '18.jpg');
INSERT INTO `goods` VALUES ('19', '4', '小汤山 迷你紫红薯', '3.00', '5000', '北京', 'T', '19.jpg');
INSERT INTO `goods` VALUES ('20', '5', 'spinding篮球', '180.00', '994', '北京', 'T', '20.jpg');
INSERT INTO `goods` VALUES ('21', '5', '火车头Train5号 PU足球', '120.00', '998', '上海', 'T', '21.jpg');
INSERT INTO `goods` VALUES ('22', '5', '川崎Kawasaki网球拍', '280.00', '2000', '上海', 'T', '22.jpg');
INSERT INTO `goods` VALUES ('23', '5', '山地自行车', '1200.00', '191', '上海', 'T', '23.jpg');
INSERT INTO `goods` VALUES ('24', '5', '野人睡袋', '100.00', '499', '上海', 'T', '24.jpg');
INSERT INTO `goods` VALUES ('25', '1', '千仞岗羽绒服', '300.00', '300', '上海', 'on', 'null');
INSERT INTO `goods` VALUES ('26', '4', '自家农场大白菜', '2.00', '2000', '北京', 'T', '26.jpg');
INSERT INTO `goods` VALUES ('27', '1', '南极人羽绒服 红', '300.00', '199', '北京', 'T', '27.jpg');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mpwd` varchar(20) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `ostatus` char(23) DEFAULT 'F',
  `otime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ammount` decimal(10,2) DEFAULT '0.00',
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK_Reference_6` (`uid`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('120', 'T', '2016-07-24 09:20:41', '1000.00', '1');
INSERT INTO `orders` VALUES ('132', 'F', '2016-07-24 09:40:05', '30.00', '1');
INSERT INTO `orders` VALUES ('133', 'F', '2016-07-24 09:40:13', '200.00', '1');
INSERT INTO `orders` VALUES ('134', 'F', '2016-07-24 09:40:33', '2.00', '1');
INSERT INTO `orders` VALUES ('135', 'F', '2016-07-24 09:40:53', '2.00', '1');
INSERT INTO `orders` VALUES ('136', 'F', '2016-07-24 09:48:20', '0.00', '1');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '服装');
INSERT INTO `type` VALUES ('2', '化妆品');
INSERT INTO `type` VALUES ('3', '食品');
INSERT INTO `type` VALUES ('4', '农产品');
INSERT INTO `type` VALUES ('5', '运动户外');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uphonenum` varchar(11) NOT NULL,
  `upwd` varchar(20) NOT NULL,
  `uprovince` varchar(100) DEFAULT NULL,
  `ucredit` int(11) NOT NULL DEFAULT '0',
  `umoney` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ucard` varchar(20) DEFAULT NULL,
  `uaddress` varchar(200) DEFAULT NULL,
  `usex` varchar(10) DEFAULT NULL,
  `ubirth` date DEFAULT NULL,
  `umonth` varchar(10) DEFAULT NULL,
  `uday` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15198032281', '123456', '成都', '0', '99999.00', '13333', '成都', '男', '1989-06-07', null, null);
INSERT INTO `user` VALUES ('2', '2', '2', '成都', '0', '99999.00', '1444', '成都', '男', '1993-06-19', null, null);
INSERT INTO `user` VALUES ('3', '13438103343', '111', '成都', '0', '99999.00', '1566', '成都', '女', '1995-03-09', null, null);
INSERT INTO `user` VALUES ('4', '15012341120', '111', '成都', '0', '99999.00', '1777', '成都', '女', '1999-03-04', null, null);
INSERT INTO `user` VALUES ('5', '13430800090', '111', '成都', '0', '99999.00', '1888', '成都', '男', '2001-07-06', null, null);
INSERT INTO `user` VALUES ('6', '13027890067', '111', '成都', '0', '99999.00', '1998', '成都', '女', '2000-03-09', null, null);
INSERT INTO `user` VALUES ('7', '13111111111', '123456', '四川', '0', '0.00', 'null', '成都', 'man', '2016-07-24', null, null);
