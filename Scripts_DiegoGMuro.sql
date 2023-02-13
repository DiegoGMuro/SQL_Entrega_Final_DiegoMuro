CREATE SCHEMA 4Desaf_entregable;
USE 4Desaf_entregable;

-- TABLAS DiMENSIONALES --

CREATE TABLE segmento(
id_segm INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descrip_seg VARCHAR(100) NOT NULL
);

CREATE TABLE condicion_pago(
id_payment INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descrip_pay VARCHAR(100) NOT NULL
);

CREATE TABLE causa_retorno(
id_cause INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descrip_causeret VARCHAR(100) NOT NULL
);

CREATE TABLE ship_mode(
id_ship INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
descrip_ship VARCHAR(100) NOT NULL
);

CREATE TABLE categoria(
id_categ INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_cat VARCHAR(100) NOT NULL
);


CREATE TABLE vendedor(
id_salesman INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_salesman VARCHAR(100) NOT NULL,
lastname_salesman VARCHAR(100) NOT NULL
);

CREATE TABLE pais(
id_country INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_count VARCHAR(100) NOT NULL
);


-- TABLAS DE HECHOS --

CREATE TABLE subcategoria(
id_subcateg INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_subcat VARCHAR(100) NOT NULL,
id_categ INT NOT NULL,
FOREIGN KEY (id_categ) REFERENCES categoria(id_categ)
);

CREATE TABLE cliente(
id_cust INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
day_In DATE NOT NULL,
name_cust VARCHAR(100) NOT NULL,
id_Segm INT NOT NULL,
FOREIGN KEY (id_Segm) REFERENCES segmento(id_segm)
);

CREATE TABLE estado(
id_state INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_state VARCHAR(100) NOT NULL,
id_country INT NOT NULL,
FOREIGN KEY (id_country) REFERENCES pais(id_country)
);


CREATE TABLE ciudad(
id_city INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_city VARCHAR(100) NOT NULL,
id_state INT NOT NULL,
FOREIGN KEY (id_state) REFERENCES estado(id_state)
);


CREATE TABLE codigo_postal(
id_pc INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_pc VARCHAR(100) NOT NULL,
id_city INT NOT NULL,
FOREIGN KEY (id_city) REFERENCES ciudad(id_city)

);


CREATE TABLE region(
id_region INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_region VARCHAR(100) NOT NULL,
id_salesman INT NOT NULL,
FOREIGN KEY (id_salesman) REFERENCES vendedor(id_salesman)
);

CREATE TABLE productos(
id_product INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_prod VARCHAR(100) NOT NULL,
id_subcateg INT NOT NULL,
unit_price DECIMAL NOT NULL,
sku INT NOT NULL,
FOREIGN KEY (id_subcateg) REFERENCES subcategoria(id_subcateg)
);


CREATE TABLE ordenes(
id_order INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
id_ship INT NOT NULL,
id_cust INT NOT NULL,
id_pc INT NOT NULL,
id_region INT NOT NULL,
id_payment INT NOT NULL,
FOREIGN KEY (id_ship) REFERENCES ship_mode(id_ship),
FOREIGN KEY (id_cust) REFERENCES cliente(id_cust),
FOREIGN KEY (id_pc) REFERENCES codigo_postal(id_pc),
FOREIGN KEY (id_region) REFERENCES region(id_region),
FOREIGN KEY (id_payment) REFERENCES condicion_pago(id_payment)
);

CREATE TABLE retornos(
id_retorno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
day_return DATE NOT NULL,
id_order INT NOT NULL,
id_cause INT NOT NULL,
id_cust INT NOT NULL,
FOREIGN KEY (id_order) REFERENCES ordenes(id_order),
FOREIGN KEY (id_cause) REFERENCES causa_retorno(id_cause),
FOREIGN KEY (id_cust) REFERENCES cliente(id_cust)
);


CREATE TABLE ordenes_productos(
Id_vta_order_prod INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_order INT NOT NULL,
id_product INT NOT NULL,
unit_price DECIMAL NOT NULL,
sku INT NOT NULL,
qty INT NOT NULL,
sales DECIMAL NOT NULL,
FOREIGN KEY (id_order) REFERENCES ordenes(id_order),
FOREIGN KEY (id_product) REFERENCES productos(id_product)
);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*INSERCION EN TABLAS DIMENSIONALES*/

