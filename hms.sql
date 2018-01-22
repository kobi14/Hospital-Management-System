-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2018 at 08:04 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `aas`
--

CREATE TABLE `aas` (
  `ss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aas`
--

INSERT INTO `aas` (`ss`) VALUES
(12),
(12);

-- --------------------------------------------------------

--
-- Table structure for table `Admin_det`
--

CREATE TABLE `Admin_det` (
  `Admin_Id` int(12) NOT NULL,
  `User_Name` varchar(12) NOT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Admin_det`
--

INSERT INTO `Admin_det` (`Admin_Id`, `User_Name`, `Password`) VALUES
(1, 'kobi', 'kobi');

-- --------------------------------------------------------

--
-- Table structure for table `doc_details`
--

CREATE TABLE `doc_details` (
  `doc_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `City` varchar(10) NOT NULL,
  `Phone_No` int(10) NOT NULL,
  `NIC` varchar(11) NOT NULL,
  `Consultant` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_details`
--

INSERT INTO `doc_details` (`doc_id`, `Name`, `Gender`, `Specialization`, `City`, `Phone_No`, `NIC`, `Consultant`) VALUES
(3, 'sd', 'Select', 'Null', 'sd', 12, '', 'Null'),
(4, 'kobi', 'Male', 'Cardiologist', 'chava', 774257747, '951963v', 'No'),
(5, 'anga', 'Male', 'Cardiologist', 'chava', 777, '951', 'No'),
(6, 'kobik', 'Male', 'Cardiologist', 'chava', 774257747, '9519630v', 'Yes'),
(7, 'abi', 'Female', 'Null', 'Colombo', 777123456, '1234567V', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `LabAssistants_det`
--

CREATE TABLE `LabAssistants_det` (
  `Ass_Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Age` int(12) NOT NULL,
  `Gender` varchar(12) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Phone_No` int(12) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LabAssistants_det`
--

INSERT INTO `LabAssistants_det` (`Ass_Id`, `Name`, `Age`, `Gender`, `City`, `Phone_No`, `User_Name`, `Password`) VALUES
(1, 'ooo', 12, 'Male', 'eeee', 0, 'lab', '123'),
(3, 'ooo', 12, 'Male', 'eeee', 0, 'lab5', '123'),
(4, 'Dr', 34, 'Male', 'Chava', 777, 'dr', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(12) NOT NULL,
  `pass` varchar(12) NOT NULL,
  `id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `MaintenanceStaff_det`
--

CREATE TABLE `MaintenanceStaff_det` (
  `Staff_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Age` int(12) NOT NULL,
  `Gender` varchar(12) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Phone_No` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MaintenanceStaff_det`
--

INSERT INTO `MaintenanceStaff_det` (`Staff_id`, `Name`, `Age`, `Gender`, `City`, `Phone_No`) VALUES
(1, 'kobi', 12, 'Male', 'ko', 0),
(2, 'Siri', 23, 'Female', 'Townhall', 77);

-- --------------------------------------------------------

--
-- Table structure for table `Nurses_det`
--

CREATE TABLE `Nurses_det` (
  `Nur_id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Age` int(12) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Phone_No` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Nurses_det`
--

INSERT INTO `Nurses_det` (`Nur_id`, `Name`, `Age`, `Gender`, `City`, `Phone_No`) VALUES
(2, 'kobi', 12, 'Male', 'chava', 0),
(3, 'Vithu', 22, 'Male', 'Colombo', 777123456);

-- --------------------------------------------------------

--
-- Table structure for table `patients_details`
--

CREATE TABLE `patients_details` (
  `patient_id` int(12) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Age` int(12) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Ward_type` varchar(40) NOT NULL,
  `Ward_No` varchar(12) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Contect_No` int(20) NOT NULL,
  `Reson` varchar(50) NOT NULL,
  `Recommend` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients_details`
--

INSERT INTO `patients_details` (`patient_id`, `Name`, `Age`, `Gender`, `Ward_type`, `Ward_No`, `City`, `Contect_No`, `Reson`, `Recommend`) VALUES
(4, 'anga', 20, 'Male', 'Orthopaedic Surgeon', '11', 'chavaa', 555, 'no', 'Dr'),
(5, 'Logi', 22, 'Male', 'Cardiologist', '12', 'Colombo', 774257747, 'fever', 'Dr.Siri');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pat_name` varchar(12) NOT NULL,
  `payment` int(12) NOT NULL,
  `pat_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pat_name`, `payment`, `pat_id`) VALUES
('kobi', 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Register_det`
--

CREATE TABLE `Register_det` (
  `Reg_Id` int(12) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(12) NOT NULL,
  `Gender` varchar(12) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Phone_No` int(12) NOT NULL,
  `User_Name` varchar(12) NOT NULL,
  `Password` char(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Register_det`
--

INSERT INTO `Register_det` (`Reg_Id`, `Name`, `Age`, `Gender`, `City`, `Phone_No`, `User_Name`, `Password`) VALUES
(1, 'loga', 12, 'Select ', 'chava', 0, 'kobi', 'kobi'),
(2, 'hello', 22, 'Male', 'chava', 77, 'hello', '123');

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE `test_result` (
  `p_name` varchar(12) NOT NULL,
  `test_type` varchar(12) NOT NULL,
  `result` varchar(30) NOT NULL,
  `id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`p_name`, `test_type`, `result`, `id`) VALUES
('kobi', 'test 1', 'done', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin_det`
--
ALTER TABLE `Admin_det`
  ADD PRIMARY KEY (`Admin_Id`),
  ADD UNIQUE KEY `User_Name` (`User_Name`);

--
-- Indexes for table `doc_details`
--
ALTER TABLE `doc_details`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `LabAssistants_det`
--
ALTER TABLE `LabAssistants_det`
  ADD PRIMARY KEY (`Ass_Id`),
  ADD UNIQUE KEY `User_Name` (`User_Name`);

--
-- Indexes for table `MaintenanceStaff_det`
--
ALTER TABLE `MaintenanceStaff_det`
  ADD PRIMARY KEY (`Staff_id`);

--
-- Indexes for table `Nurses_det`
--
ALTER TABLE `Nurses_det`
  ADD PRIMARY KEY (`Nur_id`);

--
-- Indexes for table `patients_details`
--
ALTER TABLE `patients_details`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `pat_id` (`pat_id`);

--
-- Indexes for table `Register_det`
--
ALTER TABLE `Register_det`
  ADD PRIMARY KEY (`Reg_Id`),
  ADD UNIQUE KEY `User_name` (`User_Name`);

--
-- Indexes for table `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin_det`
--
ALTER TABLE `Admin_det`
  MODIFY `Admin_Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `doc_details`
--
ALTER TABLE `doc_details`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `LabAssistants_det`
--
ALTER TABLE `LabAssistants_det`
  MODIFY `Ass_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `MaintenanceStaff_det`
--
ALTER TABLE `MaintenanceStaff_det`
  MODIFY `Staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Nurses_det`
--
ALTER TABLE `Nurses_det`
  MODIFY `Nur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `patients_details`
--
ALTER TABLE `patients_details`
  MODIFY `patient_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Register_det`
--
ALTER TABLE `Register_det`
  MODIFY `Reg_Id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
