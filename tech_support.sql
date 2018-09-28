-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2017 at 10:18 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tech_support`
--
CREATE DATABASE IF NOT EXISTS `tech_support` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tech_support`;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`username`, `password`) VALUES
('admin', 'sesame'),
('joel', 'sesame');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryCode` char(2) NOT NULL,
  `countryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryCode`, `countryName`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AQ', 'Antarctica'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Aland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovi'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BL', 'Saint Barthelemy'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('BS', 'Bahamas, The'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Isla'),
('CD', 'Congo, The Democrati'),
('CF', 'Central African Repu'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Cote D''ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CV', 'Cape Verde'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands - M'),
('FM', 'Micronesia, Federate'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'United Kingdom'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GG', 'Guernsey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia, The'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'South Georgia and th'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island and the'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IM', 'Isle Of Man'),
('IN', 'India'),
('IO', 'British Indian Ocean'),
('IQ', 'Iraq'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JE', 'Jersey'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevi'),
('KR', 'Korea, Republic Of'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People''s Democra'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova, Republic Of'),
('ME', 'Montenegro'),
('MF', 'Saint Martin'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia, The Forme'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Isl'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre and Miq'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territor'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RS', 'Serbia'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard and Jan May'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('ST', 'Sao Tome and Princip'),
('SV', 'El Salvador'),
('SZ', 'Swaziland'),
('TC', 'Turks and Caicos Isl'),
('TD', 'Chad'),
('TF', 'French Southern Terr'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Turkey'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan'),
('TZ', 'Tanzania, United Rep'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UM', 'United States Minor '),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Holy See'),
('VC', 'Saint Vincent and Th'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands, Brit'),
('VI', 'Virgin Islands, U.S.'),
('VN', 'Vietnam'),
('VU', 'Vanuatu'),
('WF', 'Wallis and Futuna'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postalCode` varchar(20) NOT NULL,
  `countryCode` char(2) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `lastName`, `address`, `city`, `state`, `postalCode`, `countryCode`, `phone`, `email`, `password`) VALUES