/*tabla 1*/
INSERT INTO segmento(id_segm, descrip_seg) VALUES
(1, 'Consumer'),
(2, 'Corporate'),
(3, 'Home Office');

SELECT * FROM segmento;

/*tabla 2*/
INSERT INTO condicion_pago(id_payment, descrip_pay) VALUES
(1, 'Cash'),
(2, 'Check'),
(3, 'Transfer');

SELECT * FROM condicion_pago;

/*tabla 3*/
INSERT INTO causa_retorno(id_cause, descrip_causeret) VALUES
(1, 'Broken product'),
(2, 'Missing product'),
(3, 'Misbilled'),
(4, 'Price error');

SELECT * FROM causa_retorno;

/*tabla 4*/
INSERT INTO ship_mode(id_ship, descrip_ship) VALUES
(1, 'First Class'),
(2, 'Same Day'),
(3, 'Second Class'),
(4, 'Standard Class');

SELECT * FROM ship_mode;


/*tabla 5*/
INSERT INTO categoria(id_categ, name_cat) VALUES
(1, 'Furniture'),
(2, 'Office Supplies'),
(3, 'Technology');

SELECT * FROM categoria;


/*tabla 6*/
INSERT INTO vendedor(id_salesman, name_salesman, lastname_salesman) VALUES
(1, 'Anna','Andreadi'),
(2, 'Chuck','Magee'),
(3, 'Kelly','Williams'),
(4, 'Cassandra','Brandow');

SELECT * FROM vendedor;


/*tabla 7*/
INSERT INTO pais(id_country, name_count) VALUES
(1, 'United States');

SELECT * FROM pais;



/*INSERCION EN TABLAS DE HECHOS*/

/*tabla 8*/
INSERT INTO subcategoria(id_subcateg, name_subcat, id_categ) VALUES
(1, 'Bookcases', 1),
(2, 'Chairs', 1),
(3, 'Furnishings', 1),
(4, 'Tables', 1),
(5, 'Appliances', 2),
(6, 'Art', 2),
(7, 'Binders', 2),
(8, 'Envelopes', 2),
(9, 'Fasteners', 2),
(10, 'Labels', 2),
(11, 'Paper', 2),
(12, 'Storage', 2),
(13, 'Supplies', 2),
(14, 'Accessories', 3),
(15, 'Copiers', 3),
(16, 'Machines', 3),
(17, 'Phones', 3);

SELECT * FROM subcategoria;

/*tabla 9*/
INSERT INTO cliente(id_cust, day_In, name_cust, id_Segm) VALUES
(1, '2015-01-01', 'Claire Gute', 1),
(2, '2015-01-01', 'Darrin Van Huff', 2),
(3, '2015-01-01', 'Sean O Donnell', 1),
(4, '2015-01-01', 'Brosina Hoffman', 1),
(5, '2015-01-01', 'Andrew Allen', 1),
(6, '2015-01-01', 'Irene Maddox', 1),
(7, '2015-01-01', 'Harold Pawlan', 3),
(8, '2015-01-01', 'Pete Kriz', 1),
(9, '2015-01-01', 'Alejandro Grove', 1),
(10, '2015-01-01', 'Zuschuss Donatelli', 1);

SELECT * FROM cliente;


/*tabla 10*/
INSERT INTO estado(id_state, name_state, id_country) VALUES
(1, 'Alabama', 1),
(2, 'Arizona', 1),
(3, 'Arkansas', 1),
(4, 'California', 1),
(5, 'Colorado', 1),
(6, 'Connecticut', 1),
(7, 'Delaware', 1),
(8, 'District of Columbia', 1),
(9, 'Florida', 1),
(10, 'Georgia', 1);

INSERT INTO estado(id_state, name_state, id_country) VALUES
(11, 'Idaho', 1),
(12, 'Illinois', 1),
(13, 'Indiana', 1),
(14, 'Iowa', 1),
(15, 'Kansas', 1),
(16, 'Kentucky', 1),
(17, 'Louisiana', 1),
(18, 'Maine', 1),
(19, 'Maryland', 1),
(20, 'Massachusetts', 1),
(21, 'Michigan', 1),
(22, 'Minnesota', 1),
(23, 'Mississippi', 1),
(24, 'Missouri', 1),
(25, 'Montana', 1),
(26, 'Nebraska', 1),
(27, 'Nevada', 1),
(28, 'New Hampshire', 1),
(29, 'New Jersey', 1),
(30, 'New Mexico', 1),
(31, 'New York', 1),
(32, 'North Carolina', 1),
(33, 'North Dakota', 1),
(34, 'Ohio', 1),
(35, 'Oklahoma', 1),
(36, 'Oregon', 1),
(37, 'Pennsylvania', 1),
(38, 'Rhode Island', 1),
(39, 'South Carolina', 1),
(40, 'South Dakota', 1),
(41, 'Tennessee', 1),
(42, 'Texas', 1),
(43, 'Utah', 1),
(44, 'Virginia', 1),
(45, 'Washington', 1),
(46, 'Wisconsin', 1),
(47, 'Wyoming', 1);

