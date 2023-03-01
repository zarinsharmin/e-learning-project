-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2020 at 10:16 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin', 'admin313@gmail.com', 'Admin123');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8mb4_bin NOT NULL,
  `course_desc` text COLLATE utf8mb4_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `course_img` text COLLATE utf8mb4_bin NOT NULL,
  `course_duration` text COLLATE utf8mb4_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(2, 'Python For Everybody', 'This course aims to teach everyone the basics of programming computers using Python. We cover the basics of how one constructs a program from a series of simple instructions in Python.', 'Zarin Sharmin', '../img/courseimage/py.jpg', '2 Months', 20, 2000),
(3, 'C++ For Beginners', 'This course aims to teach everyone the basics of programming computers using C++. We cover the basics of how one constructs a program from a series of simple instructions in C++.', 'Anik Das', '../img/courseimage/cplus.jpg', '100 Days', 30, 3000),
(4, 'Introduction to C', 'This course aims to teach everyone the basics of programming computers using C. We cover the basics of how one constructs a program from a series of simple instructions in C.', 'Zarin Sharmin', '../img/courseimage/Cpro.jpg', '1 Months', 10, 1000),
(5, 'The Complete JavaScript Course', 'Welcome to Complete JavaScript Course. In this Course you will learn Complete JavaScript.', 'Anik Das', '../img/courseimage/js.jpg', '4 Months', 45, 4500),
(6, 'MATLAB Master Class', 'Welcome to MATLAB Course. By doing this course you will became masterclass in MATLAB.', 'Zarin Sharmin', '../img/courseimage/mt.jpg', '4 Months', 50, 5000),
(7, 'Data Structure', 'Welcome to Data Structure Course. In this Course you will learn Data Structure completely.', 'Anik Das', '../img/courseimage/ds.jpg', '1 Months', 9, 99),
(8, 'Java Complete OOP', 'Welcome to the java course', 'Zarin Sharmin', '../img/courseimage/java.jpg', '4 Months', 30, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `respmsg` text COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8mb4_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(1, 'This is my feedback', 10),
(2, 'I will not give any kind of feedback', 9),
(3, 'This is my feedback', 12);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8mb4_bin NOT NULL,
  `lesson_desc` text COLLATE utf8mb4_bin NOT NULL,
  `lesson_link` text COLLATE utf8mb4_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(3, 'Introduction', 'This is an intro video of Python', '../lessonvid/index.mp4', 2, 'Python For Everybody'),
(4, 'Introduction to Python', 'Welcome to Python programming', '../lessonvid/index (1).mp4', 2, 'Python For Everybody'),
(5, 'Introduction to MATLAB', 'This is an intro video', '../lessonvid/1. Course Introduction.mp4', 6, 'MATLAB Master Class'),
(6, 'Introduction', 'This is an Intro video', '../lessonvid/Java Bangla Tutorials 1 - Introduction to Java.mp4', 8, 'Java Complete OOP');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `stu_img` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(9, 'Anik Das', 'anik003@gmail.com', 'Anik123', 'Student', '../img/stu/ad.jpg'),
(10, 'Zarin Sharmin', 'zerry99@gmail.com', 'Zarin123', 'Student', '../img/stu/st1.jpg'),
(12, 'Joy', 'joy99@gmail.com', 'Joy123', 'Student', '../img/stu/jj.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
