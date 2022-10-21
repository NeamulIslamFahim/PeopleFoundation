-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 09:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foundationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `l_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`l_amount`) VALUES
(500),
(6500),
(600),
(1200),
(1000),
(1000),
(6000),
(2500);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_services`
--

CREATE TABLE `emergency_services` (
  `h_name` varchar(100) DEFAULT NULL,
  `h_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency_services`
--

INSERT INTO `emergency_services` (`h_name`, `h_no`) VALUES
('Dhaka Medical College Hospital', '8626812-26, 8626818-25'),
('PG Hospital (BSMMU)', '8612550'),
('Sir Salimullah Medical College Hospital', '7310061-4'),
('Holy Family Hospital', '8311721-25'),
('Islamic Eye Hospital', '8811751-60'),
('Appolo Hospitals Network', '(880-2)9891661-5'),
('Central Hospital', '(880-2) 9660015-19'),
('Gulshan Mother & Child Clinic', '(880-2) 8822738, 8812992'),
('Labaid Cardiac Hospital', '(880-2) 8610793-8'),
('Medinova Medical Services Ltd.', '(880-2) 8620353'),
('Samorita Hospital Ltd.', '(880-2)7319002-6l'),
('Badda Thana', '9882652'),
('Cantonment Thana', '8829267'),
('Cantonment Thana', '8829267'),
('Demra Thana', '7S 16244'),
(' Dhanmondi Thana', '8631942'),
('Gulshan Thana', '9880234'),
('Hajari bag Thana', '9669900'),
('Kafrul Thana', '9871771'),
('Kamrangirchar Thana', '7320323'),
('Kotwali Thana', '71 16255'),
('Khilgaon Thana', '7219090'),
('Sadarghat Fire Service', '7119759'),
('Lalbagh Fire Service', '8619981'),
('Khigaon Fire Service', '7218329'),
('Tejgaon Fire Service', ' 9898187'),
('Mohammedpur Fire Service', ' 9112078'),
('Mirpur Fire Service', '9001055'),
('Kurmitola Fire Service', ' 8713399'),
('Tongi Fire Service', ' 9801070'),
('Palashi Fire Service', '8628688'),
('NarayangonjFire Service', '9751111'),
('Narayangonj Fire Service', ' 9750035');

-- --------------------------------------------------------

--
-- Table structure for table `fire_service`
--

CREATE TABLE `fire_service` (
  `f_place` varchar(100) DEFAULT NULL,
  `f_phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fire_service`
--

INSERT INTO `fire_service` (`f_place`, `f_phone`) VALUES
('Sadarghat Fire Service', '7119759'),
('Lalbagh Fire Service', '8619981'),
('Khigaon Fire Service', '7218329'),
('Tejgaon Fire Service', ' 9898187'),
('Mohammedpur Fire Service', ' 9112078'),
('Mirpur Fire Service', '9001055'),
('Kurmitola Fire Service', ' 8713399'),
('Tongi Fire Service', ' 9801070'),
('Palashi Fire Service', '8628688'),
('NarayangonjFire Service', '9751111'),
('Narayangonj Fire Service', ' 9750035');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `h_name` varchar(100) DEFAULT NULL,
  `h_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`h_name`, `h_no`) VALUES
('Dhaka Medical College Hospital', '8626812-26, 8626818-25'),
('PG Hospital (BSMMU)', '8612550'),
('Sir Salimullah Medical College Hospital', '7310061-4'),
('Holy Family Hospital', '8311721-25'),
('Islamic Eye Hospital', '8811751-60'),
('Appolo Hospitals Network', '(880-2)9891661-5'),
('Central Hospital', '(880-2) 9660015-19'),
('Gulshan Mother & Child Clinic', '(880-2) 8822738, 8812992'),
('Labaid Cardiac Hospital', '(880-2) 8610793-8'),
('Medinova Medical Services Ltd.', '(880-2) 8620353'),
('Samorita Hospital Ltd.', '(880-2)7319002-6l');

-- --------------------------------------------------------

--
-- Table structure for table `live_event`
--

CREATE TABLE `live_event` (
  `event_name` varchar(100) DEFAULT NULL,
  `l_username` varchar(100) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `l_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `live_event`
--

INSERT INTO `live_event` (`event_name`, `l_username`, `contact`, `l_amount`) VALUES
('Free meal for street people', 'fahim23', ' 0191655013', 500),
('Hospital for unpriviledged people', 'prince23', '0192293072', 6500),
('Free meal for street people', 'prince23', '0192293072', 600),
('Hospital for unpriviledged people', 'fahim23', ' 0191655013', 1200),
('Free meal for street people', 'fahim23', ' 0191655013', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `place` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`place`, `phone`) VALUES
('Badda Thana', '9882652'),
('Cantonment Thana', '8829267'),
('Cantonment Thana', '8829267'),
('Demra Thana', '7S 16244'),
(' Dhanmondi Thana', '8631942'),
('Gulshan Thana', '9880234'),
('Hajari bag Thana', '9669900'),
('Kafrul Thana', '9871771'),
('Kamrangirchar Thana', '7320323'),
('Kotwali Thana', '71 16255'),
('Khilgaon Thana', '7219090');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_name` varchar(100) DEFAULT NULL,
  `s_username` varchar(100) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `s_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_name`, `s_username`, `contact`, `s_amount`) VALUES
('Educational Help', 'fahim23', ' 0191655013', 1000),
('Educational Help', 'fahim23', ' 0191655013', 6000),
('Educational Help', 'fahim23', ' 0191655013', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `password`, `contact`) VALUES
('Neamul', 'Fahim', 'fahim23', '123', ' 0191655013'),
('nizarul', 'prince', 'prince23', '3257', '0192293072');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `live_event`
--
ALTER TABLE `live_event`
  ADD KEY `username` (`l_username`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD KEY `username` (`s_username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `live_event`
--
ALTER TABLE `live_event`
  ADD CONSTRAINT `live_event_ibfk_1` FOREIGN KEY (`l_username`) REFERENCES `users` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`s_username`) REFERENCES `users` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
