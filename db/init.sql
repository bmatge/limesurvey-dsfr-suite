-- MySQL dump 10.13  Distrib 8.0.45, for Linux (aarch64)
--
-- Host: localhost    Database: limesurvey
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `lime_answer_l10ns`
--

DROP TABLE IF EXISTS `lime_answer_l10ns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_answer_l10ns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `answer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_answer_l10ns_idx` (`aid`,`language`)
) ENGINE=MyISAM AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_answer_l10ns`
--

LOCK TABLES `lime_answer_l10ns` WRITE;
/*!40000 ALTER TABLE `lime_answer_l10ns` DISABLE KEYS */;
INSERT INTO `lime_answer_l10ns` VALUES (1,1,'Beispielantwort - Skala 1','de-informal'),(2,1,'Some example answer option - scale 1','en'),(3,1,'Option 1','fr'),(4,1,'Opzione di risposta di esempio - scala 1','it'),(5,2,'erste Kategorie - Beispielantwort','de-informal'),(6,2,'first category - Some example answer option','en'),(7,2,'première catégorie - Un exemple d\'option de réponse','fr'),(8,2,'prima categoria - Opzione di risposta di esempio','it'),(9,3,'Beispielantwort','de-informal'),(10,3,'Some example answer option','en'),(11,3,'Un exemple d\'option de réponse','fr'),(12,3,'Opzione di risposta di esempio','it'),(13,4,'Beispielantwort','de-informal'),(14,4,'Some example answer option','en'),(15,4,'Un exemple d\'option de réponse','fr'),(16,4,'Opzione di risposta di esempio','it'),(17,5,'Beispielantwort','de-informal'),(18,5,'Some example answer option','en'),(19,5,'Un exemple d\'option de réponse','fr'),(20,5,'Opzione di risposta di esempio','it'),(21,6,'Beispielantwort','de-informal'),(22,6,'Some example answer option','en'),(23,6,'Un exemple d\'option de réponse','fr'),(24,6,'Opzione di risposta di esempio','it'),(25,7,'Beispielantwort','de-informal'),(26,7,'Some example answer option','en'),(27,7,'Un exemple d\'option de réponse','fr'),(28,7,'Opzione di risposta di esempio','it'),(29,8,'Beispielantwort','de-informal'),(30,8,'Some example answer option','en'),(31,8,'Un exemple d\'option de réponse','fr'),(32,8,'Opzione di risposta di esempio','it'),(33,9,'Beispielantwort','de-informal'),(34,9,'Some example answer option','en'),(35,9,'Un exemple d\'option de réponse','fr'),(36,9,'Opzione di risposta di esempio','it'),(37,10,'Beispielantwort - Skala 1','de-informal'),(38,10,'Some example answer option - scale 1','en'),(39,10,'Un exemple d\'option de réponse - Échelle 1','fr'),(40,10,'Opzione di risposta di esempio - scala 1','it'),(41,11,'Neue Antwortoption - Skala 1','de-informal'),(42,11,'New answer option - scale 1','en'),(43,11,'Nouvelle option de réponse - Échelle 1','fr'),(44,11,'Nuova opzione di risposta di esempio - scala 1','it'),(45,12,'Neue Antwortoption','de-informal'),(46,12,'New answer option','en'),(47,12,'Nouvelle option de réponse','fr'),(48,12,'Nuova opzione di risposta di esempio','it'),(49,13,'Neue Antwortoption','de-informal'),(50,13,'New answer option','en'),(51,13,'Nouvelle option de réponse','fr'),(52,13,'Nuova opzione di risposta di esempio','it'),(53,14,'Neue Antwortoption','de-informal'),(54,14,'New answer option','en'),(55,14,'Nouvelle option de réponse','fr'),(56,14,'Nuova opzione di risposta di esempio','it'),(57,15,'Neue Antwortoption','de-informal'),(58,15,'New answer option','en'),(59,15,'Nouvelle option de réponse','fr'),(60,15,'Nuova opzione di risposta di esempio','it'),(61,16,'Neue Antwortoption','de-informal'),(62,16,'New answer option','en'),(63,16,'Nouvelle option de réponse','fr'),(64,16,'Nuova opzione di risposta di esempio','it'),(65,17,'erste Kategorie - Neue Antwortoption','de-informal'),(66,17,'first category - New answer option','en'),(67,17,'première catégorie - Nouvelle option de réponse','fr'),(68,17,'prima categoria - Seconda opzione di risposta di esempio','it'),(69,18,'Neue Antwortoption - Skala 1','de-informal'),(70,18,'New answer option - scale 1','en'),(71,18,'Option 2','fr'),(72,18,'Nuova opzione di risposta di esempio - scala 1','it'),(73,19,'Neue Antwortoption','de-informal'),(74,19,'New answer option','en'),(75,19,'Nouvelle option de réponse','fr'),(76,19,'Nuova opzione di risposta di esempio','it'),(77,20,'Neue Antwortoption','de-informal'),(78,20,'New answer option','en'),(79,20,'Nouvelle option de réponse','fr'),(80,20,'Nuova opzione di risposta di esempio','it'),(81,21,'Dritte Antwortoption','de-informal'),(82,21,'Third answer option','en'),(83,21,'Troisième option de réponse','fr'),(84,21,'Terza opzione di risposta di esempio','it'),(85,22,'Dritte Antwortoption','de-informal'),(86,22,'Third answer option','en'),(87,22,'Troisième option de réponse','fr'),(88,22,'Terza opzione di risposta di esempio','it'),(89,23,'Dritte Antwortoption','de-informal'),(90,23,'Third answer option','en'),(91,23,'Troisième option de réponse','fr'),(92,23,'Terza opzione di risposta di esempio','it'),(93,24,'Default-Wert','de-informal'),(94,24,'Default option','en'),(95,24,'Option par défaut','fr'),(96,24,'Opzione di default','it'),(97,25,'Dritte Antwortoption','de-informal'),(98,25,'Third answer option','en'),(99,25,'Troisième option de réponse','fr'),(100,25,'Terza opzione di risposta di esempio','it'),(101,26,'erste Kategorie - Dritte Antwortoption','de-informal'),(102,26,'first category - Third answer option','en'),(103,26,'première catégorie - Troisième option de réponse','fr'),(104,26,'prima categoria - Terza opzione di risposta di esempio','it'),(105,27,'Dritte Antwortoption - Skala 1','de-informal'),(106,27,'Third answer option - scale 1','en'),(107,27,'Option 3','fr'),(108,27,'Terza opzione di risposta di esempio - scala 1','it'),(109,28,'Dritte Antwortoption - Skala 1','de-informal'),(110,28,'Third answer option - scale 1','en'),(111,28,'Troisième option de réponse - Échelle 1','fr'),(112,28,'Terza opzione di risposta di esempio - scala 1','it'),(113,29,'Default-Wert','de-informal'),(114,29,'Default option','en'),(115,29,'Option par défaut','fr'),(116,29,'Opzione di default','it'),(117,30,'Default-Wert','de-informal'),(118,30,'Default option','en'),(119,30,'Option par défaut','fr'),(120,30,'Opzione di default','it'),(121,31,'Letzte Antwortoption - Skala 1','de-informal'),(122,31,'Last answer option - scale 1','en'),(123,31,'Dernière option de réponse - Échelle 1','fr'),(124,31,'Quarta opzione di risposta di esempio - scala 1','it'),(125,32,'Dritte Antwortoption','de-informal'),(126,32,'Third answer option','en'),(127,32,'Troisième option de réponse','fr'),(128,32,'Terza opzione di risposta di esempio','it'),(129,33,'Letzte Antwortoption','de-informal'),(130,33,'Last answer option','en'),(131,33,'Dernière option de réponse','fr'),(132,33,'Ultima opzione di risposta di esempio','it'),(133,34,'Letzte Antwortoption','de-informal'),(134,34,'Last answer option','en'),(135,34,'Dernière option de réponse','fr'),(136,34,'Ultima opzione di risposta di esempio','it'),(137,35,'erste Kategorie - Letzte Antwortoption','de-informal'),(138,35,'first category - Last answer option','en'),(139,35,'première catégorie - Dernière option de réponse','fr'),(140,35,'prima categoria - Ultima opzione di risposta di esempio','it'),(141,36,'Letzte Antwortoption - Skala 1','de-informal'),(142,36,'Last answer option - scale 1','en'),(143,36,'Option 4','fr'),(144,36,'Quarta opzione di risposta di esempio - scala 1','it'),(145,37,'Dritte Antwortoption','de-informal'),(146,37,'Third answer option','en'),(147,37,'Troisième option de réponse','fr'),(148,37,'Terza opzione di risposta di esempio','it'),(149,38,'Dritte Antwortoption','de-informal'),(150,38,'Third answer option','en'),(151,38,'Troisième option de réponse','fr'),(152,38,'Terza opzione di risposta di esempio','it'),(153,39,'Letzte Antwortoption','de-informal'),(154,39,'Last answer option','en'),(155,39,'Dernière option de réponse','fr'),(156,39,'Ultima opzione di risposta di esempio','it'),(157,40,'Letzte Antwortoption','de-informal'),(158,40,'Last answer option','en'),(159,40,'Dernière option de réponse','fr'),(160,40,'Ultima opzione di risposta di esempio','it'),(161,41,'Letzte Antwortoption','de-informal'),(162,41,'Last answer option','en'),(163,41,'Dernière option de réponse','fr'),(164,41,'Ultima opzione di risposta di esempio','it'),(165,42,'zweite Kategorie - Beispielantwort','de-informal'),(166,42,'second category - Some example answer option','en'),(167,42,'deuxième catégorie - Un exemple d\'option de réponse','fr'),(168,42,'seconda categoria - Opzione di risposta di esempio','it'),(169,43,'Beispielantwort  - Skala 2','de-informal'),(170,43,'Some example answer scale 2','en'),(171,43,'Option 1','fr'),(172,43,'Opzione di risposta di esempio - scala 2','it'),(173,44,'Beispielantwort  - Skala 2','de-informal'),(174,44,'Some example answer scale 2','en'),(175,44,'Un exemple d\'option de réponse - Échelle 2','fr'),(176,44,'Opzione di risposta di esempio - scala 2','it'),(177,45,'Letzte Antwortoption','de-informal'),(178,45,'Last answer option','en'),(179,45,'Dernière option de réponse','fr'),(180,45,'Ultima opzione di risposta di esempio','it'),(181,46,'Letzte Antwortoption','de-informal'),(182,46,'Last answer option','en'),(183,46,'Dernière option de réponse','fr'),(184,46,'Ultima opzione di risposta di esempio','it'),(185,47,'Neue Antwortoption - Skala 2','de-informal'),(186,47,'New answer scale 2','en'),(187,47,'Option 2','fr'),(188,47,'Nuova opzione di risposta di esempio - scala 2','it'),(189,48,'zweite Kategorie - Neue Antwortoption','de-informal'),(190,48,'second category - New answer option','en'),(191,48,'deuxième catégorie - Nouvelle option de réponse','fr'),(192,48,'seconda categoria - Seconda opzione di risposta di esempio','it'),(193,49,'Neue Antwortoption - Skala 2','de-informal'),(194,49,'New answer scale 2','en'),(195,49,'Nouvelle option de réponse - Échelle 2','fr'),(196,49,'Nuova opzione di risposta di esempio - scala 2','it'),(197,50,'Dritte Antwortoption - Skala 2','de-informal'),(198,50,'Third answer scale 2','en'),(199,50,'Troisième option de réponse - Échelle 2','fr'),(200,50,'Terza opzione di risposta di esempio - scala 2','it'),(201,51,'Dritte Antwortoption - Skala 2','de-informal'),(202,51,'Third answer scale 2','en'),(203,51,'Option 3','fr'),(204,51,'Terza opzione di risposta di esempio - scala 2','it'),(205,52,'zweite Kategorie - Dritte Antwortoption','de-informal'),(206,52,'second category - Third answer option','en'),(207,52,'deuxième catégorie - Troisième option de réponse','fr'),(208,52,'seconda categoria - Terza opzione di risposta di esempio','it'),(209,53,'Letzte Antwortoption - Skala 2','de-informal'),(210,53,'Last answer scale 2','en'),(211,53,'Dernière option de réponse - Échelle 2','fr'),(212,53,'Quarta opzione di risposta di esempio - scala 2','it'),(213,54,'Letzte Antwortoption - Skala 2','de-informal'),(214,54,'Last answer scale 2','en'),(215,54,'Option 4','fr'),(216,54,'Quarta opzione di risposta di esempio - scala 2','it'),(217,55,'zweite Kategorie - Letzte Antwortoption','de-informal'),(218,55,'second category - Last answer option','en'),(219,55,'deuxième catégorie - Dernière option de réponse','fr'),(220,55,'seconda categoria - Ultima opzione di risposta di esempio','it'),(263,81,'Réponse 5','en'),(262,81,'Réponse 5','de-informal'),(261,81,'Réponse 5','fr'),(260,80,'Réponse 4','it'),(259,80,'Réponse 4','en'),(256,79,'Réponse 3','it'),(257,80,'Réponse 4','fr'),(258,80,'Réponse 4','de-informal'),(255,79,'Réponse 3','en'),(251,78,'Réponse 2','en'),(252,78,'Réponse 2','it'),(253,79,'Réponse 3','fr'),(254,79,'Réponse 3','de-informal'),(245,77,'Réponse 1','fr'),(246,77,'Réponse 1','de-informal'),(247,77,'Réponse 1','en'),(248,77,'Réponse 1','it'),(249,78,'Réponse 2','fr'),(250,78,'Réponse 2','de-informal'),(244,76,'','it'),(243,76,'','en'),(242,76,'','de-informal'),(241,76,'','fr'),(264,81,'Réponse 5','it'),(265,82,'Réponse 6','fr'),(266,82,'Réponse 6','de-informal'),(267,82,'Réponse 6','en'),(268,82,'Réponse 6','it'),(269,83,'Réponse 7','fr'),(270,83,'Réponse 7','de-informal'),(271,83,'Réponse 7','en'),(272,83,'Réponse 7','it'),(278,85,'','de-informal'),(279,85,'','en'),(277,85,'','fr'),(280,85,'','it'),(281,86,'','fr'),(282,86,'','de-informal'),(283,86,'','en'),(284,86,'','it');
/*!40000 ALTER TABLE `lime_answer_l10ns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_answers`
--

DROP TABLE IF EXISTS `lime_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_answers` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `qid` int NOT NULL,
  `code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortorder` int NOT NULL,
  `assessment_value` int NOT NULL DEFAULT '0',
  `scale_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `lime_answers_idx` (`qid`,`code`,`scale_id`),
  KEY `lime_answers_idx2` (`sortorder`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_answers`
--

LOCK TABLES `lime_answers` WRITE;
/*!40000 ALTER TABLE `lime_answers` DISABLE KEYS */;
INSERT INTO `lime_answers` VALUES (1,34,'A11',0,1,0),(2,17,'A11',0,1,0),(3,39,'A1',0,1,0),(4,26,'A1',0,1,0),(5,37,'A1',0,1,0),(6,25,'A1',0,1,0),(7,35,'A1',0,1,0),(8,19,'A1',0,1,0),(9,18,'A1',0,1,0),(10,57,'A11',0,1,0),(11,57,'A12',1,1,0),(12,35,'A2',1,1,0),(13,25,'A2',1,1,0),(14,37,'A2',1,1,0),(15,26,'A2',1,1,0),(16,39,'A2',1,1,0),(17,17,'A12',1,1,0),(18,34,'A12',1,1,0),(19,18,'A2',1,1,0),(20,19,'A2',1,1,0),(21,26,'A3',2,1,0),(22,35,'A3',2,1,0),(23,25,'A3',2,1,0),(24,18,'A0',2,1,0),(25,39,'A3',2,1,0),(26,17,'A13',2,1,0),(27,34,'A13',2,1,0),(28,57,'A13',2,1,0),(29,37,'A0',2,1,0),(30,19,'A0',2,1,0),(31,57,'A14',3,1,0),(32,37,'A3',3,1,0),(33,26,'A4',3,1,0),(34,39,'A4',3,1,0),(35,17,'A14',3,1,0),(36,34,'A14',3,1,0),(37,18,'A3',3,1,0),(38,19,'A3',3,1,0),(39,35,'A4',3,1,0),(40,25,'A4',3,1,0),(41,37,'A4',4,1,0),(42,17,'A21',4,1,0),(43,34,'A21',4,1,1),(44,57,'A21',4,1,1),(45,18,'A4',4,1,0),(46,19,'A4',4,1,0),(47,34,'A22',5,1,1),(48,17,'A22',5,1,0),(49,57,'A22',5,1,1),(50,57,'A23',6,1,1),(51,34,'A23',6,1,1),(52,17,'A23',6,1,0),(53,57,'A24',7,1,1),(54,34,'A24',7,1,1),(55,17,'A24',7,1,0),(86,225,'AO01',1,0,1),(85,225,'AO01',0,0,0),(83,221,'AO08',7,0,0),(82,221,'AO07',6,0,0),(81,221,'AO06',5,0,0),(80,221,'AO05',4,0,0),(79,221,'AO04',3,0,0),(78,221,'AO03',2,0,0),(77,221,'AO02',1,0,0),(76,221,'AO01',0,0,0);
/*!40000 ALTER TABLE `lime_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_archived_table_settings`
--

DROP TABLE IF EXISTS `lime_archived_table_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_archived_table_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `survey_id` int NOT NULL,
  `user_id` int NOT NULL,
  `tbl_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tbl_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_archived_table_settings`
--

LOCK TABLES `lime_archived_table_settings` WRITE;
/*!40000 ALTER TABLE `lime_archived_table_settings` DISABLE KEYS */;
INSERT INTO `lime_archived_table_settings` VALUES (1,282267,1,'old_tokens_282267_20260418194631','response','2026-04-18 19:46:31','[]',NULL),(2,282267,1,'old_survey_282267_timings_20260418194631','timings','2026-04-18 19:46:31','',NULL),(3,282267,1,'old_tokens_282267_20260418204935','response','2026-04-18 20:49:35','[]',NULL),(4,282267,1,'old_survey_282267_timings_20260418204935','timings','2026-04-18 20:49:35','',NULL),(5,282267,1,'old_tokens_282267_20260418210548','response','2026-04-18 21:05:48','[]',NULL),(6,282267,1,'old_survey_282267_timings_20260418210548','timings','2026-04-18 21:05:48','',NULL);
/*!40000 ALTER TABLE `lime_archived_table_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_assessments`
--

DROP TABLE IF EXISTS `lime_assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_assessments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL DEFAULT '0',
  `scope` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gid` int NOT NULL DEFAULT '0',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maximum` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`,`language`),
  KEY `lime_assessments_idx2` (`sid`),
  KEY `lime_assessments_idx3` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_assessments`
--

LOCK TABLES `lime_assessments` WRITE;
/*!40000 ALTER TABLE `lime_assessments` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_asset_version`
--

DROP TABLE IF EXISTS `lime_asset_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_asset_version` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_asset_version`
--

LOCK TABLES `lime_asset_version` WRITE;
/*!40000 ALTER TABLE `lime_asset_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_asset_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_boxes`
--

DROP TABLE IF EXISTS `lime_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_boxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` int DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `buttontext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ico` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usergroup` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_boxes`
--

LOCK TABLES `lime_boxes` WRITE;
/*!40000 ALTER TABLE `lime_boxes` DISABLE KEYS */;
INSERT INTO `lime_boxes` VALUES (1,1,'dashboard/view','Dashboard','View dashboard','ri-function-fill','View dashboard','welcome',-1),(2,2,'admin/globalsettings','Global settings','View global settings','ri-settings-3-fill','Edit global settings','welcome',-2),(3,3,'themeOptions','Themes','Edit themes','ri-paint-fill','The themes functionality allows you to edit survey-, admin- or question themes.','welcome',-2),(4,4,'userManagement/index','Manage administrators','Manage administrators','ri-group-line','The user management allows you to add additional users to your survey administration.','welcome',-2),(5,5,'admin/pluginmanager/sa/index','Plugins','Manage plugins','ri-plug-fill','Plugins can be used to add custom features','welcome',-2);
/*!40000 ALTER TABLE `lime_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_conditions`
--

DROP TABLE IF EXISTS `lime_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_conditions` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `qid` int NOT NULL DEFAULT '0',
  `cqid` int NOT NULL DEFAULT '0',
  `cfieldname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scenario` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `lime_conditions_idx` (`qid`),
  KEY `lime_conditions_idx3` (`cqid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_conditions`
--

LOCK TABLES `lime_conditions` WRITE;
/*!40000 ALTER TABLE `lime_conditions` DISABLE KEYS */;
INSERT INTO `lime_conditions` VALUES (1,43,42,'282267X5X42','==','Y',1),(2,44,42,'282267X5X42','==','N',1),(3,45,42,'282267X5X42','==',' ',1),(4,48,50,'282267X5X50','!=','Y',3),(5,48,47,'282267X5X47','==','SQ201',3),(6,48,46,'+282267X5X46SH101','==','Y',2),(7,48,50,'282267X5X50','!=','Y',2),(8,49,50,'282267X5X50','!=','Y',3),(9,49,50,'282267X5X50','!=','Y',2),(10,49,46,'+282267X5X46SH102','==','Y',2),(11,49,47,'+282267X5X47SQ202','==','Y',3),(12,50,46,'282267X5X46','==','SH101',2),(13,50,47,'282267X5X47','==','SQ202',3),(14,50,47,'282267X5X47','==','SQ201',3),(15,50,46,'282267X5X46','==','SH102',2);
/*!40000 ALTER TABLE `lime_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_defaultvalue_l10ns`
--

DROP TABLE IF EXISTS `lime_defaultvalue_l10ns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_defaultvalue_l10ns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dvid` int NOT NULL DEFAULT '0',
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaultvalue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_defaultvalue_ls` (`dvid`,`language`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_defaultvalue_l10ns`
--

LOCK TABLES `lime_defaultvalue_l10ns` WRITE;
/*!40000 ALTER TABLE `lime_defaultvalue_l10ns` DISABLE KEYS */;
INSERT INTO `lime_defaultvalue_l10ns` VALUES (1,1,'en','Y'),(2,1,'fr','Y'),(3,1,'it','Y'),(4,2,'en','Y'),(5,2,'fr','Y'),(6,2,'it','Y'),(7,3,'en','Y'),(8,3,'fr','Y'),(9,3,'it','Y'),(10,4,'en','Y'),(11,4,'fr','Y'),(12,4,'it','Y'),(13,5,'de-informal','A0'),(14,5,'en','A0'),(15,5,'fr','A0');
/*!40000 ALTER TABLE `lime_defaultvalue_l10ns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_defaultvalues`
--

DROP TABLE IF EXISTS `lime_defaultvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_defaultvalues` (
  `dvid` int NOT NULL AUTO_INCREMENT,
  `qid` int NOT NULL DEFAULT '0',
  `scale_id` int NOT NULL DEFAULT '0',
  `sqid` int NOT NULL DEFAULT '0',
  `specialtype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`dvid`),
  KEY `lime_idx1_defaultvalue` (`qid`,`scale_id`,`sqid`,`specialtype`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_defaultvalues`
--

LOCK TABLES `lime_defaultvalues` WRITE;
/*!40000 ALTER TABLE `lime_defaultvalues` DISABLE KEYS */;
INSERT INTO `lime_defaultvalues` VALUES (1,22,0,68,''),(2,22,0,69,''),(3,22,0,70,''),(4,22,0,71,''),(5,37,0,0,'');
/*!40000 ALTER TABLE `lime_defaultvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_expression_errors`
--

DROP TABLE IF EXISTS `lime_expression_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_expression_errors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `errortime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `gid` int DEFAULT NULL,
  `qid` int DEFAULT NULL,
  `gseq` int DEFAULT NULL,
  `qseq` int DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eqn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prettyprint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_expression_errors`
--

LOCK TABLES `lime_expression_errors` WRITE;
/*!40000 ALTER TABLE `lime_expression_errors` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_expression_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_failed_emails`
--

DROP TABLE IF EXISTS `lime_failed_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_failed_emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surveyid` int NOT NULL,
  `responseid` int NOT NULL,
  `email_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `error_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SEND FAILED',
  `updated` datetime DEFAULT NULL,
  `resend_vars` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_failed_emails`
--

LOCK TABLES `lime_failed_emails` WRITE;
/*!40000 ALTER TABLE `lime_failed_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_failed_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_failed_login_attempts`
--

DROP TABLE IF EXISTS `lime_failed_login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_failed_login_attempts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_attempt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_attempts` int NOT NULL,
  `is_frontend` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_failed_login_attempts`
--

LOCK TABLES `lime_failed_login_attempts` WRITE;
/*!40000 ALTER TABLE `lime_failed_login_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_failed_login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_group_l10ns`
--

DROP TABLE IF EXISTS `lime_group_l10ns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_group_l10ns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gid` int NOT NULL,
  `group_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx1_group_ls` (`gid`,`language`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_group_l10ns`
--

LOCK TABLES `lime_group_l10ns` WRITE;
/*!40000 ALTER TABLE `lime_group_l10ns` DISABLE KEYS */;
INSERT INTO `lime_group_l10ns` VALUES (1,1,'Text question','This is the description for text question group.','en'),(2,1,'Question de type texte','Ceci est la description du groupe de questions de type texte.','fr'),(3,1,'Domande di tipo Testo','Questa è la descrizione per questo gruppo.','it'),(4,1,'Textfragen','r453q26ier steht die Beschreibung für die Gruppe der Textfragen.','de-informal'),(5,2,'Numerische Fragen','r453q26ier steht die Beschreibung für die Gruppe der numerischen Fragen.','de-informal'),(6,2,'Numeric question','This is the description for numeric question group.','en'),(7,2,'Question de type numérique','Ceci est la description des questions de type numérique','fr'),(8,2,'Domande numeriche','Questa è la descrizione del gruppo di domande numeriche','it'),(9,3,'Einfachauswahl','r453q26ier steht die Beschreibung für die Gruppe der Einfachauswahl-Fragen.','de-informal'),(10,3,'Single choice question','The single choice questions group description','en'),(11,3,'Question à réponse unique','Ceci est la description du groupe des questions à réponse unique','fr'),(12,3,'Domande a scelta singola','Descrizione del gruppo dedicato alle Domande a scelta singola','it'),(13,4,'Questions à réponses multiples','Ceci est la description du groupe des questions à réponses multiples','fr'),(14,4,'Domande a scelta multipla','Questa è la descrizione del gruppo di domande a scelta multipla','it'),(15,4,'Multi choice question','This is the description for multi choice question','en'),(16,4,'Mehrfachauswahl','r453q26ier steht die Beschreibung für die Gruppe der Mehrfachauswahl-Fragen.','de-informal'),(17,5,'Bedingungen und Filter','<p>Limesurvey unterstützt eine Vielzahl von Bedingungen und Filtern zum Anzeigen und Vestecken von Fragen. Dies umfasst Bedingungen mit UND- sowie ODER-Verknüpfungen. Weitere Informationen finden sich in der <small><a href=\"manual.limesurvey.org/Conditions_Engine\" lang=\"en\" target=\"_blank\">LimeSurvey Dokumentation</a></small>.</p>\n','de-informal'),(18,5,'Condition and scenario','<p>LimeSurvey can use a lot of condition and filter to show or hide question. You an use AND or OR condition. You can use previous question answers and tokens.</p>\n\n<p><small>More information : <a href=\"http://manual.limesurvey.org/Conditions_Engine\">Conditions Engine</a> and <a href=\"http://manual.limesurvey.org/Expression_Manager\">expression manager</a></small></p>\n','en'),(19,5,'Conditions et scenarios','<p>LimeSurvey peut utiliser de nombreuses conditions et filtres pour masquer certaines questions. Il est possible d\'utiliser des conditions de type OR ou AND. Vous pouvez utiliser les réponses précédentes mais aussi les attributs des invitations.</p>\n\n<p><small>Plus d\'informations : <a href=\"http://manual.limesurvey.org/Conditions_Engine\">le gestionnaire de conditions</a> et le <a href=\"http://manual.limesurvey.org/Expression_Manager\">gestionnaire d\'expressions</a></small></p>\n','fr'),(20,5,'Condizioni e scenari','<p>LimeSurvey consente l\'utilizzo di molte condizioni e filtri per nascondere e mostrare domande. Puoi usare le condizioni in AND e in OR, e utilizzare le risposte fornite alle domande precedenti oppure le informazioni dei partecipanti (tokens).</p>\n<small>Ulteriori informazioni : <a href=\"http://manual.limesurvey.org/Conditions_Engine\">Conditions Engine</a> e <a href=\"http://manual.limesurvey.org/Expression_Manager\">expression manager</a></small>','it'),(21,6,'Filter','Antwortoptionen von Folgefragen können durch das Frageattribut <a href=\"http://manual.limesurvey.org/QS:Array_filter\" lang=\"en\" target=\"_blank\">Array Filter</a><a> und </a><a href=\"http://manual.limesurvey.org/Array_filter_exclude\" lang=\"en\" target=\"_blank\">Array Filter Exclusion</a> gefiltert werden.','de-informal'),(22,6,'Filter','You can display/hide subquestion with <a href=\"http://manual.limesurvey.org/QS:Array_filter\" lang=\"en\" target=\"_blank\">Array Filter</a> and <a href=\"http://manual.limesurvey.org/QS:Array_filter_exclude\" lang=\"en\" target=\"_blank\">Array Filter Exclusion</a>. We use Expression Manager to hide and show question too.','en'),(23,6,'Filtres de tableaux','Vous pouvez afficher ou masquer une série de sous question avec l\'attribut <a href=\"http://manual.limesurvey.org/QS:Array_filter\" lang=\"en\" target=\"_blank\">Filtre de tableau</a> et <a href=\"http://manual.limesurvey.org/QS:Array_filter_exclude\" lang=\"en\" target=\"_blank\">Filttre d’exclusion</a>. On utilise le gestionnaire d\'expression pour masquer ou montrer les questions correspondantes.','fr'),(24,6,'Filtri','E\' possibile nascondere/mostrare sottodomande usando i <a href=\"http://manual.limesurvey.org/QS:Array_filter\" lang=\"en\" target=\"_blank\">Filtri Array</a> and <a href=\"http://manual.limesurvey.org/QS:Array_filter_exclude\" lang=\"en\" target=\"_blank\">Filtri Array di Esclusione</a>. Useremo anche l\'Expression Manager per nascondere e mostrare domande.','it'),(25,7,'Text question (mandatory)','','de-informal'),(26,7,'Text question (mandatory)','','en'),(27,7,' Question de type texte - obligatoires','','fr'),(28,7,'Text question (mandatory)','','it'),(37,13,'','','it'),(36,13,'','','en'),(35,13,'','','de-informal'),(34,13,'Nouvelles questions','','fr');
/*!40000 ALTER TABLE `lime_group_l10ns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_groups`
--

DROP TABLE IF EXISTS `lime_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_groups` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL DEFAULT '0',
  `group_order` int NOT NULL DEFAULT '0',
  `randomization_group` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `grelevance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`gid`),
  KEY `lime_idx1_groups` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_groups`
--

LOCK TABLES `lime_groups` WRITE;
/*!40000 ALTER TABLE `lime_groups` DISABLE KEYS */;
INSERT INTO `lime_groups` VALUES (1,282267,1,'',''),(2,282267,3,'',''),(3,282267,4,'',''),(4,282267,5,'',''),(5,282267,7,'',''),(6,282267,6,'',''),(7,282267,2,'',''),(13,282267,8,'','');
/*!40000 ALTER TABLE `lime_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_label_l10ns`
--

DROP TABLE IF EXISTS `lime_label_l10ns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_label_l10ns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_label_l10ns`
--

LOCK TABLES `lime_label_l10ns` WRITE;
/*!40000 ALTER TABLE `lime_label_l10ns` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_label_l10ns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_labels`
--

DROP TABLE IF EXISTS `lime_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_labels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lid` int NOT NULL DEFAULT '0',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortorder` int NOT NULL,
  `assessment_value` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx5_labels` (`lid`,`code`),
  KEY `lime_idx1_labels` (`code`),
  KEY `lime_idx2_labels` (`sortorder`),
  KEY `lime_idx4_labels` (`lid`,`sortorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_labels`
--

LOCK TABLES `lime_labels` WRITE;
/*!40000 ALTER TABLE `lime_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_labelsets`
--

DROP TABLE IF EXISTS `lime_labelsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_labelsets` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `label_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `languages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lid`),
  KEY `lime_idx1_labelsets` (`owner_id`),
  KEY `lime_idx2_labelsets` (`lid`,`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_labelsets`
--

LOCK TABLES `lime_labelsets` WRITE;
/*!40000 ALTER TABLE `lime_labelsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_labelsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_map_tutorial_users`
--

DROP TABLE IF EXISTS `lime_map_tutorial_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_map_tutorial_users` (
  `tid` int NOT NULL,
  `uid` int NOT NULL,
  `taken` int DEFAULT '1',
  PRIMARY KEY (`uid`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_map_tutorial_users`
--

LOCK TABLES `lime_map_tutorial_users` WRITE;
/*!40000 ALTER TABLE `lime_map_tutorial_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_map_tutorial_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_message`
--

DROP TABLE IF EXISTS `lime_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_message` (
  `id` int NOT NULL,
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `translation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_message`
--

LOCK TABLES `lime_message` WRITE;
/*!40000 ALTER TABLE `lime_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_notifications`
--

DROP TABLE IF EXISTS `lime_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `importance` int NOT NULL DEFAULT '1',
  `display_class` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `hash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `first_read` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lime_notifications_pk` (`entity`,`entity_id`,`status`),
  KEY `lime_idx1_notifications` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_notifications`
--

LOCK TABLES `lime_notifications` WRITE;
/*!40000 ALTER TABLE `lime_notifications` DISABLE KEYS */;
INSERT INTO `lime_notifications` VALUES (1,'user',1,'SSL n’est pas forcé','<span class=\"ri-error-warning-fill\"></span>&nbsp;Attention : veuillez activer le chiffrement SSL dans les paramètres généraux/sécurité après avoir correctement configuré le SSL sur votre serveur.','new',1,'default','e38e0f2d00818b502d750c6dbf5434075fce0aa74b3f4a2a37b13d9986117873','2026-04-16 19:19:35','2026-04-16 19:19:41');
/*!40000 ALTER TABLE `lime_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_old_questions_282267_20260418194631`
--

DROP TABLE IF EXISTS `lime_old_questions_282267_20260418194631`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_old_questions_282267_20260418194631` (
  `sid` int NOT NULL DEFAULT '0',
  `gid` int NOT NULL DEFAULT '0',
  `qid` int NOT NULL DEFAULT '0',
  `parent_qid` int NOT NULL DEFAULT '0',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_old_questions_282267_20260418194631`
--

LOCK TABLES `lime_old_questions_282267_20260418194631` WRITE;
/*!40000 ALTER TABLE `lime_old_questions_282267_20260418194631` DISABLE KEYS */;
INSERT INTO `lime_old_questions_282267_20260418194631` VALUES (282267,1,1,0,'S'),(282267,1,2,0,'T'),(282267,1,3,0,'U'),(282267,1,4,0,'S'),(282267,1,5,0,'T'),(282267,1,6,0,'Q'),(282267,1,7,0,'Q'),(282267,1,8,0,'Q'),(282267,2,9,0,'N'),(282267,2,10,0,'K'),(282267,2,11,0,'K'),(282267,2,12,0,'K'),(282267,3,13,0,'Y'),(282267,3,14,0,'G'),(282267,3,15,0,'5'),(282267,3,16,0,'I'),(282267,3,17,0,'!'),(282267,3,18,0,'L'),(282267,3,19,0,'O'),(282267,4,20,0,'M'),(282267,4,21,0,'M'),(282267,4,22,0,'P'),(282267,3,23,0,'D'),(282267,3,24,0,'D'),(282267,4,25,0,'R'),(282267,3,26,0,'F'),(282267,3,27,0,'A'),(282267,3,28,0,'B'),(282267,3,29,0,'E'),(282267,3,30,0,'X'),(282267,1,31,0,';'),(282267,2,32,0,':'),(282267,4,33,0,':'),(282267,3,34,0,'1'),(282267,3,35,0,'H'),(282267,3,36,0,':'),(282267,3,37,0,'!'),(282267,3,38,0,'C'),(282267,4,39,0,'R'),(282267,4,40,0,'X'),(282267,4,41,0,'X'),(282267,5,42,0,'Y'),(282267,5,43,0,'X'),(282267,5,44,0,'X'),(282267,5,45,0,'X'),(282267,5,46,0,'M'),(282267,5,47,0,'M'),(282267,5,48,0,'X'),(282267,5,49,0,'X'),(282267,5,50,0,'Y'),(282267,6,51,0,'M'),(282267,6,52,0,'C'),(282267,6,53,0,'C'),(282267,5,54,0,'X'),(282267,5,55,0,'X'),(282267,5,56,0,'X'),(282267,3,57,0,'1'),(282267,3,58,0,'5'),(282267,3,59,0,'5'),(282267,7,60,0,'S'),(282267,7,61,0,'T'),(282267,7,62,0,'S'),(282267,7,63,0,'Q'),(282267,7,64,0,';'),(282267,2,65,11,'K'),(282267,2,66,11,'K'),(282267,2,67,11,'K'),(282267,4,68,22,'P'),(282267,4,69,22,'P'),(282267,4,70,22,'P'),(282267,4,71,22,'P'),(282267,2,72,32,':'),(282267,2,73,32,':'),(282267,2,74,32,':'),(282267,2,75,32,':'),(282267,2,76,32,':'),(282267,2,77,32,':'),(282267,2,78,32,':'),(282267,2,79,32,':'),(282267,4,80,33,':'),(282267,4,81,33,':'),(282267,4,82,33,':'),(282267,4,83,33,':'),(282267,3,84,36,':'),(282267,3,85,36,':'),(282267,3,86,36,':'),(282267,3,87,36,':'),(282267,5,88,46,'M'),(282267,5,89,46,'M'),(282267,5,90,47,'M'),(282267,5,91,47,'M'),(282267,1,92,6,'Q'),(282267,1,93,6,'Q'),(282267,1,94,6,'Q'),(282267,1,95,6,'Q'),(282267,1,96,7,'Q'),(282267,1,97,7,'Q'),(282267,1,98,7,'Q'),(282267,1,99,7,'Q'),(282267,1,100,31,';'),(282267,1,101,31,';'),(282267,1,102,31,';'),(282267,1,103,31,';'),(282267,1,104,31,';'),(282267,1,105,31,';'),(282267,1,106,31,';'),(282267,1,107,31,';'),(282267,2,108,12,'K'),(282267,2,109,12,'K'),(282267,2,110,12,'K'),(282267,2,111,12,'K'),(282267,3,112,26,'F'),(282267,3,113,26,'F'),(282267,3,114,26,'F'),(282267,3,115,26,'F'),(282267,4,116,21,'M'),(282267,4,117,21,'M'),(282267,4,118,21,'M'),(282267,4,119,21,'M'),(282267,4,120,21,'M'),(282267,4,121,33,':'),(282267,4,122,33,':'),(282267,4,123,33,':'),(282267,4,124,33,':'),(282267,3,125,36,':'),(282267,3,126,36,':'),(282267,3,127,36,':'),(282267,3,128,36,':'),(282267,1,129,8,'Q'),(282267,1,130,8,'Q'),(282267,1,131,8,'Q'),(282267,1,132,8,'Q'),(282267,2,133,10,'K'),(282267,2,134,10,'K'),(282267,2,135,10,'K'),(282267,2,136,10,'K'),(282267,3,137,35,'H'),(282267,3,138,35,'H'),(282267,3,139,35,'H'),(282267,3,140,35,'H'),(282267,3,141,27,'A'),(282267,3,142,27,'A'),(282267,3,143,27,'A'),(282267,3,144,27,'A'),(282267,3,145,28,'B'),(282267,3,146,28,'B'),(282267,3,147,28,'B'),(282267,3,148,28,'B'),(282267,3,149,29,'E'),(282267,3,150,29,'E'),(282267,3,151,29,'E'),(282267,3,152,29,'E'),(282267,3,153,38,'C'),(282267,3,154,38,'C'),(282267,3,155,38,'C'),(282267,3,156,38,'C'),(282267,3,157,34,'1'),(282267,3,158,34,'1'),(282267,3,159,34,'1'),(282267,3,160,34,'1'),(282267,3,161,57,'1'),(282267,3,162,57,'1'),(282267,3,163,57,'1'),(282267,3,164,57,'1'),(282267,4,165,20,'M'),(282267,4,166,20,'M'),(282267,4,167,20,'M'),(282267,4,168,20,'M'),(282267,6,169,51,'M'),(282267,6,170,51,'M'),(282267,6,171,51,'M'),(282267,6,172,51,'M'),(282267,6,173,53,'C'),(282267,6,174,53,'C'),(282267,6,175,53,'C'),(282267,6,176,53,'C'),(282267,6,177,52,'C'),(282267,6,178,52,'C'),(282267,6,179,52,'C'),(282267,6,180,52,'C'),(282267,7,181,63,'Q'),(282267,7,182,63,'Q'),(282267,7,183,63,'Q'),(282267,7,184,63,'Q'),(282267,7,185,64,';'),(282267,7,186,64,';'),(282267,7,187,64,';'),(282267,7,188,64,';'),(282267,7,189,64,';'),(282267,7,190,64,';'),(282267,7,191,64,';'),(282267,7,192,64,';');
/*!40000 ALTER TABLE `lime_old_questions_282267_20260418194631` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_old_questions_282267_20260418204935`
--

DROP TABLE IF EXISTS `lime_old_questions_282267_20260418204935`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_old_questions_282267_20260418204935` (
  `sid` int NOT NULL DEFAULT '0',
  `gid` int NOT NULL DEFAULT '0',
  `qid` int NOT NULL DEFAULT '0',
  `parent_qid` int NOT NULL DEFAULT '0',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_old_questions_282267_20260418204935`
--

LOCK TABLES `lime_old_questions_282267_20260418204935` WRITE;
/*!40000 ALTER TABLE `lime_old_questions_282267_20260418204935` DISABLE KEYS */;
INSERT INTO `lime_old_questions_282267_20260418204935` VALUES (282267,1,1,0,'S'),(282267,1,2,0,'T'),(282267,1,3,0,'U'),(282267,1,4,0,'S'),(282267,1,5,0,'T'),(282267,1,6,0,'Q'),(282267,1,7,0,'Q'),(282267,1,8,0,'Q'),(282267,2,9,0,'N'),(282267,2,10,0,'K'),(282267,2,11,0,'K'),(282267,2,12,0,'K'),(282267,3,13,0,'Y'),(282267,3,14,0,'G'),(282267,3,15,0,'5'),(282267,3,16,0,'I'),(282267,3,17,0,'!'),(282267,3,18,0,'L'),(282267,3,19,0,'O'),(282267,4,20,0,'M'),(282267,4,21,0,'M'),(282267,4,22,0,'P'),(282267,3,23,0,'D'),(282267,3,24,0,'D'),(282267,4,25,0,'R'),(282267,3,26,0,'F'),(282267,3,27,0,'A'),(282267,3,28,0,'B'),(282267,3,29,0,'E'),(282267,3,30,0,'X'),(282267,1,31,0,';'),(282267,2,32,0,':'),(282267,4,33,0,':'),(282267,3,34,0,'1'),(282267,3,35,0,'H'),(282267,3,36,0,':'),(282267,3,37,0,'!'),(282267,3,38,0,'C'),(282267,4,39,0,'R'),(282267,4,40,0,'X'),(282267,4,41,0,'X'),(282267,5,42,0,'Y'),(282267,5,43,0,'X'),(282267,5,44,0,'X'),(282267,5,45,0,'X'),(282267,5,46,0,'M'),(282267,5,47,0,'M'),(282267,5,48,0,'X'),(282267,5,49,0,'X'),(282267,5,50,0,'Y'),(282267,6,51,0,'M'),(282267,6,52,0,'C'),(282267,6,53,0,'C'),(282267,5,54,0,'X'),(282267,5,55,0,'X'),(282267,5,56,0,'X'),(282267,3,57,0,'1'),(282267,3,58,0,'5'),(282267,3,59,0,'5'),(282267,7,60,0,'S'),(282267,7,61,0,'T'),(282267,7,62,0,'S'),(282267,7,63,0,'Q'),(282267,7,64,0,';'),(282267,2,65,11,'K'),(282267,2,66,11,'K'),(282267,2,67,11,'K'),(282267,4,68,22,'P'),(282267,4,69,22,'P'),(282267,4,70,22,'P'),(282267,4,71,22,'P'),(282267,2,72,32,':'),(282267,2,73,32,':'),(282267,2,74,32,':'),(282267,2,75,32,':'),(282267,2,76,32,':'),(282267,2,77,32,':'),(282267,2,78,32,':'),(282267,2,79,32,':'),(282267,4,80,33,':'),(282267,4,81,33,':'),(282267,4,82,33,':'),(282267,4,83,33,':'),(282267,3,84,36,':'),(282267,3,85,36,':'),(282267,3,86,36,':'),(282267,3,87,36,':'),(282267,5,88,46,'M'),(282267,5,89,46,'M'),(282267,5,90,47,'M'),(282267,5,91,47,'M'),(282267,1,92,6,'Q'),(282267,1,93,6,'Q'),(282267,1,94,6,'Q'),(282267,1,95,6,'Q'),(282267,1,96,7,'Q'),(282267,1,97,7,'Q'),(282267,1,98,7,'Q'),(282267,1,99,7,'Q'),(282267,1,100,31,';'),(282267,1,101,31,';'),(282267,1,102,31,';'),(282267,1,103,31,';'),(282267,1,104,31,';'),(282267,1,105,31,';'),(282267,1,106,31,';'),(282267,1,107,31,';'),(282267,2,108,12,'K'),(282267,2,109,12,'K'),(282267,2,110,12,'K'),(282267,2,111,12,'K'),(282267,3,112,26,'F'),(282267,3,113,26,'F'),(282267,3,114,26,'F'),(282267,3,115,26,'F'),(282267,4,116,21,'M'),(282267,4,117,21,'M'),(282267,4,118,21,'M'),(282267,4,119,21,'M'),(282267,4,120,21,'M'),(282267,4,121,33,':'),(282267,4,122,33,':'),(282267,4,123,33,':'),(282267,4,124,33,':'),(282267,3,125,36,':'),(282267,3,126,36,':'),(282267,3,127,36,':'),(282267,3,128,36,':'),(282267,1,129,8,'Q'),(282267,1,130,8,'Q'),(282267,1,131,8,'Q'),(282267,1,132,8,'Q'),(282267,2,133,10,'K'),(282267,2,134,10,'K'),(282267,2,135,10,'K'),(282267,2,136,10,'K'),(282267,3,137,35,'H'),(282267,3,138,35,'H'),(282267,3,139,35,'H'),(282267,3,140,35,'H'),(282267,3,141,27,'A'),(282267,3,142,27,'A'),(282267,3,143,27,'A'),(282267,3,144,27,'A'),(282267,3,145,28,'B'),(282267,3,146,28,'B'),(282267,3,147,28,'B'),(282267,3,148,28,'B'),(282267,3,149,29,'E'),(282267,3,150,29,'E'),(282267,3,151,29,'E'),(282267,3,152,29,'E'),(282267,3,153,38,'C'),(282267,3,154,38,'C'),(282267,3,155,38,'C'),(282267,3,156,38,'C'),(282267,3,157,34,'1'),(282267,3,158,34,'1'),(282267,3,159,34,'1'),(282267,3,160,34,'1'),(282267,3,161,57,'1'),(282267,3,162,57,'1'),(282267,3,163,57,'1'),(282267,3,164,57,'1'),(282267,4,165,20,'M'),(282267,4,166,20,'M'),(282267,4,167,20,'M'),(282267,4,168,20,'M'),(282267,6,169,51,'M'),(282267,6,170,51,'M'),(282267,6,171,51,'M'),(282267,6,172,51,'M'),(282267,6,173,53,'C'),(282267,6,174,53,'C'),(282267,6,175,53,'C'),(282267,6,176,53,'C'),(282267,6,177,52,'C'),(282267,6,178,52,'C'),(282267,6,179,52,'C'),(282267,6,180,52,'C'),(282267,7,181,63,'Q'),(282267,7,182,63,'Q'),(282267,7,183,63,'Q'),(282267,7,184,63,'Q'),(282267,7,185,64,';'),(282267,7,186,64,';'),(282267,7,187,64,';'),(282267,7,188,64,';'),(282267,7,189,64,';'),(282267,7,190,64,';'),(282267,7,191,64,';'),(282267,7,192,64,';'),(282267,13,230,228,'T'),(282267,13,229,228,'T'),(282267,13,228,0,'M'),(282267,13,227,225,'T'),(282267,13,226,225,'T'),(282267,13,225,0,'1'),(282267,13,221,0,'!'),(282267,7,220,219,'T'),(282267,7,219,0,'Q');
/*!40000 ALTER TABLE `lime_old_questions_282267_20260418204935` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_old_questions_282267_20260418210548`
--

DROP TABLE IF EXISTS `lime_old_questions_282267_20260418210548`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_old_questions_282267_20260418210548` (
  `sid` int NOT NULL DEFAULT '0',
  `gid` int NOT NULL DEFAULT '0',
  `qid` int NOT NULL DEFAULT '0',
  `parent_qid` int NOT NULL DEFAULT '0',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_old_questions_282267_20260418210548`
--

LOCK TABLES `lime_old_questions_282267_20260418210548` WRITE;
/*!40000 ALTER TABLE `lime_old_questions_282267_20260418210548` DISABLE KEYS */;
INSERT INTO `lime_old_questions_282267_20260418210548` VALUES (282267,1,1,0,'S'),(282267,1,2,0,'T'),(282267,1,3,0,'U'),(282267,1,4,0,'S'),(282267,1,5,0,'T'),(282267,1,6,0,'Q'),(282267,1,7,0,'Q'),(282267,1,8,0,'Q'),(282267,2,9,0,'N'),(282267,2,10,0,'K'),(282267,2,11,0,'K'),(282267,2,12,0,'K'),(282267,3,13,0,'Y'),(282267,3,14,0,'G'),(282267,3,15,0,'5'),(282267,3,16,0,'I'),(282267,3,17,0,'!'),(282267,3,18,0,'L'),(282267,3,19,0,'O'),(282267,4,20,0,'M'),(282267,4,21,0,'M'),(282267,4,22,0,'P'),(282267,3,23,0,'D'),(282267,3,24,0,'D'),(282267,4,25,0,'R'),(282267,3,26,0,'F'),(282267,3,27,0,'A'),(282267,3,28,0,'B'),(282267,3,29,0,'E'),(282267,3,30,0,'X'),(282267,1,31,0,';'),(282267,2,32,0,':'),(282267,4,33,0,':'),(282267,3,34,0,'1'),(282267,3,35,0,'H'),(282267,3,36,0,':'),(282267,3,37,0,'!'),(282267,3,38,0,'C'),(282267,4,39,0,'R'),(282267,4,40,0,'X'),(282267,4,41,0,'X'),(282267,5,42,0,'Y'),(282267,5,43,0,'X'),(282267,5,44,0,'X'),(282267,5,45,0,'X'),(282267,5,46,0,'M'),(282267,5,47,0,'M'),(282267,5,48,0,'X'),(282267,5,49,0,'X'),(282267,5,50,0,'Y'),(282267,6,51,0,'M'),(282267,6,52,0,'C'),(282267,6,53,0,'C'),(282267,5,54,0,'X'),(282267,5,55,0,'X'),(282267,5,56,0,'X'),(282267,3,57,0,'1'),(282267,3,58,0,'5'),(282267,3,59,0,'5'),(282267,7,60,0,'S'),(282267,7,61,0,'T'),(282267,7,62,0,'S'),(282267,7,63,0,'Q'),(282267,7,64,0,';'),(282267,2,65,11,'K'),(282267,2,66,11,'K'),(282267,2,67,11,'K'),(282267,4,68,22,'P'),(282267,4,69,22,'P'),(282267,4,70,22,'P'),(282267,4,71,22,'P'),(282267,2,72,32,':'),(282267,2,73,32,':'),(282267,2,74,32,':'),(282267,2,75,32,':'),(282267,2,76,32,':'),(282267,2,77,32,':'),(282267,2,78,32,':'),(282267,2,79,32,':'),(282267,4,80,33,':'),(282267,4,81,33,':'),(282267,4,82,33,':'),(282267,4,83,33,':'),(282267,3,84,36,':'),(282267,3,85,36,':'),(282267,3,86,36,':'),(282267,3,87,36,':'),(282267,5,88,46,'M'),(282267,5,89,46,'M'),(282267,5,90,47,'M'),(282267,5,91,47,'M'),(282267,1,92,6,'Q'),(282267,1,93,6,'Q'),(282267,1,94,6,'Q'),(282267,1,95,6,'Q'),(282267,1,96,7,'Q'),(282267,1,97,7,'Q'),(282267,1,98,7,'Q'),(282267,1,99,7,'Q'),(282267,1,100,31,';'),(282267,1,101,31,';'),(282267,1,102,31,';'),(282267,1,103,31,';'),(282267,1,104,31,';'),(282267,1,105,31,';'),(282267,1,106,31,';'),(282267,1,107,31,';'),(282267,2,108,12,'K'),(282267,2,109,12,'K'),(282267,2,110,12,'K'),(282267,2,111,12,'K'),(282267,3,112,26,'F'),(282267,3,113,26,'F'),(282267,3,114,26,'F'),(282267,3,115,26,'F'),(282267,4,116,21,'M'),(282267,4,117,21,'M'),(282267,4,118,21,'M'),(282267,4,119,21,'M'),(282267,4,120,21,'M'),(282267,4,121,33,':'),(282267,4,122,33,':'),(282267,4,123,33,':'),(282267,4,124,33,':'),(282267,3,125,36,':'),(282267,3,126,36,':'),(282267,3,127,36,':'),(282267,3,128,36,':'),(282267,1,129,8,'Q'),(282267,1,130,8,'Q'),(282267,1,131,8,'Q'),(282267,1,132,8,'Q'),(282267,2,133,10,'K'),(282267,2,134,10,'K'),(282267,2,135,10,'K'),(282267,2,136,10,'K'),(282267,3,137,35,'H'),(282267,3,138,35,'H'),(282267,3,139,35,'H'),(282267,3,140,35,'H'),(282267,3,141,27,'A'),(282267,3,142,27,'A'),(282267,3,143,27,'A'),(282267,3,144,27,'A'),(282267,3,145,28,'B'),(282267,3,146,28,'B'),(282267,3,147,28,'B'),(282267,3,148,28,'B'),(282267,3,149,29,'E'),(282267,3,150,29,'E'),(282267,3,151,29,'E'),(282267,3,152,29,'E'),(282267,3,153,38,'C'),(282267,3,154,38,'C'),(282267,3,155,38,'C'),(282267,3,156,38,'C'),(282267,3,157,34,'1'),(282267,3,158,34,'1'),(282267,3,159,34,'1'),(282267,3,160,34,'1'),(282267,3,161,57,'1'),(282267,3,162,57,'1'),(282267,3,163,57,'1'),(282267,3,164,57,'1'),(282267,4,165,20,'M'),(282267,4,166,20,'M'),(282267,4,167,20,'M'),(282267,4,168,20,'M'),(282267,6,169,51,'M'),(282267,6,170,51,'M'),(282267,6,171,51,'M'),(282267,6,172,51,'M'),(282267,6,173,53,'C'),(282267,6,174,53,'C'),(282267,6,175,53,'C'),(282267,6,176,53,'C'),(282267,6,177,52,'C'),(282267,6,178,52,'C'),(282267,6,179,52,'C'),(282267,6,180,52,'C'),(282267,7,181,63,'Q'),(282267,7,182,63,'Q'),(282267,7,183,63,'Q'),(282267,7,184,63,'Q'),(282267,7,185,64,';'),(282267,7,186,64,';'),(282267,7,187,64,';'),(282267,7,188,64,';'),(282267,7,189,64,';'),(282267,7,190,64,';'),(282267,7,191,64,';'),(282267,7,192,64,';'),(282267,13,230,228,'T'),(282267,13,229,228,'T'),(282267,13,228,0,'M'),(282267,13,227,225,'T'),(282267,13,226,225,'T'),(282267,13,225,0,'1'),(282267,13,221,0,'!'),(282267,7,220,219,'T'),(282267,7,219,0,'Q');
/*!40000 ALTER TABLE `lime_old_questions_282267_20260418210548` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_old_survey_282267_20260418194631`
--

DROP TABLE IF EXISTS `lime_old_survey_282267_20260418194631`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_old_survey_282267_20260418194631` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int DEFAULT NULL,
  `startlanguage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `datestamp` datetime NOT NULL,
  `282267X1X1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X60` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X61` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X62` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X9` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ001` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ002` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ003` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X32SQY01_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X14` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X13` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X15` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X58` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X59` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X16` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X37` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X17` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18other` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X19` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X19comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X23` datetime DEFAULT NULL,
  `282267X3X24` datetime DEFAULT NULL,
  `282267X3X30` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#0` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#1` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X36SQY01_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X20SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20other` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X21SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ05` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ002` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ002comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ003` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ003comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ004` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ004comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X40` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X33SQY01_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX01` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX02` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX03` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX04` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `282267X4X41` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X251` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X252` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X253` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X254` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X391` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X392` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X393` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X394` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X42` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X43` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X44` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X45` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X54` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X55` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X56` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH101` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH102` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ201` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ202` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X50` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X48` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X49` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ01` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ02` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ03` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ04` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_old_survey_282267_20260418194631`
--

LOCK TABLES `lime_old_survey_282267_20260418194631` WRITE;
/*!40000 ALTER TABLE `lime_old_survey_282267_20260418194631` DISABLE KEYS */;
INSERT INTO `lime_old_survey_282267_20260418194631` VALUES (1,NULL,4,'fr','82826029','2026-04-18 18:35:18','2026-04-18 18:35:19','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,'fr','56003522','2026-04-18 18:35:19','2026-04-18 18:35:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,2,'fr','998261554','2026-04-18 18:35:19','2026-04-18 18:35:19','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'fr','1988929217','2026-04-18 18:35:19','2026-04-18 18:35:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,5,'fr','376820741','2026-04-18 18:35:20','2026-04-18 18:35:23','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A2','A4','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,1,'fr','1395349116','2026-04-18 18:35:20','2026-04-18 18:35:20','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,'fr','3532962','2026-04-18 18:35:20','2026-04-18 18:35:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,2,'fr','1824586258','2026-04-18 18:35:20','2026-04-18 18:35:21','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,4,'fr','1799312595','2026-04-18 18:35:20','2026-04-18 18:35:22','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,'fr','99142908','2026-04-18 18:35:21','2026-04-18 18:35:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,2,'fr','1707065353','2026-04-18 18:35:21','2026-04-18 18:35:22','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,2,'fr','1462328507','2026-04-18 18:35:21','2026-04-18 18:35:22','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,'fr','1015792619','2026-04-18 18:35:23','2026-04-18 18:35:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,4,'fr','1705156372','2026-04-18 18:35:23','2026-04-18 18:35:24','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,3,'fr','1331235142','2026-04-18 18:35:23','2026-04-18 18:35:24','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,2,'fr','1712822008','2026-04-18 18:35:23','2026-04-18 18:35:24','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,'fr','1966408716','2026-04-18 18:35:23','2026-04-18 18:35:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,5,'fr','1381304376','2026-04-18 18:35:24','2026-04-18 18:35:27','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A4','A2','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,'fr','322734938','2026-04-18 18:35:24','2026-04-18 18:35:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,2,'fr','268538758','2026-04-18 18:35:24','2026-04-18 18:35:25','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,'fr','331379486','2026-04-18 18:35:24','2026-04-18 18:35:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,2,'fr','1606695430','2026-04-18 18:35:25','2026-04-18 18:35:26','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,4,'fr','1204297121','2026-04-18 18:35:26','2026-04-18 18:35:27','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,2,'fr','912951746','2026-04-18 18:35:26','2026-04-18 18:35:27','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,4,'fr','271616188','2026-04-18 18:35:26','2026-04-18 18:35:28','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,2,'fr','660262547','2026-04-18 18:35:26','2026-04-18 18:35:27','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,5,'fr','1077074117','2026-04-18 18:35:28','2026-04-18 18:35:31','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A4','A1','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,2,'fr','1234564611','2026-04-18 18:35:28','2026-04-18 18:35:28','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,2,'fr','219538871','2026-04-18 18:35:28','2026-04-18 18:35:29','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,4,'fr','1869483359','2026-04-18 18:35:29','2026-04-18 18:35:30','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,4,'fr','339582097','2026-04-18 18:35:29','2026-04-18 18:35:31','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,2,'fr','1196686977','2026-04-18 18:35:29','2026-04-18 18:35:30','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,NULL,2,'fr','1654766406','2026-04-18 18:35:30','2026-04-18 18:35:30','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,NULL,2,'fr','1477394524','2026-04-18 18:35:30','2026-04-18 18:35:31','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,5,'fr','1737095698','2026-04-18 18:35:31','2026-04-18 18:35:34','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A4','A3','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,4,'fr','3820545','2026-04-18 18:35:32','2026-04-18 18:35:34','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,5,'fr','650295742','2026-04-18 18:35:32','2026-04-18 18:35:35','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A2','A1','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,3,'fr','878152748','2026-04-18 18:35:32','2026-04-18 18:35:33','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,4,'fr','1538582796','2026-04-18 18:35:32','2026-04-18 18:35:33','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,3,'fr','213142024','2026-04-18 18:35:34','2026-04-18 18:35:34','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,4,'fr','1471741215','2026-04-18 18:35:34','2026-04-18 18:35:36','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,5,'fr','1443427018','2026-04-18 18:35:35','2026-04-18 18:35:38','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A2','A1','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,3,'fr','328726048','2026-04-18 18:35:35','2026-04-18 18:35:36','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,5,'fr','2144584074','2026-04-18 18:35:35','2026-04-18 18:35:39','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A1','A2','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,1,'fr','1382946043','2026-04-18 18:35:36','2026-04-18 18:35:36','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,1,'fr','1351326678','2026-04-18 18:35:37','2026-04-18 18:35:37','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,NULL,3,'fr','1723889209','2026-04-18 18:35:37','2026-04-18 18:35:38','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,NULL,4,'fr','1081805413','2026-04-18 18:35:37','2026-04-18 18:35:39','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,NULL,NULL,'fr','1711938863','2026-04-18 18:35:38','2026-04-18 18:35:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,NULL,1,'fr','437724050','2026-04-18 18:35:39','2026-04-18 18:35:39','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,NULL,3,'fr','354194298','2026-04-18 18:35:39','2026-04-18 18:35:40','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,5,'fr','288201733','2026-04-18 18:35:39','2026-04-18 18:35:42','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A2','A4','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,2,'fr','1162196268','2026-04-18 18:35:39','2026-04-18 18:35:40','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,NULL,5,'fr','1420375004','2026-04-18 18:35:40','2026-04-18 18:35:43','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A4','A2','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,NULL,4,'fr','288402774','2026-04-18 18:35:40','2026-04-18 18:35:42','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,NULL,3,'fr','252778708','2026-04-18 18:35:41','2026-04-18 18:35:42','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,NULL,3,'fr','1518991190','2026-04-18 18:35:41','2026-04-18 18:35:42','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,NULL,4,'fr','151663304','2026-04-18 18:35:42','2026-04-18 18:35:44','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,NULL,3,'fr','1433344260','2026-04-18 18:35:43','2026-04-18 18:35:44','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,NULL,NULL,'fr','821014878','2026-04-18 18:35:43','2026-04-18 18:35:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,'fr','149262604','2026-04-18 18:35:43','2026-04-18 18:35:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,'fr','72088693','2026-04-18 18:35:44','2026-04-18 18:35:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,NULL,5,'fr','1358721384','2026-04-18 18:35:44','2026-04-18 18:35:47','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A3','A2','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,NULL,4,'fr','2100281822','2026-04-18 18:35:44','2026-04-18 18:35:46','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,NULL,3,'fr','1772019115','2026-04-18 18:35:45','2026-04-18 18:35:46','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,NULL,3,'fr','1246682075','2026-04-18 18:35:45','2026-04-18 18:35:46','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,NULL,5,'fr','623950969','2026-04-18 18:35:45','2026-04-18 18:35:48','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A2','A4','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,NULL,3,'fr','368364581','2026-04-18 18:35:46','2026-04-18 18:35:47','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,NULL,3,'fr','1842877314','2026-04-18 18:35:46','2026-04-18 18:35:47','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,NULL,4,'fr','111281658','2026-04-18 18:35:47','2026-04-18 18:35:49','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,NULL,5,'fr','809491377','2026-04-18 18:35:48','2026-04-18 18:35:51','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A3','A1','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,NULL,3,'fr','943133280','2026-04-18 18:35:48','2026-04-18 18:35:49','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,NULL,3,'fr','1121608299','2026-04-18 18:35:48','2026-04-18 18:35:49','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,NULL,5,'fr','779466308','2026-04-18 18:35:49','2026-04-18 18:35:52','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A1','A3','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,'fr','221348160','2026-04-18 18:35:50','2026-04-18 18:35:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,NULL,3,'fr','1352592155','2026-04-18 18:35:50','2026-04-18 18:35:51','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,NULL,3,'fr','384597632','2026-04-18 18:35:50','2026-04-18 18:35:51','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,NULL,NULL,'fr','689711580','2026-04-18 18:35:50','2026-04-18 18:35:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,NULL,1,'fr','1415215998','2026-04-18 18:35:51','2026-04-18 18:35:51','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,NULL,3,'fr','836028879','2026-04-18 18:35:52','2026-04-18 18:35:53','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,NULL,3,'fr','2092115543','2026-04-18 18:35:52','2026-04-18 18:35:53','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,NULL,3,'fr','2107409617','2026-04-18 18:35:52','2026-04-18 18:35:53','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,NULL,3,'fr','370640127','2026-04-18 18:35:52','2026-04-18 18:35:53','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,NULL,5,'fr','1939368973','2026-04-18 18:35:53','2026-04-18 18:35:56','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A4','A1','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,NULL,5,'fr','1628748833','2026-04-18 18:35:54','2026-04-18 18:35:57','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A2','A1','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,NULL,4,'fr','2141496539','2026-04-18 18:35:54','2026-04-18 18:35:55','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,NULL,3,'fr','2106573876','2026-04-18 18:35:54','2026-04-18 18:35:55','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,NULL,4,'fr','804548260','2026-04-18 18:35:55','2026-04-18 18:35:56','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,NULL,3,'fr','223191493','2026-04-18 18:35:56','2026-04-18 18:35:57','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,NULL,4,'fr','1822486101','2026-04-18 18:35:56','2026-04-18 18:35:58','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,NULL,5,'fr','1405373418','2026-04-18 18:35:57','2026-04-18 18:36:00','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A1','A3','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,NULL,5,'fr','1993455205','2026-04-18 18:35:57','2026-04-18 18:36:00','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A1','A4','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,NULL,3,'fr','635650236','2026-04-18 18:35:58','2026-04-18 18:35:59','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,NULL,4,'fr','1132672582','2026-04-18 18:35:58','2026-04-18 18:36:00','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,'fr','1046451069','2026-04-18 18:35:59','2026-04-18 18:35:59',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,NULL,3,'fr','1375612209','2026-04-18 18:36:00','2026-04-18 18:36:00','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,NULL,1,'fr','235864494','2026-04-18 18:36:00','2026-04-18 18:36:00','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,NULL,4,'fr','1668969633','2026-04-18 18:36:00','2026-04-18 18:36:02','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,NULL,5,'fr','2076451776','2026-04-18 18:36:01','2026-04-18 18:36:04','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Y','','','','','Y','','Y','','Y','','Y','','','','','','','','','','','','','','','','','','','','A1','A2','A3','A4','A4','A3','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,NULL,1,'fr','1765718502','2026-04-18 18:36:01','2026-04-18 18:36:01','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,'fr','155492523','2026-04-18 18:36:01','2026-04-18 18:36:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,NULL,1,'fr','1134234812','2026-04-18 18:36:02','2026-04-18 18:36:02','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,NULL,1,'fr','1318621616','2026-04-18 18:36:02','2026-04-18 18:36:02','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,NULL,4,'fr','1106049876','2026-04-18 18:36:02','2026-04-18 18:36:04','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,NULL,1,'fr','1267599708','2026-04-18 18:36:03','2026-04-18 18:36:03','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,NULL,3,'fr','1838648646','2026-04-18 18:36:03','2026-04-18 18:36:04','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,NULL,1,'fr','200643743','2026-04-18 18:36:04','2026-04-18 18:36:04','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,NULL,4,'fr','1146348090','2026-04-18 18:36:04','2026-04-18 18:36:06','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','','','','','','','fr','A0','','','','','',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,NULL,1,'fr','963488104','2026-04-18 18:36:05','2026-04-18 18:36:05','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,NULL,3,'fr','1245310961','2026-04-18 18:36:05','2026-04-18 18:36:06','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,NULL,1,'fr','2126277836','2026-04-18 18:36:05','2026-04-18 18:36:06','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,NULL,1,'fr','1902774555','2026-04-18 18:36:06','2026-04-18 18:36:07','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,NULL,NULL,'fr','1616816654','2026-04-18 18:36:07','2026-04-18 18:36:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,NULL,1,'fr','1568516429','2026-04-18 18:36:07','2026-04-18 18:36:08','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,NULL,NULL,'fr','872881783','2026-04-18 18:36:07','2026-04-18 18:36:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,NULL,1,'fr','1616925023','2026-04-18 18:36:08','2026-04-18 18:36:09','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,NULL,1,'fr','1590694214','2026-04-18 18:36:09','2026-04-18 18:36:10','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,NULL,1,'fr','824750601','2026-04-18 18:36:10','2026-04-18 18:36:10','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,NULL,1,'fr','408420832','2026-04-18 18:36:11','2026-04-18 18:36:11','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,NULL,1,'fr','1906211364','2026-04-18 18:36:12','2026-04-18 18:36:12','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,NULL,2,'fr','1047965701','2026-04-18 18:36:12','2026-04-18 18:36:13','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Test','Test','42','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test','Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,'2026-04-18 18:36:20',7,'fr','1026194432','2026-04-18 18:36:15','2026-04-18 18:36:20','Reponse-A-282267X1X1','Reponse-A-282267X1X2','Reponse-A-282267X1X3','1','Repons','Reponse-A-282267X1X6SQ01','Reponse-A-282267X1X6SQ02','Reponse-A-282267X1X6SQ03','Reponse-A-282267X1X6SQ04','Reponse-A-282267X1X7SQ01','Reponse-A-282267X1X7SQ02','Reponse-A-282267X1X7SQ03','Reponse-A-282267X1X7SQ04','1','2','3','1','Reponse-A-282267X1X31SQY01SQX01','Reponse-A-282267X1X31SQY01SQX02','Reponse-A-282267X1X31SQY01SQX03','Reponse-A-282267X1X31SQY01SQX04','Reponse-A-282267X1X31SQY02SQX01','Reponse-A-282267X1X31SQY02SQX02','Reponse-A-282267X1X31SQY02SQX03','Reponse-A-282267X1X31SQY02SQX04','Reponse-A-282267X1X31SQY03SQX01','Reponse-A-282267X1X31SQY03SQX02','Reponse-A-282267X1X31SQY03SQX03','Reponse-A-282267X1X31SQY03SQX04','Reponse-A-282267X1X31SQY04SQX01','Reponse-A-282267X1X31SQY04SQX02','Reponse-A-282267X1X31SQY04SQX03','Reponse-A-282267X1X31SQY04SQX04','Reponse-A-282267X7X60','Reponse-A-282267X7X61','1','Reponse-A-282267X7X63SQ01','Reponse-A-282267X7X63SQ02','Reponse-A-282267X7X63SQ03','Reponse-A-282267X7X63SQ04','Reponse-A-282267X7X64SQY01SQX01','Reponse-A-282267X7X64SQY01SQX02','Reponse-A-282267X7X64SQY01SQX03','Reponse-A-282267X7X64SQY01SQX04','Reponse-A-282267X7X64SQY02SQX01','Reponse-A-282267X7X64SQY02SQX02','Reponse-A-282267X7X64SQY02SQX03','Reponse-A-282267X7X64SQY02SQX04','Reponse-A-282267X7X64SQY03SQX01','Reponse-A-282267X7X64SQY03SQX02','Reponse-A-282267X7X64SQY03SQX03','Reponse-A-282267X7X64SQY03SQX04','Reponse-A-282267X7X64SQY04SQX01','Reponse-A-282267X7X64SQY04SQX02','Reponse-A-282267X7X64SQY04SQX03','Reponse-A-282267X7X64SQY04SQX04',1.0000000000,1.0000000000,2.0000000000,3.0000000000,1.0000000000,1.0000000000,2.0000000000,3.0000000000,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'2','3','1','2','3','1','2','3','1','2','3','1','2','3','1','2','F','Y','1','1','1','fr','A1','A11','A1','Reponse-A-282267X3X18other','A1','Reponse-A-282267X3X19comment',NULL,NULL,'','A1','A1','A1','A1','A1','A1','A1','A1','1','1','1','1','1','1','1','1','I','I','I','I','Y','Y','Y','Y','A11','A21','A11','A21','A11','A21','A11','A21','A11','A21','A11','A21','A11','A21','A11','A21','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','-2','Y','Y','Y','Y','Reponse-A-282267X4X20other',NULL,NULL,NULL,NULL,'Y','Y','Reponse-A-282267X4X22SQ001comment','Y','Reponse-A-282267X4X22SQ002comment','Y','Reponse-A-282267X4X22SQ003comment','Y','Reponse-A-282267X4X22SQ004comment','','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','','A1','A2','','','A4','A1','','','Y','',NULL,NULL,'',NULL,NULL,'Y','Y','Y','Y','Y',NULL,NULL,'Y','Y','Y','Y','Y','Y','Y','Y',NULL,NULL,NULL,NULL),(123,'2026-04-18 18:36:26',7,'fr','1531157190','2026-04-18 18:36:21','2026-04-18 18:36:26','Reponse-B-282267X1X1','Reponse-B-282267X1X2','Reponse-B-282267X1X3','2','Repons','Reponse-B-282267X1X6SQ01','Reponse-B-282267X1X6SQ02','Reponse-B-282267X1X6SQ03','Reponse-B-282267X1X6SQ04','Reponse-B-282267X1X7SQ01','Reponse-B-282267X1X7SQ02','Reponse-B-282267X1X7SQ03','Reponse-B-282267X1X7SQ04','2','3','1','2','Reponse-B-282267X1X31SQY01SQX01','Reponse-B-282267X1X31SQY01SQX02','Reponse-B-282267X1X31SQY01SQX03','Reponse-B-282267X1X31SQY01SQX04','Reponse-B-282267X1X31SQY02SQX01','Reponse-B-282267X1X31SQY02SQX02','Reponse-B-282267X1X31SQY02SQX03','Reponse-B-282267X1X31SQY02SQX04','Reponse-B-282267X1X31SQY03SQX01','Reponse-B-282267X1X31SQY03SQX02','Reponse-B-282267X1X31SQY03SQX03','Reponse-B-282267X1X31SQY03SQX04','Reponse-B-282267X1X31SQY04SQX01','Reponse-B-282267X1X31SQY04SQX02','Reponse-B-282267X1X31SQY04SQX03','Reponse-B-282267X1X31SQY04SQX04','Reponse-B-282267X7X60','Reponse-B-282267X7X61','2','Reponse-B-282267X7X63SQ01','Reponse-B-282267X7X63SQ02','Reponse-B-282267X7X63SQ03','Reponse-B-282267X7X63SQ04','Reponse-B-282267X7X64SQY01SQX01','Reponse-B-282267X7X64SQY01SQX02','Reponse-B-282267X7X64SQY01SQX03','Reponse-B-282267X7X64SQY01SQX04','Reponse-B-282267X7X64SQY02SQX01','Reponse-B-282267X7X64SQY02SQX02','Reponse-B-282267X7X64SQY02SQX03','Reponse-B-282267X7X64SQY02SQX04','Reponse-B-282267X7X64SQY03SQX01','Reponse-B-282267X7X64SQY03SQX02','Reponse-B-282267X7X64SQY03SQX03','Reponse-B-282267X7X64SQY03SQX04','Reponse-B-282267X7X64SQY04SQX01','Reponse-B-282267X7X64SQY04SQX02','Reponse-B-282267X7X64SQY04SQX03','Reponse-B-282267X7X64SQY04SQX04',2.0000000000,2.0000000000,3.0000000000,1.0000000000,2.0000000000,2.0000000000,3.0000000000,1.0000000000,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'3','1','2','3','1','2','3','1','2','3','1','2','3','1','2','3','M','N','2','2','2','fr','A2','A12','A2','Reponse-B-282267X3X18other','A2','Reponse-B-282267X3X19comment',NULL,NULL,'','A2','A2','A2','A2','A2','A2','A2','A2','2','2','2','2','2','2','2','2','S','S','S','S','U','U','U','U','A12','A22','A12','A22','A12','A22','A12','A22','A12','A22','A12','A22','A12','A22','A12','A22','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Y','','Y','','Reponse-B-282267X4X20other',NULL,NULL,NULL,NULL,'Y','','','Y','Reponse-B-282267X4X22SQ002comment','','','Y','Reponse-B-282267X4X22SQ004comment','','','1','','1','','1','','1','','1','','1','','1','','1','','A1','A2','','','A2','A4','','','N',NULL,'',NULL,NULL,'',NULL,'Y','','Y','','N','',NULL,'Y','','Y','','U',NULL,'U',NULL,NULL,'U',NULL,'U'),(124,NULL,1,'fr','1424199642','2026-04-18 18:36:55','2026-04-18 18:36:56','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','test','','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test','test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_old_survey_282267_20260418194631` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_old_survey_282267_20260418204935`
--

DROP TABLE IF EXISTS `lime_old_survey_282267_20260418204935`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_old_survey_282267_20260418204935` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `datestamp` datetime NOT NULL,
  `282267X1X1` text COLLATE utf8mb4_unicode_ci,
  `282267X1X2` text COLLATE utf8mb4_unicode_ci,
  `282267X1X3` text COLLATE utf8mb4_unicode_ci,
  `282267X1X4` text COLLATE utf8mb4_unicode_ci,
  `282267X1X5` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X60` text COLLATE utf8mb4_unicode_ci,
  `282267X7X61` text COLLATE utf8mb4_unicode_ci,
  `282267X7X62` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X219SQ001` text COLLATE utf8mb4_unicode_ci,
  `282267X2X9` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ001` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ002` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ003` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X32SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X14` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X13` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X15` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X58` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X59` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X16` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X37` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X17` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18other` text COLLATE utf8mb4_unicode_ci,
  `282267X3X19` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X19comment` text COLLATE utf8mb4_unicode_ci,
  `282267X3X23` datetime DEFAULT NULL,
  `282267X3X24` datetime DEFAULT NULL,
  `282267X3X30` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X36SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X20SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20other` text COLLATE utf8mb4_unicode_ci,
  `282267X4X21SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ05` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ002comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ003comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ004comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X40` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X33SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X41` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X251` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X252` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X253` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X254` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X391` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X392` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X393` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X394` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X42` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X43` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X44` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X45` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X54` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X55` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X56` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH101` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH102` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ201` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ202` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X50` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X48` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X49` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X221` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ001#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ001#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ002#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ002#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X228SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X228SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_old_survey_282267_20260418204935`
--

LOCK TABLES `lime_old_survey_282267_20260418204935` WRITE;
/*!40000 ALTER TABLE `lime_old_survey_282267_20260418204935` DISABLE KEYS */;
INSERT INTO `lime_old_survey_282267_20260418204935` VALUES (125,NULL,7,'fr','2109641391','2026-04-18 20:47:54','2026-04-18 20:48:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_old_survey_282267_20260418204935` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_old_survey_282267_20260418210548`
--

DROP TABLE IF EXISTS `lime_old_survey_282267_20260418210548`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_old_survey_282267_20260418210548` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `datestamp` datetime NOT NULL,
  `282267X1X1` text COLLATE utf8mb4_unicode_ci,
  `282267X1X2` text COLLATE utf8mb4_unicode_ci,
  `282267X1X3` text COLLATE utf8mb4_unicode_ci,
  `282267X1X4` text COLLATE utf8mb4_unicode_ci,
  `282267X1X5` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X60` text COLLATE utf8mb4_unicode_ci,
  `282267X7X61` text COLLATE utf8mb4_unicode_ci,
  `282267X7X62` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X219SQ001` text COLLATE utf8mb4_unicode_ci,
  `282267X2X9` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ001` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ002` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ003` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X32SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X14` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X13` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X15` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X58` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X59` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X16` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X37` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X17` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18other` text COLLATE utf8mb4_unicode_ci,
  `282267X3X19` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X19comment` text COLLATE utf8mb4_unicode_ci,
  `282267X3X23` datetime DEFAULT NULL,
  `282267X3X24` datetime DEFAULT NULL,
  `282267X3X30` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X36SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X20SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20other` text COLLATE utf8mb4_unicode_ci,
  `282267X4X21SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ05` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ002comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ003comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ004comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X40` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X33SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X41` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X251` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X252` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X253` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X254` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X391` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X392` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X393` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X394` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X42` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X43` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X44` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X45` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X54` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X55` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X56` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH101` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH102` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ201` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ202` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X50` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X48` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X49` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X221` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ001#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ001#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ002#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ002#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X228SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X228SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_old_survey_282267_20260418210548`
--

LOCK TABLES `lime_old_survey_282267_20260418210548` WRITE;
/*!40000 ALTER TABLE `lime_old_survey_282267_20260418210548` DISABLE KEYS */;
INSERT INTO `lime_old_survey_282267_20260418210548` VALUES (126,NULL,1,'fr','932646477','2026-04-18 20:49:46','2026-04-18 20:56:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'k,;:,','n,n;','0.987','kljkl','kljljk','jkllkj','jlljk','ljk','lk','kl','lk','ljk','lk','klj','ljk','jkl','ljk','kl','jkl','ljk','klj','jl','lk','skljjhfkjshdfdsf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6.0000000000,6.0000000000,6.0000000000,6.0000000000,'','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'AO05','AO01','AO01','AO01','','',''),(127,NULL,7,'fr','1717740226','2026-04-18 20:50:18','2026-04-18 20:50:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,NULL,1,'fr','1377345376','2026-04-18 20:50:55','2026-04-18 20:51:00','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,NULL,1,'fr','1022496479','2026-04-18 20:51:18','2026-04-18 20:51:25','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,NULL,1,'fr','1707030259','2026-04-18 20:52:25','2026-04-18 20:52:33','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,NULL,1,'fr','677618478','2026-04-18 20:55:12','2026-04-18 20:55:27','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,NULL,1,'fr','782041533','2026-04-18 20:59:56','2026-04-18 21:00:05','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','ssqdqs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,NULL,1,'fr','592551110','2026-04-18 21:01:25','2026-04-18 21:01:25','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_old_survey_282267_20260418210548` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_participant_attribute`
--

DROP TABLE IF EXISTS `lime_participant_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_participant_attribute` (
  `participant_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`participant_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_participant_attribute`
--

LOCK TABLES `lime_participant_attribute` WRITE;
/*!40000 ALTER TABLE `lime_participant_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_participant_attribute_names`
--

DROP TABLE IF EXISTS `lime_participant_attribute_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_participant_attribute_names` (
  `attribute_id` int NOT NULL AUTO_INCREMENT,
  `attribute_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `defaultname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `encrypted` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_attribute` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`attribute_id`,`attribute_type`),
  KEY `lime_idx_participant_attribute_names` (`attribute_id`,`attribute_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_participant_attribute_names`
--

LOCK TABLES `lime_participant_attribute_names` WRITE;
/*!40000 ALTER TABLE `lime_participant_attribute_names` DISABLE KEYS */;
INSERT INTO `lime_participant_attribute_names` VALUES (1,'TB','firstname','TRUE','Y','Y'),(2,'TB','lastname','TRUE','Y','Y'),(3,'TB','email','TRUE','Y','Y');
/*!40000 ALTER TABLE `lime_participant_attribute_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_participant_attribute_names_lang`
--

DROP TABLE IF EXISTS `lime_participant_attribute_names_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_participant_attribute_names_lang` (
  `attribute_id` int NOT NULL,
  `attribute_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`attribute_id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_participant_attribute_names_lang`
--

LOCK TABLES `lime_participant_attribute_names_lang` WRITE;
/*!40000 ALTER TABLE `lime_participant_attribute_names_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute_names_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_participant_attribute_values`
--

DROP TABLE IF EXISTS `lime_participant_attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_participant_attribute_values` (
  `value_id` int NOT NULL AUTO_INCREMENT,
  `attribute_id` int NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_participant_attribute_values`
--

LOCK TABLES `lime_participant_attribute_values` WRITE;
/*!40000 ALTER TABLE `lime_participant_attribute_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_participant_shares`
--

DROP TABLE IF EXISTS `lime_participant_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_participant_shares` (
  `participant_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `share_uid` int NOT NULL,
  `date_added` datetime NOT NULL,
  `can_edit` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`participant_id`,`share_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_participant_shares`
--

LOCK TABLES `lime_participant_shares` WRITE;
/*!40000 ALTER TABLE `lime_participant_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participant_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_participants`
--

DROP TABLE IF EXISTS `lime_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_participants` (
  `participant_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lastname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blacklisted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_uid` int NOT NULL,
  `created_by` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`participant_id`),
  KEY `lime_idx3_participants` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_participants`
--

LOCK TABLES `lime_participants` WRITE;
/*!40000 ALTER TABLE `lime_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_permissions`
--

DROP TABLE IF EXISTS `lime_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int NOT NULL,
  `uid` int NOT NULL,
  `permission` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_p` int NOT NULL DEFAULT '0',
  `read_p` int NOT NULL DEFAULT '0',
  `update_p` int NOT NULL DEFAULT '0',
  `delete_p` int NOT NULL DEFAULT '0',
  `import_p` int NOT NULL DEFAULT '0',
  `export_p` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx1_permissions` (`entity_id`,`entity`,`permission`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_permissions`
--

LOCK TABLES `lime_permissions` WRITE;
/*!40000 ALTER TABLE `lime_permissions` DISABLE KEYS */;
INSERT INTO `lime_permissions` VALUES (1,'global',0,1,'superadmin',0,1,0,0,0,0),(2,'survey',282267,1,'assessments',1,1,1,1,0,0),(3,'survey',282267,1,'quotas',1,1,1,1,0,0),(4,'survey',282267,1,'responses',1,1,1,1,1,1),(5,'survey',282267,1,'statistics',0,1,0,0,0,0),(6,'survey',282267,1,'survey',0,1,0,1,0,0),(7,'survey',282267,1,'surveyactivation',0,0,1,0,0,0),(8,'survey',282267,1,'surveycontent',1,1,1,1,1,1),(9,'survey',282267,1,'surveylocale',0,1,1,0,0,0),(10,'survey',282267,1,'surveysecurity',1,1,1,1,0,0),(11,'survey',282267,1,'surveysettings',0,1,1,0,0,0),(12,'survey',282267,1,'tokens',1,1,1,1,1,1),(13,'survey',282267,1,'translations',0,1,1,0,0,0);
/*!40000 ALTER TABLE `lime_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_permissiontemplates`
--

DROP TABLE IF EXISTS `lime_permissiontemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_permissiontemplates` (
  `ptid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `renewed_last` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`ptid`),
  UNIQUE KEY `lime_idx1_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_permissiontemplates`
--

LOCK TABLES `lime_permissiontemplates` WRITE;
/*!40000 ALTER TABLE `lime_permissiontemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_permissiontemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_plugin_settings`
--

DROP TABLE IF EXISTS `lime_plugin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_plugin_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plugin_id` int NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int DEFAULT NULL,
  `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_plugin_settings`
--

LOCK TABLES `lime_plugin_settings` WRITE;
/*!40000 ALTER TABLE `lime_plugin_settings` DISABLE KEYS */;
INSERT INTO `lime_plugin_settings` VALUES (1,1,NULL,NULL,'next_extension_update_check','\"2026-04-19 09:37:59\"');
/*!40000 ALTER TABLE `lime_plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_plugins`
--

DROP TABLE IF EXISTS `lime_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_plugins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_type` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `active` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '0',
  `version` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `load_error` int DEFAULT '0',
  `load_error_message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_plugins`
--

LOCK TABLES `lime_plugins` WRITE;
/*!40000 ALTER TABLE `lime_plugins` DISABLE KEYS */;
INSERT INTO `lime_plugins` VALUES (1,'UpdateCheck','core',1,0,'1.0.0',0,NULL),(2,'PasswordRequirement','core',1,0,'1.1.0',0,NULL),(3,'ComfortUpdateChecker','core',1,0,'1.0.0',0,NULL),(4,'Authdb','core',1,0,'1.0.0',0,NULL),(5,'AuthLDAP','core',0,0,'1.0.0',0,NULL),(6,'AuditLog','core',0,0,'1.0.0',0,NULL),(7,'Authwebserver','core',0,0,'1.0.0',0,NULL),(8,'ExportR','core',1,0,'1.0.0',0,NULL),(9,'ExportSTATAxml','core',1,0,'1.0.0',0,NULL),(10,'ExportSPSSsav','core',1,0,'1.0.4',0,NULL),(11,'oldUrlCompat','core',0,0,'1.0.1',0,NULL),(12,'expressionQuestionHelp','core',0,0,'1.0.1',0,NULL),(13,'expressionQuestionForAll','core',0,0,'1.0.1',0,NULL),(14,'expressionFixedDbVar','core',0,0,'1.0.2',0,NULL),(15,'customToken','core',0,0,'1.0.1',0,NULL),(16,'mailSenderToFrom','core',0,0,'1.0.0',0,NULL),(17,'TwoFactorAdminLogin','core',0,0,'1.3.0',0,NULL),(18,'statFunctions','core',1,0,'0.2.1',NULL,NULL);
/*!40000 ALTER TABLE `lime_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_question_attributes`
--

DROP TABLE IF EXISTS `lime_question_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_question_attributes` (
  `qaid` int NOT NULL AUTO_INCREMENT,
  `qid` int NOT NULL DEFAULT '0',
  `attribute` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`qaid`),
  KEY `lime_idx1_question_attributes` (`qid`),
  KEY `lime_idx2_question_attributes` (`attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=3466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_question_attributes`
--

LOCK TABLES `lime_question_attributes` WRITE;
/*!40000 ALTER TABLE `lime_question_attributes` DISABLE KEYS */;
INSERT INTO `lime_question_attributes` VALUES (1,1,'cssclass','',''),(2,1,'display_rows','',''),(3,1,'em_validation_q','',''),(4,1,'em_validation_q_tip','','de-informal'),(5,1,'em_validation_q_tip','','en'),(6,1,'em_validation_q_tip','','fr'),(7,1,'em_validation_q_tip','','it'),(8,1,'em_validation_q_tip','','ru'),(9,1,'hidden','0',''),(10,1,'hide_tip','0',''),(11,1,'input_size','',''),(12,1,'location_city','0',''),(13,1,'location_country','0',''),(14,1,'location_defaultcoordinates','',''),(15,1,'location_mapheight','300',''),(16,1,'location_mapservice','0',''),(17,1,'location_mapwidth','500',''),(18,1,'location_mapzoom','11',''),(19,1,'location_nodefaultfromip','0',''),(20,1,'location_postal','0',''),(21,1,'location_state','0',''),(22,1,'maximum_chars','',''),(23,1,'numbers_only','0',''),(24,1,'page_break','0',''),(25,1,'prefix','','de-informal'),(26,1,'prefix','','en'),(27,1,'prefix','','fr'),(28,1,'prefix','','it'),(29,1,'prefix','','ru'),(30,1,'random_group','',''),(31,1,'statistics_graphtype','0',''),(32,1,'statistics_showgraph','1',''),(33,1,'statistics_showmap','1',''),(34,1,'suffix','','de-informal'),(35,1,'suffix','','en'),(36,1,'suffix','','fr'),(37,1,'suffix','','it'),(38,1,'suffix','','ru'),(39,1,'text_input_width','',''),(40,1,'time_limit','',''),(41,1,'time_limit_action','1',''),(42,1,'time_limit_countdown_message','','de-informal'),(43,1,'time_limit_countdown_message','','en'),(44,1,'time_limit_countdown_message','','fr'),(45,1,'time_limit_countdown_message','','it'),(46,1,'time_limit_countdown_message','','ru'),(47,1,'time_limit_disable_next','0',''),(48,1,'time_limit_disable_prev','0',''),(49,1,'time_limit_message','','de-informal'),(50,1,'time_limit_message','','en'),(51,1,'time_limit_message','','fr'),(52,1,'time_limit_message','','it'),(53,1,'time_limit_message','','ru'),(54,1,'time_limit_message_delay','',''),(55,1,'time_limit_message_style','',''),(56,1,'time_limit_timer_style','',''),(57,1,'time_limit_warning','',''),(58,1,'time_limit_warning_2','',''),(59,1,'time_limit_warning_2_display_time','',''),(60,1,'time_limit_warning_2_message','','de-informal'),(61,1,'time_limit_warning_2_message','','en'),(62,1,'time_limit_warning_2_message','','fr'),(63,1,'time_limit_warning_2_message','','it'),(64,1,'time_limit_warning_2_message','','ru'),(65,1,'time_limit_warning_2_style','',''),(66,1,'time_limit_warning_display_time','',''),(67,1,'time_limit_warning_message','','de-informal'),(68,1,'time_limit_warning_message','','en'),(69,1,'time_limit_warning_message','','fr'),(70,1,'time_limit_warning_message','','it'),(71,1,'time_limit_warning_message','','ru'),(72,1,'time_limit_warning_style','',''),(73,2,'cssclass','',''),(74,2,'display_rows','',''),(75,2,'em_validation_q','',''),(76,2,'em_validation_q_tip','','de-informal'),(77,2,'em_validation_q_tip','','en'),(78,2,'em_validation_q_tip','','fr'),(79,2,'em_validation_q_tip','','it'),(80,2,'em_validation_q_tip','','ru'),(81,2,'hidden','0',''),(82,2,'hide_tip','0',''),(83,2,'input_size','',''),(84,2,'maximum_chars','',''),(85,2,'page_break','0',''),(86,2,'random_group','',''),(87,2,'statistics_graphtype','0',''),(88,2,'statistics_showgraph','1',''),(89,2,'text_input_width','',''),(90,2,'time_limit','',''),(91,2,'time_limit_action','1',''),(92,2,'time_limit_countdown_message','','de-informal'),(93,2,'time_limit_countdown_message','','en'),(94,2,'time_limit_countdown_message','','fr'),(95,2,'time_limit_countdown_message','','it'),(96,2,'time_limit_countdown_message','','ru'),(97,2,'time_limit_disable_next','0',''),(98,2,'time_limit_disable_prev','0',''),(99,2,'time_limit_message','','de-informal'),(100,2,'time_limit_message','','en'),(101,2,'time_limit_message','','fr'),(102,2,'time_limit_message','','it'),(103,2,'time_limit_message','','ru'),(104,2,'time_limit_message_delay','',''),(105,2,'time_limit_message_style','',''),(106,2,'time_limit_timer_style','',''),(107,2,'time_limit_warning','',''),(108,2,'time_limit_warning_2','',''),(109,2,'time_limit_warning_2_display_time','',''),(110,2,'time_limit_warning_2_message','','de-informal'),(111,2,'time_limit_warning_2_message','','en'),(112,2,'time_limit_warning_2_message','','fr'),(113,2,'time_limit_warning_2_message','','it'),(114,2,'time_limit_warning_2_message','','ru'),(115,2,'time_limit_warning_2_style','',''),(116,2,'time_limit_warning_display_time','',''),(117,2,'time_limit_warning_message','','de-informal'),(118,2,'time_limit_warning_message','','en'),(119,2,'time_limit_warning_message','','fr'),(120,2,'time_limit_warning_message','','it'),(121,2,'time_limit_warning_message','','ru'),(122,2,'time_limit_warning_style','',''),(123,3,'cssclass','',''),(124,3,'display_rows','',''),(125,3,'em_validation_q','',''),(126,3,'em_validation_q_tip','','de-informal'),(127,3,'em_validation_q_tip','','en'),(128,3,'em_validation_q_tip','','fr'),(129,3,'em_validation_q_tip','','it'),(130,3,'em_validation_q_tip','','ru'),(131,3,'hidden','0',''),(132,3,'hide_tip','0',''),(133,3,'input_size','',''),(134,3,'maximum_chars','',''),(135,3,'page_break','0',''),(136,3,'random_group','',''),(137,3,'statistics_graphtype','0',''),(138,3,'statistics_showgraph','1',''),(139,3,'text_input_width','',''),(140,3,'time_limit','',''),(141,3,'time_limit_action','1',''),(142,3,'time_limit_countdown_message','','de-informal'),(143,3,'time_limit_countdown_message','','en'),(144,3,'time_limit_countdown_message','','fr'),(145,3,'time_limit_countdown_message','','it'),(146,3,'time_limit_countdown_message','','ru'),(147,3,'time_limit_disable_next','0',''),(148,3,'time_limit_disable_prev','0',''),(149,3,'time_limit_message','','de-informal'),(150,3,'time_limit_message','','en'),(151,3,'time_limit_message','','fr'),(152,3,'time_limit_message','','it'),(153,3,'time_limit_message','','ru'),(154,3,'time_limit_message_delay','',''),(155,3,'time_limit_message_style','',''),(156,3,'time_limit_timer_style','',''),(157,3,'time_limit_warning','',''),(158,3,'time_limit_warning_2','',''),(159,3,'time_limit_warning_2_display_time','',''),(160,3,'time_limit_warning_2_message','','de-informal'),(161,3,'time_limit_warning_2_message','','en'),(162,3,'time_limit_warning_2_message','','fr'),(163,3,'time_limit_warning_2_message','','it'),(164,3,'time_limit_warning_2_message','','ru'),(165,3,'time_limit_warning_2_style','',''),(166,3,'time_limit_warning_display_time','',''),(167,3,'time_limit_warning_message','','de-informal'),(168,3,'time_limit_warning_message','','en'),(169,3,'time_limit_warning_message','','fr'),(170,3,'time_limit_warning_message','','it'),(171,3,'time_limit_warning_message','','ru'),(172,3,'time_limit_warning_style','',''),(173,4,'cssclass','',''),(174,4,'display_rows','',''),(175,4,'em_validation_q','',''),(176,4,'em_validation_q_tip','','de-informal'),(177,4,'em_validation_q_tip','','en'),(178,4,'em_validation_q_tip','','fr'),(179,4,'em_validation_q_tip','','it'),(180,4,'em_validation_q_tip','','ru'),(181,4,'hidden','0',''),(182,4,'hide_tip','0',''),(183,4,'input_size','',''),(184,4,'location_city','0',''),(185,4,'location_country','0',''),(186,4,'location_defaultcoordinates','',''),(187,4,'location_mapheight','300',''),(188,4,'location_mapservice','0',''),(189,4,'location_mapwidth','500',''),(190,4,'location_mapzoom','11',''),(191,4,'location_nodefaultfromip','0',''),(192,4,'location_postal','0',''),(193,4,'location_state','0',''),(194,4,'maximum_chars','',''),(195,4,'numbers_only','1',''),(196,4,'page_break','0',''),(197,4,'prefix','','de-informal'),(198,4,'prefix','','en'),(199,4,'prefix','','fr'),(200,4,'prefix','','it'),(201,4,'prefix','','ru'),(202,4,'random_group','',''),(203,4,'statistics_graphtype','0',''),(204,4,'statistics_showgraph','1',''),(205,4,'statistics_showmap','1',''),(206,4,'suffix','','de-informal'),(207,4,'suffix','','en'),(208,4,'suffix','','fr'),(209,4,'suffix','','it'),(210,4,'suffix','','ru'),(211,4,'text_input_width','',''),(212,4,'time_limit','',''),(213,4,'time_limit_action','1',''),(214,4,'time_limit_countdown_message','','de-informal'),(215,4,'time_limit_countdown_message','','en'),(216,4,'time_limit_countdown_message','','fr'),(217,4,'time_limit_countdown_message','','it'),(218,4,'time_limit_countdown_message','','ru'),(219,4,'time_limit_disable_next','0',''),(220,4,'time_limit_disable_prev','0',''),(221,4,'time_limit_message','','de-informal'),(222,4,'time_limit_message','','en'),(223,4,'time_limit_message','','fr'),(224,4,'time_limit_message','','it'),(225,4,'time_limit_message','','ru'),(226,4,'time_limit_message_delay','',''),(227,4,'time_limit_message_style','',''),(228,4,'time_limit_timer_style','',''),(229,4,'time_limit_warning','',''),(230,4,'time_limit_warning_2','',''),(231,4,'time_limit_warning_2_display_time','',''),(232,4,'time_limit_warning_2_message','','de-informal'),(233,4,'time_limit_warning_2_message','','en'),(234,4,'time_limit_warning_2_message','','fr'),(235,4,'time_limit_warning_2_message','','it'),(236,4,'time_limit_warning_2_message','','ru'),(237,4,'time_limit_warning_2_style','',''),(238,4,'time_limit_warning_display_time','',''),(239,4,'time_limit_warning_message','','de-informal'),(240,4,'time_limit_warning_message','','en'),(241,4,'time_limit_warning_message','','fr'),(242,4,'time_limit_warning_message','','it'),(243,4,'time_limit_warning_message','','ru'),(244,4,'time_limit_warning_style','',''),(245,5,'cssclass','',''),(246,5,'display_rows','2',''),(247,5,'em_validation_q','',''),(248,5,'em_validation_q_tip','','de-informal'),(249,5,'em_validation_q_tip','','en'),(250,5,'em_validation_q_tip','','fr'),(251,5,'em_validation_q_tip','','it'),(252,5,'em_validation_q_tip','','ru'),(253,5,'hidden','0',''),(254,5,'hide_tip','0',''),(255,5,'input_size','',''),(256,5,'maximum_chars','6',''),(257,5,'page_break','0',''),(258,5,'random_group','',''),(259,5,'statistics_graphtype','0',''),(260,5,'statistics_showgraph','1',''),(261,5,'text_input_width','3',''),(262,5,'time_limit','',''),(263,5,'time_limit_action','1',''),(264,5,'time_limit_countdown_message','','de-informal'),(265,5,'time_limit_countdown_message','','en'),(266,5,'time_limit_countdown_message','','fr'),(267,5,'time_limit_countdown_message','','it'),(268,5,'time_limit_countdown_message','','ru'),(269,5,'time_limit_disable_next','0',''),(270,5,'time_limit_disable_prev','0',''),(271,5,'time_limit_message','','de-informal'),(272,5,'time_limit_message','','en'),(273,5,'time_limit_message','','fr'),(274,5,'time_limit_message','','it'),(275,5,'time_limit_message','','ru'),(276,5,'time_limit_message_delay','',''),(277,5,'time_limit_message_style','',''),(278,5,'time_limit_timer_style','',''),(279,5,'time_limit_warning','',''),(280,5,'time_limit_warning_2','',''),(281,5,'time_limit_warning_2_display_time','',''),(282,5,'time_limit_warning_2_message','','de-informal'),(283,5,'time_limit_warning_2_message','','en'),(284,5,'time_limit_warning_2_message','','fr'),(285,5,'time_limit_warning_2_message','','it'),(286,5,'time_limit_warning_2_message','','ru'),(287,5,'time_limit_warning_2_style','',''),(288,5,'time_limit_warning_display_time','',''),(289,5,'time_limit_warning_message','','de-informal'),(290,5,'time_limit_warning_message','','en'),(291,5,'time_limit_warning_message','','fr'),(292,5,'time_limit_warning_message','','it'),(293,5,'time_limit_warning_message','','ru'),(294,5,'time_limit_warning_style','',''),(295,6,'array_filter','',''),(296,6,'array_filter_exclude','',''),(297,6,'array_filter_style','0',''),(298,6,'cssclass','',''),(299,6,'display_rows','',''),(300,6,'em_validation_q','',''),(301,6,'em_validation_q_tip','','de-informal'),(302,6,'em_validation_q_tip','','en'),(303,6,'em_validation_q_tip','','fr'),(304,6,'em_validation_q_tip','','it'),(305,6,'em_validation_q_tip','','ru'),(306,6,'em_validation_sq','',''),(307,6,'em_validation_sq_tip','','de-informal'),(308,6,'em_validation_sq_tip','','en'),(309,6,'em_validation_sq_tip','','fr'),(310,6,'em_validation_sq_tip','','it'),(311,6,'em_validation_sq_tip','','ru'),(312,6,'exclude_all_others','',''),(313,6,'hidden','0',''),(314,6,'hide_tip','0',''),(315,6,'input_size','',''),(316,6,'label_input_columns','',''),(317,6,'max_answers','',''),(318,6,'maximum_chars','',''),(319,6,'min_answers','',''),(320,6,'numbers_only','0',''),(321,6,'page_break','0',''),(322,6,'prefix','','de-informal'),(323,6,'prefix','','en'),(324,6,'prefix','','fr'),(325,6,'prefix','','it'),(326,6,'prefix','','ru'),(327,6,'random_group','',''),(328,6,'random_order','0',''),(329,6,'statistics_graphtype','0',''),(330,6,'statistics_showgraph','1',''),(331,6,'suffix','','de-informal'),(332,6,'suffix','','en'),(333,6,'suffix','','fr'),(334,6,'suffix','','it'),(335,6,'suffix','','ru'),(336,6,'text_input_columns','',''),(337,7,'array_filter','',''),(338,7,'array_filter_exclude','',''),(339,7,'array_filter_style','0',''),(340,7,'cssclass','',''),(341,7,'display_rows','2',''),(342,7,'em_validation_q','',''),(343,7,'em_validation_q_tip','','de-informal'),(344,7,'em_validation_q_tip','','en'),(345,7,'em_validation_q_tip','','fr'),(346,7,'em_validation_q_tip','','it'),(347,7,'em_validation_q_tip','','ru'),(348,7,'em_validation_sq','',''),(349,7,'em_validation_sq_tip','','de-informal'),(350,7,'em_validation_sq_tip','','en'),(351,7,'em_validation_sq_tip','','fr'),(352,7,'em_validation_sq_tip','','it'),(353,7,'em_validation_sq_tip','','ru'),(354,7,'exclude_all_others','',''),(355,7,'hidden','0',''),(356,7,'hide_tip','0',''),(357,7,'input_size','',''),(358,7,'label_input_columns','',''),(359,7,'max_answers','',''),(360,7,'maximum_chars','',''),(361,7,'min_answers','',''),(362,7,'numbers_only','0',''),(363,7,'page_break','0',''),(364,7,'prefix','','de-informal'),(365,7,'prefix','','en'),(366,7,'prefix','','fr'),(367,7,'prefix','','it'),(368,7,'prefix','','ru'),(369,7,'random_group','',''),(370,7,'random_order','1',''),(371,7,'statistics_graphtype','0',''),(372,7,'statistics_showgraph','1',''),(373,7,'suffix','','de-informal'),(374,7,'suffix','','en'),(375,7,'suffix','','fr'),(376,7,'suffix','','it'),(377,7,'suffix','','ru'),(378,7,'text_input_columns','',''),(379,8,'array_filter','',''),(380,8,'array_filter_exclude','',''),(381,8,'array_filter_style','0',''),(382,8,'cssclass','',''),(383,8,'display_rows','',''),(384,8,'em_validation_q','',''),(385,8,'em_validation_q_tip','','de-informal'),(386,8,'em_validation_q_tip','','en'),(387,8,'em_validation_q_tip','','fr'),(388,8,'em_validation_q_tip','','it'),(389,8,'em_validation_q_tip','','ru'),(390,8,'em_validation_sq','',''),(391,8,'em_validation_sq_tip','','de-informal'),(392,8,'em_validation_sq_tip','','en'),(393,8,'em_validation_sq_tip','','fr'),(394,8,'em_validation_sq_tip','','it'),(395,8,'em_validation_sq_tip','','ru'),(396,8,'exclude_all_others','',''),(397,8,'hidden','0',''),(398,8,'hide_tip','0',''),(399,8,'input_size','',''),(400,8,'label_input_columns','',''),(401,8,'max_answers','',''),(402,8,'maximum_chars','2',''),(403,8,'min_answers','',''),(404,8,'numbers_only','1',''),(405,8,'page_break','0',''),(406,8,'prefix','','de-informal'),(407,8,'prefix','','en'),(408,8,'prefix','','fr'),(409,8,'prefix','','it'),(410,8,'prefix','','ru'),(411,8,'random_group','',''),(412,8,'random_order','0',''),(413,8,'statistics_graphtype','0',''),(414,8,'statistics_showgraph','1',''),(415,8,'suffix','','de-informal'),(416,8,'suffix','','en'),(417,8,'suffix','','fr'),(418,8,'suffix','','it'),(419,8,'suffix','','ru'),(420,8,'text_input_columns','3',''),(421,9,'cssclass','',''),(422,9,'em_validation_q','',''),(423,9,'em_validation_q_tip','','de-informal'),(424,9,'em_validation_q_tip','','en'),(425,9,'em_validation_q_tip','','fr'),(426,9,'em_validation_q_tip','','it'),(427,9,'em_validation_q_tip','','ru'),(428,9,'em_validation_sq','',''),(429,9,'em_validation_sq_tip','','de-informal'),(430,9,'em_validation_sq_tip','','en'),(431,9,'em_validation_sq_tip','','fr'),(432,9,'em_validation_sq_tip','','it'),(433,9,'em_validation_sq_tip','','ru'),(434,9,'hidden','0',''),(435,9,'hide_tip','0',''),(436,9,'input_size','',''),(437,9,'max_num_value_n','',''),(438,9,'maximum_chars','',''),(439,9,'min_num_value_n','',''),(440,9,'num_value_int_only','0',''),(441,9,'page_break','0',''),(442,9,'placeholder','','de-informal'),(443,9,'placeholder','','en'),(444,9,'placeholder','','fr'),(445,9,'placeholder','','it'),(446,9,'placeholder','','ru'),(447,9,'prefix','','de-informal'),(448,9,'prefix','','en'),(449,9,'prefix','','fr'),(450,9,'prefix','','it'),(451,9,'prefix','','ru'),(452,9,'printable_help','','de-informal'),(453,9,'printable_help','','en'),(454,9,'printable_help','','fr'),(455,9,'printable_help','','it'),(456,9,'printable_help','','ru'),(457,9,'public_statistics','0',''),(458,9,'random_group','',''),(459,9,'statistics_graphtype','0',''),(460,9,'statistics_showgraph','1',''),(461,9,'suffix','','de-informal'),(462,9,'suffix','','en'),(463,9,'suffix','','fr'),(464,9,'suffix','','it'),(465,9,'suffix','','ru'),(466,9,'text_input_width','',''),(467,10,'array_filter','',''),(468,10,'array_filter_exclude','',''),(469,10,'array_filter_style','0',''),(470,10,'cssclass','',''),(471,10,'em_validation_q','',''),(472,10,'em_validation_q_tip','','de-informal'),(473,10,'em_validation_q_tip','','en'),(474,10,'em_validation_q_tip','','fr'),(475,10,'em_validation_q_tip','','it'),(476,10,'em_validation_q_tip','','ru'),(477,10,'em_validation_sq','',''),(478,10,'em_validation_sq_tip','','de-informal'),(479,10,'em_validation_sq_tip','','en'),(480,10,'em_validation_sq_tip','','fr'),(481,10,'em_validation_sq_tip','','it'),(482,10,'em_validation_sq_tip','','ru'),(483,10,'equals_num_value','',''),(484,10,'exclude_all_others','',''),(485,10,'hidden','0',''),(486,10,'hide_tip','0',''),(487,10,'input_size','',''),(488,10,'label_input_columns','',''),(489,10,'max_answers','',''),(490,10,'max_num_value','',''),(491,10,'max_num_value_n','',''),(492,10,'maximum_chars','',''),(493,10,'min_answers','',''),(494,10,'min_num_value','',''),(495,10,'min_num_value_n','',''),(496,10,'num_value_int_only','0',''),(497,10,'page_break','0',''),(498,10,'prefix','','de-informal'),(499,10,'prefix','','en'),(500,10,'prefix','','fr'),(501,10,'prefix','','it'),(502,10,'prefix','','ru'),(503,10,'printable_help','','de-informal'),(504,10,'printable_help','','en'),(505,10,'printable_help','','fr'),(506,10,'printable_help','','it'),(507,10,'printable_help','','ru'),(508,10,'public_statistics','0',''),(509,10,'random_group','',''),(510,10,'random_order','0',''),(511,10,'slider_accuracy','',''),(512,10,'slider_custom_handle','f1ae',''),(513,10,'slider_default','',''),(514,10,'slider_default_set','1',''),(515,10,'slider_handle','0',''),(516,10,'slider_layout','0',''),(517,10,'slider_max','',''),(518,10,'slider_middlestart','0',''),(519,10,'slider_min','',''),(520,10,'slider_orientation','0',''),(521,10,'slider_reset','0',''),(522,10,'slider_reversed','0',''),(523,10,'slider_separator','|',''),(524,10,'slider_showminmax','0',''),(525,10,'statistics_graphtype','0',''),(526,10,'statistics_showgraph','1',''),(527,10,'suffix','','de-informal'),(528,10,'suffix','','en'),(529,10,'suffix','','fr'),(530,10,'suffix','','it'),(531,10,'suffix','','ru'),(532,10,'text_input_width','',''),(533,10,'value_range_allows_missing','1',''),(534,11,'array_filter','',''),(535,11,'array_filter_exclude','',''),(536,11,'array_filter_style','0',''),(537,11,'cssclass','',''),(538,11,'em_validation_q','',''),(539,11,'em_validation_q_tip','','de-informal'),(540,11,'em_validation_q_tip','','en'),(541,11,'em_validation_q_tip','','fr'),(542,11,'em_validation_q_tip','','it'),(543,11,'em_validation_q_tip','','ru'),(544,11,'em_validation_sq','',''),(545,11,'em_validation_sq_tip','','de-informal'),(546,11,'em_validation_sq_tip','','en'),(547,11,'em_validation_sq_tip','','fr'),(548,11,'em_validation_sq_tip','','it'),(549,11,'em_validation_sq_tip','','ru'),(550,11,'equals_num_value','',''),(551,11,'exclude_all_others','',''),(552,11,'hidden','0',''),(553,11,'hide_tip','0',''),(554,11,'input_size','',''),(555,11,'label_input_columns','',''),(556,11,'max_answers','',''),(557,11,'max_num_value','10',''),(558,11,'max_num_value_n','',''),(559,11,'maximum_chars','1',''),(560,11,'min_answers','',''),(561,11,'min_num_value','3',''),(562,11,'min_num_value_n','',''),(563,11,'num_value_int_only','0',''),(564,11,'page_break','0',''),(565,11,'prefix','','de-informal'),(566,11,'prefix','','en'),(567,11,'prefix','','fr'),(568,11,'prefix','','it'),(569,11,'prefix','','ru'),(570,11,'printable_help','','de-informal'),(571,11,'printable_help','','en'),(572,11,'printable_help','','fr'),(573,11,'printable_help','','it'),(574,11,'printable_help','','ru'),(575,11,'public_statistics','0',''),(576,11,'random_group','',''),(577,11,'random_order','0',''),(578,11,'slider_accuracy','',''),(579,11,'slider_custom_handle','f1ae',''),(580,11,'slider_default','',''),(581,11,'slider_default_set','1',''),(582,11,'slider_handle','0',''),(583,11,'slider_layout','0',''),(584,11,'slider_max','',''),(585,11,'slider_middlestart','0',''),(586,11,'slider_min','',''),(587,11,'slider_orientation','0',''),(588,11,'slider_reset','0',''),(589,11,'slider_reversed','0',''),(590,11,'slider_separator','|',''),(591,11,'slider_showminmax','0',''),(592,11,'statistics_graphtype','0',''),(593,11,'statistics_showgraph','1',''),(594,11,'suffix','','de-informal'),(595,11,'suffix','','en'),(596,11,'suffix','','fr'),(597,11,'suffix','','it'),(598,11,'suffix','','ru'),(599,11,'text_input_width','',''),(600,11,'value_range_allows_missing','1',''),(601,12,'array_filter','',''),(602,12,'array_filter_exclude','',''),(603,12,'array_filter_style','0',''),(604,12,'cssclass','',''),(605,12,'em_validation_q','',''),(606,12,'em_validation_q_tip','','de-informal'),(607,12,'em_validation_q_tip','','en'),(608,12,'em_validation_q_tip','','fr'),(609,12,'em_validation_q_tip','','it'),(610,12,'em_validation_q_tip','','ru'),(611,12,'em_validation_sq','',''),(612,12,'em_validation_sq_tip','','de-informal'),(613,12,'em_validation_sq_tip','','en'),(614,12,'em_validation_sq_tip','','fr'),(615,12,'em_validation_sq_tip','','it'),(616,12,'em_validation_sq_tip','','ru'),(617,12,'equals_num_value','',''),(618,12,'exclude_all_others','',''),(619,12,'hidden','0',''),(620,12,'hide_tip','0',''),(621,12,'input_size','',''),(622,12,'label_input_columns','',''),(623,12,'max_answers','',''),(624,12,'max_num_value','',''),(625,12,'max_num_value_n','',''),(626,12,'maximum_chars','',''),(627,12,'min_answers','',''),(628,12,'min_num_value','',''),(629,12,'min_num_value_n','',''),(630,12,'num_value_int_only','0',''),(631,12,'page_break','0',''),(632,12,'prefix','','de-informal'),(633,12,'prefix','','en'),(634,12,'prefix','','fr'),(635,12,'prefix','','it'),(636,12,'prefix','','ru'),(637,12,'printable_help','','de-informal'),(638,12,'printable_help','','en'),(639,12,'printable_help','','fr'),(640,12,'printable_help','','it'),(641,12,'printable_help','','ru'),(642,12,'public_statistics','0',''),(643,12,'random_group','',''),(644,12,'random_order','0',''),(645,12,'slider_accuracy','0.1',''),(646,12,'slider_custom_handle','f1ae',''),(647,12,'slider_default','5',''),(648,12,'slider_default_set','1',''),(649,12,'slider_handle','0',''),(650,12,'slider_layout','1',''),(651,12,'slider_max','10',''),(652,12,'slider_middlestart','1',''),(653,12,'slider_min','1',''),(654,12,'slider_orientation','0',''),(655,12,'slider_reset','0',''),(656,12,'slider_reversed','0',''),(657,12,'slider_separator','|',''),(658,12,'slider_showminmax','1',''),(659,12,'statistics_graphtype','0',''),(660,12,'statistics_showgraph','1',''),(661,12,'suffix','','de-informal'),(662,12,'suffix','','en'),(663,12,'suffix','','fr'),(664,12,'suffix','','it'),(665,12,'suffix','','ru'),(666,12,'text_input_width','',''),(667,12,'value_range_allows_missing','1',''),(668,13,'cssclass','',''),(669,13,'display_type','0',''),(670,13,'hidden','0',''),(671,13,'hide_tip','0',''),(672,13,'page_break','0',''),(673,13,'printable_help','','de-informal'),(674,13,'printable_help','','en'),(675,13,'printable_help','','fr'),(676,13,'printable_help','','it'),(677,13,'printable_help','','ru'),(678,13,'public_statistics','0',''),(679,13,'random_group','',''),(680,13,'scale_export','0',''),(681,13,'statistics_graphtype','0',''),(682,13,'statistics_showgraph','1',''),(683,14,'cssclass','',''),(684,14,'display_type','0',''),(685,14,'hidden','0',''),(686,14,'hide_tip','0',''),(687,14,'page_break','0',''),(688,14,'printable_help','','de-informal'),(689,14,'printable_help','','en'),(690,14,'printable_help','','fr'),(691,14,'printable_help','','it'),(692,14,'printable_help','','ru'),(693,14,'public_statistics','0',''),(694,14,'random_group','',''),(695,14,'scale_export','0',''),(696,14,'statistics_graphtype','0',''),(697,14,'statistics_showgraph','1',''),(698,15,'cssclass','',''),(699,15,'em_validation_q','',''),(700,15,'em_validation_q_tip','','de-informal'),(701,15,'em_validation_q_tip','','en'),(702,15,'em_validation_q_tip','','fr'),(703,15,'em_validation_q_tip','','it'),(704,15,'em_validation_q_tip','','ru'),(705,15,'hidden','0',''),(706,15,'hide_tip','0',''),(707,15,'page_break','0',''),(708,15,'printable_help','','de-informal'),(709,15,'printable_help','','en'),(710,15,'printable_help','','fr'),(711,15,'printable_help','','it'),(712,15,'printable_help','','ru'),(713,15,'public_statistics','0',''),(714,15,'random_group','',''),(715,15,'slider_rating','0',''),(716,15,'statistics_graphtype','0',''),(717,15,'statistics_showgraph','1',''),(718,16,'cssclass','',''),(719,16,'hidden','0',''),(720,16,'hide_tip','0',''),(721,16,'random_group','',''),(722,16,'statistics_graphtype','0',''),(723,16,'statistics_showgraph','1',''),(724,17,'answer_order','normal',''),(725,17,'category_separator','-',''),(726,17,'cssclass','',''),(727,17,'dropdown_prefix','0',''),(728,17,'dropdown_size','',''),(729,17,'em_validation_q','',''),(730,17,'em_validation_q_tip','','de-informal'),(731,17,'em_validation_q_tip','','en'),(732,17,'em_validation_q_tip','','fr'),(733,17,'em_validation_q_tip','','it'),(734,17,'em_validation_q_tip','','ru'),(735,17,'hidden','0',''),(736,17,'hide_tip','0',''),(737,17,'other_comment_mandatory','0',''),(738,17,'other_position','default',''),(739,17,'other_position_code','',''),(740,17,'other_replace_text','','de-informal'),(741,17,'other_replace_text','','en'),(742,17,'other_replace_text','','fr'),(743,17,'other_replace_text','','it'),(744,17,'other_replace_text','','ru'),(745,17,'page_break','0',''),(746,17,'printable_help','','de-informal'),(747,17,'printable_help','','en'),(748,17,'printable_help','','fr'),(749,17,'printable_help','','it'),(750,17,'printable_help','','ru'),(751,17,'public_statistics','0',''),(752,17,'random_group','',''),(753,17,'scale_export','0',''),(754,17,'statistics_graphtype','0',''),(755,17,'statistics_showgraph','1',''),(756,17,'time_limit','',''),(757,17,'time_limit_action','1',''),(758,17,'time_limit_countdown_message','','de-informal'),(759,17,'time_limit_countdown_message','','en'),(760,17,'time_limit_countdown_message','','fr'),(761,17,'time_limit_countdown_message','','it'),(762,17,'time_limit_countdown_message','','ru'),(763,17,'time_limit_disable_next','0',''),(764,17,'time_limit_disable_prev','0',''),(765,17,'time_limit_message','','de-informal'),(766,17,'time_limit_message','','en'),(767,17,'time_limit_message','','fr'),(768,17,'time_limit_message','','it'),(769,17,'time_limit_message','','ru'),(770,17,'time_limit_message_delay','',''),(771,17,'time_limit_message_style','',''),(772,17,'time_limit_timer_style','',''),(773,17,'time_limit_warning','',''),(774,17,'time_limit_warning_2','',''),(775,17,'time_limit_warning_2_display_time','',''),(776,17,'time_limit_warning_2_message','','de-informal'),(777,17,'time_limit_warning_2_message','','en'),(778,17,'time_limit_warning_2_message','','fr'),(779,17,'time_limit_warning_2_message','','it'),(780,17,'time_limit_warning_2_message','','ru'),(781,17,'time_limit_warning_2_style','',''),(782,17,'time_limit_warning_display_time','',''),(783,17,'time_limit_warning_message','','de-informal'),(784,17,'time_limit_warning_message','','en'),(785,17,'time_limit_warning_message','','fr'),(786,17,'time_limit_warning_message','','it'),(787,17,'time_limit_warning_message','','ru'),(788,17,'time_limit_warning_style','',''),(789,18,'answer_order','normal',''),(790,18,'array_filter','',''),(791,18,'array_filter_exclude','',''),(792,18,'array_filter_style','0',''),(793,18,'cssclass','',''),(794,18,'display_columns','1',''),(795,18,'em_validation_q','',''),(796,18,'em_validation_q_tip','','de-informal'),(797,18,'em_validation_q_tip','','en'),(798,18,'em_validation_q_tip','','fr'),(799,18,'em_validation_q_tip','','it'),(800,18,'em_validation_q_tip','','ru'),(801,18,'hidden','0',''),(802,18,'hide_tip','0',''),(803,18,'other_comment_mandatory','1',''),(804,18,'other_numbers_only','0',''),(805,18,'other_position','default',''),(806,18,'other_position_code','',''),(807,18,'other_replace_text','','de-informal'),(808,18,'other_replace_text','','en'),(809,18,'other_replace_text','','fr'),(810,18,'other_replace_text','','it'),(811,18,'other_replace_text','','ru'),(812,18,'page_break','0',''),(813,18,'printable_help','','de-informal'),(814,18,'printable_help','','en'),(815,18,'printable_help','','fr'),(816,18,'printable_help','','it'),(817,18,'printable_help','','ru'),(818,18,'public_statistics','0',''),(819,18,'random_group','',''),(820,18,'scale_export','0',''),(821,18,'statistics_graphtype','0',''),(822,18,'statistics_showgraph','1',''),(823,18,'time_limit','',''),(824,18,'time_limit_action','1',''),(825,18,'time_limit_countdown_message','','de-informal'),(826,18,'time_limit_countdown_message','','en'),(827,18,'time_limit_countdown_message','','fr'),(828,18,'time_limit_countdown_message','','it'),(829,18,'time_limit_countdown_message','','ru'),(830,18,'time_limit_disable_next','0',''),(831,18,'time_limit_disable_prev','0',''),(832,18,'time_limit_message','','de-informal'),(833,18,'time_limit_message','','en'),(834,18,'time_limit_message','','fr'),(835,18,'time_limit_message','','it'),(836,18,'time_limit_message','','ru'),(837,18,'time_limit_message_delay','',''),(838,18,'time_limit_message_style','',''),(839,18,'time_limit_timer_style','',''),(840,18,'time_limit_warning','',''),(841,18,'time_limit_warning_2','',''),(842,18,'time_limit_warning_2_display_time','',''),(843,18,'time_limit_warning_2_message','','de-informal'),(844,18,'time_limit_warning_2_message','','en'),(845,18,'time_limit_warning_2_message','','fr'),(846,18,'time_limit_warning_2_message','','it'),(847,18,'time_limit_warning_2_message','','ru'),(848,18,'time_limit_warning_2_style','',''),(849,18,'time_limit_warning_display_time','',''),(850,18,'time_limit_warning_message','','de-informal'),(851,18,'time_limit_warning_message','','en'),(852,18,'time_limit_warning_message','','fr'),(853,18,'time_limit_warning_message','','it'),(854,18,'time_limit_warning_message','','ru'),(855,18,'time_limit_warning_style','',''),(856,19,'answer_order','normal',''),(857,19,'cssclass','',''),(858,19,'em_validation_q','',''),(859,19,'em_validation_q_tip','','de-informal'),(860,19,'em_validation_q_tip','','en'),(861,19,'em_validation_q_tip','','fr'),(862,19,'em_validation_q_tip','','it'),(863,19,'em_validation_q_tip','','ru'),(864,19,'hidden','0',''),(865,19,'hide_tip','0',''),(866,19,'page_break','0',''),(867,19,'printable_help','','de-informal'),(868,19,'printable_help','','en'),(869,19,'printable_help','','fr'),(870,19,'printable_help','','it'),(871,19,'printable_help','','ru'),(872,19,'public_statistics','0',''),(873,19,'random_group','',''),(874,19,'scale_export','0',''),(875,19,'statistics_graphtype','0',''),(876,19,'statistics_showgraph','1',''),(877,19,'use_dropdown','0',''),(878,20,'array_filter','',''),(879,20,'array_filter_exclude','',''),(880,20,'array_filter_style','0',''),(881,20,'assessment_value','1',''),(882,20,'cssclass','',''),(883,20,'display_columns','1',''),(884,20,'em_validation_q','',''),(885,20,'em_validation_q_tip','','de-informal'),(886,20,'em_validation_q_tip','','en'),(887,20,'em_validation_q_tip','','fr'),(888,20,'em_validation_q_tip','','it'),(889,20,'em_validation_q_tip','','ru'),(890,20,'exclude_all_others','',''),(891,20,'exclude_all_others_auto','0',''),(892,20,'hidden','0',''),(893,20,'hide_tip','0',''),(894,20,'max_answers','',''),(895,20,'min_answers','',''),(896,20,'other_numbers_only','0',''),(897,20,'other_position','end',''),(898,20,'other_position_code','',''),(899,20,'other_replace_text','','de-informal'),(900,20,'other_replace_text','','en'),(901,20,'other_replace_text','','fr'),(902,20,'other_replace_text','','it'),(903,20,'other_replace_text','','ru'),(904,20,'page_break','0',''),(905,20,'printable_help','','de-informal'),(906,20,'printable_help','','en'),(907,20,'printable_help','','fr'),(908,20,'printable_help','','it'),(909,20,'printable_help','','ru'),(910,20,'public_statistics','0',''),(911,20,'random_group','',''),(912,20,'random_order','0',''),(913,20,'scale_export','0',''),(914,20,'statistics_graphtype','0',''),(915,20,'statistics_showgraph','1',''),(916,21,'array_filter','',''),(917,21,'array_filter_exclude','',''),(918,21,'array_filter_style','0',''),(919,21,'assessment_value','1',''),(920,21,'cssclass','',''),(921,21,'display_columns','',''),(922,21,'em_validation_q','',''),(923,21,'em_validation_q_tip','','de-informal'),(924,21,'em_validation_q_tip','','en'),(925,21,'em_validation_q_tip','','fr'),(926,21,'em_validation_q_tip','','it'),(927,21,'em_validation_q_tip','','ru'),(928,21,'exclude_all_others','SQ05',''),(929,21,'exclude_all_others_auto','0',''),(930,21,'hidden','0',''),(931,21,'hide_tip','0',''),(932,21,'max_answers','',''),(933,21,'min_answers','',''),(934,21,'other_numbers_only','0',''),(935,21,'other_position','end',''),(936,21,'other_position_code','',''),(937,21,'other_replace_text','','de-informal'),(938,21,'other_replace_text','','en'),(939,21,'other_replace_text','','fr'),(940,21,'other_replace_text','','it'),(941,21,'other_replace_text','','ru'),(942,21,'page_break','0',''),(943,21,'printable_help','','de-informal'),(944,21,'printable_help','','en'),(945,21,'printable_help','','fr'),(946,21,'printable_help','','it'),(947,21,'printable_help','','ru'),(948,21,'public_statistics','0',''),(949,21,'random_group','',''),(950,21,'random_order','0',''),(951,21,'scale_export','0',''),(952,21,'statistics_graphtype','0',''),(953,21,'statistics_showgraph','1',''),(954,22,'array_filter','',''),(955,22,'array_filter_exclude','',''),(956,22,'array_filter_style','0',''),(957,22,'assessment_value','1',''),(958,22,'choice_input_columns','',''),(959,22,'commented_checkbox','checked',''),(960,22,'commented_checkbox_auto','1',''),(961,22,'cssclass','',''),(962,22,'em_validation_q','',''),(963,22,'em_validation_q_tip','','de-informal'),(964,22,'em_validation_q_tip','','en'),(965,22,'em_validation_q_tip','','fr'),(966,22,'em_validation_q_tip','','it'),(967,22,'em_validation_q_tip','','ru'),(968,22,'exclude_all_others','',''),(969,22,'exclude_all_others_auto','0',''),(970,22,'hidden','0',''),(971,22,'hide_tip','0',''),(972,22,'max_answers','',''),(973,22,'min_answers','1',''),(974,22,'other_comment_mandatory','0',''),(975,22,'other_numbers_only','0',''),(976,22,'other_position','end',''),(977,22,'other_position_code','',''),(978,22,'other_replace_text','','de-informal'),(979,22,'other_replace_text','','en'),(980,22,'other_replace_text','','fr'),(981,22,'other_replace_text','','it'),(982,22,'other_replace_text','','ru'),(983,22,'page_break','0',''),(984,22,'printable_help','','de-informal'),(985,22,'printable_help','','en'),(986,22,'printable_help','','fr'),(987,22,'printable_help','','it'),(988,22,'printable_help','','ru'),(989,22,'public_statistics','0',''),(990,22,'random_group','',''),(991,22,'random_order','0',''),(992,22,'scale_export','0',''),(993,22,'statistics_showgraph','1',''),(994,22,'text_input_columns','',''),(995,23,'cssclass','',''),(996,23,'date_format','',''),(997,23,'date_max','',''),(998,23,'date_min','',''),(999,23,'dropdown_dates','0',''),(1000,23,'dropdown_dates_minute_step','1',''),(1001,23,'dropdown_dates_month_style','0',''),(1002,23,'em_validation_q','',''),(1003,23,'em_validation_q_tip','','de-informal'),(1004,23,'em_validation_q_tip','','en'),(1005,23,'em_validation_q_tip','','fr'),(1006,23,'em_validation_q_tip','','it'),(1007,23,'em_validation_q_tip','','ru'),(1008,23,'hidden','0',''),(1009,23,'hide_tip','0',''),(1010,23,'page_break','0',''),(1011,23,'printable_help','','de-informal'),(1012,23,'printable_help','','en'),(1013,23,'printable_help','','fr'),(1014,23,'printable_help','','it'),(1015,23,'printable_help','','ru'),(1016,23,'random_group','',''),(1017,23,'reverse','0',''),(1018,23,'statistics_graphtype','0',''),(1019,23,'statistics_showgraph','1',''),(1020,24,'cssclass','',''),(1021,24,'date_format','',''),(1022,24,'date_max','(date(\'y-m-d\'))',''),(1023,24,'date_min','1910-01-01',''),(1024,24,'dropdown_dates','1',''),(1025,24,'dropdown_dates_minute_step','1',''),(1026,24,'dropdown_dates_month_style','0',''),(1027,24,'em_validation_q','',''),(1028,24,'em_validation_q_tip','','de-informal'),(1029,24,'em_validation_q_tip','','en'),(1030,24,'em_validation_q_tip','','fr'),(1031,24,'em_validation_q_tip','','it'),(1032,24,'em_validation_q_tip','','ru'),(1033,24,'hidden','0',''),(1034,24,'hide_tip','0',''),(1035,24,'page_break','0',''),(1036,24,'printable_help','','de-informal'),(1037,24,'printable_help','','en'),(1038,24,'printable_help','','fr'),(1039,24,'printable_help','','it'),(1040,24,'printable_help','','ru'),(1041,24,'random_group','',''),(1042,24,'reverse','0',''),(1043,24,'statistics_graphtype','0',''),(1044,24,'statistics_showgraph','1',''),(1045,25,'answer_order','normal',''),(1046,25,'array_filter','',''),(1047,25,'array_filter_exclude','',''),(1048,25,'array_filter_style','0',''),(1049,25,'choice_title','','de-informal'),(1050,25,'choice_title','','en'),(1051,25,'choice_title','','fr'),(1052,25,'choice_title','','it'),(1053,25,'choice_title','','ru'),(1054,25,'cssclass','',''),(1055,25,'em_validation_q','',''),(1056,25,'em_validation_q_tip','','de-informal'),(1057,25,'em_validation_q_tip','','en'),(1058,25,'em_validation_q_tip','','fr'),(1059,25,'em_validation_q_tip','','it'),(1060,25,'em_validation_q_tip','','ru'),(1061,25,'hidden','0',''),(1062,25,'hide_tip','0',''),(1063,25,'max_answers','',''),(1064,25,'max_subquestions','4',''),(1065,25,'min_answers','',''),(1066,25,'page_break','0',''),(1067,25,'printable_help','','de-informal'),(1068,25,'printable_help','','en'),(1069,25,'printable_help','','fr'),(1070,25,'printable_help','','it'),(1071,25,'printable_help','','ru'),(1072,25,'public_statistics','0',''),(1073,25,'random_group','',''),(1074,25,'rank_title','','de-informal'),(1075,25,'rank_title','','en'),(1076,25,'rank_title','','fr'),(1077,25,'rank_title','','it'),(1078,25,'rank_title','','ru'),(1079,25,'samechoiceheight','1',''),(1080,25,'samelistheight','1',''),(1081,25,'showpopups','1',''),(1082,25,'statistics_graphtype','0',''),(1083,25,'statistics_showgraph','1',''),(1084,26,'answer_width','',''),(1085,26,'array_filter','',''),(1086,26,'array_filter_exclude','',''),(1087,26,'array_filter_style','0',''),(1088,26,'cssclass','',''),(1089,26,'em_validation_q','',''),(1090,26,'em_validation_q_tip','','de-informal'),(1091,26,'em_validation_q_tip','','en'),(1092,26,'em_validation_q_tip','','fr'),(1093,26,'em_validation_q_tip','','it'),(1094,26,'em_validation_q_tip','','ru'),(1095,26,'exclude_all_others','',''),(1096,26,'hidden','0',''),(1097,26,'hide_tip','0',''),(1098,26,'max_answers','',''),(1099,26,'min_answers','',''),(1100,26,'page_break','0',''),(1101,26,'printable_help','','de-informal'),(1102,26,'printable_help','','en'),(1103,26,'printable_help','','fr'),(1104,26,'printable_help','','it'),(1105,26,'printable_help','','ru'),(1106,26,'public_statistics','0',''),(1107,26,'random_group','',''),(1108,26,'random_order','0',''),(1109,26,'repeat_headings','',''),(1110,26,'scale_export','0',''),(1111,26,'statistics_graphtype','0',''),(1112,26,'statistics_showgraph','1',''),(1113,26,'use_dropdown','0',''),(1114,27,'answer_width','',''),(1115,27,'array_filter','',''),(1116,27,'array_filter_exclude','',''),(1117,27,'array_filter_style','0',''),(1118,27,'cssclass','',''),(1119,27,'em_validation_q','',''),(1120,27,'em_validation_q_tip','','de-informal'),(1121,27,'em_validation_q_tip','','en'),(1122,27,'em_validation_q_tip','','fr'),(1123,27,'em_validation_q_tip','','it'),(1124,27,'em_validation_q_tip','','ru'),(1125,27,'exclude_all_others','',''),(1126,27,'hidden','0',''),(1127,27,'hide_tip','0',''),(1128,27,'max_answers','',''),(1129,27,'min_answers','',''),(1130,27,'page_break','0',''),(1131,27,'printable_help','','de-informal'),(1132,27,'printable_help','','en'),(1133,27,'printable_help','','fr'),(1134,27,'printable_help','','it'),(1135,27,'printable_help','','ru'),(1136,27,'public_statistics','0',''),(1137,27,'random_group','',''),(1138,27,'random_order','0',''),(1139,27,'statistics_graphtype','0',''),(1140,27,'statistics_showgraph','1',''),(1141,28,'answer_width','',''),(1142,28,'array_filter','',''),(1143,28,'array_filter_exclude','',''),(1144,28,'array_filter_style','0',''),(1145,28,'cssclass','',''),(1146,28,'em_validation_q','',''),(1147,28,'em_validation_q_tip','','de-informal'),(1148,28,'em_validation_q_tip','','en'),(1149,28,'em_validation_q_tip','','fr'),(1150,28,'em_validation_q_tip','','it'),(1151,28,'em_validation_q_tip','','ru'),(1152,28,'exclude_all_others','',''),(1153,28,'hidden','0',''),(1154,28,'hide_tip','0',''),(1155,28,'max_answers','',''),(1156,28,'min_answers','',''),(1157,28,'page_break','0',''),(1158,28,'printable_help','','de-informal'),(1159,28,'printable_help','','en'),(1160,28,'printable_help','','fr'),(1161,28,'printable_help','','it'),(1162,28,'printable_help','','ru'),(1163,28,'public_statistics','0',''),(1164,28,'random_group','',''),(1165,28,'random_order','0',''),(1166,28,'statistics_graphtype','0',''),(1167,28,'statistics_showgraph','1',''),(1168,29,'answer_width','',''),(1169,29,'array_filter','',''),(1170,29,'array_filter_exclude','',''),(1171,29,'array_filter_style','0',''),(1172,29,'cssclass','',''),(1173,29,'em_validation_q','',''),(1174,29,'em_validation_q_tip','','de-informal'),(1175,29,'em_validation_q_tip','','en'),(1176,29,'em_validation_q_tip','','fr'),(1177,29,'em_validation_q_tip','','it'),(1178,29,'em_validation_q_tip','','ru'),(1179,29,'exclude_all_others','',''),(1180,29,'hidden','0',''),(1181,29,'hide_tip','0',''),(1182,29,'max_answers','',''),(1183,29,'min_answers','',''),(1184,29,'page_break','0',''),(1185,29,'printable_help','','de-informal'),(1186,29,'printable_help','','en'),(1187,29,'printable_help','','fr'),(1188,29,'printable_help','','it'),(1189,29,'printable_help','','ru'),(1190,29,'public_statistics','0',''),(1191,29,'random_group','',''),(1192,29,'random_order','0',''),(1193,29,'scale_export','0',''),(1194,29,'statistics_graphtype','0',''),(1195,29,'statistics_showgraph','1',''),(1196,30,'cssclass','',''),(1197,30,'hidden','0',''),(1198,30,'hide_tip','0',''),(1199,30,'page_break','0',''),(1200,30,'random_group','',''),(1201,30,'statistics_graphtype','0',''),(1202,30,'statistics_showgraph','1',''),(1203,30,'time_limit','',''),(1204,30,'time_limit_action','1',''),(1205,30,'time_limit_countdown_message','','de-informal'),(1206,30,'time_limit_countdown_message','','en'),(1207,30,'time_limit_countdown_message','','fr'),(1208,30,'time_limit_countdown_message','','it'),(1209,30,'time_limit_countdown_message','','ru'),(1210,30,'time_limit_disable_next','0',''),(1211,30,'time_limit_disable_prev','0',''),(1212,30,'time_limit_message','','de-informal'),(1213,30,'time_limit_message','','en'),(1214,30,'time_limit_message','','fr'),(1215,30,'time_limit_message','','it'),(1216,30,'time_limit_message','','ru'),(1217,30,'time_limit_message_delay','',''),(1218,30,'time_limit_message_style','',''),(1219,30,'time_limit_timer_style','',''),(1220,30,'time_limit_warning','',''),(1221,30,'time_limit_warning_2','',''),(1222,30,'time_limit_warning_2_display_time','',''),(1223,30,'time_limit_warning_2_message','','de-informal'),(1224,30,'time_limit_warning_2_message','','en'),(1225,30,'time_limit_warning_2_message','','fr'),(1226,30,'time_limit_warning_2_message','','it'),(1227,30,'time_limit_warning_2_message','','ru'),(1228,30,'time_limit_warning_2_style','',''),(1229,30,'time_limit_warning_display_time','',''),(1230,30,'time_limit_warning_message','','de-informal'),(1231,30,'time_limit_warning_message','','en'),(1232,30,'time_limit_warning_message','','fr'),(1233,30,'time_limit_warning_message','','it'),(1234,30,'time_limit_warning_message','','ru'),(1235,30,'time_limit_warning_style','',''),(1236,31,'answer_width','',''),(1237,31,'array_filter','',''),(1238,31,'array_filter_exclude','',''),(1239,31,'array_filter_style','0',''),(1240,31,'cssclass','',''),(1241,31,'em_validation_q','',''),(1242,31,'em_validation_q_tip','','de-informal'),(1243,31,'em_validation_q_tip','','en'),(1244,31,'em_validation_q_tip','','fr'),(1245,31,'em_validation_q_tip','','it'),(1246,31,'em_validation_q_tip','','ru'),(1247,31,'em_validation_sq','',''),(1248,31,'em_validation_sq_tip','','de-informal'),(1249,31,'em_validation_sq_tip','','en'),(1250,31,'em_validation_sq_tip','','fr'),(1251,31,'em_validation_sq_tip','','it'),(1252,31,'em_validation_sq_tip','','ru'),(1253,31,'hidden','0',''),(1254,31,'hide_tip','0',''),(1255,31,'input_size','',''),(1256,31,'max_answers','',''),(1257,31,'maximum_chars','',''),(1258,31,'min_answers','',''),(1259,31,'numbers_only','0',''),(1260,31,'page_break','0',''),(1261,31,'placeholder','','de-informal'),(1262,31,'placeholder','','en'),(1263,31,'placeholder','','fr'),(1264,31,'placeholder','','it'),(1265,31,'placeholder','','ru'),(1266,31,'random_group','',''),(1267,31,'random_order','0',''),(1268,31,'repeat_headings','',''),(1269,31,'show_grand_total','0',''),(1270,31,'show_totals','X',''),(1271,31,'statistics_graphtype','0',''),(1272,31,'statistics_showgraph','1',''),(1273,32,'answer_width','',''),(1274,32,'array_filter','',''),(1275,32,'array_filter_exclude','',''),(1276,32,'array_filter_style','0',''),(1277,32,'cssclass','',''),(1278,32,'em_validation_q','',''),(1279,32,'em_validation_q_tip','','de-informal'),(1280,32,'em_validation_q_tip','','en'),(1281,32,'em_validation_q_tip','','fr'),(1282,32,'em_validation_q_tip','','it'),(1283,32,'em_validation_q_tip','','ru'),(1284,32,'em_validation_sq','',''),(1285,32,'em_validation_sq_tip','','de-informal'),(1286,32,'em_validation_sq_tip','','en'),(1287,32,'em_validation_sq_tip','','fr'),(1288,32,'em_validation_sq_tip','','it'),(1289,32,'em_validation_sq_tip','','ru'),(1290,32,'hidden','0',''),(1291,32,'hide_tip','0',''),(1292,32,'input_boxes','1',''),(1293,32,'input_size','',''),(1294,32,'max_answers','',''),(1295,32,'maximum_chars','',''),(1296,32,'min_answers','',''),(1297,32,'multiflexible_checkbox','0',''),(1298,32,'multiflexible_max','',''),(1299,32,'multiflexible_min','',''),(1300,32,'multiflexible_step','1',''),(1301,32,'page_break','0',''),(1302,32,'parent_order','',''),(1303,32,'printable_help','','de-informal'),(1304,32,'printable_help','','en'),(1305,32,'printable_help','','fr'),(1306,32,'printable_help','','it'),(1307,32,'printable_help','','ru'),(1308,32,'public_statistics','0',''),(1309,32,'random_group','',''),(1310,32,'random_order','0',''),(1311,32,'repeat_headings','',''),(1312,32,'reverse','0',''),(1313,32,'scale_export','0',''),(1314,32,'statistics_graphtype','0',''),(1315,32,'statistics_showgraph','1',''),(1316,33,'answer_width','',''),(1317,33,'array_filter','',''),(1318,33,'array_filter_exclude','',''),(1319,33,'array_filter_style','0',''),(1320,33,'cssclass','',''),(1321,33,'em_validation_q','',''),(1322,33,'em_validation_q_tip','','de-informal'),(1323,33,'em_validation_q_tip','','en'),(1324,33,'em_validation_q_tip','','fr'),(1325,33,'em_validation_q_tip','','it'),(1326,33,'em_validation_q_tip','','ru'),(1327,33,'em_validation_sq','',''),(1328,33,'em_validation_sq_tip','','de-informal'),(1329,33,'em_validation_sq_tip','','en'),(1330,33,'em_validation_sq_tip','','fr'),(1331,33,'em_validation_sq_tip','','it'),(1332,33,'em_validation_sq_tip','','ru'),(1333,33,'hidden','0',''),(1334,33,'hide_tip','0',''),(1335,33,'input_boxes','0',''),(1336,33,'input_size','',''),(1337,33,'max_answers','',''),(1338,33,'maximum_chars','',''),(1339,33,'min_answers','',''),(1340,33,'multiflexible_checkbox','1',''),(1341,33,'multiflexible_max','',''),(1342,33,'multiflexible_min','',''),(1343,33,'multiflexible_step','1',''),(1344,33,'page_break','0',''),(1345,33,'parent_order','',''),(1346,33,'printable_help','','de-informal'),(1347,33,'printable_help','','en'),(1348,33,'printable_help','','fr'),(1349,33,'printable_help','','it'),(1350,33,'printable_help','','ru'),(1351,33,'public_statistics','0',''),(1352,33,'random_group','',''),(1353,33,'random_order','0',''),(1354,33,'repeat_headings','',''),(1355,33,'reverse','0',''),(1356,33,'scale_export','0',''),(1357,33,'statistics_graphtype','0',''),(1358,33,'statistics_showgraph','1',''),(1359,34,'answer_width','',''),(1360,34,'array_filter','',''),(1361,34,'array_filter_exclude','',''),(1362,34,'array_filter_style','0',''),(1363,34,'cssclass','',''),(1364,34,'dropdown_prepostfix','','de-informal'),(1365,34,'dropdown_prepostfix','','en'),(1366,34,'dropdown_prepostfix','','fr'),(1367,34,'dropdown_prepostfix','','it'),(1368,34,'dropdown_prepostfix','','ru'),(1369,34,'dropdown_separators','',''),(1370,34,'dualscale_headerA','','it'),(1371,34,'dualscale_headerA','','ru'),(1372,34,'dualscale_headerA','Scale A','de-informal'),(1373,34,'dualscale_headerA','Scale A','en'),(1374,34,'dualscale_headerA','Scale A','fr'),(1375,34,'dualscale_headerB','','it'),(1376,34,'dualscale_headerB','','ru'),(1377,34,'dualscale_headerB','Scale B','de-informal'),(1378,34,'dualscale_headerB','Scale B','en'),(1379,34,'dualscale_headerB','Scale B','fr'),(1380,34,'hidden','0',''),(1381,34,'hide_tip','0',''),(1382,34,'max_answers','',''),(1383,34,'min_answers','',''),(1384,34,'page_break','0',''),(1385,34,'printable_help','','de-informal'),(1386,34,'printable_help','','en'),(1387,34,'printable_help','','fr'),(1388,34,'printable_help','','it'),(1389,34,'printable_help','','ru'),(1390,34,'public_statistics','0',''),(1391,34,'random_group','',''),(1392,34,'random_order','0',''),(1393,34,'repeat_headings','',''),(1394,34,'scale_export','0',''),(1395,34,'statistics_graphtype','0',''),(1396,34,'statistics_showgraph','1',''),(1397,34,'use_dropdown','0',''),(1398,35,'answer_width_bycolumn','',''),(1399,35,'cssclass','',''),(1400,35,'em_validation_q','',''),(1401,35,'em_validation_q_tip','','de-informal'),(1402,35,'em_validation_q_tip','','en'),(1403,35,'em_validation_q_tip','','fr'),(1404,35,'em_validation_q_tip','','it'),(1405,35,'em_validation_q_tip','','ru'),(1406,35,'hidden','0',''),(1407,35,'hide_tip','0',''),(1408,35,'page_break','0',''),(1409,35,'printable_help','','de-informal'),(1410,35,'printable_help','','en'),(1411,35,'printable_help','','fr'),(1412,35,'printable_help','','it'),(1413,35,'printable_help','','ru'),(1414,35,'public_statistics','0',''),(1415,35,'random_group','',''),(1416,35,'random_order','0',''),(1417,35,'scale_export','0',''),(1418,35,'statistics_graphtype','0',''),(1419,35,'statistics_showgraph','1',''),(1420,36,'answer_width','',''),(1421,36,'array_filter','',''),(1422,36,'array_filter_exclude','',''),(1423,36,'array_filter_style','0',''),(1424,36,'cssclass','',''),(1425,36,'em_validation_q','',''),(1426,36,'em_validation_q_tip','','de-informal'),(1427,36,'em_validation_q_tip','','en'),(1428,36,'em_validation_q_tip','','fr'),(1429,36,'em_validation_q_tip','','it'),(1430,36,'em_validation_q_tip','','ru'),(1431,36,'em_validation_sq','',''),(1432,36,'em_validation_sq_tip','','de-informal'),(1433,36,'em_validation_sq_tip','','en'),(1434,36,'em_validation_sq_tip','','fr'),(1435,36,'em_validation_sq_tip','','it'),(1436,36,'em_validation_sq_tip','','ru'),(1437,36,'hidden','0',''),(1438,36,'hide_tip','0',''),(1439,36,'input_boxes','0',''),(1440,36,'input_size','',''),(1441,36,'max_answers','',''),(1442,36,'maximum_chars','',''),(1443,36,'min_answers','',''),(1444,36,'multiflexible_checkbox','0',''),(1445,36,'multiflexible_max','2',''),(1446,36,'multiflexible_min','-2',''),(1447,36,'multiflexible_step','2',''),(1448,36,'page_break','0',''),(1449,36,'parent_order','',''),(1450,36,'printable_help','','de-informal'),(1451,36,'printable_help','','en'),(1452,36,'printable_help','','fr'),(1453,36,'printable_help','','it'),(1454,36,'printable_help','','ru'),(1455,36,'public_statistics','0',''),(1456,36,'random_group','',''),(1457,36,'random_order','0',''),(1458,36,'repeat_headings','',''),(1459,36,'reverse','0',''),(1460,36,'scale_export','0',''),(1461,36,'statistics_graphtype','0',''),(1462,36,'statistics_showgraph','1',''),(1463,37,'answer_order','normal',''),(1464,37,'category_separator','',''),(1465,37,'cssclass','',''),(1466,37,'dropdown_prefix','0',''),(1467,37,'dropdown_size','',''),(1468,37,'em_validation_q','',''),(1469,37,'em_validation_q_tip','','de-informal'),(1470,37,'em_validation_q_tip','','en'),(1471,37,'em_validation_q_tip','','fr'),(1472,37,'em_validation_q_tip','','it'),(1473,37,'em_validation_q_tip','','ru'),(1474,37,'hidden','0',''),(1475,37,'hide_tip','0',''),(1476,37,'other_comment_mandatory','0',''),(1477,37,'other_position','default',''),(1478,37,'other_position_code','',''),(1479,37,'other_replace_text','','de-informal'),(1480,37,'other_replace_text','','en'),(1481,37,'other_replace_text','','fr'),(1482,37,'other_replace_text','','it'),(1483,37,'other_replace_text','','ru'),(1484,37,'page_break','0',''),(1485,37,'printable_help','','de-informal'),(1486,37,'printable_help','','en'),(1487,37,'printable_help','','fr'),(1488,37,'printable_help','','it'),(1489,37,'printable_help','','ru'),(1490,37,'public_statistics','0',''),(1491,37,'random_group','',''),(1492,37,'scale_export','0',''),(1493,37,'statistics_graphtype','0',''),(1494,37,'statistics_showgraph','1',''),(1495,37,'time_limit','',''),(1496,37,'time_limit_action','1',''),(1497,37,'time_limit_countdown_message','','de-informal'),(1498,37,'time_limit_countdown_message','','en'),(1499,37,'time_limit_countdown_message','','fr'),(1500,37,'time_limit_countdown_message','','it'),(1501,37,'time_limit_countdown_message','','ru'),(1502,37,'time_limit_disable_next','0',''),(1503,37,'time_limit_disable_prev','0',''),(1504,37,'time_limit_message','','de-informal'),(1505,37,'time_limit_message','','en'),(1506,37,'time_limit_message','','fr'),(1507,37,'time_limit_message','','it'),(1508,37,'time_limit_message','','ru'),(1509,37,'time_limit_message_delay','',''),(1510,37,'time_limit_message_style','',''),(1511,37,'time_limit_timer_style','',''),(1512,37,'time_limit_warning','',''),(1513,37,'time_limit_warning_2','',''),(1514,37,'time_limit_warning_2_display_time','',''),(1515,37,'time_limit_warning_2_message','','de-informal'),(1516,37,'time_limit_warning_2_message','','en'),(1517,37,'time_limit_warning_2_message','','fr'),(1518,37,'time_limit_warning_2_message','','it'),(1519,37,'time_limit_warning_2_message','','ru'),(1520,37,'time_limit_warning_2_style','',''),(1521,37,'time_limit_warning_display_time','',''),(1522,37,'time_limit_warning_message','','de-informal'),(1523,37,'time_limit_warning_message','','en'),(1524,37,'time_limit_warning_message','','fr'),(1525,37,'time_limit_warning_message','','it'),(1526,37,'time_limit_warning_message','','ru'),(1527,37,'time_limit_warning_style','',''),(1528,38,'answer_width','',''),(1529,38,'array_filter','',''),(1530,38,'array_filter_exclude','',''),(1531,38,'array_filter_style','0',''),(1532,38,'cssclass','',''),(1533,38,'em_validation_q','',''),(1534,38,'em_validation_q_tip','','de-informal'),(1535,38,'em_validation_q_tip','','en'),(1536,38,'em_validation_q_tip','','fr'),(1537,38,'em_validation_q_tip','','it'),(1538,38,'em_validation_q_tip','','ru'),(1539,38,'exclude_all_others','',''),(1540,38,'hidden','0',''),(1541,38,'hide_tip','0',''),(1542,38,'max_answers','',''),(1543,38,'min_answers','',''),(1544,38,'page_break','0',''),(1545,38,'printable_help','','de-informal'),(1546,38,'printable_help','','en'),(1547,38,'printable_help','','fr'),(1548,38,'printable_help','','it'),(1549,38,'printable_help','','ru'),(1550,38,'public_statistics','0',''),(1551,38,'random_group','',''),(1552,38,'random_order','0',''),(1553,38,'scale_export','0',''),(1554,38,'statistics_graphtype','0',''),(1555,38,'statistics_showgraph','1',''),(1556,39,'answer_order','random',''),(1557,39,'array_filter','',''),(1558,39,'array_filter_exclude','',''),(1559,39,'array_filter_style','0',''),(1560,39,'choice_title','','de-informal'),(1561,39,'choice_title','','en'),(1562,39,'choice_title','','fr'),(1563,39,'choice_title','','it'),(1564,39,'choice_title','','ru'),(1565,39,'cssclass','',''),(1566,39,'em_validation_q','',''),(1567,39,'em_validation_q_tip','','de-informal'),(1568,39,'em_validation_q_tip','','en'),(1569,39,'em_validation_q_tip','','fr'),(1570,39,'em_validation_q_tip','','it'),(1571,39,'em_validation_q_tip','','ru'),(1572,39,'hidden','0',''),(1573,39,'hide_tip','0',''),(1574,39,'max_answers','2',''),(1575,39,'max_subquestions','4',''),(1576,39,'min_answers','2',''),(1577,39,'page_break','0',''),(1578,39,'printable_help','','de-informal'),(1579,39,'printable_help','','en'),(1580,39,'printable_help','','fr'),(1581,39,'printable_help','','it'),(1582,39,'printable_help','','ru'),(1583,39,'public_statistics','0',''),(1584,39,'random_group','',''),(1585,39,'rank_title','','de-informal'),(1586,39,'rank_title','','en'),(1587,39,'rank_title','','fr'),(1588,39,'rank_title','','it'),(1589,39,'rank_title','','ru'),(1590,39,'samechoiceheight','1',''),(1591,39,'samelistheight','1',''),(1592,39,'showpopups','1',''),(1593,39,'statistics_graphtype','0',''),(1594,39,'statistics_showgraph','1',''),(1595,40,'cssclass','',''),(1596,40,'hidden','0',''),(1597,40,'hide_tip','0',''),(1598,40,'page_break','0',''),(1599,40,'random_group','',''),(1600,40,'statistics_graphtype','0',''),(1601,40,'statistics_showgraph','1',''),(1602,40,'time_limit','',''),(1603,40,'time_limit_action','1',''),(1604,40,'time_limit_countdown_message','','de-informal'),(1605,40,'time_limit_countdown_message','','en'),(1606,40,'time_limit_countdown_message','','fr'),(1607,40,'time_limit_countdown_message','','it'),(1608,40,'time_limit_countdown_message','','ru'),(1609,40,'time_limit_disable_next','0',''),(1610,40,'time_limit_disable_prev','0',''),(1611,40,'time_limit_message','','de-informal'),(1612,40,'time_limit_message','','en'),(1613,40,'time_limit_message','','fr'),(1614,40,'time_limit_message','','it'),(1615,40,'time_limit_message','','ru'),(1616,40,'time_limit_message_delay','',''),(1617,40,'time_limit_message_style','',''),(1618,40,'time_limit_timer_style','',''),(1619,40,'time_limit_warning','',''),(1620,40,'time_limit_warning_2','',''),(1621,40,'time_limit_warning_2_display_time','',''),(1622,40,'time_limit_warning_2_message','','de-informal'),(1623,40,'time_limit_warning_2_message','','en'),(1624,40,'time_limit_warning_2_message','','fr'),(1625,40,'time_limit_warning_2_message','','it'),(1626,40,'time_limit_warning_2_message','','ru'),(1627,40,'time_limit_warning_2_style','',''),(1628,40,'time_limit_warning_display_time','',''),(1629,40,'time_limit_warning_message','','de-informal'),(1630,40,'time_limit_warning_message','','en'),(1631,40,'time_limit_warning_message','','fr'),(1632,40,'time_limit_warning_message','','it'),(1633,40,'time_limit_warning_message','','ru'),(1634,40,'time_limit_warning_style','',''),(1635,41,'cssclass','',''),(1636,41,'hidden','0',''),(1637,41,'hide_tip','0',''),(1638,41,'page_break','0',''),(1639,41,'random_group','',''),(1640,41,'statistics_graphtype','0',''),(1641,41,'statistics_showgraph','1',''),(1642,41,'time_limit','',''),(1643,41,'time_limit_action','1',''),(1644,41,'time_limit_countdown_message','','de-informal'),(1645,41,'time_limit_countdown_message','','en'),(1646,41,'time_limit_countdown_message','','fr'),(1647,41,'time_limit_countdown_message','','it'),(1648,41,'time_limit_countdown_message','','ru'),(1649,41,'time_limit_disable_next','0',''),(1650,41,'time_limit_disable_prev','0',''),(1651,41,'time_limit_message','','de-informal'),(1652,41,'time_limit_message','','en'),(1653,41,'time_limit_message','','fr'),(1654,41,'time_limit_message','','it'),(1655,41,'time_limit_message','','ru'),(1656,41,'time_limit_message_delay','',''),(1657,41,'time_limit_message_style','',''),(1658,41,'time_limit_timer_style','',''),(1659,41,'time_limit_warning','',''),(1660,41,'time_limit_warning_2','',''),(1661,41,'time_limit_warning_2_display_time','',''),(1662,41,'time_limit_warning_2_message','','de-informal'),(1663,41,'time_limit_warning_2_message','','en'),(1664,41,'time_limit_warning_2_message','','fr'),(1665,41,'time_limit_warning_2_message','','it'),(1666,41,'time_limit_warning_2_message','','ru'),(1667,41,'time_limit_warning_2_style','',''),(1668,41,'time_limit_warning_display_time','',''),(1669,41,'time_limit_warning_message','','de-informal'),(1670,41,'time_limit_warning_message','','en'),(1671,41,'time_limit_warning_message','','fr'),(1672,41,'time_limit_warning_message','','it'),(1673,41,'time_limit_warning_message','','ru'),(1674,41,'time_limit_warning_style','',''),(1675,42,'cssclass','',''),(1676,42,'display_type','0',''),(1677,42,'hidden','0',''),(1678,42,'hide_tip','0',''),(1679,42,'page_break','0',''),(1680,42,'printable_help','','de-informal'),(1681,42,'printable_help','','en'),(1682,42,'printable_help','','fr'),(1683,42,'printable_help','','it'),(1684,42,'printable_help','','ru'),(1685,42,'public_statistics','0',''),(1686,42,'random_group','',''),(1687,42,'scale_export','0',''),(1688,42,'statistics_graphtype','0',''),(1689,42,'statistics_showgraph','1',''),(1690,43,'cssclass','',''),(1691,43,'hidden','0',''),(1692,43,'hide_tip','0',''),(1693,43,'page_break','0',''),(1694,43,'random_group','',''),(1695,43,'statistics_graphtype','0',''),(1696,43,'statistics_showgraph','1',''),(1697,43,'time_limit','',''),(1698,43,'time_limit_action','1',''),(1699,43,'time_limit_countdown_message','','de-informal'),(1700,43,'time_limit_countdown_message','','en'),(1701,43,'time_limit_countdown_message','','fr'),(1702,43,'time_limit_countdown_message','','it'),(1703,43,'time_limit_countdown_message','','ru'),(1704,43,'time_limit_disable_next','0',''),(1705,43,'time_limit_disable_prev','0',''),(1706,43,'time_limit_message','','de-informal'),(1707,43,'time_limit_message','','en'),(1708,43,'time_limit_message','','fr'),(1709,43,'time_limit_message','','it'),(1710,43,'time_limit_message','','ru'),(1711,43,'time_limit_message_delay','',''),(1712,43,'time_limit_message_style','',''),(1713,43,'time_limit_timer_style','',''),(1714,43,'time_limit_warning','',''),(1715,43,'time_limit_warning_2','',''),(1716,43,'time_limit_warning_2_display_time','',''),(1717,43,'time_limit_warning_2_message','','de-informal'),(1718,43,'time_limit_warning_2_message','','en'),(1719,43,'time_limit_warning_2_message','','fr'),(1720,43,'time_limit_warning_2_message','','it'),(1721,43,'time_limit_warning_2_message','','ru'),(1722,43,'time_limit_warning_2_style','',''),(1723,43,'time_limit_warning_display_time','',''),(1724,43,'time_limit_warning_message','','de-informal'),(1725,43,'time_limit_warning_message','','en'),(1726,43,'time_limit_warning_message','','fr'),(1727,43,'time_limit_warning_message','','it'),(1728,43,'time_limit_warning_message','','ru'),(1729,43,'time_limit_warning_style','',''),(1730,44,'cssclass','',''),(1731,44,'hidden','0',''),(1732,44,'hide_tip','0',''),(1733,44,'page_break','0',''),(1734,44,'random_group','',''),(1735,44,'statistics_graphtype','0',''),(1736,44,'statistics_showgraph','1',''),(1737,44,'time_limit','',''),(1738,44,'time_limit_action','1',''),(1739,44,'time_limit_countdown_message','','de-informal'),(1740,44,'time_limit_countdown_message','','en'),(1741,44,'time_limit_countdown_message','','fr'),(1742,44,'time_limit_countdown_message','','it'),(1743,44,'time_limit_countdown_message','','ru'),(1744,44,'time_limit_disable_next','0',''),(1745,44,'time_limit_disable_prev','0',''),(1746,44,'time_limit_message','','de-informal'),(1747,44,'time_limit_message','','en'),(1748,44,'time_limit_message','','fr'),(1749,44,'time_limit_message','','it'),(1750,44,'time_limit_message','','ru'),(1751,44,'time_limit_message_delay','',''),(1752,44,'time_limit_message_style','',''),(1753,44,'time_limit_timer_style','',''),(1754,44,'time_limit_warning','',''),(1755,44,'time_limit_warning_2','',''),(1756,44,'time_limit_warning_2_display_time','',''),(1757,44,'time_limit_warning_2_message','','de-informal'),(1758,44,'time_limit_warning_2_message','','en'),(1759,44,'time_limit_warning_2_message','','fr'),(1760,44,'time_limit_warning_2_message','','it'),(1761,44,'time_limit_warning_2_message','','ru'),(1762,44,'time_limit_warning_2_style','',''),(1763,44,'time_limit_warning_display_time','',''),(1764,44,'time_limit_warning_message','','de-informal'),(1765,44,'time_limit_warning_message','','en'),(1766,44,'time_limit_warning_message','','fr'),(1767,44,'time_limit_warning_message','','it'),(1768,44,'time_limit_warning_message','','ru'),(1769,44,'time_limit_warning_style','',''),(1770,45,'cssclass','',''),(1771,45,'hidden','0',''),(1772,45,'hide_tip','0',''),(1773,45,'page_break','0',''),(1774,45,'random_group','',''),(1775,45,'statistics_graphtype','0',''),(1776,45,'statistics_showgraph','1',''),(1777,45,'time_limit','',''),(1778,45,'time_limit_action','1',''),(1779,45,'time_limit_countdown_message','','de-informal'),(1780,45,'time_limit_countdown_message','','en'),(1781,45,'time_limit_countdown_message','','fr'),(1782,45,'time_limit_countdown_message','','it'),(1783,45,'time_limit_countdown_message','','ru'),(1784,45,'time_limit_disable_next','0',''),(1785,45,'time_limit_disable_prev','0',''),(1786,45,'time_limit_message','','de-informal'),(1787,45,'time_limit_message','','en'),(1788,45,'time_limit_message','','fr'),(1789,45,'time_limit_message','','it'),(1790,45,'time_limit_message','','ru'),(1791,45,'time_limit_message_delay','',''),(1792,45,'time_limit_message_style','',''),(1793,45,'time_limit_timer_style','',''),(1794,45,'time_limit_warning','',''),(1795,45,'time_limit_warning_2','',''),(1796,45,'time_limit_warning_2_display_time','',''),(1797,45,'time_limit_warning_2_message','','de-informal'),(1798,45,'time_limit_warning_2_message','','en'),(1799,45,'time_limit_warning_2_message','','fr'),(1800,45,'time_limit_warning_2_message','','it'),(1801,45,'time_limit_warning_2_message','','ru'),(1802,45,'time_limit_warning_2_style','',''),(1803,45,'time_limit_warning_display_time','',''),(1804,45,'time_limit_warning_message','','de-informal'),(1805,45,'time_limit_warning_message','','en'),(1806,45,'time_limit_warning_message','','fr'),(1807,45,'time_limit_warning_message','','it'),(1808,45,'time_limit_warning_message','','ru'),(1809,45,'time_limit_warning_style','',''),(1810,46,'array_filter','',''),(1811,46,'array_filter_exclude','',''),(1812,46,'array_filter_style','0',''),(1813,46,'assessment_value','1',''),(1814,46,'cssclass','',''),(1815,46,'display_columns','1',''),(1816,46,'em_validation_q','',''),(1817,46,'em_validation_q_tip','','de-informal'),(1818,46,'em_validation_q_tip','','en'),(1819,46,'em_validation_q_tip','','fr'),(1820,46,'em_validation_q_tip','','it'),(1821,46,'em_validation_q_tip','','ru'),(1822,46,'exclude_all_others','',''),(1823,46,'exclude_all_others_auto','0',''),(1824,46,'hidden','0',''),(1825,46,'hide_tip','0',''),(1826,46,'max_answers','',''),(1827,46,'min_answers','',''),(1828,46,'other_numbers_only','0',''),(1829,46,'other_position','end',''),(1830,46,'other_position_code','',''),(1831,46,'other_replace_text','','de-informal'),(1832,46,'other_replace_text','','en'),(1833,46,'other_replace_text','','fr'),(1834,46,'other_replace_text','','it'),(1835,46,'other_replace_text','','ru'),(1836,46,'page_break','0',''),(1837,46,'printable_help','','de-informal'),(1838,46,'printable_help','','en'),(1839,46,'printable_help','','fr'),(1840,46,'printable_help','','it'),(1841,46,'printable_help','','ru'),(1842,46,'public_statistics','0',''),(1843,46,'random_group','',''),(1844,46,'random_order','0',''),(1845,46,'scale_export','0',''),(1846,46,'statistics_graphtype','0',''),(1847,46,'statistics_showgraph','1',''),(1848,47,'array_filter','',''),(1849,47,'array_filter_exclude','',''),(1850,47,'array_filter_style','0',''),(1851,47,'assessment_value','1',''),(1852,47,'cssclass','',''),(1853,47,'display_columns','1',''),(1854,47,'em_validation_q','',''),(1855,47,'em_validation_q_tip','','de-informal'),(1856,47,'em_validation_q_tip','','en'),(1857,47,'em_validation_q_tip','','fr'),(1858,47,'em_validation_q_tip','','it'),(1859,47,'em_validation_q_tip','','ru'),(1860,47,'exclude_all_others','',''),(1861,47,'exclude_all_others_auto','0',''),(1862,47,'hidden','0',''),(1863,47,'hide_tip','0',''),(1864,47,'max_answers','',''),(1865,47,'min_answers','',''),(1866,47,'other_numbers_only','0',''),(1867,47,'other_position','end',''),(1868,47,'other_position_code','',''),(1869,47,'other_replace_text','','de-informal'),(1870,47,'other_replace_text','','en'),(1871,47,'other_replace_text','','fr'),(1872,47,'other_replace_text','','it'),(1873,47,'other_replace_text','','ru'),(1874,47,'page_break','0',''),(1875,47,'printable_help','','de-informal'),(1876,47,'printable_help','','en'),(1877,47,'printable_help','','fr'),(1878,47,'printable_help','','it'),(1879,47,'printable_help','','ru'),(1880,47,'public_statistics','0',''),(1881,47,'random_group','',''),(1882,47,'random_order','0',''),(1883,47,'scale_export','0',''),(1884,47,'statistics_graphtype','0',''),(1885,47,'statistics_showgraph','1',''),(1886,48,'cssclass','',''),(1887,48,'hidden','0',''),(1888,48,'hide_tip','0',''),(1889,48,'page_break','0',''),(1890,48,'random_group','',''),(1891,48,'statistics_graphtype','0',''),(1892,48,'statistics_showgraph','1',''),(1893,48,'time_limit','',''),(1894,48,'time_limit_action','1',''),(1895,48,'time_limit_countdown_message','','de-informal'),(1896,48,'time_limit_countdown_message','','en'),(1897,48,'time_limit_countdown_message','','fr'),(1898,48,'time_limit_countdown_message','','it'),(1899,48,'time_limit_countdown_message','','ru'),(1900,48,'time_limit_disable_next','0',''),(1901,48,'time_limit_disable_prev','0',''),(1902,48,'time_limit_message','','de-informal'),(1903,48,'time_limit_message','','en'),(1904,48,'time_limit_message','','fr'),(1905,48,'time_limit_message','','it'),(1906,48,'time_limit_message','','ru'),(1907,48,'time_limit_message_delay','',''),(1908,48,'time_limit_message_style','',''),(1909,48,'time_limit_timer_style','',''),(1910,48,'time_limit_warning','',''),(1911,48,'time_limit_warning_2','',''),(1912,48,'time_limit_warning_2_display_time','',''),(1913,48,'time_limit_warning_2_message','','de-informal'),(1914,48,'time_limit_warning_2_message','','en'),(1915,48,'time_limit_warning_2_message','','fr'),(1916,48,'time_limit_warning_2_message','','it'),(1917,48,'time_limit_warning_2_message','','ru'),(1918,48,'time_limit_warning_2_style','',''),(1919,48,'time_limit_warning_display_time','',''),(1920,48,'time_limit_warning_message','','de-informal'),(1921,48,'time_limit_warning_message','','en'),(1922,48,'time_limit_warning_message','','fr'),(1923,48,'time_limit_warning_message','','it'),(1924,48,'time_limit_warning_message','','ru'),(1925,48,'time_limit_warning_style','',''),(1926,49,'cssclass','',''),(1927,49,'hidden','0',''),(1928,49,'hide_tip','0',''),(1929,49,'page_break','0',''),(1930,49,'random_group','',''),(1931,49,'statistics_graphtype','0',''),(1932,49,'statistics_showgraph','1',''),(1933,49,'time_limit','',''),(1934,49,'time_limit_action','1',''),(1935,49,'time_limit_countdown_message','','de-informal'),(1936,49,'time_limit_countdown_message','','en'),(1937,49,'time_limit_countdown_message','','fr'),(1938,49,'time_limit_countdown_message','','it'),(1939,49,'time_limit_countdown_message','','ru'),(1940,49,'time_limit_disable_next','0',''),(1941,49,'time_limit_disable_prev','0',''),(1942,49,'time_limit_message','','de-informal'),(1943,49,'time_limit_message','','en'),(1944,49,'time_limit_message','','fr'),(1945,49,'time_limit_message','','it'),(1946,49,'time_limit_message','','ru'),(1947,49,'time_limit_message_delay','',''),(1948,49,'time_limit_message_style','',''),(1949,49,'time_limit_timer_style','',''),(1950,49,'time_limit_warning','',''),(1951,49,'time_limit_warning_2','',''),(1952,49,'time_limit_warning_2_display_time','',''),(1953,49,'time_limit_warning_2_message','','de-informal'),(1954,49,'time_limit_warning_2_message','','en'),(1955,49,'time_limit_warning_2_message','','fr'),(1956,49,'time_limit_warning_2_message','','it'),(1957,49,'time_limit_warning_2_message','','ru'),(1958,49,'time_limit_warning_2_style','',''),(1959,49,'time_limit_warning_display_time','',''),(1960,49,'time_limit_warning_message','','de-informal'),(1961,49,'time_limit_warning_message','','en'),(1962,49,'time_limit_warning_message','','fr'),(1963,49,'time_limit_warning_message','','it'),(1964,49,'time_limit_warning_message','','ru'),(1965,49,'time_limit_warning_style','',''),(1966,50,'cssclass','',''),(1967,50,'display_type','0',''),(1968,50,'hidden','0',''),(1969,50,'hide_tip','0',''),(1970,50,'page_break','0',''),(1971,50,'printable_help','','de-informal'),(1972,50,'printable_help','','en'),(1973,50,'printable_help','','fr'),(1974,50,'printable_help','','it'),(1975,50,'printable_help','','ru'),(1976,50,'public_statistics','0',''),(1977,50,'random_group','',''),(1978,50,'scale_export','0',''),(1979,50,'statistics_graphtype','0',''),(1980,50,'statistics_showgraph','1',''),(1981,51,'array_filter','',''),(1982,51,'array_filter_exclude','',''),(1983,51,'array_filter_style','0',''),(1984,51,'assessment_value','1',''),(1985,51,'cssclass','',''),(1986,51,'display_columns','1',''),(1987,51,'em_validation_q','',''),(1988,51,'em_validation_q_tip','','de-informal'),(1989,51,'em_validation_q_tip','','en'),(1990,51,'em_validation_q_tip','','fr'),(1991,51,'em_validation_q_tip','','it'),(1992,51,'em_validation_q_tip','','ru'),(1993,51,'exclude_all_others','',''),(1994,51,'exclude_all_others_auto','0',''),(1995,51,'hidden','0',''),(1996,51,'hide_tip','0',''),(1997,51,'max_answers','',''),(1998,51,'min_answers','',''),(1999,51,'other_numbers_only','0',''),(2000,51,'other_position','end',''),(2001,51,'other_position_code','',''),(2002,51,'other_replace_text','','de-informal'),(2003,51,'other_replace_text','','en'),(2004,51,'other_replace_text','','fr'),(2005,51,'other_replace_text','','it'),(2006,51,'other_replace_text','','ru'),(2007,51,'page_break','0',''),(2008,51,'printable_help','','de-informal'),(2009,51,'printable_help','','en'),(2010,51,'printable_help','','fr'),(2011,51,'printable_help','','it'),(2012,51,'printable_help','','ru'),(2013,51,'public_statistics','0',''),(2014,51,'random_group','',''),(2015,51,'random_order','0',''),(2016,51,'scale_export','0',''),(2017,51,'statistics_graphtype','0',''),(2018,51,'statistics_showgraph','1',''),(2019,52,'answer_width','',''),(2020,52,'array_filter','AF',''),(2021,52,'array_filter_exclude','',''),(2022,52,'array_filter_style','0',''),(2023,52,'cssclass','',''),(2024,52,'em_validation_q','',''),(2025,52,'em_validation_q_tip','','de-informal'),(2026,52,'em_validation_q_tip','','en'),(2027,52,'em_validation_q_tip','','fr'),(2028,52,'em_validation_q_tip','','it'),(2029,52,'em_validation_q_tip','','ru'),(2030,52,'exclude_all_others','',''),(2031,52,'hidden','0',''),(2032,52,'hide_tip','0',''),(2033,52,'max_answers','',''),(2034,52,'min_answers','',''),(2035,52,'page_break','0',''),(2036,52,'printable_help','','de-informal'),(2037,52,'printable_help','','en'),(2038,52,'printable_help','','fr'),(2039,52,'printable_help','','it'),(2040,52,'printable_help','','ru'),(2041,52,'public_statistics','0',''),(2042,52,'random_group','',''),(2043,52,'random_order','0',''),(2044,52,'scale_export','0',''),(2045,52,'statistics_graphtype','0',''),(2046,52,'statistics_showgraph','1',''),(2047,53,'answer_width','',''),(2048,53,'array_filter','',''),(2049,53,'array_filter_exclude','AF',''),(2050,53,'array_filter_style','0',''),(2051,53,'cssclass','',''),(2052,53,'em_validation_q','',''),(2053,53,'em_validation_q_tip','','de-informal'),(2054,53,'em_validation_q_tip','','en'),(2055,53,'em_validation_q_tip','','fr'),(2056,53,'em_validation_q_tip','','it'),(2057,53,'em_validation_q_tip','','ru'),(2058,53,'exclude_all_others','',''),(2059,53,'hidden','0',''),(2060,53,'hide_tip','0',''),(2061,53,'max_answers','',''),(2062,53,'min_answers','',''),(2063,53,'page_break','0',''),(2064,53,'printable_help','','de-informal'),(2065,53,'printable_help','','en'),(2066,53,'printable_help','','fr'),(2067,53,'printable_help','','it'),(2068,53,'printable_help','','ru'),(2069,53,'public_statistics','0',''),(2070,53,'random_group','',''),(2071,53,'random_order','0',''),(2072,53,'scale_export','0',''),(2073,53,'statistics_graphtype','0',''),(2074,53,'statistics_showgraph','1',''),(2075,54,'cssclass','',''),(2076,54,'hidden','0',''),(2077,54,'hide_tip','0',''),(2078,54,'page_break','0',''),(2079,54,'random_group','',''),(2080,54,'statistics_graphtype','0',''),(2081,54,'statistics_showgraph','1',''),(2082,54,'time_limit','',''),(2083,54,'time_limit_action','1',''),(2084,54,'time_limit_countdown_message','','de-informal'),(2085,54,'time_limit_countdown_message','','en'),(2086,54,'time_limit_countdown_message','','fr'),(2087,54,'time_limit_countdown_message','','it'),(2088,54,'time_limit_countdown_message','','ru'),(2089,54,'time_limit_disable_next','0',''),(2090,54,'time_limit_disable_prev','0',''),(2091,54,'time_limit_message','','de-informal'),(2092,54,'time_limit_message','','en'),(2093,54,'time_limit_message','','fr'),(2094,54,'time_limit_message','','it'),(2095,54,'time_limit_message','','ru'),(2096,54,'time_limit_message_delay','',''),(2097,54,'time_limit_message_style','',''),(2098,54,'time_limit_timer_style','',''),(2099,54,'time_limit_warning','',''),(2100,54,'time_limit_warning_2','',''),(2101,54,'time_limit_warning_2_display_time','',''),(2102,54,'time_limit_warning_2_message','','de-informal'),(2103,54,'time_limit_warning_2_message','','en'),(2104,54,'time_limit_warning_2_message','','fr'),(2105,54,'time_limit_warning_2_message','','it'),(2106,54,'time_limit_warning_2_message','','ru'),(2107,54,'time_limit_warning_2_style','',''),(2108,54,'time_limit_warning_display_time','',''),(2109,54,'time_limit_warning_message','','de-informal'),(2110,54,'time_limit_warning_message','','en'),(2111,54,'time_limit_warning_message','','fr'),(2112,54,'time_limit_warning_message','','it'),(2113,54,'time_limit_warning_message','','ru'),(2114,54,'time_limit_warning_style','',''),(2115,55,'cssclass','',''),(2116,55,'hidden','0',''),(2117,55,'hide_tip','0',''),(2118,55,'page_break','0',''),(2119,55,'random_group','',''),(2120,55,'statistics_graphtype','0',''),(2121,55,'statistics_showgraph','1',''),(2122,55,'time_limit','',''),(2123,55,'time_limit_action','1',''),(2124,55,'time_limit_countdown_message','','de-informal'),(2125,55,'time_limit_countdown_message','','en'),(2126,55,'time_limit_countdown_message','','fr'),(2127,55,'time_limit_countdown_message','','it'),(2128,55,'time_limit_countdown_message','','ru'),(2129,55,'time_limit_disable_next','0',''),(2130,55,'time_limit_disable_prev','0',''),(2131,55,'time_limit_message','','de-informal'),(2132,55,'time_limit_message','','en'),(2133,55,'time_limit_message','','fr'),(2134,55,'time_limit_message','','it'),(2135,55,'time_limit_message','','ru'),(2136,55,'time_limit_message_delay','',''),(2137,55,'time_limit_message_style','',''),(2138,55,'time_limit_timer_style','',''),(2139,55,'time_limit_warning','',''),(2140,55,'time_limit_warning_2','',''),(2141,55,'time_limit_warning_2_display_time','',''),(2142,55,'time_limit_warning_2_message','','de-informal'),(2143,55,'time_limit_warning_2_message','','en'),(2144,55,'time_limit_warning_2_message','','fr'),(2145,55,'time_limit_warning_2_message','','it'),(2146,55,'time_limit_warning_2_message','','ru'),(2147,55,'time_limit_warning_2_style','',''),(2148,55,'time_limit_warning_display_time','',''),(2149,55,'time_limit_warning_message','','de-informal'),(2150,55,'time_limit_warning_message','','en'),(2151,55,'time_limit_warning_message','','fr'),(2152,55,'time_limit_warning_message','','it'),(2153,55,'time_limit_warning_message','','ru'),(2154,55,'time_limit_warning_style','',''),(2155,56,'cssclass','',''),(2156,56,'hidden','0',''),(2157,56,'hide_tip','0',''),(2158,56,'page_break','0',''),(2159,56,'random_group','',''),(2160,56,'statistics_graphtype','0',''),(2161,56,'statistics_showgraph','1',''),(2162,56,'time_limit','',''),(2163,56,'time_limit_action','1',''),(2164,56,'time_limit_countdown_message','','de-informal'),(2165,56,'time_limit_countdown_message','','en'),(2166,56,'time_limit_countdown_message','','fr'),(2167,56,'time_limit_countdown_message','','it'),(2168,56,'time_limit_countdown_message','','ru'),(2169,56,'time_limit_disable_next','0',''),(2170,56,'time_limit_disable_prev','0',''),(2171,56,'time_limit_message','','de-informal'),(2172,56,'time_limit_message','','en'),(2173,56,'time_limit_message','','fr'),(2174,56,'time_limit_message','','it'),(2175,56,'time_limit_message','','ru'),(2176,56,'time_limit_message_delay','',''),(2177,56,'time_limit_message_style','',''),(2178,56,'time_limit_timer_style','',''),(2179,56,'time_limit_warning','',''),(2180,56,'time_limit_warning_2','',''),(2181,56,'time_limit_warning_2_display_time','',''),(2182,56,'time_limit_warning_2_message','','de-informal'),(2183,56,'time_limit_warning_2_message','','en'),(2184,56,'time_limit_warning_2_message','','fr'),(2185,56,'time_limit_warning_2_message','','it'),(2186,56,'time_limit_warning_2_message','','ru'),(2187,56,'time_limit_warning_2_style','',''),(2188,56,'time_limit_warning_display_time','',''),(2189,56,'time_limit_warning_message','','de-informal'),(2190,56,'time_limit_warning_message','','en'),(2191,56,'time_limit_warning_message','','fr'),(2192,56,'time_limit_warning_message','','it'),(2193,56,'time_limit_warning_message','','ru'),(2194,56,'time_limit_warning_style','',''),(2195,57,'answer_width','',''),(2196,57,'array_filter','',''),(2197,57,'array_filter_exclude','',''),(2198,57,'array_filter_style','0',''),(2199,57,'cssclass','',''),(2200,57,'dropdown_prepostfix','','de-informal'),(2201,57,'dropdown_prepostfix','','en'),(2202,57,'dropdown_prepostfix','','fr'),(2203,57,'dropdown_prepostfix','','it'),(2204,57,'dropdown_prepostfix','','ru'),(2205,57,'dropdown_separators','',''),(2206,57,'dualscale_headerA','','it'),(2207,57,'dualscale_headerA','','ru'),(2208,57,'dualscale_headerA','Scale A','de-informal'),(2209,57,'dualscale_headerA','Scale A','en'),(2210,57,'dualscale_headerA','Scale A','fr'),(2211,57,'dualscale_headerB','','it'),(2212,57,'dualscale_headerB','','ru'),(2213,57,'dualscale_headerB','Scale B','de-informal'),(2214,57,'dualscale_headerB','Scale B','en'),(2215,57,'dualscale_headerB','Scale B','fr'),(2216,57,'hidden','0',''),(2217,57,'hide_tip','0',''),(2218,57,'max_answers','',''),(2219,57,'min_answers','',''),(2220,57,'page_break','0',''),(2221,57,'printable_help','','de-informal'),(2222,57,'printable_help','','en'),(2223,57,'printable_help','','fr'),(2224,57,'printable_help','','it'),(2225,57,'printable_help','','ru'),(2226,57,'public_statistics','0',''),(2227,57,'random_group','',''),(2228,57,'random_order','0',''),(2229,57,'repeat_headings','',''),(2230,57,'scale_export','0',''),(2231,57,'statistics_graphtype','0',''),(2232,57,'statistics_showgraph','1',''),(2233,57,'use_dropdown','1',''),(2234,39,'answer_order','random',''),(2235,58,'cssclass','',''),(2236,58,'em_validation_q','',''),(2237,58,'em_validation_q_tip','','ru'),(2238,58,'hidden','0',''),(2239,58,'hide_tip','0',''),(2240,58,'page_break','0',''),(2241,58,'printable_help','','ru'),(2242,58,'public_statistics','0',''),(2243,58,'random_group','',''),(2244,58,'slider_rating','2',''),(2245,58,'statistics_graphtype','0',''),(2246,58,'statistics_showgraph','1',''),(2247,58,'em_validation_q_tip','','fr'),(2248,58,'em_validation_q_tip','','de-informal'),(2249,58,'em_validation_q_tip','','en'),(2250,58,'em_validation_q_tip','','it'),(2251,58,'printable_help','','fr'),(2252,58,'printable_help','','de-informal'),(2253,58,'printable_help','','en'),(2254,58,'printable_help','','it'),(2255,58,'image','',''),(2256,58,'save_as_default','N',''),(2257,59,'cssclass','',''),(2258,59,'em_validation_q','',''),(2259,59,'em_validation_q_tip','','it'),(2260,59,'hidden','0',''),(2261,59,'hide_tip','0',''),(2262,59,'page_break','0',''),(2263,59,'printable_help','','it'),(2264,59,'public_statistics','0',''),(2265,59,'random_group','',''),(2266,59,'slider_rating','1',''),(2267,59,'statistics_graphtype','0',''),(2268,59,'statistics_showgraph','1',''),(2269,59,'image','',''),(2270,59,'save_as_default','N',''),(2271,59,'em_validation_q_tip','','fr'),(2272,59,'em_validation_q_tip','','de-informal'),(2273,59,'em_validation_q_tip','','en'),(2274,59,'printable_help','','fr'),(2275,59,'printable_help','','de-informal'),(2276,59,'printable_help','','en'),(2277,34,'image','',''),(2278,34,'save_as_default','N',''),(2279,60,'cssclass','',''),(2280,60,'display_rows','',''),(2281,60,'em_validation_q','',''),(2282,60,'em_validation_q_tip','','ru'),(2283,60,'hidden','0',''),(2284,60,'hide_tip','0',''),(2285,60,'input_size','',''),(2286,60,'location_city','0',''),(2287,60,'location_country','0',''),(2288,60,'location_defaultcoordinates','',''),(2289,60,'location_mapheight','300',''),(2290,60,'location_mapservice','0',''),(2291,60,'location_mapwidth','500',''),(2292,60,'location_mapzoom','11',''),(2293,60,'location_nodefaultfromip','0',''),(2294,60,'location_postal','0',''),(2295,60,'location_state','0',''),(2296,60,'maximum_chars','',''),(2297,60,'numbers_only','0',''),(2298,60,'page_break','0',''),(2299,60,'prefix','','ru'),(2300,60,'random_group','',''),(2301,60,'statistics_graphtype','0',''),(2302,60,'statistics_showgraph','1',''),(2303,60,'statistics_showmap','1',''),(2304,60,'suffix','','ru'),(2305,60,'text_input_width','',''),(2306,60,'time_limit','',''),(2307,60,'time_limit_action','1',''),(2308,60,'time_limit_countdown_message','','ru'),(2309,60,'time_limit_disable_next','0',''),(2310,60,'time_limit_disable_prev','0',''),(2311,60,'time_limit_message','','ru'),(2312,60,'time_limit_message_delay','',''),(2313,60,'time_limit_message_style','',''),(2314,60,'time_limit_timer_style','',''),(2315,60,'time_limit_warning','',''),(2316,60,'time_limit_warning_2','',''),(2317,60,'time_limit_warning_2_display_time','',''),(2318,60,'time_limit_warning_2_message','','ru'),(2319,60,'time_limit_warning_2_style','',''),(2320,60,'time_limit_warning_display_time','',''),(2321,60,'time_limit_warning_message','','ru'),(2322,60,'time_limit_warning_style','',''),(2323,61,'cssclass','',''),(2324,61,'display_rows','',''),(2325,61,'em_validation_q','',''),(2326,61,'em_validation_q_tip','','ru'),(2327,61,'hidden','0',''),(2328,61,'hide_tip','0',''),(2329,61,'input_size','',''),(2330,61,'maximum_chars','',''),(2331,61,'page_break','0',''),(2332,61,'random_group','',''),(2333,61,'statistics_graphtype','0',''),(2334,61,'statistics_showgraph','1',''),(2335,61,'text_input_width','',''),(2336,61,'time_limit','',''),(2337,61,'time_limit_action','1',''),(2338,61,'time_limit_countdown_message','','ru'),(2339,61,'time_limit_disable_next','0',''),(2340,61,'time_limit_disable_prev','0',''),(2341,61,'time_limit_message','','ru'),(2342,61,'time_limit_message_delay','',''),(2343,61,'time_limit_message_style','',''),(2344,61,'time_limit_timer_style','',''),(2345,61,'time_limit_warning','',''),(2346,61,'time_limit_warning_2','',''),(2347,61,'time_limit_warning_2_display_time','',''),(2348,61,'time_limit_warning_2_message','','ru'),(2349,61,'time_limit_warning_2_style','',''),(2350,61,'time_limit_warning_display_time','',''),(2351,61,'time_limit_warning_message','','ru'),(2352,61,'time_limit_warning_style','',''),(2353,62,'cssclass','',''),(2354,62,'display_rows','',''),(2355,62,'em_validation_q','',''),(2356,62,'em_validation_q_tip','','ru'),(2357,62,'hidden','0',''),(2358,62,'hide_tip','0',''),(2359,62,'input_size','',''),(2360,62,'location_city','0',''),(2361,62,'location_country','0',''),(2362,62,'location_defaultcoordinates','',''),(2363,62,'location_mapheight','300',''),(2364,62,'location_mapservice','0',''),(2365,62,'location_mapwidth','500',''),(2366,62,'location_mapzoom','11',''),(2367,62,'location_nodefaultfromip','0',''),(2368,62,'location_postal','0',''),(2369,62,'location_state','0',''),(2370,62,'maximum_chars','',''),(2371,62,'numbers_only','1',''),(2372,62,'page_break','0',''),(2373,62,'prefix','','ru'),(2374,62,'random_group','',''),(2375,62,'statistics_graphtype','0',''),(2376,62,'statistics_showgraph','1',''),(2377,62,'statistics_showmap','1',''),(2378,62,'suffix','','ru'),(2379,62,'text_input_width','',''),(2380,62,'time_limit','',''),(2381,62,'time_limit_action','1',''),(2382,62,'time_limit_countdown_message','','ru'),(2383,62,'time_limit_disable_next','0',''),(2384,62,'time_limit_disable_prev','0',''),(2385,62,'time_limit_message','','ru'),(2386,62,'time_limit_message_delay','',''),(2387,62,'time_limit_message_style','',''),(2388,62,'time_limit_timer_style','',''),(2389,62,'time_limit_warning','',''),(2390,62,'time_limit_warning_2','',''),(2391,62,'time_limit_warning_2_display_time','',''),(2392,62,'time_limit_warning_2_message','','ru'),(2393,62,'time_limit_warning_2_style','',''),(2394,62,'time_limit_warning_display_time','',''),(2395,62,'time_limit_warning_message','','ru'),(2396,62,'time_limit_warning_style','',''),(2397,63,'array_filter','',''),(2398,63,'array_filter_exclude','',''),(2399,63,'array_filter_style','0',''),(2400,63,'cssclass','',''),(2401,63,'display_rows','',''),(2402,63,'em_validation_q','',''),(2403,63,'em_validation_q_tip','','ru'),(2404,63,'em_validation_sq','',''),(2405,63,'em_validation_sq_tip','','ru'),(2406,63,'exclude_all_others','',''),(2407,63,'hidden','0',''),(2408,63,'hide_tip','0',''),(2409,63,'input_size','',''),(2410,63,'label_input_columns','',''),(2411,63,'max_answers','',''),(2412,63,'maximum_chars','',''),(2413,63,'min_answers','',''),(2414,63,'numbers_only','0',''),(2415,63,'page_break','0',''),(2416,63,'prefix','','ru'),(2417,63,'random_group','',''),(2418,63,'random_order','0',''),(2419,63,'statistics_graphtype','0',''),(2420,63,'statistics_showgraph','1',''),(2421,63,'suffix','','ru'),(2422,63,'text_input_columns','',''),(2423,64,'answer_width','',''),(2424,64,'array_filter','',''),(2425,64,'array_filter_exclude','',''),(2426,64,'array_filter_style','0',''),(2427,64,'cssclass','',''),(2428,64,'em_validation_q','',''),(2429,64,'em_validation_q_tip','','ru'),(2430,64,'em_validation_sq','',''),(2431,64,'em_validation_sq_tip','','ru'),(2432,64,'hidden','0',''),(2433,64,'hide_tip','0',''),(2434,64,'input_size','',''),(2435,64,'max_answers','',''),(2436,64,'maximum_chars','',''),(2437,64,'min_answers','',''),(2438,64,'numbers_only','0',''),(2439,64,'page_break','0',''),(2440,64,'placeholder','','ru'),(2441,64,'random_group','',''),(2442,64,'random_order','0',''),(2443,64,'repeat_headings','',''),(2444,64,'show_grand_total','0',''),(2445,64,'show_totals','X',''),(2446,64,'statistics_graphtype','0',''),(2447,64,'statistics_showgraph','1',''),(2448,60,'em_validation_q_tip','','fr'),(2449,60,'em_validation_q_tip','','de-informal'),(2450,60,'em_validation_q_tip','','en'),(2451,60,'em_validation_q_tip','','it'),(2452,60,'prefix','','fr'),(2453,60,'prefix','','de-informal'),(2454,60,'prefix','','en'),(2455,60,'prefix','','it'),(2456,60,'suffix','','fr'),(2457,60,'suffix','','de-informal'),(2458,60,'suffix','','en'),(2459,60,'suffix','','it'),(2460,60,'time_limit_countdown_message','','fr'),(2461,60,'time_limit_countdown_message','','de-informal'),(2462,60,'time_limit_countdown_message','','en'),(2463,60,'time_limit_countdown_message','','it'),(2464,60,'time_limit_message','','fr'),(2465,60,'time_limit_message','','de-informal'),(2466,60,'time_limit_message','','en'),(2467,60,'time_limit_message','','it'),(2468,60,'time_limit_warning_message','','fr'),(2469,60,'time_limit_warning_message','','de-informal'),(2470,60,'time_limit_warning_message','','en'),(2471,60,'time_limit_warning_message','','it'),(2472,60,'time_limit_warning_2_message','','fr'),(2473,60,'time_limit_warning_2_message','','de-informal'),(2474,60,'time_limit_warning_2_message','','en'),(2475,60,'time_limit_warning_2_message','','it'),(2476,60,'image','',''),(2477,60,'save_as_default','N',''),(2478,61,'em_validation_q_tip','','fr'),(2479,61,'em_validation_q_tip','','de-informal'),(2480,61,'em_validation_q_tip','','en'),(2481,61,'em_validation_q_tip','','it'),(2482,61,'time_limit_countdown_message','','fr'),(2483,61,'time_limit_countdown_message','','de-informal'),(2484,61,'time_limit_countdown_message','','en'),(2485,61,'time_limit_countdown_message','','it'),(2486,61,'time_limit_message','','fr'),(2487,61,'time_limit_message','','de-informal'),(2488,61,'time_limit_message','','en'),(2489,61,'time_limit_message','','it'),(2490,61,'time_limit_warning_message','','fr'),(2491,61,'time_limit_warning_message','','de-informal'),(2492,61,'time_limit_warning_message','','en'),(2493,61,'time_limit_warning_message','','it'),(2494,61,'time_limit_warning_2_message','','fr'),(2495,61,'time_limit_warning_2_message','','de-informal'),(2496,61,'time_limit_warning_2_message','','en'),(2497,61,'time_limit_warning_2_message','','it'),(2498,61,'image','',''),(2499,61,'save_as_default','N',''),(2500,62,'em_validation_q_tip','','fr'),(2501,62,'em_validation_q_tip','','de-informal'),(2502,62,'em_validation_q_tip','','en'),(2503,62,'em_validation_q_tip','','it'),(2504,62,'prefix','','fr'),(2505,62,'prefix','','de-informal'),(2506,62,'prefix','','en'),(2507,62,'prefix','','it'),(2508,62,'suffix','','fr'),(2509,62,'suffix','','de-informal'),(2510,62,'suffix','','en'),(2511,62,'suffix','','it'),(2512,62,'time_limit_countdown_message','','fr'),(2513,62,'time_limit_countdown_message','','de-informal'),(2514,62,'time_limit_countdown_message','','en'),(2515,62,'time_limit_countdown_message','','it'),(2516,62,'time_limit_message','','fr'),(2517,62,'time_limit_message','','de-informal'),(2518,62,'time_limit_message','','en'),(2519,62,'time_limit_message','','it'),(2520,62,'time_limit_warning_message','','fr'),(2521,62,'time_limit_warning_message','','de-informal'),(2522,62,'time_limit_warning_message','','en'),(2523,62,'time_limit_warning_message','','it'),(2524,62,'time_limit_warning_2_message','','fr'),(2525,62,'time_limit_warning_2_message','','de-informal'),(2526,62,'time_limit_warning_2_message','','en'),(2527,62,'time_limit_warning_2_message','','it'),(2528,62,'image','',''),(2529,62,'save_as_default','N',''),(2530,63,'em_validation_q_tip','','fr'),(2531,63,'em_validation_q_tip','','de-informal'),(2532,63,'em_validation_q_tip','','en'),(2533,63,'em_validation_q_tip','','it'),(2534,63,'em_validation_sq_tip','','fr'),(2535,63,'em_validation_sq_tip','','de-informal'),(2536,63,'em_validation_sq_tip','','en'),(2537,63,'em_validation_sq_tip','','it'),(2538,63,'prefix','','fr'),(2539,63,'prefix','','de-informal'),(2540,63,'prefix','','en'),(2541,63,'prefix','','it'),(2542,63,'suffix','','fr'),(2543,63,'suffix','','de-informal'),(2544,63,'suffix','','en'),(2545,63,'suffix','','it'),(2546,63,'image','',''),(2547,63,'save_as_default','N',''),(2548,64,'em_validation_q_tip','','fr'),(2549,64,'em_validation_q_tip','','de-informal'),(2550,64,'em_validation_q_tip','','en'),(2551,64,'em_validation_q_tip','','it'),(2552,64,'em_validation_sq_tip','','fr'),(2553,64,'em_validation_sq_tip','','de-informal'),(2554,64,'em_validation_sq_tip','','en'),(2555,64,'em_validation_sq_tip','','it'),(2556,64,'placeholder','','fr'),(2557,64,'placeholder','','de-informal'),(2558,64,'placeholder','','en'),(2559,64,'placeholder','','it'),(2560,64,'image','',''),(2561,64,'save_as_default','N',''),(3465,228,'save_as_default','N',''),(3464,228,'image','',''),(3463,228,'statistics_graphtype','0',''),(3462,228,'statistics_showgraph','1',''),(3461,228,'public_statistics','0',''),(3460,228,'scale_export','0',''),(3459,228,'page_break','0',''),(3458,228,'printable_help','','it'),(3457,228,'printable_help','','en'),(3456,228,'printable_help','','de-informal'),(3455,228,'printable_help','','fr'),(3454,228,'other_position_code','',''),(3453,228,'other_position','end',''),(3452,228,'cssclass','',''),(3451,228,'hidden','0',''),(3450,228,'display_columns','',''),(3449,228,'hide_tip','0',''),(3448,228,'subquestion_order','normal',''),(3447,228,'other_replace_text','','it'),(3446,228,'other_replace_text','','en'),(3445,228,'other_replace_text','','de-informal'),(3444,228,'other_replace_text','','fr'),(3443,228,'fix_height','200',''),(3442,228,'fix_width','-1',''),(3441,228,'crop_or_resize','resize',''),(3440,228,'keep_aspect','no',''),(3439,228,'horizontal_scroll','no',''),(3438,228,'em_validation_q_tip','','it'),(3437,228,'em_validation_q_tip','','en'),(3436,228,'em_validation_q_tip','','de-informal'),(3435,228,'em_validation_q_tip','','fr'),(3434,228,'em_validation_q','',''),(3433,228,'random_group','',''),(3432,228,'exclude_all_others_auto','0',''),(3431,228,'exclude_all_others','',''),(3430,228,'assessment_value','1',''),(3429,228,'other_numbers_only','0',''),(3428,228,'array_filter_exclude','',''),(3427,228,'array_filter_style','0',''),(3426,228,'array_filter','',''),(3425,228,'max_answers','',''),(3424,228,'min_answers','',''),(3423,225,'save_as_default','N',''),(3422,225,'image','',''),(3421,225,'statistics_graphtype','0',''),(3420,225,'statistics_showgraph','1',''),(3419,225,'public_statistics','0',''),(3418,225,'scale_export','0',''),(3417,225,'page_break','0',''),(3416,225,'printable_help','','it'),(3415,225,'printable_help','','en'),(3414,225,'printable_help','','de-informal'),(3413,225,'printable_help','','fr'),(3412,225,'dropdown_separators','?',''),(3411,225,'dropdown_prepostfix','','it'),(3410,225,'dropdown_prepostfix','','en'),(3409,225,'dropdown_prepostfix','','de-informal'),(3408,225,'dropdown_prepostfix','préfixe | suffixe','fr'),(3407,225,'use_dropdown','1',''),(3405,225,'dualscale_headerB','','en'),(3406,225,'dualscale_headerB','','it'),(3404,225,'dualscale_headerB','','de-informal'),(3403,225,'dualscale_headerB','','fr'),(3402,225,'dualscale_headerA','','it'),(3401,225,'dualscale_headerA','','en'),(3400,225,'dualscale_headerA','','de-informal'),(3399,225,'dualscale_headerA','','fr'),(3398,225,'cssclass','',''),(3396,225,'hide_tip','0',''),(3397,225,'hidden','0',''),(3395,225,'random_order','0',''),(3394,225,'answer_width','',''),(3393,225,'repeat_headings','',''),(3392,225,'random_group','',''),(3391,225,'array_filter_exclude','',''),(3390,225,'array_filter_style','0',''),(3389,225,'array_filter','',''),(3388,225,'max_answers','',''),(3387,225,'min_answers','',''),(3356,221,'width_entry','false',''),(3355,221,'show_tick','false',''),(3354,221,'show_search','false',''),(3353,221,'public_statistics','0',''),(3352,221,'scale_export','0',''),(3351,221,'printable_help','','it'),(3350,221,'printable_help','','en'),(3349,221,'printable_help','','de-informal'),(3348,221,'printable_help','','fr'),(3347,221,'dropdown_prefix','0',''),(3346,221,'dropdown_size','',''),(3345,221,'other_position_code','',''),(3344,221,'other_position','default',''),(3343,221,'other_replace_text','','it'),(3342,221,'other_replace_text','','en'),(3341,221,'other_replace_text','','de-informal'),(3340,221,'other_replace_text','','fr'),(3339,221,'answer_order','normal',''),(3338,221,'category_separator','',''),(3337,221,'other_comment_mandatory','0',''),(3336,221,'save_as_default','N',''),(3335,221,'image','',''),(3334,221,'statistics_graphtype','0',''),(3333,221,'statistics_showgraph','1',''),(3332,221,'time_limit_warning_2_style','',''),(3331,221,'time_limit_warning_2_message','','it'),(3330,221,'time_limit_warning_2_message','','en'),(3329,221,'time_limit_warning_2_message','','de-informal'),(3328,221,'time_limit_warning_2_message','','fr'),(3327,221,'time_limit_warning_2_display_time','',''),(3326,221,'time_limit_warning_2','',''),(3325,221,'time_limit_warning_style','',''),(3324,221,'time_limit_warning_message','','it'),(3323,221,'time_limit_warning_message','','en'),(3322,221,'time_limit_warning_message','','de-informal'),(3321,221,'time_limit_warning_message','','fr'),(3320,221,'time_limit_warning_display_time','',''),(3319,221,'time_limit_warning','',''),(3318,221,'time_limit_message_style','',''),(3317,221,'time_limit_message','','it'),(3316,221,'time_limit_message','','en'),(3315,221,'time_limit_message','','de-informal'),(3314,221,'time_limit_message','','fr'),(3313,221,'time_limit_message_delay','',''),(3312,221,'time_limit_timer_style','',''),(3311,221,'time_limit_countdown_message','','it'),(3310,221,'time_limit_countdown_message','','en'),(3309,221,'time_limit_countdown_message','','de-informal'),(3308,221,'time_limit_countdown_message','','fr'),(3307,221,'time_limit_disable_prev','0',''),(3306,221,'time_limit_disable_next','0',''),(3305,221,'time_limit_action','1',''),(3304,221,'time_limit','',''),(3303,221,'page_break','0',''),(3302,221,'maximum_chars','',''),(3301,221,'cssclass','',''),(3300,221,'hidden','0',''),(3299,221,'display_rows','',''),(3298,221,'input_size','',''),(3297,221,'text_input_width','',''),(3296,221,'hide_tip','0',''),(3295,221,'em_validation_q_tip','','it'),(3294,221,'em_validation_q_tip','','en'),(3293,221,'em_validation_q_tip','','de-informal'),(3292,221,'em_validation_q_tip','','fr'),(3291,221,'em_validation_q','',''),(3290,221,'random_group','',''),(3289,219,'save_as_default','N',''),(3288,219,'image','',''),(3287,219,'statistics_graphtype','0',''),(3286,219,'statistics_showgraph','1',''),(3285,219,'numbers_only','0',''),(3284,219,'page_break','0',''),(3283,219,'maximum_chars','',''),(3282,219,'cssclass','',''),(3281,219,'hidden','0',''),(3280,219,'hide_tip','0',''),(3279,219,'display_rows','',''),(3278,219,'input_size','',''),(3277,219,'random_order','0',''),(3276,219,'label_input_columns','',''),(3275,219,'text_input_columns','',''),(3274,219,'suffix','','it'),(3273,219,'suffix','','en'),(3272,219,'suffix','','de-informal'),(3271,219,'suffix','','fr'),(3270,219,'prefix','','it'),(3269,219,'prefix','','en'),(3268,219,'prefix','','de-informal'),(3267,219,'prefix','','fr'),(3266,219,'addlineicon','arrow-down',''),(3265,219,'autoaddnewline','yes',''),(3264,219,'em_validation_sq_tip','','it'),(3263,219,'em_validation_sq_tip','','en'),(3262,219,'em_validation_sq_tip','','de-informal'),(3261,219,'em_validation_sq_tip','','fr'),(3260,219,'em_validation_sq','',''),(3259,219,'em_validation_q_tip','','it'),(3258,219,'em_validation_q_tip','','en'),(3257,219,'em_validation_q_tip','','de-informal'),(3256,219,'em_validation_q_tip','','fr'),(3255,219,'em_validation_q','',''),(3254,219,'random_group','',''),(3253,219,'exclude_all_others','',''),(3252,219,'array_filter_exclude','',''),(3251,219,'array_filter_style','0',''),(3250,219,'array_filter','',''),(3248,219,'min_answers','2',''),(3249,219,'max_answers','4','');
/*!40000 ALTER TABLE `lime_question_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_question_l10ns`
--

DROP TABLE IF EXISTS `lime_question_l10ns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_question_l10ns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qid` int NOT NULL,
  `question` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `script` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx1_question_ls` (`qid`,`language`)
) ENGINE=MyISAM AUTO_INCREMENT=855 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_question_l10ns`
--

LOCK TABLES `lime_question_l10ns` WRITE;
/*!40000 ALTER TABLE `lime_question_l10ns` DISABLE KEYS */;
INSERT INTO `lime_question_l10ns` VALUES (1,1,'Kurzer freier Text','Hilfetext','','de-informal'),(2,1,'Short free text','This is the help text','','en'),(3,1,'Zone de texte court','Un texte d\'aide pour les personnes interrogées.','','fr'),(4,1,'Testo breve','Questo è il testo per spiegare meglio la domanda.','','it'),(5,2,'Langer freier Text','','','de-informal'),(6,2,'Long free text','','','en'),(7,2,'Zone de texte long','','','fr'),(8,2,'Testo lungo','','','it'),(9,3,'Ausführlicher freier Text','','','de-informal'),(10,3,'Huge free text','','','en'),(11,3,'Zone de texte très long','','','fr'),(12,3,'Testo libero maxi','','','it'),(13,4,'Kurzer freier Text beschränkt auf numerische Eingaben, mit zusätzlicher Timerfunktion','','','de-informal'),(14,4,'Short free text (Numbers only)','','','en'),(15,4,'Zone de texte court ( Nombres uniquement, avec un minuteur )','','','fr'),(16,4,'Testo breve (Solo numeri)','','','it'),(17,5,'<p>Langer freier Text, Eingabefeld mit Größenangaben:</p>\n\n<p>Breite: 3<br />Anzahl Zeilen: 2<br />Maximale Zeichenanzahl: 6</p>\n','','','de-informal'),(18,5,'Long free text (Input box width :3, Display rows : 2 , Maximum characters : 6)','','','en'),(19,5,'Zone de texte long (Lignes à afficher : 2 , Largeur de la zone de saisie : 3, Nombre maximum de caractères : 6)','','','fr'),(20,5,'Testo lungo (Ampiezza della input box: 25%, Righe visualizzate: 2 , Numero massimo di caratteri: 6)','','','it'),(21,6,'Mehrfache kurze freie Texte','','','de-informal'),(22,6,'Multiple short text','','','en'),(23,6,'Multiples zones de texte court','','','fr'),(24,6,'Testo breve multiplo','','','it'),(25,7,'Mehrfache kurze freie Texte mit Anzahl Zeilen = 2 und zufälliger Antwortreihenfolge','','','de-informal'),(26,7,'Multiple short text (Display rows : 2, Random answer order)','','','en'),(27,7,'Multiples zones de texte court (Lignes à afficher : 2, Ordre des réponses aléatoire)','','','fr'),(28,7,'Testo breve multiplo (Righe visualizzate: 2, Ordine delle risposte random)','','','it'),(29,8,'Mehrfache kurze freie Texte mit langen Antwortfeldern, maximale Zeichenanzahl = 2, Beschränkung auf numerische Eingaben, Größe Textfeld = 2','','','de-informal'),(30,8,'Multiple short text, with long answers (Maximum characters: 2, Numbers only, Input box width : 2)','','','en'),(31,8,'Multiples zones de texte court, avec des réponses longues (Nombre maximum de caractères: 2, Nombres uniquement, Largeur de la zone de saisie : 2)','','','fr'),(32,8,'Testo breve multiplo (Numero massimo di caratteri: 2, Solo numeri, Ampiezza della input box: 25%)','','','it'),(33,9,'Numerische Eingabe','','','de-informal'),(34,9,'Numerical input','','','en'),(35,9,'Entrée numérique','','','fr'),(36,9,'Inserimento numerico','','','it'),(37,10,'Mehrfache numerische Eingabe','','','de-informal'),(38,10,'Multiple numerical input','','','en'),(39,10,'Multiples entrées numériques','','','fr'),(40,10,'Inserimento numerico multiplo','','','it'),(41,11,'Mehrfache numerische Eingabe mit Summe Minimum = 3, Summe Maximum = 10, maximale Zeichen = 1','Übernimmt Werte aus vorheriger Frage mittels SGQA Platzhalter.','','de-informal'),(42,11,'Multiple numerical input (Minimum sum value : 3, Maximum sum value : 10, Maximum characters :1 )','Can use value from precedent question with EM','','en'),(43,11,'Multiples entrées numériques (Valeur minimale de la somme : 3, Valeur maximum de la somme : 10, Nombre maximum de caractères :1 )','Il est possible d\'utiliser les réponses précédentes.','','fr'),(44,11,'Inserimento numerico multiplo (valore minimo della somma: 3, valore massimo della somma: 10, numero massimo di caratteri:1 )','E\' possibile usare valori predefiniti usando l\'EM','','it'),(45,12,'Mehrfache numerische Eingabe mit Slider-Layout und Sliderdetails<br />Genauigkeit = 0,1<br />Minimumwert<br />Maximumwert<br />Nutzung des Text-Separators','','','de-informal'),(46,12,'Множественный числовой ввод (использование слайдера, точность слайдера : 0,1, минимальное и максимальное значение, использование текстового разделителя)','','','en'),(47,12,'Multiples entrées numériques (Utiliser un curseur, Précision du curseur : 0.1, Valeurs minimale et maximale, utilisation d\'un séparateur de texte )','','','fr'),(48,12,'Inserimento numerico multiplo (Layout con dispositivo di scorrimento, accuratezza dello slider: 0.1, valori minimo e massimo: 1-10, uso del separatore di testo)','','','it'),(49,13,'Ja/Nein','','','de-informal'),(50,13,'Yes/No','','','en'),(51,13,'Oui/Non','','','fr'),(52,13,'Sì/No','','','it'),(53,14,'Geschlecht','','','de-informal'),(54,14,'Gender','','','en'),(55,14,'Genre','','','fr'),(56,14,'Genere (Sesso)','','','it'),(57,15,'5er Skala','','','de-informal'),(58,15,'5 point choice','','','en'),(59,15,'5 boutons radios','','','fr'),(60,15,'Scelta punteggio (da 1 a 5)','','','it'),(61,16,'Sprachwechsler-Baustein','Dieser Fragetyp fragt keine Informationen ab sondern bietet lediglich die Möglichkeit, bei mehrsprachigen Fragebögen die Sprache zu wechseln, weshalb sich seine Verwendung insbesondere am Beginn des Fragebogens empfiehlt.','','de-informal'),(62,16,'Language switch','<p>This question change the language of the actual survey : don\'t use for other thing.</p>\n\n<p>It can be interesting to use it at survey start</p>\n','','en'),(63,16,'Changement de langue','<p>Cette question change la langue du questionnaire en cours, mieux vaut ne l\'utiliser qu\'a cela.</p>\n\n<p>Cela peut être intéressant de poser cette question au démarrage du questionnaire.</p>\n','','fr'),(64,16,'Cambio lingua','<p>Questa domanda permette di cambiare la lingua del questionario, non altro.</p>\n\n<p>Può essere interessante inserirla a inizio questionario.</p>\n','','it'),(65,17,'Einfachauswahl/Liste mit Kategorien','','','de-informal'),(66,17,'List dropdown (with category)','','','en'),(67,17,'Liste (Menu déroulant) (avec séparateur de catégories )','','','fr'),(68,17,'Lista (Menu Dropdown) - con categorie','','','it'),(69,18,'Liste/Einfachauswahl','','','de-informal'),(70,18,'List radio','','','en'),(71,18,'Liste (Boutons radio)','','','fr'),(72,18,'Lista (Radio Button)','','','it'),(73,19,'Liste/Einfachauswahl mit Kommentarfeld','','','de-informal'),(74,19,'List radio with comment','','','en'),(75,19,'Liste avec commentaire','','','fr'),(76,19,'Lista con commento','','','it'),(77,20,'Mehrfachauswahl','','','de-informal'),(78,20,'Multiple options','','','en'),(79,20,'Multiples cases à cocher','','','fr'),(80,20,'Scelte multiple','','','it'),(81,21,'<p>Mehrfachauswahl (mit Exklusivauswahl)</p>\n','','','de-informal'),(82,21,'Multiple option (with exclusive option)','','','en'),(83,21,'Multiples cases à cocher (avec Option d\'exclusion)','','','fr'),(84,21,'Scelta multipla (con opzione esclusiva)','','','it'),(85,22,'Mehrfachauswahl mit Kommentarfeldern (Defaultantworten und Minimum Antworten = 1)','','','de-informal'),(86,22,'Multiple option with comments (default answers and 1 Minimum Answer)','','','en'),(87,22,'Multiples cases à cocher avec commentaires (Valeurs par défaut et nombre de réponses minimum)','','','fr'),(88,22,'Scelta multipla con commenti (risposte di default e 1 risposta minima)','','','it'),(89,23,'Datumsangabe','','','de-informal'),(90,23,'Date','','','en'),(91,23,'Date','','','fr'),(92,23,'Data','','','it'),(93,24,'Datumsangabe über Drop-Down-Felder mit Minimum und Maximum für die Jahresangabe','','','de-informal'),(94,24,'Date (Display select boxes , year Maximum and Minimum)','','','en'),(95,24,'Date (Afficher les boites de sélection , Année minimal et maximale)','','','fr'),(96,24,'Data (visualizzazione riquadri, anno minimo e massimo)','','','it'),(97,25,'Ranking','','','de-informal'),(98,25,'Ranking','','','en'),(99,25,'Classement','','','fr'),(100,25,'Classifica','','','it'),(101,26,'Matrix','','','de-informal'),(102,26,'Array','','','en'),(103,26,'Tableau','','','fr'),(104,26,'Array','','','it'),(105,27,'Matrix 5-Punkte-Skala','','','de-informal'),(106,27,'Array 5 point choice','','','en'),(107,27,'Tableau (5 boutons radio)','','','fr'),(108,27,'Array (punteggio 1-5)','','','it'),(109,28,'Matrix 10-Punkte-Skala','','','de-informal'),(110,28,'Array 10 point choice','','','en'),(111,28,'Tableau (10 boutons radio)','','','fr'),(112,28,'Array (punteggio 1-10)','','','it'),(113,29,'Matrix (Zunahme/gleichbleibend/Abnahme)','','','de-informal'),(114,29,'Array (Increase/Same/Decrease)','','','en'),(115,29,'Tableau (Augmenter, Sans changement, Diminuer)','','','fr'),(116,29,'Array (Aumenta, Uguale, Diminuisce)','','','it'),(117,30,'Textbaustein: \"Die nächste Frage kommt gleich...\"','Dies ist nur ein Textbaustein mit Hinweistexten.','','de-informal'),(118,30,'Next is the array single choice question type','This is a boilerplate question, we use it to make a separation','','en'),(119,30,'A la suite, les tableaux de questions à réponses uniques','Ceci est une question de type \"question sans réponse\", nous l\'utilisons pour effectuer une séparation.','','fr'),(120,30,'La prossima è una domanda di tipo array - scelta singola','Questa è una domanda di visualizzazione testo, usata per separare la prossima batteria di domande','','it'),(121,31,'Array von Textfeldern','Dies ist eine Frage vom Typ \"Array\"','','de-informal'),(122,31,'Array Texts','This is an array question','','en'),(123,31,'Tableau (texte)','Ceci est une question de type tableau','','fr'),(124,31,'Array (Testi)','Questa è una domanda di tipo Array (Testi)','','it'),(125,32,'Zahlen-Matrix (Text-Eingabefelder)','Dies ist eine Matrix-Frage','','de-informal'),(126,32,'Array numbers (text input)','This is an array type question','','en'),(127,32,'Tableau (Nombres) (Saisies de texte)','Ceci est une question de type tableau','','fr'),(128,32,'Array (Numeri)','Questa è una domanda di tipo Array','','it'),(129,33,'Array Zahlen (0/1) (Checkbox-Layout)','','','de-informal'),(130,33,'Array Numbers (Checkbox layout)','','','en'),(131,33,'Tableau (Nombres) (Utilisation de cases à cocher)','','','fr'),(132,33,'Array Numeri (con layout del Checkbox)','','','it'),(133,34,'Dual-Matrix','','','de-informal'),(134,34,'Array dual scale','','','en'),(135,34,'Tableau double échelle','','','fr'),(136,34,'Array con doppia scala','','','it'),(137,35,'Matrix nach Spalten','Gleiche Frage wie zuvor, nur die Achsen sind vertauscht','','de-informal'),(138,35,'Array by column','Same question than before, just the orientation has changed','','en'),(139,35,'Afficher en colonnes','C\'est exactement la même que question que précédemment, seule l\'orientation à était modifiée.','','fr'),(140,35,'Array per colonna','Stessa domanda di prima, cambia solo l\'orientamento','','it'),(141,36,'Zahlenmatrix ( Minimum: -2, Maximum: 2, Schrittweite: 2)','Matrix aus Dropdown-Feldern mit vordefinierten Zahlenwerten.','','de-informal'),(142,36,'Array number ( Minimum: -2, Maximum: 2, step : 2)','Number entry but like unique choice entry.','','en'),(143,36,'Tableau (Nombres) ( Valeur minimum: -2, Valeur maximum: 2, Valeur du pas : 2)','Un seul choix dans une liste de nombres','','fr'),(144,36,'Array (Numeri) - (Minimo: -2, Massimo: 2, Passo : 2)','Solo una scelta in un elenco di numeri','','it'),(145,37,'Einfachauswahl/Liste (Dropdown)','','','de-informal'),(146,37,'List dropdown (default option)','','','en'),(147,37,'Liste (Menu déroulant) (avec option par défaut)','','','fr'),(148,37,'Lista (Menu Dropdown) - con opzioni di default','','','it'),(149,38,'Matrix (Ja/Nein/Unsicher)','','','de-informal'),(150,38,'Array Yes/No/Uncertain','','','en'),(151,38,'Tableau (Oui/Non/Indifférent)','','','fr'),(152,38,'Scelta (Sì/No/Non so)','','','it'),(153,39,'Ranking (Minimale und maximale Antwortanzahl)','','','de-informal'),(154,39,'Ranking (minimum and maximum answer)','','','en'),(155,39,'Classement (Nombre de réponses minimum et maximum, ordre aléatoire)','Rendre obligatoire la question de classement oblige à classer toutes les réponses.','','fr'),(156,39,'Classifica (risposte minime e massime=2)','','','it'),(157,40,'Wenn Fragen die gleichen Antwortoptionen nutzen, kann eine Frage vom Typ Array genutzt werden.','Ein Textbaustein...','','de-informal'),(158,40,'If some question have the same option, you can use array to show a question list.','A boiler plate question','','en'),(159,40,'Si certaines questions ont les mêmes options, il est possible d\'utiliser un tableau pour représenter les différentes questions.','Une question sans réponse','','fr'),(160,40,'<p>Se alcune domande hanno le stesse opzioni, puoi usare un array per mostrare la lista di domande.</p>\n\n','Questa è una domanda di solo testo','','it'),(161,41,'Mehrfachauswahl als Ranking-Fragetyp','','','de-informal'),(162,41,'Multichoice question with ranking option','','','en'),(163,41,'Réponses multiples avec notion d\'ordre','','','fr'),(164,41,'Domande a scelta multipla con opzione di Classifica','','','it'),(165,42,'Eine Ja/Nein Pflichtfrage, die Folgefragen anziegt/versteckt je nach Auswahl.','','','de-informal'),(166,42,'A Yes/No non mandatory question to show or hide next question.','','','en'),(167,42,'Une question oui/non pour afficher ou masquer les réponses suivantes','','','fr'),(168,42,'<p>Questa è una domanda Si/No non obbligatoria per nescondere o mostrare la domanda successiva</p>\n','','','it'),(169,43,'Diese Frage wird nur angezeigt, wenn zuvor \"Ja\" ausgewählt wurde.','','','de-informal'),(170,43,'This is displayed only if you select yes.','You can use all question type of LimeSurvey.','','en'),(171,43,'Ceci est affiché uniquement si vous sélectionnez OUI.','Il est possible d\'utiliser tous les types de questions de LimeSurvey.','','fr'),(172,43,'Questo viene visualizzato solo se si seleziona Sì.','E\' possibile usare tutte le tipologie di domande','','it'),(173,44,'Diese Frage wird nur angezeigt, wenn zuvor \"Nein\" gewählt wurde.','','','de-informal'),(174,44,'This is displayed only if you select no.','You can use all question type of LimeSurvey','','en'),(175,44,'Ceci est affiché si vous sélectionnez Non','Vous pouvez utiliser tous les types de questions de LimeSurvey','','fr'),(176,44,'Questo viene visualizzato solo se si seleziona No.','E\' possibile usare tutti i tipi di domanda','','it'),(177,45,'Diese Frage wird nur angezeigt, wenn \"keine Antwort\" gewählt wurde (Default).','','','de-informal'),(178,45,'This is displayed only if no answer is checked. (by default)','You can use all question type of LimeSurvey.','','en'),(179,45,'Ceci est affiché en cas de Non réponse, donc affiché par défaut','Vous pouvez utiliser tous les types de questions de LimeSurvey','','fr'),(180,45,'Questo è visualizzato solo se nessuna risposta è selezionata. (default)','E\' possibile usare tutte le tipologie di domanda','','it'),(181,46,'Für komplexe Bedingungen können Szenarien genutzt werden.','','','de-informal'),(182,46,'For complex condition , you can use scenario.','','','en'),(183,46,'Pour des conditions plus complexes , il est possible d\'utiliser les scénarios.','','','fr'),(184,46,'Per condizioni complesse è possibile usare gli Scenari nel pannello delle condizioni.','','','it'),(185,47,'Zeige Fragen 1 und 2 je nach erfüllter Bedingung.','Hier werden Szenarien genutzt, um die Bedingungen mit ODER zu verknüpfen.','','de-informal'),(186,47,'Display question 1 and 2 under condition.','We use scenario to have OR condition.','','en'),(187,47,'Afficher la question 1 ou 2 selon les conditions','Nous utilisons les scénario pour avoir une conditions de type OU.','','fr'),(188,47,'Viasualizza le domande 1 e 2 con le condizioni.','Sono stati usati gli scenari per impostare le condizioni in OR.','','it'),(189,48,'Frage 1: Wird angezeigt bei entsprechender Auswahl der vorherigen Mehrfachauswahl.','','','de-informal'),(190,48,'Question 1 : displayed if you select <q>Show question 1</q> at one of previous question','Again, you can use all question type of LimeSurvey.','','en'),(191,48,'Question 1 : affichée si vous sélectionner <q>Afficher la question 1</q> sur l\'une des questions précédentes.','N\'importe quel type de question peut être utilisé, ici c\'est une question sans réponse.','','fr'),(192,48,'<p>Domanda 1: è visualizzata se si seleziona \"Visualizza domanda 1\" in una delle domande precedenti</p>\n','<p>E\' sempre possibile usare un qualsiasi tipo di domanda di LimeSurvey</p>\n','','it'),(193,49,'Frage 2: Wird angezeigt bei entsprechender Auswahl der vorherigen Mehrfachauswahl.','','','de-informal'),(194,49,'Question 2 : displayed if you select <q>Show question 2</q> at one of previous question.','','','en'),(195,49,'Question 2 : affichée si vous sélectionner <q>Afficher la question 1</q> sur l\'une des questions précédentes.','','','fr'),(196,49,'Domanda 2: è visualizzata se si seleziona \"Visualizza domanda 2\" in una delle domande precedenti','E\' sempre possibile usare un qualsiasi tipo di domanda di LimeSurvey','','it'),(197,50,'Verstecke die beiden folgenden Fragen?','Diese Frage wird nur angezeigt, wenn bei der vorherigen Frage eine Option gewählt wurde.','','de-informal'),(198,50,'Hide question 1 and 2 even if you select <q>display</q> an previous question.','This is displayed only of you choose to display question 1 or question 2.','','en'),(199,50,'Cacher les questions 1 et 2 même si vous avez coché <q>Afficher</q> sur l\'une des questions précédentes.','Ceci est affiché uniquement si vous choisissez d\'afficher la question 1 ou 2.','','fr'),(200,50,'Nasconde le domande 1 e 2 anche se hai selezionato \"visualizza\" alla domanda precedente.','<p>Questa domanda si visualizza solo se hai scelto di visualizzare le domande 1 o 2</p>\n','','it'),(201,51,'Auf Basis einer Mehrfachauswahl können Optionen in folgenden Fragen gefiltert werden.','','','de-informal'),(202,51,'You can filter some question with a multi choice option.','','','en'),(203,51,'Une question à choix multiple permet de filtrer les sous questions suivantes','','','fr'),(204,51,'Puoi filtrare alcune domande con le opzioni di risposta multipla.','','','it'),(205,52,'Antwortoptionen gefiltert auf Basis der Auswahl in der vorherigen Frage.','','','de-informal'),(206,52,'Filtered array with previous question.','','','en'),(207,52,'Filtre de tableau avec la question précédente','','','fr'),(208,52,'Domanda array filtrata dalla domanda precedente.','','','it'),(209,53,'Über das Attribut \"Array Filter Exclusion\" werden nur diejenigen Einträge angezeigt, die bei der vorherigen Mehrfachauswahl nicht ausgewählt wurden.','','','de-informal'),(210,53,'You can exclude some option with Array Filter Exclusion.','','','en'),(211,53,'Filtre d\'exclusion du tableau avec la question précédente','','','fr'),(212,53,'Puoi escludere alcune opzioni in base alla scelta multipla della domanda precedente, usando il Filtro array di esclusione.','','','it'),(213,54,'Diese Frage wird nur angezeigt, wenn zuvor \"Ja\" ausgewählt wurde.','','','de-informal'),(214,54,'This is displayed only if you select yes.','Using Expression manager','','en'),(215,54,'Ceci est affiché uniquement si vous sélectionnez OUI.','En utilisant le gestionnaire d\'expression','','fr'),(216,54,'Questo viene visualizzato solo se si seleziona Sì.','Rilevanza definita con Expression Manager','','it'),(217,55,'Diese Frage wird nur angezeigt, wenn zuvor \"Nein\" gewählt wurde.','','','de-informal'),(218,55,'This is displayed only if you select no.','Using Expression Manager','','en'),(219,55,'Ceci est affiché si vous sélectionnez Non','En utilisant le gestionnaire d\'expression','','fr'),(220,55,'Questo viene visualizzato solo se si seleziona No.','Rilevanza definita con Expression Manager','','it'),(221,56,'Diese Frage wird nur angezeigt, wenn \"keine Antwort\" gewählt wurde (Default).','','','de-informal'),(222,56,'This is displayed only if no answer is checked. (by default)','Using Expression manager','','en'),(223,56,'Ceci est affiché en cas de Non réponse, donc affiché par défaut','En utilisant le gestionnaire d\'expression','','fr'),(224,56,'Questo è visualizzato solo se nessuna risposta è selezionata. (default)','Rilevanza definita con Expression Manager','','it'),(225,57,'Dual-Matrix (Dropdown)','','','de-informal'),(226,57,'Array dual scale (dropdown)','','','en'),(227,57,'Tableau double échelle (Double menu déroulant)','','','fr'),(228,57,'Array con doppia scala (menù dropdown)','','','it'),(229,65,'Äpfel','',NULL,'de-informal'),(230,65,'Apples','',NULL,'en'),(231,65,'Apples','',NULL,'fr'),(232,65,'Mele','',NULL,'it'),(233,66,'Orangen','',NULL,'de-informal'),(234,66,'Oranges','',NULL,'en'),(235,66,'Oranges','',NULL,'fr'),(236,66,'Arance','',NULL,'it'),(237,67,'Bananen','',NULL,'de-informal'),(238,67,'Bananas','',NULL,'en'),(239,67,'Bananas','',NULL,'fr'),(240,67,'Banane','',NULL,'it'),(241,68,'LimeSurvey ist toll, weil...','',NULL,'de-informal'),(242,68,'LimeSurvey is great because ','',NULL,'en'),(243,68,'LimeSurvey est excellent parceque ','',NULL,'fr'),(244,68,'LimeSurvey è grande perchè','',NULL,'it'),(245,69,'LimeSurvey ist das Beste, weil...','',NULL,'de-informal'),(246,69,'LimeSurvey is best than ','',NULL,'en'),(247,69,'LimeSurvey est meilleur que ','',NULL,'fr'),(248,69,'LimeSurvey è il meglio di ','',NULL,'it'),(249,70,'LimeSurvey ist wunderbar, weil...','',NULL,'de-informal'),(250,70,'LimeSurvey is beautiful like ','',NULL,'en'),(251,70,'LimeSurvey est beau comme ','',NULL,'fr'),(252,70,'LimeSurvey è bello come','',NULL,'it'),(253,71,'LimeSurvey ist leicht zu nutzen, weil...','',NULL,'de-informal'),(254,71,'LimeSurvey is easy like ','',NULL,'en'),(255,71,'LimeSurvey est facile comme ','',NULL,'fr'),(256,71,'LimeSurvey è facile come','',NULL,'it'),(257,72,'Beispiel Teilfrage - X','',NULL,'de-informal'),(258,72,'X-axis example subquestion','',NULL,'en'),(259,72,'X-axis example subquestion','',NULL,'fr'),(260,72,'Asse-X: Prima sotto-domanda di esempio','',NULL,'it'),(261,73,'weitere Teilfrage - X','',NULL,'de-informal'),(262,73,'X-axis new answer subquestion','',NULL,'en'),(263,73,'X-axis new answer subquestion','',NULL,'fr'),(264,73,'Asse-X: Seconda sotto-domanda di esempio','',NULL,'it'),(265,74,'Teilfrage drei - X','',NULL,'de-informal'),(266,74,'X-axis third subquestion','',NULL,'en'),(267,74,'X-axis third subquestion','',NULL,'fr'),(268,74,'Asse-X: third Terza sotto-domanda di esempio','',NULL,'it'),(269,75,'letzte Teilfrage - X','',NULL,'de-informal'),(270,75,'X-axis last subquestion','',NULL,'en'),(271,75,'X-axis last subquestion','',NULL,'fr'),(272,75,'Asse-X: Quarta sotto-domanda di esempio','',NULL,'it'),(273,76,'Beispiel Teilfrage - Y','',NULL,'de-informal'),(274,76,'Y-axis example subquestion','',NULL,'en'),(275,76,'Y-axis example subquestion','',NULL,'fr'),(276,76,'Asse-Y:  Prima sotto-domanda di esempio','',NULL,'it'),(277,77,'weitere Teilfrage - Y','',NULL,'de-informal'),(278,77,'Y-axis new answer subquestion','',NULL,'en'),(279,77,'Y-axis new answer subquestion','',NULL,'fr'),(280,77,'Asse-Y:  Seconda sotto-domanda di esempio','',NULL,'it'),(281,78,'Teilfrage drei - Y ','',NULL,'de-informal'),(282,78,'Y-axis third subquestion','',NULL,'en'),(283,78,'Y-axis third subquestion','',NULL,'fr'),(284,78,'Asse-Y: Terza sotto-domanda di esempio','',NULL,'it'),(285,79,'letzte Teilfrage - Y','',NULL,'de-informal'),(286,79,'Y-axis last subquestion','',NULL,'en'),(287,79,'Y-axis last subquestion','',NULL,'fr'),(288,79,'Asse-Y: Quarta sotto-domanda di esempio','',NULL,'it'),(289,80,'Beispiel Teilfrage - X','',NULL,'de-informal'),(290,80,'Some example subquestion - X-Scale','',NULL,'en'),(291,80,'Un exemple de sous-question - Échelle X','',NULL,'fr'),(292,80,'Prima sotto-domanda di esempio - X-Scale','',NULL,'it'),(293,81,'weitere Teilfrage - X','',NULL,'de-informal'),(294,81,'New answer subquestion - X-Scale','',NULL,'en'),(295,81,'Nouvelle sous-question - Échelle X','',NULL,'fr'),(296,81,'Seconda sotto-domanda di esempio - X-Scale','',NULL,'it'),(297,82,'Teilfrage drei - X','',NULL,'de-informal'),(298,82,'Third subquestion - X-Scale','',NULL,'en'),(299,82,'Troisième sous-question - Échelle X','',NULL,'fr'),(300,82,'Terza sotto-domanda di esempio - X-Scale','',NULL,'it'),(301,83,'letzte Teilfrage - X','',NULL,'de-informal'),(302,83,'Last subquestion - X-Scale','',NULL,'en'),(303,83,'Dernière sous-question - Échelle X','',NULL,'fr'),(304,83,'Quarta sotto-domanda di esempio - X-Scale','',NULL,'it'),(305,84,'Beispiel Teilfrage - X-Skala','',NULL,'de-informal'),(306,84,'Some example subquestion - X-Scale','',NULL,'en'),(307,84,'Un exemple de sous-question - Échelle X','',NULL,'fr'),(308,84,'Prima sotto-domanda di esempio - scala X','',NULL,'it'),(309,85,'Neue Teilfrage - X-Skala','',NULL,'de-informal'),(310,85,'New answer subquestion - X-Scale','',NULL,'en'),(311,85,'Nouvelle sous-question - Échelle X','',NULL,'fr'),(312,85,'Seconda sotto-domanda di esempio - scala X','',NULL,'it'),(313,86,'Dritte Teilfrage - X-Skala','',NULL,'de-informal'),(314,86,'Third subquestion - X-Scale','',NULL,'en'),(315,86,'Troisième sous-question - Échelle X','',NULL,'fr'),(316,86,'Terza sotto-domanda di esempio - scala X','',NULL,'it'),(317,87,'Letzte Teilfrage - X-Skala','',NULL,'de-informal'),(318,87,'Last subquestion - X-Scale','',NULL,'en'),(319,87,'Dernière sous-question - Échelle X','',NULL,'fr'),(320,87,'Quarta sotto-domanda di esempio - scala X','',NULL,'it'),(321,88,'Zeige Frage 1','',NULL,'de-informal'),(322,88,'display question 1','',NULL,'en'),(323,88,'Afficher la question 1','',NULL,'fr'),(324,88,'visualizza domanda 1','',NULL,'it'),(325,89,'Zeige Frage 2','',NULL,'de-informal'),(326,89,'display question 2','',NULL,'en'),(327,89,'Afficher la question 2','',NULL,'fr'),(328,89,'visualizza domanda 2','',NULL,'it'),(329,90,'Zeige Frage 1','',NULL,'de-informal'),(330,90,'Display question 1','',NULL,'en'),(331,90,'Afficher la question 1','',NULL,'fr'),(332,90,'visualizza domanda 1','',NULL,'it'),(333,91,'Zeige Frage 2','',NULL,'de-informal'),(334,91,'Display question 2','',NULL,'en'),(335,91,'Afficher la question 2','',NULL,'fr'),(336,91,'visualizza domanda 2','',NULL,'it'),(337,92,'Beispiel Teilfrage','',NULL,'de-informal'),(338,92,'Some example subquestion','',NULL,'en'),(339,92,'Un exemple de sous-question','',NULL,'fr'),(340,92,'Prima sotto-domanda di esempio','',NULL,'it'),(341,93,'neue Teilfrage','',NULL,'de-informal'),(342,93,'New answer subquestion','',NULL,'en'),(343,93,'Nouvelle sous-question','',NULL,'fr'),(344,93,'Seconda sotto-domanda di esempio','',NULL,'it'),(345,94,'dritte Teilfrage','',NULL,'de-informal'),(346,94,'Third subquestion','',NULL,'en'),(347,94,'Troisième sous-question','',NULL,'fr'),(348,94,'Terza sotto-domanda di esempio','',NULL,'it'),(349,95,'letzte Teilfrage','',NULL,'de-informal'),(350,95,'Last subquestion','',NULL,'en'),(351,95,'Dernière sous-question','',NULL,'fr'),(352,95,'Quarta sotto-domanda di esempio','',NULL,'it'),(353,96,'Beispiel Teilfrage','',NULL,'de-informal'),(354,96,'Some example subquestion','',NULL,'en'),(355,96,'Un exemple de sous-question','',NULL,'fr'),(356,96,'Prima sotto-domanda di esempio','',NULL,'it'),(357,97,'neue Teilfrage','',NULL,'de-informal'),(358,97,'New answer subquestion','',NULL,'en'),(359,97,'Nouvelle sous-question','',NULL,'fr'),(360,97,'Seconda sotto-domanda di esempio','',NULL,'it'),(361,98,'dritte Teilfrage','',NULL,'de-informal'),(362,98,'Third subquestion','',NULL,'en'),(363,98,'Troisième sous-question','',NULL,'fr'),(364,98,'Terza sotto-domanda di esempio','',NULL,'it'),(365,99,'letzte Teilfrage','',NULL,'de-informal'),(366,99,'Last subquestion','',NULL,'en'),(367,99,'Dernière sous-question','',NULL,'fr'),(368,99,'Quarta sotto-domanda di esempio','',NULL,'it'),(369,100,'Beispiel Teilfrage - Y','',NULL,'de-informal'),(370,100,'Some example subquestion - Y','',NULL,'en'),(371,100,'Un exemple de sous-question - Y','',NULL,'fr'),(372,100,'Prima sotto-domanda di esempio - Y','',NULL,'it'),(373,101,'weitere Teilfrage - Y','',NULL,'de-informal'),(374,101,'New answer subquestion - Y','',NULL,'en'),(375,101,'Nouvelle sous-question - Y','',NULL,'fr'),(376,101,'Seconda sotto-domanda di esempio - Y','',NULL,'it'),(377,102,'Teilfrage drei - Y','',NULL,'de-informal'),(378,102,'Third subquestion - Y','',NULL,'en'),(379,102,'Troisième sous-question - Y','',NULL,'fr'),(380,102,'Terza sotto-domanda di esempio - Y','',NULL,'it'),(381,103,'letzte Teilfrage - Y','',NULL,'de-informal'),(382,103,'Last subquestion - Y','',NULL,'en'),(383,103,'Dernière sous-question - Y','',NULL,'fr'),(384,103,'Quarta sotto-domanda di esempio - Y','',NULL,'it'),(385,104,'Beispiel Teilfrage - X','',NULL,'de-informal'),(386,104,'Some example subquestion - X','',NULL,'en'),(387,104,'Un exemple de sous-question - X','',NULL,'fr'),(388,104,'Prima sotto-domanda di esempio - X','',NULL,'it'),(389,105,'weitere Teilfrage  - X','',NULL,'de-informal'),(390,105,'New answer subquestion - X','',NULL,'en'),(391,105,'Nouvelle sous-question - X','',NULL,'fr'),(392,105,'Seconda sotto-domanda di esempio - X','',NULL,'it'),(393,106,'Teilfrage drei - X','',NULL,'de-informal'),(394,106,'Third subquestion - X','',NULL,'en'),(395,106,'Troisième sous-question - X','',NULL,'fr'),(396,106,'Terza sotto-domanda di esempio - X','',NULL,'it'),(397,107,'letzte Teilfrage - X','',NULL,'de-informal'),(398,107,'Last subquestion - X','',NULL,'en'),(399,107,'Dernière sous-question - X','',NULL,'fr'),(400,107,'Quarta sotto-domanda di esempio - X','',NULL,'it'),(401,108,'Beispiel Teilfrage|weniger|mehr','',NULL,'de-informal'),(402,108,'Some example subquestion|less|more','',NULL,'en'),(403,108,'Un exemple de sous-question|moins|plus','',NULL,'fr'),(404,108,'Prima sotto-domanda di esempio|meno|più','',NULL,'it'),(405,109,'weitere Teilfrage|weniger|mehr','',NULL,'de-informal'),(406,109,'New answer subquestion|less|more','',NULL,'en'),(407,109,'Nouvelle sous-question|moins|plus','',NULL,'fr'),(408,109,'Seconda sotto-domanda di esempio|meno|più','',NULL,'it'),(409,110,'Teilfrage drei|weniger|mehr','',NULL,'de-informal'),(410,110,'Third subquestion|less|more','',NULL,'en'),(411,110,'Troisième sous-question|moins|plus','',NULL,'fr'),(412,110,'Terza sotto-domanda di esempio|meno|più','',NULL,'it'),(413,111,'letzte Teilfrage|weniger|mehr','',NULL,'de-informal'),(414,111,'Last subquestion|less|more','',NULL,'en'),(415,111,'Dernière sous-question|moins|plus','',NULL,'fr'),(416,111,'Quarta sotto-domanda di esempio|meno|più','',NULL,'it'),(417,112,'Beispielteilfrage|rechts','',NULL,'de-informal'),(418,112,'Some example subquestion|right','',NULL,'en'),(419,112,'Un exemple de sous-question','',NULL,'fr'),(420,112,'Prima sotto-domanda di esempio|destra','',NULL,'it'),(421,113,'Neue Teilfrage|rechts','',NULL,'de-informal'),(422,113,'New answer subquestion|right','',NULL,'en'),(423,113,'Nouvelle sous-question','',NULL,'fr'),(424,113,'Seconda sotto-domanda di esempio|destra','',NULL,'it'),(425,114,'Dritte Teilfrage|rechts','',NULL,'de-informal'),(426,114,'Third subquestion|right','',NULL,'en'),(427,114,'Troisième sous-question','',NULL,'fr'),(428,114,'Terza sotto-domanda di esempio|destra','',NULL,'it'),(429,115,'Letzte Teilfrage|rechts','',NULL,'de-informal'),(430,115,'Last subquestion|right','',NULL,'en'),(431,115,'Dernière sous-question','',NULL,'fr'),(432,115,'Quarta sotto-domanda di esempio|destra','',NULL,'it'),(433,116,'Beispiel Teilfrage','',NULL,'de-informal'),(434,116,'Some example subquestion','',NULL,'en'),(435,116,'Un exemple de sous-question','',NULL,'fr'),(436,116,'Prima sotto-domanda di esempio','',NULL,'it'),(437,117,'Neue Teilfrage','',NULL,'de-informal'),(438,117,'New answer subquestion','',NULL,'en'),(439,117,'Nouvelle sous-question','',NULL,'fr'),(440,117,'Seconda sotto-domanda di esempio','',NULL,'it'),(441,118,'Dritte Teilfrage','',NULL,'de-informal'),(442,118,'Third subquestion','',NULL,'en'),(443,118,'Troisième sous-question','',NULL,'fr'),(444,118,'Terza sotto-domanda di esempio','',NULL,'it'),(445,119,'Letzte Teilfrage','',NULL,'de-informal'),(446,119,'Last subquestion','',NULL,'en'),(447,119,'Dernière sous-question','',NULL,'fr'),(448,119,'Quarta sotto-domanda di esempio','',NULL,'it'),(449,120,'Exklusivoption','',NULL,'de-informal'),(450,120,'Exclusive option','',NULL,'en'),(451,120,'Option exclusive','',NULL,'fr'),(452,120,'Opzione esclusiva','',NULL,'it'),(453,121,'Beispiel Teilfrage - Y','',NULL,'de-informal'),(454,121,'Some example subquestion - Y Scale','',NULL,'en'),(455,121,'Un exemple de sous-question - Échelle Y','',NULL,'fr'),(456,121,'Prima sotto-domanda di esempio - Y Scale','',NULL,'it'),(457,122,'weitere Teilfrage - Y','',NULL,'de-informal'),(458,122,'New answer subquestion - Y Scale','',NULL,'en'),(459,122,'Nouvelle sous-question - Échelle Y','',NULL,'fr'),(460,122,'Seconda sotto-domanda di esempio - Y Scale','',NULL,'it'),(461,123,'Teilfrage drei - Y ','',NULL,'de-informal'),(462,123,'Third subquestion - Y Scale','',NULL,'en'),(463,123,'Troisième sous-question - Échelle Y','',NULL,'fr'),(464,123,'Terza sotto-domanda di esempio - Y Scale','',NULL,'it'),(465,124,'letzte Teilfrage - Y ','',NULL,'de-informal'),(466,124,'Last subquestion - Y Scale','',NULL,'en'),(467,124,'Dernière sous-question - Échelle Y','',NULL,'fr'),(468,124,'Quarta sotto-domanda di esempio - Y Scale','',NULL,'it'),(469,125,'Beispiel Teilfrage - Y-Skala','',NULL,'de-informal'),(470,125,'Some example subquestion - Y-scale','',NULL,'en'),(471,125,'Un exemple de sous-question - Échelle Y','',NULL,'fr'),(472,125,'Prima sotto-domanda di esempio - scala Y','',NULL,'it'),(473,126,'Neue Teilfrage - Y-Skala','',NULL,'de-informal'),(474,126,'New answer subquestion - Y-scale','',NULL,'en'),(475,126,'Nouvelle sous-question - Échelle Y','',NULL,'fr'),(476,126,'Seconda sotto-domanda di esempio - scala Y','',NULL,'it'),(477,127,'Dritte Teilfrage - Y-Skala','',NULL,'de-informal'),(478,127,'Third subquestion - Y-scale','',NULL,'en'),(479,127,'Troisième sous-question - Échelle Y','',NULL,'fr'),(480,127,'Terza sotto-domanda di esempio - scala Y','',NULL,'it'),(481,128,'Letzte Teilfrage - Y-Skala','',NULL,'de-informal'),(482,128,'Last subquestion - Y-scale','',NULL,'en'),(483,128,'Dernière sous-question - Échelle Y','',NULL,'fr'),(484,128,'Quarta sotto-domanda di esempio - scala Y','',NULL,'it'),(485,129,'Beispiel Teilfrage','',NULL,'de-informal'),(486,129,'Some example subquestion','',NULL,'en'),(487,129,'Un exemple de sous-question','',NULL,'fr'),(488,129,'Prima sotto-domanda di esempio','',NULL,'it'),(489,130,'neue Teilfrage','',NULL,'de-informal'),(490,130,'New answer subquestion','',NULL,'en'),(491,130,'Nouvelle sous-question','',NULL,'fr'),(492,130,'Seconda sotto-domanda di esempio','',NULL,'it'),(493,131,'dritte Teilfrage','',NULL,'de-informal'),(494,131,'Third subquestion','',NULL,'en'),(495,131,'Troisième sous-question','',NULL,'fr'),(496,131,'Terza sotto-domanda di esempio','',NULL,'it'),(497,132,'letzte Teilfrage','',NULL,'de-informal'),(498,132,'Last subquestion','',NULL,'en'),(499,132,'Dernière sous-question','',NULL,'fr'),(500,132,'Quarta sotto-domanda di esempio','',NULL,'it'),(501,133,'Beispiel Teilfrage','',NULL,'de-informal'),(502,133,'Some example subquestion','',NULL,'en'),(503,133,'Un exemple de sous-question','',NULL,'fr'),(504,133,'Prima sotto-domanda di esempio','',NULL,'it'),(505,134,'neue Teilfrage','',NULL,'de-informal'),(506,134,'New answer subquestion','',NULL,'en'),(507,134,'Nouvelle sous-question','',NULL,'fr'),(508,134,'Seconda sotto-domanda di esempio','',NULL,'it'),(509,135,'dritte Teilfrage','',NULL,'de-informal'),(510,135,'Third subquestion','',NULL,'en'),(511,135,'Troisième sous-question','',NULL,'fr'),(512,135,'Terza sotto-domanda di esempio','',NULL,'it'),(513,136,'letzte Teilfrage','',NULL,'de-informal'),(514,136,'Last subquestion','',NULL,'en'),(515,136,'Dernière sous-question','',NULL,'fr'),(516,136,'Quarta sotto-domanda di esempio','',NULL,'it'),(517,137,'Beispiel Teilfrage','',NULL,'de-informal'),(518,137,'Some example subquestion','',NULL,'en'),(519,137,'Un exemple de sous-question','',NULL,'fr'),(520,137,'Prima sotto-domanda di esempio','',NULL,'it'),(521,138,'neue Teilfrage','',NULL,'de-informal'),(522,138,'New answer subquestion','',NULL,'en'),(523,138,'Nouvelle sous-question','',NULL,'fr'),(524,138,'Seconda sotto-domanda di esempio','',NULL,'it'),(525,139,'dritte Teilfrage','',NULL,'de-informal'),(526,139,'Third subquestion','',NULL,'en'),(527,139,'Troisième sous-question','',NULL,'fr'),(528,139,'Terza sotto-domanda di esempio','',NULL,'it'),(529,140,'letzte Teilfrage','',NULL,'de-informal'),(530,140,'Last subquestion','',NULL,'en'),(531,140,'Dernière sous-question','',NULL,'fr'),(532,140,'Quarta sotto-domanda di esempio','',NULL,'it'),(533,141,'Beispiel Teilfrage','',NULL,'de-informal'),(534,141,'Some example subquestion','',NULL,'en'),(535,141,'Un exemple de sous-question','',NULL,'fr'),(536,141,'Prima sotto-domanda di esempio','',NULL,'it'),(537,142,'neue Teilfrage','',NULL,'de-informal'),(538,142,'New answer subquestion','',NULL,'en'),(539,142,'Nouvelle sous-question','',NULL,'fr'),(540,142,'Seconda sotto-domanda di esempio','',NULL,'it'),(541,143,'dritte Teilfrage','',NULL,'de-informal'),(542,143,'Third subquestion','',NULL,'en'),(543,143,'Troisième sous-question','',NULL,'fr'),(544,143,'Terza sotto-domanda di esempio','',NULL,'it'),(545,144,'letzte Teilfrage','',NULL,'de-informal'),(546,144,'Last subquestion','',NULL,'en'),(547,144,'Dernière sous-question','',NULL,'fr'),(548,144,'Quarta sotto-domanda di esempio','',NULL,'it'),(549,145,'Beispiel Teilfrage','',NULL,'de-informal'),(550,145,'Some example subquestion','',NULL,'en'),(551,145,'Un exemple de sous-question','',NULL,'fr'),(552,145,'Prima sotto-domanda di esempio','',NULL,'it'),(553,146,'neue Teilfrage','',NULL,'de-informal'),(554,146,'New answer subquestion','',NULL,'en'),(555,146,'Nouvelle sous-question','',NULL,'fr'),(556,146,'Seconda sotto-domanda di esempio','',NULL,'it'),(557,147,'dritte Teilfrage','',NULL,'de-informal'),(558,147,'Third subquestion','',NULL,'en'),(559,147,'Troisième sous-question','',NULL,'fr'),(560,147,'Terza sotto-domanda di esempio','',NULL,'it'),(561,148,'letzte Teilfrage','',NULL,'de-informal'),(562,148,'Last subquestion','',NULL,'en'),(563,148,'Dernière sous-question','',NULL,'fr'),(564,148,'Quarta sotto-domanda di esempio','',NULL,'it'),(565,149,'Beispiel Teilfrage','',NULL,'de-informal'),(566,149,'Some example subquestion','',NULL,'en'),(567,149,'Un exemple de sous-question','',NULL,'fr'),(568,149,'Prima sotto-domanda di esempio','',NULL,'it'),(569,150,'neue Teilfrage','',NULL,'de-informal'),(570,150,'New answer subquestion','',NULL,'en'),(571,150,'Nouvelle sous-question','',NULL,'fr'),(572,150,'Seconda sotto-domanda di esempio','',NULL,'it'),(573,151,'dritte Teilfrage','',NULL,'de-informal'),(574,151,'Third subquestion','',NULL,'en'),(575,151,'Troisième sous-question','',NULL,'fr'),(576,151,'Terza sotto-domanda di esempio','',NULL,'it'),(577,152,'letzte Teilfrage','',NULL,'de-informal'),(578,152,'Last subquestion','',NULL,'en'),(579,152,'Dernière sous-question','',NULL,'fr'),(580,152,'Quarta sotto-domanda di esempio','',NULL,'it'),(581,153,'Beispiel Teilfrage','',NULL,'de-informal'),(582,153,'Some example subquestion','',NULL,'en'),(583,153,'Un exemple de sous-question','',NULL,'fr'),(584,153,'Prima sotto-domanda di esempio','',NULL,'it'),(585,154,'neue Teilfrage','',NULL,'de-informal'),(586,154,'New answer subquestion','',NULL,'en'),(587,154,'Nouvelle sous-question','',NULL,'fr'),(588,154,'Seconda sotto-domanda di esempio','',NULL,'it'),(589,155,'dritte Teilfrage','',NULL,'de-informal'),(590,155,'Third subquestion','',NULL,'en'),(591,155,'Troisième sous-question','',NULL,'fr'),(592,155,'Terza sotto-domanda di esempio','',NULL,'it'),(593,156,'letzte Teilfrage','',NULL,'de-informal'),(594,156,'Last subquestion','',NULL,'en'),(595,156,'Dernière sous-question','',NULL,'fr'),(596,156,'Quarta sotto-domanda di esempio','',NULL,'it'),(597,157,'Beispiel Teilfrage','',NULL,'de-informal'),(598,157,'Some example subquestion','',NULL,'en'),(599,157,'Un exemple de sous-question','',NULL,'fr'),(600,157,'Prima sotto-domanda di esempio','',NULL,'it'),(601,158,'neue Teilfrage','',NULL,'de-informal'),(602,158,'New answer subquestion','',NULL,'en'),(603,158,'Nouvelle sous-question','',NULL,'fr'),(604,158,'Seconda sotto-domanda di esempio','',NULL,'it'),(605,159,'dritte Teilfrage','',NULL,'de-informal'),(606,159,'Third subquestion','',NULL,'en'),(607,159,'Troisième sous-question','',NULL,'fr'),(608,159,'Terza sotto-domanda di esempio','',NULL,'it'),(609,160,'letzte Teilfrage','',NULL,'de-informal'),(610,160,'Last subquestion','',NULL,'en'),(611,160,'Dernière sous-question','',NULL,'fr'),(612,160,'Quarta sotto-domanda di esempio','',NULL,'it'),(613,161,'Beispiel Teilfrage','',NULL,'de-informal'),(614,161,'Some example subquestion','',NULL,'en'),(615,161,'Un exemple de sous-question','',NULL,'fr'),(616,161,'Prima sotto-domanda di esempio','',NULL,'it'),(617,162,'neue Teilfrage','',NULL,'de-informal'),(618,162,'New answer subquestion','',NULL,'en'),(619,162,'Nouvelle sous-question','',NULL,'fr'),(620,162,'Seconda sotto-domanda di esempio','',NULL,'it'),(621,163,'dritte Teilfrage','',NULL,'de-informal'),(622,163,'Third subquestion','',NULL,'en'),(623,163,'Troisième sous-question','',NULL,'fr'),(624,163,'Terza sotto-domanda di esempio','',NULL,'it'),(625,164,'letzte Teilfrage','',NULL,'de-informal'),(626,164,'Last subquestion','',NULL,'en'),(627,164,'Dernière sous-question','',NULL,'fr'),(628,164,'Quarta sotto-domanda di esempio','',NULL,'it'),(629,165,'Beispiel Teilfrage','',NULL,'de-informal'),(630,165,'Some example subquestion','',NULL,'en'),(631,165,'Un exemple de sous-question','',NULL,'fr'),(632,165,'Prima sotto-domanda di esempio','',NULL,'it'),(633,166,'neue Teilfrage','',NULL,'de-informal'),(634,166,'New answer subquestion','',NULL,'en'),(635,166,'Nouvelle sous-question','',NULL,'fr'),(636,166,'Seconda sotto-domanda di esempio','',NULL,'it'),(637,167,'dritte Teilfrage','',NULL,'de-informal'),(638,167,'Third subquestion','',NULL,'en'),(639,167,'Troisième sous-question','',NULL,'fr'),(640,167,'Terza sotto-domanda di esempio','',NULL,'it'),(641,168,'letzte Teilfrage','',NULL,'de-informal'),(642,168,'Last subquestion','',NULL,'en'),(643,168,'Dernière sous-question','',NULL,'fr'),(644,168,'Quarta sotto-domanda di esempio','',NULL,'it'),(645,169,'Beispiel Teilfrage','',NULL,'de-informal'),(646,169,'Some example subquestion','',NULL,'en'),(647,169,'Un exemple de sous-question','',NULL,'fr'),(648,169,'Prima sotto-domanda di esempio','',NULL,'it'),(649,170,'neue Teilfrage','',NULL,'de-informal'),(650,170,'New answer subquestion','',NULL,'en'),(651,170,'Nouvelle sous-question','',NULL,'fr'),(652,170,'Seconda sotto-domanda di esempio','',NULL,'it'),(653,171,'dritte Teilfrage','',NULL,'de-informal'),(654,171,'Third subquestion','',NULL,'en'),(655,171,'Troisième sous-question','',NULL,'fr'),(656,171,'Terza sotto-domanda di esempio','',NULL,'it'),(657,172,'letzte Teilfrage','',NULL,'de-informal'),(658,172,'Last subquestion','',NULL,'en'),(659,172,'Dernière sous-question','',NULL,'fr'),(660,172,'Quarta sotto-domanda di esempio','',NULL,'it'),(661,173,'Beispiel Teilfrage','',NULL,'de-informal'),(662,173,'Some example subquestion','',NULL,'en'),(663,173,'Un exemple de sous-question','',NULL,'fr'),(664,173,'Prima sotto-domanda di esempio','',NULL,'it'),(665,174,'neue Teilfrage','',NULL,'de-informal'),(666,174,'New answer subquestion','',NULL,'en'),(667,174,'Nouvelle sous-question','',NULL,'fr'),(668,174,'Seconda sotto-domanda di esempio','',NULL,'it'),(669,175,'dritte Teilfrage','',NULL,'de-informal'),(670,175,'Third subquestion','',NULL,'en'),(671,175,'Troisième sous-question','',NULL,'fr'),(672,175,'Terza sotto-domanda di esempio','',NULL,'it'),(673,176,'letzte Teilfrage','',NULL,'de-informal'),(674,176,'Last subquestion','',NULL,'en'),(675,176,'Dernière sous-question','',NULL,'fr'),(676,176,'Quarta sotto-domanda di esempio','',NULL,'it'),(677,177,'Beispiel Teilfrage','',NULL,'de-informal'),(678,177,'Some example subquestion','',NULL,'en'),(679,177,'Un exemple de sous-question','',NULL,'fr'),(680,177,'Prima sotto-domanda di esempio','',NULL,'it'),(681,178,'neue Teilfrage','',NULL,'de-informal'),(682,178,'New answer subquestion','',NULL,'en'),(683,178,'Nouvelle sous-question','',NULL,'fr'),(684,178,'Seconda sotto-domanda di esempio','',NULL,'it'),(685,179,'dritte Teilfrage','',NULL,'de-informal'),(686,179,'Third subquestion','',NULL,'en'),(687,179,'Troisième sous-question','',NULL,'fr'),(688,179,'Terza sotto-domanda di esempio','',NULL,'it'),(689,180,'letzte Teilfrage','',NULL,'de-informal'),(690,180,'Last subquestion','',NULL,'en'),(691,180,'Dernière sous-question','',NULL,'fr'),(692,180,'Quarta sotto-domanda di esempio','',NULL,'it'),(693,58,'Scelta punteggio (da 1 a 5)','','','it'),(694,58,'5 boutons radios (emoji)','','','fr'),(695,58,'5 point choice','','','en'),(696,58,'5er Skala','','','de-informal'),(697,59,'Scelta punteggio (da 1 a 5)','','','it'),(698,59,'5 boutons radios (etoiles)','','','fr'),(699,59,'5 point choice','','','en'),(700,59,'5er Skala','','','de-informal'),(701,60,'Testo breve','Questo è il testo per spiegare meglio la domanda.','','it'),(702,60,'Zone de texte court','Un texte d\'aide pour les personnes interrogées.','','fr'),(703,60,'Short free text','This is the help text','','en'),(704,60,'Kurzer freier Text','Hilfetext','','de-informal'),(705,61,'Testo lungo','','','it'),(706,61,'Zone de texte long','','','fr'),(707,61,'Long free text','','','en'),(708,61,'Langer freier Text','','','de-informal'),(709,62,'Testo breve (Solo numeri)','','','it'),(710,62,'Zone de texte court ( Nombres uniquement, avec un minuteur )','','','fr'),(711,62,'Short free text (Numbers only)','','','en'),(712,62,'Kurzer freier Text beschränkt auf numerische Eingaben, mit zusätzlicher Timerfunktion','','','de-informal'),(713,63,'Testo breve multiplo','','','it'),(714,63,'Multiples zones de texte court','','','fr'),(715,63,'Multiple short text','','','en'),(716,63,'Mehrfache kurze freie Texte','','','de-informal'),(717,181,'Prima sotto-domanda di esempio','',NULL,'it'),(718,181,'Un exemple de sous-question','',NULL,'fr'),(719,181,'Some example subquestion','',NULL,'en'),(720,181,'Beispiel Teilfrage','',NULL,'de-informal'),(721,182,'Seconda sotto-domanda di esempio','',NULL,'it'),(722,182,'Nouvelle sous-question','',NULL,'fr'),(723,182,'New answer subquestion','',NULL,'en'),(724,182,'neue Teilfrage','',NULL,'de-informal'),(725,183,'Terza sotto-domanda di esempio','',NULL,'it'),(726,183,'Troisième sous-question','',NULL,'fr'),(727,183,'Third subquestion','',NULL,'en'),(728,183,'dritte Teilfrage','',NULL,'de-informal'),(729,184,'Quarta sotto-domanda di esempio','',NULL,'it'),(730,184,'Dernière sous-question','',NULL,'fr'),(731,184,'Last subquestion','',NULL,'en'),(732,184,'letzte Teilfrage','',NULL,'de-informal'),(733,64,'Array (Testi)','Questa è una domanda di tipo Array (Testi)','','it'),(734,64,'Tableau (texte)','Ceci est une question de type tableau','','fr'),(735,64,'Array Texts','This is an array question','','en'),(736,64,'Array von Textfeldern','Dies ist eine Frage vom Typ \"Array\"','','de-informal'),(737,185,'Prima sotto-domanda di esempio - Y','',NULL,'it'),(738,185,'Un exemple de sous-question - Y','',NULL,'fr'),(739,185,'Some example subquestion - Y','',NULL,'en'),(740,185,'Beispiel Teilfrage - Y','',NULL,'de-informal'),(741,186,'Seconda sotto-domanda di esempio - Y','',NULL,'it'),(742,186,'Nouvelle sous-question - Y','',NULL,'fr'),(743,186,'New answer subquestion - Y','',NULL,'en'),(744,186,'weitere Teilfrage - Y','',NULL,'de-informal'),(745,187,'Terza sotto-domanda di esempio - Y','',NULL,'it'),(746,187,'Troisième sous-question - Y','',NULL,'fr'),(747,187,'Third subquestion - Y','',NULL,'en'),(748,187,'Teilfrage drei - Y','',NULL,'de-informal'),(749,188,'Quarta sotto-domanda di esempio - Y','',NULL,'it'),(750,188,'Dernière sous-question - Y','',NULL,'fr'),(751,188,'Last subquestion - Y','',NULL,'en'),(752,188,'letzte Teilfrage - Y','',NULL,'de-informal'),(753,189,'Prima sotto-domanda di esempio - X','',NULL,'it'),(754,189,'Un exemple de sous-question - X','',NULL,'fr'),(755,189,'Some example subquestion - X','',NULL,'en'),(756,189,'Beispiel Teilfrage - X','',NULL,'de-informal'),(757,190,'Seconda sotto-domanda di esempio - X','',NULL,'it'),(758,190,'Nouvelle sous-question - X','',NULL,'fr'),(759,190,'New answer subquestion - X','',NULL,'en'),(760,190,'weitere Teilfrage  - X','',NULL,'de-informal'),(761,191,'Terza sotto-domanda di esempio - X','',NULL,'it'),(762,191,'Troisième sous-question - X','',NULL,'fr'),(763,191,'Third subquestion - X','',NULL,'en'),(764,191,'Teilfrage drei - X','',NULL,'de-informal'),(765,192,'Quarta sotto-domanda di esempio - X','',NULL,'it'),(766,192,'Dernière sous-question - X','',NULL,'fr'),(767,192,'Last subquestion - X','',NULL,'en'),(768,192,'letzte Teilfrage - X','',NULL,'de-informal'),(852,233,'','',NULL,'de-informal'),(853,233,'','',NULL,'en'),(854,233,'','',NULL,'it'),(850,232,'','',NULL,'it'),(851,233,'Proposition 4','',NULL,'fr'),(849,232,'','',NULL,'en'),(846,231,'','',NULL,'it'),(847,232,'Proposition 3','',NULL,'fr'),(848,232,'','',NULL,'de-informal'),(840,230,'','',NULL,'de-informal'),(841,230,'','',NULL,'en'),(842,230,'','',NULL,'it'),(843,231,'Proposition 2','',NULL,'fr'),(844,231,'','',NULL,'de-informal'),(845,231,'','',NULL,'en'),(838,229,'','',NULL,'it'),(839,230,'<img alt=\"Alternative à l\'image\" src=\"https://www.economie.gouv.fr/files/styles/ds_cartes_image_illustrative/public/files/2025/vignettes-v2_1.png\" style=\"width: 100px; height: 56px;\" />','',NULL,'fr'),(835,229,'<img alt=\"alternative à l\'image\" src=\"https://www.economie.gouv.fr/files/styles/ds_cartes_image_illustrative/public/files/2024/Dette_publique_explication.png\" style=\"width: 99px; height: 56px;\" />','',NULL,'fr'),(836,229,'','',NULL,'de-informal'),(837,229,'','',NULL,'en'),(833,228,'','','','en'),(834,228,'','','','it'),(832,228,'','','','de-informal'),(819,225,'Question tableau liste avec préfixe','','','fr'),(820,225,'','','','de-informal'),(821,225,'','','','en'),(822,225,'','','','it'),(823,226,'sous question 1','',NULL,'fr'),(824,226,'','',NULL,'de-informal'),(825,226,'','',NULL,'en'),(826,226,'','',NULL,'it'),(827,227,'sous question 2','',NULL,'fr'),(828,227,'','',NULL,'de-informal'),(829,227,'','',NULL,'en'),(830,227,'','',NULL,'it'),(831,228,'Sélection d\'image','','','fr'),(803,221,'LIste bootstrap','','','fr'),(804,221,'','','','de-informal'),(805,221,'','','','en'),(806,221,'','','','it'),(799,220,'Proposition 1','',NULL,'fr'),(800,220,'','',NULL,'de-informal'),(801,220,'','',NULL,'en'),(802,220,'','',NULL,'it'),(795,219,'Question à la demande','','','fr'),(796,219,'','','','de-informal'),(797,219,'','','','en'),(798,219,'','','','it');
/*!40000 ALTER TABLE `lime_question_l10ns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_question_themes`
--

DROP TABLE IF EXISTS `lime_question_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_question_themes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xml_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `author` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `version` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_version` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_update` datetime DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `theme_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_theme` tinyint(1) DEFAULT NULL,
  `extends` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_question_themes` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_question_themes`
--

LOCK TABLES `lime_question_themes` WRITE;
/*!40000 ALTER TABLE `lime_question_themes` DISABLE KEYS */;
INSERT INTO `lime_question_themes` VALUES (1,'5pointchoice','Y','application/views/survey/questions/answer/5pointchoice','/assets/images/screenshots/5.png','5 point choice','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','5 point choice question type configuration','2019-09-23 15:05:59',1,'question_theme','5',1,'','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"choice-5-pt-radio\"}'),(2,'arrays/10point','Y','application/views/survey/questions/answer/arrays/10point','/assets/images/screenshots/B.png','Array (10 point choice)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array (10 point choice) question type configuration','2019-09-23 15:05:59',1,'question_theme','B',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-10-pt\"}'),(3,'arrays/5point','Y','application/views/survey/questions/answer/arrays/5point','/assets/images/screenshots/A.png','Array (5 point choice)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array (5 point choice) question type configuration','2019-09-23 15:05:59',1,'question_theme','A',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-5-pt\"}'),(4,'arrays/array','Y','application/views/survey/questions/answer/arrays/array','/assets/images/screenshots/F.png','Array','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array question type configuration','2019-09-23 15:05:59',1,'question_theme','F',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-flexible-row\"}'),(5,'arrays/column','Y','application/views/survey/questions/answer/arrays/column','/assets/images/screenshots/H.png','Array by column','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array by column question type configuration','2019-09-23 15:05:59',1,'question_theme','H',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-flexible-column\"}'),(6,'arrays/dualscale','Y','application/views/survey/questions/answer/arrays/dualscale','/assets/images/screenshots/1.png','Array dual scale','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array dual scale question type configuration','2019-09-23 15:05:59',1,'question_theme','1',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"2\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-flexible-dual-scale\"}'),(7,'arrays/increasesamedecrease','Y','application/views/survey/questions/answer/arrays/increasesamedecrease','/assets/images/screenshots/E.png','Array (Increase/Same/Decrease)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array (Increase/Same/Decrease) question type configuration','2019-09-23 15:05:59',1,'question_theme','E',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-increase-same-decrease\"}'),(8,'arrays/multiflexi','Y','application/views/survey/questions/answer/arrays/multiflexi','/assets/images/screenshots/COLON.png','Array (Numbers)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array (Numbers) question type configuration','2019-09-23 15:05:59',1,'question_theme',':',1,'','Arrays','{\"subquestions\":\"2\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-multi-flexi\"}'),(9,'arrays/texts','Y','application/views/survey/questions/answer/arrays/texts','/assets/images/screenshots/;.png','Array (Texts)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array (Texts) question type configuration','2019-09-23 15:05:59',1,'question_theme',';',1,'','Arrays','{\"subquestions\":\"2\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"array-multi-flexi-text\"}'),(10,'arrays/yesnouncertain','Y','application/views/survey/questions/answer/arrays/yesnouncertain','/assets/images/screenshots/C.png','Array (Yes/No/Uncertain)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Array (Yes/No/Uncertain) question type configuration','2019-09-23 15:05:59',1,'question_theme','C',1,'','Arrays','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-yes-uncertain-no\"}'),(11,'boilerplate','Y','application/views/survey/questions/answer/boilerplate','/assets/images/screenshots/X.png','Text display','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Text display question type configuration','2019-09-23 15:05:59',1,'question_theme','X',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"boilerplate\"}'),(12,'date','Y','application/views/survey/questions/answer/date','/assets/images/screenshots/D.png','Date/Time','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Date/Time question type configuration','2019-09-23 15:05:59',1,'question_theme','D',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"date\"}'),(13,'equation','Y','application/views/survey/questions/answer/equation','/assets/images/screenshots/EQUATION.png','Equation','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Equation question type configuration','2019-09-23 15:05:59',1,'question_theme','*',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"equation\"}'),(14,'file_upload','Y','application/views/survey/questions/answer/file_upload','/assets/images/screenshots/PIPE.png','File upload','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','File upload question type configuration','2019-09-23 15:05:59',1,'question_theme','|',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"upload-files\"}'),(15,'gender','Y','application/views/survey/questions/answer/gender','/assets/images/screenshots/G.png','Gender','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Gender question type configuration','2019-09-23 15:05:59',1,'question_theme','G',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"gender\"}'),(16,'hugefreetext','Y','application/views/survey/questions/answer/hugefreetext','/assets/images/screenshots/U.png','Huge free text','1970-01-01 01:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Huge free text question type configuration','2019-09-23 15:05:59',1,'question_theme','U',1,'','Text questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-huge\"}'),(17,'language','Y','application/views/survey/questions/answer/language','/assets/images/screenshots/I.png','Language switch','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Language switch question type configuration','2019-09-23 15:05:59',1,'question_theme','I',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"language\"}'),(18,'listradio','Y','application/views/survey/questions/answer/listradio','/assets/images/screenshots/L.png','List (Radio)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','List (radio) question type configuration','2019-09-23 15:05:59',1,'question_theme','L',1,'','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-radio\"}'),(19,'list_dropdown','Y','application/views/survey/questions/answer/list_dropdown','/assets/images/screenshots/!.png','List (Dropdown)','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','List (dropdown) question type configuration','2019-09-23 15:05:59',1,'question_theme','!',1,'','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-dropdown\"}'),(20,'list_with_comment','Y','application/views/survey/questions/answer/list_with_comment','/assets/images/screenshots/O.png','List with comment','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','List with comment question type configuration','2019-09-23 15:05:59',1,'question_theme','O',1,'','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-with-comment\"}'),(21,'longfreetext','Y','application/views/survey/questions/answer/longfreetext','/assets/images/screenshots/T.png','Long free text','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Long free text question type configuration','2019-09-23 15:05:59',1,'question_theme','T',1,'','Text questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-long\"}'),(22,'multiplechoice','Y','application/views/survey/questions/answer/multiplechoice','/assets/images/screenshots/M.png','Multiple choice','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Multiple choice question type configuration','2019-09-23 15:05:59',1,'question_theme','M',1,'','Multiple choice questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt\"}'),(23,'multiplechoice_with_comments','Y','application/views/survey/questions/answer/multiplechoice_with_comments','/assets/images/screenshots/P.png','Multiple choice with comments','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Multiple choice with comments question type configuration','2019-09-23 15:05:59',1,'question_theme','P',1,'','Multiple choice questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt-comments\"}'),(24,'multiplenumeric','Y','application/views/survey/questions/answer/multiplenumeric','/assets/images/screenshots/K.png','Multiple numerical input','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Multiple numerical input question type configuration','2019-09-23 15:05:59',1,'question_theme','K',1,'','Mask questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"numeric-multi\"}'),(25,'multipleshorttext','Y','application/views/survey/questions/answer/multipleshorttext','/assets/images/screenshots/Q.png','Multiple short text','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Multiple short text question type configuration','2019-09-23 15:05:59',1,'question_theme','Q',1,'','Text questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"multiple-short-txt\"}'),(26,'numerical','Y','application/views/survey/questions/answer/numerical','/assets/images/screenshots/N.png','Numerical input','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Numerical input question type configuration','2019-09-23 15:05:59',1,'question_theme','N',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"numeric\"}'),(27,'ranking','Y','application/views/survey/questions/answer/ranking','/assets/images/screenshots/R.png','Ranking','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Ranking question type configuration','2019-09-23 15:05:59',1,'question_theme','R',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"ranking\"}'),(28,'shortfreetext','Y','application/views/survey/questions/answer/shortfreetext','/assets/images/screenshots/S.png','Short free text','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Short free text question type configuration','2019-09-23 15:05:59',1,'question_theme','S',1,'','Text questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-short\"}'),(29,'yesno','Y','application/views/survey/questions/answer/yesno','/assets/images/screenshots/Y.png','Yes/No','2018-09-08 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Yes/No question type configuration','2019-09-23 15:05:59',1,'question_theme','Y',1,'','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"yes-no\"}'),(30,'bootstrap_dropdown','Y','themes/question/bootstrap_dropdown/survey/questions/answer/list_dropdown','/themes/question/bootstrap_dropdown/survey/questions/answer/list_dropdown/assets/bootstrap_dropdown_list_dropdown.png','Bootstrap dropdown','1970-01-01 01:00:00','Adam Zammit','adam.zammit@acspri.org.au','https://www.acspri.org.au','Copyright (C) 2021 The Australian Consortium for Social and Political Research Incorporated (ACSPRI)','GNU General Public License version 2 or later','1.0','1','Bootstrap dropdown theme','2021-09-29 12:00:00',1,'question_theme','!',1,'!','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-dropdown\"}'),(31,'bootstrap_buttons','Y','themes/question/bootstrap_buttons/survey/questions/answer/listradio','/themes/question/bootstrap_buttons/survey/questions/answer/listradio/assets/bootstrap_buttons_listradio.png','Bootstrap buttons','1970-01-01 01:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','New implementation of the Bootstrap buttons question theme','2019-09-23 15:05:59',1,'question_theme','L',1,'L','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-radio\"}'),(32,'bootstrap_buttons_multi','Y','themes/question/bootstrap_buttons_multi/survey/questions/answer/multiplechoice','/themes/question/bootstrap_buttons_multi/survey/questions/answer/multiplechoice/assets/bootstrap_buttons_multiplechoice.png','Bootstrap buttons','1970-01-01 01:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','New implementation of the Bootstrap buttons question theme','2019-09-23 15:05:59',1,'question_theme','M',1,'M','Multiple choice questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt\"}'),(33,'browserdetect','Y','themes/question/browserdetect/survey/questions/answer/shortfreetext','themes/question/browserdetect/survey/questions/answer/shortfreetext/assets/browserdetect.png','Browser detection','2017-07-09 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2017 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Browser, Platform and Proxy detection','2019-09-23 15:05:59',1,'question_theme','S',1,'S','Text questions','{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-short\"}'),(34,'image_select-listradio','Y','themes/question/image_select-listradio/survey/questions/answer/listradio','themes/question/image_select-listradio/survey/questions/answer/listradio/assets/image_select_listradio.png','Image select list (Radio)','1970-01-01 01:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2016 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','List Radio with images.','2019-09-23 15:05:59',1,'question_theme','L',1,'L','Single choice questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-radio\"}'),(35,'image_select-multiplechoice','Y','themes/question/image_select-multiplechoice/survey/questions/answer/multiplechoice','themes/question/image_select-multiplechoice/survey/questions/answer/multiplechoice/assets/image_select_multiplechoice.png','Image select multiple choice','1970-01-01 01:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2016 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Multiplechoice with images.','2019-09-23 15:05:59',1,'question_theme','M',1,'M','Multiple choice questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt\"}'),(36,'inputondemand','Y','themes/question/inputondemand/survey/questions/answer/multipleshorttext','themes/question/inputondemand/survey/questions/answer/multipleshorttext/assets/inputondemand.png','Input on demand','2019-10-04 00:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2019 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','Hide not needed input fields in multiple shorttext','2019-09-23 15:05:59',1,'question_theme','Q',1,'Q','Text questions','{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"multiple-short-txt\"}'),(37,'ranking_advanced','Y','themes/question/ranking_advanced/survey/questions/answer/ranking','themes/question/ranking_advanced/survey/questions/answer/ranking/assets/advanced_ranking.png','Ranking advanced','1970-01-01 01:00:00','LimeSurvey GmbH','info@limesurvey.org','http://www.limesurvey.org','Copyright (C) 2005 - 2017 LimeSurvey Gmbh, Inc. All rights reserved.','GNU General Public License version 2 or later','1.0','1','New implementation of the ranking question','2019-09-23 15:05:59',1,'question_theme','R',1,'R','Mask questions','{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"ranking\"}');
/*!40000 ALTER TABLE `lime_question_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_questions`
--

DROP TABLE IF EXISTS `lime_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_questions` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `parent_qid` int NOT NULL DEFAULT '0',
  `sid` int NOT NULL DEFAULT '0',
  `gid` int NOT NULL DEFAULT '0',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'T',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `preg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `mandatory` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrypted` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `question_order` int NOT NULL,
  `scale_id` int NOT NULL DEFAULT '0',
  `same_default` int NOT NULL DEFAULT '0',
  `relevance` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `question_theme_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modulename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `same_script` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  KEY `lime_idx1_questions` (`sid`),
  KEY `lime_idx2_questions` (`gid`),
  KEY `lime_idx3_questions` (`type`),
  KEY `lime_idx4_questions` (`title`),
  KEY `lime_idx5_questions` (`parent_qid`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_questions`
--

LOCK TABLES `lime_questions` WRITE;
/*!40000 ALTER TABLE `lime_questions` DISABLE KEYS */;
INSERT INTO `lime_questions` VALUES (1,0,282267,1,'S','S','','N','N','N',1,0,0,'','shortfreetext','',0),(2,0,282267,1,'T','T','','N','N','N',2,0,0,'','longfreetext','',0),(3,0,282267,1,'U','H','','N','N','N',3,0,0,'','hugefreetext','',0),(4,0,282267,1,'S','S1','','N','N','N',4,0,0,'','shortfreetext','',0),(5,0,282267,1,'T','T1','','N','N','N',5,0,0,'','longfreetext','',0),(6,0,282267,1,'Q','Q','','N','N','N',6,0,0,'','multipleshorttext','',0),(7,0,282267,1,'Q','Q1','','N','N','N',7,0,0,'','multipleshorttext','',0),(8,0,282267,1,'Q','M2','','N','N','N',8,0,0,'','multipleshorttext','',0),(9,0,282267,2,'N','N','','N','N','N',1,0,0,'','numerical','',0),(10,0,282267,2,'K','MN','','N','N','N',2,0,0,'','multiplenumeric','',0),(11,0,282267,2,'K','MNM','','N','N','N',3,0,0,'','multiplenumeric','',0),(12,0,282267,2,'K','Q2','','N','N','N',4,0,0,'','multiplenumeric','',0),(13,0,282267,3,'Y','Y','','N','N','N',2,0,0,'','yesno','',0),(14,0,282267,3,'G','G','','N','N','N',1,0,0,'','gender','',0),(15,0,282267,3,'5','q5','','N','N','N',3,0,0,'','5pointchoice','',0),(16,0,282267,3,'I','I','','N','N','N',6,0,0,'','language','',0),(17,0,282267,3,'!','ldc','','N','N','N',8,0,0,'','list_dropdown','',0),(18,0,282267,3,'L','L','','Y','N','N',9,0,0,'','listradio','',0),(19,0,282267,3,'O','O','','N','N','N',10,0,0,'','list_with_comment','',0),(20,0,282267,4,'M','M','','Y','N','N',1,0,0,'','multiplechoice','',0),(21,0,282267,4,'M','moe','','N','Y','N',2,0,0,'','multiplechoice','',0),(22,0,282267,4,'P','K','','N','N','N',3,0,0,'','multiplechoice_with_comments','',0),(23,0,282267,3,'D','D','','N','N','N',11,0,0,'','date','',0),(24,0,282267,3,'D','D1','','N','N','N',12,0,0,'','date','',0),(25,0,282267,4,'R','R','','N','N','N',7,0,0,'','ranking','',0),(26,0,282267,3,'F','F','','N','N','N',14,0,0,'','arrays/array','',0),(27,0,282267,3,'A','A','','N','N','N',16,0,0,'','arrays/5point','',0),(28,0,282267,3,'B','B','','N','N','N',17,0,0,'','arrays/10point','',0),(29,0,282267,3,'E','E','','N','N','N',18,0,0,'','arrays/increasesamedecrease','',0),(30,0,282267,3,'X','X','','N','N','N',13,0,0,'','boilerplate','',0),(31,0,282267,1,';','AT','','N','N','N',9,0,0,'','arrays/texts','',0),(32,0,282267,2,':','ANT','','N','N','N',5,0,0,'','arrays/multiflexi','',0),(33,0,282267,4,':','arn','','N','N','N',5,0,0,'','arrays/multiflexi','',0),(34,0,282267,3,'1','dual','','N','N','N',20,0,0,'','arrays/dualscale','',0),(35,0,282267,3,'H','abc','','N','N','N',15,0,0,'','arrays/column','',0),(36,0,282267,3,':','AN','','N','N','N',22,0,0,'','arrays/multiflexi','',0),(37,0,282267,3,'!','ldd','','N','N','N',7,0,1,'','list_dropdown','',0),(38,0,282267,3,'C','C','','N','N','N',19,0,0,'','arrays/yesnouncertain','',0),(39,0,282267,4,'R','R1','','N','N','N',8,0,0,'','ranking','',0),(40,0,282267,4,'X','XB','','N','N','N',4,0,0,'','boilerplate','',0),(41,0,282267,4,'X','XC','','N','N','N',6,0,0,'','boilerplate','',0),(42,0,282267,5,'Y','QC','','N','N','N',1,0,0,'','yesno','',0),(43,0,282267,5,'X','QCYes','','N','N','N',2,0,0,'((QC.NAOK == \"Y\"))','boilerplate','',0),(44,0,282267,5,'X','QCNo','','N','N','N',3,0,0,'((QC.NAOK == \"N\"))','boilerplate','',0),(45,0,282267,5,'X','QCDefault','','N','N','N',4,0,0,'((is_empty(QC.NAOK)))','boilerplate','',0),(46,0,282267,5,'M','QCS1','','N','N','N',8,0,0,'','multiplechoice','',0),(47,0,282267,5,'M','QCS2','','N','N','N',9,0,0,'','multiplechoice','',0),(48,0,282267,5,'X','CC01','','N','N','N',11,0,0,'((QCS1_SH101.NAOK == \"Y\") and (QCS3.NAOK != \"Y\")) or ((282267X5X47SQ201.NAOK == \"Y\") and (QCS3.NAOK != \"Y\"))','boilerplate','',0),(49,0,282267,5,'X','QC02','','N','N','N',12,0,0,'((QCS1_SH102.NAOK == \"Y\") and (QCS3.NAOK != \"Y\")) or ((QCS2_SQ202.NAOK == \"Y\") and (QCS3.NAOK != \"Y\"))','boilerplate','',0),(50,0,282267,5,'Y','QCS3','','N','Y','N',10,0,0,'((282267X5X46SH101.NAOK == \"Y\" or 282267X5X46SH102.NAOK == \"Y\")) or ((282267X5X47SQ201.NAOK == \"Y\" or 282267X5X47SQ202.NAOK == \"Y\"))','yesno','',0),(51,0,282267,6,'M','AF','','N','N','N',1,0,0,'','multiplechoice','',0),(52,0,282267,6,'C','FAF','','N','N','N',2,0,0,'count(that.AF) > 0','arrays/yesnouncertain','',0),(53,0,282267,6,'C','FAFE','','N','N','N',3,0,0,'count(that.AF) < 4','arrays/yesnouncertain','',0),(54,0,282267,5,'X','QEMYes','','N','N','N',5,0,0,'QC.NAOK == \"Y\"','boilerplate','',0),(55,0,282267,5,'X','QEMNo','','N','N','N',6,0,0,'QC.NAOK == \"N\"','boilerplate','',0),(56,0,282267,5,'X','QEMDefault','','N','N','N',7,0,0,'is_empty(QC.NAOK)','boilerplate','',0),(57,0,282267,3,'1','q12','','N','N','N',21,0,0,'','arrays/dualscale','',0),(58,0,282267,3,'5','q5emoji','','N','N','N',4,0,0,'','5pointchoice','',0),(59,0,282267,3,'5','q5etoiles','','N','N','N',5,0,0,'','5pointchoice','',0),(60,0,282267,7,'S','SCopy','','N','Y','N',1,0,0,'','shortfreetext','',0),(61,0,282267,7,'T','TCopy','','N','Y','N',2,0,0,'','longfreetext','',0),(62,0,282267,7,'S','S1Copy','','N','Y','N',3,0,0,'','shortfreetext','',0),(63,0,282267,7,'Q','QCopy','','N','Y','N',4,0,0,'','multipleshorttext','',0),(64,0,282267,7,';','ATCopy','','N','Y','N',5,0,0,'','arrays/texts','',0),(65,11,282267,2,'K','SQ001','','N','N','N',0,0,0,'',NULL,'',0),(66,11,282267,2,'K','SQ002','','N','N','N',1,0,0,'',NULL,'',0),(67,11,282267,2,'K','SQ003','','N','N','N',2,0,0,'',NULL,'',0),(68,22,282267,4,'P','SQ001','','N','N','N',0,0,0,'',NULL,'',0),(69,22,282267,4,'P','SQ002','','N','N','N',1,0,0,'',NULL,'',0),(70,22,282267,4,'P','SQ003','','N','N','N',2,0,0,'',NULL,'',0),(71,22,282267,4,'P','SQ004','','N','N','N',3,0,0,'',NULL,'',0),(72,32,282267,2,':','SQX01','','N','N','N',4,1,0,'',NULL,'',0),(73,32,282267,2,':','SQX02','','N','N','N',5,1,0,'',NULL,'',0),(74,32,282267,2,':','SQX03','','N','N','N',6,1,0,'',NULL,'',0),(75,32,282267,2,':','SQX04','','N','N','N',7,1,0,'',NULL,'',0),(76,32,282267,2,':','SQY01','','N','N','N',0,0,0,'',NULL,'',0),(77,32,282267,2,':','SQY02','','N','N','N',1,0,0,'',NULL,'',0),(78,32,282267,2,':','SQY03','','N','N','N',2,0,0,'',NULL,'',0),(79,32,282267,2,':','SQY04','','N','N','N',3,0,0,'',NULL,'',0),(80,33,282267,4,':','SQX01','','N','N','N',4,1,0,'',NULL,'',0),(81,33,282267,4,':','SQX02','','N','N','N',5,1,0,'',NULL,'',0),(82,33,282267,4,':','SQX03','','N','N','N',6,1,0,'',NULL,'',0),(83,33,282267,4,':','SQX04','','N','N','N',7,1,0,'',NULL,'',0),(84,36,282267,3,':','SQX01','','N','N','N',6,1,0,'',NULL,'',0),(85,36,282267,3,':','SQX02','','N','N','N',7,1,0,'',NULL,'',0),(86,36,282267,3,':','SQX03','','N','N','N',8,1,0,'',NULL,'',0),(87,36,282267,3,':','SQX04','','N','N','N',9,1,0,'',NULL,'',0),(88,46,282267,5,'M','SH101','','N','N','N',0,0,0,'',NULL,'',0),(89,46,282267,5,'M','SH102','','N','N','N',1,0,0,'',NULL,'',0),(90,47,282267,5,'M','SQ201','','N','N','N',0,0,0,'',NULL,'',0),(91,47,282267,5,'M','SQ202','','N','N','N',1,0,0,'',NULL,'',0),(92,6,282267,1,'Q','SQ01','','N','N','N',0,0,0,'',NULL,'',0),(93,6,282267,1,'Q','SQ02','','N','N','N',1,0,0,'',NULL,'',0),(94,6,282267,1,'Q','SQ03','','N','N','N',2,0,0,'',NULL,'',0),(95,6,282267,1,'Q','SQ04','','N','N','N',3,0,0,'',NULL,'',0),(96,7,282267,1,'Q','SQ01','','N','N','N',0,0,0,'',NULL,'',0),(97,7,282267,1,'Q','SQ02','','N','N','N',1,0,0,'',NULL,'',0),(98,7,282267,1,'Q','SQ03','','N','N','N',2,0,0,'',NULL,'',0),(99,7,282267,1,'Q','SQ04','','N','N','N',3,0,0,'',NULL,'',0),(100,31,282267,1,';','SQY01','','N','N','N',0,0,0,'',NULL,'',0),(101,31,282267,1,';','SQY02','','N','N','N',1,0,0,'',NULL,'',0),(102,31,282267,1,';','SQY03','','N','N','N',2,0,0,'',NULL,'',0),(103,31,282267,1,';','SQY04','','N','N','N',3,0,0,'',NULL,'',0),(104,31,282267,1,';','SQX01','','N','N','N',4,1,0,'',NULL,'',0),(105,31,282267,1,';','SQX02','','N','N','N',5,1,0,'',NULL,'',0),(106,31,282267,1,';','SQX03','','N','N','N',6,1,0,'',NULL,'',0),(107,31,282267,1,';','SQX04','','N','N','N',7,1,0,'',NULL,'',0),(108,12,282267,2,'K','SQ01','','N','N','N',0,0,0,'',NULL,'',0),(109,12,282267,2,'K','SQ02','','N','N','N',1,0,0,'',NULL,'',0),(110,12,282267,2,'K','SQ03','','N','N','N',2,0,0,'',NULL,'',0),(111,12,282267,2,'K','SQ04','','N','N','N',3,0,0,'',NULL,'',0),(112,26,282267,3,'F','SQ01','','N','N','N',0,0,0,'',NULL,'',0),(113,26,282267,3,'F','SQ02','','N','N','N',1,0,0,'',NULL,'',0),(114,26,282267,3,'F','SQ03','','N','N','N',2,0,0,'',NULL,'',0),(115,26,282267,3,'F','SQ04','','N','N','N',5,0,0,'',NULL,'',0),(116,21,282267,4,'M','SQ01','','N','N','N',0,0,0,'',NULL,'',0),(117,21,282267,4,'M','SQ02','','N','N','N',1,0,0,'',NULL,'',0),(118,21,282267,4,'M','SQ03','','N','N','N',2,0,0,'',NULL,'',0),(119,21,282267,4,'M','SQ04','','N','N','N',3,0,0,'',NULL,'',0),(120,21,282267,4,'M','SQ05','','N','N','N',4,0,0,'',NULL,'',0),(121,33,282267,4,':','SQY01','','N','N','N',0,0,0,'',NULL,'',0),(122,33,282267,4,':','SQY02','','N','N','N',1,0,0,'',NULL,'',0),(123,33,282267,4,':','SQY03','','N','N','N',2,0,0,'',NULL,'',0),(124,33,282267,4,':','SQY04','','N','N','N',3,0,0,'',NULL,'',0),(125,36,282267,3,':','SQY01','','N','N','N',0,0,0,'',NULL,'',0),(126,36,282267,3,':','SQY02','','N','N','N',1,0,0,'',NULL,'',0),(127,36,282267,3,':','SQY03','','N','N','N',2,0,0,'',NULL,'',0),(128,36,282267,3,':','SQY04','','N','N','N',5,0,0,'',NULL,'',0),(129,8,282267,1,'Q','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(130,8,282267,1,'Q','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(131,8,282267,1,'Q','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(132,8,282267,1,'Q','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(133,10,282267,2,'K','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(134,10,282267,2,'K','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(135,10,282267,2,'K','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(136,10,282267,2,'K','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(137,35,282267,3,'H','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(138,35,282267,3,'H','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(139,35,282267,3,'H','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(140,35,282267,3,'H','SQ04','','N','N','N',5,0,0,'1',NULL,'',0),(141,27,282267,3,'A','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(142,27,282267,3,'A','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(143,27,282267,3,'A','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(144,27,282267,3,'A','SQ04','','N','N','N',5,0,0,'1',NULL,'',0),(145,28,282267,3,'B','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(146,28,282267,3,'B','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(147,28,282267,3,'B','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(148,28,282267,3,'B','SQ04','','N','N','N',5,0,0,'1',NULL,'',0),(149,29,282267,3,'E','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(150,29,282267,3,'E','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(151,29,282267,3,'E','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(152,29,282267,3,'E','SQ04','','N','N','N',5,0,0,'1',NULL,'',0),(153,38,282267,3,'C','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(154,38,282267,3,'C','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(155,38,282267,3,'C','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(156,38,282267,3,'C','SQ04','','N','N','N',5,0,0,'1',NULL,'',0),(157,34,282267,3,'1','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(158,34,282267,3,'1','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(159,34,282267,3,'1','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(160,34,282267,3,'1','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(161,57,282267,3,'1','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(162,57,282267,3,'1','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(163,57,282267,3,'1','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(164,57,282267,3,'1','SQ04','','N','N','N',5,0,0,'1',NULL,'',0),(165,20,282267,4,'M','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(166,20,282267,4,'M','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(167,20,282267,4,'M','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(168,20,282267,4,'M','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(169,51,282267,6,'M','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(170,51,282267,6,'M','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(171,51,282267,6,'M','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(172,51,282267,6,'M','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(173,53,282267,6,'C','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(174,53,282267,6,'C','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(175,53,282267,6,'C','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(176,53,282267,6,'C','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(177,52,282267,6,'C','SQ01','','N','N','N',0,0,0,'1',NULL,'',0),(178,52,282267,6,'C','SQ02','','N','N','N',1,0,0,'1',NULL,'',0),(179,52,282267,6,'C','SQ03','','N','N','N',2,0,0,'1',NULL,'',0),(180,52,282267,6,'C','SQ04','','N','N','N',3,0,0,'1',NULL,'',0),(181,63,282267,7,'Q','SQ01','','N','N','N',0,0,0,'',NULL,'',0),(182,63,282267,7,'Q','SQ02','','N','N','N',1,0,0,'',NULL,'',0),(183,63,282267,7,'Q','SQ03','','N','N','N',2,0,0,'',NULL,'',0),(184,63,282267,7,'Q','SQ04','','N','N','N',3,0,0,'',NULL,'',0),(185,64,282267,7,';','SQY01','','N','N','N',0,0,0,'',NULL,'',0),(186,64,282267,7,';','SQY02','','N','N','N',1,0,0,'',NULL,'',0),(187,64,282267,7,';','SQY03','','N','N','N',2,0,0,'',NULL,'',0),(188,64,282267,7,';','SQY04','','N','N','N',3,0,0,'',NULL,'',0),(189,64,282267,7,';','SQX01','','N','N','N',4,1,0,'',NULL,'',0),(190,64,282267,7,';','SQX02','','N','N','N',5,1,0,'',NULL,'',0),(191,64,282267,7,';','SQX03','','N','N','N',6,1,0,'',NULL,'',0),(192,64,282267,7,';','SQX04','','N','N','N',7,1,0,'',NULL,'',0),(233,219,282267,7,'T','SQ003',NULL,'N',NULL,'N',3,0,0,'1',NULL,NULL,0),(232,219,282267,7,'T','SQ004',NULL,'N',NULL,'N',2,0,0,'1',NULL,NULL,0),(231,219,282267,7,'T','SQ002',NULL,'N',NULL,'N',1,0,0,'1',NULL,NULL,0),(230,228,282267,13,'T','SQ002',NULL,'N',NULL,'N',1,0,0,'1',NULL,NULL,0),(229,228,282267,13,'T','SQ001',NULL,'N',NULL,'N',0,0,0,'1',NULL,NULL,0),(228,0,282267,13,'M','G01Q68',NULL,'N','N','N',3,0,0,'1','image_select-multiplechoice','',0),(227,225,282267,13,'T','SQ002',NULL,'N',NULL,'N',1,0,0,'1',NULL,NULL,0),(226,225,282267,13,'T','SQ001',NULL,'N',NULL,'N',0,0,0,'1',NULL,NULL,0),(225,0,282267,13,'1','G01Q67',NULL,'N','N','N',2,0,0,'1','arrays/dualscale','',0),(221,0,282267,13,'!','G01Q66','','N','N','N',1,0,0,'1','bootstrap_dropdown','',0),(220,219,282267,7,'T','SQ001',NULL,'N',NULL,'N',0,0,0,'1',NULL,NULL,0),(219,0,282267,7,'Q','G02Q65','','N','Y','N',6,0,0,'1','inputondemand','',0);
/*!40000 ALTER TABLE `lime_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_quota`
--

DROP TABLE IF EXISTS `lime_quota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_quota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qlimit` int DEFAULT NULL,
  `action` int DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `autoload_url` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lime_idx1_quota` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_quota`
--

LOCK TABLES `lime_quota` WRITE;
/*!40000 ALTER TABLE `lime_quota` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_quota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_quota_languagesettings`
--

DROP TABLE IF EXISTS `lime_quota_languagesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_quota_languagesettings` (
  `quotals_id` int NOT NULL AUTO_INCREMENT,
  `quotals_quota_id` int NOT NULL DEFAULT '0',
  `quotals_language` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `quotals_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotals_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotals_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotals_urldescrip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`quotals_id`),
  KEY `lime_idx1_quota_id` (`quotals_quota_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_quota_languagesettings`
--

LOCK TABLES `lime_quota_languagesettings` WRITE;
/*!40000 ALTER TABLE `lime_quota_languagesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_quota_languagesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_quota_members`
--

DROP TABLE IF EXISTS `lime_quota_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_quota_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int DEFAULT NULL,
  `qid` int DEFAULT NULL,
  `quota_id` int DEFAULT NULL,
  `code` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_idx1_quota_members` (`sid`,`qid`,`quota_id`,`code`),
  KEY `lime_idx2_quota_id` (`quota_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_quota_members`
--

LOCK TABLES `lime_quota_members` WRITE;
/*!40000 ALTER TABLE `lime_quota_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_quota_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_saved_control`
--

DROP TABLE IF EXISTS `lime_saved_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_saved_control` (
  `scid` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL DEFAULT '0',
  `srid` int NOT NULL DEFAULT '0',
  `identifier` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `saved_thisstep` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `saved_date` datetime NOT NULL,
  `refurl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`scid`),
  KEY `lime_idx1_saved_control` (`sid`),
  KEY `lime_idx2_saved_control` (`srid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_saved_control`
--

LOCK TABLES `lime_saved_control` WRITE;
/*!40000 ALTER TABLE `lime_saved_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_saved_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_sessions`
--

DROP TABLE IF EXISTS `lime_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_sessions` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` int DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`),
  KEY `sess_expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_sessions`
--

LOCK TABLES `lime_sessions` WRITE;
/*!40000 ALTER TABLE `lime_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_settings_global`
--

DROP TABLE IF EXISTS `lime_settings_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_settings_global` (
  `stg_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stg_value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`stg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_settings_global`
--

LOCK TABLES `lime_settings_global` WRITE;
/*!40000 ALTER TABLE `lime_settings_global` DISABLE KEYS */;
INSERT INTO `lime_settings_global` VALUES ('sendadmincreationemail','1'),('admincreationemailsubject','User registration at \'{SITENAME}\''),('admincreationemailtemplate','<p>Hello {FULLNAME}, </p><p>This is an automated email notification that a user has been created for you on the website <strong>\'{SITENAME}\'</strong>.</p><p></p><p>You can use now the following credentials to log in:</p><p><strong>Username</strong>: {USERNAME}</p><p><a href=\"{LOGINURL}\">Click here to set your password</a></p><p>If you have any questions regarding this email, please do not hesitate to contact the site administrator at {SITEADMINEMAIL}.</p><p> </p><p>Thank you!</p>'),('DBVersion','648'),('AssetsVersion','30479'),('customassetversionnumber','7');
/*!40000 ALTER TABLE `lime_settings_global` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_settings_user`
--

DROP TABLE IF EXISTS `lime_settings_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_settings_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `entity` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stg_name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stg_value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_settings_user` (`uid`),
  KEY `lime_idx2_settings_user` (`entity`),
  KEY `lime_idx3_settings_user` (`entity_id`),
  KEY `lime_idx4_settings_user` (`stg_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_settings_user`
--

LOCK TABLES `lime_settings_user` WRITE;
/*!40000 ALTER TABLE `lime_settings_user` DISABLE KEYS */;
INSERT INTO `lime_settings_user` VALUES (1,1,NULL,NULL,'welcome_page_widget','list-widget'),(5,1,NULL,NULL,'last_survey','282267'),(4,1,NULL,NULL,'quickaction_state','1'),(6,1,NULL,NULL,'last_question','219');
/*!40000 ALTER TABLE `lime_settings_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_source_message`
--

DROP TABLE IF EXISTS `lime_source_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_source_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_source_message`
--

LOCK TABLES `lime_source_message` WRITE;
/*!40000 ALTER TABLE `lime_source_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_source_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_survey_282267`
--

DROP TABLE IF EXISTS `lime_survey_282267`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_survey_282267` (
  `id` int NOT NULL AUTO_INCREMENT,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int DEFAULT NULL,
  `startlanguage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seed` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` datetime NOT NULL,
  `datestamp` datetime NOT NULL,
  `282267X1X1` text COLLATE utf8mb4_unicode_ci,
  `282267X1X2` text COLLATE utf8mb4_unicode_ci,
  `282267X1X3` text COLLATE utf8mb4_unicode_ci,
  `282267X1X4` text COLLATE utf8mb4_unicode_ci,
  `282267X1X5` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X6SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X7SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X8SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X1X31SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X60` text COLLATE utf8mb4_unicode_ci,
  `282267X7X61` text COLLATE utf8mb4_unicode_ci,
  `282267X7X62` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X63SQ04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X7X64SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X7X219SQ001` text COLLATE utf8mb4_unicode_ci,
  `282267X7X219SQ002` text COLLATE utf8mb4_unicode_ci,
  `282267X7X219SQ004` text COLLATE utf8mb4_unicode_ci,
  `282267X7X219SQ003` text COLLATE utf8mb4_unicode_ci,
  `282267X2X9` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X10SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ001` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ002` decimal(30,10) DEFAULT NULL,
  `282267X2X11SQ003` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ01` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ02` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ03` decimal(30,10) DEFAULT NULL,
  `282267X2X12SQ04` decimal(30,10) DEFAULT NULL,
  `282267X2X32SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X2X32SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X14` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X13` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X15` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X58` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X59` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X16` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X37` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X17` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X18other` text COLLATE utf8mb4_unicode_ci,
  `282267X3X19` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X19comment` text COLLATE utf8mb4_unicode_ci,
  `282267X3X23` datetime DEFAULT NULL,
  `282267X3X24` datetime DEFAULT NULL,
  `282267X3X30` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X26SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X35SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X27SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X28SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X29SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X38SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ01#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ02#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ03#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X34SQ04#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ01#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ02#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ03#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X57SQ04#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X3X36SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X3X36SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X20SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X20other` text COLLATE utf8mb4_unicode_ci,
  `282267X4X21SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X21SQ05` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ001comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ002comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ003` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ003comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X22SQ004` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X22SQ004comment` text COLLATE utf8mb4_unicode_ci,
  `282267X4X40` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X33SQY01_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY01_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY02_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY03_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX01` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX02` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX03` text COLLATE utf8mb4_unicode_ci,
  `282267X4X33SQY04_SQX04` text COLLATE utf8mb4_unicode_ci,
  `282267X4X41` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X251` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X252` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X253` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X254` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X391` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X392` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X393` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X4X394` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X51SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X52SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ01` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ02` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ03` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X6X53SQ04` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X42` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X43` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X44` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X45` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X54` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X55` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X56` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH101` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X46SH102` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ201` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X47SQ202` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X50` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X48` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X5X49` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X221` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ001#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ001#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ002#0` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X225SQ002#1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X228SQ001` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `282267X13X228SQ002` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_survey_282267`
--

LOCK TABLES `lime_survey_282267` WRITE;
/*!40000 ALTER TABLE `lime_survey_282267` DISABLE KEYS */;
INSERT INTO `lime_survey_282267` VALUES (134,NULL,7,'fr','1069471306','2026-04-18 21:06:29','2026-04-18 21:07:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'Y',NULL,'Y',NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lime_survey_282267` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_survey_links`
--

DROP TABLE IF EXISTS `lime_survey_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_survey_links` (
  `participant_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_id` int NOT NULL,
  `survey_id` int NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_invited` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  PRIMARY KEY (`participant_id`,`token_id`,`survey_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_survey_links`
--

LOCK TABLES `lime_survey_links` WRITE;
/*!40000 ALTER TABLE `lime_survey_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_survey_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_survey_url_parameters`
--

DROP TABLE IF EXISTS `lime_survey_url_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_survey_url_parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sid` int NOT NULL,
  `parameter` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `targetqid` int DEFAULT NULL,
  `targetsqid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_survey_url_parameters`
--

LOCK TABLES `lime_survey_url_parameters` WRITE;
/*!40000 ALTER TABLE `lime_survey_url_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_survey_url_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_surveymenu`
--

DROP TABLE IF EXISTS `lime_surveymenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_surveymenu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `survey_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `level` int DEFAULT '0',
  `title` varchar(168) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'side',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `showincollapse` int DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `changed_at` datetime DEFAULT NULL,
  `changed_by` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_surveymenu_name` (`name`),
  KEY `lime_idx2_surveymenu` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_surveymenu`
--

LOCK TABLES `lime_surveymenu` WRITE;
/*!40000 ALTER TABLE `lime_surveymenu` DISABLE KEYS */;
INSERT INTO `lime_surveymenu` VALUES (1,NULL,NULL,NULL,'settings',1,0,'Survey settings','side','Survey settings',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(2,NULL,NULL,NULL,'mainmenu',2,0,'Survey menu','side','Main survey menu',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(3,NULL,NULL,NULL,'quickmenu',3,0,'Quick menu','collapsed','Quick menu',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0);
/*!40000 ALTER TABLE `lime_surveymenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_surveymenu_entries`
--

DROP TABLE IF EXISTS `lime_surveymenu_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_surveymenu_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `name` varchar(168) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(168) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_title` varchar(168) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `menu_icon` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_icon_type` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_class` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_link` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `template` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `partial` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `classes` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permission` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permission_grade` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `getdatamethod` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en-GB',
  `showincollapse` int DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `changed_at` datetime DEFAULT NULL,
  `changed_by` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lime_surveymenu_entries_name` (`name`),
  KEY `lime_idx1_surveymenu_entries` (`menu_id`),
  KEY `lime_idx5_surveymenu_entries` (`menu_title`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_surveymenu_entries`
--

LOCK TABLES `lime_surveymenu_entries` WRITE;
/*!40000 ALTER TABLE `lime_surveymenu_entries` DISABLE KEYS */;
INSERT INTO `lime_surveymenu_entries` VALUES (1,1,NULL,1,'overview','Survey overview','Overview','Open the general survey overview','ri-bar-chart-horizontal-line','remix','','surveyAdministration/view','','','','','','','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(2,1,NULL,2,'generalsettings','General survey settings','General','Open general survey settings','ri-tools-line','remix','','','updatesurveylocalesettings_generalsettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_generaloptions_panel','','surveysettings','read',NULL,'generalTabEditSurvey','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(3,1,NULL,3,'surveytexts','Survey text elements','Text elements','Survey text elements','ri-text-spacing','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/tab_edit_view','','surveylocale','read',NULL,'getTextEditData','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(4,1,NULL,4,'datasecurity','Privacy policy settings','Privacy policy','Edit privacy policy settings','ri-shield-line','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/tab_edit_view_datasecurity','','surveylocale','read',NULL,'getDataSecurityEditData','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(5,1,NULL,5,'theme_options','Theme options','Theme options','Edit theme options for this survey','ri-contrast-drop-fill','remix','','themeOptions/updateSurvey','','','','','surveysettings','update','{\"render\": {\"link\": { \"pjaxed\": true, \"data\": {\"surveyid\": [\"survey\",\"sid\"], \"gsid\":[\"survey\",\"gsid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(6,1,NULL,6,'presentation','Presentation & navigation settings','Presentation','Edit presentation and navigation settings','ri-slideshow-line','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_presentation_panel','','surveylocale','read',NULL,'tabPresentationNavigation','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(7,1,NULL,7,'tokens','Survey participant settings','Participant settings','Set additional options for survey participants','ri-body-scan-fill','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_tokens_panel','','surveylocale','read',NULL,'tabTokens','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(8,1,NULL,8,'notification','Notification and data management settings','Notifications & data','Edit settings for notification and data management','ri-notification-line','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_notification_panel','','surveylocale','read',NULL,'tabNotificationDataManagement','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(9,1,NULL,9,'publication','Publication & access control settings','Publication & access','Edit settings for publication and access control','ri-key-line','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_publication_panel','','surveylocale','read',NULL,'tabPublicationAccess','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(10,1,NULL,10,'surveypermissions','Edit survey permissions','Survey permissions','Edit permissions for this survey','ri-lock-password-line','remix','','surveyPermissions/index','','','','','surveysecurity','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(11,2,NULL,1,'listQuestions','Overview questions & groups','Overview questions & groups','Overview of questions and groups where you can add, edit and reorder them','','remix','','questionAdministration/listQuestions','','','','','surveycontent','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(12,2,NULL,4,'participants','Survey participants','Participants','Go to survey participant and token settings','','remix','','admin/tokens/sa/index/','','','','','tokens','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(13,2,NULL,5,'emailtemplates','Email templates','Email templates','Edit the templates for invitation, reminder and registration emails','','remix','','admin/emailtemplates/sa/index/','','','','','surveylocale','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(14,2,NULL,6,'failedemail','Failed email notifications','Failed email notifications','View and resend failed email notifications','','remix','','failedEmail/index/','','','','','surveylocale','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(15,2,NULL,7,'quotas','Edit quotas','Quotas','Edit quotas for this survey.','','remix','','quotas/index/','','','','','quotas','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(16,2,NULL,8,'assessments','Edit assessments','Assessments','Edit and look at the assessements for this survey.','','remix','','assessment/index','','','','','assessments','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(17,2,NULL,9,'panelintegration','Edit survey panel integration','Panel integration','Define panel integrations for your survey','','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_integration_panel','','surveylocale','read','{\"render\": {\"link\": { \"pjaxed\": false}}}','tabPanelIntegration','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(18,2,NULL,10,'responses','Responses','Responses','Responses','','remix','','responses/browse/','','','','','responses','read','{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyId\": [\"survey\", \"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(19,2,NULL,11,'statistics','Statistics','Statistics','Statistics','','remix','','admin/statistics/sa/simpleStatistics/','','','','','statistics','read','{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\", \"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(20,2,NULL,12,'resources','Add/edit resources (files/images) for this survey','Resources','Add/edit resources (files/images) for this survey','','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_resources_panel','','surveylocale','read','{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','tabResourceManagement','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(21,2,NULL,13,'plugins','Simple plugin settings','Simple plugins','Edit simple plugin settings','','remix','','','updatesurveylocalesettings','editLocalSettings_main_view','/admin/survey/subview/accordion/_plugins_panel','','surveysettings','read','{\"render\": {\"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','pluginTabSurvey','en-GB',0,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(22,3,NULL,1,'activateSurvey','Activate survey','Activate survey','Activate survey','ri-play-fill','remix','','surveyAdministration/activate','','','','','surveyactivation','update','{\"render\": {\"isActive\": false, \"link\": {\"data\": {\"iSurveyID\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(23,3,NULL,2,'deactivateSurvey','Stop survey','Stop survey','Stop this survey','ri-stop-fill','remix','','surveyAdministration/deactivate','','','','','surveyactivation','update','{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(24,3,NULL,3,'testSurvey','Go to survey','Go to survey','Go to survey','ri-settings-5-fill','remix','','survey/index/','','','','','','','{\"render\": {\"link\": {\"external\": true, \"data\": {\"sid\": [\"survey\",\"sid\"], \"newtest\": \"Y\", \"lang\": [\"survey\",\"language\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(25,3,NULL,4,'surveyLogicFile','Survey logic file','Survey logic file','Survey logic file','ri-git-branch-fill','remix','','admin/expressions/sa/survey_logic_file/','','','','','surveycontent','read','{\"render\": { \"link\": {\"data\": {\"sid\": [\"survey\",\"sid\"]}}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0),(26,3,NULL,5,'cpdb','Central participant database','Central participant database','Central participant database','ri-group-fill','remix','','admin/participants/sa/displayParticipants','','','','','tokens','read','{\"render\": {\"link\": {}}}','','en-GB',1,1,'2026-04-16 19:19:09',0,'2026-04-16 19:19:09',0);
/*!40000 ALTER TABLE `lime_surveymenu_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_surveys`
--

DROP TABLE IF EXISTS `lime_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_surveys` (
  `sid` int NOT NULL,
  `owner_id` int NOT NULL,
  `gsid` int DEFAULT '1',
  `admin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `expires` datetime DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `adminemail` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymized` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `format` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savetimings` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `language` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_languages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `datestamp` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `usecookie` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowregister` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowsave` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `autonumber_start` int NOT NULL DEFAULT '0',
  `autoredirect` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowprev` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `printanswers` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `ipaddr` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `ipanonymize` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `refurl` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `datecreated` datetime DEFAULT NULL,
  `showsurveypolicynotice` int DEFAULT '0',
  `publicstatistics` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `publicgraphs` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `listpublic` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `htmlemail` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `sendconfirmation` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `tokenanswerspersistence` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `assessments` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `usecaptcha` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `usetokens` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `bounce_email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributedescriptions` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emailresponseto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emailnotificationto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tokenlength` int NOT NULL DEFAULT '15',
  `showxquestions` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showgroupinfo` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'B',
  `shownoanswer` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showqnumcode` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'X',
  `bouncetime` int DEFAULT NULL,
  `bounceprocessing` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `bounceaccounttype` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccounthost` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccountpass` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bounceaccountencryption` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bounceaccountuser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showwelcome` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showprogress` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `questionindex` int NOT NULL DEFAULT '0',
  `navigationdelay` int NOT NULL DEFAULT '0',
  `nokeyboard` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `alloweditaftercompletion` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `googleanalyticsstyle` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleanalyticsapikey` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tokenencryptionoptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `access_mode` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'O',
  `lastmodified` datetime NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `lime_idx1_surveys` (`owner_id`),
  KEY `lime_idx2_surveys` (`gsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_surveys`
--

LOCK TABLES `lime_surveys` WRITE;
/*!40000 ALTER TABLE `lime_surveys` DISABLE KEYS */;
INSERT INTO `lime_surveys` VALUES (282267,1,1,'Amministratore OpenSurvey.it','Y',NULL,NULL,'admin.limesurvey@opensurvey.it','Y','G','N','dsfr','fr','de-informal en it','Y','N','N','N',134,'N','Y','Y','N','N','N','2026-04-16 19:20:37',0,'Y','N','Y','Y','Y','N','N','N','N','admin.limesurvey@opensurvey.it','','','',15,'Y','B','Y','B',0,'N','','','','','','Y','Y',2,0,'N','N','0','','{\"enabled\":\"N\",\"columns\":{\"firstname\":\"N\",\"lastname\":\"N\",\"email\":\"N\"}}','O','2026-04-18 21:06:23');
/*!40000 ALTER TABLE `lime_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_surveys_groups`
--

DROP TABLE IF EXISTS `lime_surveys_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_surveys_groups` (
  `gsid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sortorder` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `alwaysavailable` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`gsid`),
  KEY `lime_idx1_surveys_groups` (`name`),
  KEY `lime_idx2_surveys_groups` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_surveys_groups`
--

LOCK TABLES `lime_surveys_groups` WRITE;
/*!40000 ALTER TABLE `lime_surveys_groups` DISABLE KEYS */;
INSERT INTO `lime_surveys_groups` VALUES (1,'default','Default',NULL,'Default survey group',0,1,NULL,NULL,'2026-04-16 19:19:09','2026-04-16 19:19:09',1);
/*!40000 ALTER TABLE `lime_surveys_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_surveys_groupsettings`
--

DROP TABLE IF EXISTS `lime_surveys_groupsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_surveys_groupsettings` (
  `gsid` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `admin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminemail` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymized` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `format` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `savetimings` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `datestamp` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `usecookie` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowregister` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowsave` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `autonumber_start` int DEFAULT '0',
  `autoredirect` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `allowprev` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `printanswers` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `ipaddr` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `ipanonymize` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `refurl` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `showsurveypolicynotice` int DEFAULT '0',
  `publicstatistics` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `publicgraphs` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `listpublic` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `htmlemail` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `sendconfirmation` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `tokenanswerspersistence` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `assessments` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `usecaptcha` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `bounce_email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributedescriptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emailresponseto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emailnotificationto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tokenlength` int DEFAULT '15',
  `showxquestions` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showgroupinfo` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'B',
  `shownoanswer` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showqnumcode` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'X',
  `showwelcome` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `showprogress` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Y',
  `questionindex` int DEFAULT '0',
  `navigationdelay` int DEFAULT '0',
  `nokeyboard` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  `alloweditaftercompletion` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`gsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_surveys_groupsettings`
--

LOCK TABLES `lime_surveys_groupsettings` WRITE;
/*!40000 ALTER TABLE `lime_surveys_groupsettings` DISABLE KEYS */;
INSERT INTO `lime_surveys_groupsettings` VALUES (0,1,'Administrator','your-email@example.net','N','G','N','fruity_twentythree','Y','N','N','Y',0,'N','N','N','N','N','N',0,'N','N','N','Y','Y','N','N','N',NULL,NULL,NULL,NULL,15,'Y','B','Y','X','Y','Y',0,0,'N','N'),(1,-1,'inherit','inherit','I','I','I','inherit','I','I','I','I',0,'I','I','I','I','I','I',0,'I','I','I','I','I','I','I','E','inherit',NULL,'inherit','inherit',-1,'I','I','I','I','I','I',-1,-1,'I','I');
/*!40000 ALTER TABLE `lime_surveys_groupsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_surveys_languagesettings`
--

DROP TABLE IF EXISTS `lime_surveys_languagesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_surveys_languagesettings` (
  `surveyls_survey_id` int NOT NULL,
  `surveyls_language` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `surveyls_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyls_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_welcometext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_endtext` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_policy_notice` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_policy_error` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_policy_notice_label` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_urldescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_invite_subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_invite` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_email_remind_subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_remind` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_email_register_subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_register` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_email_confirm_subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surveyls_email_confirm` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_dateformat` int NOT NULL DEFAULT '1',
  `surveyls_attributecaptions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_alias` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_admin_notification_subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_admin_notification` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email_admin_responses_subj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_admin_responses` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `surveyls_numberformat` int NOT NULL DEFAULT '0',
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`surveyls_survey_id`,`surveyls_language`),
  KEY `lime_idx1_surveys_languagesettings` (`surveyls_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_surveys_languagesettings`
--

LOCK TABLES `lime_surveys_languagesettings` WRITE;
/*!40000 ALTER TABLE `lime_surveys_languagesettings` DISABLE KEYS */;
INSERT INTO `lime_surveys_languagesettings` VALUES (282267,'de-informal','Beispielfragebogen für Limesurvey EN/FR/DE/RU','Dieser Beispielfragebogen demonstriert alle in Limesurvey vorhanden Fragetypen sowie zusätzliche Frageoptionen.','<p>Dies ist die Willkommensnachricht des Fragebogens. Sie kann unter Fragebogeneinstellungen -> Texte angepasst werden.</p>\n','','','','','http://www.limesurvey.org','','Einladung zur einer Umfrage','Hallo {FIRSTNAME},\n\nHiermit möchten wir dich zu einer Umfrage einladen.\n\nDer Titel der Umfrage ist \n\'{SURVEYNAME}\'\n\n\'{SURVEYDESCRIPTION}\'\n\nUm an dieser Umfrage teilzunehmen, klicke bitte auf den unten stehenden Link.\n\nMit freundlichen Grüßen,\n\n{ADMINNAME} ({ADMINEMAIL})\n\n----------------------------------------------\nKlicke hier um die Umfrage zu starten:\n{SURVEYURL}\n\nWenn Du an dieser Umfrage nicht teilnehmen und keine weiteren Erinnerungen erhalten möchtest, klicke bitte auf den folgenden Link:\n{OPTOUTURL}','Erinnerung an die Teilnahme an einer Umfrage','Hallo {FIRSTNAME},\n\nVor kurzem haben wir Dich zu einer Umfrage eingeladen.\n\nZu unserem Bedauern haben wir bemerkt, dass Du die Umfrage noch nicht ausgefüllt hast. Wir möchten Dir mitteilen, dass die Umfrage noch aktiv ist und würden uns freuen, wenn Du teilnehmen könntest.\n\nDer Titel der Umfrage ist \n\'{SURVEYNAME}\'\n\n\'{SURVEYDESCRIPTION}\'\n\nUm an dieser Umfrage teilzunehmen, klicke bitte auf den unten stehenden Link.\n\n Mit freundlichen Grüßen,\n\n{ADMINNAME} ({ADMINEMAIL})\n\n----------------------------------------------\nKlicken Du hier um die Umfrage zu starten:\n{SURVEYURL}\n\nWenn Du an dieser Umfrage nicht teilnehmen und keine weiteren Erinnerungen erhalten möchtest, klicke bitte auf den folgenden Link:\n{OPTOUTURL}','Registrierungsbestätigung für Teilnahmeumfrage','Hallo {FIRSTNAME},\n\nDu (oder jemand, der Deine E-Mail benutzt hat) hat sich für eine Umfrage mit dem Titel {SURVEYNAME} angemeldet.\n\nUm an dieser Umfrage teilzunehmen, klicke bitte auf den folgenden Link.nn{SURVEYURL}\n\nWenn Du irgendwelche Fragen zu dieser Umfrage hast oder wenn Du Dich _nicht_ für diese Umfrage angemeldet hast und Du glaubst, dass Dir diese E-Mail irrtümlicherweise zugeschickt worden ist, kontaktiere bitte {ADMINNAME} unter {ADMINEMAIL}.','Bestätigung für die Teilnahme an unserer Umfrage','Hallo {FIRSTNAME},\n\nVielen Dank für die Teilnahme an der Umfrage mit dem Titel {SURVEYNAME}. Deine Antworten wurden bei uns gespeichert.\n\nWenn du irgendwelche Fragen zu dieser E-Mail hast, kontaktiere bitte {ADMINNAME} unter {ADMINEMAIL}.\n\nMit freundlichen Grüßen,\n\n{ADMINNAME}',1,NULL,'','Antwortabsendung für Umfrage {SURVEYNAME}','Hallo,\n\nEine neue Antwort wurde für die Umfrage \'{SURVEYNAME}\' abgegeben.\n\nKlicke auf den folgenden Link um die Umfrage neu zu laden:\n{RELOADURL}\n\nKlicke auf den folgenden Link um den Antwortdatensatz anzusehen:\n{VIEWRESPONSEURL}\n\nKlicke auf den folgenden Link um den Antwortdatensatz zu bearbeiten:\n{EDITRESPONSEURL}\n\nUm die Statistik zu sehen, klicke hier:\n{STATISTICSURL}','Antwortabsendung für Umfrage %s','<style type=\"text/css\">\n                                                .printouttable {\n                                                  margin:1em auto;\n                                                }\n                                                .printouttable th {\n                                                  text-align: center;\n                                                }\n                                                .printouttable td {\n                                                  border-color: #ddf #ddf #ddf #ddf;\n                                                  border-style: solid;\n                                                  border-width: 1px;\n                                                  padding:0.1em 1em 0.1em 0.5em;\n                                                }\n\n                                                .printouttable td:first-child {\n                                                  font-weight: 700;\n                                                  text-align: right;\n                                                  padding-right: 5px;\n                                                  padding-left: 5px;\n\n                                                }\n                                                .printouttable .printanswersquestion td{\n                                                  background-color:#F7F8FF;\n                                                }\n\n                                                .printouttable .printanswersquestionhead td{\n                                                  text-align: left;\n                                                  background-color:#ddf;\n                                                }\n\n                                                .printouttable .printanswersgroup td{\n                                                  text-align: center;        \n                                                  font-weight:bold;\n                                                  padding-top:1em;\n                                                }\n                                                </style>Hallo,\n\nEine neue Antwort wurde für die Umfrage \'{SURVEYNAME}\' abgegeben.\n\nKlicke auf den folgenden Link um die Umfrage neu zu laden:\n{RELOADURL}\n\nKlicke auf den folgenden Link um den Antwortdatensatz anzusehen:\n{VIEWRESPONSEURL}\n\nKlicke auf den folgenden Link um den Antwortdatensatz zu bearbeiten:\n{EDITRESPONSEURL}\n\nUm die Statistik zu sehen, klicke hier:\n{STATISTICSURL}\n\n\nDie folgenden Antworten wurden vom Teilnehmer gegeben:\n{ANSWERTABLE}',0,NULL),(282267,'en','Sample LimeSurvey EN/FR/DE/IT/RU','This survey show all question type of LimeSurvey with some option','<p>This is the welcome text for the survey! You can can edit it in the survey properties.</p>\n','<p>This is the end message for the survey! A good place to thank you to answer to this survey.</p>\n','','','','http://www.limesurvey.org','The end URL description of your survey. This URL can be automatically load when survey is completed.','Invitation to participate in survey','Dear {FIRSTNAME},<br /><br />You have been invited to participate in a survey.<br /><br />The survey is titled:<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />To participate, please click on the link below.<br /><br />Sincerely,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Click here to do the survey:<br />{SURVEYURL}<br /><br />If you do not want to participate in this survey and don\'t want to receive any more invitations please click the following link:<br />{OPTOUTURL}','Reminder to participate in survey','Dear {FIRSTNAME},<br /><br />Recently we invited you to participate in a survey.<br /><br />We note that you have not yet completed the survey, and wish to remind you that the survey is still available should you wish to take part.<br /><br />The survey is titled:<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />To participate, please click on the link below.<br /><br />Sincerely,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Click here to do the survey:<br />{SURVEYURL}<br /><br />If you do not want to participate in this survey and don\'t want to receive any more invitations please click the following link:<br />{OPTOUTURL}','Survey registration confirmation','Dear {FIRSTNAME},<br /><br />You, or someone using your email address, have registered to participate in an online survey titled {SURVEYNAME}.<br /><br />To complete this survey, click on the following URL:<br /><br />{SURVEYURL}<br /><br />If you have any questions about this survey, or if you did not register to participate and believe this email is in error, please contact {ADMINNAME} at {ADMINEMAIL}.','Confirmation of completed survey','Dear {FIRSTNAME},<br /><br />This email is to confirm that you have completed the survey titled {SURVEYNAME} and your response has been saved. Thank you for participating.<br /><br />If you have any further questions about this email, please contact {ADMINNAME} at {ADMINEMAIL}.<br /><br />Sincerely,<br /><br />{ADMINNAME}',5,NULL,'','Response submission for survey {SURVEYNAME}','Hello,<br />\n<br />\nA new response was submitted for your survey \'{SURVEYNAME}\'.<br />\n<br />\nClick the following link to reload the survey:<br />\n{RELOADURL}<br />\n<br />\nClick the following link to see the individual response:<br />\n{VIEWRESPONSEURL}<br />\n<br />\nClick the following link to edit the individual response:<br />\n{EDITRESPONSEURL}<br />\n<br />\nView statistics by clicking here:<br />\n{STATISTICSURL}','Response submission for survey {SURVEYNAME} with results','Hello,<br />\n<br />\nA new response was submitted for your survey \'{SURVEYNAME}\'.<br />\n<br />\nClick the following link to reload the survey:<br />\n{RELOADURL}<br />\n<br />\nClick the following link to see the individual response:<br />\n{VIEWRESPONSEURL}<br />\n<br />\nClick the following link to edit the individual response:<br />\n{EDITRESPONSEURL}<br />\n<br />\nView statistics by clicking here:<br />\n{STATISTICSURL}<br />\n<br />\n<br />\nThe following answers were given by the participant:<br />\n{ANSWERTABLE}',0,NULL),(282267,'fr','Exemple de questionnaire EN/FR/DE/RU','Ce sondage montre toutes les types de questions de LimeSurvey et quelques options.','<p>Ceci est le message d\'accueil de votre sondage !! Vous pouvez l\'éditer dans les paramètres du questionnaire.</p>\n','<p>Ceci est le message de fin de votre questionnaire ! Un bon endroit pour vous remercier d\'avoir répondu à ce questionnaire.</p>\n','','','','http://www.limesurvey.org','La description de l\'URL de fin, ce sondage est distribué sous Licence GPL','Invitation à participer à un questionnaire','Cher(e) {FIRSTNAME},<br /><br />Vous avez été invité à participer à un questionnaire.<br /><br />Celui-ci est intitulé :<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />Pour participer, veuillez cliquer sur le lien ci-dessous.<br /><br />Cordialement,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Cliquez ici pour remplir ce questionnaire :<br />{SURVEYURL}<br /><br />Si vous ne souhaitez pas participer à ce questionnaire et ne souhaitez plus recevoir aucune invitation, veuillez cliquer sur le lien suivant :<br />{OPTOUTURL}','Rappel pour participer à un questionnaire','Cher(e) {FIRSTNAME},<br /><br />Vous avez été invité à participer à un questionnaire récemment.<br /><br />Nous avons pris en compte que vous n\'avez pas encore complété le questionnaire, et nous vous rappelons que celui-ci est toujours disponible si vous souhaitez participer.<br /><br />Le questionnaire est intitulé :<br />\"{SURVEYNAME}\"<br /><br />\"{SURVEYDESCRIPTION}\"<br /><br />Pour participer, veuillez cliquer sur le lien ci-dessous.<br /><br />Cordialement,<br /><br />{ADMINNAME} ({ADMINEMAIL})<br /><br />----------------------------------------------<br />Cliquez ici pour faire le questionnaire:<br />{SURVEYURL}<br /><br />Si vous ne souhaitez pas participer à ce questionnaire et ne souhaitez plus recevoir aucune invitation, veuillez cliquer sur le lien suivant :<br />{OPTOUTURL}','Confirmation de l\'inscription au questionnaire','Cher(e){FIRSTNAME},<br /><br />Vous (ou quelqu\'un utilisant votre adresse électronique) vous êtes enregistré pour participer à un questionnaire en ligne intitulé {SURVEYNAME}.<br /><br />Pour compléter ce questionnaire, cliquez sur le lien suivant :<br /><br />{SURVEYURL}<br /><br />Si vous avez des questions à propos de ce questionnaire, ou si vous ne vous êtes pas enregistré pour participer à celui-ci et croyez que ce courriel est une erreur, veuillez contacter {ADMINNAME} sur {ADMINEMAIL}','Confirmation de questionnaire complété','Cher(e) {FIRSTNAME},<br /><br />Ce courriel vous confirme que vous avez complété le questionnaire intitulé {SURVEYNAME} et que votre réponse a été enregistrée. Merci pour votre participation.<br /><br />Si vous avez des questions à propos de ce courriel, veuillez contacter {ADMINNAME} sur {ADMINEMAIL}.<br /><br />Cordialement,<br /><br />{ADMINNAME}',5,NULL,'','Soumission de réponse pour le questionnaire {SURVEYNAME}','Bonjour,<br />\n<br />\nUne nouvelle réponse a été soumise pour votre questionnaire \'{SURVEYNAME}\'.<br />\n<br />\nCliquer sur le lien suivant pour recharger votre questionnaire :<br />\n{RELOADURL}<br />\n<br />\nCliquer sur le lien suivant pour voir la réponse :<br />\n{VIEWRESPONSEURL}<br />\n<br />\nCliquer sur le lien suivant pour éditer la réponse :<br />\n{EDITRESPONSEURL}<br />\n<br />\nVisualiser les statistiques en cliquant ici :<br />\n{STATISTICSURL}<br />\n<br />\nles réponses suivantes ont été données par le participant :<br />\n{ANSWERTABLE}','Soumission de réponse pour le questionnaire {SURVEYNAME} avec résultats','Bonjour,<br />\n<br />\nUne nouvelle réponse a été soumise pour votre questionnaire \'{SURVEYNAME}\'.<br />\n<br />\nCliquer sur le lien suivant pour recharger votre questionnaire :<br />\n{RELOADURL}<br />\n<br />\nCliquer sur le lien suivant pour voir la réponse :<br />\n{VIEWRESPONSEURL}<br />\n<br />\nCliquez sur le lien suivant pour éditer la réponse individuelle :<br />\n{EDITRESPONSEURL}<br />\n<br />\nVisualiser les statistiques en cliquant ici :<br />\n{STATISTICSURL}<br />\n<br />\n<br />\nles réponses suivantes ont été données par le participant :<br />\n{ANSWERTABLE}',1,NULL),(282267,'it','Sample LimeSurvey EN/FR/DE/IT/RU','Questa indagine presenta tutti i tipi di domanda di LimeSurvey con alcune opzioni aggiuntive','<p>Questo è il messaggio di benvenuto dell\'indagine!!!</p>\n\n<p>E\' possibile modificarlo nelle impostazioni di indagine</p>\n\n','<p>Questo è il messaggio di chiusura dell\'indagine, dopo che il rispondente ha premuto INVIA.</p>\n\n<p>E\' possibile modificarlo nelle impostazioni di indagine</p>\n','Questo è il messaggio sui termini dei dati dell\'indagine','Questo è il messaggio di errore sui termini dei dati dell\'indagine','Questa etichetta spiega i termini dei dati di indagine','','','Invito per partecipare all\'indagine','Egregio/a {FIRSTNAME},<br />\n<br />\nè invitato a partecipare ad un\'indagine on line.<br />\n<br />\nL\'indagine è intitolata:<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\nPer partecipare fare click sul link in basso.<br />\n<br />\nCordiali saluti,{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\nFare click qui per accedere al questionario e rispondere alle domande relative:<br />\n{SURVEYURL}<br />\n<br />\nSe non si intende partecipare a questa indagine e non si vogliono ricevere altri inviti, si può cliccare sul seguente collegamento:<br />\n{OPTOUTURL}<br />\n<br />\nSe è presente in blacklist ma vuole partecipare a questa indagine e ricevere inviti, vada al seguente link:<br />\n{OPTINURL}','Promemoria per partecipare all\'indagine','Egregio/a {FIRSTNAME},<br />\nRecentemente ha ricevuto un invito a partecipare ad un\'indagine on line.<br />\n<br />\nAbbiamo notato che non ha ancora completato il questionario. Con l\'occasione Le ricordiamo che il questionario è ancora disponibile.<br />\n<br />\nL\'indagine è intitolata:<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\nPer partecipare fare clic sul link qui sotto.<br />\n<br />\nCordiali saluti,<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\nFare clic qui per accedere all\'indagine e rispondere al questionario:<br />\n{SURVEYURL}<br />\n<br />\nSe non si intende partecipare a questa indagine e non si vogliono ricevere altri inviti, si può cliccare sul seguente collegamento:<br />\n{OPTOUTURL}','Conferma di registrazione all\'indagine','Egregio/a {FIRSTNAME},<br />\n<br />\nLei (o qualcuno che ha utilizzato il suo indirizzo e-mail) si è registrato per partecipare all\'indagine on line intitolata {SURVEYNAME}.<br />\n<br />\nPer completare il questionario fare clic sul seguente indirizzo:<br />\n<br />\n{SURVEYURL}<br />\n<br />\nSe ha qualche domanda, o se non si è registrato e ritiene che questa e-mail ti sia pervenuta per errore, la preghiamo di contattare  {ADMINNAME} all\'indirizzo {ADMINEMAIL}.','Confermare la partecipazione all&#039;indagine','Egregio/a {FIRSTNAME},<br />\n<br />\nQuesta e-mail le è stata inviata per confermarle che ha completato correttamente il questionario intitolato {SURVEYNAME}  e che le sue risposte sono state salvate. Grazie per la partecipazione.<br />\n<br />\nSe ha ulteriori domande circa questo messaggio, la prego di contattare {ADMINNAME} all\'indirizzo e-mail {ADMINEMAIL}.<br />\n<br />\nCordiali saluti<br />\n<br />\n{ADMINNAME}',5,NULL,'','Invio di una risposta all\'indagine {SURVEYNAME}','Salve,<br />\n<br />\nUna nuova risposta é stata inviata per l\'indagine \'{SURVEYNAME}\'.<br />\n<br />\nFare click sul link seguente per vedere le risposte individuali:<br />\n{VIEWRESPONSEURL}<br />\n<br />\nFare click sul link seguente per modificare le risposte individuali:<br />\n{EDITRESPONSEURL}<br />\n<br />\nFare clic sul link seguente per visualizzare le statistiche:<br />\n{STATISTICSURL}','Invio di una risposta all\'indagine {SURVEYNAME} con risultati','Salve,<br />\n<br />\nUna nuova risposta è stata inviata dall\'indagine \'{SURVEYNAME}\'.<br />\n<br />\nFare clic sul link seguente per vedere la risposta individuale:<br />\n{VIEWRESPONSEURL}<br />\n<br />\nFare clic sul link seguente per modificare la risposta individuale:<br />\n{EDITRESPONSEURL}<br />\n<br />\nFare clic sul link seguente per visualizzare le statistiche:<br />\n{STATISTICSURL}<br />\n<br />\n<br />\nLe seguenti risposte sono state date dal partecipante:<br />\n{ANSWERTABLE}',0,NULL);
/*!40000 ALTER TABLE `lime_surveys_languagesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_template_configuration`
--

DROP TABLE IF EXISTS `lime_template_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_template_configuration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sid` int DEFAULT NULL,
  `gsid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `files_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `files_js` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `files_print_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cssframework_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cssframework_css` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cssframework_js` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packages_to_load` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packages_ltr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packages_rtl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_template_configuration` (`template_name`),
  KEY `lime_idx2_template_configuration` (`sid`),
  KEY `lime_idx3_template_configuration` (`gsid`),
  KEY `lime_idx4_template_configuration` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_template_configuration`
--

LOCK TABLES `lime_template_configuration` WRITE;
/*!40000 ALTER TABLE `lime_template_configuration` DISABLE KEYS */;
INSERT INTO `lime_template_configuration` VALUES (1,'vanilla',NULL,NULL,NULL,'{\"add\":[\"css/base.css\",\"css/theme.css\",\"css/noTablesOnMobile.css\",\"css/custom.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"ajaxmode\":\"off\", \"animatebody\":\"off\", \"fixnumauto\":\"enable\",\"brandlogo\":\"on\",\"container\":\"on\", \"hideprivacyinfo\": \"off\", \"brandlogofile\":\"themes/survey/vanilla/files/logo.png\",\"font\":\"noto\", \"showpopups\":\"1\", \"showclearall\":\"off\", \"questionhelptextposition\":\"top\"}','bootstrap','{}','','{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}',NULL,NULL),(2,'fruity',NULL,NULL,NULL,'{\"add\":[\"css/ajaxify.css\",\"css/animate.css\",\"css/variations/sea_green.css\",\"css/theme.css\",\"css/custom.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"ajaxmode\":\"off\",\"fixnumauto\":\"enable\",\"brandlogo\":\"on\",\"brandlogofile\":\"themes/survey/fruity/files/logo.png\",\"container\":\"on\",\"backgroundimage\":\"off\",\"backgroundimagefile\":null,\"animatebody\":\"off\",\"bodyanimation\":\"fadeInRight\",\"bodyanimationduration\":\"500\",\"animatequestion\":\"off\",\"questionanimation\":\"flipInX\",\"questionanimationduration\":\"500\",\"animatealert\":\"off\",\"alertanimation\":\"shake\",\"alertanimationduration\":\"500\",\"font\":\"noto\",\"bodybackgroundcolor\":\"#ffffff\",\"fontcolor\":\"#444444\",\"questionbackgroundcolor\":\"#ffffff\",\"questionborder\":\"on\",\"questioncontainershadow\":\"on\",\"checkicon\":\"f00c\",\"animatecheckbox\":\"on\",\"checkboxanimation\":\"rubberBand\",\"checkboxanimationduration\":\"500\",\"animateradio\":\"on\",\"radioanimation\":\"zoomIn\",\"radioanimationduration\":\"500\",\"zebrastriping\":\"off\",\"stickymatrixheaders\":\"off\",\"greyoutselected\":\"off\",\"hideprivacyinfo\":\"off\",\"crosshover\":\"off\",\"showpopups\":\"1\", \"showclearall\":\"off\", \"questionhelptextposition\":\"top\",\"notables\":\"1\"}','bootstrap','{}','','{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}',NULL,NULL),(3,'bootswatch',NULL,NULL,NULL,'{\"add\":[\"css/ajaxify.css\",\"css/theme.css\",\"css/custom.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"ajaxmode\":\"off\",\"fixnumauto\":\"enable\",\"brandlogo\":\"on\",\"container\":\"on\",\"brandlogofile\":\"themes/survey/bootswatch/files/logo.png\", \"showpopups\":\"1\", \"showclearall\":\"off\", \"hideprivacyinfo\": \"off\", \"questionhelptextposition\":\"top\"}','bootstrap','{\"replace\":[[\"css/bootstrap.css\",\"css/variations/flatly.min.css\"]]}','','{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}',NULL,NULL),(4,'fruity_twentythree',NULL,NULL,NULL,'{\"add\":[\"css/variations/theme_apple.css\",\"css/base.css\",\"css/custom.css\"], \"remove\":[\"survey.css\", \"template-core.css\", \"awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css\", \"awesome-bootstrap-checkbox/awesome-bootstrap-checkbox-rtl.css\"]}','{\"add\":[\"scripts/theme.js\",\"scripts/custom.js\"], \"remove\":[\"survey.js\", \"template-core.js\"]}','{\"add\":[\"css/print_theme.css\"]}','{\"hideprivacyinfo\":\"off\",\"showpopups\":\"1\",\"showclearall\":\"off\",\"questionhelptextposition\":\"top\",\"fixnumauto\":\"enable\",\"backgroundimage\":\"off\",\"backgroundimagefile\":\".\\/files\\/pattern.png\",\"brandlogo\":\"off\",\"brandlogofile\":\"image::theme::files\\/logo.png\",\"font\":\"ibm-sans\", \"bodybackgroundcolor\":\"#ffffff\",\"fontcolor\":\"#444444\", \"questionbackgroundcolor\":\"#ffffff\", \"checkicon\":\"EB7A\",\"cssframework\":\"Apple\", \"notables\":\"1\"}','','','','{\"add\":[\"pjax\",\"moment\",\"font-ibm-sans\",\"font-ibm-serif\"]}',NULL,NULL),(5,'vanilla',282267,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(6,'fruity_twentythree',282267,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(7,'fruity_twentythree',NULL,1,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(33,'dsfr',282267,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(34,'dsfr',NULL,1,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(11,'fruity_twentythree',543686,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(13,'fruity_twentythree',331981,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(15,'vanilla',331981,NULL,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(16,'vanilla',NULL,1,NULL,'inherit','inherit','inherit','inherit','inherit','inherit','inherit','inherit',NULL,NULL),(32,'dsfr',NULL,NULL,NULL,'{\"replace\":[\"css\\/dsfr.min.css\",\"css\\/icons.min.css\",\"css\\/dsfr-grid-helpers.css\",\"css\\/theme.css\",\"css\\/custom.css\"],\"remove\":[\"template-core.css\",\"awesome-bootstrap-checkbox\\/awesome-bootstrap-checkbox.css\",\"awesome-bootstrap-checkbox\\/awesome-bootstrap-checkbox-rtl.css\"]}','{\"replace\":[\"scripts\\/bootstrap-stubs.js\",\"scripts\\/theme.js\",\"scripts\\/custom.js\"]}','{\"replace\":[\"css\\/print_theme.css\"]}','{\"showclearall\":\"off\",\"fixnumauto\":\"enable\",\"showquestioncode\":\"on\",\"sanitize_rte_content\":\"on\",\"brandlogo\":\"off\",\"brandlogo_sircom_certified\":\"off\",\"brandlogofile\":\".\\/files\\/logo.png\",\"dsfr_theme\":\"light\",\"show_marianne\":\"on\",\"show_footer_links\":\"on\",\"marianne_text\":\"R\\u00e9publique<br>Fran\\u00e7aise\",\"header_title\":\"Minist\\u00e8res \\u00e9conomiques et financiers\",\"footer_text\":\"galileo.finances.gouv.fr est le service en ligne destin\\u00e9 aux enqu\\u00eates et formulaires en ligne des minist\\u00e8res \\u00e9conomiques et financiers\",\"intellectual_property\":\"Sauf mention explicite de propri\\u00e9t\\u00e9 intellectuelle d\\u00e9tenue par des tiers, les contenus de ce site sont propos\\u00e9s sous licence etalab-2.0\",\"accessibility_content\":\"\",\"editor\":\"\",\"publication_director\":\"\",\"host\":\"\",\"legal_content\":\"\",\"data_controller\":\"\",\"survey_purpose\":\"\",\"data_retention\":\"\",\"contact_email\":\"\",\"privacy_content\":\"\",\"cookies_content\":\"\",\"antibot_enabled\":\"off\",\"antibot_timer\":\"2\",\"antibot_custom_questions\":\"\"}','dsfr','{\"replace\":[[\"css\\/bootstrap.css\",\"css\\/theme.css\"]]}','[]','{\"add\":[\"jquery\",\"pjax\",\"moment\"]}',NULL,NULL);
/*!40000 ALTER TABLE `lime_template_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_templates`
--

DROP TABLE IF EXISTS `lime_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `author` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `version` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_version` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_folder` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `files_folder` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_update` datetime DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `extends` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lime_idx1_templates` (`name`),
  KEY `lime_idx2_templates` (`title`),
  KEY `lime_idx3_templates` (`owner_id`),
  KEY `lime_idx4_templates` (`extends`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_templates`
--

LOCK TABLES `lime_templates` WRITE;
/*!40000 ALTER TABLE `lime_templates` DISABLE KEYS */;
INSERT INTO `lime_templates` VALUES (1,'vanilla','vanilla','Bootstrap Vanilla','2026-04-16 19:19:09','LimeSurvey GmbH','info@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2007-2019 The LimeSurvey Project Team\\r\\nAll rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','3.0','3.0','views','files','A clean and simple base that can be used by developers to create their own Bootstrap based theme.',NULL,1,''),(2,'fruity','fruity','Fruity','2026-04-16 19:19:09','LimeSurvey GmbH','info@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2007-2019 The LimeSurvey Project Team\\r\\nAll rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','3.0','3.0','views','files','A fruity theme for a flexible use. This theme offers monochromes variations and many options for easy customizations.',NULL,1,'vanilla'),(3,'bootswatch','bootswatch','Bootswatch','2026-04-16 19:19:09','LimeSurvey GmbH','info@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2007-2019 The LimeSurvey Project Team\\r\\nAll rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','3.0','3.0','views','files','{{gT(\"Based on BootsWatch Themes:\")}}<br><a href=\'https://bootswatch.com/3/\' target=\'_blank\' rel=\'external\' title=\'{{gT(\"Visit Bootswatch page in a new window.\")}}\'>{{gT(\"Visit Bootswatch page\")}} <i class=\'ri-external-link-line\'></i><span class=\'visually-hidden\'>{{gT(\"(Opens in a new window)\")}}</span></a>',NULL,1,'vanilla'),(4,'fruity_twentythree','fruity_twentythree','Fruity TwentyThree','2026-04-16 19:19:09','LimeSurvey GmbH','info@limesurvey.org','https://www.limesurvey.org/','Copyright (C) 2005 - 2023 LimeSurvey Gmbh, Inc. All rights reserved.','License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.','1.0.0','3.0','views','files','Our default theme for a fruity and flexible use. This theme offers single color variations',NULL,1,''),(11,'dsfr','dsfr','DSFR - Système de Design de l\'État Français','2026-04-18 20:53:40','admin','','',NULL,NULL,NULL,'3','views','files','Thème conforme au Système de Design de l\'État Français (DSFR) pour les enquêtes LimeSurvey.',NULL,1,'');
/*!40000 ALTER TABLE `lime_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_tutorial_entries`
--

DROP TABLE IF EXISTS `lime_tutorial_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_tutorial_entries` (
  `teid` int NOT NULL AUTO_INCREMENT,
  `ordering` int DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`teid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_tutorial_entries`
--

LOCK TABLES `lime_tutorial_entries` WRITE;
/*!40000 ALTER TABLE `lime_tutorial_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tutorial_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_tutorial_entry_relation`
--

DROP TABLE IF EXISTS `lime_tutorial_entry_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_tutorial_entry_relation` (
  `teid` int NOT NULL,
  `tid` int NOT NULL,
  `uid` int DEFAULT NULL,
  `sid` int DEFAULT NULL,
  PRIMARY KEY (`teid`,`tid`),
  KEY `lime_idx1_tutorial_entry_relation` (`uid`),
  KEY `lime_idx2_tutorial_entry_relation` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_tutorial_entry_relation`
--

LOCK TABLES `lime_tutorial_entry_relation` WRITE;
/*!40000 ALTER TABLE `lime_tutorial_entry_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tutorial_entry_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_tutorials`
--

DROP TABLE IF EXISTS `lime_tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_tutorials` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active` int DEFAULT '0',
  `settings` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permission` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_grade` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `lime_idx1_tutorials` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_tutorials`
--

LOCK TABLES `lime_tutorials` WRITE;
/*!40000 ALTER TABLE `lime_tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_user_groups`
--

DROP TABLE IF EXISTS `lime_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_user_groups` (
  `ugid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`ugid`),
  UNIQUE KEY `lime_idx1_user_groups` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_user_groups`
--

LOCK TABLES `lime_user_groups` WRITE;
/*!40000 ALTER TABLE `lime_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_user_in_groups`
--

DROP TABLE IF EXISTS `lime_user_in_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_user_in_groups` (
  `ugid` int NOT NULL,
  `uid` int NOT NULL,
  PRIMARY KEY (`ugid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_user_in_groups`
--

LOCK TABLES `lime_user_in_groups` WRITE;
/*!40000 ALTER TABLE `lime_user_in_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_user_in_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_user_in_permissionrole`
--

DROP TABLE IF EXISTS `lime_user_in_permissionrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_user_in_permissionrole` (
  `ptid` int NOT NULL,
  `uid` int NOT NULL,
  PRIMARY KEY (`ptid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_user_in_permissionrole`
--

LOCK TABLES `lime_user_in_permissionrole` WRITE;
/*!40000 ALTER TABLE `lime_user_in_permissionrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `lime_user_in_permissionrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lime_users`
--

DROP TABLE IF EXISTS `lime_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lime_users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `users_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `lang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(192) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `htmleditormode` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `templateeditormode` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `questionselectormode` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `one_time_pw` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dateformat` int NOT NULL DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `validation_key` varchar(38) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_key_expiration` datetime DEFAULT NULL,
  `last_forgot_email_password` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `user_status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `lime_idx1_users` (`users_name`),
  KEY `lime_idx2_users` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lime_users`
--

LOCK TABLES `lime_users` WRITE;
/*!40000 ALTER TABLE `lime_users` DISABLE KEYS */;
INSERT INTO `lime_users` VALUES (1,'admin','$2y$10$/d2LTjqhmbF7GGOB.PY6uu5LWJ.Y7pFNkewocFfZCX3gq1DkjYW4O','Administrateur',0,'auto','admin@example.com','default','default','default',NULL,1,'2026-04-18 20:47:25',NULL,'2026-04-18 20:47:25',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `lime_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-18 21:07:40
