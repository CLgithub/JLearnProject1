-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: ecps
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ebbrand`
--

DROP TABLE IF EXISTS `ebbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebbrand` (
  `brandId` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) DEFAULT NULL,
  `brandDesc` varchar(255) DEFAULT NULL,
  `imgs` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `brandSort` int(50) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebbrand`
--

LOCK TABLES `ebbrand` WRITE;
/*!40000 ALTER TABLE `ebbrand` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebcat`
--

DROP TABLE IF EXISTS `ebcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebcat` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(80) DEFAULT NULL,
  `catdesc` varchar(80) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `catsort` int(5) DEFAULT NULL,
  `keywords` varchar(80) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `mark` varchar(80) DEFAULT NULL,
  `isdisplay` int(5) DEFAULT NULL,
  `fullpath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebcat`
--

LOCK TABLES `ebcat` WRITE;
/*!40000 ALTER TABLE `ebcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebfeature`
--

DROP TABLE IF EXISTS `ebfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebfeature` (
  `featureId` bigint(11) NOT NULL,
  `catId` bigint(11) DEFAULT NULL,
  `featureName` varchar(80) NOT NULL,
  `isSpec` smallint(1) DEFAULT NULL,
  `isSelect` smallint(1) DEFAULT NULL,
  `isShow` smallint(1) DEFAULT NULL,
  `selectValues` varchar(800) DEFAULT NULL,
  `inputType` bigint(2) DEFAULT NULL,
  `featureSort` int(5) DEFAULT NULL,
  PRIMARY KEY (`featureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebfeature`
--

LOCK TABLES `ebfeature` WRITE;
/*!40000 ALTER TABLE `ebfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ebitem`
--

DROP TABLE IF EXISTS `ebitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ebitem` (
  `itemId` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT NULL,
  `itemNo` varchar(255) DEFAULT NULL,
  `brandId` bigint(20) unsigned zerofill DEFAULT NULL,
  `catId` bigint(20) DEFAULT NULL,
  `tagImgId` bigint(20) DEFAULT NULL,
  `tagImg` smallint(6) DEFAULT NULL,
  `isNew` smallint(6) DEFAULT NULL,
  `isGood` smallint(6) DEFAULT NULL,
  `isHot` smallint(6) DEFAULT NULL,
  `promotion` varchar(255) DEFAULT NULL,
  `auditStatus` smallint(6) DEFAULT NULL,
  `showStatus` smallint(6) DEFAULT NULL,
  `imgs` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `pageDesc` varchar(255) DEFAULT NULL,
  `onSaleTime` date DEFAULT NULL,
  `checkTime` date DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateUserId` bigint(20) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `checkerUserId` bigint(20) DEFAULT NULL,
  `fullPathDeploy` varchar(255) DEFAULT NULL,
  `fullPathDeployOffer` varchar(255) DEFAULT NULL,
  `originalItemId` bigint(20) DEFAULT NULL,
  `lastStatus` smallint(6) DEFAULT NULL,
  `merchantId` bigint(20) DEFAULT NULL,
  `itemSort` bigint(20) DEFAULT NULL,
  `sales` bigint(20) DEFAULT NULL,
  `createUserId` bigint(20) DEFAULT NULL,
  `simLevel` smallint(6) DEFAULT NULL,
  `giftDesc` varchar(255) DEFAULT NULL,
  `giftImg` varchar(255) DEFAULT NULL,
  `giftShowType` varchar(255) DEFAULT NULL,
  `imgSize1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemId`),
  KEY `brandId` (`brandId`),
  CONSTRAINT `ebitem_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `ebbrand` (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebitem`
--

LOCK TABLES `ebitem` WRITE;
/*!40000 ALTER TABLE `ebitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_department`
--

DROP TABLE IF EXISTS `sys_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_department` (
  `depcode` int(11) NOT NULL,
  `depname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parentCode` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`depcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_department`
--

LOCK TABLES `sys_department` WRITE;
/*!40000 ALTER TABLE `sys_department` DISABLE KEYS */;
INSERT INTO `sys_department` VALUES (100000000,'总部',0,1),(102000000,'yy',100000000,1),(102010000,'yy1',102000000,1),(102020000,'yy2',102000000,1),(103000000,'zz',100000000,1),(103020000,'zz1',103000000,1),(104000000,'xx',100000000,1),(104010000,'xx1',104000000,1);
/*!40000 ALTER TABLE `sys_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `menuUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'菜单','',0,1),(2,'菜单管理','/view/page/system/menu.jsp',1,1),(3,'用户管理','/view/page/system/user.jsp',1,1),(4,'权限管理','/view/page/system/rights.jsp',1,1),(5,'日志管理','/view/page/system/logs.jsp',1,1),(6,'部门管理','/view/page/system/departMent.jsp',1,1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu_right`
--

DROP TABLE IF EXISTS `sys_menu_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_right` (
  `menuID` int(11) NOT NULL,
  `rightID` int(11) NOT NULL,
  PRIMARY KEY (`menuID`,`rightID`),
  KEY `rightID` (`rightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu_right`
--

LOCK TABLES `sys_menu_right` WRITE;
/*!40000 ALTER TABLE `sys_menu_right` DISABLE KEYS */;
INSERT INTO `sys_menu_right` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(1,6),(2,8),(2,9),(3,10),(3,12),(4,13),(4,15),(2,16),(3,21),(1,22),(1,24),(6,25),(6,27),(6,29),(1,30),(1,31);
/*!40000 ALTER TABLE `sys_menu_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rights`
--

DROP TABLE IF EXISTS `sys_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `righturl` varchar(50) DEFAULT NULL,
  `rightname` varchar(200) DEFAULT NULL,
  `rightdesc` varchar(200) DEFAULT NULL,
  `rightpos` int(11) DEFAULT NULL,
  `rightcode` bigint(20) DEFAULT NULL,
  `common` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rights`
--

LOCK TABLES `sys_rights` WRITE;
/*!40000 ALTER TABLE `sys_rights` DISABLE KEYS */;
INSERT INTO `sys_rights` VALUES (3,'/sysUserController/getPBBySearch','查看用户列表','查看用户列表',0,4,'\0'),(4,'/sysRightsController/getPBBySearch','查看权限列表','查看权限列表',0,8,'\0'),(5,'/sysLogsController/getPBBySearch','查看日志列表','查看日志列表',0,16,'\0'),(9,'/sysMenuController/saveOrUpdate','新增或修改目录','新增或修改目录',0,256,'\0'),(10,'/sysUserController/saveOrUpdate','新增或修改用户','新增或修改用户',0,512,'\0'),(12,'/sysUserController/deleteByIDs','删除用户','删除用户',0,2048,'\0'),(13,'/sysRightsController/saveOrUpdate','新增或修改权限','新增或修改权限',0,4096,'\0'),(15,'/sysRightsController/deleteByIDs','删除权限','删除权限',0,16384,'\0'),(16,'/sysMenuController/getAllList','得到菜单列表','得到所有菜单列表',0,32768,'\0'),(21,'/sysRightsController/setRights','设置人员权限','设置人员权限',0,65536,'\0'),(27,'/sysDepartmentController/saveOrUpdate','新增或修改部门','新增或修改部门',0,2097152,'\0'),(29,'/sysDepartmentController/deleteByCode','删除部门','删除部门',0,4194304,'\0');
/*!40000 ALTER TABLE `sys_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'德赫亚','dhy','21232f297a57a5a743894a0e4a801fc3',1,1,NULL),(2,'斯莫宁','sml','21232f297a57a5a743894a0e4a801fc3',2,1,102010000),(3,'菲尔琼斯','feqs','21232f297a57a5a743894a0e4a801fc3',4,1,102000000),(4,'卢克肖','lkx','21232f297a57a5a743894a0e4a801fc3',3,1,102020000),(23,'admin','admin','21232f297a57a5a743894a0e4a801fc3',0,1,100000000);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_right`
--

DROP TABLE IF EXISTS `sys_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_right` (
  `userID` int(11) NOT NULL DEFAULT '0',
  `rightID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`,`rightID`),
  KEY `rightID` (`rightID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_right`
--

LOCK TABLES `sys_user_right` WRITE;
/*!40000 ALTER TABLE `sys_user_right` DISABLE KEYS */;
INSERT INTO `sys_user_right` VALUES (3,3);
/*!40000 ALTER TABLE `sys_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_right_menu`
--

DROP TABLE IF EXISTS `user_right_menu`;
/*!50001 DROP VIEW IF EXISTS `user_right_menu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_right_menu` AS SELECT 
 1 AS `name`,
 1 AS `loginName`,
 1 AS `password`,
 1 AS `number`,
 1 AS `status`,
 1 AS `sysDepCode`,
 1 AS `righturl`,
 1 AS `rightname`,
 1 AS `rightdesc`,
 1 AS `menuName`,
 1 AS `menuUrl`,
 1 AS `parentID`,
 1 AS `userID`,
 1 AS `rightID`,
 1 AS `menuID`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `user_right_menu`
--

/*!50001 DROP VIEW IF EXISTS `user_right_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_right_menu` AS select `su`.`name` AS `name`,`su`.`loginName` AS `loginName`,`su`.`password` AS `password`,`su`.`number` AS `number`,`su`.`status` AS `status`,`su`.`sysDepCode` AS `sysDepCode`,`sr`.`righturl` AS `righturl`,`sr`.`rightname` AS `rightname`,`sr`.`rightdesc` AS `rightdesc`,`sm`.`menuName` AS `menuName`,`sm`.`menuUrl` AS `menuUrl`,`sm`.`parentID` AS `parentID`,`su`.`id` AS `userID`,`sr`.`id` AS `rightID`,`sm`.`id` AS `menuID` from ((((`sys_user` `su` join `sys_user_right` `sur`) join `sys_rights` `sr`) join `sys_menu_right` `smr`) join `sys_menu` `sm` on(((`su`.`id` = `sur`.`userID`) and (`sur`.`rightID` = `sr`.`id`) and (`sr`.`id` = `smr`.`rightID`) and (`smr`.`menuID` = `sm`.`id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-19 17:25:33
