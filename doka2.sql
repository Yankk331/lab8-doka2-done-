-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 14 2020 г., 17:06
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `doka2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `login` varchar(45) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`login`, `password`, `ID`) VALUES
('dakkzip2', 'ohdude39124', 12345677),
('valakaspizza', 'qwerty4124', 12345679),
('vladikdungeonmaster', 'qwert222', 12345678);

-- --------------------------------------------------------

--
-- Структура таблицы `community`
--

CREATE TABLE `community` (
  `IDcom` int(15) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Sklad` varchar(250) NOT NULL,
  `IDmess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `community`
--

INSERT INTO `community` (`IDcom`, `Name`, `Sklad`, `IDmess`) VALUES
(111, 'ProudBoys', 'vitalik2010, zxc, solo, mid, fontan, nicher1, chedtt, bot', 131245),
(211, 'cuclusklan', 'treyy2381, jungleded, stawrd, lodkt, aezakmi, hesoyam', 1523),
(311, '5Aklas', 'getjet, hydra, rhino, nebula, infernus, tanker', 124);

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `IDinventory` int(11) NOT NULL,
  `Inventory` varchar(50) NOT NULL,
  `IDitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`IDinventory`, `Inventory`, `IDitem`) VALUES
(142, 'dc hook, MoM, gloves', 19402),
(152, 'boots, helmet, circlet, rapier', 125123),
(167, 'sword, helmet', 18392);

-- --------------------------------------------------------

--
-- Структура таблицы `items2`
--

CREATE TABLE `items2` (
  `IDitem` int(11) NOT NULL,
  `Yakist` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `items2`
--

INSERT INTO `items2` (`IDitem`, `Yakist`, `Price`) VALUES
(18392, 'rare', 15),
(19402, 'common', 2),
(125123, 'ultra-rare', 2222);

-- --------------------------------------------------------

--
-- Структура таблицы `matchh`
--

CREATE TABLE `matchh` (
  `IDgame` int(11) NOT NULL,
  `Durating` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `matchh`
--

INSERT INTO `matchh` (`IDgame`, `Durating`, `Date`) VALUES
(123415, 23, '2018-02-15'),
(172342, 45, '2018-07-21'),
(623412, 37, '2015-03-15');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `IDmess` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Text` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`IDmess`, `Date`, `Text`) VALUES
(124, '2018-02-15', 'doasodoadadsaiodcao22221323213'),
(1523, '2015-04-15', 'asdasdajtyutydyryddrydrydr4445235235'),
(131245, '2018-07-21', 'adadadoaosdaisdoasdiosadiadaosdiosadiasodaisdoassdiqad12832183182731231823');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Nickname` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL,
  `IDcom` int(11) NOT NULL,
  `IDmess` int(11) NOT NULL,
  `IDgame` int(11) NOT NULL,
  `IDitem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`ID`, `Nickname`, `Rating`, `IDcom`, `IDmess`, `IDgame`, `IDitem`) VALUES
(12345677, 'hydra', 1337228, 311, 124, 623412, 18392),
(12345678, 'vitalik2010', 8882, 111, 131245, 123415, 19402),
(12345679, 'treyy2381', 1337, 211, 1523, 172342, 125123);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`login`),
  ADD KEY `ID` (`ID`);

--
-- Индексы таблицы `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`IDcom`),
  ADD KEY `IDmess` (`IDmess`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`IDinventory`),
  ADD KEY `IDitem` (`IDitem`);

--
-- Индексы таблицы `items2`
--
ALTER TABLE `items2`
  ADD PRIMARY KEY (`IDitem`);

--
-- Индексы таблицы `matchh`
--
ALTER TABLE `matchh`
  ADD PRIMARY KEY (`IDgame`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`IDmess`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDcom` (`IDcom`),
  ADD KEY `IDmess` (`IDmess`),
  ADD KEY `IDgame` (`IDgame`),
  ADD KEY `IDitem` (`IDitem`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Ограничения внешнего ключа таблицы `community`
--
ALTER TABLE `community`
  ADD CONSTRAINT `community_ibfk_1` FOREIGN KEY (`IDmess`) REFERENCES `message` (`IDmess`);

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`IDitem`) REFERENCES `items2` (`IDitem`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`IDcom`) REFERENCES `community` (`IDcom`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`IDmess`) REFERENCES `message` (`IDmess`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`IDgame`) REFERENCES `matchh` (`IDgame`),
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`IDitem`) REFERENCES `items` (`IDitem`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
