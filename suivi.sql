-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 17 mai 2024 à 10:08
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `suivi`
--

-- --------------------------------------------------------

--
-- Structure de la table `afe`
--

DROP TABLE IF EXISTS `afe`;
CREATE TABLE IF NOT EXISTS `afe` (
  `numAFE` int(5) NOT NULL AUTO_INCREMENT,
  `montantP` varchar(10) NOT NULL,
  `montantNA` varchar(10) NOT NULL,
  `montantA` varchar(10) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`numAFE`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf16le;

--
-- Déchargement des données de la table `afe`
--

INSERT INTO `afe` (`numAFE`, `montantP`, `montantNA`, `montantA`, `CreatedAt`) VALUES
(3, '5000', '1000', '4000', '2024-05-13 00:46:55');

-- --------------------------------------------------------

--
-- Structure de la table `afe_executee`
--

DROP TABLE IF EXISTS `afe_executee`;
CREATE TABLE IF NOT EXISTS `afe_executee` (
  `idae` int(10) NOT NULL AUTO_INCREMENT,
  `montantTD` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idae`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16le;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

DROP TABLE IF EXISTS `departement`;
CREATE TABLE IF NOT EXISTS `departement` (
  `code_dep` int(11) NOT NULL AUTO_INCREMENT,
  `nom_dep` varchar(20) NOT NULL,
  `budgetP` bigint(20) NOT NULL,
  `budgetNA` bigint(20) NOT NULL,
  `budgetA` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`code_dep`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf16le;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`code_dep`, `nom_dep`, `budgetP`, `budgetNA`, `budgetA`, `date`) VALUES
(17, 'kerosene', 50000, 30000, 20000, '2024-05-13 00:31:50'),
(18, 'basevie', 10000000, 5000000, 5000000, '2024-05-13 09:44:22');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(20) NOT NULL,
  `montantP` bigint(20) NOT NULL,
  `montantNA` bigint(20) NOT NULL,
  `montantA` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `departement` varchar(20) NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf16le;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`idp`, `intitule`, `montantP`, `montantNA`, `montantA`, `date`, `departement`) VALUES
(23, 'koulele', 2000000, 1000000, 1000000, '2024-05-13 09:47:44', '18'),
(22, 'restauration', 1000000, 400000, 600000, '2024-05-13 09:46:51', '18'),
(21, 'vigile', 3000, 1000, 2000, '2024-05-13 00:35:30', '17'),
(20, 'arrosage', 4000, 2000, 2000, '2024-05-13 00:34:38', '17'),
(19, 'sante', 10000, 3000, 7000, '2024-05-13 00:32:47', '17');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idu` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `niveau` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `etat` int(1) NOT NULL DEFAULT '0',
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`idu`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf16le;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idu`, `nom`, `prenom`, `niveau`, `mail`, `CreatedAt`, `etat`, `pwd`) VALUES
(23, 'Ibrahim', 'seyni', 'administrateur', 'seyni@gmail.com', '2024-05-13 09:42:33', 0, '1234'),
(24, 'anni', 'bachir', 'agent', 'bachir@gmail.com', '2024-05-13 09:52:27', 0, '1111'),
(22, 'gambo', 'abass', 'super_administrateur', 'abass@gmail.com', '2024-05-13 00:29:11', 0, '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
