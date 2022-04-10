-- LAMP(Linux, Apache, MySQL & PHP)
-- Real Estate application
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 11:58 AM
-- Server version: 8.0.28-MySQL
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `developers`
--
CREATE DATABASE IF NOT EXISTS `developers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `developers`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Our Company', '<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">DuyHungMinh Real Estate is a Unique Real Estate Company dedicated to provide beautiful hourses, apartments, and rooms to all type of people. Located in beautiful country in Ho Chi Minh City (Vietnam).</p>\r\n<p class=\"text_all_p_tag_css\">DuyHungMinh Real Estate is a one stop solution for all your family needs. It provides full ranges of modern and beauty of real estate solutions, depending on your requirements of the room size, number of rooms, the interior design, furnitures, modern IoT, the surrouding outside such as convenient stores, parks, parking lots, etc. throughout the India.</p>\r\n<div id=\"pgc-w5d0dcc3394ac1-0-0\" class=\"panel-grid-cell\">\r\n<div id=\"panel-w5d0dcc3394ac1-0-0-0\" class=\"so-panel widget widget_sow-editor panel-first-child panel-last-child\" data-index=\"0\">\r\n<div class=\"so-widget-sow-editor so-widget-sow-editor-base\">\r\n<div class=\"siteorigin-widget-tinymce textwidget\">\r\n<p class=\"text_all_p_tag_css\">Right now, DuyHungMinh Real Estate has contributed and collaborated with more than 1500+ customers around Ho Chi Minh City, showing that we confidently bring all the best benefits to you.</p>\r\n<p class=\"text_all_p_tag_css\">Our team has 3 CEOs, including Vo Tran Truong Duy (handsome and talented CEO), Nguyen Pham Quoc Minh (handsome and hard-working CEO), and Nguyen Ngoc Dang Hung (playboy and genius CEO). No need to hesitate to buy or rent a new house or apartment today for your brighter future!!!</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'condos-pool.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(2, 'disha', 'disha@gmail.com', 'disha', '1999-02-02', '9689689698'),
(6, 'final', 'final@gmail.com', 'final', '2020-04-29', '7979656578'),
(7, 'test', 'test@gmail.com', 'test', '2020-04-29', '8997979765'),
(8, 'check', 'check@gmail.com', 'check', '2020-04-29', '8979785688'),
(9, 'admin', 'admin@gmail.com', 'admin', '1999-12-06', '9878786545');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cid` int(50) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `sid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `sid`) VALUES
(9, 'ho chi minh city', 3),
(10, 'hanoi', 2),
(11, 'da nang city', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `cid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(2, 'duy', 'duyhs123@gmail.com', '1231233421', 'duy', 'duy'),
(4, 'minh', 'bietdoikiem@gmail.com', '314243123', 'minh', 'minh'),
(5, 'hung', 'hungthezorba@gmail.com', '617281929', 'hung', 'hung'),
(6, 'duy', 'duyhs123@gmail.com', '1231233421', 'duy', 'duy');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `status` int(1) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `status`, `date`) VALUES
(2, 15, 'DuyHungMinh simplified my life. It aided me in my quest for my first investment, a one-bedroom flat in Nguyen Hue street. Thank you for offering useful tools like the EMI calculator and quick search.\r\n', 1, '2022-04-05'),
(3, 18, 'I am a young professional, and DuyHungMinh search assisted me in narrowing down my house options in Ho Chi Minh City. I discovered what kind of property will cost me how much and what kinds of features I will receive.', 1, '2022-04-06'),
(4, 21, 'I was looking for a flat in Hanoi, and the DuyHungMinh website made it easy for me to find one. Not only could I pick the property, but I could also read what others had to say about the location. The website is straightforward and easy to navigate.\r\n', 1, '2022-03-25'),
(5, 23, 'The ongoing contact via other legitimate calls astounded me. They dispatched an officer to obtain pictures of my store and swiftly uploaded all of the images, assisting me in quickly obtaining a renter. DuyHungMinh deserves a pat on the back.\r\n', 1, '2022-04-08'),
(6, 24, 'Early this year, I relocated to Da Nang City from Japan, and I searched online for a good flat for rent in the Andheri region. Thank you, DuyHungMinh, for providing me with so many time search alternatives.\r\n', 0, '2022-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `bhk` varchar(50) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `balcony` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `hall` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `mapimage` varchar(300) NOT NULL,
  `topmapimage` varchar(300) NOT NULL,
  `groundmapimage` varchar(300) NOT NULL,
  `totalfloor` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `bhk`, `stype`, `bedroom`, `bathroom`, `balcony`, `kitchen`, `hall`, `floor`, `size`, `price`, `location`, `city`, `state`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `mapimage`, `topmapimage`, `groundmapimage`, `totalfloor`, `date`) VALUES
