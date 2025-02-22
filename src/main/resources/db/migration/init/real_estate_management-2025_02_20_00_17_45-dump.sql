/*!999999\- enable the sandbox mode */
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: real_estate_management
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `refresh_token` longtext DEFAULT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  `role` ENUM('GUEST', 'ADMIN', 'PARTNER') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_price_management`
--

DROP TABLE IF EXISTS `base_price_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_price_management` (
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `real_estate_id` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `fee` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_price_management`
--

LOCK TABLES `base_price_management` WRITE;
/*!40000 ALTER TABLE `base_price_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_price_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_master`
--

DROP TABLE IF EXISTS `city_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_master` (
  `administrative_code` varchar(2) NOT NULL,
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `city_name` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_master`
--

LOCK TABLES `city_master` WRITE;
/*!40000 ALTER TABLE `city_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `city_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_code`
--

DROP TABLE IF EXISTS `common_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `common_code` (
  `category_code` int NOT NULL,
  `created_by` int NOT NULL,
  `inner_code` int NOT NULL,
  `is_delete` int DEFAULT NULL,
  `sort` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `inner_name` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`category_code`,`inner_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_code`
--

LOCK TABLES `common_code` WRITE;
/*!40000 ALTER TABLE `common_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `common_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district_master`
--

DROP TABLE IF EXISTS `district_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district_master` (
  `city_id` int NOT NULL,
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `administrative_code` varchar(10) NOT NULL,
  `district_name` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_master`
--

LOCK TABLES `district_master` WRITE;
/*!40000 ALTER TABLE `district_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `district_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_master`
--

DROP TABLE IF EXISTS `line_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line_master` (
  `created_by` int NOT NULL,
  `district_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `administrative_code` varchar(10) NOT NULL,
  `line_name` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_master`
--

LOCK TABLES `line_master` WRITE;
/*!40000 ALTER TABLE `line_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_management`
--

DROP TABLE IF EXISTS `partner_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_management` (
  `account_id` int NOT NULL,
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `description` longtext NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `partner_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_management`
--

LOCK TABLES `partner_management` WRITE;
/*!40000 ALTER TABLE `partner_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_estate_catalog`
--

DROP TABLE IF EXISTS `real_estate_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `real_estate_catalog` (
  `category_code` int NOT NULL,
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `inner_code` int NOT NULL,
  `is_delete` int DEFAULT NULL,
  `partner_id` int NOT NULL,
  `real_estate_id` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_estate_catalog`
--

LOCK TABLES `real_estate_catalog` WRITE;
/*!40000 ALTER TABLE `real_estate_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_estate_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_estate_image_management`
--

DROP TABLE IF EXISTS `real_estate_image_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `real_estate_image_management` (
  `arrange` int NOT NULL,
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `image_status` tinyint(1) NOT NULL DEFAULT '0',
  `is_delete` int DEFAULT NULL,
  `real_estate_id` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `description` longtext,
  `image_path` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_estate_image_management`
--

LOCK TABLES `real_estate_image_management` WRITE;
/*!40000 ALTER TABLE `real_estate_image_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_estate_image_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `real_estate_management`
--

DROP TABLE IF EXISTS `real_estate_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `real_estate_management` (
  `area` decimal(12,2) NOT NULL,
  `created_by` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `partner_id` int NOT NULL,
  `real_estate_status` tinyint(1) NOT NULL DEFAULT '0',
  `updated_by` int DEFAULT NULL,
  `other_notes` longtext,
  `position` varchar(255) NOT NULL,
  `real_estate_name` varchar(255) NOT NULL DEFAULT '',
  `road_width` varchar(255) NOT NULL,
  `street_type` varchar(255) NOT NULL,
  `website_property_name` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `real_estate_management`
--

LOCK TABLES `real_estate_management` WRITE;
/*!40000 ALTER TABLE `real_estate_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `real_estate_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward_master`
--

DROP TABLE IF EXISTS `ward_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ward_master` (
  `created_by` int NOT NULL,
  `district_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `is_delete` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `administrative_code` varchar(10) NOT NULL,
  `ward_name` varchar(255) NOT NULL,
  `created_at` varbinary(255) NOT NULL,
  `updated_at` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward_master`
--

LOCK TABLES `ward_master` WRITE;
/*!40000 ALTER TABLE `ward_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `ward_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-20  0:17:45
