-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 26 Octobre 2017 à 13:53
-- Version du serveur :  5.7.19-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `simple-mvc`
--

-- --------------------------------------------------------

--
-- Suppression de la base de donnée si déjà existante
--

DROP DATABASE IF EXISTS the_banana_tribute;

--
-- Création de la base
--

CREATE DATABASE the_banana_tribute;
USE the_banana_tribute;

--
-- Création et structure de la table `playlist`
--

CREATE TABLE `playlist` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Création et structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `playlist_id` INT NOT NULL,
  FOREIGN KEY (playlist_id) REFERENCES playlist(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ajout de données dans la table playlist
--

INSERT INTO `playlist` (`name`, `url`) VALUES
("Sad Song", 'https://open.spotify.com/playlist/37i9dQZF1DX7qK8ma5wgG1?si=b29954b8abb148ff'),
("Ambiant Relaxation", 'https://open.spotify.com/playlist/37i9dQZF1DX3Ogo9pFvBkY?si=4c292170144047d5'),
("Happy Hits!", 'https://open.spotify.com/playlist/37i9dQZF1DXdPec7aLTmlC?si=c6b32b4f2c1d48de'),
("Chill Vibes", 'https://open.spotify.com/playlist/37i9dQZF1DX889U0CL85jj?si=83349a9c65764347'),
("Dance Hits 2000", 'https://open.spotify.com/playlist/37i9dQZF1DWSj4n2q6ZYVe?si=16f62e9858b84a24');

--
-- Ajout de données dans la table playlist
--

INSERT INTO `tag` (`tag`, `playlist_id`) VALUES
("triste", 1),
("calme", 2),
("heureux", 3),
("chill", 4),
("festif", 5);
