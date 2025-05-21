-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 21, 2025 at 01:57 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4tpzad`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

CREATE TABLE `pojazdy` (
  `ID` int(11) NOT NULL,
  `Zdjecie` varchar(255) DEFAULT NULL,
  `Nazwa` varchar(100) NOT NULL,
  `IloscDrzwi` int(11) DEFAULT NULL CHECK (`IloscDrzwi` between 2 and 5),
  `TypPojazdu` varchar(50) DEFAULT NULL CHECK (`TypPojazdu` in ('Sedan','Hatchback','SUV','Coupe','Kombi','Pick-up','Dostawczy','Sportowy')),
  `SkrzyniaBiegow` varchar(20) DEFAULT NULL CHECK (`SkrzyniaBiegow` in ('Manualna','Automatyczna')),
  `Klimatyzacja` tinyint(1) DEFAULT NULL,
  `IloscWypozyczen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pojazdy`
--

INSERT INTO `pojazdy` (`ID`, `Zdjecie`, `Nazwa`, `IloscDrzwi`, `TypPojazdu`, `SkrzyniaBiegow`, `Klimatyzacja`, `IloscWypozyczen`) VALUES
(1, 'corrola.png', 'Toyota Corolla', 4, 'Sedan', 'Manualna', 1, 520),
(2, 'golf.png', 'Volkswagen Golf', 5, 'Hatchback', 'Automatyczna', 1, 610),
(3, 'Mustang.png', 'Ford Mustang', 2, 'Coupe', 'Manualna', 0, 330),
(4, 'AudiA6.png', 'Audi A6 Avant', 5, 'Kombi', 'Automatyczna', 1, 475),
(5, 'BMWX5.png', 'BMW X5', 5, 'Sedan', 'Automatyczna', 1, 380),
(6, 'sprinter.png', 'Mercedes-Benz Sprinter', 3, 'Dostawczy', 'Manualna', 0, 495),
(7, 'FordF150.png', 'Ford F-150', 4, 'Pick-up', 'Automatyczna', 1, 560),
(8, '911.png', 'Porsche 911', 2, 'Sportowy', 'Automatyczna', 0, 610),
(9, 'subaru.png', 'Subaru Impreza WRX', 4, 'Sedan', 'Manualna', 1, 415),
(10, 'civic.png', 'Honda Civic', 5, 'Hatchback', 'Manualna', 1, 600),
(11, 'teslamodel3.png', 'Tesla Model 3', 4, 'Sedan', 'Automatyczna', 1, 505),
(12, 'Mazda.png', 'Mazda MX-5', 2, 'Coupe', 'Manualna', 0, 560),
(13, 'tahoe.png', 'Chevrolet Tahoe', 5, 'SUV', 'Automatyczna', 1, 480),
(14, 'hyundai.png', 'Hyundai i30', 5, 'Hatchback', 'Automatyczna', 1, 550),
(15, 'passat.png', 'Volkswagen Passat Variant', 5, 'Kombi', 'Manualna', 1, 640),
(16, 'Wrangler.png', 'Jeep Wrangler', 3, 'SUV', 'Manualna', 0, 430),
(17, 'nissan.png', 'Nissan Navara', 4, 'Pick-up', 'Manualna', 1, 525),
(18, 'Huracan.png', 'Lamborghini Huracán', 2, 'Sportowy', 'Automatyczna', 0, 670),
(19, 'Dokker.png', 'Dacia Dokker', 5, 'Dostawczy', 'Manualna', 1, 540),
(20, 'LandCruiser.png', 'Toyota Land Cruiser', 5, 'SUV', 'Automatyczna', 1, 600);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pojazdy`
--
ALTER TABLE `pojazdy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45444;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