(1002, 'Kelly', 'Irvin', 'PO Box 96621', 'Washington', 'DC', '20090', 'US', '(301) 555-8950', 'kelly@example.com', 'sesame'),
(1004, 'Kenzie', 'Quinn', '1990 Westwood Blvd Ste 260', 'Los Angeles', 'CA', '90025', 'US', '(800) 555-8725', 'kenzie@jobtrak.com', 'sesame'),
(1006, 'Anton', 'Mauro', '3255 Ramos Cir', 'Sacramento', 'CA', '95827', 'US', '(916) 555-6670', 'amauro@yahoo.org', 'sesame'),
(1008, 'Kaitlyn', 'Anthoni', 'Box 52001', 'San Francisco', 'CA', '94152', 'US', '(800) 555-6081', 'kanthoni@pge.com', 'sesame'),
(1010, 'Kendall', 'Mayte', 'PO Box 2069', 'Fresno', 'CA', '93718', 'US', '(559) 555-9999', 'kmayte@fresno.ca.gov', 'sesame'),
(1012, 'Marvin', 'Quintin', '4420 N. First Street, Suite 108', 'Fresno', 'CA', '93726', 'US', '(559) 555-9586', 'marvin@expedata.com', 'sesame'),
(1015, 'Gonzalo', 'Keeton', '27371 Valderas', 'Mission Viejo', 'CA', '92691', 'US', '(214) 555-3647', '', 'sesame'),
(1016, 'Derek', 'Chaddick', '1952 "H" Street', 'Fresno', 'CA', '93718', 'US', '(559) 555-3005', 'dChaddick@fresnophoto.com', 'sesame'),
(1017, 'Malia', 'Marques', '7700 Forsyth', 'St Louis', 'MO', '63105', 'US', '(314) 555-8834', 'malia@gmail.com', 'sesame'),
(1018, 'Emily', 'Evan', '1555 W Lane Ave', 'Columbus', 'OH', '43221', 'US', '(614) 555-4435', 'Emily@MicroCenter.com', 'sesame'),
(1019, 'Alexandro', 'Alexis', '3711 W Franklin', 'Fresno', 'CA', '93706', 'US', '(559) 555-2993', 'alal@yaleindustries.com', 'sesame'),
(1023, 'Ingrid', 'Neil', '12 Daniel Road', 'Fairfield', 'NJ', '07004', 'US', '(201) 555-9742', 'Ingrid@richadvertizing.com', 'sesame'),
(1026, 'Eileen', 'Lawrence', '1483 Chain Bridge Rd, Ste 202', 'Mclean', 'VA', '22101', 'US', '(770) 555-9558', 'eLawrence@ecomm.com', 'sesame'),
(1027, 'Marjorie', 'Essence', 'PO Box 31', 'East Brunswick', 'NJ', '08810', 'US', '(800) 555-8110', 'messence@hotmail.com', 'sesame'),
(1029, 'Trentin', 'Camron', 'PO Box 61000', 'San Francisco', 'CA', '94161', 'US', '(800) 555-4426', 'tCamron@ibm.com', 'sesame'),
(1030, 'Demetrius', 'Hunter', 'PO Box 956', 'Selma', 'CA', '93662', 'US', '(559) 555-1534', 'demetrius@termite.com', 'sesame'),
(1033, 'Thalia', 'Neftaly', '60 Madison Ave', 'New York', 'NY', '10010', 'US', '(212) 555-4800', 'tneftaly@venture.com', 'sesame'),
(1034, 'Harley', 'Myles', 'PO Box 7028', 'St Louis', 'MO', '63177', 'US', '(301) 555-1494', 'harley@cprinting.com', 'sesame'),
(1037, 'Gideon', 'Paris', '1033 N Sycamore Ave.', 'Los Angeles', 'CA', '90038', 'US', '(213) 555-4322', 'gideon@opamp.com', 'sesame'),
(1038, 'Jayda', 'Maxwell', 'PO Box 39046', 'Minneapolis', 'MN', '55439', 'US', '(612) 555-0057', 'jmaxwell@ccredit.com', 'sesame'),
(1040, 'Kristofer', 'Gerald', 'PO Box 40513', 'Jacksonville', 'FL', '32231', 'US', '(800) 555-6041', 'kgerald@naylorpub.com', 'sesame'),
(1045, 'Priscilla', 'Smith', 'Box 1979', 'Marion', 'OH', '43305', 'US', '(800) 555-1669', 'psmith@example.com', 'sesame'),
(1047, 'Brian', 'Griffin', '1150 N Tustin Ave', 'Anaheim', 'CA', '92807', 'US', '(714) 555-9000', 'bgriffin@azteklabel.com', 'sesame'),
(1049, 'Kaylea', 'Cheyenne', '2384 E Gettysburg', 'Fresno', 'CA', '93726', 'US', '(559) 555-0765', 'kaylea@yahoo.com', 'sesame'),
(1050, 'Kayle', 'Misael', 'PO Box 95857', 'Chicago', 'IL', '60694', 'US', '(800) 555-5811', 'misael@qualityeducation.com', 'sesame'),
(1051, 'Clarence', 'Maeve', 'PO Box 7247-7051', 'Philadelphia', 'PA', '19170', 'US', '(215) 555-8700', 'cmaeve@springhouse.com', 'sesame'),
(1054, 'Jovon', 'Walker', '627 Aviation Way', 'Manhatttan Beach', 'CA', '90266', 'US', '(310) 555-2732', 'jovon@ama.org', 'sesame'),
(1056, 'Nashalie', 'Angelica', '828 S Broadway', 'Tarrytown', 'NY', '10591', 'US', '(800) 555-0037', 'nangelica@aba.org', 'sesame'),
(1063, 'Leroy', 'Aryn', '3502 W Greenway #7', 'Phoenix', 'AZ', '85023', 'US', '(602) 547-0331', 'laryn@gmail.com', 'sesame'),
(1065, 'Anne', 'Braydon', 'PO Box 942', 'Fresno', 'CA', '93714', 'US', '(559) 555-7900', 'anne@gmail.com', 'sesame'),
(1066, 'Leah', 'Colton', '1626 E Street', 'Fresno', 'CA', '93786', 'US', '(559) 555-4442', 'lcolton@fresnobee.com', 'sesame'),
(1067, 'Cesar', 'Arodondo', '4545 Glenmeade Lane', 'Auburn Hills', 'MI', '48326', 'US', '(810) 555-3700', 'arododo@drc.com', 'sesame'),
(1068, 'Rachael', 'Danielson', '353 E Shaw Ave', 'Fresno', 'CA', '93710', 'US', '(559) 555-1704', 'rdanielson@eop.com', 'sesame'),
(1070, 'Salina', 'Edgardo', '6435 North Palm Ave, Ste 101', 'Fresno', 'CA', '93704', 'US', '(559) 555-7070', 'sadgardo@rpc.com', 'sesame'),
(1071, 'Daniel', 'Bradlee', '4 Cornwall Dr Ste 102', 'East Brunswick', 'NJ', '08816', 'US', '(908) 555-7222', 'dbradlee@simondirect.com', 'sesame'),
(1074, 'Quentin', 'Warren', 'PO Box 12332', 'Fresno', 'CA', '93777', 'US', '(559) 555-3112', 'quentin@valprint.com', 'sesame'),
(1080, 'Jillian', 'Clifford', '3250 Spring Grove Ave', 'Cincinnati', 'OH', '45225', 'US', '(800) 555-1957', 'jillian@champion.com', 'sesame'),
(1081, 'Angel', 'Lloyd', 'Department #1872', 'San Francisco', 'CA', '94161', 'US', '(617) 555-0700', 'alloyd@cw.com', 'sesame'),
(1083, 'Jeanette', 'Helena', '4775 E Miami River Rd', 'Cleves', 'OH', '45002', 'US', '(513) 555-3043', 'jhelena@eds.com', 'sesame'),
(1086, 'Luciano', 'Destin', 'P O Box 7126', 'Pasadena', 'CA', '91109', 'US', '(800) 555-7009', 'ldestin@mwp.com', 'sesame'),
(1089, 'Kyra', 'Francis', '4150 W Shaw Ave ', 'Fresno', 'CA', '93722', 'US', '(559) 555-8300', 'kyra@abbey.com', 'sesame'),
(1094, 'Lance', 'Potter', '28210 N Avenue Stanford', 'Valencia', 'CA', '91355', 'US', '(805) 555-0584', 'lpotter@bis.com', 'sesame'),
(1097, 'Jeffrey', 'Smitzen', 'Post Office Box 924', 'New Delhi', '', '110001', 'IN', '91-12345-12345', 'jeffreys@example.com', 'sesame'),
(1098, 'Vance', 'Smith', '9 River Pk Pl E 400', 'Boston', 'MA', '02134', 'US', '(508) 555-8737', 'vsmith@example.com', 'sesame'),
(1100, 'Thom', 'Aaronsen', '7112 N Fresno St Ste 200', 'Fresno', 'CA', '93720', 'US', '(559) 555-8484', 'taaronsen@dgm.com', 'sesame'),
(1112, 'Harold', 'Spivak', '2874 S Cherry Ave', 'Fresno', 'CA', '93706', 'US', '(559) 555-2770', 'harold@propane.com', 'sesame'),
(1113, 'Rachael', 'Bluzinski', 'P.O. Box 860070', 'Pasadena', 'CA', '91186', 'US', '(415) 555-7600', 'rachael@unocal.com', 'sesame'),
(1114, 'Reba', 'Hernandez', 'PO Box 2061', 'Fresno', 'CA', '93718', 'US', '(559) 555-0600', 'rhernandez@yesmed.com', 'sesame'),
(1116, 'Jaime', 'Ronaldsen', '3467 W Shaw Ave #103', 'Fresno', 'CA', '93711', 'US', '(559) 555-8625', 'jronaldsen@zylka.com', 'sesame'),
(1117, 'Violet', 'Beauregard', 'P.O. Box 505820', 'Reno', 'NV', '88905', 'US', '(800) 555-0855', 'vbeauregard@ups.com', 'sesame'),
(1118, 'Charlie', 'Bucket', 'Lodhi Road', 'New Delhi', '', '110003', 'IN', '(800) 555-4091', 'cbucket@yahoo.com', 'sesame');

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

