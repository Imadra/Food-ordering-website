-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2017 г., 10:49
-- Версия сервера: 5.7.19
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mydb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `ClientID` int(11) NOT NULL AUTO_INCREMENT,
  `CName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `Region` varchar(45) NOT NULL,
  PRIMARY KEY (`ClientID`,`Region`),
  UNIQUE KEY `ClientID_UNIQUE` (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`ClientID`, `CName`, `Address`, `phone`, `Region`) VALUES
(14, 'Rasik', 'Abyk', '12312', 'Saryarka'),
(15, 'Abyk', 'Rasik', '12412341235', 'Almaty'),
(16, '1', '2', '3', 'Saryarka'),
(17, '2', '2', '2', 'Saryarka'),
(18, '3', '3', '3', 'Saryarka'),
(19, '4', '4', '4', 'Almaty'),
(20, '5', '5', '5', 'Yessil'),
(21, '6', '6', '6', 'Saryarka'),
(22, '7', '7', '7', 'Saryarka'),
(23, '8', '8', '8', 'Yessil'),
(24, '9', '9', '9', 'Almaty'),
(25, '10', '10', '10', 'Saryarka'),
(26, '11', '11', '11', 'Almaty'),
(27, '12', '12', '12', 'Yessil'),
(28, '13', '13', '13', 'Saryarka'),
(29, '14', '14', '14', 'Almaty'),
(30, '15', '15', '15', 'Yessil'),
(31, '16', '16', '16', 'Yessil'),
(32, 'a', 'a', 'a', 'Saryarka'),
(33, 's', 's', 's', 'Saryarka'),
(34, 'q', 'q', 'q', 'Saryarka'),
(35, 'ww', 'ww', 'ww', 'Almaty'),
(36, 'ss', 'ss', 'ss', 'Almaty'),
(37, 'sss', 'sss', 'sss', 'Saryarka'),
(38, '17', '17', '17', 'Yessil'),
(39, '18', '18', '18', 'Yessil'),
(40, '19', '19', '19', 'Yessil'),
(41, '20', '20', '20', 'Almaty'),
(42, '21', '21', '21', 'Saryarka'),
(43, '22', '22', '22', 'Almaty'),
(44, '23', '23', '23', 'Saryarka'),
(45, '24', '24', '24', 'Almaty'),
(46, '25', '25', '25', 'Saryarka'),
(47, '25', '25', '25', 'Almaty'),
(48, '26', '26', '26', 'Yessil'),
(49, '27', '27', '27', 'Saryarka'),
(50, '29', '29', '29', 'Almaty'),
(51, '31', '31', '31', 'Yessil'),
(52, '32', '32', '32', 'Yessil'),
(53, '33', '33', '33', 'Almaty'),
(54, '34', '34', '34', 'Almaty'),
(55, '34', '34', '34', 'Saryarka'),
(56, '35', '35', '35', 'Yessil'),
(57, '36', '36', '36', 'Saryarka'),
(58, '37', '37', '37', 'Yessil'),
(59, '', '', '', ''),
(60, 's', '', '', ''),
(61, '', '', '', ''),
(62, '', '', '', ''),
(63, 'a', 'a', 'a', ''),
(64, 'a', 'a', 'a', ''),
(65, 'b', 'b', 'b', ''),
(66, 'c', 'c', 'c', ''),
(67, 'd', 'd', 'd', ''),
(68, 'e', 'e', 'e', ''),
(69, 'q', 'q', 'q', ''),
(70, 'w', 'w', 'w', ''),
(71, 'w', 'w', 'w', ''),
(72, 'z', 'z', 'z', ''),
(73, 'a', 'a', 'a', 'Yessil'),
(74, 'asdad', 'asdasdasd', 'asdasda', 'Saryarka'),
(75, 'asdasd', 'asdasdasd', 'asdasd', 'Saryarka'),
(76, 'asdasd', 'asdasdas', 'dasdasda', 'Almaty'),
(77, 'asdasd', 'asdads', 'asdasd', 'Yessil'),
(78, 'adasd', 'asdasda', 'asdasd', 'Saryarka'),
(79, '222', '222222', '222', 'Yessil'),
(80, 'asdasd', 'asdasd', 'asdasd', 'Almaty'),
(81, 'a', 'a', 'a', 'Almaty'),
(82, 'asdsad', 'asdasd', 'asda', 'Saryarka'),
(83, 'asdsa', 'asdasd', 'asd', 'Saryarka'),
(84, 'asdasd', 'asdasda', 'dasdasd', 'Almaty');

-- --------------------------------------------------------

--
-- Структура таблицы `deliveryboy`
--

DROP TABLE IF EXISTS `deliveryboy`;
CREATE TABLE IF NOT EXISTS `deliveryboy` (
  `DeliveryBoyID` int(11) NOT NULL,
  `Region` varchar(45) NOT NULL,
  PRIMARY KEY (`DeliveryBoyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `deliveryboy`
--

INSERT INTO `deliveryboy` (`DeliveryBoyID`, `Region`) VALUES
(1, 'Yessil'),
(2, 'Saryarka'),
(3, 'Almaty');

