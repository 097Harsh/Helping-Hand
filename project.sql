-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 02:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(12) NOT NULL,
  `area_name` varchar(20) NOT NULL,
  `city_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `city_id`) VALUES
(1, 'Bapunagar', 1),
(2, 'Nikol', 1),
(3, 'Naroda', 1),
(4, 'Mani-nagar', 1),
(5, 'Krishna-nagar', 1),
(6, 'Saraspur', 1),
(7, 'Hirawadi', 1),
(8, 'Ranip', 1),
(9, 'Paldi', 1),
(10, 'Vasna', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(12) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Food_donation'),
(2, 'Clothes_donation'),
(3, 'Medicine_donation'),
(4, 'Warm_clothes(Winter_wear)');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(12) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  `state_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'Ahmedabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `d_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `donation_date` date NOT NULL,
  `address` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `fromtime` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `contact_number` bigint(10) NOT NULL,
  `totime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`d_id`, `title`, `description`, `cat_id`, `donation_date`, `address`, `city_id`, `area_id`, `status`, `fromtime`, `user_id`, `contact_name`, `contact_number`, `totime`) VALUES
(1, 'Republic day celebration', 'Republic day celebration....', 1, '2023-01-30', 'viratnagar', 1, 1, 'accept', '12:51:00', 13, 'smit', 6895302147, '13:52:00'),
(2, 'birthday celebration', 'i will celebratee my birthday so i have 10 person meal ,so  i will donate in ngo', 1, '2023-01-30', 'nikol', 1, 2, 'accept', '12:01:00', 10, 'het shah', 9687052303, '18:00:00'),
(3, 'grand-father birthday celebration', 'celebration', 1, '2023-02-27', 'nikol', 1, 1, 'accept', '12:00:00', 13, 'smit panchal', 9895623210, '01:00:00'),
(4, 'marrige food meal', 'marriege food meal donationfor ngo', 1, '2023-03-01', 'test', 1, 1, 'accept', '10:59:00', 13, 'test', 6852934170, '11:58:00'),
(5, 'My grand-mother birthday', 'we planned to donate food in ngo at my grand-mother birthday...', 1, '2023-04-07', 'D-mart,nikol', 1, 2, 'accept', '10:05:00', 19, 'Patel hinal', 9856321458, '14:59:00'),
(6, 'birthday celebration', 'my fathers birthday and they decided to donate food in ngo	\r\n', 1, '2023-04-07', 'a-17,surbhi residency,nikol,ahmedabad	\r\n', 1, 2, 'pending', '13:26:00', 22, 'priti yadav', 9856321047, '14:28:00'),
(7, 'birthday celebration', 'my mother birthday and they decided to donate food in ngo	', 1, '2023-04-18', 'a-26,surbhi residency ,nikol gam,ahmedabad-380026', 1, 2, 'pending', '13:29:00', 21, 'shreya patel', 8855476320, '14:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `e_id` int(12) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(12) NOT NULL,
  `status` varchar(30) NOT NULL,
  `event_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `title`, `description`, `date`, `user_id`, `status`, `event_type`) VALUES