CREATE TABLE `incidents` (
  `incidentID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `techID` int(11) DEFAULT NULL,
  `dateOpened` datetime NOT NULL,
  `dateClosed` datetime DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`incidentID`, `customerID`, `productCode`, `techID`, `dateOpened`, `dateClosed`, `title`, `description`) VALUES
(27, 1010, 'LEAG10', 11, '2014-06-05 00:00:00', '2010-06-06 00:00:00', 'Could not install', 'Media appears to be bad.'),
(28, 1117, 'TRNY20', 11, '2014-06-14 00:00:00', NULL, 'Error importing data', 'Received error message 415 while trying to import data from previous version.'),
(29, 1116, 'DRAFT10', 13, '2014-06-20 00:00:00', NULL, 'Could not install', 'Setup failed with code 104.'),
(30, 1010, 'TEAM10', 14, '2014-06-21 00:00:00', '2010-06-24 00:00:00', 'Error launching program', 'Program fails with error code 510, unable to open database.'),
(31, 1010, 'TRNY20', 14, '2014-06-21 00:00:00', NULL, 'Unable to activate product', 'Customer''s product activation key does not work.'),
(32, 1056, 'TRNY20', 12, '2014-06-24 00:00:00', NULL, 'Product activation error', 'Customer could not activate product because of an invalid product activation code.'),
(34, 1018, 'DRAFT10', 13, '2014-07-02 00:00:00', '2010-07-04 00:00:00', 'Error launching program', 'Program fails with error code 340: Database exceeds size limit.'),
(36, 1065, 'LEAG10', NULL, '2014-07-04 00:00:00', NULL, 'Error adding data', 'Received error message 201 when trying to add records: database must be reorganized.'),
(42, 1097, 'TRNY20', NULL, '2014-07-08 00:00:00', NULL, 'Unable to import data', 'Import command not available for importing data from previous version.'),
(44, 1063, 'LEAG10', NULL, '2014-07-09 00:00:00', NULL, 'Installation error', 'Error during installation: cmd.exe not found.'),
(45, 1089, 'LEAGD10', NULL, '2014-07-09 00:00:00', NULL, 'Problem upgrading from League Scheduler 1.0', 'Program fails with error 303 when trying to install upgrade.'),
(46, 1016, 'TEAM10', NULL, '2014-07-09 00:00:00', NULL, 'Unable to restore data from backup', 'Error 405 encountered while restoring backup: File not found.'),
(47, 1034, 'DRAFT10', NULL, '2014-07-09 00:00:00', NULL, 'Can''t activate product', 'Product activation code invalid.'),
(48, 1049, 'TRNY20', NULL, '2014-07-09 00:00:00', NULL, 'Unable to print brackets', 'Program doesn''t recognize printer.'),
(49, 1083, 'LEAGD10', NULL, '2014-07-10 00:00:00', NULL, 'Can''t start application', 'Error 521 on startup: database must be reorganized.'),
(50, 1116, 'DRAFT10', NULL, '2014-07-10 00:00:00', NULL, 'Error during data file backup', 'Program abends with error 228 during database backup'),
(51, 1067, 'LEAGD10', NULL, '2014-07-10 00:00:00', NULL, 'Error when adding new records', 'Received error 340: database exceeds size limit.'),
(52, 1066, 'TEAM10', NULL, '2014-07-11 00:00:00', NULL, 'Installation problem', 'Customer states that the setup program failed with code 203 during configuration.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `version` decimal(18,1) NOT NULL,
  `releaseDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `name`, `version`, `releaseDate`) VALUES