SELECT * FROM estado;


/*tabla 11*/
INSERT INTO ciudad(id_city, name_city, id_state) VALUES
(1, 'Decatur', 1),
(2, 'Montgomery', 1),
(3, 'Mobile', 1),
(4, 'Hoover', 1),
(5, 'Tuscaloosa', 1),
(6, 'Gilbert', 2),
(7, 'Phoenix', 2),
(8, 'Scottsdale', 2),
(9, 'Tucson', 2),
(10, 'Mesa', 2);

INSERT INTO ciudad(id_city, name_city, id_state) VALUES
(11, 'Sierra Vista', 2),
(12, 'Glendale', 2),
(13, 'Tempe', 2),
(14, 'Bullhead City', 2),
(15, 'Avondale', 2),
(16, 'Yuma', 2),
(17, 'Chandler', 2),
(18, 'Fayetteville', 3),
(19, 'Jonesboro', 3),
(20, 'Little Rock', 3),
(21, 'Hot Springs', 3),
(22, 'Texarkana', 3),
(23, 'Rogers', 3),
(24, 'Conway', 3),
(25, 'Pine Bluff', 3),
(26, 'Springdale', 3),
(27, 'Los Angeles', 4),
(28, 'San Francisco', 4),
(29, 'Roseville', 4),
(30, 'Pasadena', 4),
(31, 'San Jose', 4),
(32, 'Redlands', 4),
(33, 'Whittier', 4),
(34, 'Santa Clara', 4),
(35, 'San Diego', 4);

SELECT * FROM ciudad;


/*tabla 12*/
INSERT INTO codigo_postal(id_pc, name_pc, id_city) VALUES
(1, '42420', 1),
(2, '90036', 2),
(3, '33311', 3),
(4, '28027', 4),
(5, '98103', 5),
(6, '76106', 6),
(7, '53711', 7),
(8, '84084', 8),
(9, '94109', 9),
(10, '68025', 10);

INSERT INTO codigo_postal(id_pc, name_pc, id_city) VALUES
(11, '19140', 11),
(12, '84057', 12),
(13, '77095', 13),
(14, '75080', 14),
(15, '60540', 15),
(16, '32935', 16),
(17, '55122', 17),
(18, '48185', 18),
(19, '19901', 19),
(20, '47150', 20),
(21, '10024', 21),
(22, '12180', 22),
(23, '60610', 23),
(24, '85234', 24),
(25, '22153', 25),
(26, '49201', 26),
(27, '38109', 27),
(28, '35601', 28),
(29, '27707', 29),
(30, '29203', 30),
(31, '55901', 31),
(32, '55407', 32),
(33, '97206', 33),
(34, '55106', 34),
(35, '80013', 35);

SELECT * FROM codigo_postal;

/*tabla 13*/
INSERT INTO region(id_region, name_region, id_salesman) VALUES
(1, 'West', 1),
(2, 'East', 2),
(3, 'Central', 3),
(4, 'South', 4);

SELECT * FROM region;


/*tabla 14*/
INSERT INTO productos(id_product, name_prod, id_subcateg, unit_price, sku) VALUES
(1, 'Atlantic Metals Mobile 2-Shelf Bookcases, Custom Colors', 1, 163.87, 1),
(2, 'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors', 1, 260.98, 1),
(3, 'Atlantic Metals Mobile 4-Shelf Bookcases, Custom Colors', 1, 84.29, 1),
(4, 'Atlantic Metals Mobile 5-Shelf Bookcases, Custom Colors', 1, 90.29, 1),
(5, 'Bestar Classic Bookcases', 1, 84.99, 1),
(6, 'Bush Andora Bookcase, Maple/Graphite Gray Finishs', 1, 119.99, 1),
(7, 'Bush Birmingham Collection Bookcase, Dark Cherry', 1, 28.99, 1),
(8, 'Bush Cubix Collection Bookcases, Fully Assembled', 1, 66.29, 1),
(9, 'Bush Heritage Pine Collection 5-Shelf Bookcase, Albany Pine Finish', 1, 119.83, 1),
(10, 'Bush Mission Pointe Library', 1, 102.66, 1);

