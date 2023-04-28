-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 07:39 AM
-- Server version: 10.11.2-MariaDB-1
-- PHP Version: 8.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `request` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `email`, `date`, `number`, `request`, `timestamp`) VALUES
(1, 'John', 'john@gmail.com', '04/16/2023 2:53 AM', '3', '1 place for 3 people', '2023-04-17 20:57:05'),
(2, '', '', '', '', '', '2023-04-18 06:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `timestamp`) VALUES
(1, 'Jamshid', 'Jamshid@gmail.com', 'Usual client', 'This place is very luxury and unforgettable, I always invite others, because people who want go to the cafe never regret from the place', '2023-04-17 20:34:12'),
(3, 'Lara', 'lara@gmail.com', 'Client', 'This place is really perfect and amazing. I believe that whoever wants to go here will not regret it', '2023-04-18 06:00:37'),
(4, 'Ted', 'Ted@gmail.com', 'Someone', 'I didn\'t like it when I first came here, but I fell in love with the place after tasting the food. A really great restaurant', '2023-04-18 06:02:21'),
(5, 'Kety', 'Ketti@gmail.com', 'Closer person', 'The food is delicious and the place is also attractive. Perfect place for weddings and parties', '2023-04-18 06:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cost` int(9) DEFAULT NULL,
  `definition` varchar(80) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `image` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `cost`, `definition`, `type`, `image`) VALUES
(56, 'palov ', 23, 'national food', 2, 'menu_1681740159.jpeg'),
(57, 'somsa', 3, 'national food', 3, 'menu_1681740173.jpeg'),
(58, 'pizza', 7, 'Italian food', 2, 'menu_1681797445.jpeg'),
(68, 'shokolad', 3, 'delicious', 3, 'menu_1681742370.jpeg'),
(69, 'Shashlik', 15, 'National food', 2, 'menu_1681797081.jpeg'),
(70, 'Eggs', 5, 'International food', 1, 'menu_1681797282.jpeg'),
(71, 'Napolion', 5, 'Delicious dish', 1, 'menu_1681797355.jpeg'),
(72, 'Nachos', 4, 'Delicious dish', 1, 'menu_1681797409.jpeg'),
(73, 'Sweet', 7, 'Delicious', 1, 'menu_1681810225.jpeg'),
(74, 'Insanely salt', 9, 'Great', 1, 'menu_1681810298.jpeg'),
(75, '1', 1, '1', 2, 'menu_1681883312.');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(70) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'bobur', 'bobur123@gmail.com', '5091dfc61b58c5675669d07591414058', 2),
(3, 'doniyor', 'doniyor@gmail.com', 'df0fc2e010b5135fe894a77984550a94', 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `career` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `career`, `image`) VALUES
(1, 'John Kerbi', 'Chef cooker', 'menu_1681796650.webp'),
(2, 'Braid Den', 'Assistant cooker', 'menu_1681761998.jpg'),
(4, 'Ann Cooper', 'pizza maker', 'menu_1681796467.jpg'),
(5, 'Nara Tekin', 'Confectioner', 'menu_1681796599.jpg'),
(6, 'Tyudor Kell', 'Chef', 'menu_1681816620.jpeg'),
(7, 'Lily Barison', 'Assistant', 'menu_1681816648.jpg'),
(9, 'Maria Benn', 'Confectioner', 'menu_1681816709.jpeg'),
(10, 'Ted Brain', 'pizza maker', 'menu_1681816872.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
