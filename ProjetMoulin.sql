-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Dim 04 Novembre 2018 à 12:10
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ProjetMoulin`
--

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `activites`
--

INSERT INTO `activites` (`id`, `titre`, `description`) VALUES
(1, '1/ Balade conté :', 'Autour des variétés de blé ancien : En traversant les champs alentours, l’animatrice proposera une présentation ludique autour des différentes variétés de blé. Proposition de peinture avec les épis de blé, écraser, moudre, tamiser seront proposés tout au long de la balade.'),
(2, '2/ Fabrication de pain : ', 'Avec une recette bien précise, l’animatrice proposera au groupe de façonner des pains autours d’un atelier cuisine.'),
(3, '3/ Les outils d’hier et d’aujourd’hui :', 'Présentation et utilisation des outils agricoles de la période avant et après industrialisation.'),
(4, '4/ Atelier nature :', 'Land art, peinture naturelle, teinture sur tissu'),
(5, '5/ Le métier de boulanger :', 'Fabrication du pain, étape de moulage, pétrissage autour d’un atelier cuisine.'),
(6, '6/ L’agriculture Biologique :', 'Aborder les avantages de l’agriculture biologique et locale (diététiquement, éthiquement). Définir la culture biologique. Travail de la terre, semence spécifique, rituel des saisons.'),
(7, '7/ Cuisine sauvage :', 'Ramasser des plantes aromatiques et fabriquer sa tisane ou sachet de thé réutilisable.');

-- --------------------------------------------------------

--
-- Structure de la table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(1, 'activites', 'activites', 'list', NULL, NULL, NULL, NULL, 'activites', NULL, NULL, NULL, NULL, 'get', 'a:3:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:5:\"titre\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:3:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:5:\"titre\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:11:\"description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Structure de la table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-10-16 12:08:50', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-10-25 08:19:39', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-16 12:16:23', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-19 05:34:53', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>près 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</td><td>bonjour je fait des test</td></tr></tbody></table>', 1, '2018-10-19 10:57:16', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>bonjour je fait des test</td><td>ça marche !!!!!!</td></tr></tbody></table>', 1, '2018-10-19 10:57:35', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>ça marche !!!!!!</td><td>test</td></tr></tbody></table>', 1, '2018-10-19 11:55:53', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>test</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit au</td></tr></tbody></table>', 1, '2018-10-19 12:03:32', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit au</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</td></tr></tbody></table>', 1, '2018-10-19 12:06:37', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</td><td><p><b>Après 20 ans de direction en Accueil collectif de mineur sur l’association </b></p><p><br></p><p>Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</p></td></tr></tbody></table>', 1, '2018-10-19 12:07:24', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-21 15:03:34', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost/ProPedago2/public/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-22 09:51:15', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td><p><b>Après 20 ans de direction en Accueil collectif de mineur sur l’association </b></p><p><br></p><p>Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</p></td><td><p>Après 20 ans de direction en Accueil collectif de \r\nmineur sur l’association Les Petits \r\nPrinces situé avenue côte d’argent à Fleurance, Isabelle Dastros \r\nsouhaite créer sa propre activité. Propriétaire d’hectare et de terre \r\nagricole, son projet se définit autour de la création d’une association.\r\n Autour de la thématique du pain, elle souhaite développer des ateliers \r\nludiques et proposer au différent public de s’approprier chaque étape de\r\n sa confection (du semage du blé au façonnage du pain) Elle souhaite \r\naccueillir toutes tranche d’âge et souhaite offrir ce service aux \r\nstructure type centre de loisirs autant que maison de \r\nretraite.\r\n													</p></td></tr></tbody></table>', 1, '2018-10-22 11:19:42', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td><p>Après 20 ans de direction en Accueil collectif de \r\nmineur sur l’association Les Petits \r\nPrinces situé avenue côte d’argent à Fleurance, Isabelle Dastros \r\nsouhaite créer sa propre activité. Propriétaire d’hectare et de terre \r\nagricole, son projet se définit autour de la création d’une association.\r\n Autour de la thématique du pain, elle souhaite développer des ateliers \r\nludiques et proposer au différent public de s’approprier chaque étape de\r\n sa confection (du semage du blé au façonnage du pain) Elle souhaite \r\naccueillir toutes tranche d’âge et souhaite offrir ce service aux \r\nstructure type centre de loisirs autant que maison de \r\nretraite.\r\n													</p></td><td><p>Après 20 ans de direction en Accueil collectif de \r\nmineur sur l’association Les Petits \r\nPrinces situé avenue côte d’argent à Fleurance, Isabelle Dastros \r\nsouhaite créer sa propre activité. Propriétaire d’hectare et de terre \r\nagricole, son projet se définit autour de la création d’une association.\r\n Autour de la thématique du pain, elle souhaite développer des ateliers \r\nludiques et proposer au différent public de s’approprier chaque étape de\r\n sa confection (du semage du blé au façonnage du pain) Elle souhaite \r\naccueillir toutes tranche d’âge et souhaite offrir ce service aux \r\nstructure type centre de loisirs autant que maison de \r\nretraite.\r\n<br></p></td></tr></tbody></table>', 1, '2018-10-22 11:41:23', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td><p>Après 20 ans de direction en Accueil collectif de \r\nmineur sur l’association Les Petits \r\nPrinces situé avenue côte d’argent à Fleurance, Isabelle Dastros \r\nsouhaite créer sa propre activité. Propriétaire d’hectare et de terre \r\nagricole, son projet se définit autour de la création d’une association.\r\n Autour de la thématique du pain, elle souhaite développer des ateliers \r\nludiques et proposer au différent public de s’approprier chaque étape de\r\n sa confection (du semage du blé au façonnage du pain) Elle souhaite \r\naccueillir toutes tranche d’âge et souhaite offrir ce service aux \r\nstructure type centre de loisirs autant que maison de \r\nretraite.\r\n<br></p></td><td><p>test<br></p></td></tr></tbody></table>', 1, '2018-10-22 11:42:06', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td><p>test<br></p></td><td>test</td></tr></tbody></table>', 1, '2018-10-22 11:44:21', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>test</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite</td></tr></tbody></table>', 1, '2018-10-22 11:48:36', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/img/add-save', 'Add New Data  at image', '', 1, '2018-10-22 12:09:44', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/module_generator/delete/15', 'Delete data image at Module Generator', '', 1, '2018-10-22 12:14:34', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/contact/add-save', 'Add New Data  at contact', '', 1, '2018-10-22 12:33:17', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite</td><td>test</td></tr></tbody></table>', 1, '2018-10-22 13:12:25', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>test</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</td></tr></tbody></table>', 1, '2018-10-22 15:20:30', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-23 07:20:55', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/module_generator/delete/13', 'Delete data Activités at Module Generator', '', 1, '2018-10-23 09:51:03', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/activites/edit-save/7', 'Update data  at activites', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-10-23 09:51:46', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 09:53:46', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 10:29:41', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/delete/3', 'Delete data  at image', '', 1, '2018-10-23 10:30:24', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 10:30:28', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 10:31:37', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 11:37:07', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 11:42:51', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/edit-save/9', 'Update data  at image', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>lien_image</td><td>http://www.noelshack.com/2018-43-2-1540302154-johannes-plenio-652155-unsplash.jpg</td><td>http://image.noelshack.com/fichiers/2018/43/2/1540302154-johannes-plenio-652155-unsplash.jpg</td></tr></tbody></table>', 1, '2018-10-23 11:43:20', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/image/add-save', 'Add New Data  at image', '', 1, '2018-10-23 11:59:57', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-24 06:12:08', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation/edit-save/1', 'Update data  at Presentation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>contenu</td><td>Après 20 ans de direction en Accueil collectif de mineur sur l’association Les Petits Princes situé avenue côte d’argent à Fleurance, Isabelle Dastros souhaite créer sa propre activité. Propriétaire d’hectare et de terre agricole, son projet se définit autour de la création d’une association. Autour de la thématique du pain, elle souhaite développer des ateliers ludiques et proposer au différent public de s’approprier chaque étape de sa confection (du semage du blé au façonnage du pain) Elle souhaite accueillir toutes tranche d’âge et souhaite offrir ce service aux structure type centre de loisirs autant que maison de retraite.</td><td>Aventure, découverte, rencontre autour du blé voilà notre devise au fournil du vigneau!  Cueillette de blé, passage du grain au moulin, pétrissage du pain ,cuisson, de 6 à 99 ans venez vous régalez encadré par 2 animatrices professionnelles qui vous donneront le pain à la bouche !</td></tr></tbody></table>', 1, '2018-10-24 06:36:42', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/module_generator/delete/16', 'Delete data contact at Module Generator', '', 1, '2018-10-24 08:29:57', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/logo/delete/1', 'Delete data 1 at logo', '', 1, '2018-10-24 11:00:32', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/logo/add-save', 'Add New Data  at logo', '', 1, '2018-10-24 11:00:39', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/logo/delete/2', 'Delete data 2 at logo', '', 1, '2018-10-24 11:01:31', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/logo/add-save', 'Add New Data  at logo', '', 1, '2018-10-24 11:01:35', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/logo/delete/3', 'Delete data 3 at logo', '', 1, '2018-10-24 11:01:57', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/logo/add-save', 'Add New Data  at logo', '', 1, '2018-10-24 11:02:00', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 06:32:03', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/module_generator/delete/14', 'Delete data Presentation at Module Generator', '', 1, '2018-10-25 06:32:19', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation20/add-save', 'Add New Data  at Presentation', '', 1, '2018-10-25 06:34:24', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 10:47:45', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/presentation20/add-save', 'Add New Data  at Presentation', '', 1, '2018-10-25 10:48:02', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/settings/add-save', 'Add New Data presentation at Settings', '', 1, '2018-10-25 10:49:24', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/settings/add-save', 'Add New Data logo at Settings', '', 1, '2018-10-25 10:51:30', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/users/add-save', 'Add New Data claire at Users Management', '', 1, '2018-10-25 10:53:34', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 10:53:41', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 10:53:48', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'claire@oulie.fr logout', '', 2, '2018-10-25 10:53:53', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 10:54:07', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/1', 'Update data reservation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2018-10-25 10:54:30', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data activites at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-10-25 10:54:39', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Configuration at Menu Management', '', 1, '2018-10-25 10:56:00', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 10:56:14', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 10:56:18', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 10:56:28', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 10:57:23', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 10:57:26', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'claire@oulie.fr logout', '', 2, '2018-10-25 10:58:43', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 10:58:46', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 11:00:08', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 11:00:13', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/settings/show', 'Try view the data Setting at Setting', '', 2, '2018-10-25 11:00:21', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'claire@oulie.fr logout', '', 2, '2018-10-25 11:01:16', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 11:01:19', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 11:03:54', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 11:03:57', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'claire@oulie.fr logout', '', 2, '2018-10-25 11:04:22', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 11:04:25', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/delete/10', 'Delete data Configuration at Menu Management', '', 1, '2018-10-25 11:04:34', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data activites at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-10-25 11:04:43', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 11:04:50', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 11:04:52', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:52', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:52', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:53', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:54', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:54', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:54', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:54', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:54', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:04:54', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 11:05:02', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-10-25 11:05:08', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 11:05:12', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:12', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:13', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:14', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:16', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:16', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:17', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:18', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire@oulie.fr login with IP Address 127.0.0.1', '', 2, '2018-10-25 11:05:49', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:49', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:50', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:51', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:51', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:51', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:51', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin', 'Try view the data :name at ', '', 2, '2018-10-25 11:05:51', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-25 11:05:56', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data activites at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-10-25 11:06:09', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data n_activités at Statistic Builder', '', 1, '2018-10-25 11:06:28', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/statistic_builder/delete/1', 'Delete data n_activités at Statistic Builder', '', 1, '2018-10-25 11:07:31', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/presentation20/delete/2', 'Delete data  at Presentation', '', 1, '2018-10-25 13:16:23', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-26 11:28:11', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/12', 'Delete data reservation at Module Generator', '', 1, '2018-10-26 11:28:25', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-10-28 07:04:59', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-11-03 15:05:13', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/17', 'Delete data activites at Module Generator', '', 1, '2018-11-03 15:05:33', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/18', 'Delete data image at Module Generator', '', 1, '2018-11-03 15:05:48', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/19', 'Delete data logo at Module Generator', '', 1, '2018-11-03 15:05:50', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/20', 'Delete data Presentation at Module Generator', '', 1, '2018-11-03 15:05:53', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/21', 'Delete data Reservation at Module Generator', '', 1, '2018-11-03 15:05:55', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(176, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/users/delete/2', 'Delete data claire at Users Management', '', 1, '2018-11-03 15:06:26', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/22', 'Delete data Activités at Module Generator', '', 1, '2018-11-03 15:07:57', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/26', 'Delete data Images Galerie at Module Generator', '', 1, '2018-11-03 15:13:25', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/27', 'Delete data Images Galerie at Module Generator', '', 1, '2018-11-03 15:13:45', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/29', 'Delete data Logo Du footer Gauche at Module Generator', '', 1, '2018-11-03 15:15:16', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/30', 'Delete data Logo Du footer Droite at Module Generator', '', 1, '2018-11-03 15:15:18', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-11-03 15:16:28', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-11-03 15:16:32', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/module_generator/delete/32', 'Delete data Logo Du footer Gauche at Module Generator', '', 1, '2018-11-03 15:17:13', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/users/add-save', 'Add New Data Claire Oulier at Users Management', '', 1, '2018-11-03 15:24:12', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/13', 'Update data Activités at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2018-11-03 15:25:11', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/14', 'Update data Contact at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:25:17', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/15', 'Update data Heure d ouverture at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Heure d\'ouverture</td><td>Heure d ouverture</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:25:37', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/18', 'Update data Images Galerie at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:25:45', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/21', 'Update data Logo Du footer Droite at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:25:52', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/23', 'Update data Logo Du footer Gauche at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:26:02', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/24', 'Update data Information at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:26:09', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/25', 'Update data Logo at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:26:16', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/26', 'Update data Texte de Presentation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:26:23', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/menu_management/edit-save/27', 'Update data Reservation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2018-11-03 15:26:29', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-11-03 15:26:35', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-11-03 15:26:50', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/users/edit-save/3', 'Update data Claire Oulier at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td></td><td>$2y$10$PK17ke6C7LtPE.ZRoD5olewnKIedVN46bt1FEDmXrVHjtInGwH0aW</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-11-03 15:27:09', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-11-03 15:27:14', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/login', 'claire_du09@hotmail.fr login with IP Address 127.0.0.1', '', 3, '2018-11-03 15:27:17', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/imageFooterG33/edit-save/1', 'Update data  at Logo Du footer Gauche', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>lien_logo</td><td>https://vignette.wikia.nocookie.net/desencyclopedie/images/4/42/Tracteur.png/revision/latest?cb=20060408190251</td><td>http://image.noelshack.com/fichiers/2018/44/6/1541262808-index.jpeg</td></tr></tbody></table>', 3, '2018-11-03 15:33:39', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/imageFooterG33/edit-save/1', 'Update data  at Logo Du footer Gauche', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>lien_logo</td><td>http://image.noelshack.com/fichiers/2018/44/6/1541262808-index.jpeg</td><td>https://vignette.wikia.nocookie.net/desencyclopedie/images/4/42/Tracteur.png/revision/latest?cb=20060408190251</td></tr></tbody></table>', 3, '2018-11-03 15:35:20', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logo35/edit-save/4', 'Update data  at Logo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>lien_logo</td><td>http://image.noelshack.com/fichiers/2018/43/3/1540385739-logo.png</td><td>http://image.noelshack.com/fichiers/2018/44/6/1541262808-index.jpeg</td></tr></tbody></table>', 3, '2018-11-03 15:36:57', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://localhost:8000/admin/logo35/edit-save/4', 'Update data  at Logo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>lien_logo</td><td>http://image.noelshack.com/fichiers/2018/44/6/1541262808-index.jpeg</td><td>http://image.noelshack.com/fichiers/2018/43/3/1540385739-logo.png</td></tr></tbody></table>', 3, '2018-11-03 15:37:19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(13, 'Activités', 'Route', 'AdminActivites23ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 1, '2018-11-03 15:08:43', '2018-11-03 15:25:10'),
(14, 'Contact', 'Route', 'AdminContactsControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 2, '2018-11-03 15:10:18', '2018-11-03 15:25:16'),
(15, 'Heure d ouverture', 'Route', 'AdminHoraireControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 3, '2018-11-03 15:11:09', '2018-11-03 15:25:37'),
(18, 'Images Galerie', 'Route', 'AdminImage28ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 4, '2018-11-03 15:13:55', '2018-11-03 15:25:45'),
(21, 'Logo Du footer Droite', 'Route', 'AdminImageFooterD31ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 5, '2018-11-03 15:15:35', '2018-11-03 15:25:52'),
(23, 'Logo Du footer Gauche', 'Route', 'AdminImageFooterG33ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 6, '2018-11-03 15:17:30', '2018-11-03 15:26:02'),
(24, 'Information', 'Route', 'AdminInformationsControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 7, '2018-11-03 15:18:04', '2018-11-03 15:26:09'),
(25, 'Logo', 'Route', 'AdminLogo35ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 8, '2018-11-03 15:20:08', '2018-11-03 15:26:16'),
(26, 'Texte de Presentation', 'Route', 'AdminPresentation36ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 9, '2018-11-03 15:20:36', '2018-11-03 15:26:23'),
(27, 'Reservation', 'Route', 'AdminReservations37ControllerGetIndex', 'normal', 'fa fa-pencil', 0, 1, 0, 1, 10, '2018-11-03 15:21:06', '2018-11-03 15:26:29');

-- --------------------------------------------------------

--
-- Structure de la table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 1, 2),
(11, 1, 1),
(14, 10, 2),
(17, 6, 2),
(18, 6, 1),
(19, 11, 1),
(20, 12, 1),
(24, 16, 1),
(25, 17, 1),
(27, 19, 1),
(28, 20, 1),
(30, 22, 1),
(36, 13, 2),
(37, 13, 1),
(38, 14, 2),
(39, 14, 1),
(40, 15, 1),
(41, 18, 2),
(42, 18, 1),
(43, 21, 2),
(44, 21, 1),
(45, 23, 2),
(46, 23, 1),
(47, 24, 2),
(48, 24, 1),
(49, 25, 2),
(50, 25, 1),
(51, 26, 2),
(52, 26, 1),
(53, 27, 2),
(54, 27, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-10-16 12:08:48', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-10-16 12:08:48', NULL, NULL),
(12, 'reservation', 'fa fa-home', 'reservation', 'reservation', 'AdminReservationController', 0, 0, '2018-10-16 12:23:13', NULL, '2018-10-26 11:28:25'),
(13, 'Activités', 'fa fa-glass', 'activite', 'activite', 'AdminActiviteController', 0, 0, '2018-10-19 05:35:09', NULL, '2018-10-23 09:51:03'),
(14, 'Presentation', 'fa fa-glass', 'presentation', 'presentation', 'AdminPresentationController', 0, 0, '2018-10-19 07:11:07', NULL, '2018-10-25 06:32:20'),
(15, 'image', 'fa fa-glass', 'img', 'img', 'AdminImgController', 0, 0, '2018-10-22 12:04:56', NULL, '2018-10-22 12:14:34'),
(16, 'contact', 'fa fa-glass', 'contact', 'contact', 'AdminContactController', 0, 0, '2018-10-22 12:31:57', NULL, '2018-10-24 08:29:57'),
(17, 'activites', 'fa fa-glass', 'activites', 'activites', 'AdminActivitesController', 0, 0, '2018-10-23 09:51:13', NULL, '2018-11-03 15:05:34'),
(18, 'image', 'fa fa-glass', 'image', 'image', 'AdminImageController', 0, 0, '2018-10-23 09:52:31', NULL, '2018-11-03 15:05:48'),
(19, 'logo', 'fa fa-glass', 'logo', 'logo', 'AdminLogoController', 0, 0, '2018-10-24 10:59:16', NULL, '2018-11-03 15:05:51'),
(20, 'Presentation', 'fa fa-glass', 'presentation20', 'presentation', 'AdminPresentation20Controller', 0, 0, '2018-10-25 06:32:33', NULL, '2018-11-03 15:05:53'),
(21, 'Reservation', 'fa fa-glass', 'reservations', 'reservations', 'AdminReservationsController', 0, 0, '2018-10-26 11:28:43', NULL, '2018-11-03 15:05:55'),
(22, 'Activités', 'fa fa-glass', 'activites22', 'activites', 'AdminActivites22Controller', 0, 0, '2018-11-03 15:07:03', NULL, '2018-11-03 15:07:57'),
(23, 'Activités', 'fa fa-pencil', 'activites23', 'activites', 'AdminActivites23Controller', 0, 0, '2018-11-03 15:08:43', NULL, NULL),
(24, 'Contact', 'fa fa-pencil', 'contacts', 'contacts', 'AdminContactsController', 0, 0, '2018-11-03 15:10:17', NULL, NULL),
(25, 'Heure d\'ouverture', 'fa fa-pencil', 'horaire', 'horaire', 'AdminHoraireController', 0, 0, '2018-11-03 15:11:08', NULL, NULL),
(26, 'Images Galerie', 'fa fa-pencil', 'image26', 'image', 'AdminImage26Controller', 0, 0, '2018-11-03 15:12:33', NULL, '2018-11-03 15:13:26'),
(27, 'Images Galerie', 'fa fa-glass', 'image27', 'image', 'AdminImage27Controller', 0, 0, '2018-11-03 15:13:33', NULL, '2018-11-03 15:13:45'),
(28, 'Images Galerie', 'fa fa-pencil', 'image28', 'image', 'AdminImage28Controller', 0, 0, '2018-11-03 15:13:55', NULL, NULL),
(29, 'Logo Du footer Gauche', 'fa fa-pencil', 'imageFooterD', 'imageFooterD', 'AdminImageFooterDController', 0, 0, '2018-11-03 15:14:27', NULL, '2018-11-03 15:15:16'),
(30, 'Logo Du footer Droite', 'fa fa-pencil', 'imageFooterD30', 'imageFooterD', 'AdminImageFooterD30Controller', 0, 0, '2018-11-03 15:14:56', NULL, '2018-11-03 15:15:19'),
(31, 'Logo Du footer Droite', 'fa fa-pencil', 'imageFooterD31', 'imageFooterD', 'AdminImageFooterD31Controller', 0, 0, '2018-11-03 15:15:35', NULL, NULL),
(32, 'Logo Du footer Gauche', 'fa fa-pencil', 'imageFooterG', 'imageFooterG', 'AdminImageFooterGController', 0, 0, '2018-11-03 15:16:04', NULL, '2018-11-03 15:17:13'),
(33, 'Logo Du footer Gauche', 'fa fa-pencil', 'imageFooterG33', 'imageFooterG', 'AdminImageFooterG33Controller', 0, 0, '2018-11-03 15:17:30', NULL, NULL),
(34, 'Information', 'fa fa-pencil', 'informations', 'informations', 'AdminInformationsController', 0, 0, '2018-11-03 15:18:04', NULL, NULL),
(35, 'Logo', 'fa fa-pencil', 'logo35', 'logo', 'AdminLogo35Controller', 0, 0, '2018-11-03 15:20:08', NULL, NULL),
(36, 'Texte de Presentation', 'fa fa-pencil', 'presentation36', 'presentation', 'AdminPresentation36Controller', 0, 0, '2018-11-03 15:20:36', NULL, NULL),
(37, 'Reservation', 'fa fa-pencil', 'reservations37', 'reservations', 'AdminReservations37Controller', 0, 0, '2018-11-03 15:21:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-10-16 12:08:48', NULL),
(2, 'Administrateur', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-10-16 12:08:48', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-10-16 12:08:48', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-10-16 12:08:48', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-10-16 12:08:49', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-10-16 12:08:49', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-10-16 12:08:49', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-10-16 12:08:49', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-10-16 12:08:49', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-10-16 12:08:49', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-10-16 12:08:49', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-10-16 12:08:49', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(29, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(30, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(31, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(32, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 34, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 35, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 36, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 37, NULL, NULL),
(40, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(41, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(43, 1, 1, 1, 1, 1, 2, 28, NULL, NULL),
(44, 1, 1, 1, 1, 1, 2, 34, NULL, NULL),
(45, 1, 1, 1, 1, 1, 2, 35, NULL, NULL),
(46, 1, 1, 1, 1, 1, 2, 31, NULL, NULL),
(47, 1, 1, 1, 1, 1, 2, 33, NULL, NULL),
(48, 1, 1, 1, 1, 1, 2, 37, NULL, NULL),
(49, 1, 1, 1, 1, 1, 2, 36, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-10-16 12:08:49', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-10-16 12:08:49', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-10-16 12:08:49', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-10-16 12:08:49', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-10-16 12:08:49', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'presentation', NULL, 'textarea', NULL, NULL, '2018-10-25 10:49:24', NULL, 'Configuration', 'présentation'),
(18, 'logo', NULL, 'text', NULL, NULL, '2018-10-25 10:51:30', NULL, 'Configuration', 'logo');

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '1729c063e652c4980ac42af943254724', 'chartarea', NULL, 0, 'Untitled', NULL, '2018-10-25 11:06:57', NULL),
(2, 1, '2e515f9f22eabf293df9388f2c902257', 'chartarea', NULL, 0, 'Untitled', NULL, '2018-10-25 11:06:58', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$RqHxSJO4cjjR4yWJINR1I.XHJtMTIcwJeoY.7NH6rk4OvTvebQoGe', 1, '2018-10-16 12:08:48', NULL, 'Active'),
(3, 'Claire Oulier', 'uploads/1/2018-11/logo.png', 'claire_du09@hotmail.fr', '$2y$10$PK17ke6C7LtPE.ZRoD5olewnKIedVN46bt1FEDmXrVHjtInGwH0aW', 2, '2018-11-03 15:24:12', '2018-11-03 15:27:09', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commenters`
--

