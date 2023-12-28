CREATE DATABASE  IF NOT EXISTS `mydatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydatabase`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add customer',7,'add_customer'),(26,'Can change customer',7,'change_customer'),(27,'Can delete customer',7,'delete_customer'),(28,'Can view customer',7,'view_customer'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add order',9,'add_order'),(34,'Can change order',9,'change_order'),(35,'Can delete order',9,'delete_order'),(36,'Can view order',9,'view_order'),(37,'Can add review',10,'add_review'),(38,'Can change review',10,'change_review'),(39,'Can delete review',10,'delete_review'),(40,'Can view review',10,'view_review'),(41,'Can add product',11,'add_product'),(42,'Can change product',11,'change_product'),(43,'Can delete product',11,'delete_product'),(44,'Can view product',11,'view_product'),(45,'Can add tag',12,'add_tag'),(46,'Can change tag',12,'change_tag'),(47,'Can delete tag',12,'delete_tag'),(48,'Can view tag',12,'view_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$c8boaB8UDkgcZo9xTzoAp5$FGq5Ew4Rg+bbpEyJX6GgvVkPK56uf09RpHBLCw6DA0c=','2023-12-28 03:43:18.966130',1,'allen','','','dugeliojohnallen@gmail.com',1,1,'2023-12-28 03:32:57.404747'),(2,'pbkdf2_sha256$600000$UkuMcElNhA13UBo3TUslov$rHLnJXEQ30FC6IEfpGYyw2mKJS6qmlkMPfiRIo5FeUU=',NULL,1,'johnallen','','','dugeliojohnallen@gmail.com',1,1,'2023-12-28 03:59:52.355129'),(3,'pbkdf2_sha256$600000$dYOmFahZzmGQDQlhjn6S5u$1qVQATH+p02RmY6EkaKzXbNgG9abVWcNDdASC/bmJOQ=',NULL,0,'kjmartinez','','','',0,1,'2023-12-28 04:02:53.154246');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basemodel`
--

DROP TABLE IF EXISTS `basemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basemodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basemodel`
--

LOCK TABLES `basemodel` WRITE;
/*!40000 ALTER TABLE `basemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `basemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `base_model_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_model_id` (`base_model_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`base_model_id`) REFERENCES `basemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `base_model_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `base_model_id` (`base_model_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`base_model_id`) REFERENCES `basemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-28 04:02:53.963727','3','kjmartinez',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'myapp','category'),(7,'myapp','customer'),(9,'myapp','order'),(11,'myapp','product'),(10,'myapp','review'),(12,'myapp','tag'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-27 05:37:46.111674'),(2,'auth','0001_initial','2023-12-27 05:37:46.419751'),(3,'admin','0001_initial','2023-12-27 05:37:46.511278'),(4,'admin','0002_logentry_remove_auto_add','2023-12-27 05:37:46.511278'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-27 05:37:46.511278'),(6,'contenttypes','0002_remove_content_type_name','2023-12-27 05:37:46.572099'),(7,'auth','0002_alter_permission_name_max_length','2023-12-27 05:37:46.603766'),(8,'auth','0003_alter_user_email_max_length','2023-12-27 05:37:46.623617'),(9,'auth','0004_alter_user_username_opts','2023-12-27 05:37:46.630743'),(10,'auth','0005_alter_user_last_login_null','2023-12-27 05:37:46.683071'),(11,'auth','0006_require_contenttypes_0002','2023-12-27 05:37:46.683071'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-27 05:37:46.683071'),(13,'auth','0008_alter_user_username_max_length','2023-12-27 05:37:46.734696'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-27 05:37:46.775370'),(15,'auth','0010_alter_group_name_max_length','2023-12-27 05:37:46.788934'),(16,'auth','0011_update_proxy_permissions','2023-12-27 05:37:46.794341'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-27 05:37:46.836915'),(18,'sessions','0001_initial','2023-12-27 05:37:46.850838'),(19,'myapp','0001_initial','2023-12-27 06:11:50.240255'),(20,'myapp','0002_remove_customer_name_customer_address_and_more','2023-12-27 09:43:57.499926'),(21,'myapp','0003_remove_product_created_at_remove_product_updated_at_and_more','2023-12-27 12:41:04.973832'),(22,'myapp','0004_alter_product_image','2023-12-27 12:41:04.981615'),(23,'myapp','0005_auto_20231227_2041','2023-12-27 12:41:04.989547'),(24,'myapp','0006_remove_category_created_at_and_more','2023-12-27 16:26:30.544220');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('o976sscop2tgmgsb5anet7gld898x1p3','.eJxVjMEOwiAQRP-FsyEtBRY8eu83kGXZStXQpLQn479Lkx70OPPezFsE3Lcc9sprmJO4il5cfruI9ORygPTAcl8kLWVb5ygPRZ60ynFJ_Lqd7t9Bxprb2qWhM0SaifWUFLLX4Hsg3yXf8mQZSFnlowPQgwEm13xtDQF4dFF8vvXNN_0:1rIhIk:Gq_zPWXdKbhgazDIU_7iq_PbmTSGgqVN5q1bSuvMHkY','2024-01-11 03:43:18.974127');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_category`
--

DROP TABLE IF EXISTS `myapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_category`
--

LOCK TABLES `myapp_category` WRITE;
/*!40000 ALTER TABLE `myapp_category` DISABLE KEYS */;
INSERT INTO `myapp_category` VALUES (3,'beverages'),(4,'frozen-goods'),(5,'canned-foods'),(6,'snacks'),(8,'soap');
/*!40000 ALTER TABLE `myapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_customer`
--

DROP TABLE IF EXISTS `myapp_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_customer_email_af8c3e10_uniq` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_customer`
--

