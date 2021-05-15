/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50562
Source Host           : 127.0.0.1:3306
Source Database       : lscs

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-12-19 15:14:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `health` varchar(20) DEFAULT NULL,
  `heathlimit` varchar(20) DEFAULT NULL,
  `skillType` varchar(20) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('1', '吉安娜·普罗德摩尔（法师）', '30', '30', '火焰冲击：造成一点伤害', null);
INSERT INTO `hero` VALUES ('2', '古尔丹（术士）', '30', '30', '生命分流：抽一张牌并自身受到两点伤害', null);
INSERT INTO `hero` VALUES ('3', '安度因·乌瑞恩（牧师）', '30', '30', '次级治疗术：恢复两点生命值', null);
INSERT INTO `hero` VALUES ('4', '雷克萨（猎人）', '30', '30', '稳固射击：对敌方英雄造成两点伤害', null);

-- ----------------------------
-- Table structure for magic
-- ----------------------------
DROP TABLE IF EXISTS `magic`;
CREATE TABLE `magic` (
  `id` varchar(66) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `skillType1` varchar(255) DEFAULT NULL,
  `skillType2` varchar(255) DEFAULT NULL,
  `num1` varchar(255) DEFAULT NULL,
  `num2` varchar(255) DEFAULT NULL,
  `pertinence` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `belong` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of magic
-- ----------------------------
INSERT INTO `magic` VALUES ('35', '烈焰风暴', '攻击', null, '4', null, '随从', '7', '1');
INSERT INTO `magic` VALUES ('36', '火球术', '攻击', null, '6', null, '全体', '6', '1');
INSERT INTO `magic` VALUES ('37', '变羊术', '削减攻击（单体）', '削减生命上限（单体）', 'attack=1', 'heathlimit=1', '随从', '4', '1');
INSERT INTO `magic` VALUES ('38', '奥数智慧', '加卡', '', '2', '', null, '3', '1');
INSERT INTO `magic` VALUES ('39', '魔爆术', '攻击', null, '1', null, '全体', '2', '1');
INSERT INTO `magic` VALUES ('40', '寒冰箭', '攻击', '冰冻', '3', '无法攻击', '全体', '2', '1');
INSERT INTO `magic` VALUES ('41', '镜像', '召唤', '', '2', '', null, '1', '1');
INSERT INTO `magic` VALUES ('42', '暗影箭', '攻击', null, '4', null, '随从', '3', '2');
INSERT INTO `magic` VALUES ('43', '吸取生命', '攻击', '治疗', '2', '2', '全体', '3', '2');
INSERT INTO `magic` VALUES ('44', '灵魂之火', '攻击', '减卡', '4', '1', '全体', '1', '2');
INSERT INTO `magic` VALUES ('45', '死亡缠绕', '攻击', '加卡', '1', '1', '全体', '1', '2');
INSERT INTO `magic` VALUES ('46', '奥数飞弹', '攻击', '', '3', '', '全体', '1', '1');
INSERT INTO `magic` VALUES ('47', '神圣惩击', '攻击', null, '2', null, '全体', '1', '3');
INSERT INTO `magic` VALUES ('48', '圣光闪耀', '治疗', null, '5', null, '英雄', '1', '3');
INSERT INTO `magic` VALUES ('49', '心灵之火', '治疗', null, '2', null, '全体', '2', '3');
INSERT INTO `magic` VALUES ('50', '暗言术：痛', '攻击', null, '5', null, '随从', '2', '3');
INSERT INTO `magic` VALUES ('51', '神圣之灵', '增益生命上限（单体）', '增益生命（单体）', 'heathlimit×2', 'heath×2', '随从', '2', '3');
INSERT INTO `magic` VALUES ('52', '神圣新星', '攻击', '治疗', '2', '2', '全体', '5', '3');
INSERT INTO `magic` VALUES ('53', '奥数射击', '攻击', null, '2', null, '全体', '1', '4');
INSERT INTO `magic` VALUES ('54', '猎人印记', '削减生命上限（单体）', null, 'heathlimit=1', null, '随从', '2', '4');
INSERT INTO `magic` VALUES ('55', '投掷炸弹', '攻击', '召唤', '2', '地精炸弹', '全体', '2', '4');
INSERT INTO `magic` VALUES ('56', '动物伙伴', '召唤', null, '血沼迅猛龙', null, null, '3', '4');
INSERT INTO `magic` VALUES ('57', '杀戮命令', '攻击', null, '3', null, '全体', '3', '4');
INSERT INTO `magic` VALUES ('58', '致命涉及', '攻击', null, null, null, '随从', '3', '4');

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `id` int(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `himage` varchar(50) DEFAULT NULL,
  `health` varchar(50) DEFAULT NULL,
  `cardgroud` text,
  `state` int(20) DEFAULT NULL,
  `value` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES ('1', '1', '1', '1.jpg', '30', '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 21 28', '1', '1');
INSERT INTO `player` VALUES ('2', '2', '2', '2.jpg', '30', '28 27 26 25 16 15 16 13 12 11 10 9 8 7 6 5 4 3 2 1 1 2 3 20 19 11 18 17 22 23', '1', '1');
INSERT INTO `player` VALUES ('3', '3', '3', '3.jpg', '30', '1 3 5 7 9 2 4 6 8 10 11 13 15 17 19 21 23 25 12 14 16 18 20 22 24 26 28 25 24 27', '1', '1');
INSERT INTO `player` VALUES ('4', '4', '4', '4.jpg', '30', '1 2 3 4 5 6 7 8 9 10 11 22 23 23 24 25 12 22 28 21 28 19 15 16 26 13 14 15 24 11', '1', '1');
INSERT INTO `player` VALUES ('5', '5', '5', '5.jpg', '30', '1 2 3 4 5 10 9 8 7 6 5 4 3 2 1 11 23 34 25 18 17 22 26 27 28 10 21 20 20 18 19 17', '1', '1');
INSERT INTO `player` VALUES ('6', '6', '6', '6.jpg', '30', '1 10 2 9 3 8 4 7 5 6 13 16 18 3 7 2 25 27 26 21 22 27 1 22 28 24 11 12 13 15', '1', '1');
INSERT INTO `player` VALUES ('7', '7', '7', '7.jpg', '30', '1 2 3 6 8 10 6 2 3 7 17 17 18 21 22 28 4 1 3 5 7 27 25 11 23 24 25 26 18 12', '1', '1');
INSERT INTO `player` VALUES ('8', '8', '8', '8.jpg', '30', '14 15 17 21 22 26 28 19 11 11 14 16 6 9 12 14 2 5 7 1 4 8 10 10 13 13 19 18 17 23', '1', '1');
INSERT INTO `player` VALUES ('9', '9', '9', '9.jpg', '30', '11 13 17 12 14 16 18 20 22 24 26 28 15 14 13 12 11 1 2 3 4 5 6 7 8 9 10 2 3 4 5 6 ', '1', '1');
INSERT INTO `player` VALUES ('10', '10', '10', '10.jpg', '30', '2 1 3 12 14 17 18 12 11 10 9 8 22 24 25 27 21 16 20 5 7 1 4 7 3 5 9 15 17 19', '1', '1');

-- ----------------------------
-- Table structure for retinue
-- ----------------------------
DROP TABLE IF EXISTS `retinue`;
CREATE TABLE `retinue` (
  `id` int(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `health1` int(50) DEFAULT NULL,
  `health2` int(50) DEFAULT NULL,
  `attack1` int(50) DEFAULT NULL,
  `attack2` int(50) DEFAULT NULL,
  `location1` int(50) DEFAULT NULL,
  `location2` int(50) DEFAULT NULL,
  `state1` int(1) DEFAULT NULL,
  `state2` int(1) DEFAULT NULL,
  `cost` int(20) DEFAULT NULL,
  `action` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of retinue
-- ----------------------------
INSERT INTO `retinue` VALUES ('1', '森林狼', '1', '1', '1', '1', '1', '-1', '1', '0', '1', '2');
INSERT INTO `retinue` VALUES ('2', '北郡牧师', '3', '3', '1', '1', '11', '-1', '1', '0', '1', '1');
INSERT INTO `retinue` VALUES ('3', '魔犬', '3', '3', '4', '4', '12', '-1', '1', '0', '2', '1');
INSERT INTO `retinue` VALUES ('4', '恐惧地狱火', '6', '6', '6', '6', '13', '-1', '1', '0', '6', '1');
INSERT INTO `retinue` VALUES ('5', '巫医', '1', '1', '2', '2', '12', '-1', '1', '0', '1', '1');
INSERT INTO `retinue` VALUES ('6', '鱼人袭击者', '1', '1', '2', '2', '-1', '-1', '0', '0', '1', '1');
INSERT INTO `retinue` VALUES ('7', '工程师学徒', '1', '1', '1', '1', '-1', '-1', '0', '0', '2', '1');
INSERT INTO `retinue` VALUES ('8', '血沼迅猛龙', '2', '2', '3', '3', '-1', '-1', '0', '0', '2', '1');
INSERT INTO `retinue` VALUES ('9', '战利品贮藏者', '1', '1', '2', '2', '-1', '-1', '0', '0', '2', '1');
INSERT INTO `retinue` VALUES ('10', '苔原犀牛', '5', '5', '2', '2', '-1', '-1', '0', '0', '5', '1');
INSERT INTO `retinue` VALUES ('11', '淡水鳄', '3', '3', '2', '2', '-1', '-1', '0', '0', '2', '1');
INSERT INTO `retinue` VALUES ('12', '鱼人猎潮者', '1', '1', '2', '2', '-1', '-1', '0', '0', '2', '1');
INSERT INTO `retinue` VALUES ('13', '鱼人斥候', '1', '1', '1', '1', '-1', '-1', '0', '0', '1', '1');
INSERT INTO `retinue` VALUES ('14', '剃刀猎手', '3', '3', '2', '2', '-1', '-1', '0', '0', '3', '1');
INSERT INTO `retinue` VALUES ('15', '野猪', '1', '1', '1', '1', '-1', '-1', '0', '0', '1', '1');
INSERT INTO `retinue` VALUES ('16', '狼骑兵', '1', '1', '3', '3', '-1', '-1', '0', '0', '3', '1');
INSERT INTO `retinue` VALUES ('17', '冰封雪人', '5', '5', '4', '4', '-1', '-1', '0', '0', '5', '1');
INSERT INTO `retinue` VALUES ('18', '侏儒发明家', '4', '4', '2', '2', '-1', '-1', '0', '0', '4', '1');
INSERT INTO `retinue` VALUES ('19', '夜刃刺客', '4', '4', '4', '4', '-1', '-1', '0', '0', '5', '1');
INSERT INTO `retinue` VALUES ('20', '暗鳞治愈者', '5', '5', '4', '4', '-1', '-1', '0', '0', '5', '1');
INSERT INTO `retinue` VALUES ('21', '雷矛特种兵', '2', '2', '3', '3', '-1', '-1', '0', '0', '5', '1');
INSERT INTO `retinue` VALUES ('22', '石拳食人魔', '7', '7', '6', '6', '-1', '-1', '0', '0', '6', '1');
INSERT INTO `retinue` VALUES ('23', '鲁莽火箭兵', '2', '2', '5', '5', '-1', '-1', '0', '0', '6', '1');
INSERT INTO `retinue` VALUES ('24', '作战傀儡', '7', '7', '7', '7', '-1', '-1', '0', '0', '7', '1');
INSERT INTO `retinue` VALUES ('25', '熔火恶犬', '5', '5', '9', '9', '-1', '11', '0', '1', '7', '1');
INSERT INTO `retinue` VALUES ('26', '活化纪念碑', '10', '10', '10', '10', '-1', '12', '0', '1', '10', '1');
INSERT INTO `retinue` VALUES ('27', '地精炸弹', '2', '2', '0', '0', '-1', '13', '0', '1', '2', '1');
INSERT INTO `retinue` VALUES ('28', '持盾卫士', '4', '4', '0', '0', '-1', '1', '0', '1', '1', '1');

-- ----------------------------
-- Table structure for retinue2
-- ----------------------------
DROP TABLE IF EXISTS `retinue2`;
CREATE TABLE `retinue2` (
  `id` int(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `health1` int(50) DEFAULT NULL,
  `health2` int(50) DEFAULT NULL,
  `attack1` int(50) DEFAULT NULL,
  `attack2` int(50) DEFAULT NULL,
  `location1` int(50) DEFAULT NULL,
  `location2` int(50) DEFAULT NULL,
  `state1` int(1) DEFAULT NULL,
  `state2` int(1) DEFAULT NULL,
  `cost` int(20) DEFAULT NULL,
  `action` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of retinue2
-- ----------------------------
INSERT INTO `retinue2` VALUES ('1', '森林狼', '1', '1', '1', '1', '-1', '-1', '0', '0', '1', null);
INSERT INTO `retinue2` VALUES ('2', '北郡牧师', '3', '3', '1', '1', '-1', '-1', '0', '0', '1', null);
INSERT INTO `retinue2` VALUES ('3', '魔犬', '3', '3', '4', '4', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('4', '恐惧地狱火', '6', '6', '6', '6', '-1', '-1', '0', '0', '6', null);
INSERT INTO `retinue2` VALUES ('5', '巫医', '1', '1', '2', '2', '-1', '-1', '0', '0', '1', null);
INSERT INTO `retinue2` VALUES ('6', '鱼人袭击者', '1', '1', '2', '2', '-1', '-1', '0', '0', '1', null);
INSERT INTO `retinue2` VALUES ('7', '工程师学徒', '1', '1', '1', '1', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('8', '血沼迅猛龙', '2', '2', '3', '3', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('9', '战利品贮藏者', '1', '1', '2', '2', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('10', '苔原犀牛', '5', '5', '2', '2', '-1', '-1', '0', '0', '5', null);
INSERT INTO `retinue2` VALUES ('11', '淡水鳄', '3', '3', '2', '2', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('12', '鱼人猎潮者', '1', '1', '2', '2', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('13', '鱼人斥候', '1', '1', '1', '1', '-1', '-1', '0', '0', '1', null);
INSERT INTO `retinue2` VALUES ('14', '剃刀猎手', '3', '3', '2', '2', '-1', '-1', '0', '0', '3', null);
INSERT INTO `retinue2` VALUES ('15', '野猪', '1', '1', '1', '1', '-1', '-1', '0', '0', '1', null);
INSERT INTO `retinue2` VALUES ('16', '狼骑兵', '1', '1', '3', '3', '-1', '-1', '0', '0', '3', null);
INSERT INTO `retinue2` VALUES ('17', '冰封雪人', '5', '5', '4', '4', '-1', '-1', '0', '0', '5', null);
INSERT INTO `retinue2` VALUES ('18', '侏儒发明家', '4', '4', '2', '2', '-1', '-1', '0', '0', '4', null);
INSERT INTO `retinue2` VALUES ('19', '夜刃刺客', '4', '4', '4', '4', '-1', '-1', '0', '0', '5', null);
INSERT INTO `retinue2` VALUES ('20', '暗鳞治愈者', '5', '5', '4', '4', '-1', '-1', '0', '0', '5', null);
INSERT INTO `retinue2` VALUES ('21', '雷矛特种兵', '2', '2', '3', '3', '-1', '-1', '0', '0', '5', null);
INSERT INTO `retinue2` VALUES ('22', '石拳食人魔', '7', '7', '6', '6', '-1', '-1', '0', '0', '6', null);
INSERT INTO `retinue2` VALUES ('23', '鲁莽火箭兵', '2', '2', '5', '5', '-1', '-1', '0', '0', '6', null);
INSERT INTO `retinue2` VALUES ('24', '作战傀儡', '7', '7', '7', '7', '-1', '-1', '0', '0', '7', null);
INSERT INTO `retinue2` VALUES ('25', '熔火恶犬', '5', '5', '9', '9', '-1', '-1', '0', '0', '7', null);
INSERT INTO `retinue2` VALUES ('26', '活化纪念碑', '10', '10', '10', '10', '-1', '-1', '0', '0', '10', null);
INSERT INTO `retinue2` VALUES ('27', '地精炸弹', '2', '2', '0', '0', '-1', '-1', '0', '0', '2', null);
INSERT INTO `retinue2` VALUES ('28', '持盾卫士', '4', '4', '0', '0', '-1', '-1', '0', '0', '1', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(16) NOT NULL,
  `upassword` varchar(16) DEFAULT NULL,
  `uname` varchar(16) DEFAULT NULL,
  `cardgroup` varchar(255) DEFAULT NULL,
  `gameC` int(10) DEFAULT NULL,
  `deck` text,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '1', '1', '1 15 2 3 5 6 7 8 9 10 11 12 13 14 15');
INSERT INTO `user` VALUES ('2', '2', '2', '1', '2', '2 2 3 3 1 11 12 13 14 15 16 17 18 19 20');
INSERT INTO `user` VALUES ('3', '3', '3', '1', '1', null);
INSERT INTO `user` VALUES ('4', '4', '4', '1', '2', null);
INSERT INTO `user` VALUES ('5', '5', '5', '1', '1', null);
