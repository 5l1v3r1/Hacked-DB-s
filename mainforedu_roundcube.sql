-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2019 at 07:29 PM
-- Server version: 10.3.11-MariaDB-1:10.3.11+maria~stretch
-- PHP Version: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mainforedu_roundcube`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `cache_key` varchar(128) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_index`
--

CREATE TABLE `cache_index` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` datetime DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_messages`
--

CREATE TABLE `cache_messages` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_shared`
--

CREATE TABLE `cache_shared` (
  `cache_key` varchar(255) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cache_thread`
--

CREATE TABLE `cache_thread` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contactgroupmembers`
--

CREATE TABLE `contactgroupmembers` (
  `contactgroup_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactgroupmembers`
--

INSERT INTO `contactgroupmembers` (`contactgroup_id`, `contact_id`, `created`) VALUES
(1, 4, '2017-02-01 17:12:34'),
(1, 5, '2017-02-01 17:12:42'),
(1, 6, '2017-02-01 17:12:44'),
(1, 7, '2017-02-01 17:12:37'),
(1, 8, '2017-02-01 17:12:32'),
(1, 9, '2017-02-01 17:12:30'),
(1, 10, '2017-02-01 17:12:39'),
(3, 53, '2017-02-06 21:05:45'),
(3, 54, '2017-02-06 21:05:57'),
(3, 55, '2017-02-06 21:02:46'),
(3, 56, '2017-02-06 21:06:02'),
(3, 57, '2017-02-06 21:06:13'),
(3, 59, '2017-02-06 21:06:22'),
(3, 60, '2017-02-06 21:03:07'),
(4, 32, '2017-03-21 19:19:47'),
(4, 34, '2017-02-10 17:20:45'),
(4, 35, '2017-02-10 17:17:56'),
(4, 36, '2017-02-10 17:20:20'),
(4, 38, '2017-02-10 17:19:23'),
(4, 77, '2017-02-21 20:00:21'),
(4, 78, '2017-02-21 20:00:58'),
(4, 79, '2017-02-21 20:01:22'),
(5, 58, '2017-03-13 19:16:37'),
(5, 61, '2017-02-10 17:19:50'),
(5, 62, '2017-02-10 17:19:36'),
(5, 63, '2017-02-10 17:19:44'),
(5, 66, '2017-03-13 19:14:44'),
(5, 71, '2017-05-03 20:47:05'),
(5, 84, '2017-03-13 19:16:03'),
(6, 70, '2017-02-10 17:18:21'),
(6, 106, '2017-09-19 10:57:15'),
(6, 107, '2017-09-19 10:58:04'),
(6, 108, '2017-09-19 10:58:40'),
(6, 109, '2017-09-28 09:19:04'),
(7, 65, '2017-07-18 08:01:41'),
(8, 51, '2017-09-28 09:18:52'),
(8, 97, '2017-09-04 09:38:33'),
(8, 98, '2017-09-04 09:39:00'),
(8, 99, '2017-09-04 10:04:52'),
(8, 100, '2017-09-04 10:05:33'),
(8, 101, '2017-09-04 10:06:01'),
(8, 102, '2017-09-04 10:07:01'),
(8, 103, '2017-09-04 11:00:29'),
(8, 104, '2017-09-04 11:06:16'),
(8, 105, '2017-09-04 11:13:24'),
(8, 110, '2017-09-29 09:26:08'),
(8, 111, '2017-09-29 09:26:28'),
(8, 112, '2017-09-29 09:26:47'),
(8, 113, '2017-09-29 09:27:08'),
(9, 154, '2018-09-19 00:25:08'),
(9, 155, '2018-09-19 00:25:08'),
(9, 156, '2018-09-19 00:25:08'),
(9, 157, '2018-09-19 00:25:08'),
(9, 158, '2018-09-19 00:25:08'),
(9, 159, '2018-09-19 00:25:08'),
(9, 160, '2018-09-19 00:25:08'),
(9, 161, '2018-09-19 00:25:08'),
(9, 162, '2018-09-19 00:25:08'),
(9, 163, '2018-09-19 00:25:08'),
(9, 164, '2018-09-19 00:25:08'),
(9, 165, '2018-09-19 00:25:08'),
(9, 166, '2018-09-19 00:25:08'),
(9, 167, '2018-09-19 00:25:08'),
(9, 168, '2018-09-19 00:25:08'),
(9, 169, '2018-09-19 00:25:08'),
(9, 170, '2018-09-19 00:25:08'),
(9, 171, '2018-09-19 00:25:08'),
(9, 172, '2018-09-19 00:25:08'),
(9, 173, '2018-09-19 00:25:08'),
(9, 174, '2018-09-19 00:25:08'),
(9, 175, '2018-09-19 00:25:08'),
(9, 176, '2018-09-19 00:25:08'),
(9, 177, '2018-09-19 00:25:08'),
(9, 178, '2018-09-19 00:25:08'),
(9, 179, '2018-09-19 00:25:08'),
(9, 180, '2018-09-19 00:25:08'),
(9, 181, '2018-09-19 00:25:08'),
(9, 182, '2018-09-19 00:25:08'),
(9, 183, '2018-09-19 00:25:08'),
(9, 184, '2018-09-19 00:25:08'),
(9, 185, '2018-09-19 00:25:08'),
(9, 186, '2018-09-19 00:25:08'),
(9, 187, '2018-09-19 00:25:08'),
(9, 188, '2018-09-19 00:25:08'),
(9, 189, '2018-09-19 00:25:08'),
(9, 190, '2018-09-19 00:25:08'),
(9, 191, '2018-09-19 00:25:08'),
(9, 192, '2018-09-19 00:25:08'),
(9, 193, '2018-09-19 00:25:08'),
(9, 194, '2018-09-19 00:25:08'),
(9, 195, '2018-09-19 00:25:08'),
(9, 196, '2018-09-19 00:25:08'),
(9, 197, '2018-09-19 00:25:08'),
(9, 198, '2018-09-19 00:25:08'),
(9, 199, '2018-09-19 00:25:08'),
(9, 200, '2018-09-19 00:25:08'),
(9, 201, '2018-09-19 00:25:08'),
(9, 202, '2018-09-19 00:25:08'),
(9, 203, '2018-09-19 00:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `contactgroups`
--

CREATE TABLE `contactgroups` (
  `contactgroup_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactgroups`
--

INSERT INTO `contactgroups` (`contactgroup_id`, `user_id`, `changed`, `del`, `name`) VALUES
(1, 21, '2017-02-10 17:17:31', 1, 'B2 L&X 13.30'),
(2, 10, '2017-02-02 08:04:43', 1, 'direcciones'),
(3, 21, '2017-09-28 09:18:32', 1, 'B2 L&X 20.00'),
(4, 21, '2017-09-28 09:18:26', 1, 'B1 M&J 19.30'),
(5, 21, '2017-09-28 09:18:37', 1, 'C1 L&X 18.00'),
(6, 21, '2017-02-10 17:18:16', 0, 'Mainfor'),
(7, 21, '2017-09-28 09:18:43', 1, 'C1 M&J 18.00'),
(8, 21, '2017-09-04 09:38:28', 0, 'Seguimiento Online'),
(9, 147, '2018-09-19 00:07:01', 0, 'ALUMNOS CIBERSEGURIDAD');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `firstname` varchar(128) NOT NULL DEFAULT '',
  `surname` varchar(128) NOT NULL DEFAULT '',
  `vcard` longtext DEFAULT NULL,
  `words` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `changed`, `del`, `name`, `email`, `firstname`, `surname`, `vcard`, `words`, `user_id`) VALUES
(1, '2017-01-31 11:41:18', 0, 'rocio borrego', 'rborrego@mainfor.edu.es', 'rocio', 'borrego', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:borrego;rocio;;;\r\nFN:rocio borrego\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rocio borrego rborrego@mainfor.edu.es', 14),
(2, '2017-01-31 13:24:39', 0, 'Laura Ruiz', 'lruizg@mainfor.edu.es', 'Laura', 'Ruiz', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Ruiz;Laura;;;\r\nFN:Laura Ruiz\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:lruizg@mainfor.edu.es\r\nEND:VCARD', ' laura ruiz lruizg@mainfor.edu.es', 11),
(3, '2017-01-31 13:24:58', 0, 'Alfonso García', 'agarcia@mainfor.edu.es', 'Alfonso', 'García', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:García;Alfonso;;;\r\nFN:Alfonso García\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:agarcia@mainfor.edu.es\r\nEND:VCARD', ' alfonso garcia agarcia@mainfor.edu.es', 11),
(4, '2017-02-01 11:42:10', 0, 'Javier Bautista', 'javibautista92@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Javier Bautista\r\nEMAIL;TYPE=INTERNET:javibautista92@gmail.com\r\nEND:VCARD', ' javibautista92@gmail.com javier bautista', 21),
(5, '2017-02-01 11:42:11', 0, 'Salvador Fernández', 'salvadorfernandezg@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Salvador Fernández\r\nEMAIL;TYPE=INTERNET:salvadorfernandezg@gmail.com\r\nEND:VCARD', ' salvadorfernandezg@gmail.com salvador fernandez', 21),
(6, '2017-02-01 11:42:12', 0, 'Salvador García', 'sal_va_18@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Salvador García\r\nEMAIL;TYPE=INTERNET:sal_va_18@hotmail.com\r\nEND:VCARD', ' sal_va_18@hotmail.com salvador garcia', 21),
(7, '2017-02-01 11:42:13', 0, 'Miguel Pardal', 'mpardalm@outlook.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Miguel Pardal\r\nEMAIL;TYPE=INTERNET:mpardalm@outlook.com\r\nEND:VCARD', ' mpardalm@outlook.com migul pardal', 21),
(8, '2017-02-01 11:42:14', 0, 'Cristina Pino', 'crpinoj@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Cristina Pino\r\nEMAIL;TYPE=INTERNET:crpinoj@gmail.com\r\nEND:VCARD', ' crpinoj@gmail.com cristina pino', 21),
(9, '2017-02-01 11:42:16', 0, 'Ángeles Rodríguez', 'angelesrodriguez_sanchez@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Ángeles Rodríguez\r\nEMAIL;TYPE=INTERNET:angelesrodriguez_sanchez@hotmail.com\r\nEND:VCARD', ' angelesrodriguz_sanchez@hotmail.com angeles rodriguz', 21),
(10, '2017-02-01 11:42:17', 0, 'Pablo Rueda', 'pablo.rueda.1991@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Pablo Rueda\r\nEMAIL;TYPE=INTERNET:pablo.rueda.1991@gmail.com\r\nEND:VCARD', ' pablo.ruda.1991@gmail.com pablo ruda', 21),
(11, '2017-02-01 14:48:06', 0, 'Laura Ruiz', 'lruizg@mainfor.edu.es', 'Laura', 'Ruiz', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Ruiz;Laura;;;\r\nFN:Laura Ruiz\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:lruizg@mainfor.edu.es\r\nEND:VCARD', ' laura ruiz lruizg@mainfor.edu.es', 22),
(12, '2017-02-01 22:29:22', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 20),
(13, '2017-02-02 08:05:06', 0, 'Laura Ruiz', 'lruizg@mainfor.edu.es', 'Laura', 'Ruiz', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Ruiz;Laura;;;\r\nFN:Laura Ruiz\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:lruizg@mainfor.edu.es\r\nEND:VCARD', ' laura ruiz lruizg@mainfor.edu.es', 10),
(14, '2017-02-03 07:29:54', 0, 'Sergio Postigo Gutiérrez', 'spostigo@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Sergio Postigo Gutiérrez\r\nEMAIL;TYPE=INTERNET:spostigo@mainfor.edu.es\r\nEND:VCARD', ' spostigo@mainfor.edu.es sergio postigo gutierrez', 21),
(15, '2017-02-06 21:00:20', 0, 'Sonia Antelo', 'so2ju4@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Sonia Antelo\r\nEMAIL;TYPE=INTERNET:so2ju4@hotmail.com\r\nEND:VCARD', ' so2ju4@hotmail.com sonia antelo', 21),
(16, '2017-02-06 21:00:21', 0, 'Mohamed Drissib', 'mohamed_drissib@outlook.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mohamed Drissib\r\nEMAIL;TYPE=INTERNET:mohamed_drissib@outlook.com\r\nEND:VCARD', ' mohamed_drissib@outlook.com mohamed drissib', 21),
(17, '2017-02-06 21:00:22', 0, 'Laura Galán Reyes', 'lauragalanreyes@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Galán Reyes\r\nEMAIL;TYPE=INTERNET:lauragalanreyes@hotmail.com\r\nEND:VCARD', ' lauragalanreyes@hotmail.com laura galan reyes', 21),
(18, '2017-02-06 21:00:24', 0, 'Belén Hidalgo', 'belenhidalgo5@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Belén Hidalgo\r\nEMAIL;TYPE=INTERNET:belenhidalgo5@hotmail.com\r\nEND:VCARD', ' belenhidalgo5@hotmail.com belen hidalgo', 21),
(19, '2017-02-06 21:00:26', 0, 'Carolina Bueno Pérez', 'carolinabuenoperez92@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Carolina Bueno Pérez\r\nEMAIL;TYPE=INTERNET:carolinabuenoperez92@gmail.com\r\nEND:VCARD', ' carolinabunoperez92@gmail.com carolina buno perez', 21),
(20, '2017-02-06 21:00:27', 0, 'Vanessa', 'vane1990_14@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Vanessa\r\nEMAIL;TYPE=INTERNET:vane1990_14@hotmail.com\r\nEND:VCARD', ' vane1990_14@hotmail.com vanessa', 21),
(21, '2017-02-06 21:00:28', 0, 'Marta Oliva', 'molivaalvarez@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Marta Oliva\r\nEMAIL;TYPE=INTERNET:molivaalvarez@hotmail.com\r\nEND:VCARD', ' molivaalvarez@hotmail.com marta oliva', 21),
(22, '2017-02-06 21:00:30', 0, 'Ángela RG', 'angelarg16@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Ángela RG\r\nEMAIL;TYPE=INTERNET:angelarg16@gmail.com\r\nEND:VCARD', ' angelarg16@gmail.com angela rg', 21),
(23, '2017-02-06 21:00:33', 0, 'Montserrat Tello', 'maria.922657@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Montserrat Tello\r\nEMAIL;TYPE=INTERNET:maria.922657@gmail.com\r\nEND:VCARD', ' maria.922657@gmail.com montserrat tello', 21),
(24, '2017-02-06 21:00:34', 0, 'Joshua VR', 'joshua.v.r@hotmail.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Joshua VR\r\nEMAIL;TYPE=INTERNET:joshua.v.r@hotmail.es\r\nEND:VCARD', ' joshua.v.r@hotmail.es joshua vr', 21),
(25, '2017-02-06 21:00:35', 0, 'Miriam Benítez Martín', 'miri_malaga@hotmail.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Miriam Benítez Martín\r\nEMAIL;TYPE=INTERNET:miri_malaga@hotmail.es\r\nEND:VCARD', ' miri_malaga@hotmail.es miriam benitez martin', 21),
(26, '2017-02-06 21:00:36', 0, 'Tomás Azcárate González', 'tomas.azcarate93@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Tomás Azcárate González\r\nEMAIL;TYPE=INTERNET:tomas.azcarate93@gmail.com\r\nEND:VCARD', ' tomas.azcarate93@gmail.com tomas azcarate gonzalez', 21),
(27, '2017-02-06 21:00:37', 0, 'Olga Jiménez Ramal', 'olgajimenezramal@hotmail.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Olga Jiménez Ramal\r\nEMAIL;TYPE=INTERNET:olgajimenezramal@hotmail.es\r\nEND:VCARD', ' olgajimenezramal@hotmail.es olga jimenez ramal', 21),
(28, '2017-02-06 21:00:39', 0, 'Claudia Mérida Ordóñez', 'claudia.kalu94@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Claudia Mérida Ordóñez\r\nEMAIL;TYPE=INTERNET:claudia.kalu94@hotmail.com\r\nEND:VCARD', ' claudia.kalu94@hotmail.com claudia merida ordonez', 21),
(29, '2017-02-06 21:00:40', 0, 'Jose Carlos Nieto Martín', 'nietens@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Jose Carlos Nieto Martín\r\nEMAIL;TYPE=INTERNET:nietens@hotmail.com\r\nEND:VCARD', ' nietens@hotmail.com jose carlos nieto martin', 21),
(30, '2017-02-06 21:00:42', 0, 'Mª Araceli Muñoz Pineda', 'aramp1993@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mª Araceli Muñoz Pineda\r\nEMAIL;TYPE=INTERNET:aramp1993@gmail.com\r\nEND:VCARD', ' aramp1993@gmail.com mª araceli munoz pineda', 21),
(31, '2017-02-06 21:00:43', 0, 'Miguel Regal Somet', 'miguel17regal@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Miguel Regal Somet\r\nEMAIL;TYPE=INTERNET:miguel17regal@gmail.com\r\nEND:VCARD', ' migul17regal@gmail.com migul regal somet', 21),
(32, '2017-03-21 19:19:39', 0, 'Ángeles Lanzas', 'anlamo66@hotmail.com', 'Ángeles', 'Lanzas', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Lanzas;Ángeles;;;\r\nFN:Ángeles Lanzas\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:anlamo66@hotmail.com\r\nEND:VCARD', ' angeles lanzas anlamo66@hotmail.com', 21),
(33, '2017-02-06 21:00:46', 0, 'Yolanda Cobos', 'yolanda9640@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Yolanda Cobos\r\nEMAIL;TYPE=INTERNET:yolanda9640@gmail.com\r\nEND:VCARD', ' yolanda9640@gmail.com yolanda cobos', 21),
(34, '2017-02-06 21:00:47', 0, 'Mayte Villar', 'maytevillarperez@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mayte Villar\r\nEMAIL;TYPE=INTERNET:maytevillarperez@gmail.com\r\nEND:VCARD', ' maytevillarperez@gmail.com mayte villar', 21),
(35, '2017-02-06 21:00:48', 0, 'Alejandro Espejo', 'alejandroespejot@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Alejandro Espejo\r\nEMAIL;TYPE=INTERNET:alejandroespejot@gmail.com\r\nEND:VCARD', ' alejandrospejot@gmail.com alejandro espejo', 21),
(36, '2017-02-06 21:00:49', 0, 'J Cordero Cazorla', 'jcorderocazorla@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:J Cordero Cazorla\r\nEMAIL;TYPE=INTERNET:jcorderocazorla@gmail.com\r\nEND:VCARD', ' jcorderocazorla@gmail.com cordero cazorla', 21),
(37, '2017-02-06 21:00:50', 0, 'Saúl Pariente', 'saulpariente13@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Saúl Pariente\r\nEMAIL;TYPE=INTERNET:saulpariente13@gmail.com\r\nEND:VCARD', ' saulpariente13@gmail.com saul pariente', 21),
(38, '2017-02-06 21:00:52', 0, 'Déborah Rojas Molina', 'deborahrojasmolina@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Déborah Rojas Molina\r\nEMAIL;TYPE=INTERNET:deborahrojasmolina@hotmail.com\r\nEND:VCARD', ' deborahrojasmolina@hotmail.com deborah rojas molina', 21),
(39, '2017-02-06 21:00:53', 0, 'Silvia', 'silviaag1988@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Silvia\r\nEMAIL;TYPE=INTERNET:silviaag1988@gmail.com\r\nEND:VCARD', ' silviaag1988@gmail.com silvia', 21),
(40, '2017-02-06 21:00:54', 0, 'Jesus_torres Tellez', 'jesus_torres_tellez@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Jesus_torres Tellez\r\nEMAIL;TYPE=INTERNET:jesus_torres_tellez@hotmail.com\r\nEND:VCARD', ' jesus_torres_tellez@hotmail.com jesus_torres tellez', 21),
(41, '2017-02-06 21:00:56', 0, 'Javier Fernández (B1 21.00)', 'javierqks@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Javier Fernández (B1 21.00)\r\nEMAIL;TYPE=INTERNET:javierqks@gmail.com\r\nEND:VCARD', ' javierqks@gmail.com javier fernandez (b12100)', 21),
(42, '2017-02-06 21:00:57', 0, 'Alejandro Jiménez', 'jale_jive94@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Alejandro Jiménez\r\nEMAIL;TYPE=INTERNET:jale_jive94@hotmail.com\r\nEND:VCARD', ' jale_jive94@hotmail.com alejandro jimenez', 21),
(43, '2017-02-06 21:00:58', 0, 'Alejandro Molina', 'molina.fernandez.am@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Alejandro Molina\r\nEMAIL;TYPE=INTERNET:molina.fernandez.am@gmail.com\r\nEND:VCARD', ' molina.fernandez.am@gmail.com alejandro molina', 21),
(44, '2017-02-06 21:01:00', 0, 'Manuel Sojo Cano', 'canmanuels@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Manuel Sojo Cano\r\nEMAIL;TYPE=INTERNET:canmanuels@gmail.com\r\nEND:VCARD', ' canmanuls@gmail.com manul sojo cano', 21),
(45, '2017-02-06 21:01:01', 0, 'Antonia Bermúdez', 'antoniabermudeez@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Antonia Bermúdez\r\nEMAIL;TYPE=INTERNET:antoniabermudeez@gmail.com\r\nEND:VCARD', ' antoniabermudeez@gmail.com antonia bermudez', 21),
(46, '2017-02-06 21:01:04', 0, 'Juan Luis Baquero', 'jlbaquero@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Juan Luis Baquero\r\nEMAIL;TYPE=INTERNET:jlbaquero@gmail.com\r\nEND:VCARD', ' jlbaquro@gmail.com juan luis baquro', 21),
(47, '2017-02-06 21:01:05', 0, 'Luis Vasallo', 'luisvasalloqks@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Luis Vasallo\r\nEMAIL;TYPE=INTERNET:luisvasalloqks@gmail.com\r\nEND:VCARD', ' luisvasalloqks@gmail.com luis vasallo', 21),
(48, '2017-02-06 21:01:06', 0, 'Claudia Bueno', 'claudiabueno@outlook.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Claudia Bueno\r\nEMAIL;TYPE=INTERNET:claudiabueno@outlook.es\r\nEND:VCARD', ' claudiabuno@outlook.es claudia buno', 21),
(49, '2017-02-06 21:01:08', 0, 'Julia González', 'juliagt78@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Julia González\r\nEMAIL;TYPE=INTERNET:juliagt78@gmail.com\r\nEND:VCARD', ' juliagt78@gmail.com julia gonzalez', 21),
(50, '2017-02-06 21:01:10', 0, 'Miryan Ramírez', 'miryanram@hotmail.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Miryan Ramírez\r\nEMAIL;TYPE=INTERNET:miryanram@hotmail.es\r\nEND:VCARD', ' miryanram@hotmail.es miryan ramirez', 21),
(51, '2017-09-28 09:18:56', 0, 'Carmen Ruiz', 'carumar08@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Carmen Ruiz\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:carumar08@hotmail.com\r\nEND:VCARD', ' carmen ruiz carumar08@hotmail.com', 21),
(52, '2017-02-06 21:01:27', 0, 'Rocío Domínguez', 'roxio__15@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rocío Domínguez\r\nEMAIL;TYPE=INTERNET:roxio__15@hotmail.com\r\nEND:VCARD', ' roxio__15@hotmail.com rocio dominguz', 21),
(53, '2017-02-06 21:01:28', 0, 'Antonia Díaz', 'pendulo217@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Antonia Díaz\r\nEMAIL;TYPE=INTERNET:pendulo217@gmail.com\r\nEND:VCARD', ' pendulo217@gmail.com antonia diaz', 21),
(54, '2017-02-06 21:01:29', 0, 'Diana Barrientos', 'diana_br26@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Diana Barrientos\r\nEMAIL;TYPE=INTERNET:diana_br26@hotmail.com\r\nEND:VCARD', ' diana_br26@hotmail.com diana barrientos', 21),
(55, '2017-02-06 21:01:31', 0, 'Alberto García', 'alberto4garcia@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Alberto García\r\nEMAIL;TYPE=INTERNET:alberto4garcia@hotmail.com\r\nEND:VCARD', ' alberto4garcia@hotmail.com alberto garcia', 21),
(56, '2017-02-06 21:01:33', 0, 'Eva Ostos', 'evita_om_86@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Eva Ostos\r\nEMAIL;TYPE=INTERNET:evita_om_86@hotmail.com\r\nEND:VCARD', ' evita_om_86@hotmail.com eva ostos', 21),
(57, '2017-02-06 21:01:35', 0, 'Juan Francisco Quilles', 'juanfraquilo@hotmail.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Juan Francisco Quilles\r\nEMAIL;TYPE=INTERNET:juanfraquilo@hotmail.es\r\nEND:VCARD', ' juanfraquilo@hotmail.es juan francisco quilles', 21),
(58, '2017-02-06 21:01:37', 0, 'Belén García', 'mbgarco@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Belén García\r\nEMAIL;TYPE=INTERNET:mbgarco@hotmail.com\r\nEND:VCARD', ' mbgarco@hotmail.com belen garcia', 21),
(59, '2017-02-06 21:01:38', 0, 'Mercedes Sánchez Medina', 'mercedes1994sm@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mercedes Sánchez Medina\r\nEMAIL;TYPE=INTERNET:mercedes1994sm@gmail.com\r\nEND:VCARD', ' mercedes1994sm@gmail.com mercedes sanchez medina', 21),
(60, '2017-02-06 21:01:40', 0, 'Ángela Sánchez González', 'angelasg93@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Ángela Sánchez González\r\nEMAIL;TYPE=INTERNET:angelasg93@hotmail.com\r\nEND:VCARD', ' angelasg93@hotmail.com angela sanchez gonzalez', 21),
(61, '2017-02-06 21:01:42', 0, 'Fernando Nicolás Jiménez Ortiz', 'nico.jimenez.ortiz@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Fernando Nicolás Jiménez Ortiz\r\nEMAIL;TYPE=INTERNET:nico.jimenez.ortiz@gmail.com\r\nEND:VCARD', ' nico.jimenez.ortiz@gmail.com fernando nicolas jimenez ortiz', 21),
(62, '2017-02-06 21:01:44', 0, 'Enrique Marfil', 'kikemarfil85@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Enrique Marfil\r\nEMAIL;TYPE=INTERNET:kikemarfil85@gmail.com\r\nEND:VCARD', ' kikemarfil85@gmail.com enriqu marfil', 21),
(63, '2017-02-06 21:01:45', 0, 'Fátima Martín', 'fatimamartin13@hotmail.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Fátima Martín\r\nEMAIL;TYPE=INTERNET:fatimamartin13@hotmail.es\r\nEND:VCARD', ' fatimamartin13@hotmail.es fatima martin', 21),
(64, '2017-02-06 21:01:47', 0, 'David de Orador Agüera', 'dcdeoradoraguera@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:David de Orador Agüera\r\nEMAIL;TYPE=INTERNET:dcdeoradoraguera@gmail.com\r\nEND:VCARD', ' dcdeoradoragura@gmail.com david de orador aguera', 21),
(65, '2017-02-06 21:01:48', 0, 'Susana Bueno Gallardo', 'mianmi.3110@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Susana Bueno Gallardo\r\nEMAIL;TYPE=INTERNET:mianmi.3110@gmail.com\r\nEND:VCARD', ' mianmi.3110@gmail.com susana buno gallardo', 21),
(66, '2017-02-06 21:01:50', 0, 'Noelia Téllez', 'noeliatelcas@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Noelia Téllez\r\nEMAIL;TYPE=INTERNET:noeliatelcas@gmail.com\r\nEND:VCARD', ' noliatelcas@gmail.com nolia tellez', 21),
(67, '2017-02-06 21:01:51', 0, 'Jose Antonio Fernández', 'josea.fernandez@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Jose Antonio Fernández\r\nEMAIL;TYPE=INTERNET:josea.fernandez@juntadeandalucia.es\r\nEND:VCARD', ' josea.fernandez@juntadeandalucia.es jose antonio fernandez', 21),
(68, '2017-02-06 21:01:53', 0, 'Mar Carrillo', 'marcarrillocastro15@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mar Carrillo\r\nEMAIL;TYPE=INTERNET:marcarrillocastro15@gmail.com\r\nEND:VCARD', ' marcarrillocastro15@gmail.com mar carrillo', 21),
(69, '2017-02-06 21:01:54', 0, 'Fernando Mellado', 'fernanmalaga@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Fernando Mellado\r\nEMAIL;TYPE=INTERNET:fernanmalaga@hotmail.com\r\nEND:VCARD', ' fernanmalaga@hotmail.com fernando mellado', 21),
(70, '2017-02-06 21:01:56', 0, 'Ángela Calleya Dan', 'acalleya@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Ángela Calleya Dan\r\nEMAIL;TYPE=INTERNET:acalleya@mainfor.edu.es\r\nEND:VCARD', ' acalleya@mainfor.edu.es angela calleya dan', 21),
(71, '2017-05-03 20:47:01', 0, 'Manolo Sánchez Fernández', 'manolosanchezf@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Manolo Sánchez Fernández\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:manolosanchezf@gmail.com\r\nEND:VCARD', ' manolo sanchez fernandez manolosanchezf@gmail.com', 21),
(72, '2017-02-09 09:46:56', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 8),
(73, '2017-02-09 18:48:24', 0, 'Rocio Borrego', 'rborrego@mainfor.edu.es', 'Rocio', 'Borrego', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Borrego;Rocio;;;\r\nFN:Rocio Borrego\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rocio borrego rborrego@mainfor.edu.es', 38),
(74, '2017-02-13 16:05:44', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 28),
(75, '2017-02-20 12:06:15', 0, 'Mauree, Venkatesen', 'vijay.mauree@itu.int', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mauree, Venkatesen\r\nEMAIL;TYPE=INTERNET:vijay.mauree@itu.int\r\nEND:VCARD', ' vijay.mauree@itu.int mauree venkatesen', 18),
(76, '2017-02-21 20:00:02', 0, 'Angeles Lanza', 'anlamo66@hotmail.com', 'Angeles', 'Lanza', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Lanza;Angeles;;;\r\nFN:Angeles Lanza\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:anlamo66@hotmail.com\r\nEND:VCARD', ' angeles lanza anlamo66@hotmail.com', 21),
(77, '2017-02-21 20:00:21', 0, 'Silvia Almayones', 'silviaag1988@gmail.com', 'Silvia', 'Almayones', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Almayones;Silvia;;;\r\nFN:Silvia Almayones\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:silviaag1988@gmail.com\r\nEND:VCARD', ' silvia almayones silviaag1988@gmail.com', 21),
(78, '2017-02-21 20:00:58', 0, 'Saul Pariente', 'saulpariente13@gmail.com', 'Saul', 'Pariente', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Pariente;Saul;;;\r\nFN:Saul Pariente\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:saulpariente13@gmail.com\r\nEND:VCARD', ' saul pariente saulpariente13@gmail.com', 21),
(79, '2017-02-21 20:01:22', 0, 'Yolanda Cobos', 'yolanda9640@gmail.com', 'Yolanda', 'Cobos', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Cobos;Yolanda;;;\r\nFN:Yolanda Cobos\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:yolanda9640@gmail.com\r\nEND:VCARD', ' yolanda cobos yolanda9640@gmail.com', 21),
(80, '2017-02-24 09:07:39', 0, 'Spostigo', 'spostigo@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Spostigo\r\nEMAIL;TYPE=INTERNET:spostigo@mainfor.edu.es\r\nEND:VCARD', ' spostigo@mainfor.edu.es spostigo', 18),
(81, '2017-03-02 08:47:27', 0, 'Carmen Martin', 'theartofcarmen@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Carmen Martin\r\nEMAIL;TYPE=INTERNET:theartofcarmen@gmail.com\r\nEND:VCARD', ' theartofcarmen@gmail.com carmen martin', 6),
(82, '2017-03-02 08:48:10', 0, 'rafa olmo matas', 'olmoft@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:rafa olmo matas\r\nEMAIL;TYPE=INTERNET:olmoft@hotmail.com\r\nEND:VCARD', ' olmoft@hotmail.com rafa olmo matas', 6),
(83, '2017-03-02 18:37:01', 0, 'Olga Ortega', 'olgaortegarobles@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Olga Ortega\r\nEMAIL;TYPE=INTERNET:olgaortegarobles@gmail.com\r\nEND:VCARD', ' olgaortegarobles@gmail.com olga ortega', 6),
(84, '2017-03-13 19:16:15', 0, 'Beatriz Guerrero García', 'beatrizguerrerogarcia1@gmail.com', 'Beatriz', 'Guerrero García', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Guerrero García;Beatriz;;;\r\nFN:Beatriz Guerrero García\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:beatrizguerrerogarcia1@gmail.com\r\nEND:VCARD', ' beatriz gurrero garcia beatrizgurrerogarcia1@gmail.com', 21),
(85, '2017-03-23 11:48:50', 0, 'Antonio Martínez Fernández', 'ajmartinez@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Antonio Martínez Fernández\r\nEMAIL;TYPE=INTERNET:ajmartinez@mainfor.edu.es\r\nEND:VCARD', ' ajmartinez@mainfor.edu.es antonio martinez fernandez', 19),
(86, '2017-03-23 11:50:02', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 30),
(87, '2017-03-30 22:13:03', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 58),
(88, '2017-04-25 10:01:44', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 40),
(89, '2017-05-08 11:34:15', 0, 'Mario Pulido', 'mpulido@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mario Pulido\r\nEMAIL;TYPE=INTERNET:mpulido@mainfor.edu.es\r\nEND:VCARD', ' mpulido@mainfor.edu.es mario pulido', 31),
(90, '2017-05-23 16:00:16', 0, 'Josean', 'josean@viverossananton.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Josean\r\nEMAIL;TYPE=INTERNET:josean@viverossananton.com\r\nEND:VCARD', ' josean@viverossananton.com josean', 21),
(91, '2017-05-23 16:00:18', 0, 'Rborrego', 'rborrego@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rborrego\r\nEMAIL;TYPE=INTERNET:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rborrego@mainfor.edu.es rborrego', 21),
(92, '2017-05-31 23:28:17', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 69),
(93, '2017-06-04 17:28:25', 0, 'Marina Roldán Moltó', 'marinarolmol@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Marina Roldán Moltó\r\nEMAIL;TYPE=INTERNET:marinarolmol@hotmail.com\r\nEND:VCARD', ' marinarolmol@hotmail.com marina roldan molto', 34),
(94, '2017-06-08 09:18:11', 0, 'Diana Pareja Prieto', 'diana_alblanco@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Diana Pareja Prieto\r\nEMAIL;TYPE=INTERNET:diana_alblanco@hotmail.com\r\nEND:VCARD', ' diana_alblanco@hotmail.com diana pareja prieto', 30),
(95, '2017-06-23 13:19:52', 0, 'Maria Jesus Chamorro Buzon', 'majechabuz@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Maria Jesus Chamorro Buzon\r\nEMAIL;TYPE=INTERNET:majechabuz@gmail.com\r\nEND:VCARD', ' majechabuz@gmail.com maria jesus chamorro buzon', 30),
(96, '2017-07-14 09:13:34', 0, 'Graciela Polo León', 'gracielapololeon@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Graciela Polo León\r\nEMAIL;TYPE=INTERNET:gracielapololeon@gmail.com\r\nEND:VCARD', ' gracielapololeon@gmail.com graciela polo leon', 30),
(97, '2017-09-04 09:38:09', 0, 'Rocío Martínez de Quel', 'rocio@mardequel.com', 'Rocío', 'Martínez de Quel', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Martínez de Quel;Rocío;;;\r\nFN:Rocío Martínez de Quel\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:rocio@mardequel.com\r\nEND:VCARD', ' rocio martinez de qul rocio@mardequl.com', 21),
(98, '2017-09-04 09:39:00', 0, 'Piero Orlandella', 'gestion@dabruno.com', 'Piero', 'Orlandella', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Orlandella;Piero;;;\r\nFN:Piero Orlandella\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:gestion@dabruno.com\r\nEND:VCARD', ' piero orlandella gestion@dabruno.com', 21),
(99, '2017-09-04 10:04:52', 0, 'Esther González Aguirre', 'katyesther@yahoo.com', 'Esther', 'González Aguirre', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:González Aguirre;Esther;;;\r\nFN:Esther González Aguirre\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:katyesther@yahoo.com\r\nEND:VCARD', ' esther gonzalez aguirre katyesther@yahoo.com', 21),
(100, '2017-09-04 10:05:33', 0, 'Juan José Forner', 'juanjoforner@hotmail.com', 'Juan José', 'Forner', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Forner;Juan José;;;\r\nFN:Juan José Forner\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:juanjoforner@hotmail.com\r\nEND:VCARD', ' juan jose forner juanjoforner@hotmail.com', 21),
(101, '2017-09-04 10:06:01', 0, 'Mónica Montoro Ariza', 'momal6@hotmail.com', 'Mónica', 'Montoro Ariza', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Montoro Ariza;Mónica;;;\r\nFN:Mónica Montoro Ariza\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:momal6@hotmail.com\r\nEND:VCARD', ' monica montoro ariza momal6@hotmail.com', 21),
(102, '2017-09-04 10:28:35', 0, 'Purificación Hidalgo Alfonso', 'puri-hidalgo@hotmail.com', 'Purificación', 'Hidalgo Alfonso', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Hidalgo Alfonso;Purificación;;;\r\nFN:Purificación Hidalgo Alfonso\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:puri-hidalgo@hotmail.com\r\nEND:VCARD', ' purificacion hidalgo alfonso puri hidalgo@hotmail.com', 21),
(103, '2017-09-04 11:00:29', 0, 'Marta Martín Rodríguez', 'martamartinrodriguez@gmail.com', 'Marta', 'Martín Rodríguez', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Martín Rodríguez;Marta;;;\r\nFN:Marta Martín Rodríguez\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:martamartinrodriguez@gmail.com\r\nEND:VCARD', ' marta martin rodriguz martamartinrodriguz@gmail.com', 21),
(104, '2017-09-04 11:06:16', 0, 'Jorge González García', 'jorge.gonzalez@maximovil.es', 'Jorge', 'González García', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:González García;Jorge;;;\r\nFN:Jorge González García\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:jorge.gonzalez@maximovil.es\r\nEND:VCARD', ' jorge gonzalez garcia jorge.gonzalez@maximovil.es', 21),
(105, '2017-09-04 11:13:24', 0, 'Jose Mª Bernal Barroso', 'jmbarroso@hotmail.com', 'Jose Mª', 'Bernal Barroso', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Bernal Barroso;Jose Mª;;;\r\nFN:Jose Mª Bernal Barroso\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:jmbarroso@hotmail.com\r\nEND:VCARD', ' jose mª bernal barroso jmbarroso@hotmail.com', 21),
(106, '2017-09-19 10:57:33', 0, 'Susana Pérez', 'sperez@mainfor.edu.es', 'Susana', 'Pérez', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Pérez;Susana;;;\r\nFN:Susana Pérez\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:sperez@mainfor.edu.es\r\nEND:VCARD', ' susana perez sperez@mainfor.edu.es', 21),
(107, '2017-09-19 10:58:16', 0, 'Javier Villalón', 'javier@mainfor.edu.es', 'Javier', 'Villalón', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Villalón;Javier;;;\r\nFN:Javier Villalón\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:javier@mainfor.edu.es\r\nEND:VCARD', ' javier villalon javier@mainfor.edu.es', 21),
(108, '2017-09-19 10:58:40', 0, 'Rocío Borrego', 'rborrego@mainfor.edu.es', 'Rocío', 'Borrego', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Borrego;Rocío;;;\r\nFN:Rocío Borrego\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rocio borrego rborrego@mainfor.edu.es', 21),
(109, '2017-09-28 09:18:05', 0, 'Carlos Trujillo Márquez', 'carlos.trujillo@idiomasandalucia.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Carlos Trujillo Márquez\r\nEMAIL;TYPE=INTERNET:carlos.trujillo@idiomasandalucia.com\r\nEND:VCARD', ' carlos.trujillo@idiomasandalucia.com carlos trujillo marquz', 21),
(110, '2017-09-29 09:26:03', 0, 'Isabel Navas', 'isabel.navas@vacationclub.com', 'Isabel', 'Navas', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Navas;Isabel;;;\r\nFN:Isabel Navas\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:isabel.navas@vacationclub.com\r\nEND:VCARD', ' isabel navas isabel.navas@vacationclub.com', 21),
(111, '2017-09-29 09:26:35', 0, 'Sonia Alonso', 'sonia.alonso@vacationclub.com', 'Sonia', 'Alonso', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Alonso;Sonia;;;\r\nFN:Sonia Alonso\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:sonia.alonso@vacationclub.com\r\nEND:VCARD', ' sonia alonso sonia.alonso@vacationclub.com', 21),
(112, '2017-09-29 09:26:56', 0, 'Mª del Mar Molina', 'mariadelmar.molinaflor@vacationclub.com', 'Mª del Mar', 'Molina', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Molina;Mª del Mar;;;\r\nFN:Mª del Mar Molina\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:mariadelmar.molinaflor@vacationclub.com\r\nEND:VCARD', ' mª del mar molina mariadelmar.molinaflor@vacationclub.com', 21),
(113, '2017-09-29 09:27:16', 0, 'Yajaira Espinosa', 'yajaira.espinosa@vacationclub.com', 'Yajaira', 'Espinosa', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Espinosa;Yajaira;;;\r\nFN:Yajaira Espinosa\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:yajaira.espinosa@vacationclub.com\r\nEND:VCARD', ' yajaira espinosa yajaira.espinosa@vacationclub.com', 21),
(114, '2018-09-10 18:16:15', 0, 'Laura Ruiz García', 'lruizg@mainfor.edu.es', 'Laura', 'Ruiz', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Ruiz;Laura;;;\r\nFN:Laura Ruiz García\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:lruizg@mainfor.edu.es\r\nEND:VCARD', ' laura ruiz garcia lruizg@mainfor.edu.es', 74),
(115, '2017-10-16 10:16:08', 0, 'laura ruiz garcia', 'Iruizg@mainfor.edu.es', 'laura ', 'ruiz garcia', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:ruiz garcia;laura ;;;\r\nFN:laura ruiz garcia\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:Iruizg@mainfor.edu.es\r\nEND:VCARD', ' laura ruiz garcia iruizg@mainfor.edu.es', 86),
(116, '2017-10-17 10:39:14', 0, 'Laura Ruíz García', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruíz García\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz garcia', 86),
(117, '2017-10-17 20:06:44', 0, 'Pilar Carmona', 'noreply@imfe.mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Pilar Carmona\r\nEMAIL;TYPE=INTERNET:noreply@imfe.mainfor.edu.es\r\nEND:VCARD', ' noreply@imfe.mainfor.edu.es pilar carmona', 86),
(118, '2017-11-15 22:21:05', 0, 'Carmen Rivas', 'carmen.rivas.salvador@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Carmen Rivas\r\nEMAIL;TYPE=INTERNET:carmen.rivas.salvador@juntadeandalucia.es\r\nEND:VCARD', ' carmen.rivas.salvador@juntadeandalucia.es carmen rivas', 6),
(119, '2017-11-15 22:21:07', 0, '\'Mª José Morales\'', 'mjmorales@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Mª José Morales\'\r\nEMAIL;TYPE=INTERNET:mjmorales@mainfor.edu.es\r\nEND:VCARD', ' mjmorales@mainfor.edu.es mª jose morales', 6),
(120, '2017-11-15 22:21:08', 0, '\'del Rosario Ramírez Mª\'', 'mrramirez@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'del Rosario Ramírez Mª\'\r\nEMAIL;TYPE=INTERNET:mrramirez@mainfor.edu.es\r\nEND:VCARD', ' mrramirez@mainfor.edu.es del rosario ramirez mª', 6),
(121, '2017-11-15 22:21:09', 0, '\'Sergio Postigo Gutiérrez\'', 'spostigo@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Sergio Postigo Gutiérrez\'\r\nEMAIL;TYPE=INTERNET:spostigo@mainfor.edu.es\r\nEND:VCARD', ' spostigo@mainfor.edu.es sergio postigo gutierrez', 6),
(122, '2017-11-17 08:21:59', 0, '\'Fco Javier Gómez Ruiz\'', 'fjgomez@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Fco Javier Gómez Ruiz\'\r\nEMAIL;TYPE=INTERNET:fjgomez@mainfor.edu.es\r\nEND:VCARD', ' fjgomez@mainfor.edu.es fco javier gomez ruiz', 12),
(123, '2017-11-23 11:45:26', 0, 'Ana Morales', 'amorales@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Ana Morales\r\nEMAIL;TYPE=INTERNET:amorales@mainfor.edu.es\r\nEND:VCARD', ' amorales@mainfor.edu.es ana morales', 68),
(124, '2017-11-23 11:45:30', 0, '\'Laura Casero\'', 'lcasero@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Laura Casero\'\r\nEMAIL;TYPE=INTERNET:lcasero@mainfor.edu.es\r\nEND:VCARD', ' lcasero@mainfor.edu.es laura casero', 68),
(125, '2017-11-24 11:19:59', 0, 'Paula Rodríguez Oña', 'pau1893@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Paula Rodríguez Oña\r\nEMAIL;TYPE=INTERNET:pau1893@hotmail.com\r\nEND:VCARD', ' pau1893@hotmail.com paula rodriguz ona', 21),
(126, '2017-11-28 14:31:37', 0, '\'Rocío Borrego\'', 'rborrego@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Rocío Borrego\'\r\nEMAIL;TYPE=INTERNET:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rborrego@mainfor.edu.es rocio borrego', 91),
(127, '2017-11-28 14:31:39', 0, 'Antonio J. Martínez', 'ajmartinez@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Antonio J. Martínez\r\nEMAIL;TYPE=INTERNET:ajmartinez@mainfor.edu.es\r\nEND:VCARD', ' ajmartinez@mainfor.edu.es antonio j. martinez', 91),
(128, '2017-12-11 11:39:49', 0, 'Marta Velasco Zamorano', 'mvelasco@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Marta Velasco Zamorano\r\nEMAIL;TYPE=INTERNET:mvelasco@mainfor.edu.es\r\nEND:VCARD', ' mvelasco@mainfor.edu.es marta velasco zamorano', 19),
(129, '2017-12-14 09:34:53', 0, 'Margarita Álvarez Sandetel', 'margarita.alvarez@juntadeandalucia.es', 'Margarita', 'Álvarez Sandetel', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Álvarez Sandetel;Margarita;;;\r\nFN:Margarita Álvarez Sandetel\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:margarita.alvarez@juntadeandalucia.es\r\nEND:VCARD', ' margarita alvarez sandetel margarita.alvarez@juntadeandalucia.es', 56),
(130, '2017-12-14 09:35:28', 0, 'Carmen Rivas Sandetel', 'carmen.rivas.salvador@juntadeandalucia.es', 'Carmen', 'Rivas Sandetel', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Rivas Sandetel;Carmen;;;\r\nFN:Carmen Rivas Sandetel\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:carmen.rivas.salvador@juntadeandalucia.es\r\nEND:VCARD', ' carmen rivas sandetel carmen.rivas.salvador@juntadeandalucia.es', 56),
(131, '2017-12-14 09:35:55', 0, 'Laura Rodríguez Gago Sandetel', 'laura.rodriguez.gago@juntadeandalucia.es', 'Laura', 'Rodríguez Gago Sandetel', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Rodríguez Gago Sandetel;Laura;;;\r\nFN:Laura Rodríguez Gago Sandetel\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:laura.rodriguez.gago@juntadeandalucia.es\r\nEND:VCARD', ' laura rodriguz gago sandetel laura.rodriguz.gago@juntadeandalucia.es', 56),
(132, '2017-12-14 09:36:23', 0, 'Olga Fernández Sandetel', 'olga.fernandez.lopez@juntadeandalucia.es', 'Olga', 'Fernández Sandetel', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Fernández Sandetel;Olga;;;\r\nFN:Olga Fernández Sandetel\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:olga.fernandez.lopez@juntadeandalucia.es\r\nEND:VCARD', ' olga fernandez sandetel olga.fernandez.lopez@juntadeandalucia.es', 56),
(133, '2017-12-14 09:46:38', 0, 'María José Morales Avilés', 'MJMORALES@MAINFOR.EDU.ES', 'María José', 'Morales Avilés', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Morales Avilés;María José;;;\r\nFN:María José Morales Avilés\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:MJMORALES@MAINFOR.EDU.ES\r\nTEL;TYPE=home:952062923\r\nADR;TYPE=home:;;Avenida Jorge Luis Borges, 15 - 1ª planta;Málaga;Málaga;29010;\r\nEND:VCARD', ' maria jose morales aviles mjmorales@mainfor.edu.es 952062923 avenida jorge luis borges 151ª planta malaga 29010', 56),
(134, '2017-12-14 09:47:00', 0, 'Chari Ramírez León', 'mrramirez@mainfor.edu.es', 'Chari', 'Ramírez León', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Ramírez León;Chari;;;\r\nFN:Chari Ramírez León\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:mrramirez@mainfor.edu.es\r\nEND:VCARD', ' chari ramirez leon mrramirez@mainfor.edu.es', 56),
(135, '2018-03-09 20:04:42', 0, 'Maria Nazaret Torres Senso', 'nazaaret345@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Maria Nazaret Torres Senso\r\nEMAIL;TYPE=INTERNET:nazaaret345@gmail.com\r\nEND:VCARD', ' nazaaret345@gmail.com maria nazaret torres senso', 99),
(136, '2018-04-09 12:55:35', 0, 'Erik Poveda Diaz', 'napsterepd88@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Erik Poveda Diaz\r\nEMAIL;TYPE=INTERNET:napsterepd88@gmail.com\r\nEND:VCARD', ' napsterepd88@gmail.com erik poveda diaz', 34),
(137, '2018-04-09 14:09:16', 0, '\'Isabel Cayuela\'', 'cayuela_isa@gva.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Isabel Cayuela\'\r\nEMAIL;TYPE=INTERNET:cayuela_isa@gva.es\r\nEND:VCARD', ' cayula_isa@gva.es isabel cayula', 34),
(138, '2018-04-11 17:21:33', 0, 'Rocío Borrego', 'rborrego@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rocío Borrego\r\nEMAIL;TYPE=INTERNET:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rborrego@mainfor.edu.es rocio borrego', 10),
(139, '2018-04-11 19:11:29', 0, 'Rocío Borrego', 'rborrego@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rocío Borrego\r\nEMAIL;TYPE=INTERNET:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rborrego@mainfor.edu.es rocio borrego', 22),
(140, '2018-05-04 22:43:23', 0, 'Laura Ruíz', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruíz\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz', 117),
(141, '2018-05-07 18:27:00', 0, 'Victorsuay', 'victorsuay@adams.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Victorsuay\r\nEMAIL;TYPE=INTERNET:victorsuay@adams.es\r\nEND:VCARD', ' victorsuay@adams.es victorsuay', 91),
(142, '2018-05-07 19:47:53', 0, 'Anton Rodríguez', 'abianbass@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Anton Rodríguez\r\nEMAIL;TYPE=INTERNET:abianbass@gmail.com\r\nEND:VCARD', ' abianbass@gmail.com anton rodriguz', 35),
(143, '2018-05-14 20:00:43', 0, 'Victoriaml1993', 'victoriaml1993@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Victoriaml1993\r\nEMAIL;TYPE=INTERNET:victoriaml1993@gmail.com\r\nEND:VCARD', ' victoriaml1993@gmail.com victoriaml1993', 117),
(144, '2018-05-14 20:00:47', 0, 'alejandro10111@outlook.es ana481041@gmail.com andreaabad.carboneras@gmail.com  chrmc1olivo1@gmail.com palomasanchezportillo@gmai', 'serranomerida@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:alejandro10111@outlook.es ana481041@gmail.com andreaabad.carboneras@gmail.com  chrmc1olivo1@gmail.com palomasanchezportillo@gmail.com salud_criado@hotmail.com virginia167yt@gmail.com  2josejuan5@gmail.com guadalinfo.mmlop@gmail.com janadales@gmail.com  javijimenezclemente@gmail.com  jess_david18@hotmail.com mariaortiz2@gmail.com  nad@alfa.es  nmm8598@gmail.com noeliaaragonquintero69@gmail.com  pastora_calero@hotmail.com ramosgloriasalud@gmail.com  remediosloal@hotmail.com\r\nEMAIL;TYPE=INTERNET:serranomerida@gmail.com\r\nEND:VCARD', ' serranomerida@gmail.com alejandro10111@outlook.es ana481041@gmail.com andreaabad.carboneras@gmail.com chrmc1olivo1@gmail.com palomasanchezportillo@gmail.com salud_criado@hotmail.com virginia167yt@gmail.com 2josejuan5@gmail.com guadalinfo.mmlop@gmail.com janadales@gmail.com javijimenezclemente@gmail.com jess_david18@hotmail.com mariaortiz2@gmail.com nad@alfa.es nmm8598@gmail.com noliaaragonquintero69@gmail.com pastora_calero@hotmail.com ramosgloriasalud@gmail.com remediosloal@hotmail.com', 117),
(145, '2018-05-24 18:57:20', 0, 'Rocío Borrego', 'rborrego@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rocío Borrego\r\nEMAIL;TYPE=INTERNET:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rborrego@mainfor.edu.es rocio borrego', 11),
(146, '2018-06-05 12:55:35', 0, 'Rocío Borrego', 'rborrego@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rocío Borrego\r\nEMAIL;TYPE=INTERNET:rborrego@mainfor.edu.es\r\nEND:VCARD', ' rborrego@mainfor.edu.es rocio borrego', 71),
(147, '2018-06-12 13:23:25', 0, 'Rocio Pinazo', 'rpinazo@mainfor.edu.es', 'Rocio', 'Pinazo', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Pinazo;Rocio;;;\r\nFN:Rocio Pinazo\r\nEMAIL;TYPE=INTERNET;TYPE=HOME:rpinazo@mainfor.edu.es\r\nEND:VCARD', ' rocio pinazo rpinazo@mainfor.edu.es', 71),
(148, '2018-07-10 18:15:59', 0, 'mariarosa.perez@hotmail.com anarosa87.arm@gmail.com nicojpm@gmail.com isidro17@hotmail.es Biajaz2@icloud.com gemagarciap@gmail.c', 'maanguita1975@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:mariarosa.perez@hotmail.com anarosa87.arm@gmail.com nicojpm@gmail.com isidro17@hotmail.es Biajaz2@icloud.com gemagarciap@gmail.com raulcelis78@gmail.com elenanbernal@gmail.com sarafb46@gmail.com inmaculadasillerserrano@gmail.com isaroales95@gmail.com anapb_97@hotmail.es daniel.pascual.rey@gmail.com  antoniojom23@gmail.com marinamorenodelastra@gmail.com aitormcamacho@gmail.com bartola88@hotmail.com amarquezprieto@yahoo.es irenelunaorozco@gmail.com asunhhfm@gmail.com opem@ronda.es tocrol1@hotmail.com\r\nEMAIL;TYPE=INTERNET:maanguita1975@gmail.com\r\nEND:VCARD', ' maanguita1975@gmail.com mariarosa.perez@hotmail.com anarosa87.arm@gmail.com nicojpm@gmail.com isidro17@hotmail.es biajaz2@icloud.com gemagarciap@gmail.com raulcelis78@gmail.com elenanbernal@gmail.com sarafb46@gmail.com inmaculadasillerserrano@gmail.com isaroales95@gmail.com anapb_97@hotmail.es daniel.pascual.rey@gmail.com antoniojom23@gmail.com marinamorenodelastra@gmail.com aitormcamacho@gmail.com bartola88@hotmail.com amarquzprieto@yahoo.es irenelunaorozco@gmail.com asunhhfm@gmail.com opem@ronda.es tocrol1@hotmail.com', 117),
(149, '2018-07-10 18:16:13', 0, 'Yolanda Laura', 'yolecom@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Yolanda Laura\r\nEMAIL;TYPE=INTERNET:yolecom@gmail.com\r\nEND:VCARD', ' yolecom@gmail.com yolanda laura', 117),
(150, '2018-07-23 08:04:41', 0, 'José Antonio Higueras', 'jhigueras10@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:José Antonio Higueras\r\nEMAIL;TYPE=INTERNET:jhigueras10@gmail.com\r\nEND:VCARD', ' jhiguras10@gmail.com jose antonio higuras', 117),
(151, '2018-07-23 08:04:48', 0, 'manolo pica', 'manolopica@yahoo.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:manolo pica\r\nEMAIL;TYPE=INTERNET:manolopica@yahoo.es\r\nEND:VCARD', ' manolopica@yahoo.es manolo pica', 117),
(152, '2018-07-23 08:04:55', 0, 'ana isabel ballesteros rueda', 'anaballeru@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ana isabel ballesteros rueda\r\nEMAIL;TYPE=INTERNET:anaballeru@hotmail.com\r\nEND:VCARD', ' anaballeru@hotmail.com ana isabel ballesteros ruda', 117),
(153, '2018-08-30 14:15:22', 0, 'Pbueno', 'pbueno@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Pbueno\r\nEMAIL;TYPE=INTERNET:pbueno@mainfor.edu.es\r\nEND:VCARD', ' pbuno@mainfor.edu.es pbuno', 117),
(154, '2018-09-19 00:24:12', 0, 'jmarros1988@gmail.com', 'jmarros1988@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jmarros1988@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jmarros1988@gmail.com\r\nEND:VCARD', ' jmarros1988@gmail.com', 147),
(155, '2018-09-19 00:24:12', 0, 'lalineagib@gmail.com', 'lalineagib@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:lalineagib@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:lalineagib@gmail.com\r\nEND:VCARD', ' lalineagib@gmail.com', 147),
(156, '2018-09-19 00:24:12', 0, 'Alcaide.ute@gmail.com', 'Alcaide.ute@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Alcaide.ute@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:Alcaide.ute@gmail.com\r\nEND:VCARD', ' alcaide.ute@gmail.com', 147),
(157, '2018-09-19 00:24:12', 0, 'sergiodn89@gmail.com', 'sergiodn89@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:sergiodn89@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:sergiodn89@gmail.com\r\nEND:VCARD', ' sergiodn89@gmail.com', 147),
(158, '2018-09-19 00:24:12', 0, 'ruizbandera.francisco@gmail.com', 'ruizbandera.francisco@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ruizbandera.francisco@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:ruizbandera.francisco@gmail.com\r\nEND:VCARD', ' ruizbandera.francisco@gmail.com', 147),
(159, '2018-09-19 00:24:12', 0, 'barbaroj@gmail.com', 'barbaroj@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:barbaroj@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:barbaroj@gmail.com\r\nEND:VCARD', ' barbaroj@gmail.com', 147),
(160, '2018-09-19 00:24:12', 0, 'sinsan-ajc@hotmail.com', 'sinsan-ajc@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:sinsan-ajc@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:sinsan-ajc@hotmail.com\r\nEND:VCARD', ' sinsan ajc@hotmail.com', 147),
(161, '2018-09-19 00:24:12', 0, 'jjgallardo@andaluciaemprende.es', 'jjgallardo@andaluciaemprende.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jjgallardo@andaluciaemprende.es\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jjgallardo@andaluciaemprende.es\r\nEND:VCARD', ' jjgallardo@andaluciamprende.es', 147),
(162, '2018-09-19 00:24:12', 0, 'martinez90ezequiel@gmail.com', 'martinez90ezequiel@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:martinez90ezequiel@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:martinez90ezequiel@gmail.com\r\nEND:VCARD', ' martinez90ezequiel@gmail.com', 147),
(163, '2018-09-19 00:24:12', 0, 'fernandofernandezlladonosa@gmail.com', 'fernandofernandezlladonosa@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:fernandofernandezlladonosa@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:fernandofernandezlladonosa@gmail.com\r\nEND:VCARD', ' fernandofernandezlladonosa@gmail.com', 147),
(164, '2018-09-19 00:24:12', 0, 'oninoneko@gmail.com', 'oninoneko@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:oninoneko@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:oninoneko@gmail.com\r\nEND:VCARD', ' oninoneko@gmail.com', 147),
(165, '2018-09-19 00:24:12', 0, 'ventas@fersoft.es', 'ventas@fersoft.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ventas@fersoft.es\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:ventas@fersoft.es\r\nEND:VCARD', ' ventas@fersoft.es', 147),
(166, '2018-09-19 00:24:12', 0, 'andres.ce96@gmail.com', 'andres.ce96@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:andres.ce96@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:andres.ce96@gmail.com\r\nEND:VCARD', ' andres.ce96@gmail.com', 147),
(167, '2018-09-19 00:24:12', 0, 'mrgf74@gmail.com', 'mrgf74@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:mrgf74@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:mrgf74@gmail.com\r\nEND:VCARD', ' mrgf74@gmail.com', 147),
(168, '2018-09-19 00:24:12', 0, 'jmarquezpacios@gmail.com', 'jmarquezpacios@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jmarquezpacios@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jmarquezpacios@gmail.com\r\nEND:VCARD', ' jmarquzpacios@gmail.com', 147),
(169, '2018-09-19 00:24:12', 0, 'mariomolinamolina1994@gmail.com', 'mariomolinamolina1994@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:mariomolinamolina1994@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:mariomolinamolina1994@gmail.com\r\nEND:VCARD', ' mariomolinamolina1994@gmail.com', 147),
(170, '2018-09-19 00:24:12', 0, 'fjcozarg@gmail.com', 'fjcozarg@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:fjcozarg@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:fjcozarg@gmail.com\r\nEND:VCARD', ' fjcozarg@gmail.com', 147),
(171, '2018-09-19 00:24:12', 0, 'tabitacastroprieto@gmail.com', 'tabitacastroprieto@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:tabitacastroprieto@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:tabitacastroprieto@gmail.com\r\nEND:VCARD', ' tabitacastroprieto@gmail.com', 147),
(172, '2018-09-19 00:24:12', 0, 'danieljimenezgutierrez@hotmail.com', 'danieljimenezgutierrez@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:danieljimenezgutierrez@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:danieljimenezgutierrez@hotmail.com\r\nEND:VCARD', ' danieljimenezgutierrez@hotmail.com', 147),
(173, '2018-09-19 00:24:12', 0, 'antonioluisalive@gmail.com', 'antonioluisalive@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:antonioluisalive@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:antonioluisalive@gmail.com\r\nEND:VCARD', ' antonioluisalive@gmail.com', 147),
(174, '2018-09-19 00:24:12', 0, 'ebenaventolmo@hotmail.com', 'ebenaventolmo@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ebenaventolmo@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:ebenaventolmo@hotmail.com\r\nEND:VCARD', ' ebenaventolmo@hotmail.com', 147),
(175, '2018-09-19 00:24:12', 0, 'jose.luis.vigaray@gmail.com', 'jose.luis.vigaray@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jose.luis.vigaray@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jose.luis.vigaray@gmail.com\r\nEND:VCARD', ' jose.luis.vigaray@gmail.com', 147),
(176, '2018-09-19 00:24:12', 0, 'hermes211@gmail.com', 'hermes211@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:hermes211@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:hermes211@gmail.com\r\nEND:VCARD', ' hermes211@gmail.com', 147),
(177, '2018-09-19 00:24:12', 0, 'jmperezd@hotmail.com', 'jmperezd@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jmperezd@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jmperezd@hotmail.com\r\nEND:VCARD', ' jmperezd@hotmail.com', 147),
(178, '2018-09-19 00:24:12', 0, 'iadc89@gmail.com', 'iadc89@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:iadc89@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:iadc89@gmail.com\r\nEND:VCARD', ' iadc89@gmail.com', 147),
(179, '2018-09-19 00:24:12', 0, 'abacok@gmail.com', 'abacok@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:abacok@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:abacok@gmail.com\r\nEND:VCARD', ' abacok@gmail.com', 147),
(180, '2018-09-19 00:24:12', 0, 'ivanjvillac@gmail.com', 'ivanjvillac@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ivanjvillac@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:ivanjvillac@gmail.com\r\nEND:VCARD', ' ivanjvillac@gmail.com', 147);
INSERT INTO `contacts` (`contact_id`, `changed`, `del`, `name`, `email`, `firstname`, `surname`, `vcard`, `words`, `user_id`) VALUES
(181, '2018-09-19 00:24:12', 0, 'david.sanchez.berni@juntadeandalucia.es', 'david.sanchez.berni@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:david.sanchez.berni@juntadeandalucia.es\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:david.sanchez.berni@juntadeandalucia.es\r\nEND:VCARD', ' david.sanchez.berni@juntadeandalucia.es', 147),
(182, '2018-09-19 00:24:12', 0, 'adeoses@gmail.com', 'adeoses@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:adeoses@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:adeoses@gmail.com\r\nEND:VCARD', ' adeoses@gmail.com', 147),
(183, '2018-09-19 00:24:12', 0, 'mariajose.munoz.g@hotmail.com', 'mariajose.munoz.g@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:mariajose.munoz.g@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:mariajose.munoz.g@hotmail.com\r\nEND:VCARD', ' mariajose.munoz.g@hotmail.com', 147),
(184, '2018-09-19 00:24:12', 0, 'lsimon@protonmail.com', 'lsimon@protonmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:lsimon@protonmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:lsimon@protonmail.com\r\nEND:VCARD', ' lsimon@protonmail.com', 147),
(185, '2018-09-19 00:24:12', 0, 'IJSA_12@HOTMAIL.COM', 'IJSA_12@HOTMAIL.COM', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:IJSA_12@HOTMAIL.COM\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:IJSA_12@HOTMAIL.COM\r\nEND:VCARD', ' ijsa_12@hotmail.com', 147),
(186, '2018-09-19 00:24:12', 0, 'g72bamav@hotmail.com', 'g72bamav@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:g72bamav@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:g72bamav@hotmail.com\r\nEND:VCARD', ' g72bamav@hotmail.com', 147),
(187, '2018-09-19 00:24:12', 0, 'AlexPRxelA@gmail.com', 'AlexPRxelA@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:AlexPRxelA@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:AlexPRxelA@gmail.com\r\nEND:VCARD', ' alexprxela@gmail.com', 147),
(188, '2018-09-19 00:24:12', 0, 'dagaar94@gmail.com', 'dagaar94@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:dagaar94@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:dagaar94@gmail.com\r\nEND:VCARD', ' dagaar94@gmail.com', 147),
(189, '2018-09-19 00:24:12', 0, 'superlopez007@gmail.com', 'superlopez007@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:superlopez007@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:superlopez007@gmail.com\r\nEND:VCARD', ' superlopez007@gmail.com', 147),
(190, '2018-09-19 00:24:12', 0, 'delpino8a@gmail.com', 'delpino8a@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:delpino8a@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:delpino8a@gmail.com\r\nEND:VCARD', ' delpino8a@gmail.com', 147),
(191, '2018-09-19 00:24:12', 0, 'apache1357@hotmail.com', 'apache1357@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:apache1357@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:apache1357@hotmail.com\r\nEND:VCARD', ' apache1357@hotmail.com', 147),
(192, '2018-09-19 00:24:12', 0, 'blanquez.laura@gmail.com', 'blanquez.laura@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:blanquez.laura@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:blanquez.laura@gmail.com\r\nEND:VCARD', ' blanquz.laura@gmail.com', 147),
(193, '2018-09-19 00:24:12', 0, 'jmanxa@yahoo.es', 'jmanxa@yahoo.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jmanxa@yahoo.es\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jmanxa@yahoo.es\r\nEND:VCARD', ' jmanxa@yahoo.es', 147),
(194, '2018-09-19 00:24:12', 0, 'carlos__romera@hotmail.com', 'carlos__romera@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:carlos__romera@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:carlos__romera@hotmail.com\r\nEND:VCARD', ' carlos__romera@hotmail.com', 147),
(195, '2018-09-19 00:24:12', 0, 'quini.garcia20@gmail.com', 'quini.garcia20@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:quini.garcia20@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:quini.garcia20@gmail.com\r\nEND:VCARD', ' quini.garcia20@gmail.com', 147),
(196, '2018-09-19 00:24:12', 0, 'ermaestro@gmail.com', 'ermaestro@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ermaestro@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:ermaestro@gmail.com\r\nEND:VCARD', ' ermastro@gmail.com', 147),
(197, '2018-09-19 00:24:12', 0, 'jmzambrano@gmail.com', 'jmzambrano@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:jmzambrano@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:jmzambrano@gmail.com\r\nEND:VCARD', ' jmzambrano@gmail.com', 147),
(198, '2018-09-19 00:24:12', 0, 'josegomezbalao@gmail.com', 'josegomezbalao@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:josegomezbalao@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:josegomezbalao@gmail.com\r\nEND:VCARD', ' josegomezbalao@gmail.com', 147),
(199, '2018-09-19 00:24:12', 0, 'felipiyo_97@hotmail.com', 'felipiyo_97@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:felipiyo_97@hotmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:felipiyo_97@hotmail.com\r\nEND:VCARD', ' felipiyo_97@hotmail.com', 147),
(200, '2018-09-19 00:24:12', 0, 'ortavil@gmail.com', 'ortavil@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ortavil@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:ortavil@gmail.com\r\nEND:VCARD', ' ortavil@gmail.com', 147),
(201, '2018-09-19 00:24:12', 0, 'guadalinfo.yunquera@guadalinfo.es', 'guadalinfo.yunquera@guadalinfo.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:guadalinfo.yunquera@guadalinfo.es\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:guadalinfo.yunquera@guadalinfo.es\r\nEND:VCARD', ' guadalinfo.yunqura@guadalinfo.es', 147),
(202, '2018-09-19 00:24:12', 0, 'otitos.cliniccloud@gmail.com', 'otitos.cliniccloud@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:otitos.cliniccloud@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:otitos.cliniccloud@gmail.com\r\nEND:VCARD', ' otitos.cliniccloud@gmail.com', 147),
(203, '2018-09-19 00:24:12', 0, 'novosurb4@gmail.com', 'novosurb4@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:novosurb4@gmail.com\r\nEMAIL;TYPE=INTERNET;TYPE=OTHER:novosurb4@gmail.com\r\nEND:VCARD', ' novosurb4@gmail.com', 147),
(204, '2018-09-20 07:36:08', 0, 'Mercedes Moreno', 'mmoreno@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mercedes Moreno\r\nEMAIL;TYPE=INTERNET:mmoreno@mainfor.edu.es\r\nEND:VCARD', ' mmoreno@mainfor.edu.es mercedes moreno', 10),
(205, '2018-09-20 15:41:24', 0, 'Sergio Postigo Gutiérrez', 'spostigo@mainfor.edu.es', 'Sergio', 'Postigo Gutiérrez', 'BEGIN:VCARD\r\nVERSION:3.0\r\nN:Postigo Gutiérrez;Sergio;;;\r\nFN:Sergio Postigo Gutiérrez\r\nEMAIL;TYPE=INTERNET;TYPE=WORK:spostigo@mainfor.edu.es\r\nEND:VCARD', ' sergio postigo gutierrez spostigo@mainfor.edu.es', 151),
(206, '2018-09-20 21:27:40', 0, 'Lruizg', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Lruizg\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es lruizg', 147),
(207, '2018-10-08 14:31:15', 0, '\'Ana Pedrera\'', 'anam.pedrera@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'Ana Pedrera\'\r\nEMAIL;TYPE=INTERNET:anam.pedrera@juntadeandalucia.es\r\nEND:VCARD', ' anam.pedrera@juntadeandalucia.es ana pedrera', 151),
(208, '2018-10-08 14:31:19', 0, '\'dgarrido-mainfor.edu.es\'', 'dgarrido@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:\'dgarrido-mainfor.edu.es\'\r\nEMAIL;TYPE=INTERNET:dgarrido@mainfor.edu.es\r\nEND:VCARD', ' dgarrido@mainfor.edu.es dgarrido mainfor.edu.es', 151),
(209, '2018-10-08 14:31:21', 0, 'Antonioj Gaitan', 'antonioj.gaitan@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Antonioj Gaitan\r\nEMAIL;TYPE=INTERNET:antonioj.gaitan@juntadeandalucia.es\r\nEND:VCARD', ' antonioj.gaitan@juntadeandalucia.es antonioj gaitan', 151),
(210, '2018-10-17 09:32:15', 0, 'Laura Ruíz', 'lruizg@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruíz\r\nEMAIL;TYPE=INTERNET:lruizg@mainfor.edu.es\r\nEND:VCARD', ' lruizg@mainfor.edu.es laura ruiz', 98),
(211, '2018-10-22 11:48:19', 0, 'ccasas-mainfor.edu.es', 'ccasas@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:ccasas-mainfor.edu.es\r\nEMAIL;TYPE=INTERNET:ccasas@mainfor.edu.es\r\nEND:VCARD', ' ccasas@mainfor.edu.es ccasas mainfor.edu.es', 71),
(212, '2018-10-22 15:51:27', 0, 'Mario Pulido', 'mpulido@eiposgrados.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Mario Pulido\r\nEMAIL;TYPE=INTERNET:mpulido@eiposgrados.edu.es\r\nEND:VCARD', ' mpulido@eiposgrados.edu.es mario pulido', 68),
(213, '2018-10-22 18:06:34', 0, 'Jmanuel Salazar', 'jmanuel.salazar@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Jmanuel Salazar\r\nEMAIL;TYPE=INTERNET:jmanuel.salazar@juntadeandalucia.es\r\nEND:VCARD', ' jmanul.salazar@juntadeandalucia.es jmanul salazar', 151),
(214, '2018-10-23 17:58:52', 0, 'sergio', 'sergio@publisergio.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:sergio\r\nEMAIL;TYPE=INTERNET:sergio@publisergio.com\r\nEND:VCARD', ' sergio@publisergio.com sergio', 6),
(215, '2018-11-08 13:18:56', 0, 'Miguel Infantes nuñez', 'minfantes@mainfor.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Miguel Infantes nuñez\r\nEMAIL;TYPE=INTERNET:minfantes@mainfor.edu.es\r\nEND:VCARD', ' minfantes@mainfor.edu.es migul infantes nunez', 10),
(216, '2018-11-28 19:28:27', 0, 'María Moreno', 'maria_mmb2@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:María Moreno\r\nEMAIL;TYPE=INTERNET:maria_mmb2@hotmail.com\r\nEND:VCARD', ' maria_mmb2@hotmail.com maria moreno', 117),
(217, '2018-12-13 22:41:22', 0, 'Laura Ruíz', 'lruizg@eimediacion.edu.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Laura Ruíz\r\nEMAIL;TYPE=INTERNET:lruizg@eimediacion.edu.es\r\nEND:VCARD', ' lruizg@eimediacion.edu.es laura ruiz', 218),
(218, '2019-03-08 16:54:30', 0, 'Celia Bandera', 'cbandera@fundaciondidactica.org', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Celia Bandera\r\nEMAIL;TYPE=INTERNET:cbandera@fundaciondidactica.org\r\nEND:VCARD', ' cbandera@fundaciondidactica.org celia bandera', 112),
(219, '2019-05-03 10:33:46', 0, 'isa', 'isaservisoc@gmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:isa\r\nEMAIL;TYPE=INTERNET:isaservisoc@gmail.com\r\nEND:VCARD', ' isaservisoc@gmail.com isa', 218),
(220, '2019-05-03 11:36:09', 0, 'María Lourdes Cid García', 'lcid@ingenia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:María Lourdes Cid García\r\nEMAIL;TYPE=INTERNET:lcid@ingenia.es\r\nEND:VCARD', ' lcid@ingenia.es maria lourdes cid garcia', 151),
(221, '2019-05-03 11:36:12', 0, 'Antonio Santos Rodríguez', 'antoniom.santos@juntadeandalucia.es', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Antonio Santos Rodríguez\r\nEMAIL;TYPE=INTERNET:antoniom.santos@juntadeandalucia.es\r\nEND:VCARD', ' antoniom.santos@juntadeandalucia.es antonio santos rodriguz', 151),
(222, '2019-05-03 12:52:52', 0, 'Anna M', 't3fanna@hotmail.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Anna M\r\nEMAIL;TYPE=INTERNET:t3fanna@hotmail.com\r\nEND:VCARD', ' t3fanna@hotmail.com anna', 235),
(223, '2019-05-06 10:51:40', 0, 'Rocío Borrego', 'rborrego@grupomainjobs.com', '', '', 'BEGIN:VCARD\r\nVERSION:3.0\r\nFN:Rocío Borrego\r\nEMAIL;TYPE=INTERNET:rborrego@grupomainjobs.com\r\nEND:VCARD', ' rborrego@grupomainjobs.com rocio borrego', 218);

-- --------------------------------------------------------

--
-- Table structure for table `dictionary`
--

CREATE TABLE `dictionary` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(5) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `identities`
--

CREATE TABLE `identities` (
  `identity_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `standard` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `organization` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL,
  `reply-to` varchar(128) NOT NULL DEFAULT '',
  `bcc` varchar(128) NOT NULL DEFAULT '',
  `signature` longtext DEFAULT NULL,
  `html_signature` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `identities`
