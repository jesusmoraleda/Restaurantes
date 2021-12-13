CREATE TABLE `STOCK` (
  `Int` Tipo,
  `String` Tipo,
  KEY `Id` (`Int`),
  KEY `Name` (`String`)
);

CREATE TABLE `INVOICE` (
  `Campo` Tipo,
  `Campo` Tipo,
  `Campo` Tipo,
  `Field` Type,
  `Field` Type,
  KEY `Id` (`Campo`),
  KEY `Date` (`Campo`),
  KEY `Total` (`Campo`),
  KEY `Subtotal` (`Field`),
  KEY `Iva` (`Field`)
);

CREATE TABLE `ORDER` (
  `Int` Tipo,
  `Int` Tipo,
  `Int` Tipo,
  `Date/Hour` Tipo,
  `Int` Tipo,
  `String` Tipo,
  `Field` Type,
  FOREIGN KEY (`Int`) REFERENCES `INVOICE`(`Campo`),
  KEY `Id` (`Int`),
  KEY `Table` (`Int`),
  KEY `Waiter` (`Int`),
  KEY `Date` (`Date/Hour`),
  KEY `Diners` (`Int`),
  KEY `Remark` (`String`),
  KEY `Plates` (`Field`)
);

CREATE TABLE `RECIPE` (
  `Int` Tipo,
  `String` Tipo,
  `String` Tipo,
  `Field` Type,
  KEY `Id` (`Int`),
  KEY `Name` (`String`),
  KEY `Description` (`String`),
  KEY `Key` (`Field`)
);

CREATE TABLE `CATEGORY` (
  `Int` Tipo,
  `String` Tipo,
  `String` Tipo,
  KEY `Id` (`Int`),
  KEY `Name` (`String`),
  KEY `Description` (`String`)
);

CREATE TABLE `PLATE` (
  `Int` Tipo,
  `String` Tipo,
  `Int` Tipo,
  `Double` Tipo,
  `Bool` Tipo,
  `String` Tipo,
  `Bool` Tipo,
  FOREIGN KEY (`String`) REFERENCES `CATEGORY`(`String`),
  FOREIGN KEY (`String`) REFERENCES `RECIPE`(`Int`),
  KEY `Id` (`Int`),
  KEY `Title` (`String`),
  KEY `Rations` (`Int`),
  KEY `Price` (`Double`),
  KEY `Enabled` (`Bool`),
  KEY `Description` (`String`),
  KEY `Vegetarian` (`Bool`)
);

CREATE TABLE `INGREDIENT` (
  `Int` Tipo,
  `String` Tipo,
  `Int` Tipo,
  `Int` Type,
  `Int` Type,
  `String` Tipo,
  KEY `Id` (`Int`),
  KEY `Name` (`String`),
  KEY `Act_stock` (`Int`),
  KEY `Min_stock` (`Int`),
  KEY `Max_stock` (`Int`),
  KEY `Measure` (`String`)
);

CREATE TABLE `ALERTA` (
  `Int` Tipo,
  `String` Tipo,
  KEY `Id` (`Int`),
  KEY `Description` (`String`)
);

CREATE TABLE `ORDER_DETAIL` (
  `Int` Tipo,
  `Int` Tipo,
  `Int` Tipo,
  `Int` Type,
  `String` Notas del plato,
  FOREIGN KEY (`Int`) REFERENCES `ORDER`(`Field`),
  FOREIGN KEY (`Int`) REFERENCES `ORDER`(`Field`),
  KEY `Id` (`Int`),
  KEY `Order_ID` (`Int`),
  KEY `Plate_ID` (`Int`),
  KEY `Rations` (`Int`),
  KEY `Remark` (`String`)
);

CREATE TABLE `WAITER` (
  `Int` Tipo,
  `String` Tipo,
  KEY `Id` (`Int`),
  KEY `Name` (`String`)
);

CREATE TABLE `TABLE` (
  `Campo` Tipo,
  `Campo` Tipo,
  `Campo` Tipo,
  `Field` Tipo,
  `Field` Tipo,
  KEY `Id` (`Campo`),
  KEY `Max_diners` (`Campo`),
  KEY `Act_diners` (`Campo`),
  KEY `Enabled` (`Field`),
  KEY `Reserved` (`Field`)
);

