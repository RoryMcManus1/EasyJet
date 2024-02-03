-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2020 at 07:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rmcmanus07`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `AircraftID` int(11) NOT NULL,
  `SerialNum` varchar(255) NOT NULL,
  `AircraftName` varchar(255) NOT NULL,
  `PassengerCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`AircraftID`, `SerialNum`, `AircraftName`, `PassengerCapacity`) VALUES
(1, 'A567932', 'Airbus A319-100', 156),
(2, 'A634945', 'Airbus A320-200', 180),
(3, 'A937492', 'Airbus A320neo', 186),
(4, 'A837439', 'Airbus A321neo', 235);

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `AirportID` int(11) NOT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `AirportName` varchar(255) NOT NULL,
  `AirportAddress` varchar(255) NOT NULL,
  `AirportAreaCode` varchar(255) NOT NULL,
  `AirportLat/Long` varchar(255) NOT NULL,
  `ContactNumber` varchar(255) NOT NULL,
  `Country` int(11) NOT NULL,
  `City` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`AirportID`, `AirportCode`, `AirportName`, `AirportAddress`, `AirportAreaCode`, `AirportLat/Long`, `ContactNumber`, `Country`, `City`) VALUES
(1, 'BST', 'Belfast International Airport', 'Airport Rd', 'BT29 4AB', '54.6563° N, 6.2171° W', '028 9448 4848', 1, 1),
(2, 'AMS', 'Amsterdam Schiphol Airport', 'Evert van de Beekstraat 202', '1118 CP', '52.3105° N, 4.7683° E', '+31 20 794 0800', 6, 6),
(3, 'MAN', 'Manchester Airport', 'Ringway', 'M90 1QX', '53.3588° N, 2.2727° W', '0808 169 7030', 2, 2),
(4, 'JFK', 'John F. Kennedy International Airport', 'Queens', 'NY 11430', '40.6413° N, 73.7781° W', '+1 718-244-4444', 4, 3),
(5, 'BCN', 'Josep Tarradellas Barcelona-El Prat Airport', 'El Prat de Llobregat', '08820', '41.2974° N, 2.0833° E', '+34 913 21 10 00', 3, 4),
(6, 'CDG', 'Aéroport de Paris-Charles de Gaulle ', 'Dépose Minute Terminal 1, Avenue Charles de Gaulle', '95700', '49.0139° N, 2.5425° E', '+33 1 70 36 39 50', 5, 5),
(7, 'SYD', 'Sydney Airport', ' Mascot, New South Wales', '2020', '33.9399° S, 151.1753° E', '+61 2 9667 9111', 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `baggage`
--

CREATE TABLE `baggage` (
  `BaggageID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `BaggageTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggage`
--

INSERT INTO `baggage` (`BaggageID`, `PassengerID`, `BaggageTypeID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 4),
(4, 4, 4),
(5, 5, 5),
(6, 5, 9),
(7, 6, 5),
(8, 6, 9),
(9, 7, 2),
(10, 7, 7),
(11, 8, 2),
(12, 8, 7),
(13, 9, 3),
(14, 10, 3),
(15, 11, 2),
(16, 12, 2),
(17, 13, 2),
(18, 14, 2),
(19, 15, 1),
(20, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `baggageType`
--

CREATE TABLE `baggageType` (
  `BaggageTypeID` int(11) NOT NULL,
  `BaggageTypeName` varchar(255) NOT NULL,
  `BaggagePrice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baggageType`
--

INSERT INTO `baggageType` (`BaggageTypeID`, `BaggageTypeName`, `BaggagePrice`) VALUES
(1, 'Hold Luggage (15Kg)', ' 6.99 - 35.49'),
(2, 'Hold Luggage (23Kg)', '9.49 - 42.49'),
(3, 'Hold Luggage (26Kg)', '15.49 - 47.49'),
(4, 'Hold Luggage (29Kg)', '21.49 - 53.59'),
(5, 'Hold Luggage (32Kg)', '27.49 - £9.49'),
(7, 'Hands Free Cabin Bag (56x45x25Cm³)', '7'),
(8, 'Small Sports Equipment (20Kg)', '37'),
(9, 'Large Sports Equipment (32Kg)', '45');

-- --------------------------------------------------------

--
-- Table structure for table `bookerAccount`
--

CREATE TABLE `bookerAccount` (
  `BookerInfoID` int(11) NOT NULL,
  `Title` int(11) NOT NULL,
  `BookerFirstName` varchar(255) NOT NULL,
  `BookerLastName` varchar(255) NOT NULL,
  `BookerDOB` date NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` int(11) NOT NULL,
  `HasEasyJetPlus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookerAccount`
--

INSERT INTO `bookerAccount` (`BookerInfoID`, `Title`, `BookerFirstName`, `BookerLastName`, `BookerDOB`, `Username`, `Password`, `Address`, `HasEasyJetPlus`) VALUES
(1, 1, 'Rory', 'McManus', '1995-10-24', 'rorymcmanus272', 'Ž7¶oÖ}ÅhKçzê·', 1, 'Yes'),
(2, 2, 'Lisa', 'Beacoup', '1987-09-24', 'lisabeacoup53', 'M?£–:,KâõQ‹…íV', 3, 'Yes'),
(3, 4, 'Dean', 'Johnson', '1976-05-09', 'deanjohnson88', 'f¬´*ßj2qÞ©ng­8', 4, 'No'),
(4, 3, 'Esteffa', 'Mendez', '1997-08-29', 'esteffamendez111', '¼V;å°|Ší„ZžJÚx ', 2, 'Yes'),
(6, 1, 'John', 'Donnelly', '1997-11-18', 'JD2009', 'Ía-;ìzvžAÏ\\', 8, 'Yes'),
(7, 1, 'Michael', 'Kielt', '1996-09-28', 'kielt888', '+ü³Jö*ÀFÚSŽ1', 5, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `bookerAddresses`
--

CREATE TABLE `bookerAddresses` (
  `AddressID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `TownOrCity` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `PostCode` varchar(255) NOT NULL,
  `Telephone` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookerAddresses`
--

INSERT INTO `bookerAddresses` (`AddressID`, `Address`, `TownOrCity`, `Country`, `PostCode`, `Telephone`, `Email`) VALUES
(1, '18 St James Parade', 'Belfast', 'Northern Ireland', 'BT126EL', '07549889867', 'rmcmanus88@gmail.com'),
(2, 'Plaza de España 69', 'Barcelona', 'Barcelona', '15810', '775 953 830', 'EsteffaMendez123@hotmail.com'),
(3, '52 Rue Des Fluers', 'Paris', 'France', '33500', '01.60.54.88188', 'LisaBeacoup99@outlook.com'),
(4, '492  Godfrey Road', 'New York', 'United States of America', '10048', '212-524-3617', 'DJohnson@gmail.com'),
(5, '78 Kilarny Way', 'Armagh', 'Northern Ireland', 'BT964FN', '02893847563', 'mickkielt123@gmail.com'),
(8, '34 Ruby Avenue', 'Tyrone', 'Northern Ireland', 'BT57DHN', '02895773565', 'JDonnelly111@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `BookingRef` varchar(255) NOT NULL,
  `BookingMadeDate` date NOT NULL,
  `BookerInfo` int(11) NOT NULL,
  `TsAndCsAccepted` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `BookingRef`, `BookingMadeDate`, `BookerInfo`, `TsAndCsAccepted`) VALUES
(1, 'X345F', '2020-10-23', 1, 'Yes'),
(2, 'N563D', '2020-11-18', 2, 'Yes'),
(3, 'D7395H', '2020-05-18', 4, 'No'),
(4, 'J683K', '2018-11-13', 3, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `bookingLineItems`
--

CREATE TABLE `bookingLineItems` (
  `BookingLineItemID` int(11) NOT NULL,
  `LineItemID` varchar(255) NOT NULL,
  `LineItemDesc` varchar(255) NOT NULL,
  `LineItemCost` decimal(12,2) NOT NULL,
  `Booking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingLineItems`
--

INSERT INTO `bookingLineItems` (`BookingLineItemID`, `LineItemID`, `LineItemDesc`, `LineItemCost`, `Booking`) VALUES
(1, 'Adult Ticket', 'Belfast-Amsterdam', '60.28', 1),
(2, 'Adult Return Ticket', 'Amsterdam-Belfast', '68.26', 1),
(3, 'Baggage', '15Kg Hold Luggage', '24.99', 1),
(4, 'Seat 7A', 'Front-Window Seat', '13.99', 1),
(5, 'Seat 8A', 'Front-Window Seat', '13.99', 1),
(6, 'Baggage', '15kg Hold Luggage', '24.99', 1),
(7, 'Adult Ticket', 'Paris-Sydney ', '336.67', 2),
(8, 'Adult Return Ticket', 'Sydney-Paris', '412.74', 2),
(9, 'Baggage', '29Kg Hold Luggage', '48.99', 2),
(10, 'Baggage', '29Kg Hold Luggage', '52.59', 2),
(11, 'Seat 22A', 'Rear-Window Seat', '13.99', 2),
(12, 'Seat 11B', 'Front-Middle Seat', '3.99', 2),
(13, 'Adult Ticket', 'Paris-Sydney', '336.67', 2),
(14, 'Adult Return Ticket', 'Sydney-Paris', '412.74', 2),
(15, 'Baggage', 'Large Sports Equipment (32Kg)', '45.00', 2),
(16, 'Baggage', '32Kg Hold Luggage', '58.89', 2),
(17, 'Baggage', 'Large Sports Equipment (32Kg)', '45.00', 2),
(18, 'Baggage', '32Kg Hold Luggage', '59.25', 2),
(19, 'Seat 22B', 'Rear-Middle Seat', '3.99', 2),
(20, 'Seat 11A', 'Front-Window Seat', '13.99', 2),
(21, 'Adult Ticket', 'New York-Barcelona', '234.35', 4),
(22, 'Adult Return Ticket', 'Barcelona-New York', '256.88', 4),
(23, 'Baggage', '23Kg Hold Luggage', '31.57', 4),
(24, 'Baggage', '23Kg Hold Luggage', '32.76', 4),
(25, 'Baggage', 'Hands-Free Cabin Bag ', '7.00', 4),
(26, 'Baggage', 'Hands-Free Cabin Bag ', '7.00', 4),
(27, 'Seat 8C', 'Front-Aisle Seat', '8.99', 4),
(28, 'Seat 20A', 'Rear-Window Seat', '13.99', 4),
(29, 'Child Ticket', 'New York-Barcelona', '117.16', 4),
(30, 'Child Return Ticket', 'Barcelona-New York', '128.44', 4),
(31, 'Baggage', '23Kg Hold Luggage', '31.57', 4),
(32, 'Baggage', '23Kg Hold Luggage', '32.76', 4),
(33, 'Seat 8B', 'Front-Middle Seat', '3.99', 4),
(34, 'Seat 20B', 'Rear-Window Seat', '3.99', 4),
(35, 'Adult Ticket', 'Barcelona-Belfast', '98.40', 3),
(36, 'Adult Return Ticket', 'Belfast-Barcelona', '89.49', 3),
(37, 'Baggage', '23Kg Hold Luggage', '22.58', 3),
(38, 'Baggage', '23Kg Hold Luggage', '19.59', 3),
(39, 'Seat 2A', 'Front-Window Seat', '13.99', 3),
(40, 'Seat 17B', 'Rear-Middle Seat', '3.99', 3),
(41, 'Adult Ticket', 'Barcelona-Belfast', '98.40', 3),
(42, 'Adult Return Ticket', 'Belfast-Barcelona', '89.49', 3),
(43, 'Baggage', '23Kg Hold Luggage', '22.58', 3),
(44, 'Baggage', '23Kg Hold Luggage', '19.59', 3),
(45, 'Seat 2B', 'Front-Middle Seat', '3.99', 3),
(46, 'Seat 17A', 'Rear-Window Seat', '13.99', 3),
(47, 'Infant Ticket', 'Barcelona-Belfast', '49.20', 3),
(48, 'Infant Return Ticket', 'Belfast-Barcelona', '44.75', 3),
(49, 'Baggage', '23Kg Hold Luggage', '22.58', 3),
(50, 'Baggage', '23Kg Hold Luggage', '19.59', 3),
(51, 'Seat 2C', 'Front-Aisle Seat', '8.99', 3),
(52, 'Seat 17C', 'Rear-Aisle Seat', '8.99', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cardDetails`
--

CREATE TABLE `cardDetails` (
  `CardDetailsID` int(11) NOT NULL,
  `CardNumber` varbinary(255) NOT NULL,
  `CVC` varbinary(255) NOT NULL,
  `ExpiryDate` date NOT NULL,
  `CardType` int(1) NOT NULL,
  `NameOnCard` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardDetails`
--

INSERT INTO `cardDetails` (`CardDetailsID`, `CardNumber`, `CVC`, `ExpiryDate`, `CardType`, `NameOnCard`) VALUES
(1, 0x2612544cdba694bf3f757cf3ac238d3d30883ad8d8f370949105dfe87facc389, 0xff68eb783b695cc90909f2c16dae46a1, '2022-06-14', 1, 'MR R K MCMANUS'),
(2, 0x59a7c628c66e86b390fa97bc9205113530883ad8d8f370949105dfe87facc389, 0x7e0c15ea962bfd488fac6adf1baebed8, '2022-10-28', 2, 'MISS L BEACOUP'),
(3, 0x7dca315be432b65a1ea0cd672a6456f0, 0x5cacd6f2ddef12374b839165d746c05c, '2023-12-25', 3, 'DR D JOHNSON'),
(4, 0x779ef357d80c21c9fcd268d83d26ee3030883ad8d8f370949105dfe87facc389, 0x54dcae4b91b81e8eb5b86319c1836f34, '2024-06-19', 2, 'MRS E MENDEZ');

-- --------------------------------------------------------

--
-- Table structure for table `cardType`
--

CREATE TABLE `cardType` (
  `CardTypeID` int(11) NOT NULL,
  `CardType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardType`
--

INSERT INTO `cardType` (`CardTypeID`, `CardType`) VALUES
(1, 'Visa'),
(2, 'Maestro'),
(3, 'American Express'),
(4, 'MasterCard');

-- --------------------------------------------------------

--
-- Table structure for table `checkIn`
--

CREATE TABLE `checkIn` (
  `CheckInID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `CheckInDate` date NOT NULL,
  `CheckInTime` varchar(255) NOT NULL,
  `Gate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkIn`
--

INSERT INTO `checkIn` (`CheckInID`, `FlightID`, `CheckInDate`, `CheckInTime`, `Gate`) VALUES
(1, 1, '2020-10-29', '19:10', '10F'),
(2, 2, '2020-11-19', '13:20', '7D'),
(3, 3, '2021-01-25', '02:00', '13E'),
(4, 4, '2021-01-31', '05:00', '9A'),
(5, 5, '2021-01-25', '07:50', '13E'),
(6, 6, '2021-01-31', '11:15', '9A'),
(7, 7, '2019-07-17', '14:20', '11B'),
(8, 8, '2019-07-24', '22:10', '4F');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(255) NOT NULL,
  `TimeZone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`CityID`, `CityName`, `TimeZone`) VALUES
(1, 'Belfast', 1),
(2, 'Manchester', 1),
(3, 'New York', 2),
(4, 'Barcelona', 3),
(5, 'Paris', 3),
(6, 'Amsterdam', 3),
(7, 'Sydney', 4);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`CountryID`, `CountryName`) VALUES
(1, 'Northern Ireland'),
(2, 'United Kingdom'),
(3, 'Spain'),
(4, 'United States of America'),
(5, 'France'),
(6, 'Netherlands'),
(7, 'Australia');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `FlightID` int(11) NOT NULL,
  `FlightNumber` varchar(255) NOT NULL,
  `AircraftID` int(11) NOT NULL,
  `RouteID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`FlightID`, `FlightNumber`, `AircraftID`, `RouteID`) VALUES
(1, 'BA758392', 1, 1),
(2, 'BA758398', 4, 2),
(3, 'ND749392', 3, 3),
(4, 'ND749369', 2, 4),
(5, 'IR830578', 4, 5),
(6, 'IR830593', 1, 6),
(7, 'KL647891', 3, 7),
(8, 'KL647856', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `NationalityID` int(11) NOT NULL,
  `Nationality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`NationalityID`, `Nationality`) VALUES
(1, 'British'),
(2, 'American'),
(3, 'Spanish'),
(4, 'French'),
(5, 'Dutch'),
(6, 'Irish');

-- --------------------------------------------------------

--
-- Table structure for table `passengerAddress`
--

CREATE TABLE `passengerAddress` (
  `PassengerAddressId` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `TownOrCity` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `PostCode` varchar(11) NOT NULL,
  `Telephone` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerAddress`
--

INSERT INTO `passengerAddress` (`PassengerAddressId`, `Address`, `TownOrCity`, `Country`, `PostCode`, `Telephone`, `Email`) VALUES
(1, '18 St James Parade', 'Belfast', 'Northern Ireland', 'BT126EL', '07549889867', 'rmcmanus88@gmail.com'),
(2, 'Plaza de España 69', 'Barcelona', 'Spain', '15810', '775 953 830', 'EsteffaMendez123@hotmail.com'),
(3, '52 Rue Des Fluers', 'Paris', 'France', '33500', '01.60.54.88188', 'AimeeBeacoup119@outlook.com'),
(4, '492  Godfrey Road', 'New York', 'United States of America', '10048', '212-524-3617', 'DJohnson@gmail.com'),
(5, 'Plaza de España 69', 'Barcelona', 'Spain', '15810', NULL, NULL),
(6, 'Plaza de España 69', 'Barcelona', 'Spain', '15810', '+34-755-5204', 'MiguelMendez555@gmail.com'),
(7, '52 Rue Des Fluers', 'Paris', 'France', '33500', '+33-700-5554-35', 'PierreBeacoup777@hotmail.com'),
(8, '492  Godfrey Road', 'New York', 'United States of America', '10048', '+1-555-4182-282', 'AJohnson101@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `passengerInfo`
--

CREATE TABLE `passengerInfo` (
  `PassengerInfoID` int(11) NOT NULL,
  `Title` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Address` int(11) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerInfo`
--

INSERT INTO `passengerInfo` (`PassengerInfoID`, `Title`, `FirstName`, `LastName`, `DOB`, `Address`, `Type`) VALUES
(1, 1, 'Rory', 'McManus', '1995-10-24', 1, 1),
(2, 3, 'Aimee', 'Beacoup', '1986-11-18', 3, 4),
(3, 1, 'Pierre', 'Beacoup', '1989-01-14', 7, 1),
(4, 4, 'Dean', 'Johnson', '1976-05-09', 4, 1),
(5, 2, 'Angela', 'Johnson', '1992-02-19', 8, 2),
(6, 3, 'Esteffa', 'Mendez', '1989-11-20', 2, 1),
(7, 1, 'Miguel', 'Mendez', '1981-04-01', 6, 1),
(8, 1, 'Antonio', 'Mendez', '2020-02-19', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `PassID` int(11) NOT NULL,
  `PassengerInfo` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `SeatID` int(11) NOT NULL,
  `CheckInID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`PassID`, `PassengerInfo`, `BookingID`, `FlightID`, `SeatID`, `CheckInID`) VALUES
(1, 1, 1, 1, 19, 1),
(2, 1, 1, 2, 22, 2),
(3, 2, 2, 3, 64, 3),
(4, 2, 2, 4, 32, 4),
(5, 3, 2, 3, 65, 3),
(6, 3, 2, 4, 31, 4),
(7, 4, 4, 5, 24, 5),
(8, 4, 4, 6, 58, 6),
(9, 5, 4, 5, 23, 5),
(10, 5, 4, 6, 59, 6),
(11, 6, 3, 7, 4, 7),
(12, 6, 3, 8, 50, 8),
(13, 7, 3, 7, 8, 7),
(14, 7, 3, 8, 49, 8),
(15, 8, 3, 7, 6, 7),
(16, 8, 3, 8, 51, 8);

-- --------------------------------------------------------

--
-- Table structure for table `passengerType`
--

CREATE TABLE `passengerType` (
  `PassTypeID` int(11) NOT NULL,
  `PassType` varchar(255) NOT NULL,
  `PassengerTypeDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengerType`
--

INSERT INTO `passengerType` (`PassTypeID`, `PassType`, `PassengerTypeDesc`) VALUES
(1, 'Adult', '16+ Years'),
(2, 'Child', '2-15 Years'),
(3, 'Infant', '14 days – 2 Years'),
(4, 'Pregnant Woman', '<Week 35'),
(5, 'PRM', 'Passengers With Reduced Mobility');

-- --------------------------------------------------------

--
-- Table structure for table `passport`
--

CREATE TABLE `passport` (
  `PassportID` int(11) NOT NULL,
  `Nationality` int(11) NOT NULL,
  `PassportNumber` varchar(255) NOT NULL,
  `PassportExpiry` date NOT NULL,
  `Passenger` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passport`
--

INSERT INTO `passport` (`PassportID`, `Nationality`, `PassportNumber`, `PassportExpiry`, `Passenger`) VALUES
(1, 1, 'N758395', '2024-05-23', 1),
(2, 4, 'F847593', '2021-07-09', 2),
(3, 4, 'F876395', '2022-05-25', 3),
(4, 2, 'A683096', '2021-04-18', 4),
(5, 2, 'A579367', '2022-02-28', 5),
(6, 3, 'S893568', '2021-03-09', 6),
(7, 3, 'S91357', '2021-01-14', 7),
(8, 3, 'S368754', '2023-12-26', 8);

-- --------------------------------------------------------

--
-- Table structure for table `paymentDetails`
--

CREATE TABLE `paymentDetails` (
  `PaymentDetailsID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `SubTotal` decimal(12,2) NOT NULL,
  `Total` decimal(12,2) NOT NULL,
  `CardDetails` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentDetails`
--

INSERT INTO `paymentDetails` (`PaymentDetailsID`, `BookingID`, `SubTotal`, `Total`, `CardDetails`) VALUES
(1, 1, '206.20', '210.32', 1),
(2, 2, '1844.50', '1881.39', 2),
(3, 3, '650.18', '663.18', 4),
(4, 4, '910.45', '928.45', 3);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `RouteID` int(11) NOT NULL,
  `RouteName` varchar(255) NOT NULL,
  `RouteCode` varchar(255) NOT NULL,
  `DepartureAirport` int(11) NOT NULL,
  `ArrivalAirport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`RouteID`, `RouteName`, `RouteCode`, `DepartureAirport`, `ArrivalAirport`) VALUES
(1, 'Belfast-Amsterdam', 'BST-AMS', 1, 2),
(2, 'Amsterdam-Belfast', 'AMS-BST', 2, 1),
(3, 'Paris-Sydney', 'CDG-SYD', 6, 7),
(4, 'Sydney-Paris', 'SYD-CDG', 7, 6),
(5, 'New York - Barcelona', 'JFK-BCN', 4, 5),
(6, 'Barcelona - New York', 'BCN-JFK', 5, 4),
(7, 'Barcelona - Belfast', 'BCN-BST', 5, 1),
(8, 'Belfast - Barcelona', 'BST - BCN', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `SeatID` int(11) NOT NULL,
  `SeatCode` varchar(255) NOT NULL,
  `SeatType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`SeatID`, `SeatCode`, `SeatType`) VALUES
(1, '1A', 1),
(2, '1B', 2),
(3, '1C', 3),
(4, '2A', 1),
(5, '2B', 2),
(6, '2C', 3),
(7, '3A', 1),
(8, '2B', 2),
(9, '3C', 3),
(10, '4A', 1),
(11, '4b', 2),
(12, '4C', 3),
(13, '5A', 1),
(14, '5B', 2),
(15, '5C', 3),
(16, '6A', 1),
(17, '6B', 2),
(18, '6C', 3),
(19, '7A', 1),
(20, '7B', 2),
(21, '7C', 3),
(22, '8A', 1),
(23, '8B', 2),
(24, '8C', 3),
(25, '9A', 1),
(26, '9B', 2),
(27, '9C', 3),
(28, '10A', 1),
(29, '10B', 2),
(30, '10C', 3),
(31, '11A', 1),
(32, '11B', 2),
(33, '11C', 3),
(34, '12A', 4),
(35, '12B', 5),
(36, '12C', 6),
(37, '13A', 4),
(38, '13B', 5),
(39, '13C', 6),
(40, '14A', 4),
(41, '14B', 5),
(42, '14C', 6),
(43, '15A', 4),
(44, '15B', 5),
(45, '15C', 6),
(46, '16A', 4),
(47, '16B', 5),
(48, '16C', 6),
(49, '17A', 4),
(50, '17B', 5),
(51, '17C', 6),
(52, '18A', 4),
(53, '18B', 5),
(54, '18C', 6),
(55, '19A', 4),
(56, '19B', 5),
(57, '19C', 6),
(58, '20A', 4),
(59, '20B', 5),
(60, '20C', 6),
(61, '21A', 4),
(62, '21B', 5),
(63, '21C', 6),
(64, '22A', 4),
(65, '22B', 5),
(66, '22C', 6);

-- --------------------------------------------------------

--
-- Table structure for table `seatType`
--

CREATE TABLE `seatType` (
  `SeatTypeID` int(11) NOT NULL,
  `SeatPosition` varchar(255) NOT NULL,
  `BoardingEntrance` varchar(255) NOT NULL,
  `SeatPrice` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seatType`
--

INSERT INTO `seatType` (`SeatTypeID`, `SeatPosition`, `BoardingEntrance`, `SeatPrice`) VALUES
(1, 'Window', 'Front', '13.99'),
(2, 'Middle', 'Front', '3.99'),
(3, 'Aisle', 'Front', '8.99'),
(4, 'Window', 'Rear', '13.99'),
(5, 'Middle', 'Rear', '3.99'),
(6, 'Aisle', 'Rear', '8.99');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `TimetableID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `DepartureDate` date NOT NULL,
  `DepartureTime` varchar(255) NOT NULL,
  `ArrivalDate` date NOT NULL,
  `ArrivalTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`TimetableID`, `FlightID`, `DepartureDate`, `DepartureTime`, `ArrivalDate`, `ArrivalTime`) VALUES
(1, 1, '2020-10-29', '20:40', '2020-10-29', '23:45'),
(2, 2, '2020-11-19', '14:50', '2020-11-19', '18:30'),
(3, 3, '2021-01-25', '03:30', '2021-01-26', '01:30'),
(4, 4, '2021-01-31', '06:30', '2021-02-01', '04:45'),
(5, 5, '2019-07-17', '09:20', '2019-07-17', '18:55'),
(6, 6, '2019-07-24', '12:45', '2019-07-24', '22:30'),
(7, 7, '2020-07-22', '15:50', '2020-07-22', '21:45'),
(8, 8, '2020-07-29', '23:40', '2020-07-29', '05:35');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `TimeZoneID` int(11) NOT NULL,
  `TimeZoneCode` varchar(255) NOT NULL,
  `TimeZoneName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`TimeZoneID`, `TimeZoneCode`, `TimeZoneName`) VALUES
(1, 'GMT', 'Greenwich Mean Time'),
(2, 'EST', 'Eastern Standard Time'),
(3, 'CET', 'Central European Time'),
(4, 'AEST', 'Australian Eastern Standard Time');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `TitleID` int(11) NOT NULL,
  `TitleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`TitleID`, `TitleName`) VALUES
(1, 'Mr'),
(2, 'Miss'),
(3, 'Mrs'),
(4, 'Dr'),
(5, 'Fr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`AircraftID`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`AirportID`),
  ADD KEY `FK_COUNTRY` (`Country`),
  ADD KEY `FK_CITY` (`City`);

--
-- Indexes for table `baggage`
--
ALTER TABLE `baggage`
  ADD PRIMARY KEY (`BaggageID`),
  ADD KEY `FK_BaggageType` (`BaggageTypeID`),
  ADD KEY `FK_PASSBAGGAGE` (`PassengerID`);

--
-- Indexes for table `baggageType`
--
ALTER TABLE `baggageType`
  ADD PRIMARY KEY (`BaggageTypeID`);

--
-- Indexes for table `bookerAccount`
--
ALTER TABLE `bookerAccount`
  ADD PRIMARY KEY (`BookerInfoID`),
  ADD KEY `FK_BOOKERTITLE` (`Title`),
  ADD KEY `FK_BOOKERADDRESS` (`Address`);

--
-- Indexes for table `bookerAddresses`
--
ALTER TABLE `bookerAddresses`
  ADD PRIMARY KEY (`AddressID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `FK_BOOKINGBOOKERINFO` (`BookerInfo`);

--
-- Indexes for table `bookingLineItems`
--
ALTER TABLE `bookingLineItems`
  ADD PRIMARY KEY (`BookingLineItemID`),
  ADD KEY `FK_BookingIDLineItem` (`Booking`) USING BTREE;

--
-- Indexes for table `cardDetails`
--
ALTER TABLE `cardDetails`
  ADD PRIMARY KEY (`CardDetailsID`),
  ADD KEY `FK_CARDTYPE` (`CardType`);

--
-- Indexes for table `cardType`
--
ALTER TABLE `cardType`
  ADD PRIMARY KEY (`CardTypeID`);

--
-- Indexes for table `checkIn`
--
ALTER TABLE `checkIn`
  ADD PRIMARY KEY (`CheckInID`),
  ADD KEY `FK_FLIGHTCHECKIN` (`FlightID`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`CityID`),
  ADD KEY `FK_CityTimeZone` (`TimeZone`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`FlightID`),
  ADD KEY `FK_RoutesID` (`RouteID`),
  ADD KEY `FK_AircraftID` (`AircraftID`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`NationalityID`);

--
-- Indexes for table `passengerAddress`
--
ALTER TABLE `passengerAddress`
  ADD PRIMARY KEY (`PassengerAddressId`);

--
-- Indexes for table `passengerInfo`
--
ALTER TABLE `passengerInfo`
  ADD PRIMARY KEY (`PassengerInfoID`),
  ADD KEY `FK_PASSTITLE` (`Title`),
  ADD KEY `FK_PASSTYPE` (`Type`),
  ADD KEY `FK_PASSADDRESS` (`Address`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`PassID`),
  ADD KEY `FK_PASSINFO` (`PassengerInfo`),
  ADD KEY `FK_PASSBOOKING` (`BookingID`),
  ADD KEY `FK_PASSFLIGHT` (`FlightID`),
  ADD KEY `FK_PASSSEAT` (`SeatID`),
  ADD KEY `FK_PASSCHECKIN` (`CheckInID`);

--
-- Indexes for table `passengerType`
--
ALTER TABLE `passengerType`
  ADD PRIMARY KEY (`PassTypeID`);

--
-- Indexes for table `passport`
--
ALTER TABLE `passport`
  ADD PRIMARY KEY (`PassportID`),
  ADD KEY `FK_PASSNATIONALITY` (`Nationality`),
  ADD KEY `FK_PASSPASSPORT` (`Passenger`);

--
-- Indexes for table `paymentDetails`
--
ALTER TABLE `paymentDetails`
  ADD PRIMARY KEY (`PaymentDetailsID`),
  ADD KEY `FK_CARDDETAILS` (`CardDetails`),
  ADD KEY `FK_BOOKINGPAYMENT` (`BookingID`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `FK_Depart` (`DepartureAirport`),
  ADD KEY `FK_Arrival` (`ArrivalAirport`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `FK_SEATTYPE` (`SeatType`);

--
-- Indexes for table `seatType`
--
ALTER TABLE `seatType`
  ADD PRIMARY KEY (`SeatTypeID`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`TimetableID`),
  ADD KEY `FK_FlightID` (`FlightID`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`TimeZoneID`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`TitleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aircraft`
--
ALTER TABLE `aircraft`
  MODIFY `AircraftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `baggage`
--
ALTER TABLE `baggage`
  MODIFY `BaggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `baggageType`
--
ALTER TABLE `baggageType`
  MODIFY `BaggageTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `bookerAccount`
--
ALTER TABLE `bookerAccount`
  MODIFY `BookerInfoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bookerAddresses`
--
ALTER TABLE `bookerAddresses`
  MODIFY `AddressID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookingLineItems`
--
ALTER TABLE `bookingLineItems`
  MODIFY `BookingLineItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `cardDetails`
--
ALTER TABLE `cardDetails`
  MODIFY `CardDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cardType`
--
ALTER TABLE `cardType`
  MODIFY `CardTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkIn`
--
ALTER TABLE `checkIn`
  MODIFY `CheckInID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `NationalityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `passengerAddress`
--
ALTER TABLE `passengerAddress`
  MODIFY `PassengerAddressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `passengerInfo`
--
ALTER TABLE `passengerInfo`
  MODIFY `PassengerInfoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `PassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `passengerType`
--
ALTER TABLE `passengerType`
  MODIFY `PassTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `passport`
--
ALTER TABLE `passport`
  MODIFY `PassportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paymentDetails`
--
ALTER TABLE `paymentDetails`
  MODIFY `PaymentDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `SeatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `seatType`
--
ALTER TABLE `seatType`
  MODIFY `SeatTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `TimetableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `TimeZoneID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `FK_CITY` FOREIGN KEY (`City`) REFERENCES `cities` (`CityID`),
  ADD CONSTRAINT `FK_COUNTRY` FOREIGN KEY (`Country`) REFERENCES `countries` (`CountryID`);

--
-- Constraints for table `baggage`
--
ALTER TABLE `baggage`
  ADD CONSTRAINT `FK_BaggageType` FOREIGN KEY (`BaggageTypeID`) REFERENCES `baggageType` (`BaggageTypeID`),
  ADD CONSTRAINT `FK_PASSBAGGAGE` FOREIGN KEY (`PassengerID`) REFERENCES `passengers` (`PassID`);

--
-- Constraints for table `bookerAccount`
--
ALTER TABLE `bookerAccount`
  ADD CONSTRAINT `FK_BOOKERADDRESS` FOREIGN KEY (`Address`) REFERENCES `bookerAddresses` (`AddressID`),
  ADD CONSTRAINT `FK_BOOKERTITLE` FOREIGN KEY (`Title`) REFERENCES `titles` (`TitleID`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_BOOKINGBOOKERINFO` FOREIGN KEY (`BookerInfo`) REFERENCES `bookerAccount` (`BookerInfoID`);

--
-- Constraints for table `bookingLineItems`
--
ALTER TABLE `bookingLineItems`
  ADD CONSTRAINT `FK_Booking` FOREIGN KEY (`Booking`) REFERENCES `booking` (`BookingID`);

--
-- Constraints for table `cardDetails`
--
ALTER TABLE `cardDetails`
  ADD CONSTRAINT `FK_CARDTYPE` FOREIGN KEY (`CardType`) REFERENCES `cardType` (`CardTypeID`);

--
-- Constraints for table `checkIn`
--
ALTER TABLE `checkIn`
  ADD CONSTRAINT `FK_FLIGHTCHECKIN` FOREIGN KEY (`FlightID`) REFERENCES `flights` (`FlightID`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `FK_CityTimeZone` FOREIGN KEY (`TimeZone`) REFERENCES `timezones` (`TimeZoneID`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `FK_AircraftID` FOREIGN KEY (`AircraftID`) REFERENCES `aircraft` (`AircraftID`),
  ADD CONSTRAINT `FK_RoutesID` FOREIGN KEY (`RouteID`) REFERENCES `routes` (`RouteID`);

--
-- Constraints for table `passengerInfo`
--
ALTER TABLE `passengerInfo`
  ADD CONSTRAINT `FK_PASSADDRESS` FOREIGN KEY (`Address`) REFERENCES `passengerAddress` (`PassengerAddressId`),
  ADD CONSTRAINT `FK_PASSTITLE` FOREIGN KEY (`Title`) REFERENCES `titles` (`TitleID`),
  ADD CONSTRAINT `FK_PASSTYPE` FOREIGN KEY (`Type`) REFERENCES `passengerType` (`PassTypeID`);

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `FK_PASSBOOKING` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`),
  ADD CONSTRAINT `FK_PASSCHECKIN` FOREIGN KEY (`CheckInID`) REFERENCES `checkIn` (`CheckInID`),
  ADD CONSTRAINT `FK_PASSFLIGHT` FOREIGN KEY (`FlightID`) REFERENCES `flights` (`FlightID`),
  ADD CONSTRAINT `FK_PASSINFO` FOREIGN KEY (`PassengerInfo`) REFERENCES `passengerInfo` (`PassengerInfoID`),
  ADD CONSTRAINT `FK_PASSSEAT` FOREIGN KEY (`SeatID`) REFERENCES `seats` (`SeatID`);

--
-- Constraints for table `passport`
--
ALTER TABLE `passport`
  ADD CONSTRAINT `FK_PASSNATIONALITY` FOREIGN KEY (`Nationality`) REFERENCES `nationality` (`NationalityID`),
  ADD CONSTRAINT `FK_PASSPASSPORT` FOREIGN KEY (`Passenger`) REFERENCES `passengerInfo` (`PassengerInfoID`);

--
-- Constraints for table `paymentDetails`
--
ALTER TABLE `paymentDetails`
  ADD CONSTRAINT `FK_BOOKINGPAYMENT` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`),
  ADD CONSTRAINT `FK_CARDDETAILS` FOREIGN KEY (`CardDetails`) REFERENCES `cardDetails` (`CardDetailsID`);

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `FK_Arrival` FOREIGN KEY (`ArrivalAirport`) REFERENCES `airports` (`AirportID`),
  ADD CONSTRAINT `FK_Depart` FOREIGN KEY (`DepartureAirport`) REFERENCES `airports` (`AirportID`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `FK_SEATTYPE` FOREIGN KEY (`SeatType`) REFERENCES `seatType` (`SeatTypeID`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `FK_FlightID	` FOREIGN KEY (`FlightID`) REFERENCES `flights` (`FlightID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
