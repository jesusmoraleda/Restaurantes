REATE TABLE CATEGORY (
  id_category varchar(20),
  name varchar(500),
  description varchar(500),
  PRIMARY KEY(id_category)
 );

CREATE TABLE PLATE (
  id_plate varchar(20),
  id_category varchar(20) REFERENCES CATEGORY(id_category),
  title varchar(500),
  rations number(5,2),
  price number(10,2),
  enabled number(1,0),
  description varchar(500),
  vegetarian number(1,0),
  PRIMARY KEY(id_plate)
);

 CREATE TABLE WAITER (
  id_waiter varchar(20),
  name varchar(500),
  PRIMARY KEY(id_waiter)
 );

CREATE TABLE INGREDIENT	(
  id_ingr varchar(20),
  name varchar(500),
  act_stock number(10,2),
  min_stock number(10,2),
  max_stock number(10,2),
  measure varchar(50),
  PRIMARY KEY(id_ingr)
);

CREATE TABLE TABLE_REST (
  id_table varchar(20),
  max_diners number(10,2),
  act_diners number(10,2),
  enabled number(1,0),
  reserved number(1,0),
  PRIMARY KEY(id_table)
);


 CREATE TABLE ALERTA (
  id_alerta varchar(20) REFERENCES INGREDIENT (id_ingr),
  description varchar(500),
  PRIMARY KEY(id_alerta)
 );


CREATE TABLE ORDER_REST (
  id_order varchar(20),
  table_number varchar(20) REFERENCES TABLE_REST (id_table),
  id_waiter varchar(20) REFERENCES WAITER (id_waiter),
  date_o date,
  diners number(5,0),
  remark varchar(50),
  plates varchar(20) REFERENCES PLATE (id_plate),
  PRIMARY KEY(id_order)
 );
 
 CREATE TABLE INVOICE (
  id_invoice varchar(20) REFERENCES ORDER_REST(id_order),
  date_i date,
  total number(10,2),
  subtotal number(10,2),
  iva number(10,2),
  PRIMARY KEY(id_invoice)
);
 
 CREATE TABLE ORDER_DETAIL (
  id_order_detail varchar(20),
  id_order varchar(20) REFERENCES ORDER_REST (id_order),
  id_plate varchar(20) REFERENCES PLATE (id_plate),
  rations number(5,2),
  remark varchar(50),
  PRIMARY KEY(id_order_detail)
 );
  

 CREATE TABLE STOCK (
  id_stock varchar(20) REFERENCES INGREDIENT (id_ingr),
  name varchar(50),
  PRIMARY KEY(id_stock)
);

 CREATE TABLE RECIPE (
  id_recipe varchar(20) REFERENCES PLATE(id_plate),
  title varchar(100) ,
  description varchar(500),
  ingredient varchar(20) REFERENCES INGREDIENT (id_ingr),
  PRIMARY KEY(id_recipe)
 );


INSERT INTO INVOICE VALUES('1','15/12/2021','80','20','6');
INSERT INTO INVOICE VALUES('2','15/12/2021','100','25','10');

INSERT INTO PLATE VALUES('1','1','macarrones con tomate','1','5','1','macarrones con salsa de tomate y tofu','1');
INSERT INTO PLATE VALUES('2','1','ensalada de verano','5','7','1','ensalada con patata cocida, piminetos atun y cebolla','0');
INSERT INTO PLATE VALUES('3','1','cocido madrile??o','3','10','0',' cocido servido con dos vuelcos, primero servimos la sopa, y despues los garbanzos con sus arreglos','0');
INSERT INTO PLATE VALUES('4','2','hamburguesa vegetariana','2','8','1','hamburguesa con carne de tofu','1');
INSERT INTO PLATE VALUES('5','2','solomillo de cerdo','4','12','1','solomillo de cerdo con salsa de pimienta','0');
INSERT INTO PLATE VALUES('6','2','salmonetes','1','9','6','salmonetes rebozados','0');

INSERT INTO INGREDIENT VALUES('1','tomate','5','2','10','kg');
INSERT INTO INGREDIENT VALUES('2','macarrones','2','0.5','5','kg');
INSERT INTO INGREDIENT VALUES('3','tofu','5','1','8','kg');
INSERT INTO INGREDIENT VALUES('4','patata','5','4','10','kg');
INSERT INTO INGREDIENT VALUES('5','piminetos','1','0.5','3','kg');
INSERT INTO INGREDIENT VALUES('6','atun','2','1','5','kg');
INSERT INTO INGREDIENT VALUES('7','cebolla','1','0.5','3','kg');
INSERT INTO INGREDIENT VALUES('8','garbanzos','5','2','7','kg');
INSERT INTO INGREDIENT VALUES('9','fideos','2','1','3','kg');
INSERT INTO INGREDIENT VALUES('10','carne cocido','3','2','7','kg');
INSERT INTO INGREDIENT VALUES('11','solomillo de cerdo','3','2','8','kg');
INSERT INTO INGREDIENT VALUES('12','nata para cocinar','2000','1000','3000','ml');
INSERT INTO INGREDIENT VALUES('13','salmonetes','4','2','10','kg');

INSERT INTO WAITER VALUES('1','Jesus Martin Moraleda');
INSERT INTO WAITER VALUES('2','Jorge Arevalo Echevarria');
INSERT INTO WAITER VALUES('3','Mingo Eres una Maquina');

INSERT INTO TABLE_REST VALUES('1','10','0','1','0');
INSERT INTO TABLE_REST VALUES('2','5','5','0','0');
INSERT INTO TABLE_REST VALUES('3','8','0','0','1');
INSERT INTO TABLE_REST VALUES('4','3','2','0','0');
INSERT INTO TABLE_REST VALUES('5','2','0','1','0');
INSERT INTO TABLE_REST VALUES('6','6','6','0','0');
INSERT INTO TABLE_REST VALUES('7','10','0','0','1');
INSERT INTO TABLE_REST VALUES('8','8','7','0','0');
INSERT INTO TABLE_REST VALUES('9','2','0','1','0');
INSERT INTO TABLE_REST VALUES('10','15','0','1','0');
 
 