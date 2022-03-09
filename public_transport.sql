-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 01:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public_transport`
--
CREATE DATABASE IF NOT EXISTS `public_transport` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `public_transport`;

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `licence_plate_number` varchar(10) NOT NULL,
  `model` int(30) NOT NULL,
  `capacity` tinyint(4) NOT NULL,
  `driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`licence_plate_number`, `model`, `capacity`, `driver_id`) VALUES
('W12323T', 2, 50, 5),
('W15123C', 1, 30, 3),
('W33323R', 2, 50, 8),
('W36313E', 4, 100, 4),
('W44323Z', 1, 30, 7),
('W53434B', 3, 70, 2),
('W55323E', 2, 50, 1),
('W55323K', 3, 70, 6);

-- --------------------------------------------------------

--
-- Table structure for table `bus_models`
--

CREATE TABLE `bus_models` (
  `bus_model_id` int(11) NOT NULL,
  `model_brand` varchar(100) NOT NULL,
  `model_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus_models`
--

INSERT INTO `bus_models` (`bus_model_id`, `model_brand`, `model_type`) VALUES
(1, 'MAN', 'Intercity LE'),
(2, 'MAN', 'TGE Intercity'),
(3, 'Volvo', '9700'),
(4, 'Mercedes', 'CapaCity');

-- --------------------------------------------------------

--
-- Table structure for table `bus_station`
--

CREATE TABLE `bus_station` (
  `order_number` int(11) NOT NULL,
  `station_name` varchar(200) NOT NULL,
  `station_address` varchar(200) NOT NULL,
  `station_phone` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bus_station`
--

INSERT INTO `bus_station` (`order_number`, `station_name`, `station_address`, `station_phone`, `city_id`) VALUES
(1, 'Vienna main station', 'Südtiroler Platz 1', '0664/1001077', 1),
(2, 'Vienna Meidling', 'Philadelphia Brücke 1', '0664/2201177', 1),
(3, 'Wiener Neustadt', 'Forstweg 3', '0664/1126513', 5),
(4, 'Kapfenberg', 'Wiener Platz 15', '0664/2751177', 6),
(5, 'Graz Jakomini', 'Jakominiplatz 1', '0664/2201188', 7),
(6, 'Graz main station', 'Annenstraße 4', '0664/8901177', 7),
(7, 'Leoben main square', 'Hauptplatz 3', '0664/1005370', 8),
(8, 'Liezen main square', 'Grazer Platz 1', '0664/2202271', 9),
(9, 'Linz main station', 'Blumauer Platz 1', '0664/22132177', 4),
(10, 'Vienna Simmering', 'Simmeringer Straße 1', '0664/1128171', 1),
(11, 'Bruck an der Leitha', 'Leithastraße 4', '0664/2201177', 11),
(12, 'Bratislava main station', 'Main square 1', '0664/7638913', 12),
(13, 'Bratislava old town', 'Old Town 4', '0664/65011377', 12),
(14, 'Vienna Erdberg', 'Erdberg 4', '0664/8901157', 1),
(15, 'Vienna Stadlau', 'Stadlauer Platz 3', '0664/4405370', 1),
(16, 'Brno', 'Praha square', '0664/2202561', 13),
(17, 'Praha central', 'Blumauer Platz 1', '0664/22132177', 14),
(18, 'Praha old town', 'Old town 1', '0664/11223670', 14),
(19, 'Gyor', 'Imperial street 10', '0664/2268178', 15),
(20, 'Budapest central', 'On the danube 6', '0664/76383413', 16),
(21, 'Klagenfurt', 'Villacher Straße 4', '0664/11071322', 17),
(22, 'Maribor', 'Mariboro 10', '0664/2212345', 18),
(23, 'Zagreb central', 'Central square 1', '0664/112443220', 19),
(24, 'Villach', 'Klagenfurter Straße 10', '0664/5299175', 20),
(25, 'Udine', 'Vincesolo 10', '0664/76384913', 21),
(26, 'Triest central', 'Central street 4', '0664/111430322', 22),
(27, 'Triest harbour', 'Maribor Street 11', '0664/96141022', 22),
(28, 'Vienna West Station', 'Westbahnhof 1', '0664/1332871', 1),
(29, 'St. Pölten main station', 'Wiener Platz 4', '0664/1323575', 2),
(30, 'Amstetten main station', 'Mostviertler Platz 14', '0664/4213758', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`) VALUES
(1, 'VIENNA'),
(2, 'St. Pölten'),
(3, 'Amstetten'),
(4, 'Linz'),
(5, 'Wiener Neustadt'),
(6, 'Kapfenberg'),
(7, 'Graz'),
(8, 'Leoben'),
(9, 'Liezen'),
(10, 'Wels'),
(11, 'Bruck an der Leitha'),
(12, 'Bratislava'),
(13, 'Brno'),
(14, 'Praha'),
(15, 'Gyor'),
(16, 'Budapest'),
(17, 'Klagenfurt'),
(18, 'Maribor'),
(19, 'Zagreb'),
(20, 'Villach'),
(21, 'Udine'),
(22, 'Triest');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `fname`, `lname`) VALUES
(1, 'Fredi', 'Fast'),
(2, 'Mark', 'Maximum'),
(3, 'Anton', 'Accurate'),
(4, 'Paul', 'Punctual'),
(5, 'Laurence', 'Lazy'),
(6, 'Harald', 'in a Hurry'),
(7, 'Ronald', 'Rowdy'),
(8, 'Tim', 'Throttle');