--

INSERT INTO `identities` (`identity_id`, `user_id`, `changed`, `del`, `standard`, `name`, `organization`, `email`, `reply-to`, `bcc`, `signature`, `html_signature`) VALUES
(1, 1, '2017-01-28 01:20:27', 0, 1, 'jmoreno-mainfor.edu.es', '', 'jmoreno@mainfor.edu.es', '', '', NULL, 0),
(2, 2, '2017-01-28 08:44:26', 0, 1, 'mjmorales-mainfor.edu.es', '', 'mjmorales@mainfor.edu.es', '', '', NULL, 0),
(3, 3, '2017-01-28 08:45:44', 0, 1, 'evillalon-mainfor.edu.es', '', 'evillalon@mainfor.edu.es', '', '', NULL, 0),
(4, 4, '2017-01-28 08:46:20', 0, 1, 'eortega-mainfor.edu.es', '', 'eortega@mainfor.edu.es', '', '', NULL, 0),
(5, 5, '2017-01-30 12:09:48', 0, 1, 'amorales-mainfor.edu.es', '', 'amorales@mainfor.edu.es', '', '', NULL, 0),
(6, 6, '2017-01-30 12:43:47', 0, 1, 'allamas-mainfor.edu.es', '', 'allamas@mainfor.edu.es', '', '', NULL, 0),
(7, 7, '2017-01-30 12:56:05', 0, 1, 'rborrego-mainfor.edu.es', '', 'rborrego@mainfor.edu.es', '', '', NULL, 0),
(8, 8, '2017-01-31 10:21:51', 0, 1, 'asalinas-mainfor.edu.es', '', 'asalinas@mainfor.edu.es', '', '', NULL, 0),
(9, 9, '2017-01-31 10:22:42', 0, 1, 'jaguilera-mainfor.edu.es', '', 'jaguilera@mainfor.edu.es', '', '', NULL, 0),
(10, 10, '2017-01-31 10:47:18', 0, 1, 'ccasas-mainfor.edu.es', '', 'ccasas@mainfor.edu.es', '', '', NULL, 0),
(11, 11, '2017-01-31 10:51:49', 0, 1, 'agarcia-mainfor.edu.es', '', 'agarcia@mainfor.edu.es', '', '', NULL, 0),
(12, 12, '2017-01-31 10:54:09', 0, 1, 'pdiaz-mainfor.edu.es', '', 'pdiaz@mainfor.edu.es', '', '', NULL, 0),
(13, 13, '2017-01-31 11:27:10', 0, 1, 'msabater-mainfor.edu.es', '', 'msabater@mainfor.edu.es', '', '', NULL, 0),
(14, 14, '2017-01-31 11:32:50', 0, 1, 'csuarez-mainfor.es', '', 'csuarez@mainfor.es', '', '', NULL, 0),
(15, 15, '2017-01-31 11:37:40', 0, 1, 'info-mainfor.edu.es', '', 'info@mainfor.edu.es', '', '', NULL, 0),
(16, 16, '2017-01-31 11:48:01', 0, 1, 'bgarciar-mainfor.edu.es', '', 'bgarciar@mainfor.edu.es', '', '', NULL, 0),
(17, 17, '2017-01-31 11:56:45', 0, 1, 'ajmartinez-mainfor.edu.es', '', 'ajmartinez@mainfor.edu.es', '', '', NULL, 0),
(18, 18, '2017-01-31 12:56:47', 0, 1, 'dgarrido-mainfor.edu.es', '', 'dgarrido@mainfor.edu.es', '', '', NULL, 0),
(19, 19, '2017-01-31 14:37:43', 0, 1, 'mvelasco-mainfor.edu.es', '', 'mvelasco@mainfor.edu.es', '', '', NULL, 0),
(20, 20, '2017-01-31 15:13:40', 0, 1, 'jmolmo-mainfor.edu.es', '', 'jmolmo@mainfor.edu.es', '', '', NULL, 0),
(21, 21, '2017-02-06 20:54:58', 0, 1, 'Marta Alonso Jerez', 'Mainfor', 'malonso@mainfor.edu.es', '', '', 'Marta Alonso Jerez\r\nDocente en Mainfor', 0),
(22, 22, '2017-01-31 15:48:07', 0, 1, 'arosado-mainfor.edu.es', '', 'arosado@mainfor.edu.es', '', '', NULL, 0),
(23, 23, '2017-01-31 16:50:48', 0, 1, 'jalacal-mainfor.edu.es', '', 'jalacal@mainfor.edu.es', '', '', NULL, 0),
(24, 24, '2017-01-31 17:12:11', 0, 1, 'lbonet-mainfor.edu.es', '', 'lbonet@mainfor.edu.es', '', '', NULL, 0),
(25, 25, '2017-01-31 19:05:28', 0, 1, 'alopez-mainfor.edu.es', '', 'alopez@mainfor.edu.es', '', '', NULL, 0),
(26, 26, '2017-02-01 09:05:35', 0, 1, 'pdiez-mainfor.edu.es', '', 'pdiez@mainfor.edu.es', '', '', NULL, 0),
(27, 27, '2017-02-01 10:01:13', 0, 1, 'dvara-mainfor.edu.es', '', 'dvara@mainfor.edu.es', '', '', NULL, 0),
(28, 28, '2017-02-01 13:39:00', 0, 1, 'fjgomez-mainfor.edu.es', '', 'fjgomez@mainfor.edu.es', '', '', NULL, 0),
(29, 29, '2017-02-01 16:11:48', 0, 1, 'jalopez-mainfor.edu.es', '', 'jalopez@mainfor.edu.es', '', '', NULL, 0),
(30, 30, '2017-02-01 17:13:12', 0, 1, 'acastro-mainfor.edu.es', '', 'acastro@mainfor.edu.es', '', '', NULL, 0),
(31, 31, '2017-02-02 19:53:31', 0, 1, 'iprieto-mainfor.edu.es', '', 'iprieto@mainfor.edu.es', '', '', NULL, 0),
(32, 32, '2017-02-02 21:09:41', 0, 1, 'ralonso-mainfor.edu.es', '', 'ralonso@mainfor.edu.es', '', '', NULL, 0),
(33, 33, '2017-02-03 13:10:19', 0, 1, 'mgarcia-mainfor.edu.es', '', 'mgarcia@mainfor.edu.es', '', '', NULL, 0),
(34, 34, '2017-02-04 17:04:44', 0, 1, 'adiaz-mainfor.edu.es', '', 'adiaz@mainfor.edu.es', '', '', NULL, 0),
(35, 17, '2017-02-06 13:03:13', 0, 0, '', '', 'ajmartinez@mainfor.edu.es', '', '', 'Antonio J. Martínez\r\nCoordinador prácticas alumnos URJC-Mainfor \r\najmartinez@mainfor.edu.es \r\nTelf. 900 812 816 | Móv. 663 78 12 93\r\n\r\nAntes de imprimir este mensaje, compruebe que es necesario. Proteger el medio ambiente está también en tu mano.\r\nEste correo electrónico y, en su caso, cualquier fichero anexo al mismo, contiene información de carácter confidencial exclusivamente dirigida a su destinatario o destinatarios. Queda prohibida su divulgación, copia o distribución a terceros sin la previa autorización escrita por parte de MAINFOR. En el caso de haber recibido este correo electrónico por error, se ruega notifíquese inmediatamente esta circunstancia mediante reenvío a la dirección formacion@mainfor.es En cumplimiento del art. 5 de la Ley 15/1999, por el que se regula el derecho de información en la recogida de los datos, se advierte que los datos de carácter personal recogidos se incluirán en los ficheros de tipo manual e informático de la propiedad de MAINFOR, necesarios para el adecuado tratamiento en su caso. Ud. tendrá la posibilidad de ejercitar su derecho de acceso a sus datos, rectificarlos o cancelarlos.\r\n', 0),
(36, 35, '2017-02-06 19:40:08', 0, 1, 'iluque-mainfor.edu.es', '', 'iluque@mainfor.edu.es', '', '', NULL, 0),
(37, 36, '2017-02-07 14:28:22', 0, 1, 'pserrano-mainfor.edu.es', '', 'pserrano@mainfor.edu.es', '', '', NULL, 0),
(38, 37, '2017-02-07 14:29:22', 0, 1, 'tutorias.informatica-mainfor.edu.es', '', 'tutorias.informatica@mainfor.edu.es', '', '', NULL, 0),
(39, 38, '2017-02-08 19:09:34', 0, 1, 'csuarez-mainfor.edu.es', '', 'csuarez@mainfor.edu.es', '', '', NULL, 0),
(40, 39, '2017-02-09 10:02:06', 0, 1, 'academico-mainfor.edu.es', '', 'academico@mainfor.edu.es', '', '', NULL, 0),
(41, 39, '2017-02-09 10:02:06', 0, 0, 'academico-mainfor.edu.es', '', 'matriculaciones@mainfor.edu.es', '', '', NULL, 0),
(42, 40, '2017-02-09 13:33:20', 0, 1, 'ehernandez-mainfor.edu.es', '', 'ehernandez@mainfor.edu.es', '', '', NULL, 0),
(43, 41, '2017-02-14 18:22:43', 0, 1, 'schoolofenglish-mainfor.edu.es', '', 'schoolofenglish@mainfor.edu.es', '', '', NULL, 0),
(44, 42, '2017-02-15 13:09:31', 0, 1, 'tutoriasadmon-mainfor.edu.es', '', 'tutoriasadmon@mainfor.edu.es', '', '', NULL, 0),
(45, 43, '2017-06-22 10:56:48', 0, 1, 'aespinoza-mainfor.edu.es', '', 'aespinoza@mainfor.edu.es', '', '', '<div class=\"pre\"><strong>Alex Espinoza</strong><br /> <em>Docente Programa Superior Universitario </em></div>\r\n<div class=\"pre\"><em>de Gestión Administrativa, Financiera y Contable</em></div>', 1),
(46, 44, '2017-02-15 13:10:04', 0, 1, 'mlopez-mainfor.edu.es', '', 'mlopez@mainfor.edu.es', '', '', NULL, 0),
(47, 45, '2017-02-15 13:10:14', 0, 1, 'jarubio-mainfor.edu.es', '', 'jarubio@mainfor.edu.es', '', '', NULL, 0),
(48, 46, '2017-02-15 13:10:23', 0, 1, 'jmarias-mainfor.edu.es', '', 'jmarias@mainfor.edu.es', '', '', NULL, 0),
(49, 47, '2017-02-15 23:31:11', 0, 1, 'jagarcia-mainfor.edu.es', '', 'jagarcia@mainfor.edu.es', '', '', NULL, 0),
(50, 48, '2017-02-17 12:04:17', 0, 1, 'gestion-mainfor.edu.es', '', 'gestion@mainfor.edu.es', '', '', NULL, 0),
(51, 49, '2017-02-18 23:17:53', 0, 1, 'mcruiz-mainfor.es', '', 'mcruiz@mainfor.es', '', '', NULL, 0),
(52, 50, '2017-02-20 18:13:37', 0, 1, 'imvazquez-mainfor.edu.es', '', 'imvazquez@mainfor.edu.es', '', '', NULL, 0),
(53, 51, '2018-01-15 20:06:35', 0, 1, 'Miguel Ángel Suvires', 'Mainfor', 'masuvires@mainfor.edu.es', '', '', '', 0),
(54, 52, '2017-03-14 08:44:09', 0, 1, 'vhurtado-mainfor.edu.es', '', 'vhurtado@mainfor.edu.es', '', '', NULL, 0),
(55, 53, '2017-03-17 10:25:57', 0, 1, 'mlgarcia-mainfor.edu.es', '', 'mlgarcia@mainfor.edu.es', '', '', NULL, 0),
(56, 54, '2017-05-18 16:51:18', 1, 0, 'international-mainfor.edu.es', '', 'international@mainfor.edu.es', '', '', NULL, 0),
(57, 55, '2017-03-19 10:58:22', 0, 1, 'mserrano-mainfor.edu.es', '', 'mserrano@mainfor.edu.es', '', '', NULL, 0),
(58, 56, '2017-12-14 08:50:12', 0, 1, 'spostigo-mainfor.edu.es', '', 'spostigo@mainfor.edu.es', '', '', '<div class=\"pre\"><strong>Sergio Postigo Gutiérrez</strong><br /> Director del área de proyectos y licitaciones<br /> <a href=\"mailto:spostigo@mainfor.edu.es\">spostigo@mainfor.edu.es</a><br /> Tlf. 616551129</div>', 1),
(59, 57, '2017-03-22 16:01:47', 0, 1, 'glopez-mainfor.edu.es', '', 'glopez@mainfor.edu.es', '', '', NULL, 0),
(60, 58, '2017-03-24 09:38:53', 0, 1, 'msagal-mainfor.edu.es', '', 'msagal@mainfor.edu.es', '', '', NULL, 0),
(61, 59, '2017-03-28 12:44:25', 0, 1, 'rpinazo-mainfor.edu.es', '', 'rpinazo@mainfor.edu.es', '', '', NULL, 0),
(62, 60, '2017-04-10 08:57:07', 0, 1, 'javier-mainfor.edu.es', '', 'javier@mainfor.edu.es', '', '', NULL, 0),
(63, 61, '2017-04-20 10:57:00', 0, 1, 'lruizg-mainfor.edu.es', '', 'lruizg@mainfor.edu.es', '', '', NULL, 0),
(64, 62, '2017-04-21 23:06:47', 0, 1, 'masanchez-mainfor.edu.es', '', 'masanchez@mainfor.edu.es', '', '', NULL, 0),
(65, 63, '2017-04-21 23:36:56', 0, 1, 'fhuercano-mainfor.edu.es', '', 'fhuercano@mainfor.edu.es', '', '', NULL, 0),
(66, 64, '2017-04-22 00:28:11', 0, 1, 'practicumadmon-mainfor.edu.es', '', 'practicumadmon@mainfor.edu.es', '', '', NULL, 0),
(67, 65, '2017-04-25 23:42:59', 0, 1, 'smartin-mainfor.edu.es', '', 'smartin@mainfor.edu.es', '', '', NULL, 0),
(68, 66, '2017-04-25 23:50:17', 0, 1, 'apacheco-mainfor.edu.es', '', 'apacheco@mainfor.edu.es', '', '', NULL, 0),
(69, 67, '2017-04-26 00:01:53', 0, 1, 'vguerrero-mainfor.edu.es', '', 'vguerrero@mainfor.edu.es', '', '', NULL, 0),
(70, 68, '2017-05-03 18:28:45', 0, 1, 'jvelasco-mainfor.edu.es', '', 'jvelasco@mainfor.edu.es', '', '', NULL, 0),
(71, 69, '2017-05-16 09:29:04', 0, 1, 'msagall-mainfor.edu.es', '', 'msagall@mainfor.edu.es', '', '', NULL, 0),
(72, 70, '2017-05-16 12:21:11', 0, 1, 'pushakk', '', 'pushakk@localhost', '', '', NULL, 0),
(73, 54, '2017-05-18 16:54:41', 0, 0, 'International Mainfor', '', 'international@mainfor.edu.es', '', '', '<div class=\"pre\">\r\n<p><span style=\"font-size: 12pt\"><strong><span style=\"font-family: arial, helvetica, sans-serif; color: #ff9900\"> Lucia Ortiz Tovar</span></strong></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 10pt; color: #0000ff\">international@mainfor.edu.es</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAcYAAABvCAMAAABB2JCJAAAAulBMVEX///8AAADykRrykh399Or50K3ykgDyjxPxjACoqKj++fP++fCJiYn869rykhPy8vL62Lz0n0Lg4OBISEhVVVV+fn61tbWdnZ0eHh7W1tbq6ur84sX1rWf0o0eWlpb738grKyvR0dFvb2+tra29vb0zMzPv7+9CQkKRkZE7OztNTU1YWFjJyckmJiZhYWFsbGz1qWAUFBT3v4X5y5z2uHQfHx/zmzb0pVb4xYzxhwDzlyz2tnD97t/63Lh0T0/FAAAQcUlEQVR4nO2dDZuithbH4bbdGaZuuYuAQntdQVBBxNLWttuX7/+1LidvhJAgIiPjLP9nn2dHDSHJL5y8nQRNmzRp0qRJkyZNmtRZW2PsFHyNCsyBI3ScgSMcTp//+LmmP34cO0WDaTFwqWf6bNgIB9R/vzzV9OXfsVM0mAx9MWR0pv6WMT7/p6bn94RR3wwY3WnCOIpKjHowWGyuPmEcRYBx6Q8UmbWcMI4jwKjvBuqupvpDYHwmelddHNBhkLhW+kNgfP73R6x/vx07RYMJY9SHGHZY+oNgfD/0mAhG3b05JnM3YWzo5befuujnjzfeh2LUt7emeKVPGBt6+fT81EHPt84nMYzzGyPK9AljUy//e/qmg4bDqK9uiseMJ4wS3R/jbbMAJ33CKNEIGJMbosn0CaNMI2DUw96xbPUJo1RjYNSzvrHkE0a5RsHYd3K1FskgGN3UBg27GPq1YNRPveKw9MExLnBc9hBxMX01GPVejjTzCaNKI2HUreuj2OsTRpXujbEg/18/6gjwhbvDhLGpe2NMbfLHtZM5JjGp2WzC2NTdMfrUKF45mePgq3L6xzAYyTz7boi4mL4CjHNtQ/6Kr3IFiMhV5rAYX0VfBUYtJH9eM1gzSZvqahNGmUbA6NNuTtT98hM1qRNGqUbAyAyk3tmskisKGKZMGCUaAyMzq107iHT6BjksTxglGgUjW/vtOJlzqEzqhFGqUTBWy4Zel2vJ4E7HE+oTRonGwajRMXza4VJqUslengmjRCNh1HbdYcT1K++A8dBjxpfTZ4Lx+0sBLddwnHka7jeZsrdHK3F7d3AsjGwy5+IS8ozrpYK6YMz2K7nkAffCZq+ikzutHYOO3LDp179Bv/3xhDA+/fkrkuKhtFZrndNBMfwSMXpZtF/txVIbCyNr8JYXRh1B3aR2w0htdkNiwIXUti87PetHfC1H/G+8Z+OJbsHBkrr4+mEhpm0nrTs1jP5iji8T6+NoGDU6R94+mbNNcKhqbPIaGIWRD2zYOlz0i143MP4mbKVC+kGGcdGACMolxpzHaBxpSHHP73gYLZqTVgNGoVmNb14Zo15cMvf9MZq5Kn3Ne3IY7Src28GI9pqi8mrpULjNZN8L40XD2hujn6iS1+RTYfTXLcFGxNhhMsckIfiFpPth1PNW1y8ZRrRTghFEnz6IGP0dl6Dzbr478ikUAVGM3oEP9XbaxgqSegmZ+ojza5N3xKjHbYZVgvGbv5AIRfzhLwGjWdnG88qzTNP0vRlHUuixEoxF1ZgW5/j4lp7Gao5cYVapSa0R64IxcAVFSS+MEiNXqYnx5Xuk78i48SP+KFwWyuI2F9Ut632rujtg2SOMLEnfflSMDIl8Cdlqvea64b/dE6N+UA6ImhiJWmdx6Kq5ntQtdvWQ1hNTwxirJqHHxUgdbORMUvJjfeK1H8a0L0Y9Vnmb9MLIGpLmtAx7TGuTETxGRzkIGhejFtAUShohuh91X//63hiV6zC9MNJMydbMKcc5T5jDuG9eQjUyRuZ8em5UNJr+pfB9F4xWtFmU2ris0e2BsWCOsXIn9z4YTVpDpGc9UfPD1+kKY5vf19gYmSt445AOuiYp2rRLGKNZrQN/nqFC6fM0WmyAF8sW1PpgpJ06+dQVRWZLvtOPbbOWo2NkyRTqp5JWK0bLkcxyrY1+GD3NpDeTGdY+GIndLBQD0lOTGCuf1smu0TFW2wJqow5abZsnIrVg3MogolisPj1Vrwoge356YKRdOtU8Ms01Z1UpxrR1CeHl9+cu+vJ6GNlUIW9Wt3TmqdlNVGPMhK4Jp+OyJ8bKUWEuDm57YKRMVE8W7cdGzUsu9Og+d9OtK9ktGH1a+txwmM4dS6qtEqO420cm8ZrLGLUt28glFH4PjB6JSTlwINaEm9aiGHtv7R1ULRiryRyWVDZGloRWYVROwN2IkYu5Xql6YAzU2cKyG3mjGG8+T2gQtWFkZI7kM3MNkK2IKzDyz6LtuJ5fKnD3eX01QYysE8aqVtl81+Q1MNZ8AJG6OXHcS60YqWs/re7UpErPepBjZOT1YlZrxMygmsTsi1EL6OjnzNm2V8TIeSM8EMaqHxHxYY9SQyLHyBZinWZ+rWqVVvypI0Zty2Y8q9u+Bsa8kbdHwsgmc45+1Q9Q7PGQYqTXKJbs2bBB8cNFjFwUzLC+BsYz/p2bdnsojCadhypbBdqaKQZXUoz0S9U0NjWs4vfdMWoRtfxHUlVu6Kkq93bqjTgfCmP1CG7Y5LEi4VKMdit5jfnFil9fgVHz2Ko9Hg/0GTcuG09bTS3D/8fAWE39U6mGyDKM1H9OPbgybsfIeUKhmYo+k3GkC6M6rZtMxvHeSQ+GUTguhe9z1yXD6Mfygq8UDICRayCXQT+MdAgqX/uiJol3m300jFZtPvSo9GaSYaRNq3qHVjgIRi3jPEX7YKSgjjK3FbaIzmejI8Z/PnbSCw3/bbfw/wi3uYyxGmTLC4dK2jYSa6Q8kt7qPacqRsRGHk6vZWPq3ybbg0T7YWe+Cnfdw/Hhhw6qVji+e+4S/sNPwn06YOQP9lOaVAVGWgVUHlC08MXvr8bIn+jaB2NAL2vWOBZxraPWeSuOxEW2IR5jp/B9MJrVCkXLDKIUoyktAvYra3fFX3pgFKfgr3SpYiuYYk1llbioERsV41MfjNVkTtsSqXwWh/pC6rtGb9U0qlZX/K0PRs1jB2X3wMi8GvSET6mXsgjrsx4PiJEiaj0TQDE1Xtm6dGX5NNOmHzh8oYuR9cLIewxfjzGoKlVOXE5N3mlByNcjYsS9v2XrLlHVQhXvHF+koePsHec0F9wBxMj6Yaytil2LsVqXK5U4K9dwUu4b0X3rITEis9p+sINy2ZhfyVBJvKYvxsqIX4+RPzC9ocaizkNihMmcCy+yUjtx7CXF8loYq21R12PUPKW3SbOn/ZgYy4H8hY33LS5VUSwpGVAR9XWpaknpqTdGzZdvcDxKunZvE+PFsxKtSyd0tjk4mquzrHhy/4KDozAYL7pgpBdLMH7Bbmht/ksbyQPpyGau3hbGzMG67Z04IJfEJB+UmG4qls4McCgwRjguwZbN8LcXD7a35lKMH3/BepFcUmmzFpIpt0J+iBPzNjDeU9lilidJUSRx7izI0p4C460yuh3aIZdlODayHrtwdaPj23vECDKRqs/z18FYtnK3vXlbTGdPvVeMoiwPdNuxRXK9Cc/DrwXjO9eE8V1owvguNGF8F5owvgvdC+PH7yYNqM8jYfz1+cOkwfT850gYX76dNKDEeb6pbXwXmjC+C00Y34XuhdH0qVqT4w8871ne9qp5Z99XTZG2xORzui55ndRl6vxeGDfFGuuYtpyZFawvrNZGjnPVko5zXl6zkOTrR9XBJc65UKxleGum4/qaxLXIdRxaDMZ8fvkdifde/W/3AIgvLbrvW4/GbCpUHOulkKV+H+FJeeeAX/y9JnEtCtly9PbcZUXzjhhj3yoFG+CUD5R+6e2cgWF0epEO1XAYQ6XHHmDcRETXJK5FmWGQxmVrdHlf6R0xktcZp1AerrHQrBXyycwc27b3kFbPgPP2FmXrtHXDNM1d0tJEeRLHO2RlPJI9HwXAf0fGwvM3pzR0MQHfLWMMZ+gNJRSjtz+ktkMKxNqncZLYGx7YdhMeZh7FaEYoer6loxi9VWjnDl+ZACMfcuueWNqChRGYbh5ohhGVOUVp9A07zTFvM9if0pOzIcjKAOSuwYbks0zWId+g6ANjYZmb0A6jZk27P8Y5lEdSFi8yQRbdXnEyqYNiwDzcziizzEV7gfwfwbRRP5YCSrY0dzm+ALVrG+phnPoMI3XDQmfcMjfRXVX4Ht7wdsAYM+K8yLeGGKPJnGGrFl7AyNIGCS2zdLLBnx9OecGpInvrwCOsOnUcbkRPmihWKMGQd7ptAeWzjCsk+Wz0w+6IcZ2B1XGQUaU+FeD3td5HUDi5ZkWQedeEct4Zbo7N7wZ2O1gB+GlbgNHALmn2xgW+LnYzXi82B1y2EGPuunAbh2KEEE40O+OqBGXoedGO84jdgp9aiI5+LDFCFGfDPem8RcYYIRX7aGPz1h8wGtikuhbqBNgGcuwy2B7qCG3qX0XI2dyOMojaRLtv1otokaB6gE6VOYRrlA2MEfI5x3FF2A33uEDF0ugljtHFSdEWpzjy0ZOG/KS9AiHD+6XnJJ0lzjUquV1WfmvBzgyE0ddJBwCyiQoY8Zih//0sQAYvoi/g3cDeUHw2S46eZSgGr/wcVMODGbTcGir1EuOJbMyy+DNdMMYgC5BFm3MecQGXNQNeFRvRtKH0Ipc3E1dJuBFypkxQT66MDcVwhBq6Jwc7unvDxRgtvTphpkDGCl27l+yOvDvGYrfHO9UgB7B71KSl5BCMVpmrZJeU/1AtxTZwuU73voYxRghvqW0MhROSPqSF3Yaj03wJQo8ewljme7mDCJdoOxoy0sUxyav+SE4qjo8wwjMJwec61xsjRnVhJ2Xc54Lr8ABGMuBYuhk9a8tM4OIV2ZRhkv3TC1JDbITRX6UxTmqJccf7SiKMZT5jFhfijFvnMmdi63hHjAfUU0WDaMCISr6gXXSHw1h+mc5Lpba9K2FHdoybiJg8jS5184bXeUYMo4++hvoyz/N8V8N4JBGmoamZzvwovOkpJyW0XROMOxS+vH8dI6T7aJexixi9LRn9R9QxHoJGkN49j3HFYwSrEh9wbBYMtqo+KcK4oGYf9sQHkI3NG8DI7RWCPEJK8OMESom9A6O6o19io2davhVkM2RJ6dOI4cNO+q2AsSCZXVUYI2aFcI+wrEte5s650uDMaImRPRf8vE1I74y+OwoYmXnOaNos2parMa5IddyioAfqCA8nayOMGZ9P8w1jhOQuy3GFFyIgBCM0KJutZgE5H7YgQ/MJ7/aJSBen/DMNNBPOT7U1ASPul6D3WlCMZhm+7PNvoQPsIBRgThdcaUT4Kn+OMEIf2ijvv9K5s3p5jOgAADlGsH9pWQmzNUpNK8Y9ftqyGN0HoK22WlD+VGCMcKgszOBAxznU3gpGbpe0uSMYuQ2fULQ6nsOptrgFZHwQQwcuIUZVs9hOjdgXMQL7I+7zU4xcJwSqEnRpl8hOV9My0LEt0FVrk9+/XTWfaBYHKoROTDzrxNYwos4a1hK35TOCccljTCGjaHsGGVtZ3Hby2CI91WpHKwyDWjF+wu9VuiAeY6fwIkY3jrlt+WaekPO0TdTd1s85ahfKfgWq/gs0oErwLorggEZaMWxjMOIY7J2P+uV6PIOO5CyOUfb8YwKPrVMWc5E4bpzk6DcIb50g/DLFRb9CsRcpP+UygwC2u0ts9Ia9FApwHXLT9A66iwdpKeNxkpj1R7wkiblxox+S5ELayvSiumImCQxj4TPCekrgSJVsXtqT8yE6JWuovS4ahq335YX7eA3tin9CcSUzSNQC50Wz1knjHS8vP3/qot8rjL93uuAX4T7CPD33yfSyLLDEr70g8FgQHz5tawH8oLxqW7+I/LG1AtiMjT5x4YOAQTE9/hML4HHhrfJjbbmC/mKhNZiax764BMGlTRPSRv9nsQW12Dx6YS2fXu1S+ZIHea/SJV0bvn030aRJkyZNmjRp0iPr/7+J5ww5uJK3AAAAAElFTkSuQmCC\" width=\"249\" height=\"61\" /></span></p>\r\n<p style=\"text-align: justify\"><span style=\"font-family: arial, helvetica, sans-serif\"><strong>Antes de imprimir este mensaje, compruebe que es necesario. Proteger el medio ambiente está también en tu mano. </strong></span></p>\r\n<p style=\"text-align: justify\"><span style=\"font-family: arial, helvetica, sans-serif\">Este correo electrónico y, en su caso, cualquier fichero anexo al mismo, contiene información de carácter confidencial exclusivamente dirigida a su destinatario o destinatarios. Queda prohibida su divulgación, copia o distribución a terceros sin la previa autorización escrita por parte de MAINFOR. En el caso de haber recibido este correo electrónico por error, se ruega notifíquese inmediatamente esta circunstancia mediante reenvío a la dirección <a href=\"mailto:formacion@mainfor.es\">formacion@mainfor.es</a> En cumplimiento del art. 5 de la Ley 15/1999, por el que se regula el derecho de información en la recogida de los datos, se advierte que los datos de carácter personal recogidos se incluirán en los ficheros de tipo manual e informático de la propiedad de MAINFOR, necesarios para el adecuado tratamiento en su caso. Ud. tendrá la posibilidad de ejercitar su derecho de acceso a sus datos, rectificarlos o cancelarlos.</span></p>\r\n</div>', 1),
(74, 71, '2017-06-08 12:44:46', 0, 1, 'acalleya-mainfor.edu.es', '', 'acalleya@mainfor.edu.es', '', '', NULL, 0),
(75, 72, '2017-06-18 12:09:57', 0, 1, 'netflix1-mainfor.edu.es', '', 'netflix1@mainfor.edu.es', '', '', NULL, 0),
(76, 73, '2017-06-29 12:18:47', 0, 1, 'cursos-mainfor.edu.es', '', 'cursos@mainfor.edu.es', '', '', NULL, 0),
(77, 74, '2017-06-29 12:23:57', 0, 1, 'aiinfantes-mainfor.edu.es', '', 'aiinfantes@mainfor.edu.es', '', '', NULL, 0),
(78, 75, '2017-07-10 12:46:58', 0, 1, 'soporteguadalinfo-mainfor.edu.es', '', 'soporteguadalinfo@mainfor.edu.es', '', '', NULL, 0),
(79, 76, '2017-07-27 18:05:47', 0, 1, 'tutoriasmediacion-mainfor.edu.es', '', 'tutoriasmediacion@mainfor.edu.es', '', '', '<table width=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"365\">\r\n<p><strong>Rocío Cordero<br /></strong></p>\r\n<p>Coordinadora del programa universitario de mediación</p>\r\n<p>Ejecución de programas formativos</p>\r\n<p> </p>\r\n<p><span> </span></p>\r\n<p> </p>\r\n<p>Teléfono: 952 062 923</p>\r\n<p> </p>\r\n<p><strong>_______________________________________</strong></p>\r\n<p> </p>\r\n</td>\r\n<td width=\"36\">\r\n<p> </p>\r\n</td>\r\n<td width=\"26\">\r\n<p> </p>\r\n</td>\r\n<td width=\"26\">\r\n<p> </p>\r\n</td>\r\n<td width=\"26\">\r\n<p> </p>\r\n</td>\r\n<td width=\"194\">\r\n<p> </p>\r\n</td>\r\n<td width=\"10\">\r\n<p><span> </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"7\" width=\"684\">\r\n<p>Este correo electrónico y, en su caso, cualquier fichero anexo al mismo, contiene información de carácter confidencial exclusivamente dirigida a su destinatario o destinatarios. Queda prohibida su divulgación, copia o distribución a terceros sin la previa autorización escrita por parte de MAINFOR. En el caso de haber recibido este correo electrónico por error, se ruega notifíquese inmediatamente esta circunstancia mediante reenvío a la dirección <a href=\"mailto:formacion@mainfor.edu.es\">formacion@mainfor.edu.es</a></p>\r\n<p>En cumplimiento del art. 5 de la Ley 15/1999, por el que se regula el derecho de información en la recogida de los datos, se advierte que los datos de carácter personal recogidos se incluirán en los ficheros de tipo manual e informático de la propiedad de MAINFOR, necesarios para el adecuado tratamiento en su caso. Ud. tendrá la posibilidad de ejercitar su derecho de acceso a sus datos, rectificarlos o cancelarlos.</p>\r\n<p> </p>\r\n<p>Si no desea recibir más comunicaciones comerciales por favor envíe un email a <a href=\"mailto:bajas@mainfor.es\">bajas@mainfor.es</a>.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1),
(80, 77, '2017-08-29 11:15:41', 0, 1, 'lmarting-mainfor.edu.es', '', 'lmarting@mainfor.edu.es', '', '', NULL, 0),
(81, 78, '2017-09-04 16:49:51', 0, 1, 'dsanchez-mainfor.edu.es', '', 'dsanchez@mainfor.edu.es', '', '', NULL, 0),
(82, 79, '2017-09-07 09:30:16', 0, 1, 'practicum-mainfor.edu.es', '', 'practicum@mainfor.edu.es', '', '', NULL, 0),
(83, 80, '2017-09-09 10:33:58', 0, 1, 'mrramirez-mainfor.edu.es', '', 'mrramirez@mainfor.edu.es', '', '', NULL, 0),
(84, 81, '2017-09-13 11:24:36', 0, 1, 'carevalo-mainfor.edu.es', '', 'carevalo@mainfor.edu.es', '', '', NULL, 0),
(85, 82, '2017-09-14 12:15:40', 0, 1, 'jleon-mainfor.edu.es', '', 'jleon@mainfor.edu.es', '', '', NULL, 0),
(86, 83, '2017-10-11 09:45:09', 0, 1, 'mcruiz-mainfor.edu.es', '', 'mcruiz@mainfor.edu.es', '', '', NULL, 0),
(87, 84, '2017-10-11 11:03:06', 0, 1, 'asandoval-mainfor.edu.es', '', 'asandoval@mainfor.edu.es', '', '', NULL, 0),
(88, 85, '2017-10-11 11:11:42', 0, 1, 'itorre-mainfor.edu.es', '', 'itorre@mainfor.edu.es', '', '', NULL, 0),
(89, 86, '2017-10-12 14:12:52', 0, 1, 'rbermudez-mainfor.edu.es', '', 'rbermudez@mainfor.edu.es', '', '', NULL, 0),
(90, 87, '2017-10-16 18:19:45', 0, 1, 'agallego-mainfor.edu.es', '', 'agallego@mainfor.edu.es', '', '', NULL, 0),
(91, 88, '2017-10-20 11:11:18', 0, 1, 'lcasero-mainfor.edu.es', '', 'lcasero@mainfor.edu.es', '', '', NULL, 0),
(92, 89, '2017-11-01 15:16:34', 0, 1, 'fjmartin-mainfor.edu.es', '', 'fjmartin@mainfor.edu.es', '', '', NULL, 0),
(93, 90, '2017-11-07 11:45:26', 0, 1, 'mpulido-mainfor.edu.es', '', 'mpulido@mainfor.edu.es', '', '', NULL, 0),
(94, 90, '2017-11-07 11:45:26', 0, 0, 'mpulido-mainfor.edu.es', '', 'cursobiomasa@mainfor.es', '', '', NULL, 0),
(95, 90, '2017-11-07 11:45:26', 0, 0, 'mpulido-mainfor.edu.es', '', 'isolana@mainfor.edu.es', '', '', NULL, 0),
(96, 90, '2017-11-07 11:45:26', 0, 0, 'mpulido-mainfor.edu.es', '', 'tutoronline@mainfor.edu.es', '', '', NULL, 0),
(97, 91, '2017-11-07 21:30:40', 0, 1, 'dlopez-mainfor.edu.es', '', 'dlopez@mainfor.edu.es', '', '', NULL, 0),
(98, 92, '2017-11-09 09:17:39', 0, 1, 'pymedigital-mainfor.edu.es', '', 'pymedigital@mainfor.edu.es', '', '', NULL, 0),
(99, 93, '2017-11-17 18:22:04', 0, 1, 'cgarcia-mainfor.edu.es', '', 'cgarcia@mainfor.edu.es', '', '', NULL, 0),
(100, 94, '2017-11-28 13:41:40', 0, 1, 'magonzalez-mainfor.edu.es', '', 'magonzalez@mainfor.edu.es', '', '', NULL, 0),
(101, 95, '2017-12-04 13:51:51', 0, 1, 'magonzalez-fundaciondidactica.org', '', 'magonzalez@fundaciondidactica.org', '', '', NULL, 0),
(102, 96, '2017-12-19 12:26:08', 0, 1, 'acerinox-mainfor.edu.es', '', 'acerinox@mainfor.edu.es', '', '', NULL, 0),
(103, 97, '2017-12-28 17:45:55', 0, 1, 'soporte-mainfor.edu.es', '', 'soporte@mainfor.edu.es', '', '', NULL, 0),
(104, 98, '2018-01-26 15:25:47', 0, 1, 'amiralles-mainfor.edu.es', '', 'amiralles@mainfor.edu.es', '', '', NULL, 0),
(105, 99, '2018-01-30 13:26:30', 0, 1, 'acasero-mainfor.edu.es', '', 'acasero@mainfor.edu.es', '', '', NULL, 0),
(106, 100, '2018-02-06 11:02:44', 0, 1, 'aenriquez-mainfor.edu.es', '', 'aenriquez@mainfor.edu.es', '', '', NULL, 0),
(107, 101, '2018-02-06 11:09:56', 0, 1, 'mromero-mainfor.edu.es', '', 'mromero@mainfor.edu.es', '', '', NULL, 0),
(108, 102, '2018-02-08 16:03:50', 0, 1, 'info-carnetfitosanitarios.com', '', 'info@carnetfitosanitarios.com', '', '', NULL, 0),
(109, 103, '2018-02-08 16:04:08', 0, 1, 'info-cursohomologadolegionella.com', '', 'info@cursohomologadolegionella.com', '', '', NULL, 0),
(110, 104, '2018-02-16 09:42:38', 0, 1, 'carlosrodriguez-campus-seneca.es', '', 'carlosrodriguez@campus-seneca.es', '', '', NULL, 0),
(111, 105, '2018-02-16 09:53:35', 0, 1, 'mariavictoriagarcia-campus-seneca.es', '', 'mariavictoriagarcia@campus-seneca.es', '', '', NULL, 0),
(112, 106, '2018-02-16 15:03:30', 0, 1, 'amunoz-mainfor.edu.es', '', 'amunoz@mainfor.edu.es', '', '', NULL, 0),
(113, 107, '2018-02-19 12:06:00', 0, 1, 'mariadelcarmensanchez-campus-seneca.es', '', 'mariadelcarmensanchez@campus-seneca.es', '', '', NULL, 0),
(114, 108, '2018-02-23 11:48:28', 0, 1, 'cmesa-mainfor.edu.es', '', 'cmesa@mainfor.edu.es', '', '', NULL, 0),
(115, 109, '2018-03-19 17:56:26', 0, 1, 'tutoriasprl-campus-seneca.es', '', 'tutoriasprl@campus-seneca.es', '', '', NULL, 0),
(116, 110, '2018-03-20 11:14:49', 0, 1, 'bbonilla-mainfor.edu.es', '', 'bbonilla@mainfor.edu.es', '', '', NULL, 0),
(117, 111, '2018-03-22 11:18:50', 0, 1, 'egarcia-mainfor.edu.es', '', 'egarcia@mainfor.edu.es', '', '', NULL, 0),
(118, 112, '2018-03-22 13:36:34', 0, 1, 'ecampos-mainfor.edu.es', '', 'ecampos@mainfor.edu.es', '', '', NULL, 0),
(119, 113, '2018-04-03 10:58:56', 0, 1, 'rsanchez-mainfor.edu.es', '', 'rsanchez@mainfor.edu.es', '', '', NULL, 0),
(120, 114, '2018-04-04 16:07:56', 0, 1, 'yzamanillo-mainfor.edu.es', '', 'yzamanillo@mainfor.edu.es', '', '', NULL, 0),
(121, 115, '2018-04-11 12:56:01', 0, 1, 'jsanchezg-mainfor.edu.es', '', 'jsanchezg@mainfor.edu.es', '', '', NULL, 0),
(122, 116, '2018-04-23 09:23:25', 0, 1, 'formacion.imfe-mainfor.edu.es', '', 'formacion.imfe@mainfor.edu.es', '', '', NULL, 0),
(123, 117, '2018-04-23 11:51:16', 0, 1, 'pbueno-mainfor.edu.es', '', 'pbueno@mainfor.edu.es', '', '', NULL, 0),
(124, 118, '2018-04-24 09:07:43', 0, 1, 'mjaimez-mainfor.edu.es', '', 'mjaimez@mainfor.edu.es', '', '', NULL, 0),
(125, 119, '2018-05-03 09:16:17', 0, 1, 'lcasquero-mainfor.edu.es', '', 'lcasquero@mainfor.edu.es', '', '', NULL, 0),
(126, 120, '2018-05-08 10:03:45', 0, 1, 'tutoriaslaboral-mainfor.edu.es', '', 'tutoriaslaboral@mainfor.edu.es', '', '', NULL, 0),
(127, 121, '2018-05-08 14:40:22', 0, 1, 'sambrosio-mainfor.edu.es', '', 'sambrosio@mainfor.edu.es', '', '', NULL, 0),
(128, 122, '2018-05-15 12:12:39', 0, 1, 'pferrero-mainfor.edu.es', '', 'pferrero@mainfor.edu.es', '', '', NULL, 0),
(129, 123, '2018-05-16 11:27:36', 0, 1, 'sruiz-mainfor.edu.es', '', 'sruiz@mainfor.edu.es', '', '', NULL, 0),
(130, 124, '2018-05-17 11:30:51', 0, 1, 'murciaartesana-mainfor.edu.es', '', 'murciaartesana@mainfor.edu.es', '', '', NULL, 0),
(131, 125, '2018-06-05 11:53:56', 0, 1, 'nlopez-mainfor.edu.es', '', 'nlopez@mainfor.edu.es', '', '', NULL, 0),
(132, 126, '2018-06-05 13:11:37', 0, 1, 'tic-mainfor.edu.es', '', 'tic@mainfor.edu.es', '', '', NULL, 0),
(133, 127, '2018-06-08 11:02:29', 0, 1, 'aperez-mainfor.edu.es', '', 'aperez@mainfor.edu.es', '', '', NULL, 0),
(134, 128, '2018-06-11 20:56:46', 0, 1, 'jhueso-mainfor.edu.es', '', 'jhueso@mainfor.edu.es', '', '', NULL, 0),
(135, 129, '2018-06-28 11:44:26', 0, 1, 'asalinas-mainfor.es', '', 'asalinas@mainfor.es', '', '', NULL, 0),
(136, 130, '2018-06-28 11:49:39', 0, 1, 'sperez-mainfor.es', '', 'sperez@mainfor.es', '', '', NULL, 0),
(137, 131, '2018-06-28 11:59:58', 0, 1, 'alopez-mainfor.es', '', 'alopez@mainfor.es', '', '', NULL, 0),
(138, 132, '2018-06-28 12:06:21', 0, 1, 'javier-mainfor.es', '', 'javier@mainfor.es', '', '', NULL, 0),
(139, 133, '2018-07-10 10:49:43', 0, 1, 'aorozco-mainfor.edu.es', '', 'aorozco@mainfor.edu.es', '', '', NULL, 0),
(140, 134, '2018-09-12 13:44:33', 0, 1, 'jariza-mainfor.edu.es', '', 'jariza@mainfor.edu.es', '', '', '						\r\n\r\nJavier Ariza\r\n\r\nDocente Académico Posgrados de Ingeniería/Arquitectura\r\n\r\nEscuela Internacional de Posgrados\r\n\r\nIngeniero Industrial Superior\r\n\r\nmgarcia@mainfor.edu.es\r\n\r\nTelf. +34 689 627 457\r\n	\r\n\r\nDescripción: cid:image012.png@01CF4917.2F2AC000\r\n\r\nDescripción: cid:image011.png@01CF4917.2F2AC000                Descripción: cid:image010.png@01CF4917.2F2AC000                Descripción: cid:image009.png@01CF4917.2F2AC000               Descripción: cid:image008.png@01CF4917.2F2AC000\r\n\r\nAntes de imprimir este mensaje, compruebe que es necesario. Proteger el medio ambiente está también en tu mano.\r\n\r\nEste correo electrónico y, en su caso, cualquier fichero anexo al mismo, contiene información de carácter confidencial exclusivamente dirigida a su destinatario o destinatarios.\r\n\r\nQueda prohibida su divulgación, copia o distribución a terceros sin la previa autorización escrita por parte de MAINFOR. En el caso de haber recibido este correo electrónico por error, se ruega notifíquese inmediatamente esta circunstancia mediante reenvío a la dirección formacion@mainfor.es. En cumplimiento de la Ley de Servicios de la Sociedad de la Información y del Comercio electrónico 34/2002 de 11 de julio y del Reglamento General de Protección de Datos (RGPD) del 27 de abril del 2016, le informamos que su dirección de correo electrónico ha sido obtenida de nuestro fichero de Clientes o Contactos que se encuentra debidamente inscrito en la Agencia Española de Protección de Datos. \r\n\r\nSi Vd. no desea recibir más comunicaciones comerciales puede darse de baja en nuestros ficheros enviando un correo electrónico a la siguiente dirección: cumplimiento@mainfor.edu.es\r\n\r\nEste mensaje se dirige exclusivamente a su destinatario. Contiene información CONFIDENCIAL sometida a secreto profesional cuya divulgación está prohibida por el RGPD. Si ha recibido este mensaje por error, debe saber que su lectura, copia y uso están prohibidos. Le rogamos que nos lo comunique inmediatamente por esta misma vía y proceda a su destrucción. Si el destinatario de este mensaje no consintiera la utilización del correo electrónico vía Internet y la grabación de los mensajes, rogamos lo ponga en nuestro conocimiento de forma inmediata\r\n\r\n \r\n\r\n \r\n\r\n \r\n\r\n\r\n', 0),
(141, 135, '2018-07-27 21:32:57', 0, 1, 'Sebastián Fernández', '', 'sfernandezc@mainfor.edu.es', '', '', '<div class=\"pre\">SEBASTIÁN FERNÁNDEZ <br /> <br /> Docente Académico Posgrados de Ingeniería/Arquitectura <br /> <br /> Escuela Internacional de Posgrados <br /> <br /> Ingeniero Industrial Superior <br /> <br /> <a href=\"mailto:sfernandezc@mainfor.edu.es\">sfernandezc@mainfor.edu.es</a> <br /> <br /> Telf. +34 616 489 181          <br /> <br /> ANTES DE IMPRIMIR ESTE MENSAJE, COMPRUEBE QUE ES NECESARIO. PROTEGER EL MEDIO AMBIENTE ESTÁ TAMBIÉN EN TU MANO. <br /> <br /> Este correo electrónico y, en su caso, cualquier fichero anexo al mismo, contiene información de carácter confidencial exclusivamente dirigida a su destinatario o destinatarios. <br /> <br /> Queda prohibida su divulgación, copia o distribución a terceros sin la previa autorización escrita por parte de MAINFOR. En el caso de haber recibido este correo electrónico por error, se ruega notifíquese inmediatamente esta circunstancia mediante reenvío a la dirección <a href=\"mailto:formacion@mainfor.es\">formacion@mainfor.es</a>. En cumplimiento de la Ley de Servicios de la Sociedad de la Información y del Comercio electrónico 34/2002 de 11 de julio y del Reglamento General de Protección de Datos (RGPD) del 27 de abril del 2016, le informamos que su dirección de correo electrónico ha sido obtenida de nuestro fichero de Clientes o Contactos que se encuentra debidamente inscrito en la Agencia Española de Protección de Datos.  <br /> <br /> Si Vd. no desea recibir más comunicaciones comerciales puede darse de baja en nuestros ficheros enviando un correo electrónico a la siguiente dirección: <a href=\"mailto:cumplimiento@mainfor.edu.es\">cumplimiento@mainfor.edu.es</a> <br /> <br /> Este mensaje se dirige exclusivamente a su destinatario. Contiene información CONFIDENCIAL sometida a secreto profesional cuya divulgación está prohibida por el RGPD. Si ha recibido este mensaje por error, debe saber que su lectura, copia y uso están prohibidos. Le rogamos que nos lo comunique inmediatamente por esta misma vía y proceda a su destrucción. Si el destinatario de este mensaje no consintiera la utilización del correo electrónico vía Internet y la grabación de los mensajes, rogamos lo ponga en nuestro conocimiento de forma inmediata <br /> <br /> El software de antivirus Avast ha analizado este correo electrónico en busca de virus. <br /> <a href=\"http://www.avast.com\" rel=\"noreferrer\">www.avast.com</a></div>', 1),
(142, 136, '2018-07-27 13:28:19', 0, 1, 'aperez-fundaciondidactica.org', '', 'aperez@fundaciondidactica.org', '', '', NULL, 0),
(143, 137, '2018-07-30 16:59:54', 0, 1, 'tutoriasyevaluacion-mainfor.edu.es', '', 'tutoriasyevaluacion@mainfor.edu.es', '', '', NULL, 0),
(144, 138, '2018-08-06 12:37:43', 0, 1, 'aperezm-mainfor.edu.es', '', 'aperezm@mainfor.edu.es', '', '', NULL, 0),
(145, 139, '2018-08-16 17:41:18', 0, 1, 'sperez-mainfor.edu.es', '', 'sperez@mainfor.edu.es', '', '', NULL, 0),
(146, 140, '2018-08-23 09:29:52', 0, 1, 'nguerrero-mainfor.edu.es', '', 'nguerrero@mainfor.edu.es', '', '', NULL, 0),
(147, 141, '2018-08-27 12:59:25', 0, 1, 'mainforedu', '', 'mainforedu@mainfor.edu.es', '', '', NULL, 0),
(148, 142, '2018-08-28 15:20:57', 0, 1, 'mlcabrera-mainfor.edu.es', '', 'mlcabrera@mainfor.edu.es', '', '', NULL, 0),
(149, 143, '2018-09-04 09:15:13', 0, 1, 'emartin-mainfor.edu.es', '', 'emartin@mainfor.edu.es', '', '', NULL, 0),
(150, 144, '2018-09-04 09:17:46', 0, 1, 'cmrodriguez-mainfor.edu.es', '', 'cmrodriguez@mainfor.edu.es', '', '', NULL, 0),
(151, 145, '2018-09-04 11:58:46', 0, 1, 'rdoblado-mainfor.edu.es', '', 'rdoblado@mainfor.edu.es', '', '', NULL, 0),
(152, 146, '2018-09-06 13:03:12', 0, 1, 'sperez-eimediacion.edu.es', '', 'sperez@eimediacion.edu.es', '', '', NULL, 0),
(153, 147, '2018-09-11 11:27:59', 0, 1, 'ecaparros-mainfor.edu.es', '', 'ecaparros@mainfor.edu.es', '', '', NULL, 0),
(154, 148, '2018-09-11 11:29:47', 0, 1, 'jmledo-mainfor.edu.es', '', 'jmledo@mainfor.edu.es', '', '', NULL, 0),
(155, 149, '2018-09-11 11:32:27', 0, 1, 'maandres-mainfor.edu.es', '', 'maandres@mainfor.edu.es', '', '', NULL, 0),
(156, 150, '2018-09-11 13:15:54', 0, 1, 'admision-eiposgrados.edu.es', '', 'admision@eiposgrados.edu.es', '', '', NULL, 0),
(157, 151, '2018-09-20 15:40:33', 0, 1, 'Víctor M. Gómez', 'Mainfor', 'vgomez@mainfor.edu.es', '', '', '', 0),
(158, 152, '2018-09-13 10:48:01', 0, 1, 'bguillen-mainfor.edu.es', '', 'bguillen@mainfor.edu.es', '', '', NULL, 0),
(159, 153, '2018-09-14 10:33:33', 0, 1, 'admin-eiposgrados.edu.es', '', 'admin@eiposgrados.edu.es', '', '', NULL, 0),
(160, 154, '2018-09-18 15:04:46', 0, 1, 'eramirez-eimediacion.edu.es', '', 'eramirez@eimediacion.edu.es', '', '', NULL, 0),
(161, 155, '2018-09-18 15:05:08', 0, 1, 'egodino-eimediacion.edu.es', '', 'egodino@eimediacion.edu.es', '', '', NULL, 0),
(162, 156, '2018-09-18 15:05:34', 0, 1, 'rcordero-eimediacion.edu.es', '', 'rcordero@eimediacion.edu.es', '', '', NULL, 0),
(163, 157, '2018-09-19 10:24:36', 0, 1, 'scabeza-mainfor.edu.es', '', 'scabeza@mainfor.edu.es', '', '', NULL, 0),
(164, 158, '2018-09-20 10:44:43', 0, 1, 'dgarcia-mainfor.edu.es', '', 'dgarcia@mainfor.edu.es', '', '', NULL, 0),
(165, 159, '2018-09-20 12:54:32', 0, 1, 'mcalvo-mainfor.edu.es', '', 'mcalvo@mainfor.edu.es', '', '', NULL, 0),
(166, 160, '2018-09-20 12:55:19', 0, 1, 'jjbanciella-mainfor.edu.es', '', 'jjbanciella@mainfor.edu.es', '', '', NULL, 0),
(167, 161, '2018-09-20 12:56:28', 0, 1, 'mlavesa-mainfor.edu.es', '', 'mlavesa@mainfor.edu.es', '', '', NULL, 0),
(168, 162, '2018-09-20 17:36:11', 0, 1, 'mmoreno-mainfor.edu.es', '', 'mmoreno@mainfor.edu.es', '', '', NULL, 0),
(169, 163, '2018-09-28 09:54:12', 0, 1, 'pmaldonado-mainfor.edu.es', '', 'pmaldonado@mainfor.edu.es', '', '', NULL, 0),
(170, 164, '2018-10-04 13:09:50', 0, 1, 'epacheco-eimediacion.edu.es', '', 'epacheco@eimediacion.edu.es', '', '', NULL, 0),
(171, 165, '2018-10-04 13:12:37', 0, 1, 'aperez-eimediacion.edu.es', '', 'aperez@eimediacion.edu.es', '', '', NULL, 0),
(172, 166, '2018-10-05 09:23:38', 0, 1, 'proyectos-mainfor.es', '', 'proyectos@mainfor.es', '', '', NULL, 0),
(173, 167, '2018-10-05 09:24:08', 0, 1, 'ftfe-mainfor.es', '', 'ftfe@mainfor.es', '', '', NULL, 0),
(174, 168, '2018-10-05 09:24:27', 0, 1, 'jalacal-mainfor.es', '', 'jalacal@mainfor.es', '', '', NULL, 0),
(175, 169, '2018-10-05 09:24:43', 0, 1, 'proyecto.jovenes-mainfor.es', '', 'proyecto.jovenes@mainfor.es', '', '', NULL, 0),
(176, 170, '2018-10-05 09:25:07', 0, 1, 'tobe-better-mainfor.es', '', 'tobe-better@mainfor.es', '', '', NULL, 0),
(177, 171, '2018-10-05 09:25:24', 0, 1, 'servidor-mainfor.es', '', 'servidor@mainfor.es', '', '', NULL, 0),
(178, 172, '2018-10-05 09:25:44', 0, 1, 'tutorias.diseno-mainfor.es', '', 'tutorias.diseno@mainfor.es', '', '', NULL, 0),
(179, 173, '2018-10-05 09:26:16', 0, 1, 'matriculaciones-mainfor.es', '', 'matriculaciones@mainfor.es', '', '', NULL, 0),
(180, 174, '2018-10-05 09:28:40', 0, 1, 'mtenorio-mainfor.es', '', 'mtenorio@mainfor.es', '', '', NULL, 0),
(181, 175, '2018-10-05 09:30:23', 0, 1, 'msanchez-mainfor.es', '', 'msanchez@mainfor.es', '', '', NULL, 0),
(182, 176, '2018-10-05 09:31:56', 0, 1, 'soporteacd-mainfor.es', '', 'soporteacd@mainfor.es', '', '', NULL, 0),
(183, 177, '2018-10-05 09:33:25', 0, 1, 'jmoreno-mainfor.es', '', 'jmoreno@mainfor.es', '', '', NULL, 0),
(184, 178, '2018-10-05 09:43:22', 0, 1, 'lcasero-fundaciondidactica.org', '', 'lcasero@fundaciondidactica.org', '', '', NULL, 0),
(185, 179, '2018-10-05 09:58:18', 0, 1, 'jvillalon-fundaciondidactica.org', '', 'jvillalon@fundaciondidactica.org', '', '', NULL, 0),
(186, 180, '2018-10-05 10:00:59', 0, 1, 'sermediador-fundaciondidactica.org', '', 'sermediador@fundaciondidactica.org', '', '', NULL, 0),
(187, 181, '2018-10-05 10:02:27', 0, 1, 'sperez-fundaciondidactica.org', '', 'sperez@fundaciondidactica.org', '', '', NULL, 0),
(188, 182, '2018-10-05 10:39:19', 0, 1, 'acalleya-fundaciondidactica.org', '', 'acalleya@fundaciondidactica.org', '', '', NULL, 0),
(189, 183, '2018-10-05 10:47:02', 0, 1, 'vgonzalez-fundaciondidactica.org', '', 'vgonzalez@fundaciondidactica.org', '', '', NULL, 0),
(190, 184, '2018-10-05 10:48:31', 0, 1, 'pfernandez-fundaciondidactica.org', '', 'pfernandez@fundaciondidactica.org', '', '', NULL, 0),
(191, 185, '2018-10-05 10:51:56', 0, 1, 'masuvires-fundaciondidactica.org', '', 'masuvires@fundaciondidactica.org', '', '', NULL, 0),
(192, 186, '2018-10-05 12:02:19', 0, 1, 'admin-cursomediacioncivilymercantil.com', '', 'admin@cursomediacioncivilymercantil.com', '', '', NULL, 0),
(193, 187, '2018-10-05 12:03:33', 0, 1, 'admin-campusprogramasuniversitarios.com', '', 'admin@campusprogramasuniversitarios.com', '', '', NULL, 0),
(194, 188, '2018-10-10 10:25:29', 0, 1, 'mcastillo-eiposgrados.edu.es', '', 'mcastillo@eiposgrados.edu.es', '', '', NULL, 0),
(195, 189, '2018-10-10 10:35:17', 0, 1, 'pcoceres-mainfor.edu.es', '', 'pcoceres@mainfor.edu.es', '', '', NULL, 0),
(196, 190, '2018-10-11 17:21:49', 0, 1, 'lcasquero-eiposgrados.edu.es', '', 'lcasquero@eiposgrados.edu.es', '', '', NULL, 0),
(197, 191, '2018-10-15 11:09:13', 0, 1, 'rmoreno-eiposgrados.edu.es', '', 'rmoreno@eiposgrados.edu.es', '', '', NULL, 0),
(198, 192, '2018-10-16 09:22:05', 0, 1, 'vcebrian-mainfor.edu.es', '', 'vcebrian@mainfor.edu.es', '', '', NULL, 0),
(199, 193, '2018-10-16 14:18:40', 0, 1, 'fmartos-mainfor.edu.es', '', 'fmartos@mainfor.edu.es', '', '', NULL, 0),
(200, 194, '2018-10-17 10:48:58', 0, 1, 'lcasero-eiposgrados.edu.es', '', 'lcasero@eiposgrados.edu.es', '', '', NULL, 0),
(201, 195, '2018-10-18 17:13:11', 0, 1, 'llopez-mainfor.edu.es', '', 'llopez@mainfor.edu.es', '', '', NULL, 0),
(202, 196, '2018-10-22 11:04:25', 0, 1, 'traingins', '', 'traingins@trabajoingenieroinstalaciones.com', '', '', NULL, 0),
(203, 197, '2018-10-22 12:13:39', 0, 1, 'admin-trabajoingenieroinstalaciones.com', '', 'admin@trabajoingenieroinstalaciones.com', '', '', NULL, 0),
(204, 198, '2018-10-22 13:40:19', 0, 1, 'admon-grupomainjobs.com', '', 'admon@grupomainjobs.com', '', '', NULL, 0),
(205, 199, '2018-10-22 13:40:30', 0, 1, 'laboral-grupomainjobs.com', '', 'laboral@grupomainjobs.com', '', '', NULL, 0),
(206, 200, '2018-10-22 13:40:38', 0, 1, 'eortega-grupomainjobs.com', '', 'eortega@grupomainjobs.com', '', '', NULL, 0),
(207, 201, '2018-10-22 13:40:47', 0, 1, 'rfernandezm-grupomainjobs.com', '', 'rfernandezm@grupomainjobs.com', '', '', NULL, 0),
(208, 202, '2018-10-22 13:40:56', 0, 1, 'rgomez-grupomainjobs.com', '', 'rgomez@grupomainjobs.com', '', '', NULL, 0),
(209, 203, '2018-10-22 13:41:06', 0, 1, 'llopez-grupomainjobs.com', '', 'llopez@grupomainjobs.com', '', '', NULL, 0),
(210, 204, '2018-10-22 14:59:12', 0, 1, 'rgomez-mainfor.edu.es', '', 'rgomez@mainfor.edu.es', '', '', NULL, 0),
(211, 205, '2018-10-23 13:51:46', 0, 1, 'lruizg-eimediacion.edu.es', '', 'lruizg@eimediacion.edu.es', '', '', NULL, 0),
(212, 206, '2018-10-25 10:57:57', 0, 1, 'mlgarcia-eimediacion.edu.es', '', 'mlgarcia@eimediacion.edu.es', '', '', NULL, 0),
(213, 207, '2018-10-25 14:56:09', 0, 1, 'fax-mainfor.es', '', 'fax@mainfor.es', '', '', NULL, 0),
(214, 208, '2018-10-25 14:56:52', 0, 1, 'fax-mainfor.edu.es', '', 'fax@mainfor.edu.es', '', '', NULL, 0),
(215, 209, '2018-10-25 17:22:38', 0, 1, 'mgarcia-eiposgrados.edu.es', '', 'mgarcia@eiposgrados.edu.es', '', '', NULL, 0),
(216, 210, '2018-10-26 09:14:02', 0, 1, 'ngomez-mainfor.edu.es', '', 'ngomez@mainfor.edu.es', '', '', NULL, 0),
(217, 211, '2018-11-03 21:19:10', 0, 1, 'jmoreno-grupomainjobs.com', '', 'jmoreno@grupomainjobs.com', '', '', NULL, 0),
(218, 212, '2018-11-03 21:33:06', 0, 1, 'mjmorales-grupomainjobs.com', '', 'mjmorales@grupomainjobs.com', '', '', NULL, 0),
(219, 213, '2018-11-05 11:03:47', 0, 1, 'spostigo-grupomainjobs.com', '', 'spostigo@grupomainjobs.com', '', '', NULL, 0),
(220, 214, '2018-11-16 13:42:31', 0, 1, 'jvillalon-grupomainjobs.com', '', 'jvillalon@grupomainjobs.com', '', '', NULL, 0),
(221, 215, '2018-11-26 13:14:10', 0, 1, 'admision.edificacion-eiposgrados.edu.es', '', 'admision.edificacion@eiposgrados.edu.es', '', '', NULL, 0),
(222, 216, '2018-11-28 12:15:12', 0, 1, 'certicom-mainfor.edu.es', '', 'certicom@mainfor.edu.es', '', '', NULL, 0),
(223, 217, '2018-12-03 20:10:06', 0, 1, 'jtrujillo-eimediacion.edu.es', '', 'jtrujillo@eimediacion.edu.es', '', '', NULL, 0),
(224, 218, '2018-12-10 14:36:09', 0, 1, 'eramirezc-eimediacion.edu.es', '', 'eramirezc@eimediacion.edu.es', '', '', NULL, 0),
(225, 219, '2018-12-29 05:31:19', 0, 1, 'proyectos-mainfor.edu.es', '', 'proyectos@mainfor.edu.es', '', '', NULL, 0),
(226, 220, '2019-01-15 12:26:11', 0, 1, 'ccarnero-eimediacion.edu.es', '', 'ccarnero@eimediacion.edu.es', '', '', NULL, 0),
(227, 221, '2019-01-17 22:38:36', 0, 1, 'andaluciaencamper', '', 'andaluciaencamper@andaluciaencamper.com', '', '', NULL, 0),
(228, 222, '2019-01-31 12:44:29', 0, 1, 'jvalverde-mainfor.edu.es', '', 'jvalverde@mainfor.edu.es', '', '', NULL, 0),
(229, 223, '2019-02-05 10:41:24', 0, 1, 'reclamaciondepagos-mainfor.edu.es', '', 'reclamaciondepagos@mainfor.edu.es', '', '', NULL, 0),
(230, 224, '2019-02-07 09:41:29', 0, 1, 'binfante-mainfor.edu.es', '', 'binfante@mainfor.edu.es', '', '', NULL, 0),
(231, 225, '2019-02-10 04:04:04', 0, 1, '', '', 'academico@mainfor.edu.es', '', '', NULL, 0),
(232, 226, '2019-02-11 16:30:47', 0, 1, 'gmartinez-eimediacion.edu.es', '', 'gmartinez@eimediacion.edu.es', '', '', NULL, 0),
(233, 227, '2019-02-19 14:57:42', 0, 1, 'info-qes.edu.es', '', 'info@qes.edu.es', '', '', NULL, 0),
(234, 228, '2019-02-19 14:59:14', 0, 1, 'mpulido-qes.edu.es', '', 'mpulido@qes.edu.es', '', '', NULL, 0),
(235, 229, '2019-02-21 18:51:30', 0, 1, 'loliva-mainfor.edu.es', '', 'loliva@mainfor.edu.es', '', '', NULL, 0),
(236, 230, '2019-02-25 18:02:32', 0, 1, 'yzamanillo-grupomainjobs.com', '', 'yzamanillo@grupomainjobs.com', '', '', NULL, 0),
(237, 231, '2019-02-26 15:28:15', 0, 1, 'reclamaciones-grupomainjobs.com', '', 'reclamaciones@grupomainjobs.com', '', '', NULL, 0),
(238, 232, '2019-02-27 13:55:40', 0, 1, 'lmarting-grupomainjobs.com', '', 'lmarting@grupomainjobs.com', '', '', NULL, 0),
(239, 233, '2019-02-27 14:09:42', 0, 1, 'sperez-grupomainjobs.com', '', 'sperez@grupomainjobs.com', '', '', NULL, 0),
(240, 234, '2019-02-28 09:36:31', 0, 1, 'yzamanillo-eimediacion.edu.es', '', 'yzamanillo@eimediacion.edu.es', '', '', NULL, 0),
(241, 235, '2019-03-05 18:09:29', 0, 1, 'malonso-grupomainjobs.com', '', 'malonso@grupomainjobs.com', '', '', NULL, 0),
(242, 236, '2019-03-05 18:59:13', 0, 1, 'ecampos-grupomainjobs.com', '', 'ecampos@grupomainjobs.com', '', '', NULL, 0),
(243, 237, '2019-03-12 09:09:35', 0, 1, 'fjleon-fundaciondidactica.org', '', 'fjleon@fundaciondidactica.org', '', '', NULL, 0),
(244, 238, '2019-03-14 17:16:19', 0, 1, 'bgil-grupomainjobs.com', '', 'bgil@grupomainjobs.com', '', '', NULL, 0),
(245, 239, '2019-03-16 13:25:15', 0, 1, 'amorales-grupomainjobs.com', '', 'amorales@grupomainjobs.com', '', '', NULL, 0),
(246, 240, '2019-03-18 10:11:16', 0, 1, 'aperez-grupomainjobs.com', '', 'aperez@grupomainjobs.com', '', '', NULL, 0),
(247, 241, '2019-03-18 16:31:33', 0, 1, 'rsanchez-grupomainjobs.com', '', 'rsanchez@grupomainjobs.com', '', '', NULL, 0),
(248, 242, '2019-03-18 17:03:33', 0, 1, 'mcortes-mainfor.edu.es', '', 'mcortes@mainfor.edu.es', '', '', NULL, 0),
(249, 243, '2019-03-18 17:10:18', 0, 1, 'igonzalez-mainfor.edu.es', '', 'igonzalez@mainfor.edu.es', '', '', NULL, 0),
(250, 244, '2019-03-18 17:30:38', 0, 1, 'evandries-mainfor.edu.es', '', 'evandries@mainfor.edu.es', '', '', NULL, 0),
(251, 245, '2019-03-18 17:33:36', 0, 1, 'eim-mainfor.edu.es', '', 'eim@mainfor.edu.es', '', '', NULL, 0),
(252, 246, '2019-03-20 17:23:53', 0, 1, 'anavas-mainfor.edu.es', '', 'anavas@mainfor.edu.es', '', '', NULL, 0),
(253, 247, '2019-03-21 13:04:40', 0, 1, 'ffernandez-mainfor.edu.es', '', 'ffernandez@mainfor.edu.es', '', '', NULL, 0),
(254, 248, '2019-04-04 09:08:07', 0, 1, 'truizv-mainfor.edu.es', '', 'truizv@mainfor.edu.es', '', '', NULL, 0),
(255, 249, '2019-04-05 16:28:41', 0, 1, 'epacheco-grupomainjobs.com', '', 'epacheco@grupomainjobs.com', '', '', NULL, 0),
(256, 250, '2019-04-09 13:19:49', 0, 1, 'mcruiz-grupomainjobs.com', '', 'mcruiz@grupomainjobs.com', '', '', NULL, 0),
(257, 251, '2019-04-11 09:42:53', 0, 1, 'amancera-mainfor.edu.es', '', 'amancera@mainfor.edu.es', '', '', NULL, 0),
(258, 252, '2019-04-15 23:03:06', 0, 1, 'inglesonline-grupomainjobs.com', '', 'inglesonline@grupomainjobs.com', '', '', NULL, 0),
(259, 253, '2019-04-25 18:26:53', 0, 1, 'evillalon-grupomainjobs.com', '', 'evillalon@grupomainjobs.com', '', '', NULL, 0),
(260, 254, '2019-04-30 14:07:33', 0, 1, 'admision.edificacion-grupomainjobs.com', '', 'admision.edificacion@grupomainjobs.com', '', '', NULL, 0),
(261, 255, '2019-05-02 19:31:00', 0, 1, 'mpulido-grupomainjobs.com', '', 'mpulido@grupomainjobs.com', '', '', NULL, 0),
(262, 256, '2019-05-09 19:51:19', 0, 1, 'lbonet-grupomainjobs.com', '', 'lbonet@grupomainjobs.com', '', '', NULL, 0),
(263, 257, '2019-05-22 14:54:18', 0, 1, 'jtorrado-eiposgrados.edu.es', '', 'jtorrado@eiposgrados.edu.es', '', '', NULL, 0),
(264, 258, '2019-05-23 12:16:42', 0, 1, 'mcastillo-mainfor.edu.es', '', 'mcastillo@mainfor.edu.es', '', '', NULL, 0),
(265, 259, '2019-05-27 15:53:44', 0, 1, 'amancera-grupomainjobs.com', '', 'amancera@grupomainjobs.com', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `search_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(3) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sess_id` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ip` varchar(40) NOT NULL,
  `vars` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sess_id`, `created`, `changed`, `ip`, `vars`) VALUES
('0a12iitfkfo5rhgv22k591ai90', '2019-05-27 13:47:08', '2019-05-27 14:19:42', '213.227.29.89', 'bGFuZ3VhZ2V8czo1OiJlc19FUyI7c2tpbnxzOjU6ImxhcnJ5IjtpbWFwX25hbWVzcGFjZXxhOjQ6e3M6ODoicGVyc29uYWwiO2E6MTp7aTowO2E6Mjp7aTowO3M6MDoiIjtpOjE7czoxOiIuIjt9fXM6NToib3RoZXIiO047czo2OiJzaGFyZWQiO047czoxMDoicHJlZml4X291dCI7czowOiIiO31pbWFwX2RlbGltaXRlcnxzOjE6Ii4iO3VzZXJfaWR8czozOiIxNTEiO3VzZXJuYW1lfHM6MjE6InZnb21lei1tYWluZm9yLmVkdS5lcyI7c3RvcmFnZV9ob3N0fHM6OToibG9jYWxob3N0IjtzdG9yYWdlX3BvcnR8aToxNDM7c3RvcmFnZV9zc2x8TjtwYXNzd29yZHxzOjMyOiJBMWhvVkQwY01QSEJBblhhQ2ZNWThONjZVWnpMdWJlSSI7bG9naW5fdGltZXxpOjE1NTg5NTc2Mjg7dGltZXpvbmV8czoxMzoiRXVyb3BlL0JlcmxpbiI7U1RPUkFHRV9TUEVDSUFMLVVTRXxiOjE7YXV0aF9zZWNyZXR8czoyNjoiTENBb0lRRzNsNTR2MFhyanFoM3FmTGZGUVIiO3JlcXVlc3RfdG9rZW58czozMjoiWXNlWFo3YWVhckxWQThxQ2puNnNCQXFLUk9DVlpEZlciO3Rhc2t8czo0OiJtYWlsIjtpbWFwX2hvc3R8czo5OiJsb2NhbGhvc3QiO21ib3h8czo1OiJJTkJPWCI7c29ydF9jb2x8czowOiIiO3NvcnRfb3JkZXJ8czo0OiJERVNDIjtTVE9SQUdFX1RIUkVBRHxhOjM6e2k6MDtzOjEwOiJSRUZFUkVOQ0VTIjtpOjE7czo0OiJSRUZTIjtpOjI7czoxNDoiT1JERVJFRFNVQkpFQ1QiO31TVE9SQUdFX1FVT1RBfGI6MTtTVE9SQUdFX0xJU1QtRVhURU5ERUR8YjoxO3F1b3RhX2Rpc3BsYXl8czo0OiJ0ZXh0IjtsaXN0X2F0dHJpYnxhOjY6e3M6NDoibmFtZSI7czo4OiJtZXNzYWdlcyI7czoyOiJpZCI7czoxMToibWVzc2FnZWxpc3QiO3M6NToiY2xhc3MiO3M6NDg6InJlY29yZHMtdGFibGUgbWVzc2FnZWxpc3Qgc29ydGhlYWRlciBmaXhlZGhlYWRlciI7czoxNToib3B0aW9uc21lbnVpY29uIjtzOjQ6InRydWUiO3M6MTU6ImFyaWEtbGFiZWxsZWRieSI7czoyMjoiYXJpYS1sYWJlbC1tZXNzYWdlbGlzdCI7czo3OiJjb2x1bW5zIjthOjg6e2k6MDtzOjc6InRocmVhZHMiO2k6MTtzOjc6InN1YmplY3QiO2k6MjtzOjY6InN0YXR1cyI7aTozO3M6NjoiZnJvbXRvIjtpOjQ7czo0OiJkYXRlIjtpOjU7czo0OiJzaXplIjtpOjY7czo0OiJmbGFnIjtpOjc7czoxMDoiYXR0YWNobWVudCI7fX1wYWdlfGk6MTtmb2xkZXJzfGE6NDp7czo1OiJJTkJPWCI7YToyOntzOjM6ImNudCI7aToxNTE7czo2OiJtYXh1aWQiO2k6MTUzO31zOjY6IkRyYWZ0cyI7YToyOntzOjM6ImNudCI7aTowO3M6NjoibWF4dWlkIjtpOjA7fXM6NDoiU2VudCI7YToyOntzOjM6ImNudCI7aToxNTI7czo2OiJtYXh1aWQiO2k6MTUyO31zOjU6IlRyYXNoIjthOjI6e3M6MzoiY250IjtpOjM7czo2OiJtYXh1aWQiO2k6Mzt9fXVuc2Vlbl9jb3VudHxhOjQ6e3M6NToiSU5CT1giO2k6MDtzOjY6IkRyYWZ0cyI7aTowO3M6NDoiU2VudCI7aTowO3M6NToiVHJhc2giO2k6MDt9'),
('2mvj28nvs4l8veofoaht72pas5', '2019-05-27 11:52:37', '2019-05-27 11:52:37', '90.68.179.15', 'dGVtcHxiOjE7bGFuZ3VhZ2V8czo1OiJlc19FUyI7dGFza3xzOjU6ImxvZ2luIjtyZXF1ZXN0X3Rva2VufHM6MzI6InBUem5yMVZ5RlpnMEpjQ0V6Z2RkZG8yTDVubHZBR0ZvIjs='),
('e239tcof416vdkdq4d06jfjdi4', '2019-05-27 13:44:30', '2019-05-27 13:45:18', '87.221.102.41', 'bGFuZ3VhZ2V8czo1OiJlc19FUyI7c2tpbnxzOjU6ImxhcnJ5IjtpbWFwX25hbWVzcGFjZXxhOjQ6e3M6ODoicGVyc29uYWwiO2E6MTp7aTowO2E6Mjp7aTowO3M6MDoiIjtpOjE7czoxOiIuIjt9fXM6NToib3RoZXIiO047czo2OiJzaGFyZWQiO047czoxMDoicHJlZml4X291dCI7czowOiIiO31pbWFwX2RlbGltaXRlcnxzOjE6Ii4iO3VzZXJfaWR8czozOiIxMjIiO3VzZXJuYW1lfHM6MjM6InBmZXJyZXJvLW1haW5mb3IuZWR1LmVzIjtzdG9yYWdlX2hvc3R8czo5OiJsb2NhbGhvc3QiO3N0b3JhZ2VfcG9ydHxpOjE0MztzdG9yYWdlX3NzbHxOO3Bhc3N3b3JkfHM6MzI6IkY1amFUSXZxaDQxVUtyQmNVVndsY1RiQkMvQlBua0ZoIjtsb2dpbl90aW1lfGk6MTU1ODk1NzQ3MDt0aW1lem9uZXxzOjEzOiJFdXJvcGUvQmVybGluIjtTVE9SQUdFX1NQRUNJQUwtVVNFfGI6MTthdXRoX3NlY3JldHxzOjI2OiI0UllLU0IzQzdqeGxMMmhrMkloNzBFblo1MCI7cmVxdWVzdF90b2tlbnxzOjMyOiJrWVJrdDdRQ216eHpwY0xTaGQ0RHRvU29LTzM0UVRQVSI7dGFza3xzOjQ6Im1haWwiO2ltYXBfaG9zdHxzOjk6ImxvY2FsaG9zdCI7bWJveHxzOjU6IklOQk9YIjtzb3J0X2NvbHxzOjA6IiI7c29ydF9vcmRlcnxzOjQ6IkRFU0MiO1NUT1JBR0VfVEhSRUFEfGE6Mzp7aTowO3M6MTA6IlJFRkVSRU5DRVMiO2k6MTtzOjQ6IlJFRlMiO2k6MjtzOjE0OiJPUkRFUkVEU1VCSkVDVCI7fVNUT1JBR0VfUVVPVEF8YjoxO1NUT1JBR0VfTElTVC1FWFRFTkRFRHxiOjE7cXVvdGFfZGlzcGxheXxzOjQ6InRleHQiO2xpc3RfYXR0cmlifGE6Njp7czo0OiJuYW1lIjtzOjg6Im1lc3NhZ2VzIjtzOjI6ImlkIjtzOjExOiJtZXNzYWdlbGlzdCI7czo1OiJjbGFzcyI7czo0ODoicmVjb3Jkcy10YWJsZSBtZXNzYWdlbGlzdCBzb3J0aGVhZGVyIGZpeGVkaGVhZGVyIjtzOjE1OiJvcHRpb25zbWVudWljb24iO3M6NDoidHJ1ZSI7czoxNToiYXJpYS1sYWJlbGxlZGJ5IjtzOjIyOiJhcmlhLWxhYmVsLW1lc3NhZ2VsaXN0IjtzOjc6ImNvbHVtbnMiO2E6ODp7aTowO3M6NzoidGhyZWFkcyI7aToxO3M6Nzoic3ViamVjdCI7aToyO3M6Njoic3RhdHVzIjtpOjM7czo2OiJmcm9tdG8iO2k6NDtzOjQ6ImRhdGUiO2k6NTtzOjQ6InNpemUiO2k6NjtzOjQ6ImZsYWciO2k6NztzOjEwOiJhdHRhY2htZW50Ijt9fXBhZ2V8aToxO3Vuc2Vlbl9jb3VudHxhOjQ6e3M6NToiSU5CT1giO2k6MDtzOjY6IkRyYWZ0cyI7aTowO3M6NDoiU2VudCI7aTowO3M6NToiVHJhc2giO2k6MDt9YnJvd3Nlcl9jYXBzfGE6Mzp7czozOiJwZGYiO3M6MToiMSI7czo1OiJmbGFzaCI7czoxOiIwIjtzOjM6InRpZiI7czoxOiIwIjt9c2FmZV9tZXNzYWdlc3xhOjI6e3M6ODoiSU5CT1g6MTMiO2I6MDtzOjg6IklOQk9YOjE0IjtiOjA7fXdyaXRlYWJsZV9hYm9va3xiOjE7Zm9sZGVyc3xhOjE6e3M6NToiSU5CT1giO2E6Mjp7czozOiJjbnQiO2k6MTQ7czo2OiJtYXh1aWQiO2k6MTQ7fX1TVE9SQUdFX0FDTHxiOjA7bGFzdF9jb21wb3NlX3Nlc3Npb258czoyMzoiMTI2MzQxMzM3NTVjZWJjZGJhMzk0ZTEiOw=='),
('edo8r24lsf6ac08415iu0lovv0', '2019-05-27 19:06:52', '2019-05-27 19:06:52', '100.25.17.187', 'dGVtcHxiOjE7bGFuZ3VhZ2V8czo1OiJlbl9VUyI7dGFza3xzOjU6ImxvZ2luIjtyZXF1ZXN0X3Rva2VufHM6MzI6IkZsNzdMQXNkUU5zbGNVVEpBZTBEVjYxWURkUTFMRHZMIjs='),
('genabfffu0la9l56udsokue2l1', '2019-05-27 15:53:44', '2019-05-27 19:17:06', '90.163.144.221', 'bGFuZ3VhZ2V8czo1OiJlc19FUyI7c2tpbnxzOjU6ImxhcnJ5IjtpbWFwX25hbWVzcGFjZXxhOjQ6e3M6ODoicGVyc29uYWwiO2E6MTp7aTowO2E6Mjp7aTowO3M6MDoiIjtpOjE7czoxOiIuIjt9fXM6NToib3RoZXIiO047czo2OiJzaGFyZWQiO047czoxMDoicHJlZml4X291dCI7czowOiIiO31pbWFwX2RlbGltaXRlcnxzOjE6Ii4iO3VzZXJfaWR8czozOiIyNTkiO3VzZXJuYW1lfHM6MjY6ImFtYW5jZXJhLWdydXBvbWFpbmpvYnMuY29tIjtzdG9yYWdlX2hvc3R8czo5OiJsb2NhbGhvc3QiO3N0b3JhZ2VfcG9ydHxpOjE0MztzdG9yYWdlX3NzbHxOO3Bhc3N3b3JkfHM6NDQ6IlJJMkNMczg1endIdTBhRkovZ1d3R1lsQ0tmaUxYVU02eEk4VFpmUTJNODg9Ijtsb2dpbl90aW1lfGk6MTU1ODk2NTIyNDt0aW1lem9uZXxzOjEzOiJFdXJvcGUvQmVybGluIjtTVE9SQUdFX1NQRUNJQUwtVVNFfGI6MTthdXRoX3NlY3JldHxzOjI2OiI4TWtJdVloSU9BN09RZEh5RTZnSWt0b3I0cSI7cmVxdWVzdF90b2tlbnxzOjMyOiI2c2d5T21uNURhcnZpRno1NWhFSVVkMzFMcjhTdTJBViI7dGFza3xzOjQ6Im1haWwiO2ltYXBfaG9zdHxzOjk6ImxvY2FsaG9zdCI7bWJveHxzOjU6IklOQk9YIjtzb3J0X2NvbHxzOjA6IiI7c29ydF9vcmRlcnxzOjQ6IkRFU0MiO1NUT1JBR0VfVEhSRUFEfGE6Mzp7aTowO3M6MTA6IlJFRkVSRU5DRVMiO2k6MTtzOjQ6IlJFRlMiO2k6MjtzOjE0OiJPUkRFUkVEU1VCSkVDVCI7fVNUT1JBR0VfUVVPVEF8YjoxO1NUT1JBR0VfTElTVC1FWFRFTkRFRHxiOjE7cXVvdGFfZGlzcGxheXxzOjQ6InRleHQiO2xpc3RfYXR0cmlifGE6Njp7czo0OiJuYW1lIjtzOjg6Im1lc3NhZ2VzIjtzOjI6ImlkIjtzOjExOiJtZXNzYWdlbGlzdCI7czo1OiJjbGFzcyI7czo0ODoicmVjb3Jkcy10YWJsZSBtZXNzYWdlbGlzdCBzb3J0aGVhZGVyIGZpeGVkaGVhZGVyIjtzOjE1OiJvcHRpb25zbWVudWljb24iO3M6NDoidHJ1ZSI7czoxNToiYXJpYS1sYWJlbGxlZGJ5IjtzOjIyOiJhcmlhLWxhYmVsLW1lc3NhZ2VsaXN0IjtzOjc6ImNvbHVtbnMiO2E6ODp7aTowO3M6NzoidGhyZWFkcyI7aToxO3M6Nzoic3ViamVjdCI7aToyO3M6Njoic3RhdHVzIjtpOjM7czo2OiJmcm9tdG8iO2k6NDtzOjQ6ImRhdGUiO2k6NTtzOjQ6InNpemUiO2k6NjtzOjQ6ImZsYWciO2k6NztzOjEwOiJhdHRhY2htZW50Ijt9fXBhZ2V8aToxO2ZvbGRlcnN8YToxOntzOjU6IklOQk9YIjthOjI6e3M6MzoiY250IjtpOjkzO3M6NjoibWF4dWlkIjtpOjE0NDt9fXVuc2Vlbl9jb3VudHxhOjExOntzOjU6IklOQk9YIjtpOjY7czo2OiJEcmFmdHMiO2k6MDtzOjQ6IlNlbnQiO2k6MDtzOjU6IlRyYXNoIjtpOjExO3M6MTc6IkNvcnJlbyBubyBkZXNlYWRvIjtpOjA7czoxNzoiUHJlc3VwdWVzdG9zIDIwMTgiO2k6MDtzOjI2OiJQcmVzdXB1ZXN0b3MgMjAxOC5GaXJtYWRvcyI7aTowO3M6Mzc6IlByZXN1cHVlc3RvcyAyMDE4LlBlbmRpZW50ZSBkZSBmaXJtYXIiO2k6MDtzOjE3OiJQcmVzdXB1ZXN0b3MgMjAxOSI7aTowO3M6MjY6IlByZXN1cHVlc3RvcyAyMDE5LkZpcm1hZG9zIjtpOjE7czoyODoiUHJlc3VwdWVzdG9zIDIwMTkuUGVuZGllbnRlcyI7aTowO31icm93c2VyX2NhcHN8YTozOntzOjM6InBkZiI7czoxOiIxIjtzOjU6ImZsYXNoIjtzOjE6IjEiO3M6MzoidGlmIjtzOjE6IjAiO31zYWZlX21lc3NhZ2VzfGE6Mjp7czo5OiJJTkJPWDoxNDEiO2I6MDtzOjk6IklOQk9YOjE0NCI7YjowO313cml0ZWFibGVfYWJvb2t8YjoxOw=='),
('k178v0qoa4dkrs3v4pr7iolpj1', '2019-05-27 13:35:17', '2019-05-27 13:43:01', '31.4.219.37', 'bGFuZ3VhZ2V8czo1OiJlc19FUyI7c2tpbnxzOjU6ImxhcnJ5IjtpbWFwX25hbWVzcGFjZXxhOjQ6e3M6ODoicGVyc29uYWwiO2E6MTp7aTowO2E6Mjp7aTowO3M6MDoiIjtpOjE7czoxOiIuIjt9fXM6NToib3RoZXIiO047czo2OiJzaGFyZWQiO047czoxMDoicHJlZml4X291dCI7czowOiIiO31pbWFwX2RlbGltaXRlcnxzOjE6Ii4iO3VzZXJfaWR8czoyOiIyOSI7dXNlcm5hbWV8czoyMjoiamFsb3Blei1tYWluZm9yLmVkdS5lcyI7c3RvcmFnZV9ob3N0fHM6OToibG9jYWxob3N0IjtzdG9yYWdlX3BvcnR8aToxNDM7c3RvcmFnZV9zc2x8TjtwYXNzd29yZHxzOjMyOiJXeVVyWHREQWpLWFVWVXNpamNnWVB6OGI0UHJZUHZhVSI7bG9naW5fdGltZXxpOjE1NTg5NTY5MTc7dGltZXpvbmV8czoxMzoiRXVyb3BlL0JlcmxpbiI7U1RPUkFHRV9TUEVDSUFMLVVTRXxiOjE7YXV0aF9zZWNyZXR8czoyNjoid3lQbTN5djV4WExiUTJvTDNUV3JOMnRqdkEiO3JlcXVlc3RfdG9rZW58czozMjoiNTJ3T0I4ekJLOG5zMWRpaUkxYk1pUG9oMnVPVGFSVlgiO3Rhc2t8czo0OiJtYWlsIjtpbWFwX2hvc3R8czo5OiJsb2NhbGhvc3QiO21ib3h8czo1OiJJTkJPWCI7c29ydF9jb2x8czo0OiJkYXRlIjtzb3J0X29yZGVyfHM6NDoiREVTQyI7U1RPUkFHRV9USFJFQUR8YTozOntpOjA7czoxMDoiUkVGRVJFTkNFUyI7aToxO3M6NDoiUkVGUyI7aToyO3M6MTQ6Ik9SREVSRURTVUJKRUNUIjt9U1RPUkFHRV9RVU9UQXxiOjE7U1RPUkFHRV9MSVNULUVYVEVOREVEfGI6MTtxdW90YV9kaXNwbGF5fHM6NDoidGV4dCI7bGlzdF9hdHRyaWJ8YTo2OntzOjQ6Im5hbWUiO3M6ODoibWVzc2FnZXMiO3M6MjoiaWQiO3M6MTE6Im1lc3NhZ2VsaXN0IjtzOjU6ImNsYXNzIjtzOjQ4OiJyZWNvcmRzLXRhYmxlIG1lc3NhZ2VsaXN0IHNvcnRoZWFkZXIgZml4ZWRoZWFkZXIiO3M6MTU6Im9wdGlvbnNtZW51aWNvbiI7czo0OiJ0cnVlIjtzOjE1OiJhcmlhLWxhYmVsbGVkYnkiO3M6MjI6ImFyaWEtbGFiZWwtbWVzc2FnZWxpc3QiO3M6NzoiY29sdW1ucyI7YTo4OntpOjA7czo3OiJ0aHJlYWRzIjtpOjE7czo3OiJzdWJqZWN0IjtpOjI7czo2OiJzdGF0dXMiO2k6MztzOjY6ImZyb210byI7aTo0O3M6NDoiZGF0ZSI7aTo1O3M6NDoic2l6ZSI7aTo2O3M6NDoiZmxhZyI7aTo3O3M6MTA6ImF0dGFjaG1lbnQiO319cGFnZXxpOjE7Zm9sZGVyc3xhOjE6e3M6NToiSU5CT1giO2E6Mjp7czozOiJjbnQiO2k6MjQ3ODtzOjY6Im1heHVpZCI7aTo0NDg2O319U1RPUkFHRV9TT1JUfGI6MTt1bnNlZW5fY291bnR8YToxOntzOjU6IklOQk9YIjtpOjA7fWxpc3RfbW9kX3NlcXxzOjQ6Ijg4MTciOw=='),
('oc687a8qq2m3ssohsnvmtrecu3', '2019-05-27 19:27:30', '2019-05-27 19:27:30', '90.163.144.221', 'dGVtcHxiOjE7bGFuZ3VhZ2V8czo1OiJlc19FUyI7dGFza3xzOjU6ImxvZ2luIjtyZXF1ZXN0X3Rva2VufHM6MzI6Ikh2Z2FCSmRiSVA2bllEZ0NRMGEwY3RPU0JlYjR4ZXZMIjs='),
('uoc27fr1usfn0st2li4jcsm1p6', '2019-05-27 11:52:40', '2019-05-27 12:23:54', '90.68.179.15', 'bGFuZ3VhZ2V8czo1OiJlc19FUyI7c2tpbnxzOjU6ImxhcnJ5IjtpbWFwX25hbWVzcGFjZXxhOjQ6e3M6ODoicGVyc29uYWwiO2E6MTp7aTowO2E6Mjp7aTowO3M6MDoiIjtpOjE7czoxOiIuIjt9fXM6NToib3RoZXIiO047czo2OiJzaGFyZWQiO047czoxMDoicHJlZml4X291dCI7czowOiIiO31pbWFwX2RlbGltaXRlcnxzOjE6Ii4iO3VzZXJfaWR8czozOiIyMTgiO3VzZXJuYW1lfHM6Mjg6ImVyYW1pcmV6Yy1laW1lZGlhY2lvbi5lZHUuZXMiO3N0b3JhZ2VfaG9zdHxzOjk6ImxvY2FsaG9zdCI7c3RvcmFnZV9wb3J0fGk6MTQzO3N0b3JhZ2Vfc3NsfE47cGFzc3dvcmR8czo0NDoiR1hUdUxZOTYzSDV5QklDdGdaR3cwaXVNZm9kVlk5RXpKVkc3UW41R1ZWcz0iO2xvZ2luX3RpbWV8aToxNTU4OTUwNzYwO3RpbWV6b25lfHM6MTM6IkV1cm9wZS9CZXJsaW4iO1NUT1JBR0VfU1BFQ0lBTC1VU0V8YjoxO2F1dGhfc2VjcmV0fHM6MjY6IkRyVVp0dDlJVmlQQlpRVXFwSjQycE5MN083IjtyZXF1ZXN0X3Rva2VufHM6MzI6ImxmSTgwSnltSGxOaE5UYTU4VG8zV1ZwcnJxNVpOTnZXIjt0YXNrfHM6NDoibWFpbCI7aW1hcF9ob3N0fHM6OToibG9jYWxob3N0IjttYm94fHM6NToiSU5CT1giO3NvcnRfY29sfHM6NDoiZGF0ZSI7c29ydF9vcmRlcnxzOjQ6IkRFU0MiO1NUT1JBR0VfVEhSRUFEfGE6Mzp7aTowO3M6MTA6IlJFRkVSRU5DRVMiO2k6MTtzOjQ6IlJFRlMiO2k6MjtzOjE0OiJPUkRFUkVEU1VCSkVDVCI7fVNUT1JBR0VfUVVPVEF8YjoxO1NUT1JBR0VfTElTVC1FWFRFTkRFRHxiOjE7cXVvdGFfZGlzcGxheXxzOjQ6InRleHQiO2xpc3RfYXR0cmlifGE6Njp7czo0OiJuYW1lIjtzOjg6Im1lc3NhZ2VzIjtzOjI6ImlkIjtzOjExOiJtZXNzYWdlbGlzdCI7czo1OiJjbGFzcyI7czo0ODoicmVjb3Jkcy10YWJsZSBtZXNzYWdlbGlzdCBzb3J0aGVhZGVyIGZpeGVkaGVhZGVyIjtzOjE1OiJvcHRpb25zbWVudWljb24iO3M6NDoidHJ1ZSI7czoxNToiYXJpYS1sYWJlbGxlZGJ5IjtzOjIyOiJhcmlhLWxhYmVsLW1lc3NhZ2VsaXN0IjtzOjc6ImNvbHVtbnMiO2E6ODp7aTowO3M6NzoidGhyZWFkcyI7aToxO3M6Nzoic3ViamVjdCI7aToyO3M6Njoic3RhdHVzIjtpOjM7czo2OiJmcm9tdG8iO2k6NDtzOjQ6ImRhdGUiO2k6NTtzOjQ6InNpemUiO2k6NjtzOjQ6ImZsYWciO2k6NztzOjEwOiJhdHRhY2htZW50Ijt9fXBhZ2V8aToxO3Vuc2Vlbl9jb3VudHxhOjQ6e3M6NToiSU5CT1giO2k6MTtzOjY6IkRyYWZ0cyI7aTowO3M6NDoiU2VudCI7aTowO3M6NToiVHJhc2giO2k6MDt9YnJvd3Nlcl9jYXBzfGE6Mzp7czozOiJwZGYiO3M6MToiMSI7czo1OiJmbGFzaCI7czoxOiIwIjtzOjM6InRpZiI7czoxOiIwIjt9c2FmZV9tZXNzYWdlc3xhOjU6e3M6OToiSU5CT1g6NDI1IjtiOjA7czo5OiJJTkJPWDo0MjYiO2I6MDtzOjk6IklOQk9YOjQyNCI7YjowO3M6OToiSU5CT1g6NDIzIjtiOjA7czo5OiJJTkJPWDo0MjciO2I6MDt9d3JpdGVhYmxlX2Fib29rfGI6MTtTVE9SQUdFX1NPUlR8YjoxO2ZvbGRlcnN8YToxOntzOjU6IklOQk9YIjthOjI6e3M6MzoiY250IjtpOjE5NjtzOjY6Im1heHVpZCI7aTo0Mjg7fX1TVE9SQUdFX0FDTHxiOjA7bGFzdF9jb21wb3NlX3Nlc3Npb258czoyMzoiMTMyMTAzMDMyMjVjZWJiMzkwMjY5ZmUiOw==');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `name` varchar(64) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`name`, `value`) VALUES
('roundcube-version', '2015111100');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mail_host` varchar(128) NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `last_login` datetime DEFAULT NULL,
  `failed_login` datetime DEFAULT NULL,
  `failed_login_counter` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `preferences` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `mail_host`, `created`, `last_login`, `failed_login`, `failed_login_counter`, `language`, `preferences`) VALUES
(1, 'jmoreno-mainfor.edu.es', 'localhost', '2017-01-28 01:20:27', '2019-03-14 09:12:23', '2017-01-30 10:18:40', 1, 'es_ES', 'a:3:{s:8:\"timezone\";s:4:\"auto\";s:4:\"skin\";s:5:\"larry\";s:11:\"client_hash\";s:32:\"ec23ee00875eee4d415cf26ab6a60af1\";}'),
(2, 'mjmorales-mainfor.edu.es', 'localhost', '2017-01-28 08:44:26', '2018-08-02 17:50:46', '2017-08-08 19:53:36', 2, 'es_ES', 'a:8:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:12:\"preview_pane\";s:1:\"0\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:18:\"message_show_email\";b:1;s:8:\"timezone\";s:4:\"auto\";s:9:\"list_cols\";a:8:{i:0;s:7:\"threads\";i:1;s:6:\"status\";i:2;s:6:\"fromto\";i:3;s:7:\"subject\";i:4;s:4:\"date\";i:5;s:4:\"size\";i:6;s:4:\"flag\";i:7;s:10:\"attachment\";}s:11:\"client_hash\";s:32:\"02329a33850681ce865402a4ec266a23\";}'),
(3, 'evillalon-mainfor.edu.es', 'localhost', '2017-01-28 08:45:44', '2018-07-12 13:16:57', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"9b98b2e8692acc24faeb50d30e8c774b\";}'),
(4, 'eortega-mainfor.edu.es', 'localhost', '2017-01-28 08:46:20', '2017-01-28 08:46:20', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"a6f986c10c96b013c112d2953d166030\";}'),
(5, 'amorales-mainfor.edu.es', 'localhost', '2017-01-30 12:09:48', '2019-04-04 08:57:35', '2017-08-11 13:12:10', 3, 'es_ES', 'a:5:{s:11:\"search_mods\";a:15:{s:1:\"*\";a:3:{s:7:\"subject\";i:1;s:4:\"from\";i:1;s:4:\"body\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:4:\"from\";i:1;s:4:\"body\";i:1;}s:18:\"Elementos enviados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:20:\"Elementos eliminados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:34:\"Correo electr&APM-nico no deseado1\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:33:\"Correo electr&APM-nico no deseado\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:20:\"INBOX.Vanesa Hurtado\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:14:\"INBOX.To&APE-i\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:13:\"INBOX.Suvires\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:22:\"INBOX.Susana P&AOk-rez\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:10:\"INBOX.spam\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:11:\"INBOX.Mario\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"compose_responses\";a:1:{i:0;a:4:{s:4:\"name\";s:22:\"Ausente por vacaciones\";s:4:\"text\";s:159:\"Estaré ausente de la oficina desde el 21/08 hasta el 27/08, ambos incluidos. \r\nContactaré contigo en cuanto me incorpore. \r\nGracias y disculpa las molestias!\";s:6:\"format\";s:4:\"text\";s:3:\"key\";s:16:\"dfbd428fd384cee3\";}}s:11:\"client_hash\";s:32:\"20ecd4757892de95050bfd66e3aabb25\";}'),
(6, 'allamas-mainfor.edu.es', 'localhost', '2017-01-30 12:43:47', '2019-05-06 18:17:12', '2019-05-06 18:17:03', 1, 'es_ES', 'a:5:{s:11:\"search_mods\";a:6:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:13:\"Sent Messages\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:32:\"&Accesos&&Alicia%20Pe%26AwE-rez&\";s:11:\"client_hash\";s:32:\"bb40ac3de377ee550905168bcf828d96\";}'),
(7, 'rborrego-mainfor.edu.es', 'localhost', '2017-01-30 12:56:05', '2018-10-02 08:56:37', '2017-08-08 10:11:50', 1, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"8070d192914efca0508643cfec6a5df9\";}'),
(8, 'asalinas-mainfor.edu.es', 'localhost', '2017-01-31 10:21:51', '2017-10-29 12:18:38', '2017-07-07 10:56:10', 1, 'es_ES', 'a:4:{s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"3d762f90f30d702645466daa792b41aa\";}'),
(9, 'jaguilera-mainfor.edu.es', 'localhost', '2017-01-31 10:22:42', '2017-01-31 10:22:42', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c1740decc6bb5f242a49e2bc14600921\";}'),
(10, 'ccasas-mainfor.edu.es', 'localhost', '2017-01-31 10:47:18', '2019-05-26 10:01:09', '2017-08-08 13:46:34', 1, 'es_ES', 'a:5:{s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:1:{s:7:\"subject\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:1:{s:4:\"from\";i:1;}s:5:\"Trash\";a:1:{s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"message_threading\";a:2:{s:13:\"INBOX.Errores\";b:0;s:39:\"INBOX.Despedida, Diploma y pr&APM-rroga\";b:0;}s:11:\"client_hash\";s:32:\"362fdb23fed32425ecdf8f7094e22d72\";}'),
(11, 'agarcia-mainfor.edu.es', 'localhost', '2017-01-31 10:51:49', '2018-12-10 12:39:45', NULL, NULL, 'es_ES', 'a:6:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:10:\"htmleditor\";i:1;s:10:\"reply_mode\";i:1;s:11:\"client_hash\";s:32:\"57396d8692a08ef8af6d2742bd6bbb07\";}'),
(12, 'pdiaz-mainfor.edu.es', 'localhost', '2017-01-31 10:54:09', '2018-12-27 12:39:41', NULL, NULL, 'es_ES', 'a:5:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:0:\"\";s:11:\"client_hash\";s:32:\"ba745e533f512f02a7cbda7c0101275b\";}'),
(13, 'msabater-mainfor.edu.es', 'localhost', '2017-01-31 11:27:10', '2017-01-31 11:27:10', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"6a231842464011421593004a4aa42822\";}'),
(14, 'csuarez-mainfor.es', 'localhost', '2017-01-31 11:32:50', '2017-07-26 17:04:13', '2017-05-20 13:04:23', 2, 'es_ES', 'a:10:{s:16:\"message_sort_col\";s:7:\"arrival\";s:18:\"message_sort_order\";s:4:\"DESC\";s:14:\"compose_extwin\";i:1;s:14:\"draft_autosave\";i:60;s:11:\"mdn_default\";b:1;s:10:\"reply_mode\";i:1;s:8:\"timezone\";s:4:\"auto\";s:11:\"date_format\";s:5:\"d-m-Y\";s:9:\"date_long\";s:9:\"d-m-Y H:i\";s:11:\"client_hash\";s:32:\"533f4ef34bac4428f4e322d05f20db79\";}'),
(15, 'info-mainfor.edu.es', 'localhost', '2017-01-31 11:37:40', '2018-05-16 08:40:33', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"613fcb533192b57dad3ea4f2f91d5e28\";}'),
(16, 'bgarciar-mainfor.edu.es', 'localhost', '2017-01-31 11:48:00', '2017-03-20 08:39:01', NULL, NULL, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:6:\"fromto\";s:18:\"message_sort_order\";s:3:\"ASC\";s:11:\"client_hash\";s:32:\"e9a8257252a0418f7e78a95b910e3dff\";}'),
(17, 'ajmartinez-mainfor.edu.es', 'localhost', '2017-01-31 11:56:45', '2019-03-05 12:14:15', '2017-02-01 18:38:25', 1, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"b26e76ab371240300d5f66539cb88652\";}'),
(18, 'dgarrido-mainfor.edu.es', 'localhost', '2017-01-31 12:56:47', '2019-05-23 10:39:09', '2017-02-01 19:20:39', 1, 'es_ES', 'a:3:{s:17:\"message_threading\";a:1:{s:11:\"INBOX.ifapa\";b:0;}s:12:\"preview_pane\";b:1;s:11:\"client_hash\";s:32:\"92a320a8a3db15ae2653c600b687f560\";}'),
(19, 'mvelasco-mainfor.edu.es', 'localhost', '2017-01-31 14:37:42', '2018-06-10 20:05:31', '2017-03-22 18:44:39', 1, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"286f074c4f57d52d002da5a6577f61c3\";}'),
(20, 'jmolmo-mainfor.edu.es', 'localhost', '2017-01-31 15:13:40', '2017-06-22 12:58:44', '2017-05-10 13:19:21', 2, 'es_ES', 'a:5:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:11:\"client_hash\";s:32:\"b4e90397c88c8adff002de0d7c162371\";}'),
(21, 'malonso-mainfor.edu.es', 'localhost', '2017-01-31 15:30:15', '2019-03-05 19:34:10', '2019-03-05 19:29:40', 1, 'es_ES', 'a:6:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:9:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:18:\"Elementos enviados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:32:\"INBOX.Test empresas.La Uni&APM-n\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:36:\"INBOX.Test empresas.Menzies Aviation\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:19:\"INBOX.Test empresas\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:31:\"INBOX.Test empresas.Implantatic\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:17:\"message_threading\";a:8:{s:19:\"INBOX.Test empresas\";b:0;s:29:\"INBOX.Test empresas.Cervantes\";b:0;s:31:\"INBOX.Test empresas.Implantatic\";b:0;s:29:\"INBOX.Test empresas.San Telmo\";b:0;s:28:\"INBOX.Test empresas.Acerinox\";b:0;s:34:\"INBOX.Test empresas.L&APM-pez Cano\";b:0;s:32:\"INBOX.Test empresas.La Uni&APM-n\";b:0;s:28:\"INBOX.Test empresas.Synergym\";b:0;}s:23:\"addressbook_search_mods\";a:5:{s:4:\"name\";i:1;s:9:\"firstname\";i:1;s:7:\"surname\";i:1;s:5:\"email\";i:1;s:1:\"*\";i:1;}s:11:\"client_hash\";s:32:\"e05218ee2759503f13d552df72f708b4\";}'),
(22, 'arosado-mainfor.edu.es', 'localhost', '2017-01-31 15:48:07', '2019-05-24 08:53:19', '2018-04-09 22:39:18', 1, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"0dec8291b9a7c356d2f284bd9448f222\";}'),
(23, 'jalacal-mainfor.edu.es', 'localhost', '2017-01-31 16:50:48', '2019-02-21 08:40:49', '2019-02-20 14:17:46', 1, 'es_ES', 'a:3:{s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:1:{s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"744dab671958f1f44690fd70421f9ce8\";}'),
(24, 'lbonet-mainfor.edu.es', 'localhost', '2017-01-31 17:12:11', '2019-05-01 12:47:09', '2017-02-21 08:35:18', 1, 'es_ES', 'a:6:{s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:23:\"Sent.Elementos enviados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:12:\"preview_pane\";s:1:\"0\";s:11:\"client_hash\";s:32:\"ef73d08ff169506bcd06c1da39e2d8d0\";}'),
(25, 'alopez-mainfor.edu.es', 'localhost', '2017-01-31 19:05:27', '2018-01-07 19:43:04', NULL, NULL, 'es_ES', 'a:5:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:11:\"client_hash\";s:32:\"1a3a6d5537ac1d2d319cb0c9cba84254\";}'),
(26, 'pdiez-mainfor.edu.es', 'localhost', '2017-02-01 09:05:35', '2017-07-11 15:26:01', '2017-02-14 18:51:58', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c1f2bc36460acc0c35f40fc601dc6d6c\";}'),
(27, 'dvara-mainfor.edu.es', 'localhost', '2017-02-01 10:01:13', '2019-02-28 15:36:53', '2018-01-25 08:40:55', 1, 'es_ES', 'a:4:{s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"4c21c0d626f12f60564317184e58d81d\";}'),
(28, 'fjgomez-mainfor.edu.es', 'localhost', '2017-02-01 13:39:00', '2019-05-07 07:03:00', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"4cbd0ae3fd04c2333c68ed7efef188f6\";}'),
(29, 'jalopez-mainfor.edu.es', 'localhost', '2017-02-01 16:11:48', '2019-05-27 13:35:17', '2019-04-04 12:00:45', 2, 'es_ES', 'a:12:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:10:\"htmleditor\";i:1;s:11:\"mdn_default\";b:1;s:11:\"dsn_default\";b:0;s:22:\"spellcheck_before_send\";b:0;s:12:\"preview_pane\";b:0;s:18:\"message_show_email\";b:1;s:11:\"show_images\";i:2;s:11:\"client_hash\";s:32:\"e6779d413436d8a900f884ae1cdd2a84\";}'),
(30, 'acastro-mainfor.edu.es', 'localhost', '2017-02-01 17:13:12', '2017-11-18 19:58:37', '2017-10-21 14:15:00', 2, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:1:{s:4:\"text\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"8517c0b9e8a7d759ed008913638eb428\";}'),
(31, 'iprieto-mainfor.edu.es', 'localhost', '2017-02-02 19:53:31', '2018-09-11 12:39:45', '2018-02-14 10:03:02', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"a2d6b837729a20f165864d4164dcea33\";}'),
(32, 'ralonso-mainfor.edu.es', 'localhost', '2017-02-02 21:09:41', '2018-12-19 01:28:05', '2018-09-24 10:57:31', 2, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"024809c061c4434aadcf60ee30fe8fd7\";}'),
(33, 'mgarcia-mainfor.edu.es', 'localhost', '2017-02-03 13:10:18', '2019-04-04 08:59:26', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"f713f04fd737b27ba04f0de91a56f611\";}'),
(34, 'adiaz-mainfor.edu.es', 'localhost', '2017-02-04 17:04:44', '2018-08-07 11:36:35', '2017-02-12 16:30:32', 2, 'es_ES', 'a:7:{s:16:\"message_sort_col\";s:2:\"to\";s:18:\"message_sort_order\";s:4:\"DESC\";s:9:\"list_cols\";a:9:{i:0;s:7:\"threads\";i:1;s:7:\"subject\";i:2;s:6:\"status\";i:3;s:6:\"fromto\";i:4;s:4:\"date\";i:5;s:4:\"size\";i:6;s:4:\"flag\";i:7;s:10:\"attachment\";i:8;s:2:\"to\";}s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:18:\"Elementos enviados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:17:\"message_threading\";a:2:{s:5:\"INBOX\";b:0;s:15:\"Correos Enrique\";b:0;}s:17:\"collapsed_folders\";s:0:\"\";s:11:\"client_hash\";s:32:\"5c2c95aaca8f61f15d03b773901a7752\";}'),
(35, 'iluque-mainfor.edu.es', 'localhost', '2017-02-06 19:40:08', '2019-05-05 17:54:10', '2017-02-06 19:50:23', 2, 'es_ES', 'a:5:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:9:\"list_cols\";a:8:{i:0;s:7:\"threads\";i:1;s:7:\"subject\";i:2;s:6:\"status\";i:3;s:4:\"date\";i:4;s:4:\"size\";i:5;s:4:\"flag\";i:6;s:10:\"attachment\";i:7;s:6:\"fromto\";}s:17:\"message_threading\";a:1:{s:5:\"INBOX\";b:1;}s:11:\"client_hash\";s:32:\"c4856375020f39a8e73888a87f6470ba\";}'),
(36, 'pserrano-mainfor.edu.es', 'localhost', '2017-02-07 14:28:22', '2019-05-21 13:16:30', '2017-10-24 11:45:31', 1, 'es_ES', 'a:5:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:1:{s:4:\"text\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:3:{s:7:\"subject\";i:1;s:4:\"from\";i:1;s:4:\"body\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:11:\"client_hash\";s:32:\"07d99610b3df602e2179fbf2824c59ed\";}'),
(37, 'tutorias.informatica-mainfor.edu.es', 'localhost', '2017-02-07 14:29:22', '2017-06-16 14:22:33', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d08d56770e9a4e05706b007660375d30\";}'),
(38, 'csuarez-mainfor.edu.es', 'localhost', '2017-02-08 19:09:34', '2017-11-24 20:02:17', '2017-03-03 17:50:28', 1, 'es_ES', 'a:6:{s:16:\"message_sort_col\";s:7:\"arrival\";s:18:\"message_sort_order\";s:4:\"DESC\";s:14:\"compose_extwin\";i:1;s:14:\"draft_autosave\";i:60;s:11:\"mdn_default\";b:1;s:11:\"client_hash\";s:32:\"6b1e7b42abf55d8099af4bd0f23e8bfa\";}'),
(39, 'academico-mainfor.edu.es', 'localhost', '2017-02-09 10:02:06', '2019-04-05 23:33:59', '2019-02-10 06:56:03', 1, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"5ca05f1fe8bd2a920ad67d48f0c681ae\";}'),
(40, 'ehernandez-mainfor.edu.es', 'localhost', '2017-02-09 13:33:20', '2018-09-18 10:20:50', '2018-02-19 17:18:41', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"19fc4b22c94c5c0dfe8a76f1901edb35\";}'),
(41, 'schoolofenglish-mainfor.edu.es', 'localhost', '2017-02-14 18:22:43', '2017-02-16 13:13:33', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"29fabc1cd973f2306a73807237a0b26f\";}'),
(42, 'tutoriasadmon-mainfor.edu.es', 'localhost', '2017-02-15 13:09:31', '2017-02-15 13:09:31', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"1d854dff84f811bf4ad4fcc17462e888\";}'),
(43, 'aespinoza-mainfor.edu.es', 'localhost', '2017-02-15 13:09:41', '2018-10-02 11:45:11', NULL, NULL, 'es_ES', 'a:6:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:10:\"htmleditor\";i:1;s:10:\"reply_mode\";i:1;s:11:\"client_hash\";s:32:\"c1174984a708bb3e8328b56aa1d76325\";}'),
(44, 'mlopez-mainfor.edu.es', 'localhost', '2017-02-15 13:10:04', '2017-02-15 13:10:04', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"608d54283478d075a25ef23a8dfa134a\";}'),
(45, 'jarubio-mainfor.edu.es', 'localhost', '2017-02-15 13:10:14', '2019-05-20 08:12:25', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d8928cc9dc61997dd0cb2ca0136c51e8\";}'),
(46, 'jmarias-mainfor.edu.es', 'localhost', '2017-02-15 13:10:23', '2019-05-26 19:09:20', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"23219f31fe19b6083b921532e5a898ef\";}'),
(47, 'jagarcia-mainfor.edu.es', 'localhost', '2017-02-15 23:31:11', '2017-05-19 13:25:33', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"8b7e5d94bb1af8242eb59da24a19e3bd\";}'),
(48, 'gestion-mainfor.edu.es', 'localhost', '2017-02-17 12:04:17', '2019-02-06 08:48:12', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d9db9382e9941cf1b366ae8a34d57311\";}'),
(49, 'mcruiz-mainfor.es', 'localhost', '2017-02-18 23:17:52', '2018-06-28 12:03:21', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"6e4d7e4c00ee41c2e73c07c47e7d06f3\";}'),
(50, 'imvazquez-mainfor.edu.es', 'localhost', '2017-02-20 18:13:37', '2017-02-20 18:13:37', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"936411015e4e0366f18b6f83a31693dd\";}'),
(51, 'masuvires-mainfor.edu.es', 'localhost', '2017-02-22 14:38:10', '2019-03-05 11:57:10', '2018-01-15 20:01:25', 1, 'es_ES', 'a:4:{s:11:\"search_mods\";a:8:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:52:\"Consorcio Fernando de los R&AO0-os.Guadalinfo 5-2016\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:27:\"Antiguos.Cursos.C&APM-mpeta\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:15:\"JCyL.TuCertiCyL\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:17:\"collapsed_folders\";s:107:\"&C%26AOE-mara%20de%20Comercio&&CARM&&FE&&ITU&&Programas%20universitarios&&Docencia&&Alertas&&%5BAirmail%5D&\";s:9:\"list_cols\";a:9:{i:0;s:7:\"threads\";i:1;s:7:\"subject\";i:2;s:6:\"status\";i:3;s:6:\"fromto\";i:4;s:4:\"date\";i:5;s:4:\"size\";i:6;s:4:\"flag\";i:7;s:10:\"attachment\";i:8;s:2:\"to\";}s:11:\"client_hash\";s:32:\"3ca87adb53c5eb27ea6ef73029515d87\";}'),
(52, 'vhurtado-mainfor.edu.es', 'localhost', '2017-03-14 08:44:09', '2019-04-04 09:00:51', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"4097d76a6129a39b57382e0adda14526\";}'),
(53, 'mlgarcia-mainfor.edu.es', 'localhost', '2017-03-17 10:25:57', '2017-04-24 18:20:32', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"08107eab502cf8a316559d43734d4b90\";}'),
(54, 'international-mainfor.edu.es', 'localhost', '2017-03-17 22:20:32', '2017-11-17 09:13:23', '2017-11-15 11:01:19', 1, 'es_ES', 'a:11:{s:16:\"message_sort_col\";s:7:\"arrival\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:12:\"preview_pane\";s:1:\"0\";s:17:\"message_threading\";a:1:{s:4:\"Sent\";b:0;}s:10:\"htmleditor\";i:1;s:22:\"spellcheck_before_send\";b:1;s:9:\"sig_below\";b:1;s:18:\"message_show_email\";b:1;s:11:\"show_images\";i:2;s:11:\"client_hash\";s:32:\"89a1420b483fc2e56c0ecb819d5c0869\";}'),
(55, 'mserrano-mainfor.edu.es', 'localhost', '2017-03-19 10:58:22', '2019-05-26 21:40:13', '2017-04-05 20:20:53', 1, 'es_ES', 'a:7:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:10:\"htmleditor\";i:1;s:11:\"mdn_default\";b:1;s:11:\"show_images\";i:2;s:11:\"client_hash\";s:32:\"e710eb81edbdd7c5b86ea183daa8f75d\";}'),
(56, 'spostigo-mainfor.edu.es', 'localhost', '2017-03-20 10:34:34', '2019-05-15 11:32:32', '2017-11-25 10:12:46', 2, 'es_ES', 'a:11:{s:17:\"collapsed_folders\";s:24:\"&smtp&&Clientes.Extenda&\";s:17:\"message_threading\";a:6:{s:13:\"Clientes.CEEC\";b:0;s:34:\"Colaboradores.V&AO0-ctor G&APM-mez\";b:0;s:23:\"Proveedores.Publisergio\";b:0;s:22:\"Proveedores.T&APM-tems\";b:0;s:41:\"Administracio&AwE-n.Eva Ortega.Eva Ortega\";b:0;s:3:\"ACD\";b:0;}s:12:\"preview_pane\";s:1:\"0\";s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:43:\"Direccio&AwE-n.Mari&AwE-a Jose&AwE- Morales\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:10:\"htmleditor\";i:2;s:10:\"reply_mode\";i:1;s:8:\"timezone\";s:4:\"auto\";s:4:\"skin\";s:7:\"classic\";s:11:\"client_hash\";s:32:\"f2ec52100c83dfe6a8d8ba2e3c3d10d3\";}'),
(57, 'glopez-mainfor.edu.es', 'localhost', '2017-03-22 16:01:47', '2017-03-27 20:57:03', '2017-03-22 20:12:54', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"16d8c8e96d6de7c56b4774126208a2c7\";}'),
(58, 'msagal-mainfor.edu.es', 'localhost', '2017-03-24 09:38:53', '2018-01-29 19:43:02', NULL, NULL, 'es_ES', 'a:6:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:12:\"preview_pane\";b:1;s:17:\"message_threading\";a:2:{s:7:\"GUARDAR\";b:0;s:11:\"RESPONDIDOS\";b:0;}s:11:\"client_hash\";s:32:\"56f742477ca39987ec7e5313dd89b27a\";}'),
(59, 'rpinazo-mainfor.edu.es', 'localhost', '2017-03-28 12:44:25', '2018-03-19 17:57:11', '2018-03-19 17:56:28', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"63ab3036408fd623a2c2bdeed61032d1\";}'),
(60, 'javier-mainfor.edu.es', 'localhost', '2017-04-10 08:57:07', '2019-05-07 14:42:06', '2018-05-09 09:37:11', 1, 'es_ES', 'a:5:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:7:\"&INBOX&\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"f7e77b6254e3115d5c758a2268b05f1a\";}'),
(61, 'lruizg-mainfor.edu.es', 'localhost', '2017-04-20 10:57:00', '2019-03-18 14:31:15', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:3:\"ASC\";s:11:\"client_hash\";s:32:\"b6afb634665f32bc676a088be4762a7b\";}'),
(62, 'masanchez-mainfor.edu.es', 'localhost', '2017-04-21 23:06:47', '2017-04-21 23:06:47', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:14:\"INBOX.Enviados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"3f7e39fb7c27e724235a8320b8e296b0\";}'),
(63, 'fhuercano-mainfor.edu.es', 'localhost', '2017-04-21 23:36:56', '2019-02-10 13:20:46', '2018-10-23 20:00:10', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"379b6cc96857fd269335474525a01cd7\";}'),
(64, 'practicumadmon-mainfor.edu.es', 'localhost', '2017-04-22 00:28:11', '2017-09-07 09:31:08', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"5931206a833840282d88c029a364dd66\";}'),
(65, 'smartin-mainfor.edu.es', 'localhost', '2017-04-25 23:42:59', '2017-04-25 23:42:59', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"c7463475fdcc11b9ee86aac9fe959a0b\";}'),
(66, 'apacheco-mainfor.edu.es', 'localhost', '2017-04-25 23:50:17', '2017-04-25 23:50:17', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"9d480082934654df8dcb197ec8f0d210\";}'),
(67, 'vguerrero-mainfor.edu.es', 'localhost', '2017-04-26 00:01:53', '2017-04-26 00:01:53', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"bd77263b96d4f0d798f6f16c15f2734d\";}'),
(68, 'jvelasco-mainfor.edu.es', 'localhost', '2017-05-03 18:28:45', '2018-10-22 15:27:51', NULL, NULL, 'es_ES', 'a:2:{s:12:\"preview_pane\";s:1:\"1\";s:11:\"client_hash\";s:32:\"0428eae9847493b4c9715f1b709c8344\";}'),
(69, 'msagall-mainfor.edu.es', 'localhost', '2017-05-16 09:29:04', '2018-05-09 09:38:48', '2017-06-01 20:19:38', 1, 'es_ES', 'a:7:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:7:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:1:{s:4:\"text\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:7:\"GUARDAR\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:11:\"RESPONDIDOS\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:10:\"htmleditor\";i:3;s:17:\"message_threading\";a:2:{s:7:\"GUARDAR\";b:0;s:11:\"RESPONDIDOS\";b:0;}s:12:\"preview_pane\";b:1;s:11:\"client_hash\";s:32:\"daead81a00a29aa71a1ffdf7abef4088\";}'),
(70, 'pushakk', 'localhost', '2017-05-16 12:21:11', '2017-05-16 12:24:07', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"bb8d6529e07c796fd04916ad99a5a8d8\";}'),
(71, 'acalleya-mainfor.edu.es', 'localhost', '2017-06-08 12:44:46', '2018-12-03 22:57:10', NULL, NULL, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"1ef9ed9de9dedcbb5df77cbfeed6f552\";}'),
(72, 'netflix1-mainfor.edu.es', 'localhost', '2017-06-18 12:09:57', '2017-07-27 13:35:11', NULL, NULL, 'es_ES', 'a:5:{s:21:\"show_real_foldernames\";b:1;s:20:\"lock_special_folders\";b:1;s:9:\"junk_mbox\";s:4:\"SPAM\";s:17:\"message_threading\";a:1:{s:4:\"SPAM\";b:0;}s:11:\"client_hash\";s:32:\"c853b41438f863c8041e3b238c6468a2\";}'),
(73, 'cursos-mainfor.edu.es', 'localhost', '2017-06-29 12:18:47', '2017-10-23 11:02:08', '2017-10-23 11:01:55', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"675644ad060421f5360b942212fc04c9\";}'),
(74, 'aiinfantes-mainfor.edu.es', 'localhost', '2017-06-29 12:23:57', '2018-11-26 11:07:28', '2018-04-05 11:02:52', 1, 'es_ES', 'a:6:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:4:\"skin\";s:7:\"classic\";s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"message_threading\";a:2:{s:28:\"INBOX.Competencias digitales\";b:0;s:10:\"INBOX.PAED\";b:0;}s:11:\"client_hash\";s:32:\"56527c5b7528b33dbadf7b39c227d68a\";}'),
(75, 'soporteguadalinfo-mainfor.edu.es', 'localhost', '2017-07-10 12:46:58', '2017-07-10 12:46:58', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"424730e0e693afb3f584afffce97632b\";}'),
(76, 'tutoriasmediacion-mainfor.edu.es', 'localhost', '2017-07-19 14:10:34', '2018-02-21 11:30:19', '2017-07-25 18:59:45', 1, 'es_ES', 'a:3:{s:9:\"sig_below\";b:0;s:18:\"strip_existing_sig\";b:1;s:11:\"client_hash\";s:32:\"7682bde33e0c682933d6fae7a5aa635a\";}'),
(77, 'lmarting-mainfor.edu.es', 'localhost', '2017-08-29 11:15:41', '2018-12-21 14:41:11', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"5fa4d5343d899099c177af7e6f733597\";}'),
(78, 'dsanchez-mainfor.edu.es', 'localhost', '2017-09-04 16:49:51', '2017-09-04 16:49:51', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"cd37e0908a8fefc23da5a1f300a2c39b\";}'),
(79, 'practicum-mainfor.edu.es', 'localhost', '2017-09-07 09:30:16', '2018-04-04 15:41:06', '2018-04-04 15:40:51', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"dd803bffa932f37cf7fbc1c3d1ce748a\";}'),
(80, 'mrramirez-mainfor.edu.es', 'localhost', '2017-09-09 10:33:58', '2018-09-05 14:05:14', '2018-08-10 12:41:11', 1, 'es_ES', 'a:3:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:17:\"collapsed_folders\";s:0:\"\";s:11:\"client_hash\";s:32:\"ddd1eecd522e141bbced8e916dcafe6b\";}'),
(81, 'carevalo-mainfor.edu.es', 'localhost', '2017-09-13 11:24:36', '2017-09-13 11:24:36', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"2db812c2c73c976a60431bf487055f39\";}'),
(82, 'jleon-mainfor.edu.es', 'localhost', '2017-09-14 12:15:40', '2018-07-16 09:41:55', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"86d37e93cb74665250c7945fe65c0ddc\";}'),
(83, 'mcruiz-mainfor.edu.es', 'localhost', '2017-10-11 09:45:09', '2017-10-11 09:45:09', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"afefe20c05608248c6abb46653e639ed\";s:9:\"sent_mbox\";s:13:\"Sent Messages\";}'),
(84, 'asandoval-mainfor.edu.es', 'localhost', '2017-10-11 11:03:06', '2017-10-11 11:03:06', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"5f59ec4ef777805769ed5f5ddf7f438f\";}'),
(85, 'itorre-mainfor.edu.es', 'localhost', '2017-10-11 11:11:42', '2018-02-05 09:42:13', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"afcd5bc0dfcabdbf2742aa109d9507b9\";}'),
(86, 'rbermudez-mainfor.edu.es', 'localhost', '2017-10-12 14:12:52', '2018-04-06 22:18:19', NULL, NULL, 'es_ES', 'a:2:{s:17:\"message_threading\";a:1:{s:15:\"mensajes leidos\";b:0;}s:11:\"client_hash\";s:32:\"dafcfac4a649958e456171c186b44804\";}'),
(87, 'agallego-mainfor.edu.es', 'localhost', '2017-10-16 18:19:45', '2018-01-14 17:42:48', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"48674345467d9af452632e6a952489e0\";}'),
(88, 'lcasero-mainfor.edu.es', 'localhost', '2017-10-20 11:11:18', '2019-02-25 18:15:23', '2019-02-01 10:28:29', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"a19d0befcdbc32dc3d92abbc78557b98\";}'),
(89, 'fjmartin-mainfor.edu.es', 'localhost', '2017-11-01 15:16:34', '2019-05-03 11:03:44', '2018-01-29 16:03:16', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c81e4260ccdf7a52a98d45c637370717\";}'),
(90, 'mpulido-mainfor.edu.es', 'localhost', '2017-11-07 11:45:26', '2019-04-10 11:49:55', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"caeee7076fa6cdba95218bed456f1ce3\";}'),
(91, 'dlopez-mainfor.edu.es', 'localhost', '2017-11-07 21:30:40', '2018-08-20 12:33:07', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"0d064c51726231a01ab48b517ab75000\";}'),
(92, 'pymedigital-mainfor.edu.es', 'localhost', '2017-11-09 09:17:39', '2017-11-09 09:17:39', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"edffed2d9bf0f38bedaa660cc57c0cc7\";}'),
(93, 'cgarcia-mainfor.edu.es', 'localhost', '2017-11-17 18:22:04', '2019-04-25 20:10:29', '2017-11-21 17:01:58', 1, 'es_ES', 'a:5:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:0:\"\";s:11:\"client_hash\";s:32:\"29897971d43bfbf544b38dd5cc96a0b1\";}'),
(94, 'magonzalez-mainfor.edu.es', 'localhost', '2017-11-28 13:41:40', '2017-12-05 09:37:57', '2017-12-05 05:54:44', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"544a0700aa8132a49c2e7105e8d13795\";}'),
(95, 'magonzalez-fundaciondidactica.org', 'localhost', '2017-12-04 13:51:51', '2017-12-05 13:28:58', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c8cf2f5d0f211168406f15fd4da53d6c\";}'),
(96, 'acerinox-mainfor.edu.es', 'localhost', '2017-12-19 12:26:08', '2018-05-16 08:43:10', '2017-12-19 14:17:30', 1, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:4:\"from\";i:1;s:7:\"subject\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:20:\"INBOX.Comunicaciones\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"8518cfe62d058fc9ac38fff8a0de74ab\";}'),
(97, 'soporte-mainfor.edu.es', 'localhost', '2017-12-28 17:45:55', '2017-12-28 17:45:55', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:3:\"ASC\";s:11:\"client_hash\";s:32:\"09379fe8f2896bbeb91687efef81fdc5\";}'),
(98, 'amiralles-mainfor.edu.es', 'localhost', '2018-01-26 15:25:47', '2018-12-18 14:36:17', '2018-07-04 08:04:36', 3, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"a08b3e7642a24a016c2255f6f2011ccb\";}'),
(99, 'acasero-mainfor.edu.es', 'localhost', '2018-01-30 13:26:30', '2018-05-07 20:32:19', '2018-04-16 20:22:09', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"79215b9b4b649f4abd95faf7a1650bd9\";}'),
(100, 'aenriquez-mainfor.edu.es', 'localhost', '2018-02-06 11:02:44', '2018-09-04 09:20:15', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:3:\"ASC\";s:11:\"client_hash\";s:32:\"242048530ec55d8564ad49fe0d24e76a\";}'),
(101, 'mromero-mainfor.edu.es', 'localhost', '2018-02-06 11:09:56', '2018-09-28 09:14:54', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"e4e02b41aee59fa20ca7513d645b2c0c\";}'),
(102, 'info-carnetfitosanitarios.com', 'localhost', '2018-02-08 16:03:50', '2018-02-08 16:03:50', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"22bfffbd6fa29b7917e60301327c4aa0\";}'),
(103, 'info-cursohomologadolegionella.com', 'localhost', '2018-02-08 16:04:08', '2018-02-08 16:04:08', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c6c89b9f445819a44552c162d1843e24\";}'),
(104, 'carlosrodriguez-campus-seneca.es', 'localhost', '2018-02-16 09:42:38', '2018-02-16 09:42:38', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"11687b247e82535d5fbfc4928939fc40\";}'),
(105, 'mariavictoriagarcia-campus-seneca.es', 'localhost', '2018-02-16 09:53:35', '2018-02-20 10:01:43', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"01f4d9f3893a016ce8ec4c3c99022c38\";}'),
(106, 'amunoz-mainfor.edu.es', 'localhost', '2018-02-16 15:03:30', '2018-02-16 15:03:30', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"644ca6cd6bc965b072d57c0c25feaa07\";}'),
(107, 'mariadelcarmensanchez-campus-seneca.es', 'localhost', '2018-02-19 12:06:00', '2018-02-20 11:57:49', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"e990334619a53610c7a68e63a7931bf9\";}'),
(108, 'cmesa-mainfor.edu.es', 'localhost', '2018-02-23 11:48:28', '2018-05-02 17:34:27', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"b6ad51bbefcba72b70167ef1209150b5\";}'),
(109, 'tutoriasprl-campus-seneca.es', 'localhost', '2018-03-19 17:56:26', '2018-05-28 09:06:43', NULL, NULL, 'es_ES', 'a:2:{s:11:\"search_mods\";a:3:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}}s:11:\"client_hash\";s:32:\"719f47c9327af3a224a80357cf5f2d4c\";}'),
(110, 'bbonilla-mainfor.edu.es', 'localhost', '2018-03-20 11:14:49', '2018-03-20 11:14:49', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"23c9cfa6783e9b3687145e3a87fe8aa0\";}'),
(111, 'egarcia-mainfor.edu.es', 'localhost', '2018-03-22 11:18:50', '2019-03-18 16:41:23', NULL, NULL, 'es_ES', 'a:5:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:383:\"&INBOX.ACUMBA&&INBOX.Adm%26APM-n%20mail&&INBOX.Alumnos%202018&&INBOX.BIOMASA&&INBOX.BONIFICADO%202018&&INBOX.COMPRAS&&INBOX.DOCENCIA%2C%20TUTOR%20ON%20LINE&&INBOX.Docs%20Students&&INBOX.EDIFICACI%26ANM-N&&INBOX.INFORMES%20DIARIOS%20PROGRAMAS&&INBOX.LABORAL%202018&&INBOX.MIS%20PR%26AME-CTICAS&&INBOX.OBJETIVOS&&INBOX.PAGOS&&INBOX.Pr%26AOE-cticas-Empresas&&Trash.De%20Laura%20y%20Ana&\";s:11:\"search_mods\";a:14:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:21:\"INBOX.EDIFICACI&ANM-N\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:28:\"INBOX.EDIFICACI&ANM-N.6&AKo-\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:42:\"INBOX.EDIFICACI&ANM-N.Claves acceso Campus\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:51:\"INBOX.EDIFICACI&ANM-N.Espa&APE-a 6&AKo- Edici&APM-n\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:48:\"INBOX.EDIFICACI&ANM-N.Latinos 6&AKo- Edici&APM-n\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:37:\"INBOX.EDIFICACI&ANM-N.Mail bienvenida\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:35:\"INBOX.EDIFICACI&ANM-N.Pagos Latinos\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:26:\"INBOX.EDIFICACI&ANM-N.Push\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:61:\"INBOX.EDIFICACI&ANM-N.Resoluci&APM-n Comit&AOk- Acad&AOk-mico\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:43:\"INBOX.EDIFICACI&ANM-N.Validaci&APM-n Manuel\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"cfa59d5f7184f68c4389803e482d7459\";}'),
(112, 'ecampos-mainfor.edu.es', 'localhost', '2018-03-22 13:36:34', '2019-03-11 11:16:14', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"f3eee0827f6832c75e5db5a07d892e9c\";}'),
(113, 'rsanchez-mainfor.edu.es', 'localhost', '2018-04-03 10:58:56', '2018-04-03 10:58:56', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"63713c21f9852206784e2664285a403d\";}'),
(114, 'yzamanillo-mainfor.edu.es', 'localhost', '2018-04-04 16:07:56', '2019-04-04 09:04:29', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"d5284db946734c5870ebf7da8108d28c\";}'),
(115, 'jsanchezg-mainfor.edu.es', 'localhost', '2018-04-11 12:56:01', '2018-04-11 12:56:01', NULL, NULL, 'es_ES', 'a:2:{s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:12:\"INBOX.Envios\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"2af6184888dd4ff6fd105edd5f36361a\";}'),
(116, 'formacion.imfe-mainfor.edu.es', 'localhost', '2018-04-23 09:23:25', '2018-07-05 18:35:22', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"793c7c44adf757201548a1d6d0016a35\";}'),
(117, 'pbueno-mainfor.edu.es', 'localhost', '2018-04-23 11:51:16', '2019-05-21 17:34:50', '2018-05-17 18:36:51', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"577df43ca88291760dcf1761d307dbd2\";}'),
(118, 'mjaimez-mainfor.edu.es', 'localhost', '2018-04-24 09:07:43', '2019-04-05 09:18:54', '2018-06-08 09:23:26', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:13:\"INBOX.Alumnos\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"41e93c47fe2a3a94abc5682c8efae7cc\";}'),
(119, 'lcasquero-mainfor.edu.es', 'localhost', '2018-05-03 09:16:17', '2018-05-16 09:16:47', '2018-05-16 09:10:40', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:3:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}}s:11:\"client_hash\";s:32:\"c0febd3d60e712d5fae07ff0e2148947\";}'),
(120, 'tutoriaslaboral-mainfor.edu.es', 'localhost', '2018-05-08 10:03:45', '2018-12-02 08:56:27', '2018-12-02 08:53:59', 1, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"306dab11cc7ae8107f9d02442a22fa6f\";}'),
(121, 'sambrosio-mainfor.edu.es', 'localhost', '2018-05-08 14:40:22', '2018-06-14 18:11:50', '2018-05-25 12:30:58', 1, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"6fdfb5d8332a85626e3c970a3f13e962\";}'),
(122, 'pferrero-mainfor.edu.es', 'localhost', '2018-05-15 12:12:39', '2019-05-27 13:44:30', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"9f81c7aca6303ce43a039c38899cf16d\";}'),
(123, 'sruiz-mainfor.edu.es', 'localhost', '2018-05-16 11:27:36', '2018-05-16 11:27:36', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"8a898ae870502ec5050f6485b8e92924\";}');
INSERT INTO `users` (`user_id`, `username`, `mail_host`, `created`, `last_login`, `failed_login`, `failed_login_counter`, `language`, `preferences`) VALUES
(124, 'murciaartesana-mainfor.edu.es', 'localhost', '2018-05-17 11:30:51', '2018-05-17 11:30:51', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c4c8c7965052e6459a2b090b356faa6a\";}'),
(125, 'nlopez-mainfor.edu.es', 'localhost', '2018-06-05 11:53:56', '2018-09-18 10:19:57', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:7:\"arrival\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"aadacd1dc950e7e7f2612814da484c12\";}'),
(126, 'tic-mainfor.edu.es', 'localhost', '2018-06-05 13:11:37', '2018-06-05 13:37:38', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"f96e51fb3698b7ae49640185898a22fc\";}'),
(127, 'aperez-mainfor.edu.es', 'localhost', '2018-06-08 11:02:29', '2019-04-25 16:45:28', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:18:\"Elementos enviados\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"eef78a990b2c20f38cb652579882b80b\";}'),
(128, 'jhueso-mainfor.edu.es', 'localhost', '2018-06-11 20:56:46', '2018-09-20 12:55:42', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"32920ffcd682f429e51a9005c534345f\";}'),
(129, 'asalinas-mainfor.es', 'localhost', '2018-06-28 11:44:26', '2018-06-28 11:44:26', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"0da09cfeda1060bb592e81b855c8b77d\";}'),
(130, 'sperez-mainfor.es', 'localhost', '2018-06-28 11:49:39', '2018-06-28 11:49:39', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"d526e18dc3124c85c94e57d14a6f61f9\";}'),
(131, 'alopez-mainfor.es', 'localhost', '2018-06-28 11:59:58', '2018-06-28 12:09:38', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"21978741cdc4499eb0170750092cee83\";}'),
(132, 'javier-mainfor.es', 'localhost', '2018-06-28 12:06:21', '2018-06-28 12:06:21', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"c1f55c3b930fea5d0324b38d8bb14550\";}'),
(133, 'aorozco-mainfor.edu.es', 'localhost', '2018-07-10 10:49:43', '2018-08-07 08:38:59', '2018-07-19 10:40:21', 2, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"ccfdc4e79cf5e5be9083e505bf3240a6\";}'),
(134, 'jariza-mainfor.edu.es', 'localhost', '2018-07-16 13:23:28', '2018-09-12 13:23:50', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"84dace2a7c6da252e5ac6d97fbd47e8c\";}'),
(135, 'sfernandezc-mainfor.edu.es', 'localhost', '2018-07-16 13:28:10', '2019-05-19 18:48:31', '2018-07-25 19:11:36', 1, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"ced35cc69d71782045901a20685c4283\";}'),
(136, 'aperez-fundaciondidactica.org', 'localhost', '2018-07-27 13:28:19', '2018-07-27 13:28:19', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:3:\"ASC\";s:11:\"client_hash\";s:32:\"c903e873815bfcbdda0c0b41eed4c0ed\";}'),
(137, 'tutoriasyevaluacion-mainfor.edu.es', 'localhost', '2018-07-30 16:59:54', '2019-01-19 00:50:14', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"9d6cf4b47a5286ae247d3e9253280364\";}'),
(138, 'aperezm-mainfor.edu.es', 'localhost', '2018-08-06 12:37:43', '2018-08-06 12:37:43', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"db0d217d9bb94397094197f2cc164998\";}'),
(139, 'sperez-mainfor.edu.es', 'localhost', '2018-08-16 17:41:18', '2019-03-14 08:47:02', NULL, NULL, 'es_ES', 'a:5:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"collapsed_folders\";s:0:\"\";s:11:\"client_hash\";s:32:\"26fa5ab985fb2d7eacab72b029852935\";s:9:\"sent_mbox\";s:13:\"Sent Messages\";}'),
(140, 'nguerrero-mainfor.edu.es', 'localhost', '2018-08-23 09:29:52', '2018-08-23 09:30:27', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"55714346f6fb6fb01c94a337e89b6bad\";}'),
(141, 'mainforedu', 'localhost', '2018-08-27 12:59:25', '2018-08-27 12:59:25', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"1d467b3fe1a8c799b7749fedb6eed840\";}'),
(142, 'mlcabrera-mainfor.edu.es', 'localhost', '2018-08-28 15:20:57', '2018-08-28 15:22:01', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"046d18ce08481297b6aa60f270a87dcd\";}'),
(143, 'emartin-mainfor.edu.es', 'localhost', '2018-09-04 09:15:13', '2018-09-04 09:15:13', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c8190ad5891853825843a570b4537740\";}'),
(144, 'cmrodriguez-mainfor.edu.es', 'localhost', '2018-09-04 09:17:46', '2018-09-04 09:17:46', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c492cc9481dad1add2cd93693e966838\";}'),
(145, 'rdoblado-mainfor.edu.es', 'localhost', '2018-09-04 11:58:46', '2019-02-26 19:07:41', NULL, NULL, 'es_ES', 'a:5:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:17:\"message_threading\";a:1:{s:5:\"INBOX\";b:0;}s:11:\"client_hash\";s:32:\"55c5cb2067a5c031d12f40aca951a36b\";}'),
(146, 'sperez-eimediacion.edu.es', 'localhost', '2018-09-06 13:03:12', '2018-09-06 13:03:12', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"da84857511760e363ca59c1d8664bbf6\";}'),
(147, 'ecaparros-mainfor.edu.es', 'localhost', '2018-09-11 11:27:59', '2018-11-19 10:17:55', '2018-09-29 01:23:53', 1, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"18f9444568c85394e956a4089992c3fb\";}'),
(148, 'jmledo-mainfor.edu.es', 'localhost', '2018-09-11 11:29:47', '2019-05-13 00:06:58', NULL, NULL, 'es_ES', 'a:2:{s:4:\"skin\";s:5:\"larry\";s:11:\"client_hash\";s:32:\"fb7636865c61272a5a3a3d88ef0994ea\";}'),
(149, 'maandres-mainfor.edu.es', 'localhost', '2018-09-11 11:32:27', '2018-09-11 11:34:48', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"00ec128ce62d86db473a00d42ed3193d\";}'),
(150, 'admision-eiposgrados.edu.es', 'localhost', '2018-09-11 13:15:54', '2018-09-11 13:15:54', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"2814e2358248484e2ce01adf5fb4b68c\";}'),
(151, 'vgomez-mainfor.edu.es', 'localhost', '2018-09-12 09:48:13', '2019-05-27 13:47:08', NULL, NULL, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"053e18e10a741cd1fd998398c151a738\";}'),
(152, 'bguillen-mainfor.edu.es', 'localhost', '2018-09-13 10:48:01', '2018-09-13 10:48:01', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"defa5dd7769bd42b956e3ff8922982d3\";}'),
(153, 'admin-eiposgrados.edu.es', 'localhost', '2018-09-14 10:33:33', '2018-09-20 18:40:59', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"36c7fff568505bcd520c5e08c7ccdf84\";}'),
(154, 'eramirez-eimediacion.edu.es', 'localhost', '2018-09-18 15:04:46', '2019-02-14 11:31:24', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"59cd60c0ad89493501b1c00d152b7e47\";}'),
(155, 'egodino-eimediacion.edu.es', 'localhost', '2018-09-18 15:05:08', '2019-02-14 11:33:01', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d79144624ca26557c88f61a834934f96\";}'),
(156, 'rcordero-eimediacion.edu.es', 'localhost', '2018-09-18 15:05:34', '2019-02-14 11:31:55', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d95f8efe4cb05e57251bfd8476d265cb\";}'),
(157, 'scabeza-mainfor.edu.es', 'localhost', '2018-09-19 10:24:36', '2018-09-19 16:37:43', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"30368dd9a3f1843a82e43e55e2a1ead6\";}'),
(158, 'dgarcia-mainfor.edu.es', 'localhost', '2018-09-20 10:44:43', '2018-09-20 10:44:43', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"fcb24919b61d4c4fbae06b26139aaea1\";}'),
(159, 'mcalvo-mainfor.edu.es', 'localhost', '2018-09-20 12:54:32', '2019-04-07 15:52:27', '2019-03-02 10:43:54', 1, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"5138d85e57194c84de5c94b7e0097f8d\";}'),
(160, 'jjbanciella-mainfor.edu.es', 'localhost', '2018-09-20 12:55:19', '2019-01-07 15:49:06', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"87942a7d9ad02b047eb00decda981fec\";}'),
(161, 'mlavesa-mainfor.edu.es', 'localhost', '2018-09-20 12:56:28', '2018-09-20 12:56:28', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"3db8e165af0ad45549892438fb1b9ee7\";}'),
(162, 'mmoreno-mainfor.edu.es', 'localhost', '2018-09-20 17:36:11', '2018-09-20 17:36:11', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"073364a925b954885a48eca9eae24b46\";}'),
(163, 'pmaldonado-mainfor.edu.es', 'localhost', '2018-09-28 09:54:12', '2018-09-28 09:54:12', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"40642639ec00876626116dfdc42f821d\";}'),
(164, 'epacheco-eimediacion.edu.es', 'localhost', '2018-10-04 13:09:50', '2018-10-04 13:09:50', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d5eba41634e65942fd26f38f389ea579\";}'),
(165, 'aperez-eimediacion.edu.es', 'localhost', '2018-10-04 13:12:37', '2019-04-25 17:36:39', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"e0460196fc00c11bd777a1cf268249ef\";}'),
(166, 'proyectos-mainfor.es', 'localhost', '2018-10-05 09:23:38', '2018-10-05 09:23:38', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"b6ed15e6056e872ee8eccbd30a5ad554\";}'),
(167, 'ftfe-mainfor.es', 'localhost', '2018-10-05 09:24:08', '2018-10-05 09:24:08', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"a4f8a74e1c9ac3c2fea930f1c1a4e3e1\";}'),
(168, 'jalacal-mainfor.es', 'localhost', '2018-10-05 09:24:27', '2018-10-05 09:24:27', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"40d7e3e71a0f2239be1c67f326438b59\";}'),
(169, 'proyecto.jovenes-mainfor.es', 'localhost', '2018-10-05 09:24:43', '2018-10-05 09:24:43', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"34c1877904f30b1b59bc95f2d5ebafad\";}'),
(170, 'tobe-better-mainfor.es', 'localhost', '2018-10-05 09:25:07', '2018-10-05 09:25:07', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"f743faf51f515b23372ae5dce63dacac\";}'),
(171, 'servidor-mainfor.es', 'localhost', '2018-10-05 09:25:24', '2018-10-05 09:25:24', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"fc2f23e3face220e025454c4a36b739f\";}'),
(172, 'tutorias.diseno-mainfor.es', 'localhost', '2018-10-05 09:25:44', '2018-10-05 09:25:44', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"166b5ad42d818cc0a2fd83e242e9bd05\";}'),
(173, 'matriculaciones-mainfor.es', 'localhost', '2018-10-05 09:26:16', '2018-10-05 09:26:16', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"e31e47e2e5b120def0700dda0d3cbf99\";}'),
(174, 'mtenorio-mainfor.es', 'localhost', '2018-10-05 09:28:40', '2018-10-05 09:29:56', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"cc3e036faf6eb8f360c7eb9bdd027f0c\";}'),
(175, 'msanchez-mainfor.es', 'localhost', '2018-10-05 09:30:23', '2018-10-05 09:30:23', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"014e9cf2f08411a84de8925179f50fdc\";}'),
(176, 'soporteacd-mainfor.es', 'localhost', '2018-10-05 09:31:56', '2018-10-05 09:31:56', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"5ecf5ff80273109487f1d117de78edb3\";}'),
(177, 'jmoreno-mainfor.es', 'localhost', '2018-10-05 09:33:25', '2018-10-05 09:33:25', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"f0a90ad23add9ac92e11542b99a4cfba\";}'),
(178, 'lcasero-fundaciondidactica.org', 'localhost', '2018-10-05 09:43:22', '2018-10-05 09:43:22', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"dd033ce928274e46e02fa9381601b26e\";}'),
(179, 'jvillalon-fundaciondidactica.org', 'localhost', '2018-10-05 09:58:18', '2018-10-05 11:04:28', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"dc487a71976fd96c4c41921f659018db\";}'),
(180, 'sermediador-fundaciondidactica.org', 'localhost', '2018-10-05 10:00:59', '2018-10-05 10:00:59', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"a47a1638eee6c6cfa509abab5d447c7c\";}'),
(181, 'sperez-fundaciondidactica.org', 'localhost', '2018-10-05 10:02:27', '2018-10-05 10:02:27', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"dbe76ef25cd0441a05cf902d3a1a7893\";}'),
(182, 'acalleya-fundaciondidactica.org', 'localhost', '2018-10-05 10:39:18', '2018-10-05 10:39:18', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"4e456e3b27c11be277e6bd74d7f8db42\";}'),
(183, 'vgonzalez-fundaciondidactica.org', 'localhost', '2018-10-05 10:47:02', '2018-10-05 10:47:02', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"b5238d1239bfc21f96e7e458e9b03e3b\";}'),
(184, 'pfernandez-fundaciondidactica.org', 'localhost', '2018-10-05 10:48:31', '2018-11-26 11:12:28', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"5e11a6c7212b3756c67893d40e5c62aa\";}'),
(185, 'masuvires-fundaciondidactica.org', 'localhost', '2018-10-05 10:51:56', '2018-10-05 10:51:56', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"4291c6d8260a356c71b2316ccc2bf911\";}'),
(186, 'admin-cursomediacioncivilymercantil.com', 'localhost', '2018-10-05 12:02:19', '2018-10-05 12:02:19', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"9c58ec321d4911a068213765da316cae\";}'),
(187, 'admin-campusprogramasuniversitarios.com', 'localhost', '2018-10-05 12:03:33', '2019-02-19 15:08:50', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"7b321a0c4caea76ed037ad05f53fd3b2\";}'),
(188, 'mcastillo-eiposgrados.edu.es', 'localhost', '2018-10-10 10:25:29', '2019-05-23 12:11:16', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"666c20e4440285cbe485eba92ad6a69f\";}'),
(189, 'pcoceres-mainfor.edu.es', 'localhost', '2018-10-10 10:35:17', '2019-01-11 10:35:38', '2019-01-11 10:25:16', 1, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"eb07c925171a6dfc9af952f9e968d73e\";}'),
(190, 'lcasquero-eiposgrados.edu.es', 'localhost', '2018-10-11 17:21:49', '2018-10-11 17:21:49', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"01e7d2f9ecb5249c6941d0d9a8ff3a3f\";}'),
(191, 'rmoreno-eiposgrados.edu.es', 'localhost', '2018-10-15 11:09:13', '2018-10-15 11:09:13', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"698db692086d72e57309781d3dd70f9c\";}'),
(192, 'vcebrian-mainfor.edu.es', 'localhost', '2018-10-16 09:22:05', '2019-03-07 08:50:53', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"f2971a27111d43fabef91814733b4605\";}'),
(193, 'fmartos-mainfor.edu.es', 'localhost', '2018-10-16 14:18:40', '2018-10-16 14:18:40', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"65f40ada188e3d85838bfa8a91a9e587\";}'),
(194, 'lcasero-eiposgrados.edu.es', 'localhost', '2018-10-17 10:48:58', '2019-05-22 14:57:42', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"a015d68762269cc8955696e10b3dff80\";}'),
(195, 'llopez-mainfor.edu.es', 'localhost', '2018-10-18 17:13:11', '2019-03-07 08:49:12', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"2e207d5c8ebb392c4dfdb33aa5949e87\";}'),
(196, 'traingins', 'localhost', '2018-10-22 11:04:25', '2018-10-22 12:12:16', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"588f8d15c1bd74d7dd3f165179c755e9\";}'),
(197, 'admin-trabajoingenieroinstalaciones.com', 'localhost', '2018-10-22 12:13:39', '2018-10-22 12:13:39', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"7b2509e407608e935672108d426d6d3a\";}'),
(198, 'admon-grupomainjobs.com', 'localhost', '2018-10-22 13:40:19', '2019-04-01 10:53:04', NULL, NULL, 'es_ES', 'a:4:{s:11:\"search_mods\";a:5:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:5:\"Trash\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"d74a9d34cd56719964138d1030a0bb13\";}'),
(199, 'laboral-grupomainjobs.com', 'localhost', '2018-10-22 13:40:30', '2018-10-22 13:40:30', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"b2cd664bd1d043044d5ebe24de27e0a4\";}'),
(200, 'eortega-grupomainjobs.com', 'localhost', '2018-10-22 13:40:38', '2018-10-22 14:58:22', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"53e8b7dc6885ad1bfa19c7d0b7c1a532\";}'),
(201, 'rfernandezm-grupomainjobs.com', 'localhost', '2018-10-22 13:40:47', '2018-10-22 14:58:48', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"cceb791a77a4d9a18ac55a7812c215a6\";}'),
(202, 'rgomez-grupomainjobs.com', 'localhost', '2018-10-22 13:40:55', '2018-10-22 14:58:59', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"5626b29c40afc91434330c73ca8947a5\";}'),
(203, 'llopez-grupomainjobs.com', 'localhost', '2018-10-22 13:41:06', '2018-10-22 13:41:06', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"e0aea1c35ad3c0cbf687f683f3737f1e\";}'),
(204, 'rgomez-mainfor.edu.es', 'localhost', '2018-10-22 14:59:12', '2018-10-22 14:59:12', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"0a0ddf65644e892631fdaccab6a5b9bc\";}'),
(205, 'lruizg-eimediacion.edu.es', 'localhost', '2018-10-23 13:51:46', '2018-10-23 13:51:46', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"75c56185c895cfb3c603e88b9dea292a\";}'),
(206, 'mlgarcia-eimediacion.edu.es', 'localhost', '2018-10-25 10:57:57', '2018-10-25 10:57:57', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"6010262d3c8dbab4821e3a948884ed64\";}'),
(207, 'fax-mainfor.es', 'localhost', '2018-10-25 14:56:09', '2018-10-25 14:56:09', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"cfe34f6d1b069b89060cae2c1cdc03ce\";}'),
(208, 'fax-mainfor.edu.es', 'localhost', '2018-10-25 14:56:52', '2018-10-25 14:56:52', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"92d3544ccd15fde8011de5f5d60a878b\";}'),
(209, 'mgarcia-eiposgrados.edu.es', 'localhost', '2018-10-25 17:22:38', '2018-10-25 17:22:38', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d0012fb037f08999f8e8b576e26d4d41\";}'),
(210, 'ngomez-mainfor.edu.es', 'localhost', '2018-10-26 09:14:02', '2019-01-14 09:15:57', '2019-01-03 09:45:56', 2, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"9f59717320f9bf11591072c86bbf54bb\";}'),
(211, 'jmoreno-grupomainjobs.com', 'localhost', '2018-11-03 21:19:10', '2019-03-13 14:20:47', NULL, NULL, 'es_ES', 'a:4:{s:17:\"collapsed_folders\";s:164:\"&INBOX.AAAA%20Liberacion%20terminales&&INBOX.CyL%20Digital&&INBOX.DataRush&&INBOX.iTopTraining&&INBOX.Junta%20de%20Andaluc%26AO0-a&&INBOX.Orange&&INBOX.%26ANo-nica&\";s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"8b27f748e403759959008dbc66d3c958\";}'),
(212, 'mjmorales-grupomainjobs.com', 'localhost', '2018-11-03 21:33:06', '2019-02-10 15:51:57', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"2b6d4bfda37331a038596aa92a392808\";}'),
(213, 'spostigo-grupomainjobs.com', 'localhost', '2018-11-05 11:03:47', '2019-05-15 11:32:18', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:17:\"message_threading\";a:2:{s:12:\"INBOX.Prueba\";b:0;s:7:\"INBOX.1\";b:0;}s:11:\"client_hash\";s:32:\"ea477a74de6ebc9a54da4065bba614ec\";}'),
(214, 'jvillalon-grupomainjobs.com', 'localhost', '2018-11-16 13:42:31', '2018-11-16 13:42:31', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"e8ef14860f61a6f11015e2bc9f890ad1\";}'),
(215, 'admision.edificacion-eiposgrados.edu.es', 'localhost', '2018-11-26 13:14:10', '2019-04-30 13:58:37', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"512d2d52c0d22f365f43218098b795b6\";}'),
(216, 'certicom-mainfor.edu.es', 'localhost', '2018-11-28 12:15:12', '2018-12-04 12:50:59', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"89da5a4c7c203e57f4c1e06178ad1509\";}'),
(217, 'jtrujillo-eimediacion.edu.es', 'localhost', '2018-12-03 20:10:06', '2019-05-20 20:27:00', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"5693b4d66dac33609957eb9077749877\";}'),
(218, 'eramirezc-eimediacion.edu.es', 'localhost', '2018-12-10 14:36:09', '2019-05-27 11:52:40', NULL, NULL, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"c35b96d65b466fb9dfe0798963462795\";}'),
(219, 'proyectos-mainfor.edu.es', 'localhost', '2018-12-29 05:31:19', '2018-12-29 05:31:19', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"67b5eec297d4e423ddbfe08d11f94030\";}'),
(220, 'ccarnero-eimediacion.edu.es', 'localhost', '2019-01-15 12:26:11', '2019-02-14 11:33:51', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"a56f91f1b091b90b35394367ff560186\";}'),
(221, 'andaluciaencamper', 'localhost', '2019-01-17 22:38:36', '2019-01-18 10:30:58', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"0fb98494453148ee1a3ecd9c6be1d8bc\";}'),
(222, 'jvalverde-mainfor.edu.es', 'localhost', '2019-01-31 12:44:29', '2019-04-04 08:45:10', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:3:\"ASC\";s:11:\"client_hash\";s:32:\"aeb2837d4afc10308ffeb4b4f6372529\";}'),
(223, 'reclamaciondepagos-mainfor.edu.es', 'localhost', '2019-02-05 10:41:23', '2019-02-05 10:41:23', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"850f8c227be712c320a18ef32d3886e3\";}'),
(224, 'binfante-mainfor.edu.es', 'localhost', '2019-02-07 09:41:29', '2019-02-07 10:02:37', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"246e8a688f64708ed0b4469603e6e0b5\";}'),
(225, 'academico@mainfor.edu.es', 'localhost', '2019-02-10 04:04:04', '2019-02-10 06:53:04', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"5fb8d0081a76c5b5230c745dd62b153b\";}'),
(226, 'gmartinez-eimediacion.edu.es', 'localhost', '2019-02-11 16:30:47', '2019-03-27 08:36:55', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"3fa1376adce1c9ca3808de0e1624fcf8\";}'),
(227, 'info-qes.edu.es', 'localhost', '2019-02-19 14:57:42', '2019-03-28 08:42:51', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"1287ac4713a85a88a2a4579cd247077d\";}'),
(228, 'mpulido-qes.edu.es', 'localhost', '2019-02-19 14:59:14', '2019-03-28 08:45:59', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"d4bdaa09133a33cd2151ec431c88a24b\";}'),
(229, 'loliva-mainfor.edu.es', 'localhost', '2019-02-21 18:51:30', '2019-02-28 09:50:15', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"cf0e2cf5bebfbaff987acf8e298ad446\";}'),
(230, 'yzamanillo-grupomainjobs.com', 'localhost', '2019-02-25 18:02:32', '2019-03-21 08:57:18', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"7993c6317b84bc096232f76b107d4060\";}'),
(231, 'reclamaciones-grupomainjobs.com', 'localhost', '2019-02-26 15:28:15', '2019-02-26 15:28:15', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"e2ba0c2c64ad117fad4fa226075840e1\";}'),
(232, 'lmarting-grupomainjobs.com', 'localhost', '2019-02-27 13:55:40', '2019-05-16 12:42:22', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"71a725f804d67ad151cf072315f719b3\";}'),
(233, 'sperez-grupomainjobs.com', 'localhost', '2019-02-27 14:09:42', '2019-02-28 09:47:14', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"a0571800dd66aff224b7a562547a006f\";}'),
(234, 'yzamanillo-eimediacion.edu.es', 'localhost', '2019-02-28 09:36:31', '2019-03-21 13:39:23', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"4846b5741f8bfed8db0033fc4c91ee7b\";}'),
(235, 'malonso-grupomainjobs.com', 'localhost', '2019-03-05 18:09:29', '2019-05-24 16:20:18', '2019-03-08 16:52:32', 1, 'es_ES', 'a:2:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"f4b21fa208eb357b90c1ed563ea27393\";}'),
(236, 'ecampos-grupomainjobs.com', 'localhost', '2019-03-05 18:59:13', '2019-05-09 13:50:06', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"55eb52804b0a413ab72877bd9c97d65c\";}'),
(237, 'fjleon-fundaciondidactica.org', 'localhost', '2019-03-12 09:09:35', '2019-03-12 09:09:35', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"ad7f6eb5e97c370977ad6301ccd6357a\";}'),
(238, 'bgil-grupomainjobs.com', 'localhost', '2019-03-14 17:16:19', '2019-03-14 17:16:19', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"2643ae3602c76c1cd42bae0526fc419b\";}'),
(239, 'amorales-grupomainjobs.com', 'localhost', '2019-03-16 13:25:15', '2019-05-21 11:35:40', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"8f62280d9892c2f386d0e862522a03eb\";}'),
(240, 'aperez-grupomainjobs.com', 'localhost', '2019-03-18 10:11:16', '2019-05-15 09:43:57', '2019-03-18 10:20:09', 1, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"95843b47e96d063a26bbe32040c4279d\";}'),
(241, 'rsanchez-grupomainjobs.com', 'localhost', '2019-03-18 16:31:33', '2019-03-18 16:31:33', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c810a328d893b7a9eecf79b6908dabff\";}'),
(242, 'mcortes-mainfor.edu.es', 'localhost', '2019-03-18 17:03:33', '2019-03-18 17:03:33', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"b42e430c92f564e8e80b29d07cff2721\";}'),
(243, 'igonzalez-mainfor.edu.es', 'localhost', '2019-03-18 17:10:18', '2019-05-03 09:20:12', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"d46a31ad7bae470fd7a00b3983fdc2a0\";}'),
(244, 'evandries-mainfor.edu.es', 'localhost', '2019-03-18 17:30:38', '2019-03-18 17:30:38', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"24c2c13dbf0ed084c8f246bd8096c224\";}'),
(245, 'eim-mainfor.edu.es', 'localhost', '2019-03-18 17:33:36', '2019-03-18 17:33:36', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"10888216ccc3131613daf5b8f82872a6\";}'),
(246, 'anavas-mainfor.edu.es', 'localhost', '2019-03-20 17:23:53', '2019-03-20 17:23:53', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"ed7b16178d48eb322d4077aa7ea18d30\";}'),
(247, 'ffernandez-mainfor.edu.es', 'localhost', '2019-03-21 13:04:40', '2019-03-21 13:06:35', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"1781f45b81b158dd71104d0b614b070f\";}'),
(248, 'truizv-mainfor.edu.es', 'localhost', '2019-04-04 09:08:07', '2019-04-04 09:08:07', NULL, NULL, 'es_ES', 'a:2:{s:11:\"client_hash\";s:32:\"8a53107c41f3adf15e32acb19d6f4441\";s:9:\"sent_mbox\";s:13:\"Sent Messages\";}'),
(249, 'epacheco-grupomainjobs.com', 'localhost', '2019-04-05 16:28:41', '2019-04-05 16:28:41', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"aa98cb18f5c2dfc7bc84b07af8e783a0\";}'),
(250, 'mcruiz-grupomainjobs.com', 'localhost', '2019-04-09 13:19:49', '2019-05-02 14:06:37', NULL, NULL, 'es_ES', 'a:4:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"search_mods\";a:6:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:10:\"recuperado\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:15:\"Sent.recuperado\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:11:\"client_hash\";s:32:\"6669effbffc0339f7fa233bf287aeac0\";}'),
(251, 'amancera-mainfor.edu.es', 'localhost', '2019-04-11 09:42:53', '2019-04-11 09:42:53', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"914a931b0b9cb84de05468df20acd080\";}'),
(252, 'inglesonline-grupomainjobs.com', 'localhost', '2019-04-15 23:03:06', '2019-04-15 23:03:06', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"2064f6c02b3b8e7f959040c12dcf39d4\";}'),
(253, 'evillalon-grupomainjobs.com', 'localhost', '2019-04-25 18:26:53', '2019-04-27 16:51:46', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"0cfdebc36c1cc5fd87c752eb6ce72e67\";}'),
(254, 'admision.edificacion-grupomainjobs.com', 'localhost', '2019-04-30 14:07:33', '2019-04-30 14:07:33', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"9e2bb3f7624679c577731c4b423cf697\";}'),
(255, 'mpulido-grupomainjobs.com', 'localhost', '2019-05-02 19:31:00', '2019-05-02 19:31:00', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"size\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"e6d4187f87dfc1b89da45c2279f9f313\";}'),
(256, 'lbonet-grupomainjobs.com', 'localhost', '2019-05-09 19:51:19', '2019-05-17 18:13:21', NULL, NULL, 'es_ES', 'a:4:{s:11:\"search_mods\";a:4:{s:1:\"*\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}s:4:\"Sent\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:6:\"Drafts\";a:2:{s:7:\"subject\";i:1;s:2:\"to\";i:1;}s:5:\"INBOX\";a:2:{s:7:\"subject\";i:1;s:4:\"from\";i:1;}}s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"9b122d645559c930ce406a7aacb3ffb5\";}'),
(257, 'jtorrado-eiposgrados.edu.es', 'localhost', '2019-05-22 14:54:18', '2019-05-22 14:54:18', NULL, NULL, 'es_ES', 'a:3:{s:16:\"message_sort_col\";s:4:\"date\";s:18:\"message_sort_order\";s:4:\"DESC\";s:11:\"client_hash\";s:32:\"dd9777b770cc7dc3b3a5844d33bf8a3c\";}'),
(258, 'mcastillo-mainfor.edu.es', 'localhost', '2019-05-23 12:16:42', '2019-05-23 12:16:42', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"5c478d195a7f0f1cfb1f5d3d83c86182\";}'),
(259, 'amancera-grupomainjobs.com', 'localhost', '2019-05-27 15:53:44', '2019-05-27 15:53:44', NULL, NULL, 'es_ES', 'a:1:{s:11:\"client_hash\";s:32:\"c79eb12d7c784d78d55399bbb51ccc80\";}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD KEY `expires_index` (`expires`),
  ADD KEY `user_cache_index` (`user_id`,`cache_key`);

--
-- Indexes for table `cache_index`
--
ALTER TABLE `cache_index`
  ADD PRIMARY KEY (`user_id`,`mailbox`),
  ADD KEY `expires_index` (`expires`);

--
-- Indexes for table `cache_messages`
--
ALTER TABLE `cache_messages`
  ADD PRIMARY KEY (`user_id`,`mailbox`,`uid`),
  ADD KEY `expires_index` (`expires`);

--
-- Indexes for table `cache_shared`
--
ALTER TABLE `cache_shared`
  ADD KEY `expires_index` (`expires`),
  ADD KEY `cache_key_index` (`cache_key`);

--
-- Indexes for table `cache_thread`
--
ALTER TABLE `cache_thread`
  ADD PRIMARY KEY (`user_id`,`mailbox`),
  ADD KEY `expires_index` (`expires`);

--
-- Indexes for table `contactgroupmembers`
--
ALTER TABLE `contactgroupmembers`
  ADD PRIMARY KEY (`contactgroup_id`,`contact_id`),
  ADD KEY `contactgroupmembers_contact_index` (`contact_id`);

--
-- Indexes for table `contactgroups`
--
ALTER TABLE `contactgroups`
  ADD PRIMARY KEY (`contactgroup_id`),
  ADD KEY `contactgroups_user_index` (`user_id`,`del`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `user_contacts_index` (`user_id`,`del`);

--
-- Indexes for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD UNIQUE KEY `uniqueness` (`user_id`,`language`);

--
-- Indexes for table `identities`
--
ALTER TABLE `identities`
  ADD PRIMARY KEY (`identity_id`),
  ADD KEY `user_identities_index` (`user_id`,`del`),
  ADD KEY `email_identities_index` (`email`,`del`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`search_id`),
  ADD UNIQUE KEY `uniqueness` (`user_id`,`type`,`name`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sess_id`),
  ADD KEY `changed_index` (`changed`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`,`mail_host`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactgroups`
--
ALTER TABLE `contactgroups`
  MODIFY `contactgroup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `identities`
--
ALTER TABLE `identities`
  MODIFY `identity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `search_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cache`
--
ALTER TABLE `cache`
  ADD CONSTRAINT `user_id_fk_cache` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cache_index`
--
ALTER TABLE `cache_index`
  ADD CONSTRAINT `user_id_fk_cache_index` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cache_messages`
--
ALTER TABLE `cache_messages`
  ADD CONSTRAINT `user_id_fk_cache_messages` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cache_thread`
--
ALTER TABLE `cache_thread`
  ADD CONSTRAINT `user_id_fk_cache_thread` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contactgroupmembers`
--
ALTER TABLE `contactgroupmembers`
  ADD CONSTRAINT `contact_id_fk_contacts` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contactgroup_id_fk_contactgroups` FOREIGN KEY (`contactgroup_id`) REFERENCES `contactgroups` (`contactgroup_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contactgroups`
--
ALTER TABLE `contactgroups`
  ADD CONSTRAINT `user_id_fk_contactgroups` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `user_id_fk_contacts` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dictionary`
--
ALTER TABLE `dictionary`
  ADD CONSTRAINT `user_id_fk_dictionary` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `identities`
--
ALTER TABLE `identities`
  ADD CONSTRAINT `user_id_fk_identities` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `searches`
--
ALTER TABLE `searches`
  ADD CONSTRAINT `user_id_fk_searches` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
