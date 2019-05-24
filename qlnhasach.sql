-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2018 at 03:59 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlnhasach`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Edition` int(11) NOT NULL,
  `Author` varchar(256) NOT NULL,
  `Price` int(11) NOT NULL,
  `Pages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `Name`, `Edition`, `Author`, `Price`, `Pages`) VALUES
(1, 'Ngon Tinh', 1, 'Alya', 100, 1200),
(2, 'Tinh Ma', 2, 'Thinh', 466, 2000),
(3, 'kiem hiep', 2, 'Hame', 500, 2000),
(4, 'Tình C?m', 2, 'Alex', 1598, 2891),
(5, 'Hài', 1, 'Châu Tinh Trì', 600, 890),
(6, 'Trinh Thám', 1, 'Luai Emerry', 45, 1223),
(7, 'Cuoc Song Do Day', 7, 'Neymar JR', 1001, 556);

-- --------------------------------------------------------

--
-- Table structure for table `borrowbook`
--

CREATE TABLE `borrowbook` (
  `Student_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Date_Borrow` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrowbook`
--

INSERT INTO `borrowbook` (`Student_ID`, `Book_ID`, `Date_Borrow`) VALUES
(1, 2, '18-12-2018'),
(3, 1, '18-12-2018'),
(3, 6, '18-12-2018');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `username` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Sec_Q` varchar(255) NOT NULL,
  `answer` varchar(256) NOT NULL,
  `Positon` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`username`, `name`, `password`, `Sec_Q`, `answer`, `Positon`) VALUES
('anh', 'Nguyen Ngoc Anh', '123456', 'What is your school name?', 'uit', 'NV'),
('thinh', 'Nguyen Viet Thinh', '12345', 'What is your idol name?', 'GD', 'Ad'),
('tuan', 'Nguyen Quoc Tuan', '12345', 'What is your school name?', 'uit', 'NV'),
('Viet', 'Le Hoang Viet', '12356', 'What is your Pet name?', 'cc', 'NV'),
('vinh', 'khanh vinh', '12356', 'What is your school name?', 'uit', 'NV');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `ID_RB` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `Date_Return` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`ID_RB`, `Student_ID`, `Book_ID`, `Date_Return`) VALUES
(3, 1, 3, '18-12-2018'),
(5, 1, 5, '18-12-2018'),
(6, 1, 4, '18-12-2018'),
(7, 1, 1, '25-12-2018');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Branch` varchar(256) NOT NULL,
  `Year` varchar(256) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Name`, `Branch`, `Year`, `Semester`) VALUES
(1, 'An', 'HTTT', 'K10', 2),
(3, 'Thuyen', 'CNTT', 'K12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `borrowbook`
--
ALTER TABLE `borrowbook`
  ADD PRIMARY KEY (`Student_ID`,`Book_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`ID_RB`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `ID_RB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
