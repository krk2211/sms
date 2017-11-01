-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 01, 2017 at 09:10 AM
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
  `slot` enum('A','B','C','D','E','F','G','H') NOT NULL,
  `totalClasses` int(11) NOT NULL DEFAULT '0',
  `possibleLeaves` int(11) DEFAULT '0',
  `credits` enum('3','4','1','2') NOT NULL,
  `considerInCGPA` enum('Y','N') DEFAULT 'N',
  `teacherID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseName`, `classroom`, `slot`, `totalClasses`, `possibleLeaves`, `credits`, `considerInCGPA`, `teacherID`) VALUES
(1, 'LGD', 'NLHC304', 'H', 45, 9, '1', 'N', 3),
(2, 'Financial Audits', 'NLHC304', 'G', 45, 9, '1', 'N', 31),
(3, 'OEM Management', 'ELHC401', 'H', 30, 6, '4', 'N', 33),
(4, 'UV coating', 'NLHC203', 'H', 15, 3, '3', 'Y', 18),
(5, 'Access', 'ELHC203', 'H', 30, 6, '4', 'Y', 84),
(6, 'Zinc', 'ELHC304', 'G', 45, 9, '1', 'Y', 1),
(7, 'Data Modeling', 'ELHC401', 'G', 30, 6, '4', 'Y', 27),
(8, 'QPST', 'ELHC401', 'E', 45, 9, '1', 'Y', 90),
(9, 'Spring Framework', 'ELHC401', 'H', 45, 9, '1', 'Y', 58),
(10, 'Epistemology', 'ELHC401', 'H', 45, 9, '1', 'Y', 67),
(11, 'ETABS', 'NLHC203', 'H', 15, 3, '3', 'N', 56),
(12, 'UIKit', 'ELHC401', 'G', 30, 6, '4', 'Y', 5),
(13, 'Operations Management', 'ELHC304', 'F', 15, 3, '3', 'Y', 19),
(14, 'Creative Strategy', 'NLHC304', 'G', 30, 6, '4', 'Y', 72),
(15, 'Editorial Illustrations', 'ELHC401', 'F', 15, 3, '3', 'Y', 85),
(16, 'Comic Book Illustration', 'NLHC401', 'H', 30, 6, '4', 'Y', 80),
(17, 'Interior Design', 'NLHC401', 'G', 30, 6, '4', 'Y', 96),
(18, 'Non-compete Agreements', 'ELHC102', 'H', 30, 6, '4', 'Y', 40),
(19, 'Online Gaming', 'NLHC304', 'G', 15, 3, '3', 'Y', 42),
(20, 'Test Planning', 'ELHC203', 'H', 30, 6, '4', 'N', 99),
(21, 'Flight Planning', 'ELHC304', 'E', 15, 3, '3', 'Y', 97),
(22, 'NT 4.0', 'ELHC401', 'H', 45, 9, '1', 'N', 90),
(23, 'MW', 'NLHC401', 'H', 30, 6, '4', 'N', 63),
(24, 'TCD', 'NLHC203', 'H', 15, 3, '3', 'Y', 2),
(25, 'OO Software Development', 'NLHC401', 'H', 30, 6, '4', 'Y', 57),
(26, 'GMPLS', 'NLHC401', 'G', 45, 9, '1', 'Y', 2),
(27, 'Rig', 'NLHC401', 'A', 60, 12, '2', 'N', 29),
(28, 'Workers Compensation', 'ELHC401', 'H', 45, 9, '1', 'Y', 41),
(29, 'OSHA', 'NLHC203', 'H', 15, 3, '3', 'Y', 87),
(30, 'Nikon DSLR', 'ELHC401', 'H', 30, 6, '4', 'N', 50),
(31, 'Sales Operations', 'NLHC401', 'H', 45, 9, '1', 'Y', 43),
(32, 'XATA', 'NLHC304', 'E', 30, 6, '4', 'Y', 47),
(33, 'R&amp;TTE', 'NLHC401', 'G', 30, 6, '4', 'N', 28),
(34, 'Static Timing Analysis', 'NLHC401', 'C', 45, 9, '1', 'N', 56),
(35, 'Data Center', 'NLHC203', 'G', 30, 6, '4', 'N', 33),
(36, 'Mobile Technology', 'ELHC304', 'G', 30, 6, '4', 'Y', 47),
(37, 'McAfee Antivirus', 'NLHC304', 'H', 15, 3, '3', 'Y', 94),
(38, 'Sage ERP X3', 'NLHC102', 'H', 45, 9, '1', 'Y', 69),
(39, 'Waterfall', 'NLHC304', 'H', 30, 6, '4', 'N', 78),
(40, 'Ultrasonic Welding', 'NLHC401', 'D', 30, 6, '4', 'N', 92),
(41, 'SOA BPEL', 'ELHC401', 'H', 45, 9, '1', 'N', 20),
(42, 'Hypertension', 'NLHC401', 'G', 30, 6, '4', 'Y', 3),
(43, 'HTTPS', 'ELHC304', 'H', 15, 3, '3', 'Y', 29),
(44, 'HR Transformation', 'NLHC401', 'G', 30, 6, '4', 'Y', 28),
(45, 'KCS', 'ELHC102', 'F', 45, 9, '1', 'Y', 24),
(46, 'Ignatian Spirituality', 'ELHC401', 'E', 30, 6, '4', 'Y', 43),
(47, 'Ocular Disease', 'ELHC401', 'G', 30, 6, '4', 'Y', 59),
(48, 'Jewish Studies', 'NLHC401', 'H', 15, 3, '3', 'N', 94),
(49, 'Zabbix', 'NLHC102', 'E', 30, 6, '4', 'Y', 11),
(50, 'UEFI', 'NLHC203', 'F', 45, 9, '1', 'N', 64),
(51, 'First Time Home Buyers', 'NLHC304', 'H', 45, 9, '1', 'N', 37),
(52, 'SFP', 'ELHC401', 'H', 30, 6, '4', 'Y', 65),
(53, 'Utility Locating', 'NLHC401', 'F', 30, 6, '4', 'N', 56),
(54, 'Hospitality', 'NLHC203', 'F', 30, 6, '4', 'Y', 32),
(55, 'Family Therapy', 'ELHC401', 'E', 45, 9, '1', 'N', 42),
(56, 'Titration', 'ELHC304', 'H', 15, 3, '3', 'Y', 34),
(57, 'WGA', 'ELHC401', 'E', 30, 6, '4', 'N', 24),
(58, 'Sleep Medicine', 'NLHC304', 'H', 15, 3, '3', 'Y', 93),
(59, 'IEEE', 'ELHC401', 'H', 15, 3, '3', 'N', 64),
(60, 'Uniform Combined State Law', 'ELHC401', 'H', 45, 9, '1', 'N', 63),
(61, 'OKI', 'ELHC102', 'F', 45, 9, '1', 'Y', 64),
(62, 'Floor Plans', 'ELHC304', 'D', 45, 9, '1', 'Y', 9),
(63, 'MBTI', 'ELHC401', 'H', 15, 3, '3', 'Y', 24),
(64, 'HSSE', 'NLHC401', 'F', 30, 6, '4', 'Y', 71),
(65, 'PPAP', 'ELHC401', 'H', 45, 9, '1', 'Y', 66),
(66, 'EELS', 'ELHC304', 'H', 15, 3, '3', 'N', 29),
(67, 'NAS', 'NLHC203', 'G', 30, 6, '4', 'Y', 68),
(68, 'HP Blade', 'ELHC401', 'F', 45, 9, '1', 'N', 45),
(69, 'VPLS', 'ELHC401', 'H', 30, 6, '4', 'Y', 17),
(70, 'ESRI', 'NLHC401', 'F', 30, 6, '4', 'N', 42),
(71, 'Failure Analysis', 'ELHC203', 'F', 30, 6, '4', 'Y', 31),
(72, 'IFE', 'ELHC401', 'H', 45, 9, '1', 'N', 72),
(73, 'QS1', 'ELHC102', 'G', 15, 3, '3', 'Y', 52),
(74, 'Behavioral Health', 'NLHC401', 'H', 45, 9, '1', 'Y', 43),
(75, 'Interviewing Skills', 'NLHC401', 'H', 30, 6, '4', 'N', 58),
(76, 'CSRs', 'NLHC401', 'H', 30, 6, '4', 'Y', 14),
(77, 'GFAAS', 'ELHC203', 'H', 30, 6, '4', 'Y', 51),
(78, 'Young People', 'NLHC401', 'H', 45, 9, '1', 'Y', 81),
(79, 'Beauty Industry', 'ELHC304', 'G', 30, 6, '4', 'N', 91),
(80, 'Elementary Education', 'ELHC401', 'H', 30, 6, '4', 'N', 8),
(81, 'PDM', 'ELHC401', 'G', 30, 6, '4', 'Y', 81),
(82, 'MLD', 'ELHC203', 'G', 45, 9, '1', 'N', 7),
(83, 'Talent Booking', 'ELHC401', 'H', 15, 3, '3', 'Y', 37),
(84, 'RIP', 'ELHC203', 'G', 30, 6, '4', 'N', 23),
(85, 'University Teaching', 'ELHC203', 'H', 30, 6, '4', 'N', 3),
(86, 'Dual Diagnosis', 'ELHC401', 'H', 45, 9, '1', 'Y', 77),
(87, 'Store Management', 'NLHC401', 'D', 15, 3, '3', 'Y', 89),
(88, 'MDRs', 'ELHC304', 'F', 30, 6, '4', 'Y', 21),
(89, 'Sony HDV', 'NLHC401', 'H', 45, 9, '1', 'N', 7),
(90, 'AKTA', 'ELHC304', 'H', 30, 6, '4', 'Y', 96),
(91, 'TMJ Treatment', 'NLHC401', 'G', 15, 3, '3', 'N', 18),
(92, 'Software Implementation', 'NLHC304', 'H', 45, 9, '1', 'N', 74),
(93, 'TV Distribution', 'NLHC401', 'G', 45, 9, '1', 'Y', 18),
(94, 'Web TV', 'ELHC304', 'G', 15, 3, '3', 'N', 69),
(95, 'Gymnastics', 'ELHC304', 'F', 30, 6, '4', 'N', 5),
(96, 'Foreign Affairs', 'NLHC401', 'G', 45, 9, '1', 'Y', 69),
(97, 'DFX', 'NLHC102', 'E', 30, 6, '4', 'Y', 21),
(98, 'NCAA Compliance', 'NLHC401', 'H', 30, 6, '4', 'N', 7),
(99, 'Carrier Ethernet', 'NLHC401', 'H', 30, 6, '4', 'Y', 40),
(100, 'Escrow', 'NLHC304', 'F', 45, 9, '1', 'Y', 40);

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

