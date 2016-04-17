CREATE DATABASE  IF NOT EXISTS `dmblogapi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dmblogapi`;
-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: dmblogapi
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'dudebros');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add cors model',7,'add_corsmodel'),(20,'Can change cors model',7,'change_corsmodel'),(21,'Can delete cors model',7,'delete_corsmodel'),(22,'Can add blog',8,'add_blog'),(23,'Can change blog',8,'change_blog'),(24,'Can delete blog',8,'delete_blog'),(25,'Can add content type',9,'add_contenttype'),(26,'Can change content type',9,'change_contenttype'),(27,'Can delete content type',9,'delete_contenttype'),(28,'Can add content',10,'add_content'),(29,'Can change content',10,'change_content'),(30,'Can delete content',10,'delete_content'),(31,'Can add comment',11,'add_comment'),(32,'Can change comment',11,'change_comment'),(33,'Can delete comment',11,'delete_comment'),(34,'Can add blog',12,'add_blog'),(35,'Can change blog',12,'change_blog'),(36,'Can delete blog',12,'delete_blog'),(37,'Can add content type',13,'add_contenttype'),(38,'Can change content type',13,'change_contenttype'),(39,'Can delete content type',13,'delete_contenttype'),(40,'Can add content',14,'add_content'),(41,'Can change content',14,'change_content'),(42,'Can delete content',14,'delete_content'),(43,'Can add comment',15,'add_comment'),(44,'Can change comment',15,'change_comment'),(45,'Can delete comment',15,'delete_comment'),(46,'Can add application',16,'add_application'),(47,'Can change application',16,'change_application'),(48,'Can delete application',16,'delete_application'),(49,'Can add grant',17,'add_grant'),(50,'Can change grant',17,'change_grant'),(51,'Can delete grant',17,'delete_grant'),(52,'Can add access token',18,'add_accesstoken'),(53,'Can change access token',18,'change_accesstoken'),(54,'Can delete access token',18,'delete_accesstoken'),(55,'Can add refresh token',19,'add_refreshtoken'),(56,'Can change refresh token',19,'change_refreshtoken'),(57,'Can delete refresh token',19,'delete_refreshtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$SpYfIudDL5CJ$zc7KvY/TiavA5C9JE8oiM5XMh8MmXD02b8M6JwyTZCo=','2015-11-08 05:36:07.000000',1,'andrew','','','harris.1305@gmail.com',1,1,'2015-04-26 14:26:32'),(6,'pbkdf2_sha256$20000$u13epAseeI32$YFwvG49oRrtGXXfA/fTDIo9e4olONk1PgIBrugo5lmk=','2015-11-08 05:58:30.447729',1,'merlin','','','m@aol.com',1,1,'2015-11-07 21:00:52'),(8,'pbkdf2_sha256$20000$X45XjuDbrbi7$SvlBlZBNcwf+wn3DOTOSv6w3BkoRMNhfndWg0R06e1Y=',NULL,1,'maria','','','designminted@gmail.com',1,1,'2015-11-08 05:40:40'),(9,'pbkdf2_sha256$20000$yygVsQbwrwdD$vZE7GRD3cn86yegzxUl2YSN7QG0yDErECncK0YS0/SM=',NULL,0,'salem','','','s@aol.com',0,1,'2015-11-09 03:15:04');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,8,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapi_blog`
--

DROP TABLE IF EXISTS `blogapi_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapi_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(250) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapi_blog`
--

