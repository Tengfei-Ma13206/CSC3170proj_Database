-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: comprehensive_supermarket
-- ------------------------------------------------------
-- Server version	8.0.35
CREATE DATABASE IF NOT EXISTS comprehensive_supermarket;
SHOW DATABASES;
USE comprehensive_supermarket;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_customers`
--


DROP TABLE IF EXISTS `t_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_customers` (
  `pk_customer_id` int NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `account_balance` float DEFAULT NULL,
  PRIMARY KEY (`pk_customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customers`
--

LOCK TABLES `t_customers` WRITE;
/*!40000 ALTER TABLE `t_customers` DISABLE KEYS */;
INSERT INTO `t_customers` VALUES (1,'John Doe',1234567890,250.5),(2,'Jane Smith',1234567891,150.75),(3,'Bob Johnson',1234567892,300),(4,'Alice Williams',1234567893,275.25),(5,'Chris Brown',1234567894,125),(6,'Diana Clark',1234567895,180.45),(7,'Evan Davis',1234567896,220.3),(8,'Fiona Evans',1234567897,205.6),(9,'Gary Harris',1234567898,190.85),(10,'Helen Jackson',1234567899,260.7),(11,'Ian King',1234567900,140.55),(12,'Jessica Lee',1234567901,230.2),(13,'Kyle Martin',1234567902,210.9),(14,'Laura Nelson',1234567903,240),(15,'Mike O\'Neil',1234567904,200.15),(16,'Nina Perez',1234567905,175.8),(17,'Oscar Quinn',1234567906,195.45),(18,'Patricia Robinson',1234567907,215.1),(19,'Quinn Stevens',1234567908,235.75),(20,'Rachel Taylor',1234567909,255.4),(21,'Steven Underwood',1234567910,275.05),(22,'Tina Vincent',1234567911,294.7),(23,'Ursula Wilson',1234567912,314.35),(24,'Victor Xander',1234567913,334),(25,'Wendy Young',1234567914,353.65),(26,'Xavier Zane',1234567915,373.3),(27,'Yolanda Adams',1234567916,392.95),(28,'Zachary Brooks',1234567917,412.6),(29,'Amanda Carter',1234567918,432.25),(30,'Brian Daniels',1234567919,451.9),(31,'Caroline Edwards',1234567920,471.55),(32,'Derek Franklin',1234567921,491.2),(33,'Eleanor Green',1234567922,510.85),(34,'Franklin Hopper',1234567923,530.5),(35,'Georgia Ingram',1234567924,550.15),(36,'Harold Jenkins',1234567925,569.8),(37,'Iris Kent',1234567926,589.45),(38,'Justin Lopez',1234567927,609.1),(39,'Karen Moore',1234567928,628.75),(40,'Louis Norton',1234567929,648.4),(41,'Margaret O\'Connor',1234567930,668.05),(42,'Nathaniel Peters',1234567931,687.7),(43,'Olivia Queen',1234567932,707.35),(44,'Peter Russell',1234567933,727),(45,'Quincy Simmons',1234567934,746.65),(46,'Renee Thomas',1234567935,766.3),(47,'Simon Upton',1234567936,785.95),(48,'Teresa Vaughn',1234567937,805.6),(49,'Ulysses Wallace',1234567938,825.25),(50,'Vanessa Young',1234567939,844.9),(51,'Alexa Ray',1276543201,305.2),(52,'Benjamin Knight',1276543202,150.75),(53,'Charlotte Lane',1276543203,210.55),(54,'Dexter Morgan',1276543204,500),(55,'Evelyn Stone',1276543205,275.45),(56,'Frank Ocean',1276543206,325.3),(57,'Grace Hart',1276543207,205.6),(58,'Henry Ford',1276543208,190.85),(59,'Isabella King',1276543209,260.7),(60,'Jack Ryan',1276543210,340.55),(61,'Kate Marsh',1276543211,230.2),(62,'Liam Neeson',1276543212,410.9),(63,'Mia Wallace',1276543213,240),(64,'Noah Flynn',1276543214,200.15),(65,'Olivia Pope',1276543215,375.8),(66,'Peter Parker',1276543216,195.45),(67,'Quinn Fabray',1276543217,215.1),(68,'Rachel Green',1276543218,235.75),(69,'Sam Winchester',1276543219,255.4),(70,'Tina Cohen',1276543220,275.05),(71,'Ursula Monroe',1276543221,294.7),(72,'Vincent Vega',1276543222,314.35),(73,'Walter White',1276543223,334),(74,'Xena Warrior',1276543224,353.65),(75,'Yvonne Strahovski',1276543225,373.3),(76,'Zachary Levi',1276543226,392.95),(77,'Adam West',1276543227,412.6),(78,'Betty Cooper',1276543228,432.25),(79,'Clark Kent',1276543229,451.9),(80,'Diana Prince',1276543230,471.55),(81,'Ethan Hunt',1276543231,491.2),(82,'Fiona Gallagher',1276543232,510.85),(83,'George Bluth',1276543233,530.5),(84,'Harley Quinn',1276543234,550.15),(85,'Ivy Dickens',1276543235,569.8),(86,'Joey Tribbiani',1276543236,589.45),(87,'Kara Danvers',1276543237,609.1),(88,'Lucifer Morningstar',1276543238,628.75),(89,'Mona Vanderwaal',1276543239,648.4),(90,'Nancy Wheeler',1276543240,668.05),(91,'Oscar Bluth',1276543241,687.7),(92,'Phoebe Buffay',1276543242,707.35),(93,'Quentin Coldwater',1276543243,727),(94,'Rory Gilmore',1276543244,746.65),(95,'Selina Meyer',1276543245,766.3),(96,'Tony Stark',1276543246,785.95),(97,'Uma Thurman',1276543247,805.6),(98,'Vanessa Ives',1276543248,825.25),(99,'Wade Wilson',1276543249,844.9),(100,'Xander Harris',1276543250,864.55);
/*!40000 ALTER TABLE `t_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_employees`
--

DROP TABLE IF EXISTS `t_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_employees` (
  `pk_employee_id` int NOT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `work_schedules` text,
  PRIMARY KEY (`pk_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_employees`
--

LOCK TABLES `t_employees` WRITE;
/*!40000 ALTER TABLE `t_employees` DISABLE KEYS */;
INSERT INTO `t_employees` VALUES (1,'Cashier',1800,1234567890,'Mon-Fri 09:00-17:00'),(2,'Cashier',1850,1234567891,'Mon-Fri 10:00-18:00'),(3,'Cashier',1900,1234567892,'Mon-Fri 11:00-19:00'),(4,'Cashier',1800,1234567893,'Mon-Fri 12:00-20:00'),(5,'Cashier',1750,1234567894,'Mon-Fri 13:00-21:00'),(6,'Cashier',1950,1234567895,'Tue-Sat 09:00-17:00'),(7,'Cashier',1825,1234567896,'Tue-Sat 10:00-18:00'),(8,'Cashier',1875,1234567897,'Tue-Sat 11:00-19:00'),(9,'Cashier',1925,1234567898,'Tue-Sat 12:00-20:00'),(10,'Cashier',1830,1234567899,'Tue-Sat 13:00-21:00'),(11,'Cashier',1930,1234567800,'Wed-Sun 09:00-17:00'),(12,'Cashier',1780,1234567801,'Wed-Sun 10:00-18:00'),(13,'Cashier',1880,1234567802,'Wed-Sun 11:00-19:00'),(14,'Cashier',1750,1234567803,'Wed-Sun 12:00-20:00'),(15,'Cashier',1900,1234567804,'Wed-Sun 13:00-21:00'),(16,'Cashier',1850,1234567805,'Thu-Mon 09:00-17:00'),(17,'Cashier',1800,1234567806,'Thu-Mon 10:00-18:00'),(18,'Cashier',1850,1234567807,'Thu-Mon 11:00-19:00'),(19,'Cashier',1800,1234567808,'Thu-Mon 12:00-20:00'),(20,'Cashier',1780,1234567809,'Thu-Mon 13:00-21:00'),(21,'Store Organizer',1000,1234567810,'Mon-Fri 08:00-16:00'),(22,'Store Organizer',1100,1234567811,'Mon-Fri 09:00-17:00'),(23,'Store Organizer',1200,1234567812,'Tue-Sat 08:00-16:00'),(24,'Store Organizer',1050,1234567813,'Tue-Sat 09:00-17:00'),(25,'Store Organizer',1150,1234567814,'Wed-Sun 08:00-16:00'),(26,'Store Organizer',1250,1234567815,'Wed-Sun 09:00-17:00'),(27,'Store Organizer',1000,1234567816,'Thu-Mon 08:00-16:00'),(28,'Store Organizer',1100,1234567817,'Thu-Mon 09:00-17:00'),(29,'Store Organizer',1200,1234567818,'Fri-Tue 08:00-16:00'),(30,'Store Organizer',1050,1234567819,'Fri-Tue 09:00-17:00'),(31,'Security Guard',1200,1234567820,'Mon-Fri 06:00-14:00'),(32,'Security Guard',1300,1234567821,'Mon-Fri 14:00-22:00'),(33,'Security Guard',1250,1234567822,'Tue-Sat 06:00-14:00'),(34,'Security Guard',1350,1234567823,'Tue-Sat 14:00-22:00'),(35,'Security Guard',1400,1234567824,'Wed-Sun 06:00-14:00'),(36,'Floor Supervisor',2500,1234567825,'Mon-Fri 08:00-16:00'),(37,'Floor Supervisor',2600,1234567826,'Mon-Fri 12:00-20:00'),(38,'Floor Supervisor',2550,1234567827,'Tue-Sat 08:00-16:00'),(39,'Floor Supervisor',2650,1234567828,'Tue-Sat 12:00-20:00'),(40,'Floor Supervisor',2700,1234567829,'Wed-Sun 08:00-16:00'),(41,'Floor Supervisor',2750,1234567830,'Wed-Sun 12:00-20:00'),(42,'Bakery Clerk',1900,1234567831,'Mon-Fri 05:00-13:00'),(43,'Butcher',2000,1234567832,'Mon-Fri 06:00-14:00'),(44,'Produce Associate',1850,1234567833,'Mon-Fri 07:00-15:00'),(45,'Seafood Specialist',1950,1234567834,'Mon-Fri 06:00-14:00'),(46,'Grocery Stocker',1800,1234567835,'Tue-Sat 07:00-15:00'),(47,'Dairy Associate',1850,1234567836,'Tue-Sat 06:00-14:00'),(48,'Delicatessen Clerk',1900,1234567837,'Tue-Sat 07:00-15:00'),(49,'Floral Designer',1950,1234567838,'Wed-Sun 09:00-17:00'),(50,'Pharmacy Technician',2200,1234567839,'Wed-Sun 08:00-16:00'),(51,'Checkout Supervisor',2100,1234567840,'Thu-Mon 10:00-18:00'),(52,'Wine Steward',2050,1234567841,'Thu-Mon 11:00-19:00'),(53,'Bakery Manager',2500,1234567842,'Thu-Mon 05:00-13:00'),(54,'Meat Department Manager',2600,1234567843,'Fri-Tue 06:00-14:00'),(55,'Produce Manager',2550,1234567844,'Fri-Tue 07:00-15:00'),(56,'Seafood Manager',2650,1234567845,'Mon-Fri 06:00-14:00'),(57,'Grocery Manager',2700,1234567846,'Mon-Fri 07:00-15:00'),(58,'Dairy Manager',2450,1234567847,'Tue-Sat 06:00-14:00'),(59,'Delicatessen Manager',2550,1234567848,'Tue-Sat 07:00-15:00'),(60,'Floral Department Manager',2650,1234567849,'Wed-Sun 09:00-17:00');
/*!40000 ALTER TABLE `t_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_expense_reports`
--

DROP TABLE IF EXISTS `t_expense_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_expense_reports` (
  `pk_expense_report_id` int NOT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `supply_expense` float DEFAULT NULL,
  `employee_expense` float DEFAULT NULL,
  `other_expense` float DEFAULT NULL,
  `total_expense` float DEFAULT NULL,
  PRIMARY KEY (`pk_expense_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_expense_reports`
--

LOCK TABLES `t_expense_reports` WRITE;
/*!40000 ALTER TABLE `t_expense_reports` DISABLE KEYS */;
INSERT INTO `t_expense_reports` VALUES (1,'Monthly','2023-02-01','2023-02-28','2023-03-01 10:00:00',5000,2000,800,7800),(2,'Quarterly','2023-01-01','2023-03-31','2023-04-01 10:00:00',15000,6000,2400,21600),(3,'Annual','2022-01-01','2022-12-31','2023-01-01 10:00:00',60000,24000,9600,93600),(4,'Monthly','2023-03-01','2023-03-31','2023-04-01 10:00:00',5200,2100,850,8150),(5,'Weekly','2023-03-01','2023-03-07','2023-03-08 10:00:00',1200,500,200,1900),(6,'Monthly','2023-01-01','2023-01-31','2023-02-01 10:00:00',4800,1900,770,7470),(7,'Quarterly','2023-04-01','2023-06-30','2023-07-01 10:00:00',15500,6200,2500,24200),(8,'Annual','2023-01-01','2023-12-31','2024-01-01 10:00:00',61000,25000,10000,96000),(9,'Weekly','2023-03-08','2023-03-14','2023-03-15 10:00:00',1300,550,220,2070),(10,'Monthly','2023-04-01','2023-04-30','2023-05-01 10:00:00',5300,2200,880,8380);
/*!40000 ALTER TABLE `t_expense_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_inventory_reports`
--

DROP TABLE IF EXISTS `t_inventory_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_inventory_reports` (
  `pk_inventory_report_id` int NOT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_inventory_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_inventory_reports`
