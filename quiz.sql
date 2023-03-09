-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 09, 2023 alle 12:46
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `domande`
--

CREATE TABLE `domande` (
  `ID` int(11) NOT NULL,
  `Testo` varchar(255) NOT NULL,
  `Tipo_Materia` varchar(255) DEFAULT NULL,
  `Difficoltà` varchar(25) DEFAULT NULL,
  `Punteggio_Domande` int(11) DEFAULT NULL,
  `Email` char(50) DEFAULT NULL,
  `RisG` varchar(50) DEFAULT NULL,
  `RisE1` varchar(50) DEFAULT NULL,
  `RisE2` varchar(50) DEFAULT NULL,
  `RisE3` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `domande`
--

INSERT INTO `domande` (`ID`, `Testo`, `Tipo_Materia`, `Difficoltà`, `Punteggio_Domande`, `Email`, `RisG`, `RisE1`, `RisE2`, `RisE3`) VALUES
(0, 'Ad arsel gli piace la patata?', 'Educazione Sessuale', 'Media', 3, 'facciettanera@hotmail.com', 'Si', 'Forse', 'Gli piace il cazzo', 'è bissex'),
(1, 'Ad arsel gli piaciocco le bionde', 'Educazione Sessuale', 'Facile', 3, 'facciettanera@hotmail.com', 'Si', 'Forse', 'E gay', 'è bissex');

-- --------------------------------------------------------

--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `Email` varchar(30) NOT NULL,
  `Pasw` varchar(20) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Ruolo` tinyint(1) DEFAULT NULL,
  `Punt_tot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`Email`, `Pasw`, `Nome`, `Ruolo`, `Punt_tot`) VALUES
('africafree@hotmail.com', '1041', 'Sylla', 0, 40),
('americafree@hotmail.com', '1234', 'Anas', 0, 20),
('asiafree@hotmail.com', '25030', 'Federica', 0, 20),
('facciettanera@hotmail.com', '12345678', 'Arsel', 0, 50),
('leo.ligato@istitutoriva.it', 'Tuzzo', 'Leo', 1, 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `domande`
--
ALTER TABLE `domande`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`Email`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `domande`
--
ALTER TABLE `domande`
  ADD CONSTRAINT `domande_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utente` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
