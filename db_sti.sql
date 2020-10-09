-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2016 at 09:46 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sti`
--
CREATE DATABASE IF NOT EXISTS `db_sti` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_sti`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `code`, `title`) VALUES
(6, 'BITD', 'Bachelor in Information Technology Database'),
(7, 'BITM', 'Bachelor in Information Technology Multimedia'),
(8, 'BITC', 'Bachelor in Information Technology Networking'),
(9, 'BITS', 'Bachelor in Information Technology Software'),
(10, 'BITZ', 'Bachelor in Information Technology Security');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `gen_ave` varchar(30) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `unit` int(11) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=701 ;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `student_id`, `subject_id`, `gen_ave`, `school_year`, `semester`, `remarks`, `unit`) VALUES
(663, 51, 131, '1.50', 'First Year', '1st', 'Fair', 3),
(664, 51, 132, '1.50', 'First Year', '1st', 'Fair', 3),
(665, 51, 133, '1.25', 'First Year', '1st', 'Fair', 3),
(666, 51, 134, '1.25', 'First Year', '1st', 'Fair', 4),
(667, 51, 135, '1.25', 'First Year', '1st', 'Fair', 1),
(668, 51, 136, '4.00', 'First Year', '1st', 'Excellent', 3),
(669, 51, 137, '3.00', 'First Year', '1st', 'Very Good', 2),
(670, 51, 138, '1.00', 'First Year', '1st', 'Failed', 3),
(671, 23, 163, '1.00', 'First Year', '2nd', 'Excellent', 3),
(672, 23, 164, '1.00', 'First Year', '2nd', 'Excellent', 4),
(673, 23, 165, '1.00', 'First Year', '2nd', 'Excellent', 4),
(674, 23, 166, '1.00', 'First Year', '2nd', 'Excellent', 3),
(675, 23, 168, '1.00', 'First Year', '2nd', 'Excellent', 3),
(676, 23, 169, '1.00', 'First Year', '2nd', 'Excellent', 2),
(677, 23, 170, '1.00', 'First Year', '2nd', 'Excellent', 3),
(678, 26, 164, '1.00', 'First Year', '2nd', 'Excellent', 4),
(679, 26, 132, '1.00', 'First Year', '2nd', 'Excellent', 3),
(680, 22, 179, '2.25', 'First Year', '1st', 'Satisfactory', 3),
(681, 52, 161, '1.00', 'First Year', '2nd', 'Failed', 2),
(682, 52, 162, '2.00', 'First Year', '2nd', 'Satisfactory', 3),
(683, 52, 219, '2.75', 'Second Year', '2nd', 'Fair', 3),
(684, 52, 220, '2.75', 'Second Year', '2nd', 'Fair', 3),
(685, 52, 221, '3.00', 'Second Year', '2nd', 'Fair', 3),
(686, 52, 222, '3.00', 'Second Year', '2nd', 'Fair', 3),
(687, 52, 223, '3.00', 'Second Year', '2nd', 'Fair', 3),
(688, 53, 205, '2.00', 'First Year', '1st', 'Satisfactory', 3),
(689, 53, 206, '1.75', 'First Year', '1st', 'Very Good', 3),
(690, 53, 207, '1.25', 'First Year', '1st', 'Very Good', 3),
(691, 5, 220, '3.00', 'Second Year', '2nd', 'Fair', 3),
(692, 5, 221, '2.25', 'Second Year', '2nd', 'Satisfactory', 3),
(693, 5, 223, '2.75', 'Second Year', '2nd', 'Fair', 3),
(694, 2, 205, '3.00', 'First Year', '1st', 'Fair', 3),
(695, 2, 206, '3.00', 'First Year', '1st', 'Fair', 3),
(696, 2, 207, '4.00', 'First Year', '1st', 'Excellent', 3),
(697, 2, 208, '3.00', 'First Year', '1st', 'Fair', 3),
(698, 8, 205, '2.00', 'First Year', '1st', 'Satisfactory', 3),
(699, 8, 206, '2.75', 'First Year', '1st', 'Fair', 3),
(700, 8, 208, '1.25', 'First Year', '1st', 'Very Good', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `icnumber` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `muet` varchar(100) NOT NULL,
  `fees` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `student_no` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `student_status` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `firstname`, `lastname`, `icnumber`, `password`, `gender`, `course`, `address`, `muet`, `fees`, `contact`, `photo`, `student_no`, `status`, `year_level`, `term`, `student_status`) VALUES