('DRAFT10', 'Draft Manager 1.0', '1.0', '2012-03-01 00:00:00'),
('DRAFT20', 'Draft Manager 2.0', '2.0', '2014-08-15 00:00:00'),
('LEAG10', 'League Scheduler 1.0', '1.0', '2011-06-01 00:00:00'),
('LEAGD10', 'League Scheduler Deluxe 1.0', '1.0', '2011-09-01 00:00:00'),
('TEAM10', 'Team Manager Version 1.0', '1.0', '2012-06-01 00:00:00'),
('TRNY10', 'Tournament Master Version 1.0', '1.0', '2011-01-01 00:00:00'),
('TRNY20', 'Tournament Master Version 2.0', '2.0', '2013-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `customerID` int(11) NOT NULL,
  `productCode` varchar(10) NOT NULL,
  `registrationDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`customerID`, `productCode`, `registrationDate`) VALUES
(1002, 'LEAG10', '2012-11-01 00:00:00'),
(1004, 'DRAFT10', '2013-01-11 00:00:00'),
(1004, 'LEAG10', '2011-09-19 00:00:00'),
(1004, 'TRNY10', '2013-01-13 00:00:00'),
(1006, 'TRNY10', '2013-11-18 00:00:00'),
(1008, 'DRAFT10', '2012-08-03 00:00:00'),
(1008, 'LEAG10', '2011-10-29 00:00:00'),
(1008, 'TEAM10', '2013-03-01 00:00:00'),
(1008, 'TRNY10', '2011-04-02 00:00:00'),
(1010, 'LEAG10', '2012-01-29 00:00:00'),
(1012, 'DRAFT10', '2012-03-19 00:00:00'),
(1015, 'TRNY10', '2011-05-19 00:00:00'),
(1016, 'TEAM10', '2013-02-14 00:00:00'),
(1017, 'TRNY10', '2013-05-09 00:00:00'),
(1018, 'TEAM10', '2012-06-03 00:00:00'),
(1018, 'TRNY10', '2011-12-25 00:00:00'),
(1019, 'TRNY20', '2013-06-20 00:00:00'),
(1023, 'LEAGD10', '2012-05-12 00:00:00'),
(1026, 'LEAG10', '2012-01-02 00:00:00'),
(1027, 'LEAGD10', '2012-03-14 00:00:00'),
(1029, 'LEAGD10', '2013-10-18 00:00:00'),
(1029, 'TEAM10', '2013-03-28 00:00:00'),
(1030, 'LEAG10', '2012-01-04 00:00:00'),
(1033, 'DRAFT10', '2012-07-20 00:00:00'),
(1034, 'DRAFT10', '2012-03-20 00:00:00'),
(1034, 'LEAGD10', '2013-02-21 00:00:00'),
(1034, 'TEAM10', '2013-02-22 00:00:00'),
(1037, 'LEAGD10', '2012-03-10 00:00:00'),
(1038, 'LEAG10', '2012-01-03 00:00:00'),
(1038, 'TRNY10', '2011-04-03 00:00:00'),
(1040, 'TRNY10', '2011-04-07 00:00:00'),
(1045, 'LEAGD10', '2012-01-14 00:00:00'),
(1047, 'LEAGD10', '2012-02-14 00:00:00'),
(1047, 'TEAM10', '2012-10-27 00:00:00'),
(1047, 'TRNY20', '2014-02-27 00:00:00'),
(1049, 'DRAFT10', '2013-01-11 00:00:00'),
(1049, 'LEAGD10', '2012-07-12 00:00:00'),
(1049, 'TRNY10', '2013-09-21 00:00:00'),
(1049, 'TRNY20', '2013-07-12 00:00:00'),
(1050, 'LEAGD10', '2012-08-24 00:00:00'),
(1051, 'TEAM10', '2013-03-18 00:00:00'),
(1054, 'DRAFT10', '2012-07-07 00:00:00'),
(1054, 'TRNY20', '2013-05-09 00:00:00'),
(1056, 'TRNY20', '2013-07-06 00:00:00'),
(1063, 'LEAG10', '2012-01-02 00:00:00'),
(1063, 'TEAM10', '2013-11-05 00:00:00'),
(1065, 'LEAG10', '2012-01-21 00:00:00'),
(1065, 'LEAGD10', '2012-07-04 00:00:00'),
(1065, 'TEAM10', '2013-03-14 00:00:00'),
(1066, 'LEAGD10', '2011-12-22 00:00:00'),
(1066, 'TEAM10', '2012-10-01 00:00:00'),
(1066, 'TRNY10', '2011-06-22 00:00:00'),
(1067, 'LEAGD10', '2013-01-04 00:00:00'),
(1068, 'DRAFT10', '2012-03-03 00:00:00'),
(1070, 'DRAFT10', '2012-07-28 00:00:00'),
(1070, 'LEAGD10', '2012-06-09 00:00:00'),
(1070, 'TEAM10', '2012-07-29 00:00:00'),
(1070, 'TRNY20', '2013-09-13 00:00:00'),
(1071, 'TRNY10', '2011-10-15 00:00:00'),
(1074, 'LEAG10', '2011-11-02 00:00:00'),
(1080, 'DRAFT10', '2013-01-24 00:00:00'),
(1080, 'LEAGD10', '2012-01-05 00:00:00'),
(1080, 'TRNY10', '2013-05-29 00:00:00'),
(1081, 'LEAGD10', '2012-02-09 00:00:00'),
(1083, 'LEAG10', '2011-11-07 00:00:00'),
(1083, 'LEAGD10', '2012-03-27 00:00:00'),
(1083, 'TEAM10', '2013-05-26 00:00:00'),
(1086, 'LEAG10', '2012-05-01 00:00:00'),
(1089, 'LEAG10', '2013-10-12 00:00:00'),
(1089, 'LEAGD10', '2012-10-10 00:00:00'),
(1089, 'TRNY10', '2011-06-03 00:00:00'),
(1094, 'TEAM10', '2014-01-08 00:00:00'),
(1097, 'TRNY20', '2013-09-18 00:00:00'),
(1098, 'LEAG10', '2011-12-03 00:00:00'),
(1098, 'TRNY10', '2011-04-11 00:00:00'),
(1100, 'LEAG10', '2011-08-07 00:00:00'),
(1112, 'DRAFT10', '2012-09-27 00:00:00'),
(1112, 'TRNY10', '2011-11-12 00:00:00'),
(1112, 'TRNY20', '2013-12-13 00:00:00'),
(1113, 'LEAGD10', '2012-02-18 00:00:00'),
(1114, 'TRNY10', '2013-07-06 00:00:00'),
(1116, 'DRAFT10', '2012-06-09 00:00:00'),
(1117, 'DRAFT10', '2013-05-06 00:00:00'),
(1117, 'TRNY10', '2011-03-04 00:00:00'),
(1117, 'TRNY20', '2013-08-22 00:00:00'),
(1118, 'DRAFT10', '2012-11-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `techID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`techID`, `firstName`, `lastName`, `email`, `phone`, `password`) VALUES
(11, 'Alison', 'Diaz', 'alison@sportspro.com', '800-555-0443', 'sesame'),
(12, 'Jason', 'Lee', 'jason@sportspro.com', '800-555-0444', 'sesame'),
(13, 'Andrew', 'Wilson', 'awilson@sportspro.com', '800-555-0449', 'sesame'),
(14, 'Gunter', 'Wendt', 'gunter@sportspro.com', '800-555-0400', 'sesame'),
(15, 'Gina', 'Fiori', 'gfiori@sportspro.com', '800-555-0459', 'sesame');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryCode`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `incidents`
--
ALTER TABLE `incidents`
  ADD PRIMARY KEY (`incidentID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`customerID`,`productCode`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`techID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;
--
-- AUTO_INCREMENT for table `incidents`
--
ALTER TABLE `incidents`
  MODIFY `incidentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `techID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
