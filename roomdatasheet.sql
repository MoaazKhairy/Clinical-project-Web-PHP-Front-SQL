-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2018 at 01:38 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.2.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RoomDataSheet`
--

-- --------------------------------------------------------

--
-- Table structure for table `architecture`
--

CREATE TABLE `architecture` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DoorWidth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Windows` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CeilingHeight` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Racks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hooks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Boards` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tracks` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rails` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mirrors` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `architecture`
--

INSERT INTO `architecture` (`room_id`, `DoorWidth`, `Windows`, `CeilingHeight`, `Racks`, `Hooks`, `Boards`, `Tracks`, `Rails`, `Mirrors`) VALUES
('101A Lobby', 'Wheelchair', 'Interior', 'Special', 'Case Notes', 'Clothes', 'Other: Wood Veneer Panels', 'Bed Cubicle', 'Towel', 'Other'),
('106A Medical Records', 'Wheelchair', 'Operable', 'Special', 'Case Notes', 'Clothes', 'Key', 'Curtain', 'Towel', 'Other'),
('287 Lockers', 'Wheelchair', 'Interior', 'Standard', 'Case Notes', 'Clothes', 'Other: Wood Veneer Panels', 'Curtain', 'Towel', 'Size'),
('115 Nurse Practitioner Office', 'Wheelchair', 'Interior', 'Standard', 'Stationary', 'Clothes', 'Cork', 'Curtain', 'Grab', 'Size'),
('116A Clean Linen', 'Standard', 'Interior', 'Standard', 'Gas Cylinder', 'Equipment, ceiling mounted', 'Other: Wood Veneer Panels', 'Curtain', 'Grab', 'Other'),
('117 Physician/Staff Change', 'Wheelchair', 'Interior', 'Standard', 'Case Notes', 'Clothes', 'Whiteboard', 'Shower', 'Grab', 'Other'),
('119A Waiting', 'Wheelchair', 'Interior', 'Special', 'Case Notes', 'Clothes', 'Key', 'Curtain', 'Towel', 'Other'),
('120 Library/Resource', 'Wheelchair', 'Interior', 'Standard', 'Stationary', 'Clothes', 'Whiteboard', 'Curtain', 'Towel', 'Size'),
('122 General Treatment', 'Wheelchair', 'Operable', 'Standard', 'Stationary', 'Clothes', 'Cork', 'Curtain', 'Grab', 'Other'),
('125 Oncology Follow-up', 'Wheelchair', 'Interior', 'Standard', 'Stationary', 'Clothes', 'Cork', 'Curtain', 'Towel', 'Other'),
('132A Storage', 'Standard', 'Interior', 'Standard', 'Stationary', 'Clothes', 'Cork', 'Curtain', 'Grab', 'Other'),
('135 HCC Field Supervisor Office', 'Wheelchair', 'Exterior', 'Standard', 'Case Notes', 'Clothes', 'Other: Wood Veneer Panels', 'Shower', 'Towel', 'Other'),
('139 Meeting Room', 'Wheelchair', 'Operable', 'Standard', 'Case Notes', 'Clothes', 'Whiteboard', 'Curtain', 'Grab', 'Other'),
('149 Visiting Specialist Office', 'Wheelchair', 'Interior', 'Standard', 'Stationary', 'Clothes', 'Cork', 'Curtain', 'Grab', 'Other'),
('150 Chronic Disease O Pregnancy Testing', 'Wheelchair', 'Interior', 'Standard', 'Case Notes', 'Clothes', 'Whiteboard', 'Curtain', 'Grab', 'Other'),
('151A Medication Room', 'Standard', 'Interior', 'Standard', 'Case Notes', 'Clothes', 'Other: Wood Veneer Panels', 'Curtain', 'Grab', 'Other'),
('162 Site Manager', 'Wheelchair', 'Exterior', 'Standard', 'Case Notes', 'Clothes', 'Whiteboard', 'Curtain', 'Grab', 'Other'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Wheelchair', 'Exterior', 'Standard', 'Case Notes', 'Clothes', 'Other: Wood Veneer Panels', 'Curtain', 'Grab', 'Other'),
('179 Exercise/ gym', 'Wheelchair', 'Exterior', 'Special', 'Stationary', 'Clothes', 'Other: Wood Veneer Panels', 'Curtain', 'Grab', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `arch_ceilingfinishes`
--

CREATE TABLE `arch_ceilingfinishes` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CeilingFinishes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arch_ceilingfinishes`
--

