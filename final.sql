-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 10:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catID` int(1) NOT NULL,
  `catName` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'English/Literature'),
(2, 'History'),
(3, 'Geography'),
(4, 'Science'),
(5, 'Maths');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeLevel` int(1) NOT NULL,
  `gradeName` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`gradeLevel`, `gradeName`) VALUES
(1, '1st Grade'),
(2, '2nd Grade'),
(3, '3rd Grade'),
(4, '4th Grade'),
(5, '5th Grade');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `gradeLevel` int(1) NOT NULL,
  `catID` int(1) NOT NULL,
  `quesID` int(2) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `userAnswer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`gradeLevel`, `catID`, `quesID`, `question`, `answer`, `userAnswer`) VALUES
(1, 1, 1, 'The plural of moose is?', 'moose', ''),
(1, 1, 2, 'How many letters are in the English alphabet?', '26', ''),
(1, 1, 3, 'In the story about the boy who cried wolf, what was the lesson?', 'Always tell the truth', NULL),
(1, 1, 4, 'What is the term for a word that is similar in meaning to another word?', 'synonym', NULL),
(1, 1, 5, 'What type of words should be capitalized?', 'proper nouns', NULL),
(1, 2, 26, 'The first Thanksgiving was celebrated by Native Americans and what other group of people?', 'Pilgrims', ''),
(1, 2, 27, 'From which country did Mexico gain its Independence in the 19th Century?', 'Spain', ''),
(1, 2, 28, 'Who invented the light bulb in 1879?', 'Thomas Edison', ''),
(1, 2, 29, 'Which language is most widely spoken in South America?', 'Spanish', ''),
(1, 2, 30, 'Neil Armstrong and Buzz Aldrin were the first two men in the entire world to do what?', 'Walk on the Moon', ''),
(1, 3, 51, 'How many continents are there?', '7', ''),
(1, 3, 52, 'What country is Paris the capital of?', 'France', ''),
(1, 3, 53, 'In which country are the famous Pyramids of Giza?', 'Egypt', ''),
(1, 3, 54, 'In what city is the White House located?', 'Washington D.C.', ''),
(1, 3, 55, 'How many states are in the United States of America?', '50', ''),
(1, 4, 76, 'What causes tides?', 'Moon', ''),
(1, 4, 77, 'The south pole of the magnet and the north pole of another magnet will do what?', 'Stick Together', ''),
(1, 4, 78, 'What is the force that causes objects to fall to the ground?', 'Gravity', ''),
(1, 4, 79, 'A caterpillar changes and grows into a what?', 'Butterfly', ''),
(1, 4, 80, 'What is the biggest organ in the human body?', 'Liver', ''),
(1, 5, 101, 'How many face cards are in a regular deck of playing cards?', '12', ''),
(1, 5, 102, 'The first day of the 20th century was?', '1 January 1901', ''),
(1, 5, 103, 'How many states made up the United States before Alaska and Hawaii joined?', '48', ''),
(1, 5, 104, 'The largest number that can be pronounced with a single syllable is?', '12', ''),
(1, 5, 105, 'You peer through a window into a classroom and count 20 eyes. If each person has a normal number of eyes, how many people are in the room?', '10', ''),
(2, 1, 6, 'What type of literature features magical creatures, such as giants, gnomes, and goblins?', 'Fairy Tales', NULL),
(2, 1, 7, 'Is \"red\" an adjective or a noun?', 'Both', NULL),
(2, 1, 8, 'What is the term for a word that has the opposite meaning of another word?', 'Antonym', NULL),
(2, 1, 9, 'What are the five interrogative or \"question\" words?', 'Who, What, When, where, Why', NULL),
(2, 1, 10, 'What are the comparative and superlative forms of the word BIG?', 'Bigger and Biggest', NULL),
(2, 2, 31, 'What are the three branches of the United States Government?', 'Legislative, Judicial, and Executive', ''),
(2, 2, 32, 'Which war was fought between the north and south regions in the United States?', 'Civil War', ''),
(2, 2, 33, 'Italy, Japan, and Germanys alliance was called what during WWII?', 'Axis of Evil', ''),
(2, 2, 34, 'What city was the first to be attacked by an atomic bomb', 'Hiroshima', ''),
(2, 2, 35, 'What are the first ten amendments to the Consititution called?', 'The Bill of Rights', ''),
(2, 3, 56, 'Which state is called the Lone Star State?', 'Texas', ''),
(2, 3, 57, 'In what state is the Grand Canyon located?', 'Arizona', ''),
(2, 3, 58, 'What three countries are located in North America?', 'Canada, United States, and Mexico', ''),
(2, 3, 59, 'To travel from New York to London, one must fly over which ocean?', 'Atlantic Ocean', ''),
(2, 3, 60, 'In what country is the famous Taj Mahal located?', 'India', ''),
(2, 4, 81, 'What is H2O also known as?', 'Water', ''),
(2, 4, 82, 'What gas is in the air we breathe?', 'Oxygen', ''),
(2, 4, 83, 'What gas do plants breathe in that humans and animals breathe out?', 'Carbon Dioxide', ''),
(2, 4, 84, 'Earth is located in what Galaxy?', 'Milky Way', ''),
(2, 4, 85, 'True or False? Bats are mammals.', 'True', ''),
(2, 5, 106, 'What is the area of a triangle with a height of 4 and a width of 4?', '8', ''),
(2, 5, 107, 'Solve the following equation: 3+2/1=', '5', ''),
(2, 5, 108, 'On a class field trip, there are 4 buses taking 36 students to the zoo. Each bus has the same number of students. How many students are on each bus?', '9', ''),
(2, 5, 109, '2 dozen kittens and 3 dozen puppies get adopted from the shelter. How many animals were adopted?', '60', ''),
(2, 5, 110, 'What number is the Roman numberal XVI?', '16', ''),
(3, 1, 11, 'The person in a novel who tells the story from a third person perspective is called a what?', 'narrator', NULL),
(3, 1, 12, 'What is the name of the book about a friendship between a pig named Wilbur and a spider named Charlotte?', 'Charlottes Web', NULL),
(3, 1, 13, 'Adding conjunctions such as \"and\" or \"but\" turns a simple sentence into what type of sentence?', 'Compound sentence', NULL),
(3, 1, 14, 'Who is the author of James and the Giant Peach?', 'Roald Dahl', NULL),
(3, 1, 15, 'The main series of events in a story is called a what?', 'a plot', NULL),
(3, 2, 36, 'What type of feather, beginning with the letter Q, did people write with during the Middle Ages?', 'Quill', ''),
(3, 2, 37, 'Juilius Caesar was the emporer of what Empire?', 'Roman Empire', ''),
(3, 2, 38, 'What is Rosa Parks most famous for?', 'Refusing to give her seat up in the front of the bus.', ''),
(3, 2, 39, 'The first fireworks were invented in the 7th Century in what Country', 'China', ''),
(3, 2, 40, 'Name the American President on the half dollar coin who was assassinated in 1963?', 'John F. Kennedy', ''),
(3, 3, 61, 'What is the longest river in the world?', 'Amazon', ''),
(3, 3, 62, 'On what continent is the country Greece located?', 'Europe', ''),
(3, 3, 63, 'What is the name for a body of land that is completely surrounded by water?', 'Island', ''),
(3, 3, 64, 'What is the capital of New York?', 'Albany', ''),
(3, 3, 65, 'How many Great Lakes are there in the United States?', '4: Michigan-Huron, Superior, Ontario, and Erie', ''),
(3, 4, 86, 'What phenomenon might be felt on the surfaces when two tectonic plates rub against each other?', 'Earthquake', ''),
(3, 4, 87, 'The hardest naturally occuring mineral is?', 'Diamond', ''),
(3, 4, 88, 'What is the closest planet to the Sun?', 'Mercury', ''),
(3, 4, 89, 'The process by which plants eaet and make energy is called?', 'Photosynthesis', ''),
(3, 4, 90, 'Does the sun orbit the Earth?', 'No', ''),
(3, 5, 111, 'When writing out fractions, the number above and below are vinculum are called?', 'Numerator and denominator', ''),
(3, 5, 112, 'To the nearest multiple of 10, how many kilograms of cheese are in 110 pounds of cheese?', '50', ''),
(3, 5, 113, 'If a shopping cart contains 1 apple, 2 bananas, 3 oranges, 4 hot dogs, what percent of the carts contents is fruit?', '60%', ''),
(3, 5, 114, 'If the first person takes 25% of the cake and second person takes 20% of the remainder, how much of the original cake remains?', '60%', ''),
(3, 5, 115, 'How many grams are in a thousand kilograms?', 'one million', ''),
(4, 1, 16, 'What is the main character in a story called?', 'protagonist', NULL),
(4, 1, 17, 'What type of word is truthfully?', 'adverb', NULL),
(4, 1, 18, 'In this book titled The Lion, the Witch, and the Wardrobe, what is the last comma called?', 'Oxford comma', NULL),
(4, 1, 19, 'A story conveying a moral lesson is called what?', 'fable', NULL),
(4, 1, 20, 'What do you call a group of crows?', 'a murder', NULL),
(4, 2, 41, 'What Ancient civilization built the Machu Picchu complex in Peru?', 'Incas', ''),
(4, 2, 42, 'The Ancient Egyptian writing system was called what?', 'Hieroglyphics', ''),
(4, 2, 43, 'From whom did the United States buy territory in the Louisiana-Purchase?', 'Napoleon/France', ''),
(4, 2, 44, 'Who wrote the national anthem of the United States of America?', 'Francis Scott Key', ''),
(4, 2, 45, 'The Battle of Gettysburg was fought in which war?', 'Civil War', ''),
(4, 3, 66, 'Where is the largest desert in the world located?', 'Northern Africa', ''),
(4, 3, 67, 'How many kingdoms are part of the United Kingdom?', '4: England, Northern Ireland, Scotland, and Wales', ''),
(4, 3, 68, 'Which coutry is the largest in size?', 'Russia', ''),
(4, 3, 69, 'The United States amd Mexico are separated by which river?', 'Rio Grande', ''),
(4, 3, 70, 'What is the southern most continent called?', 'Antarctica', ''),
(4, 4, 91, 'What is the part of the eye that controls how much light enters?', 'Pupil', ''),
(4, 4, 92, 'What planet is nicknamed the \"Red Planent\"?', 'Mars', ''),
(4, 4, 93, 'Animals that eat only meat are known as?', 'Carnivores', ''),
(4, 4, 94, 'How long does Earth take to revolve once around the sun?', '365 days', ''),
(4, 4, 95, 'What is the freezing point of water?', '32F or 0C', ''),
(4, 5, 116, 'If a train leaves the station and travels at 60 kilometers per hour, how much time will have passed when it arrives at a station 300 kilometers away?', '5 hours or 300 minutes', ''),
(4, 5, 117, 'The interior angles of a triangle always sum to?', '180 degrees', ''),
(4, 5, 118, 'A farmer notices that every day for the past 10 days, the number of piigeons in his field has doubled. There are 1024 pigeons in the field today, and there were 2 pigeons there the first day. How many pigeons were there yesterday?', '512', ''),
(4, 5, 119, 'You have 20 pairs of shoes, but there is only room in your closet for 8 shoes. How many shoes do you hae to get rid of?', '32 shoes or 16 pairs', ''),
(4, 5, 120, 'Solve the following equation: 5+3*4/2-1=', '10', ''),
(5, 1, 21, 'Who is the creator of the classic book characters Tom Sawyer and Huckleberry Finn?', 'Mark Twain', NULL),
(5, 1, 22, 'The words \"the\", \"an\", and \"a\" are known as what in the English grammar?', 'Articles', NULL),
(5, 1, 23, 'Who is the author of the 1960 novel about social and racial inequality To Kill a Mockingbird?', 'Harper Lee', NULL),
(5, 1, 24, 'Often seen at the end of a sentence, the three tailing dots that indicate the omission from speech or writing of a word or words that are superfluous or able to be understood from contextual clues are known as?', 'Ellipsis', NULL),
(5, 1, 25, 'What is the name of the most famous English playwright?', 'William Shakespeare', NULL),
(5, 2, 46, 'The what was the name of the last Queen of France?', 'Marie Antoinette', ''),
(5, 2, 47, 'The region known as the \"Fertile Crescent\" is located in present day?', 'Middle East', ''),
(5, 2, 48, 'The modern day city of Istanbul was known by what name in the 13th Century?', 'Constantinople', ''),
(5, 2, 49, 'The French and Indian war, which began in 1754, became the North American theater of this worldwide war that lasted from 1756 to 1763?', 'Seven Year War', ''),
(5, 2, 50, 'In which decade did Hong Kong revert from British rule?', '1990s(1997)', ''),
(5, 3, 71, 'What is the main language spoken in the Canadian province of Quebec?', 'French', ''),
(5, 3, 72, 'Which country is both an island and a continent?', 'Australia', ''),
(5, 3, 73, 'What is the name of the sea bordered by Europe to the north and North Africa to the south?', 'Mediterranean Sea', ''),
(5, 3, 74, 'The mountain range that includes Mount Everest is called?', 'Himalayas', ''),
(5, 3, 75, 'Imaginary lines traversing the globe from pole to pole are called?', 'Meridians', ''),
(5, 4, 96, 'The Earth is at least how many billion years old?', '4 billion', ''),
(5, 4, 97, 'What are the three states of matter?', 'Solid, liquid, gas', ''),
(5, 4, 98, 'The Earth has 4 layers, the thickest of which is the mantle. What is the thinnest layer called?', 'Crust', ''),
(5, 4, 99, 'Animals without backbones are called?', 'Invertebrates', ''),
(5, 4, 100, 'What species can live on both water and land?', 'Amphibians', ''),
(5, 5, 121, 'A hexagon has how many sides?', '6', ''),
(5, 5, 122, 'A father has 7 daughters and 100 dollars. If he wants to give each daughter an equal amount of money, rounding to the nearest dollar, how mcuh dows each daughter get?', '14', ''),
(5, 5, 123, 'If a football field is 100 yards long, how many feet long is the football field?', '300', ''),
(5, 5, 124, 'You collected 48 pieces of Halloween candy. Your parnets say you can eat 2 pieces per day, plus an extra piece on Saturdays and Sundays. How many weeks will it take to finish all of your candy?', '3 weeks', ''),
(5, 5, 125, 'Solve the following equation: (2*4)/(5+3-1)^0=', '8', '');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `ID` int(1) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Score` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeLevel`),
  ADD UNIQUE KEY `gradeLevel` (`gradeLevel`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`gradeLevel`,`catID`,`quesID`),
  ADD KEY `catID` (`catID`) USING BTREE,
  ADD KEY `gradeLevel` (`gradeLevel`) USING BTREE;

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `cat link` FOREIGN KEY (`catID`) REFERENCES `categories` (`catID`),
  ADD CONSTRAINT `grade link` FOREIGN KEY (`gradeLevel`) REFERENCES `grade` (`gradeLevel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
