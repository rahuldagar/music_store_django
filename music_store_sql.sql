CREATE DATABASE  IF NOT EXISTS `music` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `music`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	5.6.15

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
-- Table structure for table `album_tbl`
--

DROP TABLE IF EXISTS `album_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_tbl` (
  `album_id` varchar(12) NOT NULL,
  `album_name` varchar(45) NOT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_tbl`
--

LOCK TABLES `album_tbl` WRITE;
/*!40000 ALTER TABLE `album_tbl` DISABLE KEYS */;
INSERT INTO `album_tbl` VALUES ('1','Album 1'),('2','Album 2'),('3','Album 3'),('4','Album 4');
/*!40000 ALTER TABLE `album_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_tbl`
--

DROP TABLE IF EXISTS `artist_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist_tbl` (
  `artist_id` varchar(12) NOT NULL,
  `artist_name` varchar(45) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_tbl`
--

LOCK TABLES `artist_tbl` WRITE;
/*!40000 ALTER TABLE `artist_tbl` DISABLE KEYS */;
INSERT INTO `artist_tbl` VALUES ('1','A'),('2','B'),('3','C');
/*!40000 ALTER TABLE `artist_tbl` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add album tbl',8,'add_albumtbl'),(23,'Can change album tbl',8,'change_albumtbl'),(24,'Can delete album tbl',8,'delete_albumtbl'),(25,'Can add artist tbl',9,'add_artisttbl'),(26,'Can change artist tbl',9,'change_artisttbl'),(27,'Can delete artist tbl',9,'delete_artisttbl'),(28,'Can add auth group',10,'add_authgroup'),(29,'Can change auth group',10,'change_authgroup'),(30,'Can delete auth group',10,'delete_authgroup'),(31,'Can add auth group permissions',11,'add_authgrouppermissions'),(32,'Can change auth group permissions',11,'change_authgrouppermissions'),(33,'Can delete auth group permissions',11,'delete_authgrouppermissions'),(34,'Can add auth permission',12,'add_authpermission'),(35,'Can change auth permission',12,'change_authpermission'),(36,'Can delete auth permission',12,'delete_authpermission'),(37,'Can add auth user',13,'add_authuser'),(38,'Can change auth user',13,'change_authuser'),(39,'Can delete auth user',13,'delete_authuser'),(40,'Can add auth user groups',14,'add_authusergroups'),(41,'Can change auth user groups',14,'change_authusergroups'),(42,'Can delete auth user groups',14,'delete_authusergroups'),(43,'Can add auth user user permissions',15,'add_authuseruserpermissions'),(44,'Can change auth user user permissions',15,'change_authuseruserpermissions'),(45,'Can delete auth user user permissions',15,'delete_authuseruserpermissions'),(46,'Can add django admin log',16,'add_djangoadminlog'),(47,'Can change django admin log',16,'change_djangoadminlog'),(48,'Can delete django admin log',16,'delete_djangoadminlog'),(49,'Can add django content type',17,'add_djangocontenttype'),(50,'Can change django content type',17,'change_djangocontenttype'),(51,'Can delete django content type',17,'delete_djangocontenttype'),(52,'Can add django session',18,'add_djangosession'),(53,'Can change django session',18,'change_djangosession'),(54,'Can delete django session',18,'delete_djangosession'),(55,'Can add django site',19,'add_djangosite'),(56,'Can change django site',19,'change_djangosite'),(57,'Can delete django site',19,'delete_djangosite'),(58,'Can add genre tbl',20,'add_genretbl'),(59,'Can change genre tbl',20,'change_genretbl'),(60,'Can delete genre tbl',20,'delete_genretbl'),(61,'Can add master db',21,'add_masterdb'),(62,'Can change master db',21,'change_masterdb'),(63,'Can delete master db',21,'delete_masterdb'),(64,'Can add playlist entry',22,'add_playlistentry'),(65,'Can change playlist entry',22,'change_playlistentry'),(66,'Can delete playlist entry',22,'delete_playlistentry'),(67,'Can add release lbl tbl',23,'add_releaselbltbl'),(68,'Can change release lbl tbl',23,'change_releaselbltbl'),(69,'Can delete release lbl tbl',23,'delete_releaselbltbl'),(70,'Can add track id',24,'add_trackid'),(71,'Can change track id',24,'change_trackid'),(72,'Can delete track id',24,'delete_trackid'),(73,'Can add user credentials',25,'add_usercredentials'),(74,'Can change user credentials',25,'change_usercredentials'),(75,'Can delete user credentials',25,'delete_usercredentials'),(76,'Can add user details',26,'add_userdetails'),(77,'Can change user details',26,'change_userdetails'),(78,'Can delete user details',26,'delete_userdetails'),(79,'Can add user libraries',27,'add_userlibraries'),(80,'Can change user libraries',27,'change_userlibraries'),(81,'Can delete user libraries',27,'delete_userlibraries'),(82,'Can add user playlist',28,'add_userplaylist'),(83,'Can change user playlist',28,'change_userplaylist'),(84,'Can delete user playlist',28,'delete_userplaylist');
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
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'root','','','a@b.com','pbkdf2_sha256$12000$T5EKS2M4siTN$AIQ2ODup3JLWYOJ7LyNrbUqZ3d5o3vD9jMvigqH75Qg=',1,1,1,'2014-01-04 22:57:30','2014-01-02 21:50:52'),(2,'user1','','','','pbkdf2_sha256$12000$H6II3wsm9mzw$UH1SZraZ9o6OhkGz/bgf8QXOkZuZNfkSJ/9lPHzIN/I=',0,1,0,'2014-01-04 22:12:39','2014-01-04 21:17:57'),(3,'user2','','','','pbkdf2_sha256$12000$GjVhUwLttsSL$e1ci1nyhbFmRXGZ8w8clXIC22F+kW0xctISR4NvkWzE=',0,1,0,'2014-01-04 21:18:07','2014-01-04 21:18:07'),(4,'user3','','','','pbkdf2_sha256$12000$savOcKnQ39Kp$z63YndSQdtzi7479ep5i8SYueIfvVu5+44Cy0pQVhWo=',0,1,0,'2014-01-04 21:18:38','2014-01-04 21:18:38');
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
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-01-04 21:17:57',1,3,'2','user1',1,''),(2,'2014-01-04 21:18:07',1,3,'3','user2',1,''),(3,'2014-01-04 21:18:39',1,3,'4','user3',1,'');
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'album tbl','MusicApp','albumtbl'),(9,'artist tbl','MusicApp','artisttbl'),(10,'auth group','MusicApp','authgroup'),(11,'auth group permissions','MusicApp','authgrouppermissions'),(12,'auth permission','MusicApp','authpermission'),(13,'auth user','MusicApp','authuser'),(14,'auth user groups','MusicApp','authusergroups'),(15,'auth user user permissions','MusicApp','authuseruserpermissions'),(16,'django admin log','MusicApp','djangoadminlog'),(17,'django content type','MusicApp','djangocontenttype'),(18,'django session','MusicApp','djangosession'),(19,'django site','MusicApp','djangosite'),(20,'genre tbl','MusicApp','genretbl'),(21,'master db','MusicApp','masterdb'),(22,'playlist entry','MusicApp','playlistentry'),(23,'release lbl tbl','MusicApp','releaselbltbl'),(24,'track id','MusicApp','trackid'),(25,'user credentials','MusicApp','usercredentials'),(26,'user details','MusicApp','userdetails'),(27,'user libraries','MusicApp','userlibraries'),(28,'user playlist','MusicApp','userplaylist');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6000ofsif7zrzbmm9jv36yni3xh130w7','NGIwZDUyZTI2MzkyNDAyYTk4M2Q1OGI5ZGRiZTE4Y2Y0ZGY1MWRjOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=','2014-01-18 22:12:39'),('7reh7txm59xbweyf4e7hr9zhvtquu7g3','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-18 22:57:30'),('atru1dvjr39vvyjc748nawhqcp26sr33','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-18 19:10:34'),('b6w6hbfw1iqg9x5mkdewmm3jpwvu4utb','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-17 07:12:39'),('bajl4s3kqa4yzvqwuqvq1c9xdosvcwo4','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-17 07:12:41'),('ctil1z9emua7ej9xv2hg8erjc9qa2wzf','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-17 17:22:53'),('dueo2w6tqm6hf43pu2hxfq6umwg8rg9z','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-18 12:31:35'),('e5f75eb09ef98416184905e78ec7ad8d','ZGVjODM1ZmVmYjRhOTE1Y2UxYjZjNzVmOTY2MGNhOGRmMDNhODE0MDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-01-16 21:56:45'),('g2hpzh7emdlpepntribc3vngm17rj66h','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-18 22:40:08'),('j4nwuz58hcr9wyppcga237877iyoz48m','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-17 08:33:12'),('jh60015e9kr3v54z5lbiigtele36gx68','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-18 16:19:22'),('kqay22x1ppn5qizx2jj9bfp6ht2f3zw4','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-17 07:10:22'),('kzyqnbm3i0fplic620xs8oe30nljr84q','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-17 07:12:57'),('lwi93dsautfd6zjnorwlxd8vyqrngrzi','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-18 19:05:47'),('mzz0p4a6pxklurn9kf0mcv1zfu6p9cdg','NGIwZDUyZTI2MzkyNDAyYTk4M2Q1OGI5ZGRiZTE4Y2Y0ZGY1MWRjOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=','2014-01-18 21:49:49'),('n53085xbdfd953bcsmps06ev7jkgku72','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-18 19:52:52'),('ukuavtd98t2uarphuezf7owkucij3hz2','MjcyZTY5ZDBlZGFlMjI2OTM5MzcxMTI0NjI1MzZiZjdiODgxNjBmNjp7fQ==','2014-01-17 13:39:54'),('uzznwnfczg9m9nxlgrewq9va0ix3pwfs','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-17 19:08:17'),('yonn5gxi3smage7qcizr2jkoo3dx09zi','M2U2Zjk1ZGNjNzg4MDBkM2YwMTYwYjNiNGFiOWVmZDVjMDk4N2EyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-01-18 11:47:40');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_tbl`
--

DROP TABLE IF EXISTS `genre_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_tbl` (
  `genre_id` varchar(12) NOT NULL,
  `genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_tbl`
--

LOCK TABLES `genre_tbl` WRITE;
/*!40000 ALTER TABLE `genre_tbl` DISABLE KEYS */;
INSERT INTO `genre_tbl` VALUES ('1','Romentic'),('2','Inspirational'),('3','Sad');
/*!40000 ALTER TABLE `genre_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_db`
--

DROP TABLE IF EXISTS `master_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_db` (
  `song_id` varchar(12) NOT NULL,
  `song_name` varchar(45) NOT NULL,
  `artist_id` varchar(12) NOT NULL,
  `track_id` varchar(12) NOT NULL,
  `album_id` varchar(12) NOT NULL,
  `release_year` varchar(4) NOT NULL,
  `release_lbl_id` varchar(12) NOT NULL,
  `genre_id` varchar(12) NOT NULL,
  `download_times` int(11) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `FK_master_album_idx` (`album_id`),
  KEY `FK_master_artist_idx` (`artist_id`),
  KEY `FK_master_genre_idx` (`genre_id`),
  KEY `FK_master_release_idx` (`release_lbl_id`),
  KEY `FK_master_track_idx` (`track_id`),
  CONSTRAINT `FK_master_album` FOREIGN KEY (`album_id`) REFERENCES `album_tbl` (`album_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_master_artist` FOREIGN KEY (`artist_id`) REFERENCES `artist_tbl` (`artist_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_master_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre_tbl` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_master_release` FOREIGN KEY (`release_lbl_id`) REFERENCES `release_lbl_tbl` (`release_lbl_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_master_track` FOREIGN KEY (`track_id`) REFERENCES `track_id` (`track_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_db`
--

LOCK TABLES `master_db` WRITE;
/*!40000 ALTER TABLE `master_db` DISABLE KEYS */;
INSERT INTO `master_db` VALUES ('1','Song Name 1','1','1','1','2013','1','1',1),('10','Song Name 10','1','1','1','2012','1','1',10),('11','Song Name 11','1','1','1','2012','1','1',11),('12','Song Name 12','1','1','1','2012','1','1',12),('13','Song Name 13','1','1','1','2012','1','1',13),('14','Song Name 14','1','1','1','2012','1','1',14),('15','Song Name 15','1','1','1','2012','1','1',15),('16','Song Name 16','1','1','1','2012','1','1',16),('17','Song Name 17','1','1','1','2012','1','1',17),('18','Song Name 18','1','1','1','2012','1','1',18),('19','Song Name 19','1','1','1','2012','1','1',19),('2','Song Name 2','2','2','2','2012','2','2',2),('20','Song Name 20','1','1','1','2012','1','1',20),('3','Song Name 3','3','3','3','2011','3','3',3),('4','Song Name 4','1','1','1','2012','1','1',4),('5','Song Name 5','1','1','1','2012','1','1',5),('6','Song Name 6','1','1','1','2012','1','1',6),('7','Song Name 7','1','1','1','2012','1','1',7),('8','Song Name 8','1','1','1','2012','1','1',8),('9','Song Name 9','1','1','1','2012','1','1',9);
/*!40000 ALTER TABLE `master_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_entry`
--

DROP TABLE IF EXISTS `playlist_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist_entry` (
  `pl_id` varchar(12) NOT NULL,
  `song_id` varchar(12) NOT NULL,
  KEY `FK_playlist_entry_idx` (`pl_id`),
  KEY `FK_playlist_songs_idx` (`song_id`),
  CONSTRAINT `FK_playlist_entry` FOREIGN KEY (`pl_id`) REFERENCES `user_playlist` (`pl_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_playlist_songs` FOREIGN KEY (`song_id`) REFERENCES `master_db` (`song_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_entry`
--

LOCK TABLES `playlist_entry` WRITE;
/*!40000 ALTER TABLE `playlist_entry` DISABLE KEYS */;
INSERT INTO `playlist_entry` VALUES ('1','11'),('1','1'),('1','12'),('1','17'),('1','10'),('1','14'),('1','13'),('1','18');
/*!40000 ALTER TABLE `playlist_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_lbl_tbl`
--

DROP TABLE IF EXISTS `release_lbl_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_lbl_tbl` (
  `release_lbl_id` varchar(12) NOT NULL,
  `release_lbl_name` varchar(45) NOT NULL,
  PRIMARY KEY (`release_lbl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_lbl_tbl`
--

LOCK TABLES `release_lbl_tbl` WRITE;
/*!40000 ALTER TABLE `release_lbl_tbl` DISABLE KEYS */;
INSERT INTO `release_lbl_tbl` VALUES ('1','Release Label 1'),('2','Release Label 2'),('3','Release Label 3');
/*!40000 ALTER TABLE `release_lbl_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `track_id`
--

DROP TABLE IF EXISTS `track_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `track_id` (
  `track_id` varchar(12) NOT NULL,
  `track_name` varchar(45) NOT NULL,
  PRIMARY KEY (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `track_id`
--

LOCK TABLES `track_id` WRITE;
/*!40000 ALTER TABLE `track_id` DISABLE KEYS */;
INSERT INTO `track_id` VALUES ('1','Track Name 1'),('2','Track Name 2'),('3','Track Name 3');
/*!40000 ALTER TABLE `track_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credentials`
--

DROP TABLE IF EXISTS `user_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_credentials` (
  `user_id` varchar(12) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credentials`
--

LOCK TABLES `user_credentials` WRITE;
/*!40000 ALTER TABLE `user_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `user_id` varchar(12) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `location` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FK_user_details` FOREIGN KEY (`user_id`) REFERENCES `user_credentials` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_libraries`
--

DROP TABLE IF EXISTS `user_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_libraries` (
  `user_id` varchar(12) NOT NULL,
  `song_id` varchar(12) NOT NULL,
  `listened_times` varchar(12) NOT NULL,
  KEY `FK_user_library_idx` (`user_id`),
  KEY `FK_UL_songs_idx` (`song_id`),
  CONSTRAINT `FK_UL_songs` FOREIGN KEY (`song_id`) REFERENCES `master_db` (`song_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_user_library` FOREIGN KEY (`user_id`) REFERENCES `user_credentials` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_libraries`
--

LOCK TABLES `user_libraries` WRITE;
/*!40000 ALTER TABLE `user_libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_playlist`
--

DROP TABLE IF EXISTS `user_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_playlist` (
  `user_id` varchar(12) NOT NULL,
  `pl_id` varchar(12) NOT NULL,
  `pl_name` varchar(45) NOT NULL,
  UNIQUE KEY `pl_id_UNIQUE` (`pl_id`),
  KEY `FK_user_playlist_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_playlist`
--

LOCK TABLES `user_playlist` WRITE;
/*!40000 ALTER TABLE `user_playlist` DISABLE KEYS */;
INSERT INTO `user_playlist` VALUES ('1','1','Playlist User 1'),('2','2','Playlist User 2'),('3','3','Playlist User 3'),('4','4','Playlist User 4');
/*!40000 ALTER TABLE `user_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'music'
--
/*!50003 DROP PROCEDURE IF EXISTS `addToLibrary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addToLibrary`(IN `user_id_proc` VARCHAR(12), IN `song_id_proc` VARCHAR(12), OUT done_or_not INT)
BEGIN
    INSERT INTO exists_or_not SELECT COUNT(*) FROM `user_libraries` WHERE `user_id`=`user_id_proc` AND `song_id`=`song_id_proc`;
    IF (exists_or_not = 0) THEN
        INSERT INTO
        `user_libraries` (`user_id`,`song_id`) 
        SELECT * FROM (SELECT `user_id_proc`,`song_id_proc`) AS TMP;

        UPDATE `master_db`
        SET `download_times`=`download_times`+1
        WHERE `song_id`=`song_id_proc`;
        SET done_or_not=1;
      ELSE
        SET done_or_not=0;
     END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addToPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addToPlaylist`(IN `pl_id_proc` VARCHAR(12), IN `song_id_proc` VARCHAR(12), OUT done_or_not INT)
BEGIN
    INSERT INTO exists_or_not_1 SELECT COUNT(*) FROM `user_libraries` WHERE `user_id`=`user_id_proc` AND `song_id`=`song_id_proc`;
    INSERT INTO exists_or_not_2 SELECT COUNT(*) FROM `user_playlist` WHERE `user_id`=`user_id_proc` AND `pl_id`=`pl_id_proc`;
    IF (exists_or_not_1>0 AND exists_or_not_2=0) THEN
      INSERT INTO 
      `playlist_entry` (`pl_id`,`song_id`) 
      SELECT * FROM (SELECT `pl_id_proc`,`song_id_proc`) AS TMP;
      SET done_or_not=1;
    END IF;
    IF (exists_or_not_1<0) THEN
      SET done_or_not=2;
    END IF;
    IF (exists_or_not_2>0) THEN
      SET done_or_not=3;
    END IF;
    IF (exists_or_not_1<0 AND exists_or_not_2>0) THEN
      SET done_or_not=4;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createPlaylist`(IN `user_id_proc` VARCHAR(12), IN `pl_name_proc` VARCHAR(45), OUT `done_or_not` INT)
BEGIN
    INSERT INTO exists_or_not SELECT COUNT(*) FROM `user_playlist` WHERE `user_id`=`user_id_proc` AND `pl_name`=`pl_name_proc`;
    IF (exists_or_not=0) THEN
      INSERT INTO time_stamp SELECT NOW();
      INSERT INTO `user_playlist` (`user_id`,`pl_id`,`pl_name`) 
      SELECT * FROM (SELECT `user_id_proc`,CONCAT(FLOOR(RAND() * 401) + 100,time_stamp)) AS TMP;
      SET done_or_not=1;
    ELSE
      SET done_or_not=0;
    END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createRandomPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createRandomPlaylist`(IN `user_id_proc` VARCHAR(12), IN `pl_name_proc` VARCHAR(45), OUT `done_or_not` INT, IN `songs_count` INT)
BEGIN
          -- Declare '_val' variables to read in each record from the cursor
          DECLARE song_id_same_proc VARCHAR(12);

          -- Declare variables used just for cursor and loop control
          DECLARE no_more_rows BOOLEAN;
          DECLARE loop_cntr INT DEFAULT 0;
          DECLARE num_rows INT DEFAULT 0;
          DECLARE songs_cur CURSOR FOR
            SELECT
                `song_id`
            FROM `user_libraries`
            WHERE `song_id` IN (select distinct `song_id` from `user_libraries` where `user_id`=`user_id_proc`) 
            ORDER BY `listened_times` DESC
            LIMIT songs_count;
             
   -- Declare 'handlers' for exceptions
         DECLARE CONTINUE HANDLER FOR NOT FOUND
            SET no_more_rows = TRUE;
    INSERT INTO exists_or_not SELECT COUNT(*) FROM `user_playlist` WHERE `user_id`=`user_id_proc` AND `pl_name`=`pl_name_proc`;
    IF (exists_or_not = 0) THEN
        INSERT INTO pl_id_proc SELECT CONCAT(FLOOR(RAND() * 401) + 100,NOW());
        INSERT INTO `user_playlist` (`user_id`,`pl_id`,`pl_name`) 
        SELECT * FROM (SELECT `user_id_proc`,pl_id_proc) AS TMP;

          INSERT INTO num_rows select FOUND_ROWS();

          the_loop: LOOP

            FETCH  songs_cur
            INTO   song_id_same_proc;
            -- break out of the loop if
              -- 1) there were no records, or
              -- 2) we've processed them all
            IF no_more_rows THEN
                CLOSE songs_cur;
                LEAVE the_loop;
            END IF;

            -- the equivalent of a 'print statement' in a stored procedure
            -- it simply displays output for each loop
            -- count the number of times looped
            SET loop_cntr = loop_cntr + 1;
            INSERT INTO 
            `playlist_entry` (`pl_id`,`song_id`) 
            SELECT * FROM (SELECT `pl_id_proc`,`song_id_same_proc`) AS TMP;
          END LOOP the_loop;

        SET done_or_not=1;
    ELSE
        SET done_or_not=0;
     END IF;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTopArtist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTopArtist`(IN `artistid` VARCHAR(12), IN `no_of_items` INT)
BEGIN
    SELECT *
    FROM `music_store`.`master_db`
    WHERE `artist_id`= `artistid` AND
        `download_times` >= (SELECT MIN(`download_times`) FROM `master_db` where `artist_id`=`artistid` ORDER BY `download_times` DESC LIMIT `no_of_items`);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTopGenre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTopGenre`(IN `genreid` VARCHAR(12), IN `no_of_items` INT)
BEGIN
    SELECT *
    FROM `music_store`.`master_db`
    WHERE `genre_id`= `genreid` AND
        `download_times` >= (SELECT MIN(`download_times`) FROM `master_db` where `genre_id`=`genreid` ORDER BY `download_times` DESC LIMIT `no_of_items`);
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTopTrack` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTopTrack`(IN `no_of_items` INT)
BEGIN
    SELECT *
    FROM `music`.`master_db`
    ORDER BY `download_times` DESC LIMIT `no_of_items`;
  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-05 11:29:54
