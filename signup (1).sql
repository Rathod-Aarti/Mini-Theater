-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 06:56 PM
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
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Thriller'),
(2, 'Drama'),
(3, 'Action'),
(4, 'Horror'),
(5, 'Comedy'),
(6, 'South Indian'),
(7, 'Romantic'),
(8, 'Favourites');

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `kids_id` int(11) NOT NULL,
  `kids_name` varchar(200) NOT NULL,
  `kids_desc` text NOT NULL,
  `kids_image` varchar(255) NOT NULL,
  `video_src` varchar(255) NOT NULL,
  `release_year` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `uploaded_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`kids_id`, `kids_name`, `kids_desc`, `kids_image`, `video_src`, `release_year`, `category_id`, `uploaded_date`) VALUES
(1, 'Tom & Jerry', 'Tom and Jerry is an American animated media franchise and series of comedy short films created in 1940 by William Hanna and Joseph Barbera.', 'uploads/kid/tomJerry.jpg', '/videos/TomandJerry.mp4', 1941, 5, '2022-03-28 00:00:00'),
(2, 'Spiderman', 'A young man with spider-like abilities fights crime as a superhero in New York City while trying to have a normal personal life.', 'uploads/kid/spiderman.jpg', '', 1890, 3, '2022-04-04 00:00:00'),
(3, 'Babies', 'She lives in a large pink mansion called the ', 'uploads/kid/barbie.jpg', '', 2001, 2, '2022-04-04 00:00:00'),
(4, 'Chhota Bheem', 'The series is set in a village in the kingdom of Dholakpur. The series revolves around Bheem, sometimes referred to as Chhota Bheem due to his young age, a boy who is strong and intelligent.', 'uploads/kid/chhotaBheem.jpg', 'videos/ChhotaBheem.mp4', 1700, 3, '2022-04-04 00:00:00'),
(5, 'Dora the Explorer', 'Dora the Explorer is an American media franchise centered on an eponymous animated interactive fourth wall children\'s television series', 'uploads/kid/dora.jpg', '', 1850, 3, '2022-04-04 00:00:00'),
(6, 'Galli Galli sim sim', 'Galli Galli Sim Sim was first broadcast in 2006, is produced in New Delhi, India, and includes live action, puppet, and animated segments, delivered in a half-hour magazine format.', 'uploads/kid/galliGallisimsim.jpg', '', 2006, 5, '2022-03-24 00:00:00'),
(7, 'Hagemaru', 'Hagemaru Hageda is a young kid, studying in fourth standard living with his parents in Japan. Only child of his parents, he and his parents are a big misers. They do anything for saving money and this is the basic plot of the show.', 'uploads/kid/hagemaru.jpg', '', 1985, 5, '2022-04-04 00:00:00'),
(9, 'Incrediable', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/incrediable.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(10, 'Jake Neverland Pirates', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/jakeNeverlandPirates.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(11, 'Kung Fu Panda', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/KungFuPanda.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(12, 'Motu Patlu', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/motuPatlu.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(13, 'Mr. Been', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/mrBeen.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(14, 'Oggy and the cockroaches', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/oggy.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(15, 'Pakdam Pakdai', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/pakdamPakdai.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(16, 'Pokemon', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/pokemon.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(17, 'Power rangers samurai', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/samurai.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(18, 'Shaun the sheep', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/shaunTheSheep.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(19, 'Teen titans go', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/teenTitansGo.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(20, 'Winnie The Pooh', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/winnieThePooh.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(21, 'Zig and sharko', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/zigAndSharko.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(22, 'Duck Tales', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/duckTales.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(23, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/luca.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(24, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/Ejen-Ali.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(25, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(26, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/bahubali.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(27, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/disenchanted.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(28, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/deverLord.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(29, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/freeGuy.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(30, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/freeGuy21.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(31, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/Macross-DYRL.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(32, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/maxresdefault.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(33, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/mickey(2).jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(34, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/mira.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(35, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/moana.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(36, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/okComputer.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(37, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/pixer.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(38, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/summerTimeRendering.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(39, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/theForce.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(40, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/theLegend.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(41, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/theSimpsons.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(42, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/wish.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(43, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/spider.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(44, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/xMen.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(45, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/chachaChaudhary.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(46, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/incredibles2.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(47, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/insideOut2.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(48, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/newGroove.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(49, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/balGanesh.jpeg', '', 1500, 2, '2022-04-04 00:00:00'),
(50, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/fronzen2.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(51, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/ghatothkach.jpeg', '', 1500, 2, '2022-04-04 00:00:00'),
(52, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/aladin.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(53, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/beastMorphers.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(54, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/ben10.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(55, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/ben10AlianForce.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(56, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/ben10Little.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(57, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/ben10Omniverse.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(58, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/dinoCharge.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(59, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(60, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(61, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(62, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(63, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(64, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(65, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(66, 'Luca', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/goofTroop.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(67, 'Doraemon', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/doraemon.png', '/videos/doreamon.mp4', 1500, 2, '2022-04-04 00:00:00'),
(68, 'Tom and Jerry', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/tomJerry.jpg', '/videos/TomandJerry.mp4', 1500, 2, '2022-04-04 00:00:00'),
(69, 'Chhota Bheem', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/kid/ChhotaBheem.jpg', '/videos/ChhotaBheem.mp4', 1500, 2, '2022-04-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(200) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_image` varchar(255) NOT NULL,
  `release_year` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `uploaded_date` datetime NOT NULL DEFAULT current_timestamp(),
  `video_src` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `movie_name`, `movie_desc`, `movie_image`, `release_year`, `category_id`, `uploaded_date`, `video_src`) VALUES
