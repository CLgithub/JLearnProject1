/*
Navicat MySQL Data Transfer

Source Server         : locahhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : ecps

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-09-13 08:28:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ebbrand
-- ----------------------------
DROP TABLE IF EXISTS `ebbrand`;
CREATE TABLE `ebbrand` (
  `brandName` varchar(255) DEFAULT NULL,
  `brandDesc` varchar(255) DEFAULT NULL,
  `imgs` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `brandSort` int(50) DEFAULT NULL,
  `brandId` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ebbrand
-- ----------------------------
INSERT INTO `ebbrand` VALUES ('魅族', 'fsdfsd', '/upLoadFile/ip.PNG', 'http://www.meizu.com', '1', '0003');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `depcode` int(11) NOT NULL,
  `depname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parentCode` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`depcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES ('100000000', '总部', '0', '1');
INSERT INTO `sys_department` VALUES ('102000000', 'yy', '100000000', '1');
INSERT INTO `sys_department` VALUES ('102010000', 'yy1', '102000000', '1');
INSERT INTO `sys_department` VALUES ('102020000', 'yy2', '102000000', '1');
INSERT INTO `sys_department` VALUES ('103000000', 'zz', '100000000', '1');
INSERT INTO `sys_department` VALUES ('103020000', 'zz1', '103000000', '1');
INSERT INTO `sys_department` VALUES ('104000000', 'xx', '100000000', '1');
INSERT INTO `sys_department` VALUES ('104010000', 'xx1', '104000000', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator` varchar(255) NOT NULL,
  `operTime` datetime DEFAULT NULL,
  `operName` varchar(255) DEFAULT NULL,
  `operParams` varchar(255) DEFAULT NULL,
  `operResult` varchar(255) DEFAULT NULL,
  `resultMsg` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `menuUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '菜单', '', '0', '1');
INSERT INTO `sys_menu` VALUES ('2', '菜单管理', '/view/page/system/menu.jsp', '1', '1');
INSERT INTO `sys_menu` VALUES ('3', '用户管理', '/view/page/system/user.jsp', '1', '1');
INSERT INTO `sys_menu` VALUES ('4', '权限管理', '/view/page/system/rights.jsp', '1', '1');
INSERT INTO `sys_menu` VALUES ('5', '日志管理', '/view/page/system/logs.jsp', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '部门管理', '/view/page/system/departMent.jsp', '1', '1');

-- ----------------------------
-- Table structure for sys_menu_right
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_right`;
CREATE TABLE `sys_menu_right` (
  `menuID` int(11) NOT NULL,
  `rightID` int(11) NOT NULL,
  PRIMARY KEY (`menuID`,`rightID`),
  KEY `rightID` (`rightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_menu_right
-- ----------------------------
INSERT INTO `sys_menu_right` VALUES ('1', '1');
INSERT INTO `sys_menu_right` VALUES ('2', '2');
INSERT INTO `sys_menu_right` VALUES ('3', '3');
INSERT INTO `sys_menu_right` VALUES ('4', '4');
INSERT INTO `sys_menu_right` VALUES ('5', '5');
INSERT INTO `sys_menu_right` VALUES ('1', '6');
INSERT INTO `sys_menu_right` VALUES ('2', '8');
INSERT INTO `sys_menu_right` VALUES ('2', '9');
INSERT INTO `sys_menu_right` VALUES ('3', '10');
INSERT INTO `sys_menu_right` VALUES ('3', '12');
INSERT INTO `sys_menu_right` VALUES ('4', '13');
INSERT INTO `sys_menu_right` VALUES ('4', '15');
INSERT INTO `sys_menu_right` VALUES ('2', '16');
INSERT INTO `sys_menu_right` VALUES ('3', '21');
INSERT INTO `sys_menu_right` VALUES ('1', '22');
INSERT INTO `sys_menu_right` VALUES ('1', '24');
INSERT INTO `sys_menu_right` VALUES ('6', '25');
INSERT INTO `sys_menu_right` VALUES ('6', '27');
INSERT INTO `sys_menu_right` VALUES ('6', '29');
INSERT INTO `sys_menu_right` VALUES ('1', '30');
INSERT INTO `sys_menu_right` VALUES ('1', '31');

-- ----------------------------
-- Table structure for sys_rights
-- ----------------------------
DROP TABLE IF EXISTS `sys_rights`;
CREATE TABLE `sys_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `righturl` varchar(50) DEFAULT NULL,
  `rightname` varchar(200) DEFAULT NULL,
  `rightdesc` varchar(200) DEFAULT NULL,
  `rightpos` int(11) DEFAULT NULL,
  `rightcode` bigint(20) DEFAULT NULL,
  `common` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rights
-- ----------------------------
INSERT INTO `sys_rights` VALUES ('1', '/loginController/doLogin', '登录', '登录', '0', '1', '');
INSERT INTO `sys_rights` VALUES ('2', '/sysMenuController/getPBBySearch', '查看菜单列表', '查看菜单列表', '0', '2', '\0');
INSERT INTO `sys_rights` VALUES ('3', '/sysUserController/getPBBySearch', '查看用户列表', '查看用户列表', '0', '4', '\0');
INSERT INTO `sys_rights` VALUES ('4', '/sysRightsController/getPBBySearch', '查看权限列表', '查看权限列表', '0', '8', '\0');
INSERT INTO `sys_rights` VALUES ('5', '/sysLogsController/getPBBySearch', '查看日志列表', '查看日志列表', '0', '16', '\0');
INSERT INTO `sys_rights` VALUES ('6', '/loginController/doLogout', '退出', '退出', '0', '32', '');
INSERT INTO `sys_rights` VALUES ('8', '/sysMenuController/deleteByID', '删除菜单', '删除菜单', '0', '128', '\0');
INSERT INTO `sys_rights` VALUES ('9', '/sysMenuController/saveOrUpdate', '新增或修改目录', '新增或修改目录', '0', '256', '\0');
INSERT INTO `sys_rights` VALUES ('10', '/sysUserController/saveOrUpdate', '新增或修改用户', '新增或修改用户', '0', '512', '\0');
INSERT INTO `sys_rights` VALUES ('12', '/sysUserController/deleteByIDs', '删除用户', '删除用户', '0', '2048', '\0');
INSERT INTO `sys_rights` VALUES ('13', '/sysRightsController/saveOrUpdate', '新增或修改权限', '新增或修改权限', '0', '4096', '\0');
INSERT INTO `sys_rights` VALUES ('15', '/sysRightsController/deleteByIDs', '删除权限', '删除权限', '0', '16384', '\0');
INSERT INTO `sys_rights` VALUES ('16', '/sysMenuController/getAllList', '得到菜单列表', '得到所有菜单列表', '0', '32768', '\0');
INSERT INTO `sys_rights` VALUES ('21', '/sysRightsController/setRights', '设置人员权限', '设置人员权限', '0', '65536', '\0');
INSERT INTO `sys_rights` VALUES ('22', '/commonController/getRightByUser', '得到用户权限', '根据用户id得到该用户的权限id', '0', '131072', '');
INSERT INTO `sys_rights` VALUES ('24', '/commonController/loadUserMenu', '加载用户菜单', '加载用户菜单', '0', '262144', '');
INSERT INTO `sys_rights` VALUES ('25', '/sysDepartmentController/getPBBySearch', '查看部门列表', '查看部门列表', '0', '524288', '\0');
INSERT INTO `sys_rights` VALUES ('27', '/sysDepartmentController/saveOrUpdate', '新增或修改部门', '新增或修改部门', '0', '2097152', '\0');
INSERT INTO `sys_rights` VALUES ('29', '/sysDepartmentController/deleteByCode', '删除部门', '删除部门', '0', '4194304', '\0');
INSERT INTO `sys_rights` VALUES ('30', '/commonController/getUserDepList', '得到部门及其以下部门列表', '得到部门及其以下部门列表', '0', '8388608', '');
INSERT INTO `sys_rights` VALUES ('31', '/commonController/getUserMenu', '得到用户能见菜单', '得到用户能见菜单', '0', '16777216', '');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `loginName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sysDepCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sysDepCode` (`sysDepCode`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '德赫亚', 'dhy', '21232f297a57a5a743894a0e4a801fc3', '1', '1', null);
INSERT INTO `sys_user` VALUES ('2', '斯莫宁', 'sml', '21232f297a57a5a743894a0e4a801fc3', '2', '1', '102010000');
INSERT INTO `sys_user` VALUES ('3', '菲尔琼斯', 'feqs', '21232f297a57a5a743894a0e4a801fc3', '4', '1', '102000000');
INSERT INTO `sys_user` VALUES ('4', '卢克肖', 'lkx', '21232f297a57a5a743894a0e4a801fc3', '3', '1', '102020000');
INSERT INTO `sys_user` VALUES ('23', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', '1', '100000000');

-- ----------------------------
-- Table structure for sys_user_right
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_right`;
CREATE TABLE `sys_user_right` (
  `userID` int(11) NOT NULL DEFAULT '0',
  `rightID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`,`rightID`),
  KEY `rightID` (`rightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_user_right
-- ----------------------------
INSERT INTO `sys_user_right` VALUES ('3', '3');

-- ----------------------------
-- View structure for user_right_menu
-- ----------------------------
DROP VIEW IF EXISTS `user_right_menu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_right_menu` AS select `su`.`name` AS `name`,`su`.`loginName` AS `loginName`,`su`.`password` AS `password`,`su`.`number` AS `number`,`su`.`status` AS `status`,`su`.`sysDepCode` AS `sysDepCode`,`sr`.`righturl` AS `righturl`,`sr`.`rightname` AS `rightname`,`sr`.`rightdesc` AS `rightdesc`,`sm`.`menuName` AS `menuName`,`sm`.`menuUrl` AS `menuUrl`,`sm`.`parentID` AS `parentID`,`su`.`id` AS `userID`,`sr`.`id` AS `rightID`,`sm`.`id` AS `menuID` from ((((`sys_user` `su` join `sys_user_right` `sur`) join `sys_rights` `sr`) join `sys_menu_right` `smr`) join `sys_menu` `sm` on(((`su`.`id` = `sur`.`userID`) and (`sur`.`rightID` = `sr`.`id`) and (`sr`.`id` = `smr`.`rightID`) and (`smr`.`menuID` = `sm`.`id`)))) ;
