/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zol

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-10-16 18:53:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_date` int(20) DEFAULT NULL,
  `u_time` int(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '超管', 'e10adc3949ba59abbe56e057f20f883e', '2345687@qq.com', '1499999999', '1504167831');
INSERT INTO `admin` VALUES ('2', '小明', 'e10adc3949ba59abbe56e057f20f883e', '2345687@qq.com', '1501223938', '1504164223');
INSERT INTO `admin` VALUES ('3', 'luoxin', 'e10adc3949ba59abbe56e057f20f883e', 'luoxin123@163.com', '1504168885', '1504168885');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '小米', 'xiaomi.jpg', '1');
INSERT INTO `brand` VALUES ('2', '苹果', 'apple.jpg', '1');
INSERT INTO `brand` VALUES ('3', '华为', 'huawei.jpg', '1');
INSERT INTO `brand` VALUES ('4', '魅族', 'meizu.jpg', '1');
INSERT INTO `brand` VALUES ('6', '惠普', null, '2');
INSERT INTO `brand` VALUES ('7', '华硕', null, '2');
INSERT INTO `brand` VALUES ('9', '苹果', 'apple.jpg', '2');
INSERT INTO `brand` VALUES ('10', '联想', 'lenovo.jpg', '2');
INSERT INTO `brand` VALUES ('11', '卡西欧', null, '3');
INSERT INTO `brand` VALUES ('12', '佳能', null, '3');
INSERT INTO `brand` VALUES ('13', '索尼', 'sony.jpg', '3');
INSERT INTO `brand` VALUES ('14', '尼康', null, '3');
INSERT INTO `brand` VALUES ('15', '配件', null, '4');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '手机');
INSERT INTO `class` VALUES ('2', '电脑');
INSERT INTO `class` VALUES ('3', '相机');
INSERT INTO `class` VALUES ('4', '配件');
INSERT INTO `class` VALUES ('5', '大米');

-- ----------------------------
-- Table structure for `color`
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `co_id` int(10) NOT NULL AUTO_INCREMENT,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES ('1', '银白色');
INSERT INTO `color` VALUES ('2', '土豪金');
INSERT INTO `color` VALUES ('3', '酒红色');
INSERT INTO `color` VALUES ('4', '深灰色');
INSERT INTO `color` VALUES ('5', '绅士黑');
INSERT INTO `color` VALUES ('6', '天蓝色');
INSERT INTO `color` VALUES ('7', '藏青色');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `group_img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_pay` int(10) DEFAULT NULL,
  `group_num` int(10) DEFAULT NULL,
  `time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `bid` int(10) DEFAULT NULL,
  `s_id` int(10) DEFAULT NULL,
  `ram_id` int(10) DEFAULT NULL,
  `wid` int(10) DEFAULT NULL,
  `rid` int(10) DEFAULT NULL,
  `co_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', 'sp1.jpg', '4899', '100', null, '2', '9', '8', '6', null, '3', '5');
INSERT INTO `group` VALUES ('2', 'sp2.jpg', '4899', '50', null, '2', '9', '8', '6', null, '3', '1');

-- ----------------------------
-- Table structure for `lunbo`
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo` (
  `l_id` int(20) NOT NULL AUTO_INCREMENT,
  `l_dz` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `l_tt` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES ('1', 'lunbo/t1.jpg', '1');
INSERT INTO `lunbo` VALUES ('2', 'lunbo/t2.jpg', '1');
INSERT INTO `lunbo` VALUES ('3', 'lunbo/t3.jpg', '1');
INSERT INTO `lunbo` VALUES ('4', 'lunbo/t7.jpg', '1');
INSERT INTO `lunbo` VALUES ('5', 'lunbo/t4.jpg', '2');
INSERT INTO `lunbo` VALUES ('6', 'lunbo/t5.jpg', '2');

-- ----------------------------
-- Table structure for `pricerange`
-- ----------------------------
DROP TABLE IF EXISTS `pricerange`;
CREATE TABLE `pricerange` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `range` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pricerange
-- ----------------------------
INSERT INTO `pricerange` VALUES ('1', '1000以下');
INSERT INTO `pricerange` VALUES ('2', '1000~3000');
INSERT INTO `pricerange` VALUES ('3', '3000~5000');
INSERT INTO `pricerange` VALUES ('4', '5000以上');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay` decimal(10,2) DEFAULT NULL,
  `sale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(10) NOT NULL DEFAULT '200',
  `cid` int(10) DEFAULT NULL,
  `bid` int(10) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `ram_id` int(10) DEFAULT NULL,
  `wid` int(10) NOT NULL DEFAULT '1',
  `rid` int(10) DEFAULT NULL,
  `co_id` int(10) DEFAULT NULL,
  `p_show` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'phone\\xiaomi\\xmsj1.jpg', '小米Note 4X', '888.88', '888.88', '10', '1', '1', '1', '2', '2', '1', '1', '1');