-- --------------------------------------------------------

--
-- Table structure for table `mapping`
--

CREATE TABLE `mapping` (
  `mapping_id` int(11) NOT NULL,
  `fk_route_id` int(11) NOT NULL,
  `fk_bus_station_id` int(11) NOT NULL,
  `bus_stop_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapping`
--

INSERT INTO `mapping` (`mapping_id`, `fk_route_id`, `fk_bus_station_id`, `bus_stop_number`) VALUES
(1, 1, 1, 1),
(2, 1, 28, 2),
(3, 1, 29, 3),
(4, 1, 30, 4),
(5, 1, 9, 5),
(6, 2, 1, 1),
(7, 2, 2, 2),
(8, 2, 3, 3),
(9, 2, 4, 4),
(10, 2, 5, 5),
(11, 2, 6, 6),
(12, 3, 6, 1),
(13, 3, 5, 2),
(14, 3, 7, 3),
(15, 3, 8, 4),
(16, 3, 9, 5),
(17, 4, 14, 1),
(18, 4, 15, 2),
(19, 4, 16, 3),
(20, 4, 17, 4),
(21, 4, 18, 5),
(22, 5, 1, 1),
(23, 5, 10, 2),
(24, 5, 19, 3),
(25, 5, 20, 4),
(26, 6, 1, 1),
(27, 6, 2, 2),
(28, 6, 21, 3),
(29, 6, 22, 4),
(30, 6, 23, 5),
(31, 7, 1, 1),
(32, 7, 2, 2),
(33, 7, 24, 3),
(34, 7, 25, 4),
(35, 7, 26, 5),
(36, 7, 27, 6),
(37, 8, 1, 1),
(38, 8, 10, 2),
(39, 8, 11, 3),
(40, 8, 12, 4),
(41, 8, 13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `licence_plate_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`route_id`, `distance`, `licence_plate_number`) VALUES
(1, 200, 'W12323T'),
(2, 200, 'W15123C'),
(3, 220, 'W33323R'),
(4, 80, 'W36313E'),
(5, 335, 'W44323Z'),
(6, 240, 'W53434B'),
(7, 370, 'W55323E'),
(8, 480, 'W55323K');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`licence_plate_number`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `model` (`model`);

--
-- Indexes for table `bus_models`
--
ALTER TABLE `bus_models`
  ADD PRIMARY KEY (`bus_model_id`);

--
-- Indexes for table `bus_station`
--
ALTER TABLE `bus_station`
  ADD PRIMARY KEY (`order_number`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `mapping`
--
ALTER TABLE `mapping`
  ADD PRIMARY KEY (`mapping_id`),
  ADD KEY `fk_route_id` (`fk_route_id`),
  ADD KEY `fk_bus_station_id` (`fk_bus_station_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`),
  ADD KEY `licence_plate_number` (`licence_plate_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_models`
--
ALTER TABLE `bus_models`
  MODIFY `bus_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus_station`
--
ALTER TABLE `bus_station`
  MODIFY `order_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mapping`
--
ALTER TABLE `mapping`
  MODIFY `mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`),
  ADD CONSTRAINT `buses_ibfk_2` FOREIGN KEY (`model`) REFERENCES `bus_models` (`bus_model_id`);

--
-- Constraints for table `bus_station`
--
ALTER TABLE `bus_station`
  ADD CONSTRAINT `bus_station_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `mapping`
--
ALTER TABLE `mapping`
  ADD CONSTRAINT `mapping_ibfk_1` FOREIGN KEY (`fk_route_id`) REFERENCES `routes` (`route_id`),
  ADD CONSTRAINT `mapping_ibfk_2` FOREIGN KEY (`fk_bus_station_id`) REFERENCES `bus_station` (`order_number`);

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`licence_plate_number`) REFERENCES `buses` (`licence_plate_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
