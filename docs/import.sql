-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `actor`;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `actor` (`id`, `firstname`, `lastname`, `photo`) VALUES
(1,	'Frances',	'Conroy',	'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Frances_Conroy_at_PaleyFest_2014_-_13491478183.jpg/220px-Frances_Conroy_at_PaleyFest_2014_-_13491478183.jpg');

DROP TABLE IF EXISTS `character`;
CREATE TABLE `character` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `character` (`id`, `role`, `photo`, `story`) VALUES
(1,	'Moira O\'Hara',	'https://static.wikia.nocookie.net/americanhorrorstory/images/d/df/MoiraOldCropped.PNG/revision/latest?cb=20191120204741',	'Moira O\'Hara est la domestique de la Murder House. Durant des années elle travaille au sein de la maison et a rencontré au cours de ces dernières, plusieurs familles dont les Harmon, derniers arrivés en date.\r\nC\'est une femme d\'apparence mûre mais face au mari Harmon, Ben, Moira a le physique d\'une jeune femme très sensuelle tandis que les femmes de la famille, Violet et Vivien la voit telle qu\'elle est réellement.');

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220924174037',	'2022-09-24 19:40:46',	42),
('DoctrineMigrations\\Version20220924175049',	'2022-09-24 19:50:55',	62);

DROP TABLE IF EXISTS `episode`;
CREATE TABLE `episode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `episode` (`id`, `name`, `resume`, `duration`) VALUES
(1,	'Pilot',	'Les Harmon emménagent à la Murder House. La famille, composée de Vivien la mère, Ben le père et Violet la jeune fille adolescente, ont acheté la maison à la vue de son bas prix, cherchant à fuir un passé trop douloureux. Ben ayant trompé Vivien avec une de ses étudiantes quelques temps après la fausse couche de son épouse, le couple est dans la torpeur mais fait en sorte de prendre un nouveau départ bien que la rancœur soit encore présente. On en oublierait presque Violet, leur fille qui n\'a pas le choix que d\'évoluer dans un nouvel environnement, qui plus est une maison dont le passé lourd et sombre cache de nombreux secrets. ',	51);

DROP TABLE IF EXISTS `season`;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` smallint(6) NOT NULL,
  `episodes_number` smallint(6) NOT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `season` (`id`, `title`, `number`, `episodes_number`, `resume`, `photo`) VALUES
(1,	'Murder House',	1,	12,	'Cette saison est centrée sur la famille Harmon composée de Ben, Vivien et Violet. Vivien a fait une fausse couche et en garde un traumatisme tandis que son mari quelques temps après la trompe avec une de ses étudiantes. Suite à cet adultère, Ben achète une maison à bas prix à Los Angeles, les Harmon quittent alors Boston et emménagent dans la Murder House. \r\n\r\nIl semblerait que cette bâtisse recèle de sombres histoires, notamment plusieurs meurtres, suicides et des secrets plus ensanglantés les uns que les autres. A leur arrivée, ils rencontrent Moira O\'Hara, la domestique qui travaille dans la maison depuis plusieurs décennies. Vivien décidera de la garder car Moira lui fait savoir qu\'elle ne veut pas recevoir de salaire pour continuer à officier chez eux. \r\n\r\nLa voisine, Constance Langdon et sa fille Adélaïde rendent souvent visite aux Harmon. Adélaïde tout particulièrement adore pénétrer dans la maison et semble beaucoup l\'apprécier. \r\nUn étrange homme au visage à moitié brûlé sonne également à la porte et rencontre Ben, cherchant à racheter la demeure et semble obsédé par elle. \r\n\r\nBen étant psychiatre, il continue à voir des patients dans la maison dont un certain Tate Langdon, jeune homme dont s\'éprend rapidement la fille des Harmon, Violet. \r\n\r\nCe qui devait être un nouveau départ finalement pour la famille Harmon va finalement se transformer petit à petit en un horrible cauchemar ! ',	'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD1PWlUevNy_K2GBNoBJPaC6AokkS5s6kq9Q&usqp=CAU');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2022-09-24 18:32:02