--
-- Dumping data for table `loginAttempts`
--

INSERT INTO `loginAttempts` (`IP`, `Attempts`, `LastLogin`, `Username`, `ID`) VALUES
('::1', 2, '2017-10-31 19:39:34', 'Kiran', 1);

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
('B', 'non-veg', 79),
('C', 'veg', 69),
('D', 'non-veg', 99);

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
(1, 'Lisbeth Geany', 'lgeany0@multiply.com', 'CIVIL', '7/12/2017', 'E', 'E', 6),
(2, 'Aundrea Barkess', 'abarkess1@disqus.com', 'MECH', '5/28/2017', 'H', 'E', 5),
(3, 'Taite Terzi', 'tterzi2@tamu.edu', 'MECH', '4/25/2017', 'F', 'C', 8),
(4, 'Halley O\' Markey', 'ho3@clickbank.net', 'EEE', '2/27/2017', 'F', 'C', 7),
(5, 'Christoffer Manning', 'cmanning4@cbsnews.com', 'CIVIL', '9/3/2017', 'E', 'C', 6),
(6, 'Marco Edwicker', 'medwicker5@dot.gov', 'ECE', '1/30/2017', 'H', 'C', 7),
(7, 'Olimpia McNirlan', 'omcnirlan6@arstechnica.com', 'CSE', '5/15/2017', 'E', 'F', 9),
(8, 'Lorinda Nuttey', 'lnuttey7@nature.com', 'CSE', '12/28/2016', 'D', 'A', 5),
(9, 'Tony Eilert', 'teilert8@acquirethisname.com', 'MECH', '11/29/2016', 'D', 'B', 4),
(10, 'Budd Featherstonhaugh', 'bfeatherstonhaugh9@oakley.com', 'CSE', '1/10/2017', 'B', 'F', 6),
(11, 'Pacorro Pagen', 'ppagena@facebook.com', 'MECH', '5/27/2017', 'A', 'F', 4),
(12, 'Lalo Cradey', 'lcradeyb@marketwatch.com', 'CSE', '1/30/2017', 'A', 'F', 7),
(13, 'Maurise Whacket', 'mwhacketc@amazon.com', 'ECE', '12/28/2016', 'F', 'D', 10),
(14, 'Tally Mytton', 'tmyttond@ucla.edu', 'EEE', '3/18/2017', 'E', 'C', 4),
(15, 'Pierrette Coping', 'pcopinge@patch.com', 'CSE', '5/15/2017', 'E', 'D', 4),
(16, 'Regine Bidder', 'rbidderf@netscape.com', 'MECH', '2/19/2017', 'G', 'D', 5),
(17, 'Thorndike Lealle', 'tlealleg@nydailynews.com', 'CIVIL', '1/1/2017', 'B', 'B', 6),
(18, 'Gisella Tutchener', 'gtutchenerh@networkadvertising.org', 'CIVIL', '2/27/2017', 'D', 'B', 10),
(19, 'Deanna Lyles', 'dlylesi@printfriendly.com', 'EEE', '9/14/2017', 'G', 'B', 8),
(20, 'Niel Crathern', 'ncrathernj@naver.com', 'MECH', '9/21/2017', 'B', 'E', 8),
(21, 'Desmund Maybery', 'dmayberyk@abc.net.au', 'MECH', '8/20/2017', 'H', 'F', 7),
(22, 'Torey Tixall', 'ttixalll@bigcartel.com', 'ECE', '9/18/2017', 'C', 'B', 6),
(23, 'Adler Uff', 'auffm@sitemeter.com', 'MECH', '6/17/2017', 'B', 'C', 7),
(24, 'Jehu Barber', 'jbarbern@tripod.com', 'MECH', '12/11/2016', 'B', 'E', 5),
(25, 'Donnie Ebbers', 'debberso@sun.com', 'EEE', '6/14/2017', 'G', 'B', 6),
(26, 'Brianna Vannacci', 'bvannaccip@addthis.com', 'CIVIL', '6/1/2017', 'D', 'E', 7),
(27, 'De Glaum', 'dglaumq@kickstarter.com', 'ECE', '6/15/2017', 'F', 'E', 7),
(28, 'Davy Philott', 'dphilottr@acquirethisname.com', 'MECH', '8/15/2017', 'H', 'B', 8),
(29, 'Jilli Battelle', 'jbattelles@bigcartel.com', 'MECH', '9/6/2017', 'C', 'C', 9),
(30, 'Kaye Stroban', 'kstrobant@w3.org', 'ECE', '3/19/2017', 'C', 'B', 8),
(31, 'Sunny Ilden', 'sildenu@rakuten.co.jp', 'ECE', '7/15/2017', 'E', 'A', 7),
(32, 'Beitris Andover', 'bandoverv@msu.edu', 'EEE', '2/15/2017', 'D', 'E', 9),
(33, 'Lira Hulett', 'lhulettw@ustream.tv', 'MECH', '4/14/2017', 'B', 'C', 6),
(34, 'Tedd Sanbrooke', 'tsanbrookex@tmall.com', 'EEE', '11/23/2016', 'H', 'A', 9),
(35, 'Karilynn Jesty', 'kjestyy@indiegogo.com', 'CIVIL', '8/6/2017', 'F', 'F', 8),
(36, 'Samuele Burgoyne', 'sburgoynez@canalblog.com', 'CSE', '4/14/2017', 'H', 'B', 7),
(37, 'Cosmo Money', 'cmoney10@columbia.edu', 'CSE', '11/19/2016', 'G', 'D', 5),
(38, 'Ninette Akid', 'nakid11@csmonitor.com', 'MECH', '8/5/2017', 'F', 'F', 7),
(39, 'Barty Gatenby', 'bgatenby12@state.gov', 'MECH', '7/11/2017', 'D', 'C', 6),
(40, 'Wylma Von Oertzen', 'wvon13@hud.gov', 'CSE', '9/22/2017', 'A', 'E', 4),
(41, 'Nicolette Osichev', 'nosichev14@wunderground.com', 'MECH', '8/5/2017', 'F', 'F', 7),
(42, 'Grier Bartkiewicz', 'gbartkiewicz15@narod.ru', 'ECE', '9/14/2017', 'C', 'F', 4),
(43, 'Jerry Coplestone', 'jcoplestone16@wordpress.com', 'MECH', '7/20/2017', 'C', 'F', 6),
(44, 'Padgett Poultney', 'ppoultney17@census.gov', 'CSE', '2/23/2017', 'H', 'D', 4),
(45, 'Odette Coutts', 'ocoutts18@omniture.com', 'EEE', '10/20/2017', 'A', 'F', 7),
(46, 'Cleon Guidoni', 'cguidoni19@constantcontact.com', 'CSE', '12/20/2016', 'D', 'D', 5),
(47, 'Cameron Leyfield', 'cleyfield1a@rediff.com', 'CIVIL', '7/4/2017', 'C', 'F', 7),
(48, 'Guilbert Bucher', 'gbucher1b@cnbc.com', 'EEE', '10/2/2017', 'B', 'D', 8),
(49, 'Tomaso Wilson', 'twilson1c@last.fm', 'MECH', '3/31/2017', 'F', 'D', 7),
(50, 'Carlota MacAlroy', 'cmacalroy1d@arstechnica.com', 'MECH', '12/2/2016', 'B', 'C', 5),
(51, 'Zarah Serridge', 'zserridge1e@amazonaws.com', 'MECH', '9/5/2017', 'B', 'F', 6),
(52, 'Beaufort Davidove', 'bdavidove1f@t-online.de', 'CIVIL', '1/7/2017', 'H', 'D', 8),
(53, 'Milzie Dubbin', 'mdubbin1g@ihg.com', 'ECE', '12/16/2016', 'F', 'E', 6),
(54, 'Boris Sarge', 'bsarge1h@com.com', 'ECE', '5/11/2017', 'C', 'D', 5),
(55, 'Sherman Whipple', 'swhipple1i@amazon.co.jp', 'MECH', '2/4/2017', 'G', 'D', 9),
(56, 'Fabien Masterson', 'fmasterson1j@ovh.net', 'ECE', '7/20/2017', 'D', 'E', 9),
(57, 'Charles Chestle', 'cchestle1k@1und1.de', 'EEE', '5/4/2017', 'H', 'E', 8),
(58, 'Eugenius Roden', 'eroden1l@shop-pro.jp', 'MECH', '11/25/2016', 'D', 'A', 5),
(59, 'Ugo Blackstock', 'ublackstock1m@jalbum.net', 'MECH', '9/5/2017', 'D', 'D', 5),
(60, 'Davie Bertwistle', 'dbertwistle1n@reference.com', 'MECH', '3/16/2017', 'E', 'F', 4),
(61, 'Gabi Kilvington', 'gkilvington1o@reuters.com', 'MECH', '9/12/2017', 'A', 'B', 5),
(62, 'Caspar Mustarde', 'cmustarde1p@cnn.com', 'CSE', '1/23/2017', 'H', 'E', 6),
(63, 'Arlan Spire', 'aspire1q@omniture.com', 'CIVIL', '12/18/2016', 'D', 'C', 7),
(64, 'Berta Elstob', 'belstob1r@chron.com', 'CIVIL', '9/12/2017', 'C', 'F', 5),
(65, 'Cathrine Ortelt', 'cortelt1s@walmart.com', 'CSE', '1/4/2017', 'B', 'D', 9),
(66, 'Gabbi Carabet', 'gcarabet1t@1688.com', 'CSE', '6/9/2017', 'F', 'A', 5),
(67, 'Karee Cooksey', 'kcooksey1u@woothemes.com', 'MECH', '8/30/2017', 'C', 'C', 9),
(68, 'Glenda Busk', 'gbusk1v@bloglines.com', 'EEE', '3/6/2017', 'G', 'C', 5),
(69, 'Annalise Nowakowski', 'anowakowski1w@hatena.ne.jp', 'EEE', '7/12/2017', 'B', 'C', 8),
(70, 'Alfie Clatworthy', 'aclatworthy1x@sphinn.com', 'EEE', '4/12/2017', 'D', 'D', 6),
(71, 'Ettie Stithe', 'estithe1y@sciencedaily.com', 'MECH', '5/5/2017', 'D', 'F', 8),
(72, 'Krishnah Fruchter', 'kfruchter1z@nbcnews.com', 'CSE', '3/12/2017', 'E', 'B', 6),
(73, 'Ashlee Brauninger', 'abrauninger20@shop-pro.jp', 'EEE', '10/7/2017', 'G', 'E', 7),
(74, 'Rebbecca Powton', 'rpowton21@mapquest.com', 'CSE', '3/15/2017', 'B', 'A', 6),
(75, 'Tobey Bony', 'tbony22@google.fr', 'CSE', '4/2/2017', 'B', 'A', 9),
(76, 'Elianora Sharper', 'esharper23@tuttocitta.it', 'CIVIL', '9/12/2017', 'A', 'B', 7),
(77, 'Delora Jewis', 'djewis24@google.com.au', 'EEE', '10/7/2017', 'B', 'A', 9),
(78, 'Alejandrina Meltetal', 'ameltetal25@github.com', 'CSE', '12/2/2016', 'A', 'A', 8),
(79, 'Sherrie Brill', 'sbrill26@google.com.br', 'MECH', '11/7/2016', 'D', 'C', 8),
(80, 'Rosaline Gasparro', 'rgasparro27@toplist.cz', 'CIVIL', '5/29/2017', 'G', 'C', 7),
(81, 'Gray Hiers', 'ghiers28@chron.com', 'CSE', '5/27/2017', 'B', 'D', 9),
(82, 'Bertrando Matignon', 'bmatignon29@businessweek.com', 'ECE', '3/10/2017', 'G', 'D', 5),
(83, 'Bartholomeus Piniur', 'bpiniur2a@gravatar.com', 'MECH', '9/21/2017', 'H', 'B', 6),
(84, 'Sibley Keenlayside', 'skeenlayside2b@prlog.org', 'MECH', '12/11/2016', 'F', 'D', 9),
(85, 'Zulema Netting', 'znetting2c@odnoklassniki.ru', 'ECE', '3/5/2017', 'H', 'C', 8),
(86, 'Shandra Jonathon', 'sjonathon2d@cbc.ca', 'CSE', '9/18/2017', 'B', 'A', 5),
(87, 'Sigismundo Amphlett', 'samphlett2e@blogspot.com', 'ECE', '4/3/2017', 'G', 'C', 5),
(88, 'Rafaela Kirwan', 'rkirwan2f@hc360.com', 'MECH', '11/15/2016', 'A', 'D', 7),
(89, 'Enriqueta Bedenham', 'ebedenham2g@skyrock.com', 'CIVIL', '12/25/2016', 'B', 'F', 8),
(90, 'Carney Richardot', 'crichardot2h@who.int', 'CSE', '9/11/2017', 'H', 'D', 6),
(91, 'Fanchon Cleal', 'fcleal2i@google.co.jp', 'CIVIL', '12/10/2016', 'E', 'E', 5),
(92, 'Mead Marzello', 'mmarzello2j@digg.com', 'EEE', '1/16/2017', 'E', 'F', 5),
(93, 'Keith Wasbey', 'kwasbey2k@home.pl', 'MECH', '2/28/2017', 'D', 'A', 7),
(94, 'Mattias Jansson', 'mjansson2l@craigslist.org', 'MECH', '3/28/2017', 'A', 'E', 5),
(95, 'Klarika Bone', 'kbone2m@paginegialle.it', 'CSE', '9/26/2017', 'D', 'F', 9),
(96, 'Jarred Wait', 'jwait2n@utexas.edu', 'CIVIL', '5/10/2017', 'A', 'F', 9),
(97, 'Lilah Keilloh', 'lkeilloh2o@a8.net', 'CIVIL', '8/21/2017', 'D', 'F', 8),
(98, 'Trudy Maker', 'tmaker2p@mashable.com', 'CSE', '5/1/2017', 'G', 'F', 5),
(99, 'Joanie Piscot', 'jpiscot2q@vinaora.com', 'CSE', '11/8/2016', 'D', 'C', 5),
(100, 'Faulkner Doeg', 'fdoeg2r@wunderground.com', 'CSE', '3/3/2017', 'G', 'F', 10),
(101, 'Kiran R', 'kiran@gmail.com', 'CSE', '22/11/1997', 'B', 'A', 7),
(102, 'Reuben Varghese', 'reuben@gmail.com', 'CSE', '28/3/1997', 'A', 'B', 8),
(103, 'Devan K S', 'devan@gmail.com', 'CSE', '8/8/1997', 'A', 'C', 9),
(104, 'Geo George', 'geo@gmail.com', 'CSE', '1/1/1997', 'A', 'B', 10),
(150020, 'Kiran', 'k@k.com', 'CSE', '221197', 'J', 'A', 7),
(150042, 'Reuben Varghese', 'r@r.com', 'CSE', 'Mar 28th', 'B', 'B', 6);

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
(3, 1, 11, 0, ''),
(3, 5, 99, 16, 'E'),
(5, 12, 27, 10, 'E'),
(6, 87, 83, 1, 'D'),
(7, 92, 17, 9, 'A'),
(7, 14, 29, 8, 'B'),
(9, 88, 51, 13, 'A'),
(12, 12, 15, 15, 'E'),
(12, 76, 26, 10, 'C'),
(13, 22, 72, 18, 'D'),
(14, 44, 40, 11, 'B'),
(14, 28, 67, 1, 'E'),
(15, 85, 96, 14, 'D'),
(16, 56, 32, 10, 'B'),
(17, 25, 15, 14, 'A'),
(17, 91, 46, 7, 'E'),
(18, 16, 79, 8, 'C'),
(20, 60, 41, 2, 'C'),
(20, 15, 45, 1, 'E'),
(20, 58, 57, 2, 'E'),
(21, 64, 98, 18, 'D'),
(22, 1, 96, 15, 'B'),
(23, 52, 48, 4, 'A'),
(23, 66, 76, 10, 'B'),
(24, 20, 81, 10, 'D'),
(25, 2, 84, 1, 'C'),
(25, 42, 86, 20, 'C'),
(26, 56, 78, 0, 'C'),
(27, 25, 21, 19, 'E'),
(27, 3, 42, 11, 'B'),
(33, 13, 100, 10, 'D'),
(34, 66, 51, 19, 'A'),
(34, 25, 94, 0, 'A'),
(35, 8, 26, 18, 'A'),
(36, 66, 43, 11, 'E'),
(37, 42, 75, 14, 'E'),
(38, 11, 69, 16, 'E'),
(38, 46, 96, 11, 'A'),
(41, 77, 11, 9, 'B'),
(42, 26, 29, 16, 'E'),
(42, 23, 79, 10, 'C'),
(44, 66, 76, 14, 'A'),
(45, 76, 77, 11, 'B'),
(46, 79, 19, 16, 'B'),
(46, 91, 86, 4, 'A'),
(47, 81, 43, 18, 'A'),
(48, 93, 30, 3, 'B'),
(49, 92, 42, 0, 'A'),
(50, 16, 26, 14, 'D'),
(50, 40, 28, 8, 'A'),
(50, 68, 61, 6, 'E'),
(52, 17, 48, 10, 'D'),
(55, 42, 43, 15, 'E'),
(55, 1, 67, 7, 'E'),
(56, 11, 24, 20, 'D'),
(57, 66, 68, 0, 'B'),
(58, 72, 30, 2, 'C'),
(58, 25, 33, 20, 'B'),
(59, 68, 64, 11, 'B'),
(60, 100, 3, 17, 'B'),
(61, 91, 58, 10, 'E'),
(62, 37, 94, 11, 'D'),
(63, 93, 38, 3, 'B'),
(64, 86, 14, 19, 'C'),
(64, 51, 73, 8, 'A'),
(66, 34, 23, 20, 'E'),
(66, 32, 49, 2, 'B'),
(66, 67, 84, 2, 'D'),
(67, 16, 64, 7, 'A'),
(67, 52, 84, 3, 'A'),
(67, 86, 100, 16, 'A'),
(68, 52, 72, 6, 'D'),
(73, 94, 44, 11, 'B'),
(73, 60, 55, 9, 'D'),
(75, 88, 67, 18, 'B'),
(76, 52, 43, 6, 'B'),
(80, 89, 15, 18, 'D'),
(80, 60, 76, 9, 'E'),
(81, 77, 94, 10, 'D'),
(82, 98, 20, 0, 'E'),
(82, 62, 36, 12, 'E'),
(85, 4, 53, 16, 'C'),
(87, 94, 4, 17, 'C'),
(87, 90, 29, 13, 'C'),
(89, 75, 7, 2, 'B'),
(89, 63, 18, 11, 'C'),
(89, 38, 20, 2, 'A'),
(89, 90, 49, 14, 'B'),
(90, 28, 64, 2, 'B'),
(91, 23, 51, 9, 'D'),
(93, 94, 1, 0, 'D'),
(94, 63, 6, 13, 'A'),
(94, 54, 82, 15, 'D'),
(95, 6, 78, 1, 'C'),
(95, 98, 93, 10, 'B'),
(96, 33, 58, 10, 'C'),
(96, 89, 72, 9, 'A'),
(97, 78, 80, 18, 'B'),
(98, 14, 34, 1, 'D'),
(98, 49, 35, 17, 'B'),
(99, 38, 19, 17, 'D');

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
(150020, 'A', '1', '2017', 500, 2500),
(150042, 'B', '3', '2015', 245, 2449);

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
(1, 'teach', 'dbranwhite0@columbia.edu', '1234', 'Dennis Branwhite', '2006-09-13', '1964-09-26', 'ECE', 'Assistant Professor'),
(2, 'aonowlan1', 'aonowlan1@wsj.com', 'idPVZ1aSsz6', 'Adan O\'Nowlan', '2007-11-15', '1977-09-25', 'MECH', 'Professor'),
(3, 'igabbott2', 'igabbott2@wordpress.org', 'PPRrUiW4p5', 'Ingaborg Gabbott', '1983-06-28', '1983-03-29', 'BT', 'HOD'),
(4, 'bgumm3', 'bgumm3@guardian.co.uk', 'H1ebxNN0wrGy', 'Bambie Gumm', '1996-02-29', '1968-07-04', 'EEE', 'Professor'),
(5, 'chennington4', 'chennington4@feedburner.com', 'oUVbpO', 'Carlo Hennington', '2013-05-10', '1981-06-09', 'ECE', 'Assistant Professor'),
(6, 'telletson5', 'telletson5@livejournal.com', '15NyADxz', 'Tierney Elletson', '2017-07-20', '1983-09-02', 'CSE', 'Assistant Professor'),
(7, 'ghearty6', 'ghearty6@redcross.org', 'N7jZ7GyXIlkI', 'Ginny Hearty', '2014-08-09', '1977-01-11', 'MECH', 'Professor'),
(8, 'tcarlyon7', 'tcarlyon7@ycombinator.com', 'ZA99SeVWN', 'Theodosia Carlyon', '1980-01-14', '1963-10-02', 'ECE', 'Professor'),
(9, 'vbuckles8', 'vbuckles8@economist.com', 'pfHjzBX', 'Vikky Buckles', '2011-07-16', '1961-03-02', 'BT', 'Assistant Professor'),
(10, 'iriggeard9', 'iriggeard9@simplemachines.org', 'GpOlCxc8', 'Ilka Riggeard', '1996-02-06', '1962-10-27', 'BT', 'Professor'),
(11, 'cdykesa', 'cdykesa@netlog.com', '57spmQ56c', 'Calypso Dykes', '1995-09-12', '1983-03-26', 'ECE', 'HOD'),
(12, 'daylingb', 'daylingb@telegraph.co.uk', 'rSNaJTsg3J', 'Dexter Ayling', '1993-03-09', '1972-02-04', 'EEE', 'Professor'),
(13, 'pbradderc', 'pbradderc@forbes.com', 'BWQMPEMvwFkW', 'Priscilla Bradder', '2016-01-23', '1961-12-17', 'EEE', 'Assistant Professor'),
(14, 'eduinbletond', 'eduinbletond@usnews.com', 'v4T4poFbQBlB', 'Elton Duinbleton', '2009-03-31', '1964-03-05', 'ECE', 'Assistant Professor'),
(15, 'cwaude', 'cwaude@accuweather.com', 'tXtEtZrMC', 'Carny Waud', '2013-04-04', '1983-11-12', 'ECE', 'Assistant Professor'),
(16, 'acharlef', 'acharlef@cdbaby.com', 'VDM4fzyrk', 'Agneta Charle', '2001-10-24', '1974-07-14', 'MECH', 'Assistant Professor'),
(17, 'hglovesg', 'hglovesg@lycos.com', 'hmDvfbjg', 'Huey Gloves', '1983-08-19', '1985-08-07', 'CSE', 'HOD'),
(18, 'kculpinh', 'kculpinh@cafepress.com', 'tdM2qst', 'Karole Culpin', '1994-03-31', '1963-10-26', 'ECE', 'HOD'),
(19, 'zalleryi', 'zalleryi@jigsy.com', 'vmyTKGUL', 'Zachariah Allery', '1992-09-15', '1982-07-11', 'ECE', 'Professor'),
(20, 'zslydej', 'zslydej@vistaprint.com', 'GSqBAk4m3f', 'Zackariah Slyde', '1993-03-17', '1963-11-24', 'EEE', 'Professor'),
(21, 'egordgek', 'egordgek@yellowbook.com', '2C7nM3exhPH8', 'Elmo Gordge', '2007-10-04', '1976-12-14', 'MECH', 'Assistant Professor'),
(22, 'snewcomel', 'snewcomel@trellian.com', 'NCw24zI', 'Shir Newcome', '1981-11-10', '1977-10-20', 'ECE', 'HOD'),
(23, 'theminsleym', 'theminsleym@noaa.gov', 'YHLGY9qZOva', 'Tilda Heminsley', '1998-06-04', '1975-04-10', 'ECE', 'Professor'),
(24, 'spetkovicn', 'spetkovicn@howstuffworks.com', 'TmKWuCyK', 'Silvester Petkovic', '2003-10-28', '1978-08-14', 'ECE', 'Assistant Professor'),
(25, 'rforstallo', 'rforstallo@disqus.com', 'VIipUdiOUB', 'Rita Forstall', '1989-09-11', '1964-04-13', 'BT', 'Professor'),
(26, 'ocainp', 'ocainp@cisco.com', 'L6QSLjiaSGK', 'Odele Cain', '1990-11-01', '1978-08-28', 'MECH', 'HOD'),
(27, 'dtinemanq', 'dtinemanq@cbsnews.com', 'MwrEuQ8', 'Danny Tineman', '2006-12-25', '1982-07-30', 'MECH', 'Professor'),
(28, 'kpolakr', 'kpolakr@ning.com', 'Zfi35npjEo6', 'Kincaid Polak', '1988-10-24', '1978-07-04', 'BT', 'Professor'),
(29, 'lvickarmans', 'lvickarmans@reference.com', 'XzmJfrLO99BH', 'Layne Vickarman', '1984-03-27', '1973-08-29', 'ECE', 'Professor'),
(30, 'csigfridt', 'csigfridt@scribd.com', 'rFObCq5', 'Charil Sigfrid', '2013-03-01', '1974-01-20', 'BT', 'Assistant Professor'),
(31, 'hjumontu', 'hjumontu@wufoo.com', 'b0iiYqwNw1SV', 'Helenka Jumont', '2010-04-20', '1964-05-21', 'ECE', 'Assistant Professor'),
(32, 'acutbushv', 'acutbushv@ucoz.ru', 'njmeb31H5zY', 'Astrid Cutbush', '2011-11-18', '1964-11-15', 'CSE', 'Assistant Professor'),
(33, 'aaultonw', 'aaultonw@myspace.com', 'ooVILjAdzdNd', 'Ada Aulton', '1984-03-06', '1984-06-03', 'MECH', 'Professor'),
(34, 'nlathayex', 'nlathayex@about.me', 'x2k9r0AYBjiZ', 'Nico Lathaye', '1980-12-07', '1973-06-08', 'ECE', 'Professor'),
(35, 'goolahany', 'goolahany@digg.com', 'NwphugA1dldi', 'Gena Oolahan', '1997-08-20', '1967-11-20', 'BT', 'Professor'),
(36, 'ldunningz', 'ldunningz@nsw.gov.au', '15ZZo72fYW', 'Lynne Dunning', '1994-01-05', '1969-12-26', 'CSE', 'Professor'),
(37, 'hkinghorne10', 'hkinghorne10@dailymail.co.uk', 'fvCTb0', 'Haleigh Kinghorne', '1992-06-05', '1965-10-16', 'ECE', 'Professor'),
(38, 'scrosetto11', 'scrosetto11@npr.org', 'NHlNY3UHX', 'Saloma Crosetto', '2008-01-30', '1971-07-07', 'EEE', 'Assistant Professor'),
(39, 'glambeth12', 'glambeth12@elegantthemes.com', 'gHq70109', 'Gipsy Lambeth', '1988-02-25', '1978-10-02', 'ECE', 'Professor'),
(40, 'lastlet13', 'lastlet13@youtube.com', 'ZjnZ6JqqA', 'Lacie Astlet', '2016-11-23', '1960-09-30', 'CSE', 'Assistant Professor'),
(41, 'sjacomb14', 'sjacomb14@discuz.net', 'jLQCnGyG', 'Spike Jacomb', '2004-05-26', '1980-10-22', 'MECH', 'Assistant Professor'),
(42, 'kiwanczyk15', 'kiwanczyk15@yellowpages.com', 'QZjtn0w9wp', 'Kessia Iwanczyk', '1990-05-20', '1967-10-18', 'CSE', 'HOD'),
(43, 'winger16', 'winger16@wikipedia.org', 'RZ68nxYcgys', 'Winonah Inger', '1982-11-08', '1977-12-12', 'MECH', 'HOD'),
(44, 'cboddy17', 'cboddy17@apache.org', 'cb0fLjK', 'Correy Boddy', '2004-04-11', '1972-04-24', 'BT', 'Professor'),
(45, 'afranseco18', 'afranseco18@paypal.com', 'NLJY8dX', 'Antoinette Franseco', '2000-10-12', '1968-06-06', 'ECE', 'Assistant Professor'),
(46, 'brounsefell19', 'brounsefell19@google.pl', 'NPVxMtH', 'Bale Rounsefell', '1985-05-29', '1977-09-19', 'BT', 'HOD'),
(47, 'gcatterick1a', 'gcatterick1a@illinois.edu', 'WWsOSypF', 'Giffer Catterick', '2000-10-30', '1970-06-16', 'BT', 'Assistant Professor'),
(48, 'egladyer1b', 'egladyer1b@state.tx.us', 'TZVnImvrPCgV', 'Eliza Gladyer', '2016-10-10', '1971-06-15', 'ECE', 'Assistant Professor'),
(49, 'mtaylorson1c', 'mtaylorson1c@vinaora.com', 'QzqqRMfZxs', 'Marilee Taylorson', '1983-01-31', '1961-03-16', 'EEE', 'Professor'),
(50, 'gciccarello1d', 'gciccarello1d@ovh.net', '8vtI5hBmAvOS', 'Galvan Ciccarello', '2011-03-22', '1973-04-05', 'EEE', 'Assistant Professor'),
(51, 'jbriamo1e', 'jbriamo1e@yandex.ru', 'RtxWLMpth7Y', 'Joby Briamo', '1985-01-20', '1961-03-24', 'CSE', 'Professor'),
(52, 'fbellenger1f', 'fbellenger1f@51.la', 'sW8MgCdf', 'Felice Bellenger', '1998-03-31', '1974-11-08', 'CSE', 'Professor'),
(53, 'oburtwistle1g', 'oburtwistle1g@istockphoto.com', 'jOywE7n', 'Ole Burtwistle', '2010-01-12', '1977-11-17', 'ECE', 'Assistant Professor'),
(54, 'adorant1h', 'adorant1h@hexun.com', 'j3f60MUBFyr', 'Athene Dorant', '1981-09-26', '1960-07-09', 'BT', 'Professor'),
(55, 'mstichel1i', 'mstichel1i@ovh.net', 'nPsc12fURW6c', 'Mathe Stichel', '2017-02-14', '1960-05-10', 'ECE', 'Professor'),
(56, 'cflorio1j', 'cflorio1j@multiply.com', '7IgqaBBJqQ', 'Clayson Florio', '2014-11-14', '1978-12-06', 'ECE', 'Assistant Professor'),
(57, 'gshepley1k', 'gshepley1k@parallels.com', 'KjVisaQje', 'Guilbert Shepley', '2013-11-02', '1980-07-18', 'MECH', 'Assistant Professor'),
(58, 'oschoular1l', 'oschoular1l@dyndns.org', 'zIPiLYtBAxAw', 'Olympie Schoular', '2017-09-22', '1960-12-11', 'BT', 'Assistant Professor'),
(59, 'jhumphries1m', 'jhumphries1m@mapy.cz', 'PT3mLbj3dyjX', 'Jake Humphries', '1982-03-28', '1981-06-26', 'BT', 'Professor'),
(60, 'jnairy1n', 'jnairy1n@army.mil', '6gTKUaqTPHb', 'Jandy Nairy', '2009-11-04', '1982-05-09', 'BT', 'Assistant Professor'),
(61, 'maldhouse1o', 'maldhouse1o@gizmodo.com', 'vf4JZj9', 'Marquita Aldhouse', '1989-05-02', '1966-02-10', 'BT', 'Professor'),
(62, 'bdodding1p', 'bdodding1p@youtu.be', '7yzOFBfG', 'Barty Dodding', '2016-02-24', '1979-10-17', 'BT', 'Assistant Professor'),
(63, 'alapslie1q', 'alapslie1q@xing.com', '0e1cufNx', 'Arda Lapslie', '2004-07-30', '1980-04-03', 'ECE', 'Professor'),
(64, 'jundrill1r', 'jundrill1r@timesonline.co.uk', 'xR94I1zSAwP', 'Jarid Undrill', '1986-06-25', '1973-09-04', 'BT', 'Professor'),
(65, 'ecavalier1s', 'ecavalier1s@who.int', '9ji6lJ', 'Emelina Cavalier', '2001-07-20', '1975-12-08', 'MECH', 'Assistant Professor'),
(66, 'drozea1t', 'drozea1t@samsung.com', 'rUvX4rib', 'Dorella Rozea', '1983-05-25', '1985-10-29', 'ECE', 'Professor'),
(67, 'ssaxon1u', 'ssaxon1u@pagesperso-orange.fr', 'nxqoXe', 'Sharron Saxon', '1987-01-19', '1961-08-05', 'MECH', 'Professor'),
(68, 'fgleadle1v', 'fgleadle1v@virginia.edu', '0VJN2J', 'Far Gleadle', '2014-09-15', '1977-04-02', 'MECH', 'Professor'),
(69, 'lartingstall1w', 'lartingstall1w@state.tx.us', '2Po3uaFNa4', 'Lenard Artingstall', '1990-01-25', '1960-05-19', 'CSE', 'Professor'),
(70, 'cwitty1x', 'cwitty1x@nba.com', 'qtpjkZvNOz', 'Cordy Witty', '1990-10-30', '1968-08-31', 'EEE', 'Professor'),
(71, 'gegentan1y', 'gegentan1y@theatlantic.com', 'Gnn9CP9F265', 'Gussi Egentan', '2014-03-24', '1968-01-12', 'MECH', 'Assistant Professor'),
(72, 'blugsdin1z', 'blugsdin1z@wordpress.com', 'ZNSGx4', 'Buiron Lugsdin', '1991-04-27', '1966-03-03', 'BT', 'Professor'),
(73, 'jgoldthorp20', 'jgoldthorp20@woothemes.com', 'QPpRC0TBpj', 'Jourdan Goldthorp', '1985-09-26', '1982-02-16', 'ECE', 'Professor'),
(74, 'abenardet21', 'abenardet21@last.fm', 'SDc3oSve', 'Arlyne Benardet', '1996-09-20', '1978-02-15', 'ECE', 'Professor'),
(75, 'amcarthur22', 'amcarthur22@amazon.co.jp', 'fOOThUT2', 'Arlene McArthur', '2011-06-25', '1970-06-11', 'MECH', 'Assistant Professor'),
(76, 'npulfer23', 'npulfer23@tripod.com', 'Un72Jul', 'Niki Pulfer', '2012-04-09', '1969-07-04', 'MECH', 'Assistant Professor'),
(77, 'cfeckey24', 'cfeckey24@nsw.gov.au', 'omjQN6OIL', 'Chelsea Feckey', '1994-10-02', '1979-05-19', 'EEE', 'Professor'),
(78, 'cwoolforde25', 'cwoolforde25@github.io', 'MnjOAINz', 'Cecilius Woolforde', '1985-05-08', '1979-10-19', 'MECH', 'Professor'),
(79, 'llantry26', 'llantry26@unc.edu', '400elQ49SbaD', 'Lavena Lantry', '1987-08-18', '1966-09-06', 'EEE', 'HOD'),
(80, 'abruinemann27', 'abruinemann27@e-recht24.de', 'NuYHWQCGIv', 'Allyce Bruinemann', '1987-04-10', '1979-03-07', 'EEE', 'Professor'),
(81, 'gchiverton28', 'gchiverton28@youtube.com', 'tkXpoE6XH', 'Gwendolin Chiverton', '2000-05-19', '1969-05-25', 'CSE', 'Assistant Professor'),
(82, 'nhamblett29', 'nhamblett29@baidu.com', 'VjCXX2', 'Nealon Hamblett', '1982-05-07', '1964-10-01', 'EEE', 'HOD'),
(83, 'cgilbard2a', 'cgilbard2a@imageshack.us', 'zlprlAvzREx', 'Caitrin Gilbard', '2010-11-10', '1967-06-15', 'BT', 'Assistant Professor'),
(84, 'skarlqvist2b', 'skarlqvist2b@tmall.com', 'EMfBmQlSfRIi', 'Shara Karlqvist', '1988-08-24', '1961-03-27', 'ECE', 'Professor'),
(85, 'mowlner2c', 'mowlner2c@home.pl', 'TpiIFFiu', 'Maris Owlner', '2012-08-19', '1976-02-14', 'MECH', 'Assistant Professor'),
(86, 'lherreran2d', 'lherreran2d@yellowpages.com', 'avUi4C', 'Loella Herreran', '1984-11-01', '1977-03-03', 'CSE', 'Professor'),
(87, 'cpennick2e', 'cpennick2e@amazon.com', 'qP2SzOSf45W2', 'Conant Pennick', '2001-09-18', '1985-04-02', 'ECE', 'Professor'),
(88, 'klorraine2f', 'klorraine2f@apache.org', 'ueo1npC6Y', 'Katey Lorraine', '2014-01-28', '1961-09-18', 'BT', 'Professor'),
(89, 'gschmuhl2g', 'gschmuhl2g@tinyurl.com', 'fQoTjD8n', 'Griff Schmuhl', '1981-07-05', '1967-03-18', 'EEE', 'Professor'),
(90, 'cilyuchyov2h', 'cilyuchyov2h@ustream.tv', 'FmLzpII', 'Clyde Ilyuchyov', '1991-04-13', '1970-10-07', 'CSE', 'HOD'),
(91, 'epaddle2i', 'epaddle2i@cpanel.net', 'RYZ6NGDHlT', 'Ellette Paddle', '2000-12-29', '1971-04-04', 'BT', 'Assistant Professor'),
(92, 'vstanier2j', 'vstanier2j@ucoz.com', 'AOSFfu4e', 'Vilhelmina Stanier', '1993-06-07', '1981-01-01', 'MECH', 'Professor'),
(93, 'schippendale2k', 'schippendale2k@google.com', 'n2PdtOMHQ', 'Steffane Chippendale', '2011-11-22', '1961-03-08', 'MECH', 'Assistant Professor'),
(94, 'bbeevens2l', 'bbeevens2l@oaic.gov.au', 'nVhesCM', 'Byron Beevens', '1989-06-11', '1976-07-15', 'ECE', 'HOD'),
(95, 'amerioth2m', 'amerioth2m@stumbleupon.com', 'xg1rWZXsNt', 'Alfie Merioth', '1997-02-09', '1964-06-28', 'MECH', 'Professor'),
(96, 'sburkill2n', 'sburkill2n@studiopress.com', 'jnBqZ0b7dGuB', 'Savina Burkill', '1987-04-24', '1984-03-04', 'BT', 'Professor'),
(97, 'alindenfeld2o', 'alindenfeld2o@nationalgeographic.com', 'HYnBjSY9I', 'Andrey Lindenfeld', '1997-07-25', '1984-05-02', 'CSE', 'Professor'),
(98, 'eraybould2p', 'eraybould2p@weather.com', 'mkHCycqnnPsR', 'Erena Raybould', '1982-01-04', '1978-12-11', 'ECE', 'Professor'),
(99, 'ctoft2q', 'ctoft2q@techcrunch.com', 'k9PUOwc', 'Camilla Toft', '1983-06-22', '1963-07-23', 'BT', 'Professor'),
(100, 'eguerrin2r', 'eguerrin2r@jalbum.net', 'BxekloAHU', 'Ester Guerrin', '2016-06-02', '1978-05-08', 'CSE', 'Assistant Professor');

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
  ADD PRIMARY KEY (`studentID`,`courseID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `teacherID` (`teacherID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `student_taken_mess`
--
ALTER TABLE `student_taken_mess`
  ADD PRIMARY KEY (`studentID`,`month`,`year`),
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