INSERT INTO productos(id_product, name_prod, id_subcateg, unit_price, sku) VALUES
(11, 'Bush Saratoga Collection 5-Shelf Bookcase, Hanover Cherry, *Special Order', 1, 28.99, 1),
(12, 'Bush Somerset Collection Bookcase', 1, 104.78, 1),
(13, 'Bush Westfield Collection Bookcases, Dark Cherry Finish', 1, 17.39, 1),
(14, 'Bush Westfield Collection Bookcases, Dark Cherry Finish, Fully Assembled', 1, 30.29, 1),
(15, 'Bush Westfield Collection Bookcases, Fully Assembled', 1, 68.66, 1),
(16, 'Bush Westfield Collection Bookcases, Medium Cherry Finish', 1, 28.99, 1),
(17, 'DMI Eclipse Executive Suite Bookcases', 1, 400.78, 1),
(18, 'Global Adaptabilites Bookcase, Cherry/Storm Gray Finish', 1, 430.98, 1),
(19, 'Hon 4-Shelf Metal Bookcases', 1, 30.29, 1),
(20, 'Hon Metal Bookcases, Black', 1, 21.29, 1);

INSERT INTO productos(id_product, name_prod, id_subcateg, unit_price, sku) VALUES
(21, 'Hon Metal Bookcases, Gray', 1, 70.98, 1),
(22, 'Hon Metal Bookcases, Putty', 1, 70.98, 1),
(23, 'O Sullivan 2-Door Barrister Bookcase in Odessa Pine', 1, 180.98, 1),
(24, 'O Sullivan 2-Shelf Heavy-Duty Bookcases', 1, 38.86, 1),
(25, 'O Sullivan 3-Shelf Heavy-Duty Bookcases', 1, 49.41, 1),
(26, 'O Sullivan 4-Shelf Bookcase in Odessa Pine', 1, 96.78, 1),
(27, 'O Sullivan 5-Shelf Heavy-Duty Bookcases', 1, 65.55, 1),
(28, 'O Sullivan Cherrywood Estates Traditional Barrister Bookcase', 1, 96.23, 1),
(29, 'O Sullivan Cherrywood Estates Traditional Bookcase', 1, 67.98, 1),
(30, 'O Sullivan Elevations Bookcase, Cherry Finish', 1, 104.78, 1);

SELECT * FROM productos;


/*tabla 15*/
INSERT INTO  ordenes(id_order, order_date, id_ship, id_cust, id_pc, id_region,id_payment) VALUES
(1, '2021-11-11', 3, 3, 10, 3, 2),
(2, '2021-12-11', 1, 6, 6, 3, 1),
(3, '2021-06-24', 4, 2, 8, 2, 2),
(4, '2021-10-20', 4, 1, 1, 2, 3),
(5, '2021-10-20', 4, 8, 2, 2, 2),
(6, '2021-05-18', 3, 3, 6, 2, 1),
(7, '2021-05-18', 3, 9, 10, 2, 2),
(8, '2021-09-04', 3, 1, 9, 2, 2),
(9, '2021-09-04', 3, 8, 8, 2, 3),
(10, '2021-09-04', 3, 4, 4, 2, 2);

INSERT INTO  ordenes(id_order, order_date, id_ship, id_cust, id_pc, id_region,id_payment) VALUES
(11, '2021-09-04', 3, 17, 35, 2, 2),
(12, '2021-05-16', 1, 1, 25, 2, 1),
(13, '2019-02-14', 4, 9, 19, 2, 2),
(14, '2019-02-14', 4, 17, 35, 2, 3),
(15, '2019-02-14', 4, 9, 19, 2, 2),
(16, '2019-02-14', 4, 6, 19, 2, 1),
(17, '2019-02-14', 4, 17, 35, 2, 2),
(18, '2021-09-10', 1, 6, 19, 2, 2),
(19, '2020-12-27', 1, 17, 35, 2, 3),
(20, '2020-08-14', 4, 6, 19, 2, 2),
(21, '2020-08-14', 4, 12, 30, 2, 2),
(22, '2020-08-14', 4, 12, 30, 2, 1),
(23, '2018-11-24', 4, 12, 30, 2, 2),
(24, '2021-10-12', 4, 14, 12, 1, 3),
(25, '2021-10-12', 4, 14, 12, 1, 2),
(26, '2021-03-13', 3, 17, 35, 1, 1),
(27, '2021-03-13', 3, 13, 26, 1, 2),
(28, '2021-03-13', 3, 13, 26, 1, 2),
(29, '2021-03-13', 3, 13, 26, 1, 3),
(30, '2021-03-13', 3, 13, 26, 1, 2);

