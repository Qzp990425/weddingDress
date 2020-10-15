/*
Navicat MySQL Data Transfer

Source Server         : Qzp
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : weddingdress

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2020-10-15 22:19:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL auto_increment,
  `username` varchar(40) default NULL,
  `tel` varchar(40) default NULL,
  `password` varchar(255) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123', 'admin', '0');
INSERT INTO `admin` VALUES ('2', 'employee1', '123', '123', '3');
INSERT INTO `admin` VALUES ('3', 'employee2', '1234', '123', '2');
INSERT INTO `admin` VALUES ('4', 'employee3', '12345', '123', '1');

-- ----------------------------
-- Table structure for `dress`
-- ----------------------------
DROP TABLE IF EXISTS `dress`;
CREATE TABLE `dress` (
  `did` int(11) NOT NULL auto_increment,
  `uuid` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `number` varchar(255) default NULL,
  `introduction` varchar(255) default NULL,
  `color` int(11) default NULL,
  `time` varchar(255) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dress
-- ----------------------------
INSERT INTO `dress` VALUES ('1', '8e841fd34c6e4fa6a0bab041da6313d4', '白色婚纱1号', '23', '这是婚纱1号', '0', '2020-09-20 10:22');
INSERT INTO `dress` VALUES ('2', 'deb32ca669da427e85e6a38a7711aa44', '婚纱2号', '17', '这是婚纱2号', '0', '2020-09-20 11:19');
INSERT INTO `dress` VALUES ('3', 'e14e01f31d31445db44048ac17d4c517', '白色婚纱3号', '0', '这是婚纱3号', '0', '2020-09-20 11:23');
INSERT INTO `dress` VALUES ('4', 'c34670183c5345cdbc565f29972e24ad', '白色婚纱4号', '28', '这是白色婚纱4号', '0', '2020-09-20 11:23');
INSERT INTO `dress` VALUES ('5', '812a8111cc154cc48a31e31f3cbd704b', '白色婚纱5号', '27', '这是白色婚纱5号', '0', '2020-09-20 11:24');
INSERT INTO `dress` VALUES ('6', 'ef101a75937f4d2e9de9f198132140c8', '黑色婚纱1号', '20', '这是黑色婚纱', '1', '2020-09-22 17:07');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL auto_increment,
  `aid` int(11) default NULL,
  `uid` int(11) default NULL,
  `content` varchar(1000) default NULL,
  `time` varchar(255) default NULL,
  PRIMARY KEY  (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '1', '1', '测试', '2020 11-09');
INSERT INTO `notice` VALUES ('3', '1', '1', '您可以来进行拍照了', '2020-09-22 17:00');
INSERT INTO `notice` VALUES ('4', '1', '2', '请你按照指定时间前来拍照', '2020-09-22 17:04');

-- ----------------------------
-- Table structure for `orderrecord`
-- ----------------------------
DROP TABLE IF EXISTS `orderrecord`;
CREATE TABLE `orderrecord` (
  `oid` int(11) NOT NULL auto_increment,
  `uid` int(11) default NULL,
  `aid` int(11) default NULL,
  `did` int(11) default NULL,
  `preTime` varchar(255) default NULL,
  `endTime` varchar(255) default NULL,
  `place` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `status` int(11) default NULL,
  `number` int(11) default NULL,
  PRIMARY KEY  (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderrecord
-- ----------------------------
INSERT INTO `orderrecord` VALUES ('1', '1', '1', '1', '2020-09-25', '2020-09-22', '地点1,地点2,地点3', '张师傅', '2', '3');
INSERT INTO `orderrecord` VALUES ('3', '1', '1', '3', '2020-09-18', null, '地点1,地点3', '张三', '1', '2');
INSERT INTO `orderrecord` VALUES ('4', '1', '1', '1', '2020-10-02', null, null, null, '1', '0');
INSERT INTO `orderrecord` VALUES ('5', '1', '2', '4', '2020-09-26', null, '地点2,地点3', '李四', '1', '2');
INSERT INTO `orderrecord` VALUES ('6', '1', '2', '4', '2020-09-24', null, null, null, '1', '0');
INSERT INTO `orderrecord` VALUES ('7', '1', null, '2', null, null, null, null, '0', '0');
INSERT INTO `orderrecord` VALUES ('8', '1', null, '2', null, null, '地点1,地点2,地点3,地点4', null, '0', '4');
INSERT INTO `orderrecord` VALUES ('9', '1', null, '2', null, null, null, null, '0', '0');
INSERT INTO `orderrecord` VALUES ('10', '2', null, '5', null, null, '地点2,地点3,地点4', null, '0', '3');
INSERT INTO `orderrecord` VALUES ('11', '2', null, '5', null, null, null, null, '0', '0');
INSERT INTO `orderrecord` VALUES ('12', '2', '1', '5', '2020-09-26', '2020-09-22', '地点1,地点2', '王五', '2', '2');

-- ----------------------------
-- Table structure for `place`
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `pid` int(11) NOT NULL auto_increment,
  `rid` int(11) default NULL,
  `picture` varchar(255) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('1', '1', '329c0dacf1c145759ae68e4133c2af6d');
INSERT INTO `place` VALUES ('3', '2', '02a0c88c8d264abc87d472b3f321bd29');
INSERT INTO `place` VALUES ('4', '1', '70fd8b08b20f413d9dbac6c9e87029d9');
INSERT INTO `place` VALUES ('5', '1', '89c05e24d5294b2fa469f348b7d1e0fd');

-- ----------------------------
-- Table structure for `region`
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `rid` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', '山西');
INSERT INTO `region` VALUES ('2', '海南');
INSERT INTO `region` VALUES ('3', '地点3');
INSERT INTO `region` VALUES ('4', '地点4');
INSERT INTO `region` VALUES ('5', '地点5');
INSERT INTO `region` VALUES ('7', '地点6');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(20) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '测试', '1234', '1234');
INSERT INTO `user` VALUES ('2', '123', '123', '123');
