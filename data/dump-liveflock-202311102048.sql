-- MariaDB dump 10.19-11.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: liveflock
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

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
  `id` int(11) NOT NULL,
  `email` varchar(63) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `display_name` varchar(15) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES
(0,'xd@xd.xd','xd','xd','xd','2023-11-10','xd.png'),
(1,'foo1@foo.foo','foo1','foo1','foo1','2023-11-10','foo1.png'),
(2,'foo2@foo.foo','foo2','foo2','foo2','2023-11-10','foo2.png'),
(3,'foo3@foo.foo','foo3','foo3','foo3','2023-11-10','foo3.png'),
(4,'foo4@foo.foo','foo4','foo4','foo4','2023-11-10','foo4.png'),
(5,'foo5@foo.foo','foo5','foo5','foo5','2023-11-10','foo5.png'),
(6,'foo6@foo.foo','foo6','foo6','foo6','2023-11-10','foo6.png'),
(7,'foo7@foo.foo','foo7','foo7','foo7','2023-11-10','foo7.png'),
(8,'foo8@foo.foo','foo8','foo8','foo8','2023-11-10','foo8.png'),
(9,'foo9@foo.foo','foo9','foo9','foo9','2023-11-10','foo9.png'),
(10,'foo10@foo.foo','foo10','foo10','foo10','2023-11-10','foo10.png'),
(11,'foo11@foo.foo','foo11','foo11','foo11','2023-11-10','foo11.png'),
(12,'foo12@foo.foo','foo12','foo12','foo12','2023-11-10','foo12.png'),
(13,'foo13@foo.foo','foo13','foo13','foo13','2023-11-10','foo13.png'),
(14,'foo14@foo.foo','foo14','foo14','foo14','2023-11-10','foo14.png'),
(15,'foo15@foo.foo','foo15','foo15','foo15','2023-11-10','foo15.png'),
(16,'foo16@foo.foo','foo16','foo16','foo16','2023-11-10','foo16.png'),
(17,'foo17@foo.foo','foo17','foo17','foo17','2023-11-10','foo17.png'),
(18,'foo18@foo.foo','foo18','foo18','foo18','2023-11-10','foo18.png'),
(19,'foo19@foo.foo','foo19','foo19','foo19','2023-11-10','foo19.png'),
(20,'foo20@foo.foo','foo20','foo20','foo20','2023-11-10','foo20.png'),
(21,'foo21@foo.foo','foo21','foo21','foo21','2023-11-10','foo21.png'),
(22,'foo22@foo.foo','foo22','foo22','foo22','2023-11-10','foo22.png'),
(23,'foo23@foo.foo','foo23','foo23','foo23','2023-11-10','foo23.png'),
(24,'foo24@foo.foo','foo24','foo24','foo24','2023-11-10','foo24.png'),
(25,'foo25@foo.foo','foo25','foo25','foo25','2023-11-10','foo25.png'),
(26,'foo26@foo.foo','foo26','foo26','foo26','2023-11-10','foo26.png'),
(27,'foo27@foo.foo','foo27','foo27','foo27','2023-11-10','foo27.png'),
(28,'foo28@foo.foo','foo28','foo28','foo28','2023-11-10','foo28.png'),
(29,'foo29@foo.foo','foo29','foo29','foo29','2023-11-10','foo29.png'),
(30,'foo30@foo.foo','foo30','foo30','foo30','2023-11-10','foo30.png'),
(31,'foo31@foo.foo','foo31','foo31','foo31','2023-11-10','foo31.png'),
(32,'foo32@foo.foo','foo32','foo32','foo32','2023-11-10','foo32.png'),
(33,'foo33@foo.foo','foo33','foo33','foo33','2023-11-10','foo33.png'),
(34,'foo34@foo.foo','foo34','foo34','foo34','2023-11-10','foo34.png'),
(35,'foo35@foo.foo','foo35','foo35','foo35','2023-11-10','foo35.png'),
(36,'foo36@foo.foo','foo36','foo36','foo36','2023-11-10','foo36.png'),
(37,'foo37@foo.foo','foo37','foo37','foo37','2023-11-10','foo37.png'),
(38,'foo38@foo.foo','foo38','foo38','foo38','2023-11-10','foo38.png'),
(39,'foo39@foo.foo','foo39','foo39','foo39','2023-11-10','foo39.png'),
(40,'foo40@foo.foo','foo40','foo40','foo40','2023-11-10','foo40.png'),
(41,'foo41@foo.foo','foo41','foo41','foo41','2023-11-10','foo41.png'),
(42,'foo42@foo.foo','foo42','foo42','foo42','2023-11-10','foo42.png'),
(43,'foo43@foo.foo','foo43','foo43','foo43','2023-11-10','foo43.png'),
(44,'foo44@foo.foo','foo44','foo44','foo44','2023-11-10','foo44.png'),
(45,'foo45@foo.foo','foo45','foo45','foo45','2023-11-10','foo45.png'),
(46,'foo46@foo.foo','foo46','foo46','foo46','2023-11-10','foo46.png'),
(47,'foo47@foo.foo','foo47','foo47','foo47','2023-11-10','foo47.png'),
(48,'foo48@foo.foo','foo48','foo48','foo48','2023-11-10','foo48.png'),
(49,'foo49@foo.foo','foo49','foo49','foo49','2023-11-10','foo49.png'),
(50,'foo50@foo.foo','foo50','foo50','foo50','2023-11-10','foo50.png'),
(51,'foo51@foo.foo','foo51','foo51','foo51','2023-11-10','foo51.png'),
(52,'foo52@foo.foo','foo52','foo52','foo52','2023-11-10','foo52.png'),
(53,'foo53@foo.foo','foo53','foo53','foo53','2023-11-10','foo53.png'),
(54,'foo54@foo.foo','foo54','foo54','foo54','2023-11-10','foo54.png'),
(55,'foo55@foo.foo','foo55','foo55','foo55','2023-11-10','foo55.png'),
(56,'foo56@foo.foo','foo56','foo56','foo56','2023-11-10','foo56.png'),
(57,'foo57@foo.foo','foo57','foo57','foo57','2023-11-10','foo57.png'),
(58,'foo58@foo.foo','foo58','foo58','foo58','2023-11-10','foo58.png'),
(59,'foo59@foo.foo','foo59','foo59','foo59','2023-11-10','foo59.png'),
(60,'foo60@foo.foo','foo60','foo60','foo60','2023-11-10','foo60.png'),
(61,'foo61@foo.foo','foo61','foo61','foo61','2023-11-10','foo61.png'),
(62,'foo62@foo.foo','foo62','foo62','foo62','2023-11-10','foo62.png'),
(63,'foo63@foo.foo','foo63','foo63','foo63','2023-11-10','foo63.png'),
(64,'foo64@foo.foo','foo64','foo64','foo64','2023-11-10','foo64.png'),
(65,'foo65@foo.foo','foo65','foo65','foo65','2023-11-10','foo65.png'),
(66,'foo66@foo.foo','foo66','foo66','foo66','2023-11-10','foo66.png'),
(67,'foo67@foo.foo','foo67','foo67','foo67','2023-11-10','foo67.png'),
(68,'foo68@foo.foo','foo68','foo68','foo68','2023-11-10','foo68.png'),
(69,'foo69@foo.foo','foo69','foo69','foo69','2023-11-10','foo69.png'),
(70,'foo70@foo.foo','foo70','foo70','foo70','2023-11-10','foo70.png'),
(71,'foo71@foo.foo','foo71','foo71','foo71','2023-11-10','foo71.png'),
(72,'foo72@foo.foo','foo72','foo72','foo72','2023-11-10','foo72.png'),
(73,'foo73@foo.foo','foo73','foo73','foo73','2023-11-10','foo73.png'),
(74,'foo74@foo.foo','foo74','foo74','foo74','2023-11-10','foo74.png'),
(75,'foo75@foo.foo','foo75','foo75','foo75','2023-11-10','foo75.png'),
(76,'foo76@foo.foo','foo76','foo76','foo76','2023-11-10','foo76.png'),
(77,'foo77@foo.foo','foo77','foo77','foo77','2023-11-10','foo77.png'),
(78,'foo78@foo.foo','foo78','foo78','foo78','2023-11-10','foo78.png'),
(79,'foo79@foo.foo','foo79','foo79','foo79','2023-11-10','foo79.png'),
(80,'foo80@foo.foo','foo80','foo80','foo80','2023-11-10','foo80.png'),
(81,'foo81@foo.foo','foo81','foo81','foo81','2023-11-10','foo81.png'),
(82,'foo82@foo.foo','foo82','foo82','foo82','2023-11-10','foo82.png'),
(83,'foo83@foo.foo','foo83','foo83','foo83','2023-11-10','foo83.png'),
(84,'foo84@foo.foo','foo84','foo84','foo84','2023-11-10','foo84.png'),
(85,'foo85@foo.foo','foo85','foo85','foo85','2023-11-10','foo85.png'),
(86,'foo86@foo.foo','foo86','foo86','foo86','2023-11-10','foo86.png'),
(87,'foo87@foo.foo','foo87','foo87','foo87','2023-11-10','foo87.png'),
(88,'foo88@foo.foo','foo88','foo88','foo88','2023-11-10','foo88.png'),
(89,'foo89@foo.foo','foo89','foo89','foo89','2023-11-10','foo89.png'),
(90,'foo90@foo.foo','foo90','foo90','foo90','2023-11-10','foo90.png'),
(91,'foo91@foo.foo','foo91','foo91','foo91','2023-11-10','foo91.png'),
(92,'foo92@foo.foo','foo92','foo92','foo92','2023-11-10','foo92.png'),
(93,'foo93@foo.foo','foo93','foo93','foo93','2023-11-10','foo93.png'),
(94,'foo94@foo.foo','foo94','foo94','foo94','2023-11-10','foo94.png'),
(95,'foo95@foo.foo','foo95','foo95','foo95','2023-11-10','foo95.png'),
(96,'foo96@foo.foo','foo96','foo96','foo96','2023-11-10','foo96.png'),
(97,'foo97@foo.foo','foo97','foo97','foo97','2023-11-10','foo97.png'),
(98,'foo98@foo.foo','foo98','foo98','foo98','2023-11-10','foo98.png'),
(99,'foo99@foo.foo','foo99','foo99','foo99','2023-11-10','foo99.png'),
(100,'foo100@foo.foo','foo100','foo100','foo100','2023-11-10','foo100.png');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_board`
--

DROP TABLE IF EXISTS `account_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_board` (
  `account` int(11) NOT NULL,
  `board` int(11) NOT NULL,
  `owner` tinyint(1) DEFAULT NULL,
  `editor` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`account`,`board`),
  KEY `board` (`board`),
  CONSTRAINT `account_board_ibfk_1` FOREIGN KEY (`account`) REFERENCES `account` (`id`),
  CONSTRAINT `account_board_ibfk_2` FOREIGN KEY (`board`) REFERENCES `board` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_board`
--

LOCK TABLES `account_board` WRITE;
/*!40000 ALTER TABLE `account_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL,
  `title` varchar(63) NOT NULL,
  `description` varchar(15) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_post`
--

DROP TABLE IF EXISTS `board_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_post` (
  `board` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  PRIMARY KEY (`board`,`post`),
  KEY `board` (`board`),
  KEY `post` (`post`),
  CONSTRAINT `board_post_ibfk_1` FOREIGN KEY (`board`) REFERENCES `board` (`id`),
  CONSTRAINT `board_post_ibfk_2` FOREIGN KEY (`post`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_post`
--

LOCK TABLES `board_post` WRITE;
/*!40000 ALTER TABLE `board_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `title` varchar(63) NOT NULL,
  `content` varchar(15) NOT NULL,
  `creation_date` date NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `parent` (`parent`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author`) REFERENCES `account` (`id`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`parent`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'liveflock'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 20:48:01
