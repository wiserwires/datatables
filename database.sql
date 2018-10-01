/*
Navicat MySQL Data Transfer
 
Source Server         : wiserwires_server_do
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : voip
 
Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001
 
Date: 2018-10-01 06:58:14
*/
 
SET FOREIGN_KEY_CHECKS=0;
 
-- ----------------------------
-- Table structure for `call_logs`
-- ----------------------------
DROP TABLE IF EXISTS `call_logs`;
CREATE TABLE `call_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_of_call` datetime DEFAULT NULL,
  `support_type` varchar(50) DEFAULT NULL,
  `call_from` varchar(50) DEFAULT NULL,
  `tech_nickname` varchar(120) DEFAULT NULL,
  `call_to` varchar(50) DEFAULT NULL,
  `call_recording` varchar(255) DEFAULT NULL,
  `call_duration` smallint(5) unsigned DEFAULT NULL,
  `call_type` varchar(50) DEFAULT NULL,
  `address_street` varchar(255) DEFAULT NULL,
  `address_city` varchar(255) DEFAULT NULL,
  `address_zip` varchar(255) DEFAULT NULL,
  `address_state` varchar(255) DEFAULT NULL,
  `address_country` varchar(255) DEFAULT NULL,
  `tech_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_record` (`call_recording`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
 
-- ----------------------------
-- Records of call_logs
-- ----------------------------
INSERT INTO `call_logs` VALUES ('1', '2018-09-27 11:18:37', null, '+33644600288', null, '+33644640990', 'https://api.twilio.com/2010-04-01/Accounts/ACb56a88ab01229e51876d4b2e967ed2c8/Recordings/RE419c35fe2fdbf74b1f8d43c305707709.wav', '21', '1', null, null, null, null, null, null);
INSERT INTO `call_logs` VALUES ('4', '2018-09-28 13:42:50', null, '+380660030600', null, '+33644640990', 'https://api.twilio.com/2010-04-01/Accounts/ACb56a88ab01229e51876d4b2e967ed2c8/Recordings/REb24d376e89194879ecbb6483ed6026cb.wav', '5', '2', null, null, null, null, null, null);
INSERT INTO `call_logs` VALUES ('5', '2018-09-29 08:12:40', null, '+33644600288', null, '+33644640990', '.wav', '0', '1', null, null, null, null, null, null);
INSERT INTO `call_logs` VALUES ('6', '2018-09-29 08:14:00', null, '+33644600288', null, '+33644640990', 'https://api.twilio.com/2010-04-01/Accounts/ACb56a88ab01229e51876d4b2e967ed2c8/Recordings/RE5156ff2343f6f5699eacf32a5b76d44c.wav', '10', '2', null, null, null, null, null, null);
 
-- ----------------------------
-- Table structure for `depanneurs`
-- ----------------------------
DROP TABLE IF EXISTS `depanneurs`;
CREATE TABLE `depanneurs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tech_name` varchar(120) DEFAULT NULL,
  `tech_surname` varchar(120) DEFAULT NULL,
  `tech_mobile_number` varchar(120) DEFAULT NULL,
  `tech_nickname` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tech_mobile_number` (`tech_mobile_number`),
  UNIQUE KEY `tech_nickname` (`tech_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
 
-- ----------------------------
-- Records of depanneurs
-- ----------------------------
INSERT INTO `depanneurs` VALUES ('1', 'one', 'two', '+33632323232', 'first');
INSERT INTO `depanneurs` VALUES ('2', 'three', 'four', '+33632323233', 'second');
INSERT INTO `depanneurs` VALUES ('3', 'four', 'five', '+33632323234', 'third');
 
-- ----------------------------
-- Table structure for `support_type`
-- ----------------------------
DROP TABLE IF EXISTS `support_type`;
CREATE TABLE `support_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `support_type` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
 
-- ----------------------------
-- Records of support_type
-- ----------------------------
INSERT INTO `support_type` VALUES ('1', 'Serrurerie');
INSERT INTO `support_type` VALUES ('2', 'Plomberie');
INSERT INTO `support_type` VALUES ('3', 'Chauffage');
INSERT INTO `support_type` VALUES ('4', 'Vitrerie');
INSERT INTO `support_type` VALUES ('5', 'Electricite');
INSERT INTO `support_type` VALUES ('6', 'Debouchage');
INSERT INTO `support_type` VALUES ('7', 'Climatisation');
 
-- ----------------------------
-- Table structure for `voip`
-- ----------------------------
DROP TABLE IF EXISTS `voip`;
CREATE TABLE `voip` (
  `voip_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(20) DEFAULT NULL,
  `provider_id` int(10) unsigned DEFAULT NULL,
  `phone_number` varchar(70) DEFAULT NULL,
  `int_phone` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`voip_id`),
  UNIQUE KEY `number` (`number`),
  KEY `account_id` (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;
 
-- ----------------------------
-- Records of voip
-- ----------------------------
INSERT INTO `voip` VALUES ('2', '09 70 73 38 50', '1', '33970733850', '+33970733850');
INSERT INTO `voip` VALUES ('3', '09 70 73 38 53', '1', '33970733853', '+33970733853');
INSERT INTO `voip` VALUES ('4', '09 70 73 38 54', '1', '33970733854', '+33970733854');
INSERT INTO `voip` VALUES ('5', '09 70 73 38 55', '1', '33970733855', '+33970733855');
INSERT INTO `voip` VALUES ('6', '09 70 73 38 56', '1', '33970733856', '+33970733856');
INSERT INTO `voip` VALUES ('7', '09 70 73 38 57', '1', '33970733857', '+33970733857');
INSERT INTO `voip` VALUES ('10', '09 70 73 38 60', '1', '33970733860', '+33970733860');
INSERT INTO `voip` VALUES ('11', '09 70 73 38 61', '1', '33970733861', '+33970733861');
INSERT INTO `voip` VALUES ('12', '09 70 73 38 63', '1', '33970733863', '+33970733863');
INSERT INTO `voip` VALUES ('13', '09 70 73 38 64', '1', '33970733864', '+33970733864');
INSERT INTO `voip` VALUES ('14', '09 70 73 38 66', '1', '33970733866', '+33970733866');
INSERT INTO `voip` VALUES ('15', '09 70 73 38 67', '1', '33970733867', '+33970733867');
INSERT INTO `voip` VALUES ('16', '09 70 73 38 68', '1', '33970733868', '+33970733868');
INSERT INTO `voip` VALUES ('17', '09 70 73 38 70', '1', '33970733870', '+33970733870');
INSERT INTO `voip` VALUES ('18', '09 70 73 38 72', '1', '33970733872', '+33970733872');
INSERT INTO `voip` VALUES ('19', '09 70 73 38 74', '1', '33970733874', '+33970733874');
INSERT INTO `voip` VALUES ('20', '09 70 73 38 79', '1', '33970733879', '+33970733879');
INSERT INTO `voip` VALUES ('22', '09 70 73 38 82', '1', '33970733882', '+33970733882');
INSERT INTO `voip` VALUES ('23', '09 70 73 38 83', '1', '33970733883', '+33970733883');
INSERT INTO `voip` VALUES ('24', '09 70 73 38 85', '1', '33970733885', '+33970733885');
INSERT INTO `voip` VALUES ('25', '09 70 73 38 89', '1', '33970733889', '+33970733889');
INSERT INTO `voip` VALUES ('27', '09 70 73 38 94', '1', '33970733894', '+33970733894');
INSERT INTO `voip` VALUES ('28', '09 70 73 38 99', '1', '33970733899', '+33970733899');
INSERT INTO `voip` VALUES ('30', '09 70 73 39 02', '1', '33970733902', '+33970733902');
INSERT INTO `voip` VALUES ('31', '09 70 73 39 04', '1', '33970733904', '+33970733904');
INSERT INTO `voip` VALUES ('32', '09 70 73 39 15', '1', '33970733915', '+33970733915');
INSERT INTO `voip` VALUES ('33', '09 75 18 29 70', '1', '33975182970', '+33975182970');
INSERT INTO `voip` VALUES ('34', '09 70 73 44 18', '1', '33970734418', '+33970734418');
INSERT INTO `voip` VALUES ('35', '09 70 73 44 19', '1', '33970734419', '+33970734419');
INSERT INTO `voip` VALUES ('36', '09 70 73 44 16', '1', '33970734416', '+33970734416');
INSERT INTO `voip` VALUES ('37', '09 75 18 84 24', '1', '33975188424', '+33975188424');
INSERT INTO `voip` VALUES ('38', '09 75 18 98 75', '1', '33975189875', '+33975189875');
INSERT INTO `voip` VALUES ('39', '09 77 55 00 91', '1', '33977550091', '+33977550091');
INSERT INTO `voip` VALUES ('40', '09 75 18 84 20', '1', '33975188420', '+33975188420');
INSERT INTO `voip` VALUES ('41', '09 77 55 23 23', '1', '33977552323', '+33977552323');
INSERT INTO `voip` VALUES ('42', '09 77 55 23 21', '1', '33977552321', '+33977552321');
INSERT INTO `voip` VALUES ('43', '09 77 55 23 27', '1', '33977552327', '+33977552327');
INSERT INTO `voip` VALUES ('44', '09 77 55 22 99', '1', '33977552299', '+33977552299');
INSERT INTO `voip` VALUES ('45', '09 77 55 09 23', '1', '33977550923', '+33977550923');
INSERT INTO `voip` VALUES ('46', '09 70 73 11 82', '1', '33970731182', '+33970731182');
INSERT INTO `voip` VALUES ('47', '09 70 73 44 20', '1', '33970734420', '+33970734420');
INSERT INTO `voip` VALUES ('48', '09 70 73 12 58', '1', '33970731258', '+33970731258');
INSERT INTO `voip` VALUES ('49', '09 77 55 04 87', '1', '33977550487', '+33977550487');
INSERT INTO `voip` VALUES ('51', '09 70 73 14 74', '1', '33970731474', '+33970731474');
INSERT INTO `voip` VALUES ('52', '09 75 18 09 69', '1', '33975180969', '+33975180969');
INSERT INTO `voip` VALUES ('53', '09 75 18 29 72', '1', '33975182972', '+33975182972');
INSERT INTO `voip` VALUES ('54', '09 77 55 03 11', '1', '33977550311', '+33977550311');
INSERT INTO `voip` VALUES ('55', '09 70 73 51 35', '1', '33970735135', '+33970735135');
INSERT INTO `voip` VALUES ('56', '09 70 73 99 32', '1', '33970739932', '+33970739932');
INSERT INTO `voip` VALUES ('57', '09 75 18 84 69', '1', '33975188469', '+33975188469');
INSERT INTO `voip` VALUES ('58', '09 77 55 04 59', '1', '33977550459', '+33977550459');
INSERT INTO `voip` VALUES ('59', '09 77 55 00 47', '1', '33977550047', '+33977550047');
INSERT INTO `voip` VALUES ('60', '09 75 18 84 72', '1', '33975188472', '+33975188472');
INSERT INTO `voip` VALUES ('61', '09 75 18 05 12', '1', '33975180512', '+33975180512');
INSERT INTO `voip` VALUES ('62', '09 70 73 79 59', '1', '33970737959', '+33970737959');
INSERT INTO `voip` VALUES ('63', '09 75 18 04 58', '1', '33975180458', '+33975180458');
INSERT INTO `voip` VALUES ('64', '09 70 73 12 05', '1', '33970731205', '+33970731205');
INSERT INTO `voip` VALUES ('65', '09 75 18 79 33', '1', '33975187933', '+33975187933');
INSERT INTO `voip` VALUES ('66', '09 70 73 79 17', '1', '33970737917', '+33970737917');
INSERT INTO `voip` VALUES ('68', '09 77 55 14 32', '1', '33977551432', '+33977551432');
INSERT INTO `voip` VALUES ('69', '09 75 18 18 90', '1', '33975181890', '+33975181890');
INSERT INTO `voip` VALUES ('70', '09 77 55 23 09', '1', '33977552309', '+33977552309');
INSERT INTO `voip` VALUES ('283', '01 86 65 00 29', '1', '33186650029', '+33186650029');
INSERT INTO `voip` VALUES ('284', '01 86 65 00 38', '1', '33186650038', '+33186650038');
INSERT INTO `voip` VALUES ('285', '01 86 65 01 03', '1', '33186650103', '+33186650103');
INSERT INTO `voip` VALUES ('294', '01 86 65 39 47', '1', '33186653947', '+33186653947');
INSERT INTO `voip` VALUES ('295', '06 44 64 31 33', '2', '33644643133', '+33644643133');
INSERT INTO `voip` VALUES ('296', '06 44 60 28 94', '2', '33644602894', '+33644602894');
INSERT INTO `voip` VALUES ('297', '06 44 60 70 89', '2', '33644607089', '+33644607089');
INSERT INTO `voip` VALUES ('298', '06 44 64 30 44', '2', '33644643044', '+33644643044');
INSERT INTO `voip` VALUES ('299', '06 44 64 42 81', '2', '33644644281', '+33644644281');
INSERT INTO `voip` VALUES ('300', '06 44 60 19 93', '2', '33644601993', '+33644601993');
INSERT INTO `voip` VALUES ('301', '01 86 76 70 99', '2', '33186767099', '+33186767099');
INSERT INTO `voip` VALUES ('302', '06 44 64 46 72', '2', '33644644672', '+33644644672');
INSERT INTO `voip` VALUES ('303', '06 44 60 61 20', '2', '33644606120', '+33644606120');
INSERT INTO `voip` VALUES ('307', '06 44 64 88 02', '2', '33644648802', '+33644648802');
INSERT INTO `voip` VALUES ('309', '01 86 76 69 41', '2', '33186766941', '+33186766941');
INSERT INTO `voip` VALUES ('310', '06 44 60 35 22', '2', '33644603522', '+33644603522');
INSERT INTO `voip` VALUES ('311', '06 44 60 41 83', '2', '33644604183', '+33644604183');
INSERT INTO `voip` VALUES ('312', '06 44 64 09 90', '4', '33644640990', '+33644640990');