-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2018 at 06:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roomdatasheet`
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
('410', 'Standard', 'Exterior', '11', '11', '11', '11', '11', '11', '11'),
('t1', 'Standard', 'Exterior', 'Standard', 'Glassware Draining', 'Clothes', 'Chalkboard', 'Bed Cubicle', 'Towel', 'Other'),
('t2', 'Standard', 'Exterior', 'Standard', 'Glassware Draining', 'Equipment, ceiling mounted', 'Chalkboard', 'Shower', 'Towel', 'Size'),
('t4', 'Bed', 'Operable', 'Special', 'Case Notes', 'Equipment, wall mounted Suspension Frames Ceiling ', 'Magnetic', 'I.V', 'Grab', 'Other'),
('t4', 'Stretcher', 'Operable', 'Special', 'Case Notes', 'Equipment, ceiling mounted', 'Whiteboard', 'Shower', 'Towel', 'Other'),
('t6', 'Wheelchair', 'Interior', 'Special', 'Case Notes', 'Equipment, ceiling mounted', 'Whiteboard', 'Shower', 'Towel', 'Other'),
('t7', 'Wheelchair', 'Interior', 'Special', 'Glassware Draining', 'Clothes', 'Bulletin', 'Curtain', 'Grab', 'Size'),
('t8', 'Wheelchair', 'Interior', 'Special', 'Glassware Draining', 'Equipment, ceiling mounted', 'Chalkboard', 'Bed Cubicle', 'Towel', 'Other'),
('t9', 'Standard', 'Exterior', 'Standard', 'Glassware Draining', 'Clothes', 'Bulletin', 'Curtain', 'Grab', 'Size'),
('tt1c', 'Wheelchair', 'Interior', 'Special', 'Glassware Draining', 'Equipment, ceiling mounted', 'Chalkboard', 'Bed Cubicle', 'Towel', 'Other'),
('t10', 'Wheelchair', 'Operable', 'Special', 'Glassware Draining', 'Equipment, ceiling mounted', 'Chalkboard', 'Bed Cubicle', 'Towel', 'Other');

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
('410', '22'),
('410', '33'),
('t1', 'Washable'),
('t1', 'Special'),
('t2', 'Acoustic'),
('t2', 'Washable'),
('t4', 'Washable'),
('t4', 'Acoustic'),
('t6', 'Washable'),
('t7', 'Acoustic'),
('t8', 'Washable'),
('tt1c', 'Acoustic'),
('t10', 'Acoustic');

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
('t2', 'Water Impervious'),
('t2', 'Resilient'),
('t2', 'Carpet'),
('t2', 'Chemical Resistant'),
('t2', 'Non-skid'),
('t4', 'Resilient'),
('t4', 'Water Impervious'),
('t6', 'Water Impervious'),
('t7', 'Water Impervious'),
('t8', 'Water Impervious'),
('t10', 'Water Impervious');

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
('t4', 'Vibration'),
('t4', 'Local Scavenging System'),
('t4', 'Noise (Insulate walls)'),
('t6', 'Noise (Insulate walls)'),
('t6', 'Fume Cabinet for Biohazard'),
('t7', 'Noise (Insulate walls)'),
('t8', 'Noise (Insulate walls)'),
('t10', 'Noise (Insulate walls)');

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
('t4', 'Equipment'),
('t7', 'Equipment'),
('t8', 'Refrigerat'),
('t10', 'Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `arch_storagecomponents`
--

CREATE TABLE `arch_storagecomponents` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Depth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Option` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('t4', 'Water Impervious'),
('t4', 'Standard'),
('t6', 'Washable'),
('t7', 'Standard'),
('t8', 'Washable'),
('t10', 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `arch_worksurfaces`
--

CREATE TABLE `arch_worksurfaces` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Depth` smallint(6) DEFAULT NULL,
  `SpecialSurface` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('t6', 'Closed Circuit TV (Educational)'),
('t6', 'Audio/ Visual'),
('t7', 'Bedhead Consoles'),
('t7', 'Emergency'),
('t8', 'Bedhead Consoles'),
('t8', 'Patient Monitoring '),
('t10', 'Bedhead Consoles'),
('t10', 'Emergency');

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
('t7', 'Synchronized', 'Film Reader'),
('t8', 'Synchronized', 'Film Reader'),
('t9', 'Synchronized', 'Film Reader'),
('tt1c', 'Synchronized', 'Film Reader'),
('t10', 'Stand Alone', 'Film Reader');

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
('t9', ' Fire Alarm System'),
('t10', 'Intrusion Detector');

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
('t9', 'Magnetic Door Position Switch'),
('t10', 'Electronic Door Locking Hardware');

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
('t8', 'Ambient'),
('t9', 'Ambient'),
('t10', 'Examining');

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
('t9', 'Wall Switch'),
('t10', 'Occupancy Sensor');

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
('tt1c', 'Standard (23ÂºC)', 'Standard (35% min)', 'Negative'),
('t10', 'Standard (23ÂºC)', 'Standard (35% min)', 'Negative');

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
('410', '4109', 10, 4, 4, 'LO', 4, 4),
('t1', '4109', 1, 1, 1, 'gh', 1, 1),
('t10', '4109', 1, 1, 1, 'j', 1, 1),
('t2', '4109', 1, 1, 1, 'f', 2, 1),
('t4', '4109', 1, 1, 1, 'vf', 3, 2),
('t6', '4109', 1, 1, 1, '5', 1, 1),
('t7', '4109', 1, 1, 1, 'n', 1, 1),
('t8', '4109', 1, 1, 2, 's', 1, 1),
('t9', '4109', 1, 1, 1, 'f', 1, 1),
('tt1c', '4109', 1, 1, 1, 'x', 1, 1);

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
('t10', 'Bed Pan Sprayer');

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_drainage`
--

CREATE TABLE `plumbing_drainage` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Drainage` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plumbing_drainage`
--

INSERT INTO `plumbing_drainage` (`room_id`, `Drainage`) VALUES
('t10', 'Sanitary');

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_fixtures`
--

CREATE TABLE `plumbing_fixtures` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fixtures` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plumbing_fixtures`
--

INSERT INTO `plumbing_fixtures` (`room_id`, `Fixtures`) VALUES
('t10', 'With Garburator'),
('t10', 'Floor Drainage Point');

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
('t10', 'Medical Vacuum');

-- --------------------------------------------------------

--
-- Table structure for table `plumbing_water`
--

CREATE TABLE `plumbing_water` (
  `room_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Water` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FireSuppressionSprinklerNo` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('4109', 'ASM', 'ASMA', 'AMNSL', '2018-06-30', 'MNAS');

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
-- Indexes for table `arch_storagecomponents`
--
ALTER TABLE `arch_storagecomponents`
  ADD KEY `fk_Arch_StorageComponents_1_idx` (`room_id`);

--
-- Indexes for table `arch_wallfinishes`
--
ALTER TABLE `arch_wallfinishes`
  ADD KEY `fk_Arch_WallFinishes_1_idx` (`room_id`);

--
-- Indexes for table `arch_worksurfaces`
--
ALTER TABLE `arch_worksurfaces`
  ADD KEY `fk_Arch_WorkSurfaces_1_idx` (`room_id`);

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
-- Constraints for table `arch_storagecomponents`
--
ALTER TABLE `arch_storagecomponents`
  ADD CONSTRAINT `fk_Arch_StorageComponents_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_wallfinishes`
--
ALTER TABLE `arch_wallfinishes`
  ADD CONSTRAINT `fk_Arch_WallFinishes_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `arch_worksurfaces`
--
ALTER TABLE `arch_worksurfaces`
  ADD CONSTRAINT `fk_Arch_WorkSurfaces_1` FOREIGN KEY (`room_id`) REFERENCES `operational_data_room` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
