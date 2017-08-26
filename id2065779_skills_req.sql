-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2017 at 04:38 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2065779_skills_req`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `SNO` int(11) NOT NULL,
  `Username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_id` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`SNO`, `Username`, `Password`, `token`, `fcm_id`) VALUES
(1, '00007', 'hello123', '', 'de47H6ALKPs:APA91bHKXIw1jLZXanaSZb5uIbISm_pDb-0W8pai_CkQjHcZHWhU6s6DdigeAFZxZMl6pizGYV9fQNRQDW_2-V3u6MFIRP5UKNtxs4jnFC9-FXKBs4h9OpxdeZkdaBsjLwYVT1R9C5Wv');

-- --------------------------------------------------------

--
-- Table structure for table `api_auth`
--

CREATE TABLE `api_auth` (
  `Uniq_Id` varchar(15) DEFAULT NULL,
  `Key_Final` varchar(100) DEFAULT NULL,
  `fcm_id` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_auth`
--

INSERT INTO `api_auth` (`Uniq_Id`, `Key_Final`, `fcm_id`) VALUES
('17', 'arce8a9pekgf3sqnjd3k4i3qe67zs9a', ''),
('18', '55drcfakar4w54qkf7p35s3np8nx6b2', ''),
('19', 'y7i9ftpc9tcczzgp7kmd3h9b3k9ram', ''),
('20', '9bir89428gxkdehkaaarahkpngh9f', 'ekHQG19QNNw:APA91bGdWa3wTg2twHzYGdDhvbvq2EcV7SNvgbRj2J4CMayM3r3VuT6k5UDfLO0INEUbZS5q6xqOuum6w7oMxJPNVSoUFlkLY0zxTznTIIdq27yq0o9Q7psYirN6-6mN1nCaXC67Wg9d'),
('21', 'th82yifmexzcqkajk8s2wxhs5ffgjn', ''),
('22', '2btznucg4huzajhtxjyqmn8zn7mgz', ''),
('23', 'wujsb5nbpecykzd5fbwxvvm9wsat7t7', 'cyV_L2SSKHw:APA91bFx2euvPlocPS_P9dX5G8RgvYG0KJxCtAuAD7OaSollAPJR7bWCC_92E9EglXXV_HnRf7okhP642B-fDvKijtwyl0RhIwkIZE55QPpXhZD0pcAWYJGEst6990Id9s40gWvUoRT6'),
('24', 'typ6jnkcitfb5ry88muabyva6ahvsq', 'cISxoBJTMQo:APA91bFlT30nMo7Qo1YO4INR8EWCXY1VnIFU42X6BL9W5Rs7oHgfNWk8ZRWEu4fxQ_KmRYBVTz4od1g8vKN5BlGig4-D_bZIybm418Fj1iS1UHxLkegVvtHwxiluPNHLo5YC2tgcMQfb'),
('25', 'qvu6m3annt7hg3aphz3b3v78sfhwsm', 'fZPbjUj4hig:APA91bFRPSs1vgh9lu-czAuP6UQDf8gdPQPp8T6Il86yO4UKY7cXGGiNpV29A82CHOrhey8R9SROtbTXAN45iHcHjg8rOmfFOd0ugu0sq_9YoAjXLSdF0PrLMnf-uJ4IXx_4qwpdgtv5'),
('26', 'tufszt37pb5m7twezvdtje5hz62jyhw', 'cm8TKQF-Mj0:APA91bEN2OOWwLUxRyeTno8HXUtnBulZRLZDslw449ywmEZQoMil7B3yvHlD8jC9TmMHY71ZItc3u5wJOjCO-jXEy7WZWZIL1C_2uRT-iJ2Co_6vKcv6E8w5G8epIx1Qfgdv2MEIt88z');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(4, 'Mind, Body & Soul', '2015-09-08 07:18:03', '2015-11-17 11:58:16', 'mind__body_and_soul.jpeg', 'image/jpeg', 740745, '2015-11-17 11:58:09'),
(5, 'Others', '2015-09-08 07:18:15', '2015-11-23 12:39:35', 'Others.jpeg', 'image/jpeg', 191530, '2015-11-23 12:39:27'),
(7, 'Computers', '2015-09-12 04:59:07', '2015-11-17 11:45:20', 'Computers.jpg', 'image/jpeg', 2226999, '2015-11-17 11:45:00'),
(8, 'Arts', '2015-09-23 05:45:02', '2015-12-09 13:15:41', 'aets.jpeg', 'image/jpeg', 3515024, '2015-11-17 11:46:53'),
(11, 'Cooking & Baking', '2015-09-23 11:09:13', '2015-12-08 07:45:50', 'Cooking.jpg', 'image/jpeg', 4786588, '2015-11-17 11:48:38'),
(13, 'Subjects', '2015-10-10 15:09:03', '2015-12-09 13:17:22', 'it.jpg', 'image/jpeg', 2038630, '2015-11-17 12:00:20'),
(14, 'Languages', '2015-10-27 12:08:11', '2015-11-23 12:44:27', 'global-languages.jpg', 'image/jpeg', 82394, '2015-11-23 12:44:24'),
(15, 'Singing And Dancing', '2015-10-27 13:17:18', '2015-11-17 12:03:54', 'singing.jpeg', 'image/jpeg', 2298276, '2015-11-17 12:03:43'),
(16, 'Sports', '2015-10-27 13:41:49', '2015-11-17 12:05:53', 'sports.jpeg', 'image/jpeg', 2996341, '2015-11-17 12:05:36'),
(17, 'DIY', '2015-10-27 13:44:35', '2015-11-23 12:46:53', 'photo-1416339212457-ef9ffadc2903.jpeg', 'image/jpeg', 2851735, '2015-11-17 12:07:35'),
(18, 'Science ', '2015-12-08 07:53:20', '2015-12-08 07:53:20', 'Science.jpeg', 'image/jpeg', 276770, '2015-12-08 07:53:12'),
(19, 'Life', '2015-12-09 13:18:59', '2015-12-09 13:18:59', 'tie-690084__340.jpg', 'image/jpeg', 27154, '2015-12-09 13:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `send_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `response_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `user_id`, `training_id`, `message`, `send_date_time`, `response_status`) VALUES
(16, 77, 9, 'hdhdbfcjdkdn', '2017-06-22 19:09:16', 0),
(14, 77, 13, 'ffgg', '2017-06-21 12:48:41', 0),
(15, 77, 16, 'fgv', '2017-06-21 12:49:50', 0),
(4, 77, 7, 'Wen will it start', '2017-06-12 08:48:53', 1),
(5, 77, 7, 'Wen will it start', '2017-06-12 09:25:50', 1),
(12, 78, 60, 'Hi Wen will it start', '2017-06-17 22:13:29', 1),
(13, 79, 61, 'Hi, can I know from when will the training starts', '2017-06-17 23:49:18', 1),
(17, 77, 10, 'vbb', '2017-06-22 20:42:21', 0),
(18, 77, 14, 'hdhxudhdj', '2017-06-27 16:45:01', 0),
(19, 77, 30, 'ndjfidbxnx', '2017-06-27 21:46:28', 0),
(20, 81, 60, 'hi,i want this training', '2017-07-19 10:12:45', 0),
(21, 82, 63, 'hi, can u tell me last date for this training', '2017-07-19 10:18:48', 1),
(22, 84, 65, '98801757868 plxal for reg class', '2017-07-19 12:17:56', 1),
(23, 85, 13, 'testing...\n', '2017-07-19 12:18:13', 0),
(24, 84, 66, 'when will it start', '2017-07-19 12:57:04', 0),
(25, 3, 8, 'kkk', '2017-08-04 17:57:16', 0),
(26, 1, 0, 'hello', '2017-08-04 18:18:58', 0),
(27, 1, 0, 'test', '2017-08-04 18:22:59', 0),
(28, 1, 0, 'eueu', '2017-08-04 18:28:50', 0),
(29, 1, 0, 'euw', '2017-08-04 18:32:53', 0),
(30, 1, 0, 'sk', '2017-08-04 18:33:14', 0),
(31, 1, 7, 'dd', '2017-08-04 18:36:59', 0),
(32, 1, 7, 'gh', '2017-08-04 18:39:37', 0),
(33, 1, 7, 'h', '2017-08-04 18:41:02', 0),
(37, 1, 77, 'hello', '2017-08-06 16:48:16', 0),
(38, 1, 80, 'ks', '2017-08-07 09:16:55', 0),
(39, 1, 82, '', '2017-08-07 09:22:54', 0),
(40, 1, 83, '', '2017-08-07 09:27:14', 0),
(41, 1, 81, '', '2017-08-07 09:33:24', 0),
(42, 3, 80, '', '2017-08-07 19:12:33', 0),
(43, 1, 85, '', '2017-08-07 19:13:52', 0),
(44, 4, 9, '', '2017-08-07 19:20:20', 0),
(45, 1, 84, '', '2017-08-07 19:23:13', 0),
(46, 1, 78, '', '2017-08-07 19:25:50', 0),
(47, 24, 27, '', '2017-08-11 05:39:41', 0),
(48, 19, 7, '', '2017-08-11 16:28:08', 0),
(49, 20, 7, '', '2017-08-13 18:57:48', 0),
(50, 20, 7, '', '2017-08-13 18:58:30', 0),
(51, 20, 7, '', '2017-08-13 18:58:35', 0),
(52, 20, 7, '', '2017-08-13 18:59:21', 0),
(53, 20, 7, '', '2017-08-13 19:00:29', 0),
(54, 20, 7, '', '2017-08-13 19:03:07', 0),
(55, 20, 7, '', '2017-08-13 19:03:54', 0),
(56, 20, 7, '', '2017-08-13 19:05:06', 0),
(57, 20, 7, '', '2017-08-13 19:06:10', 0),
(58, 20, 7, '', '2017-08-13 19:06:49', 0),
(59, 20, 7, '', '2017-08-13 19:12:56', 0),
(60, 20, 7, '', '2017-08-13 19:13:35', 0),
(61, 20, 7, '', '2017-08-13 19:13:49', 0),
(62, 20, 7, '', '2017-08-13 19:18:09', 0),
(63, 20, 7, '', '2017-08-13 19:18:52', 0),
(64, 20, 7, '', '2017-08-13 19:20:02', 0),
(65, 20, 7, '', '2017-08-13 19:20:31', 0),
(66, 20, 7, '', '2017-08-13 19:22:36', 0),
(67, 20, 7, '', '2017-08-13 19:24:12', 0),
(68, 20, 7, '', '2017-08-13 19:26:56', 0),
(69, 20, 7, '', '2017-08-13 19:28:41', 0),
(70, 20, 7, '', '2017-08-13 19:29:50', 0),
(71, 20, 7, '', '2017-08-13 19:30:23', 0),
(72, 20, 76, '', '2017-08-13 19:31:16', 0),
(73, 20, 80, '', '2017-08-13 19:31:37', 0),
(74, 23, 86, '', '2017-08-13 19:32:07', 0),
(75, 23, 74, '', '2017-08-13 19:34:06', 0),
(76, 24, 89, '', '2017-08-13 19:40:12', 0),
(77, 23, 92, '', '2017-08-13 19:44:47', 0),
(78, 20, 7, '', '2017-08-14 17:10:58', 0),
(79, 20, 7, '', '2017-08-14 17:11:15', 0),
(80, 20, 7, '', '2017-08-14 17:11:34', 0),
(81, 20, 7, '', '2017-08-14 17:12:05', 0),
(82, 20, 7, '', '2017-08-14 17:12:25', 0),
(83, 20, 7, '', '2017-08-14 17:12:31', 0),
(84, 20, 7, '', '2017-08-14 17:13:14', 0),
(85, 20, 7, '', '2017-08-14 17:14:05', 0),
(86, 20, 7, '', '2017-08-14 17:15:19', 0),
(87, 20, 7, '', '2017-08-14 17:15:47', 0),
(88, 20, 8, '', '2017-08-14 17:18:16', 0),
(89, 20, 74, '', '2017-08-17 16:27:14', 0),
(90, 20, 88, '', '2017-08-17 16:27:23', 0),
(91, 20, 79, '', '2017-08-17 17:19:37', 0),
(92, 20, 90, '', '2017-08-17 17:19:46', 0),
(93, 24, 92, '', '2017-08-17 17:56:42', 0),
(94, 24, 8, '', '2017-08-17 17:59:25', 0),
(95, 20, 92, '', '2017-08-17 18:10:40', 0),
(96, 23, 78, '', '2017-08-18 19:54:07', 0),
(97, 23, 81, '', '2017-08-18 19:54:15', 0),
(98, 23, 88, '', '2017-08-18 20:16:36', 0),
(99, 23, 85, '', '2017-08-18 20:16:59', 0),
(100, 23, 90, '', '2017-08-18 20:17:11', 0),
(101, 24, 90, '', '2017-08-19 09:42:30', 0),
(102, 24, 80, '', '2017-08-21 07:36:45', 0),
(103, 24, 81, '', '2017-08-21 11:25:01', 0),
(104, 24, 9, '', '2017-08-21 11:33:28', 0),
(105, 20, 93, '', '2017-08-23 13:57:01', 0),
(106, 26, 75, '', '2017-08-23 14:15:34', 0),
(107, 24, 96, '', '2017-08-23 14:20:05', 0),
(108, 26, 96, '', '2017-08-23 14:23:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trainer_details`
--

CREATE TABLE `trainer_details` (
  `SNO` int(11) NOT NULL,
  `Training_Id` int(11) NOT NULL,
  `Trainer_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Trainer_Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Trainer_Phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trainer_details`
--

INSERT INTO `trainer_details` (`SNO`, `Training_Id`, `Trainer_Name`, `Trainer_Email`, `Trainer_Phone`) VALUES
(1, 7, 'Doraemon', 'doraemon@gmail.com', '9876543210'),
(2, 8, 'Donald Duck', 'donald@yahoo.com', '9630258741'),
(3, 7, 'Mickey mouse', 'mickey@gmail.com', '7531264970'),
(4, 8, 'shin chan', 'shin@hotmail.com', '9657812035');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(11) NOT NULL,
  `title` text,
  `key_learning1` text,
  `key_learning2` text,
  `key_learning3` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `location_id` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `photo_file_name` varchar(255) DEFAULT NULL,
  `photo_content_type` varchar(255) DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `from_timing` text,
  `to_timing` text,
  `date` text,
  `duration` float DEFAULT NULL,
  `description` text,
  `venue` text,
  `venue_latitude` varchar(40) DEFAULT NULL,
  `venue_longitude` varchar(40) DEFAULT NULL,
  `prerequisite` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `title`, `key_learning1`, `key_learning2`, `key_learning3`, `created_at`, `updated_at`, `location_id`, `price`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `user_id`, `category_id`, `availability`, `from_timing`, `to_timing`, `date`, `duration`, `description`, `venue`, `venue_latitude`, `venue_longitude`, `prerequisite`) VALUES
(7, 'Fitness Health', 'Running', 'Yoga', 'Gym', '2015-08-01 15:24:51', '2016-01-05 10:21:31', NULL, 1234, 'ArtCraft_2.jpg', 'image/jpeg', 91300, '2015-11-18 15:00:31', 20, '4', 'Specific date', '3:00am', '4:00am', '11/11/2015', 1, 'Specific or task-oriented fitness is a person\'s ability to perform in a specific activity with a reasonable efficiency: for example, sports or military service. \r\n\r\nExamples are:\r\n\r\n100 m sprint: in a sprint the athlete must be trained to work anaerobically throughout the race, an example of how to do this would be interval training.\r\nMiddle distance running: athletes require both speed and endurance to gain benefit out of this training. The hard working muscles are at their peak for a longer period of time as they are being used at that level for longer period of time', 'Frazer Town, Bengaluru, Karnataka, India', '22.256', '75.55', ''),
(8, 'Karate', 'kung fu', 'marshal arts', 'mix marshal arts', '2015-08-04 06:37:06', '2016-02-11 09:56:19', NULL, 200, 'candles-petra-jordan_53916_990x742-620x464.jpg', 'image/jpeg', 82769, '2015-11-18 15:06:38', 24, '5', 'No preference', '4:00am', '5:30am', '', 1.3, 'In Chinese, gōngfu is a compound of two words, combining 功 (gōng) meaning \"work\", \"achievement\", or \"merit\", and 夫 . which is alternately treated as being a word for \"man\" or as a particle or nominal suffix with diverse meanings (the same character is used to write both). A literal rendering of the first interpretation would be \"achievement of man\", while the second is often described as \"work and time/effort\". ', 'China Town, Arekere MICO Layout 2nd stage, Arakere, Bengaluru, Karnataka, India', '21.23', '65.234', ''),
(9, 'Indoor Games', 'Carrom', 'Chess', 'Tennis', '2015-09-12 05:09:42', '2016-03-26 12:03:02', NULL, 255, 'Italy-Venice.jpg', 'image/jpeg', 94176, '2015-11-18 15:08:51', 5, '7', 'Specific date', '5:00am', '7:00am', '31/12/2015', 2, 'Indoor sports complexes are springing up around the country (ex: South Shore Sports ). These complexes often provide a Turf Field that allows a wide variety of typically outdoor sports to be played indoors. These turf fields are large and has a grassy texture to it without the maintenance required to keep it green and plush. Many sports are being played on this type of service, such as soccer, baseball, flag football, softball,rugby, and many others.', 'India Gate, New Delhi, Delhi, India', '20.235', '60.235', ''),
(10, 'Sports', 'Volleyball', 'Football', 'Cricket', '2015-09-23 06:01:59', '2015-11-18 15:12:03', NULL, 100, 'unnamed.jpg', 'image/jpeg', 79833, '2015-11-18 15:12:01', 5, '16', 'Week days', '1:00am', '3:30pm', '', 2.3, 'The modern Olympic Games (French: Jeux olympiques[1]) are the leading international sporting event featuring summer and winter sports competitions in which thousands of athletes from around the world participate in a variety of competitions. The Olympic Games are considered to be the world\'s foremost sports competition with more than 200 nations participating.[2] The Olympic Games are held every four years, with the Summer and Winter Games alternating by occurring every four years but two years apart.', 'Shivaji Nagar, Pune, Maharashtra, India', '', '', NULL),
(12, 'Testing Arts', 'testing art1', 'testing art2', 'testing  art3', '2015-10-02 14:32:32', '2015-11-18 15:28:39', NULL, 3000, 'art.jpg', 'image/jpeg', 964410, '2015-11-18 15:28:34', 5, '8', 'Week ends', '7:00am', '10:30pm', '', 3.3, 'Art is a diverse range of human activities and the products of those activities, usually involving imaginative or technical skill. In their most general form these activities include the production of works of art, the criticism of art, the study of the history of art, and the aesthetic dissemination of art. This article focuses primarily on the visual arts, which includes the creation of images or objects in fields including painting, sculpture, printmaking, photography, and other visual media. ', 'Golden Blossom, Belatur Colony, Bengaluru, Karnataka, India', '', '', NULL),
(13, 'idli', 'sambar', 'dosa', 'wada', '2015-10-16 12:06:01', '2015-11-12 12:07:51', '', 90, 'prt_500x500_1418362221.jpg', 'image/jpeg', 116325, '2015-10-16 12:05:53', 3, '11', 'Week days', '6:00am', '6:30am', '10/24/2015', 3, 'To make idli, two parts uncooked rice to one part split black lentil (urad dal, vigna mungo) are soaked separately for at least four hours. Optionally spices such as fenugreek seeds can be added at the time of soaking for additional flavor. Once done soaking, the lentils ground to a fine paste and rice coarsely ground separately then combined.', '3rd Street Road, Shivaji Nagar, Bengaluru, Karnataka, India', '', '', NULL),
(14, 'computers', 'c lang', 'java', 'C++', '2015-11-10 12:41:26', '2016-01-23 16:12:45', '', 2000, 'A_winter_morng.jpg', 'image/jpeg', 72604, '2015-11-10 12:41:20', 4, '13', 'Week days', '7:00am', '8:30am', '21/11/2015', 1.3, 'Computers languages', 'Agra, Uttar Pradesh, India', '', '', ''),
(15, 'testing venue', 'testing venue', 'testing venue', 'testin venue', '2015-11-11 14:52:45', '2015-11-19 12:13:40', '', 1000, '1157-desktop-wallpapers-nature.jpg', 'image/jpeg', 318450, '2015-11-19 12:13:36', 5, '7', 'Specific date', '', '', '27/11/2015', 6, 'jalkggklgkag;n', 'Banjara Hills, Hyderabad, Telangana, India', '', '', NULL),
(16, 'testing venue1', 'testing venue1', 'testing venue1', 'testin venue1', '2015-11-12 11:23:03', '2015-11-18 15:32:09', NULL, 1200, 'HGKHURAHPM.jpg', 'image/jpeg', 39654, '2015-11-18 15:32:06', 5, '17', 'No preference', '2:00am', '3:00am', '27/11/2015', 1, 'Bangalore officially known as Bengaluru[8]  ( listen)), is the capital of the Indian state of Karnataka. It has a population of about 8.42 million and a metropolitan population of about 8.52 million, making it the third most populous city and fifth most populous urban agglomeration in India.', '100 Feet Road, Madiwala, Bengaluru, Karnataka, India', '', '', NULL),
(17, 'Painting', 'Painting11', 'Painting22', 'Painting33', '2015-11-12 12:48:50', '2016-03-26 12:06:44', NULL, 1403, '3.jpg', 'image/jpeg', 58103, '2015-11-12 12:48:48', 2, '5', 'All days', '1:00am', '2:00am', '', 1, 'Painting is the practice of applying paint, pigment, color or other medium[1] to a surface (support base). The medium is commonly applied to the base with a brush, but other implements, such as knives, sponges, and airbrushes, can be used.', 'Yeshwanthpur, Bengaluru, Karnataka, India', '', '', 'Brush'),
(18, 'Ruby', 'Jquery', 'Javascript', 'bootstrap', '2015-11-12 12:52:28', '2015-11-12 12:52:28', NULL, 1280, '1.jpg', 'image/jpeg', 98388, '2015-11-12 12:52:26', 2, '14', 'Week ends', '7:30am', '8:30am', '27/11/2015', 1, ' ay6D00zn3J ay6D00zn3J ay6D00zn3J ay6D00zn3J ay6D00zn3J ay6D00zn3J ay6D00zn3J ay6D00zn3J ay6D00zn3J.\"', 'Contonment Railway Station, Cantonment Railway Station Road, Kaverappa Layout, Bengaluru, Karnataka, India', '', '', ''),
(19, 'Maths', 'Algebra', 'Components', 'Functions', '2015-12-22 10:44:14', '2015-12-22 10:44:14', NULL, 1000, 'horseriding.jpg', 'image/jpeg', 82491, '2015-12-22 10:44:06', 5, '13', 'All days', '7:00am', '8:00am', '', 1, 'Maths ', 'Goa, India', '', '', 'note book'),
(20, 'My life', 'Sporty', 'Entertaining', 'Enjoying', '2015-12-23 13:37:54', '2015-12-23 13:56:30', NULL, 1000, 'the-strategy-1080527_640.jpg', 'image/jpeg', 63127, '2015-12-23 13:37:52', 5, '19', 'Week ends', '5:00am', '7:00am', '25/12/2015', 2, 'Gud life ||||||||||||||||||||||||||||', 'Punjab, India', '', '', 'Present'),
(21, 'Images', 'pic', 'pic11', 'pic22', '2016-01-02 10:28:54', '2016-03-26 12:57:27', NULL, 3020, '171406-santas-workshop-children-can-get-involved-with-christmas-arts-and-crafts.jpg', 'image/jpeg', 69381, '2016-01-02 10:28:46', 17, '8', 'All days', '1:00am', '3:00am', '29/02/2016', 2, 'picture222222', 'Bihar, India', '', '', 'pic'),
(22, 'Test123', 'Test123', 'Test123', 'Test123', '2016-01-05 09:52:58', '2016-01-05 09:52:58', NULL, 1234, 'American_Football_2014_thumb.jpg', 'image/jpeg', 34775, '2016-01-05 09:52:54', 5, '17', 'No preference', '', '', '', 2, 'Test123', 'Andhra Pradesh, India', '', '', 'Test123'),
(23, 'testtt', 'testttt', 'testttt', 'testttt', '2016-01-05 10:37:15', '2016-01-05 10:37:15', NULL, 1230, 'horseriding.jpg', 'image/jpeg', 82491, '2016-01-05 10:37:13', 20, '16', 'No preference', '', '', '', 1, 'testttt', 'Abshot Layout, Bengaluru, Karnataka, India', '', '', 'testttt'),
(24, 'testting', 'testting', 'testting', 'testting', '2016-01-05 11:17:00', '2016-01-05 11:19:14', NULL, 300, 'top-five-day-trips-in-cape-town.jpg', 'image/jpeg', 105423, '2016-01-05 11:16:58', 21, '13', 'No preference', '', '', '', 5, 'testting, testting', 'Bengaluru, Karnataka, India', '', '', 'testting'),
(25, 'CCNA', 'Network', 'Router', 'Switches', '2016-01-06 08:59:15', '2016-01-06 08:59:15', NULL, 10, '3.jpg', 'image/jpeg', 58103, '2016-01-06 08:59:12', 22, '13', 'Week ends', '', '', '09/01/2016', 5, 'CCNA training', 'Hennur Gardens, Bengaluru, Karnataka, India', '', '', 'Book'),
(26, 'button', 'button', 'button', 'button', '2016-01-08 04:56:41', '0000-00-00 00:00:00', NULL, 1215, 'trainingImages/IMG-20170825-WA0006.jpg', 'image/jpg', 8406381, '0000-00-00 00:00:00', 23, '18', 'Weekdays', '', '', '26/08/2017', 1, 'button', 'Karnataka', '15.317277500000003', '75.7138884', 'button'),
(27, 'button', 'buttonn', 'buttonn', 'buttonn', '2016-01-08 10:48:24', '2016-01-23 16:09:28', NULL, 1312, 'free-hd-wallpaper-download.jpg', 'image/jpeg', 28507, '2016-01-08 10:48:21', 24, '15', 'No preference', '', '', '', 2, 'buttonn', 'Haryana, India', '', '', 'book'),
(28, 'languages', 'languages', 'languages', 'languages', '2016-01-09 05:48:58', '2016-01-09 05:48:58', NULL, 1890, 'dsc_0067.jpg', 'image/jpeg', 4106188, '2016-01-09 05:48:45', 25, '14', NULL, '', '', '', 2, 'languages', 'Abshot Layout, Bengaluru, Karnataka, India', '', '', 'languages'),
(29, 'testingag gaga', 'a;jag;jag;ag', ';ljal;gj;lgjajgl;ag;laj', ';l;lagagja\'gjag\'jgjgjangagn', '2016-01-09 15:04:40', '2016-01-09 15:04:40', NULL, 89, '1713975.jpg', 'image/jpeg', 492937, '2016-01-09 15:04:37', 5, '11', 'Week ends', '', '', '28/01/2016', 7, 'm;lj;ajg;jalgl;jagl;a', 'Doctor Raj Road, Phase 1, Bengaluru, Karnataka, India', '', '', 'agagaagafg'),
(30, 'photo test', 'photo test', 'photo test', 'photo test', '2016-01-11 04:43:05', '2016-01-11 04:43:05', NULL, 1901, 'p140.jpg', 'image/jpeg', 6368919, '2016-01-11 04:43:03', 5, '17', NULL, '', '', '', 1, 'photo test', 'Prakash Nagar, Milk Colony, Bengaluru, Karnataka, India', '', '', 'photo test'),
(31, 'test img', 'test img', 'test img', 'test img', '2016-01-11 07:07:10', '2016-01-11 07:07:10', NULL, 2091, '239H_-_Copy.jpg', 'image/jpeg', 8406381, '2016-01-11 07:07:09', 5, '4', NULL, '', '', '', 2, 'test img', 'Tenali, Andhra Pradesh, India', '', '', 'test img'),
(32, 'Computer photo test', 'Computer photo test', 'Computer photo test', 'Computer photo test', '2016-01-12 06:52:30', '2016-01-12 06:52:30', NULL, 3013, '239H_-_Copy_-_Copy.jpg', 'image/jpeg', 8406381, '2016-01-12 06:52:28', 25, '7', 'All days', '', '', '', 2, 'Computer photo test', 'Orissa, India', '', '', 'Computer'),
(33, 'Wordpress', 'Wordpress1', 'Wordpress2', 'Wordpress3', '2016-03-29 07:48:35', '2016-03-29 07:48:35', NULL, 2139, 'images.jpeg', 'image/jpeg', 7636, '2016-03-29 07:48:34', 26, '14', 'All days', '4:00am', '5:00am', '31/03/2016', 1, 'Wordpress12345', 'Orissa, India', '', '', 'Note book'),
(34, 'science1', 'science12', 'science13', 'science14', '2016-03-29 07:54:12', '2016-03-29 07:54:12', NULL, 4554, 'photo-1414jpeg.jpeg', 'image/jpeg', 1756775, '2016-03-29 07:54:11', 26, '18', 'Week days', '5:30am', '7:30am', '21/05/2016', 2, 'science12345', 'Nagaland, India', '', '', 'Note Book '),
(35, 'others11', 'others1122', 'others1133', 'others1144', '2016-03-29 07:58:20', '2016-03-29 07:58:20', NULL, 9849, 'photo-1450101215322-bf5cd27642fc.jpeg', 'image/jpeg', 252440, '2016-03-29 07:58:20', 26, '5', 'Specific date', '2:00am', '5:00am', '23/04/2016', 3, 'others115566', 'Gujarat, India', '', '', 'Note Book'),
(36, 'football', 'football1', 'football2', 'football3', '2016-03-29 08:02:59', '2016-03-29 08:02:59', NULL, 7210, 'photo-fb.jpeg', 'image/jpeg', 1213870, '2016-03-29 08:02:59', 26, '16', 'All days', '7:00am', '9:00am', '08/05/2016', 2, 'football12345', 'Haryana, India', '', '', 'Football'),
(37, 'testbox', 'testbox1', 'testbox2', 'testbox3testbox', '2016-04-13 04:50:53', '2016-04-13 04:50:53', NULL, 9091, 'vector.png', 'image/png', 28016, '2016-04-13 04:50:51', 28, '8', 'Week days', '2:30am', '4:30am', '30/04/2016', 2, 'testbox23', 'Mangaluru, Karnataka, India', '', '', 'testbox'),
(40, 'aag', 'agagagg', '`sggagag', 'agagag', '2016-12-01 11:24:03', '2016-12-01 11:24:03', NULL, 400, 'sports.jpg', 'image/jpeg', 124862, '2016-12-01 11:24:02', 30, '7', 'Specific date', '7:30am', '8:30am', 'agkag.m.', 5, 'sgsg', 'ggg', '', '', 'agagga'),
(41, 'aag', 'agagagg', '`sggagag', 'agagag', '2016-12-01 11:26:18', '2016-12-01 11:26:18', NULL, 400, 'sports.jpg', 'image/jpeg', 124862, '2016-12-01 11:26:18', 30, '7', 'Specific date', '7:30am', '8:30am', 'agkag.m.', 5, 'sgsg', 'ggg', '', '', 'agagga'),
(42, 'n ', 'bhvv', 'jbhb', 'bhbjhb', '2016-12-05 13:12:19', '2016-12-05 13:12:19', NULL, 666, 'life.jpg', 'image/jpeg', 38759, '2016-12-05 13:12:18', 38, '8', 'No preference', '3:30am', '5:00am', 'kjkj ', 6, 'kjnkjbnkjb', 'Kjellerup, Denmark', '', '', 'nknkjn'),
(43, 'ruby on rails', 'ruby', 'rails', 'mvc', '2016-12-20 06:21:53', '2016-12-20 06:21:53', NULL, 40000, 'blueholelg.jpg', 'image/jpeg', 18518, '2016-12-20 06:21:52', 61, '5', 'All days', '6:00am', '7:30pm', '20/3/2016', 10, 'ror is a full satck developement model', 'Yelahanka New Town, Bengaluru, Karnataka, India', '', '', 'should have basics of programming'),
(44, 'mytrain', 'hjkl', 'jk', 'yuiop', '2016-12-20 06:34:48', '2016-12-20 06:34:48', NULL, 500, '7_harbor-of-rio-de-janeiro.jpg', 'image/jpeg', 81822, '2016-12-20 06:34:48', 61, '8', 'Week days', '7:30am', '5:00pm', '20', 7, 'ertyuiojhgewsdfghj', 'Yenimahalle/Ankara, Turkey', '', '', 'ghjkgghjk'),
(45, 'ifghjk', 'tyui', 'tyui', 'tyuio', '2016-12-20 07:17:13', '2016-12-20 07:17:13', NULL, 41, '3.jpg', 'image/jpeg', 58103, '2016-12-20 07:17:12', 61, '4', 'Week days', '5:00am', '5:30pm', 'fghjkjh', 34, 'fghjkjhgf', 'Yenimahalle/Ankara, Turkey', '', '', 'fghjhghj'),
(47, 'fgi', 'rtyui', 'tyu', 'tyu', '2016-12-21 07:27:09', '2016-12-21 07:27:09', NULL, 45, '0.jpg', 'image/jpeg', 65986, '2016-12-21 07:27:08', 63, '11', 'Week days', '7:30am', '6:30am', 'tyu', 7, 'tyu', 'Yucatan, Mexico', '', '', 'gh'),
(60, 'srini', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2500, NULL, NULL, NULL, NULL, 79, '13', 'Daily', NULL, NULL, '02/06/2017', 5, 'srini', 'mysore', '', '', NULL),
(61, 'srini', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5800, NULL, NULL, NULL, NULL, 78, '8', 'Weekends', NULL, NULL, '02/04/2017', 24, 'Remember, that the objective of the game is to fill in the game field from the offered set of numbers.\n\nDonâ€™t be surprised, if after filling in all of the free cells you still have unused numbers. They are check numbers. If the game field was filled correctly, you may find them in one of the columns or rows of the game field. After this you will need to place them in the appropriate position.\n\n', 'Yelahanka', '', '', NULL),
(62, 'nandha', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2500, NULL, NULL, NULL, NULL, 81, '16', 'Daily', NULL, NULL, '02/02/2016', 20, 'hi, this is created by nandha ', 'udakam', '', '', NULL),
(63, 'Navneetha', 'review', 'review', 'review', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5000, NULL, NULL, NULL, NULL, 78, '4', 'Weekdays', NULL, NULL, '02/05/2016', 15, 'Hi this is review 1 on 19 July', 'hennur', '', '', NULL),
(64, 'Navneetha', 'reviews', 'reviews', 'reviews', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 6800, NULL, NULL, NULL, NULL, 78, '4', 'Weekdays', NULL, NULL, '04/06/2015', 15, 'Hi review day', 'hennur', '', '', NULL),
(65, 'nanda1', 'yyhh', 'tgyhh', 'vgggamit', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2500, NULL, NULL, NULL, NULL, 82, '7', 'Weekdays', NULL, NULL, '02/12/2014', 10, 'created by amit on July 19\n', 'hennu4', '', '', NULL),
(66, 'nandha 2', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2000, NULL, NULL, NULL, NULL, 82, '7', 'Weekends', NULL, NULL, '02/08/2004', 25, 'nandha phone', 'hennur', '', '', NULL),
(67, 'amit1', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2358, NULL, NULL, NULL, NULL, 84, '7', 'Weekends', NULL, NULL, '02/05/2008', 25, 'hi created by Amit on July 19', 'hebbal', '', '', NULL),
(73, 'hello', 'kl', 'klj', 'klj', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 90, NULL, NULL, NULL, NULL, 2, '4', 'Weekdays', NULL, NULL, '06/08/2017', 0, 'zn', 'New York', '40.712783699999996', '-74.0059413', NULL),
(74, 'hello', 'klm', 'kl.', 'kl.', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 90, NULL, NULL, NULL, NULL, 2, '4', 'Weekdays', NULL, NULL, '06/08/2017', 0, 'Nsms', 'Delhi', '28.6618976', '77.2273958', NULL),
(75, 'g', 'kl', 'kj', 'kj', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 80, NULL, NULL, NULL, NULL, 2, '4', 'Weekdays', NULL, NULL, '06/08/2017', 8, 'ajs', 'Georgia', '32.1656221', '-82.9000751', NULL),
(76, 'h', 'v', 'j', 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 8, NULL, NULL, NULL, NULL, 2, '4', 'Weekdays', NULL, NULL, '06/08/2017', 8, 'nas', 'Houston', '29.760426700000004', '-95.3698028', NULL),
(77, 'sj', 'j', 'h', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 4, NULL, NULL, NULL, NULL, 1, '4', 'Weekdays', NULL, NULL, '06/08/2017', 8, 'sjs', 'West Java', '-7.090910999999999', '107.668887', NULL),
(78, 'test2', 'program', 'java', 'java', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5288, NULL, NULL, NULL, NULL, 4, '4', 'Weekdays', NULL, NULL, '24/08/2017', 25, 'Hi test ing', 'Bengaluru', '12.971598699999998', '77.5945627', NULL),
(79, 'test', 'jn', 'jn', 'jn', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 90, NULL, NULL, NULL, NULL, 1, '4', 'Weekdays', NULL, NULL, '06/08/2017', 90, 'aha', 'China', '35.86166000000001', '104.195397', NULL),
(80, 'sh', 'kla', 'kla', 'kla', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 900, NULL, NULL, NULL, NULL, 1, '18', 'Weekends', NULL, NULL, '07/08/2017', 9, 'zj', 'Sydney', '-33.868819699999996', '151.2092955', NULL),
(81, 'wu', 'sb', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 900, NULL, NULL, NULL, NULL, 1, '4', 'Weekdays', NULL, NULL, '07/08/2017', 9, 'Ndjeke', 'Switzerland', '46.818188', '8.227512', NULL),
(82, 'd', 'sn', 'dn', 'dn', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 90, NULL, NULL, NULL, NULL, 1, '14', 'Weekdays', NULL, NULL, '07/08/2017', 7, 'aj', 'Melbourne', '-37.81361100000001', '144.963056', NULL),
(83, 'sm', 'sn', 'sn', 'sn', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 90, NULL, NULL, NULL, NULL, 1, '14', 'Weekdays', NULL, NULL, '07/08/2017', 4, 'Ja', 'South Africa', '-30.559482000000003', '22.937506000000003', NULL),
(84, 'h', 'h', 'j', 'j', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 9, NULL, NULL, NULL, NULL, 1, '4', 'Weekdays', NULL, NULL, '08/08/2017', 7, 'ana', 'Hume Highway', '-34.637018', '150.140197', NULL),
(85, 'hello', 'sj', 'ej', 'ej', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 900, NULL, NULL, NULL, NULL, 1, '19', 'Daily', '9:40', '11:22', '08/08/2017', 9, 'sjs', 'Algeria', '28.033886', '1.6596259999999998', NULL),
(86, 'h', 'h', 'h', 'h', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 90, 'trainingImages/IMG-20170808-WA0001.jpg', 'image/jpg', NULL, '0000-00-00 00:00:00', 3, '4', 'Weekdays', '23:1', '23:1', '08/08/2017', 8, 'shw', 'Hungary', '47.162493999999995', '19.503304', NULL),
(87, 'h', 'S', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 7, 'trainingImages/IMG_20170807_225206_165.jpg', 'image/jpg', NULL, '0000-00-00 00:00:00', 3, '4', 'Weekdays', '23:20', '23:20', '08/08/2017', 0, 'an', 'Hyderabad', '17.385044', '78.486671', NULL),
(88, 'sa', 's', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 4, 'trainingImages/', 'image/', NULL, '0000-00-00 00:00:00', 19, '4', 'Weekdays', '9:58', '15:58', '13/08/2017', 4, 'ajs', 'South Australia', '-30.00023149999999', '136.2091547', NULL),
(89, 'sa', 's', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 4, 'trainingImages/IMG-20170812-WA0000.jpg', 'image/jpg', NULL, '0000-00-00 00:00:00', 19, '4', 'Weekdays', '9:58', '15:58', '13/08/2017', 4, 'ajs', 'South Australia', '-30.00023149999999', '136.2091547', NULL),
(90, 'a', 's', 's', 's', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 4, 'trainingImages/Screenshot_2017-08-12-10-53-48.png', 'image/png', NULL, '0000-00-00 00:00:00', 20, '18', 'Daily', '10:0', '22:0', '13/08/2017', 4, 'ahs', 'Ahmedabad', '23.022505', '72.5713621', NULL),
(91, 'sc', 'd', 'd', 'd', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 59, 'profile/IMG-20170825-WA0001.jpg', 'image/jpg', NULL, '0000-00-00 00:00:00', 20, '4', 'Weekdays', '', '', '13/08/2017', 565, 'sb', 'Texas', '31.968598800000002', '-99.9018131', NULL),
(92, 'Satyam', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2500, 'trainingImages/Screenshot_2017-08-13-12-18-52-578_com.android.chrome.png', 'image/android', NULL, '0000-00-00 00:00:00', 24, '4', 'Weekdays', '', '', '31/08/2017', 25, 'Satyam', 'Bengaluru', '12.971598699999998', '77.5945627', NULL),
(93, 'aug 23', 'test', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 2500, '', 'image/', NULL, '0000-00-00 00:00:00', 24, '7', 'Weekends', '', '', '25/08/2017', 25, 'problem while selecting this description view while creating training', 'CHANEL new bond street', '51.5107566', '-0.1429861', NULL),
(96, 'name', 'kl1', 'kl2', 'kl3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 23, '', '', NULL, '0000-00-00 00:00:00', 26, '2', 'avail', '', '', '2017-05-09', 2, 'desc', 'venue', '23.3', '25.2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture_file_name` varchar(255) DEFAULT NULL,
  `picture_content_type` varchar(255) DEFAULT NULL,
  `picture_file_size` int(11) DEFAULT NULL,
  `picture_updated_at` datetime DEFAULT NULL,
  `profile` text,
  `DOB` varchar(50) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `user_id`, `mobile_no`, `gender`, `created_at`, `updated_at`, `name`, `picture_file_name`, `picture_content_type`, `picture_file_size`, `picture_updated_at`, `profile`, `DOB`, `latitude`, `longitude`, `location`) VALUES
(12, 17, '9638520147', 'M', '2017-08-10 06:09:08', '2017-08-10 06:13:38', 'i h', 'profile/jkjkjkj.jpg', 'image/jpg', NULL, NULL, NULL, '2017/08/09', '25.2', '25.32', 'hhshhs'),
(14, 19, '46', 'F', '2017-08-10 06:26:57', '2017-08-10 07:24:14', 'd s', 'profile/IMG-20170806-WA0010.jpg', 'image/jpg', NULL, NULL, NULL, '10/08/2017', '19.8967662', '-155.5827818', 'Hawaii'),
(15, 20, '4646616', 'M', '2017-08-10 06:37:40', '2017-08-18 05:31:35', 'g s', 'profile/IMG-20170818-WA0002.jpg', 'image/jpg', NULL, NULL, NULL, '11/08/2017', '28.6618976', '77.2273958', 'Delhi'),
(16, 21, '6668888', 'F', '2017-08-10 06:43:08', '2017-08-10 06:43:50', 'g g', 'profile/IMG-20170806-WA0011.jpg', 'image/jpg', NULL, NULL, NULL, '11/08/2017', '32.1656221', '-82.9000751', 'Georgia'),
(18, 23, '556565656', 'M', '2017-08-10 06:50:33', '2017-08-10 06:51:19', 'SATYAM GUPTA', 'profile/IMG-20170806-WA0010.jpg', 'image/jpg', NULL, NULL, NULL, '11/08/2017', '29.760426700000004', '-95.3698028', 'Houston'),
(19, 24, '8880390936', 'M', '2017-08-11 05:39:09', '2017-08-21 11:33:13', 'Srinivas Shikar', 'profile/IMG_20170809_110107.jpg', 'image/jpg', NULL, NULL, NULL, '20/08/1987', '13.035769499999997', '77.5970222', 'Hebbal'),
(20, 25, '129845427846', 'M', '2017-08-21 11:36:11', '2017-08-21 11:36:11', 'sjaj hssu', '', '', NULL, NULL, NULL, '25/08/2017', '28.177477999999997', '76.44184729999999', 'Nandha'),
(21, 26, '8095634899', 'M', '2017-08-23 02:14:45', '2017-08-23 02:14:45', 'Amit Mittal', '', '', NULL, NULL, NULL, '23/08/2007', '13.0350041', '77.62354130000001', 'Nagawara');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `dropbox_session` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `provider`, `uid`, `dropbox_session`, `password`) VALUES
(17, 'ghj', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-10 06:09:08', '2017-08-10 06:13:38', NULL, NULL, NULL, 'h'),
(19, 'a', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-10 06:26:57', '2017-08-10 07:24:14', NULL, NULL, NULL, 'a'),
(20, 's', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-10 06:37:40', '2017-08-18 05:31:35', NULL, NULL, NULL, 's'),
(21, 'j', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-10 06:43:08', '2017-08-10 06:43:50', NULL, NULL, NULL, 'j'),
(23, 'optimustechproject201702@gmail.com', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-10 06:50:33', '2017-08-10 06:51:19', NULL, NULL, NULL, ''),
(24, 'srinivas.shikar@gmail.com', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-11 05:39:09', '2017-08-21 11:33:13', NULL, NULL, NULL, ''),
(25, 'nandhatest@gmail.com', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-21 11:36:11', '2017-08-21 11:36:11', NULL, NULL, NULL, '123'),
(26, 'amit.and.mittal@gmail.com', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2017-08-23 02:14:45', '2017-08-23 02:14:45', NULL, NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer_details`
--
ALTER TABLE `trainer_details`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_trainings_on_user_id` (`user_id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_userdetails_on_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `trainer_details`
--
ALTER TABLE `trainer_details`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
