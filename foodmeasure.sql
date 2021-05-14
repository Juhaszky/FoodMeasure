-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Máj 14. 08:28
-- Kiszolgáló verziója: 10.4.18-MariaDB
-- PHP verzió: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `foodmeasure`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foods`
--

CREATE TABLE `foods` (
  `etel_id` int(11) NOT NULL,
  `Elelmiszer` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `Energia_KJ` float DEFAULT NULL,
  `Energia_Kcal` float DEFAULT NULL,
  `Feherje` float DEFAULT NULL,
  `Zsir` float DEFAULT NULL,
  `Szenhidrat` float DEFAULT NULL,
  `Natrium` float DEFAULT NULL,
  `Kalium` float DEFAULT NULL,
  `Kalcium` float DEFAULT NULL,
  `Magnezium` float DEFAULT NULL,
  `Retinol` float DEFAULT NULL,
  `E_vitamin` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `foods`
--

INSERT INTO `foods` (`etel_id`, `Elelmiszer`, `Energia_KJ`, `Energia_Kcal`, `Feherje`, `Zsir`, `Szenhidrat`, `Natrium`, `Kalium`, `Kalcium`, `Magnezium`, `Retinol`, `E_vitamin`) VALUES
(1, 'árpagyöngy', 1464, 350, 9, 1.4, 75, 3, 120, 43, 20, NULL, 0.2),
(2, 'árpapehely', 1537, 368, 12, 2, 75, 5, 289, 25.7, 86.1, NULL, NULL),
(3, 'barnarizs', 1584, 379, 6.7, 2.8, 81.3, 3, 250, 10, 110, NULL, NULL),
(4, 'burgonyakeményítő', 1409, 337, 0.6, 0.1, 83.1, 8, 15, 35, NULL, NULL, NULL),
(5, 'búzacsíra', 1428, 342, 25, 8, 42, 5, 837, 69, 250, NULL, 11.7),
(6, 'búzadara', 1429, 342, 9.4, 1, 73.4, 3, 330, 19, 40, NULL, 1),
(7, 'búzakeményítő', 1398, 334, 0.4, 0.1, 82.5, 2, 16, NULL, NULL, NULL, NULL),
(8, 'búzakorpa', 706, 169, 14.9, 4.7, 16.7, 2, 1390, 43, 590, 833, 2.8),
(9, 'búzaliszt', 1461, 350, 12.3, 1.3, 76.3, 3, 140, 13, 20, 3, 0.4),
(10, 'búzapehely', 1342, 321, 12.5, 1.5, 64, 1, 343, 29.7, 108.8, NULL, NULL),
(11, 'durum liszt', 1493, 357, 12.5, 1.5, 73, 1, 81, 19.9, 35.9, NULL, NULL),
(12, 'grahamliszt', 1392, 333, 14.4, 1.8, 64.4, 3, 140, 39, 20, 3, 1.5),
(13, 'hajdina', 1427, 341, 9.8, 1.7, 71.3, NULL, 324, 21, 85, NULL, 0.1),
(14, 'köles', 1462, 350, 9.5, 3.9, 68.8, 3, 220, 25, 170, NULL, 0.1),
(15, 'kukoricadara', 1458, 349, 9.6, 3.1, 70.2, 50, 60, 22, 7, 50, 1.3),
(16, 'kukoricaliszt', 1458, 349, 9.6, 3.1, 70.2, 50, 60, 22, 7, 50, 1.3),
(17, 'kukoricapehely', 1546, 370, 7.7, 0.6, 83, 910, 139, 13, 14, NULL, 0),
(18, 'natúr müzli', 1421, 340, 8.5, 2.7, 70, 37, 357, 58.4, 109.1, NULL, NULL),
(19, 'puffasztott búzaszelet', 1421, 340, 13.9, 2.6, 64.8, 8, 559, 44.7, 202.6, 91, 3.5),
(20, 'rizs', 1471, 352, 8, 0.3, 77.5, 6, 112, 8, 13, NULL, 0.1),
(21, 'rozsliszt', 1446, 346, 10, 1.1, 73.6, 10, 150, 30, 25, 17, 2.6),
(22, 'rozspehely', 1233, 295, 8.8, 1.7, 60.7, 40, 510, 64, 120, NULL, NULL),
(23, 'zabkorpa', 1423, 340, 15.3, 5.5, 57, 2, 444, 82.9, 171.7, NULL, NULL),
(24, 'zabpehely', 1579, 378, 14.4, 6.8, 64.3, 30, 350, 71, 110, NULL, 1.5),
(25, 'zsemlemorzsa', 1437, 344, 10.2, 0.9, 73.3, 780, 138, 29, 35, NULL, 0.4),
(26, 'zsírtalan szójaliszt', 1386, 332, 47, 2, 31, 4, 1800, 200, 240, NULL, NULL),
(27, 'burgonyás kenyér', 1081, 259, 10.8, 1.7, 49.7, 790, 322, 17.8, 5, 0, 2.6),
(28, 'félbarna kenyér', 1081, 259, 9.8, 1, 52.3, 800, 117, 20, 72, NULL, 0.3),
(29, 'kenyér', 1050, 251, 10, 0.8, 53.5, 808, 117, 20, 48, NULL, 0.3),
(30, 'bakonyi barna kenyér', 1023, 245, 8.5, 0.8, 50.6, 467, 125, 28.6, 24, NULL, 0.3),
(31, 'dabasi rozsos kenyér', 1076, 257, 10.1, 1.8, 49.9, 467, 125, 28.6, 24, NULL, 0.3),
(32, 'graham kenyér', 1115, 267, 10.1, 1, 54, 686, 295, 25, 40, NULL, 0.3),
(33, 'lenmagos barnakenyér', 1378, 330, 14.4, 5.7, 54.8, 790, 165, 46.7, NULL, NULL, 1.5),
(34, 'magvas barnakenyér', 1253, 300, 10.9, 8.5, 44.6, 399, 203, 81.9, 79.7, 75, 0.4),
(35, 'rozskenyér', 1071, 256, 8.1, 0.9, 53.6, 467, 125, 28.6, 24, NULL, 0.3),
(36, 'korpás zsemle. kifli', 1055, 252, 10.5, 1.5, 48.9, 504, 373, 25.5, 150.8, 142, 0.6),
(37, 'zsemle. kifli', 1142, 273, 9.4, 0.7, 57, 630, 119, 21.1, 41, NULL, 0.3),
(38, 'kuglóf', 1471, 352, 10, 8.7, 58, 20, 230, 54.1, 49.1, 58, 0.3),
(39, 'abonett', 1675, 401, 14.7, 1.5, 81.7, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'kalács', 1685, 403, 11.8, 10.5, 64.9, 417, 169, 29.9, 18.1, 84, 0.4),
(41, 'kétszersült', 1696, 406, 11.3, 4.1, 80.4, 270, 164, 58.8, 30, NULL, 0.4),
(42, 'pászka', 1538, 368, 12.3, 1.3, 76.3, 3, 140, 13, 20, 3, 0.3),
(43, '2 tojásos száraztészta', 1470, 352, 12.4, 2.2, 70.2, 14, 141, 15.3, 19.4, 19, 0.4),
(44, '4 tojásos száraztészta', 1605, 384, 15, 3.4, 72.9, 248, 100, 25, 22, 35, 0.3),
(45, '8 tojásos száraztészta', 1639, 392, 17, 5, 69.3, 280, 100, 25, 20, 70, 0.3),
(46, 'durum tészta', 1493, 357, 12.5, 1.5, 73, 1, 81, 19.9, 35.9, NULL, NULL),
(47, 'céklakonzerv', 265, 63, 1.3, 0.1, 13.9, 492, 263, 35, 87.7, 2, 0),
(48, 'csalamádékonzerv', 188, 45, 1.3, 0.2, 9.4, 1190, 199, 22.6, 19.5, 43, 1.3),
(49, 'csemege pirosarany', 155, 37, 9, 0.1, NULL, 3205, 255, 19.2, 15.6, 35, NULL),
(50, 'ecetes paprika', 93, 22, 1.1, 0.3, 3.8, 790, 156, 11.8, 15.8, 61, 2.9),
(51, 'ketchup', 454, 109, 2.1, 0.4, 24, 860, 400, 28, 18, 35, NULL),
(52, 'konzerv kukorica', 525, 126, 4.6, 1.6, 23.1, 792, 294, 6.4, 47, 24, 0.1),
(53, 'lecsókonzerv', 104, 25, 1.3, 0.3, 4.2, 34, 236, 15.1, 16.6, 83, 1.6),
(54, 'olivabogyó', 578, 138, 1.4, 13.9, 1.8, 2100, 43, 96, 19, 50, NULL),
(55, 'paradicsom püre', 458, 110, 5, 1, 20, 590, 1050, 60, NULL, 217, 2.3),
(56, 'reszelt ecetestorma', 567, 136, 1.9, 0.3, 31.2, 8, 397, 75.1, 25.3, 2, NULL),
(57, 'savanyú uborka', 58, 14, 0.6, 0.1, 2.6, 960, 141, 30, 8, 28, 0.1),
(58, 'savanyúkáposzta', 83, 20, 1.1, 0.2, 3.4, 355, 288, 48, 14, 3, 0.1),
(59, 'zöldbab konzerv', 108, 26, 1.6, 0.2, 4.3, 275, 148, 34, 20, 33, 0.1),
(60, 'zöldborsó konzerv', 248, 59, 4.2, 0.2, 10.1, 236, 99, 20, 20, 43, 0),
(61, 'articsóka', 207, 50, 2.4, 0.1, 9.5, 47, 353, 53, 26, 17, 0.2),
(62, 'brokkoli', 98, 24, 3.3, 0.2, 2.1, 13, 373, 105, 24, 317, 0.5),
(63, 'cékla', 131, 31, 1.3, 0.1, 5.9, 98, 260, 34.5, 87, 2, 0),
(64, 'cikória', 68, 16, 1.3, 0.2, 2.3, 4, 192, 25.6, 12.9, 217, 0.1),
(65, 'csemegekukorica', 536, 128, 4.7, 1.6, 23.6, 6, 300, 6.5, 48, 28, 0.1),
(66, 'csicsóka', 128, 31, 2.4, 0.4, 4, NULL, 478, 10, 20, 2, NULL),
(67, 'cukkini', 129, 31, 1.5, 0.4, 5.3, NULL, NULL, 30, NULL, 58, 1),
(68, 'endivia saláta', 53, 13, 1.8, 0.2, 0.9, 53, 346, 54, 10, 190, NULL),
(69, 'fejes saláta', 69, 17, 1.4, 0.3, 2, 16, 261, 28.2, 24, 133, 0.4),
(70, 'fekete retek', 40, 10, 1.1, 0.2, 1, 18, 322, 33, 15, 1, NULL),
(71, 'fokhagyma', 560, 134, 6.8, 0.1, 26.3, NULL, NULL, 38, NULL, NULL, 0),
(72, 'főzőtök', 127, 30, 1.1, 0.1, 6.1, 12, 98, 20, 8, 50, 1),
(73, 'kapor', 264, 63, 3.7, 0.8, 10.2, 27, 647, 230, 28, 1017, 1.7),
(74, 'karalábé', 160, 38, 2.1, 0.2, 6.9, 53, 300, 43, 32, 33, NULL),
(75, 'karfiol', 121, 29, 2.4, 0.4, 3.9, 11, 175, 28.9, 31, 33, 0),
(76, 'kelbimbó', 207, 50, 4.9, 0.6, 6.1, 7, 411, 30, 22, 67, 0.9),
(77, 'kelkáposzta', 144, 34, 3.6, 0.3, 4.3, 42, 320, 56.8, 31, NULL, 1.7),
(78, 'kígyóuborka', 49, 12, 1, 0.1, 1.7, 13, 150, 15, 8, 33, 0.1),
(79, 'kínaikel', 65, 16, 1.2, 0.3, 2, 7, 202, 40, 11, 13, 1.7),
(80, 'lilakáposzta', 132, 32, 1.7, 0.2, 5.7, 4, 266, 35, 18, 5, 1.7),
(81, 'mirelit brokkoli', 98, 24, 3.3, 0.2, 2.1, 13, 373, 105, 24, 298, 0.4),
(82, 'mirelit karfiol', 121, 29, 2.4, 0.4, 3.9, 11, 175, 28.9, 31, 31, 0),
(83, 'mirelit kelbimbó', 207, 50, 4.9, 0.6, 6.1, 7, 411, 30, 22, 63, 0.8),
(84, 'mirelit kukorica', 536, 128, 4.7, 1.6, 23.6, 6, 300, 6.5, 48, 26, 0.1),
(85, 'mirelit lecsó', 85, 20, 1.1, 0.3, 3.3, 4, 188, 12.6, 17.2, 82, 2.1),
(86, 'mirelit mexikói vegyesfőzelék', 319, 76, 4.2, 0.6, 13.3, 45, 328, 35.5, 41.5, 596, 0.5),
(87, 'mirelit sárgarépa', 168, 40, 1.2, 0.2, 8.1, 125, 360, 46, 18, 1880, 0.5),
(88, 'mirelit sóska', 113, 27, 2.4, 0.5, 2.3, 26, 340, 113, NULL, 548, 1.4),
(89, 'mirelit spenót', 80, 19, 2.3, 0.3, 1.8, 24, 526, 133, 53, 658, 2.2),
(90, 'mirelit tök', 127, 30, 1.1, 0.1, 6.1, 12, 98, 20, 8, 47, 0.9),
(91, 'mirelit vegyesfőzelék (finom),', 246, 59, 3.8, 0.3, 10, 44, 314, 40.6, 37.7, 600, 0.5),
(92, 'mirelit zöldbab', 172, 41, 2.6, 0.3, 6.8, 1, 229, 32, 29, 47, 0.1),
(93, 'mirelit zöldborsó', 372, 89, 7, 0.4, 14, 7, 325, 37, 64, 63, 0.3),
(94, 'padlizsán', 110, 26, 1.3, 0.2, 4.8, 4, 145, 13.1, 10.8, 5, 0),
(95, 'paradicsom', 92, 22, 1, 0.2, 4, 6, 240, 14, 20, 133, 0.8),
(96, 'paradicsompaprika', 130, 31, 0.9, 0.2, 6.4, 2, 177, 9, 10, NULL, 0.7),
(97, 'patisszon', 128, 31, 1.2, 0.1, 6.2, 12, 98, 20, 8, 50, 1),
(98, 'petrezselyemgyökér', 123, 29, 1.2, 0.1, 5.9, 34, 298, 56, 9, 17, 1.7),
(99, 'petrezselyemzöld', 254, 61, 4.4, 0.4, 9.8, 33, 1000, 245, 41.1, 1217, 2.7),
(100, 'póréhagyma', 154, 37, 2.2, 0.3, 6.3, 5, 225, 87, 18, 3, 0.9),
(101, 'retek', 61, 15, 1.2, 0.1, 2.2, 59, 270, 47, 8, 3, 0),
(102, 'sárgarépa', 168, 40, 1.2, 0.2, 8.1, 125, 360, 46, 18, 2000, 0.6),
(103, 'snidling', 115, 27, 3.6, 0.7, 1.6, 3, 434, 129, 44, 50, 1.6),
(104, 'sóska', 113, 27, 2.4, 0.5, 2.3, 26, 340, 113, NULL, 583, 1.6),
(105, 'spárga', 68, 16, 2, 0.1, 1.8, 20, 240, 7, 20, 5, 2),
(106, 'spenót', 80, 19, 2.3, 0.3, 1.8, 24, 526, 133, 53, 700, 2.5),
(107, 'sütőtök', 325, 78, 1.5, 0.6, 16.5, 7, 351, 40, NULL, 667, 1),
(108, 'fejeskáposzta', 135, 32, 1.6, 0.2, 5.7, 13, 216, 33.3, 24, 7, 1.7),
(109, 'torma', 328, 78, 2.7, 0.4, 15.9, 9, 554, 105, 33, 3, NULL),
(110, 'uborka', 49, 12, 1, 0.1, 1.7, 13, 150, 15, 8, 33, 0.1),
(111, 'vöröshagyma', 165, 40, 1.2, 0.1, 8.3, 9, 175, 31, 11, 5, 0.1),
(112, 'zeller', 129, 31, 1.4, 0.3, 5, 77, 370, 68, 9.3, 3, 0.8),
(113, 'zöldbab', 172, 41, 2.6, 0.3, 6.8, 1, 229, 32, 29, 50, 0.1),
(114, 'zöldborsó', 372, 89, 7, 0.4, 14, 7, 325, 37, 64, 67, 0.4),
(115, 'zöldpaprika', 82, 20, 1.2, 0.3, 3, 3, 165, 12, 16, 67, 3.1),
(116, 'csiperke', 162, 39, 5.9, 0.2, 3.3, 8, 254, 45, 13, 2, 0.1),
(117, 'csiperke konzerv', 108, 26, 2.3, 0.5, 3, 319, 127, 19, 15, NULL, 0),
(118, 'laskagomba', 159, 38, 1.9, 0.7, 6, NULL, NULL, NULL, NULL, NULL, 0.1),
(119, 'vargánya', 167, 40, 5.7, 0.2, 3.8, 6, 580, 7, 12, NULL, 0.2),
(120, 'burgonya', 392, 94, 2.5, 0.2, 20, 5, 340, 12, 28, 2, 0.1),
(121, 'burgonyapehely', 1358, 325, 8.6, 0.6, 71, 160, 1150, 30, NULL, NULL, NULL),
(122, 'alma', 145, 35, 0.4, 0.4, 7, 4, 112, 10.5, 11, 8, 0.5),
(123, 'ananász', 220, 53, 0.4, 0.1, 12, 2, 173, 16, 17, 10, 0.1),
(124, 'avokádó', 737, 176, 2, 15.3, 7.4, 10, 599, 11, 39, 61, 1.3),
(125, 'banán', 439, 105, 1.3, 0.1, 24.2, 22, 500, 110, 60, 33, 0.3),
(126, 'besztercei szilva', 252, 60, 0.7, 0.2, 13.1, 4, 240, 16, 16, 33, 0.8),
(127, 'birsalma', 207, 49, 0.6, 0.9, 9.1, 9, 189, 66, 10, 6, NULL),
(128, 'citrom', 128, 31, 0.4, 0.6, 2.3, 4, 275, 14, 20, 3, 0.8),
(129, 'cseresznye', 270, 65, 0.8, 0.3, 14, 8, 174, 16.3, 16, 13, 0.1),
(130, 'csipkebogyó', 276, 66, 3.6, 1.3, 8, 146, 291, 50, 104, NULL, NULL),
(131, 'cukordinnye', 196, 47, 0.3, 0.1, 11.1, 8, 210, 12.6, 20, NULL, 0.1),
(132, 'egres', 167, 40, 0.6, 0.2, 8, 6, 183, 36.4, 15, 33, 0.4),
(133, 'eper', 162, 39, 0.9, 0.4, 7.2, 5, 145, 28.1, 18, 8, 0.1),
(134, 'fekete áfonya', 378, 90, 0.6, 0.6, 19.6, 1, 65, 10, 2.4, 22, NULL),
(135, 'fekete ribizli', 207, 49, 0.9, 0.2, 9.5, 8, 187, 39.8, 17, 17, 1),
(136, 'görögdinnye', 130, 31, 0.5, 0.2, 6.5, 5, 147, 19.4, 15, NULL, 0.1),
(137, 'gránátalma', 322, 77, 0.7, 0.6, 16.7, NULL, NULL, NULL, NULL, 7, NULL),
(138, 'grapefruit', 151, 36, 0.5, 0.2, 7.2, 2, 180, 18, 10, 3, 0.3),
(139, 'kiwi', 255, 61, 1, 0.6, 11.3, 4, 295, 38, 23.8, 8, NULL),
(140, 'körte', 222, 53, 0.4, 0.3, 12, 2, 100, 15.7, 10, 5, 0.4),
(141, 'málna', 145, 35, 1.2, 0.3, 5.4, 4, 172, 27.3, 24, 13, 0.5),
(142, 'mandarin', 196, 47, 0.7, 0.3, 9.8, 1, 210, 23, 11, 67, NULL),
(143, 'mangó', 304, 73, 0.5, 0.3, 17, 2, 156, 10, 9, 389, 1.1),
(144, 'meggy', 236, 56, 0.8, 0.5, 11, 5, 186, 31.3, 15, 50, 0.1),
(145, 'mirelit cseresznye', 270, 65, 0.8, 0.3, 14, 8, 174, 16.3, 16, 13, 0.1),
(146, 'mirelit egres', 167, 40, 0.6, 0.2, 8, 6, 183, 36.4, 15, 31, 0.3),
(147, 'mirelit földieper', 162, 39, 0.9, 0.4, 7.2, 5, 145, 28.1, 18, 8, 0.1),
(148, 'mirelit málna', 145, 35, 1.2, 0.3, 5.4, 4, 172, 27.3, 24, 13, 0.4),
(149, 'mirelit meggy', 236, 56, 0.8, 0.5, 11, 5, 186, 31.3, 15, 47, 0.1),
(150, 'mirelit ribizli', 160, 38, 0.6, 0.2, 7, 3, 316, 56.8, 10, 6, 0.2),
(151, 'mirelit szilva', 198, 47, 0.8, NULL, 10.2, 4, 240, 16, 16, 33, 0.7),
(152, 'narancs', 173, 41, 0.6, 0.2, 8.5, 3, 255, 43.8, 22, 17, 0.2),
(153, 'naspolya', 223, 53, 0.6, NULL, 12, 5, 231, 49, 11, NULL, NULL),
(154, 'nektarin', 231, 55, 0.9, 0.5, 11.8, NULL, 212, 5, 8, 74, 0.9),
(155, 'őszibarack', 173, 41, 0.7, 0.1, 9, 4, 183, 8.7, 14, 67, 1.8),
(156, 'papaya', 180, 43, 0.6, 0.1, 9.8, 3, 257, 24, 10, 28, 1.1),
(157, 'piros ribizli', 160, 38, 0.6, 0.2, 7, 3, 316, 56.8, 10, 7, 0.2),
(158, 'ringló szilva', 254, 61, 0.8, NULL, 13.5, 1, 243, 14, 9.6, 30, 0.7),
(159, 'sárgabarack', 207, 49, 0.9, 0.1, 10.2, 6, 226, 13.8, 14, 300, 0.5),
(160, 'sárgadinnye', 169, 40, 0.3, 0.1, 9.5, 8, 210, 12.6, 20, 300, 0.1),
(161, 'szeder', 162, 39, 0.8, 1, 6, 3, 160, 52, 22, 50, 0.7),
(162, 'szilva', 198, 47, 0.8, NULL, 10.2, 4, 240, 16, 16, 35, 0.8),
(163, 'szőlő', 337, 81, 0.6, 0.3, 18.1, 2, 195, 28.2, 14, 50, 0.4),
(164, 'alma befőtt', 361, 86, 0.3, 0.3, 20.2, 1, 72, 6, 3.5, NULL, 0.2),
(165, 'ananász befőtt', 368, 88, 0.4, 0.2, 20.2, 1, 75, 13, 8, 7, 0),
(166, 'aszalt alma', 1052, 252, 1.4, 1.6, 55.4, 10, 622, 32, NULL, NULL, NULL),
(167, 'aszalt füge', 1026, 246, 3.5, 1.3, 54, 40, 850, 193, 70, 8, NULL),
(168, 'aszalt őszibarack', 1264, 302, 4.9, 1, 65.9, 9, 1340, 44, 54, 83, NULL),
(169, 'aszalt sárgabarack', 1282, 307, 5, 0.5, 70.2, 11, 1370, 82, 50, 770, NULL),
(170, 'aszalt szilva', 917, 219, 2.3, 0.6, 47.4, 8, 824, 41, 27, 23, NULL),
(171, 'banánchips', 1895, 453, 3.4, 20.2, 62.9, 57, 1300, 286, 156, 72, 6.1),
(172, 'birsalmabefőtt', 376, 90, 0.4, 0.5, 20.4, 6, 114, 39.7, 6, 3, NULL),
(173, 'cseresznyebefőtt', 357, 85, 0.6, 0.2, 19.8, 6, 122, 11.5, 11.2, 8, 0.1),
(174, 'datolya', 1179, 282, 1.9, 0.5, 66.3, 35, 650, 63, 50, 5, NULL),
(175, 'eper befőtt', 320, 77, 0.6, 0.2, 18.1, 4, 107, 7, 22, NULL, 0),
(176, 'kókuszreszelék', 2545, 609, 5.6, 62, 6.4, 28, 750, 22, 90, NULL, NULL),
(177, 'körte befőtt', 404, 97, 0.3, NULL, 23.7, 6, 66, 7, 4, 2, 0.2),
(178, 'mazsola', 1201, 287, 2.4, NULL, 65, 36, 1000, 110, 43, 5, NULL),
(179, 'meggy befőtt', 378, 90, 0.6, 0.2, 20.8, 2, 135, 12, 21, 25, 0.1),
(180, 'mirelit gesztenyemassza', 915, 219, 2.9, 0.9, 49.5, 1, 332, 56.9, 28.9, 3, 0.5),
(181, 'őszibarack befőtt', 367, 88, 0.5, NULL, 21.2, 3, 130, 3.9, 5.4, 45, 0.5),
(182, 'sárgabarack befőtt', 312, 75, 0.5, 0.1, 17, 13, 196, 11, 9.6, 283, 0.2),
(183, 'szilva befőtt', 378, 90, 0.4, NULL, 21.9, 12, 118, 10.3, NULL, 140, 0.4),
(184, 'áfonya lekvár', 1016, 243, 0.3, NULL, 59.7, NULL, 64, NULL, NULL, NULL, NULL),
(185, 'birsalma lekvár', 996, 238, 0.2, NULL, 58.8, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'csipkebogyó lekvár', 989, 237, 0.5, NULL, 58, 5, 165, 71, 130, NULL, NULL),
(187, 'eper lekvár', 990, 237, 0.4, NULL, 58.2, NULL, 62, 9.5, NULL, NULL, NULL),
(188, 'málna lekvár', 1081, 259, 0.5, NULL, 63.3, 7, 56, NULL, NULL, NULL, NULL),
(189, 'meggy lekvár', 1203, 288, 0.4, NULL, 70.3, 11, 90, 9, NULL, NULL, NULL),
(190, 'ribizli lekvár', 1048, 251, 0.2, NULL, 61.6, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'sárgabarack lekvár', 1098, 263, 0.4, NULL, 64.5, 18, 133, 21, 18, 333, NULL),
(192, 'szeder lekvár', 1015, 243, 0.5, 0.4, 58.7, 6, 42, NULL, NULL, NULL, NULL),
(193, 'szilva lekvár', 948, 227, 1.3, NULL, 54, 26, 500, 50, 26, 83, NULL),
(194, 'vegyesíz', 1034, 247, 1, NULL, 60, 47, 225, 35, 47, NULL, NULL),
(195, 'citromlé', 76, 18, 0.1, NULL, 14, 2, 116, 6.9, 4.2, 8, NULL),
(196, 'friss almalé', 244, 58, 0.4, 0.1, 7.7, 1, 138, 11, 10, 8, NULL),
(197, 'friss citromlé', 189, 45, 0.6, 0.1, 8.6, 1, 142, 9.6, 9, 1, NULL),
(198, 'friss grapefruitlé', 173, 41, 0.8, 0, 3.1, 5, 236, 15, 9.5, 90, 0.2),
(199, 'friss sárgarépalé', 98, 23, 0.7, 0.2, 10.9, 1, 157, 11, 12, NULL, NULL),
(200, 'friss narancslé', NULL, 214, 0.2, NULL, 12.2, 8, 34, 13, 8.8, NULL, NULL),
(201, 'friss szőlőlé', 231, 55, 0.3, 0.4, 1.4, 47, 282, 27, 30, NULL, NULL),
(202, 'kókusztej', 43, 10, NULL, NULL, 5.1, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'light rostos őszibaracklé', 85, 20, NULL, NULL, 4.6, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'light rostos sárgabaracklé', 78, 19, 0, NULL, 2.8, 0, 23, 1.4, 0.8, 1, NULL),
(205, 'light szőrt almalé', 49, 12, 0.7, 0.2, 10.1, 1, 172, 15, 12, 12, NULL),
(206, 'narancslé light', 201, 48, 0.2, 0.1, 14.8, 1, 40, 6.3, 4, 2, 0.1),
(207, 'rostos körtelé 40%NULLos', 256, 61, 0.3, 0, 13.6, 1, 73, 3.5, 5.6, 20, 0.4),
(208, 'rostos őszibaracklé 40%NULLos', 237, 57, 0.4, 0.1, 14.1, 2, 91, 5.6, 5.6, 91, 0.1),
(209, 'rostos sárgabaracklé 40 %NULLos', 251, 60, 0, NULL, 14.7, 0, 14, 0.9, 0.5, 1, NULL),
(210, 'szőrt almalé 12%NULLos', 248, 59, 0.3, 0.1, 14.4, 0, 63, 4.5, 4.8, 4, NULL),
(211, 'szőrt narancslé 40%NULLos', 253, 61, 0, NULL, 14.5, 1, 4, 1.6, 1.1, NULL, NULL),
(212, 'szőrt szőlőlé 12%NULLos', 246, 59, NULL, NULL, 0.1, 16, 2, 4, 1, NULL, NULL),
(213, 'cola light üdítő', 2, 0, NULL, NULL, 10.5, 4, 1, 3, 1, NULL, NULL),
(214, 'cola üdítő', 176, 42, NULL, NULL, 61.9, 280, 26, NULL, NULL, NULL, NULL),
(215, 'csipkeszörp', 1040, 249, NULL, NULL, 8.7, 7, 1, 3, 1, NULL, NULL),
(216, 'gyömbér üdítő', 146, 35, NULL, NULL, 65.8, 2, 90, 16, 7, NULL, NULL),
(217, 'málnaszörp', 1105, 264, 2.4, 1.5, 53.2, 43, 674, 34, 83, NULL, NULL),
(218, 'narancs szörp', 1052, 252, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'narancs üdítő', 202, 48, NULL, NULL, 8.8, 4, NULL, 1, NULL, NULL, NULL),
(220, 'tonic üdítő', 148, 35, NULL, NULL, 5.9, 3, 50, 3, NULL, 1, NULL),
(221, 'barnasör', 214, 51, NULL, NULL, 4.6, 5, 38, 4, 9, NULL, NULL),
(222, 'világos sör', 160, 38, NULL, NULL, 3, 2, 82, 9, 10, NULL, NULL),
(223, 'fehérbor', 315, 75, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'félédes pezsgő', 332, 79, NULL, NULL, 12.5, NULL, NULL, 7, 9, NULL, NULL),
(225, 'vermouth', 622, 149, NULL, NULL, 0.3, 4, 93, 7.6, 8.3, NULL, NULL),
(226, 'vörösbor', 236, 56, NULL, NULL, 1.7, 2, 2, NULL, NULL, NULL, NULL),
(227, 'konyak', 1028, 246, NULL, NULL, 32.5, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'likőr', 1281, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'pálinka', 1088, 260, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'unicum', 1348, 323, NULL, NULL, 0.1, 0, 3, 1.5, 0.3, NULL, NULL),
(231, 'whisky', 1037, 248, 20.9, 5.2, 0.5, 95, 250, 15, 30, 10, 0.3),
(232, 'csirkecomb', 556, 133, 21.5, 2.5, 0.4, 76, 281, 5, 30, 10, 0.3),
(233, 'csirkehús', 462, 111, 17.6, 17.7, NULL, 70, 260, 10, 20, NULL, 0.2),
(234, 'csirkehús bőrrel', 965, 231, 24.7, 1, 0.5, 76, 281, 5, 30, 10, 0.2),
(235, 'csirkemell', 461, 110, 19, 12, 0.4, 140, 292, 6, 22, 70, 0),
(236, 'kacsahús', 780, 186, 18.5, 13.6, 0.3, 69, 315, 6, 24, 70, 0),
(237, 'pecsenyeliba', 830, 199, 20.5, 3.6, NULL, 86, 289, 10, 17, 2, 0.2),
(238, 'pulykacomb', 481, 115, 20.5, 9.5, 0.4, 66, 315, 26, 28, 2, 0.5),
(239, 'pulykahús', 710, 170, 24.1, 1, NULL, 46, 333, 10, 20, 2, 0.2),
(240, 'pulykamell', 442, 106, 19, 6.5, 0.4, 76, 281, 5, 30, 10, 0.1),
(241, 'tyúkhús', 572, 137, 16.9, 26.4, 0.3, 100, 350, 9, 16, 30, 0.4),
(242, 'birkahús', 1287, 308, 19.5, 4.5, 0.3, 100, 350, 11, 25, 7, 0.2),
(243, 'borjúhús', 503, 120, 22.3, 1.9, 0.5, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'fácánhús', 455, 109, 21, 8, 0.4, 58, 383, 19, 20, 10, 0.1),
(245, 'házinyúlhús', 662, 158, 20.8, 1.9, 0.4, 60, 309, 5, NULL, NULL, NULL),
(246, 'őzhús', 428, 102, 19.7, 12.7, 0.3, 90, 327, 15, 17, 30, 0.4),
(247, 'sovány bárányhús', 816, 195, 20.7, 3.9, 0.6, 61, 330, 7, 29, NULL, NULL),
(248, 'szarvashús', 505, 121, 21.6, 2.4, 0.4, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'vaddisznóhús', 460, 110, 22.7, 3.1, 0.5, NULL, NULL, NULL, NULL, NULL, 0),
(250, 'vadkacsa', 507, 121, 19, 4.4, 0.6, 50, 360, 10, 36, 12, 0.2),
(251, 'bélszín', 496, 119, 19, 14, 0.6, 58, 342, 11, 22, 15, 0.4),
(252, 'közepes zsírtartalmú marhahús', 858, 205, 17, 19, 0.6, 60, 263, 2, 17, 15, 0.4),
(253, 'marhafelsál', 1014, 243, 16, 19, 0.6, 60, 263, 2, 17, 15, 0.4),
(254, 'lapos marhahátszín', 1026, 246, 20, 18, 0.6, 60, 263, 2, 17, 15, 0.4),
(255, 'puha marhahátszín', 997, 239, 19, 6.2, 0.6, 50, 360, 10, 36, 3, 0.2),
(256, 'marhatarja', 564, 135, 21, 6.2, 0.6, 50, 360, 10, 36, 3, 0.2),
(257, 'sovány marhahús', 597, 143, 16, 21, 0.5, 60, 263, 2, NULL, 15, 0.9),
(258, 'zsíros marhahús', 1071, 256, 16, 29, 0.3, 55, 204, 6, NULL, 8, 0.1),
(259, 'csülök', 1370, 328, 17.5, 23.9, 0.3, 68, 301, 13.2, 41, 8, 0.1),
(260, 'közepes zsírtartalmú sertéshús', 1202, 288, 12, 42, 0.3, 42, 169, 10.9, 29, 8, 0.1),
(261, 'oldalas', 1794, 429, 21, 8.1, 0.4, 84, 366, 16.9, 42, 8, 0.1),
(262, 'sovány sertéshús. comb. karaj', 666, 159, 12, 42, 0.3, 42, 169, 10.9, 29, 8, 0.1),
(263, 'zsíros sertéshús', 1794, 429, 16.8, 46.5, NULL, 1200, 200, 4, 15, 8, 0.2),
(264, 'angolszalonna', 2040, 488, 11, 2.9, 0.6, 2288, 147, 14.3, 11.2, 8, 0),
(265, 'aszpikos uborkás sonka', 302, 72, 14.7, 15.6, 2.7, 730, 182, NULL, 24.3, NULL, NULL),
(266, 'baromfipárizsi', 881, 211, 14.7, 15.6, 2.7, 730, 182, NULL, 24.3, NULL, NULL),
(267, 'baromfivirsli', 881, 211, 19.8, 41.9, 0.3, 1605, 480, 36, 39, 8, 0.3),
(268, 'csabai csípőskolbász', 1922, 460, 10, 45, NULL, 1200, 200, 4, 15, NULL, 0.2),
(269, 'császárszalonna', 1869, 447, 16.3, 29.8, 0.3, 1500, 226, 10, 22, 8, 0.1),
(270, 'cserkészkolbász', 1405, 336, 22.2, 1.4, 7, 921, 416, 17.6, 32.1, 7, 0.1),
(271, 'csirkesonka', 543, 130, 15.7, 27, 0.2, 1160, 290, 7.5, 19, 8, 0.2),
(272, 'debreceni', 1288, 308, 14.5, 28.3, 0.2, 1750, 130, 26, 22, 8, 0.1),
(273, 'disznósajt', 1317, 315, 17.8, 35.5, 0.3, 1710, 350, 44, 57, 8, 0.2),
(274, 'főzőkolbász', 1646, 394, 15, 15, 0.3, 1600, 270, 15, 24, 8, NULL),
(275, 'füstölt főtt tarja', 824, 197, 15.5, 25.4, 0.3, 1120, 182, 32, 39, 8, 0.1),
(276, 'füstöltkolbász', 1226, 293, 17.2, 33, 0.1, 2030, 400, 27, 44, 8, 0.1),
(277, 'füstölt sertés sonka', 1538, 368, 22.6, 7.1, 0.4, 445, 314, 24.4, 25, 8, 0.1),
(278, 'gépsonka', 655, 157, 15.1, 11.2, 2.3, 1159, 286, 19.1, 19.1, 30, 0.3),
(279, 'hamburgerpogácsa', 715, 171, 11.9, 18.2, 0.2, 910, 250, 20.4, 32, 8, 0.1),
(280, 'krinolin', 891, 213, 16.3, 22.9, 0.3, 1050, 226, 28, 22, 8, 0.1),
(281, 'lecsókolbász', 1145, 274, 13.8, 22, 2, 1120, 212, 12, 59, 8, 0.1),
(282, 'löncshús', 1097, 262, 11.2, 18.2, 2, 2106, 232, 16, 18, NULL, NULL),
(283, 'marhapárizsi', 910, 218, 13.7, 30.8, 0.3, 1680, 256, 8, 13, 8, 0.2),
(284, 'mortadella', 1399, 335, 13.7, 30.8, 0.3, 1680, 256, 8, 13, 8, 0.2),
(285, 'olasz felvágott', 1399, 335, 19.6, 45.8, 0.3, 1600, 480, 18, 39, 8, 0.3),
(286, 'paprikás szalámi', 2066, 494, 11.9, 18.2, 0.2, 910, 250, 20.4, 32, 8, 0.1),
(287, 'sertéspárizsi', 891, 213, 22.8, 42, NULL, 776, 160, 44.9, 37.1, 1, 0.1),
(288, 'pulykakolbász', 1971, 471, 17, 2.8, 4.2, 851, 290, 72, 23.5, 1, NULL),
(289, 'pulykasonka', 462, 111, 18.5, 19.1, 3.5, 890, 432, 35.2, 51, 4, 0.1),
(290, 'rakott nyelv', 1090, 261, 13, 19, 3.9, 774, 91, 299.2, 16.7, NULL, NULL),
(291, 'sajtos baromfipárizsi', 1002, 240, 21.2, 8.2, 0.2, 1310, 426, 32, 52, 8, 0.1),
(292, 'sonkaszalámi', 669, 160, 22.7, 42, NULL, 1120, 530, 44, 57, 8, 0.2),
(293, 'sütnivaló kolbász', 1969, 471, 20, 32.1, 0.3, 1605, 182, 32, 15, 8, 0.2),
(294, 'szárazkolbász', 1554, 372, 10.3, 14.6, 2.4, 741, 269, 24.6, 33.8, 195, 0.2),
(295, 'tavaszi felvágott', 767, 183, 25.1, 46.1, 0.3, 1700, 400, 18, 39, 8, 0.3),
(296, 'téliszalámi', 2169, 519, 17.5, 41, 0.3, 1545, 360, 34, 17, 8, 0.3),
(297, 'túristaszalámi', 1849, 442, 12.5, 20, 0.2, 1000, 250, 20.4, 32, 8, 0.1),
(298, 'sertés virsli', 969, 232, 15.6, 19.9, 0.6, 1000, 250, 20.4, 32, 8, 0.1),
(299, 'zalai felvágott', 1024, 245, 19.2, 4.1, 3.6, 87, 316, 8.7, 19, 3920, 0.2),
(300, 'borjúmáj', 540, 129, 20, 3.7, 3, 68, 218, 18, 13, 11600, 0.4),
(301, 'csirkemáj', 526, 126, 17.3, 5.8, 0.7, 111, 262, 22, 17, 9, 1.2),
(302, 'csirkeszív', 523, 125, 16.6, 2.4, 0.3, 66, 111, 5.6, 21.8, 9, 1.2),
(303, 'csirkezúza', 375, 90, 15.9, 27.7, 0.3, 1100, 195, 10, 27, 1500, 0.2),
(304, 'kenőmájas', 1319, 316, 16.4, 4.3, 6.3, 140, 230, 43, 24, NULL, NULL),
(305, 'libamáj', 543, 130, 14.6, 11.4, 10.1, 903, 255, 17.4, 24.7, 830, 0.2),
(306, 'májashurka', 845, 202, 20.9, 3.1, 3.6, 120, 332, 12.8, 34, 4000, 0.7),
(307, 'marhamáj', 529, 127, 15.9, 11.2, NULL, 130, 224, 30, 22, NULL, 0.1),
(308, 'sertéspacal', 690, 165, 10.6, 9, NULL, 153, 312, 10, 20, NULL, 1.2),
(309, 'sertés agyvelő', 518, 124, 19.5, 5.3, 2.5, 77, 368, 16.4, 38, 4500, 0.2),
(310, 'sertésmáj', 570, 136, 13.4, 21, 5.9, 738, 173, 10, 15, 950, 0.2),
(311, 'sertésmájkrém', 1118, 267, 16.8, 16, 0.5, 127, 314, 18.8, 33, 6, 0.1),
(312, 'sertésnyelv', 895, 214, 20.1, 2.9, 0.6, 224, 299, 16.7, 27, 60, 0.5),
(313, 'sertéstüdő', 457, 109, 18.5, 0.1, 0.1, 207, 185, 5, 20, 30, NULL),
(314, 'sertésvér', 316, 76, 17, 5, 0.3, 160, 284, 17.6, 33, 302, 0.4),
(315, 'sertésvese', 480, 115, 12.2, 19.4, 6.4, 949, 154, 11.9, 21.4, 12, 0.1),
(316, 'véreshurka', 1047, 250, 15, 24.5, NULL, 65, 217, 17, 21, 980, NULL),
(317, 'angolna', 1178, 282, 17.8, 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'balin', 507, 121, 18, 1.9, 0.6, 70, 210, 130, 40, NULL, NULL),
(319, 'busa', 384, 92, 18.4, 0.9, NULL, 63, 250, 20, 25, 15, 0.2),
(320, 'csuka', 341, 82, 19, 0.8, 0.2, 81, 237, 27, 18, 20, 0.2),
(321, 'fogassüllő', 353, 84, 15.8, 2, 0.2, 105, 282, 20, 27, 20, 2.1),
(322, 'harcsa', 343, 82, 18.2, 17.8, NULL, 117, 360, 34, 31, 38, 1.5),
(323, 'hering', 979, 234, 16.6, 5.5, 0.2, 31, 478, 53.3, 59.9, 4, 2.6),
(324, 'keszeg', 490, 117, 20, 14, 0.2, 51, 371, 13, 29, 65, 1.3),
(325, 'lazac', 869, 208, 18.7, 11.9, NULL, 95, 396, 12, 30, 100, 1.3),
(326, 'makrela', 764, 183, 21.5, 2.9, NULL, 40, 465, 18, 27, 45, 0.7),
(327, 'pisztráng', 471, 113, 15.8, 8.7, 0.1, 50, 310, 30, 30, 44, 0.5),
(328, 'ponty', 596, 143, 19.4, 4.5, NULL, 100, NULL, 85, 24, 20, 0.3),
(329, 'szardínia', 498, 119, 12.7, 0.7, 0.8, NULL, 216, 21.3, NULL, NULL, NULL),
(330, 'tintahal', 254, 61, 21.5, 15.5, NULL, 43, NULL, 40, 50, 450, NULL),
(331, 'tonhal filé', 947, 227, 17.7, 0.6, 1.2, 72, 356, 24, 25, 7, 1),
(332, 'tőkehal filé', 342, 82, 14.4, 2.2, NULL, 582, 145, 30, 39, 84, 3.5),
(333, 'kagyló', 325, 78, 19.5, 2, 2, NULL, 140, 55, 50, 84, 3.5),
(334, 'kagylókonzerv', 437, 104, 26, 16, 4.6, 1940, 164, 51, NULL, 600, NULL),
(335, 'kaviár', 1119, 268, 18.9, 28, NULL, NULL, NULL, 15, NULL, 108, 0.9),
(336, 'makrela konzerv', 1376, 329, 22.5, 21.4, NULL, 505, 397, 330, 39, 60, 1.7),
(337, 'olajos szardínia', 1187, 284, 23.8, 21.5, NULL, 590, 248, 13, 43, 372, 1.2),
(338, 'olajos tonhal', 1213, 290, 15.9, 33.8, NULL, 74, 370, 60, 27, 20, 2.3),
(339, 'olajoshal konzerv', 1545, 370, 11.1, 11, NULL, NULL, 120, 53, 12, 13, 2.3),
(340, 'pácolt hering', 602, 144, 14.8, 15, NULL, 526, 352, 49, 61, 240, 1),
(341, 'paradicsomos halkonzerv', 816, 195, 20.5, 1.1, 2.2, 630, 100, 110, 27, 150, 2.4),
(342, 'rák', 423, 101, 22.9, 1.8, 1.1, 1000, 110, 120, 32, 150, 2.4),
(343, 'rákkonzerv', 471, 113, 19.8, 3.4, 48.8, 27, 810, 110, 108, 30, NULL),
(344, 'csicseriborsó', 1282, 307, 10.8, 0.4, 29, 2, 334, 31.7, 64.8, 75, 0.1),
(345, 'fejtettbab', 684, 164, 26, 1.9, 53, 10, 1150, 74, 134, 17, 1.3),
(346, 'lencse', 1399, 335, 21.7, 1.5, 53.1, 10, 1210, 49, 126, 13, 4.9),
(347, 'sárgaborsó', 1313, 314, 27.2, 1.3, 60.5, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'sárgaborsóliszt', 1523, 364, 21.9, 1, 54.1, 8, 1120, 106, 217, 250, 0.2),
(349, 'szárazbab', 1315, 314, 37, 18.1, 27, 4, 1800, 257, 247, 63, 1.5),
(350, 'szójabab', 1759, 421, 5.5, 1, 4.7, 30, 235, 32, 18.5, 4, NULL),
(351, 'szójacsíra', 210, 50, 47, 2, 31, 4, 1800, 200, 240, NULL, NULL),
(352, 'szójagranulátum', 1386, 332, 47, 2, 31, 4, 1800, 200, 240, NULL, NULL),
(353, 'szójakocka', 1386, 332, 41.6, 28.5, 22.1, 4, 1800, 200, 240, 13, 1.5),
(354, 'szójaliszt', 2147, 514, 12.3, 15.5, 14.1, 788, 459, 50.6, 61, 1, 6.1),
(355, 'szójapárizsi', 1030, 246, 42, 25, 20, 4, 1800, 200, 240, NULL, 1.5),
(356, 'szójapehely', 1987, 475, 35.3, 12.9, 32.6, 1403, 1222, 190.7, 159.3, 1, 6.5),
(357, 'szójás fasírtpor', 1630, 390, 10.5, 0.1, 5.6, 5586, 212, 20, 40, NULL, NULL),
(358, 'szójaszósz', 274, 66, 2.8, 1.9, 1.8, 12, 141, 4, 19, 3, 0),
(359, 'szójatej', 149, 36, 8.1, 4.2, 0.6, 4, 63, 150, 23, NULL, 1),
(360, 'tofu (szójatúró),', 305, 73, 3.5, 0.5, 11.4, 45, 148, 120, 17, 18, 0.1),
(361, 'kakaós tej', 269, 64, 3.2, 1.5, 12.5, 45, 148, 120, 17, 18, 0.1),
(362, 'karamellás tej', 320, 77, 3.6, 3.9, 4.7, 80, 50, 130, 13, 66, NULL),
(363, 'kecsketej', 287, 69, 3.5, 0.1, 4.8, 53, 150, 123, 14, NULL, 0),
(364, 'tej. 0%NULLos', 142, 34, 3.4, 1.5, 5.3, 53, 160, 114, 18, 14, 0),
(365, 'tej. 1.5%NULLos', 203, 49, 3.4, 2.8, 5.3, 45, 148, 120, 17, 18, 0.1),
(366, 'tej. 2.8%NULLos', 252, 60, 3.4, 3.6, 5.3, 45, 148, 120, 17, 23, 0.1),
(367, 'tej. 3.6%NULLos', 282, 68, 16.2, 7, 3.7, 18, 65, 80, 6, 44, 0.1),
(368, 'félzsíros tehéntúró', 599, 143, 18.2, 21.1, 3, 15, 50, 63, 5, 99, 0.3),
(369, 'gomolyatúró', 1154, 276, 14.7, 22.5, 2.8, 515, 146, 400, 42, 117, 0.2),
(370, 'juhtúró', 1145, 274, 14.1, 0.5, 3.8, 20, 71, 90, 6, 2, 0),
(371, 'sovány tehéntúró', 320, 76, 13.8, 11.3, 18, 15, 53, 60.3, 5.2, 86, 0.2),
(372, 'vaniliás túrókrém', 960, 230, 3.4, 0.1, 4.6, 120, 181, 120, 16, 2, 0),
(373, '0%NULLos joghurt', 143, 34, 2.9, 3, 5.1, 97, 174, 101.6, 16.4, 25, 0.1),
(374, 'cukormentes gyümölcsjoghurt', 249, 60, 2.8, 2.9, 11.2, 98, 174, 97.7, 14.3, 68, 0.1),
(375, 'gyümölcsjoghurt', 347, 83, 3.4, 3.6, 4.6, 120, 181, 120, 16, 32, 0.1),
(376, 'joghurt', 270, 65, 3.4, 3.6, 4.6, 120, 181, 120, 16, 32, 0.1),
(377, 'kefir', 270, 65, 2.3, 26, 11, 34, 112, 100, 10, 213, 0.8),
(378, 'cukrozott tejszínhab', 1206, 289, 2.6, 30, 3, 34, 112, 100, 10, 225, 0.8),
(379, 'habtejszín', 1228, 294, 2.8, 1.6, 18, 36, 119, 91.3, 8.8, 12, 0.1),
(380, 'joghurthab', 410, 98, 3.3, 16, 3.9, 40, 132, 105, 11.2, 120, 0.3),
(381, 'kávétejszín', 726, 174, 36, 2, 50.3, 650, 1235, 1200, 110, 12, 0),
(382, 'sovány tejpor', 1525, 365, 8.5, 7, 54.9, 88, 360, 300, 27, 58, 0.2),
(383, 'sőrített tej', 1330, 318, 2.8, 11, 4.3, 53, 144, 100, 11, 113, 0.4),
(384, 'tejföl 12%NULLos', 535, 128, 3.3, 20, 3.8, 35, 148, 130, 14, 113, 0.4),
(385, 'tejföl 20%NULLos', 875, 209, 25.5, 27, 37, 650, 1235, 1200, 110, 253, 0.8),
(386, 'zsíros tejpor', 2071, 495, 24.2, 26, 1.8, 970, 109, 600, 66, 120, 0.4),
(387, 'anikó sajt', 1420, 340, 21.5, 23, 1.5, 970, 110, 570, 17, 362, 0.5),
(388, 'bakony camembert sajt', 1256, 300, 11.5, 24.9, 1.5, 1120, 66, 500, 52, NULL, 0.7),
(389, 'boci krémsajt', 1160, 277, 16.5, 26.4, 1.7, 1120, 66, 500, 52, NULL, 0.7),
(390, 'camping krémsajt', 1304, 312, 26.8, 29.1, 1.5, 800, 150, 800, 30, 190, 1),
(391, 'chester cheddar sajt', 1575, 377, 26.2, 26.6, 1.7, 800, 150, 800, 30, 260, 0.4),
(392, 'edámi sajt', 1474, 353, 27.8, 29.4, 1.5, 800, 150, 800, 30, 317, 0.4),
(393, 'ementáli sajt', 1604, 384, 14.2, 21.3, 4.1, 1116, 62, 492.5, 19.2, 128, 0),
(394, 'fetasajt', 1112, 266, 25.2, 26.6, 1.7, 800, 150, 800, 30, 160, 0.4),
(395, 'zalai füstölt sajt', 1457, 349, 24.9, 27.4, 2.2, 819, 121, 699.8, 29, 174, 0.4),
(396, 'goudasajt', 1494, 357, 22.2, 23.3, 1.4, 1000, 134, 400, 27, 333, 0.6),
(397, 'göcseji sajt', 1277, 306, 21, 23.4, 2, 1000, 134, 460, 27, 133, 0.6),
(398, 'hóvirág sajt', 1271, 304, 15.5, 23.7, 1.9, 1120, 66, 500, 52, NULL, 0.7),
(399, 'ízesített kenhető sajt', 1188, 284, 22.3, 27.3, 1.9, 1170, 152, 460, NULL, 133, 0.6),
(400, 'karaván füstölt sajt', 1439, 344, 23.6, 28.7, 1.4, 654, 67, 400, NULL, 333, 0.6),
(401, 'kaskavál juhsajt', 1505, 360, 21.6, 29.8, 2.5, 515, 158, 298, 29, 400, 0.6),
(402, 'kecskesajt', 1533, 367, 30.5, 10, 1.6, 800, 180, 400, NULL, 70, 0.3),
(403, 'köményes sajt', 917, 219, 20, 29.7, 2, 1450, 400, 526, 39, 160, 0.8),
(404, 'márványsajt', 1492, 357, 19.4, 21.6, 2.2, 373, 67, 517, 18.6, 241, 0.4),
(405, 'mozarella sajt', 1180, 282, 29.6, 18.5, 1.7, 1300, 180, 600, 56, 107, 0.4),
(406, 'óvári sajt', 1225, 293, 26.8, 28.9, 1.6, 700, 150, 850, 50, 390, 0.9),
(407, 'parmezán sajt', 1570, 375, 21.5, 30.6, 2, 1809, 91, 661.8, 29.5, 300, NULL),
(408, 'rokfort sajt', 1554, 372, 2.8, 26.2, 3.1, 500, 120, 180, NULL, 153, 0.7),
(409, 'tejszínkrémsajt', 1089, 261, 27.8, 16.3, 1.9, 800, 95, 800, 59, 177, 0.2),
(410, 'tenkes sajt', 1115, 267, 18.2, 33.4, 1.4, 944, 105, 400, 29, 630, 0.8),
(411, 'tihany séd brie sajt', 1592, 381, 27.7, 28.1, 1.6, 970, 109, 600, 66, 260, 0.4),
(412, 'trappista sajt', 1554, 372, 25.7, 8.4, 2, 1400, 104, 400, 48, 38, 0.8),
(413, 'túra sajt', 783, 187, 16.7, 25, 2, 1120, 66, 500, 52, 123, 0.6),
(414, 'zsíros kockasajt', 1259, 301, 15.6, 63.5, 8.7, 2, 600, 290, 140, 5, 26.2),
(415, 'bokormogyoró', 2809, 672, 18.7, 26.9, 23.8, 3, 614, 69.7, 285, NULL, 3.5),
(416, 'dejó', 1731, 414, 18.6, 57, 11.7, 11, 544, 202, 256, 8, 6.2),
(417, 'dió', 2664, 637, 24.4, 30.9, NULL, NULL, NULL, 198, NULL, NULL, NULL),
(418, 'lenmag', 1578, 377, 20.5, 38.2, 23.9, 17, 1105, 968, 506, NULL, 4.9),
(419, 'mák', 2190, 524, 27.6, 52.2, 6.8, 8, 890, 238, 368, 17, 24.8),
(420, 'mandula', 2551, 610, 22.5, 49, 12.3, 2, 725, 98, 420, NULL, NULL),
(421, 'napraforgó', 2437, 583, 16.2, 48.2, 28.5, 17, 530, 41, 255, NULL, 1.6),
(422, 'olajos pörkölt kesudió', 2573, 616, 20.8, 51.6, 12.5, NULL, 1020, 136, 158, 25, 5.2),
(423, 'pisztácia', 2510, 600, 26.4, 49.4, 8.9, 6, 777, 65, 182, NULL, 8.8),
(424, 'pörkölt földimogyoró', 2460, 589, 24.6, 45.9, 8.3, 2758, 723, 60.5, 169.3, NULL, 8.2),
(425, 'sós földimogyoró', 2288, 547, 26.3, 54.8, 9.4, 20, 570, 670, 370, 1000, 2.5),
(426, 'szezámmag', 2670, 639, 26.3, 54.8, 9.4, 20, 570, 670, 370, 1000, 2.5),
(427, 'szezámpehely', 2670, 639, 4.8, 1.5, 32.6, 2, 553, 94.6, 48, 5, 1.2),
(428, 'szelídgesztenye', 685, 164, 33.9, 51.5, 3.6, 10, 920, 66.5, 970, NULL, 38.5),
(429, 'tökmag', 2577, 616, 13.5, 12, 0.6, 144, 147, 42.2, 12, 220, 0.7),
(430, 'tojás', 690, 165, 12.8, 0.3, 0.7, 170, 154, 17, 12, NULL, NULL),
(431, 'tojásfehérje', 238, 57, 16.1, 31.7, 0.3, 51, 138, 80, 16, 550, 2.1),
(432, 'tojássárga', 1474, 353, 2.2, 4.5, 27.8, 110, 99, 75, NULL, 130, NULL),
(433, 'fagylalt. jégkrém', 674, 161, 7.2, 4.5, 71.5, 20, 95, 24, 12.1, 26, 0.2),
(434, 'mézespuszedli', 1494, 357, 5.6, 27.3, 53.7, 94, 126, 67.4, 13.8, 117, 1.2),
(435, 'citromos nápolyi', 2032, 486, 8.2, 11, 78.8, 387, 139, 47, 23, NULL, 0.4),
(436, 'édes keksz', 1877, 449, 5.8, 29.2, 62, 11, 434, 80, 126, 6, NULL),
(437, 'étcsokoládé', 2243, 537, 11.6, 1.2, 72.1, 200, 137, 13, 20, 3, 0.4),
(438, 'félkész réteslap', 1454, 348, 9.8, 6.8, 78, 392, 73, 25, 32, NULL, 0.4),
(439, 'háztartási keksz', 1732, 414, 6.6, 28.3, 54.1, 96, 193, 71.9, 38.9, 118, 1.2),
(440, 'kakaós nápolyi', 2091, 500, 14.4, 13.8, 59.8, 790, 427, 52.9, 107.1, 103, 4.1),
(441, 'korpáskeksz', 1767, 423, 8, 24.9, 57.4, 5, 209, 43, 120, NULL, 9.1),
(442, 'marcipán', 2041, 488, 6.5, 31, 57, NULL, NULL, 120, 80, 31, NULL),
(443, 'mogyorókrém', 2239, 536, 9.7, 0.5, 75, 1800, 120, 150, 29, NULL, 0.3),
(444, 'ropi', 1442, 345, 10.2, 24.9, 39.1, 938, 117, 95.5, 20, 108, 0.8),
(445, 'sajtos tallér', 1770, 423, 8, 18.8, 58.3, 894, 94, 12.5, 12.6, 153, 1.2),
(446, 'sóskeksz', 1824, 436, 8.4, 30.3, 56.8, 58, 449, 220, 55, 8, 0),
(447, 'tejcsokoládé', 2240, 536, NULL, NULL, 97.4, 2, 90, 55, 14, NULL, NULL),
(448, 'barnacukor', 1636, 391, NULL, NULL, 99.9, 0, 2, 0.6, 0.2, NULL, NULL),
(449, 'cukor', 1678, 402, 0.4, NULL, 81, 7, 47, 40, 5.5, NULL, NULL),
(450, 'méz', 1368, 327, 0.4, 0.1, 84.2, 3, 7, NULL, 2, NULL, NULL),
(451, 'pudingpor', 1424, 341, 9, 73, NULL, 1400, 14, 2, 7, NULL, 0.1),
(452, 'füstölt szalonna', 2911, 696, 0.5, 99, NULL, 1, NULL, NULL, NULL, NULL, 2.7),
(453, 'libazsír', 3751, 897, 0.1, 99.7, NULL, 1, 1, 1, 1, 9, 1.6),
(454, 'sertészsír', 3770, 902, 12.1, 83.2, NULL, NULL, NULL, NULL, NULL, NULL, 0.1),
(455, 'tepertő', 3348, 801, NULL, 99.8, NULL, 0, NULL, NULL, NULL, 30000, 3.3),
(456, 'tőkehalmáj olaj', 3772, 902, NULL, 99.5, NULL, NULL, NULL, NULL, NULL, NULL, 2.7),
(457, 'tyúkzsír', 3761, 900, 0.4, 80, 0.5, 11, 16, 25, 2, 783, 2.2),
(458, 'vaj', 3039, 727, 2.5, 40, 2, 6, 8, 12.5, 1, 278, 1.1),
(459, 'vajkrém', 1588, 380, NULL, 99.5, NULL, NULL, NULL, NULL, NULL, NULL, 215.4),
(460, 'búzacsíraolaj', 3761, 900, 1.6, 35, 0.4, 400, 7, 12, 0.5, 697, 6),
(461, 'margarin. 35% zsírtartalmú', 1357, 325, 0.2, 55, 0.4, 400, 7, 12, 0.5, 697, 6),
(462, 'margarin. 55% zsírtartalmú', 2089, 500, NULL, 99.5, NULL, NULL, NULL, NULL, NULL, NULL, 3.2),
(463, 'dióolaj', 3761, 900, 0.2, 80, 0.4, 400, NULL, NULL, NULL, 697, 16),
(464, 'főzőmargarin', 3033, 726, NULL, 99, 0, NULL, NULL, NULL, 0.2, NULL, 2.1),
(465, 'kókuszzsír', 3742, 895, NULL, 100, NULL, 1, 1, 15, NULL, 23, 33.8),
(466, 'kukoricaolaj', 3780, 904, NULL, 99.5, NULL, NULL, NULL, NULL, NULL, NULL, 2.1),
(467, 'lenmagolaj', 3761, 900, 0.2, 70, 0.4, 400, 7, 12, 0.5, 680, 5),
(468, 'margarin 70 % zsírtartalmú', 2656, 635, NULL, 99.8, NULL, NULL, NULL, NULL, NULL, 5, 55.8),
(469, 'napraforgó olaj', 3772, 902, NULL, 99.6, NULL, NULL, NULL, NULL, NULL, 37, 12),
(470, 'olivaolaj', 3765, 901, NULL, 99.8, NULL, NULL, NULL, NULL, NULL, 550, 15.3),
(471, 'repceolaj', 3772, 902, NULL, 99.5, NULL, NULL, NULL, NULL, NULL, NULL, 4.1),
(472, 'szezámolaj', 3761, 900, NULL, 99.8, NULL, NULL, NULL, NULL, NULL, 583, 93),
(473, 'szójaolaj', 3772, 902, NULL, 99.8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'tökmagolaj', 3772, 902, 2, 0.2, 4.4, 90, 211, 47, 17, NULL, NULL),
(475, 'cukormentes neskakaó', 115, 28, 16.7, 1.2, NULL, 34, 649, 28, NULL, NULL, NULL),
(476, 'élesztő', 326, 78, 4.4, 30.7, 25.6, 796, 183, 22.2, 50.1, 5, 12.9),
(477, 'gabonakolbász', 1666, 399, 18.5, 21.7, 10.5, 35, 1600, 105, 523, 7, 0.2),
(478, 'kakaópor', 1307, 313, 17.3, 4, 16.1, 24000, 403, 60, 50, 15, 0.1),
(479, 'marhahúsleves kocka', 712, 170, 11.2, NULL, 8.2, 58, 4380, 168, 390, NULL, NULL),
(480, 'nescafe', 326, 78, 10.8, 4, 79.1, 504, 712, 326, 83, 3, 0.2),
(481, 'neskakaó', 1662, 397, 12, 4.2, 77.9, 4, 301, 10, 131, 20, 0.1),
(482, 'pattogatott kukorica (olaj nélkül),', 1669, 399, 9, 28.1, 57.2, 884, 225, 10, 108, 15, 0.1),
(483, 'pattogatott kukorica (olajjal),', 2174, 520, 5.5, 3.4, 81, 73, 1840, 52, 244, NULL, 1),
(484, 'pótkávé', 1582, 378, 26, 5.1, 0.8, 6, 1790, 302, 184, NULL, NULL),
(485, 'teafő', 504, 121, 4.8, 35.5, 54.9, 181, 812, 22.3, 4.1, 20, 0.3),
(486, 'tejszínpótló por', 2344, 561, 0.4, NULL, 0.6, 20, 89, 15, 22, NULL, NULL),
(487, 'ecet 20%NULLos', 17, 4, 3.3, 1, 9.3, 15839, 824, 140.2, 23.9, 2338, 0.3),
(488, 'ételízesítő', 250, 60, 13, 4, 63, 5, 259, 10, 14, 333, 2.9),
(489, 'főszerpaprika', 1428, 342, 5.8, 10.8, 26, 1201, 155, 20.9, 9.6, 23, 4.7),
(490, 'halászlékocka', 941, 225, 5.7, 6.4, 22, 760, 165, 95, 48, NULL, NULL),
(491, 'mustár', 707, 169, 3.6, 13.1, 23.3, 1782, 652, 41.8, 1.6, 137, 7),
(492, 'spagettikrém', 945, 226, 1.7, 25.1, NULL, 165, 86, 42.2, 14.8, 14, 14.4),
(493, 'tormás majonéz', 977, 234, 1.7, 28.2, 12.4, 835, 100, 20.9, 7.4, 42, 13.9),
(494, 'ezer sziget salátaöntet', 1302, 311, 0.9, 30.9, 4.6, 47, 43, 27.2, 5.1, 8, 16.8),
(495, 'jogonéz', 1258, 301, 1.3, 93.2, 0, 83, 14, 6.5, 1.5, 47, 48),
(496, 'majonéz', 3545, 848, 2.2, 7.7, NULL, 4020, 308, 46.1, 31, 35, NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`etel_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `foods`
--
ALTER TABLE `foods`
  MODIFY `etel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;