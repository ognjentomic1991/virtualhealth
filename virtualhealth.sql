-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 08:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtualhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `korime` varchar(50) NOT NULL,
  `lozinka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `ime`, `prezime`, `korime`, `lozinka`) VALUES
(1, 'nemanja', 'popovic', 'nemanjart', 'password'),
(2, 'ivana', 'petrovic', 'iva', 'iva'),
(3, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `karton`
--

CREATE TABLE `karton` (
  `id` int(11) NOT NULL,
  `id_pacijenta` int(9) NOT NULL,
  `id_lekara` int(9) NOT NULL,
  `sifra` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karton`
--

INSERT INTO `karton` (`id`, `id_pacijenta`, `id_lekara`, `sifra`) VALUES
(1, 1, 1, '123asd'),
(2, 3, 2, 'fff345'),
(3, 2, 3, 'dfdfdf');

-- --------------------------------------------------------

--
-- Table structure for table `lekar`
--

CREATE TABLE `lekar` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `specijalnost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lekar`
--

INSERT INTO `lekar` (`id`, `ime`, `prezime`, `specijalnost`) VALUES
(1, 'selena', 'gomez', 'specijalnost 1'),
(2, 'emma', 'watson', 'specijalnost 3'),
(3, 'paja', 'pajic', 'specijalnost 2');

-- --------------------------------------------------------

--
-- Table structure for table `pacijent`
--

CREATE TABLE `pacijent` (
  `id` int(11) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `prezime` varchar(50) NOT NULL,
  `korime` varchar(50) NOT NULL,
  `lozinka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pacijent`
--

INSERT INTO `pacijent` (`id`, `ime`, `prezime`, `korime`, `lozinka`) VALUES
(1, 'pera', 'peric', 'peraa', 'pass123'),
(2, 'steva', 'stevic', 'stevica', 'asdfgh'),
(3, 'selena', 'gomez', 'selena', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `pregled`
--

CREATE TABLE `pregled` (
  `id` int(11) NOT NULL,
  `id_kartona` int(9) NOT NULL,
  `datum` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pregled`
--

INSERT INTO `pregled` (`id`, `id_kartona`, `datum`) VALUES
(2, 2, 'Mon Nov 30 00:00:00 PST 2020'),
(3, 1, 'Thu Dec 03 00:00:00 PST 2020'),
(4, 2, 'Thu Nov 26 00:00:00 PST 2020'),
(5, 1, 'Tue Nov 24 00:00:00 PST 2020'),
(6, 1, 'Wed Nov 25 00:00:00 PST 2020'),
(7, 2, 'Mon Nov 30 00:00:00 PST 2020');

-- --------------------------------------------------------

--
-- Table structure for table `specijalnosti`
--

CREATE TABLE `specijalnosti` (
  `id` int(11) NOT NULL,
  `specijalnost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specijalnosti`
--

INSERT INTO `specijalnosti` (`id`, `specijalnost`) VALUES
(1, 'specijalnost 1'),
(2, 'specijalnost 2'),
(3, 'specijalnost 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karton`
--
ALTER TABLE `karton`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lekar`
--
ALTER TABLE `lekar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacijent`
--
ALTER TABLE `pacijent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pregled`
--
ALTER TABLE `pregled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specijalnosti`
--
ALTER TABLE `specijalnosti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `karton`
--
ALTER TABLE `karton`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lekar`
--
ALTER TABLE `lekar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pacijent`
--
ALTER TABLE `pacijent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pregled`
--
ALTER TABLE `pregled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `specijalnosti`
--
ALTER TABLE `specijalnosti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
