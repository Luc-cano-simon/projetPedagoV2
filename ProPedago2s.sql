-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Jeu 25 Octobre 2018 à 11:25
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ProPedago2s`
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
(1, 'Balade conté :', 'Autour des variétés de blé ancien : En traversant les champs alentours, l’animatrice proposera une présentation ludique autour des différentes variétés de blé. Proposition de peinture avec les épis de blé, écraser, moudre, tamiser seront proposés tout au long de la balade.'),
(2, 'Fabrication de pain : ', 'Avec une recette bien précise, l’animatrice proposera au groupe de façonner des pains autours d’un atelier cuisine.'),
(3, 'Les outils d’hier et d’aujourd’hui :', 'Présentation et utilisation des outils agricoles de la période avant et après industrialisation.'),
(4, 'Atelier nature :', 'Land art, peinture naturelle, teinture sur tissu'),
(5, 'Le métier de boulanger :', 'Fabrication du pain, étape de moulage, pétrissage autour d’un atelier cuisine.'),
(6, 'L’agriculture BIOLOGIQUE :', 'Aborder les avantages de l’agriculture biologique et locale (diététiquement, éthiquement). Définir la culture biologique. Travail de la terre, semence spécifique, rituel des saisons.'),
(7, 'Cuisine sauvage :', 'Ramasser des plantes aromatiques et fabriquer sa tisane ou sachet de thé réutilisable.');

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
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-10-16 12:08:50', NULL);

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
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0', 'http://localhost:8000/admin/presentation20/add-save', 'Add New Data  at Presentation', '', 1, '2018-10-25 06:34:24', NULL);

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
(1, 'reservation', 'Route', 'AdminReservationControllerGetIndex', NULL, 'fa fa-home', 0, 1, 0, 1, 1, '2018-10-16 12:23:13', NULL),
(6, 'activites', 'Route', 'AdminActivitesControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 5, '2018-10-23 09:51:13', NULL),
(7, 'image', 'Route', 'AdminImageControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 6, '2018-10-23 09:52:31', NULL),
(8, 'logo', 'Route', 'AdminLogoControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 7, '2018-10-24 10:59:16', NULL),
(9, 'Presentation', 'Route', 'AdminPresentation20ControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 8, '2018-10-25 06:32:33', NULL);

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
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1);

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
(12, 'reservation', 'fa fa-home', 'reservation', 'reservation', 'AdminReservationController', 0, 0, '2018-10-16 12:23:13', NULL, NULL),
(13, 'Activités', 'fa fa-glass', 'activite', 'activite', 'AdminActiviteController', 0, 0, '2018-10-19 05:35:09', NULL, '2018-10-23 09:51:03'),
(14, 'Presentation', 'fa fa-glass', 'presentation', 'presentation', 'AdminPresentationController', 0, 0, '2018-10-19 07:11:07', NULL, '2018-10-25 06:32:20'),
(15, 'image', 'fa fa-glass', 'img', 'img', 'AdminImgController', 0, 0, '2018-10-22 12:04:56', NULL, '2018-10-22 12:14:34'),
(16, 'contact', 'fa fa-glass', 'contact', 'contact', 'AdminContactController', 0, 0, '2018-10-22 12:31:57', NULL, '2018-10-24 08:29:57'),
(17, 'activites', 'fa fa-glass', 'activites', 'activites', 'AdminActivitesController', 0, 0, '2018-10-23 09:51:13', NULL, NULL),
(18, 'image', 'fa fa-glass', 'image', 'image', 'AdminImageController', 0, 0, '2018-10-23 09:52:31', NULL, NULL),
(19, 'logo', 'fa fa-glass', 'logo', 'logo', 'AdminLogoController', 0, 0, '2018-10-24 10:59:16', NULL, NULL),
(20, 'Presentation', 'fa fa-glass', 'presentation20', 'presentation', 'AdminPresentation20Controller', 0, 0, '2018-10-25 06:32:33', NULL, NULL);

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
(1, 'Super Administrator', 1, 'skin-red', '2018-10-16 12:08:48', NULL);

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
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL);

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
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2018-10-16 12:08:49', NULL, 'Application Setting', 'Google FCM Key');

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
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$RqHxSJO4cjjR4yWJINR1I.XHJtMTIcwJeoY.7NH6rk4OvTvebQoGe', 1, '2018-10-16 12:08:48', NULL, 'Active');

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
(4, 'Monsieur', 'Cano', 'lookystar@hotmail.fr', 'test', '2018-10-24 09:46:19', '2018-10-24 09:46:19');

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
(1, 'Périodes scolaires', 'Mardi et Vendredi '),
(2, 'pendant les vacances scolaire', 'En\r\nfonctions des réservations de groupes'),
(3, 'Pour les famille', 'Un samedi par mois');

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
(5, 'http://img.over-blog-kiwi.com/0/40/58/32/201306/ob_6da53c2ba3131f97f30278e004d4aacb_cute1.jpg'),
(7, 'https://cdn.theatlantic.com/assets/media/img/photo/2015/11/images-from-the-2016-sony-world-pho/s01_130921474920553591/main_900.jpg?1448476701'),
(8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRqv2MlAjo0TNblXVgOGMIS83wfD4BC5Tcko1fN1dwoCIMaWbB'),
(9, 'http://image.noelshack.com/fichiers/2018/43/2/1540302154-johannes-plenio-652155-unsplash.jpg'),
(10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9wqfCFKdTTAaqzjJhorNXUYaYCc3htZOwOivqjqSVoepGzWIn');

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
(1, 'Les lieux se composent  : \r\n- d\'un moulin à vent ( en renovation)\r\n- d\'un moulin électrique\r\n- d\'un fournil\r\n- d\'une salle d\'activité\r\n- de toilettes sèches\r\n- d\'un espace extérieur idyllique', 'Accueil des groupes : \r\n\r\nLa capacité d’accueil se limitera à 24 personnes. Ils seront divisés en 3 parties avec 2 animateurs différents et un accompagnateur du groupe. Les groupes inter changeront d’ateliers en milieu de journée. Un moment de partage sera organisé pendant le temps du repas.\r\n');

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
(27, '2018_10_25_082555_presentation', 3);

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
(1, 'Presentation', 'aventure, découverte, rencontre autour du blé voilà notre devise au fournil du vigneau!  Cueillette de blé, passage du grain au moulin, pétrissage du pain ,cuisson, de 6 à 99 ans venez vous régalez encadré par 2 animatrices professionnelles qui vous donneront le pain à la bouche !', '2018-10-25 06:34:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `presentation1`
--

CREATE TABLE `presentation1` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `presentation1`
--

INSERT INTO `presentation1` (`id`, `titre`, `contenu`) VALUES
(1, 'Presentation', 'Aventure, découverte, rencontre autour du blé voilà notre devise au fournil du vigneau!  Cueillette de blé, passage du grain au moulin, pétrissage du pain ,cuisson, de 6 à 99 ans venez vous régalez encadré par 2 animatrices professionnelles qui vous donneront le pain à la bouche !');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombrePersonne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateRes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Index pour la table `presentation1`
--
ALTER TABLE `presentation1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `horaire`
--
ALTER TABLE `horaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `presentation`
--
ALTER TABLE `presentation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `presentation1`
--
ALTER TABLE `presentation1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
