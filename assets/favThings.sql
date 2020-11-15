-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 14, 2020 at 08:47 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `favourite_things`
--

-- --------------------------------------------------------

--
-- Table structure for table `favThings`
--

CREATE TABLE `favThings` (
  `id` int(11) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `image` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favThings`
--

INSERT INTO `favThings` (`id`, `title`, `image`, `description`) VALUES
(1, 'Friends', 'friends.jpg', 'I\'ve had the same group of friends since 2015. We were two different groups of girls and boys that collided and we\'ve been close ever since. We\'ve grown up together and they are the best people to spend time with. '),
(2, 'Family', 'family.jpg', 'My family has always been there for me whenever I need help and to guide me through difficult times in my life. They know exactly how to make me laugh when I\'m feeling down. '),
(3, 'Travel', 'travel.jpg', 'I love to travel and discover new things I\'ve never seen before. I\'m privileged that I\'ve been able to visit multiple countries already with my family. It makes me feel happy to travel; to experience new cultures and meet new people. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favThings`
--
ALTER TABLE `favThings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favThings`
--
ALTER TABLE `favThings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
