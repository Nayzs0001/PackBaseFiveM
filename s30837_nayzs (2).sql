-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 22 juil. 2024 à 09:01
-- Version du serveur : 11.2.4-MariaDB-ubu2204
-- Version de PHP : 8.1.2-1ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `s30837_nayzs`
--

-- --------------------------------------------------------

--
-- Structure de la table `account_info`
--

CREATE TABLE `account_info` (
  `license` varchar(255) NOT NULL,
  `steam` varchar(255) DEFAULT NULL,
  `xbl` varchar(255) DEFAULT NULL,
  `discord` varchar(255) DEFAULT NULL,
  `live` varchar(255) DEFAULT NULL,
  `fivem` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `account_info`
--

INSERT INTO `account_info` (`license`, `steam`, `xbl`, `discord`, `live`, `fivem`, `name`, `ip`, `guid`) VALUES
('license:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'steam:11000013fb95c1e', '', 'discord:609076807156629525', '', 'fivem:5166341', 'Isaac Mendoza', '90.0.3.55', '148618792041350336'),
('license:1ccf407aed90a1777162734e4f490bf3824482e8', 'steam:1100001679f5551', '', 'discord:1184898731309531149', '', '', 'LADEPOPARACHER', '89.91.206.253', '148618792113148336'),
('license:40f8b841d191d2712a20cdc6713cd5256eb0efe6', 'steam:11000016a4f4f8e', '', 'discord:561237780714225696', '', '', 'EPOA1', '138.199.15.172', '148618792062894274'),
('license:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'steam:11000016631e448', '', 'discord:455803826562400268', '', '', 'Jordan', '80.201.12.44', '148618792010790087'),
('license:59312ef406c9da41aaa4b19b7b92e15606a540d4', 'steam:110000169244a55', 'xbl:2535443040129462', 'discord:885084030700249088', 'live:914799409222445', 'fivem:13850263', 'ioup93', '37.67.113.83', '148618792132629430'),
('license:676a534b8120206c6bf337a25fbdb811e852634f', '', 'xbl:2535465732455956', '', 'live:1055518891268595', 'fivem:14633134', 'merabti', '88.175.206.32', '148618791999442758'),
('license:682e559124a21fc1b4854094ba4b351f88285142', '', '', 'discord:1036371583603838976', '', 'fivem:14446448', 'MaaNyy', '89.84.193.87', '148618791999328042'),
('license:73b626f18d73f102b5ad775b9077f73881a31c3d', 'steam:11000015bc0d5b9', 'xbl:2535430566940143', '', 'live:844426763426272', 'fivem:13851413', 'oxiine27', '86.210.197.17', '148618792025222071');

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Ambulance', 1),
('society_bcso', 'bcso', 1),
('society_burgershot', 'Burgershot', 1),
('society_concess', 'Concessionnaire', 1),
('society_gruppe6', 'Gruppe 6', 1),
('society_mecano', 'Mécano Nord', 1),
('society_mechanic', 'Mécano', 1),
('society_off_ambulance', 'Ambulance - Off duty', 1),
('society_off_mechanic', 'Mécano - Off duty', 1),
('society_off_police', 'LSPD - Off duty', 1),
('society_pizzeria', 'Pizzeria', 1),
('society_police', 'LSPD', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_tabac', 'Tabac', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'SKYBAR', 1),
('society_vigneron', 'Vigneron', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(16, 'society_ambulance', 50100, NULL),
(17, 'society_mechanic', 377725, NULL),
(18, 'society_police', 0, NULL),
(19, 'society_realestateagent', 37502, NULL),
(23, 'society_tabac', 1518, NULL),
(26, 'society_burgershot', 204, NULL),
(27, 'society_unicorn', 10, NULL),
(28, 'society_mecano', 245, NULL),
(29, 'society_bcso', 5000, NULL),
(31, 'society_vigneron', 50, NULL),
(33, 'society_concess', 6000, NULL),
(34, 'society_taxi', 1347, NULL),
(35, 'society_gruppe6', 71, NULL),
(36, 'society_off_ambulance', 0, NULL),
(37, 'society_off_police', 0, NULL),
(38, 'society_off_mechanic', 0, NULL),
(39, 'society_pizzeria', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `automatisation`
--

CREATE TABLE `automatisation` (
  `society` varchar(60) NOT NULL,
  `statut` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `automatisation`
--

INSERT INTO `automatisation` (`society`, `statut`) VALUES
('concess', 'Non-automatique');

-- --------------------------------------------------------

--
-- Structure de la table `banlist`
--

CREATE TABLE `banlist` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `playerName` varchar(64) NOT NULL,
  `reason` text NOT NULL,
  `banTime` bigint(20) NOT NULL,
  `expireTime` bigint(20) NOT NULL,
  `adminName` varchar(64) NOT NULL,
  `xbl` varchar(64) DEFAULT NULL,
  `discord` varchar(64) DEFAULT NULL,
  `live` varchar(64) DEFAULT NULL,
  `fivem` varchar(64) DEFAULT NULL,
  `char1` varchar(64) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `guid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `identifier_name` varchar(255) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `motif` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `identifier_name`, `sender`, `sender_name`, `target_type`, `target`, `label`, `amount`, `motif`, `date`) VALUES
(6, 'char1:dcb20c0209b064ff149c8431c29edaa7faeabe2c', 'Azerty Qwerty', 'char1:ed80c260c095256057dc39835cee1298e983cbc2', 'Atango Mouloude', 'society', 'society_police', 'LSPD', 1000000, 'pour le plaisir ', '10/02/24 à 23h21');

-- --------------------------------------------------------

--
-- Structure de la table `billing_declinaison`
--

CREATE TABLE `billing_declinaison` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `identifier_name` varchar(255) DEFAULT NULL,
  `sender` varchar(60) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(60) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `motif` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `motif_declinaison` varchar(255) DEFAULT NULL,
  `date_declinaison` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billing_declinaison`
--

INSERT INTO `billing_declinaison` (`id`, `identifier`, `identifier_name`, `sender`, `sender_name`, `target_type`, `target`, `label`, `amount`, `motif`, `date`, `motif_declinaison`, `date_declinaison`) VALUES
(1, 'char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', 'Dasda Azaaa', 'char1:7235e7329865de46e8b6fa566ac7b4f6c43690b0', 'Masta Goon', 'society', 'society_concess', 'Concessionnaire', 100, NULL, '27/11/23 à 21h44', 'JE NE VEUT PAS PAYER', '27/11/23 à 21h44');

-- --------------------------------------------------------

--
-- Structure de la table `billing_hist`
--

CREATE TABLE `billing_hist` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `identifier_name` varchar(255) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `motif` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billing_hist`
--

INSERT INTO `billing_hist` (`id`, `identifier`, `identifier_name`, `sender_name`, `label`, `amount`, `motif`, `date`) VALUES
(2, 'char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', 'Dasda Azaaa', 'Masta Goon', 'Concessionnaire', 100, 'dyfalos', '27/11/23 à 21h44'),
(3, 'char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', 'Dasda Azaaa', 'Masta Goon', 'Concessionnaire', 1000, '1000', '27/11/23 à 21h45'),
(4, 'char1:3ff875e52e6fd4c837cd995db5bed281aa89999a', 'Zack Gray', 'Alex White', 'Ambulance', 100, 'mort', '26/01/24 à 21h30');

-- --------------------------------------------------------

--
-- Structure de la table `billing_hist_entreprise`
--

CREATE TABLE `billing_hist_entreprise` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `identifier_name` varchar(255) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `motif` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `billing_hist_entreprise`
--

INSERT INTO `billing_hist_entreprise` (`id`, `identifier`, `identifier_name`, `sender_name`, `label`, `amount`, `motif`, `date`) VALUES
(2, 'char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', 'Dasda Azaaa', 'Masta Goon', 'Concessionnaire', 100, 'dyfalos', '27/11/23 à 21h44'),
(3, 'char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', 'Dasda Azaaa', 'Masta Goon', 'Concessionnaire', 1000, '1000', '27/11/23 à 21h45'),
(4, 'char1:3ff875e52e6fd4c837cd995db5bed281aa89999a', 'Zack Gray', 'Alex White', 'Ambulance', 100, 'mort', '26/01/24 à 21h30');

-- --------------------------------------------------------

--
-- Structure de la table `boutique_historique`
--

CREATE TABLE `boutique_historique` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `achat` longtext DEFAULT NULL,
  `prix` varchar(50) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boutique_historique`
--

INSERT INTO `boutique_historique` (`id`, `identifier`, `achat`, `prix`, `date`, `name`) VALUES
(7, 'char1:44a131d62b193262e748bf42463a60d3c56af9da', 'Sultan', '2500', '07/11/2023 | 18:12:31', 'Zilox Rox'),
(8, 'char1:44a131d62b193262e748bf42463a60d3c56af9da', '25 000$', '1000', '07/11/2023 | 18:12:52', 'Zilox Rox'),
(9, 'char1:44a131d62b193262e748bf42463a60d3c56af9da', 'AK47', '1000', '07/11/2023 | 18:13:11', 'Zilox Rox'),
(10, 'char1:7763cb60d2d7a42df3d16f35292ce53b0efcd560', 'M4A1', '1000', '05/02/2024 | 21:31:48', 'Kelyan Dutronc'),
(11, 'char1:7763cb60d2d7a42df3d16f35292ce53b0efcd560', 'SMG MK2', '1000', '05/02/2024 | 21:35:32', 'Kelyan Dutronc');

-- --------------------------------------------------------

--
-- Structure de la table `coffre_fort`
--

CREATE TABLE `coffre_fort` (
  `id` int(11) NOT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `heading` double NOT NULL DEFAULT 0,
  `cracked` varchar(50) NOT NULL DEFAULT 'false',
  `access_list` longtext NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fav_emote`
--

CREATE TABLE `fav_emote` (
  `id` int(11) NOT NULL,
  `licence` varchar(80) NOT NULL,
  `dict` text NOT NULL,
  `anim` text NOT NULL,
  `name` text NOT NULL,
  `param` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fav_emote`
--

INSERT INTO `fav_emote` (`id`, `licence`, `dict`, `anim`, `name`, `param`) VALUES
(26, 'char1:9127acb345c982bbad878a4480a2c558f6cffc9d', 'timetable@ron@ig_3_couch', 'base', 'Assis sur une chaise 4', '{\"EmoteLoop\":true}'),
(27, 'char1:e2a9a79ffaa3f8eeb795dee369d1cc894f055aed', 'anim@amb@nightclub@djs@solomun@', 'sol_dance_l_sol', 'DJ 3', '{\"EmoteLoop\":true,\"EmoteMoving\":false}'),
(28, 'char1:7f03c1e0cffa692606c0e4b05749345853c565a5', 'custom@toosie_slide', 'toosie_slide', 'Tootsie Slide(Fortnite)', '{\"EmoteLoop\":true,\"EmoteMoving\":false}');

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_app_chat`
--

CREATE TABLE `gksphone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_bank_transfer`
--

CREATE TABLE `gksphone_bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `price` longtext NOT NULL,
  `name` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gksphone_bank_transfer`
--

INSERT INTO `gksphone_bank_transfer` (`id`, `type`, `identifier`, `price`, `name`, `time`) VALUES
(5, 1, 'char1:ce0b142ac12f87b4abf90afeea7edf1fdb127a7c', '3000', 'Zack Gray', '2024-01-26 20:56:52'),
(6, 2, 'char1:3ff875e52e6fd4c837cd995db5bed281aa89999a', '3000', 'Alex White', '2024-01-26 20:56:52');

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_blockednumber`
--

CREATE TABLE `gksphone_blockednumber` (
  `id` int(11) NOT NULL,
  `identifier` longtext NOT NULL,
  `hex` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_calls`
--

CREATE TABLE `gksphone_calls` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL COMMENT 'Num tel proprio',
  `num` longtext NOT NULL COMMENT 'Num refÃ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DÃ©fini si on est Ã  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `gksphone_calls`
--

INSERT INTO `gksphone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(171, '9064959', '9064959', 0, '2023-12-18 21:46:10', 0),
(172, '9064959', '9064959', 1, '2023-12-18 21:46:10', 0),
(173, '2205324', '6128639', 1, '2024-01-26 20:55:27', 1),
(174, '6128639', '2205324', 0, '2024-01-26 20:55:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_gallery`
--

CREATE TABLE `gksphone_gallery` (
  `id` int(11) NOT NULL,
  `hex` longtext NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gksphone_gallery`
--

INSERT INTO `gksphone_gallery` (`id`, `hex`, `image`, `time`) VALUES
(20, 'char1:f6845b9a9cf29aa6b1859760810979de20514e24', 'https://media.discordapp.net/attachments/941327814911741992/1173013623342366802/screenshot.jpeg?ex=65626911&is=654ff411&hm=5d9e2f4c1c8b4371c7f5cdd6b3b237864d81e3b0eba7f4379df73f542ca03b84&', '2023-11-11 21:37:23'),
(21, 'char1:ce0b142ac12f87b4abf90afeea7edf1fdb127a7c', 'https://media.discordapp.net/attachments/941327814911741992/1200545001654976542/screenshot.jpeg?ex=65c691a9&is=65b41ca9&hm=844fd61852123c0dd58292e105c028dde736c71a3f5011890eba7f5a1321a9c8&', '2024-01-26 20:57:17'),
(22, 'char1:41c554ce194a45e78e75c0abbbbd355cd5ffcc6a', 'https://media.discordapp.net/attachments/941327814911741992/1204499767288270878/screenshot.jpeg?ex=65d4f4d3&is=65c27fd3&hm=2841f2f74dd88883b98999c80d661431e92fe64a0c84defdeaa154c3ebc755cf&', '2024-02-06 18:52:05'),
(23, 'char1:b9bbf72f78f1b78a069c1c0dddb429ee7c81c371', 'https://media.discordapp.net/attachments/941327814911741992/1205561689538306158/screenshot.jpeg?ex=65d8d1d1&is=65c65cd1&hm=d73f9be85df9cf24a03a9e5e9a1e1c79746b1bdd0d72debeb1cdb2858012d9b8&', '2024-02-09 17:11:47'),
(24, 'char1:9c589f2800f2be0061b30b703906c044dc8efa7d', 'https://media.discordapp.net/attachments/941327814911741992/1205856611407761428/screenshot.jpeg?ex=65d9e47b&is=65c76f7b&hm=3f90dc5358cc1d489eab59a8b278763aede41310fd423984e52416b1924de2fe&', '2024-02-10 12:43:41'),
(25, 'char1:9c589f2800f2be0061b30b703906c044dc8efa7d', 'https://media.discordapp.net/attachments/941327814911741992/1205987075665428520/screenshot.jpeg?ex=65da5dfc&is=65c7e8fc&hm=9e31743415ff862412534939dea60f182d929752128fe9d787cfd2e1af90fb74&', '2024-02-10 21:22:07'),
(26, 'char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', 'https://media.discordapp.net/attachments/941327814911741992/1221249535989514250/screenshot.jpeg?ex=6611e443&is=65ff6f43&hm=af5237f42ba52655472065b7bf14c2848e46150cb9572b67c6bfd1b3aa4041d1&', '2024-03-24 00:09:40'),
(27, 'char1:ac9045b4fbc38b14680f28f27cb1d24a6f0621c5', 'https://media.discordapp.net/attachments/941327814911741992/1221546334574739547/screenshot.jpeg?ex=6612f8ad&is=660083ad&hm=fda802b89e8fd90c26a214944c9ff2082b188ff16726b3d8abef451d7469c287&', '2024-03-24 19:49:02');

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_group_message`
--

CREATE TABLE `gksphone_group_message` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `messages` longtext NOT NULL,
  `contacts` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_job_message`
--

CREATE TABLE `gksphone_job_message` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `photo` longtext DEFAULT NULL,
  `gps` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `jobm` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_messages`
--

CREATE TABLE `gksphone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `gksphone_messages`
--

INSERT INTO `gksphone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(498, '2205324', '6128639', 'GPS: 103.31554412842, -1528.0986328125', '2024-01-26 20:55:53', 1, 0),
(499, '6128639', '2205324', 'GPS: 103.31554412842, -1528.0986328125', '2024-01-26 20:55:53', 1, 1),
(500, '6128639', '2205324', 'cc', '2024-01-26 21:15:44', 0, 0),
(501, '2205324', '6128639', 'cc', '2024-01-26 21:15:44', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_messages_group`
--

CREATE TABLE `gksphone_messages_group` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gimage` longtext NOT NULL,
  `contacts` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_settings`
--

CREATE TABLE `gksphone_settings` (
  `id` int(11) NOT NULL,
  `identifier` longtext NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{}',
  `phone_number` varchar(50) DEFAULT NULL,
  `avatar_url` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gksphone_settings`
--

INSERT INTO `gksphone_settings` (`id`, `identifier`, `crypto`, `phone_number`, `avatar_url`) VALUES
(110, 'char1:44a131d62b193262e748bf42463a60d3c56af9da', '{}', '6658642', NULL),
(111, 'char1:cc57b41404e96cc540f6d72b53d2aef6c4f497dc', '{}', '5619330', NULL),
(112, 'char1:768d18cbb55f388d67ee208739cae8d48190062a', '{}', '2601185', NULL),
(113, 'char1:1b5d6aa534267e843644e7937c55308c00877cd6', '{}', '1179818', NULL),
(114, 'char1:d2f7899ac883943827bb6c5947533a68f6bb378d', '{}', '9204374', NULL),
(115, 'char1:f6845b9a9cf29aa6b1859760810979de20514e24', '{}', '6004919', NULL),
(116, 'char1:9127acb345c982bbad878a4480a2c558f6cffc9d', '{}', '9142826', NULL),
(117, 'char1:03c05fa4c6577acd43518c597fadfffb9ee5aec2', '{}', '3374831', NULL),
(118, 'char1:0628a359896dd5714d7a0d784414a5b6e83acbcb', '{}', '6232220', NULL),
(119, 'char1:0b784d129dedb9314cb84c3946a68afa3068e560', '{}', '9804623', NULL),
(120, 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68', '{}', '3759330', NULL),
(121, 'char1:a73fab12efc9b49f3ada85cf6b66ec06cb167a78', '{}', '2305572', NULL),
(122, 'char1:d757d08cd954e6dcfe733420ba13a42108146154', '{}', '9783390', NULL),
(123, 'char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', '{}', '9179011', NULL),
(124, 'char1:7235e7329865de46e8b6fa566ac7b4f6c43690b0', '{}', '6334331', NULL),
(125, 'char1:0faa9059128b61f27fb23032ec8a3b1956d652a1', '{}', '8977941', NULL),
(126, 'char1:9ba6633b190319f98dfd9e4584abecb7c7647152', '{}', '9585878', NULL),
(127, 'char1:ead2951e114e59fcc7b94b27923b8467104d65b9', '{}', '9064959', NULL),
(128, 'char1:9df58c12d3c1e0e391b873484a634643b90c8cb0', '{}', '3544812', NULL),
(129, 'char1:cd961f05dadc59467663a91650dd64baec7a68d5', '{}', '5425763', NULL),
(130, 'char1:6cc9613140a1b55be66b3bf710c066d3852f0aa3', '{}', '5293366', NULL),
(131, 'char1:0cc269bc8fc2760c2332affd586793de80a38f42', '{}', '7941262', NULL),
(132, 'char1:287283cd0b27d2b34251360a3f3580d5953ec2b9', '{}', '2367676', NULL),
(133, 'char1:37d80016135d94b810ee9f6477385b2eb2955825', '{}', '7622388', NULL),
(134, 'char1:e2a9a79ffaa3f8eeb795dee369d1cc894f055aed', '{}', '2688338', NULL),
(135, 'char1:b4c7fbd5c6edaa7ca91ee9fbfcf4844b314be04a', '{}', '5373824', NULL),
(136, 'char1:b3774cabddfaa4287a52d5340f2ea6ced179cb58', '{}', '5570448', NULL),
(137, 'char1:9431831fce9d66c09348ee03b8f64c281d31933b', '{}', '7675772', NULL),
(138, 'char1:510e20cf7000c49b1cfcf40ab6ea3ff49173bbd9', '{}', '1816797', NULL),
(139, 'char1:70d25130c386c210aa615c24e4ba3bbe1813d0b5', '{}', '5863366', NULL),
(140, 'char1:3ff875e52e6fd4c837cd995db5bed281aa89999a', '{}', '6128639', NULL),
(141, 'char1:ce0b142ac12f87b4abf90afeea7edf1fdb127a7c', '{}', '2205324', NULL),
(142, 'char1:af2a02881a77221126dcf8c611726aa1f2daacc9', '{}', '6570555', NULL),
(143, 'char1:89baeb54743341f2da2a65730f5812f736c45b68', '{}', '5355343', NULL),
(144, 'char1:c01d7635b6962510ae687fe97f0f929964cac968', '{}', '8446869', NULL),
(145, 'char1:f5e52cb88e60f1454876c921205dc745ba84e3d5', '{}', '1801970', NULL),
(146, 'char1:de96604c6027f52738c119d9d2e31fe86f54817a', '{}', '5568886', NULL),
(147, 'char1:16273cf9e70018ffee56ae113e53d639d8077554', '{}', '7036014', NULL),
(148, 'char1:aeaf6a507d995a6d7cbf9a7550e128010359d148', '{}', '2267150', NULL),
(149, 'char1:7763cb60d2d7a42df3d16f35292ce53b0efcd560', '{}', '7767361', NULL),
(150, 'char1:ccd9f063129e1edbb81068d3ccf24a8accc86831', '{}', '4239409', NULL),
(151, 'char1:41c554ce194a45e78e75c0abbbbd355cd5ffcc6a', '{}', '7187776', NULL),
(152, 'char1:ed80c260c095256057dc39835cee1298e983cbc2', '{}', '9510859', NULL),
(153, 'char1:fe5b70dd1ee915dd368586a5ab4ff0c84134c552', '{}', '6112672', NULL),
(154, 'char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', '{}', '9214749', NULL),
(155, 'char1:65f47c967615c26a805df32409c24b04b03a3afa', '{}', '2835584', NULL),
(156, 'char1:b9bbf72f78f1b78a069c1c0dddb429ee7c81c371', '{}', '5908502', NULL),
(157, 'char1:fc758c1ca0eecf999d94e3c9dc061301cc57672e', '{}', '4154382', NULL),
(158, 'char1:9c589f2800f2be0061b30b703906c044dc8efa7d', '{}', '5160824', NULL),
(159, 'char1:2da6828d842c2d842c56daa15064ef7d964a7fc2', '{}', '3911733', NULL),
(160, 'char1:e107d584aac1f0260d70585e4b9b2eddca478a78', '{}', '1746258', NULL),
(161, 'char1:dcb20c0209b064ff149c8431c29edaa7faeabe2c', '{}', '9137374', NULL),
(162, 'char1:d1a8aaae4010c6b4496e7203c14b9c023578280b', '{}', '3890115', NULL),
(163, 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92', '{}', '4965373', NULL),
(164, 'char1:0ced5e96294a0294d682acf070ea744a7337385d', '{}', '4756956', NULL),
(165, 'char1:3b6cecfb884764939abc38740a2cb326f419890b', '{}', '5854013', NULL),
(166, 'char1:c3ab4e44fdfd464d9c5917e3f54250a0696dd3e6', '{}', '5905434', NULL),
(167, 'char1:de10ff99fe617498fcd28a811692d88a40103641', '{}', '6876947', NULL),
(168, 'char1:f8233d9c15eb04ed545d75cdb6fa022011532c45', '{}', '8612892', NULL),
(169, 'char1:c549b6eb593ace322d5a79a9e72d59f712546fda', '{}', '1063863', NULL),
(170, 'char1:5d7f9a61983aa70090f3fd8a6e16a51fe2e4543c', '{}', '2823910', NULL),
(171, 'char1:659da037943d8a67b4e720981f44906c9638d47c', '{}', '6636091', NULL),
(172, 'char1:7cc8b7b28206ead2f2cba652d8138ff73e9987fb', '{}', '9237558', NULL),
(173, 'char1:c377c1aeb3b220aab5de594d93a9d54aa1b3e10a', '{}', '3867248', NULL),
(174, 'char1:7e83e3268cf6a847202dcf338add245faf40c5e4', '{}', '2186462', NULL),
(175, 'char1:051f9be954d22e0cdd8cfbe56a6463cd070fa10b', '{}', '5661315', NULL),
(176, 'char1:b84e23e9c1b47dd89763319caeac6e6555710d98', '{}', '9463606', '0'),
(177, 'char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', '{}', '7843454', NULL),
(178, 'char1:95dca5cb2973310c0989dfa161e99205fba95804', '{}', '1567949', NULL),
(179, 'char1:ac9045b4fbc38b14680f28f27cb1d24a6f0621c5', '{}', '1587833', NULL),
(180, 'char1:9d40f8e62b6aa370ddf060ed36c7f62289591bb2', '{}', '2600514', NULL),
(181, 'char1:0e68bf1e4ecb52c2633df10761685300bd46deac', '{}', '7036329', NULL),
(182, 'char1:d5469fca27128a5d48a59a8c469c88f07dfbc6fa', '{}', '5816696', NULL),
(183, 'char1:e7ef495524a908e9d5ad7ea9c41e4dff6c6d124b', '{}', '6997645', NULL),
(184, 'char1:22af894bd1e66eeac3144f314dec413b358caeb1', '{}', '2377449', NULL),
(185, 'char1:ce15b3785f525207c20845f51758419dcba901ca', '{}', '2834511', NULL),
(186, 'char1:56f68ed2317ea0a2aefcd3e8be158b4c4ca40a66', '{}', '5339985', NULL),
(187, 'char1:7f03c1e0cffa692606c0e4b05749345853c565a5', '{}', '3717181', NULL),
(188, 'char1:7312d20eb180ccdec05e72655b6396a1917f0573', '{}', '5818413', NULL),
(189, 'char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', '{}', '7938665', NULL),
(190, 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', '{}', '4289533', NULL),
(191, 'char1:40f8b841d191d2712a20cdc6713cd5256eb0efe6', '{}', '4310421', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_twitter_accounts`
--

CREATE TABLE `gksphone_twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `password` varchar(64) NOT NULL DEFAULT '0',
  `avatar_url` longtext DEFAULT NULL,
  `profilavatar` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `gksphone_twitter_accounts`
--

INSERT INTO `gksphone_twitter_accounts` (`id`, `username`, `password`, `avatar_url`, `profilavatar`) VALUES
(14, 'mama', 'lololo', 'https://media.discordapp.net/attachments/941327814911741992/1221546472403894334/screenshot.jpeg?ex=6612f8ce&is=660083ce&hm=43e45d8923a10a8a82d3b841bb566a76aee63c062fc37ce8924241adfee4e74f&', '/html/static/img/twitter/banner.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_twitter_likes`
--

CREATE TABLE `gksphone_twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_twitter_tweets`
--

CREATE TABLE `gksphone_twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) DEFAULT NULL,
  `message` varchar(256) NOT NULL,
  `image` longtext DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gksphone_users_contacts`
--

CREATE TABLE `gksphone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '-1',
  `avatar` longtext NOT NULL DEFAULT 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `historique_concessionnaire`
--

CREATE TABLE `historique_concessionnaire` (
  `type` varchar(60) NOT NULL,
  `gain` varchar(100) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `cost` varchar(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `vehicle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jail`
--

CREATE TABLE `jail` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `jailTime` int(11) NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `jailer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jail`
--

INSERT INTO `jail` (`id`, `identifier`, `name`, `jailTime`, `reason`, `jailer`) VALUES
(4, 'char1:44a131d62b193262e748bf42463a60d3c56af9da', 'ZILOX', 1, '1', 'ZILOX');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  `enable_billing` int(1) DEFAULT 0,
  `can_rob` int(1) DEFAULT 0,
  `can_handcuff` int(1) DEFAULT 0,
  `can_lockpick_cars` int(1) DEFAULT 0,
  `can_wash_vehicles` int(1) DEFAULT 0,
  `can_repair_vehicles` int(1) DEFAULT 0,
  `can_impound_vehicles` int(1) DEFAULT 0,
  `can_check_identity` int(1) DEFAULT 0,
  `can_check_vehicle_owner` int(1) DEFAULT 0,
  `can_check_driving_license` int(1) DEFAULT 0,
  `can_check_weapon_license` int(1) DEFAULT 0,
  `can_heal` int(1) DEFAULT 0,
  `can_revive` int(1) DEFAULT 0,
  `actions_menu_enabled` int(1) DEFAULT 1,
  `placeable_objects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`, `enable_billing`, `can_rob`, `can_handcuff`, `can_lockpick_cars`, `can_wash_vehicles`, `can_repair_vehicles`, `can_impound_vehicles`, `can_check_identity`, `can_check_vehicle_owner`, `can_check_driving_license`, `can_check_weapon_license`, `can_heal`, `can_revive`, `actions_menu_enabled`, `placeable_objects`) VALUES
('ambulance', 'Ambulance', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('bcso', 'Bcso', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('burgershot', 'Burgershot', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('concess', 'Concessionnaire', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('gardener', 'Jardinier', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('gruppe6', 'Gruppe 6', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('mecano', 'Mécano Nord', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('mechanic', 'Mécano', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('pizzeria', 'Pizzeria', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('police', 'LSPD', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('realestateagent', 'Agent immobilier', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('tabac', 'Tabac', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('taxi', 'Taxi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('trucker', 'Trucker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('unemployed', 'Chomeur', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('unicorn', 'Skybar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
('vigneron', 'Vigneron', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Chomeur', 30),
(2, 'mecano', 0, 'recrue', 'Recrue', 30),
(3, 'mecano', 1, 'novice', 'Novice', 30),
(4, 'mecano', 2, 'experimente', 'Experimente', 30),
(5, 'mecano', 3, 'chief', 'Chef d\'équipe', 30),
(6, 'mecano', 4, 'boss', 'Patron', 30),
(12, 'vigneron', 0, 'recrue', 'Recrue', 30),
(13, 'vigneron', 1, 'novice', 'Novice', 30),
(14, 'vigneron', 2, 'experimente', 'Experimente', 30),
(15, 'vigneron', 3, 'chief', 'Chef d\'équipe', 30),
(16, 'vigneron', 4, 'boss', 'Patron', 30),
(31, 'ambulance', 0, 'ambulance', 'Ambulancier', 30),
(32, 'ambulance', 1, 'medecin', 'Medecin', 30),
(33, 'ambulance', 2, 'chef_medecin', 'Medecin-chef', 30),
(34, 'ambulance', 3, 'boss', 'Directeur', 30),
(90, 'mechanic', 0, 'recrue', 'Recrue', 30),
(91, 'mechanic', 1, 'novice', 'Novice', 30),
(92, 'mechanic', 2, 'experimente', 'Experimente', 30),
(93, 'mechanic', 3, 'chief', 'Chef d\'équipe', 30),
(94, 'mechanic', 4, 'boss', 'Patron', 30),
(95, 'police', 0, 'recruit', 'Rookie', 30),
(96, 'police', 1, 'officer', 'Officier I', 30),
(97, 'police', 2, 'officer', 'Officier II', 30),
(98, 'police', 3, 'officer', 'Officier III', 30),
(99, 'police', 4, 'sergeant', 'Sergent', 30),
(100, 'police', 5, 'sergeant', 'Sergent Chef', 30),
(101, 'police', 6, 'lieutenant', 'Lieutenant', 30),
(102, 'police', 7, 'lieutenant', 'Capitaine', 30),
(103, 'police', 8, 'boss', 'Commandant', 30),
(104, 'realestateagent', 0, 'location', 'Location', 30),
(105, 'realestateagent', 1, 'vendeur', 'Vendeur', 30),
(106, 'realestateagent', 2, 'gestion', 'Gestion', 30),
(107, 'realestateagent', 3, 'boss', 'Patron', 30),
(130, 'tabac', 0, 'recrue', 'Tabagiste', 30),
(131, 'tabac', 1, 'gerant', 'Gérant', 30),
(132, 'tabac', 2, 'boss', 'Patron', 30),
(138, 'burgershot', 0, 'recrue', 'Recrue', 30),
(139, 'burgershot', 1, 'burgershot', 'Employer', 30),
(140, 'burgershot', 2, 'boss', 'Patron', 30),
(141, 'unicorn', 0, 'barman', 'Barman', 30),
(142, 'unicorn', 1, 'dancer', 'Danseur', 30),
(143, 'unicorn', 2, 'viceboss', 'Gérant', 30),
(144, 'unicorn', 3, 'boss', 'Patron', 30),
(158, 'bcso', 0, 'recruit', 'Cadet', 30),
(159, 'bcso', 1, 'officer', 'Officier', 30),
(160, 'bcso', 2, 'sergeant', 'Sergent', 30),
(161, 'bcso', 3, 'sergeant', 'Sergent-Formateur', 30),
(162, 'bcso', 4, 'sergeant', 'Sergent-Chef', 30),
(163, 'bcso', 5, 'lieutenant', 'Lieutenant', 30),
(164, 'bcso', 6, 'lieutenant', 'Capitaine', 30),
(165, 'bcso', 7, 'chief', 'commandant adjoint', 30),
(166, 'bcso', 8, 'boss', 'Commandant', 30),
(167, 'concess', 0, 'recruit', 'Recrue', 30),
(168, 'concess', 1, 'novice', 'Novice', 30),
(169, 'concess', 2, 'experienced', 'Experimente', 30),
(170, 'concess', 3, 'boss', 'Patron', 30),
(171, 'taxi', 0, 'recrue', ' Recrue', 30),
(172, 'taxi', 1, 'novice', ' Novice', 30),
(173, 'taxi', 2, 'experimente', 'Experimente', 30),
(174, 'taxi', 3, 'uber', 'Uber', 30),
(175, 'taxi', 4, 'chefequipe', 'chef d\'équipe', 30),
(176, 'taxi', 5, 'boss', 'PDG', 30),
(177, 'gruppe6', 0, 'recrue', ' Recrue', 30),
(178, 'gruppe6', 1, 'chefequipe', ' chef d\"équipe', 30),
(179, 'gruppe6', 2, 'boss', 'PDG', 30),
(586, 'gardener', 0, 'gardener', 'Jardinier', 30),
(824, 'trucker', 0, 'trucker', 'Routier', 30),
(825, 'pizzeria', 0, 'grade1', 'Stagiaire', 30),
(826, 'pizzeria', 1, 'grade2', 'Barman', 30),
(827, 'pizzeria', 2, 'grade3', 'Sommelier', 30),
(828, 'pizzeria', 3, 'grade4', 'Commis de restaurant', 30),
(829, 'pizzeria', 4, 'grade5', 'Chef de rang', 30),
(830, 'pizzeria', 5, 'grade6', 'Maître d\'hotel', 30),
(831, 'pizzeria', 6, 'grade7', 'Gestionnaire', 30),
(832, 'pizzeria', 7, 'boss', 'Directeur', 30);

-- --------------------------------------------------------

--
-- Structure de la table `keep_containers`
--

CREATE TABLE `keep_containers` (
  `id` int(11) NOT NULL,
  `random_id` varchar(50) NOT NULL,
  `container_type` varchar(50) NOT NULL,
  `owner_citizenid` varchar(50) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `position` text DEFAULT NULL,
  `zone` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `keep_containers_access_log`
--

CREATE TABLE `keep_containers_access_log` (
  `id` int(11) NOT NULL,
  `random_id` varchar(50) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `metadata` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code De La Route'),
('drive', 'Permis voiture'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'PPA');

-- --------------------------------------------------------

--
-- Structure de la table `multicharacter_codes`
--

CREATE TABLE `multicharacter_codes` (
  `#` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(46) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `okokBanking_societies`
--

CREATE TABLE `okokBanking_societies` (
  `society` varchar(255) DEFAULT NULL,
  `society_name` varchar(255) DEFAULT NULL,
  `value` int(50) DEFAULT NULL,
  `iban` varchar(255) NOT NULL,
  `is_withdrawing` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `okokBanking_transactions`
--

CREATE TABLE `okokBanking_transactions` (
  `id` int(11) NOT NULL,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `sender_identifier` varchar(255) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `value` int(50) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `okokBanking_transactions`
--

INSERT INTO `okokBanking_transactions` (`id`, `receiver_identifier`, `receiver_name`, `sender_identifier`, `sender_name`, `date`, `value`, `type`) VALUES
(27, 'bank', 'Bank (PIN)', 'char1:9127acb345c982bbad878a4480a2c558f6cffc9d', 'Leo Polla', '2023-11-12 12:40:09', 0, 'transfer'),
(28, 'bank', 'Bank (IBAN)', 'char1:9127acb345c982bbad878a4480a2c558f6cffc9d', 'Leo Polla', '2023-11-12 12:40:24', 500, 'transfer'),
(29, 'bank', 'Bank (PIN)', 'char1:7235e7329865de46e8b6fa566ac7b4f6c43690b0', 'Masta Goon', '2023-11-27 21:54:05', 0, 'transfer'),
(30, 'bank', 'Bank (PIN)', 'char1:0faa9059128b61f27fb23032ec8a3b1956d652a1', 'Smoke Fernandez', '2023-12-02 21:10:49', 0, 'transfer'),
(31, 'bank', 'Bank (PIN)', 'char1:44a131d62b193262e748bf42463a60d3c56af9da', 'Zilox Rox', '2023-12-03 12:40:07', 0, 'transfer'),
(32, 'bank', 'Bank (PIN)', 'char1:9ba6633b190319f98dfd9e4584abecb7c7647152', 'Emile Cooper', '2023-12-15 18:11:50', 0, 'transfer'),
(33, 'bank', 'Bank Account', 'char1:9ba6633b190319f98dfd9e4584abecb7c7647152', 'Emile Cooper', '2023-12-15 18:12:03', 1, 'deposit'),
(34, 'bank', 'Bank Account', 'char1:9ba6633b190319f98dfd9e4584abecb7c7647152', 'Emile Cooper', '2023-12-15 18:12:16', 1, 'deposit'),
(35, 'bank', 'Bank (IBAN)', 'char1:b4c7fbd5c6edaa7ca91ee9fbfcf4844b314be04a', 'Leuzy Off', '2024-01-11 13:18:03', 500, 'transfer'),
(36, 'bank', 'Bank Account', 'char1:b4c7fbd5c6edaa7ca91ee9fbfcf4844b314be04a', 'Leuzy Off', '2024-01-11 13:18:22', 9000, 'deposit'),
(37, 'bank', 'Bank (IBAN)', 'char1:ce0b142ac12f87b4abf90afeea7edf1fdb127a7c', 'Alex White', '2024-01-26 21:59:22', 500, 'transfer'),
(38, 'bank', 'Bank (PIN)', 'char1:ce0b142ac12f87b4abf90afeea7edf1fdb127a7c', 'Alex White', '2024-01-26 21:59:25', 0, 'transfer'),
(39, 'bank', 'Bank (PIN)', 'char1:3ff875e52e6fd4c837cd995db5bed281aa89999a', 'Zack Gray', '2024-01-26 22:05:42', 0, 'transfer'),
(40, 'char1:44a131d62b193262e748bf42463a60d3c56af9da', 'Zilox Rox', 'bank', 'Bank Account', '2024-01-27 15:17:59', 500, 'withdraw'),
(41, 'bank', 'Bank (PIN)', 'char1:89baeb54743341f2da2a65730f5812f736c45b68', 'Ryan Mandros', '2024-02-01 22:21:48', 0, 'transfer'),
(42, 'bank', 'Bank (PIN)', 'char1:c01d7635b6962510ae687fe97f0f929964cac968', 'Victoria Spanish', '2024-02-01 22:21:54', 0, 'transfer'),
(43, 'bank', 'Bank (PIN)', 'char1:f5e52cb88e60f1454876c921205dc745ba84e3d5', 'Mai Spanish', '2024-02-01 22:21:57', 0, 'transfer'),
(44, 'char1:89baeb54743341f2da2a65730f5812f736c45b68', 'Ryan Mandros', 'bank', 'Bank Account', '2024-02-01 22:22:00', 700, 'withdraw'),
(45, 'char1:f5e52cb88e60f1454876c921205dc745ba84e3d5', 'Mai Spanish', 'bank', 'Bank Account', '2024-02-01 22:22:03', 1600, 'withdraw'),
(46, 'char1:c01d7635b6962510ae687fe97f0f929964cac968', 'Victoria Spanish', 'bank', 'Bank Account', '2024-02-01 22:22:07', 1710, 'withdraw'),
(47, 'bank', 'Bank (IBAN)', 'char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', 'John Medina', '2024-02-08 18:22:23', 500, 'transfer'),
(48, 'bank', 'Bank (PIN)', 'char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', 'John Medina', '2024-02-08 18:22:27', 0, 'transfer'),
(49, 'char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', 'John Medina', 'bank', 'Bank Account', '2024-02-08 18:22:34', 1000, 'withdraw'),
(50, 'bank', 'Bank (PIN)', 'char1:fc758c1ca0eecf999d94e3c9dc061301cc57672e', 'Test Base', '2024-02-10 19:54:24', 0, 'transfer'),
(51, 'bank', 'Bank (IBAN)', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68', 'Sk Dsdsd', '2024-02-12 19:56:49', 500, 'transfer'),
(52, 'bank', 'Bank (PIN)', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68', 'Sk Dsdsd', '2024-02-12 19:56:54', 0, 'transfer'),
(53, 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68', 'Sk Dsdsd', 'bank', 'Bank Account', '2024-02-12 19:57:02', 500, 'withdraw'),
(54, 'bank', 'Bank (IBAN)', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92', 'Kayden Brooks', '2024-02-12 19:57:02', 500, 'transfer'),
(55, 'bank', 'Bank (PIN)', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92', 'Kayden Brooks', '2024-02-12 19:57:06', 0, 'transfer'),
(56, 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92', 'Kayden Brooks', 'bank', 'Bank Account', '2024-02-12 19:57:17', 1020, 'withdraw'),
(57, 'bank', 'Bank (PIN)', 'char1:7cc8b7b28206ead2f2cba652d8138ff73e9987fb', 'Aaron Stoev', '2024-03-05 20:37:28', 0, 'transfer'),
(58, 'bank', 'Bank Account', 'char1:7cc8b7b28206ead2f2cba652d8138ff73e9987fb', 'Aaron Stoev', '2024-03-05 20:38:06', 1000, 'deposit'),
(59, 'bank', 'Bank Account', 'char1:7cc8b7b28206ead2f2cba652d8138ff73e9987fb', 'Aaron Stoev', '2024-03-05 20:38:14', 1000, 'deposit'),
(60, 'char1:7cc8b7b28206ead2f2cba652d8138ff73e9987fb', 'Aaron Stoev', 'bank', 'Bank Account', '2024-03-05 20:38:20', 100, 'withdraw'),
(61, 'bank', 'Bank (PIN)', 'char1:b84e23e9c1b47dd89763319caeac6e6555710d98', 'Guillaume Henry', '2024-03-14 01:05:12', 0, 'transfer'),
(62, 'char1:b84e23e9c1b47dd89763319caeac6e6555710d98', 'Guillaume Henry', 'bank', 'Bank Account', '2024-03-14 01:06:38', 1500, 'withdraw'),
(63, 'bank', 'Bank (IBAN)', 'char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', 'Zephyr Zephyr', '2024-03-23 22:54:33', 500, 'transfer'),
(64, 'char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', 'Zephyr Zephyr', 'bank', 'Bank Account', '2024-03-23 22:54:39', 1000, 'withdraw'),
(65, 'char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', 'Zephyr Zephyr', 'bank', 'Bank Account', '2024-03-23 23:14:55', 10000, 'withdraw'),
(66, 'bank', 'Bank (PIN)', 'char1:0e68bf1e4ecb52c2633df10761685300bd46deac', 'Test Dev', '2024-03-25 18:11:53', 0, 'transfer'),
(67, 'char1:0e68bf1e4ecb52c2633df10761685300bd46deac', 'Test Dev', 'bank', 'Bank Account', '2024-03-25 18:12:02', 1500, 'withdraw'),
(68, 'bank', 'Bank (PIN)', 'char1:7f03c1e0cffa692606c0e4b05749345853c565a5', 'A B', '2024-04-05 19:58:55', 0, 'transfer'),
(69, 'bank', 'Bank (PIN)', 'char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'Aaron Smith', '2024-07-12 16:23:42', 0, 'transfer'),
(70, 'bank', 'Bank (PIN)', 'char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'Aaron Smith', '2024-07-15 18:44:40', 0, 'transfer'),
(71, 'bank', 'Bank (IBAN)', 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'Leuzy Leuzy', '2024-07-21 12:33:47', 500, 'transfer'),
(72, 'bank', 'Bank (PIN)', 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'Leuzy Leuzy', '2024-07-21 12:33:55', 0, 'transfer'),
(73, 'bank', 'Bank Account', 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'Leuzy Leuzy', '2024-07-21 12:34:03', 300, 'deposit'),
(74, 'bank', 'Bank Account', 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'Leuzy Leuzy', '2024-07-21 12:34:06', 333, 'deposit');

-- --------------------------------------------------------

--
-- Structure de la table `okokbilling`
--

CREATE TABLE `okokbilling` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `receiver_identifier` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `society` varchar(255) NOT NULL,
  `society_name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `invoice_value` int(11) NOT NULL,
  `fees_amount` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `notes` varchar(255) DEFAULT ' ',
  `sent_date` varchar(255) NOT NULL,
  `limit_pay_date` varchar(255) NOT NULL,
  `paid_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `outfits`
--

CREATE TABLE `outfits` (
  `id` int(11) NOT NULL,
  `identifier` varchar(46) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `ped` longtext DEFAULT NULL,
  `components` longtext DEFAULT NULL,
  `props` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `outfits`
--

INSERT INTO `outfits` (`id`, `identifier`, `name`, `ped`, `components`, `props`) VALUES
(1, 'char1:9127acb345c982bbad878a4480a2c558f6cffc9d', 'tenu 1', '\"mp_m_freemode_01\"', '[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":0,\"component_id\":2,\"texture\":0},{\"drawable\":20,\"component_id\":3,\"texture\":0},{\"drawable\":48,\"component_id\":4,\"texture\":0},{\"drawable\":10,\"component_id\":5,\"texture\":0},{\"drawable\":20,\"component_id\":6,\"texture\":0},{\"drawable\":47,\"component_id\":7,\"texture\":0},{\"drawable\":20,\"component_id\":8,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":66,\"component_id\":11,\"texture\":0}]', '[{\"drawable\":32,\"prop_id\":0,\"texture\":0},{\"drawable\":20,\"prop_id\":1,\"texture\":0},{\"drawable\":16,\"prop_id\":2,\"texture\":0},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}]'),
(2, 'char1:65f47c967615c26a805df32409c24b04b03a3afa', '1', '\"mp_m_freemode_01\"', '[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":3,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":0,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}]', '[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]'),
(3, 'char1:65f47c967615c26a805df32409c24b04b03a3afa', '2', '\"mp_m_freemode_01\"', '[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":50},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":0},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":0},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":0}]', '[{\"prop_id\":0,\"texture\":0,\"drawable\":7},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]'),
(4, 'char1:b9bbf72f78f1b78a069c1c0dddb429ee7c81c371', 'dev', '\"mp_m_freemode_01\"', '[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":169,\"component_id\":1,\"texture\":1},{\"drawable\":0,\"component_id\":2,\"texture\":0},{\"drawable\":31,\"component_id\":3,\"texture\":0},{\"drawable\":153,\"component_id\":4,\"texture\":5},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":118,\"component_id\":6,\"texture\":5},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":15,\"component_id\":8,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":407,\"component_id\":11,\"texture\":5}]', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]'),
(5, 'char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'test', '\"mp_m_freemode_01\"', '[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":79,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":48,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":23,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":346,\"texture\":0,\"component_id\":11}]', '[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":42,\"texture\":0,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]');

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `cooldown` tinyint(1) NOT NULL DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `cooldown`, `glovebox`, `trunk`) VALUES
('char1:0628a359896dd5714d7a0d784414a5b6e83acbcb', 'TDKU4186', '{\"modBackWheels\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modTrimA\":-1,\"modEngine\":-1,\"wheels\":3,\"windowsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true},\"modHood\":-1,\"modAirFilter\":-1,\"extras\":{\"11\":false,\"12\":false,\"1\":false,\"6\":1,\"5\":false},\"fuelLevel\":65.0,\"modTurbo\":false,\"tyreBurst\":{\"1\":false,\"4\":false,\"0\":false,\"5\":false},\"color2\":0,\"modFender\":-1,\"model\":-808457413,\"modHorns\":-1,\"modLightbar\":-1,\"doorsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false},\"modSideSkirt\":-1,\"modRightFender\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"modDoorR\":-1,\"tankHealth\":1000.0,\"modTrimB\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"dashboardColor\":0,\"modSeats\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":9.0,\"modExhaust\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"plate\":\"TDKU4186\",\"modXenon\":false,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modStruts\":-1,\"pearlescentColor\":67,\"modTrunk\":-1,\"xenonColor\":255,\"modGrille\":-1,\"modDial\":-1,\"windowTint\":-1,\"bodyHealth\":1000.0,\"wheelColor\":156,\"modSuspension\":-1,\"interiorColor\":0,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"color1\":73,\"plateIndex\":0,\"modSpoilers\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:0628a359896dd5714d7a0d784414a5b6e83acbcb', 'IGCX1831', '{\"modBackWheels\":-1,\"modRearBumper\":-1,\"modAerials\":-1,\"engineHealth\":1000.0,\"modTrimA\":-1,\"modEngine\":-1,\"wheels\":3,\"windowsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"7\":false,\"4\":true,\"5\":true},\"modHood\":-1,\"modAirFilter\":-1,\"extras\":{\"11\":1,\"12\":false,\"1\":false,\"6\":1,\"5\":false},\"fuelLevel\":65.0,\"modTurbo\":false,\"tyreBurst\":{\"1\":false,\"4\":false,\"0\":false,\"5\":false},\"color2\":0,\"modFender\":-1,\"model\":-808457413,\"modHorns\":-1,\"modLightbar\":-1,\"doorsBroken\":{\"2\":false,\"3\":false,\"0\":false,\"1\":false,\"6\":false,\"4\":false,\"5\":false},\"modSideSkirt\":-1,\"modRightFender\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"modDoorR\":-1,\"tankHealth\":1000.0,\"modTrimB\":-1,\"modSpeakers\":-1,\"tyreSmokeColor\":[255,255,255],\"dashboardColor\":0,\"modSeats\":-1,\"modArchCover\":-1,\"modOrnaments\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":3.0,\"modExhaust\":-1,\"modPlateHolder\":-1,\"modTank\":-1,\"modHydrolic\":-1,\"modShifterLeavers\":-1,\"modDoorSpeaker\":-1,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"plate\":\"IGCX1831\",\"modXenon\":false,\"modTransmission\":-1,\"modEngineBlock\":-1,\"modStruts\":-1,\"pearlescentColor\":5,\"modTrunk\":-1,\"xenonColor\":255,\"modGrille\":-1,\"modDial\":-1,\"windowTint\":-1,\"bodyHealth\":1000.0,\"wheelColor\":156,\"modSuspension\":-1,\"interiorColor\":0,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"modBrakes\":-1,\"color1\":2,\"plateIndex\":0,\"modSpoilers\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:a49bc1b55762ba1a95293fbe415c6a7a24dd566d', 'TQKJ8783', '{\"modArmor\":-1,\"interiorColor\":0,\"modPlateHolder\":-1,\"paintType2\":0,\"modSuspension\":-1,\"modAerials\":-1,\"wheelWidth\":0.0,\"modDoorSpeaker\":-1,\"modDoorR\":-1,\"oilLevel\":5,\"wheelColor\":156,\"driftTyres\":false,\"plateIndex\":0,\"modHood\":-1,\"model\":736902334,\"color2\":0,\"modSpoilers\":-1,\"fuelLevel\":64.31,\"modStruts\":-1,\"modEngine\":-1,\"modExhaust\":-1,\"modFender\":-1,\"modTurbo\":false,\"modTank\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"modSeats\":-1,\"modEngineBlock\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modSteeringWheel\":-1,\"xenonColor\":255,\"extras\":{\"11\":1,\"12\":1},\"modRoof\":-1,\"engineHealth\":999,\"modSubwoofer\":-1,\"pearlescentColor\":38,\"modDashboard\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"bulletProofTyres\":true,\"modHydrolic\":-1,\"modRoofLivery\":-1,\"modBackWheels\":-1,\"modSpeakers\":-1,\"wheelSize\":0.0,\"modShifterLeavers\":-1,\"plate\":\"TQKJ8783\",\"modCustomTiresR\":false,\"modNitrous\":-1,\"dirtLevel\":8,\"modTrimA\":-1,\"modBrakes\":-1,\"modLivery\":-1,\"modRightFender\":-1,\"wheels\":0,\"tyres\":[],\"tankHealth\":1000,\"neonColor\":[255,0,255],\"modLightbar\":-1,\"modTrunk\":-1,\"doors\":[],\"modGrille\":-1,\"bodyHealth\":895,\"paintType1\":0,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modOrnaments\":-1,\"modDial\":-1,\"modCustomTiresF\":false,\"neonEnabled\":[false,false,false,false],\"modXenon\":false,\"color1\":33,\"modFrame\":-1,\"modSideSkirt\":-1,\"modTransmission\":-1,\"modHydraulics\":false,\"dashboardColor\":0,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modHorns\":-1,\"windows\":[0,1],\"modFrontWheels\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:0faa9059128b61f27fb23032ec8a3b1956d652a1', 'LOPEZ57', '{\"modAirFilter\":-1,\"color2\":64,\"modSeats\":-1,\"bodyHealth\":1000.0,\"modHydrolic\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"pearlescentColor\":70,\"modEngine\":-1,\"color1\":64,\"modVanityPlate\":-1,\"modFrame\":-1,\"tankHealth\":1000.0,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"fuelLevel\":65.0,\"modTrimB\":-1,\"modRoof\":-1,\"modFender\":-1,\"wheelColor\":158,\"modSmokeEnabled\":false,\"extras\":[],\"modHorns\":-1,\"modTurbo\":false,\"interiorColor\":31,\"modDoorR\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"wheels\":0,\"modRearBumper\":-1,\"xenonColor\":255,\"dashboardColor\":134,\"modGrille\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"dirtLevel\":4.0,\"modSpeakers\":-1,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modHood\":-1,\"modTrimA\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"modTrunk\":-1,\"modAPlate\":-1,\"modDashboard\":-1,\"windowsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"5\":true,\"4\":true,\"7\":false,\"6\":false},\"modLivery\":-1,\"model\":-295689028,\"engineHealth\":1000.0,\"plateIndex\":0,\"modDial\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"tyreBurst\":{\"5\":false,\"0\":false,\"1\":false,\"4\":false},\"modBrakes\":-1,\"plate\":\"LOPEZ57\",\"modLightbar\":-1,\"modBackWheels\":-1,\"tyreSmokeColor\":[255,255,255],\"modExhaust\":-1,\"modStruts\":-1,\"modXenon\":false,\"doorsBroken\":{\"1\":false,\"0\":false,\"3\":false,\"2\":false,\"4\":false},\"modAerials\":-1}', 'car', NULL, 1, 0, NULL, NULL),
('char1:9ba6633b190319f98dfd9e4584abecb7c7647152', 'LJJV6193', '{\"fuelLevel\":94.45,\"modSpoilers\":-1,\"paintType1\":7,\"tankHealth\":985,\"neonEnabled\":[false,false,false,false],\"modSideSkirt\":-1,\"modFrontBumper\":-1,\"modGrille\":-1,\"wheels\":7,\"modTank\":-1,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modAPlate\":-1,\"color1\":112,\"modLivery\":-1,\"bodyHealth\":923,\"driftTyres\":false,\"modNitrous\":-1,\"modShifterLeavers\":-1,\"modHydraulics\":false,\"modTurbo\":false,\"modBackWheels\":-1,\"modRearBumper\":-1,\"modRightFender\":-1,\"modFrame\":-1,\"modHorns\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modPlateHolder\":-1,\"modArmor\":-1,\"modAerials\":-1,\"model\":1456336509,\"modDoorSpeaker\":-1,\"dirtLevel\":0,\"modBrakes\":-1,\"modEngine\":1,\"modSuspension\":-1,\"modLightbar\":-1,\"modXenon\":false,\"modCustomTiresF\":false,\"windows\":[4,5,7],\"engineHealth\":991,\"modRoofLivery\":-1,\"modEngineBlock\":-1,\"modSubwoofer\":-1,\"extras\":[],\"pearlescentColor\":4,\"xenonColor\":255,\"color2\":27,\"modStruts\":-1,\"modOrnaments\":-1,\"modSeats\":-1,\"wheelWidth\":1.0,\"modDial\":-1,\"dashboardColor\":0,\"modTransmission\":-1,\"doors\":[],\"modWindows\":-1,\"windowTint\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"tyres\":[],\"plateIndex\":0,\"wheelColor\":0,\"modTrimA\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modTrimB\":-1,\"modFrontWheels\":-1,\"oilLevel\":7,\"bulletProofTyres\":true,\"modFender\":-1,\"wheelSize\":1.0,\"modCustomTiresR\":false,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"interiorColor\":4,\"modDoorR\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"plate\":\"LJJV6193\",\"paintType2\":7,\"modHood\":-1}', 'car', NULL, 1, 0, NULL, NULL),
('char1:e2a9a79ffaa3f8eeb795dee369d1cc894f055aed', 'EZTX8726', '{\"engineHealth\":1000.0,\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"pearlescentColor\":5,\"bodyHealth\":1000.0,\"modShifterLeavers\":-1,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modArchCover\":-1,\"windowsBroken\":{\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false,\"0\":false,\"1\":false},\"modFrontWheels\":-1,\"modSuspension\":-1,\"dirtLevel\":4.0,\"modAerials\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"modRightFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modLightbar\":-1,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"modDial\":-1,\"xenonColor\":255,\"modDoorR\":-1,\"modHood\":-1,\"fuelLevel\":60.0,\"modHorns\":-1,\"modGrille\":-1,\"dashboardColor\":156,\"modEngineBlock\":-1,\"modTrimB\":-1,\"color2\":36,\"modStruts\":-1,\"modFender\":-1,\"modTurbo\":false,\"tankHealth\":1000.0,\"extras\":[],\"modOrnaments\":-1,\"color1\":20,\"modArmor\":-1,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modSteeringWheel\":-1,\"tyreBurst\":{\"4\":false,\"1\":false,\"0\":false,\"5\":false},\"modTank\":-1,\"interiorColor\":27,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"modBackWheels\":-1,\"wheelColor\":134,\"wheels\":7,\"model\":1755697647,\"windowTint\":-1,\"modAirFilter\":-1,\"modTrimA\":-1,\"modRoof\":-1,\"modTransmission\":-1,\"plateIndex\":0,\"doorsBroken\":{\"2\":false,\"3\":false,\"4\":false,\"0\":false,\"1\":false},\"plate\":\"EZTX8726\"}', 'car', NULL, 0, 0, NULL, NULL),
('char1:7763cb60d2d7a42df3d16f35292ce53b0efcd560', 'FGLL7739', '{\"modXenon\":false,\"modHood\":-1,\"modDoorR\":-1,\"xenonColor\":255,\"modTank\":-1,\"pearlescentColor\":32,\"wheelColor\":156,\"modArchCover\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"tankHealth\":1000.0,\"modLivery\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"dirtLevel\":7.0,\"modBackWheels\":-1,\"modPlateHolder\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"color2\":0,\"tyreBurst\":{\"1\":false,\"4\":false,\"5\":false,\"0\":false},\"modEngine\":-1,\"doorsBroken\":{\"1\":false,\"0\":false,\"4\":false,\"3\":false,\"2\":false},\"modSuspension\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"interiorColor\":0,\"modFender\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"plateIndex\":0,\"dashboardColor\":0,\"modRoof\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"fuelLevel\":65.0,\"modOrnaments\":-1,\"windowsBroken\":{\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false},\"modLightbar\":-1,\"windowTint\":-1,\"modDial\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modSmokeEnabled\":false,\"modEngineBlock\":-1,\"engineHealth\":1000.0,\"color1\":31,\"modRearBumper\":-1,\"wheels\":7,\"modSpoilers\":-1,\"extras\":{\"12\":false,\"10\":false},\"model\":1032823388,\"modSteeringWheel\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"plate\":\"FGLL7739\",\"modSeats\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:7763cb60d2d7a42df3d16f35292ce53b0efcd560', 'SIJA1557', '{\"modXenon\":false,\"modHood\":-1,\"modDoorR\":-1,\"xenonColor\":255,\"modTank\":-1,\"pearlescentColor\":111,\"wheelColor\":156,\"modArchCover\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"tankHealth\":1000.0,\"modLivery\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"modLightbar\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"modRightFender\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"5\":false,\"4\":false},\"modEngine\":-1,\"doorsBroken\":{\"1\":false,\"0\":false,\"4\":false,\"3\":false,\"2\":false},\"modSuspension\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"interiorColor\":0,\"modFender\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"plateIndex\":0,\"dashboardColor\":0,\"modRoof\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"fuelLevel\":65.0,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"windowTint\":-1,\"modHorns\":-1,\"engineHealth\":1000.0,\"plate\":\"SIJA1557\",\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"color2\":0,\"color1\":4,\"modPlateHolder\":-1,\"wheels\":0,\"modSpoilers\":-1,\"extras\":[],\"model\":330661258,\"dirtLevel\":2.0,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modDial\":-1,\"windowsBroken\":{\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false},\"modSeats\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:ccd9f063129e1edbb81068d3ccf24a8accc86831', 'LGDP1967', '{\"modXenon\":false,\"modHood\":-1,\"modDoorR\":-1,\"xenonColor\":255,\"modTank\":-1,\"pearlescentColor\":111,\"wheelColor\":156,\"modArchCover\":-1,\"modFrame\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"modArmor\":-1,\"tankHealth\":1000.0,\"modLivery\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"modSteeringWheel\":-1,\"modLightbar\":-1,\"modEngineBlock\":-1,\"modExhaust\":-1,\"modTrimA\":-1,\"modRightFender\":-1,\"tyreBurst\":{\"1\":false,\"0\":false,\"5\":false,\"4\":false},\"modEngine\":-1,\"doorsBroken\":{\"1\":false,\"0\":false,\"4\":false,\"3\":false,\"2\":false},\"modSuspension\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"interiorColor\":0,\"modFender\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"tyreSmokeColor\":[255,255,255],\"modTurbo\":false,\"plateIndex\":0,\"dashboardColor\":0,\"modRoof\":-1,\"modFrontWheels\":-1,\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0,\"modSpeakers\":-1,\"modAerials\":-1,\"fuelLevel\":65.0,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modRearBumper\":-1,\"windowTint\":-1,\"modHorns\":-1,\"engineHealth\":1000.0,\"plate\":\"LGDP1967\",\"modBackWheels\":-1,\"modDoorSpeaker\":-1,\"color2\":6,\"color1\":6,\"modPlateHolder\":-1,\"wheels\":0,\"modSpoilers\":-1,\"extras\":[],\"model\":330661258,\"dirtLevel\":6.0,\"modVanityPlate\":-1,\"modBrakes\":-1,\"modGrille\":-1,\"modDial\":-1,\"windowsBroken\":{\"1\":false,\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false},\"modSeats\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:aeaf6a507d995a6d7cbf9a7550e128010359d148', 'EZ', '{\"paintType2\":7,\"driftTyres\":false,\"modRoofLivery\":-1,\"plateIndex\":3,\"modFender\":-1,\"modFrame\":-1,\"wheels\":0,\"modTrimA\":-1,\"modNitrous\":-1,\"modFrontWheels\":-1,\"modHydraulics\":false,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"color2\":1,\"fuelLevel\":62.93,\"modTrunk\":-1,\"tyres\":[],\"modAerials\":-1,\"paintType1\":7,\"modDial\":-1,\"modXenon\":false,\"modGrille\":-1,\"modSmokeEnabled\":false,\"modStruts\":-1,\"neonColor\":[255,0,255],\"tankHealth\":999,\"modLivery\":-1,\"modRightFender\":-1,\"modAPlate\":-1,\"extras\":{\"10\":1,\"12\":0},\"modTank\":-1,\"neonEnabled\":[false,false,false,false],\"doors\":[],\"model\":970598228,\"wheelColor\":156,\"modArchCover\":-1,\"interiorColor\":0,\"color1\":1,\"modSpoilers\":-1,\"modSuspension\":-1,\"engineHealth\":983,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"modLightbar\":-1,\"plate\":\"EZ\",\"wheelSize\":1.0,\"modHorns\":-1,\"modDoorR\":-1,\"modSeats\":-1,\"modOrnaments\":-1,\"xenonColor\":255,\"modBackWheels\":-1,\"modCustomTiresF\":false,\"modRearBumper\":-1,\"modEngine\":-1,\"modDoorSpeaker\":-1,\"bodyHealth\":989,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"oilLevel\":5,\"modEngineBlock\":-1,\"modCustomTiresR\":false,\"dashboardColor\":0,\"wheelWidth\":1.0,\"bulletProofTyres\":true,\"modBrakes\":-1,\"modTransmission\":-1,\"windowTint\":-1,\"windows\":[4,5],\"modSubwoofer\":-1,\"modRoof\":-1,\"modFrontBumper\":-1,\"pearlescentColor\":5,\"modSpeakers\":-1,\"modHood\":-1,\"tyreSmokeColor\":[255,255,255],\"dirtLevel\":11,\"modExhaust\":-1,\"modWindows\":-1,\"modArmor\":-1,\"modAirFilter\":-1,\"modSideSkirt\":-1,\"modTurbo\":false}', 'car', NULL, 0, 0, NULL, NULL),
('char1:ed80c260c095256057dc39835cee1298e983cbc2', 'IJERFG', '{\"modTrunk\":-1,\"engineHealth\":935,\"modRightFender\":-1,\"modCustomTiresR\":false,\"modTurbo\":false,\"plateIndex\":3,\"modNitrous\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"modEngine\":-1,\"color2\":4,\"paintType2\":7,\"modFrontWheels\":-1,\"modFender\":-1,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modBrakes\":-1,\"modFrontBumper\":-1,\"dirtLevel\":7,\"bodyHealth\":936,\"modSeats\":-1,\"wheelWidth\":1.0,\"modDoorR\":-1,\"modXenon\":false,\"fuelLevel\":64.51,\"plate\":\"IJERFG\",\"bulletProofTyres\":true,\"modVanityPlate\":-1,\"modLivery\":-1,\"modCustomTiresF\":false,\"modDial\":-1,\"oilLevel\":5,\"extras\":{\"10\":0,\"12\":0},\"modSubwoofer\":-1,\"modTransmission\":-1,\"modHydrolic\":-1,\"modGrille\":-1,\"modShifterLeavers\":-1,\"modLightbar\":-1,\"modHorns\":-1,\"modSpeakers\":-1,\"wheelColor\":156,\"color1\":4,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"interiorColor\":0,\"dashboardColor\":0,\"modOrnaments\":-1,\"modSmokeEnabled\":false,\"modWindows\":-1,\"windowTint\":-1,\"pearlescentColor\":111,\"modEngineBlock\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modArmor\":-1,\"modAerials\":-1,\"wheels\":0,\"modAPlate\":-1,\"modRoof\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modStruts\":-1,\"modTrimB\":-1,\"xenonColor\":255,\"modPlateHolder\":-1,\"modDashboard\":-1,\"modDoorSpeaker\":-1,\"modSideSkirt\":-1,\"modHydraulics\":false,\"modTrimA\":-1,\"modTank\":-1,\"modSpoilers\":-1,\"modRoofLivery\":-1,\"tyres\":[],\"model\":970598228,\"paintType1\":7,\"windows\":[4,5,7],\"modHood\":-1,\"tankHealth\":988,\"doors\":[],\"driftTyres\":false,\"neonEnabled\":[false,false,false,false],\"wheelSize\":1.0}', 'car', NULL, 0, 0, NULL, NULL),
('char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', 'AILV4152', '{\"modDoorR\":-1,\"windowTint\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"modTransmission\":-1,\"wheels\":0,\"color1\":6,\"modDashboard\":-1,\"fuelLevel\":65.0,\"modHorns\":-1,\"tyreBurst\":{\"1\":false,\"5\":false,\"0\":false,\"4\":false},\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0,\"modLivery\":-1,\"modFrame\":-1,\"dashboardColor\":0,\"modGrille\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"xenonColor\":255,\"modTrimA\":-1,\"modHood\":-1,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modFender\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modAerials\":-1,\"interiorColor\":0,\"modTurbo\":false,\"modTrimB\":-1,\"modEngineBlock\":-1,\"extras\":{\"10\":false,\"12\":1},\"neonColor\":[255,0,255],\"plateIndex\":0,\"modArchCover\":-1,\"modBrakes\":-1,\"modSuspension\":-1,\"pearlescentColor\":111,\"wheelColor\":156,\"engineHealth\":1000.0,\"tankHealth\":1000.0,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modFrontBumper\":-1,\"modTrunk\":-1,\"model\":-344943009,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modEngine\":-1,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"modDial\":-1,\"modHydrolic\":-1,\"modLightbar\":-1,\"color2\":0,\"modTank\":-1,\"doorsBroken\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"0\":false},\"dirtLevel\":8.0,\"modAPlate\":-1,\"modDoorSpeaker\":-1,\"modSpoilers\":-1,\"plate\":\"AILV4152\",\"modRoof\":-1,\"modFrontWheels\":-1,\"windowsBroken\":{\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":true,\"6\":false,\"7\":false,\"0\":false},\"modExhaust\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:65f47c967615c26a805df32409c24b04b03a3afa', 'JKYU1469', '{\"modAirFilter\":-1,\"plate\":\"JKYU1469\",\"modLivery\":-1,\"modRightFender\":-1,\"modTurbo\":false,\"tankHealth\":1000,\"windowTint\":-1,\"paintType2\":7,\"dashboardColor\":0,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modFrame\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"modTank\":-1,\"modCustomTiresR\":false,\"modSubwoofer\":-1,\"modCustomTiresF\":false,\"modTransmission\":-1,\"modAerials\":-1,\"modFender\":-1,\"wheels\":7,\"modDial\":-1,\"extras\":{\"1\":1,\"10\":0,\"12\":0},\"pearlescentColor\":111,\"xenonColor\":255,\"wheelColor\":156,\"model\":-1216765807,\"modBackWheels\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"bulletProofTyres\":true,\"dirtLevel\":4,\"modTrimA\":-1,\"modRearBumper\":-1,\"modHydraulics\":false,\"modFrontWheels\":-1,\"oilLevel\":5,\"modSteeringWheel\":-1,\"modWindows\":-1,\"windows\":[4,5,7],\"modDashboard\":-1,\"doors\":[],\"modSpeakers\":-1,\"modOrnaments\":-1,\"modDoorSpeaker\":-1,\"modSeats\":-1,\"modStruts\":-1,\"modGrille\":-1,\"engineHealth\":1000,\"modFrontBumper\":-1,\"bodyHealth\":1000,\"modAPlate\":-1,\"tyres\":[],\"modRoof\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modHood\":-1,\"driftTyres\":false,\"modArchCover\":-1,\"modHorns\":-1,\"modNitrous\":-1,\"wheelSize\":1.0,\"modDoorR\":-1,\"neonEnabled\":[false,false,false,false],\"paintType1\":7,\"modSpoilers\":-1,\"color1\":4,\"modSmokeEnabled\":false,\"modEngine\":-1,\"modBrakes\":-1,\"modVanityPlate\":-1,\"color2\":12,\"modExhaust\":-1,\"wheelWidth\":1.0,\"modLightbar\":-1,\"modArmor\":-1,\"modRoofLivery\":-1,\"plateIndex\":0,\"interiorColor\":0,\"modTrunk\":-1,\"fuelLevel\":64.68}', 'car', NULL, 1, 0, NULL, NULL),
('char1:b9bbf72f78f1b78a069c1c0dddb429ee7c81c371', 'XBIW7525', '{\"windowTint\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"wheels\":0,\"modEngineBlock\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0,\"modArchCover\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":3,\"doorsBroken\":{\"4\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modBackWheels\":-1,\"modTurbo\":false,\"modXenon\":false,\"color1\":6,\"pearlescentColor\":111,\"xenonColor\":255,\"modGrille\":-1,\"modShifterLeavers\":-1,\"plate\":\"XBIW7525\",\"modHydrolic\":-1,\"fuelLevel\":60.0,\"modHood\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modLightbar\":-1,\"tyreBurst\":{\"1\":false,\"4\":false,\"5\":false,\"0\":false},\"dashboardColor\":0,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"extras\":[],\"tankHealth\":1000.0,\"model\":-1045541610,\"modSteeringWheel\":-1,\"modAerials\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modTank\":-1,\"modDoorR\":-1,\"color2\":6,\"modTrimB\":-1,\"modSpeakers\":-1,\"windowsBroken\":{\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modAPlate\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"interiorColor\":0,\"modFrontWheels\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modPlateHolder\":-1,\"modHorns\":-1,\"dirtLevel\":5.0,\"wheelColor\":156,\"modVanityPlate\":-1,\"modSeats\":-1,\"modRightFender\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:b9bbf72f78f1b78a069c1c0dddb429ee7c81c371', 'FIZZ3532', '{\"windowTint\":-1,\"modOrnaments\":-1,\"modSpoilers\":-1,\"wheels\":7,\"modEngineBlock\":-1,\"modRoof\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0,\"modArchCover\":-1,\"modTrimA\":-1,\"modFender\":-1,\"modSmokeEnabled\":false,\"plateIndex\":0,\"doorsBroken\":{\"4\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modBackWheels\":-1,\"modTurbo\":false,\"modXenon\":false,\"color1\":1,\"pearlescentColor\":4,\"xenonColor\":255,\"modGrille\":-1,\"modShifterLeavers\":-1,\"plate\":\"FIZZ3532\",\"modHydrolic\":-1,\"fuelLevel\":65.0,\"modHood\":-1,\"neonColor\":[255,0,255],\"tyreSmokeColor\":[255,255,255],\"modAirFilter\":-1,\"neonEnabled\":[false,false,false,false],\"modLivery\":-1,\"modArmor\":-1,\"modTrunk\":-1,\"modLightbar\":-1,\"tyreBurst\":{\"1\":false,\"4\":false,\"5\":false,\"0\":false},\"dashboardColor\":0,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modStruts\":-1,\"extras\":{\"12\":false,\"10\":1},\"tankHealth\":1000.0,\"model\":2072687711,\"modSteeringWheel\":-1,\"modAerials\":-1,\"modDial\":-1,\"modDoorSpeaker\":-1,\"modEngine\":-1,\"modTank\":-1,\"modDoorR\":-1,\"color2\":0,\"modTrimB\":-1,\"modSpeakers\":-1,\"windowsBroken\":{\"5\":true,\"4\":true,\"7\":false,\"6\":false,\"1\":false,\"0\":false,\"3\":false,\"2\":false},\"modAPlate\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"interiorColor\":0,\"modFrontWheels\":-1,\"modTransmission\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modPlateHolder\":-1,\"modHorns\":-1,\"dirtLevel\":0.0,\"wheelColor\":156,\"modVanityPlate\":-1,\"modSeats\":-1,\"modRightFender\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:d1a8aaae4010c6b4496e7203c14b9c023578280b', 'ADMY8792', '{\"wheelColor\":0,\"modHood\":-1,\"modEngine\":3,\"color1\":17,\"modBrakes\":2,\"fuelLevel\":64.3,\"modFrontBumper\":5,\"modSideSkirt\":0,\"modRoof\":1,\"tankHealth\":1000.0,\"modOrnaments\":-1,\"modEngineBlock\":-1,\"modShifterLeavers\":-1,\"plateIndex\":0,\"modAPlate\":-1,\"windowsBroken\":{\"0\":true,\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true},\"windowTint\":5,\"modAirFilter\":-1,\"modRearBumper\":-1,\"modTrimA\":-1,\"extras\":[],\"modSpoilers\":-1,\"modDashboard\":-1,\"wheels\":7,\"modSmokeEnabled\":false,\"doorsBroken\":{\"0\":false,\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false},\"customPrimaryColor\":[0,0,0],\"modFrontWheels\":-1,\"modStruts\":-1,\"plate\":\"ADMY8792\",\"modTrimB\":-1,\"modTurbo\":1,\"modDoorSpeaker\":-1,\"modSteeringWheel\":-1,\"dirtLevel\":0.0,\"model\":1456336509,\"modGrille\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"modXenon\":1,\"modLivery\":-1,\"neonEnabled\":[1,1,1,1],\"pearlescentColor\":4,\"modTank\":-1,\"modFrame\":-1,\"xenonColor\":255,\"modSeats\":-1,\"modTrunk\":-1,\"modHydrolic\":-1,\"modLightbar\":-1,\"engineHealth\":1000.0,\"modRightFender\":4,\"tyreBurst\":{\"0\":false,\"1\":false,\"4\":false,\"5\":false},\"modTransmission\":2,\"modPlateHolder\":-1,\"modHorns\":-1,\"interiorColor\":8,\"modAerials\":-1,\"dashboardColor\":0,\"neonColor\":[255,51,0],\"modDoorR\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"color2\":27,\"modBackWheels\":-1,\"modSuspension\":2,\"modArchCover\":-1,\"modDial\":-1,\"modExhaust\":4,\"bodyHealth\":550.0,\"modVanityPlate\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:7cc8b7b28206ead2f2cba652d8138ff73e9987fb', 'CUXQ9511', '{\"modFrontWheels\":-1,\"modRightFender\":-1,\"xenonColor\":0,\"color1\":0,\"modFender\":-1,\"modRoof\":-1,\"fuelLevel\":62.6,\"modHood\":-1,\"neonColor\":[0,0,0],\"plateIndex\":0,\"modLightbar\":-1,\"modFrontBumper\":-1,\"modDoorR\":-1,\"modTank\":-1,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modSpeakers\":-1,\"modSideSkirt\":-1,\"modExhaust\":-1,\"modDoorSpeaker\":-1,\"modTrimB\":-1,\"tankHealth\":1000.0,\"plate\":\"CUXQ9511\",\"modOrnaments\":-1,\"modArmor\":4,\"color2\":0,\"customPrimaryColor\":[0,0,0],\"extras\":{\"11\":1},\"windowTint\":5,\"model\":-89291282,\"modRearBumper\":-1,\"interiorColor\":0,\"modArchCover\":-1,\"dirtLevel\":1.2,\"modAPlate\":-1,\"modDial\":-1,\"modSteeringWheel\":-1,\"engineHealth\":1000.0,\"modTurbo\":1,\"modAirFilter\":-1,\"modShifterLeavers\":-1,\"tyreBurst\":{\"0\":false,\"5\":false,\"4\":false,\"1\":false},\"doorsBroken\":{\"0\":false,\"4\":false,\"3\":false,\"2\":false,\"1\":false},\"modTransmission\":2,\"modHydrolic\":-1,\"wheelColor\":0,\"modGrille\":-1,\"modStruts\":-1,\"modBrakes\":2,\"modBackWheels\":-1,\"pearlescentColor\":0,\"dashboardColor\":0,\"modEngineBlock\":-1,\"modLivery\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"bodyHealth\":1000.0,\"modSpoilers\":-1,\"modFrame\":-1,\"neonEnabled\":[1,1,1,1],\"modAerials\":-1,\"modXenon\":1,\"modSuspension\":-1,\"modVanityPlate\":-1,\"modDashboard\":-1,\"wheels\":7,\"modEngine\":3,\"modSmokeEnabled\":false,\"windowsBroken\":{\"0\":false,\"7\":false,\"6\":false,\"5\":true,\"4\":true,\"3\":false,\"2\":false,\"1\":false},\"modTrunk\":-1,\"modHorns\":-1}', 'car', NULL, 0, 0, NULL, NULL),
('char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', 'YUIZ', '{\"paintType2\":7,\"modGrille\":-1,\"wheelWidth\":1.0,\"modRightFender\":-1,\"modTurbo\":false,\"pearlescentColor\":5,\"modVanityPlate\":-1,\"modSpoilers\":-1,\"modWindows\":-1,\"modXenon\":false,\"modRoofLivery\":-1,\"modCustomTiresF\":false,\"modDashboard\":-1,\"modCustomTiresR\":false,\"interiorColor\":0,\"modSuspension\":-1,\"modFrontWheels\":-1,\"modTank\":-1,\"modLightbar\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"modFrame\":-1,\"wheelColor\":156,\"modEngineBlock\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"plate\":\"YUIZ\",\"modStruts\":-1,\"tankHealth\":1000,\"modHorns\":-1,\"modRoof\":-1,\"modShifterLeavers\":-1,\"doors\":[],\"modSpeakers\":-1,\"modHydraulics\":false,\"modSubwoofer\":-1,\"dashboardColor\":0,\"oilLevel\":5,\"modPlateHolder\":-1,\"tyres\":[],\"modHood\":-1,\"fuelLevel\":64.39,\"modOrnaments\":-1,\"modLivery\":-1,\"modTransmission\":-1,\"modSeats\":-1,\"bulletProofTyres\":true,\"neonColor\":[255,0,255],\"color2\":1,\"modRearBumper\":-1,\"modSideSkirt\":-1,\"extras\":{\"10\":0,\"12\":0},\"windowTint\":-1,\"modTrimB\":-1,\"driftTyres\":false,\"modEngine\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"model\":970598228,\"modDoorSpeaker\":-1,\"color1\":1,\"modExhaust\":-1,\"bodyHealth\":1000,\"dirtLevel\":7,\"modFender\":-1,\"modDial\":-1,\"xenonColor\":255,\"modTrunk\":-1,\"plateIndex\":0,\"wheelSize\":1.0,\"modNitrous\":-1,\"windows\":[4,5],\"modSteeringWheel\":-1,\"wheels\":0,\"modTrimA\":-1,\"paintType1\":7,\"modBrakes\":-1,\"modBackWheels\":-1,\"modHydrolic\":-1,\"modDoorR\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"engineHealth\":1000}', 'car', NULL, 0, 0, NULL, NULL),
('char1:9d40f8e62b6aa370ddf060ed36c7f62289591bb2', 'WWAZ3567', '{\"modSmokeEnabled\":false,\"windowsBroken\":{\"0\":false,\"7\":true,\"6\":false,\"5\":true,\"4\":true,\"3\":true,\"2\":false,\"1\":false},\"wheels\":0,\"modTurbo\":false,\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":5,\"modFender\":-1,\"modDoorR\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"fuelLevel\":100.0,\"color1\":0,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"neonColor\":[0,0,0],\"extras\":{\"8\":1,\"7\":1,\"9\":1,\"2\":1,\"1\":1},\"modArmor\":-1,\"modEngine\":-1,\"doorsBroken\":{\"0\":false,\"2\":false,\"1\":false},\"modBrakes\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modSuspension\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":156,\"modDial\":-1,\"modEngineBlock\":-1,\"model\":788747387,\"interiorColor\":0,\"modTrimA\":-1,\"tyreBurst\":{\"4\":false,\"5\":false,\"0\":false,\"1\":false},\"xenonColor\":255,\"modRightFender\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"color2\":0,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"dashboardColor\":0,\"tankHealth\":1000.0,\"modDashboard\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"dirtLevel\":6.0,\"windowTint\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":4,\"plate\":\"WWAZ3567\",\"modRoof\":-1,\"modLightbar\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modSpeakers\":-1}', 'helicopter', NULL, 1, 0, NULL, NULL),
('char1:9d40f8e62b6aa370ddf060ed36c7f62289591bb2', 'WW933434', '{\"modSmokeEnabled\":false,\"windowsBroken\":{\"0\":false,\"7\":true,\"6\":false,\"5\":true,\"4\":true,\"3\":true,\"2\":false,\"1\":false},\"wheels\":0,\"modTurbo\":false,\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":5,\"modFender\":-1,\"modDoorR\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"fuelLevel\":100.0,\"color1\":0,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"neonColor\":[0,0,0],\"extras\":{\"8\":1,\"7\":1,\"9\":1,\"2\":1,\"1\":1},\"modArmor\":-1,\"modEngine\":-1,\"doorsBroken\":{\"0\":false,\"2\":false,\"1\":false},\"modBrakes\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modSuspension\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":156,\"modDial\":-1,\"modEngineBlock\":-1,\"model\":788747387,\"interiorColor\":0,\"modTrimA\":-1,\"tyreBurst\":{\"4\":false,\"5\":false,\"0\":false,\"1\":false},\"xenonColor\":255,\"modRightFender\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"color2\":0,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"dashboardColor\":0,\"tankHealth\":1000.0,\"modDashboard\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"dirtLevel\":6.0,\"windowTint\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":4,\"plate\":\"WW933434\",\"modRoof\":-1,\"modLightbar\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modSpeakers\":-1}', 'helicopter', NULL, 1, 0, NULL, NULL),
('char1:9d40f8e62b6aa370ddf060ed36c7f62289591bb2', 'WW9334', '{\"modSmokeEnabled\":false,\"windowsBroken\":{\"0\":false,\"7\":true,\"6\":false,\"5\":true,\"4\":true,\"3\":true,\"2\":false,\"1\":false},\"wheels\":0,\"modTurbo\":false,\"bodyHealth\":1000.0,\"modTrunk\":-1,\"modFrontBumper\":-1,\"modAerials\":-1,\"neonEnabled\":[false,false,false,false],\"pearlescentColor\":5,\"modFender\":-1,\"modDoorR\":-1,\"modStruts\":-1,\"modArchCover\":-1,\"modFrontWheels\":-1,\"fuelLevel\":100.0,\"color1\":0,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"neonColor\":[0,0,0],\"extras\":{\"8\":1,\"7\":1,\"9\":1,\"2\":1,\"1\":1},\"modArmor\":-1,\"modEngine\":-1,\"doorsBroken\":{\"0\":false,\"2\":false,\"1\":false},\"modBrakes\":-1,\"modVanityPlate\":-1,\"modHorns\":-1,\"modPlateHolder\":-1,\"modSuspension\":-1,\"modTransmission\":-1,\"modHood\":-1,\"modLivery\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"wheelColor\":156,\"modDial\":-1,\"modEngineBlock\":-1,\"model\":788747387,\"interiorColor\":0,\"modTrimA\":-1,\"tyreBurst\":{\"4\":false,\"5\":false,\"0\":false,\"1\":false},\"xenonColor\":255,\"modRightFender\":-1,\"modTank\":-1,\"modExhaust\":-1,\"modRearBumper\":-1,\"modFrame\":-1,\"color2\":0,\"modAirFilter\":-1,\"modSpoilers\":-1,\"modXenon\":false,\"modSideSkirt\":-1,\"dashboardColor\":0,\"tankHealth\":1000.0,\"modDashboard\":-1,\"modHydrolic\":-1,\"modAPlate\":-1,\"dirtLevel\":5.0,\"windowTint\":-1,\"modGrille\":-1,\"modSeats\":-1,\"modBackWheels\":-1,\"plateIndex\":4,\"plate\":\"WW9334\",\"modRoof\":-1,\"modLightbar\":-1,\"modOrnaments\":-1,\"engineHealth\":1000.0,\"modSpeakers\":-1}', 'helicopter', NULL, 1, 0, NULL, NULL),
('char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'EEBX2559', '{\"modHydraulics\":false,\"modSubwoofer\":-1,\"tyreSmokeColor\":[255,255,255],\"modTrunk\":-1,\"modXenon\":false,\"engineHealth\":1000,\"bodyHealth\":1000,\"modGrille\":-1,\"dirtLevel\":4,\"modFender\":-1,\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modFrontWheels\":-1,\"model\":-295689028,\"wheelColor\":158,\"interiorColor\":31,\"plateIndex\":0,\"modSteeringWheel\":-1,\"modWindows\":-1,\"neonColor\":[255,255,255],\"modLivery\":-1,\"color1\":64,\"wheelSize\":1.0,\"plate\":\"EEBX2559\",\"modAPlate\":-1,\"modSmokeEnabled\":false,\"wheelWidth\":1.0,\"modArchCover\":-1,\"modDial\":-1,\"modShifterLeavers\":-1,\"windowTint\":-1,\"pearlescentColor\":70,\"modFrontBumper\":-1,\"tyres\":[],\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"windows\":[4,5],\"modTank\":-1,\"modRightFender\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"modOrnaments\":-1,\"driftTyres\":false,\"modAirFilter\":-1,\"modTrimA\":-1,\"modTrimB\":-1,\"modRearBumper\":-1,\"fuelLevel\":64.86,\"modExhaust\":-1,\"modRoof\":-1,\"wheels\":0,\"tankHealth\":1000,\"modHydrolic\":-1,\"modLightbar\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"modDoorR\":-1,\"neonEnabled\":[false,false,false,false],\"doors\":[],\"modRoofLivery\":-1,\"modHorns\":-1,\"modStruts\":-1,\"modEngine\":-1,\"xenonColor\":255,\"modSuspension\":-1,\"modCustomTiresR\":false,\"modNitrous\":-1,\"extras\":[],\"modDashboard\":-1,\"bulletProofTyres\":true,\"modSpeakers\":-1,\"paintType1\":7,\"oilLevel\":5,\"modSpoilers\":-1,\"modHood\":-1,\"dashboardColor\":134,\"modSeats\":-1,\"color2\":64,\"modArmor\":-1,\"modCustomTiresF\":false,\"paintType2\":7,\"modTurbo\":false}', 'car', NULL, 0, 0, NULL, NULL),
('char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'WJHG0790', '{\"model\":-344943009,\"modArmor\":-1,\"modHydrolic\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"wheels\":0,\"modFrontWheels\":-1,\"xenonColor\":255,\"modGrille\":-1,\"modFender\":-1,\"neonEnabled\":[false,false,false,false],\"fuelLevel\":65.0,\"modLightbar\":-1,\"modTrimA\":-1,\"modTurbo\":false,\"modBackWheels\":-1,\"modSpeakers\":-1,\"modShifterLeavers\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"wheelColor\":156,\"engineHealth\":1000.0,\"plateIndex\":0,\"color2\":0,\"color1\":7,\"plate\":\"WJHG0790\",\"windowTint\":-1,\"tyreBurst\":{\"5\":false,\"1\":false,\"0\":false,\"4\":false},\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modAerials\":-1,\"modTransmission\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"dashboardColor\":0,\"modExhaust\":-1,\"modDoorSpeaker\":-1,\"modTank\":-1,\"neonColor\":[255,255,255],\"tankHealth\":1000.0,\"modHorns\":-1,\"modArchCover\":-1,\"modStruts\":-1,\"modDial\":-1,\"modBrakes\":-1,\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modFrame\":-1,\"bodyHealth\":1000.0,\"windowsBroken\":{\"1\":false,\"2\":false,\"7\":false,\"0\":false,\"5\":true,\"6\":false,\"3\":false,\"4\":true},\"modLivery\":-1,\"extras\":{\"12\":1,\"10\":false},\"modOrnaments\":-1,\"interiorColor\":0,\"modSpoilers\":-1,\"modSeats\":-1,\"pearlescentColor\":5,\"modTrimB\":-1,\"modEngineBlock\":-1,\"modDoorR\":-1,\"modSuspension\":-1,\"dirtLevel\":0.0,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modRoof\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"modHood\":-1,\"doorsBroken\":{\"1\":false,\"2\":false,\"0\":false,\"3\":false,\"4\":false},\"modSteeringWheel\":-1}', 'car', NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(35, 'Concess Entrée', '{\"coords\":{\"x\":-68.76311492919922,\"y\":64.23542022705078,\"z\":72.119140625},\"lockSound\":\"door_bolt\",\"hideUi\":true,\"maxDistance\":5,\"items\":[{\"name\":\"cleconcess\"}],\"unlockSound\":\"door_bolt\",\"state\":1,\"doors\":[{\"coords\":{\"x\":-67.93951416015625,\"y\":63.76554489135742,\"z\":72.119140625},\"model\":2059227086,\"heading\":150},{\"coords\":{\"x\":-69.58671569824219,\"y\":64.7052993774414,\"z\":72.119140625},\"model\":2059227086,\"heading\":330}]}'),
(36, 'Concess Garage', '{\"maxDistance\":2,\"coords\":{\"x\":-62.28646469116211,\"y\":79.83850860595703,\"z\":72.3387222290039},\"items\":[{\"name\":\"cleconcess\"}],\"auto\":true,\"state\":1,\"hideUi\":true,\"model\":2044752428,\"heading\":246,\"doors\":false}'),
(37, 'Concess Patron', '{\"coords\":{\"x\":-56.01859664916992,\"y\":71.5741195678711,\"z\":71.9902114868164},\"hideUi\":true,\"maxDistance\":2,\"heading\":246,\"passcode\":\"0611\",\"state\":1,\"model\":-1320876379,\"doors\":false}'),
(38, 'Labo pistolet', '{\"doors\":false,\"items\":[{\"name\":\"clelabo4\"}],\"state\":1,\"coords\":{\"x\":-630.5706176757813,\"y\":-2350.03662109375,\"z\":14.35263729095459},\"unlockSound\":\"door_bolt\",\"lockSound\":\"metal_locker\",\"maxDistance\":2,\"model\":-931112547,\"hideUi\":true,\"heading\":318}'),
(39, 'labo pompe / mitralleuse', '{\"model\":-931112547,\"heading\":360,\"items\":[{\"name\":\"clelabo2\"}],\"maxDistance\":2,\"coords\":{\"x\":727.4893798828125,\"y\":-1374.4627685546876,\"z\":26.7229995727539},\"lockSound\":\"metal_locker\",\"doors\":false,\"state\":1,\"unlockSound\":\"door_bolt\",\"hideUi\":true}'),
(40, 'LABO SMG', '{\"doors\":false,\"items\":[{\"name\":\"clelabo3\"}],\"state\":1,\"coords\":{\"x\":848.4765625,\"y\":2383.578125,\"z\":54.46072387695312},\"unlockSound\":\"door_bolt\",\"lockSound\":\"metal_locker\",\"maxDistance\":2,\"model\":-931112547,\"hideUi\":true,\"heading\":49}'),
(41, 'labo assault', '{\"model\":-931112547,\"heading\":130,\"items\":[{\"name\":\"clelabo1\"}],\"maxDistance\":2,\"coords\":{\"x\":35.89193344116211,\"y\":6548.44482421875,\"z\":31.88495063781738},\"lockSound\":\"metal_locker\",\"doors\":false,\"state\":1,\"unlockSound\":\"door_bolt\",\"hideUi\":true}'),
(42, 'labo accesoire', '{\"coords\":{\"x\":-34.20362091064453,\"y\":-2552.899169921875,\"z\":6.46166229248046},\"doors\":false,\"lockSound\":\"metal_locker\",\"unlockSound\":\"door_bolt\",\"items\":[{\"name\":\"clelabo5\"}],\"heading\":209,\"maxDistance\":2,\"model\":-931112547,\"state\":1,\"hideUi\":true}'),
(46, 'Madrazo Garage', '{\"model\":814595384,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1050.5693359375,\"y\":225.60777282714845,\"z\":64.19587707519531},\"maxDistance\":5,\"items\":[{\"name\":\"clem2\"}],\"heading\":0}'),
(47, 'Madrazo Garage', '{\"model\":814595384,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1045.2930908203126,\"y\":225.60780334472657,\"z\":64.19359588623047},\"maxDistance\":5,\"items\":[{\"name\":\"clem2\"}],\"heading\":0}'),
(48, 'Madrazo Entree', '{\"hideUi\":true,\"doors\":[{\"heading\":91,\"model\":267614611,\"coords\":{\"x\":-1037.5108642578126,\"y\":223.4973602294922,\"z\":64.56413269042969}},{\"heading\":91,\"model\":1037981036,\"coords\":{\"x\":-1037.46435546875,\"y\":220.87745666503907,\"z\":64.56410217285156}}],\"state\":1,\"coords\":{\"x\":-1037.487548828125,\"y\":222.18740844726563,\"z\":64.56411743164063},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}]}'),
(49, 'Madrazo', '{\"model\":1770281453,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1027.79931640625,\"y\":214.04612731933595,\"z\":64.72454833984375},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":180}'),
(50, 'Madrazo', '{\"model\":333971964,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1028.6502685546876,\"y\":223.1559295654297,\"z\":63.75520706176758},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":270}'),
(51, 'Madrazo', '{\"model\":1770281453,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1042.372314453125,\"y\":236.80142211914063,\"z\":64.55313873291016},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":0}'),
(52, 'Madrazo', '{\"model\":333971964,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1034.552978515625,\"y\":211.52813720703126,\"z\":67.27458190917969},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":90}'),
(53, 'Madrazo', '{\"model\":333971964,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1028.564208984375,\"y\":212.3800506591797,\"z\":67.27458190917969},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":270}'),
(54, 'Madrazo', '{\"hideUi\":true,\"doors\":[{\"heading\":180,\"model\":-1032171637,\"coords\":{\"x\":-1031.9517822265626,\"y\":214.11758422851563,\"z\":68.37286376953125}},{\"heading\":360,\"model\":-1032171637,\"coords\":{\"x\":-1034.154541015625,\"y\":214.11758422851563,\"z\":68.37286376953125}}],\"state\":1,\"coords\":{\"x\":-1033.05322265625,\"y\":214.11758422851563,\"z\":68.37286376953125},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}]}'),
(55, 'Madrazo', '{\"model\":333971964,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1037.5477294921876,\"y\":222.72634887695313,\"z\":67.2763671875},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":90}'),
(56, 'Madrazo', '{\"model\":333971964,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1028.6448974609376,\"y\":223.16004943847657,\"z\":67.2640151977539},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":270}'),
(57, 'Madrazo', '{\"model\":333971964,\"hideUi\":true,\"doors\":false,\"auto\":true,\"state\":1,\"coords\":{\"x\":-1042.718017578125,\"y\":226.5490264892578,\"z\":67.2647476196289},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":180}'),
(58, 'Madrazo', '{\"model\":-1112983290,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1044.2066650390626,\"y\":234.7537841796875,\"z\":64.50177764892578},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":90}'),
(59, 'Madrazo', '{\"model\":631614199,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1040.67431640625,\"y\":219.52659606933595,\"z\":52.98952102661133},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":180}'),
(60, 'Madrazo', '{\"model\":631614199,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1043.84716796875,\"y\":219.52659606933595,\"z\":52.98952102661133},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":180}'),
(61, 'Madrazo', '{\"model\":631614199,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1047.0196533203126,\"y\":219.52659606933595,\"z\":52.98952102661133},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":180}'),
(62, 'Madrazo', '{\"model\":631614199,\"hideUi\":true,\"doors\":false,\"state\":1,\"coords\":{\"x\":-1050.202392578125,\"y\":219.52659606933595,\"z\":52.98952102661133},\"maxDistance\":2,\"items\":[{\"name\":\"clem2\"}],\"heading\":180}'),
(63, 'BMF Portail', '{\"maxDistance\":6,\"unlockSound\":\"door_bolt\",\"hideUi\":true,\"doors\":[{\"model\":546378757,\"coords\":{\"x\":-137.79905700683595,\"y\":973.7088623046875,\"z\":236.11431884765626},\"heading\":336},{\"model\":-1249591818,\"coords\":{\"x\":-132.78854370117188,\"y\":971.500244140625,\"z\":236.11431884765626},\"heading\":336}],\"state\":1,\"lockSound\":\"door_bolt\",\"auto\":true,\"items\":[{\"name\":\"clem1\"}],\"coords\":{\"x\":-135.29379272460938,\"y\":972.6045532226563,\"z\":236.11431884765626}}'),
(64, 'BMF', '{\"doors\":[{\"heading\":20,\"model\":-2146494197,\"coords\":{\"x\":-112.30475616455078,\"y\":985.4119262695313,\"z\":236.35047912597657}},{\"heading\":200,\"model\":-2146494197,\"coords\":{\"x\":-112.7980728149414,\"y\":986.771484375,\"z\":236.35047912597657}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-112.5514144897461,\"y\":986.0916748046875,\"z\":236.35047912597657},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(65, 'BMF', '{\"doors\":[{\"heading\":110,\"model\":-435821409,\"coords\":{\"x\":-110.15312957763672,\"y\":999.5685424804688,\"z\":235.87783813476563}},{\"heading\":290,\"model\":-435821409,\"coords\":{\"x\":-112.19111633300781,\"y\":998.7998046875,\"z\":235.87783813476563}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-111.172119140625,\"y\":999.1842041015625,\"z\":235.87783813476563},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(66, 'BMF', '{\"doors\":[{\"heading\":290,\"model\":-435821409,\"coords\":{\"x\":-105.7796401977539,\"y\":976.3494262695313,\"z\":235.8943328857422}},{\"heading\":110,\"model\":-435821409,\"coords\":{\"x\":-103.74085998535156,\"y\":977.1199951171875,\"z\":235.8943328857422}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-104.76025390625,\"y\":976.7347412109375,\"z\":235.8943328857422},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(67, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-100.2386474609375,\"y\":997.2811889648438,\"z\":235.9095001220703},\"heading\":290,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(68, 'BMF', '{\"doors\":[{\"heading\":110,\"model\":-435821409,\"coords\":{\"x\":-94.80368041992188,\"y\":1003.2350463867188,\"z\":235.88253784179688}},{\"heading\":290,\"model\":-435821409,\"coords\":{\"x\":-96.84090423583985,\"y\":1002.4654541015625,\"z\":235.88253784179688}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-95.82229614257813,\"y\":1002.8502197265625,\"z\":235.88253784179688},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(69, 'BMF', '{\"doors\":[{\"heading\":200,\"model\":-435821409,\"coords\":{\"x\":-103.03706359863281,\"y\":1012.2847900390625,\"z\":235.87783813476563}},{\"heading\":20,\"model\":-435821409,\"coords\":{\"x\":-102.26998901367188,\"y\":1010.245361328125,\"z\":235.87783813476563}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-102.65352630615235,\"y\":1011.2650756835938,\"z\":235.87783813476563},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(70, 'BMF', '{\"doors\":[{\"heading\":50,\"model\":-435821409,\"coords\":{\"x\":-69.96350860595703,\"y\":1008.09814453125,\"z\":234.5198516845703}},{\"heading\":230,\"model\":-435821409,\"coords\":{\"x\":-71.65341186523438,\"y\":1009.4822998046875,\"z\":234.5198516845703}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-70.80845642089844,\"y\":1008.7902221679688,\"z\":234.5198516845703},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(71, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-76.83685302734375,\"y\":1006.3057861328125,\"z\":234.54647827148438},\"heading\":315,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(72, 'BMF', '{\"doors\":[{\"heading\":50,\"model\":-2146494197,\"coords\":{\"x\":-61.68701553344726,\"y\":998.0018920898438,\"z\":234.99281311035157}},{\"heading\":230,\"model\":-2146494197,\"coords\":{\"x\":-62.79198837280273,\"y\":998.9296264648438,\"z\":234.99281311035157}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-62.239501953125,\"y\":998.4657592773438,\"z\":234.99281311035157},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(73, 'BMF', '{\"doors\":[{\"heading\":20,\"model\":-435821409,\"coords\":{\"x\":-59.00681686401367,\"y\":988.5122680664063,\"z\":235.34979248046876}},{\"heading\":200,\"model\":-435821409,\"coords\":{\"x\":-59.77668762207031,\"y\":990.5541381835938,\"z\":235.34979248046876}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-59.39175415039062,\"y\":989.533203125,\"z\":235.34979248046876},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(74, 'BMF', '{\"doors\":[{\"heading\":20,\"model\":-435821409,\"coords\":{\"x\":-57.00850677490234,\"y\":983.0105590820313,\"z\":235.34979248046876}},{\"heading\":200,\"model\":-435821409,\"coords\":{\"x\":-57.77550506591797,\"y\":985.0511474609375,\"z\":235.34979248046876}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-57.39200592041015,\"y\":984.0308837890625,\"z\":235.34979248046876},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(75, 'BMF', '{\"doors\":[{\"heading\":290,\"model\":-2146494197,\"coords\":{\"x\":-58.94352722167969,\"y\":979.8441162109375,\"z\":233.45501708984376}},{\"heading\":110,\"model\":-2146494197,\"coords\":{\"x\":-57.58524703979492,\"y\":980.3418579101563,\"z\":233.45501708984376}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-58.26438903808594,\"y\":980.093017578125,\"z\":233.45501708984376},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(76, 'BMF', '{\"doors\":[{\"heading\":230,\"model\":-435821409,\"coords\":{\"x\":-68.35662841796875,\"y\":988.3165893554688,\"z\":234.523193359375}},{\"heading\":50,\"model\":-435821409,\"coords\":{\"x\":-66.67601013183594,\"y\":986.9324340820313,\"z\":234.523193359375}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-67.51631927490235,\"y\":987.62451171875,\"z\":234.523193359375},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(77, 'BMF', '{\"doors\":[{\"heading\":200,\"model\":-435821409,\"coords\":{\"x\":-112.85716247558594,\"y\":987.1422729492188,\"z\":240.97254943847657}},{\"heading\":20,\"model\":-435821409,\"coords\":{\"x\":-112.08789825439453,\"y\":985.1065673828125,\"z\":240.97254943847657}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-112.4725341796875,\"y\":986.1243896484375,\"z\":240.97254943847657},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(78, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-104.98255920410156,\"y\":986.1325073242188,\"z\":240.99432373046876},\"heading\":20,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(79, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-106.77544403076172,\"y\":991.0427856445313,\"z\":240.99432373046876},\"heading\":20,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(80, 'BMF', '{\"doors\":[{\"heading\":290,\"model\":-435821409,\"coords\":{\"x\":-100.981689453125,\"y\":987.9146118164063,\"z\":241.07179260253907}},{\"heading\":110,\"model\":-435821409,\"coords\":{\"x\":-98.94217681884766,\"y\":988.68212890625,\"z\":241.07179260253907}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-99.96192932128906,\"y\":988.29833984375,\"z\":241.07179260253907},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(81, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-99.37030792236328,\"y\":993.6248168945313,\"z\":240.99432373046876},\"heading\":20,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(82, 'BMF', '{\"doors\":[{\"heading\":290,\"model\":-435821409,\"coords\":{\"x\":-96.66063690185547,\"y\":989.4769897460938,\"z\":241.07179260253907}},{\"heading\":110,\"model\":-435821409,\"coords\":{\"x\":-94.6214370727539,\"y\":990.2454223632813,\"z\":241.07179260253907}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-95.64103698730469,\"y\":989.8612060546875,\"z\":241.07179260253907},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(83, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-92.12971496582031,\"y\":996.1795654296875,\"z\":240.99432373046876},\"heading\":20,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(84, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-80.8492431640625,\"y\":1001.7518920898438,\"z\":239.6315460205078},\"heading\":20,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(85, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-70.71253967285156,\"y\":999.9468994140625,\"z\":239.6315460205078},\"heading\":315,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(86, 'BMF', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-71.48797607421875,\"y\":996.9867553710938,\"z\":239.6315460205078},\"heading\":230,\"model\":1901183774,\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(87, 'BMF', '{\"doors\":[{\"heading\":110,\"model\":-435821409,\"coords\":{\"x\":-96.74585723876953,\"y\":989.6260986328125,\"z\":235.8943328857422}},{\"heading\":290,\"model\":-435821409,\"coords\":{\"x\":-98.78286743164063,\"y\":988.8587036132813,\"z\":235.8943328857422}}],\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-97.76435852050781,\"y\":989.242431640625,\"z\":235.8943328857422},\"items\":[{\"name\":\"clem1\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(88, 'Golf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1500.353759765625,\"y\":104.26311492919922,\"z\":56.03768539428711},\"heading\":46,\"model\":346577218,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(89, 'golf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1536.182861328125,\"y\":99.01160430908203,\"z\":57.0344123840332},\"heading\":46,\"model\":653721055,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(90, 'golf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1536.6741943359376,\"y\":119.46669006347656,\"z\":57.14363479614258},\"heading\":316,\"model\":39269536,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(91, 'bmf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1535.98486328125,\"y\":130.46957397460938,\"z\":57.76089859008789},\"heading\":315,\"model\":346577218,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(92, 'golf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1523.134033203125,\"y\":143.55880737304688,\"z\":55.93638610839844},\"heading\":135,\"model\":653721055,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(93, 'golf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1537.74072265625,\"y\":125.4542007446289,\"z\":57.14699172973633},\"heading\":227,\"model\":39269536,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}'),
(94, 'golf', '{\"doors\":false,\"lockSound\":\"door_bolt\",\"auto\":true,\"state\":1,\"hideUi\":true,\"coords\":{\"x\":-1535.4541015625,\"y\":108.08159637451172,\"z\":57.1401252746582},\"heading\":317,\"model\":39269536,\"items\":[{\"name\":\"clem3\"}],\"maxDistance\":2,\"unlockSound\":\"door_bolt\"}');

-- --------------------------------------------------------

--
-- Structure de la table `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(46) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ox_inventory`
--

INSERT INTO `ox_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
('', 'burgershotlocker', '[{\"name\":\"frite\",\"count\":1,\"slot\":1},{\"name\":\"nuggets\",\"count\":1,\"slot\":2},{\"name\":\"wrap\",\"count\":1,\"slot\":3},{\"name\":\"cheeseburger\",\"count\":1,\"slot\":4}]', '2024-02-11 04:49:46'),
('', 'gruppe6locker', NULL, '2024-01-26 22:02:36'),
('', 'unicornlocker', NULL, '2024-01-28 12:25:34'),
('', 'evidence-1', NULL, '2024-07-15 19:18:11'),
('', 'bag_126716QLD486423', NULL, '2024-02-06 19:14:08'),
('', 'concesslocker', NULL, '2024-02-08 18:51:26'),
('char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', 'policelocker', NULL, '2024-02-08 18:55:15'),
('char1:5975c6902c60be38e0fcc3f68293e4e04cff73c3', 'bcsolocker', NULL, '2024-02-08 19:06:13'),
('', 'realestateagentlocker', NULL, '2024-02-08 19:08:37'),
('', 'bag_664456XOO412229', '[{\"name\":\"weed\",\"slot\":1,\"count\":33},{\"name\":\"bag\",\"slot\":5,\"count\":1}]', '2024-02-10 22:20:00'),
('', 'mecanolocker', NULL, '2024-02-11 03:17:39'),
('', 'tabaclocker', NULL, '2024-02-11 03:53:19'),
('char1:fc758c1ca0eecf999d94e3c9dc061301cc57672e', 'bcsolocker', NULL, '2024-02-11 20:02:41'),
('char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73', 'bcsolocker', NULL, '2024-03-24 10:55:09'),
('', 'bag_261087JSF608453', NULL, '2024-03-24 20:42:36'),
('', 'concesslocker3', NULL, '2024-07-11 19:56:59'),
('', 'concesslocker2', NULL, '2024-07-11 19:57:09'),
('char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'coffre_fort id:1', NULL, '2024-07-12 23:28:19'),
('char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'coffre_fort id:2', NULL, '2024-07-12 23:29:10'),
('', 'bag_978300ANN118696', NULL, '2024-07-14 12:27:44'),
('', 'BMF', '[{\"name\":\"clelabo4\",\"count\":2,\"slot\":1},{\"name\":\"clelabo3\",\"count\":2,\"slot\":21},{\"name\":\"clelabo5\",\"count\":2,\"slot\":11},{\"name\":\"clelabo1\",\"count\":2,\"slot\":16},{\"name\":\"at_skin_luxe\",\"count\":49,\"slot\":26},{\"name\":\"clelabo2\",\"count\":2,\"slot\":6}]', '2024-07-21 22:21:55'),
('', 'Madrazo', NULL, '2024-07-15 16:06:15'),
('char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'policelocker', NULL, '2024-07-15 19:13:52'),
('', 'evidence-2', NULL, '2024-07-15 19:15:49'),
('', 'Cartel du Golf', '[{\"count\":1,\"slot\":1,\"name\":\"clem3\"}]', '2024-07-19 15:38:03');

-- --------------------------------------------------------

--
-- Structure de la table `PedTable`
--

CREATE TABLE `PedTable` (
  `id` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `coordX` float DEFAULT NULL,
  `coordY` float DEFAULT NULL,
  `coordZ` float DEFAULT NULL,
  `heading` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `player_outfits`
--

INSERT INTO `player_outfits` (`id`, `citizenid`, `outfitname`, `model`, `props`, `components`) VALUES
(26, 'char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'test', 'mp_m_freemode_01', '[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":42},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]', '[{\"component_id\":0,\"drawable\":0,\"texture\":0},{\"component_id\":1,\"drawable\":0,\"texture\":0},{\"component_id\":2,\"drawable\":79,\"texture\":0},{\"component_id\":3,\"drawable\":0,\"texture\":0},{\"component_id\":4,\"drawable\":48,\"texture\":0},{\"component_id\":5,\"drawable\":0,\"texture\":0},{\"component_id\":6,\"drawable\":7,\"texture\":0},{\"component_id\":7,\"drawable\":0,\"texture\":0},{\"component_id\":8,\"drawable\":23,\"texture\":0},{\"component_id\":9,\"drawable\":0,\"texture\":0},{\"component_id\":10,\"drawable\":0,\"texture\":0},{\"component_id\":11,\"drawable\":346,\"texture\":0}]'),
(27, 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'ff', 'mp_m_freemode_01', '[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]', '[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":7},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":2},{\"texture\":0,\"component_id\":4,\"drawable\":4},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":0}]'),
(28, 'char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', 'fffff', 'mp_m_freemode_01', '[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]', '[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":7},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":3,\"drawable\":2},{\"texture\":0,\"component_id\":4,\"drawable\":4},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":0}]'),
(29, 'char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', 'test2', 'mp_m_freemode_01', '[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]', '[{\"component_id\":0,\"drawable\":0,\"texture\":0},{\"component_id\":1,\"drawable\":0,\"texture\":0},{\"component_id\":2,\"drawable\":79,\"texture\":0},{\"component_id\":3,\"drawable\":0,\"texture\":0},{\"component_id\":4,\"drawable\":48,\"texture\":0},{\"component_id\":5,\"drawable\":0,\"texture\":0},{\"component_id\":6,\"drawable\":7,\"texture\":0},{\"component_id\":7,\"drawable\":0,\"texture\":0},{\"component_id\":8,\"drawable\":23,\"texture\":0},{\"component_id\":9,\"drawable\":0,\"texture\":0},{\"component_id\":10,\"drawable\":0,\"texture\":0},{\"component_id\":11,\"drawable\":347,\"texture\":0}]');

-- --------------------------------------------------------

--
-- Structure de la table `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `player_outfit_codes`
--

INSERT INTO `player_outfit_codes` (`id`, `outfitid`, `code`) VALUES
(1, 26, 'zgmwIpvXqj');

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `society_vehicles`
--

CREATE TABLE `society_vehicles` (
  `society` varchar(40) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `label` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `disabled` tinyint(1) DEFAULT 0,
  `iban` varchar(255) DEFAULT NULL,
  `pincode` int(50) DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_property` longtext DEFAULT NULL,
  `coins` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `job`, `job_grade`, `loadout`, `metadata`, `position`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `skin`, `status`, `is_dead`, `disabled`, `iban`, `pincode`, `inventory`, `last_property`, `coins`) VALUES
('char1:1653018c4c5cafddd5b7aabc75796dd452cd0f88', '{\"bank\":432120,\"money\":7596918,\"black_money\":0}', 'admin', 'police', 8, '[]', '[]', '{\"heading\":34.0157470703125,\"x\":-633.006591796875,\"y\":-2158.24609375,\"z\":51.01611328125}', 'Aaron', 'Smith', '09/09/1996', 'm', 192, '{\"headBlend\":{\"skinSecond\":0,\"shapeFirst\":0,\"shapeMix\":0,\"skinFirst\":8,\"shapeSecond\":0,\"skinMix\":0},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":79,\"texture\":0,\"component_id\":2},{\"drawable\":0,\"texture\":0,\"component_id\":3},{\"drawable\":48,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":7,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":23,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":346,\"texture\":0,\"component_id\":11}],\"model\":\"mp_m_freemode_01\",\"hair\":{\"color\":0,\"highlight\":255,\"style\":79},\"faceFeatures\":{\"chinBoneLenght\":0,\"nosePeakLowering\":0,\"eyeBrownForward\":0,\"nosePeakSize\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"eyeBrownHigh\":0,\"eyesOpening\":0,\"nosePeakHigh\":0,\"chinBoneLowering\":0,\"chinBoneSize\":0,\"noseWidth\":0,\"neckThickness\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"cheeksBoneWidth\":0,\"cheeksWidth\":0,\"chinHole\":0,\"jawBoneBackSize\":0,\"cheeksBoneHigh\":0},\"tattoos\":[],\"eyeColor\":0,\"headOverlays\":{\"complexion\":{\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"style\":0,\"opacity\":0},\"blemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"lipstick\":{\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":0,\"style\":1,\"opacity\":1},\"eyebrows\":{\"color\":0,\"style\":12,\"opacity\":1}},\"props\":[{\"drawable\":-1,\"prop_id\":0,\"texture\":-1},{\"drawable\":42,\"prop_id\":1,\"texture\":0},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}]}', '[{\"val\":491000,\"name\":\"hunger\",\"percent\":49.1},{\"val\":493250,\"name\":\"thirst\",\"percent\":49.325},{\"val\":0,\"name\":\"drunk\",\"percent\":0.0}]', 0, 0, 'OK481201', 1234, '[{\"slot\":2,\"count\":1,\"name\":\"carteidentite\"},{\"slot\":3,\"metadata\":{\"model\":\"Sultan RS\",\"plate\":\"EEBX2559\"},\"count\":1,\"name\":\"carkey\"},{\"slot\":4,\"metadata\":{\"ammo\":0,\"registered\":\"Aaron Smith\",\"components\":[],\"durability\":75.60000000000139,\"serial\":\"201870ZBL716719\"},\"count\":1,\"name\":\"WEAPON_PISTOL\"},{\"slot\":5,\"count\":1,\"name\":\"cleconcess\"},{\"slot\":6,\"metadata\":{\"tshirt2\":0,\"torso1\":346,\"torso2\":0,\"gender\":\"Male\",\"description\":\"[Gender: Male] [torso 1 #346] [torso 2 #0] [arms 1 #0] [arms 2 #0] [tshirt 1 #23] [tshirt 2 #0]\",\"tshirt1\":23,\"arms2\":0,\"arms1\":0},\"count\":1,\"name\":\"torso\"},{\"slot\":7,\"metadata\":{\"tshirt2\":0,\"torso1\":347,\"torso2\":0,\"gender\":\"Male\",\"description\":\"[Gender: Male] [torso 1 #347] [torso 2 #0] [arms 1 #0] [arms 2 #0] [tshirt 1 #23] [tshirt 2 #0]\",\"tshirt1\":23,\"arms2\":0,\"arms1\":0},\"count\":1,\"name\":\"torso\"},{\"slot\":8,\"count\":3,\"name\":\"fertilizer\"},{\"slot\":9,\"count\":1,\"name\":\"ppa\"},{\"slot\":10,\"count\":1,\"name\":\"clelabo4\"},{\"slot\":11,\"count\":1,\"name\":\"clelabo5\"},{\"slot\":12,\"count\":7596918,\"name\":\"money\"},{\"slot\":13,\"count\":1,\"name\":\"clelabo1\"},{\"slot\":14,\"count\":1,\"name\":\"clelabo2\"},{\"slot\":15,\"count\":1,\"name\":\"clelabo3\"},{\"slot\":16,\"count\":1,\"name\":\"chimic5\"},{\"slot\":17,\"count\":1,\"name\":\"clem2\"},{\"slot\":18,\"count\":1,\"name\":\"eau\"},{\"slot\":19,\"count\":2,\"name\":\"bourgeon_de_cannabis\"}]', NULL, 0),
('char1:58e99d47ab5f730d376c14ae95ab16d02ecea1dd', '{\"money\":0,\"bank\":718043,\"black_money\":0}', 'admin', 'police', 5, '[]', '[]', '{\"heading\":204.094482421875,\"x\":-122.92747497558594,\"y\":1009.8461303710938,\"z\":235.08349609375}', 'Leuzy', 'Leuzy', '02/11/2000', 'm', 150, '{\"hair\":{\"style\":73,\"color\":61,\"highlight\":61},\"headBlend\":{\"shapeFirst\":0,\"skinFirst\":3,\"skinSecond\":0,\"shapeSecond\":0,\"skinMix\":0,\"shapeMix\":0},\"eyeColor\":7,\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7},{\"texture\":0,\"drawable\":0,\"prop_id\":1},{\"texture\":2,\"drawable\":169,\"prop_id\":0}],\"faceFeatures\":{\"cheeksWidth\":0,\"nosePeakSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"nosePeakHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0,\"eyesOpening\":0,\"chinBoneLowering\":0,\"chinHole\":0,\"chinBoneSize\":0,\"eyeBrownForward\":0,\"chinBoneLenght\":0,\"noseWidth\":0,\"nosePeakLowering\":0,\"jawBoneWidth\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"eyeBrownHigh\":0,\"neckThickness\":0},\"model\":\"mp_m_freemode_01\",\"tattoos\":[],\"headOverlays\":{\"eyebrows\":{\"style\":30,\"opacity\":1,\"color\":61},\"makeUp\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":11,\"opacity\":1,\"color\":61},\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":0},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0}},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":2,\"drawable\":52,\"component_id\":4},{\"texture\":0,\"drawable\":131,\"component_id\":8},{\"texture\":3,\"drawable\":337,\"component_id\":11},{\"texture\":0,\"drawable\":169,\"component_id\":1},{\"texture\":2,\"drawable\":9,\"component_id\":6},{\"texture\":0,\"drawable\":26,\"component_id\":3}]}', '[{\"name\":\"hunger\",\"val\":621100,\"percent\":62.11},{\"name\":\"thirst\",\"val\":715825,\"percent\":71.58250000000001},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', 0, 0, 'OKMALIK', 6359, '[{\"slot\":36,\"name\":\"clem1\",\"count\":2}]', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(46) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(39, 'weapon', 'char1:9127acb345c982bbad878a4480a2c558f6cffc9d'),
(40, 'weapon', 'char1:03c05fa4c6577acd43518c597fadfffb9ee5aec2'),
(41, 'weapon', 'char1:ead2951e114e59fcc7b94b27923b8467104d65b9'),
(42, 'dmv', 'char1:3ff875e52e6fd4c837cd995db5bed281aa89999a'),
(43, 'weapon', 'char1:aeaf6a507d995a6d7cbf9a7550e128010359d148'),
(44, 'weapon', 'char1:ed80c260c095256057dc39835cee1298e983cbc2'),
(45, 'weapon', 'char1:0ced5e96294a0294d682acf070ea744a7337385d'),
(46, 'weapon', 'char1:0ced5e96294a0294d682acf070ea744a7337385d'),
(47, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(48, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(49, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(50, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(51, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(52, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(53, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(54, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(55, 'weapon', 'char1:0ced5e96294a0294d682acf070ea744a7337385d'),
(56, 'weapon', 'char1:0ced5e96294a0294d682acf070ea744a7337385d'),
(57, 'weapon', 'char1:0ced5e96294a0294d682acf070ea744a7337385d'),
(58, 'weapon', 'char1:0ced5e96294a0294d682acf070ea744a7337385d'),
(59, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(60, 'weapon', 'char1:5f38753bcb3d3e29ab32a4f38982f3b668494d68'),
(61, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(62, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(63, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(64, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(65, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(66, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(67, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(68, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(69, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(70, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(71, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(72, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(73, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(74, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(75, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(76, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(77, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(78, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(79, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(80, 'weapon', 'char1:a9b82ee0fa4497cc8aebae9c34159ae2faeabc92'),
(81, 'dmv', 'char1:b84e23e9c1b47dd89763319caeac6e6555710d98'),
(82, 'drive', 'char1:b84e23e9c1b47dd89763319caeac6e6555710d98'),
(83, 'dmv', 'char1:0c9749f3acb8b94d1d364b08b598ffa6d84b3a73'),
(84, 'dmv', 'char1:7f03c1e0cffa692606c0e4b05749345853c565a5');

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `stock` int(255) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`, `stock`) VALUES
('Akuma', 'AKUMA', 17500, 'motorcycles', 1),
('Alpha', 'alpha', 60000, 'sports', 1),
('Asea', 'asea', 7500, 'sedans', 1),
('Avarus', 'avarus', 18000, 'motorcycles', 1),
('Baller', 'baller2', 40000, 'suvs', 1),
('Baller Sport', 'baller3', 60000, 'suvs', 1),
('Banshee', 'banshee', 70000, 'sports', 1),
('Banshee 900R', 'banshee2', 255000, 'super', 1),
('Bati 801', 'bati', 12000, 'motorcycles', 1),
('Bati 801RR', 'bati2', 19000, 'motorcycles', 1),
('Bestia GTS', 'bestiagts', 55000, 'sports', 1),
('BF400', 'bf400', 11250, 'motorcycles', 1),
('Bf Injection', 'bfinjection', 16000, 'offroad', 1),
('Bifta', 'bifta', 12000, 'offroad', 1),
('Bison', 'bison', 45000, 'vans', 1),
('Blade', 'blade', 15000, 'muscle', 1),
('Blazer', 'blazer', 6500, 'offroad', 1),
('Blazer Sport', 'blazer4', 8500, 'offroad', 1),
('Blista', 'blista', 4000, 'compacts', 1),
('Bobcat XL', 'bobcatxl', 32000, 'vans', 1),
('Brawler', 'brawler', 45000, 'offroad', 1),
('Buccaneer', 'buccaneer', 18000, 'muscle', 1),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle', 1),
('Buffalo', 'buffalo', 14000, 'sports', 1),
('Buffalo S', 'buffalo2', 20000, 'sports', 1),
('Burrito', 'burrito3', 19000, 'vans', 1),
('Carbonizzare', 'carbonizzare', 75000, 'sports', 1),
('Carbon RS', 'carbonrs', 18000, 'motorcycles', 1),
('Cavalcade', 'cavalcade2', 55000, 'suvs', 1),
('Chimera', 'chimera', 38000, 'motorcycles', 1),
('Chino', 'chino', 20000, 'muscle', 1),
('Chino Luxe', 'chino2', 22000, 'muscle', 1),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles', 1),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes', 1),
('Cognoscenti', 'cognoscenti', 55000, 'sedans', 1),
('Comet', 'comet2', 65000, 'sports', 1),
('Contender', 'contender', 70000, 'suvs', 1),
('Coquette', 'coquette', 65000, 'sports', 1),
('Daemon', 'daemon', 11500, 'motorcycles', 1),
('Daemon High', 'daemon2', 13500, 'motorcycles', 1),
('Double T', 'double', 28000, 'motorcycles', 1),
('Dubsta', 'dubsta', 45000, 'suvs', 1),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs', 1),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad', 1),
('Elegy', 'elegy2', 38500, 'sports', 1),
('Emperor', 'emperor', 8500, 'sedans', 1),
('Enduro', 'enduro', 5500, 'motorcycles', 1),
('Esskey', 'esskey', 4200, 'motorcycles', 1),
('Exemplar', 'exemplar', 32000, 'coupes', 1),
('F620', 'f620', 40000, 'coupes', 1),
('Faction Rider', 'faction2', 30000, 'muscle', 1),
('Vespa', 'faggio2', 2800, 'motorcycles', 1),
('Felon', 'felon', 42000, 'coupes', 1),
('Felon GT', 'felon2', 55000, 'coupes', 1),
('Feltzer', 'feltzer2', 55000, 'sports', 1),
('FMJ', 'fmj', 185000, 'super', 1),
('Fugitive', 'fugitive', 12000, 'sedans', 1),
('Furore GT', 'furoregt', 45000, 'sports', 1),
('Gargoyle', 'gargoyle', 16500, 'motorcycles', 1),
('Glendale', 'glendale', 6500, 'sedans', 1),
('Grabger', 'granger', 50000, 'suvs', 1),
('Guardian', 'guardian', 45000, 'offroad', 1),
('Hakuchou', 'hakuchou', 31000, 'motorcycles', 1),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles', 1),
('Hexer', 'hexer', 12000, 'motorcycles', 1),
('Huntley S', 'huntley', 40000, 'suvs', 1),
('Innovation', 'innovation', 23500, 'motorcycles', 1),
('Intruder', 'intruder', 9500, 'sedans', 1),
('Jackal', 'jackal', 38000, 'coupes', 1),
('Jester', 'jester', 65000, 'sports', 1),
('Journey', 'journey', 16500, 'vans', 1),
('Ocelot Jugular', 'jugular', 140000, 'sports', 1),
('Khamelion', 'khamelion', 38000, 'sports', 1),
('Kuruma', 'kuruma', 40000, 'sports', 1),
('Lynx', 'lynx', 40000, 'sports', 1),
('Manana', 'manana', 12800, 'sportsclassics', 1),
('Manchez', 'manchez', 10550, 'motorcycles', 1),
('Mesa', 'mesa', 16000, 'suvs', 1),
('Mesa Trail', 'mesa3', 40000, 'suvs', 1),
('Minivan', 'minivan', 18000, 'vans', 1),
('Moonbeam Rider', 'moonbeam2', 28000, 'vans', 1),
('Nightblade', 'nightblade', 35000, 'motorcycles', 1),
('Nightshade', 'nightshade', 65000, 'muscle', 1),
('9F', 'ninef', 65000, 'sports', 1),
('9F Cabrio', 'ninef2', 80000, 'sports', 1),
('Omnis', 'omnis', 35000, 'sports', 1),
('Oracle XS', 'oracle2', 35000, 'coupes', 1),
('Osiris', 'osiris', 160000, 'super', 1),
('Patriot', 'patriot', 55000, 'suvs', 1),
('PCJ-600', 'pcj', 6200, 'motorcycles', 1),
('Pfister', 'pfister811', 85000, 'super', 1),
('Prairie', 'prairie', 12000, 'compacts', 1),
('Premier', 'premier', 8000, 'sedans', 1),
('Primo', 'primo', 18000, 'sedans', 1),
('Primo Custom', 'primo2', 12000, 'sedans', 1),
('Rapid GT', 'rapidgt', 35000, 'sports', 1),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports', 1),
('Rat bike  ', 'ratbike', 9000, 'motorcycles', 1),
('Reaper', 'reaper', 150000, 'super', 1),
('Rebel', 'rebel2', 35000, 'offroad', 1),
('Revolter ', 'revolter', 140000, 'sports', 1),
('Ruffian', 'ruffian', 6800, 'motorcycles', 1),
('Rumpo Trail', 'rumpo3', 30000, 'vans', 1),
('Sabre GT', 'sabregt2', 25000, 'muscle', 1),
('Sanchez', 'sanchez2', 9900, 'motorcycles', 1),
('Sanctus', 'sanctus', 25000, 'motorcycles', 1),
('Sandking', 'sandking', 19500, 'offroad', 1),
('Schafter', 'schafter2', 25000, 'sedans', 1),
('Sentinel', 'sentinel', 32000, 'coupes', 1),
('Sentinel XS', 'sentinel2', 40000, 'coupes', 1),
('Seven 70', 'seven70', 39500, 'sports', 1),
('ETR1', 'sheava', 220000, 'super', 1),
('Slam Van', 'slamvan3', 17500, 'muscle', 1),
('Stretch', 'stretch', 90000, 'sedans', 1),
('Sultan', 'sultan', 35000, 'sports', 1),
('Sultan RS', 'sultanrs', 75000, 'super', 1),
('Super Diamond', 'superd', 130000, 'sedans', 1),
('Surano', 'surano', 50000, 'sports', 1),
('T20', 't20', 300000, 'super', 1),
('Tailgater', 'tailgater', 30000, 'sedans', 1),
('Drift Tampa', 'tampa2', 80000, 'sports', 1),
('Thrust', 'thrust', 24000, 'motorcycles', 1),
('Trophy Truck', 'trophytruck', 60000, 'offroad', 1),
('Turismo R', 'turismor', 350000, 'super', 1),
('Virgo', 'virgo', 14000, 'muscle', 1),
('Voodoo', 'voodoo', 9800, 'muscle', 1),
('Vstr', 'vstr', 150000, 'sports', 1),
('Warrener', 'warrener', 4000, 'sedans', 1),
('Windsor', 'windsor', 95000, 'coupes', 1),
('Windsor Drop', 'windsor2', 125000, 'coupes', 1),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles', 1),
('XLS', 'xls', 32000, 'suvs', 1),
('Zentorno', 'zentorno', 1500000, 'super', 1),
('Zombie', 'zombiea', 9500, 'motorcycles', 1),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`, `image`) VALUES
('compacts', 'Compacts', NULL),
('coupes', 'Coupés', NULL),
('sedans', 'Sedans', NULL),
('sports', 'Sports', NULL),
('sportsclassics', 'Sports Classics', NULL),
('super', 'Super', NULL),
('muscle', 'Muscle', NULL),
('offroad', 'Off Road', NULL),
('suvs', 'SUVs', NULL),
('vans', 'Vans', NULL),
('motorcycles', 'Motos', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vehicle_sold`
--

INSERT INTO `vehicle_sold` (`client`, `model`, `plate`, `soldby`, `date`) VALUES
('Aaron Stoev', 'Felon GT', 'CUXQ9511', 'Aaron Stoev', '2024-03-05 20:25'),
('Dasda Azaaa', 'Buffalo S', 'TQKJ8783', 'Masta Goon', '2023-11-27 21:43'),
('Emile Cooper', 'Vstr', 'LJJV6193', 'Emile Cooper', '2023-12-15 18:21'),
('John Medina', 'Blista', 'AILV4152', 'John Medina', '2024-02-08 18:50'),
('Kelyan Dutronc', '9F', 'FGLL7739', 'Tom Hernandez', '2024-02-05 21:53'),
('Leuzy Leuzy', 'Blista', 'WJHG0790', 'Aaron Smith', '2024-07-16 17:53'),
('Teste Base', 'Carbonizzare', 'FIZZ3532', 'Teste Base', '2024-02-11 05:04'),
('Theo Chenafi', 'Vstr', 'ADMY8792', 'Theo Chenafi', '2024-02-11 12:30'),
('Tom Hernandez', 'Cognoscenti Cabrio', 'LGDP1967', 'Kelyan Dutronc', '2024-02-05 21:55'),
('Weels Beck', 'Patriot', 'TDKU4186', 'Weels Beck', '2023-11-13 21:48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`license`);

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `automatisation`
--
ALTER TABLE `automatisation`
  ADD UNIQUE KEY `society` (`society`);

--
-- Index pour la table `banlist`
--
ALTER TABLE `banlist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing_declinaison`
--
ALTER TABLE `billing_declinaison`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing_hist`
--
ALTER TABLE `billing_hist`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing_hist_entreprise`
--
ALTER TABLE `billing_hist_entreprise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `boutique_historique`
--
ALTER TABLE `boutique_historique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coffre_fort`
--
ALTER TABLE `coffre_fort`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fav_emote`
--
ALTER TABLE `fav_emote`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gksphone_app_chat`
--
ALTER TABLE `gksphone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gksphone_bank_transfer`
--
ALTER TABLE `gksphone_bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `gksphone_blockednumber`
--
ALTER TABLE `gksphone_blockednumber`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `gksphone_calls`
--
ALTER TABLE `gksphone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gksphone_gallery`
--
ALTER TABLE `gksphone_gallery`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `gksphone_group_message`
--
ALTER TABLE `gksphone_group_message`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groupid` (`groupid`) USING BTREE;

--
-- Index pour la table `gksphone_job_message`
--
ALTER TABLE `gksphone_job_message`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `gksphone_messages`
--
ALTER TABLE `gksphone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gksphone_messages_group`
--
ALTER TABLE `gksphone_messages_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `gksphone_settings`
--
ALTER TABLE `gksphone_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Index pour la table `gksphone_twitter_accounts`
--
ALTER TABLE `gksphone_twitter_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Index pour la table `gksphone_twitter_likes`
--
ALTER TABLE `gksphone_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gksphone_twitter_likes_gksphone_twitter_accounts` (`authorId`),
  ADD KEY `FK_gksphone_twitter_likes_gksphone_twitter_tweets` (`tweetId`);

--
-- Index pour la table `gksphone_twitter_tweets`
--
ALTER TABLE `gksphone_twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` (`authorId`);

--
-- Index pour la table `gksphone_users_contacts`
--
ALTER TABLE `gksphone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique_concessionnaire`
--
ALTER TABLE `historique_concessionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `keep_containers`
--
ALTER TABLE `keep_containers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `random_id` (`random_id`);

--
-- Index pour la table `keep_containers_access_log`
--
ALTER TABLE `keep_containers_access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `random_id` (`random_id`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `multicharacter_codes`
--
ALTER TABLE `multicharacter_codes`
  ADD PRIMARY KEY (`#`);

--
-- Index pour la table `multicharacter_slots`
--
ALTER TABLE `multicharacter_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE,
  ADD KEY `slots` (`slots`) USING BTREE;

--
-- Index pour la table `okokBanking_transactions`
--
ALTER TABLE `okokBanking_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `okokbilling`
--
ALTER TABLE `okokbilling`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `outfits`
--
ALTER TABLE `outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Index pour la table `PedTable`
--
ALTER TABLE `PedTable`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Index pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_player_outfit_codes_player_outfits` (`outfitid`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `society_vehicles`
--
ALTER TABLE `society_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `identifier` (`identifier`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD UNIQUE KEY `client` (`client`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `banlist`
--
ALTER TABLE `banlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `billing_declinaison`
--
ALTER TABLE `billing_declinaison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `billing_hist`
--
ALTER TABLE `billing_hist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `billing_hist_entreprise`
--
ALTER TABLE `billing_hist_entreprise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `boutique_historique`
--
ALTER TABLE `boutique_historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `coffre_fort`
--
ALTER TABLE `coffre_fort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `fav_emote`
--
ALTER TABLE `fav_emote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `gksphone_app_chat`
--
ALTER TABLE `gksphone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gksphone_bank_transfer`
--
ALTER TABLE `gksphone_bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `gksphone_blockednumber`
--
ALTER TABLE `gksphone_blockednumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gksphone_calls`
--
ALTER TABLE `gksphone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT pour la table `gksphone_gallery`
--
ALTER TABLE `gksphone_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `gksphone_group_message`
--
ALTER TABLE `gksphone_group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gksphone_job_message`
--
ALTER TABLE `gksphone_job_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `gksphone_messages`
--
ALTER TABLE `gksphone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT pour la table `gksphone_messages_group`
--
ALTER TABLE `gksphone_messages_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gksphone_settings`
--
ALTER TABLE `gksphone_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT pour la table `gksphone_twitter_accounts`
--
ALTER TABLE `gksphone_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `gksphone_twitter_likes`
--
ALTER TABLE `gksphone_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `gksphone_twitter_tweets`
--
ALTER TABLE `gksphone_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `gksphone_users_contacts`
--
ALTER TABLE `gksphone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `historique_concessionnaire`
--
ALTER TABLE `historique_concessionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `jail`
--
ALTER TABLE `jail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=833;

--
-- AUTO_INCREMENT pour la table `keep_containers`
--
ALTER TABLE `keep_containers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `keep_containers_access_log`
--
ALTER TABLE `keep_containers_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `multicharacter_codes`
--
ALTER TABLE `multicharacter_codes`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `okokBanking_transactions`
--
ALTER TABLE `okokBanking_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `okokbilling`
--
ALTER TABLE `okokbilling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `outfits`
--
ALTER TABLE `outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `PedTable`
--
ALTER TABLE `PedTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `gksphone_group_message`
--
ALTER TABLE `gksphone_group_message`
  ADD CONSTRAINT `FK_phonegroupmessage` FOREIGN KEY (`groupid`) REFERENCES `gksphone_messages_group` (`id`);

--
-- Contraintes pour la table `gksphone_twitter_likes`
--
ALTER TABLE `gksphone_twitter_likes`
  ADD CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `gksphone_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `gksphone_twitter_tweets`
--
ALTER TABLE `gksphone_twitter_tweets`
  ADD CONSTRAINT `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
