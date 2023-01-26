-- TABLAS INCLUIDAS EN EL BACK UP 
-- audits
-- categoria
-- causa_retorno
-- ciudad
-- cliente
-- codigo_postal
-- condicion_pago
-- estado
-- new_pais
-- ordenes
-- ordenes_productos
-- pais
-- productos
-- region
-- retornos
-- segmento
-- ship_mode
-- subcategoria
-- vendedor


-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: 4desaf_entregable
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Dumping data for table `ordenes_productos`
--

LOCK TABLES `ordenes_productos` WRITE;
/*!40000 ALTER TABLE `ordenes_productos` DISABLE KEYS */;
INSERT INTO `ordenes_productos` VALUES (1,1,3,84,1,3,253),(2,1,5,85,1,2,170),(3,1,1,164,1,3,492),(4,2,10,103,1,2,205),(5,2,8,66,1,2,133),(6,2,9,120,1,3,360),(7,3,1,164,1,4,656),(8,3,2,261,1,4,1044),(9,3,3,84,1,5,422),(10,4,5,85,1,2,170),(11,5,6,120,1,4,480),(12,5,7,29,1,2,58),(13,6,9,120,1,2,240),(14,6,7,29,1,3,87),(15,7,5,85,1,2,170),(16,8,1,164,1,3,492),(17,8,6,120,1,3,360),(18,9,10,103,1,3,308),(19,10,9,120,1,6,7191),(20,10,8,66,1,2,133);
/*!40000 ALTER TABLE `ordenes_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 20:34:51