(0, '3 idiots', '3 Idiots is a coming-of-age comedy-drama film that follows the story of three friends, Rancho, Bittu, and Farhan, who embark on a journey to find their missing friend Rancho, who disappeared after graduating from college. Along the way, they encounter a series of characters who help them understand the true meaning of friendship, love, and finding ones passion in life.**Cast:*** Aamir Khan as Rancho* Kareena Kapoor as Pia Sahastrabudhhe* Boman Irani as Viru Sahastrabudhhe* Sharman Joshi as_shapes (Ranchos friend)* R. Madhavan as Farhan Qureshi (Ranchos friend)**Director:**Rajkumar Hirani**Release Year:**2009**Language:**Hindi**Genre:*** Comedy* Drama* Coming-of-age**Notable Awards:*** 5th IIFA Awards: Best Movie, Best Director (Rajkumar Hirani), Best Actor (Aamir Khan), Best Screenplay (Rajkumar Hirani and Abhijat Joshi), and Best Cinematography (C.K. Muraleedharan)* 55th Filmfare Awards: Best Movie, Best Director (Rajkumar Hirani), Best Actor (Aamir Khan), Best Screenplay (Rajkumar Hirani and Abhijat Joshi), and Best Dialogue (Abhijat Joshi and Rajkumar Hirani)3 Idiots was a critical and commercial success, cementing its place as one of the most popular and successful Indian films of all time. The movies themes of friendship, love, and self-discovery resonated with audiences worldwide, making it a cultural phenomenon in India.', 'uploads/movie/3idiots.jpg', 2009, 5, '2024-09-24 22:23:41', '/videos/Pushpa The Rise.mp4'),
(1, 'Aaradhna', 'Aradhana is a 1969 Indian Hindi romantic drama film directed by Shakti Samanta, starring Sharmila Tagore and Rajesh Khanna.', 'uploads/movie/aaradhna.jpg', 1969, 2, '2022-03-28 00:00:00', '/videos/PushpaTheRise.mp4'),
(2, 'Aarzoo', 'Aarzoo Movie is AarzooCast by Madhuri Dixit, Akshay Kumar, Saif Ali Khan, Amrish Puri, RsquareDirector: Lawrence DSouzaRelease Year: 1999Language: HindiGenre: Romantic ThrillerPlot: Aarzoo is a Bollywood thriller film that revolves around the life of a young Nejma (Madhuri Dixit) who falls in love with a school teacher, Vijay (Akshay Kumar). However, their love is short-lived as Vijay is killed on his wedding day. The mystery surrounding his death unfolds as the story progresses, and Nejma teams up with a friend, Amar (Saif Ali Khan), to unravel the truth.Notable Awards: NoneAarzoo was released in 1999 and was directed by Lawrence DSouza. It starred Madhuri Dixit, Akshay Kumar, and Saif Ali Khan in the lead roles. The movie is a romantic thriller that explores themes of love, betrayal, and revenge.', 'uploads/movie/aarzoo.jpg', 1992, 2, '2022-04-04 00:00:00', '/videos/big_buck_bunny.mp4'),
(3, 'Ab kya hoga', 'Ram Sinha comes from a wealthy family. His mother would like him to get married so that their family can have an heir.', 'uploads/movie/abkyahoga.jpg', 1977, 1, '2022-04-04 00:00:00', ''),
(4, 'Alibaba aur 40 chor', 'A simple village man is thrown into a web of political intrigue after he takes on a powerful and ruthless gang of bandits. Starring:Dharmendra, Hema Malini, ...', 'uploads/movie/alibabaaur40chor.jpg', 1954, 1, '2022-04-04 00:00:00', ''),
(5, 'Bhola', 'Bholaa is a 2023 Hindi action thriller film about a man named Bholaa who is released from prison after serving a 10-year sentence.', 'uploads/movie/bhola.jpg', 2021, 8, '2022-04-04 00:00:00', '/videos/Bholaa - Official Trailer _ Ajay Devgn _ Tabu _ Bholaa In IMAX 3D.mp4'),
(6, 'Black Adam', 'Black Adam is a superhero film based on the DC Comics character of the same name. The movie takes place in the 48-hour period following the events of Shazam! and follows the story of Teth-Adam, an ancient Egyptian who is freed from his tomb and becomes the powerful being known as Black Adam. With his newfound powers, Black Adam seeks to reclaim his lost kingdom and restore the ancient ways of his people, but he must first confront the modern world and its changes.Cast: Dwayne The Rock Johnson as Teth-Adam / Black Adam, Aldis Hodge as Carter Hall / Hawkman, Noah Centineo as Albert Rothstein / Atom Smasher, Sarah Shahi as Adrianna Tomaz / Isis, Marwan Kenzari as Soska Salem, Quintessa Swindell as Cleopatra Patra, Bodhi Sabung as AnzargDirector: Jaume Collet-SerraRelease Year: 2022Language: EnglishGenre: Action, Adventure, Fantasy, Sci-FiNotable Awards: Black Adam received a mixed response from critics, but it was a commercial success, grossing over $400 million worldwide. It did not receive any major awards or nominations. However, the films visual effects and action sequences were widely praised.Its worth noting that Black Adam is part of the DC Extended Universe (DCEU) and is a spin-off of the Shazam! franchise. The movie received a PG-13 rating and is suitable for viewers of all ages who enjoy action-packed superhero films.', 'uploads/movie/blackAdam.jpg', 2022, 8, '2022-03-24 00:00:00', '/videos/Black Adam – Official Trailer 1.mp4'),
(7, 'Andaaz Apna Apna', 'Aandaz Apna Apna is a 1994 Indian Hindi-language comedy film directed by Rajkumar Santoshi. The movie follows the lives of two friends, Prem (Aamir Khan) and Rajesh (Salman Khan), who try to win the hearts of two wealthy sisters, R engagement (Karisma Kapoor) and Shobha (Raveena Tandon) respectively. The film is known for its wacky humor, over-the-top characters, and memorable dialogues.Cast:* Aamir Khan as Prem* Salman Khan as Rajesh* Karisma Kapoor as Rheel Kumar* Raveena Tandon as Shobha* Shakti Kapoor as Prems uncle* Paresh Rawal as Dr. SrikantDirector:Rajkumar SantoshiRelease Year:1994Language:HindiGenre:ComedyNotable Awards:* Won the Filmfare Award for Best Comedian (Paresh Rawal)* Won the IIFA Award for Best Comedian (Paresh Rawal)Aandaz Apna Apna was a moderate commercial success upon its release but has since become a cult classic in Indian cinema, known for its ridiculous humor, memorable characters, and quotable dialogues. The film has been re-released several times and remains a beloved favorite among Indian audiences.', 'uploads/movie/andaazApnaApna.jpg', 1994, 8, '2022-04-04 00:00:00', '/videos/Andaz Apna Apna - Trailer.mp4'),
(8, '3 Idiots', '3 Idiots is a coming-of-age comedy-drama film that follows the story of three friends, Rancho, Bittu, and Farhan, who embark on a journey to find their missing friend Rancho, who disappeared after graduating from college. Along the way, they encounter a series of characters who help them understand the true meaning of friendship, love, and finding ones passion in life.Cast:* Aamir Khan as Rancho* Kareena Kapoor as Pia Sahastrabudhhe* Boman Irani as Viru Sahastrabudhhe* Sharman Joshi as_shapes (Ranchos friend)* R. Madhavan as Farhan Qureshi (Ranchos friend)Director:Rajkumar HiraniRelease Year:2009Language:HindiGenre:* Comedy* Drama* Coming-of-ageNotable Awards:* 5th IIFA Awards: Best Movie, Best Director (Rajkumar Hirani), Best Actor (Aamir Khan), Best Screenplay (Rajkumar Hirani and Abhijat Joshi), and Best Cinematography (C.K. Muraleedharan)* 55th Filmfare Awards: Best Movie, Best Director (Rajkumar Hirani), Best Actor (Aamir Khan), Best Screenplay (Rajkumar Hirani and Abhijat Joshi), and Best Dialogue (Abhijat Joshi and Rajkumar Hirani)3 Idiots was a critical and commercial success, cementing its place as one of the most popular and successful Indian films of all time. The movies themes of friendship, love, and self-discovery resonated with audiences worldwide, making it a cultural phenomenon in India.', 'uploads/movie/3idiots.jpg', 2009, 3, '2024-09-24 22:26:24', ''),
(9, 'Bloody Daddy', 'Bloody Daddy chronicles the story of one night when NCB officer Sumair Azad (Shahid Kapoor) goes to meet drug lord Sikander Choudhary (Ronit Bose Roy) in his club to return a bag of cocaine in exchange for his kidnapped teenage son.', 'uploads/movie/bloodyDaddy.jpg', 2010, 4, '2024-09-24 22:31:57', ''),
(10, 'Brahmaastra', ' Brahmastra is a 2022 Indian superhero film written and directed by Ayan Mukerji.', 'uploads/movie/brahmaastra.jpg', 2022, 8, '2024-09-24 22:34:38', '/videos/BRAHMĀSTRA OFFICIAL TRAILER _ Hindi _ Amitabh _ Ranbir _ Alia _ Ayan _ In Cinemas 9th September.mp4'),
(11, 'Amityvile Horror', 'A english movie ,A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Amityvile.jpg', 2000, 4, '2024-09-24 22:34:38', ''),
(12, 'Andheri Raat', 'Andheri Raat is a  Bengali drama film directed by Tapan Sen. The movie explores the emotional struggles of a middle-class family in Kolkata, dealing with the consequences of an extramarital affair that puts their relationships to test.Cast:* Biswajit Chatterjee as Ajoy* Supriya Chaudhurani as Krishna* Ruma Guha Thakurta as Ajoys wife* Sabyasachi Chakraborty as Rohit* Manoj MitraDirector:Tapan SenRelease Year:1970Language:BengaliGenre:DramaNotable Awards:The film won the Best Bengali Film award at the 17th National Film Awards in 1970.Andheri Raat is considered a milestone in Bengali cinema, known for its thought-provoking storyline and powerful performances by its cast.', 'uploads/movie/AndheriRaat.jpg', 1970, 4, '2024-09-24 22:34:38', ''),
(13, 'Cabin fever', 'Cabin Fever is a  American horror comedy film directed by Eli Roth. The story takes place in a remote cabin in the woods, where a group of friends (including Justin Long, Jordana Brewster, and Christopher McDonald) embark on a vacation, only to contract a mysterious and deadly skin rash after accidentally scraping themselves on a submerged underground stream. As the illness spreads, the friends are forced to fight for survival and uncover the source of the infection.Cast:* Rider Strong as Bert* Rebekah Sander as Karen* Deryle Anguish as Dennis* Giuseppe Andrews as Marty* Jordan Ladd as Karens sister, Karen* James DeBello as Paul* Cerina Vincent as Karen* Joey Kern as Jeff* Eli Roth as Experimental SubjectDirector: Eli RothRelease Year: 2002Language: EnglishGenre: Horror, ComedyNotable Awards:* Won: Best Director (Eli Roth) at the Scream Awards 2003* Won: Best Practical Effects at the Scream Awards 2003Cabin Fever was a success upon its release and developed a cult following. Eli Roths debut feature film showcased his ability to blend horror and comedy elements, and it has since become a cult classic.', 'uploads/movie/CabinFever.jpg', 2002, 4, '2024-09-24 22:34:38', ''),
(14, 'Dark', 'Dark is a German sci-fi thriller television series created by Baran bo Odar and Jantje Friese. The series takes place in the fictional German town of Winden, where a group of families are connected by a tragic event that sets off a chain reaction of mysterious events, disappearances, and murders. The show explores themes of family secrets, timelines, and the consequences of playing with the fabric of time.Cast:* Oliver Masucci as Markus, a father searching for his missing son* J\\u00f6rdis Triebel as Hannah, a psychologist investigating the case of missing children* Louis Hofmann as Jonas, a teenager who becomes entangled in the mystery* Luna Schaller as Martha, Jonas sister* Thomas Schubert as Michael, a local police officer* Susanne Wuest as Regina, Jonas motherDirector:Baran bo Odar and Jantje Friese (co-directors)Release Year:2017 (Season 1), 2019 (Season 2), 2020 (Season 3)Language:GermanGenre:Sci-Fi, Thriller, MysteryNotable Awards:* Won the 2018 German Television Awards for Best Series and Best Director* Nominated for the 2019 International Emmy Award for Best Drama Series* Won the 2020 German Television Awards for Best Series and Best Director (again)IMDB Rating:8.4/10Dark is a critically acclaimed series that has gained a global following for its complex and thought-provoking storytelling, atmospheric setting, and intricate plot. If you enjoy sci-fi and mystery genres, Dark is definitely worth checking out!\",\n    \"DarkestNight\": \"I believe you are referring to the HBO series Chernobyl (not Darkest Night), which is a historical drama miniseries directed by Craig Mazin. Here is a brief summary and the details you requested:Summary:Chernobyl is a historical drama miniseries that tells the story of the 1986 nuclear disaster at the Chernobyl Nuclear Power Plant in Ukraine. The series follows a group of scientists, politicians, and first responders as they try to contain the disaster and its consequences. The story is based on real events and features a blend of drama, action, and suspense.Cast:* Jared Harris as Valery Legasov, a Soviet scientist who helps investigate the disaster* Stellan Skarsg\\u00e5rd as Boris Shcherbina, a Soviet politician who becomes involved in the crisis* Emily Watson as Ulana Khomyuk, a scientist from Ukraine who works with Legasov* Jessie Buckley as Tara OHara, a nurse who helps treat the victims of the disaster* Paul Ritter as Anatoly Dyatlov, the chief engineer of Reactor 4 at the Chernobyl plantDirector:Craig MazinRelease Year:2019Language:English (with Russian dialogue)Genre:Historical drama, MiniseriesNotable Awards:* Emmy Award for Outstanding Limited Series (2019)* Emmy Award for Outstanding Writing for a Limited Series or Movie (Craig Mazin, 2019)* Golden Globe Award for Best Television Limited Series or Motion Picture Made for Television (2019)* Peabody Award for Entertainment and Culture (2019)* Critics Choice Television Award for Best Limited Series (2019)Note: Since Darkest Night is not a well-known or popular title, I assume its a mistake and you meant to ask about Chernobyl. If you meant a different title, please let me know and Ill try to provide the correct information.', 'uploads/movie/Dark.jpg', 2021, 4, '2024-09-24 22:34:38', ''),
(15, 'Darkest night', 'Chernobyl is a historical drama miniseries that tells the story of the 1986 nuclear disaster at the Chernobyl Nuclear Power Plant in Ukraine. The series follows a group of scientists, politicians, and first responders as they try to contain the disaster and its consequences. The story is based on real events and features a blend of drama, action, and suspense.Cast:* Jared Harris as Valery Legasov, a Soviet scientist who helps investigate the disaster* Stellan Skarsg\\u00e5rd as Boris Shcherbina, a Soviet politician who becomes involved in the crisis* Emily Watson as Ulana Khomyuk, a scientist from Ukraine who works with Legasov* Jessie Buckley as Tara OHara, a nurse who helps treat the victims of the disaster* Paul Ritter as Anatoly Dyatlov, the chief engineer of Reactor 4 at the Chernobyl plantDirector:Craig MazinRelease Year:2019Language:English (with Russian dialogue)Genre:Historical drama, MiniseriesNotable Awards:* Emmy Award for Outstanding Limited Series (2019)* Emmy Award for Outstanding Writing for a Limited Series or Movie (Craig Mazin, 2019)* Golden Globe Award for Best Television Limited Series or Motion Picture Made for Television (2019)* Peabody Award for Entertainment and Culture (2019)* Critics Choice Television Award for Best Limited Series (2019)Note: Since Darkest Night is not a well-known or popular title, I assume its a mistake and you meant to ask about Chernobyl. If you meant a different title, please let me know and Ill try to provide the correct information.', 'uploads/movie/DarkestNight.jpg', 2011, 4, '2024-09-24 22:34:38', ''),
(16, 'Exists', 'Exists is a  American found-footage horror film written and directed by Eduardo S\\u00e1nchez. The movie follows a group of friends who go on a camping trip in a remote Texas forest, where they encounter Bigfoot.Cast:* Chris Osborn as Brian* Dora Madison Burge as Tia* Samuel Davis as Matt* Denise Williamson as Susan* Roger Edwards as Andy* Ethan Patrick as Cody* Brian Lally as RonDirector: Eduardo S\\u00e1nchezRelease Year: 2014Language: EnglishGenre: Horror, ThrillerNotable Awards: NoneAdditional Facts:* The movie was released on VOD and limited theaters in August 2014.* Exists is the fifth film in the Evolving Perspective film series, which also includes Altered (2006), Bell Giant (2010), Lovely Molly (2011), and Panic Button (2011).* The film received mixed reviews from critics, with some praising the tense atmosphere and creature design, while others found it too predictable and lacking in originality.Overall, Exists is a found-footage horror film that explores the theme of a group of friends encountering Bigfoot in the woods. While it may not have received widespread critical acclaim, the film has its fans and is a decent addition to the Bigfoot horror subgenre.', 'uploads/movie/Exists.jpg', 2014, 4, '2024-09-24 22:34:38', ''),
(17, 'Home Sourcing', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Filmsourcing.jpg', 2000, 4, '2024-09-24 22:34:38', ''),
(18, 'Friday The 13th', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/FridayThe13th.jpg', 1980, 4, '2024-09-24 22:34:38', ''),
(19, 'Halloween', 'The film tells the story of Michael Myers, a young boy who brutally murders his sister on Halloween night in 1963. Fifteen years later, Michael escapes from a mental institution and returns to his hometown of Haddonfield, Illinois, where he begins to stalk and murder a group of teenagers, including Laurie Strode (Jamie Lee Curtis). Dr. Loomis (Donald Pleasence), Michaels psychiatrist, tries to stop him, but Michaels relentless pursuit of his victims leads to a terrifying night of horror.Cast:* Jamie Lee Curtis as Laurie Strode* Donald Pleasence as Dr. Sam Loomis* Nick Castle as Michael Myers* Tony Moran as Jimmy Lloyd* Charles Cyphers as Sheriff Leigh Brackett* Kyle Richards as Lindsey WallaceDirector: John CarpenterRelease Year: 1978Language: EnglishGenre: Horror, ThrillerNotable Awards:* Winner of the Saturn Award for Best Horror Film (1979)* Nominated for the Academy Award for Best Original Score (John Carpenter, 1979)* Selected for preservation in the National Film Registry by the Library of Congress (2018)The films success spawned a franchise with numerous sequels, remakes, and reboots, cementing its place as a horror classic.', 'uploads/movie/Halloween.jpg', 2005, 4, '2024-09-24 22:34:38', ''),
(20, 'Haunted', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Haunted.jpg', 2006, 4, '2024-09-24 22:34:38', ''),
(21, 'Insidius 2', 'Continuing from the events of the first film, Insidious: Chapter 2 follows Josh and Renai Lamberts son Dalton, who is stuck in the Further, a realm of the dead. Josh, still trapped in the Further, is trying to find a way to rescue Dalton, while the family is stalked by a presence that is trying to enter their world.Cast:* Patrick Wilson as Josh Lambert* Rose Byrne as Renai Lambert* Ty Simpkins as Dalton Lambert* Leigh Whannell as Specs* Andrew Astor as Cal Lambert* Lin Shaye as Lorraine Lambert* Barbara Hershey as Elise RainierDirector: James WanRelease Year: 2013Language: EnglishGenre: HorrorNotable Awards:* Nominated for Best Visual Effects at the 85th Academy Awards* Nominated for Best Sound Editing at the 57th Golden Horse AwardsOther notes:* The movie was a commercial success, grossing over $160 million worldwide.* The film received generally positive reviews from critics, with a 61% approval rating on Rotten Tomatoes.* Insidious: Chapter 2 is the second installment in the Insidious franchise, followed by Insidious', 'uploads/movie/Insidius2.jpg', 2013, 4, '2024-09-24 22:34:38', ''),
(22, 'IT', 'IT is a horror film based on the novel of the same name by Stephen King. The story takes place in the 1950s in Derry, Maine, where a group of young outcasts, known as The Losers Club, band together to face their fears and battle the evil clown Pennywise, who takes the form of various monstrous entities to terrorize the town.Cast:* Bill Skarsg\\u00e5rd as Pennywise* Jaeden Lieberher as Bill Denbrough* Jeremy Ray Taylor as Ben Hanscom* Sophia Lillis as Beverly Marsh* Finn Wolfhard as Richie Tozier* Chosen Jacobs as Mike Hanlon* Wyatt Oleff as Stanley Uris* Jack Dylan Grazer as Eddie Kaspbrak* Nicholas Hamilton as Henry BowersDirector: Andy MuschiettiRelease Year: 2017Language: EnglishGenre: Horror, ThrillerNotable Awards:* Won: Best Horror Movie at the 2017 Teen Choice Awards* Won: Best Fright Scene (Pennywise and the Losers Club) at the 2018 Critics Choice Movie Awards* Nominated: Best Visual Effects at the 2018 Academy Awards* Nominated: Best Horror Movie at the 2018 Saturn AwardsThe film was a commercial success and received generally positive reviews from critics, with praise for its cast, direction, and atmospheric tension. A sequel, IT: Chapter Two, was released in 2019, concluding the story of The Losers Club as adults.', 'uploads/movie/IT.jpg', 1990, 4, '2024-09-24 22:34:38', ''),
(23, 'The Hunted Forest', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/TheHuntedForest.jpg', 2000, 4, '2024-09-24 22:34:38', ''),
(24, 'Veerana', 'The movie Veerana cast is  by Jaidev (Rajiv Goswami), a psychologist studying paranormal activity* Shobha (Gloria Nosari), a witness to the supernatural events* Dr. Seema (Sudesh Berry), a psychiatrist who helps Jaidev investigate the caseDirector:* Shyam RamsayRelease Year:* 1981Language:* HindiGenre:* HorrorNotable Awards:* Won the Best Horror Film award at the 1982 Bombay Film Critics Association AwardsPlot Summary:Veerana is a 1981 Hindi horror film directed by Shyam Ramsay. The story revolves around Jaidev, a psychologist who is investigating a series of murders in a small village. As he delves deeper into the case, he discovers that the murders are being committed by a malevolent spirit, known as Veerana, which is haunting the village. Jaidev, along with Shobha, a witness to the supernatural events, and Dr. Seema, a psychiatrist, team up to uncover the truth behind the murders and put an end to the terror of the Veerana.Veerana is considered one of the pioneering horror movies in Indian cinema, and its success helped establish the horror genre in the country. The films eerie atmosphere, unsettling sound design, and frightening special effects have made it a cult classic among horror fans.', 'uploads/movie/Veerana.jpg', 1981, 4, '2024-09-24 22:34:38', ''),
(25, 'Aranmanai 4', 'Aranmanai is a popular Indian Tamil horror-comedy film series, but it only has three installments:1. Aranmanai (2014)2. Aranmanai 2 (2016)3. Aranmanai 3 (2019)If you meant to ask about one of these movies, I can provide the summary you requested. Here are the details for Aranmanai 3:Aranmanai 3* Cast: Sundar C., Andrea Jeremiah, Vivek, Kovai Sarala, Manobala, Kovai Sarala, Raai Laxmi, and others.* Director: Sundar C.* Release Year: 2019* Language: Tamil* Genre: Horror-Comedy* Notable Awards: None notable awards, but it received positive reviews from critics and audiences alike.If you meant to ask about a different movie or series, please let me know and Ill be happy to help.', 'uploads/movie/Aranmanai4.jpg', 0, 1, '2024-09-24 22:34:38', ''),
(26, 'Bahubali 2', 'The Conclusion is a 2017 Indian Tamil-language fantasy adventure film directed by S. S. Rajamouli. The movie is the sequel to the highly successful Bahubali: The Beginning (2015) and concludes the story of Amarendra Bahubali and Shivudu, two characters who are part of a legendary kings family.Cast:* Prabhas as Amarendra Bahubali/Shivudu* Rana Daggubati as Bhallaladeva* Tamannaah as Avanthika* Anushka Shetty as Devasena* Satya Raj as Sivagami* Ramya Krishnan as Sanga* Nassar as KatappaDirector: S. S. RajamouliRelease Year: 2017Language: Tamil (along with dubbed versions in Telugu, Hindi, Kannada, and Malayalam)Genre: Fantasy, Adventure, ActionNotable Awards:* Won: National Film Award for Best Visual Effects* Won: Filmfare Award for Best Telugu Film* Won: IIFA Award for Best Telugu Movie* Won: Zee Cine Award for Best Music Director (M. M. Keeravani)Bahubali 2: The Conclusion was a massive commercial success, breaking numerous box office records in India and internationally. It became the highest-grossing Indian film of all time, surpassing the previous record held by Dangal (2016). The films success can be attributed to its grand visual effects, engaging storyline, and memorable characters.', 'uploads/movie/Bahubali2.jpg', 0, 6, '2024-09-24 22:34:38', ''),
(27, 'Beast', 'Beast is a 2022 American thriller film directed by Baltasar Korm\\u00e1kur. The story follows Dr. Kate Prichard (Iddo Goldberg), a botanist who takes her family on a safari vacation to South Africas Kruger National Park. Their tranquil getaway turns deadly when a massive, unidentified predator begins to attack and terrorize the group, forcing them to fight for survival.Cast:* Idris Elba as Dr. Nate Samuels* Lena Headey as Norah* Iyana Halley as Meredith* Sharlto Copley as Martin BattlesDirector: Baltasar Korm\\u00e1kurRelease Year: 2022Language: EnglishGenre: Thriller, Adventure, HorrorNotable Awards:* Nominated for Best Visual Effects at the 2023 Critics Choice Super AwardsOther Notes:* The film was released by Universal Pictures on August 19, 2022.I hope this summary provides the information you were looking for!', 'uploads/movie/Beast.jpg', 0, 1, '2024-09-24 22:34:38', ''),
(28, 'Culaebaghvali', 'Culaebilavu (also known as Culpeebahavali)Cast: Prabhu, Meghana Nair, Ramesh Khanna, Manorama, MuraliDirector: R. V. UdayakumarRelease Year: 1985Language: TamilGenre: Comedy, FamilyThe movie tells the story of a poor young man named Raman (played by Prabhu) who falls in love with a rich girl named Anitha (played by Meghana Nair). However, their social status difference and various misunderstandings lead to a series of comic events. The movie is a family-oriented comedy with music by Ilaiyaraaja.Notable Awards:* Culaebilavu won the Filmfare Award for Best Male Playback Singer (K. J. Yesudas) for the song Kurilda Kurilda.* The movie was a commercial success and received positive reviews from critics for its light-hearted humor and memorable songs.Overall, Culaebilavu is a lighthearted, family-friendly comedy that explores themes of love, social class, and relationships in a humorous way.', 'uploads/movie/Culaebaghavali.jpg', 0, 1, '2024-09-24 22:34:38', ''),
(29, 'Darbar', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Darbar.jpg', 0, 1, '2024-09-24 22:34:38', ''),
(30, 'Family Star', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/FamilyStar.jpg', 0, 1, '2024-09-24 22:34:38', ''),
(31, 'Hidimbha', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Hidimbha.jpg', 2023, 1, '2024-09-24 22:34:38', ''),
(32, 'International Khiladi', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/internationalKhiladi.jpg', 1999, 1, '2024-09-24 22:34:38', ''),
(33, 'Jaanbaazi', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Jaanbaazi.jpg', 1986, 1, '2024-09-24 22:34:38', ''),
(34, 'Kanguva', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Kanguva.jpg', 2000, 1, '2024-09-24 22:34:38', ''),
(35, 'Rowdy', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Rowdy.jpg', 2000, 1, '2024-09-24 22:34:38', ''),
(38, 'Shyam', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Shyam.jpg', 2004, 1, '2024-09-24 22:34:38', ''),
(39, 'Siyudu', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/Siyudu.jpg', 2012, 1, '2024-09-24 22:34:38', ''),
(40, 'Universal Hit', 'A young man on the brink of falling in love gets his world turned upside down when he discovers he has the power to control fire and a connection to a secret society of guardians.', 'uploads/movie/UniversalHit.jpg', 2000, 1, '2024-09-24 22:34:38', ''),
(41, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/JungleCruse.jpg', 2012, 8, '2024-10-10 01:15:05', '/videos/Disney\'s Jungle Cruise _ Official Trailer.mp4'),
(42, 'Action', 'Dwyne jonshon movie', './uploads/movie/action.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(43, 'Acton Jackson', 'Dwyne jonshon movie', './uploads/movie/actionJackson.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(44, 'Amaran', 'Dwyne jonshon movie', './uploads/movie/amaran.jpeg', 2012, 3, '2024-10-10 01:15:05', ''),
(45, 'Crakk', 'Dwyne jonshon movie', './uploads/movie/crakk.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(46, 'Darbar', 'Dwyne jonshon movie', './uploads/movie/darbar.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(47, 'Ghjini', 'Dwyne jonshon movie', './uploads/movie/ghajini.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(48, 'Ghayal', 'Dwyne jonshon movie', './uploads/movie/ghayal.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(49, 'Ghost', 'Dwyne jonshon movie', './uploads/movie/ghost.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(50, 'Bahubali', 'Dwyne jonshon movie', './uploads/movie/bahubali.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(51, 'Inspector Avinas', 'Dwyne jonshon movie', './uploads/movie/inspectorAvinash.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(52, 'Kahaani', 'Dwyne jonshon movie', './uploads/movie/kahaani.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(53, 'Kahaani 2', 'Dwyne jonshon movie', './uploads/movie/kahaani2.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(54, 'Kick', 'Dwyne jonshon movie', './uploads/movie/kick.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(55, 'Maaknaan', 'Dwyne jonshon movie', './uploads/movie/maaknaan.png', 2012, 3, '2024-10-10 01:15:05', ''),
(56, 'Mardaani', 'Dwyne jonshon movie', './uploads/movie/mardaani.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(57, 'Mary kom', 'Dwyne jonshon movie', './uploads/movie/maryKom.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(58, 'Pathan', 'Dwyne jonshon movie', './uploads/movie/pathan.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(59, 'Rocket raja', 'Dwyne jonshon movie', './uploads/movie/rocketraja.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(60, 'Salaar', 'Dwyne jonshon movie', './uploads/movie/salaar.png', 2012, 3, '2024-10-10 01:15:05', ''),
(61, 'Shanghai', 'Dwyne jonshon movie', './uploads/movie/shanghai.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(62, 'Singham', 'Dwyne jonshon movie', './uploads/movie/singham.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(63, 'Step 15', 'Dwyne jonshon movie', './uploads/movie/step15.jpeg', 2012, 3, '2024-10-10 01:15:05', ''),
(64, 'Tanaji', 'Dwyne jonshon movie', './uploads/movie/tanaji.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(65, 'URI', 'Dwyne jonshon movie', './uploads/movie/Uri.jpg', 2012, 3, '2024-10-10 01:15:05', ''),
(66, '102 Not Out', 'Dwyne jonshon movie', './uploads/movie/102NotOut.jpg', 2012, 5, '2024-10-10 01:15:05', '/videos/102NotOutOfficialTrailer.mp4'),
(67, 'Bitto boss', 'Dwyne jonshon movie', './uploads/movie/bittooBoss.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(68, 'Bumper Draw', 'Dwyne jonshon movie', './uploads/movie/bumperDraw.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(69, 'Darlings', 'Dwyne jonshon movie', './uploads/movie/darlings.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(70, 'Dhamaal', 'Dwyne jonshon movie', './uploads/movie/dhamaal.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(71, 'Fukrey', 'Dwyne jonshon movie', './uploads/movie/fukrey.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(72, 'Garam Masala', 'Dwyne jonshon movie', './uploads/movie/garamMasala.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(73, 'Good Luck Jerry', 'Dwyne jonshon movie', './uploads/movie/goodluckJerry.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(74, 'Guddu Ki gun', 'Dwyne jonshon movie', './uploads/movie/gudduKiGun.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(75, 'Padoson', 'Dwyne jonshon movie', './uploads/movie/padoson.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(76, 'Jailer', 'Dwyne jonshon movie', './uploads/movie/jailer.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(77, 'Kathal', 'Dwyne jonshon movie', './uploads/movie/kathal.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(78, 'Khichdi', 'Dwyne jonshon movie', './uploads/movie/khichdi.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(79, 'Poster Boys', 'Dwyne jonshon movie', './uploads/movie/posterBoys.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(80, 'Queen', 'Dwyne jonshon movie', './uploads/movie/queen.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(81, 'The Angrez', 'Dwyne jonshon movie', './uploads/movie/theAngrez.jpg', 2012, 5, '2024-10-10 01:15:05', ''),
(82, 'Agenda', 'Dwyne jonshon movie', './uploads/movie/47MetersDown.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(83, 'Alone', 'Dwyne jonshon movie', './uploads/movie/agenda.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(84, 'Ambulance', 'Dwyne jonshon movie', './uploads/movie/alone.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(85, 'Black Rock', 'Dwyne jonshon movie', './uploads/movie/ambulanc.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(86, 'Black swan', 'Dwyne jonshon movie', './uploads/movie/blackRock.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(87, 'Commuter', 'Dwyne jonshon movie', './uploads/movie/blackSwan.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(88, 'Down A Dark Hall', 'Dwyne jonshon movie', './uploads/movie/commuter.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(89, 'Entrapped', 'Dwyne jonshon movie', './uploads/movie/downADarkHall.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(90, 'Halloween', 'Dwyne jonshon movie', './uploads/movie/entrapped.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(91, 'Haunted', 'Dwyne jonshon movie', './uploads/movie/halloween.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(92, 'Haunted', 'Dwyne jonshon movie', './uploads/movie/haunted.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(93, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/MonkeyMan.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(94, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/nightcrawler.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(95, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/pointBlack.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(96, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/raw.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(97, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/redLights.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(98, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/rosewoodLane.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(99, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/shining.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(100, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/shutterIsland.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(101, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/sinCity.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(102, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/the-box.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(103, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/theBoy.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(104, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/theGirlOnTheTrain.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(105, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/theHole.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(106, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/theMansion.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(107, 'Pricnces', 'Dwyne jonshon movie', './uploads/movie/thePrestige.jpg', 2012, 1, '2024-10-10 01:15:05', ''),
(108, 'Black Rock', 'It is horror movie of ...', './uploads/movie/blackRock.jpg', 2012, 4, '2024-10-10 01:15:05', ''),
(109, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(110, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aeDilHaiMushkil.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(111, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/ae-kash.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(112, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/Dhadak.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(113, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/DDLJ.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(114, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/dumLagaKeHaisha.jpeg', 2012, 7, '2024-10-10 01:15:05', ''),
(115, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/ekVillan.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(116, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/halfGirlfriend.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(117, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/hamariAdhuriKahani.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(118, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/jaiMummyDi.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(119, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/janoonight.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(120, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/kabil.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(121, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/luvKiArrangeMarriage.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(122, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/okJaanu.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(123, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/ramleela.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(124, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/shaandaar.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(125, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/tereNaalLoveHoGaya.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(126, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(127, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(128, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(129, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(130, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(131, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(132, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 7, '2024-10-10 01:15:05', ''),
(133, 'Jungle cruse', 'Dwyne jonshon movie', './uploads/movie/aashiqui2.jpg', 2012, 8, '2024-10-10 01:15:05', '/videos/Disney\'s Jungle Cruise _ Official Trailer.mp4'),
(134, 'Sarfarosh', 'Aamir khan\'s movie', 'uploads/movie/actionJackson.jpg', 1999, 8, '2024-10-14 19:10:05', ''),
(135, 'jfall', 'Popular movie', 'uploads/movie/47MetersDown.jpg', 2000, 8, '2024-10-17 09:51:49', ''),
(137, 'Pushpa', 'Allu arjun movie', 'uploads/movie/pushpa2.jpg', 2011, 8, '2024-10-21 21:01:46', '/videos/PushpaTheRise.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tvshow`
--

CREATE TABLE `tvshow` (
  `tvshow_id` int(11) NOT NULL,
  `tvshow_name` varchar(200) NOT NULL,
  `tvshow_desc` text NOT NULL,
  `tvshow_image` varchar(255) NOT NULL,
  `video_src` varchar(255) NOT NULL,
  `release_year` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `uploaded_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tvshow`
--

INSERT INTO `tvshow` (`tvshow_id`, `tvshow_name`, `tvshow_desc`, `tvshow_image`, `video_src`, `release_year`, `category_id`, `uploaded_date`) VALUES
(1, 'Aadat se majboor', 'Aradhana is a 1969 Indian Hindi romantic drama film directed by Shakti Samanta, starring Sharmila Tagore and Rajesh Khanna.', 'uploads/show/aadatSeMajboor.jpg', '', 2000, 1, '2022-03-28 00:00:00'),
(2, 'TMKOC', 'Aarzoo (transl. Desire) is a 1999 Indian Hindi romantic action film directed by Lawrence D-Souza stars Akshay Kumar, Madhuri Dixit, Saif Ali Khan', 'uploads/show/tmkoc.jpg', '/videos/tmkoc.mp4', 890, 1, '2022-04-04 00:00:00'),
(3, 'Ye jaadu hai jin ka', 'Ram Sinha comes from a wealthy family. His mother would like him to get married so that their family can have an heir.', 'uploads/show/yeJaaduHaiJinKa.jpg', '', 600, 1, '2022-04-04 00:00:00'),
(4, 'Tenali Rama', 'A simple village man is thrown into a web of political intrigue after he takes on a powerful and ruthless gang of bandits. Starring:Dharmendra, Hema Malini, ...', 'uploads/show/TenaliRama.jpg', '', 700, 1, '2022-04-04 00:00:00'),
(5, 'Sajan re phir jhoot mat bolo', 'Bholaa is a 2023 Hindi action thriller film about a man named Bholaa who is released from prison after serving a 10-year sentence.', 'uploads/show/srjmb.jpg', '', 1850, 2, '2022-04-04 00:00:00'),
(6, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/sajanReJhootMatBolo.jpg', '', 2001, 2, '2022-03-24 00:00:00'),
(7, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/aashikana.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(8, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/akbarBirbal.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(9, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/aladin.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(10, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/BaadalPePav.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(11, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/Bhabiji.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(12, 'Sajan re  jhoot mat bolo', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/Bullets.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(13, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/fearFiles.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(14, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/fir.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(15, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/happuKiUltanPaltan.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(16, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/hasratein.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(17, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/indianIdol.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(18, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/JCPH.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(19, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/JCPKH.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(20, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/KaatelalAndSona.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(21, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/LL.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(22, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/myIComeInMadam.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(23, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/nagin.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(24, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/nagin2.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(25, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/nagin3.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(26, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/neeliChhatriWale.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(27, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/partners.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(29, 'Flear Files', 'Check Strappy Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/petersonHill.jpg', '', 1250, 2, '2022-03-24 00:00:00'),
(30, 'Radha Krishna', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/radhaKrishna.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(31, 'Radha Krishna', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/RKKS.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(32, 'Radha Krishna', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/saktimaan.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(33, 'Radha Krishna', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/sinhasanBattisi.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(34, 'Radha Krishna', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/yeRistaKyaKahalaataHai.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(35, 'Ra', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/radhaKrishna.jpg', '', 1500, 0, '2022-04-04 00:00:00'),
(36, 'Radha Krishna', 'Floral Dresses for Women Basic dresses with Button at Swiss Collecttion.', 'uploads/show/radhaKrishna.jpg', '', 1500, 2, '2022-04-04 00:00:00'),
(37, 'Radha Krishna', '0', 'uploads/show/radhaKrishna.jpg', '', 15001, 2, '2022-04-04 00:00:00'),
(38, 'Happu ki ultan paltan', 'This show is about family of happu', 'uploads/show/happuKiUltanPaltan.jpg', '', 2020, 5, '2022-04-04 00:00:00'),
(40, 'Sinhasan Battisi', 'Popular show of', 'uploads/show/radhaKrishna.jpg', '', 2022, 0, '2022-04-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isAdmin` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_date`, `isAdmin`) VALUES
(1, 'admin', '$2y$10$lbEYLMioX83vmfwHauDAzurLg7rv4EOKu6sLMqy3XGQMLiqcCZcDi', 'admin@gmail.com', '2025-03-04 17:54:58', 1),
(2, 'Aarti', '$2y$10$p6LA/sY64Aw6jjJ/5Ia9e.f5Qm4jUyMG8hvIQBTMU0XBF7w0IIuGW', 'aarti@gmail.com', '2025-03-04 17:55:03', 1),
(3, 'Helen', '$2y$10$Kd6skADN2Wcu4MaK24EyB.kalcXB7HsigwKpifYbePmDijBnmBMLG', 'Helenk@gmail.com', '2024-10-14 15:30:05', 0),
(4, 'Manav', '$2y$10$jkRkwy6VKaC7a2ZEXMHMzehvnJvuv9h0Hki8.HOuZIMhkLeJleaUi', 'manav@gmail.com', '2024-10-14 15:31:25', 0),
(5, 'ved', '$2y$10$dp1nt71.jkLXAnpIyNBCb.H6UKsP2U8szasKbjZQEKX3Nujsfgkuu', 'ved@gmail.com', '2024-10-14 15:31:56', 0),
(6, 'Krishnan', '$2y$10$QBb2S1x.Rli1bfvg1Nyi5OIBVMX6thAfu7gCNkUt8wiPgIn6Pr/Su', 'krishnan@gmail.com', '2024-10-14 15:32:24', 0),
(7, 'Karisma', '$2y$10$jq9gPdElTeVpNs69EBqBieID3gMeKDoF3wMBvwhGTdob8Y1bM.2v2', 'karisma@gmail.com', '2024-10-14 15:33:38', 0),
(8, 'milan', '$2y$10$fnwKiLDiEv5GPRGHak7sQuR2Rihie/gPNpyLxcr5OmCvetPbXdrVS', 'mi@gmail.com', '2024-10-14 15:36:23', 0),
(9, 'Vikas', '$2y$10$tLlxZPwXpS/DnI4y0Vo1U.I84J//57ApOvihJp1yAgxNZZbYUSYVy', 'Vika@gmail.com', '2024-10-14 15:37:03', 0),
(10, 'vinay', '$2y$10$q0LnrJPflR8kPR53K1R8me2d3eUhnX/db5dZYXO1JuWFDeX4UlEZy', 'vinay@gmail.com', '2024-10-14 15:37:59', 0),
(11, 'vijay', '$2y$10$cgHWqKyf7OoVe6cQPOE6.eymnkj9uoybFj9438agqyCBS0fKBRVMa', 'vijay@gmail.com', '2024-10-14 15:38:31', 0),
(12, 'karan', '$2y$10$hbYk/kWel.72NbtQFPBud.4noF/LWbW.ncoUzdT0EJbtIPWCbLdoy', 'karan@gmail.com', '2024-10-14 15:39:05', 0),
(13, 'ramesh', '$2y$10$SUcdCJ9S.7IsCJplMK3AHe34hTb7E5EP8eRfZlXh5v.6NyFSzjZ8i', 'ramesh@gmail.com', '2024-10-14 16:00:35', 0),
(14, 'Mahesh', '$2y$10$xwf/w.ixqCmFjfHlWP/lV.bWaxlTjmZGK.xZzxcAhcZtA.sRAnloe', 'mahesh@gmail.com', '2024-10-17 05:13:50', 0),
(15, 'Ajay', '$2y$10$spn7chlz5XH8cnJz4eljXuqxcWSn3pKo/hX0eFyOFrwmIOJUkXGK6', 'aj12@gmail.com', '2024-10-20 13:06:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`kids_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tvshow`
--
ALTER TABLE `tvshow`
  ADD PRIMARY KEY (`tvshow_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `kids_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tvshow`
--
ALTER TABLE `tvshow`
  MODIFY `tvshow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