-- --------------------------------------------------------

--
-- Структура таблицы `deliveryboy_delivers_order`
--

DROP TABLE IF EXISTS `deliveryboy_delivers_order`;
CREATE TABLE IF NOT EXISTS `deliveryboy_delivers_order` (
  `DeliveryBoy_DeliveryBoyID` int(11) NOT NULL,
  `Order_OrderID` int(11) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`DeliveryBoy_DeliveryBoyID`,`Order_OrderID`),
  KEY `fk_Delivery Boy_has_Order_Order1` (`Order_OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `deliveryboy_delivers_order`
--

INSERT INTO `deliveryboy_delivers_order` (`DeliveryBoy_DeliveryBoyID`, `Order_OrderID`, `phone`) VALUES
(1, 41, '37'),
(1, 56, 'a'),
(2, 40, '36'),
(2, 57, 'asdasd'),
(2, 59, 'asda'),
(2, 60, 'asd'),
(3, 58, 'a'),
(3, 61, 'dasdasd');

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `FoodID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Description` text,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`FoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`FoodID`, `Name`, `Description`, `Price`, `Quantity`) VALUES
(1, 'Baked Sandwich', 'Canned baked beans on white', 1000, 1),
(2, 'Double Sandwich', 'Double meat', 1700, 1),
(3, 'Bacon Sandwich', 'Sandwich with bacon', 1300, 1),
(4, 'Bolognna Sandwich', 'With Bologna sausage', 1500, 1),
(5, 'Cheese Sandwich', 'Made with cheese', 1200, 1),
(6, 'Margarita Pizza', 'Made with cheese', 1500, 1),
(7, 'Neapolitan Pizza', 'The original pizza', 2500, 1),
(8, 'Chicago Pizza', 'Deep-dish pizza', 1900, 1),
(9, 'NY style Pizza', 'With thin crust', 2000, 1),
(10, 'Sicilian Pizza', 'Square cut, spongier consistency', 2100, 1),
(11, 'Greek Pizze', 'Made with tangy tomato pasta', 2000, 1),
(12, 'California Pizza', 'Mustard, ricotta, pate and pepper', 1900, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `Total_cost` int(11) NOT NULL,
  `DD.MM.YYYY` date NOT NULL,
  `Time` time NOT NULL,
  `Clients_ClientID` int(11) NOT NULL,
  `Clients_Region` varchar(45) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_Order_Clients1` (`Clients_ClientID`,`Clients_Region`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`OrderID`, `Total_cost`, `DD.MM.YYYY`, `Time`, `Clients_ClientID`, `Clients_Region`) VALUES
(1, 0, '2017-01-15', '12:00:00', 18, 'Saryarka'),
(2, 0, '2017-01-15', '12:00:00', 19, 'Almaty'),
(3, 0, '2017-11-26', '12:00:00', 20, 'Yessil'),
(4, 0, '2017-11-26', '12:00:00', 21, 'Saryarka'),
(5, 0, '2017-11-26', '12:00:00', 22, 'Saryarka'),
(6, 0, '2017-11-26', '12:00:00', 23, 'Yessil'),
(7, 0, '2017-11-27', '12:00:00', 24, 'Almaty'),
(8, 0, '2017-11-27', '04:15:26', 25, 'Saryarka'),
(9, 0, '2017-11-27', '04:23:35', 26, 'Almaty'),
(10, 0, '2017-11-27', '04:28:17', 27, 'Yessil'),
(11, 0, '2017-11-27', '04:32:36', 28, 'Saryarka'),
(12, 0, '2017-11-27', '04:33:21', 29, 'Almaty'),
(13, 0, '2017-11-27', '04:36:49', 30, 'Yessil'),
(14, 0, '2017-11-27', '04:41:35', 31, 'Yessil'),
(15, 0, '2017-11-27', '04:47:43', 32, 'Saryarka'),
(16, 0, '2017-11-27', '04:50:43', 33, 'Saryarka'),
(17, 0, '2017-11-27', '04:51:31', 34, 'Saryarka'),
(18, 0, '2017-11-27', '04:52:27', 35, 'Almaty'),
(19, 0, '2017-11-27', '04:52:52', 36, 'Almaty'),
(20, 0, '2017-11-27', '04:53:16', 37, 'Saryarka'),
(21, 0, '2017-11-27', '05:02:38', 38, 'Yessil'),
(22, 0, '2017-11-27', '05:10:28', 39, 'Yessil'),
(23, 0, '2017-11-27', '05:11:29', 40, 'Yessil'),
(24, 0, '2017-11-27', '05:12:18', 41, 'Almaty'),
(25, 0, '2017-11-27', '05:16:32', 42, 'Saryarka'),
(26, 0, '2017-11-27', '05:25:21', 43, 'Almaty'),
(27, 0, '2017-11-27', '05:26:38', 44, 'Saryarka'),
(28, 0, '2017-11-27', '05:27:32', 45, 'Almaty'),
(29, 0, '2017-11-27', '05:28:43', 46, 'Saryarka'),
(30, 0, '2017-11-27', '05:35:04', 47, 'Almaty'),
(31, 0, '2017-11-27', '05:36:42', 48, 'Yessil'),
(32, 0, '2017-11-27', '05:37:26', 49, 'Saryarka'),
(33, 0, '2017-11-27', '05:45:51', 50, 'Almaty'),
(34, 0, '2017-11-27', '05:49:59', 51, 'Yessil'),
(35, 0, '2017-11-27', '06:05:06', 52, 'Yessil'),
(36, 0, '2017-11-27', '06:06:40', 53, 'Almaty'),
(37, 0, '2017-11-27', '06:09:25', 54, 'Almaty'),
(38, 0, '2017-11-27', '06:12:26', 55, 'Saryarka'),
(39, 0, '2017-11-27', '06:15:31', 56, 'Yessil'),
(40, 0, '2017-11-27', '06:27:17', 57, 'Saryarka'),
(41, 0, '2017-11-27', '06:28:33', 58, 'Yessil'),
(42, 0, '2017-11-27', '06:37:40', 59, ''),
(43, 0, '2017-11-27', '06:40:33', 60, ''),
(44, 0, '2017-11-27', '06:40:44', 61, ''),
(45, 0, '2017-11-27', '06:41:13', 62, ''),
(46, 0, '2017-11-27', '06:45:51', 63, ''),
(47, 0, '2017-11-27', '06:54:29', 64, ''),
(48, 0, '2017-11-27', '06:56:43', 65, ''),
(49, 0, '2017-11-27', '06:58:30', 66, ''),
(50, 0, '2017-11-27', '06:59:26', 67, ''),
(51, 0, '2017-11-27', '07:00:25', 68, ''),
(52, 0, '2017-11-27', '07:01:46', 69, ''),
(53, 0, '2017-11-27', '07:02:52', 71, ''),
(54, 0, '2017-11-27', '07:02:52', 71, ''),
(55, 0, '2017-11-27', '07:03:37', 72, ''),
(56, 0, '2017-11-27', '07:22:08', 73, 'Yessil'),
(57, 766665, '2017-11-28', '22:01:34', 78, 'Saryarka'),
(58, 10800, '2017-11-28', '22:15:33', 81, 'Almaty'),
(59, 4700, '2017-11-28', '22:19:44', 82, 'Saryarka'),
(60, 10900, '2017-11-28', '22:20:51', 83, 'Saryarka'),
(61, 4400, '2017-11-28', '22:27:21', 84, 'Almaty');

-- --------------------------------------------------------

--
-- Структура таблицы `order_contains_food`
--

DROP TABLE IF EXISTS `order_contains_food`;
CREATE TABLE IF NOT EXISTS `order_contains_food` (
  `Order_OrderID` int(11) NOT NULL,
  `Food_FoodID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`Order_OrderID`,`Food_FoodID`),
  KEY `fk_Order_has_Food_Food1` (`Food_FoodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_contains_food`
--

INSERT INTO `order_contains_food` (`Order_OrderID`, `Food_FoodID`, `Amount`) VALUES
(25, 1, 3),
(26, 1, 1),
(27, 1, 2),
(29, 1, 1),
(29, 2, 1),
(29, 5, 1),
(29, 6, 2),
(30, 1, 1),
(30, 2, 2),
(30, 3, 3),
(30, 7, 2),
(30, 8, 3),
(30, 9, 1),
(32, 1, 2),
(32, 2, 1),
(33, 1, 1),
(34, 1, 1),
(34, 2, 2),
(34, 3, 3),
(35, 1, 1),
(35, 2, 2),
(36, 1, 3),
(36, 2, 1),
(37, 1, 2),
(37, 2, 1),
(38, 3, 2),
(39, 1, 1),
(39, 3, 3),
(40, 1, 2),
(40, 2, 3),
(41, 1, 1),
(41, 2, 1),
(56, 1, 2),
(56, 2, 3),
(56, 3, 2),
(57, 1, 2),
(57, 2, 2),
(57, 7, 2),
(58, 1, 3),
(58, 8, 2),
(58, 11, 2),
(59, 1, 3),
(59, 2, 1),
(60, 2, 3),
(60, 3, 1),
(60, 4, 3),
(61, 1, 1),
(61, 2, 2);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `deliveryboy_delivers_order`
--
ALTER TABLE `deliveryboy_delivers_order`
  ADD CONSTRAINT `fk_Delivery Boy_has_Order_Delivery Boy1` FOREIGN KEY (`DeliveryBoy_DeliveryBoyID`) REFERENCES `deliveryboy` (`DeliveryBoyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Delivery Boy_has_Order_Order1` FOREIGN KEY (`Order_OrderID`) REFERENCES `order` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_Order_Clients1` FOREIGN KEY (`Clients_ClientID`,`Clients_Region`) REFERENCES `clients` (`ClientID`, `Region`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `order_contains_food`
--
ALTER TABLE `order_contains_food`
  ADD CONSTRAINT `fk_Order_has_Food_Food1` FOREIGN KEY (`Food_FoodID`) REFERENCES `food` (`FoodID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Order_has_Food_Order1` FOREIGN KEY (`Order_OrderID`) REFERENCES `order` (`OrderID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
