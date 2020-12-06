-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 06 déc. 2020 à 15:28
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(51, 'items', 1, 1, 'Diplome 1', 'Diplome 1\nM1 Informatique\n2019/2020'),
(52, 'items', 1, 1, 'Etudiant 1', 'Etudiant 1 \namel@gmail.com\n22\nmourah\namel\n123454\n06194747'),
(53, 'items', 1, 1, 'Formation 1', 'Formation 1\nMaster Informatique parcours générale\nDepartement Informatique'),
(54, 'items', 1, 1, 'Social network 1', 'Social network 1\namel.youtube\namel.whatsapp\nhttps://amel.com\namel mourah\namel\namel mourah'),
(55, 'items', 1, 1, 'cours 1', 'cours 1\narts plastique\nhabib balit\noctobre - decembre 2020'),
(56, 'items', 1, 1, 'cours 2', 'cours 2\nintellegence artificiel\nprof cours 2\noct dec 2020'),
(57, 'items', 1, 1, 'cours 3', 'cours 3\nbig data\nprof cours 3\noct - dec 2020'),
(58, 'items', 1, 1, 'Social Network 2', 'Social Network 2\nyoutube 1 \nwhatsapp 1 \nweb site 1 \nlinkedin 1 \nfacebook 1 \ninstagram 1 '),
(59, 'items', 1, 1, 'social Network 3', 'social Network 3\nyoutube 2 \nwhatsapp 2\nweb site 2\nlinkedin 2\nfacebook 2\ninstagram 2'),
(60, 'items', 1, 1, 'social network 4', 'social network 4\nyoutube 2 \namel \nwww.amel.com\nlinkedin 2 \namel \namel mourah '),
(61, 'items', 1, 1, 'Formation 2', 'Formation 2\nM2 thype\nInformatique'),
(62, 'items', 1, 1, 'Formation 3', 'Formation 3\nNet\nCommunication'),
(63, 'items', 1, 1, 'Etudiant 2', 'Etudiant 2\ntina@gmail.com\n24\nifrene\ntina\n12435'),
(64, 'items', 1, 1, 'Etudiant 3', 'Etudiant 3\namel@gmail.com\n22\nmourah\namel\n123546\n124348'),
(65, 'items', 1, 1, 'etudiant 4', 'etudiant 4\nhabib@gmail.com\n40\nbalit\nhabib\n2344676\n0152634'),
(66, 'items', 1, 1, 'Etudiant 5', 'Etudiant 5\nlilia@gmail.com\n18\nmourah\nlilia\n12346\n09864537489'),
(67, 'items', 1, 1, 'Etudiant 6', 'Etudiant 6\nmelissa@gmail.com\n23\nmourah\nmelissa\n123456\n0123456789'),
(68, 'items', 1, 1, 'cours 4', 'cours 4\nreseau\nAli \noct-nov 2020'),
(69, 'items', 1, 1, 'cours 5', 'cours 5\nmédia \namel mourah\noct-nov 2020'),
(70, 'items', 1, 1, 'cours 6', 'cours 6\nconduite projet\nimad\noct-nov 2020'),
(71, 'items', 1, 1, 'socialNetwork 5', 'socialNetwork 5\nyoutube.youtube\namel mourah\nwww.amel.com\namel mourah\namel mourah\namel'),
(72, 'items', 1, 1, 'social Network 7', 'social Network 7\nyoutube.youtube\namel mourah\nwww.amel.com\namel mourah\namel\namel'),
(73, 'items', 1, 1, 'social Network 6', 'social Network 6\nyoutube.youtube\namel mourah\nwww.tina.com\ntina ifrene\ntina \ntina'),
(74, 'items', 1, 1, 'Formation 4', 'Formation 4\nL3 MIME\nInformatique'),
(75, 'items', 1, 1, 'formation 5', 'formation 5\nlicence informatique\ninformatique'),
(76, 'items', 1, 1, 'Formation 6', 'Formation 6\nMathématique\nInformatique et mathématique'),
(77, 'item_sets', 1, 1, 'liste etudiants', 'liste etudiants'),
(78, 'item_sets', 1, 1, 'Réseaux sociaux', 'Réseaux sociaux'),
(79, 'item_sets', 1, 1, 'liste de cours', 'liste de cours'),
(80, 'item_sets', 1, 1, 'liste de formations', 'liste de formations'),
(81, 'item_sets', 1, 1, 'liste de diplomes', 'liste de diplomes'),
(82, 'items', 1, 1, 'Diplome 2', 'Diplome 2 \nLicence technologie\n2006/2007');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(82);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(52, 77),
(53, 80),
(54, 78),
(55, 79),
(56, 79),
(57, 79),
(58, 78),
(59, 78),
(60, 78),
(61, 80),
(62, 80),
(63, 77),
(64, 77),
(65, 77),
(66, 77),
(67, 77),
(68, 79),
(69, 79),
(70, 79),
(71, 78),
(73, 78),
(74, 80),
(75, 80),
(76, 80);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(77, 1),
(78, 0),
(79, 0),
(80, 0),
(81, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"121\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"77\"]}}', '2020-11-21T19:13:53+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-21T19:13:53+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-21 19:13:53', '2020-11-21 19:13:53'),
(2, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"121\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"77\"]}}', '2020-11-21T19:15:22+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-21T19:15:22+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-21 19:15:22', '2020-11-21 19:15:22'),
(3, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"121\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"77\"]}}', '2020-11-21T19:19:45+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-21T19:19:45+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-21 19:19:45', '2020-11-21 19:19:45'),
(4, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"125\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"78\"]}}', '2020-11-21T21:20:59+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-21T21:20:59+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-21 21:20:59', '2020-11-21 21:20:59');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(301, 1, 18, 'voc.ttlemail', 'email', NULL),
(302, 1, 18, 'voc.ttlstudent_number', 'Numéro étudiant', NULL),
(303, 1, 18, 'voc.ttlintitule', 'intitule', NULL),
(304, 1, 18, 'voc.ttlannee', 'annee', NULL),
(305, 1, 18, 'voc.ttlnomcours', 'nom cours', NULL),
(306, 1, 18, 'voc.ttlprofesseur', 'professeur', NULL),
(307, 1, 18, 'voc.ttlperiode', 'periode', NULL),
(308, 1, 18, 'voc.ttlnomformation', 'nom formation', NULL),
(309, 1, 18, 'voc.ttldepartement', 'departement', NULL),
(310, 1, 18, 'voc.ttlfacebook', 'facebook', NULL),
(311, 1, 18, 'voc.ttlinstagram', 'instagram', NULL),
(312, 1, 18, 'voc.ttllinkedin', 'linkedin', NULL),
(313, 1, 18, 'voc.ttlwhatsapp', 'whatsapp', NULL),
(314, 1, 18, 'voc.ttlyoutube', 'youtube', NULL),
(315, 1, 18, 'voc.ttlwebsite', 'web site', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(51, 1, 124, 12, NULL, 'Diplome 1', 1, '2020-11-15 23:07:05', '2020-11-15 23:07:31', 'Omeka\\Entity\\Item'),
(52, 1, 121, 10, NULL, 'Etudiant 1', 1, '2020-11-15 23:08:45', '2020-11-21 19:21:59', 'Omeka\\Entity\\Item'),
(53, 1, 122, 11, NULL, 'Formation 1', 1, '2020-11-15 23:09:49', '2020-11-21 21:31:01', 'Omeka\\Entity\\Item'),
(54, 1, 125, 13, NULL, 'Social network 1', 1, '2020-11-15 23:11:21', '2020-11-21 21:24:07', 'Omeka\\Entity\\Item'),
(55, 1, 123, 14, NULL, 'cours 1', 1, '2020-11-15 23:15:05', '2020-11-21 21:30:15', 'Omeka\\Entity\\Item'),
(56, 1, 123, 14, NULL, 'cours 2', 1, '2020-11-15 23:20:26', '2020-11-21 21:30:15', 'Omeka\\Entity\\Item'),
(57, 1, 123, 14, NULL, 'cours 3', 1, '2020-11-15 23:21:03', '2020-11-21 21:30:15', 'Omeka\\Entity\\Item'),
(58, 1, 125, 13, NULL, 'Social Network 2', 1, '2020-11-15 23:22:26', '2020-11-21 21:24:28', 'Omeka\\Entity\\Item'),
(59, 1, 125, 13, NULL, 'social Network 3', 1, '2020-11-15 23:23:37', '2020-11-21 21:24:54', 'Omeka\\Entity\\Item'),
(60, 1, 125, 13, NULL, 'social network 4', 1, '2020-11-15 23:25:34', '2020-11-21 21:25:27', 'Omeka\\Entity\\Item'),
(61, 1, 122, 11, NULL, 'Formation 2', 1, '2020-11-15 23:26:16', '2020-11-21 21:31:01', 'Omeka\\Entity\\Item'),
(62, 1, 122, 11, NULL, 'Formation 3', 1, '2020-11-15 23:26:51', '2020-11-21 21:31:01', 'Omeka\\Entity\\Item'),
(63, 1, 121, 10, NULL, 'Etudiant 2', 1, '2020-11-15 23:29:11', '2020-11-21 19:20:45', 'Omeka\\Entity\\Item'),
(64, 1, 121, 10, NULL, 'Etudiant 3', 1, '2020-11-15 23:29:52', '2020-11-21 19:21:00', 'Omeka\\Entity\\Item'),
(65, 1, 121, 10, NULL, 'etudiant 4', 1, '2020-11-15 23:30:37', '2020-11-21 19:21:16', 'Omeka\\Entity\\Item'),
(66, 1, 121, 10, NULL, 'Etudiant 5', 1, '2020-11-16 08:08:29', '2020-11-21 19:21:31', 'Omeka\\Entity\\Item'),
(67, 1, 121, 10, NULL, 'Etudiant 6', 1, '2020-11-16 08:10:19', '2020-11-21 19:07:16', 'Omeka\\Entity\\Item'),
(68, 1, 123, 14, NULL, 'cours 4', 1, '2020-11-16 08:12:20', '2020-11-21 21:30:15', 'Omeka\\Entity\\Item'),
(69, 1, 123, 14, NULL, 'cours 5', 1, '2020-11-16 08:13:31', '2020-11-21 21:30:15', 'Omeka\\Entity\\Item'),
(70, 1, 123, 14, NULL, 'cours 6', 1, '2020-11-16 08:14:53', '2020-11-21 21:30:15', 'Omeka\\Entity\\Item'),
(71, 1, 125, 13, NULL, 'socialNetwork 5', 1, '2020-11-16 09:01:27', '2020-11-21 21:25:27', 'Omeka\\Entity\\Item'),
(72, 1, 125, 13, NULL, 'social Network 7', 1, '2020-11-16 09:03:01', '2020-11-19 19:24:54', 'Omeka\\Entity\\Item'),
(73, 1, 125, 13, NULL, 'social Network 6', 1, '2020-11-16 09:04:32', '2020-11-21 21:25:57', 'Omeka\\Entity\\Item'),
(74, 1, 122, 11, NULL, 'Formation 4', 1, '2020-11-16 09:05:36', '2020-11-21 21:31:01', 'Omeka\\Entity\\Item'),
(75, 1, 122, 11, NULL, 'formation 5', 1, '2020-11-16 09:06:46', '2020-11-21 21:31:01', 'Omeka\\Entity\\Item'),
(76, 1, 122, 11, NULL, 'Formation 6', 1, '2020-11-19 19:26:28', '2020-11-21 21:31:01', 'Omeka\\Entity\\Item'),
(77, 1, NULL, NULL, NULL, 'liste etudiants', 1, '2020-11-21 18:57:54', '2020-11-21 19:18:56', 'Omeka\\Entity\\ItemSet'),
(78, 1, NULL, NULL, NULL, 'Réseaux sociaux', 1, '2020-11-21 21:20:10', '2020-11-21 21:20:10', 'Omeka\\Entity\\ItemSet'),
(79, 1, NULL, NULL, NULL, 'liste de cours', 1, '2020-11-21 21:29:00', '2020-11-21 21:29:00', 'Omeka\\Entity\\ItemSet'),
(80, 1, NULL, NULL, NULL, 'liste de formations', 1, '2020-11-21 21:29:26', '2020-11-21 21:29:26', 'Omeka\\Entity\\ItemSet'),
(81, 1, NULL, NULL, NULL, 'liste de diplomes', 1, '2020-11-21 21:32:08', '2020-11-21 21:32:08', 'Omeka\\Entity\\ItemSet'),
(82, 1, 124, 12, NULL, 'Diplome 2', 1, '2020-11-21 21:38:31', '2020-11-21 21:38:31', 'Omeka\\Entity\\Item');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(121, 1, 18, 'voc.ttlStudent', 'etudiant', NULL),
(122, 1, 18, 'voc.ttlformation', 'formation', NULL),
(123, 1, 18, 'voc.ttlcours', 'cours', NULL),
(124, 1, 18, 'voc.ttldiplome', 'diplome', NULL),
(125, 1, 18, 'voc.ttlsocialNetwork', 'socialNetwork', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(10, 1, 121, NULL, NULL, 'Etudiant'),
(11, 1, 122, NULL, NULL, 'Formation'),
(12, 1, 124, NULL, NULL, 'Diplome'),
(13, 1, 125, NULL, NULL, 'Social Network'),
(14, 1, 123, NULL, NULL, 'Cours');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0),
(126, 10, 1, NULL, NULL, 1, NULL, 0, 0),
(127, 10, 4, NULL, NULL, 2, NULL, 0, 0),
(128, 10, 301, NULL, NULL, 3, NULL, 0, 0),
(129, 10, 183, NULL, NULL, 4, NULL, 0, 0),
(130, 10, 144, NULL, NULL, 5, NULL, 0, 0),
(131, 10, 139, NULL, NULL, 6, NULL, 0, 0),
(132, 10, 302, NULL, NULL, 7, NULL, 0, 0),
(133, 10, 146, NULL, NULL, 8, NULL, 0, 0),
(134, 11, 1, NULL, NULL, 1, NULL, 0, 0),
(135, 11, 4, NULL, NULL, 2, NULL, 0, 0),
(136, 11, 308, NULL, NULL, 3, NULL, 0, 0),
(137, 11, 309, NULL, NULL, 4, NULL, 0, 0),
(138, 12, 1, NULL, NULL, 1, NULL, 0, 0),
(139, 12, 4, NULL, NULL, 2, NULL, 0, 0),
(140, 12, 303, NULL, NULL, 3, NULL, 0, 0),
(141, 12, 304, NULL, NULL, 4, NULL, 0, 0),
(142, 13, 1, NULL, NULL, 1, NULL, 0, 0),
(143, 13, 4, NULL, NULL, 2, NULL, 0, 0),
(144, 13, 314, NULL, NULL, 3, NULL, 0, 0),
(145, 13, 313, NULL, NULL, 4, NULL, 0, 0),
(146, 13, 315, NULL, NULL, 5, NULL, 0, 0),
(147, 13, 312, NULL, NULL, 6, NULL, 0, 0),
(148, 13, 310, NULL, NULL, 7, NULL, 0, 0),
(149, 13, 311, NULL, NULL, 8, NULL, 0, 0),
(150, 14, 1, NULL, NULL, 1, NULL, 0, 0),
(151, 14, 4, NULL, NULL, 2, NULL, 0, 0),
(152, 14, 305, NULL, NULL, 3, NULL, 0, 0),
(153, 14, 306, NULL, NULL, 4, NULL, 0, 0),
(154, 14, 307, NULL, NULL, 5, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('8a9c7qi1q5ovbc5hulljtss3bi', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363030323634332e3139333939333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e6737646469326669757473336331316b3263336333616d7434223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353938383236383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363030363234333b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363030313838363b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363030313935393b7d7d72656469726563745f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f6974656d223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223439323830386665353635333733656336303261383661363435336264633164223b733a33323a223537333162316264316335316633313034323831333362633131643862316433223b7d733a343a2268617368223b733a36353a2235373331623162643163353166333130343238313333626331316438623164332d3439323830386665353635333733656336303261383661363435336264633164223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31393433333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3233393a7b733a33323a223730663938343838343963636230336366333334333763643230653739363563223b733a33323a223762383230613130663166646435323362646134653832616439313561393366223b733a33323a226265313034643361336531663537643533626365656430356335373733393733223b733a33323a226562313636326262623231663838346232353661373038373538336363396566223b733a33323a223937396637326338623432383932326363396361653431623239353865356132223b733a33323a226164383662666335303266313666366533393533323537303131316534646239223b733a33323a223632613335306663313630386232323739656562363936623635646265623237223b733a33323a223362373239623532303932656663666235333862313762336233363361636365223b733a33323a223034316637656530333937363761306636383738353265346637633137623430223b733a33323a226339623066336365363638386530383362343964383634626333666666653533223b733a33323a223531663466343837613737613030356363663637333431626435623138313931223b733a33323a223634386130613136336164346261636338306332653933363662356633376136223b733a33323a223565316237613764326266383634616336393463356636643262643839633765223b733a33323a223430663461643137383937306333323262626362666239366131333366633631223b733a33323a223737333734623639303432383638636132643963616166646136306431376138223b733a33323a226336663737663265633536326538323633326464613831646264343937303839223b733a33323a226562373733326263336132663665663635316137393763656336373662623463223b733a33323a226438613730653437656263643938376531326261656132396632336138323736223b733a33323a223331623338323434396161373935626132653832613466613865383736656531223b733a33323a226661393761646236356130303334313862353334633763633561316162386530223b733a33323a226262323535396133376565383239633532653039626363303361386165376530223b733a33323a226161633035346163323463643162623530313062306163613261643739623763223b733a33323a223261366166323838623333646137316364323165353362393663396232363636223b733a33323a223866393362666430303432633738393034616630646632353963333835303364223b733a33323a223665653362393233366331656566343330316639333139353562376535313339223b733a33323a226132323334623038356165663166666238636463623762646234356663633834223b733a33323a223432323433353638333838383961336463623831326561383437646461336266223b733a33323a223761653963626131646338303062643161343334313530383838653465626363223b733a33323a226462373038363330323466386330313334373332616137633535323934633732223b733a33323a223333363239666263353162306661633062303363656531633338323066663462223b733a33323a223237373732643362613736653439336233323331336661353166336433626132223b733a33323a226431386439386633656666643538646330396636333063653563636662303661223b733a33323a223533313631323265333433343862323130643932663366613636313865316234223b733a33323a223664323430373234386434656233333862376130343562643464633265666334223b733a33323a223366346263336565386563613032383636323633393439623666663863393962223b733a33323a226132663466653134346165306636633832386462373538383463306234383333223b733a33323a226235323363316166616363663262623334336662336238393434666661343733223b733a33323a226462666165643435353738333039646633363635623031396430616362643765223b733a33323a223965363564333638356338646261313562633466306332356635356561643734223b733a33323a223661346339656339326665373436316334623938373565353161663738353861223b733a33323a226539343838623761373634373534666239386138386561336638383332373664223b733a33323a226265306366656439306265383934353231376132333431323337616661616432223b733a33323a223333393038643530333336336131636462633639326432346437373531356135223b733a33323a223638623032363632386630343134306563363566393061616161393739366464223b733a33323a223039623165623561626464323461383038336133646434396639313132643138223b733a33323a226337333038656332623863336633323661663631323131396432616163313930223b733a33323a223434396433323832623139626332613861666236626532656331306138366130223b733a33323a223637616562316463653430336336666439363836303335626633646237646634223b733a33323a226331383234303136313236363865343563323634663465343736386538316430223b733a33323a226565326132623734336431613162396631616431613634396232396539346331223b733a33323a226536383337323930353162353837633337363763383363373932353433363361223b733a33323a223162303034633437303061653331356235376239643931343130623261643162223b733a33323a223538643030353831343464333030303464373831393261323666616537373163223b733a33323a223539333431336566396136633732393830646562646566333137343062616537223b733a33323a223438303964363736363363626137666430363234323866376131663265396435223b733a33323a223239333033303338666630313763623763303563373162306134623931383039223b733a33323a226564306538363231316330333034663765653635366332386339623063363232223b733a33323a226165383166333463353835363062643333363864353665376564323331623465223b733a33323a226264303932303765323163633465626561393436313336376336653362343866223b733a33323a223763353230313164386165323366353564393736303663386436613936643437223b733a33323a223561653665633862646164383333613432326462663932393065306565373063223b733a33323a223030383938633132653666316164323733666530386632653334343763373135223b733a33323a223562613365323531636130633165346630626539623162326134343936373066223b733a33323a223030636131616566616137643732303730353065636431383038326164396332223b733a33323a223638646131326232633434616338626364363763626666323238666465386131223b733a33323a223735373639303863313430363531643335616164313635333363343936653161223b733a33323a226131353339633963393533393031646630323638316563393334313734336461223b733a33323a223063613839613736653165393939636537666530666639656337613635326164223b733a33323a226261353865326530313734336137636563366437363334633066383463383564223b733a33323a223062376338306437653031636535366261333131636264656333666536373462223b733a33323a223232353437643338666462633364333936336363653663326438343932643636223b733a33323a226336336637303738643065306332343039366231356431623132353964643638223b733a33323a223936316536316637656433343734356262353733636665333266643064376665223b733a33323a226330306238313437633534303662643030643139356666356532383666383864223b733a33323a223464626564333336396339656564373464626439396235383061626565646561223b733a33323a226331343261353761613662306432336530356133316131663264386637623464223b733a33323a226334346635333233663734356130326538313432623833643266373939616461223b733a33323a223130396130363433353865316132333437373936613632323932363762346539223b733a33323a226438376561333361383937393561336631303834393835343532343133653333223b733a33323a223736663261326535336530396565373836336632633237383263336465656230223b733a33323a226462666538376432306334363235373934306633306265633533323337363939223b733a33323a223435666662656262316132626234633030663836363963316232316662376533223b733a33323a223866626363656165393964363836363539313566326438303966656538373161223b733a33323a226530323736383462626464633032663932363733653763643162663530643664223b733a33323a226639383939623231396436393364646466663665336664323961623834343066223b733a33323a226231373937623138303563343736353033313632306232363464343664663461223b733a33323a223234366430366233663264333432653037336635666634666638666462626439223b733a33323a223730323238663264316631663865616464396233386637626165373436623131223b733a33323a223232333362626262643964633331366662656561633731383137366664336564223b733a33323a226234313038396262353263383062636330636637366333623462313766373935223b733a33323a223335363530376131396261653337376166363937386133623836313265363430223b733a33323a223339313262623832323662313365646437303463326531663034613163656130223b733a33323a223831613364613163316465633435303738636639363361313538633633383030223b733a33323a223664613561343530333962343462393065376335616538393235343936343236223b733a33323a226238336461316565303838316339333633616237356136666263616133626539223b733a33323a226639323061383237353465333734663062353862356635386664313061616436223b733a33323a223861333866353934366530323230383337303838396165313039653132306534223b733a33323a226335383733386361646662343764636164663137373534656533333639396265223b733a33323a226661356634636233343639346562363664323436303461323633343261356239223b733a33323a226232633564646639313930356539396531656163323233326136663230333835223b733a33323a223936343434336136616533626631376362346232346263353432383534333139223b733a33323a226137383864613337383965643133383732636536363166663266363337386631223b733a33323a226665616238336235323436316264623939366666633837623533343166336663223b733a33323a223139393131366262626564313933343062343331613134666265656337326430223b733a33323a223761663636356565643535666365333264653833633262643163653563393763223b733a33323a226263646639636661373464333362343037613032633336336437393634336233223b733a33323a223134316237653563333765336433666238323034323266366363323036333537223b733a33323a223066393762333630333266356161356262343934353234366366383961666466223b733a33323a223266613736343766346638396132316461383865343536356235643531386532223b733a33323a223066373331353164373339393234616565626361386339363063653635383162223b733a33323a226565353965346639633033383838616337626237633766626233333866303265223b733a33323a223161393231393634313634623938643762313861623432303738353636653761223b733a33323a223635616333323566373266633234393966633931343539303437663632343330223b733a33323a226435663666353430303134303535376137626431343762376331346430663434223b733a33323a223131323466646436623938306132646531653866306366383936303936343466223b733a33323a223565343334653465613839396134326162313432373564336137663962313333223b733a33323a223336383038333034313333353038313439656437616463343166346632383737223b733a33323a226262303834383366313131623837306561636561373830383030386130616532223b733a33323a226439396562663138386130326632313530313066613338653563306465386162223b733a33323a226630303436666135643362373766656330393235326433626164326138386639223b733a33323a226162343063356661333034353439383863376233363062303565373939363731223b733a33323a223861653139363335636264376165373236323836643764653864616565393039223b733a33323a226334626635643563623739663539653236396330303239653366663334313330223b733a33323a226464643261343561653961653731373435666337376335383863356637636136223b733a33323a223135666535353836613932313134353131326239323839623031333161636537223b733a33323a223234313833626339663935396130396164623266636530313135323265623962223b733a33323a223738343564326566343733353964396639656532633966623137633966343965223b733a33323a226665383437626431636631626464316166346230623935393236663938343166223b733a33323a226239383063316166336331386363353632323465323832323263333362633665223b733a33323a226334363834333831633763663336333237346661373036376365386664656238223b733a33323a226338373533393964373664616430636230653839626337376637333561383066223b733a33323a226635633130636164306232636463326661303534623661626164643338333461223b733a33323a226133373130356638343465363838346135656438316165303335313837393035223b733a33323a223863653663353663386262353866366566363937613930616161663033636234223b733a33323a226463666538626239393862663333613237613464316362376664643639306539223b733a33323a226464353339663164333266663032333066386332356463316164343061626235223b733a33323a226561313839646334343164306662366662346434343366326363613139646137223b733a33323a223364626139666230643635346265353433633430323833623831346564376235223b733a33323a223635656337666638373933343234383635613663366464376264373366346336223b733a33323a223734306266616238313832383138633063383635663330643135373530656366223b733a33323a223137396165346434323738663331333938336138376334366665343962323538223b733a33323a223330656431383039303933333831316630383130346235316436613365306466223b733a33323a226162623864346437396666316462313033633936653764373763646231353531223b733a33323a226164663834313634396431663333626662663235663932663935623636633563223b733a33323a223064356662323933373366633530363938373663376261353561653037343065223b733a33323a226363373139366563653830373966393136643363643834653531356635613933223b733a33323a223263366234616138353238613865333535656133633130303162396662303032223b733a33323a223131386264383138343537336436643134353265343835316532666665636134223b733a33323a223134353136383436643235356563386362383661666263656136373730366631223b733a33323a223631346535313937653435383031383035623261613364326435613636353731223b733a33323a223666363164363563343235336665336465666635393336363061356465396636223b733a33323a223539343332666133393066393733313364653530343065396131613163613136223b733a33323a226236343638316639626432626438313265353163623161356238383465653233223b733a33323a226630626238326662396165343535346233396165323832366662346263376337223b733a33323a223164666637303139303936356439346436626136393661383733376433653935223b733a33323a223935333837353936653136643366303335363135383935666361356663636566223b733a33323a223163393030663334643833633865636136333632313431356363353465356231223b733a33323a223535633335646631366564353730613365613733363461303337303530326534223b733a33323a223836623734343333376563626164356561373332633061653436636130616663223b733a33323a226431393833343434633066623238633733376239386430343165353137343839223b733a33323a223562636666393265366561666466326437356164366361393233333262623334223b733a33323a223335623764616338333363653831316163336165353432316230396539343864223b733a33323a223239393532373762376464353939356335643265343632333863613661343734223b733a33323a223534643538373835653364316465363335353539636431383536323732386336223b733a33323a226166323138613231343066646562613238663932333132366161626166323238223b733a33323a226564633634653963306330363739643364383833396538373835363332353331223b733a33323a223131383666343433363834646533646534396237376166313461633562303835223b733a33323a223962303338373030653638366638363030323866316264366331636237383036223b733a33323a223564643761643363626536643034376463633365376464303932343839613565223b733a33323a223138343735306535343737636361323863353866653365363630636436336566223b733a33323a223836633363356562616366333863306536643530656234333133373130316135223b733a33323a223962303231323239343933653433333735393862386239636636383234366531223b733a33323a223934633862653930393839353263666433373636313732633364396132663462223b733a33323a226539353666616333326136616434303161666533613638396161306463623530223b733a33323a223530366462366666333066343662383136663561346130313964356535653137223b733a33323a223535303331393330336664626632333032353835313739356333363032313535223b733a33323a223235663937353036313763353630346264626339323532646431333331626137223b733a33323a223338343465633837376130666332323132306336666430326630646263323935223b733a33323a226166366163663939346332653264646232383564633631616137346563343163223b733a33323a223630653166626566373230383766616639326336316235363162326266613432223b733a33323a226261323930326266386131306264306638343139366466373636653238326132223b733a33323a226666616334653130333630333262623762333733613966623537633537626630223b733a33323a223636363039613362376531373861613137643865313162616564653164353431223b733a33323a223830656662613465333832323162663364303434396162356263303764326230223b733a33323a226130626462373033633536643438313330353532313837373032643632346162223b733a33323a223139373037386263393061333665346332326637306634346364326336613731223b733a33323a223363396435646465613066363431323164663664363939626563353464316531223b733a33323a226537623035306263666537616164333763636632613339613330336330356531223b733a33323a223731333466643234353534313630333362313634656534653134613337663736223b733a33323a226131623338386633376365623538616138303661346237323233323432623231223b733a33323a226564336462656132376463646635623630376131356435616230623963386133223b733a33323a223638353337386332313366326632393964323166316537396633353365353366223b733a33323a223636646162383339636435313331396264646465646535373536363439363362223b733a33323a223933663431646361376462653636336436386635303038396631666566656637223b733a33323a223065373261633130633263616138306539323431636433343761643734376437223b733a33323a223764356562656534346231633239383130343136303338343263363039373636223b733a33323a223565316434636362383930333936386636616264636433313163646566653432223b733a33323a226232313234303339626466383531373531666631376364656364366439643139223b733a33323a223264633864623061626134383736366638663331313662313337393538373738223b733a33323a223138333663376466653564336436343534643462366638306330643932376136223b733a33323a223331616331343964616530616634306334646438343236643735383230313266223b733a33323a223436316366633562666535303662663861303264353736303435333762343132223b733a33323a223731366638373562373837326530613063666664636231646138646334643564223b733a33323a226634353766376264383536613163383434636164356536393330623930383835223b733a33323a223430373138646539633433373032356565663633346639663430303134303539223b733a33323a223237656130336461643561646333663337643030303065306366366333613361223b733a33323a223765393336663230386639643439333334336662353434303165613537333335223b733a33323a223461616332373836396538393832326532653565333663333364316664366265223b733a33323a226431366561383537333061366362326436366232393438663034663265393234223b733a33323a223833346236363466386562303163636137313161303730383036376162323966223b733a33323a226261323731303137396434303330393363656130633862393537346333663561223b733a33323a223635623832346666366430633765333930333961316361343963333934666538223b733a33323a223461363664666265623734623634633030343566376265313662613233646566223b733a33323a223734303233613432346361663965333530613631363765393635323236393061223b733a33323a223636376164633233343533356330663338316435323932316334366266653730223b733a33323a223666336561393135363139383734633338323834613738373239336636386530223b733a33323a223434626334663131346363623331333262303435346663333464323939666336223b733a33323a226139386362346462623033316162646462313939666164666230323566316365223b733a33323a226438643133663531366330333335613434646538336639626538633962386262223b733a33323a226262326161336435666166323965626436623061343439646535333531376231223b733a33323a223261303738643733663231373765316364653437633965326331646433613033223b733a33323a223362313132653933343533653738353130326462636231623331393139383530223b733a33323a223166366639643938363634333765353538666266353161646535666433303463223b733a33323a223666333331303632346661356261653131323632363939636539323832633833223b733a33323a226466326532653634303530383036333135643431626135316364636266643062223b733a33323a223938333762666665373961663433303762346334383537373765306538313130223b733a33323a223336383736326664396333323130643236623238626266643437356635626461223b733a33323a223161363332346435306435643265353065373266636438623566343435643139223b733a33323a223133346566343165323539333762616462346263323130383866396361333962223b733a33323a223231303430626330656634393331373965313834613738356535363737393738223b733a33323a223436636161633737386465326463376565666532653838316566313130386433223b733a33323a223739333633386265346438353639366362646266613334346562623965313539223b733a33323a226235633366666536643639323765613539376538356435373639393933613361223b733a33323a226636666137393039393533663034376662386337626666326264343261313030223b733a33323a226163633239643464363663626634373934633839333662653734366434663437223b733a33323a226662336634376666353832626166653965663834343134336430613839663265223b733a33323a223161303532376134616165666237323630663230356261356134326237363465223b733a33323a223430386338636438376261323264626234653866343337353665346362663838223b733a33323a226130616336386235376266343438383739336439343062363734306237303339223b733a33323a223131313530633732613165616239633066613430373765656538616434343865223b733a33323a226466616637386130393463303065643365643563636339613162373838343737223b733a33323a226632626336306564323636383765613634386437656262656266623830323062223b733a33323a223465643537656333393337643637653839363534313836313364383038323131223b733a33323a223736333430346636363538626166396235316665376332346262623961323135223b733a33323a226537336136653839613035396530393230386366653133633164623235323238223b733a33323a223661643939663865323562336430666364373030643634333136306232353962223b733a33323a223439646462656636306333376335363136613332366534326434653262613561223b733a33323a223338303837343362303839386562636433303734633836366266353332623331223b733a33323a223534363162363434303366383631376162623735303836663566653138643631223b733a33323a223233373636393033663038383934333362333861336534303063343031313636223b733a33323a226132316265353735353061343365333261633235656361346665386234313937223b733a33323a223062323261643036633764353138373537376133366534383332393431363932223b733a33323a226434393262313136623761646138393635353739643361323863333064333739223b733a33323a223863343863636432363133333761353135393638646462356136326365336330223b733a33323a223061303234353431653430356437363232353530356561353832383065623663223b733a33323a226539343534346436656635323639343832333438326534393439653832363964223b733a33323a223730393662306164396134326330353334373930336233623039346233363765223b733a33323a223866396638343139616266356132393033363766666464353465333935393061223b733a33323a226565393836646363363230643839373064626363633530396536373836303532223b733a33323a223739636338626366633239313430306262613533653331356466306661383266223b733a33323a223632333065643138306463663266623461636132393935386666383330303136223b733a33323a223062383263326131366531376337396636383632326263336162353735373732223b733a33323a223762366661626631383339336262353231363532353261346437616465323732223b733a33323a223665663464343438613430613066366634373135643034376337633963323366223b733a33323a223538353130306565636636653935313933306231653737623630666333663830223b733a33323a223661393432363238643334623135643431363734386564313036326263396338223b733a33323a226363306135626666373735373066316163653732663031323931633937343335223b733a33323a223034393331366235313832306465326635666362626632333036373032383633223b733a33323a226635303932386431376162663131643135663832383738653565333635366363223b733a33323a226337313462393966313935323765346465363031646431663361626433343363223b733a33323a226532313830326364303661653565316438346133666437646139353632376530223b733a33323a223464386332616466356565343561373563363161623130396466373636343433223b733a33323a223436343863616131363636613332373736653538663263663462343734646338223b733a33323a226363633031363364303730303035663563306233393263616462313932623135223b733a33323a223639373435316235333639663666633366353936656465326362333064376438223b733a33323a223132666538366161373636663132666566633934333232376439376266343634223b733a33323a223331383365356335396161653735323463646265633166353731376138346238223b733a33323a223438353230386536386130616131303232323731313964643932633235303733223b733a33323a223564323366636630623062323261663136376231613364663339333338656138223b733a33323a223931626530363430623035396338323664643763626665316130353362333461223b733a33323a223730656136376466306364333365336662336339383031383034613239626666223b733a33323a226266656338313438613737656538626362393134636664613162643863643338223b733a33323a223830356537376137343264316130376337336464356333383531396264636639223b733a33323a226664373835363663346636633563306439333734303533336331613231613365223b733a33323a223338323535306262343561626363623961366261333332643962313136323938223b733a33323a223536323161653036663234666530373535356466616532343662326663643066223b733a33323a223935316537393735653133373335626332666633626232313535636530343731223b733a33323a226364373737623765366266313037366632613164633635626532346335323433223b733a33323a223338363438363338363566373634656334646366393161396530343433306435223b733a33323a226466643838353031303866303234613566656235353064383939343865306533223b733a33323a223231373861653032373861656666666438336464386232386438393130353063223b733a33323a226636343964613232326261346465653166353234373061366236383434313966223b733a33323a226430313335326562653834633965336564393066346139383334366565633065223b733a33323a223464316361316134343064356131643439636630623337663264373331656137223b733a33323a223735363963396633633866653034613030363031396530316436353031396362223b733a33323a226266656263393861653734633031613233323434636362333831356637316331223b733a33323a223461646639646534353831393362653265663738336264353437666362336137223b733a33323a223663336565353333353537363534356636623361663165383137323664323430223b733a33323a223139353835326266346562303336636133346637646262633364346333306261223b733a33323a223538303436633035656533353735303838623830666465346635656366653532223b733a33323a223533643062383036333865353339633863616164646134656466646435386162223b733a33323a223831633737306133646338386362393832656639323938643361336235373538223b733a33323a223734393463646163663431616534643565633966343830313438636338643735223b733a33323a223766643963313362303362393664383735343662646662646536333961303466223b733a33323a226531393838303164653839323935626562356436353036346435613135363631223b733a33323a223365316163636562346238373633346336613638396466363333386233643432223b733a33323a226261353365386132383432306262313264653233356161653033653061633136223b733a33323a223861336462373130386463646236323830636338613364663835343566343738223b733a33323a223638373836633361323666623939386165323339643461396331366537336330223b733a33323a223531306636316563336237383235386231356130616132336230633332633239223b733a33323a226136313266633634656164386539333861623536336564376233366233383431223b733a33323a223965353534623665386430363464313935313334336133336332363035643838223b733a33323a223164363238363631333439353164323864633964383731666365653439386432223b733a33323a223237343162613562633162323866383436326139656633656464393761326364223b733a33323a223437363535623365386266303334666666323031383330373837383665363666223b733a33323a226234616337356136636562303365313930663061366333316462343935626461223b733a33323a223864383862376534353739363632346661623364373139383266663762353337223b733a33323a226364653832343431333033346139646662303366383032366363353463333661223b733a33323a223734386233663733393764333538663866663132316234343133323430623432223b733a33323a226663353836393639656663323265633262336235616531303162343137386538223b733a33323a223731356361636230656239333263626264313633356363646366626135383736223b733a33323a226364363764616430303138623431343236346336626666653263653936626638223b733a33323a223662323064393864623939623333626536373338666638626265353031633266223b733a33323a226236643161366266613164636639623931343765376564363231333033313664223b733a33323a223430313165303834376132386262666137323563333263323438663938656234223b733a33323a223535376561333166316461343030333566636366323130373561393762353962223b733a33323a223235626662663436396464373734353234333561363364303661313632306538223b733a33323a226435303938353965633961363732396436306163626530326634653265373166223b733a33323a226238663663333965636461393232343462363062376433303735343566636165223b733a33323a223164353734396265323336363133626236663639353334626337383339656234223b733a33323a223163613833623933346161343032373836303837313539383664393965636364223b733a33323a226466353364663933373434356338333337343736396234363639616166643534223b733a33323a223430646333633038363738643836663536623832303136643234643832316436223b733a33323a223364393761333936633937376636343931646234643235316233633935616534223b733a33323a223030323130333235383233663039393135333763656637373165653632626539223b733a33323a226562633366616536343535343066633635386463656439363362633638313034223b733a33323a226264633432663533623137333461633863343830616433653336326161653133223b733a33323a226261633664333934383835653731313461326261376635313962323666326665223b733a33323a226333313164383631613162373337336636633233663362353239376266336263223b733a33323a226134373937316230623136333266663537343337306663323461393964383533223b733a33323a223561346364633766663331633262633232333532393961376539386339396436223b733a33323a223037666230386437383964393030623562323134666166356236366365626264223b733a33323a223466353732616130383761373766653535396639356265373230646634316566223b733a33323a223263336530633664373061313733363634656361613733393632613830626131223b733a33323a223865316236313463336138626335353865613762303462373063303735383066223b733a33323a223661373636386236376639643035313661313861356466383966616136653663223b733a33323a226336303366646465316439626431653737393562636339613231353166373035223b733a33323a223866333736326263623736396138623261336235626234323737643564623435223b733a33323a226462663839653834303533626535303638366132653330313831373535653961223b733a33323a226636363230663332303166663466373038346263373532633331333666393766223b733a33323a223531656664363438656530396431626238663865303163633565623732616465223b733a33323a226232643831323561646335326164343833303933383264366530323637646638223b733a33323a223962326566626438663532313064316630336331323064626131363437356633223b733a33323a223664396164313830653362393637373237656661376533303537323837643531223b733a33323a223834346639336231373961386430356132363932383931303332366138333166223b733a33323a226662656330316639633036353431386164653733353961303039626561343336223b733a33323a226263396637613335613861386231386130363730616663363965343337343139223b733a33323a223263333138353862303134396161363366313661343764643932396430356465223b733a33323a226666313363643938356331383433396531656366613164333930376539333536223b733a33323a226332653435396462366437656635643663303962376339363231613762633161223b733a33323a226235613263303733656135633433336138356263616266373832356537623630223b733a33323a223032393265656136346164333062653961343432613338333137346332623762223b733a33323a223830323338633238636139396139656337626231343266333935303130313063223b733a33323a223539323530653836333337666463663833366633373937663333303030353734223b733a33323a226137336266346532616131623561323462353039396262393234656335323839223b733a33323a223730653965346137363437366265363434663331396462636335643862393534223b733a33323a223563326362326333363931393537616437626666663238653062393334353538223b733a33323a223739306535323535633334306438303132613535363064363338646463353765223b733a33323a223034383935316564383764396135633834666363373034616561346235656438223b733a33323a223939313438353831363062313263323337633462323232313734366664373538223b733a33323a223461643761303036663833626133626534366165393730363938646336313038223b733a33323a223331366138613432383035356338386332303065306661313631326366333931223b733a33323a223135363237343134386338393662663533343632623364386134623339396633223b733a33323a223230653136343239376631393734313035326533306434346161396433616266223b733a33323a223830663936313064616137663561653839316635386134623266396437313037223b733a33323a223839303965316535316230616638363265643739643063303939643834303737223b733a33323a223439633932336333643037653136356561376233353231343662623161306530223b733a33323a223337343436336435613837363036326532346133616632623937616461633361223b733a33323a223463396439303831333532303761646362306266356462323735643064653166223b733a33323a226163373031316461383732396630386636333238636130633130363863303432223b733a33323a226334613730346264346134346534323437306238626639343030303036373261223b733a33323a223535303765346266663863643732363037326639323837356131333862373262223b733a33323a223263313738633832633636633763306263393962633832383038616362323962223b733a33323a223938333131316561363635376163323636363838313463626338666563306533223b733a33323a223938393134303836646563323935316434386435613530393566626361306666223b733a33323a226131386565343535393832333333323261636466303063653764383638326433223b733a33323a223535643062356334333635313830633339656134386633396362323135396637223b733a33323a223036656464303362333731343335356538303331656465303861623037623863223b733a33323a223037303062666464653633363533653433373231636461666337636461383061223b733a33323a226237653666323264313833326535386165613838393961373235343739626136223b733a33323a226236316433386562343263386232646437333933303339626238623630393430223b733a33323a223634353666323766313763323639326236366136633561643065663837366238223b733a33323a223165643634326466396666316635643162656365623464373365316461366364223b733a33323a223831303938383461376661386131343630656132333565393430666239333661223b733a33323a223561653434366137623032346636366333353330326464633066666537643935223b733a33323a223738356631303666396132646466316633306430386534386536376132363964223b733a33323a223038393832326137346166323138383533393731626536633631303433353538223b733a33323a223966343966613262303332323132313061303462383434643535306431616161223b733a33323a226264386461653338316263636264313138383763616661623932363633613730223b733a33323a226338666565626332663537373731313737366634393066306634643464383831223b733a33323a223462393737383536383162396565623036333833333232376362386662393234223b733a33323a223437613036316332386532376330373032373963323638613733666236323639223b733a33323a223237663731333633383766356639363731373830353365653037313736336663223b733a33323a223732383066346439626666323138396236383737376132313465373338336664223b733a33323a223732623065326130366339346235376463323664643130373064356139323934223b733a33323a223136336135356438623538393735366664653936613438656335656161363138223b733a33323a223636323036393166623463386239646239636361303063613562343732366563223b733a33323a223034633561646364393464373137636365393464646633626265656161653565223b733a33323a226261633965316436616331363566653339346335333534393933326662356330223b733a33323a226363623432656434666461306665373964376333613039613133303732313935223b733a33323a223665623731336634616565336338303965626261376263323765643138653632223b733a33323a226137373862346235326634666366613939643036356265653061353135313865223b733a33323a223932333633323062653135363131343938653134393563353331303237316334223b733a33323a223631333666646461313566303762373633336134613363623130343663373834223b733a33323a223134623432656134383130616231663365666231653836363537313165313534223b733a33323a223262383563323166636462343237336638316237353333336234386364316463223b733a33323a226537646661636536633731376130633636323133313836393537663565643835223b733a33323a226235636262376363356339343032306337323032626631303536303562396362223b733a33323a223139376562396661383561323035313435316138393638633063303232336535223b733a33323a223662346431643464333466666630636461353065643862356330643330636534223b733a33323a223161306563666138626638363934653965373437316332393031353130373732223b733a33323a226134653038356130373964396462646164613731616338353031393964666233223b733a33323a226138383533303936633664313166636438666232376531353836646632333064223b733a33323a223933363638663134393266626162653139616461386633616231396439323330223b733a33323a226466343465343238613035623333613531643830393537336330383938383135223b733a33323a223466383237613838633166353865306666616232613864356662613861366465223b733a33323a226233386239383435313966363364313063313661613465343434623463353636223b733a33323a226534333664613239323366373630313532306139353232336331336336623238223b733a33323a223261643461323965663135373266363938663333366430653634336633366235223b733a33323a223263393235663638306664623336326538356230623062343065356230303837223b733a33323a223336643535336461623537643464643566343964613932643761333635346230223b733a33323a223037623861366131656263323431316238313833393538633535383864383562223b733a33323a223565383166306363386561326563373537393137646562663163353536383331223b733a33323a223235303032376638656466643637623062386665613939663064333433386338223b733a33323a226261633064346465333966646534383932376463663533336232366335636435223b733a33323a223131623533666134366263636162323331643034303139386533316330386332223b733a33323a226635626237333733396235373738333733303136616263343535393361396431223b733a33323a223037363638373166653430303865646137333235633630396535303739346332223b733a33323a223631353264666634383536623630643138323164653432306630326230623835223b733a33323a223133343335653135373362356339343765646166326235313962326236386437223b733a33323a223661623338363362626562663331306162383164316665306539393036363362223b733a33323a226262643466333932383165353939363661333365333966626231666164323733223b733a33323a226261623838393138616231626535313531623162306432356366343139653462223b733a33323a223435343364643733663166316230636262303463363830383161343534643936223b733a33323a223466633166633631626637373535643562386537393234613239656133623466223b733a33323a223563613863636637653338656262336235343934383836313865666138326633223b733a33323a226230363066386333333136643036623831373136356434646166623531343665223b733a33323a226365613134383936363061623830633962383366363832636362363839396137223b733a33323a223261643038633932333934623236306537346431336237316530343464306438223b733a33323a223830396464383637336432613534303734383762336138623466383065613530223b733a33323a223063366539333631626262386337633061313535343930646638366161373833223b733a33323a226365633061623534323836623963396164323561623635346430666665396134223b733a33323a226366623733363465333031393837333761383438646661643039366538356363223b733a33323a226133363365373438666265306634393331393464303165616565326639363532223b733a33323a226331663539643561616261313234343533386436613539633666653936343234223b733a33323a223264343731306638656366386535386335666630643735306232623063663233223b733a33323a223036653234393730363930353132343335666266386637306339646364613837223b733a33323a223564383238393035356639613966396565353730333235643733333664336534223b733a33323a223666653862333937383430636261366362653262353230326436613134323164223b733a33323a223134346136353835636438366637323938306465313038656335636135656463223b733a33323a223363663037306261393863396363383866636236326237666237353064396537223b733a33323a226463313033363232666663353837356130393962306461323934313762623439223b733a33323a226266383966396364373664626136613933343562313233326631386332316434223b733a33323a226636643536343034393261373537363330646336316331643539336364343735223b733a33323a223362616664333265353138386636373566363930303962666366303535316666223b733a33323a223532356262396237336633636138356337663038383331363535343731346334223b733a33323a223239653965346534353032373765663661303030633062633832646166376463223b733a33323a223764636232626666326330636438653366646137653766333736326231636636223b733a33323a223130643931323764346666393034656465386330306133306362643166356432223b733a33323a223130336138643266393965343264356234613631316463316165346136346631223b733a33323a223765666262613965393061653431323661396265396334363232386534633330223b733a33323a223934356665663765616337633263656338366234343864313964396561613736223b733a33323a226533356162323539386364393030393031646363353035373863396233336265223b733a33323a226636373336653664363637366465356134356138336362653662336163393537223b733a33323a226633393631353034613465373339613566333238623331636266616331396531223b733a33323a223165656236643263303638343432636562666163383061373636653065626666223b733a33323a226434346338323933326165623539303238646438646666303039333235396163223b733a33323a226231616132656366663833343665386433383035363536663766316464363461223b7d733a343a2268617368223b733a36353a2262316161326563666638333436653864333830353635366637663164643634612d6434346338323933326165623539303238646438646666303039333235396163223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226137643231306561626136303032643136623561666637343032346261343037223b733a33323a223865336131356366656231393139653332333331653837323438313963353965223b733a33323a223139393863363063636561333163663036303135613862313930306330643236223b733a33323a223737303532333238616431363637656537613562323339363134326334613538223b733a33323a223035356433366266363539326162623031643261333035623434646236353161223b733a33323a223665346163326566323638323161336162636533633934663635343435353439223b7d733a343a2268617368223b733a36353a2236653461633265663236383231613361626365336339346636353434353534392d3035356433366266363539326162623031643261333035623434646236353161223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226563653833663932303666613133326334333862643134613635396630613038223b733a33323a223663333636343264323230643566366536316465663265356336343163616637223b7d733a343a2268617368223b733a36353a2236633336363432643232306435663665363164656632653563363431636166372d6563653833663932303666613133326334333862643134613635396630613038223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606002643),
('9htiflrvpo8ekl24hsendcvaq3', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353437373435312e3631313730353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2239687469666c7276706f38656b6c32346873656e646376617133223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f766f636162756c6172792f696d706f7274223b, 1605477451);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('amlq994tabrahi43lg57e9pu6v', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343931343139332e3432383135323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2273336d3561756e7169637138706e6f3133616330656761646836223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635393436373b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373030313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343837313330313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373136353b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836383936333b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836393033333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226230323935383666633535316663386237366361663766643531353133393435223b733a33323a223136626237396330663064646462666233393864643038646334633031306531223b7d733a343a2268617368223b733a36353a2231366262373963306630646464626662333938646430386463346330313065312d6230323935383666633535316663386237366361663766643531353133393435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223362353734333931343534636634313034343261613166666433663935623033223b733a33323a226539386237613935623539666337393037623730656561373936353363653265223b733a33323a223566373434643236613236646230373266346130373666643731633162396333223b733a33323a226433623165656137666366383261633130626335336534613531343639306131223b733a33323a226533356432363436363562316237396439656131313135376537386436306339223b733a33323a223231333364653739613432363865623033653431643432363862653663363466223b7d733a343a2268617368223b733a36353a2232313333646537396134323638656230336534316434323638626536633634662d6533356432363436363562316237396439656131313135376537386436306339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a353033323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35393a7b733a33323a226564646135636461633931626136663762363766363162386333653038393664223b733a33323a226336303339316534663461633766656265356133396465666366643233653733223b733a33323a226132303336333136386135613435306134333135653538363036383334346635223b733a33323a223730626361323337616337336236663762646236356138623432306338343033223b733a33323a223165333638633934346337616461386536306539323333613339613638616638223b733a33323a223430323031396237643832616630613439393862376335366635646664306134223b733a33323a226536303463623736643937326533336431306536346439633865383636393731223b733a33323a226465393535646465346138343564643738343138323035633962383132316131223b733a33323a223538376639623339396136363962636436353733363364343034613137333930223b733a33323a223266666132353962616263313663346633363236393433343838386139663137223b733a33323a223364663766623432353938636233643735633964396533386364393163343665223b733a33323a226639623062653637633532353861623663363932643937616165623036616132223b733a33323a226430393035383739646263366333366163656539363037663235333461613431223b733a33323a223530313765613732393038336237373661653739663066653564343339663235223b733a33323a226632376138363264356665636432353938333538393265633163373263653332223b733a33323a223764343532333262666434373039633032333866646662336437616136653839223b733a33323a223139353835656132343937323565353962643761373239616465356631363464223b733a33323a223732626665653465346466336361313861323564333832336165623963623938223b733a33323a226265326662303732386530373036666334373362306437363730333830346364223b733a33323a226231373134303535663639656533333164633438646633353666303031313265223b733a33323a223763623233356562636333366432326361653164636534313065303639376130223b733a33323a226130386564353537363036633633353932373630326532616161326135316335223b733a33323a223765653066303536323235363765306234616536363464366238336466636566223b733a33323a226339333733366162363636653935393334616263626661643335373663316133223b733a33323a226230653433666662633165633064373738326432353435376135633966666434223b733a33323a226535656262333432653265366335653139366332366435313034336563393061223b733a33323a223565643032313434613034343839336439313364346139383837363466633735223b733a33323a223764306339333363303335336364613733383866373531303036353633333763223b733a33323a223132613031363234373234636266663730303664316265326632613037643934223b733a33323a226232613834393265373136333339323431353139636139613935643562333262223b733a33323a223436323331656631303833633166373462333365396236386566623863303132223b733a33323a226633343237613038313035373962356465636636373132626239393530646537223b733a33323a223763376335656330336439613732643664636466306465646337346137303937223b733a33323a223139326263396562333237346163663964643033393432656337313835396137223b733a33323a226166313766633435316431353130396231336137656135333531616333663935223b733a33323a223466656235373437313865386237323437373733626338373263306132343230223b733a33323a223635356361356164393064656132633364363666666635393830343834373835223b733a33323a223261386631613137316433396332313165663831616132316165663530373561223b733a33323a223536353330353737333232666235363539616361363966323962383736333733223b733a33323a223238366332316338646338326630343337363231646466333364356134373838223b733a33323a226233343235353762363262313962303566623361376335316435396536313765223b733a33323a223262336261363035653665623730616365643336313734643961373436323266223b733a33323a226237613332666661323265303361356632666135613639616436653837666239223b733a33323a223237393439363332353738303765316162393264386337653034396330643431223b733a33323a223530393861646364333837376534663464336236616235366565323766666435223b733a33323a223032623637343035663433646661633361373737613739396539623963653064223b733a33323a223463363566653865353964396566396332333535623534376365376639373430223b733a33323a226337616661366563373062346635386563376465396466636364373431323066223b733a33323a223739383239356163333134343530643132333763636139376264636335303133223b733a33323a223664643263306635303365646364626639323935643931323537616235666330223b733a33323a226433633965353333616338666638396264643761633535633436313665383937223b733a33323a226633363131336632323437643732306239623234613464666163613661646639223b733a33323a223230376633303561393665396339356235663965366433313934303133353638223b733a33323a223162316664643635386439653338643065613832313564366661643531376666223b733a33323a223835633464326439613131626438613265353331373230356466383962366635223b733a33323a226236343933656138316431373237636139613436306630616565346666663230223b733a33323a223161343662393433313063323266613332326466363432353762643530383861223b733a33323a223936613536373233336239623338633562306133653466666339623132373164223b733a33323a223236333237613330663061393436643464326533626438323563326333663364223b733a33323a226637383834383930666465353538366639613561633138353835303732356264223b733a33323a223137383266663431333964323438363966333339353061323433616461383463223b733a33323a223862303462646663653466353033323364333930623361363738316264303265223b733a33323a223939316334343061393930633463356565313066373237643766323763366334223b733a33323a223632396336386133383265666231356565313563313765363230666365306165223b733a33323a226366303835376465316134326432386237386461353538336464396431656363223b733a33323a223965396331333964613636386634323366616437363038636165663736303665223b733a33323a226162656230363462373264656666323066356563383038653066323166373735223b733a33323a223461313335313034653030326666633431306461623838343335313638346264223b733a33323a226231313438666233636261333630353134323535623832643238393938366263223b733a33323a226230353032616165366466373638356466663234653266323333663630636631223b733a33323a226233373664393764613234353061616165333264636465656365313534323464223b733a33323a223763666233386332343138343566323534313930313036306636666133666161223b733a33323a223666313763666364353265363234626437353731626561316363396333326661223b733a33323a223337653035343230396636393138383563326666633236303164636333326630223b733a33323a223939373161623231393261333532343763653065616336646638306430396161223b733a33323a223261383362313231393139366163653463646261383535346562653332653765223b733a33323a226264376437383330356462653864636438306235613463636562663535373766223b733a33323a223938353531396562316634323462323130613539363133636132396430383562223b733a33323a223566393464323836336431663733306165656331313634383063323565626334223b733a33323a226238383635613230333039613539643233383430623261636138633462323736223b733a33323a223938636233383830356432613834653562393636626135336263383138366331223b733a33323a223935643233303864363734303435636633346630386161626430326337353231223b733a33323a223236383138343063316463346539366337346633363430333136323866333535223b733a33323a226663663531623332636331356661633161316661613831343366656364653235223b733a33323a223838623332653433616361366632613031616133353065336364393332323839223b733a33323a226232613466613265383533626637376238646164316439313032323664306233223b733a33323a226564306638613362346237666335386134333061313731653566333530303736223b733a33323a223065363136343063313631643866346239616131663832333831363563646262223b733a33323a223035623965633134343031366232333039323933313237323630666663636566223b733a33323a226430356363363362656635356435663937623861393038393436373961613035223b733a33323a226536393237366230336231626336383562386233356539386139663765363632223b733a33323a226531623632613732303764376564313565626362656462646332346333303965223b733a33323a226536613166626333306266363837326561623934613430343965313138303365223b733a33323a226237303737323436323964326137336162353536326139333265356638653032223b733a33323a223530336533393562323836653563306139633436643535363963386466373565223b733a33323a226330313063346432653537616461383835323431306238336233333530343332223b733a33323a223532373263326162633731663035623234643231643236646330653763616636223b733a33323a226130343163633666333464383837373666663865613561386236306230636635223b733a33323a226465323163633431333039333138613237656539306435323834653265363965223b733a33323a223731643732303133356130623934633662363936646563656163333865326137223b733a33323a226537313434383033613461313536663230646532383561346131306231343039223b733a33323a223236333461396562623738323036306538316465363234653862636164626465223b733a33323a226536356162646631386162343133626339346431306235353135373666623631223b733a33323a223432656661333664336230366565656365306334613430373337616561613930223b733a33323a223232383231313730373564303462323533323762393266303037373636653263223b733a33323a226261313933383132323061336462313338383561353639333839616236363636223b733a33323a223430303964393363316562613262623835306130386438636463363261666434223b733a33323a223031373839356432303166633632623535616162386138333735303534376465223b733a33323a223866303362666535393765613163626536313339306130666432393763333933223b733a33323a223733663531376262623466613138383364623732633037343332326631393132223b733a33323a226230326362326164363333666562376638373764393739343530623338613330223b733a33323a223333343565363230323330346235376136376566313634366663346634643736223b733a33323a223064663832313966376232363566366461656135313866323830356134316338223b733a33323a223765646162623035383461613164353466386365386463636164363561343033223b733a33323a223636316539653561663735373536623630626233333234346435653565666461223b733a33323a223761343063643033663235613139326230663237396565396161363832363133223b733a33323a223431383631633138666531356230333765376239386262663430316365613364223b733a33323a223461313530616630633038363466356133306139616634313763346536316232223b7d733a343a2268617368223b733a36353a2234613135306166306330383634663561333061396166343137633465363162322d3431383631633138666531356230333765376239386262663430316365613364223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223537353330656565363536616438376530373832323438636336633731653135223b733a33323a223865373764633865626464653762653563316632636562363035303462363735223b733a33323a226538393332643266613433653465333361613837643535346562323562393438223b733a33323a223739386531643536613135306562653133653736626661383166653130323236223b733a33323a226532323063316265313865653961323466626133373266653934613035653362223b733a33323a223166643163623161623734343665643535326637303963313730643130396234223b733a33323a223933373033383364323734636563346466316639663633346330383534333061223b733a33323a223235336535316663336462393331613431613963333130333038353938653165223b733a33323a223037353961363339303439333739646263396432653763633337353834393463223b733a33323a223330313133393731636338623562396333613437633831343261383736616465223b733a33323a223639363738323662633061393966383135393166373139616266623766376632223b733a33323a223561313964363261613038396263393733343934356336383032323134313130223b733a33323a223665666462343165353863346364386565366631346565386361376161356265223b733a33323a223863336365313166366232383661363939393637373430346636326434323731223b733a33323a223861623039303734646232383137353734356565386132636238623237643137223b733a33323a223466626235393437336232626330613663626431633434656263366332376136223b733a33323a223462383335383861316533646130396437613939343465613764663062643237223b733a33323a223532623861663533636361646531303038303532323963313730363737633932223b733a33323a226536333630323134656364353835396263623134333464346462343165623639223b733a33323a226266363662633631653337393035366333616330663534646265326338303739223b7d733a343a2268617368223b733a36353a2262663636626336316533373930353663336163306635346462653263383037392d6536333630323134656364353835396263623134333464346462343165623639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223037646166396163326163353033343864646266343932626235326231393635223b733a33323a226261396438383231613137393638353763313231666463633962336332343536223b733a33323a226561633937623833343437306134633437393164613030633163373438363530223b733a33323a223436383731656365623263363963306138396263636633303139656231653465223b7d733a343a2268617368223b733a36353a2234363837316563656232633639633061383962636366333031396562316534652d6561633937623833343437306134633437393164613030633163373438363530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226136636262383363626434633862393931353161386362383063663138616639223b733a33323a223538616338333864616432323739343833353234396539623937366234656634223b7d733a343a2268617368223b733a36353a2235386163383338646164323237393438333532343965396239373662346566342d6136636262383363626434633862393931353161386362383063663138616639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604914193),
('bcdls25l8i1vfbcl9fi63mk0fe', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363639343235312e3238393231363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22623935323172686a3336356a31766b7576686867376164613074223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363639333333343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363639363834393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363639343135363b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363639373835313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363639363736323b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223739633966306634383832326661363236636264313230633065636539323333223b733a33323a223133396135383330313635303937306534633038303963326662636631663361223b7d733a343a2268617368223b733a36353a2231333961353833303136353039373065346330383039633266626366316633612d3739633966306634383832326661363236636264313230633065636539323333223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323837323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33323a7b733a33323a223536323764613338383336303539343739376263633734653338366362633131223b733a33323a226639306664623466363262373131663463366132336166646230306133386230223b733a33323a223366663837666563346563666337653964356332393139303431653330333837223b733a33323a223262303765663238346233366337633864356436653031373866623663393430223b733a33323a223634656466363566333562333030316661393939346566376563633266303564223b733a33323a223936613564373339376236316636353735343831383234363831646663346233223b733a33323a223466323032306535613434343432633738633032336232346262636261303634223b733a33323a226435643766346665663362643461646431316563613931336133323339383531223b733a33323a223539336230386432323666656366373739356162613930343132663539656538223b733a33323a226366313035336232323733323035653666663633626665653861646236303732223b733a33323a226335613263383333636266376333343931303039666266343435326532313964223b733a33323a226564383334336161626335616432333965346164643036313835643961313937223b733a33323a223237393634663331623366316437386632643664616662643062613234613630223b733a33323a226664393361336465313534323864306332623436343163353433323033623061223b733a33323a226636323033353239663434313034636333316135313665623363633236663537223b733a33323a223463633166643862616636353236353030666363623135626339306134323533223b733a33323a226535393131373936386364623633386531653130313933346330663030303062223b733a33323a226363666338366533303731306334346332343064383266656636316262656332223b733a33323a226133333036633865323866376233306665643766666434653462636139356337223b733a33323a223032616665323739366234386331363962633131346137306635663133653830223b733a33323a223137633233633639656330313936376166346233353532346464643665356566223b733a33323a223630333936663038343735643165353139313761656130636563626131663062223b733a33323a223934356636396332613331393438653933343965303338633533323861663139223b733a33323a223534333665666138646238653634666561316531343766616130613234616161223b733a33323a223331633439393635376165643535663964623232643039386335316264326235223b733a33323a226532306365656563336361626164343938363039663438663431343031663430223b733a33323a226634656535666234626231336233336366613932306132376165346134323763223b733a33323a226138326239373633653262336465303164613930366365373532343538376635223b733a33323a226535613836646261346639323165663665376432323730323933336431663561223b733a33323a223734316439323433333037656663626530616633356462343331386433353961223b733a33323a223362656463323735636533613461393333343663616537353230653462386132223b733a33323a223666663964336262666537363166333862663336636638353437323366363730223b733a33323a223961373266636165306138313132346466383064333038656431636166383030223b733a33323a226166323239336432333832666336336133313762616664336338316263346534223b733a33323a223830333363363534383638313263613737313132613664663965333565633636223b733a33323a226361336335386632346433346133313431383665633665643938623763646135223b733a33323a223866396432663061636565393533653836313464303431666635376261653564223b733a33323a223562633134313433353364353137643933323965363261653531326534636634223b733a33323a223039343032656532666264346631346435656264633730333930623232636135223b733a33323a223632623165646436656537333561326538313433663566613662343134633535223b733a33323a223233626432373566393931316233313238376338666339373139393837653632223b733a33323a223635346334643637363065623766366263393765333764623333303961336663223b733a33323a226635613465313839373563393737393630353366333133663935613138336464223b733a33323a223565626564373934656333613963326136383561396137383562323033643232223b733a33323a223437626461313230323230616562663634646238616230633464393738326665223b733a33323a223063616564643437646637343165643638653466343536343639633037336139223b733a33323a223162393966626664396264393132386262366365626565626233363732366462223b733a33323a226338623334363264666232343634383132303736306633363562663966363430223b733a33323a223430633838353337623034653134623639383434373831633732306430363533223b733a33323a226630356131663734333962373839383264323339353832376436646465643461223b733a33323a223537616537613332306232663666396435616633636337643662643165396363223b733a33323a226639653761396630656232343531653466663866653633303337613235333238223b733a33323a226365333862656166633861666239393834326131363030313564363266333861223b733a33323a226161303161333164316136613661316132656539363037303135323465656439223b733a33323a223965333937336238356662376538333335386530343864613732666535313263223b733a33323a223233326436666131343761366662316531656136313065306139626334383532223b733a33323a226230636666376361316461366532623034333737356165653737333132353463223b733a33323a226134383435663563373966363534346165613230613862333232613738393939223b733a33323a223136646235323033663030383437636164386163336564643230376433343230223b733a33323a223433343931373561376630363361623132373632663862623261336636396163223b733a33323a226131646437653434316539396164616337653362616431633438666531303661223b733a33323a223466613131326236353566663735323730643235383339643464353733653961223b733a33323a226663333038336261343337306638306639383562346631316130623038373733223b733a33323a223332376561373461393861376631356535623666346333616232633734646565223b7d733a343a2268617368223b733a36353a2233323765613734613938613766313565356236663463336162326337346465652d6663333038336261343337306638306639383562346631316130623038373733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226564346136633934346538363764386236656664613931383664336335326336223b733a33323a226437343535616462653663396235313437366131306165396532323564373436223b733a33323a226365646363303835363130613535313231646366346231626261393062343366223b733a33323a226430393266316264653761646264386535653730616336303631633839383330223b733a33323a226439383462306138653332396533336266373735643861613236393465316461223b733a33323a223932336465333934336434386663386337356561666639663032636638383837223b733a33323a226366613766353736386135313030333336333432656338336265336161643164223b733a33323a226338373133623466396365333132323033363164656564313738383366643731223b733a33323a226463306631323965376563643934303961303238653539373631373163366661223b733a33323a226161373033366339616363616638363432396462396661376238653762346262223b733a33323a223061323934363134376139633834373238343665643930323536353233616633223b733a33323a223038353035393236366262366337663635353539393937343135363533336436223b733a33323a223531646165663461633936373565306464613464376537663430366138326337223b733a33323a223034646239363631383662313636396663306539383633643539316631646136223b7d733a343a2268617368223b733a36353a2230346462393636313836623136363966633065393836336435393166316461362d3531646165663461633936373565306464613464376537663430366138326337223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323535323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32383a7b733a33323a223835343065376338633266396533663936663332333031636430313235306633223b733a33323a223936366563666466353662356333633236333736323839663733366532626431223b733a33323a223739346365373339363538373732323462643963613630663236303966653064223b733a33323a226631383363646531343338396430393737373963343832623834633136356337223b733a33323a223663343032303362343763393036613161326137353830373534646565303939223b733a33323a223334613637376663616234333163623364326433333637376231623037343863223b733a33323a223061356234663237393661323633353638616464376237653464353439313661223b733a33323a223064663639353936313865663163393132366233326336396537393230393531223b733a33323a223462323735646663633630373838616232616431623432643938663132386537223b733a33323a226336363663363132346263323062393332326163313334363335323635353036223b733a33323a223461323931333634643935363365616137393332663739386463613439313639223b733a33323a223966313430663239636531373231643733393364376462623132613136643463223b733a33323a223635363965343737386366336664336165343761613763373031366137666365223b733a33323a226236623663356339393231663332303036346139363061626666663630376333223b733a33323a226636336663306165613162366239616537633936306632326239303739366232223b733a33323a226132626235313736393030353934386132636632313539646439383236633732223b733a33323a226330633166383462633732326633343733343636613139633735653836336265223b733a33323a223966343566353632393364663835643938393961663934396633646233366665223b733a33323a226439623235616637636330303535313439653438623162393764383761323630223b733a33323a226234353565373933336130396438643933623965663831396136303964393161223b733a33323a223063323063373035336432666130306634656632303037613062306463643266223b733a33323a226662303137323534613934653963636639353238623033346663663163336235223b733a33323a223230366535343035306365333765343339356665616635383965316362616466223b733a33323a223839646161636463643335386237656661636464316264333739306633653530223b733a33323a226438376633663163303165306436386430383730666539313437666262366438223b733a33323a226232663036383338393965326261306334633863633231353034383235323366223b733a33323a226663313133333635633338633534353562646233323939316565626462366363223b733a33323a226662636130333331663232313334353561326436386663656335326361393439223b733a33323a223666353639356366323931336637656231653236626361653166613761636464223b733a33323a223038343835643030633534316361636537633930636239333231646432326165223b733a33323a226530653130393534373263336463386663306430373439303035613361363862223b733a33323a223530343364373336613133306132373937303336616130663536313236616266223b733a33323a226232373566343737303566363165353632373332303832346539653963326130223b733a33323a226665666530393166616464373036376238303730653931646133306438653035223b733a33323a226261303462396335396135633534636136613030323031323462666163396236223b733a33323a226166646165386562303062376162653466326636363336613233306262323964223b733a33323a223463333339356632333863373630653733353931666133383533303661653138223b733a33323a223635646534376634393362383738656537663761373430663561633433363937223b733a33323a223432613662636465356162373238613966326161393735643836376337386539223b733a33323a223462663465353761356435353431663065383862626163343562653961313230223b733a33323a223038376236346238333061636231396236363466313366393436326638663437223b733a33323a223464356237356339643765343435646164346433396166386165346363653437223b733a33323a223335616262373538306638636439353965393061666366386461303930363166223b733a33323a223865623663373438356330303833343666623562393537366166393638623764223b733a33323a223438356639376534383830336636323731353036333264323736386137326237223b733a33323a223961303431323735303534663466303638663739396130613866613438623866223b733a33323a223433333638646630376563343064303364396134376639326636323461633663223b733a33323a223236303864313530326130363436626239346532643330656465373436646464223b733a33323a223564393664653134303230653563666364343538366162336564373938623862223b733a33323a223435353965613439303563633834353764396261363966323036633431643537223b733a33323a223563303231653165343038616566356431616235393563376233643137363336223b733a33323a223035343734656366333362383764313330616566303036383836646666333836223b733a33323a223064626631653936623832656430303731313536636333316633343933376631223b733a33323a226633336239393839633237633836643736623832323832353664353936653863223b733a33323a223938653936373934646666663731323339666530613363363130373162313566223b733a33323a226461333361306562356630326432636361303462633431663263333063623361223b7d733a343a2268617368223b733a36353a2264613333613065623566303264326363613034626334316632633330636233612d3938653936373934646666663731323339666530613363363130373162313566223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223062613337363437653663613835333033363838343564303863626632313332223b733a33323a223466393834656561653065663062643332643732356630663233323866303766223b733a33323a223334616235323664613762623962316663323934313064323863323263303938223b733a33323a223632356638356566363535666666313931643535653862353065643238313932223b7d733a343a2268617368223b733a36353a2236323566383565663635356666663139316435356538623530656432383139322d3334616235323664613762623962316663323934313064323863323263303938223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606694251);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('hiqs6u525mftkv40a0p6ojaupf', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353438333538382e3138323938333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22393935746434336a3831316d7470723939326972643563346f6c223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438313131313b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438343135333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438373138363b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353532393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353438363539373b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f766f636162756c6172792f696d706f7274223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223730646463393366346138666236613666363966653631343534643266353932223b733a33323a223237616230353364343330653465363531323630333164363065623939323364223b733a33323a223765663862333537386365353861376538323238653730303631363535643762223b733a33323a223231376334313030393865356138653235393566393265313138373838396566223b733a33323a223536323962383763623131613635616236393331656337643236386666333738223b733a33323a223133663836663934633161653830326666633336623866646538613534616537223b733a33323a223666643565623238613636313037386533636136376564626232353463343766223b733a33323a223135363566343761643863623334396335376230323138323038366661623336223b7d733a343a2268617368223b733a36353a2231353635663437616438636233343963353762303231383230383666616233362d3666643565623238613636313037386533636136376564626232353463343766223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223333356635643635643930626365646166393738383334623030613165363064223b733a33323a223561666433653432323961633562626635646237383665366664323865393032223b733a33323a223336633936653134643963376136393533346261323238353633626135643563223b733a33323a223934366133613165356239353334353138623230616139373366636234353037223b733a33323a223364643466663731386433633331336330376630653032373133616532626534223b733a33323a226534626338636133613939356462366461626138666131323930323962336437223b7d733a343a2268617368223b733a36353a2265346263386361336139393564623664616261386661313239303239623364372d3364643466663731386433633331336330376630653032373133616532626534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31393637333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3234323a7b733a33323a226336313436316334353363393865346637343266303038633461386663326364223b733a33323a226433343936626564346538643234326661616236613434626337643064636635223b733a33323a226434653733373064613237323831363463666664386265643961363737653738223b733a33323a223530613362333362643937366335613464313931323364626135613666613261223b733a33323a226163353331373832643464623536393137346537333261373834393734656266223b733a33323a226365663936353833383638343834363664306565643935346136623538666638223b733a33323a223535346532336262346363346362383939616132613666303664303532363561223b733a33323a223338333465303366626663316163353062663163316332636639303031643930223b733a33323a223339643066306539363764633238306637323132396539353363656564626632223b733a33323a223038343739646562383166323736303836643465373265303238343633346461223b733a33323a223566613130306261383437336261303864333764306539623361646333373563223b733a33323a226663643164633232323933393232333162383764616437643032336161323237223b733a33323a226334613236313166343462643964326361663062653164303164356535363437223b733a33323a223231653731336430663331616162336561666165356335663638346230613565223b733a33323a226432626439666132623366316339383463613239383736343236366139646264223b733a33323a226435633064313065616238306162313437343164613966393237386630393263223b733a33323a223864326263653162306166333966623636323536656566616463343436363732223b733a33323a223065353261653435316639373263353232306135613534373964346135613536223b733a33323a223465353462616636386665323231366234643165633462336130353664623639223b733a33323a223530643963656565656439393361303266653437336162643131383835333464223b733a33323a223461663434373765343266643533663765356264313030623336346334646236223b733a33323a223238326432366462396432386334323161336634346131643831373434383535223b733a33323a223335363738353262656534656566346166326362326530313338633030313034223b733a33323a223039613835633030616562393737613039313339623865333931373465303036223b733a33323a223739383464326539313864333139366236346534363330386230613734346361223b733a33323a223164666434616230633562323436613734383133396461326532366432616435223b733a33323a226539306330353338326463323435646133343464306364343561303162643962223b733a33323a223838333732616434366365363838323231376664383065323062656230383533223b733a33323a223665363462316330666261653133303531306537313634643338353039303461223b733a33323a223035396434613032386464303062613765366263666438626463373765386632223b733a33323a223632313532303639373464356461346238386435306531313837646463373737223b733a33323a223133393639613036653164633336346135383234313764386530656139646430223b733a33323a226139653135323333326632666261326566353636616264326131623137623335223b733a33323a223764393266353962663636303063313263626264376166373666643533316330223b733a33323a223265313635373136313838656364613232326137386135316531393139653536223b733a33323a226431646230323834613464393532633030386536323461343336303464626264223b733a33323a223066376230336633646239373837303934633161353364643030663331666534223b733a33323a226466343763376361393130623264323931613434646265626639646131613263223b733a33323a223636663136363366333263363737646634653734393464613163396239323130223b733a33323a223134303237306365623635356135363131386562616134336164386131393465223b733a33323a223039343037666239373637663838376335383234633838376433383434366230223b733a33323a226366306232346337616439346230343664396137656363373034326539306538223b733a33323a226363656166663264633038633565306137636235306635623734636332316439223b733a33323a226439373465323933643564626233643830643732633534616337663831663361223b733a33323a226563636134396432383230626535353230393636336338626538653735323137223b733a33323a223165643731373934336235643861333235303339626434373534356535653437223b733a33323a226366316337336532313930663532303039363131666539633433633632626562223b733a33323a223533653538653832616464313634346633616464656265656631333733663732223b733a33323a226564663138316637316339643233363965636637363962313963653365313436223b733a33323a226232383061386362646339616138373437393930616335363937663530663762223b733a33323a223161313263303536343636663362623830653634653231646566636263356465223b733a33323a223335313133326237656466633166336430623036373934643164333061633233223b733a33323a226132633232643339326362363064343937363238336130636466373231353266223b733a33323a223663383330323735373631613936323138306263313866623132326131626138223b733a33323a223934373661613165666633373838333766326561643733303261613636383535223b733a33323a226535656135623437663931653130303234383862323734373564306563393664223b733a33323a226133643264346465666666363262346565613733636132363031333338373163223b733a33323a223830396562616634623162386439336630313264313433373864396262633365223b733a33323a226237353063343132356237376234613665306265633939626335373562366662223b733a33323a226337393463363434303339343531333366316639613436623835306536363930223b733a33323a223630643261633366663564616265373563613133616237363233373435343235223b733a33323a223764333062623062353536386265346162313733373236356566633762666636223b733a33323a223939653462633331333065353035613263626534646563663466313239636532223b733a33323a223332313334343931303430626365623931333862363833643731636463303434223b733a33323a226265626236626438313539316161396364653336633861346330393733646366223b733a33323a226234616134313961356565313738616236636361623761616365316463626537223b733a33323a226239623331346262626236383031373263396637303030623630363633373434223b733a33323a226538386232353563613038633132643732333964643561306438353134623033223b733a33323a223465373239643966383333363136333462376331363430363264363266636333223b733a33323a223431306235373039663433326532376137386432313832383134653165386337223b733a33323a223531636231376331373635376332623834353765343832616566613563353738223b733a33323a226533343838663339353235623936663835653864663362356261633831343531223b733a33323a223937303834393236646665646238623638663931643966653132373763643339223b733a33323a226335633433373138336636323139393263353236613238396562663665656265223b733a33323a223735353961383434633638366265643935306632643735623636376563353135223b733a33323a226665363731356431653263323361653936376362643331663230323861653235223b733a33323a226131333136313066333038646563316361333535653633386339613332636565223b733a33323a223265313337653632393833636137373466343762326436643435636230303161223b733a33323a226138646266623830626632646630363362373061653563663532396366613630223b733a33323a223838656261646563326665353138653534646164386466326332383630346430223b733a33323a226130303236626462613962376334663034613330396263393437643538643932223b733a33323a226432363162393163373363636131353732653237343062653933646165636164223b733a33323a223966303031663032653638333965646230643561633862303234343265656539223b733a33323a223763333363356132323561363433653237373939376664383238633639326264223b733a33323a223366653134663439333333366265646463666238633234323262323333663438223b733a33323a223636376164656634383436363630343430653766326532336137373561346531223b733a33323a226263633935333166393762303532366561336632633861616434353261323161223b733a33323a223236356235303965396362393631616230376530343835366561663961656432223b733a33323a223239313834656330633266313836323530303833343434633534633939653161223b733a33323a223366653061343733353037356163316232633838636637356539613634313133223b733a33323a223766386437656336343931303631633930323337616133616135316564356166223b733a33323a223837303332623961343736666563666633666239396233613234626164386432223b733a33323a223261373063653331383062666330323035303032396338393835616134643633223b733a33323a223133636130616433656438316230656232306334343465386137623930636564223b733a33323a226132663962323965656236616264653632623833376466633034633665643665223b733a33323a226266616135356434313932376163646639636561333331393761373563373736223b733a33323a223534343937386562366362306339633063653066343062383435333135393262223b733a33323a226631353332323638633432613736383433333631636637636336393630383231223b733a33323a226533353436653338343130373038386461653830383831623130303634663663223b733a33323a223130383963663438313963306638653238626262656231623164323432396430223b733a33323a223962363561653034383439613135656466323263313539616634646362636261223b733a33323a226566633630386665346366633735373565626335346530373264653933373064223b733a33323a223434623535616237616235303237356162383534363635303335626364356236223b733a33323a226364346565326162663839626138613134343438363032666636613630336362223b733a33323a223366363132353931666632366331363339373437633230303761333439633038223b733a33323a226163393864656634616436636532323735386332323433323664303436343937223b733a33323a223766373361363139366464623238323830326137376139613331643837333938223b733a33323a223538373535373738633936343036373934323034613737663738366231323163223b733a33323a226530303138356663666365616661636262616462323639653432653762656435223b733a33323a223763333232356539363133633961663863343362663930306132383833336136223b733a33323a223132316362363238363938373637346638393432383736363639653964353836223b733a33323a226231643964653432316266323734343030646664313637656430303761333864223b733a33323a223937363737376438646366346535333162376362316439363335303064636337223b733a33323a223866336636316536366463366361333861653362366232643563643766396433223b733a33323a226637666561616265333364343432383662646361363361316232353036343931223b733a33323a223836383833383530323061636232363238353638393630396438396165646133223b733a33323a226632323032643162313632663764303839663830366436333434666165333664223b733a33323a223734633563633837316637613130323965623666306130623864393766393933223b733a33323a223639363432653264666231356136623264626234643038623331376665356132223b733a33323a223831313834616335613165643534363965313963656632656266636565623632223b733a33323a223466353763336336633432346433323063346463396336623666303938373839223b733a33323a226139346436663431386565646335336433326138333739373137313864373039223b733a33323a223134363339636164323463653534376436366461306665333236303465666632223b733a33323a226561323162663238323039666262303430366539373831376135316330376139223b733a33323a226231626131346531616531336165376334626461303163336430303936613336223b733a33323a223564313764376339356235346134383462613537366563333633393533653262223b733a33323a226361313338656530613830373662306233303939623461653464376230653864223b733a33323a223131373030303438373839666135636534353437313262613166383664623462223b733a33323a226439643333326632623532393339396161373932376134353933333237313338223b733a33323a223361306666306564343064376537326639343338636631313331323737656131223b733a33323a223262313535363964313866643930336363643633343562663935303830613061223b733a33323a226435303936633362306431626234313730323963666134313034366333643330223b733a33323a226231303462663734363135303232353538323232333737623038303035393732223b733a33323a226631646336383732326362613838343330666234663937643566353462613933223b733a33323a223565393033613262363962373038376436333937393631386633346262623263223b733a33323a223364323330656130363962326631343761356533643364363462653832636465223b733a33323a223234353931636464373063383266306663656363663931363735653034656466223b733a33323a226265613761643637353063626438636665343262333430303762333861373762223b733a33323a226265366539323262363863653164623335386563333031643863353364626462223b733a33323a226363366437383637343430393731336438303738373034316431323334316332223b733a33323a226465633462666564346162633262383764623965336264633266613437396135223b733a33323a223538623736343264313661346531386266633231666434636134613238653639223b733a33323a226661373065646261383431353137353061396237363561616435646431613837223b733a33323a223366623464643434373535373137363930313266383432383738653130373663223b733a33323a223564333465316263386334396363336164346362633163353336333235316264223b733a33323a223966356135663933373537343437666435356330316637323039663739346361223b733a33323a223063663238343134383535366266323735303735343066363061363130323232223b733a33323a223231663265393136623565666566623830336437613033326534623233303333223b733a33323a223566376636636365616431613163303436346630313736333930326330616236223b733a33323a226530656638366637356538386532653164613932616337353864626436613536223b733a33323a223131323266376635343530636461393737323332623039306434613561343531223b733a33323a223433373663633437353332616162613166633539393833343766666332313062223b733a33323a223039613066646233623063633530363765396461633333316331363963383063223b733a33323a223263646237363361373834373936636433666262313232323861616662313337223b733a33323a226433666165633662353335383436396338313530303835656431623361653763223b733a33323a223435643666636135393365616432303361346631383261396534343134333635223b733a33323a223139663439623538323764363235653731643939343863626364366538333639223b733a33323a226235613430333035313839363836633435346163386432333037373065643234223b733a33323a226439623437356430636236366539656364343164653137363730336562663536223b733a33323a226432663930376431343339313332646532323831643430643064663763363836223b733a33323a226264326161613431663331333337303737623265373233653430653535303562223b733a33323a223335353762336535393938386133326630383533316462313937343134656531223b733a33323a223435666666396436306338663738666466343562633337393362393663326132223b733a33323a226464323230663435386362353334376230386361613865383163353537626133223b733a33323a223239356562356435306162666531626237663030636430333532646666633430223b733a33323a226263643461303838636662386235366266383436356330636638373362326138223b733a33323a223766316264633634623130313637363266636563326334303131623133363966223b733a33323a223061303235646139623639656136363633626161326162656234303565623364223b733a33323a226638613066356531656536326536353666396565346134643762363463643731223b733a33323a226634613838643664383762316132383631613630356338353235663432653763223b733a33323a223063376538323531613135386361353233623963656532316137663464313861223b733a33323a223566353561323061633634383138393138346563313931653864363931316139223b733a33323a226233343835393165323962383463306534363362613238623039623065636565223b733a33323a223563376433613730326136306137353632366530326330656139363961623466223b733a33323a226265333839386364646132396438383133393165326234376137333137626362223b733a33323a226337396636383065626637336637333830633131313066343931323436613964223b733a33323a226361326332343263383431326465376261626632303162326463646161633139223b733a33323a223634356530353936303663393432303237303064663666623536343761336236223b733a33323a223965383639663533666532623864316638353766303736396134336639333037223b733a33323a223734656262353132616163666539656333313235663135663030356132333636223b733a33323a223162383232373263303936316338373763643539346332316638353639346234223b733a33323a223233363437663861613937646162353061653265373735353931376237643534223b733a33323a223866313066346563613863323831653838333632643561346138343566616461223b733a33323a223366323762613632316563363366376634653139356334623764376238373665223b733a33323a223134313764663462333935313039323730363365653233393536633764393231223b733a33323a223566643963633564353231306133396238396561323036346661616538313939223b733a33323a223634353934616434663762326164336430313866333035643161653865616336223b733a33323a226236376536396339393934366139313838393261646333623132366534353563223b733a33323a226435663130386337356263663766396563336331356239313537396339323737223b733a33323a223630393937626633353037396138356337663265303565313238353061343661223b733a33323a226139663132353939356165343664323063346562306233646163346332323433223b733a33323a226432363361386562656334393333323537396365336366336162633762303363223b733a33323a226339323931386135316166363862653438383631353433646431336230316564223b733a33323a223666323665613230306561383461383239333461326561663238333633313761223b733a33323a223133386535363563336532356631373965623835663534303962646239336466223b733a33323a226664363931316462663338353866323132643266333866666335363934333565223b733a33323a226462656434653764383165366531316263643034636532616336323162643761223b733a33323a223632343233363938386632386263326638313633343865366162353462643862223b733a33323a226463396163363630396561353462366663323230376461666237636533356463223b733a33323a226263303561336161373238613438626664353530396634333530326436353237223b733a33323a226238626136313064636432303863323233383366353364353264366665316264223b733a33323a223031393164353033653164623462616334306239613061336133303036323639223b733a33323a223931363664316231633261636233376135303463366462636161323064343966223b733a33323a223865303131306461323931626638336463383036613862643964333834353037223b733a33323a226161356133326335623632313764623961393331346666373933363266666433223b733a33323a223531616638653431363537393137363465633465656434313765386562393736223b733a33323a223836306535393834303863643039333564386138636566313838306530386433223b733a33323a223531386131343366633164363636653737393536323532323231343265643734223b733a33323a223436616334383634356539346166373235396631323134626638306365623137223b733a33323a223532656634666365383939353230663339373831643765363836663231323566223b733a33323a226264393537663565346133303737333030336639306138313530346333303263223b733a33323a226138653738323663356136396235333763393130326430373930326233393835223b733a33323a226661303334663066333434363064633763623932323438663839616134373033223b733a33323a223266663936313135633963323963393434336632656437373261633161623063223b733a33323a223263306334313762333733633364323439333138646230646237383038363739223b733a33323a223939653664373335346131643031326665613737376662656164666138613331223b733a33323a223961383465313761636131376634323234616533336132633964316661386238223b733a33323a226433333932326436316565653233643863666637343166626233333634643431223b733a33323a226237636631353438313235303436353633393266656437393663613131646162223b733a33323a226333653964356432623630666131326664666336636366323934666464353136223b733a33323a223262663663656561336238383238636633376665663962633138633932373933223b733a33323a223236313862616265363933333633363139656239356465353837646131353762223b733a33323a226635366136306236373432363930326339306539653137383863633537343466223b733a33323a223962633630363835366132306163663564353165306136616636353132356439223b733a33323a223332383761396236303633346131363934386561396635626336306531356234223b733a33323a223036373337633962386332306466313236363135363134376534363962386636223b733a33323a223936653063393165646630363362613030376465316331316161666338336362223b733a33323a226531663133643632383162653862363635343239626130383934373864633533223b733a33323a226634613336353032656461613736636230303864636533383464366238613863223b733a33323a223461666634323465613763636165373335633666313434353637623535623236223b733a33323a226562323961663737323933313537643063643861613137653063653063383864223b733a33323a223666343836613032306565633639646137366434393866323432646637623135223b733a33323a223533306135383562386561636335613763316161306566653239343964303164223b733a33323a226462363163303162323662306432343036363265353461623631363035303335223b733a33323a226133313565303563313435626262306530386637646536323161313464323730223b733a33323a226465663461306561313537346564373835313135636630643764613266313932223b733a33323a223461333833386437613431613738653938383135623565313637653465303832223b733a33323a226264333938306430363536363464376230646263653730393661386666316631223b733a33323a223932303664653038616161636564363139326365383734326231383332643661223b733a33323a223562626436323766303435373939626365613830393330383062636436303935223b733a33323a223662653861636135643033303237346138646435613764333335343762343462223b733a33323a223134356430636136393962306339656239383939643838373030313731376163223b733a33323a223561616665386462653564376161333562393765623933313964353439636436223b733a33323a226430366462623134353361623639343237656431383931346637613732623663223b733a33323a226639373033363538643036313032656161316337616561356237383733323336223b733a33323a226564356634386234666434383836333466666636323761333137623330383635223b733a33323a223234656137373031303138366332363064386538393366363937643663356134223b733a33323a223936393639306165323637636336353430396662346465616532323238356235223b733a33323a223134336163366265383065323961656134623935316166373639363735333930223b733a33323a223036323061333034323835616639313431363433616633396235343261313264223b733a33323a226239643535636266633135636333633563623936656531383563316434333333223b733a33323a223565343039313738646534346330363132633035656639346238386662383066223b733a33323a226134383162303164396261393833336164323138366636653636643366353433223b733a33323a226362326662633330316161366530323435363662623236373265363936353934223b733a33323a226634626164396165623932626436373064633334646164616430643233343435223b733a33323a223534353463333634336337616666663132643463626334343132323337666434223b733a33323a223731643664623566363831323166323530383732326133393765306165373032223b733a33323a223866393830326135323266323536346262363436346630313831646437396564223b733a33323a226437303530376433653435316562633234626230323733616537313465356236223b733a33323a223138646532393730353235383536353137336134366334623735363333623861223b733a33323a223936646265656564616463396432363162366530333638306130323935623863223b733a33323a223539633537306233313738383135333736393964346565323836386134636331223b733a33323a223136663635303339653466393236663236353932663366323564663837653966223b733a33323a226663363436373366373933353239616330653431626261623564323662656233223b733a33323a223866663365346630306533303733313635376433393864653065356132323332223b733a33323a223839356131623366383831626238666330613366306636383537326265616131223b733a33323a223836356462636531636565623666346462313131316333366334396432353738223b733a33323a223061343731353566346237326162376230646564333634303363616330343965223b733a33323a223338393639613931386131666263343866613837303231613632653731376231223b733a33323a223766313562393333656666356233383637633038303863653962393866383532223b733a33323a223566656532633330303833363965313439363638313961373334306630396537223b733a33323a223065376435636265663462303561363132383033643637333330393166343336223b733a33323a223862386333623136343661653039383231653761623064646663643032636535223b733a33323a223533313230346664643465653531663161663930386539323964333966623436223b733a33323a226534393536613532373362646435386637346533323837303031313534656564223b733a33323a226436346365626465666261636363383464353963643435613637393831633632223b733a33323a223964386631656564623234386630366666666635643263373862373134346334223b733a33323a226138616634663036313634353736633633353734343535393931396335626163223b733a33323a223065386266643864356232356332653665623930396632366438316436333339223b733a33323a226461386161626531363066616562633034373464626663306165613236303638223b733a33323a223166616438363837346232303866363736343662623237656162666231346439223b733a33323a226632663538393963653939313932306462626136643061393437663561316264223b733a33323a223462303533386635633661356132373566366662343835383439333332373431223b733a33323a226264353331623336633236343766646139316237303666343565376230383563223b733a33323a226631323532643036313833343532376132616262653135663339376335356361223b733a33323a226239356338313034313838316430613466396232616231373435666535653661223b733a33323a226464333136363933636666323835333136386163376439346535666463376439223b733a33323a223832643664643663383766363265613064326264343135333939646331646530223b733a33323a226562373862326563343865623430643034633035323734626238313662383238223b733a33323a226539316637633865383430643236646662343039613235663830653637343763223b733a33323a223839323466363036373837633533343133373931383831303639366536323439223b733a33323a226164653131303336373163313861393135393361396337616139323262646237223b733a33323a223365396438306163386234336162386238316338653566333230373231323937223b733a33323a226637396236366533643432386335363139643561663337356466646531653139223b733a33323a223866383634643766613834633163373033353330613363376263626537303534223b733a33323a223534316333613331386266383133653265313864623330373932356139363534223b733a33323a226331363238343931376138316137633938323636643939366438376664353637223b733a33323a223939363830623364613839613335396261393432336534386330393664636137223b733a33323a223764646538666637373637326433316263656163396165613938633166653731223b733a33323a226265353939636534653866356230393561643134656565636266353338613731223b733a33323a226564613536646331626132393131333234356238393864643832333531613361223b733a33323a223163646364306630363837313935313238626462356265623733326630636262223b733a33323a226439656239636564363232346232326562383164613138396661313131616433223b733a33323a226662613536663736376435333138336334383964336163643765626432393830223b733a33323a226666303161333839363134376533643636303435336664376436653166663434223b733a33323a226331623062393030303264373330366334623235313666353330366462363564223b733a33323a223737633034626365383538616437396561363532623930313435636537663864223b733a33323a223637363562356564356364633132353834336638636266393364643132316439223b733a33323a223664636539343562316430336362376365376662633565613130643736363263223b733a33323a223437383439636164386137326237376137633464393731643331643532326164223b733a33323a223736313163376632643966656266626536643839376365346165356631376463223b733a33323a223166643639376437646435393139613133313762313762373638633730356232223b733a33323a226437636336363164643165636534373463643832626664303463333366386534223b733a33323a223835663438363039333966626662626437616161663333343262356362316461223b733a33323a223561643734613230366364646364303237333136653733643033333938373435223b733a33323a226232313336356664303031653962646136323130373466343739356466396336223b733a33323a226463643338386230316130313361613537353266653332353030656661396163223b733a33323a223335646464383034643834306630306665623862353337383137616566343139223b733a33323a223839336561343837646338386439333233643436373433353565396537343862223b733a33323a223438626163346366313831663866323362316364636262663237623434393736223b733a33323a223135323664666565396563633832646234313634303533643662346166616231223b733a33323a223635626665613237393335643739346239623133353835616661306633663531223b733a33323a223138383931326538653333643661363130333332316132333163623531613464223b733a33323a223666333936343066353532303563613232383834653538656131336661356663223b733a33323a226631633664353637663837656436393536346539643536363763323866326430223b733a33323a223536346336313462666335653038336534656233313239373465393063333130223b733a33323a226236313534636438326661653033313235643665636462333432393234663135223b733a33323a223765373138616632353138386530653738643532656365646562323161613537223b733a33323a226238346263626664623261363734616364333764643133303262386439633331223b733a33323a223466363630396162663339363233633236663435663566336534643663333633223b733a33323a226266386334623234656533626264346231613739633263393734363938306666223b733a33323a226563396561643131346137626464653763666238306462366263383136666463223b733a33323a226531633933616635616135613361663437653464626363393833396461386130223b733a33323a223964653730336430366564366662383831383235383231303862343432386137223b733a33323a223666623639363662623234653731393330346262316261653737623831646363223b733a33323a226634643738363066373134646636393730633562363064633861323535343931223b733a33323a223661336130353736663432396638653030663138616538643064393965343432223b733a33323a223030326339303666326165373465653765313836653663346138313538636565223b733a33323a226332323432386232613064636266363336353261616334646630386265656434223b733a33323a226134333766306234353962383839396230343731633632623237663066666538223b733a33323a226366363639366530623735343862636134396237333361613066336466393364223b733a33323a223836633063636237633230666237363464373062373336623462363361633033223b733a33323a223736373337653437323766343764363066626437663964656263326635656435223b733a33323a223265353233633236626435643938653131376662303830653330383638646663223b733a33323a223336646535383561373836336135336166613930373537303361363230623664223b733a33323a223661613166306433663733393738333562656238666339656439323833613434223b733a33323a223537383261626138346166366535663636373431666230636361306232373563223b733a33323a226132306336396266653466333362393165353630663262356261313362373262223b733a33323a223634626135393262666232313135323234316262656434393964643939626536223b733a33323a223237616130653331646533636461373936363266326633636537623362633631223b733a33323a226437376465373039393864646263663638643865616439386438386634343133223b733a33323a226464386264376333353731373433333634626233366262326630346231613834223b733a33323a226634353034353266663738316362323337303432626532373966643161393132223b733a33323a223639366265353734623565353338323234353661376161313666393761623230223b733a33323a223663326637313364346534366535363333346635646434316563646632323430223b733a33323a226465323133643637333634613931386364346264656335626665316536663832223b733a33323a223366316630636335303239303362633836636338393565313938323738336335223b733a33323a223331323266386661326539323930333462333531333963343161613431326238223b733a33323a223165393337383361656162343862303565663530646565613635333137353135223b733a33323a223037373761313036653461626439663330333861373632623766323766303963223b733a33323a226632613934613164356161313163363537303936306565303730623465383166223b733a33323a223035313465363233363638353938643965633137643836616430623338386464223b733a33323a226630363234616531326238373165356537343461303361616133633938666664223b733a33323a226334393636643661633661353464626133346230303539396264653034383265223b733a33323a223263356531633834646335643865373662383536363232613665653430616231223b733a33323a226433343538643931313764343662303762343534393338646363343938306464223b733a33323a223830343434666139326363623730306530316337366235303162656661333764223b733a33323a223531616639616233626630376631356263303862396236316337333063373964223b733a33323a223465646235383963643432316365616362396162323966623735386436393163223b733a33323a223033626365343466653561633031643239383263663161303564363761643131223b733a33323a223336336466623636303862643939306131666361333234303739656162346131223b733a33323a223733346330333662633366363335326562303131383738623064663834353432223b733a33323a223034386361653665393566656137643335653936336161373561353931613163223b733a33323a223264623231336535336137306631333231636463373739353437323464306233223b733a33323a223065636265623164393162646537333963393662336230326633666231383566223b733a33323a226339666439633261376664373965666337373236306334396461346665366637223b733a33323a226362396464383638383563393834336333373138336662306135376435373231223b733a33323a223863376233323934643965663934623961376630616137316361323666326664223b733a33323a223964326134313133353262613838373761646365363465373139643338323366223b733a33323a223036366163633065663361666165656233663339623132366333386538306463223b733a33323a223165343635646365663330623766393433313864316162646633336132656139223b733a33323a223165623964343565303436326261363230643163626331313534306339393131223b733a33323a223365636233306463363538323438353734656231613063313933636166343966223b733a33323a226266303665323663323933343339323765376435633462306566303134326238223b733a33323a223361653764343361663463366564376631393361623633316434616166386639223b733a33323a223063353631386362643061616565383161663332323136616434366364373235223b733a33323a223834353865636131316361666435623666663633313732313965626336623863223b733a33323a223034333164323763326362326335383239343535633731343766323061666339223b733a33323a223264363431363035316362396536346630356262623739393764613036653565223b733a33323a226233323866653834313733336136393639356537393533653637356365643765223b733a33323a223461326661343232303534333032336332383839613637653031356262666639223b733a33323a226166396465386636313334373666666630636163353763356432343836376630223b733a33323a223532663963333434393633343465333066393330666537636666653564396238223b733a33323a223564303231376264666237326261653434626365363730666434653230353265223b733a33323a223363343331653366393463306564333938386163313132646363623837666433223b733a33323a223337376335616538613662643261373330356536383431353664663939643530223b733a33323a226335333539366330323265366436643239303037613461663366643462666339223b733a33323a226265333630373432336165353430386564633364383037356262393131373030223b733a33323a223732643463356230616638346462386163303432373533333633396130623530223b733a33323a223430653836393539343835363839323737633330313838383636346634373332223b733a33323a226562336630616531366632346334363437646166353364653861306261303563223b733a33323a223262356238343830393038646532376237653137653861636437613439336336223b733a33323a223266326133373863323538356432636635636364363731343237313339313839223b733a33323a226135663438323334393162613737643065303763646563643661336331356564223b733a33323a223039323734643662663962616466653230326366363166303332663036376536223b733a33323a223766313265353664363436633938393365343266316138663830666139316638223b733a33323a223963616533646531636438393132353834326132396139343335303537653232223b733a33323a226237313133623931323561316235356439333463653962396161373362356366223b733a33323a226266383932383465393832613261633233623130663334396335343333646239223b733a33323a226336633766366162356331323764376331376264326437303632303832396330223b733a33323a226237306665366436353936376562623736393930373634666665343765386362223b733a33323a223433303736643632313061353130356130383434623035313130333732313636223b733a33323a223336333662333236333834643233663230353836656465666237376332663339223b733a33323a226433353261303964636365323037343435393362373563303465366233653831223b733a33323a226434653264653463373163386162363331633738663731656263353932363966223b733a33323a223034383563666634373132333063636162353630303532323730316166316363223b733a33323a223735383766313936363462336334663262313432623438653738326339626264223b733a33323a223535303033346538386164633666306462313039396232333566383265653132223b733a33323a226163646339343830303634656661306562636530633933303332653932326633223b733a33323a226337623735396130636638393034323565363433613865323163396466656134223b733a33323a226332656134393835376530323430353035396335333239653363643365393436223b733a33323a223537323037333466633633353762333339663565396664353234323365613435223b733a33323a223266393833303438643935616433323935626164333731636165666136623361223b733a33323a223933353630313065323237333837396537363963663562313835326465626532223b733a33323a223736623432323163386638363731393635353830666364356461326535623533223b733a33323a223763343831376235356330323133636166376562323964363334666661613063223b733a33323a226137383232663737336162353731336237393332613161663366343734323038223b733a33323a226436376461316633313535326264373864653336346538616238303761353938223b733a33323a223664313931666561626266353137313165343739383134333538363763636535223b733a33323a223136306162353234366364626232373838643537386338363366316366333863223b733a33323a226564613135366339306539366537313031663164396662646235373737323733223b733a33323a223930623230353137653537626432346363363162333234613261663230306531223b733a33323a223130313166613433303234393730333439363736613834623737616262613261223b733a33323a223430383936323437396235386633316633643737366564363664666565396164223b733a33323a226635633234646532313662643534623866613739356665646566613862366334223b733a33323a226339383131356266366335616637653266393733383764643139613731316163223b733a33323a223738666162343937623964323264383366323161323166663435366261363731223b733a33323a223565333463656535376663663035303734363632383131616534613239383836223b733a33323a223335646461333764313362303733613430613231393033306632333362616237223b733a33323a223366616364626166306139656664616330346332643139623937636230663965223b733a33323a223763383336633639343933663166303631383731643138333334376462633539223b733a33323a226366616664343935383733353338306439303630616237333866636337323065223b733a33323a226463646335363064316232343964353361373662306163313935663463633062223b733a33323a223539353333653064613764663330323662613638396639666264323038636161223b733a33323a223538386439346236336463393064656139626365323866333438336662313565223b733a33323a226235333134636431616536656564643333653438393938336461656536303132223b733a33323a223062643136326538333535633339363133643532333737373838663935313939223b733a33323a223235623133613833663639643963396331393337383535333766313239346336223b733a33323a226533613536656166323337396262653131323033623464336432646639663865223b733a33323a223338326431376664326232313666363931373464616532653539636237623264223b733a33323a223263326230373838323335613337316165373465313539323337373664326536223b733a33323a226465633837323532613637343338656438316662386464333063333430633737223b733a33323a223331363365376532666434386332323166333363393438323536653337326633223b733a33323a226464663961333838323539306639663939303539363433646463366531633462223b733a33323a223631376565663139383366613830333966613636383163363063653330333139223b733a33323a226361356435383335313135386530643361323364303765366563386137623539223b733a33323a223237646234316338623631363037366436623237633838643664613032326139223b733a33323a226439613937336235353536626464313432653965333037653733356332326335223b733a33323a223338636566313334343165313931326462636338376231353431336339383635223b733a33323a226130653535373639623133366138313163376463353135353730656237386630223b733a33323a223739396334316563386430306633393431326639623730313631393432363534223b733a33323a226365333537303636346535393730333964313037383462363861313831393435223b733a33323a223061396463383436613662393962393231653831333831303938373164313133223b733a33323a226132363661313461643263306534376636653937386136373234643634333763223b733a33323a226534353535376333383465373634666234613937316337623163396638326331223b733a33323a223063616332303330626631366635353639386563626430333136636335633533223b733a33323a223636623235616530333331383838663132663465353833303730376335396331223b733a33323a226564363864636265333433643439313235623833613332333832356163633062223b733a33323a226238613031343735346361393438656131326236336465336561633561356637223b733a33323a223237303333366266363534643833636464313961376636613039636435653439223b733a33323a223166613638343732663034653339363135313938366138616530653737346262223b733a33323a223137313736613166613033386566313734383539663731353963636266373637223b733a33323a223965396464656266336232366435633431373638386533313965343139363135223b733a33323a223334343336326434643339343361376532643834346638643336336531363535223b733a33323a223639633637626664333939613431653363333838353438396435653538376438223b733a33323a223435646364663066303264333734623832323839386338306332313431393864223b733a33323a223365343738626665326335323566633334323634353662626462646363306237223b733a33323a223433623262303165373561633239336662346232353035356561626462373736223b733a33323a226462343935666630633635396165306266363366353764313162343565386334223b733a33323a226231306135383636363237383965313039346130643834343532316161383666223b733a33323a223432633766646362643739366665306238643337326266653838326464343933223b733a33323a223732656339666332323232393664653138316138323961616438386138356238223b733a33323a226438626462366665393437326533656437303730393963333731636162393431223b733a33323a226566636437383831376639393766326437303336336435646562323639653739223b7d733a343a2268617368223b733a36353a2265666364373838313766393937663264373033363364356465623236396537392d6438626462366665393437326533656437303730393963333731636162393431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226561396365333836313764333138343461373661376563373232643966383538223b733a33323a223234616636623462656436323537626566363662353136316333313433653630223b733a33323a223239353163623263363066353936333166393632646535373731373433333034223b733a33323a226364353439343433366365356661333864393636373063353037333931313130223b733a33323a226365363932346332316662346537396564653061303634663738383534386362223b733a33323a223730353462613839653434313035303737313565393564316539616565656230223b733a33323a226139346536623633343130643130396634396336636333323166313630356361223b733a33323a223663353663623736363733343134656366653439303965366337373635333432223b733a33323a226139333563663939316132323234643235356563396437613663363663303932223b733a33323a226565663064313531346539323635326431623365313832323363323738613062223b733a33323a223337373164366139386339303934383338313336343564663161333038396262223b733a33323a223665656538393032303639616566326535633938353766646364626661356535223b733a33323a223038636235613263623832636666313164653933353863356430353463346634223b733a33323a223931386430623364653166663865353130346566646135356638396436383334223b7d733a343a2268617368223b733a36353a2239313864306233646531666638653531303465666461353566383964363833342d3038636235613263623832636666313164653933353863356430353463346634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323233323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a223338376161316332346465366431653462663864383236383833613731363461223b733a33323a226635626638643030633665383332643565313230343866303938346634626531223b733a33323a226134323031343733316431376431633164303930653233636639333033333665223b733a33323a226663303662646134343963623534333166363965666535326435323930656564223b733a33323a223936363338353236376638666565353564646162383430326365623261653437223b733a33323a223538353339303963643065643437363764383163333965373234373461303436223b733a33323a223936303731643965343338343264396636646363626134616663333735333537223b733a33323a226530623139643832373533373861663235623765653534666166323566343462223b733a33323a223931376536623337396534343566613431613631373839393364643438303064223b733a33323a226233343139356533386633613533643139363764393036643164393832646663223b733a33323a223666616561643235363436613166393932656130326130333732393864643738223b733a33323a223639376433666430393162343765383362383137373331353264663033303464223b733a33323a226132316162353133383433353239653434313865306562643737633363376261223b733a33323a226438333530303030376663383963623866343337316231323161623966376333223b733a33323a223466666535653364316333626537313532343861346338646465336464383136223b733a33323a223032313864303463333262653066393532663631393037343531373637353965223b733a33323a223238636635393565353933356262303533633633366237383263323836306137223b733a33323a223234306566336637303262643536373633643536396332323836663965623430223b733a33323a226161343863643061306266323365626663373030626636623636363831313236223b733a33323a223236373663373865666434326261363865333836306435643636393166383631223b733a33323a226431333837653330313234396132636264333633333238386166353839333632223b733a33323a226631363036346365666263623731333632666233346336623232363863663033223b733a33323a223231626339343065643164386564663733393766373937663635336634366136223b733a33323a226137386335376236613436323066373738613534636265643731666565373134223b733a33323a223836623331653361613336363033396134323864353163343365383661623532223b733a33323a226361623065376263363530366338626337386361326638393132333463343763223b733a33323a223534383339366664623238383462353261313039653434323666633164386564223b733a33323a223861373365323130306331313866653530336234656132303161633364656233223b733a33323a223036663731643931303863393730626361623162336465363662636164633035223b733a33323a226636363066323361636136383731393233613634613937303734396433306531223b733a33323a223737646137313262303630326366663439656264383166376162666361616333223b733a33323a223261383237613261376563316463316638643838383363373031386238373430223b733a33323a226462663532373332336535343666316531373436336166326465663830326234223b733a33323a223466336165653737646532646565353639323834373537326365616539643731223b733a33323a223061386465333938303335333639663135356664313766313930633235643162223b733a33323a223562323333376562356638353363323062323538333636396330633265636566223b733a33323a226237373466393733633339626233356435323737316639333663646239303932223b733a33323a226130383264326133643266653562373266383736383364613866613639366236223b733a33323a223938653837396534323737643239326366333965323337356234363461303634223b733a33323a226564376639306139383131373133613036376633363130613731656364643566223b733a33323a223433393562633066613266616630656539346431333535613530626637383732223b733a33323a223261646634363739376561336264323634646536616431353231313632313933223b733a33323a223563623235353031373262373434663538306633396135313462656162663362223b733a33323a226165323962363130383332343130383364613765616365393333623638326664223b733a33323a223138333530656536353837616638316566666363393738376466376332636230223b733a33323a223162343439663039383437393433633839656235616666346563326232616164223b733a33323a226162633737323863633766396663343235653935306563383535303836353866223b733a33323a223664313139663562316430376439313263363635383666643332613361646634223b7d733a343a2268617368223b733a36353a2236643131396635623164303764393132633636353836666433326133616466342d6162633737323863633766396663343235653935306563383535303836353866223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605483588);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('i4kb7hn61iquh4ulnob6t95166', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363131393335342e3135333937363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22696532686a743332746d64363333353334657137676361346231223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353531373536343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363132323935343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353831373636353b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353832323531333b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226634303565623130373338313235396339613764666161653865396165363236223b733a33323a223061303638326639653537643330306331666463353131636636653263613562223b7d733a343a2268617368223b733a36353a2230613036383266396535376433303063316664633531316366366532636135622d6634303565623130373338313235396339613764666161653865396165363236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223432633366623565386239646130306535313866333666363964366536353436223b733a33323a226233336235333536613834633132316462383630643535393733303166356335223b733a33323a226238353334616639303766353662333030396561613436643865336139353165223b733a33323a223237643264373737633734376633646263343162666132316333303432626664223b733a33323a226535353462643766393734353762376363393730366334333638326365633366223b733a33323a223831356631396265666564656539356230333461393132386337663662303962223b733a33323a223336393935336535306631366530316636663435336463303630373433656133223b733a33323a226139656563623536653934333333353735356139333734326364373064353736223b7d733a343a2268617368223b733a36353a2261396565636235366539343333333537353561393337343263643730643537362d3336393935336535306631366530316636663435336463303630373433656133223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323135323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32333a7b733a33323a223230643962623861353266326438656437646630383039376437323663376438223b733a33323a223161613639613232396538386131323735646665343965623266326563373838223b733a33323a223664383662663265383532663930383338326331393738333037396664666439223b733a33323a223338623633323636376362386239303763666132313333323664623238663233223b733a33323a223630656663353036313561393831353431613637353732343530383463326433223b733a33323a223763616636346463373933363532383632616439323637396539373064336266223b733a33323a223562313364643331363164326464343966393730613634303763386130343939223b733a33323a223665646435373132393133633936663339613566383662306534353862356139223b733a33323a223133306634363432333939376633366533643133396137643734373362383937223b733a33323a223865656166383338326339303833376362356563373335663266663566646562223b733a33323a223966383432653564376162306565393836613364623933356161653863353838223b733a33323a223230623461336632343966373665306165383038386230633639343937396330223b733a33323a223863333230356662376264353931316535326534353734393738336164623033223b733a33323a223231346439653433323261356563666331656164383033346131346533353566223b733a33323a226132663666376137356533323232653030373235393363333065356233636635223b733a33323a223665383366356163306239323065336462643964323434303230326539323030223b733a33323a226663373830363164616538333638343437336437333533633465393061646636223b733a33323a226138303633343235383534366363333432353963633436353763333365623135223b733a33323a226530393762303230353234633666656562643334626265373265333534666538223b733a33323a223237316366373539356633346564336239633234616131653336313733393863223b733a33323a223331633238373862623533376437623133633664626664326337616233383862223b733a33323a223064383932386263613434636361303336636238363038376537383133356463223b733a33323a226666313531616232356439623362336637316639366264343633616433373037223b733a33323a223261646631623366383464303633363332306538623963323836316366623264223b733a33323a223439613364343961613638303134386663343731323763323232356236313231223b733a33323a223837663561316532393731313761363034363732353834653331646337353032223b733a33323a223738363430636165663239623835396331656263363534626262366230326465223b733a33323a223539313933343339353837303831656264636636356661643661313861313063223b733a33323a223765623037623638633233633962646138396137643139333838646336653337223b733a33323a226263393134373839373738303563323037643436346432383230326630646262223b733a33323a226334306233323230643266313631353665323035303635346430623265316337223b733a33323a226636646132346234636535633863373730396534346138373031383964393331223b733a33323a223136653438376261323536376266363464653634303464323961336535333534223b733a33323a223762306162623233303437626336633130353338633865663437346330316334223b733a33323a223433613332323231326566386237613333326335376164643939626534613833223b733a33323a223361333936313031373533343232313137383032353864353436623032623030223b733a33323a223930356334666338323263303932626639376561323235333366616335623764223b733a33323a226637386635346165333461386262663365616430303464373832303164333834223b733a33323a223537663465376236333030303535623639616534393239353332356632663731223b733a33323a223431346564316231656333333562626634633630663033626430336636626337223b733a33323a223632366530373564396132353433356535303161636564653335666633373238223b733a33323a223431313865616339313435346264613336623637366639353366663534323435223b733a33323a223563376630363836356132343730343538633630303337383862656365373561223b733a33323a223863613362323835323839326663386535373863393461353965626636306365223b733a33323a226339633265613366633235343738313164656531336431313932663362336662223b733a33323a226337346433303136393861643332623339373938313661643237376138306563223b7d733a343a2268617368223b733a36353a2263373464333031363938616433326233393739383136616432373761383065632d6339633265613366633235343738313164656531336431313932663362336662223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223964356331633630656264326535643331383234613265313766396136353033223b733a33323a226636313966393663313232363637646138303034623634616439626564346632223b733a33323a226538313935353233313865303636333132326635643463346339326631323338223b733a33323a223730626263363939636637346365633738616161633734353938376131313433223b7d733a343a2268617368223b733a36353a2237306262633639396366373463656337386161616337343539383761313134332d6538313935353233313865303636333132326635643463346339326631323338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606119354);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"mourah1998@yahoo.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omeka first try\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"UTC\"'),
('version', '\"3.0.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'mourah1998@yahoo.com', 'Mourah Amel', '2020-11-06 09:44:26', '2020-11-06 09:44:26', '$2y$10$KV/oo51GP1bH9mMSS1l/G.fOvIo0XcvEyFLHe7RSMMKU76NnrdXs.', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(231, 51, 1, NULL, 'literal', '', 'Diplome 1', NULL, 1),
(232, 51, 303, NULL, 'literal', '', 'M1 Informatique', NULL, 1),
(233, 51, 304, NULL, 'literal', '', '2019/2020', NULL, 1),
(234, 52, 1, NULL, 'literal', '', 'Etudiant 1 ', NULL, 1),
(235, 52, 301, NULL, 'literal', '', 'amel@gmail.com', NULL, 1),
(236, 52, 183, NULL, 'literal', '', '22', NULL, 1),
(237, 52, 144, NULL, 'literal', '', 'mourah', NULL, 1),
(238, 52, 139, NULL, 'literal', '', 'amel', NULL, 1),
(239, 52, 302, NULL, 'literal', '', '123454', NULL, 1),
(240, 52, 146, NULL, 'literal', '', '06194747', NULL, 1),
(241, 53, 1, NULL, 'literal', '', 'Formation 1', NULL, 1),
(242, 53, 308, NULL, 'literal', '', 'Master Informatique parcours générale', NULL, 1),
(243, 53, 309, NULL, 'literal', '', 'Departement Informatique', NULL, 1),
(244, 54, 1, NULL, 'literal', '', 'Social network 1', NULL, 1),
(245, 54, 314, NULL, 'literal', '', 'amel.youtube', NULL, 1),
(246, 54, 313, NULL, 'literal', '', 'amel.whatsapp', NULL, 1),
(247, 54, 315, NULL, 'literal', '', 'https://amel.com', NULL, 1),
(248, 54, 312, NULL, 'literal', '', 'amel mourah', NULL, 1),
(249, 54, 310, NULL, 'literal', '', 'amel', NULL, 1),
(250, 54, 311, NULL, 'literal', '', 'amel mourah', NULL, 1),
(251, 55, 1, NULL, 'literal', '', 'cours 1', NULL, 1),
(252, 55, 305, NULL, 'literal', '', 'arts plastique', NULL, 1),
(253, 55, 306, NULL, 'literal', '', 'habib balit', NULL, 1),
(254, 55, 307, NULL, 'literal', '', 'octobre - decembre 2020', NULL, 1),
(255, 56, 1, NULL, 'literal', '', 'cours 2', NULL, 1),
(256, 56, 305, NULL, 'literal', '', 'intellegence artificiel', NULL, 1),
(257, 56, 306, NULL, 'literal', '', 'prof cours 2', NULL, 1),
(258, 56, 307, NULL, 'literal', '', 'oct dec 2020', NULL, 1),
(259, 57, 1, NULL, 'literal', '', 'cours 3', NULL, 1),
(260, 57, 305, NULL, 'literal', '', 'big data', NULL, 1),
(261, 57, 306, NULL, 'literal', '', 'prof cours 3', NULL, 1),
(262, 57, 307, NULL, 'literal', '', 'oct - dec 2020', NULL, 1),
(263, 58, 1, NULL, 'literal', '', 'Social Network 2', NULL, 1),
(264, 58, 314, NULL, 'literal', '', 'youtube 1 ', NULL, 1),
(265, 58, 313, NULL, 'literal', '', 'whatsapp 1 ', NULL, 1),
(266, 58, 315, NULL, 'literal', '', 'web site 1 ', NULL, 1),
(267, 58, 312, NULL, 'literal', '', 'linkedin 1 ', NULL, 1),
(268, 58, 310, NULL, 'literal', '', 'facebook 1 ', NULL, 1),
(269, 58, 311, NULL, 'literal', '', 'instagram 1 ', NULL, 1),
(270, 59, 1, NULL, 'literal', '', 'social Network 3', NULL, 1),
(271, 59, 314, NULL, 'literal', '', 'youtube 2 ', NULL, 1),
(272, 59, 313, NULL, 'literal', '', 'whatsapp 2', NULL, 1),
(273, 59, 315, NULL, 'literal', '', 'web site 2', NULL, 1),
(274, 59, 312, NULL, 'literal', '', 'linkedin 2', NULL, 1),
(275, 59, 310, NULL, 'literal', '', 'facebook 2', NULL, 1),
(276, 59, 311, NULL, 'literal', '', 'instagram 2', NULL, 1),
(277, 60, 1, NULL, 'literal', '', 'social network 4', NULL, 1),
(278, 60, 314, NULL, 'literal', '', 'youtube 2 ', NULL, 1),
(279, 60, 313, NULL, 'literal', '', 'amel ', NULL, 1),
(280, 60, 315, NULL, 'literal', '', 'www.amel.com', NULL, 1),
(281, 60, 312, NULL, 'literal', '', 'linkedin 2 ', NULL, 1),
(282, 60, 310, NULL, 'literal', '', 'amel ', NULL, 1),
(283, 60, 311, NULL, 'literal', '', 'amel mourah ', NULL, 1),
(284, 61, 1, NULL, 'literal', '', 'Formation 2', NULL, 1),
(285, 61, 308, NULL, 'literal', '', 'M2 thype', NULL, 1),
(286, 61, 309, NULL, 'literal', '', 'Informatique', NULL, 1),
(287, 62, 1, NULL, 'literal', '', 'Formation 3', NULL, 1),
(288, 62, 308, NULL, 'literal', '', 'Net', NULL, 1),
(289, 62, 309, NULL, 'literal', '', 'Communication', NULL, 1),
(290, 63, 1, NULL, 'literal', '', 'Etudiant 2', NULL, 1),
(291, 63, 301, NULL, 'literal', '', 'tina@gmail.com', NULL, 1),
(292, 63, 183, NULL, 'literal', '', '24', NULL, 1),
(293, 63, 144, NULL, 'literal', '', 'ifrene', NULL, 1),
(294, 63, 139, NULL, 'literal', '', 'tina', NULL, 1),
(295, 63, 302, NULL, 'literal', '', '12435', NULL, 1),
(296, 64, 1, NULL, 'literal', '', 'Etudiant 3', NULL, 1),
(297, 64, 301, NULL, 'literal', '', 'amel@gmail.com', NULL, 1),
(298, 64, 183, NULL, 'literal', '', '22', NULL, 1),
(299, 64, 144, NULL, 'literal', '', 'mourah', NULL, 1),
(300, 64, 139, NULL, 'literal', '', 'amel', NULL, 1),
(301, 64, 302, NULL, 'literal', '', '123546', NULL, 1),
(302, 64, 146, NULL, 'literal', '', '124348', NULL, 1),
(303, 65, 1, NULL, 'literal', '', 'etudiant 4', NULL, 1),
(304, 65, 301, NULL, 'literal', '', 'habib@gmail.com', NULL, 1),
(305, 65, 183, NULL, 'literal', '', '40', NULL, 1),
(306, 65, 144, NULL, 'literal', '', 'balit', NULL, 1),
(307, 65, 139, NULL, 'literal', '', 'habib', NULL, 1),
(308, 65, 302, NULL, 'literal', '', '2344676', NULL, 1),
(309, 65, 146, NULL, 'literal', '', '0152634', NULL, 1),
(310, 66, 1, NULL, 'literal', '', 'Etudiant 5', NULL, 1),
(311, 66, 301, NULL, 'literal', '', 'lilia@gmail.com', NULL, 1),
(312, 66, 183, NULL, 'literal', '', '18', NULL, 1),
(313, 66, 144, NULL, 'literal', '', 'mourah', NULL, 1),
(314, 66, 139, NULL, 'literal', '', 'lilia', NULL, 1),
(315, 66, 302, NULL, 'literal', '', '12346', NULL, 1),
(316, 66, 146, NULL, 'literal', '', '09864537489', NULL, 1),
(317, 67, 1, NULL, 'literal', '', 'Etudiant 6', NULL, 1),
(318, 67, 301, NULL, 'literal', '', 'melissa@gmail.com', NULL, 1),
(319, 67, 183, NULL, 'literal', '', '23', NULL, 1),
(320, 67, 144, NULL, 'literal', '', 'mourah', NULL, 1),
(321, 67, 139, NULL, 'literal', '', 'melissa', NULL, 1),
(322, 67, 302, NULL, 'literal', '', '123456', NULL, 1),
(323, 67, 146, NULL, 'literal', '', '0123456789', NULL, 1),
(324, 68, 1, NULL, 'literal', '', 'cours 4', NULL, 1),
(325, 68, 305, NULL, 'literal', '', 'reseau', NULL, 1),
(326, 68, 306, NULL, 'literal', '', 'Ali ', NULL, 1),
(327, 68, 307, NULL, 'literal', '', 'oct-nov 2020', NULL, 1),
(328, 69, 1, NULL, 'literal', '', 'cours 5', NULL, 1),
(329, 69, 305, NULL, 'literal', '', 'média ', NULL, 1),
(330, 69, 306, NULL, 'literal', '', 'amel mourah', NULL, 1),
(331, 69, 307, NULL, 'literal', '', 'oct-nov 2020', NULL, 1),
(332, 70, 1, NULL, 'literal', '', 'cours 6', NULL, 1),
(333, 70, 305, NULL, 'literal', '', 'conduite projet', NULL, 1),
(334, 70, 306, NULL, 'literal', '', 'imad', NULL, 1),
(335, 70, 307, NULL, 'literal', '', 'oct-nov 2020', NULL, 1),
(336, 71, 1, NULL, 'literal', '', 'socialNetwork 5', NULL, 1),
(337, 71, 314, NULL, 'literal', '', 'youtube.youtube', NULL, 1),
(338, 71, 313, NULL, 'literal', '', 'amel mourah', NULL, 1),
(339, 71, 315, NULL, 'literal', '', 'www.amel.com', NULL, 1),
(340, 71, 312, NULL, 'literal', '', 'amel mourah', NULL, 1),
(341, 71, 310, NULL, 'literal', '', 'amel mourah', NULL, 1),
(342, 71, 311, NULL, 'literal', '', 'amel', NULL, 1),
(343, 72, 1, NULL, 'literal', '', 'social Network 7', NULL, 1),
(344, 72, 314, NULL, 'literal', '', 'youtube.youtube', NULL, 1),
(345, 72, 313, NULL, 'literal', '', 'amel mourah', NULL, 1),
(346, 72, 315, NULL, 'literal', '', 'www.amel.com', NULL, 1),
(347, 72, 312, NULL, 'literal', '', 'amel mourah', NULL, 1),
(348, 72, 310, NULL, 'literal', '', 'amel', NULL, 1),
(349, 72, 311, NULL, 'literal', '', 'amel', NULL, 1),
(350, 73, 1, NULL, 'literal', '', 'social Network 6', NULL, 1),
(351, 73, 314, NULL, 'literal', '', 'youtube.youtube', NULL, 1),
(352, 73, 313, NULL, 'literal', '', 'amel mourah', NULL, 1),
(353, 73, 315, NULL, 'literal', '', 'www.tina.com', NULL, 1),
(354, 73, 312, NULL, 'literal', '', 'tina ifrene', NULL, 1),
(355, 73, 310, NULL, 'literal', '', 'tina ', NULL, 1),
(356, 73, 311, NULL, 'literal', '', 'tina', NULL, 1),
(357, 74, 1, NULL, 'literal', '', 'Formation 4', NULL, 1),
(358, 74, 308, NULL, 'literal', '', 'L3 MIME', NULL, 1),
(359, 74, 309, NULL, 'literal', '', 'Informatique', NULL, 1),
(360, 75, 1, NULL, 'literal', '', 'formation 5', NULL, 1),
(361, 75, 308, NULL, 'literal', '', 'licence informatique', NULL, 1),
(362, 75, 309, NULL, 'literal', '', 'informatique', NULL, 1),
(363, 76, 1, NULL, 'literal', '', 'Formation 6', NULL, 1),
(364, 76, 308, NULL, 'literal', '', 'Mathématique', NULL, 1),
(365, 76, 309, NULL, 'literal', '', 'Informatique et mathématique', NULL, 1),
(366, 77, 1, NULL, 'literal', '', 'liste etudiants', NULL, 1),
(367, 78, 1, NULL, 'literal', '', 'Réseaux sociaux', NULL, 1),
(368, 79, 1, NULL, 'literal', '', 'liste de cours', NULL, 1),
(369, 80, 1, NULL, 'literal', '', 'liste de formations', NULL, 1),
(370, 81, 1, NULL, 'literal', '', 'liste de diplomes', NULL, 1),
(371, 82, 1, NULL, 'literal', '', 'Diplome 2 ', NULL, 1),
(372, 82, 303, NULL, 'literal', '', 'Licence technologie', NULL, 1),
(373, 82, 304, NULL, 'literal', '', '2006/2007', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(18, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl', 'vocabulaire', 'vocabulaire', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
