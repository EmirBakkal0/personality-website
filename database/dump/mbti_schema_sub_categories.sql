CREATE DATABASE  IF NOT EXISTS `mbti_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mbti_schema`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mbti_schema
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `sub_cat_id` int NOT NULL,
  `subcategory` text,
  PRIMARY KEY (`sub_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (11,'Baseball'),(12,'Presidents of the USA'),(13,'Actors and Actresses (USA)'),(22,'Basketball'),(23,'Football (Soccer)'),(24,'Football (American)'),(52,'Golf'),(53,'Tennis'),(54,'Hockey'),(55,'Science, Other'),(57,'Technology'),(82,'Writers (Literature, Modern)'),(85,'Hosts & Presenters'),(94,'Criminals'),(118,'Performers'),(207,'Film Directors'),(268,'GovernmentÂ (World)'),(270,'Activists'),(274,'Business'),(275,'Models'),(349,'Famous For Being Famous'),(350,'News & Journalists'),(354,'Ice skating'),(355,'Political Commentators'),(356,'Radicals'),(357,'GovernmentÂ (USA)'),(377,'Boxing'),(440,'Swimming & Diving'),(457,'Poker'),(485,'MMA'),(592,'Artists'),(732,'Classical'),(875,'Culinary Arts'),(1046,'Weightlifting & Strongmen'),(1365,'Skiing & Snowboarding'),(1548,'Kpop'),(1549,'Classic Pop & Contemporary'),(1551,'European, Musicians'),(1553,'World, Musicians'),(1554,'Movie Composers'),(1601,'Latin American, Musicians'),(2570,'People of Law'),(3047,'Asia, Musicians'),(3097,'Game Development'),(3373,'Social, Cultural & Political Commentators'),(3374,'Gaming'),(3375,'Comedians'),(3378,'Artists & Animators'),(3379,'Filmmakers'),(3382,'Scientists, Technology & Educators'),(3384,'ASMR Artists'),(3392,'People of Classic Hollywood'),(3405,'Royal Family (World)'),(3406,'Bodybuilding'),(3419,'Online Fictional Characters'),(3423,'Actors & Actresses (Canada)'),(3424,'Actors and Actresses (UK & Ireland)'),(3425,'Actors & Actresses (Europe)'),(3426,'Actors & Actresses (Oceania)'),(3427,'Actors & Actresses (Asia)'),(3432,'Actors & Actresses (World)'),(3433,'Actors & Actresses (Latin America)'),(3440,'Artists (Comics)'),(3441,'Writers (Comics)'),(3443,'General Vloggers'),(3445,'Psychology & Personal Development'),(3455,'Psychology & Neuroscience'),(3456,'Physics & Astronomy'),(3458,'Writers (Literature, Classic)'),(3459,'Mathematics'),(3460,'Economics'),(3461,'Engineers & Inventors'),(3462,'Chemistry'),(3465,'Biology & MedicineÂ '),(3467,'Wrestling'),(3469,'Renaissance Men'),(3472,'Naturalism'),(3475,'Computer Science'),(3477,'Polymaths'),(3506,'Modern Classical'),(3507,'Missionaries & Preachers'),(3508,'Christianity (The Popes)'),(3509,'Classical Reform'),(3510,'International Leaders'),(3512,'Historical Figures (1800s)'),(3513,'Historical Figures (1900s)'),(3514,'Historical Figures (1700s)'),(3515,'Historical Figures (1600s)'),(3516,'Historical Figures (1500s)'),(3517,'Historical Figures (1400s)'),(3518,'Historical Figures (1st Millenium BCE)'),(3529,'Buzzfeed Employees'),(3541,'Without a Category'),(3546,'Martial Arts'),(3553,'Fashion Designers'),(3583,'Mystery, Horror & True Crime'),(3584,'Internet Personalities (Other)'),(3585,'Hosts, Critics, Producers & Editors'),(3587,'Egyptian'),(3588,'Norse'),(3591,'Mesopotamian'),(3592,'Welsh, Gaelic or Celtic'),(3594,'Indo-European'),(3595,'Zoroastrianism'),(3596,'Shinto'),(3597,'Early Islamic Figures'),(3598,'Primal-Indigenous'),(3599,'Christianity'),(3850,'Comedians'),(4027,'Climbing'),(4355,'Native American'),(4456,'Artists (Animators)'),(4616,'Educators'),(4735,'Other Contemporary Political Figures'),(4784,'Music Managers'),(4785,'First Ladies of the United States'),(4885,'Badminton'),(4937,'Skateboarding'),(5066,'Tycoons of the Past'),(5092,'Film & TV Crew'),(5094,'Government (Middle East)'),(5190,'Voice Acting'),(5273,'Gymnastics'),(5609,'Architects & Designers'),(5643,'Volleyball'),(5712,'Softball'),(5802,'Umpires and Referees '),(5891,'Daredevils and Stunt Performers'),(6072,'Hinduism'),(6073,'Buddhism'),(6074,'Sikhism'),(6075,'Judaism'),(6076,'Taoism'),(6077,'BÃ¡bism and the BahÃ¡Ê¼Ã­ Faith'),(6078,'Jainism'),(6082,'Confucianism'),(6084,'Chinese Traditional'),(6103,'Music Producers & Engineers'),(6109,'Islamic Scholars (Sunni)'),(6110,'Islamic Scholars (Shia)'),(6114,'Religion & Spirituality'),(6115,'Other Classical Religion'),(6447,'Cricket'),(6454,'Motorsport'),(6469,'Rugby'),(7942,'Frisbee'),(7973,'Lacrosse'),(8499,'Wrestling (The Performers)'),(8844,'Linguists '),(9374,'Historians'),(9835,'Other Talented Individuals'),(9836,'Biographical'),(10107,'Brazil, Musicians'),(10189,'Virtual Youtubers'),(10191,'TikTok Stars'),(10230,'Niche Content Creators'),(10290,'Historical Figures (500s)'),(10291,'Historical Figures (1300s)'),(10292,'Historical Figures (1200s)'),(10293,'Historical Figures (1100s)'),(10294,'Historical Figures (1000s)'),(10295,'Historical Figures (900s)'),(10296,'Historical Figures (800s)'),(10297,'Historical Figures (700s)'),(10298,'Historical Figures (600s)'),(10417,'Historical Figures (400\'s)'),(10418,'Historical Figures (300\'s)'),(10419,'Historical Figures (200\'s)'),(10420,'Historical Figures (100\'s)'),(10422,'Historical Figures (1st Century CE)'),(10423,'Historical Figures (1000\'s BCE)'),(10424,'Historical Figures (2000\'s BCE)'),(10425,'Figures (3000\'s BCE)'),(10488,'Music Critics'),(13794,'Book of Mormon'),(14676,'Characters of Brandon Rogers'),(16921,'Archery'),(18055,'Hip Hop, Rap, Soul & R&B'),(22676,'Animated/Fictional Musicians'),(31165,'Turkish, Musicians'),(36732,'VOCALOID'),(37655,'Writers (Literature, Georgian)'),(46025,'Slavic'),(46027,'Aztec'),(46028,'Mayan');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-12 18:10:14
