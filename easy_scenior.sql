-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2022 at 06:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy_scenior`
--
CREATE DATABASE IF NOT EXISTS `easy_scenior` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `easy_scenior`;
-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `Heading` varchar(256) NOT NULL,
  `Paragraph` varchar(744) NOT NULL,
  `Image` text NOT NULL,
  PRIMARY KEY (`Heading`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`Heading`, `Paragraph`, `Image`) VALUES
('Join Easy Scenior, upgrade your skills, and learn from experts', 'Easy Senior is a platform for online coaching, where students come together not only to find someone who can tutor them and help with the concepts they\'re stuck on but also to sign up as a tutor themselves!', 'About welcome background.png'),
('Our Story', 'Our motivation behind pursuing this project lies in our belief in the fact that every student has his or her own pace of learning. In Pakistan especially, there is a common trend of going to tuition centers and academies in college, to cover the topics which their school/college couldn’t cover, and for extra studying. This leaves the students in the habit of always having a backup plan But after transitioning to universities, these students face trouble while adjusting, and thus resort to seeking help from seniors. So this is where Easy Senior comes in, connecting these students to their peers and seniors, who can guide them in the right direction.', ''),
('Top Instructors', 'Our platform provides highly qualified instructors and tutors. They are prepared, set clear and fair expectations, have a positive attitude, are patient with students, and assess their teaching on a regular basis.', 'About Top Instructor.svg'),
('Portable Program', 'We are providing a portable learning platform to students where they can take sessions whenever and from anywhere in the world.', 'About Portable Program.svg'),
('Improve Quickly', 'Easy Senior provides quality-based learning with engagement and motivation to students. Moreover, we maintain students’ attention by perking courses with interesting activities, So that they can excel in their careers.', 'About Improve Quickly.svg'),
('Layla El-Faouly', '', 'About owner (1).png'),
('Marc Specter', '', 'About owner (3).png'),
('Yelena Belova', '', 'About owner (2).png');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `blogid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `titleImage` varchar(700) NOT NULL,
  `desc1` text NOT NULL,
  `img1` varchar(740) NOT NULL,
  `desc2` text NOT NULL,
  `img2` varchar(740) NOT NULL,
  `likes` int(11) NOT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blogid`, `title`, `titleImage`, `desc1`, `img1`, `desc2`, `img2`, `likes`) VALUES
(1, 'Data Science and Machine Learning with Python ', 'Home Blog 1.png', '', '', '', '', 22),
(2, 'Strategies for a Successful Business', 'Home Blog 2.png', '', '', '', '', 100),
(3, 'Entry Test Tips and Tricks - Easy Hacks', 'Home Blog 3.png', '', '', '', '', 53);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `Image` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_ID`, `cat_name`, `Image`) VALUES
(1, 'Computer Science', 'Computer Science - category.svg'),
(2, 'Electrical Engineering', 'Electrical Engineering - category.svg'),
(3, 'Software Engineering', 'Software Engineering - category.svg'),
(4, 'Business Analytics', 'business Analytics - category.svg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
CREATE TABLE IF NOT EXISTS `contact_details` (
  `phone_no` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`phone_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`phone_no`, `email`, `address`) VALUES
(516754329, 'info@easyscenior.com', 'Office # 02, Block I, NUST');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_ID` int(11) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `price` int(11) NOT NULL,
  `tutorname` int(11) NOT NULL,
  `coverpic` blob NOT NULL,
  PRIMARY KEY (`course_ID`),
  KEY `fk_courses` (`tutorname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_ratings`
--

DROP TABLE IF EXISTS `course_ratings`;
CREATE TABLE IF NOT EXISTS `course_ratings` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `ratings` int(11) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cust_review_to_tutor`
--

DROP TABLE IF EXISTS `cust_review_to_tutor`;
CREATE TABLE IF NOT EXISTS `cust_review_to_tutor` (
  `rvw_id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(20) NOT NULL,
  `tutor` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`rvw_id`),
  KEY `stud_fk` (`student`),
  KEY `tutor_fk` (`tutor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `question` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL,
  PRIMARY KEY (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`question`, `answer`) VALUES
('Can I choose my own tutor?', 'Yes, if you yourself find a tutor on our website from your field, you can book it right away by book session at the bottom of every tutor\'s profile.'),
('How do i sign up as a tutor?', 'You can sign up as a tutor by \"Become a tutor\" option on our Home page and fill in the required details.'),
('How long is one session, or is it adjusted according to our requirement.', 'Session details and duration are mentioned on our site, you have to select according to that.'),
('Is it online or in person?', 'Easy Scenior is an online learning platform.'),
('What time are the sessionn held once we book a tutor?', 'Time slot is decided as per your and tutor\'s mutual coordination and availability.');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `SubHeading` varchar(100) NOT NULL,
  `Heading` varchar(300) NOT NULL,
  `Paragraph` varchar(740) NOT NULL,
  PRIMARY KEY (`Heading`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`SubHeading`, `Heading`, `Paragraph`) VALUES
('EASY SCENE HAI', 'A learning experience like never before', 'Want help in university or need to prepare for an exam or entry test? Book sessions as per your time and availability, we make education easier, accessible and affordable!'),
('', 'Categories', 'Skills that take you months to learn to buy our courses and learn them within weeks.'),
('BECOME A TUTOR', 'Join With Easy Scenior as an Instructor', 'Join us to help others excel in their student life and earn some extra cash.');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `duration` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  PRIMARY KEY (`duration`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `tutor` varchar(20) NOT NULL,
  `student` varchar(20) NOT NULL,
  `pckg` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  KEY `tutor_fk` (`tutor`),
  KEY `student_fk` (`student`),
  KEY `package_fk` (`pckg`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolled_in_course`
--

DROP TABLE IF EXISTS `student_enrolled_in_course`;
CREATE TABLE IF NOT EXISTS `student_enrolled_in_course` (
  `st_username` varchar(20) NOT NULL,
  `course_id` int(11) NOT NULL,
  KEY `st_fk` (`st_username`),
  KEY `course_fk` (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `ratings` int(11) NOT NULL,
  PRIMARY KEY (`testimonial_id`),
  KEY `fk_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonial_id`, `username`, `content`, `ratings`) VALUES
(5, 'Smiith', 'I like courses, and online classes more and more each day because it makes my life a lot easier', 5),
(6, 'Mariia', 'Definitely worth the investment. I\'d be lost without a mentor', 4),
(7, 'Emilia', 'Wow-what excellent service, I love it! This is simply unbelievable! It fits my needs perfectly', 5),
(8, 'Lucas', 'Thanks, Easy Senior! You guys rock! It fits our needs perfectly. I will refer everyone I know.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
CREATE TABLE IF NOT EXISTS `tutor` (
  `tutorusername` varchar(20) NOT NULL,
  `introduction` varchar(400) NOT NULL,
  `expertise` varchar(400) NOT NULL,
  `major` int(11) NOT NULL,
  `institute` varchar(100) NOT NULL,
  PRIMARY KEY (`tutorusername`),
  KEY `tutor_fk` (`tutorusername`),
  KEY `fk_category` (`major`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutorusername`, `introduction`, `expertise`, `major`, `institute`) VALUES
('Ava', '', '', 4, 'National University of Science & Technology'),
('Elijah13', '', '', 2, 'Nescom'),
('Emma_Olivia', '', '', 1, 'National University of Science & Technology'),
('Noah', '', '', 3, 'National University of Science & Technology'),
('Sara_Ali', '', '', 2, 'National University of Science & Technology');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `fullname`, `email`, `password`, `userImage`, `status`, `updated_at`, `created_at`) VALUES
('Admin', 'Admin', 'admin@gmail.com', 'eyJpdiI6IlJnN3Q3MlFMMS9pUERrT3p5T01rdnc9PSIsInZhbHVlIjoicVRIYjZTZ3pQS2Y3YUtUL1JJeHBpZz09IiwibWFjIjoiNTQyYjNjNWMzYmU5MDNkN2RiYmY0OGQ5MDI2Y2I1YzBmMzUxMjQzOWExMDYxZTg3ODliODhiYmU4NzUwMWE4NCIsInRhZyI6IiJ9', 'admin.jpg', 'admin', '2022-05-26 03:11:16', '2022-05-26 03:11:16'),
('Ava', 'Charlotte Ava', 'ava@gmail.com', 'eyJpdiI6Ii9kSFljbi9aMmdkSmZBTHEzYjBkNVE9PSIsInZhbHVlIjoielo3bHQreDU5Um5Dcy9oNGhRenp0UT09IiwibWFjIjoiMTdmMjRjMDI4YTJkNzJiZmM4NTk1ODY4MDg4ODUyYmQ1Nzc4MDQ3MWI2YTI0YjgwNzkzOGFhMzE4YWFjMDIyNCIsInRhZyI6IiJ9', 'Ava.png', 'tutor', '2022-05-26 07:27:41', '2022-05-26 07:27:41'),
('Elijah13', 'Elijah Liam', 'elijah@gmail.com', 'eyJpdiI6ImYvWmtCc1R4RTNtb01LYnRrV2pCSkE9PSIsInZhbHVlIjoiSVpwNGEvRlIrV1dER0srUnhWVTE3VkdXdUhVTkRwOW5TUmlaYWhXdzliST0iLCJtYWMiOiI0ODg1MDIzYTc4NDE1OWUzMDkzMjVhNjYyYTdiZjM0NWMzNmI4NTY0Mjg5ZjRiOTEwNmQ1ODBlM2ZlZDk3NmFiIiwidGFnIjoiIn0=', 'Elijah13.png', 'tutor', '2022-05-26 07:26:37', '2022-05-26 07:26:37'),
('Emilia', 'Emilia', 'emilia@gmail.com', 'eyJpdiI6IkJucHJsZWZKQWVvenRZZ0g1Zm53Ync9PSIsInZhbHVlIjoicklEdVYxR3FqS2pxWk83djg1MjV4dz09IiwibWFjIjoiNjlmZjMwZWU5YmU2ZTc2NWZkN2NjZjA4NzgzNGI1Y2YxYjExZWY5MWQ4ZDBiNTY4NzA1ZjM3ZTA5YzkzNTE0NCIsInRhZyI6IiJ9', 'st (2).png', 'student', '2022-05-25 09:53:41', '2022-05-25 09:53:41'),
('Emma_Olivia', 'Emma Olivia', 'emma@gmail.com', 'eyJpdiI6IjBNcWhlVnA3SWMxL3NlNkpaSmltWUE9PSIsInZhbHVlIjoiM05GYnVSSGxzTExDMXRDNXdkcWp0UT09IiwibWFjIjoiYTJiYWJkMWY2ZDQwMTJjNjllOTUxNjM5YTUzOTkxODBmOTNmOGE2YmM2NDU1NDg5ZTM1OTY1OGJkOWFmZjNmOCIsInRhZyI6IiJ9', 'Emma_Olivia.png', 'tutor', '2022-05-26 07:38:26', '2022-05-26 07:38:26'),
('Lucas', 'Lucas Mare', 'lucas@gmail.com', 'eyJpdiI6Ijlzb29JYmtkUXZFZTlma0pVZ1ZnSlE9PSIsInZhbHVlIjoiUmw0cFpxYzdjMTdIQUJ5U1ZjQm1LUT09IiwibWFjIjoiN2UyY2I1ZWI2ZTQ1ZmRjN2JkOTE3NmZmMTM4MjVjYzk4NDk5ZGU0Mjk0M2QwMmQzNzA3NGI3NGM3MTIwYzlmNyIsInRhZyI6IiJ9', 'Lucas.png', 'student', '2022-05-26 07:28:13', '2022-05-26 07:28:13'),
('Mariia', 'Maria David', 'maria1@gmail.com', 'eyJpdiI6IkhjaEswVTZuaUpMNHZOV1JWTlpGMFE9PSIsInZhbHVlIjoiMnZ1R3lybWpDaHRxMzAwLzB6YkROZz09IiwibWFjIjoiYzhjYzZmYTU5ODMxM2Y1MmNlZjM1M2UzNWMxNjk5MjUxN2I1NjhkMmFkMjk0NTJmNTcxMmM4OTBmNTNiODc3MCIsInRhZyI6IiJ9', 'st (3).png', 'student', '2022-05-25 12:46:44', '2022-05-25 12:46:44'),
('Noah', 'Noah James', 'naoh@gmail.com', 'eyJpdiI6InNLRFlWLzhzbFRrWUsyK2xhUUV4OEE9PSIsInZhbHVlIjoiT3ZwMmVEVTF3WWYxa3hhTVNvUmw2UT09IiwibWFjIjoiZmJmMGQyNWU1MjU0ZGE3MTUxZWY3NmRkMjg0YmI5NzUyMGRlNTMzZDUyODg1NjhkY2M3ZDMyYWQyOGI5YTZiMyIsInRhZyI6IiJ9', 'Noah.png', 'tutor', '2022-05-26 07:25:11', '2022-05-26 07:25:11'),
('Sara_Ali', 'Sara Ali', 'sara@gmail.com', 'eyJpdiI6IkVKUFNlVDl4QkIwMFloWEVDdEJXa1E9PSIsInZhbHVlIjoiVVJaaTJCSTRzQVkvOHJtRGRiU2xtUT09IiwibWFjIjoiYThkYjg3YzMxM2E4NzE4NGU4MGFhYjBlNTc4NmYyMDVhZTBmYWJhNzJkMzc5NGJkNmRkYjI0YWFlYThjZTdhNCIsInRhZyI6IiJ9', 'Default.png', 'tutor', '2022-05-26 08:11:04', '2022-05-26 08:11:04'),
('Smiith', 'Smith Jones', 'smith@gmail.com', 'eyJpdiI6IjFoK0hRakFpSjdNV1EvUTlReWJvUmc9PSIsInZhbHVlIjoiS2N2ZEMvbExZczlDNUd4MHBWclBVQT09IiwibWFjIjoiOTk2OGZjYjc0MGZmY2VkMDU3Y2MxNDU1YzAyMzJmZTQ3MGJlNGJhODMzMmIzYWRlNzhlYjliZmM1MTk0N2Y4MSIsInRhZyI6IiJ9', 'st (1).png', 'student', '2022-05-25 09:51:51', '2022-05-25 09:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_contactus`
--

DROP TABLE IF EXISTS `user_contactus`;
CREATE TABLE IF NOT EXISTS `user_contactus` (
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`name`,`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contactus`
--

INSERT INTO `user_contactus` (`name`, `email`, `subject`, `message`) VALUES
('Shifa Imran', 'shifaimran309@gmail.com', 'jbfJK', 'kbgkjb'),
('Shifa Imran', 'shifaimran309@gmail.com', 'Time for session', 'bkbjbk'),
('Shifa Imran', 'shifaimran309@gmail.com', 'Time', 'bjwvfqhjfv'),
('Shifa Imran', 'shifaimran309@gmail.com', 'kwv ', 'kjv ');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`major`) REFERENCES `category` (`cat_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tutorname` FOREIGN KEY (`tutorusername`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;