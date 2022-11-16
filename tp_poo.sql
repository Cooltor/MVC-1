-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2022 at 02:38 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp_poo`
--

-- --------------------------------------------------------

--
-- Table structure for table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int(5) NOT NULL,
  `titre_avis` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `date_avis` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `avis`
--

INSERT INTO `avis` (`id_avis`, `titre_avis`, `message`, `date_avis`, `note`) VALUES
(3, 'Très déçu par la formation!', 'Je suis très déçu par cette formation.\r\nRythme infernal ! Je suis bien conscient qu\'un BAC+2 en quelques mois ça allait être chaud. Le problème c\'est que même si on a des bases réseau / informatique tous les sujets sont survolés très rapidement... Trop rapidement !\r\nD\'accord il faut effectuer un travail personnel le soir après la formation, mais là avec la rapidité avec laquelle on passe sur les sujets, on n\'a pas le temps de bien tout comprendre et donc le travail personnel est compliqué.\r\nInitialement la formation devait être en présentiel. Génial, on aura la possibilité de demander directement et finalement, une semaine avant le début de la formation, surprise : distanciel. Cause : pas assez de candidats pour l’agence à laquelle je suis rattaché.\r\nOn a dû faire un discord en parallèle du chat de la Visio pour de l’entraide.\r\nDistanciel avec une classe en hybride : 10 élèves à Lille en classe et 14 en distanciel. Heureusement que les formateurs ne nous oublient pas ! De plus, pour une école d’informatique, le matériel Visio est quasi inexistant ou de mauvaise qualité. Pas de caméra dédiée pour suivre le formateur au tableau. Pas de micro digne de ce nom pour entendre le même formateur au tableau ou naviguant dans la classe… Je trouve ça un peu limite pour le prix de la formation.\r\nJ’ai beau m’accrocher et n’étant pas novice en informatique, plus les jours passent, plus l’idée de réussir l’examen s’éloigne.\r\nJe ne peux pas annuler le reste de la formation étant donné que je passe par un programme de transition professionnelle, sinon je serais retourné faire mon ancien Job !', '2022-11-16 12:02:27', 1),
(4, 'Très bons enseignements avec des…', 'Très bons enseignements avec des professeurs de qualité, très investis et bienveillant pour les élèves. Coté administratif, je regrette que les informations nous aient été données au compte goutte, très peu d\'accompagnement sur la recherche de stage et les prospectives professionnelles. Je suis actuellement dans une école concurrente qui met tout en œuvre pour l\'insertion en milieu pro.', '2022-11-16 12:02:27', 3),
(5, 'Niveau administratif et organisation…', 'Niveau administratif et organisation c\'est une catastrophe. Beaucoup d\'engagements non-honorés (mauvaises informations, rendez-vous non honorés, prof en distanciel 100% du temps, matériel non adapté, aucune aide à la recherche d\'entreprise etc. La liste est encore longue) Il y a clairement un manque de personnel important dans l\'équipe administrative.\r\nMalgré tout cela, les intervenants et les cours sont biens.', '2022-11-16 12:03:20', 3),
(6, 'Ne correspond pas aux promesses', 'Trop de professeurs différents avec pour la plupart très peu d\'expérience en tant que développeur et aucune expérience en tant que prof.\r\nLa formation est à 80% théorique et seulement 20% pratique ce qui est l\'inverse de ce qui était promis lors de la réunion d\'information.\r\nDes cours annulé au dernier moment.\r\nLe projet de fin de formation n\'a jamais été évalué.', '2022-11-16 12:03:20', 2),
(7, 'Les formateur son en or parcontre tous…', 'Les formateur son en or par contre tous se qui concerne le planning et les cours son franchement a revoir parce que ce qui nous a etais vendu etais clairement pas ce que la formation a étais. Le programme et a revoir car on vois beaucoup trop de language pour avoir le temps de concevoir une application ou de savoir sur quoi partir pour l\'examen.', '2022-11-16 12:04:05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

CREATE TABLE `membre` (
  `id_membre` int(5) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membre`
--

INSERT INTO `membre` (`id_membre`, `nom`, `prenom`, `tel`, `email`) VALUES
(1, 'Baudon', 'Thomas', '01234556677', 'tbaudon@yahoo.fr'),
(2, 'Nevens', 'Marion', '0622334455', 'Marion@yahoo.fr'),
(5, 'Baudon', 'Anaïs', '0765432177', 'anais@yahoo.fr'),
(6, 'Baudon', 'Mathias', '0676543221', 'mathias@yahoo.fr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`);

--
-- Indexes for table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id_membre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_avis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `membre`
--
ALTER TABLE `membre`
  MODIFY `id_membre` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
