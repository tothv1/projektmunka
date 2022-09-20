-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 12:24
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` int(10) UNSIGNED NOT NULL,
  `termek_neve` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termek_ara` int(10) UNSIGNED NOT NULL,
  `termek_kepe_nagy` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termek_kepe_kicsi` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `mennyiseg` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `termek_neve`, `kategoria`, `termek_ara`, `termek_kepe_nagy`, `termek_kepe_kicsi`, `mennyiseg`) VALUES
(1, 'Sony HDR-CX240', 'Videókamera', 70000, '01_nk.jpg', '01_kk.jpg', 14),
(2, 'Blackmagic Design Pocket Cinema Camera 4K Body', 'Videókamera', 590000, '02_nk.jpg', '02_kk.jpg', 2),
(3, 'Panasonic HC-VX980', 'Videókamera', 200000, '03_nk.jpg', '03_kk.jpg', 1),
(4, 'Sony HDR-CX405', 'Videókamera', 86000, '04_nk.jpg', '04_kk.jpg', 5),
(5, 'Sony Cinema Line FX3 Full Frame Body (ILME-FX3)', 'Videókamera', 1931800, '05_nk.jpg', '05_kk.jpg', 16),
(6, 'Sony FDR-AX53 Handycam', 'Videókamera', 329000, '06_nk.jpg', '06_kk.jpg', 8),
(7, 'Blackmagic Design Pocket Cinema Camera 6K PRO', 'Videókamera', 992000, '07_nk.jpg', '07_kk.jpg', 10),
(8, 'Panasonic HC-VXF990', 'Videókamera', 278000, '08_nk.jpg', '08_kk.jpg', 9),
(9, 'Panasonic HC-V180', 'Videókamera', 90000, '09_nk.jpg', '09_kk.jpg', 6),
(10, 'Canon EOS R5C Body', 'Videókamera', 2000000, '10_nk.jpg', '10_kk.jpg', 15),
(11, 'Apple iPhone 13 128GB Mobiltelefon', 'Telefon', 321000, '11_nk.jpg', '11_kk.jpg', 120),
(12, 'Samsung Galaxy A52s 5G 128GB 6GB RAM Dual (A528) Mobiltelefon', 'Telefon', 125000, '12_nk.jpg', '12_kk.jpg', 7),
(13, 'Apple iPhone 11 64GB Mobiltelefon', 'Telefon', 190000, '13_nk.jpg', '13_kk.jpg', 12),
(14, 'Samsung Galaxy S22 5G 128GB 8GB RAM Dual (SM-S901B) Mobiltelefon', 'Telefon', 250000, '14_nk.jpg', '14_kk.jpg', 19),
(15, 'Apple iPhone 14 Pro 128GB Mobiltelefon', 'Telefon', 570000, '15_nk.jpg', '15_kk.jpg', 300),
(16, 'Xiaomi Redmi Note 11 128GB 4GB RAM Dual Mobiltelefon', 'Telefon', 72000, '16_nk.jpg', '16_kk.jpg', 5),
(17, 'Nokia 8210 4G Dual Mobiltelefon', 'Telefon', 31000, '17_nk.jpg', '17_nk.jpg', 1),
(18, 'Nokia 105 (2019) Mobiltelefon', 'Telefon', 5000, '18_nk.jpg', '18_kk.jpg', 2),
(19, 'Blaupunkt BS06 Mobiltelefon', 'Telefon', 4290, '19_nk.jpg', '19_kk.jpg', 4),
(20, 'Alcatel 1066G Mobiltelefon', 'Telefon', 3500, '20_nk.jpg', '20_kk.jpg', 50),
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

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `termek`
--
ALTER TABLE `termek`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