INSERT INTO `product` VALUES ('2', 'phone\\xiaomi\\xmsj2.jpg', '小米MIX2', '999.99', '999.99', '10', '1', '1', '1', '2', '4', '1', '2', '1');
INSERT INTO `product` VALUES ('3', 'phone\\xiaomi\\xmsj3.jpg', '小米MAX2', '1000.01', '1000.01', '10', '1', '1', '1', '2', '3', '2', '1', '1');
INSERT INTO `product` VALUES ('4', 'phone\\xiaomi\\xmsj4.jpg', '小米Note3', '1010.00', '1010.00', '10', '1', '1', '1', '2', '2', '2', '2', '1');
INSERT INTO `product` VALUES ('5', 'phone\\xiaomi\\xmsj5.jpg', '小米5', '1399.99', '1399.99', '10', '1', '1', '1', '2', '1', '2', '3', '1');
INSERT INTO `product` VALUES ('6', 'phone\\xiaomi\\xmsj6.jpg', '小米6', '2899.99', '2899.99', '10', '1', '1', '1', '2', '1', '2', '4', '1');
INSERT INTO `product` VALUES ('7', 'phone\\xiaomi\\xmsj7.jpg', '小米5X', '1499.99', '1499.99', '10', '1', '1', '1', '2', '1', '2', '5', '1');
INSERT INTO `product` VALUES ('8', 'phone\\xiaomi\\xmsj8.jpg', '小米MIX', '2900.00', '2900.00', '10', '1', '1', '1', '2', '1', '2', '6', '1');
INSERT INTO `product` VALUES ('9', 'phone\\xiaomi\\xmsj9.jpg', '小米4X', '888.00', '888.00', '10', '1', '1', '1', '2', '4', '1', '7', '1');
INSERT INTO `product` VALUES ('10', 'phone\\xiaomi\\xmsj10.jpg', '小米5C', '966.99', '966.99', '10', '1', '1', '1', '2', '3', '1', '1', '1');
INSERT INTO `product` VALUES ('11', 'phone\\xiaomi\\xmsj11.jpg', '小米红米3s', '799.99', '799.99', '10', '1', '1', '1', '2', '2', '1', '2', '1');
INSERT INTO `product` VALUES ('12', 'phone\\xiaomi\\xmsj12.jpg', '小米红米4s', '2666.99', '2666.99', '10', '1', '1', '1', '2', '1', '2', '3', '1');
INSERT INTO `product` VALUES ('13', 'phone\\xiaomi\\xmsj13.jpg', '小米红米5s', '2888.88', '2888.88', '10', '1', '1', '1', '2', '1', '2', '4', '1');
INSERT INTO `product` VALUES ('14', 'phone\\xiaomi\\xmsj14.jpg', '小米6s', '4666.99', '4666.99', '10', '1', '1', '2', '3', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('15', 'phone\\xiaomi\\xmsj15.jpg', '小米7', '5888.88', '5888.88', '10', '1', '1', '2', '3', '1', '4', '6', '1');
INSERT INTO `product` VALUES ('16', 'phone\\xiaomi\\xmsj16.jpg', '小米红米Note 5A', '3599.99', '3599.99', '10', '1', '1', '2', '3', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('17', 'phone\\xiaomi\\xmsj17.jpg', '小米Note4', '4500.00', '4500.00', '10', '1', '1', '2', '3', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('18', 'phone\\apple\\1.jpg', '苹果iPhone3GS', '666.66', '666.66', '10', '1', '2', '1', '1', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('19', 'phone\\apple\\2.jpg', '苹果iPhone4', '788.88', '788.88', '10', '1', '2', '1', '1', '3', '1', '3', '1');
INSERT INTO `product` VALUES ('20', 'phone\\apple\\3.jpg', '苹果iPhone4S', '988.99', '988.99', '10', '1', '2', '1', '2', '4', '1', '4', '1');
INSERT INTO `product` VALUES ('21', 'phone\\apple\\4.jpg', '苹果iPhone5', '1210.00', '1210.00', '10', '1', '2', '1', '2', '2', '2', '5', '1');
INSERT INTO `product` VALUES ('22', 'phone\\apple\\5.jpg', '苹果iPhone5C', '1399.99', '1399.99', '10', '1', '2', '1', '2', '1', '2', '6', '1');
INSERT INTO `product` VALUES ('23', 'phone\\apple\\6.jpg', '苹果iPhone5S', '1456.99', '1456.99', '10', '1', '2', '1', '2', '1', '2', '7', '1');
INSERT INTO `product` VALUES ('24', 'phone\\apple\\7.jpg', '苹果iPhone6', '2888.99', '2888.99', '10', '1', '2', '1', '2', '1', '2', '1', '1');
INSERT INTO `product` VALUES ('25', 'phone\\apple\\8.jpg', '苹果iPhone6S', '3160.00', '3159.99', '10', '1', '2', '2', '3', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('26', 'phone\\apple\\9.jpg', '苹果iPhone7', '3600.00', '3600.00', '10', '1', '2', '2', '3', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('27', 'phone\\apple\\10.jpg', '苹果iPhone X', '6299.99', '6299.99', '10', '1', '2', '3', '4', '1', '4', '4', '1');
INSERT INTO `product` VALUES ('28', 'phone\\apple\\11.jpg', '苹果iPhone8', '6688.00', '6688.00', '10', '1', '2', '3', '4', '1', '4', '5', '1');
INSERT INTO `product` VALUES ('29', 'phone\\apple\\12.jpg', '苹果iPhone N88', '3100.00', '3100.00', '10', '1', '2', '2', '3', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('30', 'phone\\apple\\13.jpg', '苹果iPhone7 Plus', '8100.00', '8100.00', '10', '1', '2', '3', '4', '1', '4', '7', '1');
INSERT INTO `product` VALUES ('31', 'phone\\apple\\14.jpg', '苹果iPhone SE', '2190.00', '2190.00', '10', '1', '2', '1', '2', '2', '2', '1', '1');
INSERT INTO `product` VALUES ('32', 'phone\\apple\\15.jpg', '苹果iPhone 6S Plus', '3610.00', '3610.00', '10', '1', '2', '2', '2', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('33', 'phone\\huawei\\1.jpg', '华为nova 2', '2499.99', '2499.99', '10', '1', '3', '1', '2', '1', '2', '3', '1');
INSERT INTO `product` VALUES ('34', 'phone\\huawei\\2.jpg', '华为P9', '2250.00', '2250.00', '10', '1', '3', '1', '2', '1', '2', '4', '1');
INSERT INTO `product` VALUES ('35', 'phone\\huawei\\3.jpg', '华为P10', '3488.88', '3488.88', '10', '1', '3', '2', '2', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('36', 'phone\\huawei\\4.jpg', '华为Mate 9', '3099.99', '3099.99', '10', '1', '3', '2', '2', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('37', 'phone\\huawei\\5.jpg', '华为Mate 10', '5000.00', '5000.00', '10', '1', '3', '3', '3', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('38', 'phone\\huawei\\6.jpg', '华为Mate P10 Plus', '3988.88', '3988.88', '10', '1', '3', '2', '2', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('39', 'phone\\huawei\\7.jpg', '华为畅享7 Plus', '1499.99', '1499.99', '10', '1', '3', '1', '2', '1', '2', '2', '1');
INSERT INTO `product` VALUES ('40', 'phone\\huawei\\8.jpg', '华为麦芒6 Plus', '2399.99', '2399.99', '10', '1', '3', '1', '2', '1', '2', '3', '1');
INSERT INTO `product` VALUES ('41', 'phone\\huawei\\9.jpg', '华为畅享5S', '860.00', '860.00', '10', '1', '3', '1', '1', '4', '1', '4', '1');
INSERT INTO `product` VALUES ('42', 'phone\\huawei\\10.jpg', '华为Y6', '4888.00', '4888.00', '10', '1', '3', '2', '3', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('43', 'phone\\huawei\\11.jpg', '华为G9', '1599.99', '1599.99', '10', '1', '3', '1', '2', '1', '2', '6', '1');
INSERT INTO `product` VALUES ('44', 'phone\\huawei\\12.jpg', '华为Ascend', '950.00', '950.00', '10', '1', '3', '1', '1', '3', '1', '7', '1');
INSERT INTO `product` VALUES ('45', 'phone\\meizu\\1.jpg', '魅族魅蓝Note 5', '899.99', '899.99', '10', '1', '4', '1', '1', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('46', 'phone\\meizu\\2.jpg', '魅族魅蓝E2', '1299.99', '1299.99', '10', '1', '4', '1', '2', '1', '2', '2', '1');
INSERT INTO `product` VALUES ('47', 'phone\\meizu\\3.jpg', '魅族PRO7', '2880.00', '2880.00', '10', '1', '4', '1', '2', '1', '2', '3', '1');
INSERT INTO `product` VALUES ('48', 'phone\\meizu\\4.jpg', '魅族MX6', '1799.99', '1799.99', '10', '1', '4', '1', '2', '1', '2', '4', '1');
INSERT INTO `product` VALUES ('49', 'phone\\meizu\\5.jpg', '魅族魅蓝Note 6', '1010.00', '1010.00', '10', '1', '4', '1', '1', '1', '2', '5', '1');
INSERT INTO `product` VALUES ('50', 'phone\\meizu\\6.jpg', '魅族魅蓝Note 7', '1499.99', '1499.99', '10', '1', '4', '1', '2', '1', '2', '6', '1');
INSERT INTO `product` VALUES ('51', 'phone\\meizu\\7.jpg', '魅族魅蓝E', '988.00', '988.00', '10', '1', '4', '1', '1', '2', '1', '7', '1');
INSERT INTO `product` VALUES ('52', 'phone\\meizu\\8.jpg', '魅族魅蓝PRO6 Plus', '2399.99', '2399.99', '10', '1', '4', '1', '2', '1', '2', '1', '1');
INSERT INTO `product` VALUES ('53', 'phone\\meizu\\9.jpg', '魅族魅蓝PRO6 ', '1888.88', '1888.88', '10', '1', '4', '1', '2', '1', '2', '2', '1');
INSERT INTO `product` VALUES ('54', 'phone\\meizu\\10.jpg', '魅族魅蓝PRO5', '1266.00', '1266.00', '10', '1', '4', '1', '2', '1', '2', '3', '1');
INSERT INTO `product` VALUES ('55', 'phone\\meizu\\11.jpg', '魅族魅蓝MX5S', '1398.88', '1398.88', '10', '1', '4', '1', '2', '1', '2', '4', '1');
INSERT INTO `product` VALUES ('56', 'phone\\meizu\\12.jpg', '魅族魅蓝MX5', '998.00', '998.00', '10', '1', '4', '1', '1', '2', '1', '5', '1');
INSERT INTO `product` VALUES ('57', 'phone\\meizu\\13.jpg', '魅族魅蓝5', '768.00', '768.00', '10', '1', '4', '1', '1', '4', '1', '6', '1');
INSERT INTO `product` VALUES ('58', 'phone\\meizu\\14.jpg', '魅族魅蓝5S', '888.00', '888.00', '10', '1', '4', '1', '1', '3', '1', '7', '1');
INSERT INTO `product` VALUES ('59', 'phone\\meizu\\15.jpg', '魅族魅蓝Max', '666.66', '666.66', '10', '1', '4', '1', '1', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('60', 'phone\\meizu\\16.jpg', '魅族魅蓝U20', '1099.99', '1099.99', '10', '1', '4', '1', '1', '1', '2', '2', '1');
INSERT INTO `product` VALUES ('61', 'computer\\apple\\1.jpg', null, null, null, '10', '2', '9', '5', '4', '1', '4', '3', '1');
INSERT INTO `product` VALUES ('62', 'computer\\apple\\2.jpg', null, null, null, '10', '2', '9', '6', '4', '1', '4', '4', '1');
INSERT INTO `product` VALUES ('63', 'computer\\apple\\3.jpg', null, null, null, '10', '2', '9', '7', '4', '1', '4', '5', '1');
INSERT INTO `product` VALUES ('64', 'computer\\apple\\4.jpg', null, null, null, '10', '2', '9', '8', '4', '1', '4', '6', '1');
INSERT INTO `product` VALUES ('65', 'computer\\apple\\5.jpg', null, null, null, '10', '2', '9', '9', '4', '1', '4', '7', '1');
INSERT INTO `product` VALUES ('66', 'computer\\apple\\6.jpg', null, null, null, '10', '2', '9', '10', '4', '1', '4', '1', '1');
INSERT INTO `product` VALUES ('67', 'computer\\apple\\7.jpg', null, null, null, '10', '2', '9', '11', '4', '1', '4', '2', '1');
INSERT INTO `product` VALUES ('68', 'computer\\apple\\8.jpg', null, null, null, '10', '2', '9', '5', '4', '1', '4', '3', '1');
INSERT INTO `product` VALUES ('69', 'computer\\apple\\9.jpg', null, null, null, '10', '2', '9', '6', '4', '1', '4', '4', '1');
INSERT INTO `product` VALUES ('70', 'computer\\apple\\10.jpg', null, null, null, '10', '2', '9', '7', '4', '1', '4', '5', '1');
INSERT INTO `product` VALUES ('71', 'computer\\apple\\11.jpg', null, null, null, '10', '2', '9', '8', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('72', 'computer\\apple\\12.jpg', null, null, null, '10', '2', '9', '9', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('73', 'computer\\apple\\13.jpg', null, null, null, '10', '2', '9', '10', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('74', 'computer\\apple\\14.jpg', null, null, null, '10', '2', '9', '11', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('75', 'computer\\apple\\15.jpg', null, null, null, '10', '2', '9', '5', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('76', 'computer\\Asus\\1.jpg', null, null, null, '10', '2', null, '6', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('77', 'computer\\Asus\\2.jpg', null, null, null, '10', '2', null, '7', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('78', 'computer\\Asus\\3.jpg', null, null, null, '10', '2', null, '8', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('79', 'computer\\Asus\\4.jpg', null, null, null, '10', '2', null, '9', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('80', 'computer\\Asus\\5.jpg', null, null, null, '10', '2', null, '10', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('81', 'computer\\Asus\\6.jpg', null, null, null, '10', '2', null, '11', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('82', 'computer\\Asus\\7.jpg', null, null, null, '10', '2', null, '5', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('83', 'computer\\Asus\\8.jpg', null, null, null, '10', '2', null, '6', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('84', 'computer\\Asus\\9.jpg', null, null, null, '10', '2', null, '7', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('85', 'computer\\Asus\\10.jpg', null, null, null, '10', '2', null, '8', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('86', 'computer\\Asus\\11.jpg', null, null, null, '10', '2', null, '9', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('87', 'computer\\hp\\12.jpg', null, null, null, '10', '2', null, '10', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('88', 'computer\\hp\\13.jpg', null, null, null, '10', '2', null, '11', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('89', 'computer\\hp\\4.jpg', null, null, null, '10', '2', null, '5', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('90', 'computer\\hp\\5.jpg', null, null, null, '10', '2', null, '6', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('91', 'computer\\hp\\11.jpg', null, null, null, '10', '2', null, '7', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('92', 'computer\\hp\\10.jpg', null, null, null, '10', '2', null, '8', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('93', 'computer\\hp\\1.jpg', null, null, null, '10', '2', null, '9', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('94', 'computer\\hp\\2.jpg', null, null, null, '10', '2', null, '10', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('95', 'computer\\hp\\3.jpg', null, null, null, '10', '2', null, '11', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('96', 'computer\\hp\\6.jpg', null, null, null, '10', '2', null, '5', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('97', 'computer\\hp\\7.jpg', null, null, null, '10', '2', null, '6', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('98', 'computer\\hp\\8.jpg', null, null, null, '10', '2', null, '7', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('99', 'computer\\hp\\9.jpg', null, null, null, '10', '2', null, '8', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('100', 'computer\\lenovo\\1.jpg', null, null, null, '10', '2', null, '9', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('101', 'computer\\lenovo\\2.jpg', null, null, null, '10', '2', null, '10', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('102', 'computer\\lenovo\\3.jpg', null, null, null, '10', '2', null, '11', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('103', 'computer\\lenovo\\4.jpg', null, null, null, '10', '2', null, '5', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('104', 'computer\\lenovo\\5.jpg', null, null, null, '10', '2', null, '6', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('105', 'computer\\lenovo\\6.jpg', null, null, null, '10', '2', null, '7', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('106', 'computer\\lenovo\\7.jpg', null, null, null, '10', '2', null, '8', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('107', 'computer\\lenovo\\8.jpg', null, null, null, '10', '2', null, '9', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('108', 'computer\\lenovo\\9.jpg', null, null, null, '10', '2', null, '10', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('109', 'computer\\lenovo\\10.jpg', null, null, null, '10', '2', null, '11', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('110', 'computer\\lenovo\\11.jpg', null, null, null, '10', '2', null, '5', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('111', 'computer\\lenovo\\12.jpg', null, null, null, '10', '2', null, '6', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('112', 'dv\\jianeng\\3.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('113', 'dv\\jianeng\\4.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('114', 'dv\\jianeng\\5.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('115', 'dv\\jianeng\\1.jpg', null, null, null, '10', '3', null, '4', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('116', 'dv\\jianeng\\2.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('117', 'dv\\jianeng\\6.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('118', 'dv\\jianeng\\7.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('119', 'dv\\jianeng\\8.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('120', 'dv\\jianeng\\9.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('121', 'dv\\jianeng\\10.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('122', 'dv\\jianeng\\11.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('123', 'dv\\jianeng\\14.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('124', 'dv\\jianeng\\15.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('125', 'dv\\jianeng\\16.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('126', 'dv\\jianeng\\12.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('127', 'dv\\jianeng\\13.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('128', 'dv\\jianeng\\17.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('129', 'dv\\jianeng\\18.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('130', 'dv\\sony\\1.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('131', 'dv\\sony\\2.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('132', 'dv\\sony\\3.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('133', 'dv\\sony\\4.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('134', 'dv\\sony\\5.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('135', 'dv\\sony\\6.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('136', 'dv\\sony\\7.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('137', 'dv\\sony\\8.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('138', 'dv\\sony\\9.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('139', 'dv\\sony\\10.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('140', 'dv\\sony\\11.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('141', 'dv\\sony\\12.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('142', 'dv\\sony\\13.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('143', 'dv\\sony\\14.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('144', 'dv\\sony\\15.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('145', 'dv\\sony\\16.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('146', 'dv\\sony\\17.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('147', 'dv\\sony\\18.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('148', 'dv\\sony\\19.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('149', 'dv\\sony\\20.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('150', 'dv\\sony\\21.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('151', 'dv\\sony\\22.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('152', 'dv\\sony\\23.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('153', 'dv\\sony\\24.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('154', 'dv\\sony\\25.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('155', 'dv\\sony\\26.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('156', 'dv\\nikon\\1.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('157', 'dv\\nikon\\2.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('158', 'dv\\nikon\\3.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('159', 'dv\\nikon\\4.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('160', 'dv\\nikon\\5.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('161', 'dv\\nikon\\6.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('162', 'dv\\nikon\\7.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('163', 'dv\\nikon\\8.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('164', 'dv\\nikon\\9.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('165', 'dv\\nikon\\10.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('166', 'dv\\nikon\\11.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('167', 'dv\\nikon\\12.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('168', 'dv\\nikon\\13.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('169', 'dv\\nikon\\14.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('170', 'dv\\nikon\\15.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('171', 'dv\\nikon\\16.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('172', 'dv\\nikon\\17.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('173', 'dv\\nikon\\18.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('174', 'dv\\nikon\\19.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('175', 'dv\\nikon\\20.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('176', 'dv\\nikon\\21.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('177', 'dv\\cosio\\1.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('178', 'dv\\cosio\\2.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('179', 'dv\\cosio\\3.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('180', 'dv\\cosio\\4.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('181', 'dv\\cosio\\5.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('182', 'dv\\cosio\\6.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('183', 'dv\\cosio\\7.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('184', 'dv\\cosio\\8.jpg', null, null, null, '10', '3', null, '2', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('185', 'dv\\cosio\\9.jpg', null, null, null, '10', '3', null, '1', '4', '1', '3', '1', '1');
INSERT INTO `product` VALUES ('186', 'dv\\cosio\\10.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '2', '1');
INSERT INTO `product` VALUES ('187', 'dv\\cosio\\11.jpg', null, null, null, '10', '3', null, '3', '4', '1', '3', '3', '1');
INSERT INTO `product` VALUES ('188', 'dv\\cosio\\12.jpg', null, null, null, '10', '3', '11', '2', '4', '1', '3', '4', '1');
INSERT INTO `product` VALUES ('189', 'dv\\cosio\\13.jpg', null, null, null, '10', '3', '11', '1', '4', '1', '3', '5', '1');
INSERT INTO `product` VALUES ('190', 'dv\\cosio\\14.jpg', null, null, null, '10', '3', '11', '2', '4', '1', '3', '6', '1');
INSERT INTO `product` VALUES ('191', 'dv\\cosio\\15.jpg', null, null, null, '10', '3', '11', '3', '4', '1', '3', '7', '1');
INSERT INTO `product` VALUES ('192', 'peijian\\1.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('193', 'peijian\\3.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('194', 'peijian\\2.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('195', 'peijian\\4.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('196', 'peijian\\5.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('197', 'peijian\\6.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('198', 'peijian\\7.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('199', 'peijian\\8.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('200', 'peijian\\9.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('201', 'peijian\\10.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('202', 'peijian\\11.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('203', 'peijian\\12.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('204', 'peijian\\13.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('205', 'peijian\\14.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('206', 'peijian\\15.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('207', 'peijian\\16.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('208', 'peijian\\17.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('209', 'peijian\\18.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('210', 'peijian\\19.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('211', 'peijian\\21.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('212', 'peijian\\20.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('213', 'peijian\\22.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('214', 'peijian\\23.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('215', 'peijian\\24.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('216', 'peijian\\25.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('217', 'peijian\\26.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('218', 'peijian\\27.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('219', 'peijian\\28.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('220', 'peijian\\29.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('221', 'peijian\\30.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('222', 'peijian\\31.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('223', 'peijian\\32.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('224', 'peijian\\33.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('225', 'peijian\\34.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('226', 'peijian\\35.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('227', 'peijian\\36.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('228', 'peijian\\37.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('229', 'peijian\\38.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('230', 'peijian\\39.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('231', 'peijian\\40.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('232', 'peijian\\41.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('233', 'peijian\\42.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('234', 'peijian\\43.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('235', 'peijian\\44.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('236', 'peijian\\45.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('237', 'peijian\\46.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('238', 'peijian\\47.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('239', 'peijian\\48.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('240', 'peijian\\49.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('241', 'peijian\\50.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('242', 'peijian\\51.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('243', 'peijian\\52.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('244', 'peijian\\53.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('245', 'peijian\\54.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('246', 'peijian\\55.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('247', 'peijian\\56.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('248', 'peijian\\57.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('249', 'peijian\\58.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('250', 'peijian\\59.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('251', 'peijian\\60.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('252', 'peijian\\61.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('253', 'peijian\\62.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('254', 'peijian\\63.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('255', 'peijian\\64.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('256', 'peijian\\65.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('257', 'peijian\\66.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('258', 'peijian\\67.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('259', 'peijian\\68.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('260', 'peijian\\69.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('261', 'peijian\\70.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('262', 'peijian\\71.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('263', 'peijian\\72.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('264', 'peijian\\73.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('265', 'peijian\\74.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('266', 'peijian\\75.jpg', null, null, null, '10', '4', '15', '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('267', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('268', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('269', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('270', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('271', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('272', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('273', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('274', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('275', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('276', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('277', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('278', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('279', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('280', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('281', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('282', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('283', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('284', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('285', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('286', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('287', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('288', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('289', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('290', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('291', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('292', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('293', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('294', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('295', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '5', '1');
INSERT INTO `product` VALUES ('296', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '6', '1');
INSERT INTO `product` VALUES ('297', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '7', '1');
INSERT INTO `product` VALUES ('298', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '1', '1');
INSERT INTO `product` VALUES ('299', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '2', '1');
INSERT INTO `product` VALUES ('300', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '3', '1');
INSERT INTO `product` VALUES ('301', null, null, null, null, '10', '1', null, '11', '4', '1', '1', '4', '1');
INSERT INTO `product` VALUES ('302', 'secondarytile.png', '啥电话撒', '654645.00', '85465', '200', '4', '15', null, null, '1', null, null, '1');

-- ----------------------------
-- Table structure for `ram`
-- ----------------------------
DROP TABLE IF EXISTS `ram`;
CREATE TABLE `ram` (
  `ram_id` int(10) NOT NULL AUTO_INCREMENT,
  `ram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ram_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ram
-- ----------------------------
INSERT INTO `ram` VALUES ('1', '16GB');
INSERT INTO `ram` VALUES ('2', '32GB');
INSERT INTO `ram` VALUES ('3', '64GB');
INSERT INTO `ram` VALUES ('4', '128GB');
INSERT INTO `ram` VALUES ('5', '256GB');
INSERT INTO `ram` VALUES ('6', '512GB');
INSERT INTO `ram` VALUES ('7', '1024GB');

-- ----------------------------
-- Table structure for `size`
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `size` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES ('1', '4英寸');
INSERT INTO `size` VALUES ('2', '5英寸');
INSERT INTO `size` VALUES ('3', '5.5英寸');
INSERT INTO `size` VALUES ('4', '7英寸');
INSERT INTO `size` VALUES ('5', '12英寸');
INSERT INTO `size` VALUES ('6', '14英寸');
INSERT INTO `size` VALUES ('7', '15英寸');
INSERT INTO `size` VALUES ('8', '16英寸');
INSERT INTO `size` VALUES ('9', '17英寸');
INSERT INTO `size` VALUES ('10', '18英寸');
INSERT INTO `size` VALUES ('11', '19英寸');

-- ----------------------------
-- Table structure for `wap_type`
-- ----------------------------
DROP TABLE IF EXISTS `wap_type`;
CREATE TABLE `wap_type` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '全网通',
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wap_type
-- ----------------------------
INSERT INTO `wap_type` VALUES ('1', '全网通');
INSERT INTO `wap_type` VALUES ('2', '移动4G');
INSERT INTO `wap_type` VALUES ('3', '联通4G');
INSERT INTO `wap_type` VALUES ('4', '电信4G');
