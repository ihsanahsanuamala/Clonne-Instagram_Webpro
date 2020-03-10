-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 12:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloneinstagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id_photo` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `like` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id_photo`, `username`, `url`, `caption`, `like`) VALUES
(1, 'admin', 'https://asset.indosport.com/article/image/q/80/289015/logo_manchester_united-169.jpg?w=750&h=423', 'Manchester United Keren', '45'),
(2, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 1', '200'),
(3, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 2', '500'),
(4, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 3', '45'),
(5, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 5', '10'),
(6, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 6', '700'),
(7, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 8', '70'),
(8, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 9', '20'),
(9, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 10 ', '50'),
(10, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 12', '76'),
(11, 'admin', 'https://dummyimage.com/1080x1080/000000/0011ff.jpg&text=Ini+Data+Sampel', 'Data Sampel 15', '88');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `username`, `website`, `bio`, `email`, `phonenumber`, `gender`) VALUES
('123', 'Maulana Abbas', 'admin', 'http://www.deztafirst.com/berita/domain_baru.htm', 'Sedang Kuliah di Telkom University', 'perwitaputrarahadian@gmail.com', '0852', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `id_photo` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `id_photo`, `password`, `email`) VALUES
('admin', 1, '123', 'amala@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id_photo`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id_photo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
