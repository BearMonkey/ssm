/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-09 19:25:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '账号',
  `passwd` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `operator` int(11) DEFAULT NULL COMMENT '操作人',
  `status` smallint(1) DEFAULT NULL COMMENT '状态  1 使用中  0  已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'monkey0', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('3', 'monkey1', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('4', 'monkey2', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('5', 'monkey3', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('6', 'monkey4', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('7', 'monkey5', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('8', 'monkey6', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('9', 'monkey7', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('10', 'monkey8', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('11', 'monkey9', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('12', 'monkey10', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('13', 'monkey0', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('14', 'monkey1', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('15', 'monkey2', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('16', 'monkey3', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('17', 'monkey4', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('18', 'monkey5', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('19', 'monkey6', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('20', 'monkey7', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('21', 'monkey8', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('22', 'monkey9', null, 'monkey', '10000', null, null, '1');
INSERT INTO `user` VALUES ('23', 'monkey10', null, 'monkey', '10000', null, null, '1');
