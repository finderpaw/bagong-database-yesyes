-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2026 at 03:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawfinder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_attempts`
--

CREATE TABLE `admin_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adoption_applications`
--

CREATE TABLE `adoption_applications` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_file` varchar(255) NOT NULL,
  `home_photo` varchar(255) NOT NULL DEFAULT '',
  `answers` longtext NOT NULL,
  `flags` text NOT NULL,
  `signature_name` varchar(150) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `agreed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_applications`
--

INSERT INTO `adoption_applications` (`id`, `request_id`, `user_id`, `pet_id`, `id_type`, `id_file`, `home_photo`, `answers`, `flags`, `signature_name`, `ip_address`, `agreed_at`) VALUES
(1, 16, 2, 1, 'PhilSys National ID', '6a3cb3fd13250dfcd9cb4f5b85e2e8da.jpg', '', '[{\"s\":\"Applicant\",\"q\":\"Full name (account)\",\"a\":\"rhencelpogi\"},{\"s\":\"Applicant\",\"q\":\"Email (account)\",\"a\":\"rhenceljohnyalung@gmail.com\"},{\"s\":\"Applicant\",\"q\":\"Contact (account)\",\"a\":\"09923669239\"},{\"s\":\"Applicant\",\"q\":\"Address (account)\",\"a\":\"mabalacat city\"},{\"s\":\"Applicant\",\"q\":\"Birthdate\",\"a\":\"2007-07-08 (age 19)\"},{\"s\":\"Applicant\",\"q\":\"Occupation\",\"a\":\"call center\"},{\"s\":\"Applicant\",\"q\":\"Facebook \\/ social media link\",\"a\":\"https:\\/\\/www.facebook.com\\/aaron.garcia.821172\"},{\"s\":\"Household\",\"q\":\"Type of housing\",\"a\":\"I own my home\"},{\"s\":\"Household\",\"q\":\"Landlord allows pets\",\"a\":\"-\"},{\"s\":\"Household\",\"q\":\"People in the household\",\"a\":\"2\"},{\"s\":\"Household\",\"q\":\"Ages of children\",\"a\":\"-\"},{\"s\":\"Household\",\"q\":\"All household members agree to adopt\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Anyone with pet allergies\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets at home\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Other pets details (vaccinated\\/neutered?)\",\"a\":\"dog, 1 vaccinated\"},{\"s\":\"Experience\",\"q\":\"Has had pets before\",\"a\":\"Yes\"},{\"s\":\"Experience\",\"q\":\"What happened to previous pets\",\"a\":\"still with me\"},{\"s\":\"Experience\",\"q\":\"Ever gave away, sold, or lost a pet\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Explanation\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever reported\\/charged for animal cruelty (self or household)\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Veterinarian \\/ clinic\",\"a\":\"none yet\"},{\"s\":\"Care plan\",\"q\":\"Why adopt this pet\",\"a\":\"my dog need like a buddy, i felt it because everytime he wants to play, sometimes we can\'t play with him because i need to take care of the baby\"},{\"s\":\"Care plan\",\"q\":\"Where the pet will stay\",\"a\":\"Inside the house\"},{\"s\":\"Care plan\",\"q\":\"Hours alone per day\",\"a\":\"4 to 8 hours\"},{\"s\":\"Care plan\",\"q\":\"Who cares for the pet when away\",\"a\":\"i have my friend who lives just next to my house\"},{\"s\":\"Care plan\",\"q\":\"Monthly budget for the pet\",\"a\":\"PHP 1,000 to 3,000\"},{\"s\":\"Care plan\",\"q\":\"Will complete vaccines, deworming, spay\\/neuter\",\"a\":\"Yes\"},{\"s\":\"Care plan\",\"q\":\"Commits to keep the pet for life\",\"a\":\"Yes\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT kill, cook, eat, or serve this animal as food.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT feed this animal to other animals (including snakes, reptiles, or other pets).\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT use this animal for fighting, baiting, experiments, or any form of cruelty.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT sell, trade, breed for profit, or give away this animal to anyone else.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"If I can no longer keep this animal, I will return it to Pawfinder and will not abandon or rehome it myself.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I allow Pawfinder to do follow-up checks, including photo\\/video updates and home visits, after adoption.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I have read and agree to the Adoption Agreement and Liability Waiver below.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I consent to Pawfinder collecting and keeping my ID and personal data for adoption verification (Data Privacy Act of 2012, RA 10173).\",\"a\":\"Agreed\"},{\"s\":\"Verification\",\"q\":\"ID type\",\"a\":\"PhilSys National ID\"}]', '[\"Typed signature does not match account name\"]', 'Rhencel Yalung', '127.0.0.1', '2026-11-14 10:05:15'),
(2, 17, 2, 9, 'PhilSys National ID', '767c06f95a0dd1dd879b8e8b9631c4c5.png', 'fdfdb11b16980bd51e8aa0ce685b013b.png', '[{\"s\":\"Applicant\",\"q\":\"Full name (account)\",\"a\":\"rhencelpogi\"},{\"s\":\"Applicant\",\"q\":\"Email (account)\",\"a\":\"rhenceljohnyalung@gmail.com\"},{\"s\":\"Applicant\",\"q\":\"Contact (account)\",\"a\":\"09923669239\"},{\"s\":\"Applicant\",\"q\":\"Address (account)\",\"a\":\"mabalacat city\"},{\"s\":\"Applicant\",\"q\":\"Birthdate\",\"a\":\"2007-07-08 (age 19)\"},{\"s\":\"Applicant\",\"q\":\"Occupation\",\"a\":\"work\"},{\"s\":\"Applicant\",\"q\":\"Facebook \\/ social media link\",\"a\":\"https:\\/\\/www.facebook.com\\/\"},{\"s\":\"Household\",\"q\":\"Type of housing\",\"a\":\"I own my home\"},{\"s\":\"Household\",\"q\":\"Landlord allows pets\",\"a\":\"-\"},{\"s\":\"Household\",\"q\":\"People in the household\",\"a\":\"2\"},{\"s\":\"Household\",\"q\":\"Ages of children\",\"a\":\"1\"},{\"s\":\"Household\",\"q\":\"All household members agree to adopt\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Anyone with pet allergies\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets at home\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets details (vaccinated\\/neutered?)\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Has had pets before\",\"a\":\"Yes\"},{\"s\":\"Experience\",\"q\":\"What happened to previous pets\",\"a\":\"passsed away\"},{\"s\":\"Experience\",\"q\":\"Ever gave away, sold, or lost a pet\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Explanation\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever reported\\/charged for animal cruelty (self or household)\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Veterinarian \\/ clinic\",\"a\":\"none yet\"},{\"s\":\"Care plan\",\"q\":\"Why adopt this pet\",\"a\":\"i miss my dog that recently passed away, and he looks like my dog, they look a like\"},{\"s\":\"Care plan\",\"q\":\"Where the pet will stay\",\"a\":\"Inside the house\"},{\"s\":\"Care plan\",\"q\":\"Hours alone per day\",\"a\":\"4 to 8 hours\"},{\"s\":\"Care plan\",\"q\":\"Who cares for the pet when away\",\"a\":\"my friend\"},{\"s\":\"Care plan\",\"q\":\"Monthly budget for the pet\",\"a\":\"PHP 1,000 to 3,000\"},{\"s\":\"Care plan\",\"q\":\"Will complete vaccines, deworming, spay\\/neuter\",\"a\":\"Yes\"},{\"s\":\"Care plan\",\"q\":\"Commits to keep the pet for life\",\"a\":\"Yes\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT kill, cook, eat, or serve this animal as food.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT feed this animal to other animals (including snakes, reptiles, or other pets).\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT use this animal for fighting, baiting, experiments, or any form of cruelty.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT sell, trade, breed for profit, or give away this animal to anyone else.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"If I can no longer keep this animal, I will return it to Pawfinder and will not abandon or rehome it myself.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I allow Pawfinder to do follow-up checks, including photo\\/video updates and home visits, after adoption.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I have read and agree to the Adoption Agreement and Liability Waiver below.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I consent to Pawfinder collecting and keeping my ID and personal data for adoption verification (Data Privacy Act of 2012, RA 10173).\",\"a\":\"Agreed\"},{\"s\":\"Verification\",\"q\":\"ID type\",\"a\":\"PhilSys National ID\"}]', '[\"Typed signature does not match account name\"]', 'Rhencel Yalung', '::1', '2026-11-14 15:55:45'),
(3, 18, 2, 12, 'PhilSys National ID', '6934ac926ce7f95f4c02562730c6686d.jpg', '72d7c52385efe29ef74fc4fca2eb17ff.jpg', '[{\"s\":\"Applicant\",\"q\":\"Full name (account)\",\"a\":\"rhencelpogi\"},{\"s\":\"Applicant\",\"q\":\"Email (account)\",\"a\":\"rhenceljohnyalung@gmail.com\"},{\"s\":\"Applicant\",\"q\":\"Contact (account)\",\"a\":\"09923669239\"},{\"s\":\"Applicant\",\"q\":\"Address (account)\",\"a\":\"mabalacat city\"},{\"s\":\"Applicant\",\"q\":\"Birthdate\",\"a\":\"2008-11-08 (age 18)\"},{\"s\":\"Applicant\",\"q\":\"Occupation\",\"a\":\"wfaefawef\"},{\"s\":\"Applicant\",\"q\":\"Facebook \\/ social media link\",\"a\":\"https:\\/\\/www.facebook.com\\/\"},{\"s\":\"Household\",\"q\":\"Type of housing\",\"a\":\"I own my home\"},{\"s\":\"Household\",\"q\":\"Landlord allows pets\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"People in the household\",\"a\":\"1\"},{\"s\":\"Household\",\"q\":\"Ages of children\",\"a\":\"2\"},{\"s\":\"Household\",\"q\":\"All household members agree to adopt\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Anyone with pet allergies\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets at home\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Other pets details (vaccinated\\/neutered?)\",\"a\":\"dog, 2, vaccinated\"},{\"s\":\"Experience\",\"q\":\"Has had pets before\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"What happened to previous pets\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever gave away, sold, or lost a pet\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Explanation\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever reported\\/charged for animal cruelty (self or household)\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Veterinarian \\/ clinic\",\"a\":\"none yet\"},{\"s\":\"Care plan\",\"q\":\"Why adopt this pet\",\"a\":\"fjabiuvaeu rqmiwnrgo wugen iwnge\"},{\"s\":\"Care plan\",\"q\":\"Where the pet will stay\",\"a\":\"Inside the house\"},{\"s\":\"Care plan\",\"q\":\"Hours alone per day\",\"a\":\"4 to 8 hours\"},{\"s\":\"Care plan\",\"q\":\"Who cares for the pet when away\",\"a\":\"my baby\"},{\"s\":\"Care plan\",\"q\":\"Monthly budget for the pet\",\"a\":\"PHP 3,000 to 5,000\"},{\"s\":\"Care plan\",\"q\":\"Will complete vaccines, deworming, spay\\/neuter\",\"a\":\"Yes\"},{\"s\":\"Care plan\",\"q\":\"Commits to keep the pet for life\",\"a\":\"Yes\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT kill, cook, eat, or serve this animal as food.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT feed this animal to other animals (including snakes, reptiles, or other pets).\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT use this animal for fighting, baiting, experiments, or any form of cruelty.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT sell, trade, breed for profit, or give away this animal to anyone else.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"If I can no longer keep this animal, I will return it to Pawfinder and will not abandon or rehome it myself.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I allow Pawfinder to do follow-up checks, including photo\\/video updates and home visits, after adoption.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I have read and agree to the Adoption Agreement and Liability Waiver below.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I consent to Pawfinder collecting and keeping my ID and personal data for adoption verification (Data Privacy Act of 2012, RA 10173).\",\"a\":\"Agreed\"},{\"s\":\"Verification\",\"q\":\"ID type\",\"a\":\"PhilSys National ID\"}]', '[\"Typed signature does not match account name\"]', 'Aaron pogi sobra', '::1', '2026-11-16 04:29:51'),
(4, 19, 2, 11, 'PhilSys National ID', 'fcb307db2b198ad830345f4ef1d0c1af.jpg', '', '[{\"s\":\"Applicant\",\"q\":\"Full name (account)\",\"a\":\"rhencelpogi\"},{\"s\":\"Applicant\",\"q\":\"Name printed on ID\",\"a\":\"vcefrvrfvbt\"},{\"s\":\"Applicant\",\"q\":\"Email (account)\",\"a\":\"rhenceljohnyalung@gmail.com\"},{\"s\":\"Applicant\",\"q\":\"Contact (account)\",\"a\":\"09923669239\"},{\"s\":\"Applicant\",\"q\":\"Address (account)\",\"a\":\"mabalacat city\"},{\"s\":\"Applicant\",\"q\":\"Birthdate\",\"a\":\"2005-06-16 (age 21)\"},{\"s\":\"Applicant\",\"q\":\"Occupation\",\"a\":\"ascdsvsfbsb\"},{\"s\":\"Applicant\",\"q\":\"Facebook \\/ social media link\",\"a\":\"http:\\/\\/localhost:8080\\/phpmyadmin\\/index.php?route=\\/database\\/structure&db=pawfinder_db\"},{\"s\":\"Household\",\"q\":\"Type of housing\",\"a\":\"I own my home\"},{\"s\":\"Household\",\"q\":\"Landlord allows pets\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"People in the household\",\"a\":\"2\"},{\"s\":\"Household\",\"q\":\"Ages of children\",\"a\":\"-\"},{\"s\":\"Household\",\"q\":\"All household members agree to adopt\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Anyone with pet allergies\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets at home\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Other pets details (vaccinated\\/neutered?)\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Has had pets before\",\"a\":\"Yes\"},{\"s\":\"Experience\",\"q\":\"What happened to previous pets\",\"a\":\"fwefvkdhduu4irjdsnvcmchjskweorufenrubrtgbgbtjmnrghnyghnghnt cf DVty\"},{\"s\":\"Experience\",\"q\":\"Ever gave away, sold, or lost a pet\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Explanation\",\"a\":\"wetynbetynyujjmjumuimtfsdfbvfdvadfvjikfbmitrbmwrbghnetmetmugrb  hyhyFVer rgrg\"},{\"s\":\"Experience\",\"q\":\"Ever reported\\/charged for animal cruelty (self or household)\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Veterinarian \\/ clinic\",\"a\":\"scdsvefbrbt\"},{\"s\":\"Care plan\",\"q\":\"Why adopt this pet\",\"a\":\"muk,il,bienirvevtmtumyrhngfkgmfdgjbmirtbjiwrgnlsanfmvmmm fjfjffk e   e w  f er gt\"},{\"s\":\"Care plan\",\"q\":\"Where the pet will stay\",\"a\":\"Fenced yard with proper shelter\"},{\"s\":\"Care plan\",\"q\":\"Hours alone per day\",\"a\":\"Less than 4 hours\"},{\"s\":\"Care plan\",\"q\":\"Who cares for the pet when away\",\"a\":\"frvrfbrgb\"},{\"s\":\"Care plan\",\"q\":\"Monthly budget for the pet\",\"a\":\"PHP 3,000 to 5,000\"},{\"s\":\"Care plan\",\"q\":\"Will complete vaccines, deworming, spay\\/neuter\",\"a\":\"Yes\"},{\"s\":\"Care plan\",\"q\":\"Commits to keep the pet for life\",\"a\":\"Yes\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT kill, cook, eat, or serve this animal as food.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT feed this animal to other animals (including snakes, reptiles, or other pets).\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT use this animal for fighting, baiting, experiments, or any form of cruelty.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT sell, trade, breed for profit, or give away this animal to anyone else.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"If I can no longer keep this animal, I will return it to Pawfinder and will not abandon or rehome it myself.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I allow Pawfinder to do follow-up checks, including photo\\/video updates and home visits, after adoption.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I have read and agree to the Adoption Agreement and Liability Waiver below.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I consent to Pawfinder collecting and keeping my ID and personal data for adoption verification (Data Privacy Act of 2012, RA 10173).\",\"a\":\"Agreed\"},{\"s\":\"Verification\",\"q\":\"ID type\",\"a\":\"PhilSys National ID\"}]', '[\"Typed signature does not match account name\",\"Name on ID does not match account name\"]', 'ascascadv', '::1', '2026-11-16 05:59:31'),
(5, 20, 2, 10, 'Driver\'s License', '4ba351c711a68fcc6e500e4e011ee21d.jpg', 'ad12b9604b9cf0bd6cbcccd787336cbc.jpg', '[{\"s\":\"Applicant\",\"q\":\"Full name (account)\",\"a\":\"rhencelpogi\"},{\"s\":\"Applicant\",\"q\":\"Name printed on ID\",\"a\":\"wafdqegfweg\"},{\"s\":\"Applicant\",\"q\":\"Email (account)\",\"a\":\"rhenceljohnyalung@gmail.com\"},{\"s\":\"Applicant\",\"q\":\"Contact (account)\",\"a\":\"09923669239\"},{\"s\":\"Applicant\",\"q\":\"Address (account)\",\"a\":\"mabalacat city\"},{\"s\":\"Applicant\",\"q\":\"Birthdate\",\"a\":\"2008-10-31 (age 18)\"},{\"s\":\"Applicant\",\"q\":\"Occupation\",\"a\":\"vdvbf\"},{\"s\":\"Applicant\",\"q\":\"Facebook \\/ social media link\",\"a\":\"http:\\/\\/localhost:8080\\/pawfinder\\/adoption_application.php?pet_id=10\"},{\"s\":\"Household\",\"q\":\"Type of housing\",\"a\":\"I own my home\"},{\"s\":\"Household\",\"q\":\"Landlord allows pets\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"People in the household\",\"a\":\"3\"},{\"s\":\"Household\",\"q\":\"Ages of children\",\"a\":\"5\"},{\"s\":\"Household\",\"q\":\"All household members agree to adopt\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Anyone with pet allergies\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets at home\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Other pets details (vaccinated\\/neutered?)\",\"a\":\"dwsewfcewfwerevgtbhtynbm kvkfgogogpg\"},{\"s\":\"Experience\",\"q\":\"Has had pets before\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"What happened to previous pets\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever gave away, sold, or lost a pet\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Explanation\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever reported\\/charged for animal cruelty (self or household)\",\"a\":\"No\"},{\"s\":\"Care plan\",\"q\":\"Why adopt this pet\",\"a\":\"fodkldls hdnfv djskr fvjff fbrgb b v;cxmcvfdvdfbgn cxdvsd\"},{\"s\":\"Care plan\",\"q\":\"Where the pet will stay\",\"a\":\"Fenced yard with proper shelter\"},{\"s\":\"Care plan\",\"q\":\"Hours alone per day\",\"a\":\"4 to 8 hours\"},{\"s\":\"Care plan\",\"q\":\"Who cares for the pet when away\",\"a\":\"fwerfgrg\"},{\"s\":\"Care plan\",\"q\":\"Veterinarian \\/ clinic\",\"a\":\"wefwefwee\"},{\"s\":\"Care plan\",\"q\":\"Monthly budget for the pet\",\"a\":\"Below PHP 1,000\"},{\"s\":\"Care plan\",\"q\":\"Will complete vaccines, deworming, spay\\/neuter\",\"a\":\"Yes\"},{\"s\":\"Care plan\",\"q\":\"Commits to keep the pet for life\",\"a\":\"Yes\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT kill, cook, eat, or serve this animal as food.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT feed this animal to other animals (including snakes, reptiles, or other pets).\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT use this animal for fighting, baiting, experiments, or any form of cruelty.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT sell, trade, breed for profit, or give away this animal to anyone else.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"If I can no longer keep this animal, I will return it to Pawfinder and will not abandon or rehome it myself.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I allow Pawfinder to do follow-up checks, including photo\\/video updates and home visits, after adoption.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I have read and agree to the Adoption Agreement and Liability Waiver below.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I consent to Pawfinder collecting and keeping my ID and personal data for adoption verification (Data Privacy Act of 2012, RA 10173).\",\"a\":\"Agreed\"},{\"s\":\"Verification\",\"q\":\"ID type\",\"a\":\"Driver\'s License\"}]', '[\"Monthly budget below PHP 1,000\",\"Typed signature does not match account name\",\"Name on ID does not match account name\"]', 'scsdvsdvgddfd', '::1', '2026-11-16 06:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `adoption_requests`
--

CREATE TABLE `adoption_requests` (
  `id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_requests`
--

INSERT INTO `adoption_requests` (`id`, `pet_id`, `user_id`, `status`, `created_at`) VALUES
(10, 6, 2, 'Rejected', '2026-11-13 08:48:10'),
(11, 7, 2, 'Approved', '2026-11-13 08:58:01'),
(12, 8, 2, 'Approved', '2026-11-13 09:17:15'),
(13, 3, 2, 'Approved', '2026-11-13 09:17:53'),
(14, 2, 2, 'Approved', '2026-11-13 09:19:47'),
(15, 5, 2, 'Approved', '2026-11-13 09:56:22'),
(16, 1, 2, 'Rejected', '2026-11-14 10:05:15'),
(17, 9, 2, 'Rejected', '2026-11-14 15:55:45'),
(18, 12, 2, 'Pending', '2026-11-16 04:29:51'),
(19, 11, 2, 'Pending', '2026-11-16 05:59:30'),
(20, 10, 2, 'Pending', '2026-11-16 06:19:08');

--
-- Triggers `adoption_requests`
--
DELIMITER $$
CREATE TRIGGER `trg_adoption_status_notify` AFTER UPDATE ON `adoption_requests` FOR EACH ROW INSERT INTO user_notifications (user_id, message, link)
SELECT NEW.user_id,
       CONCAT('Your adoption request for ',
              COALESCE(p.pet_name, 'the pet'),
              IF(NEW.status = 'Approved', ' was approved!', ' was not approved.')),
       CONCAT('my_application.php?request_id=', NEW.id)
FROM (SELECT 1) d
LEFT JOIN pets p ON p.id = NEW.pet_id
WHERE NEW.status <> OLD.status
  AND NEW.status IN ('Approved', 'Rejected')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `adoption_updates`
--

CREATE TABLE `adoption_updates` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `source` varchar(10) NOT NULL DEFAULT 'upload',
  `health_status` varchar(30) NOT NULL,
  `appetite` varchar(30) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ai_score` decimal(4,3) DEFAULT NULL,
  `img_hash` char(16) DEFAULT NULL,
  `needs_review` tinyint(1) NOT NULL DEFAULT 0,
  `review_reason` varchar(255) DEFAULT NULL,
  `admin_seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_updates`
--

INSERT INTO `adoption_updates` (`id`, `request_id`, `user_id`, `pet_id`, `photo`, `source`, `health_status`, `appetite`, `notes`, `created_at`, `ai_score`, `img_hash`, `needs_review`, `review_reason`, `admin_seen`) VALUES
(1, 15, 2, 5, 'uploads/updates/1794676401_15_877fdb53.jpg', 'camera', 'Healthy', 'Eating well', 'its doing welll', '2026-11-14 17:13:21', NULL, NULL, 0, NULL, 1),
(2, 14, 2, 2, 'uploads/updates/1794821880_14_e96a36d2.jpg', 'upload', 'Healthy', 'Eating well', 'adasdas', '2026-11-16 09:38:00', NULL, NULL, 0, NULL, 1),
(3, 12, 2, 8, 'uploads/updates/1794822087_12_48bf0160.jpg', 'upload', 'Healthy', 'Eating well', 'hahaahaha', '2026-11-16 09:41:27', NULL, NULL, 0, NULL, 1),
(4, 11, 2, 7, 'uploads/updates/1794822776_11_5f3932e2.jpg', 'camera', 'Healthy', 'Eating less than usual', 'he\'s doing great', '2026-11-16 09:52:56', NULL, NULL, 1, 'AI check could not run', 1),
(5, 13, 2, 3, 'uploads/updates/1794827309_13_ae21af47.jpg', 'camera', 'Needs attention', 'Eating less than usual', 'na stress na sa code', '2026-11-16 11:08:29', NULL, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `health_drive`
--

CREATE TABLE `health_drive` (
  `id` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `owner_name` varchar(150) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_drive`
--

INSERT INTO `health_drive` (`id`, `event_name`, `owner_name`, `contact_number`, `pet_name`, `pet_type`, `registration_date`) VALUES
(1, 'Free Anti-Rabies Vaccination Drive', 'Mikhaela Villanueva', '09054970091', 'Lorenz', 'Dog', '2026-11-06 08:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `health_drives`
--

CREATE TABLE `health_drives` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Upcoming','Ongoing','Completed','Cancelled') DEFAULT 'Upcoming',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_drives`
--

INSERT INTO `health_drives` (`id`, `name`, `event_date`, `event_time`, `location`, `description`, `image`, `status`, `created_at`) VALUES
(1, 'Free Anti-Rabies Vaccination Drive', '2026-11-15', '8:00 AM - 4:00 PM', 'Community Pet Center', 'Free anti-rabies vaccination for dogs and cats.', 'image/vacine.jpg', 'Upcoming', '2026-11-06 08:11:06'),
(2, 'Free Pet Health Checkup', '2026-11-20', '9:00 AM - 3:00 PM', 'Barangay Hall', 'Basic physical examination and health assessment.', 'image/checkup.jpg', 'Upcoming', '2026-11-06 08:11:06'),
(3, 'Pet Deworming Program', '2026-11-25', '8:00 AM - 2:00 PM', 'Pawfinder Partner Shelter', 'Free deworming services for rescued pets.', 'image/deworm.png', 'Upcoming', '2026-11-06 08:11:06'),
(4, 'Spay and Neuter Mission', '2026-12-05', '8:00 AM - 5:00 PM', 'Community Veterinary Center', 'Affordable spaying and neutering services.', 'image/spay.jpg', 'Upcoming', '2026-11-06 08:11:06');

--
-- Triggers `health_drives`
--
DELIMITER $$
CREATE TRIGGER `health_drive_announce` AFTER INSERT ON `health_drives` FOR EACH ROW INSERT INTO notifications (title, message, audience, type, reference_id)
VALUES (
    CONCAT('Free pet health drive: ', NEW.name),
    CONCAT(
        COALESCE(NEW.description, ''), '\n',
        'Date: ', DATE_FORMAT(NEW.event_date, '%b %d, %Y'), '\n',
        'Time: ', COALESCE(NEW.event_time, 'TBA'), '\n',
        'Location: ', COALESCE(NEW.location, 'TBA'), '\n',
        'Register on the Health Drives page to reserve a slot for your pet.'
    ),
    'all',
    'health_drive_announce',
    NEW.id
)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `health_drive_registrations`
--

CREATE TABLE `health_drive_registrations` (
  `id` int(11) NOT NULL,
  `drive_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(150) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_type` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_drive_registrations`
--

INSERT INTO `health_drive_registrations` (`id`, `drive_id`, `user_id`, `full_name`, `email`, `phone`, `pet_name`, `pet_type`, `created_at`) VALUES
(1, 2, 2, 'rhencelpogi', 'rhenceljohnyalung@gmail.com', '09675635520', 'Shan', 'Dog', '2026-11-16 11:47:48'),
(2, 3, 2, 'rhencelpogi', 'rhenceljohnyalung@gmail.com', '09675635520', 'brixers', 'Dog', '2026-11-16 13:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `audience` varchar(20) NOT NULL DEFAULT 'all',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `request_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `audience`, `created_at`, `request_id`, `type`, `reference_id`) VALUES
(2, 'New Adoption Request: sda', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt sda (dog, bullshit).', 'admin', '2026-11-13 08:58:01', 11, NULL, NULL),
(3, 'New Adoption Request: sdsad', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt sdsad (aasdfas, sdfd).', 'admin', '2026-11-13 09:17:15', 12, NULL, NULL),
(4, 'New Adoption Request: brixers', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt brixers (dog, bullshit).', 'admin', '2026-11-13 09:17:53', 13, NULL, NULL),
(5, 'New Adoption Request: brixers', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt brixers (dog, bullshit).', 'admin', '2026-11-13 09:19:47', 14, NULL, NULL),
(6, 'New Adoption Request: sda', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt sda (asda, asda).', 'admin', '2026-11-13 09:56:22', 15, NULL, NULL),
(7, 'New Adoption Application: Shan', 'rhencelpogi (rhenceljohnyalung@gmail.com) applied to adopt Shan (dog, Golden Retriever). 1 red flag(s) to review.', 'admin', '2026-11-14 10:05:15', 16, NULL, NULL),
(8, 'New Adoption Application: fer', 'rhencelpogi (rhenceljohnyalung@gmail.com) applied to adopt fer (ferf, erfe). 1 red flag(s) to review.', 'admin', '2026-11-14 15:55:45', 17, NULL, NULL),
(9, 'New Adoption Application: awda', 'rhencelpogi (rhenceljohnyalung@gmail.com) applied to adopt awda (awdawd, wdawda). 1 red flag(s) to review.', 'admin', '2026-11-16 04:29:51', 18, NULL, NULL),
(10, 'New Adoption Application: Shan', 'rhencelpogi (rhenceljohnyalung@gmail.com) applied to adopt Shan (wefwe, fwefwe). 2 red flag(s) to review.', 'admin', '2026-11-16 05:59:31', 19, NULL, NULL),
(11, 'New Adoption Application: awaw', 'rhencelpogi (rhenceljohnyalung@gmail.com) applied to adopt awaw (cat, persian). 3 red flag(s) to review.', 'admin', '2026-11-16 06:19:09', 20, NULL, NULL),
(12, 'New Rescuer Application: janjan', 'Jan (aveneva21@gmail.com) applied to become a Local Rescuer.', 'admin', '2026-11-16 07:27:40', NULL, 'rescuer_request', 16),
(13, 'New Rescuer Application: lala', 'mikha (lorenxz09@gmail.com) applied to become a Local Rescuer.', 'admin', '2026-11-16 08:33:36', NULL, 'rescuer_request', 17),
(14, 'New Rescuer Application: jinahmarie21', 'jena rose enoya (jenaroseenoya@gmail.com) applied to become a Local Rescuer.', 'admin', '2026-11-16 09:24:20', NULL, 'rescuer_request', 20),
(15, 'New health drive registration', 'rhencelpogi registered for \"Free Pet Health Checkup\" (Nov 20, 2026).\nPet: Shan (Dog)\nContact: 09675635520\nEmail: rhenceljohnyalung@gmail.com', 'admin', '2026-11-16 11:47:48', NULL, 'health_drive', 2),
(16, 'HELO', 'SDASCFSD', 'all', '2026-11-16 12:26:32', NULL, NULL, NULL),
(17, 'New health drive registration', 'rhencelpogi registered for \"Pet Deworming Program\" (Nov 25, 2026).\nPet: brixers (Dog)\nContact: 09675635520\nEmail: rhenceljohnyalung@gmail.com', 'admin', '2026-11-16 13:25:58', NULL, 'health_drive', 3),
(18, 'New health drive registration', 'rhencelpogi registered for \"Pet Deworming Program\" (Nov 25, 2026).\nPet: brixers (Dog)\nContact: 09675635520\nEmail: rhenceljohnyalung@gmail.com', 'rescuer', '2026-11-16 13:25:58', NULL, 'health_drive', 3),
(19, 'HELLO EVERYONE!', 'WE HAVE A UPCOMING EVENT! PLEASE KEEP UPDATED FOR FURTHER ANNOUNCEMENT.', 'all', '2026-11-16 13:35:14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_reads`
--

CREATE TABLE `notification_reads` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `rescuer_username` varchar(100) NOT NULL,
  `read_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_reads`
--

INSERT INTO `notification_reads` (`id`, `notification_id`, `rescuer_username`, `read_at`) VALUES
(1, 6, 'jena22', '2026-11-14 09:26:45'),
(2, 5, 'jena22', '2026-11-14 09:26:47'),
(3, 2, 'lala', '2026-11-16 08:40:47'),
(4, 3, 'lala', '2026-11-16 08:40:47'),
(5, 4, 'lala', '2026-11-16 08:40:47'),
(6, 5, 'lala', '2026-11-16 08:40:47'),
(7, 6, 'lala', '2026-11-16 08:40:47'),
(8, 7, 'lala', '2026-11-16 08:40:47'),
(9, 8, 'lala', '2026-11-16 08:40:47'),
(10, 9, 'lala', '2026-11-16 08:40:47'),
(11, 10, 'lala', '2026-11-16 08:40:47'),
(12, 11, 'lala', '2026-11-16 08:40:47'),
(13, 12, 'lala', '2026-11-16 08:40:47'),
(14, 13, 'lala', '2026-11-16 08:40:47'),
(18, 2, 'rescuer', '2026-11-16 09:08:52'),
(19, 3, 'rescuer', '2026-11-16 09:08:52'),
(20, 4, 'rescuer', '2026-11-16 09:08:52'),
(21, 5, 'rescuer', '2026-11-16 09:08:52'),
(22, 6, 'rescuer', '2026-11-16 09:08:52'),
(23, 7, 'rescuer', '2026-11-16 09:08:52'),
(24, 8, 'rescuer', '2026-11-16 09:08:52'),
(25, 9, 'rescuer', '2026-11-16 09:08:52'),
(26, 10, 'rescuer', '2026-11-16 09:08:52'),
(27, 11, 'rescuer', '2026-11-16 09:08:52'),
(28, 12, 'rescuer', '2026-11-16 09:08:52'),
(29, 13, 'rescuer', '2026-11-16 09:08:52'),
(34, 16, 'jinahmarie21', '2026-11-16 13:33:28'),
(37, 18, 'jinahmarie21', '2026-11-16 13:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `notification_user_reads`
--

CREATE TABLE `notification_user_reads` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `read_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_user_reads`
--

INSERT INTO `notification_user_reads` (`id`, `notification_id`, `user_id`, `read_at`) VALUES
(1, 16, 2, '2026-11-16 13:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_hash` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token_hash`, `expires_at`, `used_at`, `created_at`) VALUES
(1, 4, '7c212226ac2d263a553c9eddbd6d547ec3fea87bed77be80cec7128a43218c55', '2026-11-16 15:37:07', NULL, '2026-11-16 06:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_codes`
--

CREATE TABLE `password_reset_codes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code_hash` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `used_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_reset_codes`
--

INSERT INTO `password_reset_codes` (`id`, `user_id`, `code_hash`, `expires_at`, `attempts`, `used_at`, `created_at`) VALUES
(1, 4, '8e65b793304173e42a904240b8b003603219881dff7466db4a9b0ea4f801b672', '2026-11-16 14:55:15', 0, '2026-11-16 14:49:51', '2026-11-16 06:45:15'),
(2, 4, '1bc320da89134d5ce8b82b9ca19cc3648a9a854eab04b2aa2cbe423a2683f7fe', '2026-11-16 14:59:51', 0, '2026-11-16 14:50:39', '2026-11-16 06:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_species` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT 'Unknown',
  `breed` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `pet_photo` varchar(255) NOT NULL,
  `adoption_reason` text NOT NULL,
  `health_issues` text DEFAULT NULL,
  `pet_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Available','Pending','Adopted') NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `pet_name`, `pet_species`, `gender`, `breed`, `age`, `barangay`, `pet_photo`, `adoption_reason`, `health_issues`, `pet_details`, `created_at`, `status`) VALUES
(1, 'Shan', 'dog', 'Male', 'Golden Retriever', '2 Years', 'Brgy. Lakandula, Mabalacat City', 'uploads/1793951044_dog1.jpg', 'Unable to care', '', 'Minsan suplado pero makulit', '2026-11-06 07:44:04', 'Available'),
(2, 'brixers', 'dog', 'Female', 'bullshit', '19 years', 'barangay ginebra', 'uploads/1794474935_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'she is clingy', '2026-11-12 09:15:35', 'Adopted'),
(3, 'brixers', 'dog', 'Female', 'bullshit', '19 years', 'barangay ginebra', 'uploads/1794475181_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'she is clingy', '2026-11-12 09:19:41', 'Adopted'),
(4, 'Lorenz', 'dog', 'Unknown', 'bullshit', '19 years', 'Brgy. Lakandula, Mabalacat ity', 'uploads/1794558250_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'malibi', '2026-11-13 08:24:10', 'Available'),
(5, 'sda', 'asda', 'Unknown', 'asda', 'asdas', 'asdasd', 'uploads/1794558478_thumbnail_image.png', 'asdas', 'daasd', 'asdasdasd', '2026-11-13 08:27:58', 'Adopted'),
(6, 'hgcjyg', 'dog', 'Unknown', 'Golden Retriever', '2 Years', 'Brgy. Lakandula, Mabalacat ity', 'uploads/1794558758_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'f.y', '2026-11-13 08:32:38', 'Available'),
(7, 'sda', 'dog', 'Unknown', 'bullshit', '19 years', 'Brgy. Lakandula, Mabalacat ity', 'uploads/1794559128_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'rgerg', '2026-11-13 08:38:48', 'Adopted'),
(8, 'sdsad', 'aasdfas', 'Unknown', 'sdfd', 'hftjt', 'kyukyuk', 'uploads/1794559371_thumbnail_image.png', 'yyty', 'tyhty', 'titeeeeeeeeeeeeeeeeeeee', '2026-11-13 08:42:51', 'Pending'),
(9, 'fer', 'ferf', 'Unknown', 'erfe', 'ferfer', 'rgerg', 'uploads/1794651243_images.jpg', 'efe', 'fef', 'wefwefw', '2026-11-14 10:14:03', 'Available'),
(10, 'awaw', 'cat', 'Male', 'persian', '3 months', 'mabalacat', 'uploads/1794672279_i-love-you.png', 'wedw', 'awdawd', 'dfgdfg', '2026-11-14 16:04:39', 'Pending'),
(11, 'Shan', 'wefwe', 'Unknown', 'fwefwe', 'fwefwefwf', 'wefwfewef', 'uploads/1794803165_animal5.jpg', 'efwefw', 'efwefw', 'effwefwef', '2026-11-16 04:26:05', 'Pending'),
(12, 'awda', 'awdawd', 'Unknown', 'wdawda', 'awdaw', 'dadawd', 'uploads/1794803185_animal5.jpg', 'ead', 'dawdaw', 'dawdawd', '2026-11-16 04:26:25', 'Pending'),
(13, 'sdasa', 'aasdfas', 'Unknown', 'bullshit', '231', 'wefwfewef', 'uploads/1794821163_pet.jpg', 'rrqrqrq', 'qrqrq', 'rqwrqwrq', '2026-11-16 09:26:04', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rescue_reports`
--

CREATE TABLE `rescue_reports` (
  `id` int(11) NOT NULL,
  `reporter_name` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Unknown') NOT NULL DEFAULT 'Unknown',
  `pet_condition` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Pending','In Progress','Rescued','Rejected') DEFAULT 'Pending',
  `report_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rescue_reports`
--

INSERT INTO `rescue_reports` (`id`, `reporter_name`, `contact_number`, `location`, `pet_type`, `gender`, `pet_condition`, `description`, `status`, `report_date`) VALUES
(1, 'Ela Villanueva', '09054970091', 'Brgy. Lakandula', 'Dog', 'Unknown', 'Abandoned', 'huhu', 'Pending', '2026-11-06 09:38:50');

--
-- Triggers `rescue_reports`
--
DELIMITER $$
CREATE TRIGGER `rescue_report_notify` AFTER INSERT ON `rescue_reports` FOR EACH ROW INSERT INTO notifications (title, message, audience, type, reference_id)
VALUES (
    CONCAT(
        CASE
            WHEN LOWER(NEW.pet_condition) REGEXP 'injur|sick|critical|bleed|wound|hit|accident|dying' THEN 'High'
            WHEN LOWER(NEW.pet_condition) REGEXP 'abandon|stray|lost|hungry|malnourish|trapped' THEN 'Medium'
            ELSE 'Low'
        END,
        ' urgency: New rescue report'
    ),
    CONCAT('A new rescue report was submitted. Condition: ', COALESCE(NEW.pet_condition, 'not specified'), '.'),
    'rescuer',
    'rescue_report',
    NEW.id
)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `venue` varchar(150) NOT NULL,
  `services` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `organizer` varchar(150) NOT NULL,
  `reminders` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_key`, `setting_value`) VALUES
('address', 'Lakandula St 8 Villa Riles'),
('adoptions_open', '1'),
('contact_email', 'mikhaelavillanueva06@gmail.com'),
('contact_phone', '09054970091'),
('rescue_alerts', '1'),
('site_name', 'PAWFINDER');

-- --------------------------------------------------------

--
-- Table structure for table `stray_reports`
--

CREATE TABLE `stray_reports` (
  `id` int(11) NOT NULL,
  `report_type` varchar(100) NOT NULL,
  `pet_name` varchar(150) NOT NULL,
  `pet_species` varchar(50) NOT NULL,
  `markings` varchar(255) NOT NULL,
  `barangay` varchar(150) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `sighting_date` date NOT NULL,
  `stray_photo` varchar(255) NOT NULL,
  `reporter_contact` varchar(150) NOT NULL,
  `stray_details` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stray_reports`
--

INSERT INTO `stray_reports` (`id`, `report_type`, `pet_name`, `pet_species`, `markings`, `barangay`, `landmark`, `sighting_date`, `stray_photo`, `reporter_contact`, `stray_details`, `status`, `created_at`) VALUES
(1, 'missing', 'brown aspin', 'dog', 'brown with black in ears', 'mabalacat', 'near san francisco', '2026-11-15', 'uploads/1794673320_stray_how-are-you.png', 'aggarcia0807@gmail.com', 'rrgtbvrfgb', 'Pending', '2026-11-14 16:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'adopter',
  `account_status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Approved',
  `created_at` datetime DEFAULT current_timestamp(),
  `rescuer_status` varchar(20) DEFAULT NULL,
  `rescuer_token` varchar(64) DEFAULT NULL,
  `rescuer_token_expires` datetime DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `address`, `contact`, `password`, `role`, `account_status`, `created_at`, `rescuer_status`, `rescuer_token`, `rescuer_token_expires`, `profile_photo`) VALUES
(2, 'rhencelpogi', 'rhencell', 'rhenceljohnyalung@gmail.com', 'mabalacat city', '09923669239', '$2y$10$tTx7K4uyGRbslgWdpQJfK.8.d9JRvY8Y.ERatowCMjWVtB231xSRK', 'adopter', 'Approved', '2026-11-10 11:08:59', NULL, NULL, NULL, 'uploads/avatars/u2_a2f152817232.jpg'),
(3, 'Aaron', 'adopter', 'aggarcia0807@gmail.com', 'Mabalacat', '09287486958', '$2y$10$N6LpQYvAv7AOMrAT37lKL.VakRcvOxjV1nPAIHHqDKzLYEl9Lt702', 'Rescuer', 'Pending', '2026-11-10 11:23:54', NULL, NULL, NULL, NULL),
(4, 'Ela', 'rescuer', 'mikhaelavillanueva06@gmail.com', 'Lakandula Villa Riles', '09054970091', '$2y$10$9kHahju7/Kh6qIVHMvFbCe268yElzQs.JWj44Wf2CWo/xZlUtEcgC', 'Rescuer', 'Pending', '2026-11-10 15:29:19', NULL, NULL, NULL, NULL),
(5, 'rhencels', 'rj123', 'juan@gmail.com', 'Mabalacat City', '09456621533', '$2y$10$02r9OQHVVgkpt437u0IhX.HzyadhJCTbbp.2vnzB34W2Y3oewky2K', 'adopter', 'Approved', '2026-11-10 16:25:54', 'Pending', '49b037266484807780054e6fbc63c48941277dd9d4cebfcba18bc2be9a7ba6ea', '2026-11-13 10:34:16', NULL),
(6, 'brix', 'brix', 'asdadasda@gmai.com', 'asd123', '09578534567', '$2y$10$E8w9VX32WHhMO/pRqUaXGeKg8r2e/rsR6LsUx1.zB9PHr6I6bOBfW', 'adopter', 'Approved', '2026-11-10 16:28:59', 'Pending', NULL, NULL, NULL),
(7, 'aaron23', 'jena123', 'antoniojena77@gmail.com', 'Mabalacat City', '09857463521', '$2y$10$XUXJOx5gtNRk84mgZDBAz.r7yygzK1MhQL3Kuoc3blT4I8xDhQUES', 'adopter', 'Approved', '2026-11-10 17:39:50', 'Pending', '5cf4a5acad3976552e4e9d7e16d749a2a43610823af60e2a2f152f6bb5298f9b', '2026-11-13 10:40:07', NULL),
(8, 'Mikhaela Villanueva', 'inong123', 'finderpaw96@gmail.com', 'Lakandula St 8 Villa Riles', '09378593857', '$2y$10$DjB.YZFsedozCy7Otxd95OGjq3ZPOjx.6iQzpEh28xfQ45.wAtRYi', 'Rescuer', 'Approved', '2026-11-10 17:51:17', 'Approved', NULL, NULL, NULL),
(9, 'Mikhaela Villanueva', 'jena22', 'iuhefwerg9213@gmail.com', 'Lakandula St 8 Villa Riles', '09054970091', '$2y$10$NtjzSDpBr9pUIF4Bhs8Ga.ES0uhsPO5.64NoEgpY2pdCSijsXFlb.', 'Rescuer', 'Approved', '2026-11-10 18:04:27', 'Approved', NULL, NULL, NULL),
(12, '', 'admin', 'finderpaw9346@gmail.com', '', '', '$2y$10$3vqfpb4Z69TSR4nBZYMMue8vzuBOC4gMFOa3YuuSwCWsA8JUFplDG', 'admin', 'Approved', '2026-11-12 17:04:15', NULL, NULL, NULL, NULL),
(14, 'Aaron', 'lalanyo', 'aaronbarbergarcia08@gmail.com', 'mabalacat', '09679849940', '$2y$10$grwa5u3lDC87LRUJqxru8uwK7izsq9LTHRunK2ihTbnHjMPnD1l76', 'adopter', 'Approved', '2026-11-15 00:56:11', NULL, NULL, NULL, NULL),
(15, 'libo', 'libolang', 'vincentlibo23@gmail.com', 'batungbakal kekami mu', '09303427765', '$2y$10$EmsP/s5s3CZ3tUoii9jOQOB8IMZjQ./YBQ3gW0vCrYp5LdOWeQ3ve', 'adopter', 'Approved', '2026-11-16 14:57:29', 'Pending', 'a376466a3213f38d19e4612e1ba6cb69b02fc3fad6263d127c278c2e9812dd5c', '2026-11-19 07:58:43', NULL),
(16, 'Jan', 'janjan', 'aveneva21@gmail.com', 'Lakandula St 8 Villa Riles', '09054970091', '$2y$10$kK.3OfCXKnuz./gaeXWB7eSY3loT0Cnx1JAzIDiq.nlqMSyQteWz6', 'rescuer', 'Approved', '2026-11-16 15:27:27', 'Approved', NULL, NULL, NULL),
(17, 'mikha', 'lala', 'lorenxz09@gmail.com', 'Lakandula St 8 Villa Riles', '09054970091', '$2y$10$iqvhCX/YUcLkHuDFVYGqbe5zXOAHdHYLTgT/6Hpo/0QA4PjlaUIOy', 'rescuer', 'Approved', '2026-11-16 16:33:20', 'Approved', NULL, NULL, NULL),
(18, 'rhencela', 'rhencelll', 'rhenceljohnyalung1@gmail.com', 'Lakandula St 8 Villa Riles', '09054970091', '$2y$10$F9Xfh0QMd90SBKVEX4bCVuQSfinwqSAjjKfJj6X91Cz9jSRXXfUby', 'Rescuer', 'Approved', '2026-11-16 17:09:56', NULL, NULL, NULL, NULL),
(20, 'jena rose enoya', 'jinahmarie21', 'jenaroseenoya@gmail.com', 'Lakandula St 8 Villa Riles', '09054970056', '$2y$10$6XRkLyKM25N2wwsBdEaatONNwT8SgC3ixuuHjY9PWhy2Q9rnlab3y', 'rescuer', 'Approved', '2026-11-16 17:23:21', 'Approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `message`, `link`, `is_read`, `created_at`) VALUES
(1, 2, 'Your adoption request for Shan was not approved.', 'pet_details.php?id=1', 1, '2026-11-14 10:13:38'),
(2, 2, 'Your adoption request for sdsad was approved!', 'pet_details.php?id=8', 1, '2026-11-14 10:17:07'),
(3, 2, 'Your adoption request for fer was not approved.', 'my_application.php?request_id=17', 1, '2026-11-14 15:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_time` (`ip`,`attempted_at`);

--
-- Indexes for table `adoption_applications`
--
ALTER TABLE `adoption_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_request` (`request_id`);

--
-- Indexes for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoption_updates`
--
ALTER TABLE `adoption_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `health_drive`
--
ALTER TABLE `health_drive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_drives`
--
ALTER TABLE `health_drives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_drive_registrations`
--
ALTER TABLE `health_drive_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_drive_user` (`drive_id`,`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_reads`
--
ALTER TABLE `notification_reads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_rescuer_notification` (`notification_id`,`rescuer_username`);

--
-- Indexes for table `notification_user_reads`
--
ALTER TABLE `notification_user_reads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_notif_user` (`notification_id`,`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_token` (`token_hash`),
  ADD KEY `idx_user` (`user_id`);

--
-- Indexes for table `password_reset_codes`
--
ALTER TABLE `password_reset_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `rescue_reports`
--
ALTER TABLE `rescue_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `stray_reports`
--
ALTER TABLE `stray_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `adoption_applications`
--
ALTER TABLE `adoption_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `adoption_updates`
--
ALTER TABLE `adoption_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `health_drive`
--
ALTER TABLE `health_drive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_drives`
--
ALTER TABLE `health_drives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `health_drive_registrations`
--
ALTER TABLE `health_drive_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notification_reads`
--
ALTER TABLE `notification_reads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `notification_user_reads`
--
ALTER TABLE `notification_user_reads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_reset_codes`
--
ALTER TABLE `password_reset_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rescue_reports`
--
ALTER TABLE `rescue_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stray_reports`
--
ALTER TABLE `stray_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
