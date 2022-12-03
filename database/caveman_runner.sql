CREATE DATABASE  IF NOT EXISTS `db_videogame_180017` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_videogame_180017`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: db_videogame_180017
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `tb_games`
--

DROP TABLE IF EXISTS `tb_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `coins` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `playerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `playerID` (`playerID`),
  CONSTRAINT `tb_games_ibfk_1` FOREIGN KEY (`playerID`) REFERENCES `tb_players` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_games`
--

LOCK TABLES `tb_games` WRITE;
/*!40000 ALTER TABLE `tb_games` DISABLE KEYS */;
INSERT INTO `tb_games` VALUES (1,150,11,'2022-12-01 18:30:12','2022-12-01 18:30:28',1),(2,90,7,'2022-12-01 18:31:05','2022-12-01 18:31:20',1),(3,1987,996,'2022-12-01 18:31:28','2022-12-01 19:13:10',1),(4,160,13,'2022-12-01 18:33:52','2022-12-01 18:35:04',1),(5,129,15,'2022-12-01 18:34:31','2022-12-01 18:35:27',1),(6,12,0,'2022-12-01 18:39:17','2022-12-01 18:39:39',6),(7,105,5,'2022-12-01 18:39:48','2022-12-01 18:41:12',6),(8,456,26,'2022-12-01 18:41:45','2022-12-01 18:42:23',6),(9,360,25,'2022-12-01 18:43:17','2022-12-01 18:44:29',6),(10,542,17,'2022-12-01 18:44:18','2022-12-01 18:45:29',6),(11,36,1,'2022-12-01 18:48:12','2022-12-01 18:48:43',7),(12,136,9,'2022-12-01 18:49:34','2022-12-01 18:50:15',7),(13,13,0,'2022-12-01 18:51:42','2022-12-01 18:52:07',7),(14,274,20,'2022-12-01 18:52:20','2022-12-01 18:52:47',7),(15,143,15,'2022-12-01 18:52:53','2022-12-01 18:53:47',7),(16,24,3,'2022-12-01 18:53:23','2022-12-01 18:54:15',8),(17,350,16,'2022-12-01 18:54:22','2022-12-01 18:55:15',8),(18,123,17,'2022-12-01 18:55:20','2022-12-01 18:56:17',8),(19,505,29,'2022-12-01 18:56:04','2022-12-01 18:56:33',8),(20,428,18,'2022-12-01 18:56:45','2022-12-01 18:57:09',8),(21,10,2,'2022-12-01 18:58:48','2022-12-01 18:59:03',9),(22,111,8,'2022-12-01 18:59:19','2022-12-01 18:59:44',9),(23,221,17,'2022-12-01 19:00:06','2022-12-01 19:00:40',9),(24,846,53,'2022-12-01 19:00:47','2022-12-01 19:01:06',9),(25,369,28,'2022-12-01 19:01:21','2022-12-01 19:01:37',9);
/*!40000 ALTER TABLE `tb_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_players`
--

DROP TABLE IF EXISTS `tb_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_players`
--

LOCK TABLES `tb_players` WRITE;
/*!40000 ALTER TABLE `tb_players` DISABLE KEYS */;
INSERT INTO `tb_players` VALUES (1,'ultrond28@gmail.com','$2b$10$0vBtV8Ux8BmzIr6dVJ1HDOWhg36gCX9vR6Tzh42lRQNiC7VAAHCZS','Salim Rafael Castro Ortiz','2001-05-25','ULTROND28','www.ultrond28.com','2022-11-28 16:28:37','2022-11-28 17:16:39'),(6,'luisgmsn2001@gmail.com','$2b$10$pX/SwDrvreiIP4yBukFXNeUs14zLgESeAjPCWF7k73ibvMVk/NUQu','Luis Alejandro Gomez Santillan','2001-08-28','alex2808','www.alexsantillan.com','2022-12-01 18:04:16','2022-12-01 18:04:16'),(7,'cesarcuevas12@gmail.com','$2b$10$BTdSKamey/boKILHNdqLAeWC5lvAPNxdq0frsOtEJwZhOyO2z4T06','Cesar Ramirez Cuevas','2001-04-07','Cesar11780','www.cesramirez.com','2022-12-01 18:05:47','2022-12-01 18:05:47'),(8,'eleazarcortquir@gmail.com','$2b$10$uAbrvxPd7Dn8d4Bm.ZDoP.bxOumfKVVWtpVwjMOY/TRaeHklsQv8m','Eleazar Cortez Quirino','2001-06-30','ElPakoyaso','www.eleacorquir.com','2022-12-01 18:07:44','2022-12-01 18:07:44'),(9,'felipeparedes25@gmail.com','$2b$10$FoeEvQvSR4ABHxAxo.0muuKmcFTSkI9uA4eMKFewD.X22WN7bGtGK','Felipe Paredes Quintero','2001-06-03','MisterDyck','www.felipeparper.com','2022-12-01 18:09:03','2022-12-01 18:09:03'),(10,'vctorserrano3@gmail.com','$2b$10$/jUZLexl5zpbF0zMFJ6H3u5i4nGLjc8U3OY4SJCMJdmZWpV2r0nE.','Victor Hugo Serrano Amador','2000-02-28','vctorserrano519','www.vcorserrano28.com','2022-12-01 18:10:18','2022-12-01 18:10:18');
/*!40000 ALTER TABLE `tb_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_highscores`
--

DROP TABLE IF EXISTS `vw_highscores`;
/*!50001 DROP VIEW IF EXISTS `vw_highscores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_highscores` AS SELECT 
 1 AS `GAME`,
 1 AS `SCORE`,
 1 AS `COINS`,
 1 AS `PLAYER`,
 1 AS `AVATAR`,
 1 AS `STARTED`,
 1 AS `ENDED`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_videogame_180017'
--

--
-- Dumping routines for database 'db_videogame_180017'
--

--
-- Final view structure for view `vw_highscores`
--

/*!50001 DROP VIEW IF EXISTS `vw_highscores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_highscores` AS select concat_ws('','Game: ',`g`.`id`) AS `GAME`,`g`.`score` AS `SCORE`,`g`.`coins` AS `COINS`,`p`.`nickname` AS `PLAYER`,`p`.`avatar_url` AS `AVATAR`,`g`.`createdAt` AS `STARTED`,`g`.`updatedAt` AS `ENDED` from (`tb_games` `g` join `tb_players` `p` on((`p`.`id` = `g`.`playerID`))) order by `g`.`score` desc,`g`.`createdAt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 23:29:39
