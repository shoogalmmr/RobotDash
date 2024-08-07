-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 أغسطس 2024 الساعة 05:59
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movabledb`
--

-- --------------------------------------------------------

--
-- بنية الجدول `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `position_horizontal` int(11) DEFAULT NULL,
  `position_vertical` int(11) DEFAULT NULL,
  `command` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `positions`
--

INSERT INTO `positions` (`id`, `position_horizontal`, `position_vertical`, `command`) VALUES
(441, 0, 85, 'left'),
(442, 0, 80, 'left'),
(443, 0, 75, 'left'),
(444, 0, 70, 'left'),
(445, 0, 65, 'left'),
(446, 0, 60, 'left'),
(447, 0, 55, 'left'),
(448, 0, 50, 'left'),
(449, 0, 45, 'left'),
(450, 0, 40, 'left'),
(451, 0, 35, 'left'),
(452, 0, 30, 'left'),
(453, 0, 25, 'left'),
(454, 0, 20, 'left'),
(455, 0, 15, 'left'),
(456, 0, 10, 'left'),
(457, 0, 5, 'left'),
(458, 0, 0, 'left'),
(459, 0, -5, 'left'),
(460, 0, -10, 'left'),
(461, 0, -15, 'left'),
(462, 0, -20, 'left'),
(463, 0, -20, 'stop'),
(464, -5, -20, 'left'),
(465, -10, -20, 'left'),
(466, -15, -20, 'left'),
(467, -20, -20, 'left'),
(468, -25, -20, 'left'),
(469, -30, -20, 'left'),
(470, -35, -20, 'left'),
(471, -40, -20, 'left'),
(472, -45, -20, 'left'),
(473, -50, -20, 'left'),
(474, -55, -20, 'left'),
(475, -60, -20, 'left'),
(476, -65, -20, 'left'),
(477, -70, -20, 'left'),
(478, -70, -20, 'stop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
