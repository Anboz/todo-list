-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 07 2020 г., 12:08
-- Версия сервера: 8.0.15
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `todo_list`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `login` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `login`, `password`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', '67f9068e757a3edb981233b394d664ee');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_todolist`
--

CREATE TABLE `tbl_todolist` (
  `id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `todo_text` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_todolist`
--

INSERT INTO `tbl_todolist` (`id`, `user_name`, `user_email`, `todo_text`, `status`) VALUES
(1, 'testname', 'sultonovanboz@gmail.com', 'Message: Cannot modify header information - headers already sent by (output started at C:UsersUserDownloadsOSPaneldomains localhost	odoListapplicationcontrollersWelcome.php:26)\n\nFilename: core/Common.php\n\nLine Number: 570', 0),
(2, 'testname', 'sultonovanboz@gmail.com', 'Message: Cannot modify header information - headers already sent by (output started at C:UsersUserDownloadsOSPanel domainslocalhost	odoListapplicationcontrollersWelcome.php:26)\n\nFilename: core/Common.php\n\nLine Number: 570', 0),
(3, 'testname', 'sultonovanboz@gmail.com', 'Message: Cannot modify header information - headers already sent by (output started at C:UsersUserDownloadsOSPaneldomains localhost	odoListapplicationcontrollersWelcome.php:26)\n\nFilename: core/Common.php\n\nLine Number: 570', 0),
(4, 'whfkbsdmm', 'cn@mail.ri', 'hgerhybv hyhrkrtymrt yw yyert erhye', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_todolist`
--
ALTER TABLE `tbl_todolist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_todolist`
--
ALTER TABLE `tbl_todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
