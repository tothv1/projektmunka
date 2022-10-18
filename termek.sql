-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gép: mysql.omega:3306
-- Létrehozás ideje: 2022. Okt 18. 11:32
-- Kiszolgáló verziója: 5.7.39-log
-- PHP verzió: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kg3`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` int(10) UNSIGNED NOT NULL,
  `termek_neve` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `termek_ara` int(10) UNSIGNED NOT NULL,
  `termek_kepe_nagy` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `termek_kepe_kicsi` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `mennyiseg` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `termek_neve`, `kategoria_id`, `termek_ara`, `termek_kepe_nagy`, `termek_kepe_kicsi`, `mennyiseg`) VALUES
(1, 'Sony HDR-CX240', 1, 70000, '01_nk.jpg', '01_kk.jpg', 14),
(2, 'Blackmagic Design Pocket Cinema Camera 4K Body', 1, 590000, '02_nk.jpg', '02_kk.jpg', 2),
(3, 'Panasonic HC-VX980', 1, 200000, '03_nk.jpg', '03_kk.jpg', 1),
(4, 'Sony HDR-CX405', 1, 86000, '04_nk.jpg', '04_kk.jpg', 5),
(5, 'Sony Cinema Line FX3 Full Frame Body (ILME-FX3)', 1, 1931800, '05_nk.jpg', '05_kk.jpg', 16),
(6, 'Sony FDR-AX53 Handycam', 1, 329000, '06_nk.jpg', '06_kk.jpg', 8),
(7, 'Blackmagic Design Pocket Cinema Camera 6K PRO', 1, 992000, '07_nk.jpg', '07_kk.jpg', 10),
(8, 'Panasonic HC-VXF990', 1, 278000, '08_nk.jpg', '08_kk.jpg', 9),
(9, 'Panasonic HC-V180', 1, 90000, '09_nk.jpg', '09_kk.jpg', 6),
(10, 'Canon EOS R5C Body', 1, 2000000, '10_nk.jpg', '10_kk.jpg', 15),
(11, 'Apple iPhone 13 128GB Mobiltelefon', 2, 321000, '11_nk.jpg', '11_kk.jpg', 120),
(12, 'Samsung Galaxy A52s 5G 128GB 6GB RAM Dual (A528) Mobiltelefon', 2, 125000, '12_nk.jpg', '12_kk.jpg', 7),
(13, 'Apple iPhone 11 64GB Mobiltelefon', 2, 190000, '13_nk.jpg', '13_kk.jpg', 12),
(14, 'Samsung Galaxy S22 5G 128GB 8GB RAM Dual (SM-S901B) Mobiltelefon', 2, 250000, '14_nk.jpg', '14_kk.jpg', 19),
(15, 'Apple iPhone 14 Pro 128GB Mobiltelefon', 2, 570000, '15_nk.jpg', '15_kk.jpg', 300),
(16, 'Xiaomi Redmi Note 11 128GB 4GB RAM Dual Mobiltelefon', 2, 72000, '16_nk.jpg', '16_kk.jpg', 5),
(17, 'Nokia 8210 4G Dual Mobiltelefon', 2, 31000, '17_nk.jpg', '17_kk.jpg', 1),
(18, 'Nokia 105 (2019) Mobiltelefon', 2, 5000, '18_nk.jpg', '18_kk.jpg', 2),
(19, 'Blaupunkt BS06 Mobiltelefon', 2, 4290, '19_nk.jpg', '19_kk.jpg', 4),
(20, 'Alcatel 1066G Mobiltelefon', 2, 3500, '20_nk.jpg', '20_kk.jpg', 50),
(21, 'Apple Watch Series 7 GPS 45mm', 5, 150000, '21_nk.jpg', '21_kk.jpg', 45),
(22, 'Samsung Galaxy Watch4 44mm (SM-R870)', 5, 59000, '22_nk.jpg', '22_kk.jpg', 84),
(23, 'Samsung Galaxy Watch4 40mm (SM-R860)', 5, 58000, '23_nk.jpg', '23_kk.jpg', 21),
(24, 'Xiaomi Watch S1', 5, 63000, '24_nk.jpg', '24_kk.jpg', 41),
(25, 'Apple Watch Series 7 GPS 41mm', 5, 140000, '25_nk.jpg', '25_kk.jpg', 23),
(26, 'Xiaomi Mi Band 7', 5, 17000, '26_nk.jpg', '26_kk.jpg', 15),
(27, 'Huawei Watch GT 3 Pro 46mm', 5, 126000, '27_nk.jpg', '27_kk.jpg', 59),
(28, 'Samsung Galaxy Watch 5 40mm SM-R900', 5, 88000, '28_nk.jpg', '28_kk.jpg', 100),
(29, 'Xiaomi Redmi Watch 2 Lite', 5, 54000, '29_nk.jpg', '29_kk.jpg', 200),
(30, 'Apple Watch SE GPS 44mm', 5, 110000, '30_nk.jpg', '30_kk.jpg', 97),
(31, 'LG 55NANO753PR NanoCell Smart LED TV, 139 cm, 4K Ultra HD, HDR, webOS ThinQ AI', 3, 194990, '31_nk.jpg\r\n', '31_kk.jpg', 2),
(32, 'Samsung UE75TU7022KXXH Smart LED Televizio, 189 cm, 4K Ultra HD\r\n', 3, 309990, '32_nk.jpg', '32_kk.jpg', 3),
(33, 'Star-Light 22SLTA1500HSA Smart LED Televizio, 55 cm, HD, Android 9.0', 3, 47990, '33_nk.jpg', '33_kk.jpg', 8),
(34, 'Samsung 55TU7092 Smart LED Televizio, 138 cm, 4K Ultra HD', 3, 211990, '34_nk.jpg', '34_kk.jpg', 5),
(35, 'Philips 39PHS6707/12 Smart LED Televizio, 98 cm, HD Ready, Fekete, Android', 3, 114990, '35_nk.jpg', '36_kk.jpg', 1),
(36, 'LG 43UP75003LF Smart LED TV, 108 cm, 4K Ultra HD, HDR, webOS ThinQ AI', 3, 129990, '36_nk.jpg', '36_kk.jpg', 6),
(37, 'Samsung UE55TU7022KXXH Smart LED Televizio, 138 cm, 4K Ultra HD', 3, 178664, '37_nk.jpg', '37_kk.jpg', 4),
(38, 'Samsung UE32T4302A Smart LED Televizio, 80 cm, HD Ready', 3, 87990, '38_nk.jpg', '38_kk.jpg', 1),
(39, 'Samsung UE50TU7022KXXH Smart LED Televizio, 125 cm, 4K Ultra HD', 3, 143990, '39_nk.jpg', '39_kk.jpg', 4),
(40, 'Samsung UE43TU7022KXXH Smart LED Televizio, 108 cm, 4K Ultra HD', 3, 123999, '40_nk.jpg', '40_kk.jpg', 3),
(41, 'ASUS VivoBook X515MA-BQ772WS Notebook', 4, 79899, '41_nk.jpg', '41_kk.jpg', 13),
(42, 'ASUS ZenBook 14X UX5401EA-L7099W Notebook', 4, 349900, '42_nk.jpg', '42_kk.jpg', 3),
(43, 'UMAX VisionBook N14G Plus UMM230148 Notebook', 4, 49900, '43_nk.jpg', '43_kk.jpg', 3),
(44, 'ASUS VivoBook 17 X705MA(GML-R)-BX232W Notebook', 4, 179900, '44_nk.jpg', '44_kk.jpg', 9),
(45, 'Lenovo IdeaPad 3 82H8025RHV Notebook', 4, 199900, '45_nk.jpg', '45_kk.jpg', 2),
(46, 'ASUS ZenBook 14X UM5401QA-L7208W Notebook', 4, 299890, '46_nk.jpg', '46_kk.jpg', 15),
(47, 'ASUS ROG STRIX G15 G513IH-HN004 Notebook', 4, 299900, '47_nk.jpg', '47_kk.jpg', 5),
(48, 'Apple MacBook Air 13.3 M1 8GB 256GB MGN63 Notebook', 4, 417000, '48_nk.jpg', '48_kk.jpg', 41),
(49, 'ASUS VivoBook X712EA-AU693 Notebook', 4, 129900, '49_nk.jpg', '49_kk.jpg', 16),
(50, 'ASUS X515EA-BQ1187 Notebook', 4, 174900, '50_nk.jpg', '50_kk.jpg', 35);

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
