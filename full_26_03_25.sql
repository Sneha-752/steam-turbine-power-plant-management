-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: steam_turbine_project
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `boiler_management`
--

DROP TABLE IF EXISTS `boiler_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boiler_management` (
  `boiler_id` int(11) NOT NULL AUTO_INCREMENT,
  `boiler_capacity` varchar(50) DEFAULT NULL,
  `boiler_type` varchar(50) DEFAULT NULL,
  `steam_pressure` varchar(50) DEFAULT NULL,
  `steam_temperature` varchar(50) DEFAULT NULL,
  `feed_water_temperature` varchar(50) DEFAULT NULL,
  `fuel_consumption_rate` varchar(50) DEFAULT NULL,
  `boiler_efficiency` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(150) DEFAULT NULL,
  `last_maintenance_date` varchar(50) DEFAULT NULL,
  `next_maintenance_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`boiler_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boiler_management`
--

LOCK TABLES `boiler_management` WRITE;
/*!40000 ALTER TABLE `boiler_management` DISABLE KEYS */;
INSERT INTO `boiler_management` VALUES (1,'200','Coal','90','200','70','1200','400','Bagasse','Sun Feb 01 05:15:51 GMT 2026','Sun Feb 02 05:16:05 GMT 2025'),(2,'100','Coal','122','110','90','415','700','Coal','Sat Feb 01 07:28:34 GMT 2025','Sat Feb 08 07:28:41 GMT 2025'),(3,'300','Biomass','120','87','89','1000','700','Bagasse','Mon Feb 03 10:27:11 GMT 2025','Sun Feb 23 10:27:17 GMT 2025'),(4,'400','Coal','200','100','98','700','600','Bagasse','Sat Jan 04 10:29:25 GMT 2025','Fri Feb 28 10:29:30 GMT 2025'),(5,'700','Bagasse','137','143','135','900','300','Bagasse','Sun Feb 16 10:32:40 GMT 2025','Sat Feb 22 10:32:46 GMT 2025');
/*!40000 ALTER TABLE `boiler_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_estimation_module`
--

DROP TABLE IF EXISTS `cost_estimation_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cost_estimation_module` (
  `cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `boiler_id` varchar(50) DEFAULT NULL,
  `modification_description` varchar(50) DEFAULT NULL,
  `estimated_cost` varchar(50) DEFAULT NULL,
  `actual_cost` varchar(50) DEFAULT NULL,
  `cost_date` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_estimation_module`
--

LOCK TABLES `cost_estimation_module` WRITE;
/*!40000 ALTER TABLE `cost_estimation_module` DISABLE KEYS */;
INSERT INTO `cost_estimation_module` VALUES (2,'9','actual cost is add','11','13','2025-02-03','good'),(3,'4','boiler id modify','122','132','2025-02-07','good'),(4,'3','cost date updated','680','700','2025-01-05','good'),(5,'6','actual cost is not fix','714','720','2025-02-07','well'),(6,'7','cost id modify','122','124','2025-02-23','good');
/*!40000 ALTER TABLE `cost_estimation_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energy_production_module`
--

DROP TABLE IF EXISTS `energy_production_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energy_production_module` (
  `production_id` int(11) NOT NULL AUTO_INCREMENT,
  `boiler_id` varchar(50) DEFAULT NULL,
  `fuel_id` varchar(50) DEFAULT NULL,
  `steam_generated` varchar(50) DEFAULT NULL,
  `power_generated` varchar(50) DEFAULT NULL,
  `production_date` varchar(50) DEFAULT NULL,
  `production_time` varchar(50) DEFAULT NULL,
  `operator_name` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`production_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energy_production_module`
--

LOCK TABLES `energy_production_module` WRITE;
/*!40000 ALTER TABLE `energy_production_module` DISABLE KEYS */;
INSERT INTO `energy_production_module` VALUES (1,'2','3','400','300','2025-02-02','7:30','rahi','good'),(2,'3','4','290','400','2025-01-16','8:30','shraddha','well'),(3,'4','6','600','100','2025-01-23','4:30','prachi','good'),(4,'5','6','470','460','2025-01-05','3:50','gaytri','well');
/*!40000 ALTER TABLE `energy_production_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energy_sales_module`
--

DROP TABLE IF EXISTS `energy_sales_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energy_sales_module` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) DEFAULT NULL,
  `sale_date` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `customer_address` varchar(50) DEFAULT NULL,
  `energy_sold` varchar(50) DEFAULT NULL,
  `rate` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `total_amount` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energy_sales_module`
--

LOCK TABLES `energy_sales_module` WRITE;
/*!40000 ALTER TABLE `energy_sales_module` DISABLE KEYS */;
INSERT INTO `energy_sales_module` VALUES (1,'rahi','2025-02-01','kasegon','8766428933','24','400','offline','9600.0','good'),(2,'prachi','2025-01-02','borgon','9955734876','26','300','online','7800.0','well'),(3,'shraddha','2025-02-13','satpevadi','8833253647','27','300','offline','8100.0','good'),(4,'gaytri','2025-01-20','walva','4436758849','28','500','online','14000.0','good'),(5,'sakshi','2025-02-09','tambve','8755463728','29','350','offline','10150.0','well'),(6,'aamruta','2025-02-20','kapukhed','7028534674','37','1000','online','37000.0','good');
/*!40000 ALTER TABLE `energy_sales_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environmental_compliance_module`
--

DROP TABLE IF EXISTS `environmental_compliance_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `environmental_compliance_module` (
  `compliance_id` int(11) NOT NULL AUTO_INCREMENT,
  `compliance_date` varchar(50) DEFAULT NULL,
  `boiler_id` varchar(50) DEFAULT NULL,
  `compliance_status` varchar(50) DEFAULT NULL,
  `emission_type` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `emission_level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`compliance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environmental_compliance_module`
--

LOCK TABLES `environmental_compliance_module` WRITE;
/*!40000 ALTER TABLE `environmental_compliance_module` DISABLE KEYS */;
INSERT INTO `environmental_compliance_module` VALUES (1,'2025-02-02','2','SO2','high','good','11'),(2,'2025-02-04','3','NOx','low','good','12'),(3,'2025-02-06','4','CO2','medium','well','13'),(4,'2025-02-08','5','NOx','low','good','14'),(5,'2025-02-10','6','SO2','high','well','15');
/*!40000 ALTER TABLE `environmental_compliance_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_management`
--

DROP TABLE IF EXISTS `fuel_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuel_management` (
  `fuel_id` int(11) NOT NULL AUTO_INCREMENT,
  `fuel_calorific_value` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `fuel_consumption_rate` varchar(50) DEFAULT NULL,
  `fuel_quantity` varchar(50) DEFAULT NULL,
  `last_delivery_date` varchar(50) DEFAULT NULL,
  `fuel_cost` varchar(50) DEFAULT NULL,
  `next_delivery_date` varchar(50) DEFAULT NULL,
  `fuel_supplier` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fuel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_management`
--

LOCK TABLES `fuel_management` WRITE;
/*!40000 ALTER TABLE `fuel_management` DISABLE KEYS */;
INSERT INTO `fuel_management` VALUES (1,'424','Biomass','677','11','2025-02-01','423','Fri Feb 21 08:54:24 GMT 2025','sneha'),(2,'800','Coal','780','12','2025-02-01','445','Mon Feb 17 08:56:37 GMT 2025','rahi'),(3,'900','Coal','754','13','2025-02-05','580','Thu Feb 27 09:02:05 GMT 2025','sai'),(4,'700','Bagasse','678','14','2025-02-03','450','Sat Feb 22 09:03:27 GMT 2025','gaytri'),(5,'900','Bagasse','460','27','2025-02-05','789','Sun Feb 16 09:04:14 GMT 2025','sakshi'),(6,'32','Coal','950','75','2025-02-08','900','Mon Feb 10 11:06:39 GMT 2025','sanket');
/*!40000 ALTER TABLE `fuel_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_management`
--

DROP TABLE IF EXISTS `maintenance_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance_management` (
  `maintenance_id` int(11) NOT NULL AUTO_INCREMENT,
  `boiler_id` varchar(50) DEFAULT NULL,
  `maintenance_type` varchar(50) DEFAULT NULL,
  `maintenance_date` varchar(50) DEFAULT NULL,
  `maintenance_cost` varchar(50) DEFAULT NULL,
  `maintenance_description` varchar(50) DEFAULT NULL,
  `maintenance_engineer` varchar(50) DEFAULT NULL,
  `next_maintenance_date` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`maintenance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_management`
--

LOCK TABLES `maintenance_management` WRITE;
/*!40000 ALTER TABLE `maintenance_management` DISABLE KEYS */;
INSERT INTO `maintenance_management` VALUES (1,'2','Overhaul','Sun Feb 02 05:28:26 GMT 2025','415','overhaul maintenance is good','manisha','Sun Feb 02 05:27:17 GMT 2025','good'),(2,'2','Routine','Sun Feb 16 09:06:49 GMT 2025','712','routing is god','sakshi','Thu Feb 06 09:06:13 GMT 2025','well'),(3,'4','Routine','Sun Jan 19 09:08:07 GMT 2025','890r','routing is bad','gaytri','Fri Jan 03 09:07:55 GMT 2025','good'),(4,'1','Overhaul','Sun Feb 16 09:11:38 GMT 2025','350','overhaul is good','rahi','Sat Feb 15 09:09:37 GMT 2025','well'),(5,'6','Routine','Wed Feb 26 09:14:05 GMT 2025','770','routine is well','pradnya','Sun Feb 02 09:12:34 GMT 2025','good'),(6,'8','Overhaul','Sun Feb 09 11:10:00 GMT 2025','790','maintenance id is updated','sanket','Sat Feb 01 11:08:07 GMT 2025','good');
/*!40000 ALTER TABLE `maintenance_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_management`
--

DROP TABLE IF EXISTS `user_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_management` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  `last_login_date` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_management`
--

LOCK TABLES `user_management` WRITE;
/*!40000 ALTER TABLE `user_management` DISABLE KEYS */;
INSERT INTO `user_management` VALUES (1,'snehakhot@gmail.com','sneha','8766428933','C.E.O','null','2025-02-01',''),(2,'handegaytri9@gmail.com','gaytri','9156187438','worker','1234','2025-02-01','good'),(3,'sj7435943@gmail.com','sakshi','9975114496','worker','1234','2025-01-23','well'),(4,'shraddhasatpe@gmail,com','shraddha','7276086265','maneger','1234','2025-01-29','good'),(5,'surywanshiprachi465@','prachi','9146654827','manager','12334','2025-02-09','good'),(6,'nehamane@gmail.com','neha','7866453829','worker','2025-02-16','1234','good');
/*!40000 ALTER TABLE `user_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers_management`
--

DROP TABLE IF EXISTS `workers_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers_management` (
  `worker_id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `joining_date` varchar(50) DEFAULT NULL,
  `desiganation` varchar(50) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`worker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers_management`
--

LOCK TABLES `workers_management` WRITE;
/*!40000 ALTER TABLE `workers_management` DISABLE KEYS */;
INSERT INTO `workers_management` VALUES (1,'1','1','1','24/03/2025','24/03/2025','1','1','Female','1'),(2,'1','1','1','24/03/2025','24/03/2025','1','1','Female','1'),(3,'asfds','asfda','4365','24/03/2025','24/03/2025','adsfs','sfs','Male','20000'),(4,'ram','kase','76532','24/03/2025','24/03/2025','haghag','nahg','Female','15896'),(5,'mohit','walwa','9872359234','24/03/2025','24/03/2025','gdsh','graduation','Male','7000'),(6,'sneha','deowadi','8766428933','Sun Feb 23 11:13:06 GMT 2025','Sat Feb 08 11:14:26 GMT 2025','sels fainance','bsc','Female','14000');
/*!40000 ALTER TABLE `workers_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers_salary`
--

DROP TABLE IF EXISTS `workers_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers_salary` (
  `pay_no` int(11) NOT NULL AUTO_INCREMENT,
  `pay_date` varchar(50) DEFAULT NULL,
  `worker_id` varchar(50) DEFAULT NULL,
  `worker_name` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `present_days` varchar(50) DEFAULT NULL,
  `absent_days` varchar(50) DEFAULT NULL,
  `deduct_amount` varchar(50) DEFAULT NULL,
  `net_salary` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pay_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers_salary`
--

LOCK TABLES `workers_salary` WRITE;
/*!40000 ALTER TABLE `workers_salary` DISABLE KEYS */;
INSERT INTO `workers_salary` VALUES (1,'2025-02-02','1','prachi','12000','27','-1','-300','12300'),(2,'2025-02-09','2','gaytri','14000','28','-2','-600','14600'),(3,'2025-01-02','3','shraddha','12000','29','-3','-900','12900'),(4,'Thu Jan 02 00:00:00 GMT 2025','4','pradnya','20000','29','-3','-900','12900'),(5,'2025-02-15','6','sneha','15000','28','-2','-600','15600'),(6,'2025-02-28','9','sneha','12000','27','-1','-300','12300');
/*!40000 ALTER TABLE `workers_salary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26  3:47:37
