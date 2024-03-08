-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jbusch`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_actors`
--

CREATE TABLE `my_actors` (
  `id` int(11) NOT NULL,
  `actorname` varchar(150) NOT NULL,
  `actorimg` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `my_actors`
--

INSERT INTO `my_actors` (`id`, `actorname`, `actorimg`) VALUES
(200, 'Bryan Cranston', 'https://static.tvmaze.com/uploads/images/medium_portrait/195/488839.jpg'),
(201, 'Scott Grimes', 'https://static.tvmaze.com/uploads/images/medium_portrait/71/179111.jpg'),
(202, 'Aaron Paul', 'https://static.tvmaze.com/uploads/images/medium_portrait/264/660079.jpg'),
(203, 'Damian Lewis', 'https://static.tvmaze.com/uploads/images/medium_portrait/2/6258.jpg'),
(205, 'Ron Livingston', 'https://static.tvmaze.com/uploads/images/medium_portrait/0/945.jpg'),
(206, 'Dominic West', 'https://static.tvmaze.com/uploads/images/medium_portrait/103/258397.jpg'),
(208, 'Kit Harington', 'https://static.tvmaze.com/uploads/images/medium_portrait/1/3229.jpg'),
(211, 'Emilia Clarke', 'https://static.tvmaze.com/uploads/images/medium_portrait/54/136753.jpg'),
(212, 'Martin Freeman', 'https://static.tvmaze.com/uploads/images/medium_portrait/3/8740.jpg'),
(213, 'Peter Dinklage', 'https://static.tvmaze.com/uploads/images/medium_portrait/74/186607.jpg'),
(214, 'Matthew McConaughey', 'https://static.tvmaze.com/uploads/images/medium_portrait/3/8927.jpg'),
(216, 'Nathan Fillion', 'https://static.tvmaze.com/uploads/images/medium_portrait/248/620269.jpg'),
(217, 'Woody Harrelson', 'https://static.tvmaze.com/uploads/images/medium_portrait/1/4450.jpg'),
(218, 'Yui Ishikawa', 'https://static.tvmaze.com/uploads/images/medium_portrait/77/194957.jpg'),
(220, 'Lance Reddick', 'https://static.tvmaze.com/uploads/images/medium_portrait/147/369752.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `my_cast`
--

CREATE TABLE `my_cast` (
  `id` int(11) NOT NULL,
  `showid` int(11) NOT NULL,
  `actorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `my_cast`
--

INSERT INTO `my_cast` (`id`, `showid`, `actorid`) VALUES
(2, 1004, 203),
(3, 1001, 202),
(4, 1008, 216),
(5, 1000, 208),
(6, 1009, 214),
(7, 1006, 212),
(11, 1004, 205),
(12, 1001, 200),
(14, 1009, 217),
(16, 1000, 213),
(18, 1000, 211),
(19, 1004, 201),
(20, 1003, 206),
(22, 1003, 220);

-- --------------------------------------------------------

--
-- Table structure for table `my_shows`
--

CREATE TABLE `my_shows` (
  `id` int(11) NOT NULL,
  `showname` varchar(100) NOT NULL,
  `imgpath` varchar(200) NOT NULL,
  `descript` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `my_shows`
--

INSERT INTO `my_shows` (`id`, `showname`, `imgpath`, `descript`) VALUES
(1000, 'Game of Thrones', 'https://static.tvmaze.com/uploads/images/medium_portrait/190/476117.jpg', 'Based on the bestselling book series A Song of Ice and Fire by George R.R. Martin, this sprawling new HBO drama is set in a world where summers span decades and winters can last a lifetime. From the scheming south and the savage eastern lands, to the frozen north and ancient Wall that protects the realm from the mysterious darkness beyond, the powerful families of the Seven Kingdoms are locked in a battle for the Iron Throne. This is a story of duplicity and treachery, nobility and honor, conquest and triumph. In the Game of Thrones, you either win or you die.'),
(1001, 'Breaking Bad', 'https://static.tvmaze.com/uploads/images/medium_portrait/0/2400.jpg', 'Breaking Bad follows protagonist Walter White, a chemistry teacher who lives in New Mexico with his wife and teenage son who has cerebral palsy. White is diagnosed with Stage III cancer and given a prognosis of two years left to live. With a new sense of fearlessness based on his medical prognosis, and a desire to secure his family\'s financial security, White chooses to enter a dangerous world of drugs and crime and ascends to power in this world. The series explores how a fatal diagnosis such as White\'s releases a typical man from the daily concerns and constraints of normal society and follows his transformation from mild family man to a kingpin of the drug trade.'),
(1003, 'The Wire', 'https://static.tvmaze.com/uploads/images/medium_portrait/1/2527.jpg', 'The first season of The Wire (2002) concentrated on the often-futile efforts of police to infiltrate a West Baltimore drug ring headed by Avon Barksdale and his lieutenant, Stringer Bell. In Seasons Two and Three, as the Barksdale investigation escalated, new storylines involving pressures on the working class and the city\'s political leadership were introduced. Season Four focused on the stories of several young boys in the public school system, struggling with problems at home and the lure of the corner - set against the rise of a new drug empire in West Baltimore and a new Mayor in City Hall. The fifth and final season of The Wire centers on the media\'s role in addressing - or failing to address - the fundamental political, economic and social realities depicted over the course of the series, while also resolving storylines of the numerous characters woven throughout the narrative arc of the show.'),
(1004, 'Band of Brothers', 'https://static.tvmaze.com/uploads/images/medium_portrait/80/201679.jpg', 'Drawn from interviews with survivors of Easy Company, as well as their journals and letters, Band of Brothers chronicles the experiences of these men from paratrooper training in Georgia through the end of the war. As an elite rifle company parachuting into Normandy early on D-Day morning, participants in the Battle of the Bulge, and witness to the horrors of war, the men of Easy knew extraordinary bravery and extraordinary fear - and became the stuff of legend. Based on Stephen E. Ambrose\'s acclaimed book of the same name.'),
(1006, 'Sherlock', 'https://static.tvmaze.com/uploads/images/medium_portrait/171/428042.jpg', 'Sherlock Holmes and Dr. John Watson\'s adventures in 21st Century London. A thrilling, funny, fast-paced contemporary reimagining of the Arthur Conan Doyle classic.'),
(1007, 'Attack on Titan', 'https://static.tvmaze.com/uploads/images/medium_portrait/311/779751.jpg', 'Known in Japan as Shingeki no Kyojin, many years ago, the last remnants of humanity were forced to retreat behind the towering walls of a fortified city to escape the massive, man-eating Titans that roamed the land outside their fortress. Only the heroic members of the Scouting Legion dared to stray beyond the safety of the walls – but even those brave warriors seldom returned alive. Those within the city clung to the illusion of a peaceful existence until the day that dream was shattered, and their slim chance at survival was reduced to one horrifying choice: kill – or be devoured!'),
(1008, 'Firefly', 'https://static.tvmaze.com/uploads/images/medium_portrait/1/2600.jpg', 'Five hundred years in the future, a renegade crew aboard a small spacecraft tries to survive as they travel the unknown parts of the galaxy and evade warring factions as well as authority agents out to get them.'),
(1009, 'True Detective', 'https://static.tvmaze.com/uploads/images/medium_portrait/178/445621.jpg', 'Touch darkness and darkness touches you back. True Detective< centers on troubled cops and the investigations that drive them to the edge. Each season features a new cast and a new case.True Detective is an American anthology crime drama television series created and written by Nic Pizzolatto.');

-- --------------------------------------------------------

--
-- Table structure for table `my_users`
--

CREATE TABLE `my_users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_users`
--

INSERT INTO `my_users` (`id`, `email`, `role`) VALUES
(101, 'jay@myshow.io', 'admin'),
(102, 'el@email.org', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_actors`
--
ALTER TABLE `my_actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_cast`
--
ALTER TABLE `my_cast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `showid` (`showid`),
  ADD KEY `actorid` (`actorid`);

--
-- Indexes for table `my_shows`
--
ALTER TABLE `my_shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_users`
--
ALTER TABLE `my_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_actors`
--
ALTER TABLE `my_actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `my_cast`
--
ALTER TABLE `my_cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `my_shows`
--
ALTER TABLE `my_shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `my_users`
--
ALTER TABLE `my_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `my_cast`
--
ALTER TABLE `my_cast`
  ADD CONSTRAINT `my_cast_ibfk_1` FOREIGN KEY (`actorid`) REFERENCES `my_actors` (`id`),
  ADD CONSTRAINT `my_cast_ibfk_2` FOREIGN KEY (`showid`) REFERENCES `my_shows` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
