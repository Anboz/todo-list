-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 28 2020 г., 14:47
-- Версия сервера: 5.6.43-log
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
(2, 'testname', 'test@mail.ru', 'Необходимо создать приложение-задачник.\r\nЗадачи состоят из:\r\n- имени пользователя;\r\n- е-mail;\r\n- текста задачи;', 0),
(3, 'gbhjkjhj', 'cn@mail.ri', 'Message: Cannot modify header information - headers already sent by\r\n\r\nFilename: core/Common.php\r\n\r\nLine Number: 570', 0),
(4, 'srdtfghbjk', 'fcghbj@ujh.gh', 'fttugy go oygygoo ooygyugiyyu g yyg o g  yo  yuoyuyuoyo  u gg uyggh yugubh jh ghg ghbh yugj guy guy gygyugyuguygy gugkkhjgk', 0),
(5, 'srdtfghbjk', 'fcghbj@ujh.gh', 'fttugy go oygygoo ooygyugiyyu g yyg o g  yo  yuoyuyuoyo  u gg uyggh yugubh jh ghg ghbh yugj guy guy gygyugyuguygy gugkkhjgk', 0),
(6, 'testname', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA\r\nAAAAA BBBBBBB', 1),
(7, 'testname', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA\r\nAAAAA BBBBBBB', 0),
(9, 'AAA', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 0),
(10, 'AAA', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 1),
(11, 'AAA', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 0),
(12, 'AAA', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 0),
(13, 'AAA', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 0),
(15, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 0),
(16, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(17, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(18, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(19, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(20, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(21, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(22, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(23, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(24, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(25, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(26, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(27, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(28, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(29, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(30, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(31, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(32, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(33, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(34, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(35, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(36, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(37, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(38, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(39, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(40, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(41, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(42, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(43, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(44, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(45, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(46, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(47, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(48, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(49, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(50, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(51, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(52, 'testname', 'a@mail.ru', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи; AAAAAAAAAAAA AAAAA BBBBBBB', 0),
(53, 'skgjskg', 'jovidaliev@gmail.com', '<textarea>hsdgsdbsdf dbf f dksf dkdd dsd ,g dsjg sdg s,dng dgnsdkgn sdngsn gdng sdg sjd</textarea>', 0),
(54, 'ABC', 'cn@mail.ri', 'Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;Необходимо создать приложение-задачник. Задачи состоят из: - имени пользователя; - е-mail; - текста задачи;', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
