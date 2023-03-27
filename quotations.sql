-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: quotations
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'admins'),(3,'group1'),(4,'group2'),(5,'vvvvv');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (72,2,36),(71,2,35),(70,2,34),(69,2,33),(68,2,32),(67,2,31),(66,2,30),(65,2,29),(64,2,28),(63,2,27),(62,2,26),(61,2,25),(60,2,24),(59,2,23),(58,2,22),(57,2,21),(56,2,20),(55,2,19),(54,2,18),(53,2,17),(52,2,16),(51,2,15),(50,2,14),(49,2,13),(48,2,12),(47,2,11),(46,2,10),(45,2,9),(44,2,8),(43,2,7),(42,2,6),(41,2,5),(40,2,4),(39,2,3),(38,2,2),(37,2,1),(73,4,28),(74,3,35),(75,3,29),(76,3,36),(77,5,34),(78,5,19),(79,5,22);
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
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add school',7,'add_school'),(20,'Can change school',7,'change_school'),(21,'Can delete school',7,'delete_school'),(22,'Can add quotation',8,'add_quotation'),(23,'Can change quotation',8,'change_quotation'),(24,'Can delete quotation',8,'delete_quotation'),(25,'Can add company',9,'add_company'),(26,'Can change company',9,'change_company'),(27,'Can delete company',9,'delete_company'),(28,'Can add itadmin',10,'add_itadmin'),(29,'Can change itadmin',10,'change_itadmin'),(30,'Can delete itadmin',10,'delete_itadmin'),(31,'Can add status',11,'add_status'),(32,'Can change status',11,'change_status'),(33,'Can delete status',11,'delete_status'),(34,'Can add technician',12,'add_technician'),(35,'Can change technician',12,'change_technician'),(36,'Can delete technician',12,'delete_technician'),(37,'Can view log entry',1,'view_logentry'),(38,'Can view permission',2,'view_permission'),(39,'Can view group',3,'view_group'),(40,'Can view user',4,'view_user'),(41,'Can view content type',5,'view_contenttype'),(42,'Can view session',6,'view_session'),(43,'Can view company',9,'view_company'),(44,'Can view itadmin',10,'view_itadmin'),(45,'Can view quotation',8,'view_quotation'),(46,'Can view school',7,'view_school'),(47,'Can view status',11,'view_status'),(48,'Can view technician',12,'view_technician');
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
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(254) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$qEXQYMn5T1MghFjT1xkeQ0$pyxF2PJ9DxUVdn/lbln9HN+IEEgKc1aKb7YHlv0e4Tg=','2023-03-25 10:45:12.968759',1,'admin','Admin','Admin','admin@aaaa.com',1,1,'2018-04-12 10:31:32.079023'),(6,'pbkdf2_sha256$720000$32Qci4rrVzjgc5GdFg5ux5$tgfb2tiKVkVMw6/at8QPdHKuG55JKF4WscD/HfaTtfU=','2023-03-25 10:36:03.882970',0,'user','User','User','',0,1,'2023-03-25 10:35:22.593784');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (5,6,25),(6,6,26),(7,6,27),(8,6,43);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `object_repr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-15 08:05:55.424932','1','admins',1,'[{\"added\": {}}]',3,1),(2,'2018-04-15 08:11:12.960085','2','user',1,'[{\"added\": {}}]',4,1),(3,'2018-04-15 08:19:08.068765','1','admins',3,'',3,1),(4,'2018-04-15 08:41:19.277617','2','admins',1,'[{\"added\": {}}]',3,1),(5,'2018-04-15 08:41:37.527826','3','ahmed',1,'[{\"added\": {}}]',4,1),(6,'2018-04-15 08:41:50.181553','3','ahmed',2,'[{\"changed\": {\"fields\": [\"groups\"]}}]',4,1),(7,'2018-04-17 06:55:45.166006','3','ahmed',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',4,1),(8,'2018-04-17 08:24:01.755390','4','aaaaa',1,'[{\"added\": {}}]',4,1),(9,'2018-04-17 08:28:11.582450','4','aaaaa',2,'[{\"changed\": {\"fields\": [\"user_permissions\"]}}]',4,1);
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
  `app_label` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'quotations','school'),(8,'quotations','quotation'),(9,'quotations','company'),(10,'quotations','itadmin'),(11,'quotations','status'),(12,'quotations','technician');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-05 10:16:01.325059'),(2,'auth','0001_initial','2018-04-05 10:16:04.274615'),(3,'admin','0001_initial','2018-04-05 10:16:05.060214'),(4,'admin','0002_logentry_remove_auto_add','2018-04-05 10:16:05.094239'),(5,'contenttypes','0002_remove_content_type_name','2018-04-05 10:16:05.341133'),(6,'auth','0002_alter_permission_name_max_length','2018-04-05 10:16:05.468381'),(7,'auth','0003_alter_user_email_max_length','2018-04-05 10:16:05.784701'),(8,'auth','0004_alter_user_username_opts','2018-04-05 10:16:05.823758'),(9,'auth','0005_alter_user_last_login_null','2018-04-05 10:16:05.948341'),(10,'auth','0006_require_contenttypes_0002','2018-04-05 10:16:05.957325'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-05 10:16:06.002852'),(12,'auth','0008_alter_user_username_max_length','2018-04-05 10:16:06.328819'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-05 10:16:06.457729'),(14,'sessions','0001_initial','2018-04-05 10:16:06.674754'),(15,'quotations','0001_initial','2018-04-05 10:18:42.366999'),(16,'quotations','0002_auto_20180409_1505','2018-04-09 12:05:53.276832'),(17,'quotations','0003_auto_20180409_1549','2018-04-09 12:49:13.640044'),(18,'quotations','0004_auto_20180410_1055','2018-04-10 08:13:11.190209'),(19,'quotations','0005_quotation_received','2018-04-10 08:13:11.466250'),(20,'quotations','0006_auto_20180411_1244','2018-04-11 09:45:03.738381'),(21,'quotations','0007_auto_20180411_1252','2018-04-11 09:52:50.369084'),(22,'quotations','0008_quotation_requester','2018-04-18 04:54:29.212205'),(23,'quotations','0009_auto_20180418_0944','2018-04-18 06:45:04.158081'),(24,'quotations','0010_quotation_itadmin','2018-04-19 10:28:23.042898'),(25,'quotations','0011_auto_20180422_1315','2018-04-22 10:15:25.201478'),(26,'admin','0003_logentry_add_action_flag_choices','2023-03-24 13:04:35.443282'),(27,'auth','0010_alter_group_name_max_length','2023-03-24 13:04:35.458000'),(28,'auth','0011_update_proxy_permissions','2023-03-24 13:04:35.467584'),(29,'auth','0012_alter_user_first_name_max_length','2023-03-24 13:04:35.481473');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hkyajcrb7ejx8rh41zzjvya5ljnydqqs','NzMzZWUzYmI5ZTYyODQzNGQ0MWRhYjI1NDQ3MTM0MWFjM2ZmNTNmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjYWFjZTIzNjAxOTY0NTFiNjJkMmRhY2NlOWE5ZjJiMTlkODUzOTYxIn0=','2018-05-01 08:33:23.913085'),('czjd3sbv3r7hgvvulm4i69joenc4lwbm','ZDcwMzVmMGZhMmY4NWI5ZmU0MWJiMDQ1ZDMwMDdiZDg3OWU3OGY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmM2MzgxOTRkODE2YTc0NjJmY2IzM2YwMGZiN2FiYWE0ZjRmYTkwIn0=','2018-05-28 11:23:57.823877'),('uusw8q27jir91tmcqzevb3an7ic9ky1p','ZDcwMzVmMGZhMmY4NWI5ZmU0MWJiMDQ1ZDMwMDdiZDg3OWU3OGY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmM2MzgxOTRkODE2YTc0NjJmY2IzM2YwMGZiN2FiYWE0ZjRmYTkwIn0=','2018-06-10 09:43:42.282708'),('6iqtsywlerfpampitla595wic17dyd9r','ZDcwMzVmMGZhMmY4NWI5ZmU0MWJiMDQ1ZDMwMDdiZDg3OWU3OGY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmM2MzgxOTRkODE2YTc0NjJmY2IzM2YwMGZiN2FiYWE0ZjRmYTkwIn0=','2018-06-11 10:38:59.639005'),('mvoq061bbp3uhi3lok2af26wbi4i4bt3','ZDcwMzVmMGZhMmY4NWI5ZmU0MWJiMDQ1ZDMwMDdiZDg3OWU3OGY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmM2MzgxOTRkODE2YTc0NjJmY2IzM2YwMGZiN2FiYWE0ZjRmYTkwIn0=','2018-06-14 09:37:27.873880'),('xol848r9o2cnpuouwmdxyz6tnbotao4b','ZDcwMzVmMGZhMmY4NWI5ZmU0MWJiMDQ1ZDMwMDdiZDg3OWU3OGY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmM2MzgxOTRkODE2YTc0NjJmY2IzM2YwMGZiN2FiYWE0ZjRmYTkwIn0=','2018-06-18 08:17:39.732368'),('lezsl58qlxjasjajz4h48p8jbm4edifj','ZDcwMzVmMGZhMmY4NWI5ZmU0MWJiMDQ1ZDMwMDdiZDg3OWU3OGY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmM2MzgxOTRkODE2YTc0NjJmY2IzM2YwMGZiN2FiYWE0ZjRmYTkwIn0=','2018-07-18 05:03:36.874123'),('fheaebale9a7ww1tx5zxx5gybw4hc8hl','.eJxVjEEOgjAQRe_StWlaZqhTl-45A5mhg6CmTSisjHdXEha6_e-9_zI9b-vUb1WXfk7mYrw5_W7Cw0PzDtKd863YoeR1mcXuij1otV1J-rwe7t_BxHX61g04Cjx6AvRncqo4utaJoCIGjRI9jy0yBBjUN0SOogD4IEwKCGTeH76TNt8:1pg1Oa:LGZzrFMu5KsHphIBVEKud6pUjyqrPWtzcBF566JEEjE','2023-04-08 10:45:12.969867');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations_company`
--

DROP TABLE IF EXISTS `quotations_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations_company`
--

LOCK TABLES `quotations_company` WRITE;
/*!40000 ALTER TABLE `quotations_company` DISABLE KEYS */;
INSERT INTO `quotations_company` VALUES (1,'Company1','company@company.com','44445555');
/*!40000 ALTER TABLE `quotations_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations_itadmin`
--

DROP TABLE IF EXISTS `quotations_itadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations_itadmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `school_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotations_itadmin_school_id_ca4cb88e` (`school_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations_itadmin`
--

LOCK TABLES `quotations_itadmin` WRITE;
/*!40000 ALTER TABLE `quotations_itadmin` DISABLE KEYS */;
INSERT INTO `quotations_itadmin` VALUES (1,'ahmed ahmed','ahmedahmed@example.com','33445566',4),(2,'Mohamed','company@company.com','456456',1),(4,'Ali Ali','ali@example.com','22223333',1),(5,'Kamal Kamal','info@example.com','66666666',4);
/*!40000 ALTER TABLE `quotations_itadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations_quotation`
--

DROP TABLE IF EXISTS `quotations_quotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations_quotation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notes` longtext,
  `created` date NOT NULL,
  `company_id` int DEFAULT NULL,
  `school_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `technician_id` int DEFAULT NULL,
  `received` date DEFAULT NULL,
  `requester` int DEFAULT NULL,
  `itadmin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotations_quotation_company_id_572557e6` (`company_id`),
  KEY `quotations_quotation_school_id_85b156f3` (`school_id`),
  KEY `quotations_quotation_status_id_ecd06f03` (`status_id`),
  KEY `quotations_quotation_technician_id_ed6a8853` (`technician_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations_quotation`
--

LOCK TABLES `quotations_quotation` WRITE;
/*!40000 ALTER TABLE `quotations_quotation` DISABLE KEYS */;
INSERT INTO `quotations_quotation` VALUES (30,'','2018-04-19',1,1,3,1,'2018-04-16',1,NULL),(31,'','2018-04-19',1,1,3,1,'2018-04-16',1,NULL),(32,'tfrytry\r\nنلتغبلعغتلع','2018-04-19',1,1,2,1,NULL,1,NULL),(2,'werwer\r\nwerwerwe\r\nwerwerwer\r\nwerw\r\nerw\r\nerwer\r\nwer\r\nشسيبسيب','2018-04-10',1,1,4,1,'2018-04-09',1,NULL),(3,'','2018-04-10',1,1,1,1,'2018-04-10',NULL,NULL),(29,'','2018-04-18',1,4,3,1,'2018-04-09',1,NULL),(5,'','2018-04-11',1,1,2,1,NULL,NULL,NULL),(28,'','2018-04-18',1,4,1,1,'2018-04-22',1,NULL),(8,'','2018-04-11',1,1,2,2,'2018-04-08',NULL,NULL),(14,'','2018-04-12',1,1,1,2,'2018-04-09',NULL,NULL),(15,'','2018-04-12',1,1,1,1,'2018-04-16',NULL,NULL),(16,'','2018-04-12',1,1,2,2,'2018-04-30',NULL,NULL),(19,'dgfghfgh','2018-04-17',1,1,1,1,'2018-04-10',NULL,NULL),(20,'','2018-04-18',1,1,1,1,'2018-04-17',NULL,NULL),(21,'','2018-04-18',1,1,1,1,'2018-04-17',NULL,NULL),(22,'','2018-04-18',1,1,1,1,'2018-04-02',NULL,NULL),(23,'','2018-04-18',1,1,1,2,'2018-04-16',NULL,NULL),(24,'','2018-04-18',1,1,1,2,'2018-04-17',NULL,NULL),(25,'','2018-04-18',1,1,1,1,'2018-04-16',1,NULL),(26,'','2018-04-18',1,1,2,1,'2018-04-02',1,NULL),(27,'','2018-04-18',1,1,1,1,'2018-04-02',2,NULL),(33,'','2018-04-19',1,1,1,1,'2018-04-16',2,NULL),(34,'','2018-04-19',1,4,4,1,'2018-04-22',2,NULL),(35,'','2018-04-19',1,1,3,1,'2018-04-16',1,NULL),(36,'','2018-04-19',1,1,4,1,'2018-04-15',1,NULL),(37,'','2018-04-19',1,1,2,2,'2018-04-16',2,NULL),(38,'','2018-04-19',1,1,4,2,'2018-04-01',2,'Ali Ali'),(39,'','2018-04-22',1,1,2,1,'2018-04-08',2,'Mohamed'),(40,'','2018-04-22',1,1,3,1,NULL,2,'Ali Ali'),(41,'','2018-04-22',1,1,4,2,'2018-04-08',2,'Mohamed'),(42,'','2018-04-25',1,1,1,1,'2018-04-16',2,'Ali Ali'),(43,'','2018-04-29',1,1,3,1,NULL,2,'Ali Ali'),(45,'شمسنيتشمنسي','2018-06-04',1,1,3,2,'2018-06-18',2,'Mohamed');
/*!40000 ALTER TABLE `quotations_quotation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations_school`
--

DROP TABLE IF EXISTS `quotations_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations_school` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_en` varchar(100) NOT NULL,
  `name_ar` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations_school`
--

LOCK TABLES `quotations_school` WRITE;
/*!40000 ALTER TABLE `quotations_school` DISABLE KEYS */;
INSERT INTO `quotations_school` VALUES (1,'ABC Primary School','مدرسة أ ب ت الابتدائية',''),(4,'abcdefgh','ابتجدههثث','aaaa@aaa.com');
/*!40000 ALTER TABLE `quotations_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations_status`
--

DROP TABLE IF EXISTS `quotations_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations_status`
--

LOCK TABLES `quotations_status` WRITE;
/*!40000 ALTER TABLE `quotations_status` DISABLE KEYS */;
INSERT INTO `quotations_status` VALUES (1,'Open','#001eff'),(2,'pending','#f2e168'),(3,'approved','#88ee6a'),(4,'rejected','#de1717');
/*!40000 ALTER TABLE `quotations_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotations_technician`
--

DROP TABLE IF EXISTS `quotations_technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotations_technician` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotations_technician`
--

LOCK TABLES `quotations_technician` WRITE;
/*!40000 ALTER TABLE `quotations_technician` DISABLE KEYS */;
INSERT INTO `quotations_technician` VALUES (1,'Technician 1','','technician1@example.com',''),(2,'Technician 2','','',''),(3,'aaaa',NULL,NULL,NULL),(4,'aaaaaa',NULL,NULL,NULL);
/*!40000 ALTER TABLE `quotations_technician` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 14:34:02
