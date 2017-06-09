-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: wechat
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `t_document`
--

DROP TABLE IF EXISTS `t_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_document` (
  `document_id` int(10) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(100) NOT NULL,
  `send_id` int(10) NOT NULL,
  `receive_id` int(10) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`document_id`),
  UNIQUE KEY `document_name` (`document_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_document`
--

LOCK TABLES `t_document` WRITE;
/*!40000 ALTER TABLE `t_document` DISABLE KEYS */;
INSERT INTO `t_document` VALUES (1,'logo.jpg',1,2,'2017-06-03 15:50:42'),(2,'1.jpg',1,2,'2017-06-04 03:24:07'),(3,'4.jpg',123,2,'2017-06-07 08:11:50'),(4,'1.png',123,2,'2017-06-07 08:29:44'),(5,'86d01e9504b02eac9d20fb1ebdcaf70e.jpeg',123,1,'2017-06-07 08:34:28');
/*!40000 ALTER TABLE `t_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_feedback`
--

DROP TABLE IF EXISTS `t_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_feedback` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `send_id` int(10) NOT NULL,
  `content` varchar(300) NOT NULL DEFAULT '',
  `creat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_feedback`
--

LOCK TABLES `t_feedback` WRITE;
/*!40000 ALTER TABLE `t_feedback` DISABLE KEYS */;
INSERT INTO `t_feedback` VALUES (1,123,'sdaqwd','2017-06-03 06:41:31'),(2,123,'王大山大','2017-06-03 06:46:15'),(4,123,'王大山大按时','2017-06-03 06:46:17'),(5,123,'王大山大阿萨德','2017-06-03 06:47:23'),(6,1,'','2017-06-04 15:46:37');
/*!40000 ALTER TABLE `t_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message` (
  `message_id` int(10) NOT NULL AUTO_INCREMENT,
  `send_id` int(10) NOT NULL,
  `content` varchar(300) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` VALUES (1,0,'小船儿推开波浪','2017-04-25 03:39:32'),(10,0,'123','2017-04-25 06:19:29'),(11,0,'想起了夕阳下的奔跑','2017-04-25 06:36:38'),(12,0,'想起了夕阳下的奔跑','2017-04-25 06:41:09'),(13,123,'那是我逝去的青春','2017-04-25 08:04:44'),(15,111,'请勿打扰','2017-05-03 14:44:52'),(16,111,'好好学习','2017-05-03 14:46:36'),(17,111,'asca撒擦擦','2017-05-03 14:53:28'),(18,111,'ascax','2017-05-03 14:54:04'),(19,111,'asdqwd','2017-05-03 14:56:19'),(20,111,'asdasd','2017-05-03 14:57:42'),(21,123,'第七大道撒','2017-05-26 06:43:19'),(22,1,'傲霜斗雪支持赞啊地区稳定','2017-06-06 06:46:48'),(23,123,'按时大大大世代相传这次完全','2017-06-06 15:15:51'),(25,1,'啊山地自行车','2017-06-09 02:40:57'),(26,2,'强大市场在现场服务分','2017-06-09 02:51:48'),(27,2,'强大所到之处','2017-06-09 02:53:17'),(28,2,'去安神定志','2017-06-09 03:29:33'),(29,123321,'敖厂长VR速度啊啊','2017-06-09 05:23:08');
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message_user`
--

DROP TABLE IF EXISTS `t_message_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message_user` (
  `message_id` int(10) NOT NULL,
  `receive_id` int(10) NOT NULL,
  `known` int(1) NOT NULL DEFAULT '0' COMMENT '0:未读 1:已读'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message_user`
--

LOCK TABLES `t_message_user` WRITE;
/*!40000 ALTER TABLE `t_message_user` DISABLE KEYS */;
INSERT INTO `t_message_user` VALUES (12,111,0),(12,123321,1),(13,111,0),(13,123321,1),(15,123,1),(15,1231,0),(15,123123,0),(15,123321,1),(15,123322,0),(15,12312132,0),(16,111,0),(16,112,0),(17,121,0),(17,122,0),(18,121,0),(18,122,0),(18,123,1),(18,1231,0),(18,123123,0),(18,123321,1),(18,123322,0),(18,12312132,0),(18,123321,1),(18,123322,0),(19,123321,1),(19,123322,0),(19,54130203,0),(20,111,0),(20,112,0),(20,113,0),(20,123321,1),(20,123322,0),(21,123,1),(21,123123,0),(21,123321,1),(21,123322,0),(21,12312132,0),(22,2,1),(23,123321,1),(25,2,1),(26,123321,1),(27,3,0),(28,123321,1),(29,2,1);
/*!40000 ALTER TABLE `t_message_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` int(1) DEFAULT '1' COMMENT '0:女 1:男',
  `role` int(1) NOT NULL DEFAULT '1' COMMENT '1:学生 2:教师 3:管理员',
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `introduction` varchar(300) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'1','1',1,1,NULL,NULL,'','2017-06-03 15:49:50','2017-06-03 15:49:50'),(2,'2','2',1,2,NULL,NULL,'','2017-06-03 15:49:50','2017-06-03 15:49:50'),(3,'3','3',1,3,NULL,NULL,'','2017-06-03 15:49:50','2017-06-03 15:49:50'),(111,'李四','111',1,3,'157623151','1112033232@qq.com','小船儿推开波浪','2017-04-10 08:41:00','2017-05-25 13:07:31'),(112,'qw','qw',1,1,NULL,NULL,'','2017-05-03 14:40:12','2017-05-03 14:40:12'),(113,'qw','qw',1,1,NULL,NULL,'','2017-05-03 14:57:00','2017-05-03 14:57:00'),(123,'张三','123',0,2,'18236254','12312@qq.com','让我们荡起双桨,小船儿推开波浪','2017-04-08 05:15:16','2017-06-07 07:10:13'),(123123,'qw','qweewq',0,1,NULL,NULL,'','2017-04-07 13:42:43','2017-04-15 05:27:57'),(123321,'自行车自行车自行车自行车自行车','123321',1,1,NULL,NULL,'','2017-04-11 14:05:57','2017-04-21 05:45:19'),(123322,'qwe','qwe',0,1,NULL,NULL,'阿萨德','2017-04-06 14:15:22','2017-05-26 03:32:11'),(12312132,'请问','qwe',1,1,NULL,NULL,'','2017-04-06 14:23:41','2017-04-13 06:07:07'),(54130203,'一二三四五六七八九十一二三四五六七八九十','一二三四五六七八九十一二三四五六七八九十',1,2,NULL,NULL,'去打打','2017-04-07 12:19:48','2017-06-02 13:47:00'),(55130606,'左朝阳','qwe',0,1,NULL,NULL,'','2017-04-06 09:03:08','2017-04-15 05:27:57');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-09 20:22:57
