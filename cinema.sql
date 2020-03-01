-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 01 mars 2020 à 17:08
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `prenom` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date`) VALUES
(1, 'pace', 'gregory', '1976-03-20'),
(2, 'pace', 'gregory', '1976-03-20'),
(3, 'pace', 'gregory', '1976-03-20'),
(4, 'pace', 'gregory', '1976-03-20'),
(5, 'pace_<toto', 'gregory', '1976-03-20'),
(6, 'pace_<toto', 'gregory', '1976-03-20'),
(7, 'pace_<toto', 'gregory', '1976-03-20'),
(8, 'pace_&amp;lt;toto', 'gregory', '1976-03-20'),
(9, 'pace', 'gregory', '1976-03-20'),
(10, 'pace', 'gregory', '1976-03-20'),
(11, 'muller', 'jean', '2020-03-01'),
(12, 'toto', 'gregory', '1976-03-20'),
(13, 'toto', 'gregory', '1976-03-20'),
(14, 'toto', 'gregory', '1976-03-20'),
(15, 'regerzger', 'tata', '1981-03-19'),
(16, 'regerzger', 'tata', '1981-03-19'),
(17, 'regerzger', 'tata', '1981-03-19'),
(18, 'dupont', 'mario', '1962-04-25'),
(19, 'regerzger', 'h', '1976-03-20'),
(20, 'p', 'j', '1981-03-19'),
(21, 'p', 'j', '1981-03-19'),
(22, 'p', 'gregory', '1976-03-20'),
(23, 'p', 'gregory', '1976-03-20'),
(24, 'p', 'gregory', '1976-03-20'),
(25, 'p', 'j', '1981-03-19'),
(26, 'p', 'j', '1981-03-19'),
(27, 'p', 'j', '1981-03-19'),
(28, 'p', 'j', '1981-03-19'),
(29, 'toto', 'gregory', '1981-03-19'),
(30, 'toto', 'gregory', '1981-03-19'),
(31, 'toto', 'gregory', '1981-03-19'),
(32, 'toto', 'gregory', '1981-03-19'),
(33, 'toto', 'gregory', '1981-03-19'),
(34, 'toto', 'gregory', '1981-03-19'),
(35, 'toto', 'gregory', '1981-03-19'),
(36, 'toto', 'gregory', '1981-03-19'),
(37, 'toto', 'gregory', '1981-03-19');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `sortie` date DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `synopsis` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `realisateur` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `genre` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `film` varchar(256) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `sortie`, `duree`, `synopsis`, `realisateur`, `genre`, `film`) VALUES
(1, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(2, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(3, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(4, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(5, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(6, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(7, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(8, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(9, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(10, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(11, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(12, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(13, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(14, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(15, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(16, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(17, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(18, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(19, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(20, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(21, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(22, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(23, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(24, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(25, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(26, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(27, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(28, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(29, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(30, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(31, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(32, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(33, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(34, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(35, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(36, 'titre', '2020-03-04', 120, 'naufrage', '28', 'policier', NULL),
(37, 'titre', '2020-03-04', 120, 'naufrage', '1', 'policier', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `casting` varchar(1024) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `nom`, `casting`) VALUES
(1, 'policier', NULL),
(2, 'aventure', NULL),
(3, '', NULL),
(4, '', NULL),
(5, '', NULL),
(6, '', NULL),
(7, '', NULL),
(8, '', NULL),
(9, 'policier', NULL),
(10, '', NULL),
(11, '', NULL),
(12, '', NULL),
(13, '', NULL),
(14, '', NULL),
(15, '', NULL),
(16, '', NULL),
(17, '', NULL),
(18, '', NULL),
(19, '', NULL),
(20, '', NULL),
(21, '', NULL),
(22, '', NULL),
(23, '', NULL),
(24, 'policier', NULL),
(25, 'policier', NULL),
(26, 'policier', NULL),
(27, 'policier', NULL),
(28, 'policier', NULL),
(29, 'policier', NULL),
(30, 'policier', NULL),
(31, 'policier', NULL),
(32, 'policier', NULL),
(33, 'policier', NULL),
(34, 'policier', NULL),
(35, 'policier', NULL),
(36, 'policier', NULL),
(37, 'policier', NULL),
(38, 'policier', NULL),
(39, 'policier', NULL),
(40, 'policier', NULL),
(41, 'policier', NULL),
(42, 'policier', NULL),
(43, 'policier', NULL),
(44, 'policier', NULL),
(45, 'policier', NULL),
(46, 'policier', NULL),
(47, 'policier', NULL),
(48, 'policier', NULL),
(49, 'policier', NULL),
(50, 'policier', NULL),
(51, 'policier', NULL),
(52, 'policier', NULL),
(53, 'policier', NULL),
(54, 'policier', NULL),
(55, 'policier', NULL),
(56, 'policier', NULL),
(57, 'policier', NULL),
(58, 'policier', NULL),
(59, 'policier', NULL),
(60, 'policier', NULL),
(61, 'policier', NULL),
(62, 'policier', NULL),
(63, 'policier', NULL),
(64, 'policier', NULL),
(65, 'policier', NULL),
(66, 'policier', NULL),
(67, 'policier', NULL),
(68, 'policier', NULL),
(69, 'policier', NULL),
(70, 'policier', NULL),
(71, 'policier', NULL),
(72, 'policier', NULL),
(73, 'policier', NULL),
(74, 'policier', NULL),
(75, 'policier', NULL),
(76, 'policier', NULL),
(77, 'policier', NULL),
(78, 'policier', NULL),
(79, 'policier', NULL),
(80, 'policier', NULL),
(81, 'policier', NULL),
(82, 'policier', NULL),
(83, 'policier', NULL),
(84, 'policier', NULL),
(85, 'policier', NULL),
(86, 'policier', NULL),
(87, 'policier', NULL),
(88, 'policier', NULL),
(89, 'policier', NULL),
(90, 'policier', NULL),
(91, 'policier', NULL),
(92, 'policier', NULL),
(93, 'policier', NULL),
(94, 'policier', NULL),
(95, 'policier', NULL),
(96, 'policier', NULL),
(97, 'policier', NULL),
(98, 'policier', NULL),
(99, 'policier', NULL),
(100, 'policier', NULL),
(101, 'policier', NULL),
(102, 'policier', NULL),
(103, 'policier', NULL),
(104, 'policier', NULL),
(105, 'policier', NULL),
(106, 'policier', NULL),
(107, 'policier', NULL),
(108, 'policier', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `prenom` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `date` date DEFAULT NULL,
  `film` varchar(256) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `nom`, `prenom`, `date`, `film`) VALUES
(1, 'p', 'j', '1981-03-19', '37'),
(22, 'toto', 'j', '1981-03-19', NULL),
(24, 'toto', 'j', '1981-03-19', NULL),
(25, 'toto', 'j', '1981-03-19', NULL),
(26, 'toto', 'j', '1981-03-19', NULL),
(27, 'toto', 'j', '1981-03-19', NULL),
(28, 'toto', 'j', '1981-03-19', '36'),
(29, 'toto', 'j', '1981-03-19', NULL),
(30, 'toto', 'j', '1981-03-19', NULL),
(31, 'toto', 'j', '1981-03-19', NULL),
(32, 'toto', 'j', '1981-03-19', NULL),
(33, 'toto', 'j', '1981-03-19', NULL),
(34, 'toto', 'j', '1981-03-19', NULL),
(35, 'toto', 'j', '1981-03-19', NULL),
(36, 'toto', 'j', '1981-03-19', NULL),
(37, 'toto', 'j', '1981-03-19', NULL),
(38, 'toto', 'j', '1981-03-19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nom` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `casting` varchar(1024) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `nom`, `casting`) VALUES
(1, 'jamesbond', '0'),
(2, 'jamesbond', NULL),
(3, 'policier', NULL),
(4, 'policier', NULL),
(5, 'indiana jones', NULL),
(6, 'indiana jones', NULL),
(7, 'indiana jones', NULL),
(8, 'indiana jones', NULL),
(9, 'indiana jones', NULL),
(10, 'indiana jones', NULL),
(11, 'indiana jones', NULL),
(12, 'indiana jones', NULL),
(13, 'indiana jones', NULL),
(14, 'indiana jones', NULL),
(15, 'indiana jones', NULL),
(16, 'indiana jones', NULL),
(17, 'indiana jones', NULL),
(18, 'toto', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
