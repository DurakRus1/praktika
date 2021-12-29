-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 28 2021 г., 18:54
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `prakt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `applic`
--

CREATE TABLE `applic` (
  `id` int NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `tarif` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'на рассмотрении',
  `master` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `applic`
--

INSERT INTO `applic` (`id`, `full_name`, `city`, `address`, `tel`, `tarif`, `status`, `master`) VALUES
(1, 'Антон Сергеев', 'Санкт-Петербург', 'Беговая', '899976666', 'Стандарт', 'выполнен', 'Цветков Александр Михайлович'),
(3, 'Илья Прохоров', 'Санкт-Петербург', 'ул.Денежная 13, кв12', '89211419748', 'Игровой', 'выполняется', 'Попов Евгений Александрович'),
(4, 'Егор Моногаров', 'Санкт-Петербург', 'Средний проспект В.О. 13, кв40', '8999999999', 'Стандарт', 'на рассмотрении', 'Попов Евгений Александрович'),
(9, 'Иван Кичигин', 'Санкт-Петербург', 'ул.Лесная 7 , кв33', '89217485962', 'ТВ', 'на рассмотрении', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `equipment`
--

CREATE TABLE `equipment` (
  `id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `equipment`
--

INSERT INTO `equipment` (`id`, `type`, `model`, `name`) VALUES
(1, 'Модем', 'Huawei', 'E3372h'),
(2, 'Модем', 'ZTE', 'MF283'),
(3, 'Модем', 'HUAWEI', 'B535'),
(4, 'Модем', 'Upvel', 'UR-344'),
(5, 'Модем', 'ZYXEL', 'Keenetic Plus DSL'),
(6, 'Роутер', 'Rotek', 'RX-22200'),
(7, 'Роутер', 'Rotek', 'RX-22312'),
(8, 'Роутер', 'Sercomm', 'S1010'),
(9, 'Роутер', 'ZTE', 'H298A'),
(10, 'Роутер', 'Iskratel', 'E70'),
(11, 'Абонентский терминал', 'Huawei', 'HG8310M'),
(12, 'Абонентский терминал', 'Eltex', 'NTU-RG-1421G-WZ'),
(13, 'Абонентский терминал', 'BDCOM', 'FD600-511G-HZ660');

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `role_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `tarif`
--

CREATE TABLE `tarif` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `tarif`
--

INSERT INTO `tarif` (`id`, `name`) VALUES
(1, 'Стандарт'),
(2, 'Игровой'),
(3, 'ТВ');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `city` varchar(60) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Клиент',
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `login`, `tel`, `city`, `address`, `role`, `password`) VALUES
(8, 'Илья Марфин', 'marfin', '79211419700', 'Санкт-Петербург', '2-я линия 35', 'Админ', '123'),
(9, 'Егор Моногаров', 'qwerty123', '8999999999', 'СПб', '3-я Линия В.О. 12, кв.10', 'Клиент', '123'),
(10, 'Попов Евгений Александрович', 'popov123', '89211415489', 'Санкт-Петербург', 'ул. Боровая 50, кв.15', 'Персонал', '123'),
(11, 'Цветков Александр Михайлович', 'cv123', '89992586341', 'Санкт-Петербург', 'ул.Марата 63, кв.6', 'Персонал', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `applic`
--
ALTER TABLE `applic`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `applic`
--
ALTER TABLE `applic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
