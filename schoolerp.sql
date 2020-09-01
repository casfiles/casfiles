-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2020 at 01:05 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
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
-- Database: `schoolerp`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_admins`
--

CREATE TABLE `app_admins` (
  `id` int NOT NULL,
  `email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` text NOT NULL,
  `name` varchar(500) NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_admins`
--

INSERT INTO `app_admins` (`id`, `email`, `password`, `name`, `status`) VALUES
(1, 'hardeep.kumar@yopmail.com', '7ab515d12bd2cf431745511ac4ee13fed15ab578', 'Hardeep Kumar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_cas`
--

CREATE TABLE `app_cas` (
  `id` int NOT NULL,
  `parent_id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_by` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_cas`
--

INSERT INTO `app_cas` (`id`, `parent_id`, `title`, `slug`, `description`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(7, 0, 'SERVICE CAS', 'SERVICE-CAS', 'This is the sample description of the cas activities', 'active', 1, '2020-08-31 17:41:11', 1, '0000-00-00 00:00:00'),
(9, 7, 'TEACHING', 'TEACHING', 'This is the sample description of the text', 'active', 1, '2020-08-31 18:06:15', 1, '0000-00-00 00:00:00'),
(10, 0, 'Creativity CAS', 'Creativity-CAS', '', 'active', 1, '2020-08-31 19:23:32', 0, NULL),
(11, 0, 'ACTIVITY CAS', 'ACTIVITY-CAS', '', 'active', 1, '2020-08-31 19:23:41', 0, NULL),
(12, 0, 'STUDENT JOB CAS', 'STUDENT-JOB-CAS', '', 'active', 1, '2020-08-31 19:23:50', 0, NULL),
(13, 7, 'MATH TUTOR', 'MATH-TUTOR', '', 'active', 1, '2020-08-31 19:24:31', 0, NULL),
(14, 10, 'CODING', 'CODING', '', 'active', 1, '2020-08-31 19:24:44', 0, NULL),
(15, 10, 'PROGRAMMING', 'PROGRAMMING', '', 'active', 1, '2020-08-31 19:24:53', 0, NULL),
(16, 10, 'DEVELOPMENT', 'DEVELOPMENT', '', 'active', 1, '2020-08-31 19:25:01', 0, NULL),
(17, 11, 'FOOTBAL', 'FOOTBAL', '', 'active', 1, '2020-08-31 19:25:16', 0, NULL),
(18, 11, 'CRICKET', 'CRICKET', '', 'active', 1, '2020-08-31 19:25:24', 0, NULL),
(19, 11, 'BASKETBALL', 'BASKETBALL', '', 'active', 1, '2020-08-31 19:25:32', 0, NULL),
(20, 12, 'LIBRARY', 'LIBRARY', '', 'active', 1, '2020-08-31 19:25:48', 0, NULL),
(21, 12, 'HIKING', 'HIKING', '', 'active', 1, '2020-08-31 19:25:55', 0, NULL),
(22, 11, 'design', 'design', 'sdvsd sd', 'active', 1, '2020-09-01 06:10:20', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_cas_submissions`
--

CREATE TABLE `app_cas_submissions` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `cas_groups` text NOT NULL,
  `cas_groups_items` text NOT NULL,
  `submitted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_cas_submissions`
--

INSERT INTO `app_cas_submissions` (`id`, `student_id`, `cas_groups`, `cas_groups_items`, `submitted_on`) VALUES
(2, 2, '7,10,11,12', '9,14,17,20', '2020-08-31 19:49:29'),
(3, 2, '7,10,11,12', '9,14,17,20', '2020-08-31 19:49:30'),
(4, 2, '7,10,11,12', '9,14,17,20', '2020-08-31 19:49:31'),
(5, 2, '7,10,11,12', '9,14,17,20', '2020-08-31 19:49:31'),
(6, 2, '7,10,11,12', '9,14,17,20', '2020-08-31 19:50:52'),
(7, 2, '7,10,11,12', '9,14,17,20', '2020-08-31 19:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `app_departments`
--

CREATE TABLE `app_departments` (
  `id` int NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_by` int NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_departments`
--

INSERT INTO `app_departments` (`id`, `title`, `slug`, `description`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(3, 'Sports', 'Sports', 'This is the sample description of the sports', 'active', 1, '2020-08-31 14:38:57', 1, '0000-00-00 00:00:00'),
(5, 'Test department', 'Test-department', 'dkfbjdfbvjdfvjdbv', 'active', 1, '2020-08-31 15:40:48', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_students`
--

CREATE TABLE `app_students` (
  `id` int NOT NULL,
  `profile_picture` text NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `gender` enum('male','female','other') NOT NULL DEFAULT 'male',
  `age` int NOT NULL,
  `contact_number` text NOT NULL,
  `address` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `is_activated` tinyint NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_on` timestamp NOT NULL,
  `updated_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_students`
--

INSERT INTO `app_students` (`id`, `profile_picture`, `username`, `email`, `password`, `first_name`, `last_name`, `gender`, `age`, `contact_number`, `address`, `status`, `is_activated`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(2, '', '', 'manoj.thakur.programmer@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Manoj', 'Thakur', 'male', 33, '+918559058406', 'Solan,Himachal Pradesh', 'active', 1, '2020-08-31 18:24:55', 1, '0000-00-00 00:00:00', 2),
(3, '', '', 'manoj.programmer@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Manoj', 'Thakur', 'male', 0, '+918559058406', 'Solan,Himachal Pradesh', 'inactive', 0, '2020-08-31 20:58:57', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_teachers`
--

CREATE TABLE `app_teachers` (
  `id` int NOT NULL,
  `profile_picture` text NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `designation_id` int NOT NULL,
  `department_id` int NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `gender` enum('male','female','other') NOT NULL DEFAULT 'male',
  `age` int NOT NULL,
  `contact_number` text NOT NULL,
  `address` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `is_activated` tinyint NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int NOT NULL,
  `updated_on` timestamp NOT NULL,
  `updated_by` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_teachers`
--

INSERT INTO `app_teachers` (`id`, `profile_picture`, `username`, `email`, `password`, `designation_id`, `department_id`, `first_name`, `last_name`, `gender`, `age`, `contact_number`, `address`, `status`, `is_activated`, `created_on`, `created_by`, `updated_on`, `updated_by`) VALUES
(3, '', '', 'manoj.thakur.programmer@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 3, 'Manoj', 'Thakur', 'male', 30, '+918559058406', 'Solan,Himachal Pradesh', 'active', 1, '2020-08-31 17:00:47', 1, '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_admins`
--
ALTER TABLE `app_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_cas`
--
ALTER TABLE `app_cas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_cas_submissions`
--
ALTER TABLE `app_cas_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_departments`
--
ALTER TABLE `app_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_students`
--
ALTER TABLE `app_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_teachers`
--
ALTER TABLE `app_teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_admins`
--
ALTER TABLE `app_admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_cas`
--
ALTER TABLE `app_cas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app_cas_submissions`
--
ALTER TABLE `app_cas_submissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_departments`
--
ALTER TABLE `app_departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `app_students`
--
ALTER TABLE `app_students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `app_teachers`
--
ALTER TABLE `app_teachers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