SELECT * FROM ordenes;

/*tabla 16*/
INSERT INTO  retornos(id_retorno, day_return, id_order, id_cause, id_cust) VALUES
(1, '2021-12-31', 2, 1, 6),
(2, '2021-07-14', 3, 2, 2),
(3, '2021-11-09', 4, 3, 1),
(4, '2021-06-07', 6, 4, 3),
(5, '2021-09-24', 8, 3, 1),
(6, '2021-09-24', 9, 1, 8);

INSERT INTO  retornos(id_retorno, day_return, id_order, id_cause, id_cust) VALUES
(7, '2021-09-07', 11, 1, 17),
(8, '2019-02-16', 14, 1, 17),
(9, '2019-02-17', 17, 1, 17),
(10, '2020-12-30', 19, 1, 17);

SELECT * FROM retornos;


/*tabla 17*/
INSERT INTO  ordenes_productos(Id_vta_order_prod, id_order, id_product, unit_price, sku, qty, sales) VALUES
(1, 1, 3, 84.29, 1, 3, 252.88),
(2, 1, 5, 84.99, 1, 2, 170.00),
(3, 1, 1, 163.87, 1, 3, 491.60),
(4, 2, 10, 102.67, 1, 2, 205.30),
(5, 2, 8, 66.29, 1, 2, 132.6),
(6, 2, 9, 119.83, 1, 3, 359.50),
(7, 3, 1, 163.87, 1, 4, 655.50),
(8, 3, 2, 260.98, 1, 4, 1043.90),
(9, 3, 3, 84.29, 1, 5, 421.50),
(10, 4, 5, 84.99, 1, 2, 170.00),
(11, 5, 6, 119.99, 1, 4, 480.00),
(12, 5, 7, 28.99, 1, 2, 58.00),
(13, 6, 9, 119.83, 1, 2, 239.70),
(14, 6, 7, 28.99, 1, 3, 87.00),
(15, 7, 5, 84.99, 1, 2, 170.00),
(16, 8, 1, 163.87, 1, 3, 491.60),
(17, 8, 6, 119.99, 1, 3, 360.00),
(18, 9, 10, 102.67, 1, 3, 308.00),
(19, 10, 9, 119.83, 1, 6, 7191.00),
(20, 10, 8, 66.29, 1, 2, 132.60);

SELECT * FROM ordenes_productos;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*SCRIPT DE CREACION DE VISTAS*/

/*Vista 1*/
CREATE VIEW order_rejected AS
SELECT * FROM retornos WHERE id_cause = 3;

SELECT * FROM order_rejected;
SELECT * FROM retornos;


/*Vista 2*/
CREATE VIEW sales_date AS
SELECT * FROM ordenes WHERE order_date > '2021-10-01';

SELECT * FROM sales_date;
SELECT * FROM ordenes;


/*Vista 3*/
CREATE VIEW orders_price AS
SELECT * FROM productos WHERE unit_price > 100;

SELECT * FROM orders_price;
SELECT * FROM productos;


/*Vista 4*/
CREATE VIEW order_by_prod_names AS
(SELECT id_product, name_prod, id_subcateg, unit_price FROM productos WHERE unit_price > 110);

SELECT * FROM order_by_prod_names;
SELECT * FROM productos;


/*Vista 5*/
CREATE VIEW order_customer AS
(SELECT id_cust, day_in, name_cust FROM cliente ORDER BY name_cust DESC);

SELECT * FROM order_customer;
SELECT * FROM cliente;


/*Vista 6*/
CREATE VIEW returns_cause AS
SELECT cr.id_cause,cr.descrip_causeret,r.day_return
FROM retornos r
INNER JOIN causa_retorno cr
ON cr.id_cause=r.id_cause;

SELECT * FROM returns_cause;
SELECT * FROM causa_retorno;
SELECT * FROM retornos;


/*Vista 7*/
CREATE VIEW orders_region AS
SELECT r.id_region,r.name_region,r.id_salesman,o.id_order,o.order_date,o.id_cust
FROM ordenes o
INNER JOIN region r
ON o.id_region=r.id_region;

