-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: betting_system_dev
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `bets`
--

DROP TABLE IF EXISTS `bets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `amount` int DEFAULT NULL,
  `odds` double DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `payout` double DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `bet_items` json DEFAULT NULL,
  `end_result` varchar(255) DEFAULT 'nothing',
  `bet_id` varchar(255) DEFAULT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bets_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bets`
--

LOCK TABLES `bets` WRITE;
/*!40000 ALTER TABLE `bets` DISABLE KEYS */;
/*!40000 ALTER TABLE `bets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `betslips`
--

DROP TABLE IF EXISTS `betslips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `betslips` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT 'in_betslip',
  `odds` double DEFAULT NULL,
  `result_type` varchar(255) DEFAULT NULL,
  `game_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `end_result` varchar(255) DEFAULT 'nothing',
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `betslips`
--

LOCK TABLES `betslips` WRITE;
/*!40000 ALTER TABLE `betslips` DISABLE KEYS */;
/*!40000 ALTER TABLE `betslips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sport_id` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `win` double DEFAULT NULL,
  `draw` double DEFAULT NULL,
  `lose` double DEFAULT NULL,
  `team1` varchar(255) DEFAULT NULL,
  `team2` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_sport_id_index` (`sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` bigint NOT NULL,
  `inserted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES (20230905172352,'2023-09-11 16:26:39'),(20230905183105,'2023-09-11 16:26:41'),(20230905191326,'2023-09-11 16:26:43'),(20230905192615,'2023-09-11 16:26:45'),(20230906083942,'2023-09-11 16:26:46');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT '',
  `user_id` int DEFAULT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sports_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(160) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `role` varchar(255) DEFAULT 'user',
  `phone_number` int DEFAULT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alvinmithamo14210@gmail.com','$2b$12$vqcvTQcGUp6iREQPaNeNI.Wd1EK2R./Lg6WrOBelsjsDufD73Gmb2',NULL,'Alvin','Ng\'ang\'a','active','user',706824750,'2023-09-11 16:59:28','2023-09-11 16:59:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tokens`
--

DROP TABLE IF EXISTS `users_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `token` varbinary(32) NOT NULL,
  `context` varchar(255) NOT NULL,
  `sent_to` varchar(255) DEFAULT NULL,
  `inserted_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_tokens_context_token_index` (`context`,`token`),
  KEY `users_tokens_user_id_index` (`user_id`),
  CONSTRAINT `users_tokens_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tokens`
--

LOCK TABLES `users_tokens` WRITE;
/*!40000 ALTER TABLE `users_tokens` DISABLE KEYS */;
INSERT INTO `users_tokens` VALUES (1,1,_binary '3\âOw\ÙCÚ†\õ\Èr\îiŠ•fn$¢\Î$_J•ü¯W\×','confirm','alvinmithamo14210@gmail.com','2023-09-11 16:59:28'),(2,1,_binary 'À)_\\\"¶k\n´\ò\ç¡ï¥ž›ß€z\\ÝŒdHiQ.´','session',NULL,'2023-09-11 16:59:57');
/*!40000 ALTER TABLE `users_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 13:01:58
