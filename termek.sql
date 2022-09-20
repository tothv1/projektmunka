-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 12:30
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

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
(30, 'LG 50UP75003LF Smart LED TV, 127 cm, 4K Ultra HD, HDR, webOS ThinQ AI', 'TV', 139990, '30_nk_jpg', '30_kk_jpg', 6),
(31, 'LG 55NANO753PR NanoCell Smart LED TV, 139 cm, 4K Ultra HD, HDR, webOS ThinQ AI', 'TV', 194990, '31_nk_jpg\r\n', '31_kk_jpg', 2),
(32, 'Samsung UE75TU7022KXXH Smart LED Televízió, 189 cm, 4K Ultra HD\r\n', 'TV', 309990, '32_nk_jpg', '32_kk_jpg', 3),
(33, 'Star-Light 22SLTA1500HSA Smart LED Televízió, 55 cm, HD, Android 9.0', 'TV', 47990, '33_nk_jpg', '33_kk_jpg', 8),
(34, 'Samsung 55TU7092 Smart LED Televízió, 138 cm, 4K Ultra HD', 'TV', 211990, '34_nk_jpg', '34_kk_jpg', 5),
(35, 'Philips 39PHS6707/12 Smart LED Televízió, 98 cm, HD Ready, Fekete, Android', 'TV', 114990, '35_nk_jpg', '36_kk_jpg', 1),
(36, 'LG 43UP75003LF Smart LED TV, 108 cm, 4K Ultra HD, HDR, webOS ThinQ AI', 'TV', 129990, '36_nk_jpg', '36_kk_jpg', 6),
(37, 'Samsung UE55TU7022KXXH Smart LED Televízió, 138 cm, 4K Ultra HD', 'TV', 178664, '37_nk_jpg', '37_kk_jpg', 4),
(38, 'Samsung UE32T4302A Smart LED Televízió, 80 cm, HD Ready', 'TV', 87990, '38_nk_jpg', '38_kk_jpg', 1),
(39, 'Samsung UE50TU7022KXXH Smart LED Televízió, 125 cm, 4K Ultra HD', 'TV', 143990, '39_nk_jpg', '39_kk_jpg', 4),
(40, 'Samsung UE43TU7022KXXH Smart LED Televízió, 108 cm, 4K Ultra HD', 'TV', 123999, '40_nk_jpg', '40_kk_jpg', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
