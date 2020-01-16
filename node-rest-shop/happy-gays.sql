-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 jan 2020 om 15:38
-- Serverversie: 10.1.30-MariaDB
-- PHP-versie: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happy-gays`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `alcohol`
--

CREATE TABLE `alcohol` (
  `country` varchar(28) NOT NULL,
  `beer_servings` int(11) NOT NULL,
  `spirit_servings` int(11) NOT NULL,
  `wine_servings` int(11) NOT NULL,
  `total_litres_of_pure_alcohol` decimal(4,1) NOT NULL,
  `continent` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `alcohol`
--

INSERT INTO `alcohol` (`country`, `beer_servings`, `spirit_servings`, `wine_servings`, `total_litres_of_pure_alcohol`, `continent`) VALUES
('Afghanistan', 10, 12, 200, '99.0', 'AS'),
('Albania', 89, 132, 54, '4.9', 'EU'),
('Algeria', 25, 0, 14, '0.7', 'AF'),
('Andorra', 245, 138, 312, '12.4', 'EU'),
('Angola', 217, 57, 45, '5.9', 'AF'),
('Antigua & Barbuda', 102, 128, 45, '4.9', 'NA'),
('Argentina', 193, 25, 221, '8.3', 'SA'),
('Armenia', 21, 179, 11, '3.8', 'EU'),
('Australia', 261, 72, 212, '10.4', 'OC'),
('Austria', 279, 75, 191, '9.7', 'EU'),
('Azerbaijan', 21, 46, 5, '1.3', 'EU'),
('Bahamas', 122, 176, 51, '6.3', 'NA'),
('Bahrain', 42, 63, 7, '2.0', 'AS'),
('Bangladesh', 0, 0, 0, '0.0', 'AS'),
('Barbados', 143, 173, 36, '6.3', 'NA'),
('Belarus', 142, 373, 42, '14.4', 'EU'),
('Belgium', 295, 84, 212, '10.5', 'EU'),
('Belize', 263, 114, 8, '6.8', 'NA'),
('Benin', 34, 4, 13, '1.1', 'AF'),
('Bhutan', 23, 0, 0, '0.4', 'AS'),
('Bolivia', 167, 41, 8, '3.8', 'SA'),
('Bosnia-Herzegovina', 76, 173, 8, '4.6', 'EU'),
('Botswana', 173, 35, 35, '5.4', 'AF'),
('Brazil', 245, 145, 16, '7.2', 'SA'),
('Brunei', 31, 2, 1, '0.6', 'AS'),
('Bulgaria', 231, 252, 94, '10.3', 'EU'),
('Burkina Faso', 25, 7, 7, '4.3', 'AF'),
('Burundi', 88, 0, 0, '6.3', 'AF'),
('Cabo Verde', 144, 56, 16, '4.0', 'AF'),
('Cambodia', 57, 65, 1, '2.2', 'AS'),
('Cameroon', 147, 1, 4, '5.8', 'AF'),
('Canada', 240, 122, 100, '8.2', 'NA'),
('Central African Republic', 17, 2, 1, '1.8', 'AF'),
('Chad', 15, 1, 1, '0.4', 'AF'),
('Chile', 130, 124, 172, '7.6', 'SA'),
('China', 79, 192, 8, '5.0', 'AS'),
('Colombia', 159, 76, 3, '4.2', 'SA'),
('Comoros', 1, 3, 1, '0.1', 'AF'),
('Congo', 76, 1, 9, '1.7', 'AF'),
('Cook Islands', 0, 254, 74, '5.9', 'OC'),
('Costa Rica', 149, 87, 11, '4.4', 'NA'),
('Cote d\'Ivoire', 37, 1, 7, '4.0', 'AF'),
('Croatia', 230, 87, 254, '10.2', 'EU'),
('Cuba', 93, 137, 5, '4.2', 'NA'),
('Cyprus', 192, 154, 113, '8.2', 'EU'),
('Czech Republic', 361, 170, 134, '11.8', 'EU'),
('Denmark', 224, 81, 278, '10.4', 'EU'),
('Djibouti', 15, 44, 3, '1.1', 'AF'),
('Dominica', 52, 286, 26, '6.6', 'NA'),
('Dominican Republic', 193, 147, 9, '6.2', 'NA'),
('DR Congo', 32, 3, 1, '2.3', 'AF'),
('Ecuador', 162, 74, 3, '4.2', 'SA'),
('Egypt', 6, 4, 1, '0.2', 'AF'),
('El Salvador', 52, 69, 2, '2.2', 'NA'),
('Equatorial Guinea', 92, 0, 233, '5.8', 'AF'),
('Eritrea', 18, 0, 0, '0.5', 'AF'),
('Estonia', 224, 194, 59, '9.5', 'EU'),
('Ethiopia', 20, 3, 0, '0.7', 'AF'),
('Fiji', 77, 35, 1, '2.0', 'OC'),
('Finland', 263, 133, 97, '10.0', 'EU'),
('France', 127, 151, 370, '11.8', 'EU'),
('Gabon', 347, 98, 59, '8.9', 'AF'),
('Gambia', 8, 0, 1, '2.4', 'AF'),
('Georgia', 52, 100, 149, '5.4', 'EU'),
('Germany', 346, 117, 175, '11.3', 'EU'),
('Ghana', 31, 3, 10, '1.8', 'AF'),
('Greece', 133, 112, 218, '8.3', 'EU'),
('Grenada', 199, 438, 28, '11.9', 'NA'),
('Guatemala', 53, 69, 2, '2.2', 'NA'),
('Guinea', 9, 0, 2, '0.2', 'AF'),
('Guinea-Bissau', 28, 31, 21, '2.5', 'AF'),
('Guyana', 93, 302, 1, '7.1', 'SA'),
('Haiti', 1, 326, 1, '5.9', 'NA'),
('Honduras', 69, 98, 2, '3.0', 'NA'),
('Hungary', 234, 215, 185, '11.3', 'EU'),
('Iceland', 233, 61, 78, '6.6', 'EU'),
('India', 9, 114, 0, '2.2', 'AS'),
('Indonesia', 5, 1, 0, '0.1', 'AS'),
('Iran', 0, 0, 0, '0.0', 'AS'),
('Iraq', 9, 3, 0, '0.2', 'AS'),
('Ireland', 313, 118, 165, '11.4', 'EU'),
('Israel', 63, 69, 9, '2.5', 'AS'),
('Italy', 85, 42, 237, '6.5', 'EU'),
('Jamaica', 82, 97, 9, '3.4', 'NA'),
('Japan', 77, 202, 16, '7.0', 'AS'),
('Jordan', 6, 21, 1, '0.5', 'AS'),
('Kazakhstan', 124, 246, 12, '6.8', 'AS'),
('Kenya', 58, 22, 2, '1.8', 'AF'),
('Kiribati', 21, 34, 1, '1.0', 'OC'),
('Kuwait', 0, 0, 0, '0.0', 'AS'),
('Kyrgyzstan', 31, 97, 6, '2.4', 'AS'),
('Laos', 62, 0, 123, '6.2', 'AS'),
('Latvia', 281, 216, 62, '10.5', 'EU'),
('Lebanon', 20, 55, 31, '1.9', 'AS'),
('Lesotho', 82, 29, 0, '2.8', 'AF'),
('Liberia', 19, 152, 2, '3.1', 'AF'),
('Libya', 0, 0, 0, '0.0', 'AF'),
('Lithuania', 343, 244, 56, '12.9', 'EU'),
('Luxembourg', 236, 133, 271, '11.4', 'EU'),
('Macedonia', 106, 27, 86, '3.9', 'EU'),
('Madagascar', 26, 15, 4, '0.8', 'AF'),
('Malawi', 8, 11, 1, '1.5', 'AF'),
('Malaysia', 13, 4, 0, '0.3', 'AS'),
('Maldives', 0, 0, 0, '0.0', 'AS'),
('Mali', 5, 1, 1, '0.6', 'AF'),
('Malta', 149, 100, 120, '6.6', 'EU'),
('Marshall Islands', 0, 0, 0, '0.0', 'OC'),
('Mauritania', 0, 0, 0, '0.0', 'AF'),
('Mauritius', 98, 31, 18, '2.6', 'AF'),
('Mexico', 238, 68, 5, '5.5', 'NA'),
('Micronesia', 62, 50, 18, '2.3', 'OC'),
('Moldova', 109, 226, 18, '6.3', 'EU'),
('MOMO', 10, 12, 200, '99.0', ''),
('Monaco', 0, 0, 0, '0.0', 'EU'),
('Mongolia', 77, 189, 8, '4.9', 'AS'),
('Montenegro', 31, 114, 128, '4.9', 'EU'),
('Morocco', 12, 6, 10, '0.5', 'AF'),
('Mozambique', 47, 18, 5, '1.3', 'AF'),
('Myanmar', 5, 1, 0, '0.1', 'AS'),
('Namibia', 376, 3, 1, '6.8', 'AF'),
('Nauru', 49, 0, 8, '1.0', 'OC'),
('Nepal', 5, 6, 0, '0.2', 'AS'),
('Netherlands', 251, 88, 190, '9.4', 'EU'),
('New Zealand', 203, 79, 175, '9.3', 'OC'),
('Nicaragua', 78, 118, 1, '3.5', 'NA'),
('Niger', 3, 2, 1, '0.1', 'AF'),
('Nigeria', 42, 5, 2, '9.1', 'AF'),
('Niue', 188, 200, 7, '7.0', 'OC'),
('North Korea', 0, 0, 0, '0.0', 'AS'),
('Norway', 169, 71, 129, '6.7', 'EU'),
('Oman', 22, 16, 1, '0.7', 'AS'),
('Pakistan', 0, 0, 0, '0.0', 'AS'),
('Palau', 306, 63, 23, '6.9', 'OC'),
('Panama', 285, 104, 18, '7.2', 'NA'),
('Papua New Guinea', 44, 39, 1, '1.5', 'OC'),
('Paraguay', 213, 117, 74, '7.3', 'SA'),
('Peru', 163, 160, 21, '6.1', 'SA'),
('Philippines', 71, 186, 1, '4.6', 'AS'),
('Poland', 343, 215, 56, '10.9', 'EU'),
('Portugal', 194, 67, 339, '11.0', 'EU'),
('Qatar', 1, 42, 7, '0.9', 'AS'),
('Romania', 297, 122, 167, '10.4', 'EU'),
('Russia', 247, 326, 73, '11.5', 'AS'),
('Rwanda', 43, 2, 0, '6.8', 'AF'),
('Samoa', 105, 18, 24, '2.6', 'OC'),
('San Marino', 0, 0, 0, '0.0', 'EU'),
('Sao Tome & Principe', 56, 38, 140, '4.2', 'AF'),
('Saudi Arabia', 0, 5, 0, '0.1', 'AS'),
('Senegal', 9, 1, 7, '0.3', 'AF'),
('Serbia', 283, 131, 127, '9.6', 'EU'),
('Seychelles', 157, 25, 51, '4.1', 'AF'),
('Sierra Leone', 25, 3, 2, '6.7', 'AF'),
('Singapore', 60, 12, 11, '1.5', 'AS'),
('Slovakia', 196, 293, 116, '11.4', 'EU'),
('Slovenia', 270, 51, 276, '10.6', 'EU'),
('Solomon Islands', 56, 11, 1, '1.2', 'OC'),
('Somalia', 0, 0, 0, '0.0', 'AF'),
('South Africa', 225, 76, 81, '8.2', 'AF'),
('South Korea', 140, 16, 9, '9.8', 'AS'),
('Spain', 284, 157, 112, '10.0', 'EU'),
('Sri Lanka', 16, 104, 0, '2.2', 'AS'),
('St. Kitts & Nevis', 194, 205, 32, '7.7', 'NA'),
('St. Lucia', 171, 315, 71, '10.1', 'NA'),
('St. Vincent & the Grenadines', 120, 221, 11, '6.3', 'NA'),
('Sudan', 8, 13, 0, '1.7', 'AF'),
('Suriname', 128, 178, 7, '5.6', 'SA'),
('Swaziland', 90, 2, 2, '4.7', 'AF'),
('Sweden', 152, 60, 186, '7.2', 'EU'),
('Switzerland', 185, 100, 280, '10.2', 'EU'),
('Syria', 5, 35, 16, '1.0', 'AS'),
('Tajikistan', 2, 15, 0, '0.3', 'AS'),
('Tanzania', 36, 6, 1, '5.7', 'AF'),
('Thailand', 99, 258, 1, '6.4', 'AS'),
('Timor-Leste', 1, 1, 4, '0.1', 'AS'),
('Togo', 36, 2, 19, '1.3', 'AF'),
('Tonga', 36, 21, 5, '1.1', 'OC'),
('Trinidad & Tobago', 197, 156, 7, '6.4', 'NA'),
('Tunisia', 51, 3, 20, '1.3', 'AF'),
('Turkey', 51, 22, 7, '1.4', 'AS'),
('Turkmenistan', 19, 71, 32, '2.2', 'AS'),
('Tuvalu', 6, 41, 9, '1.0', 'OC'),
('Uganda', 45, 9, 0, '8.3', 'AF'),
('Ukraine', 206, 237, 45, '8.9', 'EU'),
('United Arab Emirates', 16, 135, 5, '2.8', 'AS'),
('United Kingdom', 219, 126, 195, '10.4', 'EU'),
('Uruguay', 115, 35, 220, '6.6', 'SA'),
('USA', 249, 158, 84, '8.7', 'NA'),
('Uzbekistan', 25, 101, 8, '2.4', 'AS'),
('Vanuatu', 21, 18, 11, '0.9', 'OC'),
('Venezuela', 333, 100, 3, '7.7', 'SA'),
('Vietnam', 111, 2, 1, '2.0', 'AS'),
('Yemen', 6, 0, 0, '0.1', 'AS'),
('Zambia', 32, 19, 4, '2.5', 'AF'),
('Zimbabwe', 64, 18, 4, '4.7', 'AF');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `connection-table`
--

CREATE TABLE `connection-table` (
  `ID` int(11) NOT NULL,
  `country-alcohol` varchar(24) NOT NULL,
  `country-lgbt` varchar(24) NOT NULL,
  `country-happines` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `connection-table`
--

INSERT INTO `connection-table` (`ID`, `country-alcohol`, `country-lgbt`, `country-happines`) VALUES
(2, 'Italy', 'Italy', 'Italy'),
(5, 'Austria', 'Austria', 'Austria'),
(7, 'Poland', 'Poland', 'Poland'),
(13, 'Belgium', 'Belgium	', 'Belgium'),
(14, 'Ireland', 'Ireland', 'Ireland'),
(15, 'France', 'France', 'France'),
(16, 'Germany', 'Germany', 'Germany'),
(17, 'Spain', 'Spain', 'Spain'),
(18, 'United Kingdom', 'United K', 'United Kingdom'),
(19, 'Greece', 'Greece', 'Greece'),
(20, 'Sweden', 'Sweden', 'Sweden'),
(21, 'Hungary', 'Hungary', 'Hungary'),
(22, 'Romania', 'Romania', 'Romania'),
(23, 'Finland', 'Finland', 'Finland'),
(24, 'Netherlands', 'Netherla', 'Netherlands'),
(25, 'Portugal', 'Portugal', 'Portugal'),
(26, 'Czech Republic', 'Czech Re', 'Czech Republic'),
(27, 'Denmark', 'Denmark', 'Denmark'),
(28, 'Bulgaria', 'Bulgaria', 'Bulgaria'),
(29, 'Lithuania', 'Lithuani', 'Lithuania'),
(30, 'Slovakia', 'Slovakia', 'Slovakia'),
(31, 'Slovenia', 'Slovenia', 'Slovenia'),
(32, 'Luxembourg', 'Luxembou', 'Luxembourg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lgbt`
--