LOCK TABLES `myapp_customer` WRITE;
/*!40000 ALTER TABLE `myapp_customer` DISABLE KEYS */;
INSERT INTO `myapp_customer` VALUES (1,'2023-12-27 09:47:00.964018','2023-12-27 09:47:00.964018','john.doe@example.com','123 Main St','John','Doe','555-1234'),(3,'2023-12-27 15:23:46.479439','2023-12-27 15:23:46.479439','email@email.com','ph','John','Allen','0909');
/*!40000 ALTER TABLE `myapp_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_order`
--

DROP TABLE IF EXISTS `myapp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_order`
--

LOCK TABLES `myapp_order` WRITE;
/*!40000 ALTER TABLE `myapp_order` DISABLE KEYS */;
INSERT INTO `myapp_order` VALUES (1,'2023-12-12 00:00:00.000000','2023-12-12 00:00:00.000000','2023-12-12'),(2,'2023-12-12 00:00:00.000000','2023-12-12 00:00:00.000000','2023-12-12'),(3,'2023-12-27 15:56:43.941763','2023-12-27 15:56:43.941763','2023-12-12'),(4,'2023-12-27 15:59:26.985343','2023-12-27 15:59:26.985343','2022-11-12');
/*!40000 ALTER TABLE `myapp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_order_products`
--

DROP TABLE IF EXISTS `myapp_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_order_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_order_products_order_id_product_id_cf167c3d_uniq` (`order_id`,`product_id`),
  KEY `myapp_order_products_product_id_b4d6a357_fk_myapp_product_id` (`product_id`),
  CONSTRAINT `myapp_order_products_order_id_04af4861_fk_myapp_order_id` FOREIGN KEY (`order_id`) REFERENCES `myapp_order` (`id`),
  CONSTRAINT `myapp_order_products_product_id_b4d6a357_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_order_products`
--

LOCK TABLES `myapp_order_products` WRITE;
/*!40000 ALTER TABLE `myapp_order_products` DISABLE KEYS */;
INSERT INTO `myapp_order_products` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3);
/*!40000 ALTER TABLE `myapp_order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_product`
--

DROP TABLE IF EXISTS `myapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint NOT NULL,
  `image` longblob,
  PRIMARY KEY (`id`),
  KEY `myapp_product_category_id_f672ddc0_fk_myapp_category_id` (`category_id`),
  CONSTRAINT `myapp_product_category_id_f672ddc0_fk_myapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `myapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_product`
--

LOCK TABLES `myapp_product` WRITE;
/*!40000 ALTER TABLE `myapp_product` DISABLE KEYS */;
INSERT INTO `myapp_product` VALUES (1,'redhorse','beer ng mga tatay',150.00,3,NULL),(2,'tender juicy hotdog','tender and juicy, hatdog for all!',200.00,4,NULL),(3,'spam','canned and ready to eat nutritious food.',120.00,5,NULL),(4,'piatos','snack time with piatos',60.00,6,NULL);
/*!40000 ALTER TABLE `myapp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_review`
--

DROP TABLE IF EXISTS `myapp_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_review_product_id_e8c9f0ec` (`product_id`),
  CONSTRAINT `myapp_review_product_id_e8c9f0ec_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_review`
--

LOCK TABLES `myapp_review` WRITE;
/*!40000 ALTER TABLE `myapp_review` DISABLE KEYS */;
INSERT INTO `myapp_review` VALUES (1,'2023-12-12 00:00:00.000000','2023-12-12 00:00:00.000000','This is so good',1),(2,'2023-12-12 00:00:00.000000','2023-12-12 00:00:00.000000','Yummy!!',2);
/*!40000 ALTER TABLE `myapp_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `base_model_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_model_id` (`base_model_id`),
  CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`base_model_id`) REFERENCES `basemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydatabase'
--

--
-- Dumping routines for database 'mydatabase'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 16:38:33
