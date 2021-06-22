-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 12:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egzaminas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kursas`
--

CREATE TABLE `kursas` (
  `id` int(11) NOT NULL,
  `pavadinimas` varchar(255) NOT NULL,
  `aprasas` varchar(200) NOT NULL,
  `plestinis_aprasas` text NOT NULL,
  `kurso_autorius` varchar(255) NOT NULL,
  `kurso_ikelimo_data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kaina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursas`
--

INSERT INTO `kursas` (`id`, `pavadinimas`, `aprasas`, `plestinis_aprasas`, `kurso_autorius`, `kurso_ikelimo_data`, `kaina`) VALUES
(1, 'PHP Kursas', 'Puikiausias PHP kursas visoje lietuvoje', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.\r\n                                Perferendis\r\n                                veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.', 'Vardenis Pavardenis', '2021-06-22 09:34:06', 23),
(2, 'HTML/CSS Kursas', ' Išmok CSS ir HTML jau šiandien', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.', 'Vardytė Pvardytė', '2021-06-22 09:37:39', 11),
(3, 'JavaScript Kursas', 'JavaScript keblumai ir subtilumai', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.', 'Jonas Jonaitis', '2021-06-22 09:37:39', 55),
(4, 'GIT kursas', 'GIT Linksmybės ir paslaptys', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.', 'Petras Petraitis', '2021-06-22 09:37:39', 39),
(5, 'Command line Kursas', 'Command line pradedantiesiem', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.', 'Rimas Rimaitis', '2021-06-22 09:37:39', 55);

-- --------------------------------------------------------

--
-- Table structure for table `kurso_komentarai`
--

CREATE TABLE `kurso_komentarai` (
  `kurso_id` int(11) NOT NULL,
  `kurso_komentaras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kurso_komentarai`
--

INSERT INTO `kurso_komentarai` (`kurso_id`, `kurso_komentaras`) VALUES
(1, 'puikus kursas'),
(2, 'patiko'),
(2, 'labai patiko'),
(2, 'galetu buti ilgesnis kursas'),
(3, 'visiskas laiko svaistymas'),
(3, 'prasta vaizdo kokybe'),
(4, 'per mazai informacijos'),
(4, 'labai geras kurso isdestymas'),
(4, 'puikiai suplanuotas kursas'),
(4, 'toks pats kursas kaip ir visi kiti'),
(5, 'neturiu priekaistu');

-- --------------------------------------------------------

--
-- Table structure for table `kurso_nuotraukos`
--

CREATE TABLE `kurso_nuotraukos` (
  `kurso_id` int(11) NOT NULL,
  `nuotraukos_kelias` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kurso_nuotraukos`
--

INSERT INTO `kurso_nuotraukos` (`kurso_id`, `nuotraukos_kelias`) VALUES
(1, 'php.jpg'),
(2, 'css.jpg'),
(3, 'js.jpg'),
(4, 'git.jpg'),
(5, 'git.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kurso_populiarumas`
--

CREATE TABLE `kurso_populiarumas` (
  `kurso_id` int(11) NOT NULL,
  `metai` int(11) NOT NULL,
  `nusipirkusiu_skaicius` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kurso_populiarumas`
--

INSERT INTO `kurso_populiarumas` (`kurso_id`, `metai`, `nusipirkusiu_skaicius`) VALUES
(1, 2020, 200),
(2, 2020, 578),
(3, 2020, 1200),
(4, 2020, 132),
(5, 2020, 156);

-- --------------------------------------------------------

--
-- Table structure for table `kurso_vertinimai`
--

CREATE TABLE `kurso_vertinimai` (
  `kurso_id` int(11) NOT NULL,
  `vertinimas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kurso_vertinimai`
--

INSERT INTO `kurso_vertinimai` (`kurso_id`, `vertinimas`) VALUES
(1, 5),
(1, 3),
(1, 4),
(2, 5),
(2, 5),
(3, 4),
(4, 2),
(4, 5),
(5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursas`
--
ALTER TABLE `kursas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurso_komentarai`
--
ALTER TABLE `kurso_komentarai`
  ADD KEY `kurso_id` (`kurso_id`);

--
-- Indexes for table `kurso_nuotraukos`
--
ALTER TABLE `kurso_nuotraukos`
  ADD KEY `kurso_id` (`kurso_id`);

--
-- Indexes for table `kurso_populiarumas`
--
ALTER TABLE `kurso_populiarumas`
  ADD KEY `kurso_id` (`kurso_id`);

--
-- Indexes for table `kurso_vertinimai`
--
ALTER TABLE `kurso_vertinimai`
  ADD KEY `kurso_id` (`kurso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursas`
--
ALTER TABLE `kursas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kurso_komentarai`
--
ALTER TABLE `kurso_komentarai`
  ADD CONSTRAINT `kurso_komentarai_ibfk_1` FOREIGN KEY (`kurso_id`) REFERENCES `kursas` (`id`);

--
-- Constraints for table `kurso_nuotraukos`
--
ALTER TABLE `kurso_nuotraukos`
  ADD CONSTRAINT `kurso_nuotraukos_ibfk_1` FOREIGN KEY (`kurso_id`) REFERENCES `kursas` (`id`);

--
-- Constraints for table `kurso_populiarumas`
--
ALTER TABLE `kurso_populiarumas`
  ADD CONSTRAINT `kurso_populiarumas_ibfk_1` FOREIGN KEY (`kurso_id`) REFERENCES `kursas` (`id`);

--
-- Constraints for table `kurso_vertinimai`
--
ALTER TABLE `kurso_vertinimai`
  ADD CONSTRAINT `kurso_vertinimai_ibfk_1` FOREIGN KEY (`kurso_id`) REFERENCES `kursas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