INSERT INTO `arch_ceilingfinishes` (`room_id`, `CeilingFinishes`) VALUES
('101A Lobby', 'Special'),
('106A Medical Records', 'Acoustic'),
('287 Lockers', 'Special'),
('115 Nurse Practitioner Office', 'Acoustic'),
('117 Physician/Staff Change', 'Special'),
('119A Waiting', 'Special'),
('120 Library/Resource', 'Acoustic'),
('122 General Treatment', 'Acoustic'),
('125 Oncology Follow-up', 'Acoustic'),
('132A Storage', 'Special'),
('135 HCC Field Supervisor Office', 'Acoustic'),
('139 Meeting Room', 'Acoustic'),
('149 Visiting Specialist Office', 'Acoustic'),
('150 Chronic Disease O Pregnancy Testing', 'Acoustic'),
('151A Medication Room', 'Special'),
('162 Site Manager', 'Acoustic'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Acoustic'),
('179 Exercise/ gym', 'Acoustic');

-- --------------------------------------------------------

--
-- Table structure for table `arch_floorfinishes`
--

CREATE TABLE `arch_floorfinishes` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FloorFinishes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arch_floorfinishes`
--

INSERT INTO `arch_floorfinishes` (`room_id`, `FloorFinishes`) VALUES
('101A Lobby', 'Resilient'),
('106A Medical Records', 'Resilient'),
('287 Lockers', 'Resilient'),
('115 Nurse Practitioner Office', 'Resilient'),
('116A Clean Linen', 'Resilient'),
('117 Physician/Staff Change', 'Resilient'),
('119A Waiting', 'Resilient'),
('120 Library/Resource', 'Resilient'),
('122 General Treatment', 'Resilient'),
('125 Oncology Follow-up', 'Resilient'),
('132A Storage', 'Resilient'),
('135 HCC Field Supervisor Office', 'Resilient'),
('139 Meeting Room', 'Resilient'),
('149 Visiting Specialist Office', 'Resilient'),
('150 Chronic Disease O Pregnancy Testing', 'Resilient'),
('151A Medication Room', 'Resilient'),
('162 Site Manager', 'Resilient'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Resilient'),
('179 Exercise/ gym', 'Resilient');

-- --------------------------------------------------------

--
-- Table structure for table `arch_specialconsiderations`
--

CREATE TABLE `arch_specialconsiderations` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SpecialConsiderations` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arch_specialconsiderations`
--

INSERT INTO `arch_specialconsiderations` (`room_id`, `SpecialConsiderations`) VALUES
('101A Lobby', 'Noise (Insulate walls)'),
('101A Lobby', 'Natural Light/View Out'),
('101A Lobby', 'Glazed Partitions/Doors'),
('106A Medical Records', 'Noise (Insulate walls)'),
('106A Medical Records', 'Speech Privacy Isolation'),
('106A Medical Records', 'Glazed Partitions/Doors'),
('287 Lockers', 'Noise (Insulate walls)'),
('115 Nurse Practitioner Office', 'Noise (Insulate walls)'),
('115 Nurse Practitioner Office', 'Speech Privacy Isolation'),
('117 Physician/Staff Change', 'Noise (Insulate walls)'),
('117 Physician/Staff Change', 'Glazed Partitions/Doors'),
('119A Waiting', 'Noise (Insulate walls)'),
('119A Waiting', 'Speech Privacy Isolation'),
('120 Library/Resource', 'Noise (Insulate walls)'),
('120 Library/Resource', 'Speech Privacy Isolation'),
('122 General Treatment', 'Noise (Insulate walls)'),
('122 General Treatment', 'Speech Privacy Isolation'),
('125 Oncology Follow-up', 'Noise (Insulate walls)'),
('125 Oncology Follow-up', 'Speech Privacy Isolation'),
('132A Storage', 'Noise (Insulate walls)'),
('135 HCC Field Supervisor Office', 'Noise (Insulate walls)'),
('135 HCC Field Supervisor Office', 'Natural Light/View Out'),
('135 HCC Field Supervisor Office', 'Speech Privacy Isolation'),
('139 Meeting Room', 'Noise (Insulate walls)'),
('139 Meeting Room', 'Speech Privacy Isolation'),
('149 Visiting Specialist Office', 'Noise (Insulate walls)'),
('149 Visiting Specialist Office', 'Speech Privacy Isolation'),
('150 Chronic Disease O Pregnancy Testing', 'Noise (Insulate walls)'),
('150 Chronic Disease O Pregnancy Testing', 'Speech Privacy Isolation'),
('162 Site Manager', 'Noise (Insulate walls)'),
('162 Site Manager', 'Natural Light/View Out'),
('162 Site Manager', 'Speech Privacy Isolation'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Noise (Insulate walls)'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Speech Privacy Isolation'),
('179 Exercise/ gym', 'Noise (Insulate walls)'),
('179 Exercise/ gym', 'Natural Light/View Out'),
('179 Exercise/ gym', 'Speech Privacy Isolation');

-- --------------------------------------------------------

--
-- Table structure for table `arch_specialstoragerequirements`
--

CREATE TABLE `arch_specialstoragerequirements` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SpecialStorageRequirements` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arch_specialstoragerequirements`
--

INSERT INTO `arch_specialstoragerequirements` (`room_id`, `SpecialStorageRequirements`) VALUES
('101A Lobby', 'Equipment'),
('106A Medical Records', 'Supplies'),
('116A Clean Linen', 'Supplies'),
('122 General Treatment', 'Equipment'),
('122 General Treatment', 'Supplies'),
('125 Oncology Follow-up', 'Equipment'),
('125 Oncology Follow-up', 'Supplies'),
('149 Visiting Specialist Office', 'Equipment'),
('149 Visiting Specialist Office', 'Supplies'),
('150 Chronic Disease O Pregnancy Testing', 'Equipment'),
('150 Chronic Disease O Pregnancy Testing', 'Supplies'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Equipment'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `arch_wallfinishes`
--

CREATE TABLE `arch_wallfinishes` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `WallFinishes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arch_wallfinishes`
--

INSERT INTO `arch_wallfinishes` (`room_id`, `WallFinishes`) VALUES
('101A Lobby', 'Standard'),
('101A Lobby', 'Washable'),
('106A Medical Records', 'Standard'),
('106A Medical Records', 'Washable'),
('287 Lockers', 'Standard'),
('287 Lockers', 'Washable'),
('115 Nurse Practitioner Office', 'Standard'),
('115 Nurse Practitioner Office', 'Washable'),
('116A Clean Linen', 'Standard'),
('116A Clean Linen', 'Washable'),
('117 Physician/Staff Change', 'Standard'),
('117 Physician/Staff Change', 'Washable'),
('119A Waiting', 'Standard'),
('119A Waiting', 'Washable'),
('120 Library/Resource', 'Standard'),
('120 Library/Resource', 'Washable'),
('122 General Treatment', 'Standard'),
('122 General Treatment', 'Washable'),
('125 Oncology Follow-up', 'Standard'),
('125 Oncology Follow-up', 'Washable'),
('132A Storage', 'Standard'),
('132A Storage', 'Washable'),
('135 HCC Field Supervisor Office', 'Standard'),
('135 HCC Field Supervisor Office', 'Washable'),
('139 Meeting Room', 'Standard'),
('139 Meeting Room', 'Washable'),
('149 Visiting Specialist Office', 'Standard'),
('149 Visiting Specialist Office', 'Washable'),
('150 Chronic Disease O Pregnancy Testing', 'Standard'),
('150 Chronic Disease O Pregnancy Testing', 'Washable'),
('151A Medication Room', 'Standard'),
('151A Medication Room', 'Washable'),
('162 Site Manager', 'Standard'),
('162 Site Manager', 'Washable'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Standard'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Washable'),
('179 Exercise/ gym', 'Standard'),
('179 Exercise/ gym', 'Washable');

-- --------------------------------------------------------

--
-- Table structure for table `communications`
--

CREATE TABLE `communications` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Communications` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communications`
--

INSERT INTO `communications` (`room_id`, `Communications`) VALUES
('101A Lobby', 'Access Control'),
('101A Lobby', 'Public Address'),
('106A Medical Records', 'Computer Terminal'),
('106A Medical Records', 'Computer Printer'),
('106A Medical Records', 'Telephone'),
('106A Medical Records', 'Data'),
('106A Medical Records', 'Access Control'),
('106A Medical Records', 'Public Address'),
('106A Medical Records', 'Code White (Panic)'),
('287 Lockers', 'Access Control'),
('287 Lockers', 'Public Address'),
('115 Nurse Practitioner Office', 'Computer Terminal'),
('115 Nurse Practitioner Office', 'Telephone'),
('115 Nurse Practitioner Office', 'Data'),
('115 Nurse Practitioner Office', 'Public Address'),
('115 Nurse Practitioner Office', 'Code White (Panic)'),
('117 Physician/Staff Change', 'Telephone'),
('117 Physician/Staff Change', 'Data'),
('117 Physician/Staff Change', 'Security TV'),
('117 Physician/Staff Change', 'Access Control'),
('117 Physician/Staff Change', 'Public Address'),
('117 Physician/Staff Change', 'Code White (Panic)'),
('119A Waiting', 'Telephone'),
('119A Waiting', 'Data'),
('119A Waiting', 'Public Address'),
('120 Library/Resource', 'Computer Terminal'),
('120 Library/Resource', 'Telephone'),
('120 Library/Resource', 'Data'),
('120 Library/Resource', 'Access Control'),
('120 Library/Resource', 'Public Address'),
('122 General Treatment', 'Computer Terminal'),
('122 General Treatment', 'Telephone'),
('122 General Treatment', 'Data'),
('122 General Treatment', 'Public Address'),
('122 General Treatment', 'Code White (Panic)'),
('125 Oncology Follow-up', 'Computer Terminal'),
('125 Oncology Follow-up', 'Telephone'),
('125 Oncology Follow-up', 'Data'),
('125 Oncology Follow-up', 'Public Address'),
('125 Oncology Follow-up', 'Code White (Panic)'),
('132A Storage', 'Public Address'),
('135 HCC Field Supervisor Office', 'Computer Terminal'),
('135 HCC Field Supervisor Office', 'Telephone'),
('135 HCC Field Supervisor Office', 'Data'),
('135 HCC Field Supervisor Office', 'Public Address'),
('139 Meeting Room', 'Telephone'),
('139 Meeting Room', 'Television'),
('139 Meeting Room', 'Data'),
('139 Meeting Room', 'Access Control'),
('139 Meeting Room', 'Public Address'),
('139 Meeting Room', 'Code White (Panic)'),
('149 Visiting Specialist Office', 'Computer Terminal'),
('149 Visiting Specialist Office', 'Telephone'),
('149 Visiting Specialist Office', 'Data'),
('149 Visiting Specialist Office', 'Access Control'),
('149 Visiting Specialist Office', 'Public Address'),
('149 Visiting Specialist Office', 'Code Blue (Cardiac)'),
('149 Visiting Specialist Office', 'Code White (Panic)'),
('150 Chronic Disease O Pregnancy Testing', 'Computer Terminal'),
('150 Chronic Disease O Pregnancy Testing', 'Telephone'),
('150 Chronic Disease O Pregnancy Testing', 'Data'),
('150 Chronic Disease O Pregnancy Testing', 'Public Address'),
('151A Medication Room', 'Access Control'),
('151A Medication Room', 'Public Address'),
('162 Site Manager', 'Computer Terminal'),
('162 Site Manager', 'Telephone'),
('162 Site Manager', 'Data'),
('162 Site Manager', 'Public Address'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Telephone'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Television'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Data'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Access Control'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Public Address'),
('179 Exercise/ gym', 'Telephone'),
('179 Exercise/ gym', 'Data'),
('179 Exercise/ gym', 'Public Address');

-- --------------------------------------------------------

--
-- Table structure for table `electrical`
--

CREATE TABLE `electrical` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ClockSystem` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Imaging` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electrical`
--

INSERT INTO `electrical` (`room_id`, `ClockSystem`, `Imaging`) VALUES
('101A Lobby', '12 Hour', 'Film Reader'),
('106A Medical Records', '24 Hour', 'Film Reader'),
('287 Lockers', '24 Hour', 'Film Reader'),
('115 Nurse Practitioner Office', 'Synchronized', 'Film Reader'),
('116A Clean Linen', 'Synchronized', 'Film Reader'),
('117 Physician/Staff Change', 'Synchronized', 'Film Reader'),
('119A Waiting', '12 Hour', 'Film Reader'),
('120 Library/Resource', '12 Hour', 'Film Reader'),
('122 General Treatment', '12 Hour', 'Film Reader'),
('125 Oncology Follow-up', 'Synchronized', 'Film Reader'),
('132A Storage', 'Synchronized', 'Film Reader'),
('135 HCC Field Supervisor Office', 'Synchronized', 'Film Reader'),
('139 Meeting Room', 'Synchronized', 'Film Reader'),
('149 Visiting Specialist Office', '24 Hour', 'Film Reader'),
('150 Chronic Disease O Pregnancy Testing', 'Synchronized', 'Film Reader'),
('151A Medication Room', 'Synchronized', 'Film Reader'),
('162 Site Manager', 'Synchronized', 'Film Reader'),
('169 Multipurpose Teaching Room w/ kitchenette', '12 Hour', 'Film Reader'),
('179 Exercise/ gym', '12 Hour', 'Film Reader');

-- --------------------------------------------------------

--
-- Table structure for table `electrical_alarm`
--

CREATE TABLE `electrical_alarm` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Alarm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electrical_alarm`
--

INSERT INTO `electrical_alarm` (`room_id`, `Alarm`) VALUES
('101A Lobby', ' Fire Alarm System'),
('101A Lobby', 'Intrusion Detector'),
('101A Lobby', 'Heat Detector'),
('101A Lobby', 'Smoke Detector'),
('106A Medical Records', ' Fire Alarm System'),
('106A Medical Records', 'Heat Detector'),
('106A Medical Records', 'Smoke Detector'),
('287 Lockers', ' Fire Alarm System'),
('115 Nurse Practitioner Office', ' Fire Alarm System'),
('116A Clean Linen', ' Fire Alarm System'),
('117 Physician/Staff Change', ' Fire Alarm System'),
('117 Physician/Staff Change', 'Heat Detector'),
('117 Physician/Staff Change', 'Smoke Detector'),
('119A Waiting', ' Fire Alarm System'),
('119A Waiting', 'Heat Detector'),
('119A Waiting', 'Smoke Detector'),
('120 Library/Resource', ' Fire Alarm System'),
('122 General Treatment', ' Fire Alarm System'),
('125 Oncology Follow-up', ' Fire Alarm System'),
('132A Storage', ' Fire Alarm System'),
('135 HCC Field Supervisor Office', ' Fire Alarm System'),
('139 Meeting Room', ' Fire Alarm System'),
('149 Visiting Specialist Office', ' Fire Alarm System'),
('150 Chronic Disease O Pregnancy Testing', ' Fire Alarm System'),
('151A Medication Room', ' Fire Alarm System'),
('162 Site Manager', ' Fire Alarm System'),
('169 Multipurpose Teaching Room w/ kitchenette', ' Fire Alarm System'),
('179 Exercise/ gym', ' Fire Alarm System'),
('179 Exercise/ gym', 'Heat Detector'),
('179 Exercise/ gym', 'Smoke Detector');

-- --------------------------------------------------------

--
-- Table structure for table `electrical_doors`
--

CREATE TABLE `electrical_doors` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Doors` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electrical_doors`
--

INSERT INTO `electrical_doors` (`room_id`, `Doors`) VALUES
('106A Medical Records', 'Magnetic Door Position Switch'),
('106A Medical Records', 'Electronic Door Locking Hardware'),
('106A Medical Records', 'Request-to-exit for Door Shunt'),
('117 Physician/Staff Change', 'Magnetic Door Position Switch'),
('117 Physician/Staff Change', 'Electronic Door Locking Hardware'),
('117 Physician/Staff Change', 'Request-to-exit for Door Shunt');

-- --------------------------------------------------------

--
-- Table structure for table `electrical_lighting`
--

CREATE TABLE `electrical_lighting` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lighting` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electrical_lighting`
--

INSERT INTO `electrical_lighting` (`room_id`, `Lighting`) VALUES
('101A Lobby', 'Ambient'),
('106A Medical Records', 'Ambient'),
('106A Medical Records', 'Task'),
('287 Lockers', 'Ambient'),
('115 Nurse Practitioner Office', 'Ambient'),
('115 Nurse Practitioner Office', 'Examining'),
('116A Clean Linen', 'Ambient'),
('117 Physician/Staff Change', 'Ambient'),
('119A Waiting', 'Ambient'),
('120 Library/Resource', 'Ambient'),
('120 Library/Resource', 'Task'),
('122 General Treatment', 'Examining'),
('125 Oncology Follow-up', 'Examining'),
('132A Storage', 'Ambient'),
('135 HCC Field Supervisor Office', 'Task'),
('139 Meeting Room', 'Ambient'),
('149 Visiting Specialist Office', 'Ambient'),
('149 Visiting Specialist Office', 'Task'),
('150 Chronic Disease O Pregnancy Testing', 'Ambient'),
('150 Chronic Disease O Pregnancy Testing', 'Task'),
('151A Medication Room', 'Ambient'),
('151A Medication Room', 'Task'),
('162 Site Manager', 'Task'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Ambient'),
('179 Exercise/ gym', 'Ambient');

-- --------------------------------------------------------

--
-- Table structure for table `electrical_lightingcontrol`
--

CREATE TABLE `electrical_lightingcontrol` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LightingControl` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electrical_lightingcontrol`
--

INSERT INTO `electrical_lightingcontrol` (`room_id`, `LightingControl`) VALUES
('106A Medical Records', 'Wall Switch'),
('287 Lockers', 'Occupancy Sensor'),
('115 Nurse Practitioner Office', 'Wall Switch'),
('115 Nurse Practitioner Office', 'Occupancy Sensor'),
('117 Physician/Staff Change', 'Wall Switch'),
('117 Physician/Staff Change', 'Occupancy Sensor'),
('120 Library/Resource', 'Wall Switch'),
('122 General Treatment', 'Wall Switch'),
('125 Oncology Follow-up', 'Wall Switch'),
('132A Storage', 'Wall Switch'),
('135 HCC Field Supervisor Office', 'Wall Switch'),
('135 HCC Field Supervisor Office', 'Occupancy Sensor'),
('139 Meeting Room', 'Wall Switch'),
('139 Meeting Room', 'Occupancy Sensor'),
('149 Visiting Specialist Office', 'Wall Switch'),
('149 Visiting Specialist Office', 'Occupancy Sensor'),
('150 Chronic Disease O Pregnancy Testing', 'Wall Switch'),
('150 Chronic Disease O Pregnancy Testing', 'Occupancy Sensor'),
('162 Site Manager', 'Wall Switch'),
('162 Site Manager', 'Occupancy Sensor'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Wall Switch'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Dimmer');

-- --------------------------------------------------------

--
-- Table structure for table `mechanical`
--

CREATE TABLE `mechanical` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Temperature` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Humidity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoomPressurization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mechanical`
--

INSERT INTO `mechanical` (`room_id`, `Temperature`, `Humidity`, `RoomPressurization`) VALUES
('101A Lobby', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('106A Medical Records', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('287 Lockers', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('115 Nurse Practitioner Office', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('116A Clean Linen', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('117 Physician/Staff Change', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('119A Waiting', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('120 Library/Resource', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('122 General Treatment', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('125 Oncology Follow-up', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('132A Storage', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('135 HCC Field Supervisor Office', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('139 Meeting Room', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('149 Visiting Specialist Office', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('150 Chronic Disease O Pregnancy Testing', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('151A Medication Room', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('162 Site Manager', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal'),
('179 Exercise/ gym', 'Standard (23ÂºC)', 'Standard (35% min)', 'Equal');

-- --------------------------------------------------------

--
-- Table structure for table `operational_data_room`
--

CREATE TABLE `operational_data_room` (
  `ID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_in_m` double NOT NULL,
  `hours_of_use` smallint(6) DEFAULT NULL,
  `days_of_use` smallint(6) DEFAULT NULL,
  `function` longtext COLLATE utf8mb4_unicode_ci,
  `occupancy_normal` smallint(6) DEFAULT NULL,
  `occupancy_max` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operational_data_room`
--

INSERT INTO `operational_data_room` (`ID`, `PNO`, `area_in_m`, `hours_of_use`, `days_of_use`, `function`, `occupancy_normal`, `occupancy_max`) VALUES
('101A Lobby', '410', 83, 12, 5, 'Orientation, information waiting', 8, 30),
('106A Medical Records', '410', 32, 9, 5, 'Filing, Data processing', 2, 2),
('115 Nurse Practitioner Office', '410', 12, 9, 5, 'Diagnostic, Consultation, Treatment', 2, 3),
('116A Clean Linen', '410', 1, 9, 5, 'Clean Linen Storage', 0, 1),
('117 Physician/Staff Change', '410', 12, 9, 5, 'Change room', 1, 5),
('119A Waiting', '410', 6, 9, 5, 'Waiting', 2, 5),
('120 Library/Resource', '410', 11, 9, 5, 'Data Entry, Dictation, Resource, Meeting.', 2, 3),
('122 General Treatment', '410', 16, 9, 5, 'Diagnostic, Consultation, Treatment', 2, 3),
('125 Oncology Follow-up', '410', 16, 9, 5, 'Diagnostic, Consultation, Treatment', 2, 3),
('132A Storage', '410', 3, 9, 5, 'Storage ', 0, 0),
('135 HCC Field Supervisor Office', '410', 10, 9, 5, 'Office', 1, 1),
('139 Meeting Room', '410', 10, 9, 5, 'Meetings', 2, 4),
('149 Visiting Specialist Office', '410', 11, 9, 5, 'Diagnostic, Consultation, Treatment', 2, 3),
('150 Chronic Disease O Pregnancy Testing', '410', 11, 9, 5, 'Diagnostic, Consultation, Treatment', 2, 3),
('151A Medication Room', '410', 2, 9, 5, 'Medication Preparation', 0, 1),
('162 Site Manager', '410', 9, 9, 5, 'Office', 1, 1),
('169 Multipurpose Teaching Room w/ kitchenette', '410', 43, 9, 5, 'Seminars, Classes, Meeting, Kitchen Lounge ', 6, 18),
('179 Exercise/ gym', '410', 32, 9, 5, 'Exercise room', 3, 6),
('287 Lockers', '410', 6, 24, 7, 'Storage & Change room ', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_accessories`
--

CREATE TABLE `plumbing_accessories` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Accessories` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plumbing_accessories`
--

INSERT INTO `plumbing_accessories` (`room_id`, `Accessories`) VALUES
('115 Nurse Practitioner Office', 'Hands Free Operation (eg. Infra-red control)'),
('120 Library/Resource', 'Hands Free Operation (eg. Infra-red control)'),
('125 Oncology Follow-up', 'Hands Free Operation (eg. Infra-red control)'),
('149 Visiting Specialist Office', 'Hands Free Operation (eg. Infra-red control)'),
('150 Chronic Disease O Pregnancy Testing', 'Hands Free Operation (eg. Infra-red control)'),
('151A Medication Room', 'Hands Free Operation (eg. Infra-red control)');

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_drainage`
--

CREATE TABLE `plumbing_drainage` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Drainage` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_fixtures`
--

CREATE TABLE `plumbing_fixtures` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fixtures` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_gases`
--

CREATE TABLE `plumbing_gases` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gases` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plumbing_gases`
--

INSERT INTO `plumbing_gases` (`room_id`, `Gases`) VALUES
('179 Exercise/ gym', 'Medical Oxygen');

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_water`
--

CREATE TABLE `plumbing_water` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Water` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plumbing_water`
--

INSERT INTO `plumbing_water` (`room_id`, `Water`) VALUES
('101A Lobby', 'Fire Suppression Sprinkler'),
('106A Medical Records', 'Fire Suppression Sprinkler'),
('287 Lockers', 'Fire Suppression Sprinkler'),
('115 Nurse Practitioner Office', 'Domestic Hot Water (43ÂºC)'),
('115 Nurse Practitioner Office', 'Domestic Cold Water'),
('115 Nurse Practitioner Office', 'Fire Suppression Sprinkler'),
('116A Clean Linen', 'Fire Suppression Sprinkler'),
('117 Physician/Staff Change', 'Fire Suppression Sprinkler'),
('119A Waiting', 'Fire Suppression Sprinkler'),
('120 Library/Resource', 'Domestic Hot Water (43ÂºC)'),
('120 Library/Resource', 'Domestic Cold Water'),
('120 Library/Resource', 'Fire Suppression Sprinkler'),
('122 General Treatment', 'Domestic Hot Water (43ÂºC)'),
('122 General Treatment', 'Domestic Cold Water'),
('122 General Treatment', 'Fire Suppression Sprinkler'),
('125 Oncology Follow-up', 'Domestic Hot Water (43ÂºC)'),
('125 Oncology Follow-up', 'Domestic Cold Water'),
('125 Oncology Follow-up', 'Fire Suppression Sprinkler'),
('132A Storage', 'Fire Suppression Sprinkler'),
('135 HCC Field Supervisor Office', 'Fire Suppression Sprinkler'),
('139 Meeting Room', 'Fire Suppression Sprinkler'),
('149 Visiting Specialist Office', 'Domestic Hot Water (43ÂºC)'),
('149 Visiting Specialist Office', 'Domestic Cold Water'),
('149 Visiting Specialist Office', 'Fire Suppression Sprinkler'),
('150 Chronic Disease O Pregnancy Testing', 'Domestic Hot Water (43ÂºC)'),
('150 Chronic Disease O Pregnancy Testing', 'Domestic Cold Water'),
('150 Chronic Disease O Pregnancy Testing', 'Fire Suppression Sprinkler'),
('151A Medication Room', 'Domestic Hot Water (43ÂºC)'),
('151A Medication Room', 'Domestic Cold Water'),
('151A Medication Room', 'Fire Suppression Sprinkler'),
('162 Site Manager', 'Fire Suppression Sprinkler'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Domestic Hot Water (43ÂºC)'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Domestic Cold Water'),
('169 Multipurpose Teaching Room w/ kitchenette', 'Fire Suppression Sprinkler'),
('179 Exercise/ gym', 'Fire Suppression Sprinkler');

-- --------------------------------------------------------

--
-- Table structure for table `project_data`
--

CREATE TABLE `project_data` (
  `projectNO` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contractor` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_data`
--

INSERT INTO `project_data` (`projectNO`, `projectName`, `owner`, `contractor`, `date`, `address`) VALUES
('410', 'District Hospital and Health Centre', 'Asmaa Mourad', 'Laila Abbas', '2018-04-10', '741 Centre Street, Burns Lake');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `architecture`
--
ALTER TABLE `architecture`
  ADD KEY `fk_Architecture_1_idx` (`room_id`);

--
-- Indexes for table `arch_ceilingfinishes`
--
ALTER TABLE `arch_ceilingfinishes`
  ADD KEY `fk_Arch_CeilingFinishes_1_idx` (`room_id`);

--
-- Indexes for table `arch_floorfinishes`
--
ALTER TABLE `arch_floorfinishes`
  ADD KEY `fk_Arch_FloorFinishes_1_idx` (`room_id`);

--
-- Indexes for table `arch_specialconsiderations`
--
ALTER TABLE `arch_specialconsiderations`
  ADD KEY `fk_Arch_SpecialConsiderations_1_idx` (`room_id`);

--
-- Indexes for table `arch_specialstoragerequirements`
--
ALTER TABLE `arch_specialstoragerequirements`
  ADD KEY `fk_Arch_SpecialStorageRequirements_1_idx` (`room_id`);

--
-- Indexes for table `arch_wallfinishes`
--
ALTER TABLE `arch_wallfinishes`
  ADD KEY `fk_Arch_WallFinishes_1_idx` (`room_id`);

--
-- Indexes for table `communications`
--
ALTER TABLE `communications`
  ADD KEY `fk_Communications_1_idx` (`room_id`);

--
-- Indexes for table `electrical`
--
ALTER TABLE `electrical`
  ADD KEY `fk_Electrical_1_idx` (`room_id`);

--
-- Indexes for table `electrical_alarm`
--
ALTER TABLE `electrical_alarm`
  ADD KEY `fk_Electrical_Alarm_1_idx` (`room_id`);

--
-- Indexes for table `electrical_doors`
--
ALTER TABLE `electrical_doors`
  ADD KEY `fk_Electrical_Doors_1_idx` (`room_id`);

--
-- Indexes for table `electrical_lighting`
--
ALTER TABLE `electrical_lighting`
  ADD KEY `fk_Electrical_Lighting_1_idx` (`room_id`);

--
-- Indexes for table `electrical_lightingcontrol`
--
ALTER TABLE `electrical_lightingcontrol`
  ADD KEY `fk_Electrical_LightingControl_1_idx` (`room_id`);

--
-- Indexes for table `mechanical`
--
ALTER TABLE `mechanical`
  ADD KEY `fk_Mechanical_1_idx` (`room_id`);

--
-- Indexes for table `operational_data_room`
--
ALTER TABLE `operational_data_room`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_operational_data_room_1_idx` (`PNO`);

--
-- Indexes for table `plumbing_accessories`
--
ALTER TABLE `plumbing_accessories`
  ADD KEY `fk_Plumbing_Accessories_1_idx` (`room_id`);

--
-- Indexes for table `plumbing_drainage`
--
ALTER TABLE `plumbing_drainage`
  ADD KEY `fk_Plumbing_Drainage_1_idx` (`room_id`);

--
-- Indexes for table `plumbing_fixtures`
--
ALTER TABLE `plumbing_fixtures`
  ADD KEY `fk_Plumbing_Fixtures_1_idx` (`room_id`);

--
-- Indexes for table `plumbing_gases`
--
ALTER TABLE `plumbing_gases`
  ADD KEY `fk_Plumbing_Gases_1_idx` (`room_id`);

--
-- Indexes for table `plumbing_water`
--
ALTER TABLE `plumbing_water`
  ADD KEY `fk_Plumbing_Water_1_idx` (`room_id`);

--
-- Indexes for table `project_data`
--
ALTER TABLE `project_data`
  ADD PRIMARY KEY (`projectNO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `architecture`
--
ALTER TABLE `architecture`
  ADD CONSTRAINT `fk_Architecture_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_ceilingfinishes`
--
ALTER TABLE `arch_ceilingfinishes`
  ADD CONSTRAINT `fk_Arch_CeilingFinishes_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_floorfinishes`
--
ALTER TABLE `arch_floorfinishes`
  ADD CONSTRAINT `fk_Arch_FloorFinishes_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_specialconsiderations`
--
ALTER TABLE `arch_specialconsiderations`
  ADD CONSTRAINT `fk_Arch_SpecialConsiderations_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_specialstoragerequirements`
--
ALTER TABLE `arch_specialstoragerequirements`
  ADD CONSTRAINT `fk_Arch_SpecialStorageRequirements_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_wallfinishes`
--
ALTER TABLE `arch_wallfinishes`
  ADD CONSTRAINT `fk_Arch_WallFinishes_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communications`
--
ALTER TABLE `communications`
  ADD CONSTRAINT `fk_Communications_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electrical`
--
ALTER TABLE `electrical`
  ADD CONSTRAINT `fk_Electrical_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electrical_alarm`
--
ALTER TABLE `electrical_alarm`
  ADD CONSTRAINT `fk_Electrical_Alarm_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electrical_doors`
--
ALTER TABLE `electrical_doors`
  ADD CONSTRAINT `fk_Electrical_Doors_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electrical_lighting`
--
ALTER TABLE `electrical_lighting`
  ADD CONSTRAINT `fk_Electrical_Lighting_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electrical_lightingcontrol`
--
ALTER TABLE `electrical_lightingcontrol`
  ADD CONSTRAINT `fk_Electrical_LightingControl_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mechanical`
--
ALTER TABLE `mechanical`
  ADD CONSTRAINT `fk_Mechanical_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operational_data_room`
--
ALTER TABLE `operational_data_room`
  ADD CONSTRAINT `fk_operational_data_room_1` FOREIGN KEY (`PNO`) REFERENCES `project_data` (`projectNO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plumbing_accessories`
--
ALTER TABLE `plumbing_accessories`
  ADD CONSTRAINT `fk_Plumbing_Accessories_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plumbing_drainage`
--
ALTER TABLE `plumbing_drainage`
  ADD CONSTRAINT `fk_Plumbing_Drainage_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plumbing_fixtures`
--
ALTER TABLE `plumbing_fixtures`
  ADD CONSTRAINT `fk_Plumbing_Fixtures_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plumbing_gases`
--
ALTER TABLE `plumbing_gases`
  ADD CONSTRAINT `fk_Plumbing_Gases_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plumbing_water`
--
ALTER TABLE `plumbing_water`
  ADD CONSTRAINT `fk_Plumbing_Water_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
