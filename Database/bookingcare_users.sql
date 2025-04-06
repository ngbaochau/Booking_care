-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bookingcare
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `roleId` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `positionId` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nguyenbaochau261203@gmail.com','$2a$10$lmRJIHDy2AbSzxZAVsGPlOmz7I1TTILRCc4GdQkAxktvQw7MkQT7K','Bảo Châu','Nguyễn','Hưng Yên',NULL,0,NULL,'1',NULL,'2024-12-27 16:29:32','2024-12-27 16:29:32'),(2,'nguyenbaochau261203@gmail.com','$2a$10$lmRJIHDy2AbSzxZAVsGPlOmz7I1TTILRCc4GdQkAxktvQw7MkQT7K','Bảo Châu','Nguyễn','Hưng Yên',NULL,0,NULL,'1',NULL,'2024-12-27 16:34:11','2024-12-27 16:34:11'),(3,'test@gmail.com','$2a$10$lmRJIHDy2AbSzxZAVsGPlOvfzgRdV5UuQQ3.Yr0CuQlwxeD1x7qcO','đá','test','Hải Phòng','0987654322',1,NULL,'1',NULL,'2024-12-27 16:35:13','2024-12-27 16:35:13'),(4,'chau1263@gmail.com','$2a$10$Eo8S2iAOJN5htAyIEoJn9O/E7tsqyfALrWa5lGfmNAn77Es4HD6/y','Nguyen','Chau','Hưng Yên','0981411440',0,NULL,'1',NULL,'2025-01-09 06:24:41','2025-01-09 06:24:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-20 20:01:42
