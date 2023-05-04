-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 05:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpool_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `usersID` int(11) NOT NULL,
  `userType` varchar(199) NOT NULL,
  `firstname` varchar(199) NOT NULL,
  `middlename` varchar(199) NOT NULL,
  `lastname` varchar(199) NOT NULL,
  `barangay` varchar(199) NOT NULL,
  `street` varchar(199) NOT NULL,
  `city` varchar(199) NOT NULL,
  `province` varchar(199) NOT NULL,
  `phonenumber` varchar(11) NOT NULL,
  `email` varchar(199) NOT NULL,
  `password` varchar(199) NOT NULL,
  `verify_status` varchar(255) NOT NULL DEFAULT 'not verify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usersID`, `userType`, `firstname`, `middlename`, `lastname`, `barangay`, `street`, `city`, `province`, `phonenumber`, `email`, `password`, `verify_status`) VALUES
(4, 'Driver', 'Miles', 'Ramos', 'Martin', 'Tambubong', 'Cagayan', 'San', 'Bulacan', '0985481354', 'milesjared24@gmail.com', 'miles24', 'verify'),
(5, 'Driver ', 'Arabella Dennise', 'Santos', 'Flores', 'Pantubig', 'Bartolome', 'San rafael ', 'Bulacan', '09058144913', 'arabellaflores92@gmail.com', 'arabella92', 'verify'),
(6, 'Passanger', 'Angela', 'Santos ', 'Flores', 'Pantubig', 'Bartolome', 'San rafael ', 'Bulacan ', '094581326', 'angelamarieflores11@gmail.com', 'angela11', 'not verify'),
(7, 'Passanger', 'Nichole Joyce', 'Galvez ', 'Santos ', 'Barangca ', 'Barangca', 'Baliwag', 'Bulacan', '09234319903', 'santosnicholeee@gmai.com', 'nichole22', 'not verify'),
(8, 'Passanger', 'Brenley Ian', 'Del rosario', 'Robles', 'Balite', 'Saint Mary', 'Malolos', 'Bulacan ', '09776812713', 'brenlify.mail@gmail.com', 'brenley01', 'not verify'),
(9, 'Passanger', 'Casey Kent Emmanuel', 'Ormesa', 'Salonga', 'Bangbang', 'Carmen Subdivision', 'Bocaue ', 'Bulacan', '09369152580', 'caseykeos352@gmail.com', 'casey352', 'not verify'),
(10, 'Passanger', 'Kenneth Angelo ', 'Parungao ', 'Devera', 'Virgen Delas Flores', 'Villa Masanori, Aldama ', 'Baliwag', 'Bulacan', ' 0939569725', 'deverakenneth21@gmail.com', 'kenneth21', 'not verify'),
(11, 'Passanger ', 'Caryl Rociel ', 'Corpuz ', 'Santigo ', 'Sto. Cristo', 'RE Chico', 'Baliwag ', 'Bulacan', ' 0933181888', 'carylsntg@gmail.com', 'caryl21', 'not verify'),
(13, 'Passanger ', 'Sheralyn', 'Isidro', 'Santos ', 'Pantubig', 'Bartolome', 'San rafael ', 'Bulacan ', '09155860256', 'sheralyn0505@gmail.com', 'sheshe06', 'not verify'),
(21, 'admin', 'admin', 'admin', 'admin', 'na', 'na', 'na', 'na', 'na', 'adminaccount', 'test1234', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
