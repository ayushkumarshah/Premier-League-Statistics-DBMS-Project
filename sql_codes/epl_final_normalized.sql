-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2017 at 02:07 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epl_final_normalized`
--

-- --------------------------------------------------------

--
-- Table structure for table `attacking_output`
--
create database epl_final_normalized;
use epl_final_normalized;
CREATE TABLE `attacking_output` (
  `Attack_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Goals` int(11) NOT NULL,
  `Assists` int(11) NOT NULL,
  `Attacking_Output` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attacking_output`
--

INSERT INTO `attacking_output` (`Attack_id`, `Goals`, `Assists`, `Attacking_Output`) VALUES
('AOASARS01', 24, 15, 86),
('AODCCHE03', 20, 6, 57),
('AOHKTOT09', 29, 20, 88),
('AOJKBOU02', 16, 3, 56),
('AOMAWES10', 9, 7, 67),
('AONRSOU08', 7, 2, 45),
('AORLEVE04', 25, 12, 67),
('AOSAMAN07', 20, 8, 67),
('AOSMLIV05', 13, 5, 67),
('AOZIMAN06', 17, 11, 90);

-- --------------------------------------------------------

--
-- Table structure for table `attacking_output_player`
--

CREATE TABLE `attacking_output_player` (
  `Attacking_Player_id` varchar(20) NOT NULL,
  `Attack_id` varchar(50) NOT NULL,
  `Player_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attacking_output_player`
--

INSERT INTO `attacking_output_player` (`Attacking_Player_id`, `Attack_id`, `Player_id`) VALUES
('APASARS01', 'AOASARS01', 'ASARS07'),
('APDCCHE03', 'AODCCHE03', 'DCCHE04'),
('APHKTOT09', 'AOHKTOT09', 'HKTOT10'),
('APJKBOU02', 'AOJKBOU02', 'JKBOU06'),
('APMAWES10', 'AOMAWES10', 'MAWES07'),
('APNRSOU08', 'AONRSOU08', 'NRSOU05'),
('APRLEVE04', 'AORLEVE04', 'RLEVE03'),
('APSAMAN07', 'AOSAMAN07', 'SAMAN08'),
('APSMLIV05', 'AOSMLIV05', 'SMLIV25');

-- --------------------------------------------------------

--
-- Table structure for table `fouls`
--

CREATE TABLE `fouls` (
  `Fouls_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Yellow_Cards` int(11) NOT NULL,
  `Red_Cards` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fouls`
--

INSERT INTO `fouls` (`Fouls_id`, `Yellow_Cards`, `Red_Cards`, `Total`) VALUES
('FPARS01', 5, 1, 6),
('FPBOU02', 1, 0, 1),
('FPCHE03', 2, 0, 2),
('FPEVE04', 7, 0, 7),
('FPLIV05', 10, 1, 11),
('FPMAN06', 12, 1, 13),
('FPMAN07', 11, 0, 12),
('FPSOU08', 1, 0, 1),
('FPTOT09', 0, 0, 0),
('FPWES10', 15, 0, 15),
('FTARS01', 55, 10, 65),
('FTBOU02', 66, 8, 74),
('FTCHE03', 65, 15, 80),
('FTEVE04', 66, 10, 76),
('FTLIV05', 66, 15, 81),
('FTMAN06', 55, 3, 58),
('FTMAN07', 55, 36, 91),
('FTSOU08', 16, 10, 26),
('FTTOT09', 55, 10, 65),
('FTWES10', 66, 10, 76);

-- --------------------------------------------------------

--
-- Table structure for table `fouls_player`
--

CREATE TABLE `fouls_player` (
  `Fouls_Player_id` varchar(20) NOT NULL,
  `Player_id` varchar(45) NOT NULL,
  `Fouls_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fouls_player`
--

INSERT INTO `fouls_player` (`Fouls_Player_id`, `Player_id`, `Fouls_id`) VALUES
('FP_FPARS01', 'ASARS07', 'FPARS01'),
('FP_FPBOU02', 'JKBOU06', 'FPBOU02'),
('FP_FPCHE03', 'DCCHE04', 'FPCHE03'),
('FP_FPEVE04', 'RLEVE03', 'FPEVE04'),
('FP_FPLIV05', 'SMLIV25', 'FPLIV05'),
('FP_FPMAN06', 'SAMAN08', 'FPMAN06'),
('FP_FPSOU08', 'NRSOU05', 'FPSOU08'),
('FP_FPTOT09', 'NRSOU05', 'FPTOT09'),
('FP_FPWES10', 'MAWES07', 'FPWES10');

-- --------------------------------------------------------

--
-- Table structure for table `fouls_team`
--

CREATE TABLE `fouls_team` (
  `Fouls_Team_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Fouls_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fouls_team`
--

INSERT INTO `fouls_team` (`Fouls_Team_id`, `Club_id`, `Fouls_id`) VALUES
('FT_FTARS01', 'ARS01', 'FTARS01'),
('FT_FTBOU02', 'BOU02', 'FTBOU02'),
('FT_FTCHE03', 'CHE03', 'FTCHE03'),
('FT_FTEVE04', 'EVE04', 'FTEVE04'),
('FT_FTLIV05', 'LIV05', 'FTLIV05'),
('FT_FTMAN06', 'MAN06', 'FTMAN06'),
('FT_FTMAN07', 'MAN07', 'FTMAN07'),
('FT_FTSOU08', 'SOU08', 'FTSOU08'),
('FT_FTTOT09', 'TOT09', 'FTTOT09'),
('FT_FTWES10', 'WES10', 'FTWES10');

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `Goals_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Goals_for` int(11) NOT NULL,
  `Goals_conceeded` int(11) NOT NULL,
  `Goal_difference` int(11) NOT NULL,
  `Home_goals` int(11) NOT NULL,
  `Away_goals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`Goals_id`, `Goals_for`, `Goals_conceeded`, `Goal_difference`, `Home_goals`, `Away_goals`) VALUES
('GARS01', 77, 44, 18, 35, 42),
('GBOU02', 55, 67, -12, 30, 25),
('GCHE03', 85, 33, 52, 60, 25),
('GEVE04', 62, 44, 18, 30, 32),
('GLIV05', 75, 42, 36, 39, 46),
('GMAN06', 54, 29, 25, 24, 30),
('GMAN07', 80, 39, 41, 41, 39),
('GSOU08', 47, 48, -7, 27, 20),
('GTOT09', 86, 26, 60, 40, 46),
('GWES10', 43, 51, -8, 33, 10);

-- --------------------------------------------------------

--
-- Table structure for table `goals_team`
--

CREATE TABLE `goals_team` (
  `Goals_Team_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Goals_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goals_team`
--

INSERT INTO `goals_team` (`Goals_Team_id`, `Club_id`, `Goals_id`) VALUES
('GTARS01', 'ARS01', 'GARS01'),
('GTBOU02', 'BOU02', 'GBOU02'),
('GTCHE03', 'CHE03', 'GCHE03'),
('GTEVE04', 'EVE04', 'GEVE04'),
('GTLIV05', 'LIV05', 'GLIV05'),
('GTMAN06', 'MAN06', 'GMAN06'),
('GTMAN07', 'MAN07', 'GMAN07'),
('GTSOU08', 'SOU08', 'GSOU08'),
('GTTOT09', 'TOT09', 'GTOT09'),
('GTWES10', 'WES10', 'GWES10');

-- --------------------------------------------------------

--
-- Table structure for table `passing_player`
--

CREATE TABLE `passing_player` (
  `Passing_Player_id` varchar(20) NOT NULL,
  `Player_id` varchar(45) NOT NULL,
  `Pass_completion` int(11) DEFAULT NULL,
  `Pass_accuracy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passing_player`
--

INSERT INTO `passing_player` (`Passing_Player_id`, `Player_id`, `Pass_completion`, `Pass_accuracy`) VALUES
('PPASARS01', 'ASARS07', 428, 70),
('PPDCCHE03', 'DCCHE04', 356, 56),
('PPHKTOT09', 'HKTOT10', 376, 67),
('PPJKBOU02', 'JKBOU06', 425, 59),
('PPMAWES10', 'MAWES07', 256, 67),
('PPNRSOU08', 'NRSOU05', 698, 88),
('PPRLEVE04', 'RLEVE03', 451, 57),
('PPSAMAN06', 'SAMAN08', 563, 47),
('PPSMLIV05', 'SMLIV25', 561, 57);

-- --------------------------------------------------------

--
-- Table structure for table `passing_team`
--

CREATE TABLE `passing_team` (
  `Passing_Team_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Pass_completion` int(11) DEFAULT NULL,
  `Pass_accuracy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passing_team`
--

INSERT INTO `passing_team` (`Passing_Team_id`, `Club_id`, `Pass_completion`, `Pass_accuracy`) VALUES
('PTARS01', 'ARS01', 12325, 37),
('PTBOU02', 'BOU02', 56326, 45),
('PTCHE03', 'CHE03', 15326, 91),
('PTEVE04', 'EVE04', 86935, 45),
('PTLIV05', 'LIV05', 96325, 68),
('PTMAN06', 'MAN06', 10235, 89),
('PTMAN07', 'MAN07', 12320, 89),
('PTSOU08', 'SOU08', 98653, 65),
('PTTOT09', 'TOT09', 15632, 83),
('PTWES10', 'WES10', 13513, 56);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `Player_id` varchar(45) NOT NULL,
  `Player_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`Player_id`, `Player_name`) VALUES
('ASARS07', 'Alexis Sanchez'),
('DCCHE04', 'Diego Costa'),
('HKTOT10', 'Harry Kane'),
('JKBOU06', 'Joshuwa King'),
('MAWES07', 'Michail Antonio'),
('NRSOU05', 'Nathan Redmond'),
('RLEVE03', 'Romelu Lukaku'),
('SMLIV25', 'Sadio Mane'),
('SAMAN08', 'Sergio Aguero'),
('ZIMAN16', 'Zlatan Ibrahimovic');

-- --------------------------------------------------------

--
-- Table structure for table `player_info`
--

CREATE TABLE `player_info` (
  `Player_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Club_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Jersey_no` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_info`
--

INSERT INTO `player_info` (`Player_name`, `Club_id`, `Jersey_no`) VALUES
('Alexis Sanchez', 'ARS01', 7),
('Diego Costa', 'CHE03', 14),
('Harry Kane', 'TOT09', 10),
('Joshuwa King', 'BOU02', 6),
('Michail Antonio', 'WES10', 7),
('Nathan Redmond', 'SOU08', 5),
('Romelu Lukaku', 'EVE04', 3),
('Sadio Mane', 'LIV05', 25),
('Sergio Aguero', 'MAN06', 8),
('Zlatan Ibrahimovic', 'MAN07', 16);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `Points_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Points_won` int(11) NOT NULL,
  `Points_dropped` int(11) NOT NULL,
  `Percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`Points_id`, `Points_won`, `Points_dropped`, `Percentage`) VALUES
('AARS01', 30, 27, 53),
('ABOU02', 15, 42, 26),
('ACHE03', 42, 5, 74),
('AEVE04', 18, 39, 32),
('ALIV05', 35, 22, 61),
('AMAN06', 35, 22, 61),
('AMAN07', 36, 21, 63),
('ASOU08', 22, 35, 39),
('ATOT09', 33, 24, 58),
('AWES10', 16, 41, 28),
('HARS01', 45, 12, 79),
('HBOU02', 31, 26, 54),
('HCHE03', 51, 6, 89),
('HEVE04', 43, 14, 75),
('HLIV05', 41, 16, 72),
('HMAN06', 34, 23, 60),
('HMAN07', 40, 17, 70),
('HSOU08', 24, 33, 42),
('HTOT09', 53, 4, 93),
('HWES10', 29, 28, 51);

-- --------------------------------------------------------

--
-- Table structure for table `points_away`
--

CREATE TABLE `points_away` (
  `Points_Away_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Points_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `points_away`
--

INSERT INTO `points_away` (`Points_Away_id`, `Club_id`, `Points_id`) VALUES
('PAARS01', 'ARS01', 'AARS01'),
('PABOU02', 'BOU02', 'ABOU02'),
('PACHE03', 'CHE03', 'ACHE03'),
('PAEVE04', 'EVE04', 'AEVE04'),
('PALIV05', 'LIV05', 'ALIV05'),
('PAMAN06', 'MAN06', 'AMAN06'),
('PAMAN07', 'MAN07', 'AMAN07'),
('PASOU08', 'SOU08', 'ASOU08'),
('PATOT09', 'TOT09', 'ATOT09'),
('PAWES10', 'WES10', 'AWES10');

-- --------------------------------------------------------

--
-- Table structure for table `points_home`
--

CREATE TABLE `points_home` (
  `Points_Home_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Points_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `points_home`
--

INSERT INTO `points_home` (`Points_Home_id`, `Club_id`, `Points_id`) VALUES
('PHARS01', 'ARS01', 'HARS01'),
('PHBOU02', 'BOU02', 'HBOU02'),
('PHCHE04', 'CHE03', 'HCHE03'),
('PHEVE04', 'EVE04', 'HEVE04'),
('PHLIV05', 'LIV05', 'HLIV05'),
('PHMAN06', 'MAN06', 'HMAN06'),
('PHMAN07', 'MAN07', 'HMAN07'),
('PHSOU08', 'SOU08', 'HSOU08'),
('PHTOT09', 'TOT09', 'HTOT09'),
('PHWES10', 'WES10', 'HWES10');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Player_id` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Player_id`, `Position`) VALUES
('ASARS07', 'CF'),
('ASARS07', 'SS'),
('ASARS07', 'CAM'),
('DCCHE04', 'RW'),
('DCCHE04', 'CAM'),
('DCCHE04', 'CF'),
('HKTOT10', 'LW'),
('HKTOT10', 'AMF'),
('JKBOU06', 'CD'),
('JKBOU06', 'LB'),
('MAWES07', 'CD'),
('MAWES07', 'RB'),
('NRSOU05', 'LD'),
('RLEVE03', 'RW'),
('SAMAN08', 'CF'),
('SMLIV25', 'LW'),
('ZIMAN16', 'CM'),
('ZIMAN16', 'CF');

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `Revenues_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Total_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revenues`
--

INSERT INTO `revenues` (`Revenues_id`, `Club_id`, `Total_id`) VALUES
('RARS01', 'ARS01', 'TRARS01'),
('RBOU02', 'BOU02', 'TRBOU02'),
('RCHE03', 'CHE03', 'TRCHE03'),
('REVE04', 'EVE04', 'TREVE04'),
('RLIV05', 'LIV05', 'TRLIV05'),
('RMAN06', 'MAN06', 'TRMAN06'),
('RMAN07', 'MAN07', 'TRMAN07'),
('RSOU08', 'SOU08', 'TRSOU08'),
('RTOT09', 'TOT09', 'TRTOT09'),
('RWES10', 'WES10', 'TRWES10');

-- --------------------------------------------------------

--
-- Table structure for table `set_pieces_team`
--

CREATE TABLE `set_pieces_team` (
  `Set_Pieces_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Free_kicks` int(11) DEFAULT NULL,
  `Percentage` int(11) DEFAULT NULL,
  `Penalties` int(11) DEFAULT NULL,
  `Corners` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `set_pieces_team`
--

INSERT INTO `set_pieces_team` (`Set_Pieces_id`, `Club_id`, `Free_kicks`, `Percentage`, `Penalties`, `Corners`) VALUES
('SPARS01', 'ARS01', 26, 66, 10, 26),
('SPBOU02', 'BOU02', 26, 60, 15, 40),
('SPCHE03', 'CHE03', 56, 59, 20, 85),
('SPEVE04', 'EVE04', 52, 68, 15, 59),
('SPLIV05', 'LIV05', 65, 45, 7, 41),
('SPMAN06', 'MAN06', 60, 69, 9, 56),
('SPMAN07', 'MAN07', 28, 57, 9, 40),
('SPSOU08', 'SOU08', 26, 57, 6, 26),
('SPTOT09', 'TOT09', 96, 57, 6, 12),
('SPWES10', 'WES10', 59, 65, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `shots_accuracy`
--

CREATE TABLE `shots_accuracy` (
  `Accuracy_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Total_shots` int(11) NOT NULL,
  `Shots_on_Target` int(11) NOT NULL,
  `Shot_accuracy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shots_accuracy`
--

INSERT INTO `shots_accuracy` (`Accuracy_id`, `Total_shots`, `Shots_on_Target`, `Shot_accuracy`) VALUES
('ACARS01', 156, 100, 65),
('ACBOU02', 566, 500, 89),
('ACCHE03', 456, 356, 67),
('ACEVE04', 895, 560, 41),
('ACLIV05', 456, 420, 86),
('ACMAN06', 513, 365, 51),
('ACMAN07', 456, 326, 68),
('ACSOU08', 653, 458, 68),
('ACTOT09', 635, 563, 69),
('ACWES10', 489, 365, 76);

-- --------------------------------------------------------

--
-- Table structure for table `shots_team`
--

CREATE TABLE `shots_team` (
  `Shots_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Accuracy_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shots_team`
--

INSERT INTO `shots_team` (`Shots_id`, `Club_id`, `Accuracy_id`) VALUES
('LEVE04', 'EVE04', 'ACEVE04'),
('SARS01', 'ARS01', 'ACARS01'),
('SBOU02', 'BOU02', 'ACBOU02'),
('SCHE03', 'CHE03', 'ACCHE03'),
('SLIV05', 'LIV05', 'ACLIV05'),
('SMAN06', 'MAN06', 'ACMAN06'),
('SMAN07', 'MAN07', 'ACMAN07'),
('SSOU08', 'SOU08', 'ACSOU08'),
('STOT09', 'TOT09', 'ACTOT09'),
('SWES10', 'WES10', 'ACWES10');

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `Standings_id` varchar(20) NOT NULL,
  `Club_id` varchar(45) NOT NULL,
  `Standings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `standings`
--

INSERT INTO `standings` (`Standings_id`, `Club_id`, `Standings`) VALUES
('SARS01', 'ARS01', 5),
('SBOU02', 'BOU02', 9),
('SCHE03', 'CHE03', 1),
('SEVE04', 'EVE04', 7),
('SLIV05', 'LIV05', 4),
('SMAN06', 'MAN06', 3),
('SMAN07', 'MAN07', 6),
('SSOU08', 'SOU08', 9),
('STOT09', 'TOT09', 2),
('SWES10', 'WES10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `standingspoints`
--

CREATE TABLE `standingspoints` (
  `Standings` int(11) NOT NULL,
  `Points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standingspoints`
--

INSERT INTO `standingspoints` (`Standings`, `Points`) VALUES
(1, 93),
(2, 86),
(3, 78),
(4, 76),
(5, 75),
(6, 69),
(7, 61),
(8, 47),
(9, 46),
(10, 45);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Club_id` varchar(50) NOT NULL,
  `Club_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Club_id`, `Club_name`) VALUES
('ARS01', 'Arsenal'),
('BOU02', 'Bournemouth'),
('CHE03', 'Chelsea'),
('EVE04', 'Everton'),
('LIV05', 'Liverpool'),
('MAN06', 'Manchester City'),
('MAN07', 'Manchester United'),
('SOU08', 'Southampton'),
('TOT09', 'Tottenham Hotspur'),
('WES10', 'West Brom');

-- --------------------------------------------------------

--
-- Table structure for table `team_info`
--

CREATE TABLE `team_info` (
  `Club_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Stadium` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Manager` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_info`
--

INSERT INTO `team_info` (`Club_name`, `Stadium`, `Manager`) VALUES
('Arsenal', 'Emirates Stadium', 'Arsene Wenger'),
('Bournemouth', 'Dean Court', 'Eddie Howe'),
('Chelsea', 'Stamford Bridge', 'Antonio Conte'),
('Everton', 'Goodison Park', 'Ronald Koeman'),
('Liverpool', 'Anfield', 'Jürgen Klopp'),
('Manchester City', 'Etihad Stadium', 'Pep Guardiola'),
('Manchester United', 'Old Trafford', 'José Mourinho'),
('Southampton', 'St Mary\'s Stadium', 'Claude Puel'),
('Tottenham Hotspur', 'White Hart Lane', 'Mauricio Pochettino'),
('West Brom', 'The Hawthorns', 'Tony Pulis');

-- --------------------------------------------------------

--
-- Table structure for table `total_revenues`
--

CREATE TABLE `total_revenues` (
  `Total_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Match_day` int(11) NOT NULL,
  `Broadcast` int(11) NOT NULL,
  `Commercial` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_revenues`
--

INSERT INTO `total_revenues` (`Total_id`, `Match_day`, `Broadcast`, `Commercial`, `Total`) VALUES
('TRARS01', 1100000, 8100000, 11000000, 20200000),
('TRBOU02', 1020000, 8020000, 10200000, 19240000),
('TRCHE03', 1003000, 8003000, 10030000, 11833000),
('TREVE04', 1000400, 8000400, 10004000, 11088400),
('TRLIV05', 1000050, 8000050, 10000500, 1000010),
('TRMAN06', 1000010, 8000010, 10000100, 11000110),
('TRMAN07', 1000200, 8000200, 10002000, 10000500),
('TRSOU08', 1000300, 8000200, 10000600, 11000800),
('TRTOT09', 1008000, 8005000, 10005000, 11000110),
('TRWES10', 1000000, 8000000, 10000000, 11000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attacking_output`
--
ALTER TABLE `attacking_output`
  ADD PRIMARY KEY (`Attack_id`);

--
-- Indexes for table `attacking_output_player`
--
ALTER TABLE `attacking_output_player`
  ADD PRIMARY KEY (`Attacking_Player_id`),
  ADD KEY `Player_id` (`Player_id`),
  ADD KEY `Attack_id` (`Attack_id`);

--
-- Indexes for table `fouls`
--
ALTER TABLE `fouls`
  ADD PRIMARY KEY (`Fouls_id`);

--
-- Indexes for table `fouls_player`
--
ALTER TABLE `fouls_player`
  ADD PRIMARY KEY (`Fouls_Player_id`),
  ADD KEY `Player_id` (`Player_id`),
  ADD KEY `Fouls_id` (`Fouls_id`);

--
-- Indexes for table `fouls_team`
--
ALTER TABLE `fouls_team`
  ADD PRIMARY KEY (`Fouls_Team_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Fouls_id` (`Fouls_id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`Goals_id`);

--
-- Indexes for table `goals_team`
--
ALTER TABLE `goals_team`
  ADD PRIMARY KEY (`Goals_Team_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Goals_id` (`Goals_id`);

--
-- Indexes for table `passing_player`
--
ALTER TABLE `passing_player`
  ADD PRIMARY KEY (`Passing_Player_id`),
  ADD KEY `Player_id` (`Player_id`);

--
-- Indexes for table `passing_team`
--
ALTER TABLE `passing_team`
  ADD PRIMARY KEY (`Passing_Team_id`),
  ADD KEY `Club_id` (`Club_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Player_id`),
  ADD KEY `player_info` (`Player_name`);

--
-- Indexes for table `player_info`
--
ALTER TABLE `player_info`
  ADD PRIMARY KEY (`Player_name`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `player_name` (`Player_name`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`Points_id`);

--
-- Indexes for table `points_away`
--
ALTER TABLE `points_away`
  ADD PRIMARY KEY (`Points_Away_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Points_id` (`Points_id`);

--
-- Indexes for table `points_home`
--
ALTER TABLE `points_home`
  ADD PRIMARY KEY (`Points_Home_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Points_id` (`Points_id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`Revenues_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Total_id` (`Total_id`);

--
-- Indexes for table `set_pieces_team`
--
ALTER TABLE `set_pieces_team`
  ADD PRIMARY KEY (`Set_Pieces_id`),
  ADD KEY `Club_id` (`Club_id`);

--
-- Indexes for table `shots_accuracy`
--
ALTER TABLE `shots_accuracy`
  ADD PRIMARY KEY (`Accuracy_id`);

--
-- Indexes for table `shots_team`
--
ALTER TABLE `shots_team`
  ADD PRIMARY KEY (`Shots_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Accuracy_id` (`Accuracy_id`);

--
-- Indexes for table `standings`
--
ALTER TABLE `standings`
  ADD PRIMARY KEY (`Standings_id`),
  ADD KEY `Club_id` (`Club_id`),
  ADD KEY `Points` (`Standings`);

--
-- Indexes for table `standingspoints`
--
ALTER TABLE `standingspoints`
  ADD PRIMARY KEY (`Standings`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`Club_id`),
  ADD KEY `Club_name` (`Club_name`);

--
-- Indexes for table `team_info`
--
ALTER TABLE `team_info`
  ADD PRIMARY KEY (`Club_name`),
  ADD KEY `Club_name` (`Club_name`);

--
-- Indexes for table `total_revenues`
--
ALTER TABLE `total_revenues`
  ADD PRIMARY KEY (`Total_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attacking_output_player`
--
ALTER TABLE `attacking_output_player`
  ADD CONSTRAINT `attack_players` FOREIGN KEY (`Player_id`) REFERENCES `player` (`Player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attackoutput_attack` FOREIGN KEY (`Attack_id`) REFERENCES `attacking_output` (`Attack_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fouls_player`
--
ALTER TABLE `fouls_player`
  ADD CONSTRAINT `foulsplayer_fouls` FOREIGN KEY (`Fouls_id`) REFERENCES `fouls` (`Fouls_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_foulplayers` FOREIGN KEY (`Player_id`) REFERENCES `player` (`Player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fouls_team`
--
ALTER TABLE `fouls_team`
  ADD CONSTRAINT `foulsteam_fouls` FOREIGN KEY (`Fouls_id`) REFERENCES `fouls` (`Fouls_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teams_foulTeams` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `goals_team`
--
ALTER TABLE `goals_team`
  ADD CONSTRAINT `goalsteam_goals` FOREIGN KEY (`Goals_id`) REFERENCES `goals` (`Goals_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_tgoals` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passing_player`
--
ALTER TABLE `passing_player`
  ADD CONSTRAINT `players_playerspassing` FOREIGN KEY (`Player_id`) REFERENCES `player` (`Player_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passing_team`
--
ALTER TABLE `passing_team`
  ADD CONSTRAINT `teams_teamspassing` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `Player_Playername` FOREIGN KEY (`Player_name`) REFERENCES `player_info` (`Player_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_info`
--
ALTER TABLE `player_info`
  ADD CONSTRAINT `Playername_team` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points_away`
--
ALTER TABLE `points_away`
  ADD CONSTRAINT `pointsaway_points` FOREIGN KEY (`Points_id`) REFERENCES `points` (`Points_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_points_away` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points_home`
--
ALTER TABLE `points_home`
  ADD CONSTRAINT `pointshome_points` FOREIGN KEY (`Points_id`) REFERENCES `points` (`Points_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_points_home` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `revenues`
--
ALTER TABLE `revenues`
  ADD CONSTRAINT `revenues_teams` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `revenues_total` FOREIGN KEY (`Total_id`) REFERENCES `total_revenues` (`Total_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `set_pieces_team`
--
ALTER TABLE `set_pieces_team`
  ADD CONSTRAINT `teams_setpieces` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shots_team`
--
ALTER TABLE `shots_team`
  ADD CONSTRAINT `team_accuracy` FOREIGN KEY (`Accuracy_id`) REFERENCES `shots_accuracy` (`Accuracy_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_shots` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `standings`
--
ALTER TABLE `standings`
  ADD CONSTRAINT `standings_points` FOREIGN KEY (`Standings`) REFERENCES `standingspoints` (`Standings`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `team_standings` FOREIGN KEY (`Club_id`) REFERENCES `team` (`Club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `Team_teamname` FOREIGN KEY (`Club_name`) REFERENCES `team_info` (`Club_name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
