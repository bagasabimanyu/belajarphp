-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 07:31 PM
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
-- Database: `formhandling`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `asal_universitas` varchar(255) NOT NULL,
  `domisili` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `email`, `asal_universitas`, `domisili`) VALUES
(67, 'Bagas Abimanyu', 'bagazabimanyu29@gmail.com', 'Universitas Havard', 'Surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`, `role_id`) VALUES
(5, 'qwerty', 'qwerty@gmail.com', '$2y$10$HZCXOjc5e/5E83XjqMs49uUv7K6/TUr3FON3rtlBzC127.Le.q2Yq', 0),
(6, 'qwerty', 'pakdhibanteng77@gmail.com', '$2y$10$UVViyKI3BAUiMsJ9piCVVezzaHwElf7TYdyc6ZIKU04HhqBNehUzC', 2),
(7, 'qwerty', 'pakdhibanteng77@gmail.com', '$2y$10$BQTsnnYhpJcDW6OLgq1MXeN1NG/xq02/Tys4BdgpG1zmlgCri.AEm', 2),
(9, 'qwerty', 'pakdhibanteng77@gmail.com', '$2y$10$qyegg1Wit7RerTayBE4o6.QQAk0iQobtYvy1dYpxpEPPjfsu5lKP6', 2),
(10, 'qwerty', 'pakdhibanteng77@gmail.com', '$2y$10$SUqFKZXKD.Xgr.a2XtIkMu5bwvArIIgUJ5NbPPmVTZJBIczh3wd4K', 2),
(11, 'snowden', 'snowden@gmail.com', '$2y$10$1U1AA5u1EfOd..QDVU0mfeojNWgSLcw67bIWsVCRCdWbuOh.MJzWW', 2),
(13, 'ifku syoba', 'ifkusyoba@gmail.com', '$2y$10$DGeS.a9tL7itpnlrkmJi2ea4uFoppcOTxptcW/RFuLMSmURThQ37i', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
