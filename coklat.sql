-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 03:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coklat`
--

-- --------------------------------------------------------

--
-- Table structure for table `coklatreport`
--

CREATE TABLE `coklatreport` (
  `id` int(255) NOT NULL,
  `ChocolateType` varchar(255) NOT NULL,
  `Production_date` date NOT NULL,
  `Volume` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coklatreport`
--

INSERT INTO `coklatreport` (`id`, `ChocolateType`, `Production_date`, `Volume`) VALUES
(2, 'Flake', '2022-01-28', 1541),
(3, 'Flake', '2022-02-28', 911),
(4, 'Flake', '2022-03-28', 2164),
(5, 'Flake', '2022-04-28', 1986),
(6, 'Flake', '2022-05-28', 2295),
(7, 'Flake', '2022-06-28', 2282),
(8, 'Flake', '2022-07-28', 2046),
(9, 'Caramel', '2022-01-28', 3156),
(10, 'Caramel', '2022-02-28', 1928),
(11, 'Caramel', '2022-03-28', 1015),
(12, 'Caramel', '2022-04-28', 2030),
(13, 'Caramel', '2022-05-28', 1834),
(14, 'Caramel', '2022-06-28', 1254),
(15, 'Caramel', '2022-07-28', 1827),
(16, 'Twirl', '2022-01-28', 1689),
(17, 'Twirl', '2022-02-28', 1447),
(18, 'Twirl', '2022-03-28', 2108),
(19, 'Twirl', '2022-04-28', 2374),
(20, 'Twirl', '2022-05-28', 1167),
(21, 'Twirl', '2022-06-28', 1707),
(22, 'Twirl', '2022-07-28', 2645),
(23, 'Wispa', '2022-01-28', 500),
(24, 'Wispa', '2022-02-28', 1920),
(25, 'Wispa', '2022-03-28', 959),
(26, 'Wispa', '2022-04-28', 1927),
(27, 'Wispa', '2022-05-28', 1119),
(28, 'Wispa', '2022-06-28', 2223),
(29, 'Wispa', '2022-07-28', 2793),
(30, 'Chomp', '2022-01-28', 1903),
(31, 'Chomp', '2022-02-28', 1764),
(32, 'Chomp', '2022-03-28', 1031),
(33, 'Chomp', '2022-04-28', 1734),
(34, 'Chomp', '2022-05-28', 1630),
(35, 'Chomp', '2022-06-28', 4690),
(36, 'Chomp', '2022-07-28', 2785),
(37, 'Fudge', '2022-01-28', 1149),
(38, 'Fudge', '2022-02-28', 575),
(39, 'Fudge', '2022-03-28', 3687),
(40, 'Fudge', '2022-04-28', 1684),
(41, 'Fudge', '2022-05-28', 2390),
(42, 'Fudge', '2022-06-28', 1238),
(43, 'Fudge', '2022-07-28', 2880),
(44, 'Crunchie', '2022-01-28', 1347),
(45, 'Crunchie', '2022-02-28', 943),
(46, 'Crunchie', '2022-03-28', 1400),
(47, 'Crunchie', '2022-04-28', 4070),
(48, 'Crunchie', '2022-05-28', 740),
(49, 'Crunchie', '2022-06-28', 2758),
(50, 'Crunchie', '2022-07-28', 2677),
(51, 'DoubleDecker', '2022-01-28', 1706),
(52, 'DoubleDecker', '2022-02-28', 1225),
(53, 'DoubleDecker', '2022-03-28', 2011),
(54, 'DoubleDecker', '2022-04-28', 2103),
(55, 'DoubleDecker', '2022-05-28', 2263),
(56, 'DoubleDecker', '2022-06-28', 1896),
(57, 'DoubleDecker', '2022-07-28', 2710),
(58, 'WispaGold', '2022-01-28', 1664),
(59, 'WispaGold', '2022-02-28', 1645),
(60, 'WispaGold', '2022-03-28', 1324),
(61, 'WispaGold', '2022-04-28', 1634),
(62, 'WispaGold', '2022-05-28', 2090),
(63, 'WispaGold', '2022-06-28', 4454),
(64, 'WispaGold', '2022-07-28', 2386),
(65, 'Picnic', '2022-01-28', 823),
(66, 'Picnic', '2022-02-28', 1972),
(67, 'Picnic', '2022-03-28', 1960),
(68, 'Picnic', '2022-04-28', 1063),
(69, 'Picnic', '2022-05-28', 1564),
(70, 'Picnic', '2022-06-28', 1909),
(71, 'Picnic', '2022-07-28', 1302);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coklatreport`
--
ALTER TABLE `coklatreport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coklatreport`
--
ALTER TABLE `coklatreport`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
