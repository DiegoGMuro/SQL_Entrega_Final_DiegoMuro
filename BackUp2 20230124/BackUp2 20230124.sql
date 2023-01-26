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

CREATE DATABASE  IF NOT EXISTS `4desaf_entregable` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `4desaf_entregable`;
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
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (1,'vendedor',5,'2023-01-12 18:54:02','root@localhost','2023-01-12 19:00:33','root@localhost');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Furniture'),(2,'Office Supplies'),(3,'Technology'),(4,'pet supplies'),(5,'pet supplies'),(6,'beverages'),(7,'fast foods'),(8,'Default Name');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_categoria_default_name` BEFORE INSERT ON `categoria` FOR EACH ROW BEGIN
   IF NEW.name_cat='' THEN
   SET NEW.name_cat= 'Default Name';
   END IF;
   
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `causa_retorno`
--

LOCK TABLES `causa_retorno` WRITE;
/*!40000 ALTER TABLE `causa_retorno` DISABLE KEYS */;
INSERT INTO `causa_retorno` VALUES (1,'Broken product'),(2,'Missing product'),(3,'Misbilled'),(4,'Price error');
/*!40000 ALTER TABLE `causa_retorno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Decatur',1),(2,'Montgomery',1),(3,'Mobile',1),(4,'Hoover',1),(5,'Tuscaloosa',1),(6,'Gilbert',2),(7,'Phoenix',2),(8,'Scottsdale',2),(9,'Tucson',2),(10,'Mesa',2);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'2015-01-01','Claire Gute',1),(2,'2015-01-01','Darrin Van Huff',2),(3,'2015-01-01','Sean O Donnell',1),(4,'2015-01-01','Brosina Hoffman',1),(5,'2015-01-01','Andrew Allen',1),(6,'2015-01-01','Irene Maddox',1),(7,'2015-01-01','Harold Pawlan',3),(8,'2015-01-01','Pete Kriz',1),(9,'2015-01-01','Alejandro Grove',1),(10,'2015-01-01','Zuschuss Donatelli',1),(11,'2015-01-01','Ken Black',2),(12,'2015-01-01','Sandra Flanagan',1),(13,'2015-01-01','Emily Burns',1),(14,'2015-01-01','Eric Hoffmann',1),(15,'2015-01-01','Tracy Blumstein',1),(16,'2015-01-01','Matt Abelman',3),(17,'2015-01-01','Gene Hale',2),(18,'2015-01-01','Steve Nguyen',3),(19,'2015-01-01','Linda Cazamias',2);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `codigo_postal`
--

LOCK TABLES `codigo_postal` WRITE;
/*!40000 ALTER TABLE `codigo_postal` DISABLE KEYS */;
INSERT INTO `codigo_postal` VALUES (1,'42420',1),(2,'90036',2),(3,'33311',3),(4,'28027',4),(5,'98103',5),(6,'76106',6),(7,'53711',7),(8,'84084',8),(9,'94109',9),(10,'68025',10);
/*!40000 ALTER TABLE `codigo_postal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `condicion_pago`
--

LOCK TABLES `condicion_pago` WRITE;
/*!40000 ALTER TABLE `condicion_pago` DISABLE KEYS */;
INSERT INTO `condicion_pago` VALUES (1,'Cash'),(2,'Check'),(3,'Transfer');
/*!40000 ALTER TABLE `condicion_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Alabama',1),(2,'Arizona',1),(3,'Arkansas',1),(4,'California',1),(5,'Colorado',1),(6,'Connecticut',1),(7,'Delaware',1),(8,'District of Columbia',1),(9,'Florida',1),(10,'Georgia',1);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `new_pais`
--

LOCK TABLES `new_pais` WRITE;
/*!40000 ALTER TABLE `new_pais` DISABLE KEYS */;
INSERT INTO `new_pais` VALUES (2,'Argentina'),(3,'Brasil'),(4,'Uruguay');
/*!40000 ALTER TABLE `new_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,'2021-11-11',3,3,10,3,2),(2,'2021-12-11',1,6,6,3,1),(3,'2021-06-24',4,2,8,2,2),(4,'2021-10-20',4,1,1,2,3),(5,'2021-10-20',4,8,2,2,2),(6,'2021-05-18',3,3,6,2,1),(7,'2021-05-18',3,9,10,2,2),(8,'2021-09-04',3,1,9,2,2),(9,'2021-09-04',3,8,8,2,3),(10,'2021-09-04',3,4,4,2,2);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ordenes_productos`
--

LOCK TABLES `ordenes_productos` WRITE;
/*!40000 ALTER TABLE `ordenes_productos` DISABLE KEYS */;
INSERT INTO `ordenes_productos` VALUES (1,1,3,84,1,3,253),(2,1,5,85,1,2,170),(3,1,1,164,1,3,492),(4,2,10,103,1,2,205),(5,2,8,66,1,2,133),(6,2,9,120,1,3,360),(7,3,1,164,1,4,656),(8,3,2,261,1,4,1044),(9,3,3,84,1,5,422),(10,4,5,85,1,2,170),(11,5,6,120,1,4,480),(12,5,7,29,1,2,58),(13,6,9,120,1,2,240),(14,6,7,29,1,3,87),(15,7,5,85,1,2,170),(16,8,1,164,1,3,492),(17,8,6,120,1,3,360),(18,9,10,103,1,3,308),(19,10,9,120,1,6,7191),(20,10,8,66,1,2,133);
/*!40000 ALTER TABLE `ordenes_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'United States'),(2,'Argentina'),(3,'Brasil'),(4,'Uruguay');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_add_new_pais` AFTER INSERT ON `pais` FOR EACH ROW INSERT INTO `new_pais`(id_country, name_count) VALUES (NEW.id_country, NEW.name_count) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Atlantic Metals Mobile 2-Shelf Bookcases, Custom Colors',1,164,1),(2,'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors',1,261,1),(3,'Atlantic Metals Mobile 4-Shelf Bookcases, Custom Colors',1,84,1),(4,'Atlantic Metals Mobile 5-Shelf Bookcases, Custom Colors',1,90,1),(5,'Bestar Classic Bookcases',1,85,1),(6,'Bush Andora Bookcase, Maple/Graphite Gray Finishs',1,120,1),(7,'Bush Birmingham Collection Bookcase, Dark Cherry',1,29,1),(8,'Bush Cubix Collection Bookcases, Fully Assembled',1,66,1),(9,'Bush Heritage Pine Collection 5-Shelf Bookcase, Albany Pine Finish',1,120,1),(10,'Bush Mission Pointe Library',1,103,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'West',1),(2,'East',2),(3,'Central',3),(4,'South',4);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `retornos`
--

LOCK TABLES `retornos` WRITE;
/*!40000 ALTER TABLE `retornos` DISABLE KEYS */;
INSERT INTO `retornos` VALUES (1,'2021-12-31',2,1,6),(2,'2021-07-14',3,2,2),(3,'2021-11-09',4,3,1),(4,'2021-06-07',6,4,3),(5,'2021-09-24',8,3,1),(6,'2021-09-24',9,1,8);
/*!40000 ALTER TABLE `retornos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `segmento`
--

LOCK TABLES `segmento` WRITE;
/*!40000 ALTER TABLE `segmento` DISABLE KEYS */;
INSERT INTO `segmento` VALUES (1,'Consumer'),(2,'Corporate'),(3,'Home Office');
/*!40000 ALTER TABLE `segmento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ship_mode`
--

LOCK TABLES `ship_mode` WRITE;
/*!40000 ALTER TABLE `ship_mode` DISABLE KEYS */;
INSERT INTO `ship_mode` VALUES (1,'First Class'),(2,'Same Day'),(3,'Second Class'),(4,'Standard Class');
/*!40000 ALTER TABLE `ship_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (1,'Bookcases',1),(2,'Chairs',1),(3,'Furnishings',1),(4,'Tables',1),(5,'Appliances',2),(6,'Art',2),(7,'Binders',2),(8,'Envelopes',2),(9,'Fasteners',2),(10,'Labels',2),(11,'Paper',2),(12,'Storage',2),(13,'Supplies',2),(14,'Accessories',3),(15,'Copiers',3),(16,'Machines',3),(17,'Phones',3);
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Anna','Andreadi'),(2,'Chuck','Magee'),(3,'Kelly','Williams'),(4,'Cassandra','Brandow'),(5,'Robertino','Calbert');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_insert_vendedor_aud` AFTER INSERT ON `vendedor` FOR EACH ROW INSERT INTO `audits`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('vendedor', NEW.id_salesman, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_update_vendedor_aud` AFTER UPDATE ON `vendedor` FOR EACH ROW UPDATE `audits` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER() 
WHERE entity_id = OLD.id_salesman */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database '4desaf_entregable'
--
/*!50003 DROP FUNCTION IF EXISTS `count_customers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `count_customers`(segm INT) RETURNS int
    DETERMINISTIC
RETURN (SELECT COUNT(*) FROM cliente WHERE id_Segm = segm) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `count_orders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `count_orders`(name_cust VARCHAR(100)) RETURNS int
    DETERMINISTIC
RETURN (SELECT count(o.id_cust) FROM ordenes o
		JOIN cliente c
		ON o.id_cust = c.id_cust
		WHERE LCASE(c.name_cust) = LCASE(name_cust)
		
	) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Obtener_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Obtener_nombre`(productos INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    RETURN (SELECT name_prod FROM productos WHERE id_product = productos);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cities_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cities_order`(IN field VARCHAR(50))
BEGIN
	IF field <> '' THEN
		SET @cities_order = concat('ORDER BY ', field);
	ELSE
		SET @cities_order = '';
	END IF;
    
    SET @clausula = concat('SELECT * FROM ciudad ', @cities_order);
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_key_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_key_name`(name VARCHAR (100))
BEGIN
	SELECT * FROM vendedor
    WHERE name_salesman = name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_load_new_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_load_new_category`(IN field VARCHAR(100), OUT output VARCHAR(100))
BEGIN
	IF field <> '' THEN
		INSERT INTO categoria (name_cat) VALUES (LCASE(field));
        SET output = 'Carga confirmada OK';
	ELSE
		SET output = 'FAIL: no se pudo procesar el registro';
	END IF;
    
    SET @clausula = 'SELECT * FROM categoria ORDER BY id_categ DESC ';
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
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

-- Dump completed on 2023-01-24 20:40:31
