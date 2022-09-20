-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 12:19
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webaruhaz`
--

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `termek_neve`, `kategoria`, `termek_ara`, `termek_kepe_nagy`, `termek_kepe_kicsi`, `mennyiseg`) VALUES
(41, 'ASUS VivoBook X515MA-BQ772WS Notebook', 'Laptop', 79899, '41_nk.jpg', '41_kk.jpg', 13),
(42, 'ASUS ZenBook 14X UX5401EA-L7099W Notebook', 'Laptop', 349900, '42_nk.jpg', '42_nk.jpg', 3),
(43, 'UMAX VisionBook N14G Plus UMM230148 Notebook', 'Laptop', 49900, '43_nk.jpg', '43_kk.jpg', 3),
(44, 'ASUS VivoBook 17 X705MA(GML-R)-BX232W Notebook', 'Laptop', 179900, '44_nk.jpg', '44_kk.jpg', 9),
(45, 'Lenovo IdeaPad 3 82H8025RHV Notebook', 'Laptop', 199900, '45_nk.jpg', '45_kk.jpg', 2),
(46, 'ASUS ZenBook 14X UM5401QA-L7208W Notebook', 'Laptop', 299890, '46_nk.jpg', '46_kk.jpg', 15),
(47, 'ASUS ROG STRIX G15 G513IH-HN004 Notebook', 'Laptop', 299900, '47_nk.jpg', '47_kk.jpg', 5),
(48, 'Apple MacBook Air 13.3 M1 8GB 256GB MGN63 Notebook', 'Laptop', 417000, '48_nk.jpg', '48_nk.jpg', 41),
(49, 'ASUS VivoBook X712EA-AU693 Notebook\r\nÖsszehasonlítás\r\nASUS VivoBook X712EA-AU693 Notebook ', 'Laptop', 129900, '49_nk.jpg', '49_kk.jpg', 16),
(50, 'ASUS X515EA-BQ1187 Notebook', 'Laptop', 174900, '50_nk.jpg', '50_kk.jpg', 35);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
