-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2019 at 10:47 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tps_sso_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `name`, `url`, `logo`) VALUES
(15, 'Arise Portal', 'https://portal.arise.com/', '/static/img/Arise Portal.png'),
(17, 'Five9', 'https://login.five9.com', '/static/img/Five9.png'),
(18, 'Zimbra', 'https://dsgmail.avsplatform.com/', '/static/img/Zimbra.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(9) NOT NULL,
  `mobile` int(15) NOT NULL,
  `password` varchar(512) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `username`, `mobile`, `password`, `user_type`) VALUES
(1, 'Tarini', 'Prasad', '', 'mr_tps', 2147483647, '$5$rounds=535000$Bv2wk4DMfkJHAzKP$vk7c.Ck6jW4cQ43jDsJhSmZ./F2iHH6KS24fpDmEGm9', 'user'),
(4, 'admin', 'admin', '', 'admin', 2147483647, '$5$rounds=535000$6x2hoeTRrEzaG4YM$0bePqOQSPkXiki/tlRGKiLCLxs33QkrWZI.JHadQtzA', 'admin'),
(9, '', '', '', 'tarini', 0, '', 'user'),
(10, '', '', '', 'sobhan', 0, '', 'user'),
(12, 'rohan', 'rohan', 'rohan@email.com', 'rohan__', 2147483647, '$5$rounds=535000$UBq8eHIybBr3GSiT$R2zgAdh4iRsoUfOocKRyIYxRiZVSW8jK1m.ONAB9/o0', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users_apps_cred`
--

CREATE TABLE `users_apps_cred` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `app_id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_apps_cred`
--

INSERT INTO `users_apps_cred` (`id`, `user_id`, `app_id`, `username`, `password`) VALUES
(1, 10, 18, 'cbecerra', '57KPNT10311!'),
(2, 9, 18, 'bececx@dsg.avsplatform.com', '57KPnt10311!');

-- --------------------------------------------------------

--
-- Table structure for table `users_apps_dir`
--

CREATE TABLE `users_apps_dir` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `app_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_apps_dir`
--

INSERT INTO `users_apps_dir` (`id`, `user_id`, `app_id`) VALUES
(6, 1, 15),
(15, 2, 15),
(17, 2, 18),
(23, 9, 18),
(18, 10, 15),
(20, 10, 17),
(21, 10, 18),
(22, 12, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_apps_cred`
--
ALTER TABLE `users_apps_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_apps_dir`
--
ALTER TABLE `users_apps_dir`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`app_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users_apps_cred`
--
ALTER TABLE `users_apps_cred`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_apps_dir`
--
ALTER TABLE `users_apps_dir`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