CREATE TABLE `lgbt` (
  `CountryID` varchar(8) NOT NULL,
  `N` int(11) NOT NULL,
  `Lesbian_women` int(11) NOT NULL,
  `Gay_men` int(11) NOT NULL,
  `Bisexual_women` int(11) NOT NULL,
  `Bisexual_men` int(11) NOT NULL,
  `Transgender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lgbt`
--

INSERT INTO `lgbt` (`CountryID`, `N`, `Lesbian_women`, `Gay_men`, `Bisexual_women`, `Bisexual_men`, `Transgender`) VALUES
('Austria', 2543, 437, 1558, 164, 217, 167),
('Belgium	', 2901, 424, 1998, 132, 182, 165),
('Bulgaria', 1033, 226, 474, 139, 88, 106),
('Croatia ', 1197, 235, 592, 157, 105, 108),
('Cyprus', 265, 41, 164, 18, 17, 25),
('Czech Re', 2469, 565, 1432, 163, 139, 170),
('Denmark', 1710, 393, 930, 136, 108, 143),
('Estonia', 374, 99, 170, 61, 20, 24),
('EU Total', 93079, 15236, 57448, 6424, 7200, 6771),
('Finland', 3439, 820, 1192, 756, 190, 481),
('France', 8375, 1302, 5720, 326, 592, 435),
('Germany', 20271, 2445, 13907, 590, 2000, 1329),
('Greece', 2760, 399, 1590, 219, 288, 264),
('Hungary', 2267, 307, 1455, 135, 236, 134),
('Ireland', 1625, 423, 864, 141, 58, 139),
('Italy', 13255, 2136, 8668, 805, 996, 650),
('Latvia', 501, 150, 200, 83, 22, 46),
('Lithuani', 821, 177, 439, 100, 65, 40),
('Luxembou', 318, 51, 187, 16, 26, 38),
('Malta', 358, 109, 173, 40, 18, 18),
('Netherla', 3175, 614, 1937, 214, 159, 251),
('Poland', 2790, 375, 1754, 264, 138, 259),
('Portugal', 2125, 456, 1168, 268, 146, 87),
('Romania', 1260, 139, 690, 70, 214, 147),
('Slovakia', 1000, 144, 584, 96, 61, 115),
('Slovenia', 636, 160, 345, 64, 38, 29),
('Spain', 6388, 897, 4409, 354, 514, 214),
('Sweden', 2464, 427, 1053, 341, 269, 374),
('United K', 6759, 1285, 3795, 572, 294, 813);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `world-happiness`
--

CREATE TABLE `world-happiness` (
  `Country_region` varchar(24) NOT NULL,
  `Ladder` int(11) NOT NULL,
  `SD_of_Ladder` int(11) NOT NULL,
  `Positive_affect` int(11) DEFAULT NULL,
  `Negative_affect` int(11) DEFAULT NULL,
  `Social_support` int(11) DEFAULT NULL,
  `Freedom` int(11) DEFAULT NULL,
  `Corruption` int(11) DEFAULT NULL,
  `Generosity` int(11) DEFAULT NULL,
  `Log_of_GDP_per_capita` int(11) DEFAULT NULL,
  `Healthy_life_expectancy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `world-happiness`
--

INSERT INTO `world-happiness` (`Country_region`, `Ladder`, `SD_of_Ladder`, `Positive_affect`, `Negative_affect`, `Social_support`, `Freedom`, `Corruption`, `Generosity`, `Log_of_GDP_per_capita`, `Healthy_life_expectancy`) VALUES
('Afghanistan', 154, 25, 152, 133, 151, 155, 136, 137, 134, 139),
('Albania', 107, 126, 90, 108, 133, 87, 134, 60, 81, 40),
('Algeria', 88, 56, 113, 106, 101, 149, 46, 128, 72, 78),
('Argentina', 47, 97, 28, 93, 46, 54, 109, 123, 55, 37),
('Armenia', 116, 82, 126, 145, 117, 123, 93, 129, 91, 64),
('Australia', 11, 26, 47, 37, 7, 17, 13, 6, 18, 10),
('Austria', 10, 10, 64, 24, 31, 26, 19, 25, 16, 15),
('Azerbaijan', 90, 24, 134, 20, 104, 101, 22, 146, 65, 82),
('Bahrain', 37, 83, 39, 83, 59, 24, NULL, 23, 20, 42),
('Bangladesh', 125, 52, 145, 68, 126, 27, 36, 107, 119, 90),
('Belarus', 81, 22, 149, 36, 33, 131, 37, 103, 58, 76),
('Belgium', 18, 7, 57, 53, 22, 53, 20, 44, 21, 26),
('Benin', 102, 149, 118, 148, 153, 103, 75, 116, 128, 133),
('Bhutan', 95, 6, 37, 98, 68, 59, 25, 13, 95, 104),
('Bolivia', 61, 71, 70, 138, 93, 35, 91, 104, 101, 94),
('Bosnia and Herzegovina', 78, 80, 116, 79, 92, 137, 145, 32, 82, 50),
('Botswana', 148, 125, 87, 65, 105, 60, 54, 150, 66, 113),
('Brazil', 32, 116, 69, 105, 43, 84, 71, 108, 70, 72),
('Bulgaria', 97, 47, 117, 13, 18, 115, 147, 112, 56, 65),
('Burkina Faso', 115, 92, 115, 117, 116, 127, 47, 125, 137, 136),
('Burundi', 145, 138, 98, 126, 152, 135, 23, 149, 151, 135),
('Cambodia', 109, 135, 27, 142, 109, 2, 94, 61, 116, 102),
('Cameroon', 96, 131, 106, 129, 129, 90, 120, 91, 121, 141),
('Canada', 9, 23, 18, 49, 20, 9, 11, 14, 19, 8),
('Central African Republic', 155, 117, 132, 153, 155, 133, 122, 113, 152, 150),
('Chad', 132, 139, 136, 151, 141, 142, 80, 106, 133, 148),
('Chile', 26, 61, 15, 78, 58, 98, 99, 45, 49, 30),
('China', 93, 72, 21, 11, 108, 31, NULL, 133, 68, 34),
('Colombia', 43, 120, 30, 88, 52, 56, 124, 111, 74, 51),
('Comoros', 142, 143, 67, 114, 143, 148, 81, 62, 143, 117),
('Congo (Brazzaville)', 103, 152, 124, 136, 138, 92, 60, 140, 111, 116),
('Congo (Kinshasa)', 127, 78, 125, 95, 107, 125, 106, 127, 149, 140),
('Costa Rica', 12, 62, 4, 87, 42, 16, 58, 75, 67, 28),
('Croatia', 75, 29, 122, 101, 79, 118, 139, 81, 50, 32),
('Cyprus', 49, 95, 60, 99, 90, 81, 115, 39, 33, 6),
('Czech Republic', 20, 20, 74, 22, 24, 58, 121, 117, 32, 31),
('Denmark', 2, 13, 24, 26, 4, 6, 3, 22, 14, 23),
('Dominican Republic', 77, 155, 66, 77, 55, 43, 52, 93, 69, 80),
('Ecuador', 50, 113, 11, 113, 71, 42, 68, 95, 86, 45),
('Egypt', 137, 66, 146, 124, 118, 129, 89, 132, 85, 101),
('El Salvador', 35, 112, 23, 84, 83, 74, 85, 134, 100, 75),
('Estonia', 55, 32, 50, 6, 12, 45, 30, 83, 37, 41),
('Ethiopia', 134, 38, 100, 74, 119, 106, 53, 99, 135, 115),
('Finland', 1, 4, 41, 10, 2, 5, 4, 47, 22, 27),
('France', 24, 19, 56, 66, 32, 69, 21, 68, 25, 5),
('Gabon', 104, 105, 111, 144, 95, 119, 103, 143, 59, 108),
('Gambia', 120, 142, 29, 109, 125, 89, 26, 64, 139, 130),
('Georgia', 119, 51, 141, 43, 147, 104, 28, 153, 87, 84),
('Germany', 17, 17, 65, 30, 39, 44, 17, 19, 17, 25),
('Ghana', 98, 129, 92, 72, 132, 91, 117, 52, 114, 121),
('Greece', 82, 87, 102, 94, 102, 150, 123, 152, 46, 21),
('Guatemala', 27, 136, 8, 85, 78, 25, 82, 78, 99, 85),
('Guinea', 118, 146, 82, 143, 136, 109, 70, 94, 130, 137),
('Haiti', 147, 111, 142, 119, 146, 152, 48, 20, 138, 125),
('Honduras', 59, 151, 13, 73, 84, 39, 79, 51, 113, 57),
('Hong Kong', 76, 33, 105, 28, 76, 66, 14, 18, 9, NULL),
('Hungary', 62, 36, 86, 31, 51, 138, 140, 100, 42, 56),
('Iceland', 4, 9, 3, 3, 1, 7, 45, 3, 15, 13),
('India', 140, 41, 93, 115, 142, 41, 73, 65, 103, 105),
('Indonesia', 92, 108, 9, 104, 94, 48, 129, 2, 83, 98),
('Iran', 117, 109, 109, 150, 134, 117, 44, 28, 54, 77),
('Iraq', 126, 147, 151, 154, 124, 130, 66, 73, 64, 107),
('Ireland', 16, 34, 33, 32, 6, 33, 10, 9, 6, 20),
('Israel', 13, 14, 104, 69, 38, 93, 74, 24, 31, 11),
('Italy', 36, 31, 99, 123, 23, 132, 128, 48, 29, 7),
('Ivory Coast', 99, 134, 88, 130, 137, 100, 62, 114, 118, 147),
('Jamaica', 56, 102, 51, 51, 28, 49, 130, 119, 93, 55),
('Japan', 58, 43, 73, 14, 50, 64, 39, 92, 24, 2),
('Jordan', 101, 127, 112, 120, 88, 88, NULL, 118, 92, 63),
('Kazakhstan', 60, 40, 81, 5, 19, 80, 57, 57, 47, 88),
('Kenya', 121, 118, 59, 46, 123, 72, 105, 26, 122, 106),
('Kosovo', 46, 107, 71, 7, 85, 50, 144, 31, 88, NULL),
('Kuwait', 51, 98, 89, 97, 69, 47, NULL, 42, 5, 70),
('Kyrgyzstan', 86, 46, 58, 4, 45, 38, 138, 36, 120, 91),
('Laos', 105, 59, 5, 112, 120, 22, 27, 34, 102, 112),
('Latvia', 53, 30, 119, 38, 34, 126, 92, 105, 43, 68),
('Lebanon', 91, 60, 150, 61, 89, 136, 133, 63, 73, 66),
('Lesotho', 144, 150, 72, 64, 98, 97, 59, 151, 124, 149),
('Liberia', 141, 156, 103, 146, 127, 94, 126, 110, 150, 126),
('Libya', 72, 115, 85, 137, 73, 79, 31, 87, 63, 96),
('Lithuania', 42, 55, 138, 41, 17, 122, 113, 124, 36, 62),
('Luxembourg', 14, 3, 62, 19, 27, 28, 9, 30, 2, 16),
('Macedonia', 84, 67, 140, 89, 74, 105, 125, 55, 75, 52),
('Madagascar', 143, 77, 46, 96, 128, 146, 116, 136, 144, 111),
('Malawi', 150, 132, 129, 110, 150, 65, 64, 109, 147, 119),
('Malaysia', 80, 12, 25, 23, 97, 36, 137, 27, 40, 59),
('Mali', 128, 96, 48, 122, 112, 110, 107, 138, 129, 142),
('Malta', 22, 42, 83, 103, 16, 12, 32, 5, 28, 19),
('Mauritania', 122, 68, 94, 58, 99, 151, 67, 148, 117, 120),
('Mauritius', 57, 94, 55, 16, 54, 40, 96, 37, 53, 73),
('Mexico', 23, 76, 6, 40, 67, 71, 87, 120, 57, 46),
('Moldova', 71, 45, 133, 67, 65, 128, 148, 86, 109, 86),
('Mongolia', 83, 48, 95, 17, 10, 112, 119, 38, 80, 97),
('Montenegro', 73, 84, 143, 118, 60, 139, 77, 76, 61, 44),
('Morocco', 89, 101, 110, 91, 139, 76, 84, 154, 98, 79),
('Mozambique', 123, 154, 108, 131, 122, 46, 40, 121, 146, 134),
('Myanmar', 131, 70, 45, 86, 96, 29, 24, 1, 106, 110),
('Namibia', 113, 106, 75, 59, 70, 82, 98, 142, 89, 122),
('Nepal', 100, 128, 137, 134, 87, 67, 65, 46, 127, 95),
('Netherlands', 5, 1, 12, 25, 15, 19, 12, 7, 12, 18),
('New Zealand', 8, 15, 22, 12, 5, 8, 5, 8, 26, 14),
('Nicaragua', 45, 133, 31, 125, 66, 70, 43, 71, 108, 53),
('Niger', 114, 144, 79, 141, 140, 111, 51, 135, 148, 138),
('Nigeria', 85, 130, 61, 55, 111, 75, 114, 59, 107, 145),
('Northern Cyprus', 64, 35, 144, 90, 81, 77, 29, 43, NULL, NULL),
('Norway', 3, 8, 16, 29, 3, 3, 8, 11, 7, 12),
('Pakistan', 67, 53, 130, 111, 130, 114, 55, 58, 110, 114),
('Palestinian Territories', 110, 110, 128, 140, 82, 134, 90, 147, 112, NULL),
('Panama', 31, 121, 7, 48, 41, 32, 104, 88, 51, 33),
('Paraguay', 63, 90, 1, 39, 30, 34, 76, 67, 90, 81),
('Peru', 65, 114, 36, 127, 77, 61, 132, 126, 76, 47),
('Philippines', 69, 119, 42, 116, 75, 15, 49, 115, 97, 99),
('Poland', 40, 28, 76, 33, 44, 52, 108, 77, 41, 36),
('Portugal', 66, 73, 97, 100, 47, 37, 135, 122, 39, 22),
('Qatar', 29, 86, NULL, NULL, NULL, NULL, NULL, NULL, 1, 43),
('Romania', 48, 75, 80, 62, 86, 57, 146, 102, 48, 61),
('Russia', 68, 64, 96, 9, 40, 107, 127, 101, 45, 89),
('Rwanda', 152, 63, 54, 102, 144, 21, 2, 90, 132, 103),
('Saudi Arabia', 28, 93, 49, 82, 62, 68, NULL, 82, 11, 74),
('Senegal', 111, 44, 68, 60, 106, 121, 88, 130, 126, 109),
('Serbia', 70, 100, 148, 92, 57, 124, 118, 84, 71, 48),
('Sierra Leone', 129, 153, 139, 149, 135, 116, 112, 79, 145, 146),
('Singapore', 34, 5, 38, 2, 36, 20, 1, 21, 3, 1),
('Slovakia', 38, 39, 53, 47, 21, 108, 142, 70, 35, 38),
('Slovenia', 44, 54, 114, 71, 14, 13, 97, 54, 34, 29),
('Somalia', 112, 74, 2, 18, 145, 14, 16, 96, NULL, 144),
('South Africa', 106, 124, 40, 80, 63, 85, 102, 89, 77, 123),
('South Korea', 54, 57, 101, 45, 91, 144, 100, 40, 27, 9),
('South Sudan', 156, 140, 127, 152, 148, 154, 61, 85, 140, 143),
('Spain', 30, 21, 107, 107, 26, 95, 78, 50, 30, 3),
('Sri Lanka', 130, 91, 32, 81, 80, 55, 111, 35, 79, 54),
('Swaziland', 135, 104, 26, 57, 103, 113, 41, 145, 96, NULL),
('Sweden', 7, 18, 34, 8, 25, 10, 6, 17, 13, 17),
('Switzerland', 6, 11, 44, 21, 13, 11, 7, 16, 8, 4),
('Syria', 149, 137, 155, 155, 154, 153, 38, 69, NULL, 128),
('Taiwan', 25, 37, 17, 1, 48, 102, 56, 56, NULL, NULL),
('Tajikistan', 74, 50, 120, 54, 113, 86, 35, 72, 123, 92),
('Tanzania', 153, 122, 78, 50, 131, 78, 34, 49, 125, 118),
('Thailand', 52, 81, 20, 35, 53, 18, 131, 10, 62, 58),
('Togo', 139, 103, 123, 147, 149, 120, 72, 131, 142, 132),
('Trinidad and Tobago', 39, 89, 14, 52, 29, 51, 141, 41, 38, 93),
('Tunisia', 124, 79, 147, 132, 121, 143, 101, 144, 84, 67),
('Turkey', 79, 58, 154, 121, 61, 140, 50, 98, 44, 69),
('Turkmenistan', 87, 2, 135, 63, 8, 83, NULL, 33, 60, 100),
('Uganda', 136, 148, 91, 139, 114, 99, 95, 74, 136, 127),
('Ukraine', 133, 69, 131, 44, 56, 141, 143, 66, 94, 87),
('United Arab Emirates', 21, 65, 43, 56, 72, 4, NULL, 15, 4, 60),
('United Kingdom', 15, 16, 52, 42, 9, 63, 15, 4, 23, 24),
('United States', 19, 49, 35, 70, 37, 62, 42, 12, 10, 39),
('Uruguay', 33, 88, 10, 76, 35, 30, 33, 80, 52, 35),
('Uzbekistan', 41, 99, 19, 15, 11, 1, 18, 29, 104, 83),
('Venezuela', 108, 141, 77, 135, 49, 145, 110, 139, 78, 71),
('Vietnam', 94, 27, 121, 27, 64, 23, 86, 97, 105, 49),
('Yemen', 151, 85, 153, 75, 100, 147, 83, 155, 141, 124),
('Zambia', 138, 145, 84, 128, 115, 73, 69, 53, 115, 131),
('Zimbabwe', 146, 123, 63, 34, 110, 96, 63, 141, 131, 129);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `alcohol`
--
ALTER TABLE `alcohol`
  ADD PRIMARY KEY (`country`);

--
-- Indexen voor tabel `connection-table`
--
ALTER TABLE `connection-table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `country` (`country-alcohol`),
  ADD KEY `CountryID` (`country-lgbt`),
  ADD KEY `Country_region` (`country-happines`);

--
-- Indexen voor tabel `lgbt`
--
ALTER TABLE `lgbt`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexen voor tabel `world-happiness`
--
ALTER TABLE `world-happiness`
  ADD PRIMARY KEY (`Country_region`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `connection-table`
--
ALTER TABLE `connection-table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `connection-table`
--
ALTER TABLE `connection-table`
  ADD CONSTRAINT `connection-table_ibfk_1` FOREIGN KEY (`country-alcohol`) REFERENCES `alcohol` (`country`),
  ADD CONSTRAINT `connection-table_ibfk_2` FOREIGN KEY (`Country-lgbt`) REFERENCES `lgbt` (`CountryID`),
  ADD CONSTRAINT `connection-table_ibfk_3` FOREIGN KEY (`country-happines`) REFERENCES `world-happiness` (`Country_region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
