-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 05:57 AM
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
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `bookingID` int(11) NOT NULL,
  `usersID` int(10) NOT NULL,
  `startingPoint` varchar(199) NOT NULL,
  `dropOff` varchar(199) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`bookingID`, `usersID`, `startingPoint`, `dropOff`, `date`) VALUES
(1, 6, 'Baliwag', 'San Rafael', '2023-04-20 17:10:02'),
(2, 7, 'Malolos', 'Baliwag', '2023-04-20 17:10:02'),
(3, 8, 'Baliwag ', 'SM North', '2023-04-20 17:10:02'),
(4, 9, 'SM North', 'Mall of Asia', '2023-04-20 17:10:02'),
(5, 10, 'Caloocan', 'Valenzuela ', '2023-04-20 17:10:02'),
(6, 11, 'Pasig ', 'Makati', '2023-04-20 17:10:02'),
(7, 13, 'BGC ', 'Bulacan', '2023-04-20 17:10:02'),
(8, 6, 'Caloocan ', 'Makati', '2023-04-20 17:10:02'),
(9, 7, 'Pandi', 'Baliwag', '2023-04-20 17:10:02'),
(10, 8, 'Taytay Rizal', 'Malolos', '2023-04-20 17:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblcardetails`
--

CREATE TABLE `tblcardetails` (
  `cardetailsID` int(11) NOT NULL,
  `driverID` int(10) NOT NULL,
  `plateNumber` varchar(50) NOT NULL,
  `type` varchar(199) NOT NULL,
  `seat` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcardetails`
--

INSERT INTO `tblcardetails` (`cardetailsID`, `driverID`, `plateNumber`, `type`, `seat`) VALUES
(23, 5, 'BK 1023', 'Van', 'Right'),
(24, 1, 'HW 5531', 'SUV ', 'Right'),
(25, 3, 'KK 1111', 'Minivan', 'Left'),
(26, 8, 'CDB 643', 'Minivan', 'Middle'),
(27, 9, 'UBT 465', 'SUV', 'Front'),
(28, 4, 'CJA 910', 'Universal', 'Middle'),
(29, 7, 'TTC 381', 'Van ', 'Back'),
(30, 6, 'GPE 277', 'Minivan', 'Middle'),
(31, 2, 'ABC 3158', 'Universal', 'Front'),
(32, 4, 'WPZ 225', 'SUV', 'Back');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `driverID` int(11) NOT NULL,
  `usersID` int(10) NOT NULL,
  `licenseNumber` varchar(50) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`driverID`, `usersID`, `licenseNumber`, `wallet`, `balance`) VALUES
(1, 6, 'N03-12-123456', '500.00', '250.00'),
(2, 7, 'N04-85-849532', '1000.00', '350.00'),
(3, 8, 'N03-12-715369', '400.00', '85.00'),
(4, 9, 'N03-42-179358', '800.00', '365.00'),
(5, 10, 'N01-79-852465', '592.00', '478.50'),
(6, 11, 'N03-91-485624', '751.25', '412.22'),
(7, 13, 'N03-78-026456', '485.00', '395.50'),
(8, 6, 'N03-12-753692', '842.00', '755.00'),
(9, 7, 'N03-41-229677', '541.25', '332.50'),
(10, 8, 'N05-78-632415', '625.20', '442.20');

-- --------------------------------------------------------

--
-- Table structure for table `tblfare`
--

CREATE TABLE `tblfare` (
  `fareID` int(11) NOT NULL,
  `bookingID` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfare`
--

INSERT INTO `tblfare` (`fareID`, `bookingID`, `amount`) VALUES
(1, 1, '250.00'),
(2, 8, '100.00'),
(3, 3, '50.00'),
(4, 4, '250.00'),
(5, 7, '200.00'),
(6, 10, '300.00'),
(7, 6, '150.00'),
(8, 9, '100.00'),
(9, 5, '150.00'),
(10, 2, '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `feedbackID` int(11) NOT NULL,
  `usersID` int(10) NOT NULL,
  `comment` varchar(199) NOT NULL,
  `rate` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`feedbackID`, `usersID`, `comment`, `rate`) VALUES
(1, 6, 'Malinis', '10 out of 10'),
(2, 11, 'Hindi nakahihilo', '9 out of 10'),
(3, 8, 'Safe drive po', '10 out of 10'),
(4, 13, 'Malakas ung aircon', '10 out of 10'),
(5, 10, 'Magaganda soundtrip', '8 out of 10'),
(6, 11, 'Mabait si kuya driver', '9 out of 10'),
(7, 9, 'Safe mag drive kahit mabilis hindi ako nalate', '9 out of 10'),
(8, 7, 'On time ako na pickup', '10 out of 10'),
(9, 5, 'Mabait si kuya driver', '9 out of 10'),
(10, 6, 'Masungit si kuya driver', '3 out of 10');

-- --------------------------------------------------------

--
-- Table structure for table `tblpassanger`
--

CREATE TABLE `tblpassanger` (
  `passangerID` int(11) NOT NULL,
  `usersID` int(10) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpassanger`
--

INSERT INTO `tblpassanger` (`passangerID`, `usersID`, `wallet`, `balance`) VALUES
(1, 6, '500.00', '250.00'),
(2, 8, '1000.00', '350.00'),
(3, 9, '400.00', '85.00'),
(4, 13, '800.00', '365.00'),
(5, 9, '592.00', '478.50'),
(6, 10, '751.25', '412.22'),
(7, 9, '485.00', '395.50'),
(8, 11, '842.00', '755.00'),
(9, 13, '541.25', '332.50'),
(10, 9, '625.20', '442.20');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `paymentID` int(11) NOT NULL,
  `fareID` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`paymentID`, `fareID`, `amount`, `status`) VALUES
(1, 1, '250.00', 'Pending'),
(2, 2, '100.00', 'Successful'),
(3, 3, '50.00', 'Successful'),
(4, 4, '250.00', 'Succcessful'),
(5, 5, '200.00', 'Pending'),
(6, 6, '300.00', 'Successful'),
(7, 7, '150.00', 'Successful'),
(8, 8, '100.00', 'Pending'),
(9, 9, '150.00', 'Pending'),
(10, 10, '80.00', 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `tblroute`
--

CREATE TABLE `tblroute` (
  `routeID` int(11) NOT NULL,
  `bookingID` int(10) NOT NULL,
  `startingPoint` varchar(199) NOT NULL,
  `dropOff` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblroute`
--

INSERT INTO `tblroute` (`routeID`, `bookingID`, `startingPoint`, `dropOff`) VALUES
(1, 1, 'Baliwag', 'San rafael'),
(2, 3, 'Baliwag ', 'Malolos'),
(3, 7, 'Makati', 'Caloocan'),
(4, 8, 'Caloocan ', 'Bulacan'),
(5, 9, 'Valenzuela', 'Pandi'),
(6, 6, 'Pasig', 'Valenzuela'),
(7, 10, 'Rizal ', 'Bulacan'),
(8, 10, 'Rizal', 'SM North'),
(9, 4, 'Mall of Asia ', 'SM North'),
(10, 7, 'Caloocan ', 'Bulacan');

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
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `usersID` (`usersID`);

--
-- Indexes for table `tblcardetails`
--
ALTER TABLE `tblcardetails`
  ADD PRIMARY KEY (`cardetailsID`),
  ADD KEY `driverID` (`driverID`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`driverID`),
  ADD KEY `usersID` (`usersID`);

--
-- Indexes for table `tblfare`
--
ALTER TABLE `tblfare`
  ADD PRIMARY KEY (`fareID`),
  ADD KEY `bookingID` (`bookingID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`feedbackID`),
  ADD KEY `usersID` (`usersID`);

--
-- Indexes for table `tblpassanger`
--
ALTER TABLE `tblpassanger`
  ADD PRIMARY KEY (`passangerID`),
  ADD KEY `usersID` (`usersID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `fareID` (`fareID`);

--
-- Indexes for table `tblroute`
--
ALTER TABLE `tblroute`
  ADD PRIMARY KEY (`routeID`),
  ADD KEY `bookingID` (`bookingID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcardetails`
--
ALTER TABLE `tblcardetails`
  MODIFY `cardetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `driverID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblfare`
--
ALTER TABLE `tblfare`
  MODIFY `fareID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `feedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpassanger`
--
ALTER TABLE `tblpassanger`
  MODIFY `passangerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblroute`
--
ALTER TABLE `tblroute`
  MODIFY `routeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD CONSTRAINT `tblbooking_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `user` (`usersID`);

--
-- Constraints for table `tblcardetails`
--
ALTER TABLE `tblcardetails`
  ADD CONSTRAINT `tblcardetails_ibfk_1` FOREIGN KEY (`driverID`) REFERENCES `tbldriver` (`driverID`);

--
-- Constraints for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD CONSTRAINT `tbldriver_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `user` (`usersID`);

--
-- Constraints for table `tblfare`
--
ALTER TABLE `tblfare`
  ADD CONSTRAINT `tblfare_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `tblbooking` (`bookingID`);

--
-- Constraints for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD CONSTRAINT `tblfeedback_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `user` (`usersID`);

--
-- Constraints for table `tblpassanger`
--
ALTER TABLE `tblpassanger`
  ADD CONSTRAINT `tblpassanger_ibfk_1` FOREIGN KEY (`usersID`) REFERENCES `user` (`usersID`);

--
-- Constraints for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD CONSTRAINT `tblpayment_ibfk_1` FOREIGN KEY (`fareID`) REFERENCES `tblfare` (`fareID`);

--
-- Constraints for table `tblroute`
--
ALTER TABLE `tblroute`
  ADD CONSTRAINT `tblroute_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `tblbooking` (`bookingID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