CREATE TABLE `commenters` (
  `id` int(10) UNSIGNED NOT NULL,
  `commenter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `commenters`
--

INSERT INTO `commenters` (`id`, `commenter`, `updated_at`, `created_at`) VALUES
(1, '\"Merci de votre accueil. Continuez à réaliser du bon pain. A bientôt.\" Deux habitants de chardonnay (Rhône)', NULL, NULL),
(2, '\"Merci à Marmitron d\'avoir insisté pour que ma tante participe à l\'atelier. Très bonne initiative, de votre partage et de votre accueil chaleureux. Bonjour au Limousin et au Massif central\" Elisabeth et Tatie Roslyne', NULL, NULL),
(3, '\"Gracias por este Pan tan bueno y rico\" Carmen', NULL, NULL),
(4, ' \"C\'était géniale! Manger le pain de \"la route du pain\" c\'est trop bon. Hmm Encore merci\" Agnès', NULL, NULL),
(19, 'WDJVHDSKJFVUDSKS', '2018-10-26 08:09:13', '2018-10-26 08:09:13'),
(20, 'Sdxscdsq', '2018-10-26 08:10:32', '2018-10-26 08:10:32'),
(21, 'hgfzqhhdjgtdkjiu', '2018-10-26 08:18:42', '2018-10-26 08:18:42'),
(22, 'test', '2018-10-28 07:19:04', '2018-10-28 07:19:04');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `nom` text NOT NULL,
  `mail` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `type`, `nom`, `mail`, `message`, `updated_at`, `created_at`) VALUES
(1, 'monsieur', 'Denis', 'denis@hotmail.fr', 'trest', NULL, NULL),
(2, 'Orel', '', '', '', '2018-10-24 08:24:01', '2018-10-24 08:24:01'),
(3, 'Monsieur', 'Orel', 'achirot@simplon.co', 'hi !', '2018-10-24 08:25:07', '2018-10-24 08:25:07'),
(4, 'Monsieur', 'Cano', 'lookystar@hotmail.fr', 'test', '2018-10-24 09:46:19', '2018-10-24 09:46:19'),
(6, 'Monsieur', 'fds', 'fdsf', 'fsd', '2018-11-03 15:44:23', '2018-11-03 15:44:23'),
(8, 'Mademoiselle', 'test', 'test', 'je fait des test', '2018-11-03 15:45:16', '2018-11-03 15:45:16'),
(9, 'Monsieur', 'yyyfbvcxb', 'bvcxbcvyy', 'bvcb', '2018-11-03 15:45:42', '2018-11-03 15:45:42'),
(10, 'Monsieur', 'yyyfbvcxb', 'bvcxbcvyy', 'bvcb', '2018-11-03 15:46:34', '2018-11-03 15:46:34'),
(11, 'Monsieur', 'fsqfd', 'f', 'f', '2018-11-03 15:46:41', '2018-11-03 15:46:41'),
(12, 'Monsieur', 'ffff', 'fff', 'fff', '2018-11-03 15:47:30', '2018-11-03 15:47:30'),
(13, 'Monsieur', 'ffff', 'fff', 'fff', '2018-11-03 15:48:45', '2018-11-03 15:48:45');

-- --------------------------------------------------------

--
-- Structure de la table `horaire`
--

CREATE TABLE `horaire` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `horaire`
--

INSERT INTO `horaire` (`id`, `titre`, `info`) VALUES
(1, 'Périodes scolaires : ', 'Mardi et Vendredi '),
(2, 'Pendant les vacances scolaires : ', 'En fonction des réservations de groupes'),
(3, 'Pour les familles : ', 'Un samedi par mois');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `lien_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id`, `lien_image`) VALUES
(5, 'http://image.noelshack.com/fichiers/2018/43/2/1540302316-image-1.jpg'),
(7, 'http://image.noelshack.com/fichiers/2018/43/2/1540302418-image-2.jpg '),
(8, 'http://image.noelshack.com/fichiers/2018/43/2/1540302577-image-5.jpg '),
(9, ' http://image.noelshack.com/fichiers/2018/43/2/1540303203-image-6.jpg  '),
(10, 'http://image.noelshack.com/fichiers/2018/43/2/1540303093-image-4.jpg'),
(11, 'http://image.noelshack.com/fichiers/2018/43/2/1540303507-image-7.jpg'),
(12, 'http://image.noelshack.com/fichiers/2018/43/2/1540304913-image-12.jpg'),
(13, 'http://image.noelshack.com/fichiers/2018/43/2/1540305254-image-11.jpg'),
(14, 'http://image.noelshack.com/fichiers/2018/43/3/1540370713-image-10.jpg'),
(15, 'http://image.noelshack.com/fichiers/2018/43/4/1540467902-img-20140705-185520-317.jpg'),
(16, 'http://image.noelshack.com/fichiers/2018/43/4/1540467982-dsc08994.jpg'),
(17, 'http://image.noelshack.com/fichiers/2018/43/4/1540468263-dsc-0635.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `imageFooterD`
--

CREATE TABLE `imageFooterD` (
  `id` int(10) UNSIGNED NOT NULL,
  `lien_logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `imageFooterD`
--

INSERT INTO `imageFooterD` (`id`, `lien_logo`, `created_at`, `updated_at`) VALUES
(1, 'http://image.noelshack.com/fichiers/2018/44/6/1541258163-ac0dbb1b880eb0f30cde2c33c8bdde17.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `imageFooterG`
--

CREATE TABLE `imageFooterG` (
  `id` int(10) UNSIGNED NOT NULL,
  `lien_logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `imageFooterG`
--

INSERT INTO `imageFooterG` (`id`, `lien_logo`, `created_at`, `updated_at`) VALUES
(1, 'https://vignette.wikia.nocookie.net/desencyclopedie/images/4/42/Tracteur.png/revision/latest?cb=20060408190251', NULL, '2018-11-03 15:35:19');

-- --------------------------------------------------------

--
-- Structure de la table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `titreInfo` text CHARACTER SET utf8 NOT NULL,
  `descriptif` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `informations`
--

INSERT INTO `informations` (`id`, `titreInfo`, `descriptif`) VALUES
(1, 'Les lieux se composent  : \r\n', '- d\'un moulin à vent ( en rénovation)\r\n- d\'un moulin électrique\r\n- d\'un fournil\r\n- d\'une salle d\'activité\r\n- de toilette sèche\r\n- d\'un espace extérieur idyllique'),
(2, 'Les Groupes : ', 'La capacité d’accueil se limitera à 24 personnes. Ils seront divisés en 3 parties avec 2 animateurs différents et un accompagnateur du groupe. Les groupes inter changeront d’ateliers en milieu de journée. Un moment de partage sera organisé pendant le temps du repas.'),
(3, 'Encadrement : ', 'Deux animateurs, et les accompagnants du groupe seront à disposition pour accompagner les groupes sur leurs différents moments d’activités.');

-- --------------------------------------------------------

--
-- Structure de la table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `lien_logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `logo`
--

INSERT INTO `logo` (`id`, `lien_logo`) VALUES
(4, 'http://image.noelshack.com/fichiers/2018/43/3/1540385739-logo.png');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2018_10_16_141108_reservation', 2),
(27, '2018_10_25_082555_presentation', 3),
(28, '2018_11_03_145056_image_footer_g', 4),
(29, '2018_11_03_145104_image_footer_d', 4);

-- --------------------------------------------------------

--
-- Structure de la table `presentation`
--

CREATE TABLE `presentation` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `presentation`
--

INSERT INTO `presentation` (`id`, `titre`, `contenu`, `created_at`, `updated_at`) VALUES
(1, 'Présentation', 'Aventure, découverte, rencontre autour du blé... voilà notre devise au fournil du vigneau!  Cueillette de blé, passage du grain au moulin, pétrissage du pain, cuisson :de 6 à 99 ans... \r\nvenez vous régalez!! Encadré par deux animatrices professionnelles qui vous donneront le pain à la bouche !', '2018-10-25 06:34:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `famille` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendrier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `reservations`
--

INSERT INTO `reservations` (`id`, `famille`, `name`, `calendrier`, `personne`, `mail`, `numero`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'École', 'name', '', 'name', 'email', '2143324', 'sqfd', '2018-10-25 10:22:24', '2018-10-25 10:22:24'),
(2, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:27:37', '2018-10-25 10:27:37'),
(3, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:29:26', '2018-10-25 10:29:26'),
(4, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:29:34', '2018-10-25 10:29:34'),
(5, 'École', 'name', '2018-10-17', 'name', 'email', 'num', 'sqfd', '2018-10-25 10:30:30', '2018-10-25 10:30:30'),
(6, 'École', 'name', '2018-10-29', 'name', 'email', 'num', 'uhuhu', '2018-10-25 10:32:17', '2018-10-25 10:32:17'),
(7, 'École', 'name', '2018-10-02', 'name', 'email', 'num', 'ooiii', '2018-10-25 11:36:22', '2018-10-25 11:36:22'),
(8, 'École', 'name', '2018-10-25', 'max', 'max@hhhh', '9999', 'wesh', '2018-10-25 11:37:51', '2018-10-25 11:37:51'),
(9, 'École', 'name', '2018-10-03', 'name', 'email', 'num', 'iuhjuuju', '2018-10-25 11:41:13', '2018-10-25 11:41:13'),
(10, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 11:41:33', '2018-10-25 11:41:33'),
(11, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:04:22', '2018-10-25 12:04:22'),
(12, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:05:49', '2018-10-25 12:05:49'),
(13, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:08:33', '2018-10-25 12:08:33'),
(14, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:08:56', '2018-10-25 12:08:56'),
(15, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:09:18', '2018-10-25 12:09:18'),
(16, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:09:38', '2018-10-25 12:09:38'),
(17, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:10:35', '2018-10-25 12:10:35'),
(18, 'École', 'name', '2018-10-19', 'name', 'email', 'num', 'nnnn', '2018-10-25 12:10:46', '2018-10-25 12:10:46'),
(19, 'École', '1', '2018-10-25', '1', '1', '1', '1', '2018-10-26 10:10:47', '2018-10-26 10:10:47'),
(20, 'École', '1', '2018-10-25', '1', '1', '1', '1', '2018-10-26 10:11:22', '2018-10-26 10:11:22'),
(21, 'École', 'TEST', '2018-10-24', 'TEST', 'TEST@TEST.TEST', 'TEST', 'TEST', '2018-10-26 10:13:43', '2018-10-26 10:13:43'),
(22, 'Tout seul', 'AUCH', '2018-10-05', 'TAHA', 'MAX@GMAIL.COM', '09898989898', 'COUCOU', '2018-10-26 10:15:22', '2018-10-26 10:15:22'),
(23, 'École', '30', '2018-10-10', 'dd', 'dd', 'dd', 'dd', '2018-10-26 11:27:29', '2018-10-26 11:27:29');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commenters`
--
ALTER TABLE `commenters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `horaire`
--
ALTER TABLE `horaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `imageFooterD`
--
ALTER TABLE `imageFooterD`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `imageFooterG`
--
ALTER TABLE `imageFooterG`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `presentation`
--
ALTER TABLE `presentation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `commenters`
--
ALTER TABLE `commenters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `horaire`
--
ALTER TABLE `horaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `imageFooterD`
--
ALTER TABLE `imageFooterD`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `imageFooterG`
--
ALTER TABLE `imageFooterG`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `presentation`
--
ALTER TABLE `presentation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
