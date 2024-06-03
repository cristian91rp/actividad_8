-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: actividad_8
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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'Valentina','Martínez','valentina@gmail.com','https://images.pexels.com/photos/16963436/pexels-photo-16963436/free-photo-of-nina-cara-enfrentarse-sonriente.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(2,'Alejandro','Fernández','alejandro@yahoo.com','https://images.pexels.com/photos/804009/pexels-photo-804009.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(3,'Carmen','López','carmen@gmail.com','https://images.pexels.com/photos/3054533/pexels-photo-3054533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(4,'Fernando','González','fernando@hotmail.com','https://images.pexels.com/photos/7562139/pexels-photo-7562139.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(5,'Isabel','Rodríguez','isabel@gmail.com','https://images.pexels.com/photos/15044692/pexels-photo-15044692/free-photo-of-persona-mujer-cara-enfrentarse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(6,'Javier','Pérez','javier@yahoo.com','https://images.pexels.com/photos/4052800/pexels-photo-4052800.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(7,'Laura','Sánchez','laura@gmail.com','https://images.pexels.com/photos/10878406/pexels-photo-10878406.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(8,'Sergio','García','sergio@hotmail.com','https://images.pexels.com/photos/6409119/pexels-photo-6409119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(9,'Ana','Gómez','ana@gmail.com','https://images.pexels.com/photos/11462529/pexels-photo-11462529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(10,'Carlos','Ruiz','carlos@yahoo.com','https://images.pexels.com/photos/2380794/pexels-photo-2380794.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(11,'Patricia','Hernández','patricia@gmail.com','https://images.pexels.com/photos/12790167/pexels-photo-12790167.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),(12,'José','Díaz','jose@hotmail.com','https://images.pexels.com/photos/6102841/pexels-photo-6102841.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 18:39:15