--

LOCK TABLES `t_inventory_reports` WRITE;
/*!40000 ALTER TABLE `t_inventory_reports` DISABLE KEYS */;
INSERT INTO `t_inventory_reports` VALUES (1,'Daily','2023-03-01','2023-03-01','2023-03-02 08:00:00'),(2,'Weekly','2023-02-24','2023-03-02','2023-03-03 08:00:00'),(3,'Monthly','2023-02-01','2023-02-28','2023-03-01 08:00:00'),(4,'Quarterly','2023-01-01','2023-03-31','2023-04-01 08:00:00'),(5,'Yearly','2022-01-01','2022-12-31','2023-01-01 08:00:00'),(6,'Daily','2023-03-02','2023-03-02','2023-03-03 08:00:00'),(7,'Weekly','2023-03-03','2023-03-09','2023-03-10 08:00:00'),(8,'Monthly','2023-03-01','2023-03-31','2023-04-01 08:00:00'),(9,'Quarterly','2023-04-01','2023-06-30','2023-07-01 08:00:00'),(10,'Yearly','2023-01-01','2023-12-31','2024-01-01 08:00:00');
/*!40000 ALTER TABLE `t_inventory_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product_management_records`
--

DROP TABLE IF EXISTS `t_product_management_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_product_management_records` (
  `pk_management_record_id` int NOT NULL,
  `management_date` date DEFAULT NULL,
  `management_time` time DEFAULT NULL,
  `fk_responsible_employee_id` int DEFAULT NULL,
  `fk_product_id` int DEFAULT NULL,
  `fk_variant_id` int DEFAULT NULL,
  `warehouse_change_quantity` float DEFAULT NULL,
  `shelf_change_quantity` float DEFAULT NULL,
  PRIMARY KEY (`pk_management_record_id`),
  KEY `fk_responsible_employee_id` (`fk_responsible_employee_id`),
  KEY `fk_product_id` (`fk_product_id`,`fk_variant_id`),
  CONSTRAINT `product_management_records_ibfk_1` FOREIGN KEY (`fk_responsible_employee_id`) REFERENCES `t_employees` (`pk_employee_id`),
  CONSTRAINT `product_management_records_ibfk_2` FOREIGN KEY (`fk_product_id`, `fk_variant_id`) REFERENCES `t_product_variants` (`pk_product_id`, `pk_variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product_management_records`
--

LOCK TABLES `t_product_management_records` WRITE;
/*!40000 ALTER TABLE `t_product_management_records` DISABLE KEYS */;
INSERT INTO `t_product_management_records` VALUES (1,'2023-01-10','08:00:00',21,1,1,-5,5),(2,'2023-01-10','09:00:00',22,1,2,-10,10),(3,'2023-01-11','10:30:00',23,2,1,-8,8),(4,'2023-01-11','11:00:00',24,2,2,-6,6),(5,'2023-01-12','08:30:00',25,3,1,-4,4),(6,'2023-01-12','09:30:00',26,3,2,-2,2),(7,'2023-01-13','10:15:00',27,4,1,-7,7),(8,'2023-01-13','10:45:00',28,4,2,-3,3),(9,'2023-01-14','08:20:00',29,5,1,-6,6),(10,'2023-01-14','09:10:00',30,5,2,-8,8),(11,'2023-01-15','11:00:00',21,6,1,-5,5),(12,'2023-01-15','12:00:00',22,6,2,-10,10),(13,'2023-01-16','08:00:00',23,7,1,-3,3),(14,'2023-01-16','08:30:00',24,7,2,-4,4),(15,'2023-01-17','09:00:00',25,8,1,-7,7),(16,'2023-01-17','10:00:00',26,8,2,-2,2),(17,'2023-01-18','08:45:00',27,9,1,-1,1),(18,'2023-01-18','09:50:00',28,9,2,-5,5),(19,'2023-01-19','08:30:00',29,10,1,-8,8),(20,'2023-01-19','09:30:00',30,10,2,-7,7),(21,'2023-01-20','10:15:00',21,11,1,-6,6),(22,'2023-01-20','11:15:00',22,11,2,-3,3),(23,'2023-01-21','08:00:00',23,12,1,-4,4),(24,'2023-01-21','08:45:00',24,12,2,-5,5),(25,'2023-01-22','09:30:00',25,13,1,-2,2),(26,'2023-01-22','10:30:00',26,13,2,-3,3),(27,'2023-01-23','08:20:00',27,14,1,-4,4),(28,'2023-01-23','09:40:00',28,14,2,-2,2),(29,'2023-01-24','10:30:00',29,15,1,-5,5),(30,'2023-01-24','11:00:00',30,15,2,-3,3),(31,'2023-01-25','08:15:00',21,16,1,-7,7),(32,'2023-01-25','09:45:00',22,16,2,-1,1),(33,'2023-01-26','10:10:00',23,17,1,-8,8),(34,'2023-01-26','11:30:00',24,17,2,-4,4),(35,'2023-01-27','08:25:00',25,18,1,-3,3),(36,'2023-01-27','09:55:00',26,18,2,-6,6),(37,'2023-01-28','10:40:00',27,19,1,-5,5),(38,'2023-01-28','11:20:00',28,19,2,-2,2),(39,'2023-01-29','08:30:00',29,20,1,-4,4),(40,'2023-01-29','09:30:00',30,20,2,-7,7),(41,'2023-01-30','10:15:00',21,21,1,-8,8),(42,'2023-01-30','11:15:00',22,21,2,-1,1),(43,'2023-01-31','08:00:00',23,22,1,-5,5),(44,'2023-01-31','09:00:00',24,22,2,-3,3),(45,'2023-02-01','10:30:00',25,23,1,-6,6),(46,'2023-02-01','11:00:00',26,23,2,-4,4),(47,'2023-02-02','08:30:00',27,24,1,-2,2),(48,'2023-02-02','09:30:00',28,24,2,-5,5),(49,'2023-02-03','10:15:00',29,25,1,-7,7),(50,'2023-02-03','11:15:00',30,25,2,-3,3),(51,'2023-02-04','08:00:00',21,26,1,-1,1),(52,'2023-02-04','09:00:00',22,26,2,-6,6),(53,'2023-02-05','10:30:00',23,27,1,-4,4),(54,'2023-02-05','11:00:00',24,27,2,-8,8),(55,'2023-02-06','08:30:00',25,28,1,-2,2),(56,'2023-02-06','09:30:00',26,28,2,-7,7),(57,'2023-02-07','10:15:00',27,29,1,-3,3),(58,'2023-02-07','11:15:00',28,29,2,-5,5),(59,'2023-02-08','08:00:00',29,30,1,-4,4),(60,'2023-02-08','09:00:00',30,30,2,-6,6),(61,'2023-04-01','08:00:00',21,16,1,-10,10),(62,'2023-04-01','08:15:00',22,16,2,5,-5),(63,'2023-04-01','08:30:00',23,17,1,-15,15),(64,'2023-04-01','08:45:00',24,17,2,20,-20),(65,'2023-04-01','09:00:00',25,18,1,-5,5),(66,'2023-04-01','09:15:00',26,18,2,10,-10),(67,'2023-04-01','09:30:00',27,19,1,-20,20),(68,'2023-04-01','09:45:00',28,19,2,15,-15),(69,'2023-04-01','10:00:00',29,20,1,-25,25),(70,'2023-04-01','10:15:00',30,20,2,30,-30),(71,'2023-04-01','10:30:00',21,21,1,-5,5),(72,'2023-04-01','10:45:00',22,21,2,10,-10),(73,'2023-04-01','11:00:00',23,22,1,-15,15),(74,'2023-04-01','11:15:00',24,22,2,20,-20),(75,'2023-04-01','11:30:00',25,23,1,-10,10),(76,'2023-04-01','11:45:00',26,23,2,5,-5),(77,'2023-04-01','12:00:00',27,16,1,-30,30),(78,'2023-04-01','12:15:00',28,17,1,25,-25),(79,'2023-04-01','12:30:00',29,18,1,-5,5),(80,'2023-04-01','12:45:00',30,19,1,15,-15),(81,'2023-04-01','13:00:00',21,20,1,-20,20),(82,'2023-04-01','13:15:00',22,21,1,10,-10),(83,'2023-04-01','13:30:00',23,22,1,-15,15),(84,'2023-04-01','13:45:00',24,23,1,20,-20),(85,'2023-04-01','14:00:00',25,16,2,-10,10),(86,'2023-04-01','14:15:00',26,17,2,5,-5),(87,'2023-04-01','14:30:00',27,18,2,-25,25),(88,'2023-04-01','14:45:00',28,19,2,30,-30),(89,'2023-04-01','15:00:00',29,20,2,-5,5),(90,'2023-04-01','15:15:00',30,21,2,15,-15),(91,'2023-04-01','15:30:00',21,22,2,-20,20),(92,'2023-04-01','15:45:00',22,23,2,10,-10),(93,'2023-04-01','08:00:00',21,24,1,-5,5),(94,'2023-04-01','09:00:00',22,25,2,10,-10),(95,'2023-04-01','10:00:00',23,26,1,-15,15),(96,'2023-04-01','11:00:00',24,27,2,20,-20),(97,'2023-04-01','12:00:00',25,28,1,-25,25),(98,'2023-04-01','13:00:00',26,29,2,30,-30),(99,'2023-04-01','14:00:00',27,30,1,-35,35),(100,'2023-04-01','15:00:00',28,31,2,40,-40),(101,'2023-04-02','08:00:00',29,32,1,-45,45),(102,'2023-04-02','09:00:00',30,24,2,50,-50),(103,'2023-04-02','10:00:00',21,25,1,-5,5),(104,'2023-04-02','11:00:00',22,26,2,10,-10),(105,'2023-04-02','12:00:00',23,27,1,-15,15),(106,'2023-04-02','13:00:00',24,28,2,20,-20),(107,'2023-04-02','14:00:00',25,29,1,-25,25),(108,'2023-04-02','15:00:00',26,30,2,30,-30),(109,'2023-04-03','08:00:00',27,31,1,-35,35),(110,'2023-04-03','09:00:00',28,32,2,40,-40),(111,'2023-04-03','10:00:00',29,24,1,-45,45),(112,'2023-04-03','11:00:00',30,25,2,50,-50),(113,'2023-04-03','12:00:00',21,26,1,-5,5),(114,'2023-04-03','13:00:00',22,27,2,10,-10),(115,'2023-04-03','14:00:00',23,28,1,-15,15),(116,'2023-04-03','15:00:00',24,29,2,20,-20),(117,'2023-04-04','08:00:00',25,30,1,-25,25),(118,'2023-04-04','09:00:00',26,31,2,30,-30),(119,'2023-04-04','10:00:00',27,32,1,-35,35),(120,'2023-04-04','11:00:00',28,24,2,40,-40),(121,'2023-04-04','12:00:00',29,25,1,-45,45),(122,'2023-04-04','13:00:00',30,26,2,50,-50),(123,'2023-04-04','14:00:00',21,27,1,-5,5),(124,'2023-04-04','15:00:00',22,28,2,10,-10),(125,'2023-04-01','09:00:00',21,33,1,-5,5),(126,'2023-04-01','09:15:00',22,33,2,10,-10),(127,'2023-04-01','09:30:00',23,34,1,-3,3),(128,'2023-04-01','09:45:00',24,34,2,4,-4),(129,'2023-04-01','10:00:00',25,35,1,-7,7),(130,'2023-04-01','10:15:00',26,35,2,15,-15),(131,'2023-04-01','10:30:00',27,36,1,-4,4),(132,'2023-04-01','10:45:00',28,36,2,5,-5),(133,'2023-04-01','11:00:00',29,37,1,-6,6),(134,'2023-04-01','11:15:00',30,37,2,20,-20),(135,'2023-04-01','11:30:00',21,38,1,-5,5),(136,'2023-04-01','11:45:00',22,38,2,10,-10),(137,'2023-04-01','12:00:00',23,39,1,-2,2),(138,'2023-04-01','12:15:00',24,39,2,3,-3),(139,'2023-04-01','12:30:00',25,40,1,-8,8),(140,'2023-04-01','12:45:00',26,40,2,10,-10),(141,'2023-04-02','09:00:00',27,33,1,-10,10),(142,'2023-04-02','09:15:00',28,33,2,5,-5),(143,'2023-04-02','09:30:00',29,34,1,-2,2),(144,'2023-04-02','09:45:00',30,34,2,7,-7),(145,'2023-04-02','10:00:00',21,35,1,-9,9),(146,'2023-04-02','10:15:00',22,35,2,12,-12),(147,'2023-04-02','10:30:00',23,36,1,-3,3),(148,'2023-04-02','10:45:00',24,36,2,6,-6),(149,'2023-04-02','11:00:00',25,37,1,-5,5),(150,'2023-04-02','11:15:00',26,37,2,15,-15),(151,'2023-04-02','11:30:00',27,38,1,-4,4),(152,'2023-04-02','11:45:00',28,38,2,8,-8),(153,'2023-04-02','12:00:00',29,39,1,-7,7),(154,'2023-04-02','12:15:00',30,39,2,5,-5),(155,'2023-04-02','12:30:00',21,40,1,-6,6),(156,'2023-04-02','12:45:00',22,40,2,11,-11),(157,'2023-03-01','09:00:00',21,41,1,-5,5),(158,'2023-03-01','10:00:00',22,41,2,10,-10),(159,'2023-03-02','11:00:00',23,42,1,-15,15),(160,'2023-03-02','12:00:00',24,42,2,20,-20),(161,'2023-03-03','13:00:00',25,43,1,-5,5),(162,'2023-03-03','14:00:00',26,43,2,10,-10),(163,'2023-03-04','15:00:00',27,44,1,-10,10),(164,'2023-03-04','16:00:00',28,44,2,15,-15),(165,'2023-03-05','17:00:00',29,45,1,-20,20),(166,'2023-03-05','18:00:00',30,45,2,25,-25),(167,'2023-03-06','08:00:00',21,46,1,-30,30),(168,'2023-03-06','09:00:00',22,46,2,35,-35),(169,'2023-03-07','10:00:00',23,47,1,-10,10),(170,'2023-03-07','11:00:00',24,47,2,15,-15),(171,'2023-03-08','12:00:00',25,48,1,-5,5),(172,'2023-03-08','13:00:00',26,48,2,10,-10),(173,'2023-03-09','14:00:00',27,49,1,-15,15),(174,'2023-03-09','15:00:00',28,49,2,20,-20),(175,'2023-03-10','16:00:00',29,50,1,-25,25),(176,'2023-03-10','17:00:00',30,50,2,30,-30),(177,'2023-03-11','08:00:00',21,41,1,5,-5),(178,'2023-03-11','09:00:00',22,41,2,-10,10),(179,'2023-03-12','10:00:00',23,42,1,15,-15),(180,'2023-03-12','11:00:00',24,42,2,-20,20),(181,'2023-03-13','12:00:00',25,43,1,5,-5),(182,'2023-03-13','13:00:00',26,43,2,-10,10),(183,'2023-03-14','14:00:00',27,44,1,10,-10),(184,'2023-03-14','15:00:00',28,44,2,-15,15),(185,'2023-03-15','16:00:00',29,45,1,20,-20),(186,'2023-03-15','17:00:00',30,45,2,-25,25),(187,'2023-03-16','08:00:00',21,46,1,30,-30),(188,'2023-03-16','09:00:00',22,46,2,-35,35),(189,'2023-03-01','08:00:00',21,51,1,-10,10),(190,'2023-03-01','09:00:00',22,51,2,5,-5),(191,'2023-03-01','10:00:00',23,52,1,-15,15),(192,'2023-03-01','11:00:00',24,52,2,20,-20),(193,'2023-03-01','12:00:00',25,53,1,-5,5),(194,'2023-03-01','13:00:00',26,53,2,10,-10),(195,'2023-03-01','14:00:00',27,54,1,-20,20),(196,'2023-03-01','15:00:00',28,54,2,15,-15),(197,'2023-03-01','16:00:00',29,55,1,-10,10),(198,'2023-03-02','08:00:00',30,55,2,5,-5),(199,'2023-03-02','09:00:00',21,56,1,-8,8),(200,'2023-03-02','10:00:00',22,56,2,12,-12),(201,'2023-03-02','11:00:00',23,57,1,-7,7),(202,'2023-03-02','12:00:00',24,57,2,9,-9),(203,'2023-03-02','13:00:00',25,58,1,-20,20),(204,'2023-03-02','14:00:00',26,58,2,15,-15),(205,'2023-03-02','15:00:00',27,59,1,-6,6),(206,'2023-03-02','16:00:00',28,59,2,4,-4),(207,'2023-03-03','08:00:00',29,60,1,-9,9),(208,'2023-03-03','09:00:00',30,60,2,11,-11),(209,'2023-03-03','10:00:00',21,51,1,-5,5),(210,'2023-03-03','11:00:00',22,51,2,3,-3),(211,'2023-03-03','12:00:00',23,52,1,-12,12),(212,'2023-03-03','13:00:00',24,52,2,18,-18),(213,'2023-03-03','14:00:00',25,53,1,-4,4),(214,'2023-03-03','15:00:00',26,53,2,6,-6),(215,'2023-03-03','16:00:00',27,54,1,-11,11),(216,'2023-03-04','08:00:00',28,54,2,7,-7),(217,'2023-03-04','09:00:00',29,55,1,-13,13),(218,'2023-03-04','10:00:00',30,55,2,14,-14),(219,'2023-03-04','11:00:00',21,56,1,-2,2),(220,'2023-03-04','12:00:00',22,56,2,8,-8);
/*!40000 ALTER TABLE `t_product_management_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product_variants`
--

DROP TABLE IF EXISTS `t_product_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_product_variants` (
  `pk_product_id` int NOT NULL,
  `pk_variant_id` int NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `variant_unit` varchar(255) DEFAULT NULL,
  `variant_unit_price` float DEFAULT NULL,
  `variant_description` text,
  `warehouse_quantity` float DEFAULT NULL,
  `shelf_quantity` float DEFAULT NULL,
  PRIMARY KEY (`pk_product_id`,`pk_variant_id`),
  CONSTRAINT `t_product_variants_ibfk_1` FOREIGN KEY (`pk_product_id`) REFERENCES `t_products` (`pk_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product_variants`
--

LOCK TABLES `t_product_variants` WRITE;
/*!40000 ALTER TABLE `t_product_variants` DISABLE KEYS */;
INSERT INTO `t_product_variants` VALUES (1,1,'Organic Red Apples (Bag of 10)','Bag',5.99,'A bag of 10 crisp and sweet organic apples from local orchards.',100,20),(1,2,'Organic Red Apples (Single)','Each',0.69,'A single crisp and sweet organic apple from local orchards.',200,50),(2,1,'Whole Wheat Bread (Loaf)','Loaf',2.99,'Freshly baked loaf of bread made with 100% whole wheat flour.',80,30),(2,2,'Whole Wheat Bread (Sliced)','Pack',3.49,'Freshly baked bread made with 100% whole wheat flour, pre-sliced.',60,25),(3,1,'Atlantic Salmon (Filleted)','Pound',8.99,'Fresh Atlantic salmon fillets, rich in Omega-3 fatty acids.',50,10),(3,2,'Atlantic Salmon (Whole)','Each',17.99,'A whole fresh Atlantic salmon, rich in Omega-3 fatty acids.',30,5),(4,1,'Angus Beef Steak (Ribeye)','Pound',12.99,'Premium cuts of Angus beef ribeye, perfect for grilling.',40,15),(4,2,'Angus Beef Steak (Sirloin)','Pound',10.99,'Premium cuts of Angus beef sirloin, perfect for grilling.',35,10),(5,1,'Spaghetti Pasta (1kg)','Pack',1.49,'Classic Italian spaghetti pasta made from durum wheat semolina.',150,40),(5,2,'Spaghetti Pasta (500g)','Pack',0.99,'Classic Italian spaghetti pasta made from durum wheat semolina, in a smaller pack.',180,45),(6,1,'Natural Yogurt (500ml)','Bottle',1.99,'Creamy yogurt with live probiotics and no added sugar.',120,30),(6,2,'Natural Yogurt (1L)','Bottle',3.49,'Creamy yogurt with live probiotics and no added sugar, in a larger bottle.',90,20),(7,1,'Almond Milk (200ml boxed)','Box',1.29,'Dairy-free milk alternative made from real almonds, in a convenient small box.',200,60),(7,2,'Almond Milk (500ml boxed)','Box',2.49,'Dairy-free milk alternative made from real almonds, in a larger box.',150,40),(8,1,'Cage-Free Brown Eggs (Dozen)','Dozen',2.99,'Nutritious eggs from hens raised in cage-free environments, packed by the dozen.',100,25),(8,2,'Cage-Free Brown Eggs (Half Dozen)','Pack',1.79,'Nutritious eggs from hens raised in cage-free environments, packed by the half dozen.',120,35),(9,1,'Organic Spinach (Bunch)','Bunch',2.99,'Fresh organic spinach, washed and ready to eat, sold as a bunch.',80,20),(9,2,'Organic Spinach (Prepackaged)','Bag',3.49,'Prepackaged fresh organic spinach, washed and ready to eat.',70,30),(10,1,'Ripe Avocados (Single)','Each',1.49,'Single rich and creamy avocado, great for guacamole.',180,40),(10,2,'Ripe Avocados (Bag of 4)','Bag',5.49,'A bag of 4 rich and creamy avocados, great for guacamole.',90,20),(11,1,'Cheddar Cheese (200g)','Block',3.99,'Rich and creamy aged cheddar cheese.',85,25),(11,2,'Cheddar Cheese (500g)','Block',7.99,'Rich and creamy aged cheddar cheese in a larger block.',65,15),(12,1,'Greek Yogurt (150g)','Cup',0.99,'Thick and creamy yogurt with a hint of tartness, in a single serving cup.',110,50),(12,2,'Greek Yogurt (500g)','Tub',3.49,'Thick and creamy yogurt with a hint of tartness, in a larger tub.',80,35),(13,1,'Organic Milk (1L)','Bottle',2.99,'Organic milk from grass-fed cows, in a 1L bottle.',100,40),(13,2,'Organic Milk (2L)','Bottle',4.99,'Organic milk from grass-fed cows, in a more economical 2L bottle.',75,30),(14,1,'Espresso Coffee Beans (250g)','Bag',4.99,'Dark roasted espresso beans with a rich, bold flavor, in a 250g bag.',120,45),(14,2,'Espresso Coffee Beans (500g)','Bag',8.99,'Dark roasted espresso beans with a rich, bold flavor, in a 500g bag.',100,40),(15,1,'Green Tea (20 bags)','Box',3.49,'Refreshing green tea rich in antioxidants, comes in a box of 20 bags.',130,60),(15,2,'Green Tea (Loose Leaf 100g)','Pack',4.99,'Refreshing loose-leaf green tea rich in antioxidants.',100,40),(16,1,'Mineral Water (500ml)','Bottle',0.99,'Pure spring water with added minerals for taste in a 500ml bottle.',200,50),(16,2,'Mineral Water (1.5L)','Bottle',1.49,'Pure spring water with added minerals for taste in a 1.5L bottle.',150,40),(17,1,'Quinoa (250g)','Bag',2.99,'Nutritious whole-grain quinoa, gluten-free and high in protein in a 250g bag.',120,30),(17,2,'Quinoa (1kg)','Bag',5.99,'Nutritious whole-grain quinoa, gluten-free and high in protein in a 1kg bag.',100,25),(18,1,'Brown Rice (500g)','Bag',1.99,'Whole-grain brown rice with a nutty flavor in a 500g bag.',150,60),(18,2,'Brown Rice (2kg)','Bag',4.99,'Whole-grain brown rice with a nutty flavor in a 2kg bag.',100,20),(19,1,'Raspberry Jam (250g)','Jar',3.49,'Jam made with ripe raspberries and pure cane sugar in a 250g jar.',80,40),(19,2,'Raspberry Jam (500g)','Jar',5.99,'Jam made with ripe raspberries and pure cane sugar in a 500g jar.',60,20),(20,1,'Corn Flakes (500g)','Box',2.99,'Crunchy corn flakes, a classic breakfast cereal in a 500g box.',130,45),(20,2,'Corn Flakes (1kg)','Box',4.99,'Crunchy corn flakes, a classic breakfast cereal in a 1kg box.',70,30),(21,1,'Maple Syrup (250ml)','Bottle',7.99,'Pure maple syrup, perfect for pancakes and waffles in a 250ml bottle.',50,25),(21,2,'Maple Syrup (500ml)','Bottle',14.99,'Pure maple syrup, perfect for pancakes and waffles in a 500ml bottle.',30,15),(22,1,'Chicken Breasts (500g)','Package',4.99,'Boneless and skinless chicken breasts, versatile for any dish in a 500g package.',200,100),(22,2,'Chicken Breasts (1kg)','Package',9.49,'Boneless and skinless chicken breasts, versatile for any dish in a 1kg package.',150,75),(23,1,'Pork Chops (500g)','Package',5.99,'Juicy and tender pork chops, ready for the grill in a 500g package.',150,50),(23,2,'Pork Chops (1kg)','Package',11.49,'Juicy and tender pork chops, ready for the grill in a 1kg package.',100,40),(24,1,'Lamb Shoulder (1kg)','Package',14.99,'Rich and flavorful lamb shoulder, ideal for slow cooking in a 1kg package.',90,45),(24,2,'Lamb Shoulder (2kg)','Package',28.99,'Rich and flavorful lamb shoulder, ideal for slow cooking in a 2kg package.',50,20),(25,1,'Tilapia Fillets (500g)','Package',6.99,'Mild-flavored tilapia, perfect for quick and healthy meals in a 500g package.',120,60),(25,2,'Tilapia Fillets (1kg)','Package',13.49,'Mild-flavored tilapia, perfect for quick and healthy meals in a 1kg package.',90,45),(26,1,'Shrimp (250g)','Package',8.99,'Fresh shrimp, cleaned and deveined, ready to cook in a 250g package.',100,50),(26,2,'Shrimp (500g)','Package',17.49,'Fresh shrimp, cleaned and deveined, ready to cook in a 500g package.',80,40),(27,1,'Cod Fish (500g)','Package',7.99,'Flaky and mild white fish, perfect for fish and chips in a 500g package.',110,55),(27,2,'Cod Fish (1kg)','Package',15.49,'Flaky and mild white fish, perfect for fish and chips in a 1kg package.',70,35),(28,1,'Kale (200g)','Bag',2.49,'Nutrient-dense kale, great for salads and smoothies in a 200g bag.',150,75),(28,2,'Kale (500g)','Bag',4.99,'Nutrient-dense kale, great for salads and smoothies in a 500g bag.',120,60),(29,1,'Sweet Potatoes (1kg)','Bag',3.49,'Versatile sweet potatoes, rich in vitamins and fiber in a 1kg bag.',130,65),(29,2,'Sweet Potatoes (2kg)','Bag',6.49,'Versatile sweet potatoes, rich in vitamins and fiber in a 2kg bag.',100,50),(30,1,'Baby Carrots (500g)','Bag',1.99,'Convenient baby carrots, peeled and ready to snack on in a 500g bag.',200,100),(30,2,'Baby Carrots (1kg)','Bag',3.49,'Convenient baby carrots, peeled and ready to snack on in a 1kg bag.',150,75),(31,1,'Fuji Apples Bag','Bag',3.99,'5lb bag of crisp Fuji apples',100,10),(31,2,'Fuji Apples Loose','Each',0.79,'Single Fuji apple',200,30),(32,1,'Bananas Bunch','Bunch',1.29,'Bunch of ripe bananas',120,15),(32,2,'Bananas Single','Each',0.19,'Single ripe banana',180,40),(33,1,'Blueberries Pack','Pack',2.99,'Pack of plump and sweet blueberries',150,20),(33,2,'Blueberries Bulk','lb',5.99,'Bulk blueberries for baking',60,5),(34,1,'Rye Bread Loaf','Loaf',3.49,'Loaf of hearty rye bread',80,10),(34,2,'Rye Bread Sliced','Sliced Loaf',3.99,'Sliced rye bread loaf',85,10),(35,1,'Croissants Pack of 6','Pack',4.99,'Pack of 6 fresh-baked croissants',70,15),(35,2,'Croissant Single','Each',0.99,'Single buttery croissant',150,40),(36,1,'Plain Bagels Pack','Pack',3.49,'Pack of 6 chewy plain bagels',90,15),(36,2,'Everything Bagel','Each',0.69,'Single \'everything\' flavored bagel',110,30),(37,1,'Chocolate Chip Cookies Dozen','Dozen',3.99,'Dozen of classic chocolate chip cookies',60,15),(37,2,'Chocolate Chip Cookie Single','Each',0.33,'Single chocolate chip cookie',180,50),(38,1,'Pretzels Large Bag','Bag',2.49,'Large bag of salty pretzels',100,25),(38,2,'Pretzels Snack Pack','Pack',0.99,'Snack pack of crunchy pretzels',200,60),(39,1,'Almonds Roasted','Bag',6.99,'Roasted almonds bag',80,20),(39,2,'Almonds Raw','lb',7.99,'Raw almonds bulk',50,10),(40,1,'Olive Oil 500ml','Bottle',5.99,'500ml bottle of extra virgin olive oil',100,20),(40,2,'Olive Oil 1L','Bottle',10.99,'1L bottle of extra virgin olive oil',50,10),(41,1,'Balsamic Vinegar 250ml','Bottle',4.99,'250ml bottle of aged balsamic vinegar',80,20),(41,2,'Balsamic Vinegar 500ml','Bottle',8.99,'500ml bottle of aged balsamic vinegar',40,10),(42,1,'Sea Salt Grinder','Each',2.99,'Grinder with natural sea salt',120,30),(42,2,'Sea Salt Bulk','lb',1.99,'Bulk natural sea salt',60,15),(43,1,'Pepperoni Pizza Large','Box',7.99,'Large ready-to-bake pepperoni pizza',50,10),(43,2,'Pepperoni Pizza Personal','Box',3.99,'Personal size pepperoni pizza',80,20),(44,1,'Ice Cream Vanilla','Pint',3.49,'Vanilla ice cream pint',130,25),(44,2,'Ice Cream Chocolate','Pint',3.49,'Chocolate ice cream pint',130,25),(45,1,'Frozen Peas 1lb','Bag',1.99,'1lb bag of frozen green peas',100,20),(45,2,'Frozen Peas 2lb','Bag',3.49,'2lb bag of frozen green peas',60,15),(46,1,'Granola Bars Small Pack','Pack',2.99,'Small pack of 5 granola bars',120,25),(46,2,'Granola Bars Large Box','Box',4.99,'Large box containing 12 granola bars',80,15),(47,1,'Rice Cakes Original','Pack',1.99,'Original flavor rice cakes',150,35),(47,2,'Rice Cakes Apple Cinnamon','Pack',2.49,'Apple cinnamon flavor rice cakes',100,20),(48,1,'Peanut Butter Smooth','Jar',3.49,'Smooth peanut butter in a jar',110,30),(48,2,'Peanut Butter Crunchy','Jar',3.49,'Crunchy peanut butter in a jar',120,30),(49,1,'Honey Bottle Small','Bottle',4.99,'Small bottle of natural honey',90,20),(49,2,'Honey Bottle Large','Bottle',7.99,'Large bottle of natural honey',60,15),(50,1,'Canned Tomatoes Diced','Can',1.29,'Diced canned tomatoes',200,50),(50,2,'Canned Tomatoes Whole','Can',1.29,'Whole canned tomatoes',180,40),(51,1,'Canned Tuna in Water','Can',1.49,'Chunk light tuna in water',160,40),(51,2,'Canned Tuna in Oil','Can',1.69,'Chunk light tuna in oil',150,35),(52,1,'Spicy Salsa Jar','Jar',2.99,'Jar of zesty salsa with a kick',130,30),(52,2,'Spicy Salsa Bulk','lb',5.99,'Bulk zesty salsa for catering',50,10),(53,1,'BBQ Sauce Bottle','Bottle',2.99,'Rich and smoky BBQ sauce',120,20),(53,2,'BBQ Sauce Squeeze','Bottle',3.49,'Squeeze bottle of BBQ sauce',100,25),(54,1,'Mustard Classic','Bottle',1.99,'Classic yellow mustard bottle',140,40),(54,2,'Mustard Spicy Brown','Bottle',2.29,'Spicy brown mustard bottle',120,30),(55,1,'Ketchup Bottle','Bottle',2.49,'Tomato ketchup bottle',160,35),(55,2,'Ketchup Squeeze Pack','Pack',0.99,'Squeeze pack of tomato ketchup',200,60),(56,1,'Soy Sauce Bottle Small','Bottle',2.99,'Small bottle of traditional soy sauce',130,25),(56,2,'Soy Sauce Bottle Large','Bottle',5.49,'Large bottle of traditional soy sauce',70,15),(57,1,'Green Olives Jar','Jar',3.99,'Jar of pitted green olives',110,20),(57,2,'Green Olives Bulk','lb',6.99,'Bulk pitted green olives',50,10),(58,1,'Black Beans Can','Can',1.49,'Can of ready-to-use black beans',180,45),(58,2,'Black Beans Dry Bulk','lb',2.49,'Bulk dry black beans',60,15),(59,1,'Coconut Water Small','Bottle',1.99,'Small bottle of hydrating coconut water',120,30),(59,2,'Coconut Water Large','Bottle',3.49,'Large bottle of hydrating coconut water',80,20),(60,1,'Soy Milk Carton','Carton',2.99,'Carton of dairy-free soy milk',130,25),(60,2,'Soy Milk Bottle','Bottle',4.99,'Bottle of dairy-free soy milk',90,20);
/*!40000 ALTER TABLE `t_product_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_products`
--

DROP TABLE IF EXISTS `t_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_products` (
  `pk_product_id` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`pk_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products`
--

LOCK TABLES `t_products` WRITE;
/*!40000 ALTER TABLE `t_products` DISABLE KEYS */;
INSERT INTO `t_products` VALUES (1,'Organic Red Apples','Fruits','Crisp and sweet organic apples from local orchards.'),(2,'Whole Wheat Bread','Bakery','Freshly baked bread made with 100% whole wheat flour.'),(3,'Atlantic Salmon','Seafood','Fresh Atlantic salmon, rich in Omega-3 fatty acids.'),(4,'Angus Beef Steak','Meat','Premium cuts of Angus beef, perfect for grilling.'),(5,'Spaghetti Pasta','Pasta & Rice','Classic Italian pasta made from durum wheat semolina.'),(6,'Natural Yogurt','Dairy','Creamy yogurt with live probiotics and no added sugar.'),(7,'Almond Milk','Beverages','Dairy-free milk alternative made from real almonds.'),(8,'Cage-Free Brown Eggs','Eggs','Nutritious eggs from hens raised in cage-free environments.'),(9,'Organic Spinach','Vegetables','Fresh organic spinach, washed and ready to eat.'),(10,'Ripe Avocados','Produce','Rich and creamy avocados, great for guacamole.'),(11,'Cheddar Cheese','Dairy','Rich and creamy aged cheddar cheese.'),(12,'Greek Yogurt','Dairy','Thick and creamy yogurt with a hint of tartness.'),(13,'Organic Milk','Dairy','Organic milk from grass-fed cows.'),(14,'Espresso Coffee Beans','Beverages','Dark roasted beans with a rich, bold flavor.'),(15,'Green Tea','Beverages','Refreshing green tea rich in antioxidants.'),(16,'Mineral Water','Beverages','Pure spring water with added minerals for taste.'),(17,'Quinoa','Pasta & Rice','Nutritious whole-grain quinoa, gluten-free and high in protein.'),(18,'Brown Rice','Pasta & Rice','Whole-grain brown rice with a nutty flavor.'),(19,'Raspberry Jam','Breakfast Foods','Jam made with ripe raspberries and pure cane sugar.'),(20,'Corn Flakes','Breakfast Foods','Crunchy corn flakes, a classic breakfast cereal.'),(21,'Maple Syrup','Breakfast Foods','Pure maple syrup, perfect for pancakes and waffles.'),(22,'Chicken Breasts','Meat','Boneless and skinless chicken breasts, versatile for any dish.'),(23,'Pork Chops','Meat','Juicy and tender pork chops, ready for the grill.'),(24,'Lamb Shoulder','Meat','Rich and flavorful lamb shoulder, ideal for slow cooking.'),(25,'Tilapia Fillets','Seafood','Mild-flavored tilapia, perfect for quick and healthy meals.'),(26,'Shrimp','Seafood','Fresh shrimp, cleaned and deveined, ready to cook.'),(27,'Cod Fish','Seafood','Flaky and mild white fish, perfect for fish and chips.'),(28,'Kale','Vegetables','Nutrient-dense kale, great for salads and smoothies.'),(29,'Sweet Potatoes','Vegetables','Versatile sweet potatoes, rich in vitamins and fiber.'),(30,'Baby Carrots','Vegetables','Convenient baby carrots, peeled and ready to snack on.'),(31,'Fuji Apples','Fruits','Crisp and juicy Fuji apples with a balanced sweet-tart flavor.'),(32,'Bananas','Fruits','Ripe bananas, full of potassium and perfect for on-the-go.'),(33,'Blueberries','Fruits','Plump and sweet blueberries, ideal for baking or snacking.'),(34,'Rye Bread','Bakery','Hearty rye bread with a distinctive flavor, perfect for sandwiches.'),(35,'Croissants','Bakery','Flaky and buttery croissants, baked fresh daily.'),(36,'Bagels','Bakery','Chewy bagels, available in various flavors.'),(37,'Chocolate Chip Cookies','Snacks','Classic cookies with rich chocolate chips.'),(38,'Pretzels','Snacks','Salty and crunchy pretzels, a perfect snack anytime.'),(39,'Almonds','Snacks','Whole almonds, a healthy and satisfying snack.'),(40,'Olive Oil','Cooking Essentials','Extra virgin olive oil with a fruity flavor profile.'),(41,'Balsamic Vinegar','Cooking Essentials','Aged balsamic vinegar, ideal for dressings and marinades.'),(42,'Sea Salt','Cooking Essentials','Natural sea salt, perfect for seasoning any dish.'),(43,'Pepperoni Pizza','Frozen Foods','Ready-to-bake pepperoni pizza with a crispy crust.'),(44,'Ice Cream','Frozen Foods','Creamy ice cream in various flavors for a sweet treat.'),(45,'Frozen Peas','Frozen Foods','Frozen green peas, a convenient and healthy side dish.'),(46,'Granola Bars','Snacks','Hearty granola bars made with whole grains and honey.'),(47,'Rice Cakes','Snacks','Light and airy rice cakes, a guilt-free snacking option.'),(48,'Peanut Butter','Pantry Items','Smooth peanut butter, made with roasted peanuts.'),(49,'Honey','Pantry Items','Natural honey, perfect as a sweetener or in recipes.'),(50,'Canned Tomatoes','Pantry Items','Diced canned tomatoes, a versatile pantry staple.'),(51,'Canned Tuna','Pantry Items','Chunk light tuna in water, great for sandwiches and salads.'),(52,'Spicy Salsa','Pantry Items','Zesty salsa with a kick, perfect for dipping or as a condiment.'),(53,'BBQ Sauce','Pantry Items','Rich and smoky BBQ sauce, ideal for grilling.'),(54,'Mustard','Pantry Items','Classic yellow mustard, a must-have for hot dogs and burgers.'),(55,'Ketchup','Pantry Items','Tomato ketchup with a perfect balance of sweet and tangy.'),(56,'Soy Sauce','Pantry Items','Traditional soy sauce, a staple for Asian cuisine.'),(57,'Green Olives','Pantry Items','Pitted green olives, great as a snack or in recipes.'),(58,'Black Beans','Pantry Items','Canned black beans, ready to use in soups or salads.'),(59,'Coconut Water','Beverages','Hydrating coconut water, rich in electrolytes.'),(60,'Soy Milk','Beverages','Dairy-free soy milk, a great source of protein.');
/*!40000 ALTER TABLE `t_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reduction_promotions`
--

DROP TABLE IF EXISTS `t_reduction_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_reduction_promotions` (
  `pk_promotion_id` int NOT NULL,
  `threshold_amount` float DEFAULT NULL,
  `discount_amount` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`pk_promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reduction_promotions`
--

LOCK TABLES `t_reduction_promotions` WRITE;
/*!40000 ALTER TABLE `t_reduction_promotions` DISABLE KEYS */;
INSERT INTO `t_reduction_promotions` VALUES (1,100,10,'2023-04-01','2023-04-10'),(2,200,20,'2023-04-11','2023-04-20'),(3,300,30,'2023-04-21','2023-04-30'),(4,150,15,'2023-05-01','2023-05-10'),(5,250,25,'2023-05-11','2023-05-20'),(6,350,35,'2023-05-21','2023-05-30'),(7,120,12,'2023-06-01','2023-06-10'),(8,220,22,'2023-06-11','2023-06-20'),(9,320,32,'2023-06-21','2023-06-30'),(10,180,18,'2023-07-01','2023-07-10');
/*!40000 ALTER TABLE `t_reduction_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sales_reports`
--

DROP TABLE IF EXISTS `t_sales_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_sales_reports` (
  `pk_sales_report_id` int NOT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_sales` float DEFAULT NULL,
  `total_revenue` float DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_sales_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sales_reports`
--

LOCK TABLES `t_sales_reports` WRITE;
/*!40000 ALTER TABLE `t_sales_reports` DISABLE KEYS */;
INSERT INTO `t_sales_reports` VALUES (1,'Weekly','2023-03-01','2023-03-07',12345.5,15342.8,'2023-03-08 09:00:00'),(2,'Monthly','2023-02-01','2023-02-28',23456.8,28906.5,'2023-03-01 09:00:00'),(3,'Annual','2022-01-01','2022-12-31',34567.9,42500,'2023-01-01 09:00:00'),(4,'Quarterly','2023-01-01','2023-03-31',45678.1,56007.8,'2023-04-01 09:00:00'),(5,'Weekly','2023-03-08','2023-03-14',56789.2,69854.2,'2023-03-15 09:00:00'),(6,'Monthly','2023-03-01','2023-03-31',12345.5,15000,'2023-04-01 09:00:00'),(7,'Weekly','2023-03-15','2023-03-21',23456.8,28765.8,'2023-03-22 09:00:00'),(8,'Quarterly','2022-10-01','2022-12-31',34567.9,42345.6,'2023-01-01 09:00:00'),(9,'Annual','2021-01-01','2021-12-31',45678.1,55987.9,'2022-01-01 09:00:00'),(10,'Weekly','2023-03-22','2023-03-28',56789.2,69012.5,'2023-03-29 09:00:00');
/*!40000 ALTER TABLE `t_sales_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_supplier_contacts`
--

DROP TABLE IF EXISTS `t_supplier_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_supplier_contacts` (
  `pk_contact_id` int NOT NULL,
  `fk_supplier_id` int DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `phone_number` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_contact_id`),
  KEY `fk_supplier_id` (`fk_supplier_id`),
  CONSTRAINT `t_supplier_contacts_ibfk_1` FOREIGN KEY (`fk_supplier_id`) REFERENCES `t_suppliers` (`pk_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_supplier_contacts`
--

LOCK TABLES `t_supplier_contacts` WRITE;
/*!40000 ALTER TABLE `t_supplier_contacts` DISABLE KEYS */;
INSERT INTO `t_supplier_contacts` VALUES (1,101,'John Doe','Sales Representative',1234567890,'johndoe@email.com'),(2,102,'Jane Smith','Account Manager',1234567891,'janesmith@email.com'),(3,103,'Michael Brown','Customer Service',1234567892,'michaelb@email.com'),(4,104,'Lisa White','Quality Assurance',1234567893,'lisaw@email.com'),(5,105,'Mark Jones','Procurement Manager',1234567894,'markj@email.com'),(6,106,'Emily Davis','Logistics Coordinator',1234567895,'emilyd@email.com'),(7,107,'David Wilson','Marketing Specialist',1234567896,'davidw@email.com'),(8,108,'Sarah Miller','Production Supervisor',1234567897,'sarahm@email.com'),(9,109,'James Taylor','Technical Support',1234567898,'jamest@email.com'),(10,110,'Laura Anderson','Operations Manager',1234567899,'lauraa@email.com');
/*!40000 ALTER TABLE `t_supplier_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_suppliers`
--

DROP TABLE IF EXISTS `t_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_suppliers` (
  `pk_supplier_id` int NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_suppliers`
--

LOCK TABLES `t_suppliers` WRITE;
/*!40000 ALTER TABLE `t_suppliers` DISABLE KEYS */;
INSERT INTO `t_suppliers` VALUES (101,'Fresh Farm Produce','123 Country Road, Ruralville','www.freshfarmproduce.com'),(102,'Oceanic Seafoods','456 Coastal Avenue, Seaport','www.oceanicseafoods.com'),(103,'Grand Grains Ltd','789 Wheatfield Blvd, Farmtown','www.grandgrains.com'),(104,'Dairy Delights Inc','321 Milky Way, Dairyland','www.dairydelightsinc.com'),(105,'Poultry Providers','654 Cluck Street, Chickenville','www.poultryproviders.com'),(106,'Quality Quenchers','987 Thirsty Thoroughfare, Beverageburg','www.qualityquenchers.com'),(107,'Crispy Crunch Snacks','269 Snack Avenue, Snacktown','www.crispycrunchsnacks.com'),(108,'Bakery Bliss','852 Freshloaf Road, Bakersville','www.bakerybliss.com'),(109,'Select Meats','741 Steak Street, Meatsville','www.selectmeats.com'),(110,'Farm Fresh Eggs','963 Yolk Road, Eggstown','www.farmfresheggs.com');
/*!40000 ALTER TABLE `t_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_supply_records`
--

DROP TABLE IF EXISTS `t_supply_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_supply_records` (
  `pk_supply_record_id` int NOT NULL,
  `fk_supply_product_id` int DEFAULT NULL,
  `fk_supply_variant_id` int DEFAULT NULL,
  `fk_supplier_id` int DEFAULT NULL,
  `supply_date` date DEFAULT NULL,
  `supply_quantity` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `pay_term` text,
  PRIMARY KEY (`pk_supply_record_id`),
  KEY `fk_supply_product_id` (`fk_supply_product_id`,`fk_supply_variant_id`),
  KEY `fk_supplier_id` (`fk_supplier_id`),
  CONSTRAINT `t_supply_records_ibfk_1` FOREIGN KEY (`fk_supply_product_id`, `fk_supply_variant_id`) REFERENCES `t_product_variants` (`pk_product_id`, `pk_variant_id`),
  CONSTRAINT `t_supply_records_ibfk_2` FOREIGN KEY (`fk_supplier_id`) REFERENCES `t_suppliers` (`pk_supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_supply_records`
--

LOCK TABLES `t_supply_records` WRITE;
/*!40000 ALTER TABLE `t_supply_records` DISABLE KEYS */;
INSERT INTO `t_supply_records` VALUES (1,1,1,101,'2023-04-01',150,890,'Net 30 days'),(2,1,2,102,'2023-04-02',200,130,'Net 30 days'),(3,2,1,103,'2023-04-03',100,250,'Net 45 days'),(4,2,2,104,'2023-04-04',120,400,'Net 45 days'),(5,3,1,105,'2023-04-05',60,500,'Net 30 days'),(6,3,2,106,'2023-04-06',40,680,'Net 60 days'),(7,4,1,107,'2023-04-07',50,600,'Net 30 days'),(8,4,2,108,'2023-04-08',45,450,'Net 30 days'),(9,5,1,109,'2023-04-09',160,230,'Net 45 days'),(10,5,2,110,'2023-04-10',180,170,'Net 45 days'),(11,6,1,101,'2023-04-11',130,250,'Net 60 days'),(12,6,2,102,'2023-04-12',100,340,'Net 60 days'),(13,7,1,103,'2023-04-13',210,300,'Net 30 days'),(14,7,2,104,'2023-04-14',160,390,'Net 30 days'),(15,8,1,105,'2023-04-15',110,320,'Net 45 days'),(16,8,2,106,'2023-04-16',130,240,'Net 45 days'),(17,9,1,107,'2023-04-17',90,260,'Net 60 days'),(18,9,2,108,'2023-04-18',80,280,'Net 60 days'),(19,10,1,109,'2023-04-19',190,350,'Net 30 days'),(20,10,2,110,'2023-04-20',100,490,'Net 30 days'),(21,11,1,101,'2023-04-21',90,850,'Net 45 days'),(22,11,2,102,'2023-04-22',70,660,'Net 45 days'),(23,12,1,103,'2023-04-23',120,110,'Net 60 days'),(24,12,2,104,'2023-04-24',85,300,'Net 60 days'),(25,13,1,105,'2023-04-25',105,500,'Net 30 days'),(26,13,2,106,'2023-04-26',80,390,'Net 30 days'),(27,14,1,107,'2023-04-27',130,1200,'Net 45 days'),(28,14,2,108,'2023-04-28',110,990,'Net 45 days'),(29,15,1,109,'2023-04-29',140,460,'Net 60 days'),(30,15,2,110,'2023-04-30',120,480,'Net 60 days'),(31,1,1,101,'2023-05-01',150,870,'Net 30 days'),(32,2,1,102,'2023-05-02',100,290,'Net 45 days'),(33,3,2,103,'2023-05-03',45,720,'Net 60 days'),(34,4,1,104,'2023-05-04',55,650,'Net 30 days'),(35,5,2,105,'2023-05-05',185,175,'Net 45 days'),(36,6,1,106,'2023-05-06',135,260,'Net 60 days'),(37,7,2,107,'2023-05-07',155,385,'Net 30 days'),(38,8,1,108,'2023-05-08',115,315,'Net 45 days'),(39,9,2,109,'2023-05-09',85,275,'Net 60 days'),(40,10,1,110,'2023-05-10',195,360,'Net 30 days'),(41,16,1,101,'2023-04-01',250,174.3,'Net 30'),(42,16,2,102,'2023-04-02',200,208.6,'Net 30'),(43,17,1,103,'2023-04-03',150,314.1,'Net 60'),(44,17,2,104,'2023-04-04',120,503.64,'Net 60'),(45,18,1,105,'2023-04-05',180,251.58,'Net 30'),(46,18,2,106,'2023-04-06',100,349.3,'Net 30'),(47,19,1,107,'2023-04-07',90,222.57,'Net 30'),(48,19,2,108,'2023-04-08',80,335.16,'Net 60'),(49,20,1,109,'2023-04-09',130,271.53,'Net 30'),(50,20,2,110,'2023-04-10',70,244.93,'Net 60'),(51,21,1,101,'2023-04-11',60,335.58,'Net 30'),(52,21,2,102,'2023-04-12',50,524.25,'Net 30'),(53,22,1,103,'2023-04-13',220,307.86,'Net 60'),(54,22,2,104,'2023-04-14',160,529.18,'Net 60'),(55,23,1,105,'2023-04-15',170,419.58,'Net 30'),(56,23,2,106,'2023-04-16',100,602.37,'Net 30'),(57,24,1,107,'2023-04-17',95,629.65,'Net 30'),(58,24,2,108,'2023-04-18',55,1015.65,'Net 60'),(59,25,1,109,'2023-04-19',130,461.13,'Net 30'),(60,25,2,110,'2023-04-20',95,716.83,'Net 60'),(61,26,1,101,'2023-04-21',110,559.89,'Net 30'),(62,26,2,102,'2023-04-22',85,1022.45,'Net 30'),(63,27,1,103,'2023-04-23',120,503.64,'Net 60'),(64,27,2,104,'2023-04-24',75,808.58,'Net 60'),(65,28,1,105,'2023-04-25',160,279.44,'Net 30'),(66,28,2,106,'2023-04-26',130,454.65,'Net 30'),(67,29,1,107,'2023-04-27',140,342.44,'Net 30'),(68,29,2,108,'2023-04-28',105,454.65,'Net 60'),(69,30,1,109,'2023-04-29',210,293.37,'Net 30'),(70,30,2,110,'2023-04-30',160,384.86,'Net 60'),(71,16,1,101,'2023-05-01',260,182.28,'Net 30'),(72,17,2,102,'2023-05-02',130,545.79,'Net 30'),(73,18,1,103,'2023-05-03',190,269.73,'Net 60'),(74,19,2,104,'2023-05-04',85,359.19,'Net 60'),(75,20,1,105,'2023-05-05',135,284.85,'Net 30'),(76,31,1,101,'2023-04-01',150,419.85,'Net 30'),(77,31,2,102,'2023-04-02',200,110.6,'Net 30'),(78,32,1,103,'2023-04-03',150,135.45,'Net 60'),(79,32,2,104,'2023-04-04',180,23.94,'Net 30'),(80,33,1,105,'2023-04-05',200,419.3,'Net 60'),(81,33,2,106,'2023-04-06',60,251.58,'Net 30'),(82,34,1,107,'2023-04-07',100,244.3,'Net 60'),(83,34,2,108,'2023-04-08',85,236.25,'Net 30'),(84,35,1,109,'2023-04-09',80,279.3,'Net 30'),(85,35,2,110,'2023-04-10',150,104.65,'Net 60'),(86,36,1,101,'2023-04-11',100,244.3,'Net 30'),(87,36,2,102,'2023-04-12',110,53.13,'Net 60'),(88,37,1,103,'2023-04-13',70,195.3,'Net 30'),(89,37,2,104,'2023-04-14',180,42.84,'Net 60'),(90,38,1,105,'2023-04-15',120,174.3,'Net 30'),(91,38,2,106,'2023-04-16',200,138.6,'Net 60'),(92,39,1,107,'2023-04-17',90,440.1,'Net 30'),(93,39,2,108,'2023-04-18',50,279.3,'Net 60'),(94,40,1,109,'2023-04-19',120,419.58,'Net 30'),(95,40,2,110,'2023-04-20',60,461.7,'Net 60'),(96,41,1,101,'2023-04-21',100,349.3,'Net 30'),(97,41,2,102,'2023-04-22',50,314.65,'Net 60'),(98,42,1,103,'2023-04-23',140,293.58,'Net 30'),(99,42,2,104,'2023-04-24',70,97.3,'Net 60'),(100,43,1,105,'2023-04-25',60,335.58,'Net 30'),(101,43,2,106,'2023-04-26',90,251.1,'Net 60'),(102,44,1,107,'2023-04-27',150,363.75,'Net 30'),(103,44,2,108,'2023-04-28',140,343.58,'Net 60'),(104,45,1,109,'2023-04-29',120,139.86,'Net 30'),(105,45,2,110,'2023-04-30',70,172.55,'Net 60'),(106,31,1,101,'2023-05-01',160,447.84,'Net 30'),(107,32,2,102,'2023-05-02',190,112.84,'Net 60'),(108,33,1,103,'2023-05-03',170,398.65,'Net 30'),(109,34,2,104,'2023-05-04',95,265.65,'Net 60'),(110,35,1,105,'2023-05-05',75,262.5,'Net 30'),(111,46,1,101,'2023-03-10',100,209.3,'Net 30 days'),(112,46,2,102,'2023-03-11',80,279.3,'Net 30 days'),(113,47,1,103,'2023-03-12',150,209.65,'Net 45 days'),(114,47,2,104,'2023-03-13',100,174.3,'Net 45 days'),(115,48,1,105,'2023-03-14',110,240.45,'Net 60 days'),(116,48,2,106,'2023-03-15',120,240.45,'Net 60 days'),(117,49,1,107,'2023-03-16',90,314.1,'Net 30 days'),(118,49,2,108,'2023-03-17',60,335.58,'Net 30 days'),(119,50,1,109,'2023-03-18',200,180.6,'Net 45 days'),(120,50,2,110,'2023-03-19',180,180.6,'Net 45 days'),(121,51,1,101,'2023-03-20',160,167.44,'Net 60 days'),(122,51,2,102,'2023-03-21',150,176.85,'Net 60 days'),(123,52,1,103,'2023-03-22',130,188.37,'Net 30 days'),(124,52,2,104,'2023-03-23',50,209.65,'Net 30 days'),(125,53,1,105,'2023-03-24',120,167.44,'Net 45 days'),(126,53,2,106,'2023-03-25',100,174.3,'Net 45 days'),(127,54,1,107,'2023-03-26',140,195.72,'Net 60 days'),(128,54,2,108,'2023-03-27',120,192.78,'Net 60 days'),(129,55,1,109,'2023-03-28',160,206.22,'Net 30 days'),(130,55,2,110,'2023-03-29',200,138.6,'Net 30 days'),(131,56,1,101,'2023-03-30',130,188.37,'Net 45 days'),(132,56,2,102,'2023-03-31',70,229.95,'Net 45 days'),(133,57,1,103,'2023-04-01',110,209.3,'Net 60 days'),(134,57,2,104,'2023-04-02',50,244.65,'Net 60 days'),(135,58,1,105,'2023-04-03',180,187.02,'Net 30 days'),(136,58,2,106,'2023-04-04',60,104.65,'Net 30 days'),(137,59,1,107,'2023-04-05',120,139.86,'Net 45 days'),(138,59,2,108,'2023-04-06',80,174.3,'Net 45 days'),(139,60,1,109,'2023-04-07',130,188.37,'Net 60 days'),(140,60,2,110,'2023-04-08',90,209.3,'Net 60 days');
/*!40000 ALTER TABLE `t_supply_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_transaction_details`
--

DROP TABLE IF EXISTS `t_transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_transaction_details` (
  `pk_transaction_id` int NOT NULL,
  `pk_transaction_detail_id` int NOT NULL,
  `fk_product_id` int DEFAULT NULL,
  `fk_variant_id` int DEFAULT NULL,
  `purchasing_quantity` float DEFAULT NULL,
  `discounted_total_price` float DEFAULT NULL,
  PRIMARY KEY (`pk_transaction_id`,`pk_transaction_detail_id`),
  KEY `fk_product_id` (`fk_product_id`,`fk_variant_id`),
  CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`pk_transaction_id`) REFERENCES `t_transaction_records` (`pk_transaction_id`),
  CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`fk_product_id`, `fk_variant_id`) REFERENCES `t_product_variants` (`pk_product_id`, `pk_variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_transaction_details`
--

LOCK TABLES `t_transaction_details` WRITE;
/*!40000 ALTER TABLE `t_transaction_details` DISABLE KEYS */;
INSERT INTO `t_transaction_details` VALUES (1,1,1,1,2,11.98),(1,2,3,1,1,8.99),(2,1,4,2,3,32.97),(3,1,5,2,5,4.95),(3,2,6,1,2,3.98),(4,1,2,1,1,2.99),(4,2,7,2,2,4.98),(5,1,8,1,1,2.99),(5,2,10,2,1,5.49),(6,1,12,1,10,9.9),(6,2,9,2,3,10.47),(7,1,11,1,2,7.98),(8,1,13,2,1,4.99),(8,2,15,1,2,6.98),(9,1,2,2,4,13.96),(10,1,16,1,3,14.97),(10,2,3,2,1,3.33),(11,1,7,1,6,17.94),(12,1,1,2,2,5.98),(12,2,4,1,1,1.99),(13,1,8,2,10,29.9),(13,2,10,1,3,8.97),(14,1,12,2,4,3.96),(14,2,9,1,1,3.99),(15,1,11,2,5,9.95),(15,2,13,1,1,4.99),(16,1,2,2,3,14.97),(16,2,15,2,1,1.99),(17,1,16,2,2,9.98),(17,2,3,1,2,17.98);
/*!40000 ALTER TABLE `t_transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_transaction_records`
--

DROP TABLE IF EXISTS `t_transaction_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_transaction_records` (
  `pk_transaction_id` int NOT NULL,
  `fk_responsible_employee_id` int DEFAULT NULL,
  `fk_customer_id` int DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_time` time DEFAULT NULL,
  `transaction_way` varchar(255) DEFAULT NULL,
  `fk_promotion_id` int DEFAULT NULL,
  `initial_amount` float DEFAULT NULL,
  `discounted_amount` float DEFAULT NULL,
  PRIMARY KEY (`pk_transaction_id`),
  KEY `fk_promotion_id` (`fk_promotion_id`),
  KEY `fk_customer_id` (`fk_customer_id`),
  KEY `fk_responsible_employee_id` (`fk_responsible_employee_id`),
  CONSTRAINT `transaction_records_ibfk_1` FOREIGN KEY (`fk_promotion_id`) REFERENCES `t_reduction_promotions` (`pk_promotion_id`),
  CONSTRAINT `transaction_records_ibfk_2` FOREIGN KEY (`fk_customer_id`) REFERENCES `t_customers` (`pk_customer_id`),
  CONSTRAINT `transaction_records_ibfk_3` FOREIGN KEY (`fk_responsible_employee_id`) REFERENCES `t_employees` (`pk_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_transaction_records`
--

LOCK TABLES `t_transaction_records` WRITE;
/*!40000 ALTER TABLE `t_transaction_records` DISABLE KEYS */;
INSERT INTO `t_transaction_records` VALUES (1,4,34,'2021-05-15','13:45:00','Online',NULL,20.97,20.97),(2,17,76,'2021-05-16','10:30:00','In-store',NULL,32.97,32.97),(3,8,13,'2021-05-17','15:05:00','Online',NULL,8.93,8.93),(4,16,55,'2021-05-18','09:20:00','In-store',NULL,7.97,7.97),(5,3,83,'2021-05-19','14:55:00','Online',NULL,8.48,8.48),(6,9,22,'2021-05-20','08:30:00','In-store',NULL,20.37,20.37),(7,14,48,'2021-05-21','11:45:00','Online',NULL,7.98,7.98),(8,5,69,'2021-05-22','16:15:00','In-store',NULL,11.97,11.97),(9,12,38,'2021-05-23','10:00:00','Online',NULL,13.96,13.96),(10,1,92,'2021-05-23','17:45:00','In-store',NULL,18.3,18.3),(11,7,75,'2021-05-24','12:30:00','Online',NULL,17.94,17.94),(12,2,57,'2021-05-25','16:00:00','In-store',NULL,7.97,7.97),(13,19,65,'2021-05-26','09:20:00','Online',NULL,38.87,38.87),(14,13,27,'2021-05-27','14:55:00','In-store',NULL,7.95,7.95),(15,20,44,'2021-05-28','08:30:00','Online',NULL,14.94,14.94),(16,11,32,'2021-05-29','11:45:00','In-store',NULL,16.96,16.96),(17,6,89,'2021-05-30','16:15:00','Online',NULL,27.96,27.96);
/*!40000 ALTER TABLE `t_transaction_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_variant_discounts`
--

DROP TABLE IF EXISTS `t_variant_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_variant_discounts` (
  `pk_variant_discount_id` int NOT NULL,
  `fk_discount_product_id` int DEFAULT NULL,
  `fk_discount_variant_id` int DEFAULT NULL,
  `variant_discount_rate` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`pk_variant_discount_id`),
  KEY `fk_discount_product_id` (`fk_discount_product_id`,`fk_discount_variant_id`),
  CONSTRAINT `t_variant_discounts_ibfk_1` FOREIGN KEY (`fk_discount_product_id`, `fk_discount_variant_id`) REFERENCES `t_product_variants` (`pk_product_id`, `pk_variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_variant_discounts`
--

LOCK TABLES `t_variant_discounts` WRITE;
/*!40000 ALTER TABLE `t_variant_discounts` DISABLE KEYS */;
INSERT INTO `t_variant_discounts` VALUES (1,1,1,0.1,'2023-04-01','2023-04-07'),(2,1,2,0.15,'2023-05-01','2023-05-15'),(3,2,1,0.05,'2023-04-10','2023-04-20'),(4,3,1,0.2,'2023-06-01','2023-06-15'),(5,4,2,0.25,'2023-07-01','2023-07-10'),(6,5,1,0.1,'2023-08-01','2023-08-31'),(7,6,2,0.15,'2023-04-15','2023-05-01'),(8,7,1,0.05,'2023-05-20','2023-06-20'),(9,8,1,0.1,'2023-09-01','2023-09-15'),(10,9,2,0.2,'2023-10-01','2023-10-07'),(11,10,1,0.12,'2023-11-01','2023-11-10'),(12,10,2,0.25,'2023-11-20','2023-12-05'),(13,11,1,0.08,'2023-09-15','2023-10-01'),(14,12,2,0.3,'2023-08-10','2023-08-25'),(15,13,1,0.05,'2023-07-01','2023-07-20'),(16,13,2,0.1,'2023-04-20','2023-05-05'),(17,14,1,0.15,'2023-03-01','2023-03-31'),(18,15,1,0.2,'2023-06-15','2023-07-01'),(19,15,2,0.1,'2023-08-05','2023-08-20'),(20,4,1,0.18,'2023-12-01','2023-12-15'),(21,16,1,0.1,'2023-04-01','2023-04-07'),(22,17,2,0.15,'2023-04-08','2023-04-15'),(23,18,1,0.05,'2023-04-16','2023-04-22'),(24,19,1,0.2,'2023-04-01','2023-04-07'),(25,20,2,0.25,'2023-04-15','2023-04-20'),(26,21,1,0.3,'2023-04-10','2023-04-17'),(27,22,2,0.1,'2023-04-18','2023-04-25'),(28,23,1,0.15,'2023-04-05','2023-04-12'),(29,24,2,0.05,'2023-04-13','2023-04-19'),(30,25,1,0.2,'2023-04-20','2023-04-30'),(31,26,2,0.1,'2023-04-01','2023-04-08'),(32,27,1,0.25,'2023-04-09','2023-04-15'),(33,28,2,0.15,'2023-04-16','2023-04-22'),(34,29,1,0.05,'2023-04-23','2023-04-29'),(35,30,2,0.2,'2023-04-10','2023-04-17'),(36,16,2,0.1,'2023-04-18','2023-04-24'),(37,17,1,0.2,'2023-04-25','2023-04-30'),(38,18,2,0.15,'2023-04-01','2023-04-07'),(39,19,2,0.05,'2023-04-08','2023-04-14'),(40,20,1,0.3,'2023-04-15','2023-04-21'),(41,31,1,0.1,'2023-04-01','2023-04-07'),(42,32,2,0.15,'2023-05-01','2023-05-08'),(43,33,1,0.05,'2023-06-01','2023-06-15'),(44,34,1,0.2,'2023-07-01','2023-07-07'),(45,35,2,0.1,'2023-08-01','2023-08-10'),(46,36,1,0.25,'2023-09-01','2023-09-05'),(47,37,2,0.1,'2023-10-01','2023-10-06'),(48,38,1,0.2,'2023-11-01','2023-11-07'),(49,39,1,0.15,'2023-04-15','2023-04-22'),(50,40,2,0.05,'2023-05-15','2023-05-20'),(51,41,1,0.2,'2023-06-16','2023-06-25'),(52,42,2,0.1,'2023-07-08','2023-07-14'),(53,43,1,0.15,'2023-08-11','2023-08-17'),(54,44,1,0.1,'2023-09-06','2023-09-12'),(55,31,2,0.2,'2023-04-08','2023-04-14'),(56,32,1,0.3,'2023-05-09','2023-05-16'),(57,33,2,0.1,'2023-06-26','2023-06-30'),(58,34,2,0.15,'2023-07-15','2023-07-21'),(59,35,1,0.2,'2023-08-18','2023-08-24'),(60,36,2,0.05,'2023-09-13','2023-09-19'),(61,45,1,0.1,'2023-04-01','2023-04-10'),(62,45,2,0.15,'2023-04-15','2023-04-25'),(63,46,1,0.05,'2023-05-01','2023-05-07'),(64,46,2,0.2,'2023-05-15','2023-05-22'),(65,47,1,0.1,'2023-06-01','2023-06-10'),(66,49,1,0.05,'2023-06-15','2023-06-20'),(67,49,2,0.1,'2023-07-01','2023-07-15'),(68,50,1,0.25,'2023-07-20','2023-07-30'),(69,51,1,0.15,'2023-08-01','2023-08-11'),(70,51,2,0.2,'2023-08-15','2023-08-25'),(71,52,1,0.05,'2023-09-01','2023-09-10'),(72,53,2,0.1,'2023-09-15','2023-09-25'),(73,54,1,0.2,'2023-10-01','2023-10-07'),(74,55,1,0.1,'2023-10-15','2023-10-22'),(75,56,2,0.15,'2023-11-01','2023-11-15'),(76,57,1,0.25,'2023-11-20','2023-11-30'),(77,58,1,0.05,'2023-12-01','2023-12-10'),(78,59,2,0.2,'2023-12-15','2023-12-25'),(79,60,1,0.1,'2024-01-01','2024-01-10'),(80,60,2,0.15,'2024-01-15','2024-01-25');
/*!40000 ALTER TABLE `t_variant_discounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30 11:57:02


