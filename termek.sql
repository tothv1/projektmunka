-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 20. 12:06
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
(10, 'Canon EOS R5C Body', 'Videókamera', 2000000, '10_nk.jpg', '10_kk.jpg', 15);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
