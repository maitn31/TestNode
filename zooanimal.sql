-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 12:13 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ZooAnimal`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE IF NOT EXISTS `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `family_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `family_id`) VALUES
(2, 'cat', 2),
(3, 'lion', 2),
(4, 'dog', 1),
(5, 'fox', 1),
(6, 'wolf', 1),
(7, 'gold fish', NULL),
(8, 'giraffe', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `name`) VALUES
(1, 'canidae'),
(2, 'felidae');

-- --------------------------------------------------------

--
-- Table structure for table `living`
--

CREATE TABLE IF NOT EXISTS `living` (
  `nickname` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(40) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `living`
--

INSERT INTO `living` (`nickname`, `type`, `date_of_birth`) VALUES
('20cm', 'giraffe', '2019-09-10'),
('bruto', 'dog', '2018-09-10'),
('fod', 'lion', '2018-11-04'),
('fuki', 'wolf', '2016-06-11'),
('nemo', 'gold fish', '2018-10-14'),
('pipi', 'fox', '2017-10-21'),
('tom', 'cat', '2019-10-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `family_id` (`family_id`),
  ADD KEY `name` (`name`),
  ADD KEY `name_2` (`name`),
  ADD KEY `name_3` (`name`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `living`
--
ALTER TABLE `living`
  ADD PRIMARY KEY (`nickname`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `family` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `living`
--
ALTER TABLE `living`
  ADD CONSTRAINT `living_ibfk_1` FOREIGN KEY (`type`) REFERENCES `animal` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