(1, 'birthday party', 'celebration of my birthday at NGO...', '2022-11-29', 2, 'complete', 'birthday_celebration'),
(2, 'new year party', 'celebrate for new year 2023....', '2023-01-07', 2, 'complete', 'new-year_party'),
(4, 'celebration', 'i will fill happy, so i celebrate', '2023-04-15', 11, 'pending', 'Other -celebration'),
(5, 'Birthday celebration', 'i will celebrate my birthday in NGO.', '2023-05-18', 13, 'pending', 'Birthday-celebration'),
(6, 'birthday celebration', 'my birthday celebration in NGO', '2023-07-24', 19, 'pending', 'Birthday-celebration');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(12) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(12) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `date`, `user_id`, `comment`, `rating`) VALUES
(1, '2022-11-05', 2, 'Nice work....', 3),
(8, '2023-01-09', 11, 'very nice work!......', 5),
(9, '2023-01-24', 14, ' i am join as volunteer for delivering donation into NGO, and it is a very good work for me....', 5),
(10, '2023-01-14', 2, 'good working for societys', 3),
(11, '2023-01-24', 6, 'good working keep going', 1),
(12, '2023-01-08', 11, 'nice work ngo.', 4),
(13, '2023-01-01', 8, 'nice work', 2),
(14, '2023-01-25', 14, 'test', 4),
(15, '2023-02-26', 9, 'Nice working.....', 5),
(16, '2023-03-12', 20, 'The ngo is working very nice .....', 5),
(17, '2023-03-27', 21, 'Nice working .....', 5),
(18, '2023-03-29', 21, 'good working...', 4),
(19, '2023-04-07', 22, 'I will be happy to say i am part of them and it works good for soceity', 5),
(20, '2023-04-07', 18, 'I am happy so say i am the part of them,and i worked for him as volunteer....', 5);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inq_id` int(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inq_id`, `name`, `email`, `contact`, `message`, `date`) VALUES
(1, 'abcc', 'abc@gmail.com', 5566223311, 'how to donate....?', '2023-01-03'),
(2, 'fenil patel', 'fento@gmail.com', 9368521452, 'can i donate  money ....?', '2023-01-03'),
(3, 'Kalpesh patel', 'kalpeshpatel@gmail.com', 5689741230, 'what is process of donation?.....', '2023-01-09'),
(4, 'meenaben shah', 'shahds007@gmail.com', 9687052303, 'What is process to donate a food....', '2023-01-29'),
(5, 'Heena patel', 'heena01@gmao.com', 8865324179, 'what time can take your volunteer for delivering food into ngo...', '2023-03-15'),
(6, 'Kajal Mehta', 'shahkajal@gmail.com', 9714658962, 'i want donate money using my banking application can i make ...?', '2023-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `money_donation`
--

CREATE TABLE `money_donation` (
  `m_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `d_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `money_donation`
--

INSERT INTO `money_donation` (`m_id`, `user_id`, `amount`, `description`, `date`, `d_name`) VALUES
(1, 13, '5000', 'for supporting medicine for ngo', '2023-01-03', 'Smit panchal'),
(2, 13, '5000', 'this is for helping clothes for ngo\'s person\'s....', '2023-01-21', 'Jaydev panchal'),
(3, 13, '10000', 'This is for testing', '2023-02-26', 'Smit panchal'),
(4, 13, '1000', 'vastu-pooja', '2023-02-27', 'Bharatbhai panchal'),
(5, 9, '10000', 'for helping-person ', '2023-02-28', 'Het shah'),
(6, 9, '10000', 'helping  for food', '2023-03-01', 'Vishal fumakiya'),
(8, 9, '10000', 'for helping-food ....', '2023-03-02', 'Mihir mehta'),
(9, 20, '10000', 'i am supporting to ngo to given money donation.....', '2023-03-12', 'Nirish fumakiya'),
(10, 1, '10000', 'i will donete for meal in ngo all person\'s', '2023-03-22', 'Harsh Shah'),
(11, 1, '6000', 'i will donate in ngo\'s for medicine\'s.... ', '2023-03-26', 'Aarav fumakiya'),
(12, 21, '2000', 'I will donate for meal in NGO.', '2023-03-25', 'Shreya Patel'),
(13, 21, '2000', 'I will donate for medicine in NGO.', '2023-03-27', 'Shreya Patel'),
(14, 22, '3000', ' i will donate for ngo releated medical check-up', '2023-04-07', 'Priti yadav'),
(15, 3, '1000', 'i am donate to ngo a small thing for medicenes....', '2023-04-11', 'Man ambani');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(12) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(12) NOT NULL,
  `state_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `reg_date` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `contact`, `gender`, `dob`, `address`, `city_id`, `area_id`, `image`, `reg_date`, `password`, `role_id`) VALUES
(1, 'harsh', 'shh@gmail.com', 5566332211, 'male', '2023-01-03', '750/5011 g.h.b ,near shriji school,bapunagar-ahmedbad-380024', 1, 1, '0000.jpg', '2023-01-11', '1234567', 2),
(2, 'shashank patel', 'patelshashank@gmail.com', 566223311, 'male', '2023-01-03', '52-g,near sardar chowk,bapunagar,ahmedabad', 1, 1, '0000.jpg', '2023-01-05', '123', 3),
(3, 'Mann ambani', 'mann@gmail.com', 5883636665, 'Male', '1999-01-02', '56-t,annpurna socity,near chadra prasad desi hall,bapunagar,ahmedabad-380024', 1, 5, '0000.jpg', '2023-01-02', '123', 2),
(6, 'fenil', 'fento@gmail.com', 233114455, 'Female', '2023-01-04', '52-g,near sardar chowk,bapunagar,ahmedabad', 1, 7, '00.jpg', '2023-01-02', '1234', 3),
(7, 'Jaimin darji', 'jaimin02@gmail.com', 885522663, 'Male', '2023-01-10', '1-g,near shriji school,bapunagar', 1, 1, 'WhatsApp Image 2022-11-21 at 7.24.58 PM.jpeg', '2023-01-10', '1234567890', 1),
(8, 'alkesh', 'laba@gmail.com', 9856320147, 'Male', '1993-02-02', '02-g,near bhaktinagar-bapunagar', 1, 6, 'team4.jpg', '2023-01-02', '123456', 3),
(9, 'het shah', 'hetshah@gmail.com', 5566887744, 'Male', '2006-07-26', '03-devsya residency,bapunagar', 1, 1, '0000.jpg', '2023-01-06', '1234567', 2),
(10, 'ravi jain', 'ravi@gmail.com', 5566887744, 'Male', '2006-07-26', '1/t,annpurna socity,near shree annpurna mataji mandir,bapunagar,ahmedabad-380024', 1, 1, '0000.jpg', '2023-01-06', '12345678', 2),
(11, 'raj panchal', 'rajpanchal@gmail.com', 5452452545, 'Male', '2023-01-01', '56-b,annpurna socity,near chadra prasad desi hall,bapunagar,ahmedabad-380024', 1, 1, '01111.jpg', '2023-01-09', '12345', 2),
(12, 'Helping-Hand(NGO)', 'halpinghand@gmail.com', 9712658293, 'Male', '2003-07-02', '743/8956 g.h.board,near shirji school,bapunagar', 1, 1, '20221123_215139.png', '2023-01-20', '1234567', 1),
(13, 'Smit panchal', 'panchalsmit@gmail.com', 995268352, 'Male', '2003-07-18', '1-a,aadiya pare society,Manmohan - park', 1, 1, 'log.jpg', '2023-01-20', '1230', 2),
(14, 'Patel vishal', 'vishalpatel@gmail.com', 8856321479, 'Male', '1996-11-14', '14/t,satyam flat,krishna-nagar', 1, 1, 'log.jpg', '2023-01-20', '5620', 3),
(15, 'Dharmendrabhai Shah', 'dsshah009@gmail.com', 7984605895, 'Male', '1973-11-01', '756/5058 g.h.b,near shrji school,bapunagar', 1, 2, 'team3.jpg', '2023-01-29', '8007', 3),
(16, 'Bhagyesh Shah', 'brainklick@gmail.com', 8596320147, 'Male', '1986-12-26', '24-b,shivalik-2 residency,nikol', 1, 1, 'f6.jpg', '2023-01-31', '8899', 3),
(17, 'Panchal jaydev', 'jaydevpanchal1323@gmail.com', 6589230147, 'Male', '2023-01-05', '1,shivalik residency,nikol', 1, 2, 'team2.jpg', '2023-01-31', '1323', 3),
(18, 'Panchal priya', 'priyapanchal1323@gmail.com', 6589230147, 'Female', '2023-01-05', 'b-14,satyam flat,nikol,ahmedabad', 1, 2, 'team2.jpg', '2023-01-31', '1324', 3),
(19, 'Patel hinal', 'hinal@gmail.com', 9988256320, 'Female', '2002-05-13', '14-z/opinon residenct,naroda', 1, 3, 'sequnce_admin.drawio.png', '2023-01-31', '8575', 2),
(20, 'Dharshti prajapati', 'dharsti@gmail.com', 9756841230, 'Female', '1987-10-12', 'b-14,satyam flat,nikol,ahmedabad', 1, 2, 'images.jpeg', '2023-03-12', '123', 2),
(21, 'Shreya patel', 'shreyapatel023@gmail.com', 9712586329, 'Female', '2003-01-24', 'a-26,surbhi residency ,nikol gam,ahmedabad-380026', 1, 2, 'logo.png', '2023-03-27', 'shreya', 2),
(22, 'Priti Yadav', 'pritiyadav@gmail.com', 8576941230, 'Female', '1998-12-17', 'a-17,surbhi residency ,nikol gam,ahmedabad-380026', 1, 2, 'download (1).jpeg', '2023-04-07', 'priti', 2);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_acceptance`
--

CREATE TABLE `volunteer_acceptance` (
  `v_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(30) NOT NULL,
  `d_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `receive_datetime` datetime NOT NULL,
  `receive_message` text NOT NULL,
  `delivery_datetime` datetime NOT NULL,
  `delivery_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_acceptance`
--

INSERT INTO `volunteer_acceptance` (`v_id`, `user_id`, `datetime`, `status`, `d_id`, `description`, `receive_datetime`, `receive_message`, `delivery_datetime`, `delivery_message`) VALUES
(1, 14, '2023-01-29 12:51:55', 'accept', 1, 'i am here in your location i will collect in few hour...', '2023-01-29 12:52:17', ' i will donation there is 4 person meal...', '2023-01-29 12:52:36', 'i delivered 4 person meal into ngo.'),
(2, 15, '2023-01-29 08:11:25', 'accept', 2, 'i will come in evening...', '2023-01-29 08:11:51', 'i will collect 10 person meal...', '2023-01-29 08:12:14', 'i will delivered 10 person meal into ngo.'),
(3, 14, '2023-03-03 09:59:59', 'accept', 4, 'i will be reached at time...', '2023-03-03 10:00:25', 'parcel received successfully...', '2023-03-03 10:00:48', 'parcel delivered successfully...'),
(4, 14, '2023-03-04 12:14:00', 'accept', 3, 'i will be reached at time...', '2023-03-04 12:14:28', 'i will coloect 3 person meal...', '2023-03-04 12:14:43', 'I will delivered 3 persong meal into ngo...'),
(5, 18, '2023-04-07 10:58:46', 'accept', 5, 'I will be reached to collect donation at 11:00 am', '2023-04-07 11:02:05', 'i will receive for 4 person meal for ngo..', '2023-04-07 11:13:05', ' i will delivered food in NGO.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `cat_id` (`cat_id`,`city_id`,`area_id`,`user_id`),
  ADD KEY `area_id` (`area_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inq_id`);

--
-- Indexes for table `money_donation`
--
ALTER TABLE `money_donation`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `area_id` (`area_id`,`city_id`,`role_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `volunteer_acceptance`
--
ALTER TABLE `volunteer_acceptance`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `user_id` (`user_id`,`d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `e_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inq_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `money_donation`
--
ALTER TABLE `money_donation`
  MODIFY `m_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `volunteer_acceptance`
--
ALTER TABLE `volunteer_acceptance`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donation_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `money_donation`
--
ALTER TABLE `money_donation`
  ADD CONSTRAINT `money_donation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