LOCK TABLES `blogapi_blog` WRITE;
/*!40000 ALTER TABLE `blogapi_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogapi_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_blog`
--

DROP TABLE IF EXISTS `blogs_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(250) NOT NULL,
  `pub_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_blog_e8701ad4` (`user_id`),
  CONSTRAINT `blogs_blog_user_id_5afb458ef617efc7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_blog`
--

LOCK TABLES `blogs_blog` WRITE;
/*!40000 ALTER TABLE `blogs_blog` DISABLE KEYS */;
INSERT INTO `blogs_blog` VALUES (20,'Wine Rack','2015-11-09 03:47:03',6),(21,'Barn Hop','2015-11-09 03:57:54',6);
/*!40000 ALTER TABLE `blogs_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_blog_contents`
--

DROP TABLE IF EXISTS `blogs_blog_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_blog_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_caption` varchar(250) DEFAULT NULL,
  `content_text` longtext,
  `content_data` longblob,
  `file_extension` varchar(10) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `blog_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_blog_contents_64458f32` (`blog_id`),
  KEY `blogs_blog_contents_417f1b1c` (`content_type_id`),
  CONSTRAINT `blogs__content_type_id_2b7161cc56033c28_fk_blogs_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `blogs_content_type` (`id`),
  CONSTRAINT `blogs_blog_contents_blog_id_5281dfc540fe1976_fk_blogs_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blogs_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_blog_contents`
--

LOCK TABLES `blogs_blog_contents` WRITE;
/*!40000 ALTER TABLE `blogs_blog_contents` DISABLE KEYS */;
INSERT INTO `blogs_blog_contents` VALUES (40,NULL,'<p>A wine rack we made to hang on the wall from reclaimed wood!</p>',NULL,NULL,'2015-11-09 03:47:03',20,1);
INSERT INTO `blogs_blog_contents` VALUES (42,NULL,'<p>Nothing like a fall antique trip!!!</p>',NULL,NULL,'2015-11-09 03:57:54',21,1);
/*!40000 ALTER TABLE `blogs_blog_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_comment`
--

DROP TABLE IF EXISTS `blogs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` longtext NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_comment_f7dd2eca` (`comment_blog_id`),
  CONSTRAINT `blogs_comment_comment_blog_id_60600574a9d92cd0_fk_blogs_blog_id` FOREIGN KEY (`comment_blog_id`) REFERENCES `blogs_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_comment`
--

LOCK TABLES `blogs_comment` WRITE;
/*!40000 ALTER TABLE `blogs_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_content_type`
--

DROP TABLE IF EXISTS `blogs_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_content_type`
--

LOCK TABLES `blogs_content_type` WRITE;
/*!40000 ALTER TABLE `blogs_content_type` DISABLE KEYS */;
INSERT INTO `blogs_content_type` VALUES (1,'TEXT'),(2,'IMAGE');
/*!40000 ALTER TABLE `blogs_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corsheaders_corsmodel`
--

DROP TABLE IF EXISTS `corsheaders_corsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corsheaders_corsmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cors` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsheaders_corsmodel`
--

LOCK TABLES `corsheaders_corsmodel` WRITE;
/*!40000 ALTER TABLE `corsheaders_corsmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `corsheaders_corsmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-11-08 05:42:32','1','dudebros',1,'',3,1),(2,'2015-11-08 05:42:59','7','undefined',3,'',4,1),(3,'2015-11-08 05:43:30','1','andrew',2,'Changed groups.',4,1),(4,'2015-11-08 05:43:50','8','maria',2,'Changed groups.',4,1),(5,'2015-11-08 05:55:12','6','merlin',2,'Changed is_superuser.',4,1),(6,'2015-11-08 05:55:22','6','merlin',2,'Changed is_staff.',4,1),(7,'2015-11-08 05:55:41','6','merlin',2,'Changed password.',4,1),(8,'2015-11-08 06:59:45','1','designmintedui',3,'',16,6);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'blogapi','blog'),(15,'blogapi','comment'),(14,'blogapi','content'),(13,'blogapi','contenttype'),(8,'blogs','blog'),(11,'blogs','comment'),(10,'blogs','content'),(9,'blogs','contenttype'),(5,'contenttypes','contenttype'),(7,'corsheaders','corsmodel'),(18,'oauth2_provider','accesstoken'),(16,'oauth2_provider','application'),(17,'oauth2_provider','grant'),(19,'oauth2_provider','refreshtoken'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-04-26 14:25:23'),(2,'auth','0001_initial','2015-04-26 14:25:23'),(3,'admin','0001_initial','2015-04-26 14:25:23'),(4,'sessions','0001_initial','2015-04-26 14:25:23'),(5,'blogs','0001_initial','2015-04-26 14:34:33'),(6,'contenttypes','0002_remove_content_type_name','2015-08-31 19:21:03'),(7,'auth','0002_alter_permission_name_max_length','2015-08-31 19:21:03'),(8,'auth','0003_alter_user_email_max_length','2015-08-31 19:21:03'),(9,'auth','0004_alter_user_username_opts','2015-08-31 19:21:03'),(10,'auth','0005_alter_user_last_login_null','2015-08-31 19:21:03'),(11,'auth','0006_require_contenttypes_0002','2015-08-31 19:21:03'),(12,'oauth2_provider','0001_initial','2015-11-07 22:02:32'),(13,'oauth2_provider','0002_08_updates','2015-11-07 22:02:32');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('eve7z6n86zajxntvzduq7d6tmc75tr3j','YjExZWVmMGM2ODY2MDNhZWYyMDNhMGZiNTY3MzAwOTIwMTM2YmZmZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzYjE1M2QwY2M5NTZkNzc0NTliZDY3N2Q5NzlkZTAwMmU1MDFlZTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-10-10 19:56:25'),('g3wk4u0ou217clxeef9o3340o9hhobbv','MjllMThlMmM2YzUyM2Y1MzFmNjE5YTI1YjgwYzcyZjAzYzQ5Yjc1OTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4MDJkODE5OWJhMzMwNGEyODVlNjU3ZTIwNGJkZDUwMWU5NmVkY2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=','2015-11-22 05:58:30'),('gcb1ecsdf85cb4zoe7g3d0hlqh50qwax','YjExZWVmMGM2ODY2MDNhZWYyMDNhMGZiNTY3MzAwOTIwMTM2YmZmZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzYjE1M2QwY2M5NTZkNzc0NTliZDY3N2Q5NzlkZTAwMmU1MDFlZTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-09-19 19:02:58');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `D5ac3019ee1c474fd85718b015e3d3a1` (`application_id`),
  KEY `oauth2_provider_accesstoken_94a08da1` (`token`),
  KEY `oauth2_provider_accesst_user_id_5e2f004fdebea22d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `D5ac3019ee1c474fd85718b015e3d3a1` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_accesst_user_id_5e2f004fdebea22d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'bp1LqqEpsg1iiJdXefrfXFFYe1NMWe','2015-11-08 16:02:36.097640','read write groups',2,6),(2,'X9awXjANxfPG5TfIAQkgOMPhDtCmfG','2015-11-08 17:35:09.119739','read write groups',2,6),(3,'yWgFhAChAEAyOxffHnIxfpSNWvQRrK','2015-11-09 01:56:50.820071','read write groups',2,6),(4,'vgGjA3SxdDrOcFdtfiBx52qcmDxJ1n','2015-11-09 01:56:58.187055','read write groups',2,6),(5,'fm6kXG5l8OckoPokV68gJdf18iRL0w','2015-11-09 02:04:52.627515','read write groups',2,6),(6,'HU5FkkbHurl9I3p3NPh3GGhAIA6lJj','2015-11-09 02:05:06.827768','read write groups',2,6),(7,'md1Rusy3hxhB2UXMN4Uz8yhohruGDw','2015-11-09 02:50:05.473643','read write groups',2,6),(8,'y2wFHT5rCKJhL6qCPyNrl4S0f2jZQx','2015-11-09 02:52:36.886876','read write groups',2,6),(9,'Pl3e3pjWZJNi4rGhYUqXCDe7GlisCD','2015-11-09 02:53:16.547443','read write groups',2,6),(10,'LYdYKrl2O5nfDzDIwdTa1iUo2o2Q9E','2015-11-09 02:56:18.994437','read write groups',2,6),(11,'ZRZHBaDd87MNjcarnpsaH9W5qkFmVQ','2015-11-09 03:21:00.257156','read write groups',2,6),(12,'2yszVvNwkqauUJp5PRJtjnPiKBX3hd','2015-11-09 03:21:01.393282','read write groups',2,6),(13,'O3F3hYZZL0XqupxEIaukKnuSQqfAdu','2015-11-09 08:31:29.154220','read write groups',2,6),(14,'vm7KIpVpPfnN1VYHbMN7bw4bXSScnB','2015-11-09 08:34:00.255937','read write groups',2,1),(15,'k666MJ03LKKPr1rIyI7N44x5W5upPL','2015-11-09 13:16:56.988966','read write groups',2,9),(16,'MKniZEYQ3iqBtJvWL9EtgQnvl54zOj','2015-11-09 13:21:54.747358','read write groups',2,9),(17,'eEpTrLxcEr7CtS2uK6S9QkNYAchgjN','2015-11-09 13:23:59.997641','read write groups',2,9),(18,'jhhg9Ocya55cUDEUafDvdyqvsUwZMQ','2015-11-09 13:24:31.502786','read write groups',2,9),(19,'fDhJ8QQq3cz8iiRL2dTVCuVULYpdNq','2015-11-09 14:12:10.123571','read write groups',2,6),(20,'2ncWIoNL2kzXTdseexP8rVhhHa8TO6','2015-11-09 14:18:33.044163','read write groups',2,6),(21,'hoAnx0nauGb7rjmrLk3IpJIzKAJjJO','2015-11-09 14:22:03.497162','read write groups',2,6);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_9d667c2b` (`client_secret`),
  KEY `oauth2_provider_applica_user_id_7fa13387c260b798_fk_auth_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_applica_user_id_7fa13387c260b798_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (2,'nkEBduwKLEcjzDg0BKOx96IpyQdpUxiu145PXu6N','http://localhost:4200','confidential','password','JEi5w8aHQ3nWt7FAP1uXjpiUogn9YLCcJDG4psk7hdYGPUeByCTKwujjiQxV0nY4B54lVM7HciQvlc5Xw4kIPiajsGuisMgJGtai7O7rQgZ9qUM7FR0K0bBJpBG5yHZa','designminted.com',6,0);
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D6b2a4f1402d4f338b690c38b795830a` (`application_id`),
  KEY `oauth2_provider_grant_user_id_3111344894d452da_fk_auth_user_id` (`user_id`),
  KEY `oauth2_provider_grant_c1336794` (`code`),
  CONSTRAINT `D6b2a4f1402d4f338b690c38b795830a` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_3111344894d452da_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `access_token_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  KEY `d3e264ceec355cabed6ff9976fc42a06` (`application_id`),
  KEY `oauth2_provider_refresh_user_id_3f695b639cfbc9a3_fk_auth_user_id` (`user_id`),
  KEY `oauth2_provider_refreshtoken_94a08da1` (`token`),
  CONSTRAINT `b58d9cb3b93afb36b11b7741bf1bcc1a` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `d3e264ceec355cabed6ff9976fc42a06` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refresh_user_id_3f695b639cfbc9a3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'ytE5kCRd695hosb2CMpOMml5GADd30',1,2,6),(2,'mCQBC49NqYj9RgyXdp7C6BvEZ1dEWL',2,2,6),(3,'iO4RutQnGMp3hrfodOSieRghhwl9mI',3,2,6),(4,'Uh81rNTvPlZSakjngIQ4YlAucK5wXC',4,2,6),(5,'CZuFnPDxBFsAmkj0xAPO25woSnDQkm',5,2,6),(6,'DjVFil2jFK3m0HKrxufPkZYlahlWoi',6,2,6),(7,'XFlqoOJ35udjNrVQH4XglMT2epHoIH',7,2,6),(8,'HFTym11RMKzZKGgmuDsVaYROMdWbXk',8,2,6),(9,'Ik0mSqinZuB0SWA3Y4UcInUeXDM2hi',9,2,6),(10,'K5nYNxRyu8EYnSz0NIolLZc06dkkPZ',10,2,6),(11,'6x1Hn9bqBwo1AbtXnElZFNE3GsH8nO',11,2,6),(12,'8nQycySRKZ36xp3gpK3oQLoTiTBgJy',12,2,6),(13,'oKsjPvGRF9tRvCj0CsTITiowCc6eJE',13,2,6),(14,'daQcqbzl1eE7t30s2JZB1e0zBhtc8n',14,2,1),(15,'EiQdqh6h3MCVlaH1nQZtrETgy6WaYH',15,2,9),(16,'fBGG9HD1n8n30eU3fMb18RLPujhVMV',16,2,9),(17,'dhbQjY5QSnxUR6Zzx4E7zta2wL4Lyx',17,2,9),(18,'Ls8Nym8Zt0O3797GNR5kAEEhMc7QqL',18,2,9),(19,'JNeWrjnVWMEyPudwTYCJ7o9lbeiwcz',19,2,6),(20,'ihv21jnDGTuSL7FRBzskUBmAQowq78',20,2,6),(21,'3KwyO5r8E66RDH0KHCXuiUnxJ4jwtY',21,2,6);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dmblogapi'
--

--
-- Dumping routines for database 'dmblogapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-10 22:21:36