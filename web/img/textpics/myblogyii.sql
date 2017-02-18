-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 29 2017 г., 18:58
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `myblogyii`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categori`
--

CREATE TABLE IF NOT EXISTS `categori` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `categori`
--

INSERT INTO `categori` (`id`, `id_parent`, `name`, `text`) VALUES
(1, 0, 'Тест 1', 'Описание '),
(2, 0, 'Тест 2', 'фаывавыа');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1484594108),
('m130524_201442_init', 1484594121);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_categoriya` int(10) NOT NULL DEFAULT '0',
  `name_text` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `data` int(10) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `discriptions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `id_categoriya`, `name_text`, `text`, `data`, `keywords`, `discriptions`, `image`) VALUES
(1, 1, 'Как скрыть поисковых роботов из статистики сайта', 'В связи с актуальностью скрытия поисковых роботов гугл, яндекс, и другие из статистик я решил поделиться скриптом который будет скрывать ботов из общей статистики. Я использовал данный скрипт в статистиках просмотров товара и в статистике онлайн посетителей для чтобы чтобы разделить роботов от реальных пользователей на сайте. ', 1485374634, '', '', ''),
(2, 1, 'Модуль опенкарт total import pro скачать бесплатно', 'Импорта PRO позволяет легко загружать информацию о продукте в ваш магазин. Этот модуль является отличным решением для загрузки товаров в ваш интернет магазин.\r\n\r\nМодуль протестирован 1.5.6.x\r\n\r\nСкачать модуль можно по ссылке \r\n\r\nНе забудьте оставить комментарий.\r\n', 1485374634, '', '', ''),
(3, 2, 'Как скрыть поисковых роботов из статистики сайта', 'В связи с актуальностью скрытия поисковых роботов гугл, яндекс, и другие из статистик я решил поделиться скриптом который будет скрывать ботов из общей статистики. Я использовал данный скрипт в статистиках просмотров товара и в статистике онлайн посетителей для чтобы чтобы разделить роботов от реальных пользователей на сайте. ', 1485374634, '', '', ''),
(4, 2, 'Модуль опенкарт total import pro скачать бесплатно', 'Импорта PRO позволяет легко загружать информацию о продукте в ваш магазин. Этот модуль является отличным решением для загрузки товаров в ваш интернет магазин.\r\n\r\nМодуль протестирован 1.5.6.x\r\n\r\nСкачать модуль можно по ссылке \r\n\r\nНе забудьте оставить комментарий.\r\n', 1485374634, '', '', ''),
(5, 0, 'ggddgfdg', 'gfdgdfgfdg', 1111111111, 'thgfh', 'hgfhgf', 'hgfhgf');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'evgenij85', 'L7Tu1uTG7cd_vkrsvFfOKMrbHKAXHbju', '$2y$13$7AiRUjfGSANtN7aKHUW5GuJcTPjHRpMN2pGWT9uRzBjnuPeSd6otm', NULL, 'win32@list.ru', 10, 1484594234, 1484594234);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