SELECT * FROM orders_region;
SELECT * FROM ordenes;
SELECT * FROM region;


/*Vista 8*/
CREATE VIEW orders_region_salesman AS
SELECT orr.id_region,orr.name_region,orr.id_order,orr.order_date,orr.id_salesman,orr.id_cust,v.name_salesman,v.lastname_salesman
FROM orders_region orr
INNER JOIN vendedor v
ON orr.id_salesman=v.id_salesman;

SELECT * FROM orders_region_salesman;
SELECT * FROM ordenes;
SELECT * FROM region;
SELECT * FROM salesman;


/*Vista 9*/
CREATE VIEW orders_region_salesman_cust AS
SELECT orrs.id_region,orrs.name_region,orrs.id_order,orrs.order_date,orrs.id_salesman,orrs.name_salesman,orrs.lastname_salesman,orrs.id_cust,c.name_cust
FROM orders_region_salesman orrs
INNER JOIN cliente c
ON orrs.id_cust=c.id_cust;

SELECT * FROM orders_region_salesman_cust;
SELECT * FROM ordenes;
SELECT * FROM region;
SELECT * FROM salesman;
SELECT * FROM cliente;

/*Vista 10*/
CREATE VIEW order_prod_name AS
SELECT op.id_order,p.id_product,p.name_prod,op.unit_price,op.sales
FROM ordenes_productos op
INNER JOIN productos p
ON op.id_product=p.id_product;

SELECT * FROM order_prod_name;
SELECT * FROM ordenes_productos;
SELECT * FROM productos;


/*Vista 11*/
CREATE VIEW order_prod_name_cust AS
SELECT opn.id_order,orsc.id_cust,orsc.name_cust,opn.id_product,opn.name_prod,opn.unit_price,opn.sales
FROM orders_region_salesman_cust orsc
INNER JOIN order_prod_name opn
ON orsc.id_order=opn.id_order;

SELECT * FROM order_prod_name_cust;
SELECT * FROM ordenes_productos;
SELECT * FROM productos;
SELECT * FROM cliente;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*SCRIPT DE CREACION DE FUNCIONES*/
USE 4Desaf_entregable;

/* FUNCIONES 1 : Se pretende contar la cantidad de clientes por cada segmento de venta definidos en la Base de datos*/
CREATE FUNCTION count_customers(segm INT) 
RETURNS INT
DETERMINISTIC
RETURN (SELECT COUNT(*) FROM cliente WHERE id_Segm = segm);

-- Clientes de Segmento CONSUMER (1)
SELECT count_customers(1);
SELECT * FROM cliente;

-- Clientes de Segmento CORPORATE (2)
SELECT count_customers(2);
SELECT * FROM cliente;

-- Clientes de Segmento HOME OFFICE (3)
SELECT count_customers (3);
SELECT * FROM cliente;


/* FUNCIONES 2 Se pretende obtener el nombre de los productos a partir de su numero de ID*/
DELIMITER $$
CREATE FUNCTION `Obtener_nombre`(productos INT) 
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    RETURN (SELECT name_prod FROM productos WHERE id_product = productos);
END $$


SELECT obtener_nombre(10);
SELECT obtener_nombre(1);
SELECT obtener_nombre(4);

SELECT * FROM productos;


/* FUNCIONES 3  Se pretende contar la cantidad de PEDIDOS de un cliente, tomando como parametro su nombre*/
CREATE FUNCTION count_orders (name_cust VARCHAR(100)) 
RETURNS INT
DETERMINISTIC
RETURN (SELECT count(o.id_cust) FROM ordenes o
		JOIN cliente c
		ON o.id_cust = c.id_cust
		WHERE LCASE(c.name_cust) = LCASE(name_cust)
		
	);

SELECT count_orders('Sean O Donnell');
SELECT count_orders('Alejandro Grove');
SELECT count_orders('Pete Kriz');
SELECT * FROM cliente;
SELECT * FROM ordenes;



----------------------------------------------------------------------------------------------------------------------------------------------------
/*SCRIPT DE CREACION DE STORED PROCEDURES*/
USE 4Desaf_entregable;


/*STORED PROCEDURE 1 : Se pretende ubicar a los VENDEDORES que coincidan con un nombre determinado */
DELIMITER $$
CREATE PROCEDURE `sp_key_name`(name VARCHAR (100))
BEGIN
	SELECT * FROM vendedor
    WHERE name_salesman = name;
END $$


CALL sp_key_name('Anna');
CALL sp_key_name('Kelly');

