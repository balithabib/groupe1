-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 08 nov. 2020 à 21:39
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
(2, 'items', 1, 1, 'Langue 1', 'Langue 1\nTrés bien\nbien\nbien\nbien\nbien\nbien\nbien\nbien\nbien'),
(3, 'items', 1, 1, 'Etudiant 1', 'Mourah\nAmel\namel@gmail.com\nLangue 1\nRéseauSociaux 1\nEtudiant 1 '),
(4, 'items', 1, 1, 'RéseauSociaux 1', 'RéseauSociaux 1\nnon\noui\nnon\noui\noui\noui\nnon\nnon\nnon\nnon'),
(5, 'items', 1, 1, 'Etudiant 2', '12\nBalit\nHabib\nhabib@gmail.com\nEtudiant 2'),
(6, 'items', 1, 1, 'Etudiant 3', '13\nIfrene\ntina\ntina@gmail.com\nEtudiant 3'),
(7, 'items', 1, 1, 'Etudiant 5', '14\nIfrene\nchafia\nchafia@gmail.com\nEtudiant 5'),
(8, 'items', 1, 1, 'Etudiant 4', '15\nHamidi\nLéna\nlena@gmail.com\nEtudiant 4 '),
(10, 'items', 1, 1, 'Etudiant 6', '17\nHamidi\nlea\nlea@gmail.com\nEtudiant 6'),
(11, 'items', 1, 1, 'Réseaux Sociaux 2', 'Réseaux Sociaux 2\noui\noui\noui\noui\noui\nnon\nnon\nnon\nnon\noui'),
(12, 'items', 1, 1, 'Réseaux Sociaux 3', 'Réseaux Sociaux 3\nnon\nnon\noui\noui\noui\noui\nnon\nnon\noui\noui'),
(13, 'items', 1, 1, 'Réseaux Sociaux 4', 'Réseaux Sociaux 4\noui\noui\nnon\nnon\nnon\noui\noui\noui\noui\nnon'),
(14, 'items', 1, 1, 'Réseaux Sociaux 5', 'Réseaux Sociaux 5\noui\nnon\noui\noui'),
(15, 'items', 1, 1, 'Réseaux Sociaux 6', 'Réseaux Sociaux 6\noui\noui\noui\noui\noui\noui\noui\noui\noui\noui'),
(16, 'items', 1, 1, 'langues 2', 'langues 2\noui\noui\nnon\nnon\noui\nnon\nnon\noui\nnon'),
(17, 'items', 1, 1, 'Langues 3', 'Langues 3\noui\noui\noui\noui\noui\noui\noui\noui\nnon'),
(18, 'items', 1, 1, 'Langues 4', 'Langues 4\noui\nnon\noui\nnon\noui\nnon\noui\nnon\noui'),
(19, 'items', 1, 1, 'Langues 5', 'Langues 5\noui\noui\noui\nnon\nnon\nnon\nnon\noui\nnon'),
(20, 'items', 1, 1, 'Langues 6', 'Langues 6\noui\noui\noui\noui\noui\noui\noui\noui\noui'),
(21, 'items', 1, 1, 'Language 1', 'Language 1\nun petit peu \npas du tout \noui \noui\noui\noui\noui\nun petit peu '),
(22, 'items', 1, 1, 'Language 2', 'Language 2\nbien\nbien\nbien \nbien \npas du tout '),
(23, 'items', 1, 1, 'Language 3', 'Language 3\nbien \npas du tout \nbien \nbien \nbien \nbien\nbien\nbien\nbien\nbien\nbien'),
(24, 'items', 1, 1, 'Language 4', 'Language 4\nbien\nbien\nbien\nbien\nbien\nbien\nbien\nbien'),
(25, 'items', 1, 1, 'Language 5', 'Language 5\nbien\nbien\nbien\npas du tout \npas du tout\npas du tout\nbien\nbien'),
(26, 'items', 1, 1, 'Language 6', 'Language 6'),
(27, 'items', 1, 1, 'Outils 1', 'Outils 1 '),
(28, 'items', 1, 1, 'Outils 2', 'Outils 2'),
(29, 'items', 1, 1, 'Outils 3', 'Outils 3'),
(30, 'items', 1, 1, 'Outils 4', 'Outils 4'),
(31, 'items', 1, 1, 'Outils 5', 'Outils 5'),
(32, 'items', 1, 1, 'Outils 6', 'Outils 6'),
(33, 'items', 1, 1, 'Connexion 1', 'Connexion 1'),
(34, 'items', 1, 1, 'Connexion 2', 'Connexion 2'),
(35, 'items', 1, 1, 'Connexion 3', 'Connexion 3'),
(36, 'items', 1, 1, 'Connexion 4', 'Connexion 4'),
(37, 'items', 1, 1, 'Connexion 5', 'Connexion 5'),
(38, 'items', 1, 1, 'Connexion 6', 'Connexion 6'),
(39, 'items', 1, 1, 'Competences 1', 'Competences 1'),
(40, 'items', 1, 1, 'Competences 2', 'Competences 2'),
(41, 'items', 1, 1, 'Competences 3', 'Competences 3'),
(42, 'items', 1, 1, 'Competences 4', 'Competences 4'),
(43, 'items', 1, 1, 'Competences 5', 'Competences 5'),
(44, 'items', 1, 1, 'Competences 6', 'Competences 6'),
(45, 'items', 1, 1, 'CMS 1', 'CMS 1'),
(46, 'items', 1, 1, 'CMS 2', 'CMS 2'),
(47, 'items', 1, 1, 'CMS 3', 'CMS 3'),
(48, 'items', 1, 1, 'CMS 4', 'CMS 4'),
(49, 'items', 1, 1, 'CMS 5', 'CMS 5'),
(50, 'items', 1, 1, 'CMS 6', 'CMS 6');

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
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(215, 1, 10, 'cms.ttlwordpress', 'wordpress', NULL),
(216, 1, 10, 'cms.ttlspip', 'spip', NULL),
(217, 1, 10, 'cms.ttljoomla', 'joomla', NULL),
(218, 1, 10, 'cms.ttlomeka', 'omeka', NULL),
(219, 1, 10, 'cms.ttllms', 'lms', NULL),
(220, 1, 10, 'cms.ttlmoodel', 'moodel', NULL),
(221, 1, 10, 'cms.ttlalfresco', 'alfresco', NULL),
(222, 1, 10, 'cms.ttlsharepoint', 'sharepoint', NULL),
(223, 1, 10, 'cms.ttlprestaShop', 'prestaShop', NULL),
(224, 1, 10, 'cms.ttldrupal', 'drupal', NULL),
(225, 1, 11, 'competence.ttlhtml', 'html', NULL),
(226, 1, 11, 'competence.ttlrwd', 'rwd', NULL),
(227, 1, 11, 'competence.ttlmultimedia', 'multimedia', NULL),
(228, 1, 11, 'competence.ttlrss', 'rss', NULL),
(229, 1, 11, 'competence.ttlmetadata', 'metadata', NULL),
(230, 1, 11, 'competence.ttlnewsletter', 'newsletter', NULL),
(231, 1, 11, 'competence.ttlsurveys', 'surveys', NULL),
(232, 1, 11, 'competence.ttlsiteEcommerce', 'site ecommerce', NULL),
(233, 1, 11, 'competence.ttlagile', 'Agile', NULL),
(234, 1, 11, 'competence.ttldesign', 'design ux', NULL),
(235, 1, 12, 'connexion.ttl4g', '4g', NULL),
(236, 1, 12, 'connexion.ttlethernet', 'ethernet', NULL),
(237, 1, 12, 'connexion.ttlsatellite', 'satellite', NULL),
(238, 1, 12, 'connexion.ttlwifi', 'wifi', NULL),
(239, 1, 13, 'tools.ttlphotoshop', 'photoshop', NULL),
(240, 1, 13, 'tools.ttlillustrator', 'illustrator', NULL),
(241, 1, 13, 'tools.ttlgimp', 'gimp', NULL),
(242, 1, 13, 'tools.ttlinkscape', 'inkscape', NULL),
(243, 1, 13, 'tools.ttldreamweaver', 'dreamweaver', NULL),
(244, 1, 13, 'tools.ttlkompozer', 'kompozer', NULL),
(245, 1, 13, 'tools.ttleffect', 'effect', NULL),
(246, 1, 13, 'tools.ttleclipse', 'eclipse', NULL),
(247, 1, 13, 'tools.ttlsublimeT', 'sublime_text', NULL),
(248, 1, 13, 'tools.ttlblender', 'blender', NULL),
(249, 1, 13, 'tools.ttlsketchup', 'sketchup', NULL),
(250, 1, 13, 'tools.ttlunity', 'unity', NULL),
(251, 1, 13, 'tools.ttlwamp', 'wamp', NULL),
(252, 1, 13, 'tools.ttlxamp', 'xamp', NULL),
(253, 1, 13, 'tools.ttlpython', 'python', NULL),
(254, 1, 13, 'tools.ttlcrm', 'crm', NULL),
(255, 1, 13, 'tools.ttlslack', 'slack', NULL),
(256, 1, 13, 'tools.ttltalent', 'talent', NULL),
(257, 1, 13, 'tools.ttlbalsamique', 'balsamique', NULL),
(258, 1, 14, 'reseaux.ttlfacebook', 'facebook', NULL),
(259, 1, 14, 'reseaux.ttltwitter', 'twitter', NULL),
(260, 1, 14, 'reseaux.ttllinkedin', 'linkedin', NULL),
(261, 1, 14, 'reseaux.ttlinstagram', 'instagram', NULL),
(262, 1, 14, 'reseaux.ttlwhatsapp', 'whatsapp', NULL),
(263, 1, 14, 'reseaux.ttlpinterest', 'pinterest', NULL),
(264, 1, 14, 'reseaux.ttlsnapchat', 'snapchat', NULL),
(265, 1, 14, 'reseaux.ttldiscorde', 'discorde', NULL),
(266, 1, 14, 'reseaux.ttltelegram', 'telegram', NULL),
(267, 1, 14, 'reseaux.ttlSkype', 'Skype', NULL),
(268, 1, 15, 'languages.ttljavascript', 'javascript', NULL),
(269, 1, 15, 'languages.ttlhtml', 'html', NULL),
(270, 1, 15, 'languages.ttlcss', 'css', NULL),
(271, 1, 15, 'languages.ttlc', 'c', NULL),
(272, 1, 15, 'languages.ttlcpp', 'cpp', NULL),
(273, 1, 15, 'languages.ttlcsharp', 'csharp', NULL),
(274, 1, 15, 'languages.ttlpython', 'python', NULL),
(275, 1, 15, 'languages.ttljava', 'java', NULL),
(276, 1, 15, 'languages.ttlsql', 'sql', NULL),
(277, 1, 15, 'languages.ttllisp', 'lisp', NULL),
(278, 1, 15, 'languages.ttlsmaltack', 'smaltack', NULL),
(279, 1, 15, 'languages.ttlphp', 'php', NULL),
(280, 1, 15, 'languages.ttlvb', 'vb', NULL),
(281, 1, 15, 'languages.ttlscratch', 'scratch', NULL),
(282, 1, 15, 'languages.ttllatex', 'latex', NULL),
(283, 1, 15, 'languages.ttllibre', 'EC Libre', NULL),
(284, 1, 15, 'languages.ttlmarkdown', 'markdown', NULL),
(285, 1, 15, 'languages.ttlscala', 'scala', NULL),
(286, 1, 15, 'languages.ttlcsv', 'csv', NULL),
(287, 1, 15, 'languages.ttlxml', 'xml', NULL),
(288, 1, 15, 'languages.ttljson', 'json', NULL),
(289, 1, 15, 'languages.ttlrdf', 'rdf', NULL),
(290, 1, 15, 'languages.ttlowl', 'owl', NULL),
(291, 1, 15, 'languages.ttlml', 'ml', NULL),
(292, 1, 16, 'langues.ttlFrancais', 'Francais', NULL),
(293, 1, 16, 'langues.ttlArabe', 'Arabe', NULL),
(294, 1, 16, 'langues.ttlAnglais', 'Anglais', NULL),
(295, 1, 16, 'langues.ttlKabyle', 'Kabyle', NULL),
(296, 1, 16, 'langues.ttlIalien', 'Ialien', NULL),
(297, 1, 16, 'langues.ttlEspagnole', 'Espagnole', NULL),
(298, 1, 16, 'langues.ttlChinois', 'Chinois', NULL),
(299, 1, 16, 'langues.ttlJaponais', 'Japonais', NULL),
(300, 1, 16, 'langues.ttlRusse', 'Russe', NULL);

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
(2, 1, NULL, 9, NULL, 'Langue 1', 1, '2020-11-08 19:59:58', '2020-11-08 19:59:58', 'Omeka\\Entity\\Item'),
(3, 1, 94, 2, NULL, 'Etudiant 1', 1, '2020-11-08 20:01:19', '2020-11-08 20:03:29', 'Omeka\\Entity\\Item'),
(4, 1, NULL, 7, NULL, 'RéseauSociaux 1', 1, '2020-11-08 20:02:42', '2020-11-08 20:02:42', 'Omeka\\Entity\\Item'),
(5, 1, 94, 2, NULL, 'Etudiant 2', 1, '2020-11-08 20:06:26', '2020-11-08 20:06:26', 'Omeka\\Entity\\Item'),
(6, 1, 94, 2, NULL, 'Etudiant 3', 1, '2020-11-08 20:07:18', '2020-11-08 20:07:18', 'Omeka\\Entity\\Item'),
(7, 1, 94, 2, NULL, 'Etudiant 5', 1, '2020-11-08 20:08:14', '2020-11-08 20:11:16', 'Omeka\\Entity\\Item'),
(8, 1, 94, 2, NULL, 'Etudiant 4', 1, '2020-11-08 20:11:00', '2020-11-08 20:11:00', 'Omeka\\Entity\\Item'),
(10, 1, 94, 2, NULL, 'Etudiant 6', 1, '2020-11-08 20:14:05', '2020-11-08 20:14:05', 'Omeka\\Entity\\Item'),
(11, 1, NULL, 7, NULL, 'Réseaux Sociaux 2', 1, '2020-11-08 20:15:28', '2020-11-08 20:15:28', 'Omeka\\Entity\\Item'),
(12, 1, NULL, 7, NULL, 'Réseaux Sociaux 3', 1, '2020-11-08 20:16:12', '2020-11-08 20:16:12', 'Omeka\\Entity\\Item'),
(13, 1, NULL, 7, NULL, 'Réseaux Sociaux 4', 1, '2020-11-08 20:16:57', '2020-11-08 20:17:08', 'Omeka\\Entity\\Item'),
(14, 1, NULL, 7, NULL, 'Réseaux Sociaux 5', 1, '2020-11-08 20:17:38', '2020-11-08 20:17:38', 'Omeka\\Entity\\Item'),
(15, 1, NULL, 7, NULL, 'Réseaux Sociaux 6', 1, '2020-11-08 20:18:39', '2020-11-08 20:18:39', 'Omeka\\Entity\\Item'),
(16, 1, NULL, 9, NULL, 'langues 2', 1, '2020-11-08 20:20:17', '2020-11-08 20:20:31', 'Omeka\\Entity\\Item'),
(17, 1, NULL, 9, NULL, 'Langues 3', 1, '2020-11-08 20:21:19', '2020-11-08 20:21:19', 'Omeka\\Entity\\Item'),
(18, 1, NULL, 9, NULL, 'Langues 4', 1, '2020-11-08 20:21:58', '2020-11-08 20:21:58', 'Omeka\\Entity\\Item'),
(19, 1, NULL, 9, NULL, 'Langues 5', 1, '2020-11-08 20:22:36', '2020-11-08 20:22:36', 'Omeka\\Entity\\Item'),
(20, 1, NULL, 9, NULL, 'Langues 6', 1, '2020-11-08 20:23:16', '2020-11-08 20:23:16', 'Omeka\\Entity\\Item'),
(21, 1, NULL, 8, NULL, 'Language 1', 1, '2020-11-08 20:24:24', '2020-11-08 20:24:24', 'Omeka\\Entity\\Item'),
(22, 1, NULL, 8, NULL, 'Language 2', 1, '2020-11-08 20:25:01', '2020-11-08 20:25:01', 'Omeka\\Entity\\Item'),
(23, 1, NULL, 8, NULL, 'Language 3', 1, '2020-11-08 20:26:00', '2020-11-08 20:26:00', 'Omeka\\Entity\\Item'),
(24, 1, NULL, 8, NULL, 'Language 4', 1, '2020-11-08 20:26:36', '2020-11-08 20:26:36', 'Omeka\\Entity\\Item'),
(25, 1, NULL, 8, NULL, 'Language 5', 1, '2020-11-08 20:27:30', '2020-11-08 20:27:30', 'Omeka\\Entity\\Item'),
(26, 1, NULL, 8, NULL, 'Language 6', 1, '2020-11-08 20:27:50', '2020-11-08 20:27:50', 'Omeka\\Entity\\Item'),
(27, 1, NULL, 6, NULL, 'Outils 1', 1, '2020-11-08 20:28:20', '2020-11-08 20:28:20', 'Omeka\\Entity\\Item'),
(28, 1, NULL, 6, NULL, 'Outils 2', 1, '2020-11-08 20:28:40', '2020-11-08 20:28:40', 'Omeka\\Entity\\Item'),
(29, 1, NULL, 6, NULL, 'Outils 3', 1, '2020-11-08 20:28:54', '2020-11-08 20:28:54', 'Omeka\\Entity\\Item'),
(30, 1, NULL, 6, NULL, 'Outils 4', 1, '2020-11-08 20:29:11', '2020-11-08 20:29:11', 'Omeka\\Entity\\Item'),
(31, 1, NULL, 6, NULL, 'Outils 5', 1, '2020-11-08 20:29:27', '2020-11-08 20:29:27', 'Omeka\\Entity\\Item'),
(32, 1, NULL, NULL, NULL, 'Outils 6', 1, '2020-11-08 20:29:39', '2020-11-08 20:29:39', 'Omeka\\Entity\\Item'),
(33, 1, NULL, 5, NULL, 'Connexion 1', 1, '2020-11-08 20:30:10', '2020-11-08 20:30:10', 'Omeka\\Entity\\Item'),
(34, 1, NULL, 5, NULL, 'Connexion 2', 1, '2020-11-08 20:30:23', '2020-11-08 20:30:23', 'Omeka\\Entity\\Item'),
(35, 1, NULL, 5, NULL, 'Connexion 3', 1, '2020-11-08 20:30:39', '2020-11-08 20:30:39', 'Omeka\\Entity\\Item'),
(36, 1, NULL, 5, NULL, 'Connexion 4', 1, '2020-11-08 20:30:53', '2020-11-08 20:30:53', 'Omeka\\Entity\\Item'),
(37, 1, NULL, 5, NULL, 'Connexion 5', 1, '2020-11-08 20:31:07', '2020-11-08 20:31:07', 'Omeka\\Entity\\Item'),
(38, 1, NULL, 5, NULL, 'Connexion 6', 1, '2020-11-08 20:31:20', '2020-11-08 20:31:20', 'Omeka\\Entity\\Item'),
(39, 1, NULL, 4, NULL, 'Competences 1', 1, '2020-11-08 20:31:46', '2020-11-08 20:31:46', 'Omeka\\Entity\\Item'),
(40, 1, NULL, 4, NULL, 'Competences 2', 1, '2020-11-08 20:31:58', '2020-11-08 20:31:58', 'Omeka\\Entity\\Item'),
(41, 1, NULL, 4, NULL, 'Competences 3', 1, '2020-11-08 20:32:12', '2020-11-08 20:32:12', 'Omeka\\Entity\\Item'),
(42, 1, NULL, 4, NULL, 'Competences 4', 1, '2020-11-08 20:32:26', '2020-11-08 20:32:26', 'Omeka\\Entity\\Item'),
(43, 1, NULL, 4, NULL, 'Competences 5', 1, '2020-11-08 20:32:45', '2020-11-08 20:32:45', 'Omeka\\Entity\\Item'),
(44, 1, NULL, 4, NULL, 'Competences 6', 1, '2020-11-08 20:33:00', '2020-11-08 20:33:22', 'Omeka\\Entity\\Item'),
(45, 1, NULL, 3, NULL, 'CMS 1', 1, '2020-11-08 20:33:54', '2020-11-08 20:33:54', 'Omeka\\Entity\\Item'),
(46, 1, NULL, 3, NULL, 'CMS 2', 1, '2020-11-08 20:34:08', '2020-11-08 20:34:08', 'Omeka\\Entity\\Item'),
(47, 1, NULL, 3, NULL, 'CMS 3', 1, '2020-11-08 20:34:25', '2020-11-08 20:34:25', 'Omeka\\Entity\\Item'),
(48, 1, NULL, 3, NULL, 'CMS 4', 1, '2020-11-08 20:34:39', '2020-11-08 20:34:39', 'Omeka\\Entity\\Item'),
(49, 1, NULL, 3, NULL, 'CMS 5', 1, '2020-11-08 20:34:54', '2020-11-08 20:34:54', 'Omeka\\Entity\\Item'),
(50, 1, NULL, 3, NULL, 'CMS 6', 1, '2020-11-08 20:35:12', '2020-11-08 20:35:12', 'Omeka\\Entity\\Item');

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
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.');

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
(2, 1, 94, NULL, NULL, 'Etudiant'),
(3, 1, NULL, NULL, NULL, 'CMS'),
(4, 1, NULL, NULL, NULL, 'Compétences'),
(5, 1, NULL, NULL, NULL, 'Connexion'),
(6, 1, NULL, NULL, NULL, 'Outils'),
(7, 1, NULL, NULL, NULL, 'Réseaux Sociaux'),
(8, 1, NULL, NULL, NULL, 'Languages de programmation'),
(9, 1, NULL, NULL, NULL, 'Langues');

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
(23, 2, 10, NULL, NULL, 1, NULL, 0, 0),
(24, 2, 144, NULL, NULL, 2, NULL, 0, 0),
(25, 2, 139, NULL, NULL, 3, NULL, 0, 0),
(26, 2, 123, NULL, NULL, 4, NULL, 0, 0),
(27, 2, 154, NULL, NULL, 5, NULL, 0, 0),
(28, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(29, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(30, 3, 221, NULL, NULL, 3, NULL, 0, 0),
(31, 3, 224, NULL, NULL, 4, NULL, 0, 0),
(32, 3, 217, NULL, NULL, 5, NULL, 0, 0),
(33, 3, 219, NULL, NULL, 6, NULL, 0, 0),
(34, 3, 220, NULL, NULL, 7, NULL, 0, 0),
(35, 3, 218, NULL, NULL, 8, NULL, 0, 0),
(36, 3, 223, NULL, NULL, 9, NULL, 0, 0),
(37, 3, 216, NULL, NULL, 10, NULL, 0, 0),
(38, 3, 215, NULL, NULL, 11, NULL, 0, 0),
(39, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(40, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(41, 4, 233, NULL, NULL, 3, NULL, 0, 0),
(42, 4, 234, NULL, NULL, 4, NULL, 0, 0),
(43, 4, 225, NULL, NULL, 5, NULL, 0, 0),
(44, 4, 229, NULL, NULL, 6, NULL, 0, 0),
(45, 4, 227, NULL, NULL, 7, NULL, 0, 0),
(46, 4, 230, NULL, NULL, 8, NULL, 0, 0),
(47, 4, 228, NULL, NULL, 9, NULL, 0, 0),
(48, 4, 226, NULL, NULL, 10, NULL, 0, 0),
(49, 4, 232, NULL, NULL, 11, NULL, 0, 0),
(50, 4, 231, NULL, NULL, 12, NULL, 0, 0),
(51, 5, 1, NULL, NULL, 1, NULL, 0, 0),
(52, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(53, 5, 235, NULL, NULL, 3, NULL, 0, 0),
(54, 5, 236, NULL, NULL, 4, NULL, 0, 0),
(55, 5, 237, NULL, NULL, 5, NULL, 0, 0),
(56, 5, 238, NULL, NULL, 6, NULL, 0, 0),
(57, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(58, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(59, 6, 257, NULL, NULL, 3, NULL, 0, 0),
(60, 6, 248, NULL, NULL, 4, NULL, 0, 0),
(61, 6, 254, NULL, NULL, 5, NULL, 0, 0),
(62, 6, 243, NULL, NULL, 6, NULL, 0, 0),
(63, 6, 246, NULL, NULL, 7, NULL, 0, 0),
(64, 6, 245, NULL, NULL, 8, NULL, 0, 0),
(65, 6, 241, NULL, NULL, 9, NULL, 0, 0),
(66, 6, 240, NULL, NULL, 10, NULL, 0, 0),
(67, 6, 242, NULL, NULL, 11, NULL, 0, 0),
(68, 6, 244, NULL, NULL, 12, NULL, 0, 0),
(69, 6, 239, NULL, NULL, 13, NULL, 0, 0),
(70, 6, 253, NULL, NULL, 14, NULL, 0, 0),
(71, 6, 249, NULL, NULL, 15, NULL, 0, 0),
(72, 6, 255, NULL, NULL, 16, NULL, 0, 0),
(73, 6, 247, NULL, NULL, 17, NULL, 0, 0),
(74, 6, 256, NULL, NULL, 18, NULL, 0, 0),
(75, 6, 250, NULL, NULL, 19, NULL, 0, 0),
(76, 6, 251, NULL, NULL, 20, NULL, 0, 0),
(77, 6, 252, NULL, NULL, 21, NULL, 0, 0),
(78, 7, 1, NULL, NULL, 1, NULL, 0, 0),
(79, 7, 4, NULL, NULL, 2, NULL, 0, 0),
(80, 7, 265, NULL, NULL, 3, NULL, 0, 0),
(81, 7, 258, NULL, NULL, 4, NULL, 0, 0),
(82, 7, 261, NULL, NULL, 5, NULL, 0, 0),
(83, 7, 260, NULL, NULL, 6, NULL, 0, 0),
(84, 7, 263, NULL, NULL, 7, NULL, 0, 0),
(85, 7, 267, NULL, NULL, 8, NULL, 0, 0),
(86, 7, 264, NULL, NULL, 9, NULL, 0, 0),
(87, 7, 266, NULL, NULL, 10, NULL, 0, 0),
(88, 7, 259, NULL, NULL, 11, NULL, 0, 0),
(89, 7, 262, NULL, NULL, 12, NULL, 0, 0),
(90, 8, 1, NULL, NULL, 1, NULL, 0, 0),
(91, 8, 4, NULL, NULL, 2, NULL, 0, 0),
(92, 8, 271, NULL, NULL, 3, NULL, 0, 0),
(93, 8, 272, NULL, NULL, 4, NULL, 0, 0),
(94, 8, 273, NULL, NULL, 5, NULL, 0, 0),
(95, 8, 270, NULL, NULL, 6, NULL, 0, 0),
(96, 8, 286, NULL, NULL, 7, NULL, 0, 0),
(97, 8, 269, NULL, NULL, 8, NULL, 0, 0),
(98, 8, 275, NULL, NULL, 9, NULL, 0, 0),
(99, 8, 268, NULL, NULL, 10, NULL, 0, 0),
(100, 8, 288, NULL, NULL, 11, NULL, 0, 0),
(101, 8, 282, NULL, NULL, 12, NULL, 0, 0),
(102, 8, 277, NULL, NULL, 13, NULL, 0, 0),
(103, 8, 284, NULL, NULL, 14, NULL, 0, 0),
(104, 8, 291, NULL, NULL, 15, NULL, 0, 0),
(105, 8, 290, NULL, NULL, 16, NULL, 0, 0),
(106, 8, 279, NULL, NULL, 17, NULL, 0, 0),
(107, 8, 274, NULL, NULL, 18, NULL, 0, 0),
(108, 8, 289, NULL, NULL, 19, NULL, 0, 0),
(109, 8, 285, NULL, NULL, 20, NULL, 0, 0),
(110, 8, 276, NULL, NULL, 21, NULL, 0, 0),
(111, 8, 287, NULL, NULL, 22, NULL, 0, 0),
(112, 8, 281, NULL, NULL, 23, NULL, 0, 0),
(113, 9, 1, NULL, NULL, 1, NULL, 0, 0),
(114, 9, 4, NULL, NULL, 2, NULL, 0, 0),
(115, 9, 294, NULL, NULL, 3, NULL, 0, 0),
(116, 9, 293, NULL, NULL, 4, NULL, 0, 0),
(117, 9, 298, NULL, NULL, 5, NULL, 0, 0),
(118, 9, 297, NULL, NULL, 6, NULL, 0, 0),
(119, 9, 292, NULL, NULL, 7, NULL, 0, 0),
(120, 9, 296, NULL, NULL, 8, NULL, 0, 0),
(121, 9, 299, NULL, NULL, 9, NULL, 0, 0),
(122, 9, 295, NULL, NULL, 10, NULL, 0, 0),
(123, 9, 300, NULL, NULL, 11, NULL, 0, 0),
(124, 2, 162, NULL, NULL, 6, NULL, 0, 0),
(125, 2, 176, NULL, NULL, 7, NULL, 0, 0);

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
('amlq994tabrahi43lg57e9pu6v', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343836373733362e3830393633363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2273336d3561756e7169637138706e6f3133616330656761646836223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635393436373b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836393034353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343837313330313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343837313333373b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836383936333b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836393033333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226230323935383666633535316663386237366361663766643531353133393435223b733a33323a223136626237396330663064646462666233393864643038646334633031306531223b7d733a343a2268617368223b733a36353a2231366262373963306630646464626662333938646430386463346330313065312d6230323935383666633535316663386237366361663766643531353133393435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323731323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33303a7b733a33323a226238383833386462376433363366316532303333373232373366643266643938223b733a33323a223161363961623662613634363361343462383536353563613236633962383339223b733a33323a223962386563303634313137613538383636653739633433323134373961643136223b733a33323a226533333732363961643834396236313466333961666537363439353734386637223b733a33323a226434313263316630353630376462306139643164653739663933623062613830223b733a33323a223237653331396233363637326464353363373266313264646561616363643966223b733a33323a223538666365336566626539383165383137363334373732643835376363626637223b733a33323a223064613830633633363930326131393637646239663462393432643336613666223b733a33323a223032333661326662613332656238313936356561336637646531643832316135223b733a33323a223865363730643032303033396532313638663439643130326565373465393563223b733a33323a223331393865356563333865623765346535316362316530323639633863616666223b733a33323a223634633435323935633737396632306130386137353962653566656334663335223b733a33323a223462626438323338626536383835383634646265636439633630353732646234223b733a33323a223035366462306165393631623763613734353835383337643966643939353162223b733a33323a226162636333613830303436373438383764393439356261636564323033363134223b733a33323a226636393932326262323164323233383234303062336437613566666266383163223b733a33323a226161326430386262383034653431353162346638636237613835326661616531223b733a33323a226230653863393138653964363463393066623931653262643736643036343237223b733a33323a226464373965356335333434333037633666616163656531393562666536343964223b733a33323a223438613939653063383436366464316439363632313362306133616432626235223b733a33323a226361626431363663636561636431643931633363353937366233656134376339223b733a33323a223035306261666237343339663761663232333763363434663534363239343735223b733a33323a226261643039643133393138616637663565313536366539626537393462613337223b733a33323a223436663366663432613361613035386135623331663230363733613236303037223b733a33323a226461363731323562633265303337653135303464363631383939616432386437223b733a33323a223863323666383063663634613735383737303339336465613931643061616261223b733a33323a223565386365323736393235633938303965376562616664363862353338313936223b733a33323a223435383632393061633730323865323537396432303336353164613966383138223b733a33323a223737376539613033326161396636353238343636666131363632623334633332223b733a33323a223533313934626663646434623537313237613234396335396139613666653464223b733a33323a223538643762303436626435326333663061663238636534396637333232356435223b733a33323a226465636331366136376434336535633935376665366462626530663332636565223b733a33323a226533303339336436653731393766353661323239303830393635613136666635223b733a33323a226431636461393164653138316335333938386163626631353763393332313335223b733a33323a223833383830336437636438333730353738393837666137616535663833303062223b733a33323a226366626666313637653333656162383564623538366634623632636231366133223b733a33323a223935656634303539353139313538396666386634626336633639666665366663223b733a33323a223263363038313364306435303966636233646563333239643863346534393939223b733a33323a223162653866326466343564323665666465333266336133376639663932386338223b733a33323a223935343039346635663331306431633436343166656130646235653034383739223b733a33323a223563346536343933346662636364373930393630366261333132323136343936223b733a33323a223930663534656631623466653230643535376363373461663138653939373364223b733a33323a226631613533323762663564613066613235653530636237663539353139623166223b733a33323a223730653032363934336639353733336130363030373661633735643462383735223b733a33323a223962646232313863346162643932326166333135326564303562306638363039223b733a33323a226636666164353066653736356132636433633338663362333236623066653237223b733a33323a223832363932383662623466626534303761323262303431646137636235313966223b733a33323a226131353565396666343530303164383230623832663533366435313663333737223b733a33323a223861303962396666353131343136363162383035376636393166643738656430223b733a33323a223461343763633831666535633664383139623563383362373261346538326366223b733a33323a223032373762376430616231663337326661393433316639633766376535333736223b733a33323a226461316635343565363736343631323935653430346133616362366332323764223b733a33323a226265666662616536313961353961343839613662626633623063366435323831223b733a33323a223039386166373436633864643030663539633761633138663734313732326662223b733a33323a226536393633383838663432663362616238393764656263383833303937316630223b733a33323a226135653765306363323461646162353337666561326166313635666430643665223b733a33323a223462633736353538613638656635366338396562613230623261373935376661223b733a33323a223035633736303763333733343133636661313866393130336166623130313266223b733a33323a223737643532323234303131313834366663363833626139356639373736623866223b733a33323a226336626264663165646466366434616366336161393966333836343738343633223b7d733a343a2268617368223b733a36353a2263366262646631656464663664346163663361613939663338363437383436332d3737643532323234303131313834366663363833626139356639373736623866223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a353033323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35393a7b733a33323a226564646135636461633931626136663762363766363162386333653038393664223b733a33323a226336303339316534663461633766656265356133396465666366643233653733223b733a33323a226132303336333136386135613435306134333135653538363036383334346635223b733a33323a223730626361323337616337336236663762646236356138623432306338343033223b733a33323a223165333638633934346337616461386536306539323333613339613638616638223b733a33323a223430323031396237643832616630613439393862376335366635646664306134223b733a33323a226536303463623736643937326533336431306536346439633865383636393731223b733a33323a226465393535646465346138343564643738343138323035633962383132316131223b733a33323a223538376639623339396136363962636436353733363364343034613137333930223b733a33323a223266666132353962616263313663346633363236393433343838386139663137223b733a33323a223364663766623432353938636233643735633964396533386364393163343665223b733a33323a226639623062653637633532353861623663363932643937616165623036616132223b733a33323a226430393035383739646263366333366163656539363037663235333461613431223b733a33323a223530313765613732393038336237373661653739663066653564343339663235223b733a33323a226632376138363264356665636432353938333538393265633163373263653332223b733a33323a223764343532333262666434373039633032333866646662336437616136653839223b733a33323a223139353835656132343937323565353962643761373239616465356631363464223b733a33323a223732626665653465346466336361313861323564333832336165623963623938223b733a33323a226265326662303732386530373036666334373362306437363730333830346364223b733a33323a226231373134303535663639656533333164633438646633353666303031313265223b733a33323a223763623233356562636333366432326361653164636534313065303639376130223b733a33323a226130386564353537363036633633353932373630326532616161326135316335223b733a33323a223765653066303536323235363765306234616536363464366238336466636566223b733a33323a226339333733366162363636653935393334616263626661643335373663316133223b733a33323a226230653433666662633165633064373738326432353435376135633966666434223b733a33323a226535656262333432653265366335653139366332366435313034336563393061223b733a33323a223565643032313434613034343839336439313364346139383837363466633735223b733a33323a223764306339333363303335336364613733383866373531303036353633333763223b733a33323a223132613031363234373234636266663730303664316265326632613037643934223b733a33323a226232613834393265373136333339323431353139636139613935643562333262223b733a33323a223436323331656631303833633166373462333365396236386566623863303132223b733a33323a226633343237613038313035373962356465636636373132626239393530646537223b733a33323a223763376335656330336439613732643664636466306465646337346137303937223b733a33323a223139326263396562333237346163663964643033393432656337313835396137223b733a33323a226166313766633435316431353130396231336137656135333531616333663935223b733a33323a223466656235373437313865386237323437373733626338373263306132343230223b733a33323a223635356361356164393064656132633364363666666635393830343834373835223b733a33323a223261386631613137316433396332313165663831616132316165663530373561223b733a33323a223536353330353737333232666235363539616361363966323962383736333733223b733a33323a223238366332316338646338326630343337363231646466333364356134373838223b733a33323a226233343235353762363262313962303566623361376335316435396536313765223b733a33323a223262336261363035653665623730616365643336313734643961373436323266223b733a33323a226237613332666661323265303361356632666135613639616436653837666239223b733a33323a223237393439363332353738303765316162393264386337653034396330643431223b733a33323a223530393861646364333837376534663464336236616235366565323766666435223b733a33323a223032623637343035663433646661633361373737613739396539623963653064223b733a33323a223463363566653865353964396566396332333535623534376365376639373430223b733a33323a226337616661366563373062346635386563376465396466636364373431323066223b733a33323a223739383239356163333134343530643132333763636139376264636335303133223b733a33323a223664643263306635303365646364626639323935643931323537616235666330223b733a33323a226433633965353333616338666638396264643761633535633436313665383937223b733a33323a226633363131336632323437643732306239623234613464666163613661646639223b733a33323a223230376633303561393665396339356235663965366433313934303133353638223b733a33323a223162316664643635386439653338643065613832313564366661643531376666223b733a33323a223835633464326439613131626438613265353331373230356466383962366635223b733a33323a226236343933656138316431373237636139613436306630616565346666663230223b733a33323a223161343662393433313063323266613332326466363432353762643530383861223b733a33323a223936613536373233336239623338633562306133653466666339623132373164223b733a33323a223236333237613330663061393436643464326533626438323563326333663364223b733a33323a226637383834383930666465353538366639613561633138353835303732356264223b733a33323a223137383266663431333964323438363966333339353061323433616461383463223b733a33323a223862303462646663653466353033323364333930623361363738316264303265223b733a33323a223939316334343061393930633463356565313066373237643766323763366334223b733a33323a223632396336386133383265666231356565313563313765363230666365306165223b733a33323a226366303835376465316134326432386237386461353538336464396431656363223b733a33323a223965396331333964613636386634323366616437363038636165663736303665223b733a33323a226162656230363462373264656666323066356563383038653066323166373735223b733a33323a223461313335313034653030326666633431306461623838343335313638346264223b733a33323a226231313438666233636261333630353134323535623832643238393938366263223b733a33323a226230353032616165366466373638356466663234653266323333663630636631223b733a33323a226233373664393764613234353061616165333264636465656365313534323464223b733a33323a223763666233386332343138343566323534313930313036306636666133666161223b733a33323a223666313763666364353265363234626437353731626561316363396333326661223b733a33323a223337653035343230396636393138383563326666633236303164636333326630223b733a33323a223939373161623231393261333532343763653065616336646638306430396161223b733a33323a223261383362313231393139366163653463646261383535346562653332653765223b733a33323a226264376437383330356462653864636438306235613463636562663535373766223b733a33323a223938353531396562316634323462323130613539363133636132396430383562223b733a33323a223566393464323836336431663733306165656331313634383063323565626334223b733a33323a226238383635613230333039613539643233383430623261636138633462323736223b733a33323a223938636233383830356432613834653562393636626135336263383138366331223b733a33323a223935643233303864363734303435636633346630386161626430326337353231223b733a33323a223236383138343063316463346539366337346633363430333136323866333535223b733a33323a226663663531623332636331356661633161316661613831343366656364653235223b733a33323a223838623332653433616361366632613031616133353065336364393332323839223b733a33323a226232613466613265383533626637376238646164316439313032323664306233223b733a33323a226564306638613362346237666335386134333061313731653566333530303736223b733a33323a223065363136343063313631643866346239616131663832333831363563646262223b733a33323a223035623965633134343031366232333039323933313237323630666663636566223b733a33323a226430356363363362656635356435663937623861393038393436373961613035223b733a33323a226536393237366230336231626336383562386233356539386139663765363632223b733a33323a226531623632613732303764376564313565626362656462646332346333303965223b733a33323a226536613166626333306266363837326561623934613430343965313138303365223b733a33323a226237303737323436323964326137336162353536326139333265356638653032223b733a33323a223530336533393562323836653563306139633436643535363963386466373565223b733a33323a226330313063346432653537616461383835323431306238336233333530343332223b733a33323a223532373263326162633731663035623234643231643236646330653763616636223b733a33323a226130343163633666333464383837373666663865613561386236306230636635223b733a33323a226465323163633431333039333138613237656539306435323834653265363965223b733a33323a223731643732303133356130623934633662363936646563656163333865326137223b733a33323a226537313434383033613461313536663230646532383561346131306231343039223b733a33323a223236333461396562623738323036306538316465363234653862636164626465223b733a33323a226536356162646631386162343133626339346431306235353135373666623631223b733a33323a223432656661333664336230366565656365306334613430373337616561613930223b733a33323a223232383231313730373564303462323533323762393266303037373636653263223b733a33323a226261313933383132323061336462313338383561353639333839616236363636223b733a33323a223430303964393363316562613262623835306130386438636463363261666434223b733a33323a223031373839356432303166633632623535616162386138333735303534376465223b733a33323a223866303362666535393765613163626536313339306130666432393763333933223b733a33323a223733663531376262623466613138383364623732633037343332326631393132223b733a33323a226230326362326164363333666562376638373764393739343530623338613330223b733a33323a223333343565363230323330346235376136376566313634366663346634643736223b733a33323a223064663832313966376232363566366461656135313866323830356134316338223b733a33323a223765646162623035383461613164353466386365386463636164363561343033223b733a33323a223636316539653561663735373536623630626233333234346435653565666461223b733a33323a223761343063643033663235613139326230663237396565396161363832363133223b733a33323a223431383631633138666531356230333765376239386262663430316365613364223b733a33323a223461313530616630633038363466356133306139616634313763346536316232223b7d733a343a2268617368223b733a36353a2234613135306166306330383634663561333061396166343137633465363162322d3431383631633138666531356230333765376239386262663430316365613364223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31333237333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3136323a7b733a33323a226564353637363966356136353061356536393633646436306339636434323736223b733a33323a226632356562346234393335666261613863386263333733326162333165316436223b733a33323a223964313039633532643562626132346563333765373534353532323437343336223b733a33323a226466363263303336653265303239333030343833363235386638383361623035223b733a33323a223334633632383438386536613066353131353638366437646666333438323464223b733a33323a226132356133323266383963373466643938356465636366636239333061646231223b733a33323a226262663539313531396663366333636564363534663461363761343866383733223b733a33323a223233636237353531643463623136616665393639383066396563646636666462223b733a33323a226537396134363738356138363263336566663136623761353237333936373563223b733a33323a223965613961626636306532363661376163633466666434376366373265303736223b733a33323a223233396566316564623262313763393064666337383839633361663962353030223b733a33323a223039306566663630343561353666613131663530333335383037336462636635223b733a33323a226566616666613434353566323530306663623662303161343630326363346461223b733a33323a226335316234663634623530383732646638666461376564316563313737646434223b733a33323a223534316666303462306537396663346364666637303230386166393366313333223b733a33323a223361343230343865383231356137333563313137343334333338323934343339223b733a33323a223035303330663435663165623131623239343539313134346431613963313066223b733a33323a223563636464386137383032393030313138313638646237346233613333326130223b733a33323a226161366363646535333635306333303539353235666432303365643163666361223b733a33323a223937616232336334386538356530333333366533646436306464383036316562223b733a33323a223361303834613138336135656461376134653235346338643162616138363165223b733a33323a223138646532376665363934383032353965633338616666373866396566633665223b733a33323a226135343439326161353030366538366637653533313230376663363937303862223b733a33323a223131613361653132396262383137333334666331313234666166333966653734223b733a33323a226530666332393530383539393537306537636435623036653537626534663166223b733a33323a226632326435346161366439616533363031346637343330313535386136303239223b733a33323a223361396264343132386437656230383635333430396563373234663838303538223b733a33323a223038323863393863663038366339323664646666656361316437316431663130223b733a33323a223131663035336166336238396365633138373031383662363262326332316531223b733a33323a223362613033373731333866326332636635353239653230346537376536316330223b733a33323a223235383536363434386466313832393365303036633863396634646637646234223b733a33323a223139643162643138623438373161633936393563326235383339613037356265223b733a33323a226431656230653465393930383133363162663535323933666233383333343665223b733a33323a223962356162623434316662613232323566613366656134663263663031663837223b733a33323a226638393364353439653432376130616630303565333138313534623134396361223b733a33323a223464643231343137653631623162666464363965386264613838396633323462223b733a33323a223831636464363266303631633964613236373232386131663166343863303464223b733a33323a226662366632626338333535623533323335613437306238383239393163646633223b733a33323a223239623964316563356234313332663566613461663261633135386365653165223b733a33323a223739386362383633333037656439336337653065313761386138323236623538223b733a33323a223835396438366665363261343132356562656238343332343864383635316665223b733a33323a226561333431316333366163366535646336376132613261383237383036303336223b733a33323a226235666130376334613936656164316238383262383461393138386535653865223b733a33323a226462373432323031646638636235663163636336643464343334646465643338223b733a33323a226132663738323766353639383039373330623937343864306539343438366331223b733a33323a226238313637323232356564396464663136386531333935393037396466336239223b733a33323a226165303261646566383531363135363062666665316664363761633831333234223b733a33323a223437363863313262326332343134353564333731376530643939323066373538223b733a33323a223338303735373732363261303362663264313332356137613439323834613839223b733a33323a223432383163393233356430353531386539376231666335666262656266333230223b733a33323a223764383033666431306365633438306631663831343365623931663434623032223b733a33323a223737626664336561323631646365386236343439396562373335313534613730223b733a33323a223132383632353535613935386663356333613361383162626633376232336261223b733a33323a223437346237363566363432323038353662323536343137343961393539623034223b733a33323a223038616138346131623564396262343864383463346536366536633031333432223b733a33323a226538366564646566613064663337653035396534363931366632636331346361223b733a33323a223039646166333566313834626131393332616236366363636331383566313037223b733a33323a223232326563656531366362326330386133366266303632616634346434636663223b733a33323a223261663464623735313637346231346235643231333836633963356666336137223b733a33323a223232613465393765363334643435326137366561386332633033313263383363223b733a33323a223161633338386662313663643631356235613561633034383434326439653063223b733a33323a226533343562373336336166373733356634613434383563623563326235626662223b733a33323a223364656532666333656332396261333232376265333365363062363337666461223b733a33323a223734396236353635323238363436373564656431626466616464326238333834223b733a33323a226165396430643631646539356531613033303563363763646337353433623563223b733a33323a223835353938373635303733316330643834303361343732626337633530303034223b733a33323a226635353334396135356665616562376366383330656663666633653231653139223b733a33323a223330313438303531383738333830376662393462313436623666633039396639223b733a33323a223034626261386664666564666165393966393364373162363936346431376132223b733a33323a223466366137636638396133663432636165653561383935353063633662373566223b733a33323a226563626137623533353033323638386465313134393366626537313836313265223b733a33323a223835303736643334643165346565316564613836616161626232343862613762223b733a33323a226363333534363539333338653862393139303532623633316164623237616261223b733a33323a226238623831303166346132383238646466663336633037393139646433366334223b733a33323a223535633334343336663339343964623038323265313661386662333234626139223b733a33323a223731363039386465653033323565653731663035656266653533613261353736223b733a33323a226232383162383862633665613236643834633961346162343062343262313538223b733a33323a226332306432643463656439613531656335303633386436373834313364623430223b733a33323a223661343934653435396262366530626336373432373931396266646338666435223b733a33323a223135366636643330656664616430346135373239343465356638343930393831223b733a33323a223539613763333837343066636535333562303165343262333236663663373632223b733a33323a226332393038393039313066306332653262633934343938396436656664336265223b733a33323a226436393038313563613165643165643032643631633033303631656630636136223b733a33323a223032346464383333323735653333343537363935373536626434313835336239223b733a33323a223038316535366237313631613338613562663161343832663238626238613064223b733a33323a223465656632313534613363346534363134613232393639336465616661386431223b733a33323a226663646237343161343264343637326336623931343532643232333439646266223b733a33323a223963643765636431343036623037333261386437376464323138393463316565223b733a33323a223637616466323737656634366530663738633861353539653737636130386365223b733a33323a223266313439323733636337353534366432326130356162333564306665396336223b733a33323a223032653334643538626534626430316465373766356539363565616335303064223b733a33323a223531663861303235666634616234663239393361653034393233303730663665223b733a33323a223463366433376163363863643231636431646439373733366131633336333364223b733a33323a223965363634336665343465353462623566636637393233656239636131653830223b733a33323a226363326432643364326164346135633435386661613762666563353836363965223b733a33323a223832656262363636396330303134366364353238653266346537323166373430223b733a33323a226463636131393232613434316339663033343939306266306639626131363564223b733a33323a223962316663646530613163366230326437373065656339656131346563393463223b733a33323a223239623838656239643965666638666432346535336432306635636538613630223b733a33323a223135643339336330386362656231646164643036383037316332613639363735223b733a33323a223064333862323336396561323265646662353538323364646235346233306164223b733a33323a223338326165653031383238316632323534313632326539613630353266613062223b733a33323a223331333534623835326339333632633636353434656639333662383837373166223b733a33323a223932306664386435623864363735353737326361313063623539383965316531223b733a33323a226466636332393131363463663736386136666230396434653564343537663664223b733a33323a226439323366363235353733383062313738323930343038316532633161303639223b733a33323a223762373637616530353734373962623534623466386239313265666138373961223b733a33323a223362313032366262316636313333313330623261396336343734666136636337223b733a33323a226131656236383331333832353431373435626632306432383464623737353539223b733a33323a226336613261333535613234383335333566646431653662333163316364663534223b733a33323a226130363330353632373239376538343432396532383139383133383464623837223b733a33323a223834623836666138356463306536303635363965613261313665376566623135223b733a33323a223430363434346432636334653630663063623764653831613136373663373530223b733a33323a223137386130626438613735383338363538346562353133663632323337376264223b733a33323a226566313536626161376234383663306665303333626638333361656264653236223b733a33323a223161336334623537333061643531373063336539393266383033633034313334223b733a33323a226439363135366665623232363530366261363036383839396661353633316665223b733a33323a223030363131373666353563373235316632326563616233356533376631303965223b733a33323a223362626535383263393339393233326164623839333238643966653531323938223b733a33323a226139333631633030396439396664633934303734353734663034316530646332223b733a33323a223962303735363438316365353139656339306436353664343930376433313866223b733a33323a223238393535333565396266306466386438366130353764653333656237646363223b733a33323a226463313635656266646332663864366432373663316464356461616166653764223b733a33323a223932353236336161386135326634366231363839666662393432373562343138223b733a33323a226232613834623636396665633932373366346163663531336266643530373262223b733a33323a226665646164353839613261373335316437376530633633326338663861663161223b733a33323a226562656539363965363063366532313430386265346234396562303939393038223b733a33323a226533316565393865353930643430613732333039333166613931616463633239223b733a33323a223264646233633461336262313861373161393164353634313135346665623033223b733a33323a223965633963303839636364323264353533643339303438633335663633366363223b733a33323a223530313232653931343639353262656263343338393866333363623165653362223b733a33323a226363663032663437303232383030326665613366336434366631396637343836223b733a33323a223136386263633435326664313839363264623965663232346634623664623230223b733a33323a223533373739386461323965306233343436386532343333393231623834383463223b733a33323a223963316333393531393236373261316139393133323665613734343962363663223b733a33323a223431363437656161333265663436646336326663353763383237386637333661223b733a33323a226535393231313565393338303439663232643961623565333739303130303139223b733a33323a223736383066353231346461383835373732623439313230663535616262376362223b733a33323a223866323738333838393663373730366562653635646562383932306562353536223b733a33323a223036336666613939303336393637633461363066323334626338646434356662223b733a33323a223137316633303664646135393739643539326637376637643631396663646136223b733a33323a223334383531663862613362373638346365646432376363643338313666396238223b733a33323a223661663839363565316365366130376433373835343631393565366364633037223b733a33323a223131323465343131663633336332333865303931363263356336336163633235223b733a33323a226261653635386238653566613238386364653434666462393732306464396234223b733a33323a223739373962343166393538613961303330623165646334373463306461663565223b733a33323a223630353664393562666130646633633263386137313661376539333432643037223b733a33323a223934613866366633336663616266383032626164306638396439636562323634223b733a33323a223739653730356364386262666264616161313861393539396134326135343633223b733a33323a226535306535353137363533323737633535313962616439316638636332636666223b733a33323a223438643335386431623764376236343831383661613164336562663663643434223b733a33323a223134646435373935643433313333303337303739616237316365653037346466223b733a33323a223330623432353866306537616364646164346130663534386130356536346333223b733a33323a223166613363396365376130616534616166646431613833376234343961396561223b733a33323a223066323537663936616330313430633933653635363139353062636633363037223b733a33323a223063326334616638376661636666386166636632323730353834626561353964223b733a33323a226438393262323537313131363664663861323731333365333935623737633264223b733a33323a226333383766363238343763303465343832333631336230316438653439656534223b733a33323a223635303766336231396137323364633463386332303137366162376166346532223b733a33323a226535356636383930333462393236373935393937633462626330633636363636223b733a33323a226662653534633630643266386538323931636664636663323232366661336632223b733a33323a226631613961316336313633313437353764383038333936356366306636303033223b733a33323a223833303263316232646438383866396337643663636138646466653238653239223b733a33323a226663303962623033343035626163633235376133623735646161626230393432223b733a33323a223635663730646666343066616463363838613634326134363432323962376161223b733a33323a223535663462386536376666663536636662623563663664333936366337646139223b733a33323a226336373633363830663337363437373236363132393731366139326432396462223b733a33323a223535336163323161376231336133626437383837663866396230303338306637223b733a33323a223639386638396633373339373862613737353362643137653862636463386435223b733a33323a223730623333313739326536663361363634306266316636356661303066623662223b733a33323a226535366562303137356635633662303438336138396463303236346661623035223b733a33323a223833346165353563663464623134353764386166643631393061333431656439223b733a33323a223262316162643137663532333461643631626538336166383237643738656131223b733a33323a223038316537356439613762313662626133306664626562366561383232363438223b733a33323a226235366564306435303062633237306461343530383932643430623230353839223b733a33323a226138636564353064313830616636353738646266383534623266633833343963223b733a33323a223333333130323138646430316436623762636637373562626530336134376532223b733a33323a226138373538383638383430373265303439646635623764343666383534646230223b733a33323a223039303130636365343363303365663764626137343164363361373139376133223b733a33323a223832353038663137363165386364613636393839363538363762366566353939223b733a33323a226433303466346662346664613862353234646132366634313730373864626530223b733a33323a223832666237646566313233346161636631336633353462663065326565316135223b733a33323a223533396137643634333233303362336163363535396235633363306636396663223b733a33323a223461656132333964643930373235343961653737656535383066616330613332223b733a33323a226135623533303034303334363432643738333530653135306263323861653363223b733a33323a223536343637336263303266633433653335326332663766353635623239326161223b733a33323a226634663237323531343336313330363133383963303637613234663037656231223b733a33323a226236393038323338633432313832376438323435326139636264656265333239223b733a33323a223363323365623132313034393331326465303231363134336663326532376639223b733a33323a226639393938386537663865333262306661646333313530613036643936373337223b733a33323a223631326435313838613037643261366365653664373235326265366230386266223b733a33323a223537373637663162626436383562623030633434363664313765313137663131223b733a33323a223365346635616236343739363563313330633339336532633961343861306132223b733a33323a226638646265666230653435663365383361643739613231353762333539646136223b733a33323a223135373332343739396166376138373433623866316435646133626164353134223b733a33323a223939636265633730653430366137303062323961373535346664636135376135223b733a33323a226333393363623032326263303161323664653065323061643237306364316261223b733a33323a223039353664363264386163383432316134333963336234366135653731346264223b733a33323a223538373163653466626166666630366238353336376634613435366562386531223b733a33323a223463636436643436393061333463666436333464326262343032656134383233223b733a33323a223863633166356661643864626661363465643630613732383135633064356664223b733a33323a226237633638393666376164353934323236396531393564336665656664333063223b733a33323a226534656333383639376230653437373466666361343231616566636439303062223b733a33323a223863643261613430633039336362393564363062633264346164656539323761223b733a33323a223834633539363039326164323136666362346138363966623562316139623535223b733a33323a223731316131666462616432646130336462653462666564323832633861623366223b733a33323a223064303962346564303865303864663039653933396537306462623461303630223b733a33323a223635326263643539373437346666366464663338306435396136386134656431223b733a33323a223932663037396333323737376538626537303239313763666335306161643534223b733a33323a223866333031323537396233396165323661623165313536353465666163636336223b733a33323a226239323031383864343165633761613632343034666233646438616638303036223b733a33323a223866636164336362303465306138623266613637333933343133346436643661223b733a33323a223235393835383335313935333830386231666232323266396333353865306465223b733a33323a226338646163326635363037346335626433343264656433643933363837343937223b733a33323a226665623731646436633230396663396131343833663239326430626265663333223b733a33323a223734316231633439383639636265336561316435643838626531333165356435223b733a33323a226561376637386633396338626239663631346666333062626639346239383130223b733a33323a223065366431633662343861343632643762343366353534336132653333616331223b733a33323a223433643037616138393135643562653365393762633661326639666336376136223b733a33323a226664356262666464343137616238616662623332343065386163383561353636223b733a33323a223136326138346465306435306332323334396462376361393531373533393331223b733a33323a223361653531346466623838623861313463633463333530663362643032316133223b733a33323a223762386336363866613435386537346166336136393864373766303933396335223b733a33323a223331663439616563383430326638616232356133663361313834313039343932223b733a33323a226362396334306364326531653232636637663430373331666465343964633033223b733a33323a223135353433303536623536393539623964373265396363653333626636626232223b733a33323a223133656532646265343865613935613239373165303034626135353037613133223b733a33323a223533643561363632626330356263653561636162396331303062323731616534223b733a33323a223761636432623136653037333735613734333536313039613062623165663536223b733a33323a223538376465353435353734336433363232656138356436356336353231306262223b733a33323a226432396563393231376666626366633235386331326339643830653239643963223b733a33323a226233646335633334316431653033653538313037623761326165313263313431223b733a33323a223761623639636438623865643537616564343831333933326432373561356539223b733a33323a223664323463386663303162383464643066313964313933363233363133333633223b733a33323a226336333631626562333031346137393933346566626334373061346138396235223b733a33323a223961626630656230346538303361323338666330333936643433663938396235223b733a33323a223631383032663938373065323137316631353937666463316562313432376162223b733a33323a226133626234346234366462353839633737663637303639643431353061386230223b733a33323a226266346334643438653235386262663635326361313734373233663334633834223b733a33323a223931383833346238323661393334333865636230356236353465383734663661223b733a33323a223939656531336637646430653435613738383763646563623663383733363933223b733a33323a226266383934393331633663666438353239313836386365616335656137373834223b733a33323a223661323535306261333430376163623234383265376364393164386632376338223b733a33323a223635643562633736366131363736353039353161613233396430303462666232223b733a33323a223762333966643037383964643238356330653666636561386433386664303161223b733a33323a223163323564313732393337353062323265656630363538653333333730646266223b733a33323a223764393664393462316234653062353234313963633837616135323538626631223b733a33323a223532616162663834383033653530653435373138643836393338623034666230223b733a33323a226632643663346365353663313931366639356334383962386534613762383564223b733a33323a223032343632323663316130663034663733343536306566343661376137396238223b733a33323a223866383461613739346634376264393234363836663035666139373734643734223b733a33323a223166353731636437383066306538666463313730636561643565346564613566223b733a33323a223231373935373762323864366334353839623164613165383434393634306263223b733a33323a226436663138386131353565643432363164323361386437613136663964373532223b733a33323a223634353166303739383965646164326236356335316233313564336136323539223b733a33323a223663366238646330373961653437623233333439363534383734386631613961223b733a33323a223133663535373263383635656234363639616561366638663733353132393531223b733a33323a223030336163383164393765636566363064333830393032313635306663333165223b733a33323a223063363934373930386132396639306138623665643939653536643361313632223b733a33323a223764393265376366376635383131336536303130326239396464343161636233223b733a33323a223466656161323938613334656131393563626533336534373031343865336136223b733a33323a226131363837333338613531353931373165383431323664373333373933663230223b733a33323a226235336662343466343066643730633135303039346463626336366239653933223b733a33323a223865343634643036643633626462303731666130363534326239356665343735223b733a33323a226263356261633531656537313864616130613465646239623566373031346662223b733a33323a223965396138643865303833343038316465653936313730666537393536366333223b733a33323a223833376335396139303864303561313966363339333830323261333836656565223b733a33323a226238653437623936336162303530646439646230376634373432386163633431223b733a33323a226139366130303162343064313232323362623133383563383563333964336538223b733a33323a223131363237333730316663396134333532383465636232376162316634343938223b733a33323a223133336130616331666436393230373030313262336361363732633663303031223b733a33323a223438326165643661396166666232353063636366346430383837633939376531223b733a33323a226534616430626637383838623834353262633666373431666661663830323238223b733a33323a223430366564323333666131633634313831636335633730616665633466613662223b733a33323a223837613739623039313435386461636564353235653563313163343132666435223b733a33323a226131373639663930656266383262393134656366366536656436623566373262223b733a33323a226334303761323066373263393266373237656136633661646131613332343134223b733a33323a223631663437643636303763363139363363313162306664356133333766633065223b733a33323a226538663338653463363831363436396264306334306430313535373936383430223b733a33323a226335313165653663623738333333356236333836643035633432393565613533223b733a33323a223365656234323432386532383465303937366438343239613733313032653466223b733a33323a226264636261666639643634303837656231363239356136363130343239626532223b733a33323a223635613136383765343138633036653832393938653164383765326466646334223b733a33323a223535353733333737343961303764343063323962623837356534633565623930223b733a33323a223036303831646133306366343330306462613464396230383130633161646364223b733a33323a223466356331633833653439316330633830353162303265313766623932323531223b733a33323a226365633931303761613739306361636435383865316530653434663035393263223b733a33323a226562396363646466323531643234356565643533653238636133386363343764223b733a33323a226631346361316434323736663431386432656138626436343138616463316665223b733a33323a223663663736663664383036336430386639353136616534393735373966623762223b733a33323a223066383462633937363462393836343665336466633762656163663861313962223b733a33323a226466366235363463393932636630356365366139646365396365396531316138223b733a33323a223234363630646630353130323865336539633334633864613966366131613239223b733a33323a223331643164636132383538356137613066313531333534333935666536353539223b733a33323a226235626530323635393961396162636436666165626165343535356262366666223b733a33323a226434303238623339346130313437353265386163303539373163336530326666223b733a33323a223733383530656466346563616434626437313430616434643130363334373962223b733a33323a226532663635666161626533336631613336636532626232623933623164396336223b733a33323a226630323934346537393035643335666638643330376532626166306336376531223b733a33323a223835366465353938626637343537346235343138343661323633383331383239223b733a33323a226636313032666230363834353861363831666663356664643433653366373938223b733a33323a226666343533626236383833376465323830333133316530333366663538666364223b733a33323a223836643762623130613965396664396530343161393636343265336234646264223b733a33323a223764376638306330363666643331626435383666653534313837653134626131223b733a33323a223732393939323262323330653362326166386237316161393662326266663361223b733a33323a223837663732616161303037333462643064653266626166323365323738343263223b733a33323a223763313634376539313136376335366431666565613665313636396363373062223b733a33323a223635393431356335393966366138376633623439626430636631326138393732223b733a33323a223065326363613439373339343563333266306332613262613530363239366264223b733a33323a223134306136393362313162616462353863636138383338353533663933373632223b733a33323a223736663161363735316536343137303563646331356639373965303363393564223b733a33323a226162323430633739663432303366363937643531366163336332623536613663223b733a33323a226435333361646634353661313336383265386131306130313364383534346236223b733a33323a223437623965643562363736356661343532636334306132343139383062363337223b733a33323a223161643234303963396166363632306465636638336561376532326538636330223b733a33323a223966643035373163323762653665393235643363646138646430613639323338223b733a33323a226465656462653238636237636531393330383136363565323665356239363038223b733a33323a226236383464376631313230623636386236323461383934396134626632646662223b733a33323a223063376430316336376163363335363263336161383838666339343162373032223b733a33323a223165656234353966383639626465616332356634616234396539393731373439223b733a33323a223163346232353438653834396136383934656137313764393736356334343164223b733a33323a223934613162626435613637396462326636666137666133323761363639396631223b733a33323a226538393363396334333630303931333435386264356634333864633761613664223b733a33323a223938363234323335626162303133653663343865643362336536396332613565223b7d733a343a2268617368223b733a36353a2239383632343233356261623031336536633438656433623365363963326135652d6538393363396334333630303931333435386264356634333864633761613664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223037646166396163326163353033343864646266343932626235326231393635223b733a33323a226261396438383231613137393638353763313231666463633962336332343536223b733a33323a226561633937623833343437306134633437393164613030633163373438363530223b733a33323a223436383731656365623263363963306138396263636633303139656231653465223b7d733a343a2268617368223b733a36353a2234363837316563656232633639633061383962636366333031396562316534652d6561633937623833343437306134633437393164613030633163373438363530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226136636262383363626434633862393931353161386362383063663138616639223b733a33323a223538616338333864616432323739343833353234396539623937366234656634223b7d733a343a2268617368223b733a36353a2235386163383338646164323237393438333532343965396239373662346566342d6136636262383363626434633862393931353161386362383063663138616639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604867737);

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
(5, 2, 1, NULL, 'literal', '', 'Langue 1', NULL, 1),
(6, 2, 294, NULL, 'literal', '', 'Trés bien', NULL, 1),
(7, 2, 293, NULL, 'literal', '', 'bien', NULL, 1),
(8, 2, 298, NULL, 'literal', '', 'bien', NULL, 1),
(9, 2, 297, NULL, 'literal', '', 'bien', NULL, 1),
(10, 2, 292, NULL, 'literal', '', 'bien', NULL, 1),
(11, 2, 296, NULL, 'literal', '', 'bien', NULL, 1),
(12, 2, 299, NULL, 'literal', '', 'bien', NULL, 1),
(13, 2, 295, NULL, 'literal', '', 'bien', NULL, 1),
(14, 2, 300, NULL, 'literal', '', 'bien', NULL, 1),
(15, 3, 144, NULL, 'literal', '', 'Mourah', NULL, 1),
(16, 3, 139, NULL, 'literal', '', 'Amel', NULL, 1),
(17, 3, 123, NULL, 'literal', '', 'amel@gmail.com', NULL, 1),
(18, 3, 162, 2, 'resource', NULL, NULL, NULL, 1),
(19, 4, 1, NULL, 'literal', '', 'RéseauSociaux 1', NULL, 1),
(20, 4, 265, NULL, 'literal', '', 'non', NULL, 1),
(21, 4, 258, NULL, 'literal', '', 'oui', NULL, 1),
(22, 4, 261, NULL, 'literal', '', 'non', NULL, 1),
(23, 4, 260, NULL, 'literal', '', 'oui', NULL, 1),
(24, 4, 263, NULL, 'literal', '', 'oui', NULL, 1),
(25, 4, 267, NULL, 'literal', '', 'oui', NULL, 1),
(26, 4, 264, NULL, 'literal', '', 'non', NULL, 1),
(27, 4, 266, NULL, 'literal', '', 'non', NULL, 1),
(28, 4, 259, NULL, 'literal', '', 'non', NULL, 1),
(29, 4, 262, NULL, 'literal', '', 'non', NULL, 1),
(30, 3, 176, 4, 'resource', NULL, NULL, NULL, 1),
(31, 3, 1, NULL, 'literal', '', 'Etudiant 1 ', NULL, 1),
(32, 5, 10, NULL, 'literal', '', '12', NULL, 1),
(33, 5, 144, NULL, 'literal', '', 'Balit', NULL, 1),
(34, 5, 139, NULL, 'literal', '', 'Habib', NULL, 1),
(35, 5, 123, NULL, 'literal', '', 'habib@gmail.com', NULL, 1),
(36, 5, 1, NULL, 'literal', '', 'Etudiant 2', NULL, 1),
(37, 6, 10, NULL, 'literal', '', '13', NULL, 1),
(38, 6, 144, NULL, 'literal', '', 'Ifrene', NULL, 1),
(39, 6, 139, NULL, 'literal', '', 'tina', NULL, 1),
(40, 6, 123, NULL, 'literal', '', 'tina@gmail.com', NULL, 1),
(41, 6, 1, NULL, 'literal', '', 'Etudiant 3', NULL, 1),
(42, 7, 10, NULL, 'literal', '', '14', NULL, 1),
(43, 7, 144, NULL, 'literal', '', 'Ifrene', NULL, 1),
(44, 7, 139, NULL, 'literal', '', 'chafia', NULL, 1),
(45, 7, 123, NULL, 'literal', '', 'chafia@gmail.com', NULL, 1),
(46, 7, 1, NULL, 'literal', '', 'Etudiant 5', NULL, 1),
(47, 8, 10, NULL, 'literal', '', '15', NULL, 1),
(48, 8, 144, NULL, 'literal', '', 'Hamidi', NULL, 1),
(49, 8, 139, NULL, 'literal', '', 'Léna', NULL, 1),
(50, 8, 123, NULL, 'literal', '', 'lena@gmail.com', NULL, 1),
(51, 8, 1, NULL, 'literal', '', 'Etudiant 4 ', NULL, 1),
(57, 10, 10, NULL, 'literal', '', '17', NULL, 1),
(58, 10, 144, NULL, 'literal', '', 'Hamidi', NULL, 1),
(59, 10, 139, NULL, 'literal', '', 'lea', NULL, 1),
(60, 10, 123, NULL, 'literal', '', 'lea@gmail.com', NULL, 1),
(61, 10, 1, NULL, 'literal', '', 'Etudiant 6', NULL, 1),
(62, 11, 1, NULL, 'literal', '', 'Réseaux Sociaux 2', NULL, 1),
(63, 11, 265, NULL, 'literal', '', 'oui', NULL, 1),
(64, 11, 258, NULL, 'literal', '', 'oui', NULL, 1),
(65, 11, 261, NULL, 'literal', '', 'oui', NULL, 1),
(66, 11, 260, NULL, 'literal', '', 'oui', NULL, 1),
(67, 11, 263, NULL, 'literal', '', 'oui', NULL, 1),
(68, 11, 267, NULL, 'literal', '', 'non', NULL, 1),
(69, 11, 264, NULL, 'literal', '', 'non', NULL, 1),
(70, 11, 266, NULL, 'literal', '', 'non', NULL, 1),
(71, 11, 259, NULL, 'literal', '', 'non', NULL, 1),
(72, 11, 262, NULL, 'literal', '', 'oui', NULL, 1),
(73, 12, 1, NULL, 'literal', '', 'Réseaux Sociaux 3', NULL, 1),
(74, 12, 265, NULL, 'literal', '', 'non', NULL, 1),
(75, 12, 258, NULL, 'literal', '', 'non', NULL, 1),
(76, 12, 261, NULL, 'literal', '', 'oui', NULL, 1),
(77, 12, 260, NULL, 'literal', '', 'oui', NULL, 1),
(78, 12, 263, NULL, 'literal', '', 'oui', NULL, 1),
(79, 12, 267, NULL, 'literal', '', 'oui', NULL, 1),
(80, 12, 264, NULL, 'literal', '', 'non', NULL, 1),
(81, 12, 266, NULL, 'literal', '', 'non', NULL, 1),
(82, 12, 259, NULL, 'literal', '', 'oui', NULL, 1),
(83, 12, 262, NULL, 'literal', '', 'oui', NULL, 1),
(84, 13, 1, NULL, 'literal', '', 'Réseaux Sociaux 4', NULL, 1),
(85, 13, 265, NULL, 'literal', '', 'oui', NULL, 1),
(86, 13, 258, NULL, 'literal', '', 'oui', NULL, 1),
(87, 13, 261, NULL, 'literal', '', 'non', NULL, 1),
(88, 13, 260, NULL, 'literal', '', 'non', NULL, 1),
(89, 13, 263, NULL, 'literal', '', 'non', NULL, 1),
(90, 13, 267, NULL, 'literal', '', 'oui', NULL, 1),
(91, 13, 264, NULL, 'literal', '', 'oui', NULL, 1),
(92, 13, 266, NULL, 'literal', '', 'oui', NULL, 1),
(93, 13, 259, NULL, 'literal', '', 'oui', NULL, 1),
(94, 13, 262, NULL, 'literal', '', 'non', NULL, 1),
(95, 14, 1, NULL, 'literal', '', 'Réseaux Sociaux 5', NULL, 1),
(96, 14, 265, NULL, 'literal', '', 'oui', NULL, 1),
(97, 14, 258, NULL, 'literal', '', 'non', NULL, 1),
(98, 14, 261, NULL, 'literal', '', 'oui', NULL, 1),
(99, 14, 260, NULL, 'literal', '', 'oui', NULL, 1),
(100, 15, 1, NULL, 'literal', '', 'Réseaux Sociaux 6', NULL, 1),
(101, 15, 265, NULL, 'literal', '', 'oui', NULL, 1),
(102, 15, 258, NULL, 'literal', '', 'oui', NULL, 1),
(103, 15, 261, NULL, 'literal', '', 'oui', NULL, 1),
(104, 15, 260, NULL, 'literal', '', 'oui', NULL, 1),
(105, 15, 263, NULL, 'literal', '', 'oui', NULL, 1),
(106, 15, 267, NULL, 'literal', '', 'oui', NULL, 1),
(107, 15, 264, NULL, 'literal', '', 'oui', NULL, 1),
(108, 15, 266, NULL, 'literal', '', 'oui', NULL, 1),
(109, 15, 259, NULL, 'literal', '', 'oui', NULL, 1),
(110, 15, 262, NULL, 'literal', '', 'oui', NULL, 1),
(111, 16, 1, NULL, 'literal', '', 'langues 2', NULL, 1),
(112, 16, 294, NULL, 'literal', '', 'oui', NULL, 1),
(113, 16, 293, NULL, 'literal', '', 'oui', NULL, 1),
(114, 16, 298, NULL, 'literal', '', 'non', NULL, 1),
(115, 16, 297, NULL, 'literal', '', 'non', NULL, 1),
(116, 16, 292, NULL, 'literal', '', 'oui', NULL, 1),
(117, 16, 296, NULL, 'literal', '', 'non', NULL, 1),
(118, 16, 299, NULL, 'literal', '', 'non', NULL, 1),
(119, 16, 295, NULL, 'literal', '', 'oui', NULL, 1),
(120, 16, 300, NULL, 'literal', '', 'non', NULL, 1),
(121, 17, 1, NULL, 'literal', '', 'Langues 3', NULL, 1),
(122, 17, 294, NULL, 'literal', '', 'oui', NULL, 1),
(123, 17, 293, NULL, 'literal', '', 'oui', NULL, 1),
(124, 17, 298, NULL, 'literal', '', 'oui', NULL, 1),
(125, 17, 297, NULL, 'literal', '', 'oui', NULL, 1),
(126, 17, 292, NULL, 'literal', '', 'oui', NULL, 1),
(127, 17, 296, NULL, 'literal', '', 'oui', NULL, 1),
(128, 17, 299, NULL, 'literal', '', 'oui', NULL, 1),
(129, 17, 295, NULL, 'literal', '', 'oui', NULL, 1),
(130, 17, 300, NULL, 'literal', '', 'non', NULL, 1),
(131, 18, 1, NULL, 'literal', '', 'Langues 4', NULL, 1),
(132, 18, 294, NULL, 'literal', '', 'oui', NULL, 1),
(133, 18, 293, NULL, 'literal', '', 'non', NULL, 1),
(134, 18, 298, NULL, 'literal', '', 'oui', NULL, 1),
(135, 18, 297, NULL, 'literal', '', 'non', NULL, 1),
(136, 18, 292, NULL, 'literal', '', 'oui', NULL, 1),
(137, 18, 296, NULL, 'literal', '', 'non', NULL, 1),
(138, 18, 299, NULL, 'literal', '', 'oui', NULL, 1),
(139, 18, 295, NULL, 'literal', '', 'non', NULL, 1),
(140, 18, 300, NULL, 'literal', '', 'oui', NULL, 1),
(141, 19, 1, NULL, 'literal', '', 'Langues 5', NULL, 1),
(142, 19, 294, NULL, 'literal', '', 'oui', NULL, 1),
(143, 19, 293, NULL, 'literal', '', 'oui', NULL, 1),
(144, 19, 298, NULL, 'literal', '', 'oui', NULL, 1),
(145, 19, 297, NULL, 'literal', '', 'non', NULL, 1),
(146, 19, 292, NULL, 'literal', '', 'non', NULL, 1),
(147, 19, 296, NULL, 'literal', '', 'non', NULL, 1),
(148, 19, 299, NULL, 'literal', '', 'non', NULL, 1),
(149, 19, 295, NULL, 'literal', '', 'oui', NULL, 1),
(150, 19, 300, NULL, 'literal', '', 'non', NULL, 1),
(151, 20, 1, NULL, 'literal', '', 'Langues 6', NULL, 1),
(152, 20, 294, NULL, 'literal', '', 'oui', NULL, 1),
(153, 20, 293, NULL, 'literal', '', 'oui', NULL, 1),
(154, 20, 298, NULL, 'literal', '', 'oui', NULL, 1),
(155, 20, 297, NULL, 'literal', '', 'oui', NULL, 1),
(156, 20, 292, NULL, 'literal', '', 'oui', NULL, 1),
(157, 20, 296, NULL, 'literal', '', 'oui', NULL, 1),
(158, 20, 299, NULL, 'literal', '', 'oui', NULL, 1),
(159, 20, 295, NULL, 'literal', '', 'oui', NULL, 1),
(160, 20, 300, NULL, 'literal', '', 'oui', NULL, 1),
(161, 21, 1, NULL, 'literal', '', 'Language 1', NULL, 1),
(162, 21, 271, NULL, 'literal', '', 'un petit peu ', NULL, 1),
(163, 21, 272, NULL, 'literal', '', 'pas du tout ', NULL, 1),
(164, 21, 273, NULL, 'literal', '', 'oui ', NULL, 1),
(165, 21, 270, NULL, 'literal', '', 'oui', NULL, 1),
(166, 21, 286, NULL, 'literal', '', 'oui', NULL, 1),
(167, 21, 269, NULL, 'literal', '', 'oui', NULL, 1),
(168, 21, 275, NULL, 'literal', '', 'oui', NULL, 1),
(169, 21, 268, NULL, 'literal', '', 'un petit peu ', NULL, 1),
(170, 22, 1, NULL, 'literal', '', 'Language 2', NULL, 1),
(171, 22, 271, NULL, 'literal', '', 'bien', NULL, 1),
(172, 22, 272, NULL, 'literal', '', 'bien', NULL, 1),
(173, 22, 273, NULL, 'literal', '', 'bien ', NULL, 1),
(174, 22, 270, NULL, 'literal', '', 'bien ', NULL, 1),
(175, 22, 286, NULL, 'literal', '', 'pas du tout ', NULL, 1),
(176, 23, 1, NULL, 'literal', '', 'Language 3', NULL, 1),
(177, 23, 271, NULL, 'literal', '', 'bien ', NULL, 1),
(178, 23, 272, NULL, 'literal', '', 'pas du tout ', NULL, 1),
(179, 23, 273, NULL, 'literal', '', 'bien ', NULL, 1),
(180, 23, 270, NULL, 'literal', '', 'bien ', NULL, 1),
(181, 23, 286, NULL, 'literal', '', 'bien ', NULL, 1),
(182, 23, 269, NULL, 'literal', '', 'bien', NULL, 1),
(183, 23, 275, NULL, 'literal', '', 'bien', NULL, 1),
(184, 23, 268, NULL, 'literal', '', 'bien', NULL, 1),
(185, 23, 288, NULL, 'literal', '', 'bien', NULL, 1),
(186, 23, 282, NULL, 'literal', '', 'bien', NULL, 1),
(187, 23, 277, NULL, 'literal', '', 'bien', NULL, 1),
(188, 24, 1, NULL, 'literal', '', 'Language 4', NULL, 1),
(189, 24, 271, NULL, 'literal', '', 'bien', NULL, 1),
(190, 24, 272, NULL, 'literal', '', 'bien', NULL, 1),
(191, 24, 273, NULL, 'literal', '', 'bien', NULL, 1),
(192, 24, 270, NULL, 'literal', '', 'bien', NULL, 1),
(193, 24, 286, NULL, 'literal', '', 'bien', NULL, 1),
(194, 24, 269, NULL, 'literal', '', 'bien', NULL, 1),
(195, 24, 275, NULL, 'literal', '', 'bien', NULL, 1),
(196, 24, 268, NULL, 'literal', '', 'bien', NULL, 1),
(197, 25, 1, NULL, 'literal', '', 'Language 5', NULL, 1),
(198, 25, 271, NULL, 'literal', '', 'bien', NULL, 1),
(199, 25, 272, NULL, 'literal', '', 'bien', NULL, 1),
(200, 25, 273, NULL, 'literal', '', 'bien', NULL, 1),
(201, 25, 270, NULL, 'literal', '', 'pas du tout ', NULL, 1),
(202, 25, 286, NULL, 'literal', '', 'pas du tout', NULL, 1),
(203, 25, 269, NULL, 'literal', '', 'pas du tout', NULL, 1),
(204, 25, 275, NULL, 'literal', '', 'bien', NULL, 1),
(205, 25, 268, NULL, 'literal', '', 'bien', NULL, 1),
(206, 26, 1, NULL, 'literal', '', 'Language 6', NULL, 1),
(207, 27, 1, NULL, 'literal', '', 'Outils 1 ', NULL, 1),
(208, 28, 1, NULL, 'literal', '', 'Outils 2', NULL, 1),
(209, 29, 1, NULL, 'literal', '', 'Outils 3', NULL, 1),
(210, 30, 1, NULL, 'literal', '', 'Outils 4', NULL, 1),
(211, 31, 1, NULL, 'literal', '', 'Outils 5', NULL, 1),
(212, 32, 1, NULL, 'literal', '', 'Outils 6', NULL, 1),
(213, 33, 1, NULL, 'literal', '', 'Connexion 1', NULL, 1),
(214, 34, 1, NULL, 'literal', '', 'Connexion 2', NULL, 1),
(215, 35, 1, NULL, 'literal', '', 'Connexion 3', NULL, 1),
(216, 36, 1, NULL, 'literal', '', 'Connexion 4', NULL, 1),
(217, 37, 1, NULL, 'literal', '', 'Connexion 5', NULL, 1),
(218, 38, 1, NULL, 'literal', '', 'Connexion 6', NULL, 1),
(219, 39, 1, NULL, 'literal', '', 'Competences 1', NULL, 1),
(220, 40, 1, NULL, 'literal', '', 'Competences 2', NULL, 1),
(221, 41, 1, NULL, 'literal', '', 'Competences 3', NULL, 1),
(222, 42, 1, NULL, 'literal', '', 'Competences 4', NULL, 1),
(223, 43, 1, NULL, 'literal', '', 'Competences 5', NULL, 1),
(224, 44, 1, NULL, 'literal', '', 'Competences 6', NULL, 1),
(225, 45, 1, NULL, 'literal', '', 'CMS 1', NULL, 1),
(226, 46, 1, NULL, 'literal', '', 'CMS 2', NULL, 1),
(227, 47, 1, NULL, 'literal', '', 'CMS 3', NULL, 1),
(228, 48, 1, NULL, 'literal', '', 'CMS 4', NULL, 1),
(229, 49, 1, NULL, 'literal', '', 'CMS 5', NULL, 1),
(230, 50, 1, NULL, 'literal', '', 'CMS 6', NULL, 1);

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
(10, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl/cms.ttl', 'cms', 'cms', ''),
(11, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl', 'competence', 'competence', ''),
(12, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl/connexion.ttl', 'connexion', 'connexion', ''),
(13, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl/tools.ttl', 'outil', 'outil', ''),
(14, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl/reseaux.ttl', 'reseaux', 'reseaux', ''),
(15, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl/languages.ttl', 'languages', 'languages', ''),
(16, 1, 'https://github.com/balithabib/groupe1/blob/main/bdd/voc.ttl/langues.ttl', 'langues', 'langues', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
