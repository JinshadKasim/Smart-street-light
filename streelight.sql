-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 07:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streelight`
--

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `a_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`a_id`, `username`, `location`, `contact_no`, `email`, `status`, `password`) VALUES
(1, 'bijith', 'manjeri', '7559098975', 'b@gmail.com', 'authority', 'b'),
(3, 'af', 'sa', '1234567890', 'af@gmail.com', 'authority', 'af'),
(5, 'mufasil', 'mufa', '12345678990', 'mufa@gmail.com', 'authority', '123');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `complaint` varchar(50) NOT NULL,
  `reply` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `date`, `complaint`, `reply`, `u_id`, `status`) VALUES
(1, '2021-12-30', ' hl kl', 'ok', 1, 'forward'),
(2, '2022-02-07', ' AQFEDWSA', 'pending', 2, 'forward'),
(3, '2022-02-07', ' adsadsa', 'pending', 1, 'forward'),
(4, '2022-02-18', ' dsfvcefv', 'pending', 1, 'forward'),
(5, '2022-03-17', ' ggg', 'pending', 8, 'forward'),
(6, '2022-03-18', ' at maravattam', 'done\r\n', 2, 'forward'),
(7, '2022-03-18', 'qwerty', 'pending', 4, 'forward'),
(8, '2022-03-18', ' qwerty', 'pending', 4, 'pending'),
(9, '2022-03-18', ' asasas', 'done', 4, 'forward'),
(10, '2022-03-19', ' hello', 'ddf', 4, 'forward'),
(11, '2022-03-19', ' Not working near blue gen', 'pending', 4, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(0, 'auth', '0012_alter_user_first_name_max_length', '2022-02-18 07:45:17.633605'),
(1, 'contenttypes', '0001_initial', '2022-02-05 05:58:40.899356'),
(2, 'auth', '0001_initial', '2022-02-05 05:58:43.557806'),
(3, 'admin', '0001_initial', '2022-02-05 05:58:48.952441'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-05 05:58:50.185380'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-05 05:58:50.237348'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-05 05:58:50.637579'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-05 05:58:50.740612'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-05 05:58:50.821942'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-05 05:58:50.872278'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-05 05:58:51.263311'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-05 05:58:51.281788'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-05 05:58:51.319311'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-05 05:58:51.392055'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-05 05:58:51.493874'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-05 05:58:51.604133'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-05 05:58:51.647106'),
(17, 'sessions', '0001_initial', '2022-02-05 05:58:52.171621');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aqk8gfswddqsucsuq1vc4ws433g0g96t', 'ZGM0MDgzNTAzYTRhYzk5ODkyY2ExMGJkY2RjNmQ1MmNjZjZmMTQ2NTp7InVpZCI6NH0=', '2022-04-02 06:29:21.717717'),
('c2sjir0n0ixnp63r173uct6xq507m49r', 'eyJ1aWQiOjF9:1nL1Su:VQSGWSpqerH53VKNFIdgOvvXse2Z2XFjw2rR1kxBnC4', '2022-03-04 11:30:20.956898'),
('k7o7dhpyvn0zkue5g4euogg8qf4gslpe', 'eyJ1aWQiOjB9:1nKxQG:xF2KbXdw0AEnfnmQRr5NT4rpN8oLn_gCVnkTFEFLyDk', '2022-03-04 07:11:20.035174'),
('l1wkdghspd7shrlu0nicw6s5n8ny0l39', 'ZGM0MDgzNTAzYTRhYzk5ODkyY2ExMGJkY2RjNmQ1MmNjZjZmMTQ2NTp7InVpZCI6NH0=', '2022-04-02 05:05:39.958530'),
('mqll3qxh3y8jw75pqs5q9f3awwid742i', 'eyJ1aWQiOjEyfQ:1nV97P:O1cdOG5z-wHzYwzm1NktUQOYB0vkdTx65AUwIg07SZ4', '2022-04-01 09:41:59.359951'),
('vd8t5ddott6wsf6d7biic9bwn8mmi01j', 'ZDY2ZTM5NzIxYmJkNjJjNTAzMDQ3OTlkMjRjNDJjMTllYjJmODcyMDp7InVpZCI6MX0=', '2022-02-21 10:15:08.877992');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `name`, `email`, `password`, `a_id`) VALUES
(1, 'ffff', 'gh@gmail.com', '12334567', 0),
(2, 'vjvb', 'fxg@gmail.com', '136521', 0),
(3, 'SDASF', 'gh@gmail.com', 'dsfg', 0),
(4, 'asasFsdg', 'gh@gmail.com', '1234', 0),
(5, 'asasFsdg', 'gh@gmail.com', '1234', 0),
(6, 'ashif', 'ashif@gmail.com', '123', 0),
(7, 'ashif', 'a@gmail.com', 'a', 0),
(8, 'af', 'c@gmail.com', 'c', 3),
(9, 'sa', 'mufa@gmail.com', 'c', 3),
(10, 'saa', 'b@gmail.com', '2', 3),
(11, 'bijith', 'biji@gmail.com', '123', 1),
(12, 'aflah', 'aflah@gmail.com', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `l_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `auth_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`l_id`, `date`, `location`, `longitude`, `latitude`, `auth_id`) VALUES
(1, '2022-02-07', 'cx', 'dsvb', 'dsfsdf', 1),
(2, '2022-02-18', 'aaa', '75.13', '25.12', 3),
(3, '2022-03-17', 'gvc', '75.12', '12.32', 1),
(4, '2022-03-19', 'qwerty', '54.12', '23.12', 5);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'bijith', '12345678', 'User', 0),
(2, 'mufa', '123', 'authority', 1),
(3, 'biji', '1234', 'User', 1),
(4, 'af', '12345', 'Employee', 1),
(5, 'SDASF', '136521', 'Employee', 2),
(6, 'admin', 'admin', 'admin', 1),
(7, 'mufa@gmail.com', '123456', 'pending', 2),
(8, 'SDASF', 'dsfg', 'Employee', 3),
(9, 'asasFsdg', '1234', 'Employee', 4),
(10, 'asasFsdg', '1234', 'Employee', 5),
(11, 'ashif', '123', 'Employee', 6),
(12, 'mufa@gmail.com', '123', 'pending', 3),
(13, 'bijith', '1234', 'User', 2),
(14, 'mufa@gmail.com', '123', 'authority', 4),
(15, 'a@gmail.com', '12345', 'authority', 5),
(16, 'm@gmail.com', 'ppp', 'authority', 2),
(17, 'b@gmail.com', 'b', 'authority', 3),
(18, 'ashif', 'a', 'Employee', 7),
(19, 'af', 'c', 'Employee', 8),
(20, 'sa', 'c', 'Employee', 9),
(21, 'saa', '2', 'Employee', 10),
(22, 'af@gmail.com', 'af', 'authority', 4),
(23, 'bijith', '123', 'Employee', 11),
(24, 'ashif', 'ashif', 'User', 4),
(25, 'mufasil', '123', 'authority', 5),
(26, 'aflah', '123', 'Employee', 12);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `r_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `request` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `Status` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`r_id`, `u_id`, `request`, `time`, `date`, `Status`, `location`) VALUES
(1, 1, 'gvhk', '13:57:19', '2021-12-30', 'Rejected', 'fgbhfg'),
(2, 1, 'sdfgdf', '13:57:21', '2021-12-30', 'Rejected', 'fgvds'),
(3, 1, 'dzrtg', '15:02:29', '2021-12-30', 'pending', 'dfgd'),
(5, 1, 'qqqqq', '13:24:55', '2022-02-07', 'pending', ''),
(6, 8, 'clct', '15:31:31', '2022-03-17', 'pending', ''),
(7, 2, 'at kdmpuzha', '14:24:35', '2022-03-18', 'Accepted', ''),
(8, 4, 'ktkl', '14:47:16', '2022-03-18', 'Accepted', ''),
(9, 4, 'at calicut', '10:19:12', '2022-03-19', 'Accepted', ''),
(10, 4, 'In bluegen', '11:58:55', '2022-03-19', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `email`, `contact_no`, `gender`, `address`, `password`) VALUES
(1, 'bijith', '', 765, '', 'maniyankad', '12345678'),
(2, 'asreee', 'fgf@gamil.com', 235435, '', 'fcxghfgxh', '1232'),
(3, 'bijith', 'fgf@gamil.com', 1234567, '', 'aaaa', '1234'),
(4, 'ashif', 'as@gmail.com', 1234567890, '', 'as', 'ashif');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `w_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `work` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `e_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`w_id`, `auth_id`, `work`, `status`, `e_id`, `date`, `time`) VALUES
(1, 1, 'gnfnf', 'ok', 1, '2021-12-30', '14:17:23'),
(2, 1, 'dfxgdsf', 'sfx', 2, '2021-12-30', '15:40:36'),
(3, 1, 'adfds', 'pending', 3, '2022-02-05', '12:05:03'),
(4, 1, 'dfc', 'pending', 2, '2022-02-07', '14:03:28'),
(5, 3, 'need light', 'done', 8, '2022-02-18', '16:34:53'),
(6, 1, 'light at gvc', 'on duty', 8, '2022-03-17', '15:16:27'),
(7, 4, 'at gvc', 'pending', 11, '2022-03-18', '14:58:38'),
(8, 12, 'at krk', 'on duty', 12, '2022-03-18', '15:11:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