SELECT * FROM vendedor;



/*STORED PROCEDURE 2 : Se pretende visualizar la tabla CIUDAD eligiendo un campo para ser ordenados los registros  */
DELIMITER $$
CREATE PROCEDURE `sp_cities_order`(IN field VARCHAR(50))
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
END
$$

CALL sp_cities_order('id_city');
CALL sp_cities_order('name_city');
CALL sp_cities_order('id_state');

SELECT * FROM ciudad;


/*STORED PROCEDURE 3 : Se pretenden ingresar nuevos registros de categorias de productos */
DELIMITER $$
CREATE PROCEDURE `sp_load_new_category`(IN field VARCHAR(100), OUT output VARCHAR(100))
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
END
$$

CALL sp_load_new_category('Pet supplies', @resultado);
SELECT @resultado as result_load_new_category

CALL sp_load_new_category('Beverages', @resultado);
SELECT @resultado as result_load_new_category

CALL sp_load_new_category('Fast Foods', @resultado);
SELECT @resultado as result_load_new_category

CALL sp_load_new_category('', @resultado);
Select @resultado as result_load_new_category

SELECT * FROM categoria;



----------------------------------------------------------------------------------------------------------------------------------------------------
/*SCRIPT DE CREACION DE TRIGGERS*/
USE 4Desaf_entregable;

/*TRIGGER 1 : Se pretende crear un Trigger para valor por default en inserciones en la tabla CATEGORIAS, cuando por error no se indique el nombre de la misma  */
DELIMITER $$
CREATE TRIGGER tr_categoria_default_name
BEFORE INSERT ON categoria FOR EACH ROW
BEGIN
   IF NEW.name_cat='' THEN
   SET NEW.name_cat= 'Default Name';
   END IF;
   
END $$

INSERT INTO categoria(id_categ, name_cat) VALUES
(8, '');
SELECT * FROM categoria;


/*TRIGGER 2 : Se pretende replicar en otra tabla paralela a PAIS (new_pais) las inserciones a la tabla original */
CREATE TABLE new_pais(
id_country INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name_count VARCHAR(100) NOT NULL
);

SELECT * FROM pais;
SELECT * FROM new_pais;

CREATE TRIGGER `tr_add_new_pais`
AFTER INSERT ON `pais`
FOR EACH ROW
INSERT INTO `new_pais`(id_country, name_count) VALUES (NEW.id_country, NEW.name_count);

INSERT INTO pais (id_country, name_count) 
VALUES (2, 'Argentina');

SELECT * FROM pais WHERE id_country = 2; 
SELECT * FROM new_pais;

INSERT INTO pais (id_country, name_count) 
VALUES (3, 'Brasil'),
(4, 'Uruguay');

SELECT * FROM pais; 
SELECT * FROM new_pais;


/*TRIGGER 3 : Tablas de Auditoria de inserciones en la tabla VENDEDOR*/
CREATE TABLE audits (
	id_log INT PRIMARY KEY auto_increment,
    entity varchar(100),
    entity_id int,
    insert_dt datetime,
    created_by varchar(100),
    last_update_dt datetime,
    last_updated_by varchar(100)
);

SELECT * FROM vendedor;

CREATE TRIGGER `tr_insert_vendedor_aud`
AFTER INSERT ON `vendedor`
FOR EACH ROW
INSERT INTO `audits`(entity, entity_id, insert_dt, created_by, last_update_dt, last_updated_by) 
VALUES ('vendedor', NEW.id_salesman, CURRENT_TIMESTAMP(), USER(), CURRENT_TIMESTAMP(), USER());

INSERT INTO vendedor (id_salesman, name_salesman, lastname_salesman) 
VALUES (5, 'Robert', 'Calbert');

SELECT * FROM vendedor where id_salesman=5;
SELECT * FROM vendedor
SELECT * FROM audits;

/*TRIGGER 4 : Tablas de Auditoria de UPDATE en la tabla VENDEDOR*/
CREATE TRIGGER `tr_update_vendedor_aud`
AFTER UPDATE ON `vendedor`
FOR EACH ROW
UPDATE `audits` SET last_update_dt = CURRENT_TIMESTAMP(), last_updated_by = USER() 
WHERE entity_id = OLD.id_salesman;

UPDATE vendedor SET name_salesman = 'Robertino' WHERE id_salesman=5;

