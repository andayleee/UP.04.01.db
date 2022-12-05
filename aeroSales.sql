-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Дек 05 2022 г., 13:36
-- Версия сервера: 5.7.34
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aeroSales`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cheque`
--

CREATE TABLE `cheque` (
  `id` bigint(20) NOT NULL,
  `date_of_form` date DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cheque`
--

INSERT INTO `cheque` (`id`, `date_of_form`, `link`) VALUES
(57, '2022-12-01', '12'),
(58, '2022-12-02', '13'),
(59, '2022-12-05', '143');

-- --------------------------------------------------------

--
-- Структура таблицы `contract`
--

CREATE TABLE `contract` (
  `id` bigint(20) NOT NULL,
  `carrier_co_name` varchar(255) DEFAULT NULL,
  `date_of_form` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contract`
--

INSERT INTO `contract` (`id`, `carrier_co_name`, `date_of_form`) VALUES
(1, 'Аэрофлот', '2022-02-02'),
(2, 'Победа', '2022-12-01'),
(3, 'S7', '2022-11-08'),
(4, 'UralAirlines', '2022-12-16'),
(6, 'ЮтЭир', '2022-12-01');

-- --------------------------------------------------------

--
-- Структура таблицы `co_account`
--

CREATE TABLE `co_account` (
  `id` bigint(20) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `name_of_bank` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `co_account`
--

INSERT INTO `co_account` (`id`, `account`, `name_of_bank`) VALUES
(3, '563784763789', 'OOO\"Сбер\"'),
(4, '784375632232', 'АО\"Тинькоф Банк\"'),
(5, '546378476378', 'ООО\"БанкКрасавцев\"');

-- --------------------------------------------------------

--
-- Структура таблицы `financial_report`
--

CREATE TABLE `financial_report` (
  `id` bigint(20) NOT NULL,
  `date_of_form` date DEFAULT NULL,
  `total_income` double NOT NULL,
  `total_payments` double NOT NULL,
  `name_of_ba_id` bigint(20) DEFAULT NULL,
  `user_na_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `financial_report`
--

INSERT INTO `financial_report` (`id`, `date_of_form`, `total_income`, `total_payments`, `name_of_ba_id`, `user_na_id`) VALUES
(1, '2022-12-06', 17, 12, 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `flight`
--

CREATE TABLE `flight` (
  `id` bigint(20) NOT NULL,
  `coast` double NOT NULL,
  `date_of_flight` date NOT NULL,
  `point_of_arrival` varchar(255) DEFAULT NULL,
  `point_of_departure` varchar(255) DEFAULT NULL,
  `time_of_arrival` time NOT NULL,
  `time_of_departure` time NOT NULL,
  `carrier_co_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `flight`
--

INSERT INTO `flight` (`id`, `coast`, `date_of_flight`, `point_of_arrival`, `point_of_departure`, `time_of_arrival`, `time_of_departure`, `carrier_co_id`) VALUES
(3, 30990, '2022-12-13', 'Сочиkkk', 'Москва', '02:02:02', '04:04:04', 1),
(4, 42990, '2022-12-08', 'Екатеринбург', 'Москва', '07:07:02', '12:30:00', 1),
(5, 5990, '2022-12-06', 'Санкт-Петербург', 'Москва', '12:00:00', '11:00:00', 1),
(6, 23990, '2022-12-13', 'Рига', 'Москва', '14:00:00', '11:00:00', 1),
(7, 98990, '2022-12-05', 'Варшава', 'Москва', '17:59:00', '16:30:00', 1),
(8, 30990, '2022-02-02', 'Калининград', 'Москва', '12:00:00', '10:00:00', 1),
(9, 30990, '2022-02-02', 'Казань', 'Москва', '12:00:00', '10:00:00', 1),
(10, 30990, '2022-02-02', 'Владивосток', 'Москва', '12:00:00', '10:00:00', 1),
(11, 30990, '2022-02-02', 'Берлин', 'Москва', '12:00:00', '10:00:00', 1),
(12, 30990, '2022-02-02', 'Париж', 'Москва', '12:00:00', '10:00:00', 1),
(13, 30990, '2022-02-02', 'Вологда', 'Москва', '12:00:00', '10:00:00', 1),
(14, 30990, '2022-02-02', 'Воркута', 'Москва', '12:00:00', '10:00:00', 1),
(15, 30990, '2022-02-02', 'Адлер', 'Москва', '12:00:00', '10:00:00', 1),
(16, 30990, '2022-02-02', 'Талин', 'Москва', '12:00:00', '10:00:00', 1),
(17, 30990, '2022-02-02', 'Минск', 'Москва', '12:00:00', '10:00:00', 1),
(18, 30990, '2022-02-02', 'Киев', 'Москва', '12:00:00', '10:00:00', 1),
(19, 30990, '2022-02-02', 'Ташкент', 'Москва', '12:00:00', '10:00:00', 1),
(20, 30990, '2022-02-02', 'Ашхабад', 'Москва', '12:00:00', '10:00:00', 1),
(47, 5990, '2022-12-01', 'Москва', 'Санкт-Петербург', '04:04:04', '02:02:02', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `flight_seat`
--

CREATE TABLE `flight_seat` (
  `seat_id` bigint(20) NOT NULL,
  `flight_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(61);

-- --------------------------------------------------------

--
-- Структура таблицы `requisites`
--

CREATE TABLE `requisites` (
  `id` bigint(20) NOT NULL,
  `inn` varchar(255) DEFAULT NULL,
  `kpp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `requisites`
--

INSERT INTO `requisites` (`id`, `inn`, `kpp`) VALUES
(1, '4365761879809000', '3479867378918000'),
(3, '545768798788', '354657687988'),
(4, '456780000', '34560000');

-- --------------------------------------------------------

--
-- Структура таблицы `seat`
--

CREATE TABLE `seat` (
  `id` bigint(20) NOT NULL,
  `place` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seat`
--

INSERT INTO `seat` (`id`, `place`) VALUES
(23, 'A1'),
(24, 'A2'),
(27, 'A4'),
(28, 'A5'),
(43, 'В1'),
(44, 'В2'),
(45, 'В3'),
(46, 'В4');

-- --------------------------------------------------------

--
-- Структура таблицы `tax_return`
--

CREATE TABLE `tax_return` (
  `id` bigint(20) NOT NULL,
  `ammount_of_tax` double NOT NULL,
  `date_of_form` date DEFAULT NULL,
  `name_of_ba_id` bigint(20) DEFAULT NULL,
  `req_id` bigint(20) DEFAULT NULL,
  `user_na_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tax_return`
--

INSERT INTO `tax_return` (`id`, `ammount_of_tax`, `date_of_form`, `name_of_ba_id`, `req_id`, `user_na_id`) VALUES
(1, 20099555, '2022-12-02', 3, 3, 1),
(4, 2, '2022-12-02', 3, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket`
--

CREATE TABLE `ticket` (
  `id` bigint(20) NOT NULL,
  `count_clients_seats` int(11) NOT NULL,
  `date_of_booking` date NOT NULL,
  `date_of_end_booking` date NOT NULL,
  `cheque_id` bigint(20) DEFAULT NULL,
  `ticket_li_id` bigint(20) DEFAULT NULL,
  `user_na_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ticket`
--

INSERT INTO `ticket` (`id`, `count_clients_seats`, `date_of_booking`, `date_of_end_booking`, `cheque_id`, `ticket_li_id`, `user_na_id`) VALUES
(60, 23, '2022-12-01', '2022-12-02', 59, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `ticket_list`
--

CREATE TABLE `ticket_list` (
  `id` bigint(20) NOT NULL,
  `date_of_form` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ticket_list`
--

INSERT INTO `ticket_list` (`id`, `date_of_form`) VALUES
(2, '2022-12-11'),
(3, '2022-12-14'),
(4, '2022-12-12'),
(5, '2022-12-12'),
(6, '2022-12-01'),
(7, '2022-12-22'),
(8, '2022-12-26'),
(9, '2022-12-13'),
(10, '2022-12-27');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_namee` varchar(255) DEFAULT NULL,
  `user_patr` varchar(255) DEFAULT NULL,
  `user_sur` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `active`, `password`, `user_namee`, `user_patr`, `user_sur`, `username`) VALUES
(1, b'1', '$2a$08$Wd7DI3vjAkjFTzmj/yMU6OVsXX2RxugB4jVfkR4EhnojyVyRdhajO', 'Иван', 'Иванович', 'Иванов', 'zxc'),
(3, b'1', '$2a$08$ANalnZICIgI06f620cWh0uO3OXgKtg8yY6KfJUVM/7qAD0ZEpKF86', 'Андрей', 'Алексеевич', 'Аксенов', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_role`
--

INSERT INTO `user_role` (`user_id`, `roles`) VALUES
(1, 'ADMIN'),
(3, 'USER');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cheque`
--
ALTER TABLE `cheque`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `co_account`
--
ALTER TABLE `co_account`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `financial_report`
--
ALTER TABLE `financial_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlhwdiupwjk752a1gj4kqku6l9` (`name_of_ba_id`),
  ADD KEY `FK2cmm1ehv2ymc2jpnuftkgje74` (`user_na_id`);

--
-- Индексы таблицы `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsfcx1hm43n4wfyhq1wk2q8xn5` (`carrier_co_id`);

--
-- Индексы таблицы `flight_seat`
--
ALTER TABLE `flight_seat`
  ADD KEY `FKc9a3xu176fgmgwxbtti5hir7n` (`flight_id`),
  ADD KEY `FK4kvkcm3o63n7qcis2vwhcvw0a` (`seat_id`);

--
-- Индексы таблицы `requisites`
--
ALTER TABLE `requisites`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tax_return`
--
ALTER TABLE `tax_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKefnrjgjedmhmx68ayvcmnsrdf` (`name_of_ba_id`),
  ADD KEY `FK9lra3jepweyexg8qfnunt8ecf` (`req_id`),
  ADD KEY `FKqm8jml630jmw2xqy78hblnr3d` (`user_na_id`);

--
-- Индексы таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjalq3807mdm8iw2woggp6l2on` (`cheque_id`),
  ADD KEY `FKamq90jx15whjuv44khpemibsu` (`ticket_li_id`),
  ADD KEY `FKk10kxg36kii9n1enfajregqtw` (`user_na_id`);

--
-- Индексы таблицы `ticket_list`
--
ALTER TABLE `ticket_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contract`
--
ALTER TABLE `contract`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `co_account`
--
ALTER TABLE `co_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `financial_report`
--
ALTER TABLE `financial_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `requisites`
--
ALTER TABLE `requisites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tax_return`
--
ALTER TABLE `tax_return`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `ticket_list`
--
ALTER TABLE `ticket_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `financial_report`
--
ALTER TABLE `financial_report`
  ADD CONSTRAINT `FK2cmm1ehv2ymc2jpnuftkgje74` FOREIGN KEY (`user_na_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKlhwdiupwjk752a1gj4kqku6l9` FOREIGN KEY (`name_of_ba_id`) REFERENCES `co_account` (`id`);

--
-- Ограничения внешнего ключа таблицы `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `FKsfcx1hm43n4wfyhq1wk2q8xn5` FOREIGN KEY (`carrier_co_id`) REFERENCES `contract` (`id`);

--
-- Ограничения внешнего ключа таблицы `flight_seat`
--
ALTER TABLE `flight_seat`
  ADD CONSTRAINT `FK4kvkcm3o63n7qcis2vwhcvw0a` FOREIGN KEY (`seat_id`) REFERENCES `seat` (`id`),
  ADD CONSTRAINT `FKc9a3xu176fgmgwxbtti5hir7n` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`);

--
-- Ограничения внешнего ключа таблицы `tax_return`
--
ALTER TABLE `tax_return`
  ADD CONSTRAINT `FK9lra3jepweyexg8qfnunt8ecf` FOREIGN KEY (`req_id`) REFERENCES `requisites` (`id`),
  ADD CONSTRAINT `FKefnrjgjedmhmx68ayvcmnsrdf` FOREIGN KEY (`name_of_ba_id`) REFERENCES `co_account` (`id`),
  ADD CONSTRAINT `FKqm8jml630jmw2xqy78hblnr3d` FOREIGN KEY (`user_na_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FKamq90jx15whjuv44khpemibsu` FOREIGN KEY (`ticket_li_id`) REFERENCES `ticket_list` (`id`),
  ADD CONSTRAINT `FKjalq3807mdm8iw2woggp6l2on` FOREIGN KEY (`cheque_id`) REFERENCES `cheque` (`id`),
  ADD CONSTRAINT `FKk10kxg36kii9n1enfajregqtw` FOREIGN KEY (`user_na_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