(1, 'Muhd', 'Rohaidi', '941215105673', 'abc', 'male', 'BITS', 'melaka', 'Band 2', 'Paid', '0142345132', 'upload/IMG_20150729_172507.jpg', 'B031510039', 'active', 'Fourth Year', '2nd', 'Regular'),
(2, 'othman', 'yusof', '0', 'abc', 'male', 'BITS', 'dungun', 'Band 2', 'Paid', '139383903', 'upload/IMG_20150729_151511.jpg', 'B031210060', 'active', 'First Year', '1st', 'Regular'),
(3, 'azan', 'azhar', '0', 'abc', 'male', 'BITM', 'perak', 'Band 2', 'Paid', '147191036', 'upload/IMG_20150729_151647.jpg', 'B031510030', 'active', 'First Year', '2nd', 'Regular'),
(4, 'Meor', 'Mat Ali', '941215105673', 'abc', 'male', 'BITM', 'melaka', 'Band 2', 'Paid', '139383903', 'upload/IMG_20150729_172507.jpg', 'B031510442', 'active', 'First Year', '1st', 'Regular'),
(5, 'Amizah Aida', 'Ahmad', '940909086660', 'abc123', 'female', 'BITS', 'no 34', 'Band 3', 'Paid', '123507353', 'upload/183826_480575441987597_212968778_n.jpg', 'B031510056', 'active', 'Second Year', '2nd', 'Regular'),
(8, 'Amer', 'Aziem', '940909086661', 'abc', 'Male', 'BITS', 'melaka', 'Band 2', 'Unpaid', '0123507353', 'upload/kungfu panda.jpg', 'B031510339', 'active', 'First Year', '1st', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `year` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `pre_requisites` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=247 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `code`, `title`, `unit`, `year`, `term`, `pre_requisites`, `course_id`) VALUES
(205, 'BITS1113', 'Discrete Mathematics', '3', 'First Year', '1st', '', 9),
(206, 'BITS1123', 'Computer Orgaznization and Structure', '3', 'First Year', '1st', '', 9),
(207, 'BITP1113', 'Programming Technique', '3', 'First Year', '1st', '', 9),
(208, 'BITM1113', 'Multimedia System', '3', 'First Year', '1st', '', 9),
(209, 'BLHW2712', 'Ethnic Relations', '2', 'First Year', '2nd', '', 9),
(210, 'BITI1223', 'Kalculus', '3', 'First Year', '2nd', '', 9),
(211, 'BITP1323', 'Database', '3', 'First Year', '2nd', '', 9),
(212, 'BITP2213', 'Software Engineering', '3', 'First Year', '2nd', '', 9),
(213, 'BITP1123', 'Data Structure and Algorithm', '3', 'First Year', '2nd', '', 9),
(214, 'BITI2233', 'Statistic and Probability', '3', 'Second Year', '1st', '', 9),
(215, 'BITS1213', 'Operating System', '3', 'Second Year', '1st', '', 9),
(216, 'BITU2913', 'Workshop 1', '3', 'Second Year', '1st', '', 9),
(217, 'BITM2313', 'Human Computer Interaction', '3', 'Second Year', '1st', '', 9),
(218, 'BITP2113', 'Algorithm Analysis', '3', 'Second Year', '1st', '', 9),
(220, 'BITP2223', 'Software Requirement and Design', '3', 'Second Year', '2nd', '', 9),
(221, 'BITP3253', 'Software Verification and Validation', '3', 'Second Year', '2nd', '', 9),
(222, 'BITP3113', 'Object Oriented Programming', '3', 'Second Year', '2nd', '', 9),
(223, 'BLHW2403', 'Technical English', '3', 'Second Year', '2nd', '', 9),
(224, 'BITU3923', 'Workshop 2', '3', 'Third Year', '1st', '', 9),
(225, 'BITP3123', 'Distributed Application Development', '3', 'Third Year', '1st', '', 9),
(226, 'BITP3223', 'Software Project Management', '3', 'Third Year', '1st', '', 9),
(227, 'BITS3423', 'Information Technology Security', '3', 'Third Year', '1st', '', 9),
(228, 'BTMW4012', 'Technology Entrepreneurship', '3', 'Third Year', '2nd', '', 9),
(229, 'BITU3973', 'Final Year Project 1', '3', 'Third Year', '2nd', '', 9),
(230, 'BITP3423', 'Special Topic in Software Engineering', '3', 'Third Year', '2nd', '', 9),
(231, 'BITP3433', 'Mobile Application Development', '3', 'Third Year', '2nd', '', 9),
(232, 'BITU3983', 'Final Year Project 2', '3', 'Fourth Year', '1st', '', 9),
(233, 'BITU3926', 'Industrial Training', '6', 'Fourth Year', '2nd', '', 9),
(234, 'BITU3946', 'Industrial Training Report', '6', 'Fourth Year', '2nd', '', 9),
(235, 'BLHW1702', 'TITAS', '2', 'First Year', '1st', '', 8),
(236, 'BLHW2712', 'Ethnic Relations', '2', 'First Year', '1st', '', 8),
(237, 'BITI1213', 'Linear Algebra', '3', 'First Year', '1st', '', 8),
(238, 'BITP1113', 'Programming Technique', '3', 'First Year', '1st', '', 8),
(239, 'BITM1113', 'Multimedia System', '3', 'First Year', '1st', '', 8),
(240, 'BITS1123', 'Computer Organization', '3', 'First Year', '1st', '', 8),
(241, 'BLHW2403', 'Technical English', '3', 'First Year', '2nd', '', 8),
(242, 'BITI1223', 'Calculus and Numerical Method', '3', 'First Year', '2nd', '', 8),
(243, 'BITP1123', 'Data Structure and Algorithm', '3', 'First Year', '2nd', 'BITP1113', 8),
(244, 'BITS1313', 'Data Communication', '3', 'First Year', '2nd', '', 8),
(245, 'BITM2323', 'Human Computer Interaction', '3', 'First Year', '2nd', '', 8),
(246, 'BITP1323', 'Database', '3', 'First Year', '2nd', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `user_type`) VALUES
(2, 'Staff', 's', 'Maries', 'Santillan', 'admin'),
(3, 'Registrar', 'reg', 'Mealyn', 'Tabujara', 'Registrar'),
(5, 'admin', 'admin', 'admin', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
