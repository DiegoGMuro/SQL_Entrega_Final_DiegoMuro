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
-- Temporary view structure for view `orders_region`
--

DROP TABLE IF EXISTS `orders_region`;
/*!50001 DROP VIEW IF EXISTS `orders_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_region` AS SELECT 
 1 AS `id_region`,
 1 AS `name_region`,
 1 AS `id_salesman`,
 1 AS `id_order`,
 1 AS `order_date`,
 1 AS `id_cust`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_price`
--

DROP TABLE IF EXISTS `orders_price`;
/*!50001 DROP VIEW IF EXISTS `orders_price`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_price` AS SELECT 
 1 AS `id_product`,
 1 AS `name_prod`,
 1 AS `id_subcateg`,
 1 AS `unit_price`,
 1 AS `sku`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `returns_cause`
--

DROP TABLE IF EXISTS `returns_cause`;
/*!50001 DROP VIEW IF EXISTS `returns_cause`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `returns_cause` AS SELECT 
 1 AS `id_cause`,
 1 AS `descrip_causeret`,
 1 AS `day_return`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_rejected`
--

DROP TABLE IF EXISTS `order_rejected`;
/*!50001 DROP VIEW IF EXISTS `order_rejected`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_rejected` AS SELECT 
 1 AS `id_retorno`,
 1 AS `day_return`,
 1 AS `id_order`,
 1 AS `id_cause`,
 1 AS `id_cust`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_date`
--

DROP TABLE IF EXISTS `sales_date`;
/*!50001 DROP VIEW IF EXISTS `sales_date`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_date` AS SELECT 
 1 AS `id_order`,
 1 AS `order_date`,
 1 AS `id_ship`,
 1 AS `id_cust`,
 1 AS `id_pc`,
 1 AS `id_region`,
 1 AS `id_payment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_prod_name_cust`
--

DROP TABLE IF EXISTS `order_prod_name_cust`;
/*!50001 DROP VIEW IF EXISTS `order_prod_name_cust`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_prod_name_cust` AS SELECT 
 1 AS `id_order`,
 1 AS `id_cust`,
 1 AS `name_cust`,
 1 AS `id_product`,
 1 AS `name_prod`,
 1 AS `unit_price`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_by_prod_name`
--

DROP TABLE IF EXISTS `order_by_prod_name`;
/*!50001 DROP VIEW IF EXISTS `order_by_prod_name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_by_prod_name` AS SELECT 
 1 AS `name_prod`,
 1 AS `id_subcateg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_region_salesman_cust`
--

DROP TABLE IF EXISTS `orders_region_salesman_cust`;
/*!50001 DROP VIEW IF EXISTS `orders_region_salesman_cust`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_region_salesman_cust` AS SELECT 
 1 AS `id_region`,
 1 AS `name_region`,
 1 AS `id_order`,
 1 AS `order_date`,
 1 AS `id_salesman`,
 1 AS `name_salesman`,
 1 AS `lastname_salesman`,
 1 AS `id_cust`,
 1 AS `name_cust`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_customer`
--

DROP TABLE IF EXISTS `order_customer`;
/*!50001 DROP VIEW IF EXISTS `order_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_customer` AS SELECT 
 1 AS `id_cust`,
 1 AS `day_in`,
 1 AS `name_cust`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_by_salesman`
--

DROP TABLE IF EXISTS `sales_by_salesman`;
/*!50001 DROP VIEW IF EXISTS `sales_by_salesman`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_salesman` AS SELECT 
 1 AS `id_salesman`,
 1 AS `name_salesman`,
 1 AS `lastname_salesman`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_prod_name`
--

DROP TABLE IF EXISTS `order_prod_name`;
/*!50001 DROP VIEW IF EXISTS `order_prod_name`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_prod_name` AS SELECT 
 1 AS `id_order`,
 1 AS `id_product`,
 1 AS `name_prod`,
 1 AS `unit_price`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_by_prod_names`
--

DROP TABLE IF EXISTS `order_by_prod_names`;
/*!50001 DROP VIEW IF EXISTS `order_by_prod_names`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_by_prod_names` AS SELECT 
 1 AS `id_product`,
 1 AS `name_prod`,
 1 AS `id_subcateg`,
 1 AS `unit_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_by_date`
--

DROP TABLE IF EXISTS `sales_by_date`;
/*!50001 DROP VIEW IF EXISTS `sales_by_date`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_date` AS SELECT 
 1 AS `id_order`,
 1 AS `order_date`,
 1 AS `id_ship`,
 1 AS `id_cust`,
 1 AS `id_pc`,
 1 AS `id_region`,
 1 AS `id_payment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_region_salesman`
--

DROP TABLE IF EXISTS `orders_region_salesman`;
/*!50001 DROP VIEW IF EXISTS `orders_region_salesman`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_region_salesman` AS SELECT 
 1 AS `id_region`,
 1 AS `name_region`,
 1 AS `id_order`,
 1 AS `order_date`,
 1 AS `id_salesman`,
 1 AS `id_cust`,
 1 AS `name_salesman`,
 1 AS `lastname_salesman`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `orders_region`
--

/*!50001 DROP VIEW IF EXISTS `orders_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_region` AS select `r`.`id_region` AS `id_region`,`r`.`name_region` AS `name_region`,`r`.`id_salesman` AS `id_salesman`,`o`.`id_order` AS `id_order`,`o`.`order_date` AS `order_date`,`o`.`id_cust` AS `id_cust` from (`ordenes` `o` join `region` `r` on((`o`.`id_region` = `r`.`id_region`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_price`
--

/*!50001 DROP VIEW IF EXISTS `orders_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_price` AS select `productos`.`id_product` AS `id_product`,`productos`.`name_prod` AS `name_prod`,`productos`.`id_subcateg` AS `id_subcateg`,`productos`.`unit_price` AS `unit_price`,`productos`.`sku` AS `sku` from `productos` where (`productos`.`unit_price` > 100) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `returns_cause`
--

/*!50001 DROP VIEW IF EXISTS `returns_cause`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `returns_cause` AS select `cr`.`id_cause` AS `id_cause`,`cr`.`descrip_causeret` AS `descrip_causeret`,`r`.`day_return` AS `day_return` from (`retornos` `r` join `causa_retorno` `cr` on((`cr`.`id_cause` = `r`.`id_cause`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_rejected`
--

/*!50001 DROP VIEW IF EXISTS `order_rejected`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_rejected` AS select `retornos`.`id_retorno` AS `id_retorno`,`retornos`.`day_return` AS `day_return`,`retornos`.`id_order` AS `id_order`,`retornos`.`id_cause` AS `id_cause`,`retornos`.`id_cust` AS `id_cust` from `retornos` where (`retornos`.`id_cause` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_date`
--

/*!50001 DROP VIEW IF EXISTS `sales_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_date` AS select `ordenes`.`id_order` AS `id_order`,`ordenes`.`order_date` AS `order_date`,`ordenes`.`id_ship` AS `id_ship`,`ordenes`.`id_cust` AS `id_cust`,`ordenes`.`id_pc` AS `id_pc`,`ordenes`.`id_region` AS `id_region`,`ordenes`.`id_payment` AS `id_payment` from `ordenes` where (`ordenes`.`order_date` > '2021-10-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_prod_name_cust`
--

/*!50001 DROP VIEW IF EXISTS `order_prod_name_cust`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_prod_name_cust` AS select `opn`.`id_order` AS `id_order`,`orsc`.`id_cust` AS `id_cust`,`orsc`.`name_cust` AS `name_cust`,`opn`.`id_product` AS `id_product`,`opn`.`name_prod` AS `name_prod`,`opn`.`unit_price` AS `unit_price`,`opn`.`sales` AS `sales` from (`orders_region_salesman_cust` `orsc` join `order_prod_name` `opn` on((`orsc`.`id_order` = `opn`.`id_order`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_by_prod_name`
--

/*!50001 DROP VIEW IF EXISTS `order_by_prod_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_by_prod_name` AS select `productos`.`name_prod` AS `name_prod`,`productos`.`id_subcateg` AS `id_subcateg` from `productos` where (`productos`.`unit_price` > 110) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_region_salesman_cust`
--

/*!50001 DROP VIEW IF EXISTS `orders_region_salesman_cust`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_region_salesman_cust` AS select `orrs`.`id_region` AS `id_region`,`orrs`.`name_region` AS `name_region`,`orrs`.`id_order` AS `id_order`,`orrs`.`order_date` AS `order_date`,`orrs`.`id_salesman` AS `id_salesman`,`orrs`.`name_salesman` AS `name_salesman`,`orrs`.`lastname_salesman` AS `lastname_salesman`,`orrs`.`id_cust` AS `id_cust`,`c`.`name_cust` AS `name_cust` from (`orders_region_salesman` `orrs` join `cliente` `c` on((`orrs`.`id_cust` = `c`.`id_cust`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_customer`
--

/*!50001 DROP VIEW IF EXISTS `order_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_customer` AS select `cliente`.`id_cust` AS `id_cust`,`cliente`.`day_In` AS `day_in`,`cliente`.`name_cust` AS `name_cust` from `cliente` order by `cliente`.`name_cust` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_salesman`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_salesman`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_salesman` AS select `vendedor`.`id_salesman` AS `id_salesman`,`vendedor`.`name_salesman` AS `name_salesman`,`vendedor`.`lastname_salesman` AS `lastname_salesman` from `vendedor` where (`vendedor`.`name_salesman` = 'Anna') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_prod_name`
--

/*!50001 DROP VIEW IF EXISTS `order_prod_name`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_prod_name` AS select `op`.`id_order` AS `id_order`,`p`.`id_product` AS `id_product`,`p`.`name_prod` AS `name_prod`,`op`.`unit_price` AS `unit_price`,`op`.`sales` AS `sales` from (`ordenes_productos` `op` join `productos` `p` on((`op`.`id_product` = `p`.`id_product`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_by_prod_names`
--

/*!50001 DROP VIEW IF EXISTS `order_by_prod_names`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_by_prod_names` AS select `productos`.`id_product` AS `id_product`,`productos`.`name_prod` AS `name_prod`,`productos`.`id_subcateg` AS `id_subcateg`,`productos`.`unit_price` AS `unit_price` from `productos` where (`productos`.`unit_price` > 110) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_date`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_date`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_date` AS select `ordenes`.`id_order` AS `id_order`,`ordenes`.`order_date` AS `order_date`,`ordenes`.`id_ship` AS `id_ship`,`ordenes`.`id_cust` AS `id_cust`,`ordenes`.`id_pc` AS `id_pc`,`ordenes`.`id_region` AS `id_region`,`ordenes`.`id_payment` AS `id_payment` from `ordenes` where (`ordenes`.`order_date` > '2021-06-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_region_salesman`
--

/*!50001 DROP VIEW IF EXISTS `orders_region_salesman`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_region_salesman` AS select `orr`.`id_region` AS `id_region`,`orr`.`name_region` AS `name_region`,`orr`.`id_order` AS `id_order`,`orr`.`order_date` AS `order_date`,`orr`.`id_salesman` AS `id_salesman`,`orr`.`id_cust` AS `id_cust`,`v`.`name_salesman` AS `name_salesman`,`v`.`lastname_salesman` AS `lastname_salesman` from (`orders_region` `orr` join `vendedor` `v` on((`orr`.`id_salesman` = `v`.`id_salesman`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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

-- Dump completed on 2023-01-24 20:34:54
