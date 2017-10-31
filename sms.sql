-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 30, 2017 at 07:43 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(16) NOT NULL,
  `adminID` int(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(45) NOT NULL,
  `classroom` varchar(45) NOT NULL,
  `slot` enum('A','B','C','D','E') NOT NULL,
  `totalClasses` int(11) NOT NULL DEFAULT '0',
  `possibleLeaves` int(11) DEFAULT '0',
  `credits` enum('3','4') NOT NULL,
  `considerInCGPA` enum('Y','N') DEFAULT 'N',
  `teacherID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseName`, `classroom`, `slot`, `totalClasses`, `possibleLeaves`, `credits`, `considerInCGPA`, `teacherID`) VALUES
(1, 'DAA', 'ELHC101', 'A', 40, 8, '4', 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loginAttempts`
--

CREATE TABLE `loginAttempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE `mess` (
  `messName` varchar(1) NOT NULL,
  `messType` enum('veg','non-veg') NOT NULL,
  `dailyCharges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`messName`, `messType`, `dailyCharges`) VALUES
('A', 'veg', 59),
('B', 'non-veg', 79);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `studentName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `department` varchar(45) NOT NULL,
  `birthDate` varchar(14) NOT NULL,
  `batch` varchar(45) NOT NULL,
  `registeredMess` varchar(45) DEFAULT NULL,
  `CGPA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `studentName`, `email`, `department`, `birthDate`, `batch`, `registeredMess`, `CGPA`) VALUES
(150020, 'Kiran', 'k@k.com', 'CSE', '221197', 'J', 'A', 7);

-- --------------------------------------------------------

--
-- Table structure for table `student_has_course`
--

CREATE TABLE `student_has_course` (
  `studentID` int(11) NOT NULL,
  `teacherID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `leavesTaken` int(11) DEFAULT NULL,
  `grade` enum('S','A','B','C','D','E','F','R') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_has_course`
--

INSERT INTO `student_has_course` (`studentID`, `teacherID`, `courseID`, `leavesTaken`, `grade`) VALUES
(150020, 1, 1, 3, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `student_taken_mess`
--

CREATE TABLE `student_taken_mess` (
  `studentID` int(11) NOT NULL,
  `messName` varchar(1) DEFAULT NULL,
  `month` enum('1','2','3','4','5','6','7','8','9','10','11','12') NOT NULL,
  `year` varchar(4) NOT NULL,
  `extraAmount` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_taken_mess`
--

INSERT INTO `student_taken_mess` (`studentID`, `messName`, `month`, `year`, `extraAmount`, `totalAmount`) VALUES
(150020, 'A', '1', '2017', 500, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacherID` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `teacherName` varchar(45) NOT NULL,
  `startDate` varchar(14) NOT NULL,
  `birthDate` varchar(14) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacherID`, `username`, `email`, `password`, `teacherName`, `startDate`, `birthDate`, `department`, `designation`) VALUES
(1, 'teach', 't@t.com', '1234', 'Sujith', '221185', '121380', 'CSE', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `adminID` (`adminID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `loginAttempts`
--
ALTER TABLE `loginAttempts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`messName`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `student_has_course`
--
ALTER TABLE `student_has_course`
  ADD KEY `studentID` (`studentID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `student_taken_mess`
--
ALTER TABLE `student_taken_mess`
  ADD KEY `messName` (`messName`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `studentID_2` (`studentID`),
  ADD KEY `studentID_3` (`studentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacherID`),
  ADD UNIQUE KEY `teacherID` (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginAttempts`
--
ALTER TABLE `loginAttempts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_teacherID` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `student_has_course`
--
ALTER TABLE `student_has_course`
  ADD CONSTRAINT `fk_` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_courseID` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_studentID` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `student_taken_mess`
--
ALTER TABLE `student_taken_mess`
  ADD CONSTRAINT `fk_messname` FOREIGN KEY (`messName`) REFERENCES `mess` (`messName`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON UPDATE CASCADE;