SELECT * FROM vendedor where id_salesman=5;
SELECT * FROM vendedor
SELECT * FROM audits;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*SCRIPT DE CREACION DE USUARIOS*/
USE 4Desaf_entregable;
USE sys;
SELECT * FROM sys_config;

USE mysql;
SHOW tables;

/*USUARIO 01 Se crea primer usuario en el localhost*/
CREATE USER 'diegom1@localhost' IDENTIFIED BY 'Scneokt478';

/*USUARIO 02 Se crea segundo usuario en el localhost*/
CREATE USER 'diegom2@localhost' IDENTIFIED BY 'kleptrs975';

SHOW VARIABLES LIKE 'Validate_passwords%';

SELECT * FROM user;

SELECT * FROM mysql.user WHERE user LIKE 'diegom%'


/* Permisos usuario 01: Se le otorga permisos de SOLO LECTURA DE TODAS LAS TABLAS, NO tendra permiso a DELETE en ninguna tabla */ 
GRANT SELECT ON 4Desaf_entregable.audits TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.categoria TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.causa_retorno TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.ciudad TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.cliente TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.codigo_postal TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.condicion_pago TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.estado TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.new_pais TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.ordenes TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.ordenes_productos TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.pais TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.productos TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.region TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.retornos TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.segmento TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.ship_mode TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.subcategoria TO 'diegom1@localhost';
GRANT SELECT ON 4Desaf_entregable.vendedor TO 'diegom1@localhost';

SHOW GRANTS FOR 'diegom1@localhost';

/* Permisos usuario 02: Se le otorga permisos de LECTURA INSERCION, MODIFICACION DE DATOS DE TODAS LAS TABLAS, NO tendra permiso a DELETE en ninguna tabla*/ 
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.audits TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.categoria TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.causa_retorno TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.ciudad TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.cliente TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.codigo_postal TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.condicion_pago TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.estado TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.new_pais TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.ordenes TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.ordenes_productos TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.pais TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.productos TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.region TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.retornos TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.segmento TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.ship_mode TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.subcategoria TO 'diegom2@localhost';
GRANT SELECT, UPDATE, INSERT ON 4Desaf_entregable.vendedor TO 'diegom2@localhost';

SHOW GRANTS FOR 'diegom2@localhost';


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/*SENTENCIAS DE SUBLENGUAJE TCL*/
USE 4Desaf_entregable;

SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;

/*1ra TABLA*/ 
SELECT * FROM cliente;

/*Hacer insercion de 2 registros en tabla CLIENTE: Se insertan 2 nuevos clientes a la BBDD*/
START TRANSACTION;
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES
(11, '2015-01-01', 'Ken Black', 2),
(12, '2015-01-01', 'Sandra Flanagan', 1);

SELECT * FROM cliente
order by name_cust DESC
limit 12;

/* Comentario de SENTENCIA ROLLBACK: Se decide no agregar essos 2 nuevos clientes a la BBDD*/
ROLLBACK;

SELECT * FROM cliente

/*Hacer insercion solmante de 1 registro en tabla CLIENTE: Se inserta 1 nuevo cliente a la BBDD*/
START TRANSACTION;
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES
(11, '2015-01-01', 'Ken Black', 2);

SELECT * FROM cliente
order by name_cust DESC
limit 12;

/* Comentario de SENTENCIA COMMIT: Se decide agregar solamente un cliente a la BBDD y se commitea */
COMMIT;

SELECT * FROM cliente

/*2da TABLA*/
/*Insertar 8 registros a la tabla CLIENTE: Agregar SAVEPOINT a posteriori de insercion de registro #4 y #8 */
START TRANSACTION;
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (12, '2015-01-01', 'Sandra Flanagan', 1);
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (13, '2015-01-01', 'Emily Burns', 1);
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (14, '2015-01-01', 'Eric Hoffmann', 1);
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (15, '2015-01-01', 'Tracy Blumstein', 1);
SAVEPOINT Nro_1;
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (16, '2015-01-01', 'Matt Abelman', 3);
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (17, '2015-01-01', 'Gene Hale', 2);
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (18, '2015-01-01', 'Steve Nguyen', 3);
INSERT INTO cliente(id_cust, day_in, name_cust, id_segm) VALUES (19, '2015-01-01', 'Linda Cazamias', 2);
SAVEPOINT Nro_2;

SELECT * FROM cliente

/*Agregar SENTENCIA DE ELIMINACION de SAVEPOINT de los primeros 4 registros insertados*/

RELEASE SAVEPOINT Nro_1;

SELECT * FROM cliente;

COMMIT;