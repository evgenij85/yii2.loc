-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 06 2017 г., 20:10
-- Версия сервера: 5.6.34
-- Версия PHP: 5.3.10-1ubuntu3.25

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `demo_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categoriya`
--

CREATE TABLE IF NOT EXISTS `categoriya` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL,
  `id_sub` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Дамп данных таблицы `categoriya`
--

INSERT INTO `categoriya` (`id`, `name`, `id_sub`) VALUES
(23, 'Категория 2', 0),
(51, 'Бытовая техника', 0),
(52, 'Цифровая техника', 0),
(53, 'Кухонная техника', 0),
(54, 'Холодильник', 51),
(55, 'Стиральная машина', 51),
(56, 'Моб телефон', 52);

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL,
  `text_goods` text NOT NULL,
  `price` int(10) NOT NULL,
  `raiting` int(10) NOT NULL,
  `timestamp` int(65) NOT NULL,
  `promo` int(10) NOT NULL,
  `photo_smol` varchar(65) NOT NULL,
  `photo_big` varchar(65) NOT NULL,
  `categoriya` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `text_goods`, `price`, `raiting`, `timestamp`, `promo`, `photo_smol`, `photo_big`, `categoriya`) VALUES
(78, 'Тест', 'Описание товара', 10, 10, 1485706606, 0, 'smol_1485706606.png', 'big_1485706606.png', 51),
(81, 'Тест', 'Описание товараfsdfsdfdsfdfsd', 650, 10, 1486065748, 1, 'smol_1486065748.png', 'big_1486065748.png', 23);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_orders` varchar(65) NOT NULL,
  `phone_orders` varchar(15) NOT NULL,
  `mail_orders` varchar(20) NOT NULL,
  `id_tovara_count` varchar(255) NOT NULL,
  `summa_orders` varchar(20) NOT NULL,
  `data` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name_orders`, `phone_orders`, `mail_orders`, `id_tovara_count`, `summa_orders`, `data`) VALUES
(4, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:3:{i:68;i:2;i:66;i:3;i:59;i:1;}', '3665', 1468358611),
(5, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:1:{i:66;i:1;}', '555', 1468428697),
(6, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:1:{i:66;i:1;}', '555', 1468428740),
(7, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:1:{i:66;i:1;}', '555', 1468429669),
(8, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:1:{i:66;i:1;}', '555', 1468430335),
(9, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468434851),
(10, 'Тестовое имя', '0671111111', 'win32@list.ua', 'a:1:{i:66;i:1;}', '555', 1468435050),
(11, 'Тестовое имя', '0671111111', 'win@list.ua', 'a:1:{i:66;i:1;}', '555', 1468435290),
(12, 'Тестовое имя', '0671111111', 'win32@list.ua', 'a:1:{i:66;i:1;}', '555', 1468435333),
(13, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468435536),
(14, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468435648),
(15, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468435720),
(16, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468435783),
(17, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468436141),
(18, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468436213),
(19, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468436252),
(20, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468436307),
(21, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:1:{i:66;i:1;}', '555', 1468436572),
(22, 'Тестовое имя', '0671111111', 'evgenij.kolesnik02@y', 'a:3:{i:67;i:1;i:59;i:1;i:68;i:1;}', '2000', 1468441167),
(23, 'uuuu', '0678788666', 'win32@list.ru', 'a:1:{i:67;i:1;}', '1000', 1468572620),
(24, 'Женя', '0677688322', 'win32@list.ru', 'a:1:{i:66;i:1;}', '555', 1468595369),
(25, 'hjtgyfhj', '0677688322', 'win32@list.ua', 'a:1:{i:67;i:1;}', '1000', 1468666678),
(26, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468691326),
(27, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468691466),
(28, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468698954),
(29, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468698997),
(30, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468699086),
(31, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468699126),
(32, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468699183),
(33, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468699192),
(34, 'fsdfdsf', '0671111111', 'win@list.ua', 'a:2:{i:68;i:1;i:69;i:1;}', '16000', 1468699213),
(35, 'Тестовое имя', '0671111111', 'win@list.ua', 'a:1:{i:71;i:1;}', '12000', 1468864745);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_tovar`
--

CREATE TABLE IF NOT EXISTS `orders_tovar` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `id_goods` int(5) NOT NULL,
  `name` varchar(65) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(64) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `fam` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `polzovatel` int(2) NOT NULL,
  `error` int(2) NOT NULL,
  `last_entrance` int(65) NOT NULL,
  `new_time` int(65) NOT NULL,
  `data_register` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `passwd`, `fam`, `name`, `mail`, `polzovatel`, `error`, `last_entrance`, `new_time`, `data_register`) VALUES
(25, 'admin', '$2y$10$4io2gF/GrICvwzVVpmWJTOifm7SdLoPNl2qNTINPQcgGkA1N9HVYy', 'Колесник', 'Женя', 'w@l.ru', 2, 0, 1462901747, 1465929154, 1467573137),
(26, 'evgenij85', '$2y$10$FLbvf8GOXJ3GuLZDwRfx8O1y93mSYDIKADvYyacgHTVBUTP4sprpW', 'Колесник', 'Евгений', 'w@l.ru', 2, 0, 1462647033, 1462647040, 0),
(33, 'demo', '$2y$10$aZfQLsqD2lVdLlGCXrHoheD2VfVNuT0qeuIoK1dTv9KhNXspAxeLC', 'Тест', 'Тест', 'w@l.ru', 1, 0, 1486065712, 1486399612, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
