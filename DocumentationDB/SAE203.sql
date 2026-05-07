-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 07 mai 2026 à 21:32
-- Version du serveur : 8.0.45-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `Favorite`
--

CREATE TABLE `Favorite` (
  `id_profile` int NOT NULL,
  `id_movie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Favorite`
--

INSERT INTO `Favorite` (`id_profile`, `id_movie`) VALUES
(2, 54),
(2, 60),
(5, 27),
(2, 48);

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `description` text,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12),
(33, 'Top Gun', 1986, 110, 'Jeune as du pilotage et tête brûlée d\'une école réservée à l\'élite de l\'aéronavale US (\"Top Gun\"), Pete Mitchell, dit \"Maverick\", tombe sous le charme d\'une instructrice alors qu\'il est en compétition pour le titre du meilleur pilote...', 'Jim Cash, Jack Epps Jr.', 1, 'top_gun.jpg', 'https://www.youtube.com/embed/xa_z57UatDY?si=pZuh4guhgxVrxRNA', 12),
(34, 'Top Gun: Maverick', 2022, 131, 'Après avoir été l’un des meilleurs pilotes de chasse de la Marine américaine pendant plus de trente ans, Pete “Maverick\" Mitchell continue à repousser ses limites en tant que pilote d\'essai. Il refuse de monter en grade, car cela l’obligerait à renoncer à voler. Il est chargé de former un détachement de jeunes diplômés de l’école Top Gun pour une mission spéciale qu’aucun pilote n\'aurait jamais imaginée. Lors de cette mission, Maverick rencontre le lieutenant Bradley “Rooster” Bradshaw, le fils de son défunt ami, le navigateur Nick “Goose” Bradshaw. Face à un avenir incertain, hanté par ses fantômes, Maverick va devoir affronter ses pires cauchemars au cours d’une mission qui exigera les plus grands des sacrifices.', 'Christopher McQuarrie, Ehren Kruger', 1, 'top_gun_mav.jpg', 'https://www.youtube.com/embed/qSqVVswa420?si=cabyT0kamRmRbBjY', 12),
(48, 'Sonic 1, le film', 2020, 99, 'L\'histoire du hérisson bleu le plus rapide du monde qui arrive sur Terre, sa nouvelle maison. Sonic et son nouveau meilleur ami Tom font équipe pour sauver la planète du diabolique Dr. Robotnik, bien déterminé à régner sur le monde entier.', 'Jeff Fowler', 8, 'sonic-le-film-I.jpg', 'https://www.youtube.com/embed/szby7ZHLnkA?si=H1AHTqHHQvM97Yo_', 0),
(52, 'Coraline', 2009, 100, 'Coraline Jones est une fillette intrépide qui découvre une porte secrète dans sa nouvelle maison. Elle débouche sur un monde parallèle qui ressemble étrangement au sien, mais en mieux. Cependant, cette aventure fantastique devient dangereuse quand sa \"L\'Autre Mère\" tente de la garder prisonnière à jamais.', 'Henry Selick', 9, 'coraline.jpg', 'https://www.youtube.com/embed/MZBDf37W3rM?si=vC3qdnLQvzQG5tPx', 0),
(53, 'À la croisée des mondes : La Boussole d\'or', 2007, 113, 'Dans un monde parallèle où l\'âme humaine prend la forme d\'un animal familier, une courageuse orpheline nommée Lyra voyage vers le Grand Nord pour sauver ses amis kidnappés et percer le mystère d\'une particule cosmique appelée la Poussière.', 'Chris Weitz', 9, 'a-la-croisee-des-mondes.jpg', 'https://www.youtube.com/embed/LHYoOGfBObU?si=f0g7gMp_RjwBCYA5', 10),
(54, 'Spider-Man: Into the Spider-Verse', 2018, 117, 'Spider-Man : Into the Spider-Verse suit les aventures de Miles Morales, un adolescent afro-américain et portoricain qui vit à Brooklyn et s’efforce de s’intégrer dans son nouveau collège à Manhattan. Mais la vie de Miles se complique quand il se fait mordre par une araignée radioactive et se découvre des super-pouvoirs : il est désormais capable d’empoisonner ses adversaires, de se camoufler, de coller littéralement aux murs et aux plafonds ; son ouïe est démultipliée... Dans le même temps, le plus redoutable cerveau criminel de la ville, le Caïd, a mis au point un accélérateur de particules nucléaires capable d’ouvrir un portail sur d’autres univers. Son invention va provoquer l’arrivée de plusieurs autres versions de Spider-Man dans le monde de Miles, dont un Peter Parker plus âgé, Spider-Gwen, Spider-Man Noir, Spider-Cochon et Peni Parker, venue d’un dessin animé japonais.', 'Phil Lord, Rodney Rothman', 5, 'spider-man_into.png', 'https://www.youtube.com/embed/cqGjhVJWtEg?si=8Se4TUReWG6e--F0', 0),
(55, 'Spider-Man: Across the Spider-Verse', 2023, 141, 'Après avoir retrouvé Gwen Stacy, Spider-Man, le sympathique héros originaire de Brooklyn, est catapulté à travers le Multivers, où il rencontre une équipe de Spider-Héros chargée d\'en protéger l\'existence. Mais lorsque les héros s\'opposent sur la façon de gérer une nouvelle menace, Miles se retrouve confronté à eux et doit redéfinir ce que signifie être un héros afin de sauver les personnes qu\'il aime le plus.', 'Phil Lord, Christopher Miller', 5, 'spider-man_across.jpg', 'https://www.youtube.com/embed/cqGjhVJWtEg?si=8Se4TUReWG6e--F0', 0),
(56, 'Sonic 2, le film', 2022, 122, 'Bien installé dans la petite ville de Green Hills, Sonic veut maintenant prouver qu’il a l’étoffe d\' un véritable héros. Un défi de taille se présente à lui quand le Dr Robotnik refait son apparition. Accompagné de son nouveau complice Knuckles, ils sont en quête d’une émeraude dont le pouvoir permettrait de détruire l’humanité toute entière. Pour s’assurer que l’émeraude ne tombe entre de mauvaises mains, Sonic fait équipe avec Tails. Commence alors un voyage à travers le monde, plein de péripéties.', 'Jeff Fowler', 8, 'sonic-le-film-II.jpg', 'https://www.youtube.com/embed/G5kzUpWAusI?si=mCmGW5k7YT2XYVDI', 0),
(57, 'Sonic 3, le film', 2024, 109, 'Sonic, Knuckles et Tails se retrouvent face à un nouvel adversaire, Shadow, mystérieux et puissant ennemi aux pouvoirs inédits. Dépassée sur tous les plans, la Team Sonic va devoir former une alliance improbable pour tenter d’arrêter Shadow et protéger notre planète.', 'Jeff Fowler', 8, 'sonic-le-film-III.jpg', 'https://www.youtube.com/embed/qSu6i2iFMO0?si=-hcAWWSTQLedm69Z', 0),
(58, 'Super Mario Bros, le film', 2023, 92, 'Alors qu’ils tentent de réparer une canalisation souterraine, Mario et son frère Luigi, tous deux plombiers, se retrouvent plongés dans un nouvel univers féerique à travers un mystérieux conduit. Mais lorsque les deux frères sont séparés, Mario s’engage dans une aventure trépidante pour retrouver Luigi. Dans sa quête, il peut compter sur l’aide du champignon Toad, habitant du Royaume Champignon, et les conseils avisés, en matière de techniques de combat, de la Princesse Peach, guerrière déterminée à la tête du Royaume. C’est ainsi que Mario réussit à mobiliser ses propres forces pour aller au bout de sa mission.', 'Matthew Fogel', 5, 'mario_bros.jpg', 'https://www.youtube.com/embed/iwst-UZn3wM?si=pntF_OzGOCKgcapw', 0),
(59, 'Super Mario Galaxy, le film', 2026, 99, 'À peine installés au Royaume Champignon, un mystérieux appel à l\'aide va pousser Mario et Luigi à reprendre du service et plonger dans les zones d’ombre du passé de la princesse Peach. Une mission qui va propulser nos héros et leur nouvelle constellation d’amis, très loin de chez eux, à travers un périple intergalactique, à la découverte de nouveaux mondes où se forgeront des alliances pour le moins inattendues.', 'Matthew Fogel', 5, 'mario_galaxy.webp', 'https://www.youtube.com/embed/BHRN7Oufjw4?si=vwajVGtRqbUUNsIf', 0),
(60, 'WALL-E', 2008, 98, 'Wall E, un petit robot, est le dernier être sur Terre ! Il y a 700 ans, l\'humanité a déserté notre planète en lui laissant le soin de nettoyer la Terre. Mais Wall E a développé un petit défaut technique : une forte personnalité ! Curieux et indiscret, il est surtout très seul. Sa vie va être bouleversée avec l\'arrivée d\'Eve, une petite robot. Wall E va tout mettre en œuvre pour la séduire.', 'Andrew Stanton', 4, 'wall-e.jpg', 'https://www.youtube.com/embed/CZ1CATNbXg0?si=XZxGp0ckvYLvjRci', 0),
(61, 'RRRrrrr !!!', 2004, 98, 'Il y a 37 000 ans, deux tribus voisines vivaient en paix... à un cheveu près. Pendant que la tribu des Cheveux Propres coulait des jours paisibles en gardant pour elle seule le secret de la formule du shampooing, la tribu des Cheveux Sales se lamentait. Son chef décida d\'envoyer un espion pour voler la recette. Mais un événement bien plus grave allait bouleverser la vie des Cheveux Propres : pour la première fois dans l\'histoire de l\'humanité, un crime venait d\'être commis. Comment découvrir son auteur ? Au temps des mammouths et des moumoutes commence la première enquête policière de l\'Histoire.', 'Alain Chabat, Jean-Paul Rouve', 2, 'rrrrrrr.jpg', 'https://www.youtube.com/embed/fYehOKRfngs?si=118h_tZpd860-vwv', 0),
(62, 'Citizenfour', 2014, 114, 'En 2013, Laura Poitras reçoit des e-mails cryptés d\'un mystérieux \"CITIZENFOUR\" qui prétend détenir des preuves de programmes de surveillance illégaux menés par la NSA. Elle se rend à Hong Kong avec les journalistes Glenn Greenwald et Ewen MacAskill pour rencontrer l\'informateur, qui s\'avère être Edward Snowden. Le film capture en temps réel les révélations qui ont secoué le monde et les conséquences immédiates pour Snowden.', 'Laura Poitras', 10, 'citizenfour.jpg', 'https://www.youtube.com/embed/rHaWhUjV96M?si=zYU38ScCUw37f_P9', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Profile`
--

CREATE TABLE `Profile` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Profile`
--

INSERT INTO `Profile` (`id`, `name`, `avatar`, `age`) VALUES
(2, 'test0', 'default-avatar.jpg', 0),
(4, 'test16', 'mario_galaxy.webp', 16),
(5, 'test18', 'sonic-le-film-I.jpg', 18),
(7, 'test12', 'spider-man_into.png', 12),
(8, 'test avant rendu', 'wall-e.jpg', 18);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `Profile`
--
ALTER TABLE `Profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `Profile`
--
ALTER TABLE `Profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
