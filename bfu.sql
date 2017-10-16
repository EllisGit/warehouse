-- MySQL dump 10.13  Distrib 5.5.28, for Win64 (x86)
--
-- Host: localhost    Database: bfudb
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `product_pic`
--

DROP TABLE IF EXISTS `product_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_pic` (
  `pic_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_pic`
--

LOCK TABLES `product_pic` WRITE;
/*!40000 ALTER TABLE `product_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_asin_sku`
--

DROP TABLE IF EXISTS `t_asin_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_asin_sku` (
  `product_id` int(11) NOT NULL,
  `asin` varchar(45) NOT NULL,
  `sku` varchar(45) NOT NULL,
  `as_desc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_asin_sku`
--

LOCK TABLES `t_asin_sku` WRITE;
/*!40000 ALTER TABLE `t_asin_sku` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_asin_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inv_color`
--

DROP TABLE IF EXISTS `t_inv_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_inv_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(45) DEFAULT NULL,
  `color_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inv_color`
--

LOCK TABLES `t_inv_color` WRITE;
/*!40000 ALTER TABLE `t_inv_color` DISABLE KEYS */;
INSERT INTO `t_inv_color` VALUES (6,'1','无'),(7,'54','无');
/*!40000 ALTER TABLE `t_inv_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inv_dtl`
--

DROP TABLE IF EXISTS `t_inv_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_inv_dtl` (
  `dtl_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(45) DEFAULT NULL,
  `model_id` varchar(45) DEFAULT NULL,
  `color_id` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dtl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inv_dtl`
--

LOCK TABLES `t_inv_dtl` WRITE;
/*!40000 ALTER TABLE `t_inv_dtl` DISABLE KEYS */;
INSERT INTO `t_inv_dtl` VALUES (2,'1','6','6',200,'入仓'),(3,'54','7','7',300,'入仓');
/*!40000 ALTER TABLE `t_inv_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inv_log`
--

DROP TABLE IF EXISTS `t_inv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_inv_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `dtl_id` varchar(45) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `op_date` datetime DEFAULT NULL,
  `op_ammount` int(11) DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inv_log`
--

LOCK TABLES `t_inv_log` WRITE;
/*!40000 ALTER TABLE `t_inv_log` DISABLE KEYS */;
INSERT INTO `t_inv_log` VALUES (1,'1','进货','2015-05-25 15:23:19',200),(2,'1','进货','2015-05-25 15:24:04',-500);
/*!40000 ALTER TABLE `t_inv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inv_model`
--

DROP TABLE IF EXISTS `t_inv_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_inv_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(45) DEFAULT NULL,
  `model_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inv_model`
--

LOCK TABLES `t_inv_model` WRITE;
/*!40000 ALTER TABLE `t_inv_model` DISABLE KEYS */;
INSERT INTO `t_inv_model` VALUES (6,'1','无'),(7,'54','无');
/*!40000 ALTER TABLE `t_inv_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login`
--

DROP TABLE IF EXISTS `t_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_login` (
  `LOGIN_ID` varchar(16) NOT NULL,
  `LOGIN_PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login`
--

LOCK TABLES `t_login` WRITE;
/*!40000 ALTER TABLE `t_login` DISABLE KEYS */;
INSERT INTO `t_login` VALUES ('ansley','890324gxp'),('ellis','891127hp');
/*!40000 ALTER TABLE `t_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login_role`
--

DROP TABLE IF EXISTS `t_login_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_login_role` (
  `LOGIN_ID` varchar(16) NOT NULL,
  `ROLE_ID` varchar(16) NOT NULL,
  PRIMARY KEY (`LOGIN_ID`,`ROLE_ID`),
  KEY `FK_LOGIN_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_LOGIN_ROLE` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_role` (`ROLE_ID`),
  CONSTRAINT `FK_LOGIN_USER` FOREIGN KEY (`LOGIN_ID`) REFERENCES `t_login` (`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login_role`
--

LOCK TABLES `t_login_role` WRITE;
/*!40000 ALTER TABLE `t_login_role` DISABLE KEYS */;
INSERT INTO `t_login_role` VALUES ('ansley','admin'),('ellis','admin');
/*!40000 ALTER TABLE `t_login_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(50) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `MENU_PID` int(11) DEFAULT NULL,
  `SEQ_ORDER` int(11) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,'产品管理','/admin/productAdmin.action',NULL,21),(2,'库存管理','/admin/inventoryAdmin.action',NULL,31),(3,'海外仓货单',NULL,NULL,41),(4,'本地仓货单',NULL,NULL,42),(5,'库存日志',NULL,NULL,32),(6,'类别管理','/admin/categoryAdmin.action',NULL,22);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `createby` varchar(35) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateby` varchar(35) DEFAULT NULL,
  `updatedate` timestamp NULL DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `weight` int(11) DEFAULT '0',
  `product_desc` varchar(255) DEFAULT NULL,
  `asinl` varchar(45) NOT NULL,
  PRIMARY KEY (`product_ID`),
  UNIQUE KEY `asin_UNIQUE` (`asinl`),
  KEY `FK_CATEGORY_ID` (`CATEGORY_ID`),
  CONSTRAINT `FK_CATEGORY_ID` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `t_product_category` (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES (1,3,'魔方',NULL,'2015-05-15 01:52:38',NULL,NULL,'',0,'','MF'),(54,2,'小花猫',NULL,'2015-05-18 06:17:08',NULL,NULL,'',0,'','XHM'),(56,1,'四街',NULL,'2015-05-18 06:29:59',NULL,'2015-05-18 09:49:51','',0,'','SJ');
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_product_updated_at BEFORE UPDATE ON t_product
FOR EACH ROW
BEGIN
 SET NEW.updatedate = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_product_category`
--

DROP TABLE IF EXISTS `t_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_category` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(30) DEFAULT NULL,
  `CATEGORY_DESC` varchar(255) DEFAULT NULL,
  `parent_cat_id` int(11) DEFAULT '0',
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product_category`
--

LOCK TABLES `t_product_category` WRITE;
/*!40000 ALTER TABLE `t_product_category` DISABLE KEYS */;
INSERT INTO `t_product_category` VALUES (1,'无',NULL,0),(2,'学习',NULL,0),(3,'玩具',NULL,0),(4,'智力玩具',NULL,3),(5,'图画类',NULL,4),(6,'电子学习',NULL,2),(7,'文具',NULL,2),(8,'书本',NULL,2),(9,'普通玩具',NULL,3);
/*!40000 ALTER TABLE `t_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `ROLE_ID` varchar(16) NOT NULL,
  `ROLE_DESCR` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES ('admin','administer'),('user','normal user1');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` varchar(16) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`MENU_ID`),
  KEY `FK_MENU_MENU_ID` (`MENU_ID`),
  CONSTRAINT `FK_MENU_MENU_ID` FOREIGN KEY (`MENU_ID`) REFERENCES `t_menu` (`MENU_ID`),
  CONSTRAINT `FK_MENU_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `t_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES ('admin',1),('admin',2),('admin',3),('admin',4),('admin',5),('admin',6);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-25 17:33:25