(11, 'final', '<p>House for rent in front of D2 street, extending P25 Binh Thanh. Location of 30m large road surface, busy business area. Concentrating many office buildings, many universities, crowded student areas. Apartment area 4x22 1 ground floor 3 floors with beautiful spacious floor plan with 6 bedrooms and 4 bathrooms. Suitable for business lines of corporate office, spa, English teaching center and clothing shop...</p>\r\n<p>House for rent in front of D2 street, extending P25 Binh Thanh. Location of 30m large road surface, busy business area. Concentrating many office buildings, many universities, crowded student areas. Apartment area 4x22 1 ground floor 3 floors with beautiful spacious floor plan with 6 bedrooms and 4 bathrooms. Suitable for business lines of corporate office, spa, English teaching center and clothing shop...&nbsp;</p>\r\n<p>House for rent in front of D2 street, extending P25 Binh Thanh. Location of 30m large road surface, busy business area. Concentrating many office buildings, many universities, crowded student areas. Apartment area 4x22 1 ground floor 3 floors with beautiful spacious floor plan with 6 bedrooms and 4 bathrooms. Suitable for business lines of corporate office, spa, English teaching center and clothing shop...&nbsp;</p>', 'office', '2 BHK', 'sale', 1, 2, 3, 4, 5, '3rd Floor', 1256, 1842432, 'D2 Street Ward 25 Binh Thanh Ho Chi Minh City', 'somewhere', 'something', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 15, 'sold out', '', '', '', '', '2022-04-04 00:28:14'),
(13, 'suraj', 'Area: 4x15m 1T 3L 6P 6WC full air-conditioned rooms. The house has two fronts, front and back, the first part of D1 is behind the Pearl Plaza building. Bustling Business District is a prime location with a bustling population. The house has just been repainted, the house is close to schools at all levels to major universities in zone D: Hutech, Transport, Foreign Trade. The house is suitable for customers to open VPCT, VP representative, VP Courier, hair salon, beauty salon, spa makeup nail, clothing shop, English class center, yoga class, studio, open dental clinic, shop pets, showroom, chain of milk tea, coffee, spicy noodles,...', 'sacsac', '2 ASC', 'sale', 3, 2, 2, 1, 1, '4th Floor', 152, 2903142, 'D1 Street Ward 25 Binh Thanh Ho Chi Minh City ', 'asczx', 'ealsea', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '111.jpg', '222.jpg', '333.jpg', '444.jpg', '555.jpg', 16, 'available', '', '', '', '', '2021-04-06 00:21:11'),
(14, 'suraj', '<p>Building for rent in front of Dien Bien Phu street, P25, Binh Thanh district. Structure of the building 1 ground floor 5 floors Construction area 1,200m2. DTSD 800m2 empty building throughout the building equipment including air-conditioner, generator, fire protection system, camera system. The location of the building is near Saigon Pearl Plaza. Opposite is Vinhomes Landmark 81 floor. The structure of the building is suitable for the office of a vpcty as an English center as a beauty salon to make posters, the location of the building is beautiful, it is convenient to travel to districts 2, 1, 3, PN, and the airport. Building for rent in front of Dien Bien Phu street, P25, Binh Thanh district. Structure of the building 1 ground floor 5 floors Construction area 1,200m2. DTSD 800m2 empty building throughout the building equipment including air-conditioner, generator, fire protection system, camera system. The location of the building is near Saigon Pearl Plaza. Opposite is Vinhomes Landmark 81 floor. The structure of the building is suitable for the office of a vpcty as an English center as a beauty salon to make posters, the location of the building is beautiful, it is convenient to travel to districts 2, 1, 3, PN, and the airport.&nbsp;</p>', 'flat', '3 AXZ', 'rent', 3, 2, 2, 1, 1, '2nd Floor', 2132, 1234567, 'Dien Bien Phu Street Ward 25 Binh Thanh Ho Chi Minh City', 'aczxc', 'awdsa', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 15, 'available', '', '', '', '', '2022-01-04 00:12:28'),
(15, 'New', '<p>Need to rent a real estate location, especially located at the eastern gateway - TP. Ho Chi Minh City, only 250m from the old Mien Dong bus station, towards Binh Trieu 1 bridge (havent crossed Binh Trieu bridge 1). 1st facade. The building includes: 1 ground floor, 6 floors. Area: 11m x 29m (R x D). Total usable area: 1,200 m2 of floor. Private utilities: 3-phase power, terrace view can see all of Tam Vu Park and enjoy the whole Saigon River, next to there is a private garage (area of ​​155 m2) dedicated to the building, suitable office for rent, co-working space, school, language center, clinic... 2nd facade. Address at alley 272 Dinh Bo Linh, Ward 26, Binh Thanh District. The building includes: 1 ground floor, 2 floors, 1 terrace. Area: 12.5m x 15.6m (R x D). Total usable area: 520 m2 floor. Private utilities: 1-phase electricity, internal parking yard (area of ​​60m2), security dead-end alley, 3.5T truck in and out comfortably. The building has been renovated into 15 small rooms (with separate toilets) completely new WC equipment, water-painted, plaster ceiling... Suitable for serviced apartment rental, spa, massage, foreign language center, clinic, etc.&nbsp;</p>', 'appartment', '2 BHK', 'rent', 2, 2, 1, 1, 1, '2nd Floor', 1683, 1029384, '237 Highway 13 Ward 26 Binh Thanh District', 'aswc', 'amjwsks', '<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n													\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n													\r\n													</ul>\r\n													</div>\r\n													<div class=\"col-md-4\">\r\n													<ul>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n													<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n													</ul>\r\n													</div>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 15, 'available', '', '', '', '', '2022-02-28 11:55:12'),
(17, 'disha', '<p>Whole house for rent in front of Le Thi Cho KDC Lacasa Street, Phu Thuan Ward, District 7. The advantage is located in the overall 6.6 hectares of Lacasa complex with 6 apartment blocks and 2 blocks of townhouses, densely populated. densely populated, highly educated people, convenient for trading, company offices, English schools, supermarkets, selling all kinds of goods, etc. The house is beautiful, has a basement and has an elevator. Floor area: 7x30m. Total usable area: 730.6 square meter. Price is only 45 million/month It is a densely populated, developing and very potential residential area.&nbsp;</p>', 'flat', '2 BHK', 'rent', 2, 2, 1, 1, 1, '2nd Floor', 4123, 1029346, 'Phu Thuan Ward District 7 Ho Chi Minh', 'bkavka', 'gacxsa', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 21, 'available', '', '', '', '', '2022-03-03 23:41:21'),
(18, 'new idea', '<p>House for rent in Phu My Hung, corner of 2 fronts of Bui Bang Doan and Cao Trieu Phat streets. Construction area of 12x18.5m includes 1 basement, 1 ground floor, 3 floors and terrace. With elevator.The empty floors are convenient to set up office companies, clinics, teaching classes... The corner location of 2 main street frontages is very suitable for cafes, restaurants, showrooms... Recommended price 100 million/month. House for rent in Phu My Hung, corner of 2 fronts of Bui Bang Doan and Cao Trieu Phat streets. Construction area of 12x18.5m includes 1 basement, 1 ground floor, 3 floors and terrace. With elevator. The empty floors are convenient to set up office companies, clinics, teaching classes... The corner location of 2 main street frontages is very suitable for cafes, restaurants, showrooms... Recommended price 100 million/month.&nbsp;</p>', 'flat', '2 BHK', 'sale', 3, 3, 2, 1, 2, '1st Floor', 523, 1423423, 'aczs', 'swfas', 'asvzcswf', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 21, 'available', '', '', '', '', '2022-02-01 11:12:13'),
(19, 'testing', '<p>House for rent with 3 floors, street No. 17 Cu Xa Bank, District 7. Area: 6m x 16m, yard: 6m x 7m, house: 6m x 9m. The house has a design: Ground floor, mezzanine, 3 floors, 5 rooms, 6WC. The house is nice, clean and airy. High population area, house near market, school, supermarket and many amenities around. Open street frontage, suitable for office, company branch, online business, or family for long-term rental Long-term rental contract, ensuring stable business needs of tenants. House for rent with 3 floors, street No. 17 Cu Xa Bank, District 7. Area: 6m x 16m, yard: 6m x 7m, house: 6m x 9m. The house has a design: Ground floor, mezzanine, 3 floors, 5 rooms, 6WC. The house is nice, clean and airy. High population area, house near market, school, supermarket and many amenities around. Open street frontage, suitable for office, company branch, online business, or family for long-term rental Long-term rental contract, ensuring stable business needs of tenants.&nbsp;</p>', 'flat', '2 BHK', 'sale', 2, 2, 1, 1, 1, '3rd Floor', 1632, 1492053, 'No 17 Cu Xa Bank District 7', 'cascks', 'wdkcmas', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '11.jpg', '22.jpg', '33.jpg', '44.jpg', '55.jpg', 15, 'available', 'house-floor-plan.png', '', '', '', '2022-11-21 10:22:58'),
(20, 'Niramala Apartment', '<p>House for rent on Nguyen Thi Thap street, Him Lam KDC, District 7, right at Lotte Mart supermarket. - Area: 10x20m. - TDTSD: 800 m2. - Structure: Basement, ground floor 3 floors, elevator, fully air-conditioned. The house is located in a beautiful location, in front of Nguyen Thi Thap, a busy, densely populated area. Suitable for opening kindergarten, English center, showroom, office... Rent: 133.4 million/month. - Location: Near Lotte Mart supermarket, Phu My Hung area, Vivo City, Cresent Mall, Nha Be, Binh Chanh, District 4, District 8, District 1 and District 5, it only takes about 10 minutes by car. Within a radius of 2km, there are many restaurants, delicious food stalls, beautiful view cafes, banks, ATMs, convenience stores... Very convenient for business and living. House for rent on Nguyen Thi Thap street, Him Lam KDC, District 7, right at Lotte Mart supermarket. - Area: 10x20m. - TDTSD: 800 m2. - Structure: Basement, ground floor 3 floors, elevator, fully air-conditioned. The house is located in a beautiful location, in front of Nguyen Thi Thap, a busy, densely populated area. Suitable for opening kindergarten, English center, showroom, office... Rent: 133.4 million/month. - Location: Near Lotte Mart supermarket, Phu My Hung area, Vivo City, Cresent Mall, Nha Be, Binh Chanh, District 4, District 8, District 1 and District 5, it only takes about 10 minutes by car. Within a radius of 2km, there are many restaurants, delicious food stalls, beautiful view cafes, banks, ATMs, convenience stores... Very convenient for business and living.</p>', 'office', '1,2 ACX', 'rent', 99, 88, 77, 66, 55, '5th Floor', 1342, 1578345, 'Nguyen Thi Thap street Him Lam KDC District 7', 'awdsa', 'awfdas', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>3 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>8 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg', 15, 'available', 'floor.jpg', 'basement.jpg', 'ground.jpg', '12 Floor', '2022-02-05 15:43:12'),
(22, 'Shanti Apartment', '<p>Front house on D4 street, Him Lam area, district 7. Location: Near Him Lam Bridge, near Lotte Mart. Area: 5x20m. Structure: Ground floor basement 3 floors attic with luxurious office architecture, comfortable, polite, with elevator. Surrounding facilities: Near the hospital, near international standard schools, large and small banks around, cafes, pubs, supermarkets, peoples markets, and various utility services around. Easy to move: Go through Q1 15p, go through Q3 10p, move to Q4 Q8 less than 5p. Convenient location, suitable for business, office, teaching center. Price: 65 million/month. Front house on D4 street, Him Lam area, district 7. Location: Near Him Lam Bridge, near Lotte Mart. Area: 5x20m. Structure: Ground floor basement 3 floors attic with luxurious office architecture, comfortable, polite, with elevator. Surrounding facilities: Near the hospital, near international standard schools, large and small banks around, cafes, pubs, supermarkets, peoples markets, and various utility services around. Easy to move: Go through Q1 15p, go through Q3 10p, move to Q4 Q8 less than 5p. Convenient location, suitable for business, office, teaching center. Price: 65 million/month. Front house on D4 street, Him Lam area, district 7. Location: Near Him Lam Bridge, near Lotte Mart. Area: 5x20m. Structure: Ground floor basement 3 floors attic with luxurious office architecture, comfortable, polite, with elevator. Surrounding facilities: Near the hospital, near international standard schools, large and small banks around, cafes, pubs, supermarkets, peoples markets, and various utility services around. Easy to move: Go through Q1 15p, go through Q3 10p, move to Q4 Q8 less than 5p. Convenient location, suitable for business, office, teaching center. Price: 65 million/month. </p>', 'zcasw', '3 ASC', 'sale', 3, 2, 1, 1, 1, '2nd Floor', 4125, 1748432, 'D4 Street Tan Hung Ward District 7 Ho Chi Minh City', 'czsczx', 'ascwdscz', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">GYM : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Appartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Temple : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">3rd Party : </span>No</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Alivator : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', 16, 'sold out', 'floor1.png', 'basement1.jpg', 'ground1.jpg', '2 Floor', '2022-02-01 22:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `sid` int(50) NOT NULL,
  `sname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`) VALUES
(2, 'district 7'),
(3, 'phu nhuan'),
(4, 'thu duc'),
(7, 'binh chanh'),
(9, 'district 3'),
(10, 'go vap'),
(15, 'can gio');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(14, 'admin', 'admin@gmail.com', '15235621421', 'admin', 'user', '3.jpg'),
(15, 'duy', 'duya@gmail.com', '1243214123', 'duy', 'agent', '2.jpg'),
(16, 'minh', 'minhas@gmail.com', '1028492712', 'minh', 'user', '1.jpg'),
(21, 'hung', 'hungga@gmail.com', '123524421', 'hungga', 'agent', '2.jpg'),
(22, 'someone', 'someone@gmail.com', '232132132', 'someone', 'agent', '1.jpg'),
(23, 'wowww', 'wowwww@gmail.com', '213213213', 'wowww', 'builder', '1.jpg'),
(24, 'help', 'help@gmail.com', '21321321', 'help', 'builder', '3.jpg'),
(25, 'final', 'final@gmail.com', '213213222', 'final', 'builder', 'avatar-3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
