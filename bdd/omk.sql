-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 16 nov. 2020 à 01:00
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
(53, 'items', 1, 1, 'Master Informatique parcours générale', 'Master Informatique parcours générale\nMaster Informatique parcours générale\nDepartement Informatique'),
(54, 'items', 1, 1, 'Social network 1', 'Social network 1\namel.youtube\namel.whatsapp\nhttps://amel.com\namel mourah\namel\namel mourah'),
(55, 'items', 1, 1, 'arts plastique', 'arts plastique\narts plastique\nhabib balit\noctobre - decembre 2020'),
(56, 'items', 1, 1, 'intellegence artificiel', 'intellegence artificiel\nintellegence artificiel\nprof cours 2\noct dec 2020'),
(57, 'items', 1, 1, 'big data', 'big data\nbig data\nprof cours 3\noct - dec 2020'),
(58, 'items', 1, 1, 'Reseau 1', 'Reseau 1 \nyoutube 1 \nwhatsapp 1 \nweb site 1 \nlinkedin 1 \nfacebook 1 \ninstagram 1 '),
(59, 'items', 1, 1, 'reseau 2', 'reseau 2 \nyoutube 2 \nwhatsapp 2\nweb site 2\nlinkedin 2\nfacebook 2\ninstagram 2'),
(60, 'items', 1, 1, 'social network 2', 'social network 2 \nyoutube 2 \namel \nwww.amel.com\nlinkedin 2 \namel \namel mourah '),
(61, 'items', 1, 1, 'M2 thype', 'M2 thype\nM2 thype\nInformatique'),
(62, 'items', 1, 1, 'Net', 'Net\nNet\nCommunication'),
(63, 'items', 1, 1, 'tina', 'tina\ntina@gmail.com\n24\nifrene\ntina\n12435'),
(64, 'items', 1, 1, 'amel', 'amel\namel@gmail.com\n22\nmourah\namel\n123546\n124348'),
(65, 'items', 1, 1, 'etudiant', 'etudiant\nhabib@gmail.com\n40\nbalit\nhabib\n2344676\n0152634');

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
(65);

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
(52, 1, 121, 10, NULL, 'Etudiant 1', 1, '2020-11-15 23:08:45', '2020-11-15 23:08:45', 'Omeka\\Entity\\Item'),
(53, 1, 122, 11, NULL, 'Master Informatique parcours générale', 1, '2020-11-15 23:09:49', '2020-11-15 23:28:30', 'Omeka\\Entity\\Item'),
(54, 1, 125, 13, NULL, 'Social network 1', 1, '2020-11-15 23:11:21', '2020-11-15 23:11:21', 'Omeka\\Entity\\Item'),
(55, 1, 123, 14, NULL, 'arts plastique', 1, '2020-11-15 23:15:05', '2020-11-15 23:28:15', 'Omeka\\Entity\\Item'),
(56, 1, 123, 14, NULL, 'intellegence artificiel', 1, '2020-11-15 23:20:26', '2020-11-15 23:27:52', 'Omeka\\Entity\\Item'),
(57, 1, 123, 14, NULL, 'big data', 1, '2020-11-15 23:21:03', '2020-11-15 23:27:25', 'Omeka\\Entity\\Item'),
(58, 1, 125, 13, NULL, 'Reseau 1', 1, '2020-11-15 23:22:26', '2020-11-15 23:22:26', 'Omeka\\Entity\\Item'),
(59, 1, 125, 13, NULL, 'reseau 2', 1, '2020-11-15 23:23:37', '2020-11-15 23:23:37', 'Omeka\\Entity\\Item'),
(60, 1, 125, 13, NULL, 'social network 2', 1, '2020-11-15 23:25:34', '2020-11-15 23:25:34', 'Omeka\\Entity\\Item'),
(61, 1, 122, 11, NULL, 'M2 thype', 1, '2020-11-15 23:26:16', '2020-11-15 23:26:16', 'Omeka\\Entity\\Item'),
(62, 1, 122, 11, NULL, 'Net', 1, '2020-11-15 23:26:51', '2020-11-15 23:26:51', 'Omeka\\Entity\\Item'),
(63, 1, 121, 10, NULL, 'tina', 1, '2020-11-15 23:29:11', '2020-11-15 23:29:11', 'Omeka\\Entity\\Item'),
(64, 1, 121, 10, NULL, 'amel', 1, '2020-11-15 23:29:52', '2020-11-15 23:29:52', 'Omeka\\Entity\\Item'),
(65, 1, 121, 10, NULL, 'etudiant', 1, '2020-11-15 23:30:37', '2020-11-15 23:30:37', 'Omeka\\Entity\\Item');

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
('9htiflrvpo8ekl24hsendcvaq3', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353437373435312e3631313730353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2239687469666c7276706f38656b6c32346873656e646376617133223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f766f636162756c6172792f696d706f7274223b, 1605477451),
('amlq994tabrahi43lg57e9pu6v', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343931343139332e3432383135323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2273336d3561756e7169637138706e6f3133616330656761646836223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635393436373b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373030313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343837313330313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343931373136353b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836383936333b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343836393033333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226230323935383666633535316663386237366361663766643531353133393435223b733a33323a223136626237396330663064646462666233393864643038646334633031306531223b7d733a343a2268617368223b733a36353a2231366262373963306630646464626662333938646430386463346330313065312d6230323935383666633535316663386237366361663766643531353133393435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223362353734333931343534636634313034343261613166666433663935623033223b733a33323a226539386237613935623539666337393037623730656561373936353363653265223b733a33323a223566373434643236613236646230373266346130373666643731633162396333223b733a33323a226433623165656137666366383261633130626335336534613531343639306131223b733a33323a226533356432363436363562316237396439656131313135376537386436306339223b733a33323a223231333364653739613432363865623033653431643432363862653663363466223b7d733a343a2268617368223b733a36353a2232313333646537396134323638656230336534316434323638626536633634662d6533356432363436363562316237396439656131313135376537386436306339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a353033323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a35393a7b733a33323a226564646135636461633931626136663762363766363162386333653038393664223b733a33323a226336303339316534663461633766656265356133396465666366643233653733223b733a33323a226132303336333136386135613435306134333135653538363036383334346635223b733a33323a223730626361323337616337336236663762646236356138623432306338343033223b733a33323a223165333638633934346337616461386536306539323333613339613638616638223b733a33323a223430323031396237643832616630613439393862376335366635646664306134223b733a33323a226536303463623736643937326533336431306536346439633865383636393731223b733a33323a226465393535646465346138343564643738343138323035633962383132316131223b733a33323a223538376639623339396136363962636436353733363364343034613137333930223b733a33323a223266666132353962616263313663346633363236393433343838386139663137223b733a33323a223364663766623432353938636233643735633964396533386364393163343665223b733a33323a226639623062653637633532353861623663363932643937616165623036616132223b733a33323a226430393035383739646263366333366163656539363037663235333461613431223b733a33323a223530313765613732393038336237373661653739663066653564343339663235223b733a33323a226632376138363264356665636432353938333538393265633163373263653332223b733a33323a223764343532333262666434373039633032333866646662336437616136653839223b733a33323a223139353835656132343937323565353962643761373239616465356631363464223b733a33323a223732626665653465346466336361313861323564333832336165623963623938223b733a33323a226265326662303732386530373036666334373362306437363730333830346364223b733a33323a226231373134303535663639656533333164633438646633353666303031313265223b733a33323a223763623233356562636333366432326361653164636534313065303639376130223b733a33323a226130386564353537363036633633353932373630326532616161326135316335223b733a33323a223765653066303536323235363765306234616536363464366238336466636566223b733a33323a226339333733366162363636653935393334616263626661643335373663316133223b733a33323a226230653433666662633165633064373738326432353435376135633966666434223b733a33323a226535656262333432653265366335653139366332366435313034336563393061223b733a33323a223565643032313434613034343839336439313364346139383837363466633735223b733a33323a223764306339333363303335336364613733383866373531303036353633333763223b733a33323a223132613031363234373234636266663730303664316265326632613037643934223b733a33323a226232613834393265373136333339323431353139636139613935643562333262223b733a33323a223436323331656631303833633166373462333365396236386566623863303132223b733a33323a226633343237613038313035373962356465636636373132626239393530646537223b733a33323a223763376335656330336439613732643664636466306465646337346137303937223b733a33323a223139326263396562333237346163663964643033393432656337313835396137223b733a33323a226166313766633435316431353130396231336137656135333531616333663935223b733a33323a223466656235373437313865386237323437373733626338373263306132343230223b733a33323a223635356361356164393064656132633364363666666635393830343834373835223b733a33323a223261386631613137316433396332313165663831616132316165663530373561223b733a33323a223536353330353737333232666235363539616361363966323962383736333733223b733a33323a223238366332316338646338326630343337363231646466333364356134373838223b733a33323a226233343235353762363262313962303566623361376335316435396536313765223b733a33323a223262336261363035653665623730616365643336313734643961373436323266223b733a33323a226237613332666661323265303361356632666135613639616436653837666239223b733a33323a223237393439363332353738303765316162393264386337653034396330643431223b733a33323a223530393861646364333837376534663464336236616235366565323766666435223b733a33323a223032623637343035663433646661633361373737613739396539623963653064223b733a33323a223463363566653865353964396566396332333535623534376365376639373430223b733a33323a226337616661366563373062346635386563376465396466636364373431323066223b733a33323a223739383239356163333134343530643132333763636139376264636335303133223b733a33323a223664643263306635303365646364626639323935643931323537616235666330223b733a33323a226433633965353333616338666638396264643761633535633436313665383937223b733a33323a226633363131336632323437643732306239623234613464666163613661646639223b733a33323a223230376633303561393665396339356235663965366433313934303133353638223b733a33323a223162316664643635386439653338643065613832313564366661643531376666223b733a33323a223835633464326439613131626438613265353331373230356466383962366635223b733a33323a226236343933656138316431373237636139613436306630616565346666663230223b733a33323a223161343662393433313063323266613332326466363432353762643530383861223b733a33323a223936613536373233336239623338633562306133653466666339623132373164223b733a33323a223236333237613330663061393436643464326533626438323563326333663364223b733a33323a226637383834383930666465353538366639613561633138353835303732356264223b733a33323a223137383266663431333964323438363966333339353061323433616461383463223b733a33323a223862303462646663653466353033323364333930623361363738316264303265223b733a33323a223939316334343061393930633463356565313066373237643766323763366334223b733a33323a223632396336386133383265666231356565313563313765363230666365306165223b733a33323a226366303835376465316134326432386237386461353538336464396431656363223b733a33323a223965396331333964613636386634323366616437363038636165663736303665223b733a33323a226162656230363462373264656666323066356563383038653066323166373735223b733a33323a223461313335313034653030326666633431306461623838343335313638346264223b733a33323a226231313438666233636261333630353134323535623832643238393938366263223b733a33323a226230353032616165366466373638356466663234653266323333663630636631223b733a33323a226233373664393764613234353061616165333264636465656365313534323464223b733a33323a223763666233386332343138343566323534313930313036306636666133666161223b733a33323a223666313763666364353265363234626437353731626561316363396333326661223b733a33323a223337653035343230396636393138383563326666633236303164636333326630223b733a33323a223939373161623231393261333532343763653065616336646638306430396161223b733a33323a223261383362313231393139366163653463646261383535346562653332653765223b733a33323a226264376437383330356462653864636438306235613463636562663535373766223b733a33323a223938353531396562316634323462323130613539363133636132396430383562223b733a33323a223566393464323836336431663733306165656331313634383063323565626334223b733a33323a226238383635613230333039613539643233383430623261636138633462323736223b733a33323a223938636233383830356432613834653562393636626135336263383138366331223b733a33323a223935643233303864363734303435636633346630386161626430326337353231223b733a33323a223236383138343063316463346539366337346633363430333136323866333535223b733a33323a226663663531623332636331356661633161316661613831343366656364653235223b733a33323a223838623332653433616361366632613031616133353065336364393332323839223b733a33323a226232613466613265383533626637376238646164316439313032323664306233223b733a33323a226564306638613362346237666335386134333061313731653566333530303736223b733a33323a223065363136343063313631643866346239616131663832333831363563646262223b733a33323a223035623965633134343031366232333039323933313237323630666663636566223b733a33323a226430356363363362656635356435663937623861393038393436373961613035223b733a33323a226536393237366230336231626336383562386233356539386139663765363632223b733a33323a226531623632613732303764376564313565626362656462646332346333303965223b733a33323a226536613166626333306266363837326561623934613430343965313138303365223b733a33323a226237303737323436323964326137336162353536326139333265356638653032223b733a33323a223530336533393562323836653563306139633436643535363963386466373565223b733a33323a226330313063346432653537616461383835323431306238336233333530343332223b733a33323a223532373263326162633731663035623234643231643236646330653763616636223b733a33323a226130343163633666333464383837373666663865613561386236306230636635223b733a33323a226465323163633431333039333138613237656539306435323834653265363965223b733a33323a223731643732303133356130623934633662363936646563656163333865326137223b733a33323a226537313434383033613461313536663230646532383561346131306231343039223b733a33323a223236333461396562623738323036306538316465363234653862636164626465223b733a33323a226536356162646631386162343133626339346431306235353135373666623631223b733a33323a223432656661333664336230366565656365306334613430373337616561613930223b733a33323a223232383231313730373564303462323533323762393266303037373636653263223b733a33323a226261313933383132323061336462313338383561353639333839616236363636223b733a33323a223430303964393363316562613262623835306130386438636463363261666434223b733a33323a223031373839356432303166633632623535616162386138333735303534376465223b733a33323a223866303362666535393765613163626536313339306130666432393763333933223b733a33323a223733663531376262623466613138383364623732633037343332326631393132223b733a33323a226230326362326164363333666562376638373764393739343530623338613330223b733a33323a223333343565363230323330346235376136376566313634366663346634643736223b733a33323a223064663832313966376232363566366461656135313866323830356134316338223b733a33323a223765646162623035383461613164353466386365386463636164363561343033223b733a33323a223636316539653561663735373536623630626233333234346435653565666461223b733a33323a223761343063643033663235613139326230663237396565396161363832363133223b733a33323a223431383631633138666531356230333765376239386262663430316365613364223b733a33323a223461313530616630633038363466356133306139616634313763346536316232223b7d733a343a2268617368223b733a36353a2234613135306166306330383634663561333061396166343137633465363162322d3431383631633138666531356230333765376239386262663430316365613364223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313131323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a223537353330656565363536616438376530373832323438636336633731653135223b733a33323a223865373764633865626464653762653563316632636562363035303462363735223b733a33323a226538393332643266613433653465333361613837643535346562323562393438223b733a33323a223739386531643536613135306562653133653736626661383166653130323236223b733a33323a226532323063316265313865653961323466626133373266653934613035653362223b733a33323a223166643163623161623734343665643535326637303963313730643130396234223b733a33323a223933373033383364323734636563346466316639663633346330383534333061223b733a33323a223235336535316663336462393331613431613963333130333038353938653165223b733a33323a223037353961363339303439333739646263396432653763633337353834393463223b733a33323a223330313133393731636338623562396333613437633831343261383736616465223b733a33323a223639363738323662633061393966383135393166373139616266623766376632223b733a33323a223561313964363261613038396263393733343934356336383032323134313130223b733a33323a223665666462343165353863346364386565366631346565386361376161356265223b733a33323a223863336365313166366232383661363939393637373430346636326434323731223b733a33323a223861623039303734646232383137353734356565386132636238623237643137223b733a33323a223466626235393437336232626330613663626431633434656263366332376136223b733a33323a223462383335383861316533646130396437613939343465613764663062643237223b733a33323a223532623861663533636361646531303038303532323963313730363737633932223b733a33323a226536333630323134656364353835396263623134333464346462343165623639223b733a33323a226266363662633631653337393035366333616330663534646265326338303739223b7d733a343a2268617368223b733a36353a2262663636626336316533373930353663336163306635346462653263383037392d6536333630323134656364353835396263623134333464346462343165623639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223037646166396163326163353033343864646266343932626235326231393635223b733a33323a226261396438383231613137393638353763313231666463633962336332343536223b733a33323a226561633937623833343437306134633437393164613030633163373438363530223b733a33323a223436383731656365623263363963306138396263636633303139656231653465223b7d733a343a2268617368223b733a36353a2234363837316563656232633639633061383962636366333031396562316534652d6561633937623833343437306134633437393164613030633163373438363530223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279757064617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226136636262383363626434633862393931353161386362383063663138616639223b733a33323a223538616338333864616432323739343833353234396539623937366234656634223b7d733a343a2268617368223b733a36353a2235386163383338646164323237393438333532343965396239373662346566342d6136636262383363626434633862393931353161386362383063663138616639223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604914193);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('hiqs6u525mftkv40a0p6ojaupf', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353438333538382e3138323938333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22393935746434336a3831316d7470723939326972643563346f6c223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438313131313b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438343135333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438373138363b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353532393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353438363539373b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e2f766f636162756c6172792f696d706f7274223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223730646463393366346138666236613666363966653631343534643266353932223b733a33323a223237616230353364343330653465363531323630333164363065623939323364223b733a33323a223765663862333537386365353861376538323238653730303631363535643762223b733a33323a223231376334313030393865356138653235393566393265313138373838396566223b733a33323a223536323962383763623131613635616236393331656337643236386666333738223b733a33323a223133663836663934633161653830326666633336623866646538613534616537223b733a33323a223666643565623238613636313037386533636136376564626232353463343766223b733a33323a223135363566343761643863623334396335376230323138323038366661623336223b7d733a343a2268617368223b733a36353a2231353635663437616438636233343963353762303231383230383666616233362d3666643565623238613636313037386533636136376564626232353463343766223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223333356635643635643930626365646166393738383334623030613165363064223b733a33323a223561666433653432323961633562626635646237383665366664323865393032223b733a33323a223336633936653134643963376136393533346261323238353633626135643563223b733a33323a223934366133613165356239353334353138623230616139373366636234353037223b733a33323a223364643466663731386433633331336330376630653032373133616532626534223b733a33323a226534626338636133613939356462366461626138666131323930323962336437223b7d733a343a2268617368223b733a36353a2265346263386361336139393564623664616261386661313239303239623364372d3364643466663731386433633331336330376630653032373133616532626534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31393637333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3234323a7b733a33323a226336313436316334353363393865346637343266303038633461386663326364223b733a33323a226433343936626564346538643234326661616236613434626337643064636635223b733a33323a226434653733373064613237323831363463666664386265643961363737653738223b733a33323a223530613362333362643937366335613464313931323364626135613666613261223b733a33323a226163353331373832643464623536393137346537333261373834393734656266223b733a33323a226365663936353833383638343834363664306565643935346136623538666638223b733a33323a223535346532336262346363346362383939616132613666303664303532363561223b733a33323a223338333465303366626663316163353062663163316332636639303031643930223b733a33323a223339643066306539363764633238306637323132396539353363656564626632223b733a33323a223038343739646562383166323736303836643465373265303238343633346461223b733a33323a223566613130306261383437336261303864333764306539623361646333373563223b733a33323a226663643164633232323933393232333162383764616437643032336161323237223b733a33323a226334613236313166343462643964326361663062653164303164356535363437223b733a33323a223231653731336430663331616162336561666165356335663638346230613565223b733a33323a226432626439666132623366316339383463613239383736343236366139646264223b733a33323a226435633064313065616238306162313437343164613966393237386630393263223b733a33323a223864326263653162306166333966623636323536656566616463343436363732223b733a33323a223065353261653435316639373263353232306135613534373964346135613536223b733a33323a223465353462616636386665323231366234643165633462336130353664623639223b733a33323a223530643963656565656439393361303266653437336162643131383835333464223b733a33323a223461663434373765343266643533663765356264313030623336346334646236223b733a33323a223238326432366462396432386334323161336634346131643831373434383535223b733a33323a223335363738353262656534656566346166326362326530313338633030313034223b733a33323a223039613835633030616562393737613039313339623865333931373465303036223b733a33323a223739383464326539313864333139366236346534363330386230613734346361223b733a33323a223164666434616230633562323436613734383133396461326532366432616435223b733a33323a226539306330353338326463323435646133343464306364343561303162643962223b733a33323a223838333732616434366365363838323231376664383065323062656230383533223b733a33323a223665363462316330666261653133303531306537313634643338353039303461223b733a33323a223035396434613032386464303062613765366263666438626463373765386632223b733a33323a223632313532303639373464356461346238386435306531313837646463373737223b733a33323a223133393639613036653164633336346135383234313764386530656139646430223b733a33323a226139653135323333326632666261326566353636616264326131623137623335223b733a33323a223764393266353962663636303063313263626264376166373666643533316330223b733a33323a223265313635373136313838656364613232326137386135316531393139653536223b733a33323a226431646230323834613464393532633030386536323461343336303464626264223b733a33323a223066376230336633646239373837303934633161353364643030663331666534223b733a33323a226466343763376361393130623264323931613434646265626639646131613263223b733a33323a223636663136363366333263363737646634653734393464613163396239323130223b733a33323a223134303237306365623635356135363131386562616134336164386131393465223b733a33323a223039343037666239373637663838376335383234633838376433383434366230223b733a33323a226366306232346337616439346230343664396137656363373034326539306538223b733a33323a226363656166663264633038633565306137636235306635623734636332316439223b733a33323a226439373465323933643564626233643830643732633534616337663831663361223b733a33323a226563636134396432383230626535353230393636336338626538653735323137223b733a33323a223165643731373934336235643861333235303339626434373534356535653437223b733a33323a226366316337336532313930663532303039363131666539633433633632626562223b733a33323a223533653538653832616464313634346633616464656265656631333733663732223b733a33323a226564663138316637316339643233363965636637363962313963653365313436223b733a33323a226232383061386362646339616138373437393930616335363937663530663762223b733a33323a223161313263303536343636663362623830653634653231646566636263356465223b733a33323a223335313133326237656466633166336430623036373934643164333061633233223b733a33323a226132633232643339326362363064343937363238336130636466373231353266223b733a33323a223663383330323735373631613936323138306263313866623132326131626138223b733a33323a223934373661613165666633373838333766326561643733303261613636383535223b733a33323a226535656135623437663931653130303234383862323734373564306563393664223b733a33323a226133643264346465666666363262346565613733636132363031333338373163223b733a33323a223830396562616634623162386439336630313264313433373864396262633365223b733a33323a226237353063343132356237376234613665306265633939626335373562366662223b733a33323a226337393463363434303339343531333366316639613436623835306536363930223b733a33323a223630643261633366663564616265373563613133616237363233373435343235223b733a33323a223764333062623062353536386265346162313733373236356566633762666636223b733a33323a223939653462633331333065353035613263626534646563663466313239636532223b733a33323a223332313334343931303430626365623931333862363833643731636463303434223b733a33323a226265626236626438313539316161396364653336633861346330393733646366223b733a33323a226234616134313961356565313738616236636361623761616365316463626537223b733a33323a226239623331346262626236383031373263396637303030623630363633373434223b733a33323a226538386232353563613038633132643732333964643561306438353134623033223b733a33323a223465373239643966383333363136333462376331363430363264363266636333223b733a33323a223431306235373039663433326532376137386432313832383134653165386337223b733a33323a223531636231376331373635376332623834353765343832616566613563353738223b733a33323a226533343838663339353235623936663835653864663362356261633831343531223b733a33323a223937303834393236646665646238623638663931643966653132373763643339223b733a33323a226335633433373138336636323139393263353236613238396562663665656265223b733a33323a223735353961383434633638366265643935306632643735623636376563353135223b733a33323a226665363731356431653263323361653936376362643331663230323861653235223b733a33323a226131333136313066333038646563316361333535653633386339613332636565223b733a33323a223265313337653632393833636137373466343762326436643435636230303161223b733a33323a226138646266623830626632646630363362373061653563663532396366613630223b733a33323a223838656261646563326665353138653534646164386466326332383630346430223b733a33323a226130303236626462613962376334663034613330396263393437643538643932223b733a33323a226432363162393163373363636131353732653237343062653933646165636164223b733a33323a223966303031663032653638333965646230643561633862303234343265656539223b733a33323a223763333363356132323561363433653237373939376664383238633639326264223b733a33323a223366653134663439333333366265646463666238633234323262323333663438223b733a33323a223636376164656634383436363630343430653766326532336137373561346531223b733a33323a226263633935333166393762303532366561336632633861616434353261323161223b733a33323a223236356235303965396362393631616230376530343835366561663961656432223b733a33323a223239313834656330633266313836323530303833343434633534633939653161223b733a33323a223366653061343733353037356163316232633838636637356539613634313133223b733a33323a223766386437656336343931303631633930323337616133616135316564356166223b733a33323a223837303332623961343736666563666633666239396233613234626164386432223b733a33323a223261373063653331383062666330323035303032396338393835616134643633223b733a33323a223133636130616433656438316230656232306334343465386137623930636564223b733a33323a226132663962323965656236616264653632623833376466633034633665643665223b733a33323a226266616135356434313932376163646639636561333331393761373563373736223b733a33323a223534343937386562366362306339633063653066343062383435333135393262223b733a33323a226631353332323638633432613736383433333631636637636336393630383231223b733a33323a226533353436653338343130373038386461653830383831623130303634663663223b733a33323a223130383963663438313963306638653238626262656231623164323432396430223b733a33323a223962363561653034383439613135656466323263313539616634646362636261223b733a33323a226566633630386665346366633735373565626335346530373264653933373064223b733a33323a223434623535616237616235303237356162383534363635303335626364356236223b733a33323a226364346565326162663839626138613134343438363032666636613630336362223b733a33323a223366363132353931666632366331363339373437633230303761333439633038223b733a33323a226163393864656634616436636532323735386332323433323664303436343937223b733a33323a223766373361363139366464623238323830326137376139613331643837333938223b733a33323a223538373535373738633936343036373934323034613737663738366231323163223b733a33323a226530303138356663666365616661636262616462323639653432653762656435223b733a33323a223763333232356539363133633961663863343362663930306132383833336136223b733a33323a223132316362363238363938373637346638393432383736363639653964353836223b733a33323a226231643964653432316266323734343030646664313637656430303761333864223b733a33323a223937363737376438646366346535333162376362316439363335303064636337223b733a33323a223866336636316536366463366361333861653362366232643563643766396433223b733a33323a226637666561616265333364343432383662646361363361316232353036343931223b733a33323a223836383833383530323061636232363238353638393630396438396165646133223b733a33323a226632323032643162313632663764303839663830366436333434666165333664223b733a33323a223734633563633837316637613130323965623666306130623864393766393933223b733a33323a223639363432653264666231356136623264626234643038623331376665356132223b733a33323a223831313834616335613165643534363965313963656632656266636565623632223b733a33323a223466353763336336633432346433323063346463396336623666303938373839223b733a33323a226139346436663431386565646335336433326138333739373137313864373039223b733a33323a223134363339636164323463653534376436366461306665333236303465666632223b733a33323a226561323162663238323039666262303430366539373831376135316330376139223b733a33323a226231626131346531616531336165376334626461303163336430303936613336223b733a33323a223564313764376339356235346134383462613537366563333633393533653262223b733a33323a226361313338656530613830373662306233303939623461653464376230653864223b733a33323a223131373030303438373839666135636534353437313262613166383664623462223b733a33323a226439643333326632623532393339396161373932376134353933333237313338223b733a33323a223361306666306564343064376537326639343338636631313331323737656131223b733a33323a223262313535363964313866643930336363643633343562663935303830613061223b733a33323a226435303936633362306431626234313730323963666134313034366333643330223b733a33323a226231303462663734363135303232353538323232333737623038303035393732223b733a33323a226631646336383732326362613838343330666234663937643566353462613933223b733a33323a223565393033613262363962373038376436333937393631386633346262623263223b733a33323a223364323330656130363962326631343761356533643364363462653832636465223b733a33323a223234353931636464373063383266306663656363663931363735653034656466223b733a33323a226265613761643637353063626438636665343262333430303762333861373762223b733a33323a226265366539323262363863653164623335386563333031643863353364626462223b733a33323a226363366437383637343430393731336438303738373034316431323334316332223b733a33323a226465633462666564346162633262383764623965336264633266613437396135223b733a33323a223538623736343264313661346531386266633231666434636134613238653639223b733a33323a226661373065646261383431353137353061396237363561616435646431613837223b733a33323a223366623464643434373535373137363930313266383432383738653130373663223b733a33323a223564333465316263386334396363336164346362633163353336333235316264223b733a33323a223966356135663933373537343437666435356330316637323039663739346361223b733a33323a223063663238343134383535366266323735303735343066363061363130323232223b733a33323a223231663265393136623565666566623830336437613033326534623233303333223b733a33323a223566376636636365616431613163303436346630313736333930326330616236223b733a33323a226530656638366637356538386532653164613932616337353864626436613536223b733a33323a223131323266376635343530636461393737323332623039306434613561343531223b733a33323a223433373663633437353332616162613166633539393833343766666332313062223b733a33323a223039613066646233623063633530363765396461633333316331363963383063223b733a33323a223263646237363361373834373936636433666262313232323861616662313337223b733a33323a226433666165633662353335383436396338313530303835656431623361653763223b733a33323a223435643666636135393365616432303361346631383261396534343134333635223b733a33323a223139663439623538323764363235653731643939343863626364366538333639223b733a33323a226235613430333035313839363836633435346163386432333037373065643234223b733a33323a226439623437356430636236366539656364343164653137363730336562663536223b733a33323a226432663930376431343339313332646532323831643430643064663763363836223b733a33323a226264326161613431663331333337303737623265373233653430653535303562223b733a33323a223335353762336535393938386133326630383533316462313937343134656531223b733a33323a223435666666396436306338663738666466343562633337393362393663326132223b733a33323a226464323230663435386362353334376230386361613865383163353537626133223b733a33323a223239356562356435306162666531626237663030636430333532646666633430223b733a33323a226263643461303838636662386235366266383436356330636638373362326138223b733a33323a223766316264633634623130313637363266636563326334303131623133363966223b733a33323a223061303235646139623639656136363633626161326162656234303565623364223b733a33323a226638613066356531656536326536353666396565346134643762363463643731223b733a33323a226634613838643664383762316132383631613630356338353235663432653763223b733a33323a223063376538323531613135386361353233623963656532316137663464313861223b733a33323a223566353561323061633634383138393138346563313931653864363931316139223b733a33323a226233343835393165323962383463306534363362613238623039623065636565223b733a33323a223563376433613730326136306137353632366530326330656139363961623466223b733a33323a226265333839386364646132396438383133393165326234376137333137626362223b733a33323a226337396636383065626637336637333830633131313066343931323436613964223b733a33323a226361326332343263383431326465376261626632303162326463646161633139223b733a33323a223634356530353936303663393432303237303064663666623536343761336236223b733a33323a223965383639663533666532623864316638353766303736396134336639333037223b733a33323a223734656262353132616163666539656333313235663135663030356132333636223b733a33323a223162383232373263303936316338373763643539346332316638353639346234223b733a33323a223233363437663861613937646162353061653265373735353931376237643534223b733a33323a223866313066346563613863323831653838333632643561346138343566616461223b733a33323a223366323762613632316563363366376634653139356334623764376238373665223b733a33323a223134313764663462333935313039323730363365653233393536633764393231223b733a33323a223566643963633564353231306133396238396561323036346661616538313939223b733a33323a223634353934616434663762326164336430313866333035643161653865616336223b733a33323a226236376536396339393934366139313838393261646333623132366534353563223b733a33323a226435663130386337356263663766396563336331356239313537396339323737223b733a33323a223630393937626633353037396138356337663265303565313238353061343661223b733a33323a226139663132353939356165343664323063346562306233646163346332323433223b733a33323a226432363361386562656334393333323537396365336366336162633762303363223b733a33323a226339323931386135316166363862653438383631353433646431336230316564223b733a33323a223666323665613230306561383461383239333461326561663238333633313761223b733a33323a223133386535363563336532356631373965623835663534303962646239336466223b733a33323a226664363931316462663338353866323132643266333866666335363934333565223b733a33323a226462656434653764383165366531316263643034636532616336323162643761223b733a33323a223632343233363938386632386263326638313633343865366162353462643862223b733a33323a226463396163363630396561353462366663323230376461666237636533356463223b733a33323a226263303561336161373238613438626664353530396634333530326436353237223b733a33323a226238626136313064636432303863323233383366353364353264366665316264223b733a33323a223031393164353033653164623462616334306239613061336133303036323639223b733a33323a223931363664316231633261636233376135303463366462636161323064343966223b733a33323a223865303131306461323931626638336463383036613862643964333834353037223b733a33323a226161356133326335623632313764623961393331346666373933363266666433223b733a33323a223531616638653431363537393137363465633465656434313765386562393736223b733a33323a223836306535393834303863643039333564386138636566313838306530386433223b733a33323a223531386131343366633164363636653737393536323532323231343265643734223b733a33323a223436616334383634356539346166373235396631323134626638306365623137223b733a33323a223532656634666365383939353230663339373831643765363836663231323566223b733a33323a226264393537663565346133303737333030336639306138313530346333303263223b733a33323a226138653738323663356136396235333763393130326430373930326233393835223b733a33323a226661303334663066333434363064633763623932323438663839616134373033223b733a33323a223266663936313135633963323963393434336632656437373261633161623063223b733a33323a223263306334313762333733633364323439333138646230646237383038363739223b733a33323a223939653664373335346131643031326665613737376662656164666138613331223b733a33323a223961383465313761636131376634323234616533336132633964316661386238223b733a33323a226433333932326436316565653233643863666637343166626233333634643431223b733a33323a226237636631353438313235303436353633393266656437393663613131646162223b733a33323a226333653964356432623630666131326664666336636366323934666464353136223b733a33323a223262663663656561336238383238636633376665663962633138633932373933223b733a33323a223236313862616265363933333633363139656239356465353837646131353762223b733a33323a226635366136306236373432363930326339306539653137383863633537343466223b733a33323a223962633630363835366132306163663564353165306136616636353132356439223b733a33323a223332383761396236303633346131363934386561396635626336306531356234223b733a33323a223036373337633962386332306466313236363135363134376534363962386636223b733a33323a223936653063393165646630363362613030376465316331316161666338336362223b733a33323a226531663133643632383162653862363635343239626130383934373864633533223b733a33323a226634613336353032656461613736636230303864636533383464366238613863223b733a33323a223461666634323465613763636165373335633666313434353637623535623236223b733a33323a226562323961663737323933313537643063643861613137653063653063383864223b733a33323a223666343836613032306565633639646137366434393866323432646637623135223b733a33323a223533306135383562386561636335613763316161306566653239343964303164223b733a33323a226462363163303162323662306432343036363265353461623631363035303335223b733a33323a226133313565303563313435626262306530386637646536323161313464323730223b733a33323a226465663461306561313537346564373835313135636630643764613266313932223b733a33323a223461333833386437613431613738653938383135623565313637653465303832223b733a33323a226264333938306430363536363464376230646263653730393661386666316631223b733a33323a223932303664653038616161636564363139326365383734326231383332643661223b733a33323a223562626436323766303435373939626365613830393330383062636436303935223b733a33323a223662653861636135643033303237346138646435613764333335343762343462223b733a33323a223134356430636136393962306339656239383939643838373030313731376163223b733a33323a223561616665386462653564376161333562393765623933313964353439636436223b733a33323a226430366462623134353361623639343237656431383931346637613732623663223b733a33323a226639373033363538643036313032656161316337616561356237383733323336223b733a33323a226564356634386234666434383836333466666636323761333137623330383635223b733a33323a223234656137373031303138366332363064386538393366363937643663356134223b733a33323a223936393639306165323637636336353430396662346465616532323238356235223b733a33323a223134336163366265383065323961656134623935316166373639363735333930223b733a33323a223036323061333034323835616639313431363433616633396235343261313264223b733a33323a226239643535636266633135636333633563623936656531383563316434333333223b733a33323a223565343039313738646534346330363132633035656639346238386662383066223b733a33323a226134383162303164396261393833336164323138366636653636643366353433223b733a33323a226362326662633330316161366530323435363662623236373265363936353934223b733a33323a226634626164396165623932626436373064633334646164616430643233343435223b733a33323a223534353463333634336337616666663132643463626334343132323337666434223b733a33323a223731643664623566363831323166323530383732326133393765306165373032223b733a33323a223866393830326135323266323536346262363436346630313831646437396564223b733a33323a226437303530376433653435316562633234626230323733616537313465356236223b733a33323a223138646532393730353235383536353137336134366334623735363333623861223b733a33323a223936646265656564616463396432363162366530333638306130323935623863223b733a33323a223539633537306233313738383135333736393964346565323836386134636331223b733a33323a223136663635303339653466393236663236353932663366323564663837653966223b733a33323a226663363436373366373933353239616330653431626261623564323662656233223b733a33323a223866663365346630306533303733313635376433393864653065356132323332223b733a33323a223839356131623366383831626238666330613366306636383537326265616131223b733a33323a223836356462636531636565623666346462313131316333366334396432353738223b733a33323a223061343731353566346237326162376230646564333634303363616330343965223b733a33323a223338393639613931386131666263343866613837303231613632653731376231223b733a33323a223766313562393333656666356233383637633038303863653962393866383532223b733a33323a223566656532633330303833363965313439363638313961373334306630396537223b733a33323a223065376435636265663462303561363132383033643637333330393166343336223b733a33323a223862386333623136343661653039383231653761623064646663643032636535223b733a33323a223533313230346664643465653531663161663930386539323964333966623436223b733a33323a226534393536613532373362646435386637346533323837303031313534656564223b733a33323a226436346365626465666261636363383464353963643435613637393831633632223b733a33323a223964386631656564623234386630366666666635643263373862373134346334223b733a33323a226138616634663036313634353736633633353734343535393931396335626163223b733a33323a223065386266643864356232356332653665623930396632366438316436333339223b733a33323a226461386161626531363066616562633034373464626663306165613236303638223b733a33323a223166616438363837346232303866363736343662623237656162666231346439223b733a33323a226632663538393963653939313932306462626136643061393437663561316264223b733a33323a223462303533386635633661356132373566366662343835383439333332373431223b733a33323a226264353331623336633236343766646139316237303666343565376230383563223b733a33323a226631323532643036313833343532376132616262653135663339376335356361223b733a33323a226239356338313034313838316430613466396232616231373435666535653661223b733a33323a226464333136363933636666323835333136386163376439346535666463376439223b733a33323a223832643664643663383766363265613064326264343135333939646331646530223b733a33323a226562373862326563343865623430643034633035323734626238313662383238223b733a33323a226539316637633865383430643236646662343039613235663830653637343763223b733a33323a223839323466363036373837633533343133373931383831303639366536323439223b733a33323a226164653131303336373163313861393135393361396337616139323262646237223b733a33323a223365396438306163386234336162386238316338653566333230373231323937223b733a33323a226637396236366533643432386335363139643561663337356466646531653139223b733a33323a223866383634643766613834633163373033353330613363376263626537303534223b733a33323a223534316333613331386266383133653265313864623330373932356139363534223b733a33323a226331363238343931376138316137633938323636643939366438376664353637223b733a33323a223939363830623364613839613335396261393432336534386330393664636137223b733a33323a223764646538666637373637326433316263656163396165613938633166653731223b733a33323a226265353939636534653866356230393561643134656565636266353338613731223b733a33323a226564613536646331626132393131333234356238393864643832333531613361223b733a33323a223163646364306630363837313935313238626462356265623733326630636262223b733a33323a226439656239636564363232346232326562383164613138396661313131616433223b733a33323a226662613536663736376435333138336334383964336163643765626432393830223b733a33323a226666303161333839363134376533643636303435336664376436653166663434223b733a33323a226331623062393030303264373330366334623235313666353330366462363564223b733a33323a223737633034626365383538616437396561363532623930313435636537663864223b733a33323a223637363562356564356364633132353834336638636266393364643132316439223b733a33323a223664636539343562316430336362376365376662633565613130643736363263223b733a33323a223437383439636164386137326237376137633464393731643331643532326164223b733a33323a223736313163376632643966656266626536643839376365346165356631376463223b733a33323a223166643639376437646435393139613133313762313762373638633730356232223b733a33323a226437636336363164643165636534373463643832626664303463333366386534223b733a33323a223835663438363039333966626662626437616161663333343262356362316461223b733a33323a223561643734613230366364646364303237333136653733643033333938373435223b733a33323a226232313336356664303031653962646136323130373466343739356466396336223b733a33323a226463643338386230316130313361613537353266653332353030656661396163223b733a33323a223335646464383034643834306630306665623862353337383137616566343139223b733a33323a223839336561343837646338386439333233643436373433353565396537343862223b733a33323a223438626163346366313831663866323362316364636262663237623434393736223b733a33323a223135323664666565396563633832646234313634303533643662346166616231223b733a33323a223635626665613237393335643739346239623133353835616661306633663531223b733a33323a223138383931326538653333643661363130333332316132333163623531613464223b733a33323a223666333936343066353532303563613232383834653538656131336661356663223b733a33323a226631633664353637663837656436393536346539643536363763323866326430223b733a33323a223536346336313462666335653038336534656233313239373465393063333130223b733a33323a226236313534636438326661653033313235643665636462333432393234663135223b733a33323a223765373138616632353138386530653738643532656365646562323161613537223b733a33323a226238346263626664623261363734616364333764643133303262386439633331223b733a33323a223466363630396162663339363233633236663435663566336534643663333633223b733a33323a226266386334623234656533626264346231613739633263393734363938306666223b733a33323a226563396561643131346137626464653763666238306462366263383136666463223b733a33323a226531633933616635616135613361663437653464626363393833396461386130223b733a33323a223964653730336430366564366662383831383235383231303862343432386137223b733a33323a223666623639363662623234653731393330346262316261653737623831646363223b733a33323a226634643738363066373134646636393730633562363064633861323535343931223b733a33323a223661336130353736663432396638653030663138616538643064393965343432223b733a33323a223030326339303666326165373465653765313836653663346138313538636565223b733a33323a226332323432386232613064636266363336353261616334646630386265656434223b733a33323a226134333766306234353962383839396230343731633632623237663066666538223b733a33323a226366363639366530623735343862636134396237333361613066336466393364223b733a33323a223836633063636237633230666237363464373062373336623462363361633033223b733a33323a223736373337653437323766343764363066626437663964656263326635656435223b733a33323a223265353233633236626435643938653131376662303830653330383638646663223b733a33323a223336646535383561373836336135336166613930373537303361363230623664223b733a33323a223661613166306433663733393738333562656238666339656439323833613434223b733a33323a223537383261626138346166366535663636373431666230636361306232373563223b733a33323a226132306336396266653466333362393165353630663262356261313362373262223b733a33323a223634626135393262666232313135323234316262656434393964643939626536223b733a33323a223237616130653331646533636461373936363266326633636537623362633631223b733a33323a226437376465373039393864646263663638643865616439386438386634343133223b733a33323a226464386264376333353731373433333634626233366262326630346231613834223b733a33323a226634353034353266663738316362323337303432626532373966643161393132223b733a33323a223639366265353734623565353338323234353661376161313666393761623230223b733a33323a223663326637313364346534366535363333346635646434316563646632323430223b733a33323a226465323133643637333634613931386364346264656335626665316536663832223b733a33323a223366316630636335303239303362633836636338393565313938323738336335223b733a33323a223331323266386661326539323930333462333531333963343161613431326238223b733a33323a223165393337383361656162343862303565663530646565613635333137353135223b733a33323a223037373761313036653461626439663330333861373632623766323766303963223b733a33323a226632613934613164356161313163363537303936306565303730623465383166223b733a33323a223035313465363233363638353938643965633137643836616430623338386464223b733a33323a226630363234616531326238373165356537343461303361616133633938666664223b733a33323a226334393636643661633661353464626133346230303539396264653034383265223b733a33323a223263356531633834646335643865373662383536363232613665653430616231223b733a33323a226433343538643931313764343662303762343534393338646363343938306464223b733a33323a223830343434666139326363623730306530316337366235303162656661333764223b733a33323a223531616639616233626630376631356263303862396236316337333063373964223b733a33323a223465646235383963643432316365616362396162323966623735386436393163223b733a33323a223033626365343466653561633031643239383263663161303564363761643131223b733a33323a223336336466623636303862643939306131666361333234303739656162346131223b733a33323a223733346330333662633366363335326562303131383738623064663834353432223b733a33323a223034386361653665393566656137643335653936336161373561353931613163223b733a33323a223264623231336535336137306631333231636463373739353437323464306233223b733a33323a223065636265623164393162646537333963393662336230326633666231383566223b733a33323a226339666439633261376664373965666337373236306334396461346665366637223b733a33323a226362396464383638383563393834336333373138336662306135376435373231223b733a33323a223863376233323934643965663934623961376630616137316361323666326664223b733a33323a223964326134313133353262613838373761646365363465373139643338323366223b733a33323a223036366163633065663361666165656233663339623132366333386538306463223b733a33323a223165343635646365663330623766393433313864316162646633336132656139223b733a33323a223165623964343565303436326261363230643163626331313534306339393131223b733a33323a223365636233306463363538323438353734656231613063313933636166343966223b733a33323a226266303665323663323933343339323765376435633462306566303134326238223b733a33323a223361653764343361663463366564376631393361623633316434616166386639223b733a33323a223063353631386362643061616565383161663332323136616434366364373235223b733a33323a223834353865636131316361666435623666663633313732313965626336623863223b733a33323a223034333164323763326362326335383239343535633731343766323061666339223b733a33323a223264363431363035316362396536346630356262623739393764613036653565223b733a33323a226233323866653834313733336136393639356537393533653637356365643765223b733a33323a223461326661343232303534333032336332383839613637653031356262666639223b733a33323a226166396465386636313334373666666630636163353763356432343836376630223b733a33323a223532663963333434393633343465333066393330666537636666653564396238223b733a33323a223564303231376264666237326261653434626365363730666434653230353265223b733a33323a223363343331653366393463306564333938386163313132646363623837666433223b733a33323a223337376335616538613662643261373330356536383431353664663939643530223b733a33323a226335333539366330323265366436643239303037613461663366643462666339223b733a33323a226265333630373432336165353430386564633364383037356262393131373030223b733a33323a223732643463356230616638346462386163303432373533333633396130623530223b733a33323a223430653836393539343835363839323737633330313838383636346634373332223b733a33323a226562336630616531366632346334363437646166353364653861306261303563223b733a33323a223262356238343830393038646532376237653137653861636437613439336336223b733a33323a223266326133373863323538356432636635636364363731343237313339313839223b733a33323a226135663438323334393162613737643065303763646563643661336331356564223b733a33323a223039323734643662663962616466653230326366363166303332663036376536223b733a33323a223766313265353664363436633938393365343266316138663830666139316638223b733a33323a223963616533646531636438393132353834326132396139343335303537653232223b733a33323a226237313133623931323561316235356439333463653962396161373362356366223b733a33323a226266383932383465393832613261633233623130663334396335343333646239223b733a33323a226336633766366162356331323764376331376264326437303632303832396330223b733a33323a226237306665366436353936376562623736393930373634666665343765386362223b733a33323a223433303736643632313061353130356130383434623035313130333732313636223b733a33323a223336333662333236333834643233663230353836656465666237376332663339223b733a33323a226433353261303964636365323037343435393362373563303465366233653831223b733a33323a226434653264653463373163386162363331633738663731656263353932363966223b733a33323a223034383563666634373132333063636162353630303532323730316166316363223b733a33323a223735383766313936363462336334663262313432623438653738326339626264223b733a33323a223535303033346538386164633666306462313039396232333566383265653132223b733a33323a226163646339343830303634656661306562636530633933303332653932326633223b733a33323a226337623735396130636638393034323565363433613865323163396466656134223b733a33323a226332656134393835376530323430353035396335333239653363643365393436223b733a33323a223537323037333466633633353762333339663565396664353234323365613435223b733a33323a223266393833303438643935616433323935626164333731636165666136623361223b733a33323a223933353630313065323237333837396537363963663562313835326465626532223b733a33323a223736623432323163386638363731393635353830666364356461326535623533223b733a33323a223763343831376235356330323133636166376562323964363334666661613063223b733a33323a226137383232663737336162353731336237393332613161663366343734323038223b733a33323a226436376461316633313535326264373864653336346538616238303761353938223b733a33323a223664313931666561626266353137313165343739383134333538363763636535223b733a33323a223136306162353234366364626232373838643537386338363366316366333863223b733a33323a226564613135366339306539366537313031663164396662646235373737323733223b733a33323a223930623230353137653537626432346363363162333234613261663230306531223b733a33323a223130313166613433303234393730333439363736613834623737616262613261223b733a33323a223430383936323437396235386633316633643737366564363664666565396164223b733a33323a226635633234646532313662643534623866613739356665646566613862366334223b733a33323a226339383131356266366335616637653266393733383764643139613731316163223b733a33323a223738666162343937623964323264383366323161323166663435366261363731223b733a33323a223565333463656535376663663035303734363632383131616534613239383836223b733a33323a223335646461333764313362303733613430613231393033306632333362616237223b733a33323a223366616364626166306139656664616330346332643139623937636230663965223b733a33323a223763383336633639343933663166303631383731643138333334376462633539223b733a33323a226366616664343935383733353338306439303630616237333866636337323065223b733a33323a226463646335363064316232343964353361373662306163313935663463633062223b733a33323a223539353333653064613764663330323662613638396639666264323038636161223b733a33323a223538386439346236336463393064656139626365323866333438336662313565223b733a33323a226235333134636431616536656564643333653438393938336461656536303132223b733a33323a223062643136326538333535633339363133643532333737373838663935313939223b733a33323a223235623133613833663639643963396331393337383535333766313239346336223b733a33323a226533613536656166323337396262653131323033623464336432646639663865223b733a33323a223338326431376664326232313666363931373464616532653539636237623264223b733a33323a223263326230373838323335613337316165373465313539323337373664326536223b733a33323a226465633837323532613637343338656438316662386464333063333430633737223b733a33323a223331363365376532666434386332323166333363393438323536653337326633223b733a33323a226464663961333838323539306639663939303539363433646463366531633462223b733a33323a223631376565663139383366613830333966613636383163363063653330333139223b733a33323a226361356435383335313135386530643361323364303765366563386137623539223b733a33323a223237646234316338623631363037366436623237633838643664613032326139223b733a33323a226439613937336235353536626464313432653965333037653733356332326335223b733a33323a223338636566313334343165313931326462636338376231353431336339383635223b733a33323a226130653535373639623133366138313163376463353135353730656237386630223b733a33323a223739396334316563386430306633393431326639623730313631393432363534223b733a33323a226365333537303636346535393730333964313037383462363861313831393435223b733a33323a223061396463383436613662393962393231653831333831303938373164313133223b733a33323a226132363661313461643263306534376636653937386136373234643634333763223b733a33323a226534353535376333383465373634666234613937316337623163396638326331223b733a33323a223063616332303330626631366635353639386563626430333136636335633533223b733a33323a223636623235616530333331383838663132663465353833303730376335396331223b733a33323a226564363864636265333433643439313235623833613332333832356163633062223b733a33323a226238613031343735346361393438656131326236336465336561633561356637223b733a33323a223237303333366266363534643833636464313961376636613039636435653439223b733a33323a223166613638343732663034653339363135313938366138616530653737346262223b733a33323a223137313736613166613033386566313734383539663731353963636266373637223b733a33323a223965396464656266336232366435633431373638386533313965343139363135223b733a33323a223334343336326434643339343361376532643834346638643336336531363535223b733a33323a223639633637626664333939613431653363333838353438396435653538376438223b733a33323a223435646364663066303264333734623832323839386338306332313431393864223b733a33323a223365343738626665326335323566633334323634353662626462646363306237223b733a33323a223433623262303165373561633239336662346232353035356561626462373736223b733a33323a226462343935666630633635396165306266363366353764313162343565386334223b733a33323a226231306135383636363237383965313039346130643834343532316161383666223b733a33323a223432633766646362643739366665306238643337326266653838326464343933223b733a33323a223732656339666332323232393664653138316138323961616438386138356238223b733a33323a226438626462366665393437326533656437303730393963333731636162393431223b733a33323a226566636437383831376639393766326437303336336435646562323639653739223b7d733a343a2268617368223b733a36353a2265666364373838313766393937663264373033363364356465623236396537392d6438626462366665393437326533656437303730393963333731636162393431223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226561396365333836313764333138343461373661376563373232643966383538223b733a33323a223234616636623462656436323537626566363662353136316333313433653630223b733a33323a223239353163623263363066353936333166393632646535373731373433333034223b733a33323a226364353439343433366365356661333864393636373063353037333931313130223b733a33323a226365363932346332316662346537396564653061303634663738383534386362223b733a33323a223730353462613839653434313035303737313565393564316539616565656230223b733a33323a226139346536623633343130643130396634396336636333323166313630356361223b733a33323a223663353663623736363733343134656366653439303965366337373635333432223b733a33323a226139333563663939316132323234643235356563396437613663363663303932223b733a33323a226565663064313531346539323635326431623365313832323363323738613062223b733a33323a223337373164366139386339303934383338313336343564663161333038396262223b733a33323a223665656538393032303639616566326535633938353766646364626661356535223b733a33323a223038636235613263623832636666313164653933353863356430353463346634223b733a33323a223931386430623364653166663865353130346566646135356638396436383334223b7d733a343a2268617368223b733a36353a2239313864306233646531666638653531303465666461353566383964363833342d3038636235613263623832636666313164653933353863356430353463346634223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323233323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a223338376161316332346465366431653462663864383236383833613731363461223b733a33323a226635626638643030633665383332643565313230343866303938346634626531223b733a33323a226134323031343733316431376431633164303930653233636639333033333665223b733a33323a226663303662646134343963623534333166363965666535326435323930656564223b733a33323a223936363338353236376638666565353564646162383430326365623261653437223b733a33323a223538353339303963643065643437363764383163333965373234373461303436223b733a33323a223936303731643965343338343264396636646363626134616663333735333537223b733a33323a226530623139643832373533373861663235623765653534666166323566343462223b733a33323a223931376536623337396534343566613431613631373839393364643438303064223b733a33323a226233343139356533386633613533643139363764393036643164393832646663223b733a33323a223666616561643235363436613166393932656130326130333732393864643738223b733a33323a223639376433666430393162343765383362383137373331353264663033303464223b733a33323a226132316162353133383433353239653434313865306562643737633363376261223b733a33323a226438333530303030376663383963623866343337316231323161623966376333223b733a33323a223466666535653364316333626537313532343861346338646465336464383136223b733a33323a223032313864303463333262653066393532663631393037343531373637353965223b733a33323a223238636635393565353933356262303533633633366237383263323836306137223b733a33323a223234306566336637303262643536373633643536396332323836663965623430223b733a33323a226161343863643061306266323365626663373030626636623636363831313236223b733a33323a223236373663373865666434326261363865333836306435643636393166383631223b733a33323a226431333837653330313234396132636264333633333238386166353839333632223b733a33323a226631363036346365666263623731333632666233346336623232363863663033223b733a33323a223231626339343065643164386564663733393766373937663635336634366136223b733a33323a226137386335376236613436323066373738613534636265643731666565373134223b733a33323a223836623331653361613336363033396134323864353163343365383661623532223b733a33323a226361623065376263363530366338626337386361326638393132333463343763223b733a33323a223534383339366664623238383462353261313039653434323666633164386564223b733a33323a223861373365323130306331313866653530336234656132303161633364656233223b733a33323a223036663731643931303863393730626361623162336465363662636164633035223b733a33323a226636363066323361636136383731393233613634613937303734396433306531223b733a33323a223737646137313262303630326366663439656264383166376162666361616333223b733a33323a223261383237613261376563316463316638643838383363373031386238373430223b733a33323a226462663532373332336535343666316531373436336166326465663830326234223b733a33323a223466336165653737646532646565353639323834373537326365616539643731223b733a33323a223061386465333938303335333639663135356664313766313930633235643162223b733a33323a223562323333376562356638353363323062323538333636396330633265636566223b733a33323a226237373466393733633339626233356435323737316639333663646239303932223b733a33323a226130383264326133643266653562373266383736383364613866613639366236223b733a33323a223938653837396534323737643239326366333965323337356234363461303634223b733a33323a226564376639306139383131373133613036376633363130613731656364643566223b733a33323a223433393562633066613266616630656539346431333535613530626637383732223b733a33323a223261646634363739376561336264323634646536616431353231313632313933223b733a33323a223563623235353031373262373434663538306633396135313462656162663362223b733a33323a226165323962363130383332343130383364613765616365393333623638326664223b733a33323a223138333530656536353837616638316566666363393738376466376332636230223b733a33323a223162343439663039383437393433633839656235616666346563326232616164223b733a33323a226162633737323863633766396663343235653935306563383535303836353866223b733a33323a223664313139663562316430376439313263363635383666643332613361646634223b7d733a343a2268617368223b733a36353a2236643131396635623164303764393132633636353836666433326133616466342d6162633737323863633766396663343235653935306563383535303836353866223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605483588);

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
(241, 53, 1, NULL, 'literal', '', 'Master Informatique parcours générale', NULL, 1),
(242, 53, 308, NULL, 'literal', '', 'Master Informatique parcours générale', NULL, 1),
(243, 53, 309, NULL, 'literal', '', 'Departement Informatique', NULL, 1),
(244, 54, 1, NULL, 'literal', '', 'Social network 1', NULL, 1),
(245, 54, 314, NULL, 'literal', '', 'amel.youtube', NULL, 1),
(246, 54, 313, NULL, 'literal', '', 'amel.whatsapp', NULL, 1),
(247, 54, 315, NULL, 'literal', '', 'https://amel.com', NULL, 1),
(248, 54, 312, NULL, 'literal', '', 'amel mourah', NULL, 1),
(249, 54, 310, NULL, 'literal', '', 'amel', NULL, 1),
(250, 54, 311, NULL, 'literal', '', 'amel mourah', NULL, 1),
(251, 55, 1, NULL, 'literal', '', 'arts plastique', NULL, 1),
(252, 55, 305, NULL, 'literal', '', 'arts plastique', NULL, 1),
(253, 55, 306, NULL, 'literal', '', 'habib balit', NULL, 1),
(254, 55, 307, NULL, 'literal', '', 'octobre - decembre 2020', NULL, 1),
(255, 56, 1, NULL, 'literal', '', 'intellegence artificiel', NULL, 1),
(256, 56, 305, NULL, 'literal', '', 'intellegence artificiel', NULL, 1),
(257, 56, 306, NULL, 'literal', '', 'prof cours 2', NULL, 1),
(258, 56, 307, NULL, 'literal', '', 'oct dec 2020', NULL, 1),
(259, 57, 1, NULL, 'literal', '', 'big data', NULL, 1),
(260, 57, 305, NULL, 'literal', '', 'big data', NULL, 1),
(261, 57, 306, NULL, 'literal', '', 'prof cours 3', NULL, 1),
(262, 57, 307, NULL, 'literal', '', 'oct - dec 2020', NULL, 1),
(263, 58, 1, NULL, 'literal', '', 'Reseau 1 ', NULL, 1),
(264, 58, 314, NULL, 'literal', '', 'youtube 1 ', NULL, 1),
(265, 58, 313, NULL, 'literal', '', 'whatsapp 1 ', NULL, 1),
(266, 58, 315, NULL, 'literal', '', 'web site 1 ', NULL, 1),
(267, 58, 312, NULL, 'literal', '', 'linkedin 1 ', NULL, 1),
(268, 58, 310, NULL, 'literal', '', 'facebook 1 ', NULL, 1),
(269, 58, 311, NULL, 'literal', '', 'instagram 1 ', NULL, 1),
(270, 59, 1, NULL, 'literal', '', 'reseau 2 ', NULL, 1),
(271, 59, 314, NULL, 'literal', '', 'youtube 2 ', NULL, 1),
(272, 59, 313, NULL, 'literal', '', 'whatsapp 2', NULL, 1),
(273, 59, 315, NULL, 'literal', '', 'web site 2', NULL, 1),
(274, 59, 312, NULL, 'literal', '', 'linkedin 2', NULL, 1),
(275, 59, 310, NULL, 'literal', '', 'facebook 2', NULL, 1),
(276, 59, 311, NULL, 'literal', '', 'instagram 2', NULL, 1),
(277, 60, 1, NULL, 'literal', '', 'social network 2 ', NULL, 1),
(278, 60, 314, NULL, 'literal', '', 'youtube 2 ', NULL, 1),
(279, 60, 313, NULL, 'literal', '', 'amel ', NULL, 1),
(280, 60, 315, NULL, 'literal', '', 'www.amel.com', NULL, 1),
(281, 60, 312, NULL, 'literal', '', 'linkedin 2 ', NULL, 1),
(282, 60, 310, NULL, 'literal', '', 'amel ', NULL, 1),
(283, 60, 311, NULL, 'literal', '', 'amel mourah ', NULL, 1),
(284, 61, 1, NULL, 'literal', '', 'M2 thype', NULL, 1),
(285, 61, 308, NULL, 'literal', '', 'M2 thype', NULL, 1),
(286, 61, 309, NULL, 'literal', '', 'Informatique', NULL, 1),
(287, 62, 1, NULL, 'literal', '', 'Net', NULL, 1),
(288, 62, 308, NULL, 'literal', '', 'Net', NULL, 1),
(289, 62, 309, NULL, 'literal', '', 'Communication', NULL, 1),
(290, 63, 1, NULL, 'literal', '', 'tina', NULL, 1),
(291, 63, 301, NULL, 'literal', '', 'tina@gmail.com', NULL, 1),
(292, 63, 183, NULL, 'literal', '', '24', NULL, 1),
(293, 63, 144, NULL, 'literal', '', 'ifrene', NULL, 1),
(294, 63, 139, NULL, 'literal', '', 'tina', NULL, 1),
(295, 63, 302, NULL, 'literal', '', '12435', NULL, 1),
(296, 64, 1, NULL, 'literal', '', 'amel', NULL, 1),
(297, 64, 301, NULL, 'literal', '', 'amel@gmail.com', NULL, 1),
(298, 64, 183, NULL, 'literal', '', '22', NULL, 1),
(299, 64, 144, NULL, 'literal', '', 'mourah', NULL, 1),
(300, 64, 139, NULL, 'literal', '', 'amel', NULL, 1),
(301, 64, 302, NULL, 'literal', '', '123546', NULL, 1),
(302, 64, 146, NULL, 'literal', '', '124348', NULL, 1),
(303, 65, 1, NULL, 'literal', '', 'etudiant', NULL, 1),
(304, 65, 301, NULL, 'literal', '', 'habib@gmail.com', NULL, 1),
(305, 65, 183, NULL, 'literal', '', '40', NULL, 1),
(306, 65, 144, NULL, 'literal', '', 'balit', NULL, 1),
(307, 65, 139, NULL, 'literal', '', 'habib', NULL, 1),
(308, 65, 302, NULL, 'literal', '', '2344676', NULL, 1),
(309, 65, 146, NULL, 'literal', '', '0152634', NULL, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

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
