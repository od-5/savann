-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 15 2015 г., 15:58
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `savann`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add flat page', 7, 'add_flatpage'),
(20, 'Can change flat page', 7, 'change_flatpage'),
(21, 'Can delete flat page', 7, 'delete_flatpage'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add revision', 9, 'add_revision'),
(26, 'Can change revision', 9, 'change_revision'),
(27, 'Can delete revision', 9, 'delete_revision'),
(28, 'Can add version', 10, 'add_version'),
(29, 'Can change version', 10, 'change_version'),
(30, 'Can delete version', 10, 'delete_version'),
(31, 'Can add kv store', 11, 'add_kvstore'),
(32, 'Can change kv store', 11, 'change_kvstore'),
(33, 'Can delete kv store', 11, 'delete_kvstore'),
(34, 'Can add user setting', 12, 'add_usersettings'),
(35, 'Can change user setting', 12, 'change_usersettings'),
(36, 'Can delete user setting', 12, 'delete_usersettings'),
(37, 'Can add placeholder', 13, 'add_placeholder'),
(38, 'Can change placeholder', 13, 'change_placeholder'),
(39, 'Can delete placeholder', 13, 'delete_placeholder'),
(40, 'Can add cms plugin', 14, 'add_cmsplugin'),
(41, 'Can change cms plugin', 14, 'change_cmsplugin'),
(42, 'Can delete cms plugin', 14, 'delete_cmsplugin'),
(43, 'Can add page', 15, 'add_page'),
(44, 'Can change page', 15, 'change_page'),
(45, 'Can delete page', 15, 'delete_page'),
(46, 'Can view page', 15, 'view_page'),
(47, 'Can publish page', 15, 'publish_page'),
(48, 'Can edit static placeholders', 15, 'edit_static_placeholder'),
(49, 'Can add Page global permission', 16, 'add_globalpagepermission'),
(50, 'Can change Page global permission', 16, 'change_globalpagepermission'),
(51, 'Can delete Page global permission', 16, 'delete_globalpagepermission'),
(52, 'Can add Page permission', 17, 'add_pagepermission'),
(53, 'Can change Page permission', 17, 'change_pagepermission'),
(54, 'Can delete Page permission', 17, 'delete_pagepermission'),
(55, 'Can add User (page)', 18, 'add_pageuser'),
(56, 'Can change User (page)', 18, 'change_pageuser'),
(57, 'Can delete User (page)', 18, 'delete_pageuser'),
(58, 'Can add User group (page)', 19, 'add_pageusergroup'),
(59, 'Can change User group (page)', 19, 'change_pageusergroup'),
(60, 'Can delete User group (page)', 19, 'delete_pageusergroup'),
(61, 'Can add title', 20, 'add_title'),
(62, 'Can change title', 20, 'change_title'),
(63, 'Can delete title', 20, 'delete_title'),
(64, 'Can add placeholder reference', 21, 'add_placeholderreference'),
(65, 'Can change placeholder reference', 21, 'change_placeholderreference'),
(66, 'Can delete placeholder reference', 21, 'delete_placeholderreference'),
(67, 'Can add static placeholder', 22, 'add_staticplaceholder'),
(68, 'Can change static placeholder', 22, 'change_staticplaceholder'),
(69, 'Can delete static placeholder', 22, 'delete_staticplaceholder'),
(70, 'Can add alias plugin model', 23, 'add_aliaspluginmodel'),
(71, 'Can change alias plugin model', 23, 'change_aliaspluginmodel'),
(72, 'Can delete alias plugin model', 23, 'delete_aliaspluginmodel'),
(73, 'Can add cache key', 24, 'add_cachekey'),
(74, 'Can change cache key', 24, 'change_cachekey'),
(75, 'Can delete cache key', 24, 'delete_cachekey'),
(76, 'Can add category', 25, 'add_category'),
(77, 'Can change category', 25, 'change_category'),
(78, 'Can delete category', 25, 'delete_category'),
(79, 'Can add comment', 26, 'add_comment'),
(80, 'Can change comment', 26, 'change_comment'),
(81, 'Can delete comment', 26, 'delete_comment'),
(82, 'Can add comment history', 27, 'add_commenthistory'),
(83, 'Can change comment history', 27, 'change_commenthistory'),
(84, 'Can delete comment history', 27, 'delete_commenthistory'),
(85, 'Can add comment bookmark', 28, 'add_commentbookmark'),
(86, 'Can change comment bookmark', 28, 'change_commentbookmark'),
(87, 'Can delete comment bookmark', 28, 'delete_commentbookmark'),
(88, 'Can add comment flag', 29, 'add_commentflag'),
(89, 'Can change comment flag', 29, 'change_commentflag'),
(90, 'Can delete comment flag', 29, 'delete_commentflag'),
(91, 'Can add flag', 30, 'add_flag'),
(92, 'Can change flag', 30, 'change_flag'),
(93, 'Can delete flag', 30, 'delete_flag'),
(94, 'Can add like', 31, 'add_commentlike'),
(95, 'Can change like', 31, 'change_commentlike'),
(96, 'Can delete like', 31, 'delete_commentlike'),
(97, 'Can add topic', 32, 'add_topic'),
(98, 'Can change topic', 32, 'change_topic'),
(99, 'Can delete topic', 32, 'delete_topic'),
(100, 'Can add topic unread', 33, 'add_topicunread'),
(101, 'Can change topic unread', 33, 'change_topicunread'),
(102, 'Can delete topic unread', 33, 'delete_topicunread'),
(103, 'Can add favorite', 34, 'add_topicfavorite'),
(104, 'Can change favorite', 34, 'change_topicfavorite'),
(105, 'Can delete favorite', 34, 'delete_topicfavorite'),
(106, 'Can add topic notification', 35, 'add_topicnotification'),
(107, 'Can change topic notification', 35, 'change_topicnotification'),
(108, 'Can delete topic notification', 35, 'delete_topicnotification'),
(109, 'Can add topic poll', 36, 'add_topicpoll'),
(110, 'Can change topic poll', 36, 'change_topicpoll'),
(111, 'Can delete topic poll', 36, 'delete_topicpoll'),
(112, 'Can add poll choice', 37, 'add_topicpollchoice'),
(113, 'Can change poll choice', 37, 'change_topicpollchoice'),
(114, 'Can delete poll choice', 37, 'delete_topicpollchoice'),
(115, 'Can add poll vote', 38, 'add_topicpollvote'),
(116, 'Can change poll vote', 38, 'change_topicpollvote'),
(117, 'Can delete poll vote', 38, 'delete_topicpollvote'),
(118, 'Can add private topic', 39, 'add_topicprivate'),
(119, 'Can change private topic', 39, 'change_topicprivate'),
(120, 'Can delete private topic', 39, 'delete_topicprivate'),
(121, 'Can add config', 40, 'add_config'),
(122, 'Can change config', 40, 'change_config'),
(123, 'Can delete config', 40, 'delete_config'),
(124, 'Can add user', 41, 'add_user'),
(125, 'Can change user', 41, 'change_user'),
(126, 'Can delete user', 41, 'delete_user'),
(127, 'Can add Блок', 42, 'add_block'),
(128, 'Can change Блок', 42, 'change_block'),
(129, 'Can delete Блок', 42, 'delete_block'),
(130, 'Can add robot', 43, 'add_robot'),
(131, 'Can change robot', 43, 'change_robot'),
(132, 'Can delete robot', 43, 'delete_robot'),
(133, 'Can add keyword', 44, 'add_keyword'),
(134, 'Can change keyword', 44, 'change_keyword'),
(135, 'Can delete keyword', 44, 'delete_keyword'),
(136, 'Can add text model plugin', 45, 'add_textmodelplugin'),
(137, 'Can change text model plugin', 45, 'change_textmodelplugin'),
(138, 'Can delete text model plugin', 45, 'delete_textmodelplugin'),
(139, 'Can add html insert model', 46, 'add_htmlinsertmodel'),
(140, 'Can change html insert model', 46, 'change_htmlinsertmodel'),
(141, 'Can delete html insert model', 46, 'delete_htmlinsertmodel'),
(142, 'Can add block plugin', 47, 'add_blockplugin'),
(143, 'Can change block plugin', 47, 'change_blockplugin'),
(144, 'Can delete block plugin', 47, 'delete_blockplugin'),
(145, 'Can add Слайд', 48, 'add_slider'),
(146, 'Can change Слайд', 48, 'change_slider'),
(147, 'Can delete Слайд', 48, 'delete_slider'),
(148, 'Can add Изображение', 49, 'add_sliderimage'),
(149, 'Can change Изображение', 49, 'change_sliderimage'),
(150, 'Can delete Изображение', 49, 'delete_sliderimage'),
(151, 'Can add slider plugin model', 50, 'add_sliderpluginmodel'),
(152, 'Can change slider plugin model', 50, 'change_sliderpluginmodel'),
(153, 'Can delete slider plugin model', 50, 'delete_sliderpluginmodel'),
(154, 'Can add post translation', 51, 'add_posttranslation'),
(155, 'Can change post translation', 51, 'change_posttranslation'),
(156, 'Can delete post translation', 51, 'delete_posttranslation'),
(157, 'Can add Публикация', 52, 'add_post'),
(158, 'Can change Публикация', 52, 'change_post'),
(159, 'Can delete Публикация', 52, 'delete_post'),
(160, 'Can add logo model plugin', 53, 'add_logomodelplugin'),
(161, 'Can change logo model plugin', 53, 'change_logomodelplugin'),
(162, 'Can delete logo model plugin', 53, 'delete_logomodelplugin'),
(163, 'Can add cats model', 54, 'add_catsmodel'),
(164, 'Can change cats model', 54, 'change_catsmodel'),
(165, 'Can delete cats model', 54, 'delete_catsmodel'),
(166, 'Can add banner model', 55, 'add_bannermodel'),
(167, 'Can change banner model', 55, 'change_bannermodel'),
(168, 'Can delete banner model', 55, 'delete_bannermodel'),
(169, 'Can add gallery model', 56, 'add_gallerymodel'),
(170, 'Can change gallery model', 56, 'change_gallerymodel'),
(171, 'Can delete gallery model', 56, 'delete_gallerymodel'),
(172, 'Can add Галерея', 57, 'add_gallery'),
(173, 'Can change Галерея', 57, 'change_gallery'),
(174, 'Can delete Галерея', 57, 'delete_gallery'),
(175, 'Can add Изображение', 58, 'add_galleryimage'),
(176, 'Can change Изображение', 58, 'change_galleryimage'),
(177, 'Can delete Изображение', 58, 'delete_galleryimage'),
(178, 'Can add menu model', 59, 'add_menumodel'),
(179, 'Can change menu model', 59, 'change_menumodel'),
(180, 'Can delete menu model', 59, 'delete_menumodel'),
(181, 'Can add menu inline', 60, 'add_menuinline'),
(182, 'Can change menu inline', 60, 'change_menuinline'),
(183, 'Can delete menu inline', 60, 'delete_menuinline'),
(184, 'Can add contact model', 61, 'add_contactmodel'),
(185, 'Can change contact model', 61, 'change_contactmodel'),
(186, 'Can delete contact model', 61, 'delete_contactmodel'),
(187, 'Can add Обратная связь', 62, 'add_feedback'),
(188, 'Can change Обратная связь', 62, 'change_feedback'),
(189, 'Can delete Обратная связь', 62, 'delete_feedback');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$15000$4XRVOnu6Ac03$Lt0p2CD1QrbUvIQG7wn6wqiHl7OxMPk9MnvvTZAUFD4=', '2015-03-16 14:15:00', 1, 'admin', '', '', 'admin@admin.ru', 1, 1, '2015-03-16 14:14:19');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_aliaspluginmodel`
--

CREATE TABLE IF NOT EXISTS `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11),
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_b25eaab4` (`plugin_id`),
  KEY `cms_aliaspluginmodel_921abf5c` (`alias_placeholder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_cmsplugin`
--

CREATE TABLE IF NOT EXISTS `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned DEFAULT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `parent_id` int(11),
  `placeholder_id` int(11),
  PRIMARY KEY (`id`),
  KEY `cms_cmsplugin_8512ae7d` (`language`),
  KEY `cms_cmsplugin_b5e4cf8f` (`plugin_type`),
  KEY `cms_cmsplugin_c9e9a848` (`level`),
  KEY `cms_cmsplugin_caf7cc51` (`lft`),
  KEY `cms_cmsplugin_3cfbd988` (`rght`),
  KEY `cms_cmsplugin_656442a0` (`tree_id`),
  KEY `cms_cmsplugin_6be37982` (`parent_id`),
  KEY `cms_cmsplugin_667a6151` (`placeholder_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `cms_cmsplugin`
--

INSERT INTO `cms_cmsplugin` (`id`, `position`, `language`, `plugin_type`, `creation_date`, `changed_date`, `level`, `lft`, `rght`, `tree_id`, `parent_id`, `placeholder_id`) VALUES
(2, 0, 'en', 'TextPlugin', '2015-03-18 06:40:24', '2015-03-18 06:41:35', 0, 1, 2, 2, NULL, 14),
(4, 1, 'ru', 'SliderPlugin', '2015-03-18 07:15:38', '2015-03-18 07:15:45', 0, 1, 2, 4, NULL, 16),
(7, 0, 'en', 'TextPlugin', '2015-03-18 06:20:28', '2015-03-18 07:25:25', 0, 1, 2, 7, NULL, 16),
(8, 1, 'en', 'SliderPlugin', '2015-03-18 07:15:38', '2015-03-18 07:24:56', 0, 1, 2, 8, NULL, 16),
(9, 0, 'en', 'TextPlugin', '2015-03-18 06:40:24', '2015-03-18 07:25:38', 0, 1, 2, 9, NULL, 12),
(10, 0, 'en', 'TextPlugin', '2015-03-18 06:20:28', '2015-03-18 07:25:39', 0, 1, 2, 10, NULL, 17),
(11, 1, 'en', 'SliderPlugin', '2015-03-18 07:15:38', '2015-03-18 07:25:39', 0, 1, 2, 11, NULL, 17),
(17, 0, 'ru', 'LogoPlugin', '2015-03-23 06:53:26', '2015-03-23 06:54:58', 0, 1, 2, 14, NULL, 67),
(19, 0, 'ru', 'LogoPlugin', '2015-03-23 06:53:26', '2015-03-23 06:55:07', 0, 1, 2, 16, NULL, 68),
(20, 0, 'ru', 'CatsPlugin', '2015-04-15 06:51:33', '2015-04-15 06:52:08', 0, 1, 2, 17, NULL, 2),
(23, 0, 'ru', 'CatsPlugin', '2015-04-15 07:06:04', '2015-04-15 07:06:24', 0, 1, 2, 20, NULL, 70),
(24, 0, 'ru', 'CatsPlugin', '2015-04-15 07:06:04', '2015-04-15 07:06:38', 0, 1, 2, 21, NULL, 71),
(25, 1, 'ru', 'BannerPlugin', '2015-04-15 07:09:51', '2015-04-15 07:29:56', 0, 1, 2, 22, NULL, 2),
(29, 2, 'ru', 'BannerPlugin', '2015-04-15 07:31:04', '2015-04-15 07:33:08', 0, 1, 2, 26, NULL, 2),
(30, 0, 'ru', 'CatsPlugin', '2015-04-15 06:51:33', '2015-04-15 07:34:00', 0, 1, 2, 27, NULL, 3),
(31, 1, 'ru', 'BannerPlugin', '2015-04-15 07:09:51', '2015-04-15 07:34:00', 0, 1, 2, 28, NULL, 3),
(32, 2, 'ru', 'BannerPlugin', '2015-04-15 07:31:04', '2015-04-15 07:34:00', 0, 1, 2, 29, NULL, 3),
(33, 1, 'ru', 'SliderPlugin', '2015-03-18 07:15:38', '2015-04-15 07:34:00', 0, 1, 2, 30, NULL, 17),
(34, 0, 'ru', 'GalleryPlugin', '2015-04-15 07:53:11', '2015-04-15 07:53:19', 0, 1, 2, 31, NULL, 42),
(36, 0, 'ru', 'HtmlInsertPlugin', '2015-04-15 09:41:56', '2015-04-15 09:42:20', 0, 1, 2, 33, NULL, 74),
(37, 0, 'ru', 'MenuPlugin', '2015-04-15 09:42:57', '2015-04-15 09:45:35', 0, 1, 2, 34, NULL, 72),
(38, 1, 'ru', 'MenuPlugin', '2015-04-15 09:44:15', '2015-04-15 09:45:00', 0, 1, 2, 35, NULL, 72),
(39, 0, 'ru', 'GalleryPlugin', '2015-04-15 07:53:11', '2015-04-15 09:49:07', 0, 1, 2, 36, NULL, 60),
(40, 0, 'ru', 'MenuPlugin', '2015-04-15 09:42:57', '2015-04-15 09:49:07', 0, 1, 2, 37, NULL, 73),
(41, 1, 'ru', 'MenuPlugin', '2015-04-15 09:44:15', '2015-04-15 09:49:07', 0, 1, 2, 38, NULL, 73),
(42, 0, 'ru', 'HtmlInsertPlugin', '2015-04-15 09:41:56', '2015-04-15 09:49:07', 0, 1, 2, 39, NULL, 75),
(43, 0, 'ru', 'ContactPlugin', '2015-04-15 10:37:27', '2015-04-15 10:59:37', 0, 1, 2, 40, NULL, 28),
(45, 0, 'ru', 'ContactPlugin', '2015-04-15 10:37:27', '2015-04-15 11:21:14', 0, 1, 2, 41, NULL, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_globalpagepermission`
--

CREATE TABLE IF NOT EXISTS `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_0e939a4f` (`group_id`),
  KEY `cms_globalpagepermission_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_globalpagepermission_sites`
--

CREATE TABLE IF NOT EXISTS `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `globalpagepermission_id` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermission_sites_a3d12ecd` (`globalpagepermission_id`),
  KEY `cms_globalpagepermission_sites_9365d6e7` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(70) NOT NULL,
  `changed_by` varchar(70) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publication_end_date` datetime DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `level` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `xframe_options` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  UNIQUE KEY `cms_page_reverse_id_42cae937_uniq` (`reverse_id`,`site_id`,`publisher_is_draft`),
  UNIQUE KEY `cms_page_publisher_is_draft_5e2bf487_uniq` (`publisher_is_draft`,`application_namespace`),
  KEY `cms_page_93b83098` (`publication_date`),
  KEY `cms_page_2247c5f0` (`publication_end_date`),
  KEY `cms_page_db3eb53f` (`in_navigation`),
  KEY `cms_page_1d85575d` (`soft_root`),
  KEY `cms_page_3d9ef52f` (`reverse_id`),
  KEY `cms_page_7b8acfa6` (`navigation_extenders`),
  KEY `cms_page_cb540373` (`limit_visibility_in_menu`),
  KEY `cms_page_4fa1c803` (`is_home`),
  KEY `cms_page_e721871e` (`application_urls`),
  KEY `cms_page_c9e9a848` (`level`),
  KEY `cms_page_caf7cc51` (`lft`),
  KEY `cms_page_3cfbd988` (`rght`),
  KEY `cms_page_656442a0` (`tree_id`),
  KEY `cms_page_b7700099` (`publisher_is_draft`),
  KEY `cms_page_6be37982` (`parent_id`),
  KEY `cms_page_9365d6e7` (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `cms_page`
--

INSERT INTO `cms_page` (`id`, `created_by`, `changed_by`, `creation_date`, `changed_date`, `publication_date`, `publication_end_date`, `in_navigation`, `soft_root`, `reverse_id`, `navigation_extenders`, `template`, `login_required`, `limit_visibility_in_menu`, `is_home`, `application_urls`, `application_namespace`, `level`, `lft`, `rght`, `tree_id`, `publisher_is_draft`, `languages`, `revision_id`, `xframe_options`, `parent_id`, `publisher_public_id`, `site_id`) VALUES
(1, 'admin', 'admin', '2015-03-16 14:18:11', '2015-04-15 11:21:14', '2015-03-16 14:18:11', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 1, NULL, NULL, 0, 1, 2, 1, 1, 'ru,en,tur,tr', 0, 0, NULL, 2, 1),
(2, 'admin', 'admin', '2015-03-16 14:18:11', '2015-04-15 11:21:14', '2015-03-16 14:18:11', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 1, NULL, NULL, 0, 1, 2, 2, 0, 'ru,en,tur,tr', 0, 0, NULL, 1, 1),
(3, 'admin', 'admin', '2015-03-17 06:12:51', '2015-04-15 07:06:38', '2015-03-17 06:18:04', NULL, 1, 0, NULL, '', 'inner.html', 0, NULL, 0, '', NULL, 0, 1, 2, 3, 1, 'ru,en,tur,tr', 0, 0, NULL, 4, 1),
(4, 'admin', 'admin', '2015-03-17 06:18:04', '2015-04-15 07:06:38', '2015-03-17 06:18:04', NULL, 1, 0, NULL, '', 'inner.html', 0, NULL, 0, '', NULL, 0, 1, 6, 4, 0, 'ru,en,tur,tr', 0, 0, NULL, 3, 1),
(5, 'admin', 'admin', '2015-03-18 12:55:53', '2015-04-15 09:51:57', '2015-03-18 12:56:48', NULL, 1, 0, NULL, NULL, 'cats.html', 0, NULL, 0, NULL, NULL, 0, 1, 2, 5, 1, 'ru,en,tr', 0, 0, NULL, 14, 1),
(6, 'admin', 'admin', '2015-03-18 12:56:10', '2015-04-14 15:35:28', '2015-03-18 12:56:46', NULL, 1, 0, NULL, NULL, 'cats.html', 0, NULL, 0, NULL, NULL, 0, 1, 2, 7, 1, 'ru', 0, 0, NULL, 13, 1),
(7, 'admin', 'admin', '2015-03-18 12:56:19', '2015-03-18 12:56:45', '2015-03-18 12:56:45', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 1, 2, 9, 1, 'ru', 0, 0, NULL, 12, 1),
(8, 'admin', 'admin', '2015-03-18 12:56:28', '2015-03-18 12:56:44', '2015-03-18 12:56:43', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 1, 12, 11, 1, 'ru', 0, 0, NULL, 11, 1),
(9, 'admin', 'admin', '2015-03-18 12:56:36', '2015-04-15 11:21:14', '2015-03-18 12:56:42', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 1, 2, 13, 1, 'ru', 0, 0, NULL, 10, 1),
(10, 'admin', 'admin', '2015-03-18 12:56:42', '2015-04-15 11:21:14', '2015-03-18 12:56:42', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 1, 2, 14, 0, 'ru', 0, 0, NULL, 9, 1),
(11, 'admin', 'admin', '2015-03-18 12:56:43', '2015-03-18 12:56:44', '2015-03-18 12:56:43', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 1, 12, 12, 0, 'ru', 0, 0, NULL, 8, 1),
(12, 'admin', 'admin', '2015-03-18 12:56:45', '2015-03-18 12:56:45', '2015-03-18 12:56:45', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 0, 1, 2, 10, 0, 'ru', 0, 0, NULL, 7, 1),
(13, 'admin', 'admin', '2015-03-18 12:56:46', '2015-04-14 15:35:27', '2015-03-18 12:56:46', NULL, 1, 0, NULL, NULL, 'cats.html', 0, NULL, 0, NULL, NULL, 0, 1, 2, 8, 0, 'ru', 0, 0, NULL, 6, 1),
(14, 'admin', 'admin', '2015-03-18 12:56:48', '2015-04-15 09:51:57', '2015-03-18 12:56:48', NULL, 1, 0, NULL, NULL, 'cats.html', 0, NULL, 0, NULL, NULL, 0, 1, 2, 6, 0, 'ru,en,tr', 0, 0, NULL, 5, 1),
(15, 'admin', 'admin', '2015-03-18 12:57:23', '2015-03-18 12:58:45', '2015-03-18 12:58:45', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 2, 3, 11, 1, 'ru', 0, 0, 8, 26, 1),
(16, 'admin', 'admin', '2015-03-18 12:57:34', '2015-04-15 09:49:07', '2015-03-18 12:58:44', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 4, 5, 11, 1, 'ru', 0, 0, 8, 25, 1),
(17, 'admin', 'admin', '2015-03-18 12:57:44', '2015-03-18 12:58:42', '2015-03-18 12:58:42', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 6, 7, 11, 1, 'ru', 0, 0, 8, 24, 1),
(18, 'admin', 'admin', '2015-03-18 12:57:54', '2015-03-18 12:58:41', '2015-03-18 12:58:40', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 8, 9, 11, 1, 'ru', 0, 0, 8, 23, 1),
(19, 'admin', 'admin', '2015-03-18 12:58:04', '2015-03-18 12:58:39', '2015-03-18 12:58:39', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 10, 11, 11, 1, 'ru', 0, 0, 8, 22, 1),
(22, 'admin', 'admin', '2015-03-18 12:58:39', '2015-03-18 12:58:39', '2015-03-18 12:58:39', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 10, 11, 12, 0, 'ru', 0, 0, 11, 19, 1),
(23, 'admin', 'admin', '2015-03-18 12:58:40', '2015-03-18 12:58:41', '2015-03-18 12:58:40', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 8, 9, 12, 0, 'ru', 0, 0, 11, 18, 1),
(24, 'admin', 'admin', '2015-03-18 12:58:42', '2015-03-18 12:58:42', '2015-03-18 12:58:42', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 6, 7, 12, 0, 'ru', 0, 0, 11, 17, 1),
(25, 'admin', 'admin', '2015-03-18 12:58:44', '2015-04-15 09:49:07', '2015-03-18 12:58:44', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 4, 5, 12, 0, 'ru', 0, 0, 11, 16, 1),
(26, 'admin', 'admin', '2015-03-18 12:58:45', '2015-03-18 12:58:45', '2015-03-18 12:58:45', NULL, 1, 0, NULL, NULL, 'INHERIT', 0, NULL, 0, NULL, NULL, 1, 2, 3, 12, 0, 'ru', 0, 0, 11, 15, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_pagepermission`
--

CREATE TABLE IF NOT EXISTS `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_0e939a4f` (`group_id`),
  KEY `cms_pagepermission_1a63c800` (`page_id`),
  KEY `cms_pagepermission_e8701ad4` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_pageuser`
--

CREATE TABLE IF NOT EXISTS `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_e93cb7eb` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_pageusergroup`
--

CREATE TABLE IF NOT EXISTS `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_e93cb7eb` (`created_by_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_page_placeholders`
--

CREATE TABLE IF NOT EXISTS `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholders_1a63c800` (`page_id`),
  KEY `cms_page_placeholders_667a6151` (`placeholder_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `cms_page_placeholders`
--

INSERT INTO `cms_page_placeholders` (`id`, `page_id`, `placeholder_id`) VALUES
(1, 1, 2),
(7, 1, 14),
(8, 1, 15),
(9, 1, 16),
(2, 2, 3),
(5, 2, 12),
(6, 2, 13),
(10, 2, 17),
(3, 3, 10),
(60, 3, 69),
(61, 3, 70),
(4, 4, 11),
(11, 4, 18),
(62, 4, 71),
(12, 5, 19),
(13, 5, 20),
(14, 6, 21),
(15, 6, 22),
(16, 7, 23),
(17, 7, 24),
(18, 8, 25),
(19, 8, 26),
(20, 9, 27),
(21, 9, 28),
(22, 10, 29),
(23, 10, 30),
(24, 11, 31),
(25, 11, 32),
(26, 12, 33),
(27, 12, 34),
(28, 13, 35),
(29, 13, 36),
(30, 14, 37),
(31, 14, 38),
(32, 15, 39),
(33, 15, 40),
(34, 16, 41),
(35, 16, 42),
(36, 17, 43),
(37, 17, 44),
(38, 18, 45),
(39, 18, 46),
(40, 19, 47),
(41, 19, 48),
(46, 22, 53),
(47, 22, 54),
(48, 23, 55),
(49, 23, 56),
(50, 24, 57),
(51, 24, 58),
(52, 25, 59),
(53, 25, 60),
(54, 26, 61),
(55, 26, 62);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_placeholder`
--

CREATE TABLE IF NOT EXISTS `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) DEFAULT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_5e97994e` (`slot`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Дамп данных таблицы `cms_placeholder`
--

INSERT INTO `cms_placeholder` (`id`, `slot`, `default_width`) VALUES
(1, 'clipboard', NULL),
(2, 'content', NULL),
(3, 'content', NULL),
(4, 'head', NULL),
(5, 'head', NULL),
(6, 'footer', NULL),
(7, 'footer', NULL),
(8, 'counter', NULL),
(9, 'counter', NULL),
(10, 'content', NULL),
(11, 'content', NULL),
(12, 'slogan', NULL),
(13, 'slider', NULL),
(14, 'slogan', NULL),
(15, 'slider', NULL),
(16, 'header', NULL),
(17, 'header', NULL),
(18, 'header', NULL),
(19, 'header', NULL),
(20, 'content', NULL),
(21, 'header', NULL),
(22, 'content', NULL),
(23, 'header', NULL),
(24, 'content', NULL),
(25, 'header', NULL),
(26, 'content', NULL),
(27, 'header', NULL),
(28, 'content', NULL),
(29, 'header', NULL),
(30, 'content', NULL),
(31, 'header', NULL),
(32, 'content', NULL),
(33, 'header', NULL),
(34, 'content', NULL),
(35, 'header', NULL),
(36, 'content', NULL),
(37, 'header', NULL),
(38, 'content', NULL),
(39, 'header', NULL),
(40, 'content', NULL),
(41, 'header', NULL),
(42, 'content', NULL),
(43, 'header', NULL),
(44, 'content', NULL),
(45, 'header', NULL),
(46, 'content', NULL),
(47, 'header', NULL),
(48, 'content', NULL),
(53, 'header', NULL),
(54, 'content', NULL),
(55, 'header', NULL),
(56, 'content', NULL),
(57, 'header', NULL),
(58, 'content', NULL),
(59, 'header', NULL),
(60, 'content', NULL),
(61, 'header', NULL),
(62, 'content', NULL),
(67, 'logo', NULL),
(68, 'logo', NULL),
(69, 'header', NULL),
(70, 'content_bottom', NULL),
(71, 'content_bottom', NULL),
(72, 'footer_menu', NULL),
(73, 'footer_menu', NULL),
(74, 'copyright', NULL),
(75, 'copyright', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_placeholderreference`
--

CREATE TABLE IF NOT EXISTS `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_328d0afc` (`placeholder_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_bannermodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_bannermodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `blank` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_bannermodel`
--

INSERT INTO `cms_plugins_bannermodel` (`cmsplugin_ptr_id`, `file`, `blank`, `url`, `width`, `height`) VALUES
(25, 'catalog/glavnaia.swf', 1, 'http://ya.ru', '1000', '250'),
(29, 'catalog/glavnaia.png', 1, 'http://www.rkz.ru/', '1000', '150'),
(31, 'catalog/glavnaia.swf', 1, 'http://ya.ru', '1000', '250'),
(32, 'catalog/glavnaia.png', 1, 'http://www.rkz.ru/', '1000', '150');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_block`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_blockplugin`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_blockplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_plugins_blockplugin_7e53bca2` (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_catsmodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_catsmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `auto` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_catsmodel`
--

INSERT INTO `cms_plugins_catsmodel` (`cmsplugin_ptr_id`, `name`, `auto`) VALUES
(20, 'Котята в наличии', 1),
(23, 'Котята в наличии', 0),
(24, 'Котята в наличии', 0),
(30, 'Котята в наличии', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_catsmodel_cats`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_catsmodel_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catsmodel_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `catsmodel_id` (`catsmodel_id`,`post_id`),
  KEY `cms_plugins_catsmodel_cats_a3225c00` (`catsmodel_id`),
  KEY `cms_plugins_catsmodel_cats_f3aa1999` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `cms_plugins_catsmodel_cats`
--

INSERT INTO `cms_plugins_catsmodel_cats` (`id`, `catsmodel_id`, `post_id`) VALUES
(1, 23, 11),
(2, 23, 12),
(3, 23, 13),
(4, 24, 11),
(5, 24, 12),
(6, 24, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_contactmodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_contactmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_form` varchar(255) NOT NULL,
  `map` longtext,
  `contact_info` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_contactmodel`
--

INSERT INTO `cms_plugins_contactmodel` (`cmsplugin_ptr_id`, `name`, `name_form`, `map`, `contact_info`) VALUES
(43, 'Контакты', 'Обратная связь', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416" width="400" height="300" frameborder="0" style="border:0"></iframe>', '<p>The Company Name Inc.<br>\r\n\r\n	9863 - 9867 Mill Road,<br>\r\n\r\n	Cambridge, MG09 99HT.\r\n</p>\r\n\r\n<p>Freephone:+1 800 559 6580</br>\r\nTelephone:+1 800 603 6035<br>\r\nFAX:+1 800 889 9898<br>\r\nE-mail: <a href="/" class="link">mail@demolink.org</a></p>'),
(45, 'Контакты', 'Обратная связь', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416" width="400" height="300" frameborder="0" style="border:0"></iframe>', '<p>The Company Name Inc.<br>\r\n\r\n	9863 - 9867 Mill Road,<br>\r\n\r\n	Cambridge, MG09 99HT.\r\n</p>\r\n\r\n<p>Freephone:+1 800 559 6580</br>\r\nTelephone:+1 800 603 6035<br>\r\nFAX:+1 800 889 9898<br>\r\nE-mail: <a href="/" class="link">mail@demolink.org</a></p>');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_gallerymodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_gallerymodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_plugins_gallerymodel_6d994cdb` (`gallery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_gallerymodel`
--

INSERT INTO `cms_plugins_gallerymodel` (`cmsplugin_ptr_id`, `gallery_id`) VALUES
(34, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_htmlinsertmodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_htmlinsertmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `html` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_htmlinsertmodel`
--

INSERT INTO `cms_plugins_htmlinsertmodel` (`cmsplugin_ptr_id`, `name`, `html`) VALUES
(36, 'Copyright', '<span class="color-1">Labrador Breeder</span> <span class="indent-textbot">&copy; 2011</span> <a\r\n                        href="/" class="">Privacy policy</a>'),
(42, 'Copyright', '<span class="color-1">Labrador Breeder</span> <span class="indent-textbot">&copy; 2011</span> <a\r\n                        href="/" class="">Privacy policy</a>');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_keyword`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_plugins_keyword_1a63c800` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_logomodelplugin`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_logomodelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_logomodelplugin`
--

INSERT INTO `cms_plugins_logomodelplugin` (`cmsplugin_ptr_id`, `name`, `href`, `text`) VALUES
(17, 'Labrador Breeder', '/', 'Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\r\nand the best breeders across the country.'),
(19, 'Labrador Breeder', '/', 'Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\r\nand the best breeders across the country.');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_menuinline`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_menuinline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `html` tinyint(1) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_plugins_menuinline_b25eaab4` (`plugin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `cms_plugins_menuinline`
--

INSERT INTO `cms_plugins_menuinline` (`id`, `name`, `url`, `html`, `plugin_id`) VALUES
(1, 'TICA', '/', 0, 37),
(2, 'TICA стандарт', '/', 0, 37),
(3, 'Котята в продаже', '/', 0, 37),
(4, 'Имена для Саванн', '/', 0, 37),
(5, 'Рекомендации по уходу', '/', 0, 38),
(6, 'Выпускники ', '/', 0, 38),
(7, 'Про Сервалов', '/', 0, 38),
(8, 'Дикие породы', '/', 0, 38),
(9, 'Рекомендованные доктора', '/', 0, 38),
(10, 'Фотограф', '/', 0, 37),
(11, 'TICA', '/', 0, 40),
(12, 'TICA стандарт', '/', 0, 40),
(13, 'Котята в продаже', '/', 0, 40),
(14, 'Имена для Саванн', '/', 0, 40),
(15, 'Фотограф', '/', 0, 40),
(16, 'Рекомендации по уходу', '/', 0, 41),
(17, 'Выпускники ', '/', 0, 41),
(18, 'Про Сервалов', '/', 0, 41),
(19, 'Дикие породы', '/', 0, 41),
(20, 'Рекомендованные доктора', '/', 0, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_menumodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_menumodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_menumodel`
--

INSERT INTO `cms_plugins_menumodel` (`cmsplugin_ptr_id`) VALUES
(37),
(38),
(40),
(41);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_robot`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_robot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_slider`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `cms_plugins_slider`
--

INSERT INTO `cms_plugins_slider` (`id`, `name`) VALUES
(1, 'Саванны');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_sliderimage`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_sliderimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_plugins_sliderimage_38b8dc22` (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `cms_plugins_sliderimage`
--

INSERT INTO `cms_plugins_sliderimage` (`id`, `image`, `slider_id`, `sort`) VALUES
(1, 'catalog/f3637f89-45de-46d6-adbe-a03d5db79d65.jpg', 1, 1),
(2, 'catalog/457e5c14-e2ad-408f-b5f0-e74ec7c31bc5.jpg', 1, 2),
(3, 'catalog/197b9492-6140-4c1f-9eef-363cc8e2b605.jpg', 1, 4),
(4, 'catalog/29764ad9-c4ce-4fa9-88bb-11af579a143a.jpg', 1, 3),
(5, 'catalog/a4aeeaec-e1f1-43bd-a1d9-1284089d0135.jpg', 1, 5),
(6, 'catalog/eb825118-d5ef-4732-80c8-8cc10581f4a3.jpg', 1, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_sliderpluginmodel`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_sliderpluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_plugins_sliderpluginmodel_38b8dc22` (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_sliderpluginmodel`
--

INSERT INTO `cms_plugins_sliderpluginmodel` (`cmsplugin_ptr_id`, `slider_id`) VALUES
(4, 1),
(8, 1),
(11, 1),
(33, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_plugins_textmodelplugin`
--

CREATE TABLE IF NOT EXISTS `cms_plugins_textmodelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_block` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `h` varchar(255) DEFAULT NULL,
  `text` longtext,
  PRIMARY KEY (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cms_plugins_textmodelplugin`
--

INSERT INTO `cms_plugins_textmodelplugin` (`cmsplugin_ptr_id`, `class_block`, `name`, `h`, `text`) VALUES
(2, '', '', NULL, '<h1 class="logo">\r\n	<a href="/">Labrador Breeder</a>\r\n</h1><p>\r\n<span class="slogan">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\r\n</p>'),
(7, '', '', NULL, '<h1 class="logo"><a href="/">Labrador Breeder</a>\r\n</h1>\r\n<p>\r\n	<span class="slogan"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\r\nand the best breeders across the country.</strong></span>\r\n</p>'),
(9, '', '', NULL, '<h1 class="logo">\r\n	<a href="/">Labrador Breeder</a>\r\n</h1><p>\r\n<span class="slogan">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\r\n</p>'),
(10, '', '', NULL, '<h1 class="logo"><a href="/">Labrador Breeder</a>\r\n</h1>\r\n<p>\r\n	<span class="slogan"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\r\nand the best breeders across the country.</strong></span>\r\n</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `cms_staticplaceholder`
--

CREATE TABLE IF NOT EXISTS `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_601f1ba7_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_5cb48773` (`draft_id`),
  KEY `cms_staticplaceholder_1ee2744d` (`public_id`),
  KEY `cms_staticplaceholder_9365d6e7` (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `cms_staticplaceholder`
--

INSERT INTO `cms_staticplaceholder` (`id`, `name`, `code`, `dirty`, `creation_method`, `draft_id`, `public_id`, `site_id`) VALUES
(1, 'head', 'head', 0, 'template', 4, 5, NULL),
(2, 'footer', 'footer', 0, 'template', 6, 7, NULL),
(3, 'counter', 'counter', 0, 'template', 8, 9, NULL),
(4, 'logo', 'logo', 0, 'template', 67, 68, NULL),
(5, 'footer_menu', 'footer_menu', 0, 'template', 72, 73, NULL),
(6, 'copyright', 'copyright', 0, 'template', 74, 75, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_title`
--

CREATE TABLE IF NOT EXISTS `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(255) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_507a9d79_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_8512ae7d` (`language`),
  KEY `cms_title_2dbcba41` (`slug`),
  KEY `cms_title_d6fe1d0b` (`path`),
  KEY `cms_title_1268de9a` (`has_url_overwrite`),
  KEY `cms_title_b7700099` (`publisher_is_draft`),
  KEY `cms_title_f7202fc0` (`publisher_state`),
  KEY `cms_title_1a63c800` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `cms_title`
--

INSERT INTO `cms_title` (`id`, `language`, `title`, `page_title`, `menu_title`, `meta_description`, `slug`, `path`, `has_url_overwrite`, `redirect`, `creation_date`, `published`, `publisher_is_draft`, `publisher_state`, `page_id`, `publisher_public_id`) VALUES
(1, 'ru', 'Главная', '', '', '', 'glavnaya', '', 0, NULL, '2015-03-16 14:18:11', 1, 1, 0, 1, 2),
(2, 'ru', 'Главная', '', '', '', 'glavnaya', '', 0, NULL, '2015-03-16 14:18:11', 1, 0, 1, 2, 1),
(3, 'en', 'Home', '', '', '', 'home', '', 0, NULL, '2015-03-16 14:18:26', 1, 1, 0, 1, 5),
(4, 'tur', 'Ana Sayfa', '', '', '', 'ana-sayfa', '', 0, NULL, '2015-03-17 06:04:31', 1, 1, 0, 1, 6),
(5, 'en', 'Home', '', '', '', 'home', '', 0, NULL, '2015-03-16 14:18:26', 1, 0, 1, 2, 3),
(6, 'tur', 'Ana Sayfa', '', '', '', 'ana-sayfa', '', 0, NULL, '2015-03-17 06:04:31', 1, 0, 0, 2, 4),
(7, 'ru', 'Саванны', '', '', '', 'savanny', 'savanny', 0, '', '2015-03-17 06:12:51', 1, 1, 0, 3, 10),
(8, 'en', 'About savannas', '', '', '', 'about-savannas', 'about-savannas', 0, NULL, '2015-03-17 06:13:01', 1, 1, 0, 3, 11),
(9, 'tur', 'Savan kedileri', '', '', '', 'savan-kedileri', 'savan-kedileri', 0, NULL, '2015-03-17 06:17:58', 1, 1, 1, 3, 12),
(10, 'ru', 'Саванны', '', '', '', 'savanny', 'savanny', 0, '', '2015-03-17 06:12:51', 1, 0, 1, 4, 7),
(11, 'en', 'About savannas', '', '', '', 'about-savannas', 'about-savannas', 0, NULL, '2015-03-17 06:13:01', 1, 0, 0, 4, 8),
(12, 'tur', 'Savan kedileri', '', '', '', 'savan-kedileri', 'savan-kedileri', 0, NULL, '2015-03-17 06:17:58', 1, 0, 0, 4, 9),
(13, 'tr', 'Ana Sayfa', '', '', '', 'ana-sayfa', '', 0, NULL, '2015-03-17 06:32:17', 1, 1, 0, 1, 14),
(14, 'tr', 'Ana Sayfa', '', '', '', 'ana-sayfa', '', 0, NULL, '2015-03-17 06:32:17', 1, 0, 0, 2, 13),
(15, 'tr', 'Savan kedileri', '', '', '', 'savan-kedileri', 'savan-kedileri', 0, NULL, '2015-03-17 06:32:43', 1, 1, 0, 3, 16),
(16, 'tr', 'Savan kedileri', '', '', '', 'savan-kedileri', 'savan-kedileri', 0, NULL, '2015-03-17 06:32:43', 1, 0, 0, 4, 15),
(17, 'ru', 'Питомник', '', '', '', 'pitomnik', 'pitomnik', 0, NULL, '2015-03-18 12:55:53', 1, 1, 0, 5, 26),
(18, 'ru', 'Котята', '', '', '', 'kotyata', 'kotyata', 0, NULL, '2015-03-18 12:56:10', 1, 1, 0, 6, 25),
(19, 'ru', 'Партнеры', '', '', '', 'partnery', 'partnery', 0, NULL, '2015-03-18 12:56:19', 1, 1, 0, 7, 24),
(20, 'ru', 'Развлекалка', '', '', '', 'razvlekalka', 'razvlekalka', 0, NULL, '2015-03-18 12:56:28', 1, 1, 0, 8, 23),
(21, 'ru', 'Контакты', '', '', '', 'kontakty', 'kontakty', 0, NULL, '2015-03-18 12:56:37', 1, 1, 0, 9, 22),
(22, 'ru', 'Контакты', '', '', '', 'kontakty', 'kontakty', 0, NULL, '2015-03-18 12:56:37', 1, 0, 1, 10, 21),
(23, 'ru', 'Развлекалка', '', '', '', 'razvlekalka', 'razvlekalka', 0, NULL, '2015-03-18 12:56:28', 1, 0, 0, 11, 20),
(24, 'ru', 'Партнеры', '', '', '', 'partnery', 'partnery', 0, NULL, '2015-03-18 12:56:19', 1, 0, 0, 12, 19),
(25, 'ru', 'Котята', '', '', '', 'kotyata', 'kotyata', 0, NULL, '2015-03-18 12:56:10', 1, 0, 0, 13, 18),
(26, 'ru', 'Питомник', '', '', '', 'pitomnik', 'pitomnik', 0, NULL, '2015-03-18 12:55:53', 1, 0, 0, 14, 17),
(27, 'ru', 'СМИ про Саванны', '', '', '', 'smi-pro-savanny', 'razvlekalka/smi-pro-savanny', 0, NULL, '2015-03-18 12:57:23', 1, 1, 0, 15, 38),
(28, 'ru', 'Картинки', '', '', '', 'kartinki', 'razvlekalka/kartinki', 0, NULL, '2015-03-18 12:57:34', 1, 1, 0, 16, 37),
(29, 'ru', 'Видео', '', '', '', 'video', 'razvlekalka/video', 0, NULL, '2015-03-18 12:57:44', 1, 1, 0, 17, 36),
(30, 'ru', 'Кошки в исскустве', '', '', '', 'koshki-v-isskustve', 'razvlekalka/koshki-v-isskustve', 0, NULL, '2015-03-18 12:57:54', 1, 1, 0, 18, 35),
(31, 'ru', 'Библиотека', '', '', '', 'biblioteka', 'razvlekalka/biblioteka', 0, NULL, '2015-03-18 12:58:04', 1, 1, 0, 19, 34),
(34, 'ru', 'Библиотека', '', '', '', 'biblioteka', 'razvlekalka/biblioteka', 0, NULL, '2015-03-18 12:58:04', 1, 0, 0, 22, 31),
(35, 'ru', 'Кошки в исскустве', '', '', '', 'koshki-v-isskustve', 'razvlekalka/koshki-v-isskustve', 0, NULL, '2015-03-18 12:57:54', 1, 0, 0, 23, 30),
(36, 'ru', 'Видео', '', '', '', 'video', 'razvlekalka/video', 0, NULL, '2015-03-18 12:57:44', 1, 0, 0, 24, 29),
(37, 'ru', 'Картинки', '', '', '', 'kartinki', 'razvlekalka/kartinki', 0, NULL, '2015-03-18 12:57:34', 1, 0, 1, 25, 28),
(38, 'ru', 'СМИ про Саванны', '', '', '', 'smi-pro-savanny', 'razvlekalka/smi-pro-savanny', 0, NULL, '2015-03-18 12:57:23', 1, 0, 0, 26, 27),
(39, 'en', 'Nursery', '', '', '', 'nursery', 'nursery', 0, NULL, '2015-04-15 09:51:28', 1, 1, 0, 5, 41),
(40, 'tr', 'Kreş', '', '', '', 'kres', 'kres', 0, NULL, '2015-04-15 09:51:46', 1, 1, 0, 5, 42),
(41, 'en', 'Nursery', '', '', '', 'nursery', 'nursery', 0, NULL, '2015-04-15 09:51:28', 1, 0, 0, 14, 39),
(42, 'tr', 'Kreş', '', '', '', 'kres', 'kres', 0, NULL, '2015-04-15 09:51:46', 1, 0, 0, 14, 40);

-- --------------------------------------------------------

--
-- Структура таблицы `cms_usersettings`
--

CREATE TABLE IF NOT EXISTS `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_2655b062` (`clipboard_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `cms_usersettings`
--

INSERT INTO `cms_usersettings` (`id`, `language`, `clipboard_id`, `user_id`) VALUES
(1, 'ru', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `contents_feedback`
--

CREATE TABLE IF NOT EXISTS `contents_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `contents_feedback`
--

INSERT INTO `contents_feedback` (`id`, `date`, `name`, `email`, `phone`, `message`) VALUES
(1, '2015-04-15 11:32:13', 'о М', 'Fieryja@list.ru', '+79101111111', 'gv l, gb'),
(2, '2015-04-15 11:33:20', 'о М', 'Fieryja@list.ru', '+79101111111', 'gvbflghbvy;');

-- --------------------------------------------------------

--
-- Структура таблицы `contents_gallery`
--

CREATE TABLE IF NOT EXISTS `contents_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `contents_gallery`
--

INSERT INTO `contents_gallery` (`id`, `name`) VALUES
(1, 'Кошки');

-- --------------------------------------------------------

--
-- Структура таблицы `contents_galleryimage`
--

CREATE TABLE IF NOT EXISTS `contents_galleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contents_galleryimage_6d994cdb` (`gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `contents_galleryimage`
--

INSERT INTO `contents_galleryimage` (`id`, `name`, `image`, `description`, `gallery_id`) VALUES
(1, 'Black', 'catalog/black.jpg', '<p>\r\n	Black,Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat\r\n</p>', 1),
(2, 'Praesent ', 'catalog/praesent.jpg', '<p>Black,Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat</p>', 1),
(3, 'vestibulum ', 'catalog/vestibulum.jpg', '<p>Black,Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat</p>', 1),
(4, 'Aenean ', 'catalog/aenean.jpg', '<p>Black,Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat</p>', 1),
(5, 'molestie', 'catalog/molestie.jpg', '<p>Black,Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat</p>', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `contents_post`
--

CREATE TABLE IF NOT EXISTS `contents_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `type_button` varchar(255) NOT NULL,
  `main_block` varchar(255),
  `menu` tinyint(1) NOT NULL,
  `image` varchar(100),
  `cat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `contents_post`
--

INSERT INTO `contents_post` (`id`, `date`, `type_button`, `main_block`, `menu`, `image`, `cat`) VALUES
(1, '2015-03-18 13:16:23', 'button-1', 'last', 1, NULL, 0),
(2, '2015-03-18 13:17:34', 'button-2', 'first', 1, NULL, 0),
(3, '2015-03-18 13:32:50', 'button-3', 'first', 1, NULL, 0),
(4, '2015-03-19 09:10:01', 'button-1', 'first', 1, NULL, 0),
(5, '2015-03-23 07:20:05', 'button-2', 'last', 1, NULL, 0),
(6, '2015-04-14 09:12:53', 'link-1 p5', NULL, 1, 'catalog/koshka-savanna-concordia.jpg', 1),
(7, '2015-03-05 09:29:55', 'link-1 p5', NULL, 1, '', 0),
(8, '2015-04-14 15:21:12', 'link-1 p5', NULL, 1, 'catalog/koshka-savanna-mirana-shine-golden-irbis.jpg', 1),
(9, '2015-04-14 15:22:27', 'link-1 p5', NULL, 1, 'catalog/koshka-savanna-neyla.jpg', 1),
(10, '2015-04-14 15:23:03', 'link-1 p5', NULL, 1, 'catalog/koshka-savanna-madam-de-pompadour.jpg', 1),
(11, '2015-04-14 15:44:37', 'link-1 p5', NULL, 1, 'catalog/chauzi-f1.jpg', 1),
(12, '2015-04-14 15:47:01', 'link-1 p5', NULL, 1, 'catalog/savanna-f1.jpg', 1),
(13, '2015-04-14 15:47:51', 'link-1 p5', NULL, 1, 'catalog/domestic-serval.jpg', 1),
(14, '2015-04-01 15:55:43', 'link-1 p5', NULL, 1, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `contents_post_translation`
--

CREATE TABLE IF NOT EXISTS `contents_post_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `short` longtext,
  `description` longtext,
  `active` tinyint(1) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `language_code` varchar(15) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `slug` varchar(255),
  `pages_id` int(11),
  PRIMARY KEY (`id`),
  UNIQUE KEY `contents_post_translation_language_code_7fed4270_uniq` (`language_code`,`master_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `contents_post_translation_60716c2f` (`language_code`),
  KEY `contents_post_translation_90349b61` (`master_id`),
  KEY `contents_post_translation_346752fa` (`pages_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `contents_post_translation`
--

INSERT INTO `contents_post_translation` (`id`, `name`, `url`, `short`, `description`, `active`, `meta_title`, `meta_keywords`, `meta_description`, `language_code`, `master_id`, `slug`, `pages_id`) VALUES
(1, 'О нас', 'http://127.0.0.1:8000/ru/kontakty/', '<p>Coectetuer adipiscing elit, seddiummy nibh euismod tincidunut laoreet dolore magna aliquerat volutpat wisi enim admiim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.</p>', '<p>Coectetuer adipiscing elit, seddiummy nibh euismod tincidunut laoreet dolore magna aliquerat volutpat wisi enim admiim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.</p>', 1, '', '', '', 'ru', 1, 'o-nas', NULL),
(2, 'Вниманию собственников', '', '<p>Coectetuer adipiscing elit, seddiummy nibh euismod tincidunut laoreet dolore magna aliquerat volutpat wisi enim admiim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.</p>', '<p>Coectetuer adipiscing elit, seddiummy nibh euismod tincidunut laoreet dolore magna aliquerat volutpat wisi enim admiim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.</p>', 1, '', '', '', 'ru', 2, 'vnimaniiu-sobstvennikov', 22),
(3, '3 веские причины', '', '<p>Nibh euismod tincidunut laoreet doloregna aliquerat volutpat wisi enim admiim veniam quistrud exerci tation ullamcorper suscipit lobos nisl aliquipcommodo consequat. Duis autem vel eum iriure dolor.</p>', '<p>Nibh euismod tincidunut laoreet doloregna aliquerat volutpat wisi enim admiim veniam quistrud exerci tation ullamcorper suscipit lobos nisl aliquipcommodo consequat. Duis autem vel eum iriure dolor.</p>', 1, '', '', '', 'ru', 3, '3-veskie-prichiny', 22),
(4, 'История породы', '', '<p>\r\n	<img src="/media/uploads/23-%D0%BA%D0%BE%D1%88%D0%BA%D0%B0%20%D1%81%D0%B5%D1%80%D0%B2%D0%B0%D0%BB.jpg" style="width: 100px; height: 74.964639321075px; float: left; margin: 0px 10px 10px 0px;" rel="width: 100px; height: 74.964639321075px; float: left; margin: 0px 10px 10px 0px;" alt="">\r\n</p><p>Заводчики мечтали создать кошку с экзотической внешностью и точеным профилем, барской роскошью и величественностью африканского Сервала, которая бы обладала спокойствием и характером домашней кошки. У американских заводчиков эта работа заняла более 10 лет! Результат впечатлил многих: опытным заводчикам удалось получить уникальную породу кошек покладистую и коммуникабельную, ласковую и дружелюбную. Первый котенок появился на свет в 1986 году у заводчика бенгалов – Джуди Фрэнка в Пенсильвании и назван в честь просторов своей исторической родины - Саванна. В 2001 году порода была официально признана и зарегистрирована Ассоциацией TICA.</p>', '<p>\r\n	Впервые саванна была выведена в середине 1980-х годов. Селекционерам понадобилось более десяти лет для получения кошек, похожих на маленьких сервалов. Зато результат трудов оказался потрясающим, саванна покорила многих знатоков кошек.\r\n</p><p><img src="/media/uploads/savanna.jpg" style="width: 315px; height: 239.85px; float: right; margin: 0px 0px 10px 10px;" rel="width: 315px; height: 239.85px; float: right; margin: 0px 0px 10px 10px;" alt=""></p><p>\r\n	Заводчик Бенгалов Джуди Фрэнк скрестил самца Сервала, принадлежащего Сюзи Вудс, с домашней сиамской кошкой, в результате чего получилась первая Саванна; это произошло 7 апреля 1986 года. Саванна, выведенная Фрэнком, заинтересовала Патрика Келли – он приобрел котят Саванны в 1989. Келли был одним из первых энтузиастов, работавших над выведением новой породы домашних кошек, основанных на скрещивании Сервала с домашней кошкой. Он связывался со многими заводчиками Сервалов и помогал им в выведении новой породы, и, в конце концов, заручился помощью известного заводчика Джойса Сроуфе – вместе они стали работать над тем, чтобы новая порода была официально признана. В 1996 году Патрик Келли и Джойс Сроуфе выпустили изначальную редакцию стандартов Саванны, и представили ее на рассмотрение TICA (международной ассоциации кошек) В 2001 году порода была официально признана и зарегистрирована.\r\n</p><p>\r\n	Мало кто знает, но одна из целей выведения данной породы было стремление сократить истребление и прихоти состоятельных людей содержать в вольерах настоящих гепардов и леопардов в своих домах. Иными словами создать альтернативу, не менее впечатляющую и коммуникабельную, как обычная домашняя кошка.\r\n</p><p><br></p><iframe width="425" height="350" src="https://www.youtube.com/embed/UvfVjTj8mIE" frameborder="0" allowfullscreen=""></iframe><p>\r\n	Из-за своей уникальности и редкости, Саванны даже стали предметом крупнейшей аферы под названием Ашера (Ashera), которую организовал мошенник “со стажем" Саймон Броуди (Simon Brodie). Он выдавал Саванну F1 за якобы созданную им “совершенно новую породу Ashera", в итоге клиенты не получали ни кошку, ни своих денег. Удивителен тот факт, что из-за редкости породы Саванна, эта афера продолжается по сей день, а Simon Brodie объявлен в розыск. \r\n</p>', 1, '', '', '', 'ru', 4, 'istoriia-porody', 4),
(5, 'Генерация', '', '<p>\r\n	<em>Представляем вам <strong>саванну </strong>- породу кошек из числа самых дорогих, пусть и признанную официально всего одной международной ассоциацией любителей кошек (TICA). Есть в ее названии что-то африканское, правда? Это потому, что саванны ведут свой род от сервала - дикого животного из, обитающего на просторах "черного континента".</em></p>', '<p>\r\n	<em>Представляем вам <strong>саванну </strong>- породу кошек из числа самых дорогих, пусть и признанную официально всего одной международной ассоциацией любителей кошек (TICA). Есть в ее названии что-то африканское, правда? Это потому, что саванны ведут свой род от сервала - дикого животного из, обитающего на просторах "черного континента".</em>\r\n</p><p>\r\n	<img src="http://www.zooclub.ru/attach/2101.jpg" alt="Саванна (Savannah cat), фото породы кошек фотография">\r\n</p><p>\r\n		Кошки саванны F1 "Scarlett''s Magic"<br>\r\n</p><p>\r\n		<br>\r\n</p><p>\r\n		<strong>История появления и "родители" саванны.</strong> Идея скрещения дикого африканского сервала и домашней кошки возникла в начале 80-х годов XX столетия, а первый жизнеспособный детеныш от этого союза родился в 1986 году в Соединенных Штатах Америки на "кошачьей ферме" заводчика Джуди Фрэнк. Котенка назвали Саванной (от слова "саванна"), это имя и дало название породе.<br>\r\n</p><p>\r\n		<br>\r\n</p><p>\r\n		Всех саванн объединяет то, что их предком в каком-либо колене был сервал. Этот африканец представляет собой дикую кошку с очень высокими лапами (продолговатее, чем у прочих кошачьих) и телом длиной до 135 см. Сервала отличают пятнистая окраска и непропорционально крупные уши-локаторы. Относительно тела голова у него маленькая.<br>\r\n</p><p>\r\n		<br>\r\n</p><p>\r\n		Этот гепардоподобный "родитель" кошки-саванны отличается тем, что очень высоко прыгает (до 3 метров ввысь), умеет и любит плавать, является прекрасным охотником.<br>\r\n</p><p>\r\n		<br>\r\n</p><p>\r\n		Для получения саванн сервалов чаще всего скрещивают с домашними бенгальскими котами (гибридная порода, происходящая от дикой бенгальской кошки и домашнего кота). Ранее для скрещивания использовались также сиамские коты, порода египетских мау и "ориенталы" с короткой шерстью, но сегодня для продолжения рода кошек-саванн сводят с бенгалами.<br>\r\n</p><p>\r\n		<br>\r\n</p><p>\r\n		Домашний бенгальский кот отличается массивной головой и мощной шеей, длинным телом, лапами среднего размера, небольшими ушами, крупными глазами и блестящей, густой короткой шерстью. У классического бенгала золотисто-оранжевая шерсть с пятнистым или "мраморным" рисунком черного или коричневого цвета. Признаны несколько окрасов.<br>\r\n</p><p>\r\n	<a rel="nofollow" href="http://en.wikipedia.org/wiki/File:Savannah_Cat_portrait.jpg" target="_blank"><img src="http://www.zooclub.ru/attach/2102.jpg" alt="Саванна, фото породы кошек фотография картинка" style="float: right; margin: 0px 0px 10px 10px;" rel="float: right; margin: 0px 0px 10px 10px;"></a>\r\n</p><p>\r\n	<br>\r\n	<strong>Внешний вид саванны.</strong> Это действительно крупная кошка, несравнимая с домашними котами, - ее длина достигает весьма внушительного значения, в холке саванна может иметь 60 сантиметров, вес - до 7 килограмм (до 15 у "мальчиков"). Как и ее предки - сервалы, саванна имеет длинную шею и ноги, а также большие круглые уши. Шерстка у саваннов короткая таких окрасов:<br>\r\n	<br>\r\n	- тэбби циннамон;\r\n	<br>\r\n	- шоколадный;\r\n	<br>\r\n	- золотистый;\r\n	<br>\r\n	- бурый;\r\n	<br>\r\n	- серебристый.\r\n	<br>\r\n	<br>\r\n	На окраску кошки саванны и ее рисунок существенно влияет то, какова внешность домашнего кота, взятого для скрещивания с кошкой сервала (или саванны). Интересно, что при сведении саванны с котом сервала потомство по характеру остается все таким же "домашним кошачьим", тогда как внешний вид котят становится более "сервальским".\r\n	<br>\r\n	<br>\r\n	<strong>Питание и уход за саваннами.</strong> Организм этих кошек признает диетическое питание. Для содержания в квартире саванн нужно вакцинировать, подробно об этом вам обязан рассказать заводчик, у которого вы покупаете саванну. Особого ухода эти кошки не требуют, но в период линьки их стоит расчесывать. Также для крепкого здоровья саванне требуются регулярные прогулки.\r\n</p><p>\r\n	<strong>Признание породы. </strong>К началу 2012 года порода саванны была признана лишь организацией любителей кошек TICA, зарегистрировавшей ее в 2011 году в официальном порядке, требованиям же прочих международных союзов любителей котов саванна не отвечает. Причина в том, что это нестабильная порода, не имеющая четких признаков, которые передавались бы потомству.<br>\r\n</p>', 1, '', '', '', 'ru', 5, 'generatsiia', 4),
(6, 'Кошка Concordia', '', '<p>\r\n			Кличка: Concordia<br>\r\n			Дата рождения: 16.12.13<br>\r\n			Заводчик: Трофимова Е.<br>\r\n			Владелец: Казарян Е.\r\n		</p><p>Кострома, 18-19 апреля 2015г., «АВГУСТЕЙШАЯ ОСОБА». Ранг выставки: Международная, WCF, CAC и др. Организатор выставки: клуб «Августин» Место проведения:<br></p>', '<p>\r\n	<img src="/media/uploads/525.jpg" style="width: 249px; height: 165.882602545969px; float: left; margin: 0px 10px 10px 0px;" rel="width: 249px; height: 165.882602545969px; float: left; margin: 0px 10px 10px 0px;" alt="">\r\n</p><p><br></p><p>\r\n	Кличка: Concordia<br>\r\n	Дата рождения: 16.12.13<br>\r\n	Заводчик: Трофимова Е.<br>\r\n	Владелец: Казарян Е.\r\n</p>', 1, '', '', '', 'ru', 6, 'koshka-savanna-concordia', 14),
(7, 'Выставки', '', '<p>\r\n	Кострома, 18-19 апреля 2015г.,\r\n	«АВГУСТЕЙШАЯ ОСОБА».\r\n		Ранг выставки: \r\n	Международная, WCF, CAC и др.\r\n		Организатор выставки: \r\n	клуб «Августин»\r\n		Место проведения: \r\n	\r\n</p>', '\r\n	\r\n	<h2>Кострома, 18-19 апреля 2015г.,<br>\r\n	<span class="cl-green">«АВГУСТЕЙШАЯ ОСОБА»</span>.</h2>\r\n	\r\n	<p>\r\n		Ранг выставки: \r\n		<strong>Международная, WCF, CAC и др.</strong>; <br>\r\n		Организатор выставки: \r\n		<strong>клуб «Августин»</strong>; <br>\r\n		Место проведения: \r\n		<strong>ул. Советская, д. 2/1, МЦ «Пале» (вход с ул. Чайковского) </strong>;\r\n	</p>\r\n\r\n\r\n	\r\n	<h2>Минск, 18-19 апреля 2015г.,<br>\r\n	<span class="cl-green">«ФЕЛИТА АПРЕЛИССИМА 2015»</span>.</h2>\r\n	\r\n	<p>\r\n		Ранг выставки: \r\n		<strong>Международная, WCF, CAC и др.</strong>; <br>\r\n		Организатор выставки: \r\n		<strong>Белорусский Фелинологический Центр "Фелита"</strong>; <br>\r\n		Место проведения: \r\n		<strong>НАЦИОНАЛЬНЫЙ ВЫСТАВОЧНЫЙ ЦЕНТР, Янки Купалы д. 2</strong>;\r\n	</p>\r\n	\r\n\r\n	\r\n	<h2>Нижний Новгород, 18 апреля 2015г.,<br>\r\n	<span class="cl-green">«КОШКИ:ИСТОРИЯ И СОВРЕМЕННОСТЬ»</span>.</h2>\r\n	\r\n	<p>\r\n		Ранг выставки: \r\n		<strong>Международная, ASSOLUX, CAC и выше</strong>; <br>\r\n		Организатор выставки: \r\n		<strong>ФПЦ "Царство кошек"</strong>; <br>\r\n		Место проведения: \r\n		<strong>ТРЦ"Шоколад", 3 этаж ул.Белинского, 124</strong>;\r\n	</p>\r\n', 1, '', '', '', 'ru', 7, 'vystavki', 14),
(8, 'Кошка Mirana Shine Golden', '', '<p>\r\n			<b>Кличка</b>: Mirana Shine Golden Irbis<br>\r\n			<b>Дата рождения</b>: 19.02.12<br>\r\n			<b>Заводчик</b>: Ингильдеева И.<br>\r\n			<b>Владелец</b>: Трофимов А.\r\n		</p>', '<p>\r\n			<b>Кличка</b>: Mirana Shine Golden Irbis<br>\r\n			<b>Дата рождения</b>: 19.02.12<br>\r\n			<b>Заводчик</b>: Ингильдеева И.<br>\r\n			<b>Владелец</b>: Трофимов А.\r\n		</p>', 1, '', '', '', 'ru', 8, 'koshka-savanna-mirana-shine-golden-irbis', 14),
(9, 'Кошка Neyla', '', '<p>\r\n			\r\n			<strong>Кличка</strong>: Neyla<br>\r\n			<strong>Дата рождения</strong>: 16.12.13<br>\r\n			<strong>Заводчик</strong>: Трофимова Е.<br>\r\n			<strong>Владелец</strong>: Белова Д.\r\n		</p>', '<p><strong>Кличка</strong>: Neyla<br><strong>Дата рождения</strong>: 16.12.13<br><strong>Заводчик</strong>: Трофимова Е.<br><strong>Владелец</strong>: Белова Д.</p>', 1, '', '', '', 'ru', 9, 'koshka-savanna-neyla', 14),
(10, 'Кошка Madam de Pompadour', '', '<p>\r\n			<strong>Кличка</strong>: Madam de Pompadour<br>\r\n			<strong>Дата рождения</strong>: 09.09.12<br>\r\n			<strong>Заводчик</strong>: Karin Koster &amp; Patricia Frencken<br>\r\n			<strong>Владелец</strong>: Дудкина Ольга\r\n		</p>', '<p><strong>Кличка</strong>: Madam de Pompadour<br><strong>Дата рождения</strong>: 09.09.12<br><strong>Заводчик</strong>: Karin Koster &amp; Patricia Frencken<br><strong>Владелец</strong>: Дудкина Ольга</p>', 1, '', '', '', 'ru', 10, 'koshka-savanna-madam-de-pompadour', 14),
(11, 'Чаузи F1', '', '<p><strong>Дата рождения: 10 августа 2014 года</strong></p><p>Пол: 1 мальчик<br>Стоимость: 10 000$ (стандартный окрас)<br>Статус: продан</p>', '<p><br></p><p><img src="/media/uploads/all10s.jpg" alt="" style="float: right; margin: 0px 0px 10px 10px;" rel="float: right; margin: 0px 0px 10px 10px;"></p><p><strong>Дата рождения: 10 августа 2014 года</strong></p><p>Пол: 1 мальчик<br>Стоимость: 10 000$ (стандартный окрас)<br>Статус: продан</p>', 1, '', '', '', 'ru', 11, 'chauzi-f1', 13),
(12, 'Саванна F1', '', '<p><strong>Дата рождения: 11 августа 2014 года</strong></p><p>Пол: 3 девочки<br>Стоимость: от 15 000 $ до 20 000$<br>Статус: проданы</p>', '<p><img src="/media/uploads/067.jpg" style="width: 263px; height: 175.333333333333px; float: right; margin: 0px 0px 10px 10px;" rel="width: 263px; height: 175.333333333333px; float: right; margin: 0px 0px 10px 10px;" alt=""></p><p><strong>Дата рождения: 11 августа 2014 года</strong></p><p>Пол: 3 девочки<br>Стоимость: от 15 000 $ до 20 000$<br>Статус: проданы</p>', 1, '', '', '', 'ru', 12, 'savanna-f1', 13),
(13, 'Domestic Serval', '', '<p><strong>Дата рождения: 9 апреля 2014 года</strong></p><p>Пол: 1 мальчик<br>Стоимость: 12 000$<br>Статус: продан</p>', '<p><img src="/media/uploads/031.jpg" style="width: 313px; height: 236.091428571429px; float: right; margin: 0px 0px 10px 10px;" rel="width: 313px; height: 236.091428571429px; float: right; margin: 0px 0px 10px 10px;" alt=""></p><p><strong>Дата рождения: 9 апреля 2014 года</strong></p><p>Пол: 1 мальчик<br>Стоимость: 12 000$<br>Статус: продан</p>', 1, '', '', '', 'ru', 13, 'domestic-serval', 13),
(14, 'Цены', '', '<p>На этой странице нашего сайта представлены <b>котята Сервала, котята Саванны</b>, которые ожидаются, родились, готовятся к продаже или уже сейчас продаются. Вы можете зарезервировать понравившегося котёнка.</p>', '<p>На этой странице нашего сайта представлены <b>котята Сервала, котята Саванны</b>, которые ожидаются, родились, готовятся к продаже или уже сейчас продаются. Вы можете зарезервировать понравившегося котёнка.</p><p><b>Котята Сервала, котята Саванны</b> в нашем <b>питомнике кошек Сервалов и Саванн </b>рождаются только после грамотного подбора пар производителей.</p><p>Вы можете <b>купить котёнка Сервала или Саванны,</b> как классического<b>леопардового окраса</b>, так и редких окрасов: мрамор на золоте, пятно и мрамор на серебре.</p><p>Всем <b>котятам Сервала или Саванны,</b> нашего питомника проводятся профилактические прививки. Наши малыши обязательно приучаются к лотку и когтеточке. Мы выращиваем наших <b>котят Саванны</b>исключительно на кормах премиум-качества.</p><p>Для нас самое главное здоровье и породные качества каждого котёнка Сервала или Саванны.</p>', 1, '', '', '', 'ru', 14, 'tseny', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-03-16 14:18:11', '1', 'Главная', 1, '', 15, 1),
(2, '2015-03-16 14:18:26', '1', 'Главная', 2, 'Изменен title и slug.', 15, 1),
(3, '2015-03-17 06:04:31', '1', 'Главная', 2, 'Изменен title и slug.', 15, 1),
(4, '2015-03-17 06:11:53', '1', 'Home', 2, '', 15, 1),
(5, '2015-03-17 06:11:55', '1', 'Ana Sayfa', 2, '', 15, 1),
(6, '2015-03-17 06:12:51', '3', 'Саванны', 1, '', 15, 1),
(7, '2015-03-17 06:13:01', '3', 'Саванны', 2, 'Изменен title и slug.', 15, 1),
(8, '2015-03-17 06:17:58', '3', 'Саванны', 2, 'Изменен title и slug.', 15, 1),
(9, '2015-03-17 06:18:04', '3', 'Саванны', 2, '', 15, 1),
(10, '2015-03-17 06:18:07', '3', 'About savannas', 2, '', 15, 1),
(11, '2015-03-17 06:18:09', '3', 'Savan kedileri', 2, '', 15, 1),
(12, '2015-03-17 06:32:17', '1', 'Главная', 2, 'Изменен title и slug.', 15, 1),
(13, '2015-03-17 06:32:22', '1', 'Ana Sayfa', 2, '', 15, 1),
(14, '2015-03-17 06:32:43', '3', 'Саванны', 2, 'Изменен title и slug.', 15, 1),
(15, '2015-03-17 06:32:48', '3', 'Savan kedileri', 2, '', 15, 1),
(16, '2015-03-18 07:09:29', '1', 'Главная', 2, '', 15, 1),
(17, '2015-03-18 07:15:13', '1', 'Саванны', 1, '', 48, 1),
(18, '2015-03-18 07:16:00', '1', 'Главная', 2, '', 15, 1),
(19, '2015-03-18 07:23:00', '1', 'Саванны', 2, 'Изменены sort для Изображение "Изображение 1". Изменены sort для Изображение "Изображение 2". Изменены sort для Изображение "Изображение 3". Изменены sort для Изображение "Изображение 4". Изменены sort для Изображение "Изображение 5". Изменены sort для Изображение "Изображение 6".', 48, 1),
(20, '2015-03-18 07:25:39', '1', 'Home', 2, '', 15, 1),
(21, '2015-03-18 12:55:53', '5', 'Питомник', 1, '', 15, 1),
(22, '2015-03-18 12:55:58', '5', 'Питомник', 2, 'Ни одно поле не изменено.', 15, 1),
(23, '2015-03-18 12:56:10', '6', 'Котята', 1, '', 15, 1),
(24, '2015-03-18 12:56:19', '7', 'Партнеры', 1, '', 15, 1),
(25, '2015-03-18 12:56:28', '8', 'Развлекалка', 1, '', 15, 1),
(26, '2015-03-18 12:56:37', '9', 'Контакты', 1, '', 15, 1),
(27, '2015-03-18 12:56:42', '9', 'Контакты', 2, '', 15, 1),
(28, '2015-03-18 12:56:44', '8', 'Развлекалка', 2, '', 15, 1),
(29, '2015-03-18 12:56:45', '7', 'Партнеры', 2, '', 15, 1),
(30, '2015-03-18 12:56:46', '6', 'Котята', 2, '', 15, 1),
(31, '2015-03-18 12:56:48', '5', 'Питомник', 2, '', 15, 1),
(32, '2015-03-18 12:57:23', '15', 'СМИ про Саванны', 1, '', 15, 1),
(33, '2015-03-18 12:57:34', '16', 'Картинки', 1, '', 15, 1),
(34, '2015-03-18 12:57:44', '17', 'Видео', 1, '', 15, 1),
(35, '2015-03-18 12:57:54', '18', 'Кошки в исскустве', 1, '', 15, 1),
(36, '2015-03-18 12:58:04', '19', 'Библиотека', 1, '', 15, 1),
(37, '2015-03-18 12:58:17', '20', 'История породы', 1, '', 15, 1),
(38, '2015-03-18 12:58:27', '21', 'Генерация', 1, '', 15, 1),
(39, '2015-03-18 12:58:39', '19', 'Библиотека', 2, '', 15, 1),
(40, '2015-03-18 12:58:41', '18', 'Кошки в исскустве', 2, '', 15, 1),
(41, '2015-03-18 12:58:42', '17', 'Видео', 2, '', 15, 1),
(42, '2015-03-18 12:58:44', '16', 'Картинки', 2, '', 15, 1),
(43, '2015-03-18 12:58:45', '15', 'СМИ про Саванны', 2, '', 15, 1),
(44, '2015-03-18 12:58:47', '21', 'Генерация', 2, '', 15, 1),
(45, '2015-03-18 12:58:49', '20', 'История породы', 2, '', 15, 1),
(46, '2015-03-18 13:17:29', '1', 'О нас', 1, '', 52, 1),
(47, '2015-03-18 13:18:12', '2', 'Вниманию собственников коммерческой недвижимости', 1, '', 52, 1),
(48, '2015-03-18 13:32:11', '2', 'Вниманию собственников', 2, 'Изменен name.', 52, 1),
(49, '2015-03-18 13:32:35', '2', 'Вниманию собственников', 2, 'Ни одно поле не изменено.', 52, 1),
(50, '2015-03-18 13:32:41', '2', 'Вниманию собственников', 2, 'Ни одно поле не изменено.', 52, 1),
(51, '2015-03-18 13:33:03', '3', '3 веские причины', 1, '', 52, 1),
(52, '2015-03-19 09:08:59', '3', '3 веские причины', 2, 'Изменен main_block.', 52, 1),
(53, '2015-03-19 09:08:59', '2', 'Вниманию собственников', 2, 'Изменен main_block.', 52, 1),
(54, '2015-03-19 09:08:59', '1', 'О нас', 2, 'Изменен main_block.', 52, 1),
(55, '2015-03-19 09:10:38', '4', 'История породы', 1, '', 52, 1),
(56, '2015-03-19 09:12:16', '4', 'История породы', 2, 'Изменен short.', 52, 1),
(57, '2015-03-19 09:12:55', '4', 'История породы', 2, 'Изменен short.', 52, 1),
(58, '2015-03-20 06:11:28', '4', 'История породы', 2, 'Изменен url, short и description.', 52, 1),
(59, '2015-03-20 06:11:37', '4', 'История породы', 2, 'Изменен page.', 52, 1),
(60, '2015-03-20 06:14:06', '4', 'История породы', 2, 'Изменен page и url.', 52, 1),
(61, '2015-03-20 06:17:46', '4', 'История породы', 2, 'Ни одно поле не изменено.', 52, 1),
(62, '2015-03-20 06:18:04', '1', 'О нас', 2, 'Ни одно поле не изменено.', 52, 1),
(63, '2015-03-20 06:18:06', '2', 'Вниманию собственников', 2, 'Ни одно поле не изменено.', 52, 1),
(64, '2015-03-20 06:18:09', '3', '3 веские причины', 2, 'Ни одно поле не изменено.', 52, 1),
(65, '2015-03-20 06:20:24', '4', 'История породы', 2, 'Изменен page.', 52, 1),
(66, '2015-03-20 06:29:51', '4', 'История породы', 2, 'Изменен url.', 52, 1),
(67, '2015-03-23 06:23:52', '4', 'История породы', 2, 'Изменен pages.', 52, 1),
(68, '2015-03-23 06:34:06', '4', 'История породы', 2, 'Изменен pages.', 52, 1),
(69, '2015-03-23 06:45:37', '1', 'Главная', 2, '', 15, 1),
(70, '2015-03-23 06:46:15', '1', 'Главная', 2, '', 15, 1),
(71, '2015-03-23 06:47:39', '1', 'Главная', 2, '', 15, 1),
(72, '2015-03-23 06:54:58', '1', '1', 3, '', 14, 1),
(73, '2015-03-23 06:55:07', '1', 'Главная', 2, '', 15, 1),
(74, '2015-03-23 06:56:31', '20', 'История породы', 3, '', 15, 1),
(75, '2015-03-23 06:56:38', '21', 'Генерация', 3, '', 15, 1),
(76, '2015-03-23 06:58:01', '3', 'Саванны', 2, 'Изменен template и xframe_options.', 15, 1),
(77, '2015-03-23 06:58:07', '3', 'Саванны', 2, '', 15, 1),
(78, '2015-03-23 06:58:09', '3', 'About savannas', 2, '', 15, 1),
(79, '2015-03-23 06:58:15', '3', 'Savan kedileri', 2, '', 15, 1),
(80, '2015-03-23 07:06:24', '5', 'Питомник', 2, '', 15, 1),
(81, '2015-03-23 07:17:50', '4', 'История породы', 2, 'Ни одно поле не изменено.', 52, 1),
(82, '2015-03-23 07:23:05', '5', 'Генерация', 1, '', 52, 1),
(83, '2015-03-23 07:23:16', '5', 'Генерация', 2, 'Изменен active.', 52, 1),
(84, '2015-03-23 07:23:34', '5', 'Генерация', 2, 'Изменен short и description.', 52, 1),
(85, '2015-03-23 07:24:03', '5', 'Генерация', 2, 'Изменен type_button.', 52, 1),
(86, '2015-03-23 07:31:52', '4', 'История породы', 2, 'Изменен type_button.', 52, 1),
(87, '2015-03-23 07:31:59', '5', 'Генерация', 2, 'Изменен type_button.', 52, 1),
(88, '2015-03-23 07:32:17', '1', 'О нас', 2, 'Изменен url.', 52, 1),
(89, '2015-03-23 07:32:35', '2', 'Вниманию собственников', 2, 'Изменен pages.', 52, 1),
(90, '2015-03-23 07:32:47', '3', '3 веские причины', 2, 'Изменен pages.', 52, 1),
(91, '2015-04-14 09:13:55', '6', 'Кошка Саванна Concordia', 1, '', 52, 1),
(92, '2015-04-14 09:15:33', '6', 'Кошка Саванна Concordia', 2, 'Изменен image, short, description и active.', 52, 1),
(93, '2015-04-14 09:15:45', '5', 'Питомник', 2, '', 15, 1),
(94, '2015-04-14 09:33:43', '7', 'Выставки', 1, '', 52, 1),
(95, '2015-04-14 09:34:33', '7', 'Выставки', 2, 'Изменен short и description.', 52, 1),
(96, '2015-04-14 09:35:09', '7', 'Выставки', 2, 'Изменен short.', 52, 1),
(97, '2015-04-14 09:35:45', '7', 'Выставки', 2, 'Изменен short.', 52, 1),
(98, '2015-04-14 09:46:00', '6', 'Кошка Саванна Concordia', 2, 'Изменен short.', 52, 1),
(99, '2015-04-14 15:20:58', '6', 'Кошка Саванна Concordia', 2, 'Ни одно поле не изменено.', 52, 1),
(100, '2015-04-14 15:22:06', '8', 'Кошка Саванна Mirana Shine Golden Irbis', 1, '', 52, 1),
(101, '2015-04-14 15:22:58', '9', 'Кошка Саванна Neyla', 1, '', 52, 1),
(102, '2015-04-14 15:23:39', '10', 'Кошка Саванна Madam de Pompadour', 1, '', 52, 1),
(103, '2015-04-14 15:24:01', '9', 'Кошка Саванна Neyla', 2, 'Изменен pages.', 52, 1),
(104, '2015-04-14 15:24:05', '8', 'Кошка Саванна Mirana Shine Golden Irbis', 2, 'Изменен cat.', 52, 1),
(105, '2015-04-14 15:29:19', '10', 'Кошка Madam de Pompadour', 2, 'Изменен name.', 52, 1),
(106, '2015-04-14 15:29:25', '9', 'Кошка Neyla', 2, 'Изменен name.', 52, 1),
(107, '2015-04-14 15:29:33', '8', 'Кошка Mirana Shine Golden', 2, 'Изменен name.', 52, 1),
(108, '2015-04-14 15:29:37', '6', 'Кошка Concordia', 2, 'Изменен name.', 52, 1),
(109, '2015-04-14 15:29:49', '7', 'Выставки', 2, 'Изменен date.', 52, 1),
(110, '2015-04-14 15:35:28', '6', 'Котята', 2, '', 15, 1),
(111, '2015-04-14 15:46:41', '11', 'Чаузи F1', 1, '', 52, 1),
(112, '2015-04-14 15:47:43', '12', 'Саванна F1', 1, '', 52, 1),
(113, '2015-04-14 15:49:22', '13', 'Domestic Serval', 1, '', 52, 1),
(114, '2015-04-14 15:56:11', '14', 'Цены', 1, '', 52, 1),
(115, '2015-04-15 06:04:30', '7', 'Выставки', 2, 'Изменен description.', 52, 1),
(116, '2015-04-15 07:05:37', '1', 'Главная', 2, '', 15, 1),
(117, '2015-04-15 07:06:38', '3', 'Саванны', 2, '', 15, 1),
(118, '2015-04-15 07:26:49', '1', 'Главная', 2, '', 15, 1),
(119, '2015-04-15 07:34:00', '1', 'Главная', 2, '', 15, 1),
(120, '2015-04-15 07:51:47', '1', 'Кошки', 1, '', 57, 1),
(121, '2015-04-15 07:52:07', '1', 'Кошки', 2, 'Добавлен Изображение "Aenean ". Добавлен Изображение "molestie".', 57, 1),
(122, '2015-04-15 07:52:33', '1', 'Кошки', 2, 'Изменены image для Изображение "Black". Изменены image для Изображение "Praesent ". Изменены image для Изображение "vestibulum ". Изменены image для Изображение "Aenean ". Изменены image для Изображение "molestie".', 57, 1),
(123, '2015-04-15 07:53:48', '16', 'Картинки', 2, '', 15, 1),
(124, '2015-04-15 09:49:07', '16', 'Картинки', 2, '', 15, 1),
(125, '2015-04-15 09:51:28', '5', 'Питомник', 2, 'Изменен title и slug.', 15, 1),
(126, '2015-04-15 09:51:46', '5', 'Питомник', 2, 'Изменен title и slug.', 15, 1),
(127, '2015-04-15 09:51:54', '5', 'Nursery', 2, '', 15, 1),
(128, '2015-04-15 09:51:57', '5', 'Kreş', 2, '', 15, 1),
(129, '2015-04-15 10:39:41', '9', 'Контакты', 2, '', 15, 1),
(130, '2015-04-15 11:21:14', '9', 'Контакты', 2, '', 15, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'flat page', 'flatpages', 'flatpage'),
(8, 'log entry', 'admin', 'logentry'),
(9, 'revision', 'reversion', 'revision'),
(10, 'version', 'reversion', 'version'),
(11, 'kv store', 'thumbnail', 'kvstore'),
(12, 'user setting', 'cms', 'usersettings'),
(13, 'placeholder', 'cms', 'placeholder'),
(14, 'cms plugin', 'cms', 'cmsplugin'),
(15, 'page', 'cms', 'page'),
(16, 'Page global permission', 'cms', 'globalpagepermission'),
(17, 'Page permission', 'cms', 'pagepermission'),
(18, 'User (page)', 'cms', 'pageuser'),
(19, 'User group (page)', 'cms', 'pageusergroup'),
(20, 'title', 'cms', 'title'),
(21, 'placeholder reference', 'cms', 'placeholderreference'),
(22, 'static placeholder', 'cms', 'staticplaceholder'),
(23, 'alias plugin model', 'cms', 'aliaspluginmodel'),
(24, 'cache key', 'menus', 'cachekey'),
(25, 'category', 'spirit', 'category'),
(26, 'comment', 'spirit', 'comment'),
(27, 'comment history', 'spirit', 'commenthistory'),
(28, 'comment bookmark', 'spirit', 'commentbookmark'),
(29, 'comment flag', 'spirit', 'commentflag'),
(30, 'flag', 'spirit', 'flag'),
(31, 'like', 'spirit', 'commentlike'),
(32, 'topic', 'spirit', 'topic'),
(33, 'topic unread', 'spirit', 'topicunread'),
(34, 'favorite', 'spirit', 'topicfavorite'),
(35, 'topic notification', 'spirit', 'topicnotification'),
(36, 'topic poll', 'spirit', 'topicpoll'),
(37, 'poll choice', 'spirit', 'topicpollchoice'),
(38, 'poll vote', 'spirit', 'topicpollvote'),
(39, 'private topic', 'spirit', 'topicprivate'),
(40, 'config', 'djconfig', 'config'),
(41, 'user', 'spirit', 'user'),
(42, 'Блок', 'cms_plugins', 'block'),
(43, 'robot', 'cms_plugins', 'robot'),
(44, 'keyword', 'cms_plugins', 'keyword'),
(45, 'text model plugin', 'cms_plugins', 'textmodelplugin'),
(46, 'html insert model', 'cms_plugins', 'htmlinsertmodel'),
(47, 'block plugin', 'cms_plugins', 'blockplugin'),
(48, 'Слайд', 'cms_plugins', 'slider'),
(49, 'Изображение', 'cms_plugins', 'sliderimage'),
(50, 'slider plugin model', 'cms_plugins', 'sliderpluginmodel'),
(51, 'post translation', 'contents', 'posttranslation'),
(52, 'Публикация', 'contents', 'post'),
(53, 'logo model plugin', 'cms_plugins', 'logomodelplugin'),
(54, 'cats model', 'cms_plugins', 'catsmodel'),
(55, 'banner model', 'cms_plugins', 'bannermodel'),
(56, 'gallery model', 'cms_plugins', 'gallerymodel'),
(57, 'Галерея', 'contents', 'gallery'),
(58, 'Изображение', 'contents', 'galleryimage'),
(59, 'menu model', 'cms_plugins', 'menumodel'),
(60, 'menu inline', 'cms_plugins', 'menuinline'),
(61, 'contact model', 'cms_plugins', 'contactmodel'),
(62, 'Обратная связь', 'contents', 'feedback');

-- --------------------------------------------------------

--
-- Структура таблицы `django_flatpage`
--

CREATE TABLE IF NOT EXISTS `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_572d4e42` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `django_flatpage_sites`
--

CREATE TABLE IF NOT EXISTS `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_c3368d3a` (`flatpage_id`),
  KEY `django_flatpage_sites_9365d6e7` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-03-16 14:13:23'),
(2, 'auth', '0001_initial', '2015-03-16 14:13:24'),
(3, 'admin', '0001_initial', '2015-03-16 14:13:25'),
(4, 'sites', '0001_initial', '2015-03-16 14:13:25'),
(5, 'cms', '0001_initial', '2015-03-16 14:13:29'),
(6, 'cms', '0002_auto_20140816_1918', '2015-03-16 14:13:35'),
(7, 'cms', '0003_auto_20140926_2347', '2015-03-16 14:13:35'),
(8, 'flatpages', '0001_initial', '2015-03-16 14:13:35'),
(9, 'menus', '0001_initial', '2015-03-16 14:13:35'),
(10, 'reversion', '0001_initial', '2015-03-16 14:13:36'),
(11, 'sessions', '0001_initial', '2015-03-16 14:13:37'),
(12, 'cms_plugins', '0001_initial', '2015-03-16 14:17:37'),
(13, 'cms_plugins', '0002_slider_sliderimage_sliderpluginmodel', '2015-03-18 07:13:25'),
(14, 'cms_plugins', '0003_auto_20150318_1022', '2015-03-18 07:22:35'),
(15, 'contents', '0001_initial', '2015-03-18 12:44:15'),
(16, 'contents', '0002_post_type_button', '2015-03-18 13:16:05'),
(17, 'contents', '0003_auto_20150319_1142', '2015-03-19 08:42:52'),
(18, 'contents', '0004_post_menu', '2015-03-20 06:15:56'),
(19, 'contents', '0005_auto_20150320_0917', '2015-03-20 06:17:22'),
(20, 'contents', '0006_auto_20150323_0922', '2015-03-23 06:22:50'),
(21, 'cms_plugins', '0004_logomodelplugin', '2015-03-23 06:53:56'),
(22, 'cms_plugins', '0005_auto_20150323_0954', '2015-03-23 06:54:35'),
(23, 'contents', '0007_post_image', '2015-04-13 15:33:37'),
(24, 'contents', '0008_post_cat', '2015-04-14 09:10:35'),
(25, 'cms_plugins', '0006_catsmodel', '2015-04-15 06:10:25'),
(26, 'cms_plugins', '0007_bannermodel', '2015-04-15 06:49:24'),
(27, 'contents', '0009_gallery_galleryimage', '2015-04-15 07:50:37'),
(28, 'contents', '0010_galleryimage_gallery', '2015-04-15 07:50:37'),
(29, 'cms_plugins', '0008_gallerymodel', '2015-04-15 07:50:39'),
(30, 'contents', '0011_remove_galleryimage_video', '2015-04-15 08:16:29'),
(31, 'cms_plugins', '0009_auto_20150415_1231', '2015-04-15 09:31:54'),
(32, 'cms_plugins', '0010_contactmodel', '2015-04-15 10:27:39'),
(33, 'contents', '0012_feedback', '2015-04-15 10:27:40'),
(34, 'cms_plugins', '0011_auto_20150415_1355', '2015-04-15 10:57:04');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4cwrlin245wwuicot754pehrncvvtwzk', 'ZjJkZTdjY2I0MzU3MTRhNTc5NzliMjgwYzYzNTJmMjUwZmU0Yjk2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NjlmYTYyNTYzNmM5ZGIwNmIzY2RmM2NhYzk5ZDM5YWY2ODY2OTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-28 08:18:56'),
('68gqanjf2tqxjkasg866az5o2kt5qii3', 'NWM2MTBkNjVlYmE0YmRjZGY4N2VkMzQ0NWY1YjAxMTdhMWJlMDU3Zjp7fQ==', '2015-04-06 08:35:44'),
('6escsvwdit1q5wbpm1coa93tx8030h6z', 'N2I4NjkzNDM5MmRiYmY5MmVlMWEzNWEyMDdkNDE1ZTk2OGM5YjBkYzp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0IjpmYWxzZSwiX2F1dGhfdXNlcl9oYXNoIjoiNDc2OWZhNjI1NjM2YzlkYjA2YjNjZGYzY2FjOTlkMzlhZjY4NjY5NyJ9', '2015-04-06 07:32:51'),
('784lbdch3gej08g8ekvwgsgj09javfni', 'NjdhNTZiZDMyZTMzOThlYmIzZmE1YWM4Y2QzY2U0MDZiNDY2Yzc1MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDc2OWZhNjI1NjM2YzlkYjA2YjNjZGYzY2FjOTlkMzlhZjY4NjY5NyIsIl9hdXRoX3VzZXJfaWQiOjEsImNtc19lZGl0IjpmYWxzZX0=', '2015-04-01 07:25:40'),
('8xopoe5pvyzu4xz4u78wq8kn09ayd5h2', 'MzE2NTE2ZmFjYTI4MDU2MDg0NjgyYWUwZWU2OGIwMzA0ZWRlNmNlZjp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2hhc2giOiI0NzY5ZmE2MjU2MzZjOWRiMDZiM2NkZjNjYWM5OWQzOWFmNjg2Njk3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoxfQ==', '2015-04-02 07:40:00'),
('bfxry6sja59fk6bjl68n40e98qtcdx5f', 'NWM2MTBkNjVlYmE0YmRjZGY4N2VkMzQ0NWY1YjAxMTdhMWJlMDU3Zjp7fQ==', '2015-04-01 11:18:52'),
('iv925230kg9pd7oibss4ngtz6qtqtrlf', 'YWI3NTg2YmNhODA1ZmI0N2YxNGRjZDM3ODc0ZWE0MDMwNjcwZGQ3YTp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2lkIjoxLCJyb3NldHRhX2NhY2hlX3N0b3JhZ2Vfa2V5X3ByZWZpeCI6ImViZjA4MjczYWQ5NTY3YjJmZTRhMGQzNDg1ZjQyMzc2YjkwYmZkYWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0IjpmYWxzZSwiX2F1dGhfdXNlcl9oYXNoIjoiNDc2OWZhNjI1NjM2YzlkYjA2YjNjZGYzY2FjOTlkMzlhZjY4NjY5NyJ9', '2015-04-29 11:47:17'),
('njbjdqufs1ap7jpmyn5rfpxoqnad1h4z', 'YzAxMTQ5MmUxMTBmZGQ4YjE2N2Y1MThkMjJiYzM5NDc4YzEzMjMzMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NjlmYTYyNTYzNmM5ZGIwNmIzY2RmM2NhYzk5ZDM5YWY2ODY2OTciLCJjbXNfZWRpdCI6ZmFsc2UsIl9hdXRoX3VzZXJfaWQiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2015-04-28 09:46:03'),
('odrzqw486rb3ufqteg3t21yj9giowu2k', 'ZjJkZTdjY2I0MzU3MTRhNTc5NzliMjgwYzYzNTJmMjUwZmU0Yjk2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NjlmYTYyNTYzNmM5ZGIwNmIzY2RmM2NhYzk5ZDM5YWY2ODY2OTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-02 08:40:35'),
('op8q45sr97f3l14e8ghbszksr3khinbu', 'ZjJkZTdjY2I0MzU3MTRhNTc5NzliMjgwYzYzNTJmMjUwZmU0Yjk2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NjlmYTYyNTYzNmM5ZGIwNmIzY2RmM2NhYzk5ZDM5YWY2ODY2OTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-03 06:29:53'),
('otgjfvdhm575k0hku3az88kht4cibo7a', 'NWM2MTBkNjVlYmE0YmRjZGY4N2VkMzQ0NWY1YjAxMTdhMWJlMDU3Zjp7fQ==', '2015-04-01 11:18:52'),
('pg7xwb6lp1hfoewdmlplbl4bu7mu8eas', 'NmIzODk4ZjEwZDcxZWUzNjI5ZDE2NzhjMjk5NDlmN2NhN2Q1Yjg0Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NjlmYTYyNTYzNmM5ZGIwNmIzY2RmM2NhYzk5ZDM5YWY2ODY2OTciLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2015-04-02 09:12:59'),
('qsbbsgrqy8ggy0pfzg5mgtmb4wiyhytu', 'NmI0ZmFiZTNiMWE2ZTkyMTg2NTcyYWE4NWM5MmI0NzI1NmQ4ZGFlYjp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2lkIjoxLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0Ijp0cnVlLCJfYXV0aF91c2VyX2hhc2giOiI0NzY5ZmE2MjU2MzZjOWRiMDZiM2NkZjNjYWM5OWQzOWFmNjg2Njk3In0=', '2015-03-31 06:32:53'),
('r0fapd8k3u4tt5l722wmzedrza7q6gd0', 'ZjJkZTdjY2I0MzU3MTRhNTc5NzliMjgwYzYzNTJmMjUwZmU0Yjk2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ3NjlmYTYyNTYzNmM5ZGIwNmIzY2RmM2NhYzk5ZDM5YWY2ODY2OTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-06 06:23:16'),
('rh6m0klf3vwry6q92h1l4dodxjf0k6ox', 'NWM2MTBkNjVlYmE0YmRjZGY4N2VkMzQ0NWY1YjAxMTdhMWJlMDU3Zjp7fQ==', '2015-04-28 08:09:58'),
('s8c1jdml35tq1hhl99qa1z4t9vgeylpw', 'NWM2MTBkNjVlYmE0YmRjZGY4N2VkMzQ0NWY1YjAxMTdhMWJlMDU3Zjp7fQ==', '2015-04-27 15:21:26'),
('vvx3b4z5u599bzck2hr38rfu954wk72c', 'NWM2MTBkNjVlYmE0YmRjZGY4N2VkMzQ0NWY1YjAxMTdhMWJlMDU3Zjp7fQ==', '2015-04-03 08:00:16');

-- --------------------------------------------------------

--
-- Структура таблицы `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Структура таблицы `djconfig_config`
--

CREATE TABLE IF NOT EXISTS `djconfig_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(75) NOT NULL,
  `value` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `menus_cachekey`
--

CREATE TABLE IF NOT EXISTS `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Дамп данных таблицы `menus_cachekey`
--

INSERT INTO `menus_cachekey` (`id`, `language`, `site`, `key`) VALUES
(99, 'ru', 1, 'menu_cache_menu_nodes_ru_1_1_user'),
(100, 'en', 1, 'menu_cache_menu_nodes_en_1_1_user');

-- --------------------------------------------------------

--
-- Структура таблицы `reversion_revision`
--

CREATE TABLE IF NOT EXISTS `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_slug` varchar(200) NOT NULL,
  `date_created` datetime NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_b16b0f06` (`manager_slug`),
  KEY `reversion_revision_c69e55a4` (`date_created`),
  KEY `reversion_revision_e8701ad4` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Дамп данных таблицы `reversion_revision`
--

INSERT INTO `reversion_revision` (`id`, `manager_slug`, `date_created`, `comment`, `user_id`) VALUES
(1, 'default', '2015-03-16 14:18:11', 'Initial version.', 1),
(6, 'default', '2015-03-17 06:12:51', 'Initial version.', 1),
(7, 'default', '2015-03-17 06:13:01', 'Изменен title и slug.', 1),
(8, 'default', '2015-03-17 06:17:58', 'Изменен title и slug.', 1),
(9, 'default', '2015-03-17 06:18:04', 'Publish', 1),
(10, 'default', '2015-03-17 06:18:07', 'Publish', 1),
(11, 'default', '2015-03-17 06:18:09', 'Publish', 1),
(14, 'default', '2015-03-17 06:32:43', 'Изменен title и slug.', 1),
(15, 'default', '2015-03-17 06:32:48', 'Publish', 1),
(22, 'default', '2015-03-18 07:09:10', 'Плагины были перемещены', 1),
(23, 'default', '2015-03-18 07:09:29', 'Publish', 1),
(24, 'default', '2015-03-18 07:15:38', 'Слайдер плагин добавлен в header', 1),
(25, 'default', '2015-03-18 07:15:45', 'Слайдер плагин, редактируемый в 1 в header', 1),
(26, 'default', '2015-03-18 07:16:00', 'Publish', 1),
(27, 'default', '2015-03-18 07:24:56', 'Скопированы плагины в header', 1),
(28, 'default', '2015-03-18 07:25:25', 'Текст плагин, редактируемый в 0 в header', 1),
(29, 'default', '2015-03-18 07:25:39', 'Publish', 1),
(30, 'default', '2015-03-18 12:55:53', 'Initial version.', 1),
(31, 'default', '2015-03-18 12:55:58', 'Ни одно поле не изменено.', 1),
(32, 'default', '2015-03-18 12:56:10', 'Initial version.', 1),
(33, 'default', '2015-03-18 12:56:19', 'Initial version.', 1),
(34, 'default', '2015-03-18 12:56:28', 'Initial version.', 1),
(35, 'default', '2015-03-18 12:56:37', 'Initial version.', 1),
(36, 'default', '2015-03-18 12:56:42', 'Publish', 1),
(37, 'default', '2015-03-18 12:56:44', 'Publish', 1),
(38, 'default', '2015-03-18 12:56:45', 'Publish', 1),
(39, 'default', '2015-03-18 12:56:46', 'Publish', 1),
(40, 'default', '2015-03-18 12:56:48', 'Publish', 1),
(41, 'default', '2015-03-18 12:57:23', 'Initial version.', 1),
(42, 'default', '2015-03-18 12:57:34', 'Initial version.', 1),
(43, 'default', '2015-03-18 12:57:44', 'Initial version.', 1),
(44, 'default', '2015-03-18 12:57:54', 'Initial version.', 1),
(45, 'default', '2015-03-18 12:58:04', 'Initial version.', 1),
(46, 'default', '2015-03-18 12:58:17', 'Initial version.', 1),
(47, 'default', '2015-03-18 12:58:27', 'Initial version.', 1),
(48, 'default', '2015-03-18 12:58:39', 'Publish', 1),
(49, 'default', '2015-03-18 12:58:41', 'Publish', 1),
(50, 'default', '2015-03-18 12:58:42', 'Publish', 1),
(51, 'default', '2015-03-18 12:58:44', 'Publish', 1),
(52, 'default', '2015-03-18 12:58:45', 'Publish', 1),
(53, 'default', '2015-03-18 12:58:47', 'Publish', 1),
(54, 'default', '2015-03-18 12:58:49', 'Publish', 1),
(55, 'default', '2015-03-23 06:45:35', 'Плагины были перемещены', 1),
(56, 'default', '2015-03-23 06:45:37', 'Publish', 1),
(57, 'default', '2015-03-23 06:46:15', 'Publish', 1),
(58, 'default', '2015-03-23 06:47:39', 'Publish', 1),
(59, 'default', '2015-03-23 06:55:07', 'Publish', 1),
(60, 'default', '2015-03-23 06:58:01', 'Изменен template и xframe_options.', 1),
(61, 'default', '2015-03-23 06:58:07', 'Publish', 1),
(62, 'default', '2015-03-23 06:58:09', 'Publish', 1),
(63, 'default', '2015-03-23 06:58:15', 'Publish', 1),
(64, 'default', '2015-03-23 07:06:18', 'Шаблон изменен на Внутренние страницы', 1),
(65, 'default', '2015-03-23 07:06:24', 'Publish', 1),
(66, 'default', '2015-04-14 09:12:18', 'Шаблон изменен на Питомник', 1),
(67, 'default', '2015-04-14 09:15:45', 'Publish', 1),
(68, 'default', '2015-04-14 15:35:22', 'Шаблон изменен на Питомник', 1),
(69, 'default', '2015-04-14 15:35:28', 'Publish', 1),
(70, 'default', '2015-04-15 06:51:34', 'Блок с животными плагин добавлен в content', 1),
(71, 'default', '2015-04-15 06:52:08', 'Блок с животными плагин, редактируемый в 0 в content', 1),
(72, 'default', '2015-04-15 07:05:37', 'Publish', 1),
(73, 'default', '2015-04-15 07:06:05', 'Блок с животными плагин добавлен в content_bottom', 1),
(74, 'default', '2015-04-15 07:06:25', 'Блок с животными плагин, редактируемый в 0 в content_bottom', 1),
(75, 'default', '2015-04-15 07:06:38', 'Publish', 1),
(76, 'default', '2015-04-15 07:09:51', 'Баннер плагин добавлен в content', 1),
(77, 'default', '2015-04-15 07:21:24', 'Баннер плагин, редактируемый в 1 в content', 1),
(78, 'default', '2015-04-15 07:26:49', 'Publish', 1),
(79, 'default', '2015-04-15 07:29:56', 'Баннер плагин, редактируемый в 1 в content', 1),
(80, 'default', '2015-04-15 07:31:04', 'Баннер плагин добавлен в content', 1),
(81, 'default', '2015-04-15 07:32:25', 'Баннер плагин, редактируемый в 2 в content', 1),
(82, 'default', '2015-04-15 07:33:08', 'Баннер плагин, редактируемый в 2 в content', 1),
(83, 'default', '2015-04-15 07:34:01', 'Publish', 1),
(84, 'default', '2015-04-15 07:53:12', 'Галлерея плагин добавлен в content', 1),
(85, 'default', '2015-04-15 07:53:19', 'Галлерея плагин, редактируемый в 0 в content', 1),
(86, 'default', '2015-04-15 07:53:49', 'Publish', 1),
(87, 'default', '2015-04-15 09:49:07', 'Publish', 1),
(88, 'default', '2015-04-15 09:51:28', 'Изменен title и slug.', 1),
(89, 'default', '2015-04-15 09:51:46', 'Изменен title и slug.', 1),
(90, 'default', '2015-04-15 09:51:54', 'Publish', 1),
(91, 'default', '2015-04-15 09:51:57', 'Publish', 1),
(92, 'default', '2015-04-15 10:37:27', 'Контакты плагин добавлен в content', 1),
(93, 'default', '2015-04-15 10:39:11', 'Контакты плагин, редактируемый в 0 в content', 1),
(94, 'default', '2015-04-15 10:39:41', 'Publish', 1),
(95, 'default', '2015-04-15 10:57:33', 'Контакты плагин, редактируемый в 0 в content', 1),
(96, 'default', '2015-04-15 10:59:38', 'Контакты плагин, редактируемый в 0 в content', 1),
(97, 'default', '2015-04-15 11:21:14', 'Publish', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `reversion_version`
--

CREATE TABLE IF NOT EXISTS `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` longtext NOT NULL,
  `object_id_int` int(11) DEFAULT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_version_0c9ba3a3` (`object_id_int`),
  KEY `reversion_version_417f1b1c` (`content_type_id`),
  KEY `reversion_version_5de09a8d` (`revision_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=846 ;

--
-- Дамп данных таблицы `reversion_version`
--

INSERT INTO `reversion_version` (`id`, `object_id`, `object_id_int`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`) VALUES
(1, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2], "changed_date": "2015-03-16T14:18:11.811Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11.696Z", "creation_date": "2015-03-16T14:18:11.593Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 1),
(2, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 1),
(3, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 1),
(23, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 6),
(24, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:12:51.445Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-17T06:12:51.408Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 6),
(25, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 6),
(26, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 7),
(27, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 7),
(28, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:13:01.334Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 7),
(29, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 7),
(30, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 8),
(31, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 8),
(32, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 8),
(33, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:17:58.189Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 8),
(34, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 8),
(35, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 9),
(36, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 9),
(37, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 9),
(38, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:18:04.296Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04.167Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 9),
(39, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 9),
(40, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 10),
(41, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 10),
(42, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 10),
(43, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:18:07.227Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 10),
(44, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 10),
(45, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 11),
(46, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 11),
(47, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 11),
(48, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:18:09.749Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 11),
(49, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 11),
(62, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:32:43.170Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 14),
(63, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 14),
(64, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 14),
(65, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 14),
(66, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 14),
(67, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": false, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 14),
(68, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [10], "changed_date": "2015-03-17T06:32:48.449Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 15),
(69, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 15),
(70, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 15),
(71, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 15),
(72, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 15),
(73, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 15),
(138, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T06:47:04Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 22),
(139, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 22),
(140, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 22),
(141, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 22),
(142, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 22),
(143, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 22),
(144, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 22),
(145, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 22),
(146, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 22),
(147, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 22),
(148, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 22),
(149, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 22),
(150, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 22),
(151, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:09:29.088Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 23),
(152, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 23),
(153, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 23),
(154, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 23),
(155, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 23),
(156, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 23),
(157, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 23),
(158, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 23),
(159, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 23),
(160, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 23),
(161, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 23),
(162, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 23),
(163, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 23),
(164, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:09:29Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 24),
(165, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 24),
(166, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 24),
(167, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 24),
(168, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 24),
(169, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 24),
(170, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 24),
(171, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 24),
(172, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 24),
(173, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 24),
(174, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 24),
(175, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 24),
(176, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:38Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 24),
(177, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 24),
(178, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:15:38Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 25),
(179, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 25),
(180, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 25),
(181, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 25),
(182, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 25),
(183, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 25),
(184, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 25),
(185, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 25),
(186, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 25),
(187, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 25),
(188, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 25),
(189, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 25),
(190, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 25),
(191, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 25),
(192, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 25),
(193, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:16:00.649Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 26),
(194, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 26),
(195, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 26),
(196, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 26),
(197, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 26),
(198, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 26),
(199, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 26),
(200, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 26),
(201, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 26),
(202, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 26),
(203, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 26),
(204, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 26),
(205, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 26),
(206, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 26),
(207, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 26),
(208, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:16:00Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 27),
(209, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 27),
(210, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 27),
(211, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 27),
(212, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 27),
(213, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 27),
(214, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 27),
(215, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 27),
(216, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 27),
(217, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 27),
(218, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 27),
(219, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 27),
(220, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 27),
(221, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 27),
(222, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 27);
INSERT INTO `reversion_version` (`id`, `object_id`, `object_id_int`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`) VALUES
(223, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 27),
(224, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 27),
(225, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 27),
(226, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 27),
(227, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:24:56Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 28),
(228, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 28),
(229, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 28),
(230, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 28),
(231, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 28),
(232, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 28),
(233, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 28),
(234, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 28),
(235, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 28),
(236, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 28),
(237, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 28),
(238, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 28),
(239, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 28),
(240, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 28),
(241, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 28),
(242, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 28),
(243, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 28),
(244, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 28),
(245, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 28),
(246, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T07:25:39.094Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Home', 15, 29),
(247, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 29),
(248, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 29),
(249, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:09:09Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 29),
(250, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 29),
(251, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 29),
(252, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 29),
(253, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 29),
(254, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 29),
(255, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 29),
(256, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 29),
(257, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 29),
(258, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 29),
(259, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 29),
(260, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 29),
(261, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 29),
(262, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 29),
(263, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 29),
(264, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 29),
(265, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": false, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 30),
(266, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 30),
(267, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 30),
(268, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-03-18T12:55:53.890Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:55:53.810Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 30),
(269, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": false, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 31),
(270, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 31),
(271, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 31),
(272, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-03-18T12:55:58.593Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 31),
(273, '18', 18, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430", "has_url_overwrite": false, "redirect": null, "page": 6, "published": false, "path": "kotyata", "creation_date": "2015-03-18T12:56:10Z", "slug": "kotyata"}, "model": "cms.title", "pk": 18}]', 'Котята (kotyata, ru)', 20, 32),
(274, '22', 22, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 22}]', 'content', 13, 32),
(275, '6', 6, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 6, "placeholders": [21, 22], "changed_date": "2015-03-18T12:56:10.707Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:56:10.634Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 6}]', 'Котята', 15, 32),
(276, '21', 21, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 21}]', 'header', 13, 32),
(277, '23', 23, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 23}]', 'header', 13, 33),
(278, '24', 24, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 24}]', 'content', 13, 33),
(279, '19', 19, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u044b", "has_url_overwrite": false, "redirect": null, "page": 7, "published": false, "path": "partnery", "creation_date": "2015-03-18T12:56:19Z", "slug": "partnery"}, "model": "cms.title", "pk": 19}]', 'Партнеры (partnery, ru)', 20, 33),
(280, '7', 7, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 7, "placeholders": [23, 24], "changed_date": "2015-03-18T12:56:19.907Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:56:19.873Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 7}]', 'Партнеры', 15, 33),
(281, '8', 8, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 8, "placeholders": [25, 26], "changed_date": "2015-03-18T12:56:28.321Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:56:28.286Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 8}]', 'Развлекалка', 15, 34),
(282, '25', 25, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 25}]', 'header', 13, 34),
(283, '26', 26, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 26}]', 'content', 13, 34),
(284, '20', 20, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0420\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u043b\\u043a\\u0430", "has_url_overwrite": false, "redirect": null, "page": 8, "published": false, "path": "razvlekalka", "creation_date": "2015-03-18T12:56:28Z", "slug": "razvlekalka"}, "model": "cms.title", "pk": 20}]', 'Развлекалка (razvlekalka, ru)', 20, 34),
(285, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 9, "placeholders": [27, 28], "changed_date": "2015-03-18T12:56:37.020Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:56:36.982Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 35),
(286, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 35),
(287, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 35),
(288, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": false, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 35),
(289, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 9, "placeholders": [27, 28], "changed_date": "2015-03-18T12:56:42.578Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42.427Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 36),
(290, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 36),
(291, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 36),
(292, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 36),
(293, '8', 8, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 8, "placeholders": [25, 26], "changed_date": "2015-03-18T12:56:44.060Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:43.880Z", "creation_date": "2015-03-18T12:56:28Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 8}]', 'Развлекалка', 15, 37),
(294, '25', 25, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 25}]', 'header', 13, 37),
(295, '26', 26, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 26}]', 'content', 13, 37),
(296, '20', 20, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0420\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u043b\\u043a\\u0430", "has_url_overwrite": false, "redirect": null, "page": 8, "published": true, "path": "razvlekalka", "creation_date": "2015-03-18T12:56:28Z", "slug": "razvlekalka"}, "model": "cms.title", "pk": 20}]', 'Развлекалка (razvlekalka, ru)', 20, 37),
(297, '24', 24, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 24}]', 'content', 13, 38),
(298, '19', 19, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0430\\u0440\\u0442\\u043d\\u0435\\u0440\\u044b", "has_url_overwrite": false, "redirect": null, "page": 7, "published": true, "path": "partnery", "creation_date": "2015-03-18T12:56:19Z", "slug": "partnery"}, "model": "cms.title", "pk": 19}]', 'Партнеры (partnery, ru)', 20, 38),
(299, '7', 7, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 7, "placeholders": [23, 24], "changed_date": "2015-03-18T12:56:45.715Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:45.369Z", "creation_date": "2015-03-18T12:56:19Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 7}]', 'Партнеры', 15, 38),
(300, '23', 23, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 23}]', 'header', 13, 38),
(301, '6', 6, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 6, "placeholders": [21, 22], "changed_date": "2015-03-18T12:56:46.929Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:46.802Z", "creation_date": "2015-03-18T12:56:10Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 6}]', 'Котята', 15, 39),
(302, '18', 18, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430", "has_url_overwrite": false, "redirect": null, "page": 6, "published": true, "path": "kotyata", "creation_date": "2015-03-18T12:56:10Z", "slug": "kotyata"}, "model": "cms.title", "pk": 18}]', 'Котята (kotyata, ru)', 20, 39),
(303, '21', 21, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 21}]', 'header', 13, 39),
(304, '22', 22, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 22}]', 'content', 13, 39),
(305, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 40),
(306, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 40),
(307, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 40),
(308, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-03-18T12:56:48.567Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48.260Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 40),
(309, '40', 40, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 40}]', 'content', 13, 41),
(310, '39', 39, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 39}]', 'header', 13, 41),
(311, '27', 27, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u041c\\u0418 \\u043f\\u0440\\u043e \\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 15, "published": false, "path": "razvlekalka/smi-pro-savanny", "creation_date": "2015-03-18T12:57:23Z", "slug": "smi-pro-savanny"}, "model": "cms.title", "pk": 27}]', 'СМИ про Саванны (smi-pro-savanny, ru)', 20, 41),
(312, '15', 15, 'json', '[{"fields": {"rght": 3, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 2, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [39, 40], "changed_date": "2015-03-18T12:57:23.297Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:57:23.240Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 15}]', 'СМИ про Саванны', 15, 41),
(313, '16', 16, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [41, 42], "changed_date": "2015-03-18T12:57:34.435Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:57:34.398Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 16}]', 'Картинки', 15, 42),
(314, '41', 41, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 41}]', 'header', 13, 42),
(315, '42', 42, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 42}]', 'content', 13, 42),
(316, '28', 28, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438", "has_url_overwrite": false, "redirect": null, "page": 16, "published": false, "path": "razvlekalka/kartinki", "creation_date": "2015-03-18T12:57:34Z", "slug": "kartinki"}, "model": "cms.title", "pk": 28}]', 'Картинки (kartinki, ru)', 20, 42),
(317, '17', 17, 'json', '[{"fields": {"rght": 7, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 6, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [43, 44], "changed_date": "2015-03-18T12:57:44.568Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:57:44.268Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 17}]', 'Видео', 15, 43),
(318, '43', 43, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 43}]', 'header', 13, 43),
(319, '44', 44, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 44}]', 'content', 13, 43),
(320, '29', 29, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0412\\u0438\\u0434\\u0435\\u043e", "has_url_overwrite": false, "redirect": null, "page": 17, "published": false, "path": "razvlekalka/video", "creation_date": "2015-03-18T12:57:44Z", "slug": "video"}, "model": "cms.title", "pk": 29}]', 'Видео (video, ru)', 20, 43),
(321, '18', 18, 'json', '[{"fields": {"rght": 9, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 8, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [45, 46], "changed_date": "2015-03-18T12:57:54.108Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:57:54.084Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 18}]', 'Кошки в исскустве', 15, 44),
(322, '46', 46, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 46}]', 'content', 13, 44),
(323, '30', 30, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u0448\\u043a\\u0438 \\u0432 \\u0438\\u0441\\u0441\\u043a\\u0443\\u0441\\u0442\\u0432\\u0435", "has_url_overwrite": false, "redirect": null, "page": 18, "published": false, "path": "razvlekalka/koshki-v-isskustve", "creation_date": "2015-03-18T12:57:54Z", "slug": "koshki-v-isskustve"}, "model": "cms.title", "pk": 30}]', 'Кошки в исскустве (koshki-v-isskustve, ru)', 20, 44),
(324, '45', 45, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 45}]', 'header', 13, 44),
(325, '48', 48, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 48}]', 'content', 13, 45),
(326, '47', 47, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 47}]', 'header', 13, 45),
(327, '19', 19, 'json', '[{"fields": {"rght": 11, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 10, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [47, 48], "changed_date": "2015-03-18T12:58:04.306Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:58:04.166Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 19}]', 'Библиотека', 15, 45),
(328, '31', 31, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0411\\u0438\\u0431\\u043b\\u0438\\u043e\\u0442\\u0435\\u043a\\u0430", "has_url_overwrite": false, "redirect": null, "page": 19, "published": false, "path": "razvlekalka/biblioteka", "creation_date": "2015-03-18T12:58:04Z", "slug": "biblioteka"}, "model": "cms.title", "pk": 31}]', 'Библиотека (biblioteka, ru)', 20, 45),
(329, '32', 32, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b", "has_url_overwrite": false, "redirect": null, "page": 20, "published": false, "path": "savanny/istoriya-porody", "creation_date": "2015-03-18T12:58:17Z", "slug": "istoriya-porody"}, "model": "cms.title", "pk": 32}]', 'История породы (istoriya-porody, ru)', 20, 46),
(330, '49', 49, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 49}]', 'header', 13, 46),
(331, '50', 50, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 50}]', 'content', 13, 46),
(332, '20', 20, 'json', '[{"fields": {"rght": 3, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 2, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [49, 50], "changed_date": "2015-03-18T12:58:17.450Z", "limit_visibility_in_menu": null, "parent": 3, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:58:17.406Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 20}]', 'История породы', 15, 46),
(333, '33', 33, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u0435\\u043d\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f", "has_url_overwrite": false, "redirect": null, "page": 21, "published": false, "path": "savanny/generaciya", "creation_date": "2015-03-18T12:58:27Z", "slug": "generaciya"}, "model": "cms.title", "pk": 33}]', 'Генерация (generaciya, ru)', 20, 47),
(334, '51', 51, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 51}]', 'header', 13, 47),
(335, '52', 52, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 52}]', 'content', 13, 47),
(336, '21', 21, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [51, 52], "changed_date": "2015-03-18T12:58:27.671Z", "limit_visibility_in_menu": null, "parent": 3, "soft_root": false, "is_home": false, "publication_date": null, "creation_date": "2015-03-18T12:58:27.651Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 21}]', 'Генерация', 15, 47),
(337, '48', 48, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 48}]', 'content', 13, 48),
(338, '31', 31, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0411\\u0438\\u0431\\u043b\\u0438\\u043e\\u0442\\u0435\\u043a\\u0430", "has_url_overwrite": false, "redirect": null, "page": 19, "published": true, "path": "razvlekalka/biblioteka", "creation_date": "2015-03-18T12:58:04Z", "slug": "biblioteka"}, "model": "cms.title", "pk": 31}]', 'Библиотека (biblioteka, ru)', 20, 48),
(339, '19', 19, 'json', '[{"fields": {"rght": 11, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 10, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [47, 48], "changed_date": "2015-03-18T12:58:39.431Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:39.319Z", "creation_date": "2015-03-18T12:58:04Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 19}]', 'Библиотека', 15, 48),
(340, '47', 47, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 47}]', 'header', 13, 48),
(341, '18', 18, 'json', '[{"fields": {"rght": 9, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 8, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [45, 46], "changed_date": "2015-03-18T12:58:41.026Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:40.899Z", "creation_date": "2015-03-18T12:57:54Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 18}]', 'Кошки в исскустве', 15, 49),
(342, '30', 30, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u0448\\u043a\\u0438 \\u0432 \\u0438\\u0441\\u0441\\u043a\\u0443\\u0441\\u0442\\u0432\\u0435", "has_url_overwrite": false, "redirect": null, "page": 18, "published": true, "path": "razvlekalka/koshki-v-isskustve", "creation_date": "2015-03-18T12:57:54Z", "slug": "koshki-v-isskustve"}, "model": "cms.title", "pk": 30}]', 'Кошки в исскустве (koshki-v-isskustve, ru)', 20, 49),
(343, '45', 45, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 45}]', 'header', 13, 49),
(344, '46', 46, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 46}]', 'content', 13, 49),
(345, '17', 17, 'json', '[{"fields": {"rght": 7, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 6, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [43, 44], "changed_date": "2015-03-18T12:58:42.660Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:42.549Z", "creation_date": "2015-03-18T12:57:44Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 17}]', 'Видео', 15, 50),
(346, '43', 43, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 43}]', 'header', 13, 50),
(347, '44', 44, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 44}]', 'content', 13, 50),
(348, '29', 29, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0412\\u0438\\u0434\\u0435\\u043e", "has_url_overwrite": false, "redirect": null, "page": 17, "published": true, "path": "razvlekalka/video", "creation_date": "2015-03-18T12:57:44Z", "slug": "video"}, "model": "cms.title", "pk": 29}]', 'Видео (video, ru)', 20, 50),
(349, '16', 16, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [41, 42], "changed_date": "2015-03-18T12:58:44.179Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:44.093Z", "creation_date": "2015-03-18T12:57:34Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 16}]', 'Картинки', 15, 51),
(350, '41', 41, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 41}]', 'header', 13, 51),
(351, '42', 42, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 42}]', 'content', 13, 51),
(352, '28', 28, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438", "has_url_overwrite": false, "redirect": null, "page": 16, "published": true, "path": "razvlekalka/kartinki", "creation_date": "2015-03-18T12:57:34Z", "slug": "kartinki"}, "model": "cms.title", "pk": 28}]', 'Картинки (kartinki, ru)', 20, 51),
(353, '40', 40, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 40}]', 'content', 13, 52),
(354, '27', 27, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u041c\\u0418 \\u043f\\u0440\\u043e \\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": null, "page": 15, "published": true, "path": "razvlekalka/smi-pro-savanny", "creation_date": "2015-03-18T12:57:23Z", "slug": "smi-pro-savanny"}, "model": "cms.title", "pk": 27}]', 'СМИ про Саванны (smi-pro-savanny, ru)', 20, 52),
(355, '15', 15, 'json', '[{"fields": {"rght": 3, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 2, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [39, 40], "changed_date": "2015-03-18T12:58:45.830Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:45.723Z", "creation_date": "2015-03-18T12:57:23Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 15}]', 'СМИ про Саванны', 15, 52),
(356, '39', 39, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 39}]', 'header', 13, 52),
(357, '33', 33, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u0435\\u043d\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f", "has_url_overwrite": false, "redirect": null, "page": 21, "published": true, "path": "savanny/generaciya", "creation_date": "2015-03-18T12:58:27Z", "slug": "generaciya"}, "model": "cms.title", "pk": 33}]', 'Генерация (generaciya, ru)', 20, 53),
(358, '51', 51, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 51}]', 'header', 13, 53),
(359, '52', 52, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 52}]', 'content', 13, 53);
INSERT INTO `reversion_version` (`id`, `object_id`, `object_id_int`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`) VALUES
(360, '21', 21, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [51, 52], "changed_date": "2015-03-18T12:58:47.289Z", "limit_visibility_in_menu": null, "parent": 3, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:47.178Z", "creation_date": "2015-03-18T12:58:27Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 21}]', 'Генерация', 15, 53),
(361, '32', 32, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0418\\u0441\\u0442\\u043e\\u0440\\u0438\\u044f \\u043f\\u043e\\u0440\\u043e\\u0434\\u044b", "has_url_overwrite": false, "redirect": null, "page": 20, "published": true, "path": "savanny/istoriya-porody", "creation_date": "2015-03-18T12:58:17Z", "slug": "istoriya-porody"}, "model": "cms.title", "pk": 32}]', 'История породы (istoriya-porody, ru)', 20, 54),
(362, '49', 49, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 49}]', 'header', 13, 54),
(363, '50', 50, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 50}]', 'content', 13, 54),
(364, '20', 20, 'json', '[{"fields": {"rght": 3, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 2, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 3, "placeholders": [49, 50], "changed_date": "2015-03-18T12:58:49.036Z", "limit_visibility_in_menu": null, "parent": 3, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:48.627Z", "creation_date": "2015-03-18T12:58:17Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 20}]', 'История породы', 15, 54),
(365, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-18T12:56:48Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 55),
(366, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 55),
(367, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 55),
(368, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-23T06:45:35Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 2, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 55),
(369, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 55),
(370, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 55),
(371, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 55),
(372, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 55),
(373, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 55),
(374, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 55),
(375, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 55),
(376, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 55),
(377, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 55),
(378, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 55),
(379, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 55),
(380, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 55),
(381, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 55),
(382, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 55),
(383, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 55),
(384, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-23T06:45:37.125Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 56),
(385, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 56),
(386, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 56),
(387, '1', 1, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-23T06:45:35Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 1, "position": 0, "placeholder": 2, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 1}]', '1', 14, 56),
(388, '1', 1, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder \\u043e\\u0431\\u0449\\u0435\\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043b\\u0443\\u0447\\u0448\\u0438\\u0445, \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u043e\\u0432. \\u041c\\u044b \\u0421\\u0432\\u044f\\u0437\\u044c \\u043c\\u0435\\u0436\\u0434\\u0443 \\u0441\\u0435\\u043c\\u0435\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442 \\u0437\\u0434\\u043e\\u0440\\u043e\\u0432\\u043e\\u0433\\u043e, \\u0441\\u0447\\u0430\\u0441\\u0442\\u043b\\u0438\\u0432\\u043e\\u0433\\u043e \\u0449\\u0435\\u043d\\u043a\\u0430 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u043c\\u0438 \\u0441\\u043e\\u0431\\u0430\\u043a\\u043e\\u0432\\u043e\\u0434\\u0430\\u043c\\u0438 \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 1}]', 'Текст 1', 45, 56),
(389, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 56),
(390, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 56),
(391, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 56),
(392, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 56),
(393, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 56),
(394, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 56),
(395, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 56),
(396, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 56),
(397, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 56),
(398, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 56),
(399, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 56),
(400, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 56),
(401, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 56),
(402, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 56),
(403, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-23T06:46:15.359Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 57),
(404, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 57),
(405, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 57),
(406, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 57),
(407, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 57),
(408, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 57),
(409, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 57),
(410, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 57),
(411, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 57),
(412, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 57),
(413, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 57),
(414, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 57),
(415, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 57),
(416, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 57),
(417, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 57),
(418, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 57),
(419, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 57),
(420, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-23T06:47:39.155Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 58),
(421, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 58),
(422, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 58),
(423, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 58),
(424, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 58),
(425, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 58),
(426, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 58),
(427, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 58),
(428, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 58),
(429, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 58),
(430, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 58),
(431, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 58),
(432, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 58),
(433, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 58),
(434, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 58),
(435, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 58),
(436, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 58),
(437, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-03-23T06:55:07.592Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 59),
(438, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 59),
(439, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 59),
(440, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 59),
(441, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 59),
(442, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 59),
(443, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 59),
(444, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 59),
(445, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 59),
(446, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 59),
(447, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 59),
(448, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 59),
(449, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 59),
(450, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 59),
(451, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 59),
(452, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 59),
(453, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 59),
(454, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69], "changed_date": "2015-03-23T06:58:01.128Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 60),
(455, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 60),
(456, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 60),
(457, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 60),
(458, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 60),
(459, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 60),
(460, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 60),
(461, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69], "changed_date": "2015-03-23T06:58:07.240Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 61),
(462, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 61),
(463, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 61),
(464, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 61),
(465, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 61),
(466, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 61),
(467, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 61),
(468, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69], "changed_date": "2015-03-23T06:58:09.740Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 62),
(469, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 62),
(470, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 62),
(471, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 62),
(472, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 62),
(473, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 62),
(474, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 62),
(475, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69], "changed_date": "2015-03-23T06:58:15.489Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 63),
(476, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 63),
(477, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 63),
(478, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 63),
(479, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 63),
(480, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 63),
(481, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 63),
(482, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 64),
(483, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 64),
(484, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 64),
(485, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "inner.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-03-23T07:06:18.765Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 64),
(486, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 65),
(487, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 65),
(488, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 65),
(489, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "inner.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-03-23T07:06:24.634Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 65),
(490, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 66),
(491, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 66),
(492, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 66),
(493, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "cats.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-04-14T09:12:18.255Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 66),
(494, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 67),
(495, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 67),
(496, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 67),
(497, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "cats.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-04-14T09:15:45.732Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 67),
(498, '6', 6, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "cats.html", "tree_id": 7, "placeholders": [21, 22], "changed_date": "2015-04-14T15:35:22.750Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:46Z", "creation_date": "2015-03-18T12:56:10Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 6}]', 'Котята', 15, 68),
(499, '18', 18, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430", "has_url_overwrite": false, "redirect": null, "page": 6, "published": true, "path": "kotyata", "creation_date": "2015-03-18T12:56:10Z", "slug": "kotyata"}, "model": "cms.title", "pk": 18}]', 'Котята (kotyata, ru)', 20, 68),
(500, '21', 21, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 21}]', 'header', 13, 68),
(501, '22', 22, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 22}]', 'content', 13, 68),
(502, '6', 6, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "cats.html", "tree_id": 7, "placeholders": [21, 22], "changed_date": "2015-04-14T15:35:27.969Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:46Z", "creation_date": "2015-03-18T12:56:10Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 6}]', 'Котята', 15, 69);
INSERT INTO `reversion_version` (`id`, `object_id`, `object_id_int`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`) VALUES
(503, '18', 18, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430", "has_url_overwrite": false, "redirect": null, "page": 6, "published": true, "path": "kotyata", "creation_date": "2015-03-18T12:56:10Z", "slug": "kotyata"}, "model": "cms.title", "pk": 18}]', 'Котята (kotyata, ru)', 20, 69),
(504, '21', 21, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 21}]', 'header', 13, 69),
(505, '22', 22, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 22}]', 'content', 13, 69),
(506, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-14T15:35:28Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 70),
(507, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 70),
(508, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 70),
(509, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 70),
(510, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 70),
(511, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 70),
(512, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 70),
(513, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 70),
(514, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 70),
(515, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 70),
(516, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 70),
(517, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 70),
(518, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 70),
(519, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:51:33Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 70),
(520, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 70),
(521, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 70),
(522, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 70),
(523, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 70),
(524, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T06:51:34Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 71),
(525, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 71),
(526, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 71),
(527, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 71),
(528, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 71),
(529, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 71),
(530, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 71),
(531, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 71),
(532, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 71),
(533, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 71),
(534, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 71),
(535, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 71),
(536, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 71),
(537, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 71),
(538, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 71),
(539, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 71),
(540, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 71),
(541, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 71),
(542, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 71),
(543, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:05:36.911Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 72),
(544, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 72),
(545, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 72),
(546, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 72),
(547, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 72),
(548, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 72),
(549, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 72),
(550, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 72),
(551, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 72),
(552, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 72),
(553, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 72),
(554, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 72),
(555, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 72),
(556, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 72),
(557, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 72),
(558, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 72),
(559, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 72),
(560, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 72),
(561, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 72),
(562, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69, 70], "changed_date": "2015-03-23T06:58:15Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 73),
(563, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 73),
(564, '70', 70, 'json', '[{"fields": {"slot": "content_bottom", "default_width": null}, "model": "cms.placeholder", "pk": 70}]', 'content_bottom', 13, 73),
(565, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 73),
(566, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 73),
(567, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 73),
(568, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 73),
(569, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 73),
(570, '23', 23, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:06:04Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:06:04Z", "lft": 1, "tree_id": 20, "position": 0, "placeholder": 70, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 23}]', '23', 14, 73),
(571, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69, 70], "changed_date": "2015-04-15T07:06:05Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 74),
(572, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 74),
(573, '70', 70, 'json', '[{"fields": {"slot": "content_bottom", "default_width": null}, "model": "cms.placeholder", "pk": 70}]', 'content_bottom', 13, 74),
(574, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 74),
(575, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 74),
(576, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 74),
(577, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 74),
(578, '23', 23, 'json', '[{"fields": {"auto": false, "cats": [13, 12, 11], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 23}]', 'Котята в наличии', 54, 74),
(579, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 74),
(580, '23', 23, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:06:24Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:06:04Z", "lft": 1, "tree_id": 20, "position": 0, "placeholder": 70, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 23}]', '23', 14, 74),
(581, '3', 3, 'json', '[{"fields": {"rght": 2, "navigation_extenders": "", "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "inner.html", "tree_id": 3, "placeholders": [10, 69, 70], "changed_date": "2015-04-15T07:06:38.458Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-17T06:18:04Z", "creation_date": "2015-03-17T06:12:51Z", "level": 0, "changed_by": "admin", "application_urls": "", "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 3}]', 'Саванны', 15, 75),
(582, '69', 69, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 69}]', 'header', 13, 75),
(583, '70', 70, 'json', '[{"fields": {"slot": "content_bottom", "default_width": null}, "model": "cms.placeholder", "pk": 70}]', 'content_bottom', 13, 75),
(584, '7', 7, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0421\\u0430\\u0432\\u0430\\u043d\\u043d\\u044b", "has_url_overwrite": false, "redirect": "", "page": 3, "published": true, "path": "savanny", "creation_date": "2015-03-17T06:12:51Z", "slug": "savanny"}, "model": "cms.title", "pk": 7}]', 'Саванны (savanny, ru)', 20, 75),
(585, '8', 8, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "About savannas", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "about-savannas", "creation_date": "2015-03-17T06:13:01Z", "slug": "about-savannas"}, "model": "cms.title", "pk": 8}]', 'About savannas (about-savannas, en)', 20, 75),
(586, '9', 9, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:17:58Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 9}]', 'Savan kedileri (savan-kedileri, tur)', 20, 75),
(587, '10', 10, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 10}]', 'content', 13, 75),
(588, '23', 23, 'json', '[{"fields": {"auto": false, "cats": [13, 12, 11], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 23}]', 'Котята в наличии', 54, 75),
(589, '15', 15, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Savan kedileri", "has_url_overwrite": false, "redirect": null, "page": 3, "published": true, "path": "savan-kedileri", "creation_date": "2015-03-17T06:32:43Z", "slug": "savan-kedileri"}, "model": "cms.title", "pk": 15}]', 'Savan kedileri (savan-kedileri, tr)', 20, 75),
(590, '23', 23, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:06:24Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:06:04Z", "lft": 1, "tree_id": 20, "position": 0, "placeholder": 70, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 23}]', '23', 14, 75),
(591, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:06:38Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 76),
(592, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 76),
(593, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 76),
(594, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 76),
(595, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 76),
(596, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 76),
(597, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 76),
(598, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 76),
(599, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 76),
(600, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 76),
(601, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 76),
(602, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 76),
(603, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 76),
(604, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 76),
(605, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 76),
(606, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 76),
(607, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 76),
(608, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 76),
(609, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:09:51Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 76),
(610, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 76),
(611, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:09:52Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 77),
(612, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 77),
(613, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 77),
(614, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 77),
(615, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 77),
(616, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 77),
(617, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 77),
(618, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 77),
(619, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 77),
(620, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 77),
(621, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 77),
(622, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 77),
(623, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 77),
(624, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 77),
(625, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 77),
(626, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 77),
(627, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "900", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 77),
(628, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 77),
(629, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:21:24Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 77),
(630, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 77),
(631, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 77),
(632, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:26:48.891Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 78),
(633, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 78),
(634, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 78),
(635, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 78),
(636, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 78),
(637, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 78),
(638, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 78),
(639, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 78),
(640, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 78),
(641, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 78),
(642, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 78),
(643, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 78),
(644, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 78),
(645, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 78),
(646, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 78),
(647, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 78),
(648, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "900", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 78),
(649, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 78),
(650, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:21:24Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 78),
(651, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 78),
(652, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 78),
(653, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:26:49Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 79),
(654, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 79),
(655, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 79),
(656, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 79),
(657, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 79),
(658, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 79),
(659, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 79),
(660, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 79),
(661, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 79),
(662, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 79),
(663, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 79);
INSERT INTO `reversion_version` (`id`, `object_id`, `object_id_int`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`) VALUES
(664, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 79),
(665, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 79),
(666, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 79),
(667, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 79),
(668, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 79),
(669, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "1000", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 79),
(670, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 79),
(671, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:29:56Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 79),
(672, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 79),
(673, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 79),
(674, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:29:57Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 80),
(675, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 80),
(676, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 80),
(677, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 80),
(678, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 80),
(679, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 80),
(680, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 80),
(681, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 80),
(682, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 80),
(683, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 80),
(684, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 80),
(685, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:29:56Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 80),
(686, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "1000", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 80),
(687, '29', 29, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:31:04Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:31:04Z", "lft": 1, "tree_id": 26, "position": 2, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 29}]', '29', 14, 80),
(688, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 80),
(689, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 80),
(690, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 80),
(691, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 80),
(692, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 80),
(693, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 80),
(694, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 80),
(695, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 80),
(696, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:31:05Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 81),
(697, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 81),
(698, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 81),
(699, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 81),
(700, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 81),
(701, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 81),
(702, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 81),
(703, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 81),
(704, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 81),
(705, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 81),
(706, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 81),
(707, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:29:56Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 81),
(708, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "1000", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 81),
(709, '29', 29, 'json', '[{"fields": {"url": "http://www.rkz.ru/", "width": "1000", "height": "250", "file": "catalog/glavnaia.png", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 29}]', '29', 55, 81),
(710, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 81),
(711, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 81),
(712, '29', 29, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:32:25Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:31:04Z", "lft": 1, "tree_id": 26, "position": 2, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 29}]', '29', 14, 81),
(713, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 81),
(714, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 81),
(715, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 81),
(716, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 81),
(717, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 81),
(718, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 81),
(719, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:32:26Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 82),
(720, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 82),
(721, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 82),
(722, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 82),
(723, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 82),
(724, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 82),
(725, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 82),
(726, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 82),
(727, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 82),
(728, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 82),
(729, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 82),
(730, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:29:56Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 82),
(731, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "1000", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 82),
(732, '29', 29, 'json', '[{"fields": {"url": "http://www.rkz.ru/", "width": "1000", "height": "150", "file": "catalog/glavnaia.png", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 29}]', '29', 55, 82),
(733, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 82),
(734, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 82),
(735, '29', 29, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:33:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:31:04Z", "lft": 1, "tree_id": 26, "position": 2, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 29}]', '29', 14, 82),
(736, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 82),
(737, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 82),
(738, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 82),
(739, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 82),
(740, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 82),
(741, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 82),
(742, '1', 1, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tur,tr", "publication_end_date": null, "template": "INHERIT", "tree_id": 1, "placeholders": [2, 14, 15, 16], "changed_date": "2015-04-15T07:34:00.809Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": true, "publication_date": "2015-03-16T14:18:11Z", "creation_date": "2015-03-16T14:18:11Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 1}]', 'Главная', 15, 83),
(743, '2', 2, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 2}]', 'content', 13, 83),
(744, '3', 3, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Home", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:26Z", "slug": "home"}, "model": "cms.title", "pk": 3}]', 'Home (home, en)', 20, 83),
(745, '4', 4, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 4}]', '4', 50, 83),
(746, '7', 7, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\"><a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1>\\r\\n<p>\\r\\n\\t<span class=\\"slogan\\"><strong>Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy\\r\\nand the best breeders across the country.</strong></span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 7}]', 'Текст 7', 45, 83),
(747, '8', 8, 'json', '[{"fields": {"slider": 1}, "model": "cms_plugins.sliderpluginmodel", "pk": 8}]', '8', 50, 83),
(748, '2', 2, 'json', '[{"fields": {"h": null, "text": "<h1 class=\\"logo\\">\\r\\n\\t<a href=\\"/\\">Labrador Breeder</a>\\r\\n</h1><p>\\r\\n<span class=\\"slogan\\">Labrador Breeder is a nationwide network of only the finest, quality dog breeders. We are a connection between families seeking a healthy, happy puppy and the best breeders across the country.</span>\\r\\n</p>", "class_block": "", "name": ""}, "model": "cms_plugins.textmodelplugin", "pk": 2}]', 'Текст 2', 45, 83),
(749, '14', 14, 'json', '[{"fields": {"slot": "slogan", "default_width": null}, "model": "cms.placeholder", "pk": 14}]', 'slogan', 13, 83),
(750, '15', 15, 'json', '[{"fields": {"slot": "slider", "default_width": null}, "model": "cms.placeholder", "pk": 15}]', 'slider', 13, 83),
(751, '16', 16, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 16}]', 'header', 13, 83),
(752, '20', 20, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T06:52:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T06:51:33Z", "lft": 1, "tree_id": 17, "position": 0, "placeholder": 2, "plugin_type": "CatsPlugin"}, "model": "cms.cmsplugin", "pk": 20}]', '20', 14, 83),
(753, '25', 25, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:29:56Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:09:51Z", "lft": 1, "tree_id": 22, "position": 1, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 25}]', '25', 14, 83),
(754, '25', 25, 'json', '[{"fields": {"url": "http://ya.ru", "width": "1000", "height": "250", "file": "catalog/glavnaia.swf", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 25}]', '25', 55, 83),
(755, '29', 29, 'json', '[{"fields": {"url": "http://www.rkz.ru/", "width": "1000", "height": "150", "file": "catalog/glavnaia.png", "blank": true}, "model": "cms_plugins.bannermodel", "pk": 29}]', '29', 55, 83),
(756, '1', 1, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-16T14:18:11Z", "slug": "glavnaya"}, "model": "cms.title", "pk": 1}]', 'Главная (glavnaya, ru)', 20, 83),
(757, '7', 7, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:25:25Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:20:28Z", "lft": 1, "tree_id": 7, "position": 0, "placeholder": 16, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 7}]', '7', 14, 83),
(758, '29', 29, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:33:08Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:31:04Z", "lft": 1, "tree_id": 26, "position": 2, "placeholder": 2, "plugin_type": "BannerPlugin"}, "model": "cms.cmsplugin", "pk": 29}]', '29', 14, 83),
(759, '8', 8, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:24:56Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 8, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 8}]', '8', 14, 83),
(760, '2', 2, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T06:41:35Z", "parent": null, "language": "en", "level": 0, "creation_date": "2015-03-18T06:40:24Z", "lft": 1, "tree_id": 2, "position": 0, "placeholder": 14, "plugin_type": "TextPlugin"}, "model": "cms.cmsplugin", "pk": 2}]', '2', 14, 83),
(761, '13', 13, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:32:17Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 13}]', 'Ana Sayfa (ana-sayfa, tr)', 20, 83),
(762, '4', 4, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-03-18T07:15:45Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-03-18T07:15:38Z", "lft": 1, "tree_id": 4, "position": 1, "placeholder": 16, "plugin_type": "SliderPlugin"}, "model": "cms.cmsplugin", "pk": 4}]', '4', 14, 83),
(763, '20', 20, 'json', '[{"fields": {"auto": true, "cats": [], "name": "\\u041a\\u043e\\u0442\\u044f\\u0442\\u0430 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438"}, "model": "cms_plugins.catsmodel", "pk": 20}]', 'Котята в наличии', 54, 83),
(764, '4', 4, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tur", "title": "Ana Sayfa", "has_url_overwrite": false, "redirect": null, "page": 1, "published": true, "path": "", "creation_date": "2015-03-17T06:04:31Z", "slug": "ana-sayfa"}, "model": "cms.title", "pk": 4}]', 'Ana Sayfa (ana-sayfa, tur)', 20, 83),
(765, '16', 16, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [41, 42], "changed_date": "2015-03-18T12:58:44Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:44Z", "creation_date": "2015-03-18T12:57:34Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 16}]', 'Картинки', 15, 84),
(766, '41', 41, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 41}]', 'header', 13, 84),
(767, '42', 42, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 42}]', 'content', 13, 84),
(768, '28', 28, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438", "has_url_overwrite": false, "redirect": null, "page": 16, "published": true, "path": "razvlekalka/kartinki", "creation_date": "2015-03-18T12:57:34Z", "slug": "kartinki"}, "model": "cms.title", "pk": 28}]', 'Картинки (kartinki, ru)', 20, 84),
(769, '34', 34, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:53:12Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:53:11Z", "lft": 1, "tree_id": 31, "position": 0, "placeholder": 42, "plugin_type": "GalleryPlugin"}, "model": "cms.cmsplugin", "pk": 34}]', '34', 14, 84),
(770, '34', 34, 'json', '[{"fields": {"gallery": 1}, "model": "cms_plugins.gallerymodel", "pk": 34}]', '34', 56, 85),
(771, '41', 41, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 41}]', 'header', 13, 85),
(772, '42', 42, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 42}]', 'content', 13, 85),
(773, '34', 34, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:53:19Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:53:11Z", "lft": 1, "tree_id": 31, "position": 0, "placeholder": 42, "plugin_type": "GalleryPlugin"}, "model": "cms.cmsplugin", "pk": 34}]', '34', 14, 85),
(774, '16', 16, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [41, 42], "changed_date": "2015-04-15T07:53:12Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:44Z", "creation_date": "2015-03-18T12:57:34Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 16}]', 'Картинки', 15, 85),
(775, '28', 28, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438", "has_url_overwrite": false, "redirect": null, "page": 16, "published": true, "path": "razvlekalka/kartinki", "creation_date": "2015-03-18T12:57:34Z", "slug": "kartinki"}, "model": "cms.title", "pk": 28}]', 'Картинки (kartinki, ru)', 20, 85),
(776, '34', 34, 'json', '[{"fields": {"gallery": 1}, "model": "cms_plugins.gallerymodel", "pk": 34}]', '34', 56, 86),
(777, '41', 41, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 41}]', 'header', 13, 86),
(778, '42', 42, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 42}]', 'content', 13, 86),
(779, '34', 34, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:53:19Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:53:11Z", "lft": 1, "tree_id": 31, "position": 0, "placeholder": 42, "plugin_type": "GalleryPlugin"}, "model": "cms.cmsplugin", "pk": 34}]', '34', 14, 86),
(780, '16', 16, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [41, 42], "changed_date": "2015-04-15T07:53:48.922Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:44Z", "creation_date": "2015-03-18T12:57:34Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 16}]', 'Картинки', 15, 86),
(781, '28', 28, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438", "has_url_overwrite": false, "redirect": null, "page": 16, "published": true, "path": "razvlekalka/kartinki", "creation_date": "2015-03-18T12:57:34Z", "slug": "kartinki"}, "model": "cms.title", "pk": 28}]', 'Картинки (kartinki, ru)', 20, 86),
(782, '34', 34, 'json', '[{"fields": {"gallery": 1}, "model": "cms_plugins.gallerymodel", "pk": 34}]', '34', 56, 87),
(783, '41', 41, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 41}]', 'header', 13, 87),
(784, '42', 42, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 42}]', 'content', 13, 87),
(785, '34', 34, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T07:53:19Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T07:53:11Z", "lft": 1, "tree_id": 31, "position": 0, "placeholder": 42, "plugin_type": "GalleryPlugin"}, "model": "cms.cmsplugin", "pk": 34}]', '34', 14, 87),
(786, '16', 16, 'json', '[{"fields": {"rght": 5, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 4, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 11, "placeholders": [41, 42], "changed_date": "2015-04-15T09:49:07.464Z", "limit_visibility_in_menu": null, "parent": 8, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:58:44Z", "creation_date": "2015-03-18T12:57:34Z", "level": 1, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 16}]', 'Картинки', 15, 87),
(787, '28', 28, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0438", "has_url_overwrite": false, "redirect": null, "page": 16, "published": true, "path": "razvlekalka/kartinki", "creation_date": "2015-03-18T12:57:34Z", "slug": "kartinki"}, "model": "cms.title", "pk": 28}]', 'Картинки (kartinki, ru)', 20, 87),
(788, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 88),
(789, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 88),
(790, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 88),
(791, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en", "publication_end_date": null, "template": "cats.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-04-15T09:51:28.621Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 88),
(792, '39', 39, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Nursery", "has_url_overwrite": false, "redirect": null, "page": 5, "published": false, "path": "nursery", "creation_date": "2015-04-15T09:51:28Z", "slug": "nursery"}, "model": "cms.title", "pk": 39}]', 'Nursery (nursery, en)', 20, 88),
(793, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tr", "publication_end_date": null, "template": "cats.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-04-15T09:51:46.053Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 89),
(794, '39', 39, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Nursery", "has_url_overwrite": false, "redirect": null, "page": 5, "published": false, "path": "nursery", "creation_date": "2015-04-15T09:51:28Z", "slug": "nursery"}, "model": "cms.title", "pk": 39}]', 'Nursery (nursery, en)', 20, 89),
(795, '40', 40, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Kre\\u015f", "has_url_overwrite": false, "redirect": null, "page": 5, "published": false, "path": "kres", "creation_date": "2015-04-15T09:51:46Z", "slug": "kres"}, "model": "cms.title", "pk": 40}]', 'Kreş (kres, tr)', 20, 89),
(796, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 89),
(797, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 89),
(798, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 89),
(799, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tr", "publication_end_date": null, "template": "cats.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-04-15T09:51:54.221Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 90),
(800, '39', 39, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Nursery", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "nursery", "creation_date": "2015-04-15T09:51:28Z", "slug": "nursery"}, "model": "cms.title", "pk": 39}]', 'Nursery (nursery, en)', 20, 90),
(801, '40', 40, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Kre\\u015f", "has_url_overwrite": false, "redirect": null, "page": 5, "published": false, "path": "kres", "creation_date": "2015-04-15T09:51:46Z", "slug": "kres"}, "model": "cms.title", "pk": 40}]', 'Kreş (kres, tr)', 20, 90),
(802, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 90),
(803, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 90),
(804, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 90),
(805, '5', 5, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru,en,tr", "publication_end_date": null, "template": "cats.html", "tree_id": 5, "placeholders": [19, 20], "changed_date": "2015-04-15T09:51:57.517Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:48Z", "creation_date": "2015-03-18T12:55:53Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 5}]', 'Питомник', 15, 91),
(806, '39', 39, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "en", "title": "Nursery", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "nursery", "creation_date": "2015-04-15T09:51:28Z", "slug": "nursery"}, "model": "cms.title", "pk": 39}]', 'Nursery (nursery, en)', 20, 91),
(807, '40', 40, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "tr", "title": "Kre\\u015f", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "kres", "creation_date": "2015-04-15T09:51:46Z", "slug": "kres"}, "model": "cms.title", "pk": 40}]', 'Kreş (kres, tr)', 20, 91),
(808, '17', 17, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041f\\u0438\\u0442\\u043e\\u043c\\u043d\\u0438\\u043a", "has_url_overwrite": false, "redirect": null, "page": 5, "published": true, "path": "pitomnik", "creation_date": "2015-03-18T12:55:53Z", "slug": "pitomnik"}, "model": "cms.title", "pk": 17}]', 'Питомник (pitomnik, ru)', 20, 91),
(809, '19', 19, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 19}]', 'header', 13, 91),
(810, '20', 20, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 20}]', 'content', 13, 91),
(811, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 13, "placeholders": [27, 28], "changed_date": "2015-03-18T12:56:42Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 92),
(812, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 92),
(813, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 92),
(814, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 92),
(815, '43', 43, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T10:37:27Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T10:37:27Z", "lft": 1, "tree_id": 40, "position": 0, "placeholder": 28, "plugin_type": "ContactPlugin"}, "model": "cms.cmsplugin", "pk": 43}]', '43', 14, 92),
(816, '43', 43, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T10:39:10Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T10:37:27Z", "lft": 1, "tree_id": 40, "position": 0, "placeholder": 28, "plugin_type": "ContactPlugin"}, "model": "cms.cmsplugin", "pk": 43}]', '43', 14, 93),
(817, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 13, "placeholders": [27, 28], "changed_date": "2015-04-15T10:37:28Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 93),
(818, '43', 43, 'json', '[{"fields": {"map": "<iframe src=\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416\\" width", "contact_info": "<dt>The Company Name Inc.<br>\\r\\n9863 - 9867 Mill Road,<br>\\r\\nCambridge, MG09 99HT.</dt>\\r\\n<dd>Freephone:+1 800 559 6580</dd><dd>Telephone:+1 800 603 6035</dd><dd>FAX:+1 800 889 9898</dd><dd>E-mail: <a href=\\"file:///D:/repository/savann/savann/static/index-6.html#\\" class=\\"link\\">mail@demolink.org</a></dd>", "name": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "name_form": "\\u041e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0430\\u044f \\u0441\\u0432\\u044f\\u0437\\u044c"}, "model": "cms_plugins.contactmodel", "pk": 43}]', 'Контакты', 61, 93),
(819, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 93),
(820, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 93),
(821, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 93);
INSERT INTO `reversion_version` (`id`, `object_id`, `object_id_int`, `format`, `serialized_data`, `object_repr`, `content_type_id`, `revision_id`) VALUES
(822, '43', 43, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T10:39:10Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T10:37:27Z", "lft": 1, "tree_id": 40, "position": 0, "placeholder": 28, "plugin_type": "ContactPlugin"}, "model": "cms.cmsplugin", "pk": 43}]', '43', 14, 94),
(823, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 13, "placeholders": [27, 28], "changed_date": "2015-04-15T10:39:41.609Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 94),
(824, '43', 43, 'json', '[{"fields": {"map": "<iframe src=\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416\\" width", "contact_info": "<dt>The Company Name Inc.<br>\\r\\n9863 - 9867 Mill Road,<br>\\r\\nCambridge, MG09 99HT.</dt>\\r\\n<dd>Freephone:+1 800 559 6580</dd><dd>Telephone:+1 800 603 6035</dd><dd>FAX:+1 800 889 9898</dd><dd>E-mail: <a href=\\"file:///D:/repository/savann/savann/static/index-6.html#\\" class=\\"link\\">mail@demolink.org</a></dd>", "name": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "name_form": "\\u041e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0430\\u044f \\u0441\\u0432\\u044f\\u0437\\u044c"}, "model": "cms_plugins.contactmodel", "pk": 43}]', 'Контакты', 61, 94),
(825, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 94),
(826, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 94),
(827, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 94),
(828, '43', 43, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T10:57:33Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T10:37:27Z", "lft": 1, "tree_id": 40, "position": 0, "placeholder": 28, "plugin_type": "ContactPlugin"}, "model": "cms.cmsplugin", "pk": 43}]', '43', 14, 95),
(829, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 13, "placeholders": [27, 28], "changed_date": "2015-04-15T10:39:41Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 95),
(830, '43', 43, 'json', '[{"fields": {"map": "<iframe src=\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416\\" width=\\"400\\" height=\\"300\\" frameborder=\\"0\\" style=\\"border:0\\"></iframe>", "contact_info": "<dt>The Company Name Inc.<br><p>9863 - 9867 Mill Road,<br></p><p>Cambridge, MG09 99HT.</p></dt><dd>Freephone:+1 800 559 6580</dd><dd>Telephone:+1 800 603 6035</dd><dd>FAX:+1 800 889 9898</dd><dd>E-mail: <a href=\\"file:///D:/repository/savann/savann/static/index-6.html#\\" class=\\"link\\">mail@demolink.org</a></dd>", "name": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "name_form": "\\u041e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0430\\u044f \\u0441\\u0432\\u044f\\u0437\\u044c"}, "model": "cms_plugins.contactmodel", "pk": 43}]', 'Контакты', 61, 95),
(831, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 95),
(832, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 95),
(833, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 95),
(834, '43', 43, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T10:59:37Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T10:37:27Z", "lft": 1, "tree_id": 40, "position": 0, "placeholder": 28, "plugin_type": "ContactPlugin"}, "model": "cms.cmsplugin", "pk": 43}]', '43', 14, 96),
(835, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 13, "placeholders": [27, 28], "changed_date": "2015-04-15T10:57:33Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 96),
(836, '43', 43, 'json', '[{"fields": {"map": "<iframe src=\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416\\" width=\\"400\\" height=\\"300\\" frameborder=\\"0\\" style=\\"border:0\\"></iframe>", "contact_info": "<p>The Company Name Inc.<br>\\r\\n\\r\\n\\t9863 - 9867 Mill Road,<br>\\r\\n\\r\\n\\tCambridge, MG09 99HT.\\r\\n</p>\\r\\n\\r\\n<p>Freephone:+1 800 559 6580</br>\\r\\nTelephone:+1 800 603 6035<br>\\r\\nFAX:+1 800 889 9898<br>\\r\\nE-mail: <a href=\\"/\\" class=\\"link\\">mail@demolink.org</a></p>", "name": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "name_form": "\\u041e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0430\\u044f \\u0441\\u0432\\u044f\\u0437\\u044c"}, "model": "cms_plugins.contactmodel", "pk": 43}]', 'Контакты', 61, 96),
(837, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 96),
(838, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 96),
(839, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 96),
(840, '43', 43, 'json', '[{"fields": {"rght": 2, "changed_date": "2015-04-15T10:59:37Z", "parent": null, "language": "ru", "level": 0, "creation_date": "2015-04-15T10:37:27Z", "lft": 1, "tree_id": 40, "position": 0, "placeholder": 28, "plugin_type": "ContactPlugin"}, "model": "cms.cmsplugin", "pk": 43}]', '43', 14, 97),
(841, '9', 9, 'json', '[{"fields": {"rght": 2, "navigation_extenders": null, "site": 1, "application_namespace": null, "lft": 1, "in_navigation": true, "reverse_id": null, "login_required": false, "created_by": "admin", "languages": "ru", "publication_end_date": null, "template": "INHERIT", "tree_id": 13, "placeholders": [27, 28], "changed_date": "2015-04-15T11:21:14.475Z", "limit_visibility_in_menu": null, "parent": null, "soft_root": false, "is_home": false, "publication_date": "2015-03-18T12:56:42Z", "creation_date": "2015-03-18T12:56:36Z", "level": 0, "changed_by": "admin", "application_urls": null, "xframe_options": 0, "revision_id": 0}, "model": "cms.page", "pk": 9}]', 'Контакты', 15, 97),
(842, '43', 43, 'json', '[{"fields": {"map": "<iframe src=\\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2242.1675241708!2d37.412425000000006!3d55.807692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNTXCsDQ4JzI3LjciTiAzN8KwMjQnNDQuNyJF!5e0!3m2!1sru!2sru!4v1429093393416\\" width=\\"400\\" height=\\"300\\" frameborder=\\"0\\" style=\\"border:0\\"></iframe>", "contact_info": "<p>The Company Name Inc.<br>\\r\\n\\r\\n\\t9863 - 9867 Mill Road,<br>\\r\\n\\r\\n\\tCambridge, MG09 99HT.\\r\\n</p>\\r\\n\\r\\n<p>Freephone:+1 800 559 6580</br>\\r\\nTelephone:+1 800 603 6035<br>\\r\\nFAX:+1 800 889 9898<br>\\r\\nE-mail: <a href=\\"/\\" class=\\"link\\">mail@demolink.org</a></p>", "name": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "name_form": "\\u041e\\u0431\\u0440\\u0430\\u0442\\u043d\\u0430\\u044f \\u0441\\u0432\\u044f\\u0437\\u044c"}, "model": "cms_plugins.contactmodel", "pk": 43}]', 'Контакты', 61, 97),
(843, '21', 21, 'json', '[{"fields": {"menu_title": "", "meta_description": "", "page_title": "", "language": "ru", "title": "\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b", "has_url_overwrite": false, "redirect": null, "page": 9, "published": true, "path": "kontakty", "creation_date": "2015-03-18T12:56:37Z", "slug": "kontakty"}, "model": "cms.title", "pk": 21}]', 'Контакты (kontakty, ru)', 20, 97),
(844, '27', 27, 'json', '[{"fields": {"slot": "header", "default_width": null}, "model": "cms.placeholder", "pk": 27}]', 'header', 13, 97),
(845, '28', 28, 'json', '[{"fields": {"slot": "content", "default_width": null}, "model": "cms.placeholder", "pk": 28}]', 'content', 13, 97);

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_category`
--

CREATE TABLE IF NOT EXISTS `spirit_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spirit_category_410d0aac` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_comment`
--

CREATE TABLE IF NOT EXISTS `spirit_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `comment_html` longtext NOT NULL,
  `action` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `is_modified` tinyint(1) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `modified_count` int(10) unsigned NOT NULL,
  `likes_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spirit_comment_6340c63c` (`user_id`),
  KEY `spirit_comment_76f18ad3` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_commentbookmark`
--

CREATE TABLE IF NOT EXISTS `spirit_commentbookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `comment_number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`topic_id`),
  KEY `spirit_commentbookmark_6340c63c` (`user_id`),
  KEY `spirit_commentbookmark_76f18ad3` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_commentflag`
--

CREATE TABLE IF NOT EXISTS `spirit_commentflag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moderator_id` int(11) DEFAULT NULL,
  `comment_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_id` (`comment_id`),
  KEY `spirit_commentflag_5f058b74` (`moderator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_commenthistory`
--

CREATE TABLE IF NOT EXISTS `spirit_commenthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_fk_id` int(11) NOT NULL,
  `comment_html` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spirit_commenthistory_b4aa8497` (`comment_fk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_commentlike`
--

CREATE TABLE IF NOT EXISTS `spirit_commentlike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`),
  KEY `spirit_commentlike_6340c63c` (`user_id`),
  KEY `spirit_commentlike_3925f323` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_flag`
--

CREATE TABLE IF NOT EXISTS `spirit_flag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `reason` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`comment_id`),
  KEY `spirit_flag_6340c63c` (`user_id`),
  KEY `spirit_flag_3925f323` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topic`
--

CREATE TABLE IF NOT EXISTS `spirit_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `is_pinned` tinyint(1) NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `view_count` int(10) unsigned NOT NULL,
  `comment_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spirit_topic_6340c63c` (`user_id`),
  KEY `spirit_topic_6f33f001` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicfavorite`
--

CREATE TABLE IF NOT EXISTS `spirit_topicfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`topic_id`),
  KEY `spirit_topicfavorite_6340c63c` (`user_id`),
  KEY `spirit_topicfavorite_76f18ad3` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicnotification`
--

CREATE TABLE IF NOT EXISTS `spirit_topicnotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `action` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`topic_id`),
  KEY `spirit_topicnotification_6340c63c` (`user_id`),
  KEY `spirit_topicnotification_76f18ad3` (`topic_id`),
  KEY `spirit_topicnotification_3925f323` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicpoll`
--

CREATE TABLE IF NOT EXISTS `spirit_topicpoll` (
  `topic_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `choice_limit` int(10) unsigned NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicpollchoice`
--

CREATE TABLE IF NOT EXISTS `spirit_topicpollchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `vote_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `spirit_topicpollchoice_70f78e6b` (`poll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicpollvote`
--

CREATE TABLE IF NOT EXISTS `spirit_topicpollvote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`choice_id`),
  KEY `spirit_topicpollvote_a57b5718` (`choice_id`),
  KEY `spirit_topicpollvote_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicprivate`
--

CREATE TABLE IF NOT EXISTS `spirit_topicprivate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`topic_id`),
  KEY `spirit_topicprivate_6340c63c` (`user_id`),
  KEY `spirit_topicprivate_76f18ad3` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_topicunread`
--

CREATE TABLE IF NOT EXISTS `spirit_topicunread` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`topic_id`),
  KEY `spirit_topicunread_6340c63c` (`user_id`),
  KEY `spirit_topicunread_76f18ad3` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_user`
--

CREATE TABLE IF NOT EXISTS `spirit_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `location` varchar(75) NOT NULL,
  `last_seen` datetime NOT NULL,
  `last_ip` char(39) DEFAULT NULL,
  `timezone` varchar(32) NOT NULL,
  `is_administrator` tinyint(1) NOT NULL,
  `is_moderator` tinyint(1) NOT NULL,
  `topic_count` int(10) unsigned NOT NULL,
  `comment_count` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `spirit_user`
--

INSERT INTO `spirit_user` (`id`, `password`, `last_login`, `is_superuser`, `slug`, `location`, `last_seen`, `last_ip`, `timezone`, `is_administrator`, `is_moderator`, `topic_count`, `comment_count`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$15000$v6MWB3X5hAyC$qjnEoYQCmjqdLx/PUvBILRN2dlOOgsSSAJ2xN+t9SSE=', '2015-04-14 15:20:49', 1, 'admin', '', '2015-04-15 11:56:51', '127.0.0.1', 'UTC', 1, 1, 0, 0, 'admin', '', '', 'admin@admin.ru', 1, 1, '2015-03-16 14:16:41');

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_user_groups`
--

CREATE TABLE IF NOT EXISTS `spirit_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `spirit_user_groups_6340c63c` (`user_id`),
  KEY `spirit_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `spirit_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `spirit_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `spirit_user_user_permissions_6340c63c` (`user_id`),
  KEY `spirit_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `thumbnail_kvstore`
--

CREATE TABLE IF NOT EXISTS `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `thumbnail_kvstore`
--

INSERT INTO `thumbnail_kvstore` (`key`, `value`) VALUES
('sorl-thumbnail||image||01825c931100182694d05e5db5b96f4e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/08/6f/086fe7c7233f4fbc086e7ae5d7474df9/aenean_baz2lDW.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||048eb04711a519211ded96c0598ff357', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ba/ee/baee5f8663e1c37dae1f523f4336e17f/koshka-savanna-mirana-shine-golden-irbis.jpg", "size": [207, 143]}'),
('sorl-thumbnail||image||04ff046c5e21e091f641c0022b3520cc', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/dc/4e/dc4ebe6f19e19cd31c439cdd3ad1bcca/197b9492-6140-4c1f-9eef-363cc8e2b605.jpg", "size": [575, 375]}'),
('sorl-thumbnail||image||0c9d85aff7ef8b3c9089ab76b3eeeac6', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/chauzi-f1.jpg", "size": [371, 256]}'),
('sorl-thumbnail||image||13960e3b1d42271e09695a62121bf920', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/molestie.jpg", "size": [246, 205]}'),
('sorl-thumbnail||image||1a133ede027747085127e1ec62c6dc90', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/97/43/974356291bbb93fa1b7344d01a922ab3/praesent.jpg", "size": [420, 476]}'),
('sorl-thumbnail||image||27206ad76a3238aa7dbc505f8d6afe9e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/savanna-f1.jpg", "size": [900, 600]}'),
('sorl-thumbnail||image||2b8a0e9ab2f3fdedb1ff09822075fec9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/38/eb/38eb27b793a7ba761d3c6a30d63db648/praesent.jpg", "size": [217, 159]}'),
('sorl-thumbnail||image||2f99e291ce0544630c5c9aaec4e42603', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a9/57/a9570692528e66da875d94927699c820/457e5c14-e2ad-408f-b5f0-e74ec7c31bc5.jpg", "size": [575, 375]}'),
('sorl-thumbnail||image||3162b94fa3e1eaaa976909e7910452ae', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b7/d3/b7d3386d073d602e574cdfcf3344d727/koshka-savanna-mirana-shine-golden-irbis.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||32ae528910ef25d6b3d6ac9e724e1333', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e2/29/e229d31f278ede833b8ed04aec4b3a19/vestibulum.jpg", "size": [434, 297]}'),
('sorl-thumbnail||image||36cb76850ac48bb552355a4f6171b55e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/84/ac/84ac0e0f5589d7a61dfe18e3e10da823/aenean.jpg", "size": [318, 489]}'),
('sorl-thumbnail||image||3871e42dfa2d93b8b87d2370c5ecd959', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b6/a2/b6a2835c8ee346a01e6392f9599f78b2/savanna-f1.jpg", "size": [207, 138]}'),
('sorl-thumbnail||image||3d347e6044dedaab5d7d9ff0ffde8b9e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3e/5e/3e5e536c28b11262899df6c73f11432f/vestibulum.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||3d94c7eddb5229385a23e90f62ce83bf', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/38/53/38531e956410e83e5edb7317f5aa6439/koshka-savanna-mirana-shine-golden-irbis.jpg", "size": [95, 66]}'),
('sorl-thumbnail||image||4085943ba1e15fe9d9b5574cfeffeec5', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/8d/ce8df44183e4f63d50a435f4aad1d8d6/black_5CZ9mYc.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||46df6dd8d65e102ae2bee9790addde5e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/29/b3/29b3c5e0fce7f8314ff45d9c716a74b0/197b9492-6140-4c1f-9eef-363cc8e2b605.jpg", "size": [545, 375]}'),
('sorl-thumbnail||image||486f6d17f42de9f399e27b5744d59a06', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/bc/cf/bccff9fba5b15c6110da44ef7402924f/koshka-savanna-concordia.jpg", "size": [207, 138]}'),
('sorl-thumbnail||image||4974b6283ede609648de5da15f015e8a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/84/36/8436c0b4da90601271fc33059ec9601a/aenean.jpg", "size": [104, 159]}'),
('sorl-thumbnail||image||536e7753ab6321e9f51f7c1e1171ef8f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e5/f0/e5f062da37288e67d8481c3e5598a619/vestibulum.jpg", "size": [420, 287]}'),
('sorl-thumbnail||image||564a2eba20e7ab17cae7cfbbf3191793', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/01/2c/012c376c7a0b7c6f30fc24316432e872/aenean.jpg", "size": [318, 489]}'),
('sorl-thumbnail||image||58e8ff05a37db1c02e1f33ac0256bc21', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/95/c6/95c6bd9e2b5b654cc505bb5c492efbe0/black.jpg", "size": [428, 321]}'),
('sorl-thumbnail||image||5b79704ee8ba804ec5e71bd716e500bc', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/01/e7/01e769fbb994c0343fcb6690306708db/molestie.jpg", "size": [428, 357]}'),
('sorl-thumbnail||image||5be8ce7509ad947db5089e3caaaa9745', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fd/c5/fdc51c1ab2fc3adf50a2f32249339735/black.jpg", "size": [217, 159]}'),
('sorl-thumbnail||image||5cf5dfed81d7d70ac1d3af887293eeed', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/eb825118-d5ef-4732-80c8-8cc10581f4a3.jpg", "size": [613, 457]}'),
('sorl-thumbnail||image||5d65d6db342d9a67f359faa27d9157f2', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a1/f6/a1f627984a220edc93f44413a0ada34c/koshka-savanna-concordia.jpg", "size": [177, 118]}'),
('sorl-thumbnail||image||5e006c799fc017485d556f407f9a41a6', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/vestibulum.jpg", "size": [272, 186]}'),
('sorl-thumbnail||image||5f94a97590bac3d800b21cebf3ecd763', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a7/cb/a7cb4bd9b550c99675c7a9d83d901b75/f3637f89-45de-46d6-adbe-a03d5db79d65.jpg", "size": [500, 375]}'),
('sorl-thumbnail||image||60ec9b5cfdef3f8e31c93878d670a5cc', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/koshka-savanna-madam-de-pompadour.jpg", "size": [360, 256]}'),
('sorl-thumbnail||image||6178e1cc11de8c8c1c281ece4f30778c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/koshka-savanna-concordia.jpg", "size": [900, 600]}'),
('sorl-thumbnail||image||656cf075ab75e2028df4746773372873', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/99/50/99503da24316ab0da17f046247240b53/koshka-savanna-neyla.jpg", "size": [207, 143]}'),
('sorl-thumbnail||image||6a69a83472acbb09f3e6d5625898415f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/67/3c/673c2da94d5739b5a6736cd4ff794e79/black.jpg", "size": [212, 159]}'),
('sorl-thumbnail||image||6a85558703bdc6001d7c9cda9cf4a7f9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/8b/f6/8bf6c4ec6077fb81101521271200d19a/29764ad9-c4ce-4fa9-88bb-11af579a143a.jpg", "size": [492, 375]}'),
('sorl-thumbnail||image||6bd3f660752460feccfac79b83a0aa6b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/40/d5/40d5266e8c410c967ad0a38909bb0022/praesent_0DqGvyr.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||6c080098db2a245823cac3fc94188df4', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/70/bc/70bcc32889828547137a6c2e08532882/vestibulum.jpg", "size": [217, 148]}'),
('sorl-thumbnail||image||6d51f032adab60f9ee742ba8672fb248', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1c/3e/1c3e4ce31c4176005ec79fd668879025/praesent.jpg", "size": [432, 489]}'),
('sorl-thumbnail||image||6d765917bc88ad3b3205acd5de88a38a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/44/fe/44fefbba8a036d97310914497f3064e9/chauzi-f1.jpg", "size": [207, 143]}'),
('sorl-thumbnail||image||7170acbc2e4e58fe2009f22c9a9e16bc', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/90/42/90425d6949429dfed08cfe97dc48f391/aenean.jpg", "size": [217, 159]}'),
('sorl-thumbnail||image||73dc7b91ed9e052993d1105acc9c9683', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7a/c8/7ac8bd1373d7cc8490ab6704a060e5c7/savanna-f1.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||74bfd9c4a77e4b6be9ec3a6ded04070a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5f/01/5f0108428a56d8304188c5167a99b551/29764ad9-c4ce-4fa9-88bb-11af579a143a.jpg", "size": [575, 375]}'),
('sorl-thumbnail||image||7791a5bccf77b4d57b413116737db5da', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/457e5c14-e2ad-408f-b5f0-e74ec7c31bc5.jpg", "size": [550, 400]}'),
('sorl-thumbnail||image||7b04af9f738263b90153f32fb77704e4', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a5/ef/a5efc23ad67f8994156116b1e878fd53/koshka-savanna-concordia.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||83dfa1d74027d85787e78b941c96d33c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/07/f1/07f1e0adbb4e3b1f3328af210d39e9da/molestie.jpg", "size": [420, 350]}'),
('sorl-thumbnail||image||842f5d0fb5e611c2b5eb69bee554fee9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/40/d5/40d5266e8c410c967ad0a38909bb0022/praesent.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||85c0d5754dcb84af8c85b14305e7d630', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/aenean.jpg", "size": [181, 278]}'),
('sorl-thumbnail||image||924d76f0f70a12054e99abec141708b9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d7/29/d729c7faa6d15285695fb8e773c5bda9/molestie.jpg", "size": [217, 159]}'),
('sorl-thumbnail||image||92beaf397ca18fc3411878a404fe8c18', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6d/a3/6da36ea46458ad3aea7adf29e6ea3fd2/savanna-f1.jpg", "size": [95, 63]}'),
('sorl-thumbnail||image||9438490096f6cd73e1f7437eecfbaf6e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/78/27/7827da36acf137c61c1b3bad3d00afb2/a4aeeaec-e1f1-43bd-a1d9-1284089d0135.jpg", "size": [575, 375]}'),
('sorl-thumbnail||image||9a14e0fa1c8bb31e35ac8391518a22d1', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/praesent.jpg", "size": [211, 239]}'),
('sorl-thumbnail||image||9d037aa0d375c0dafd7a998dc3acaae6', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/23/f8/23f807a0d2c3f003279596937e6e6942/praesent.jpg", "size": [428, 485]}'),
('sorl-thumbnail||image||a6d577269c6b05a79655e0e5ba0b136b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/a4aeeaec-e1f1-43bd-a1d9-1284089d0135.jpg", "size": [481, 400]}'),
('sorl-thumbnail||image||a94e54747986f390d891c9f6cd69efbb', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3d/b5/3db5d31763a07f175a369e40b41da74b/koshka-savanna-neyla.jpg", "size": [95, 66]}'),
('sorl-thumbnail||image||acf80de4561074fb49a77547cce515b2', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6b/c0/6bc06777b80af20e9a578a33dd22b3ca/f3637f89-45de-46d6-adbe-a03d5db79d65.jpg", "size": [575, 375]}'),
('sorl-thumbnail||image||aec063e8ccdadd0c93d941c5c4b4c93d', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7d/b0/7db0d370e2917d89308e95f9f74bcd13/457e5c14-e2ad-408f-b5f0-e74ec7c31bc5.jpg", "size": [516, 375]}'),
('sorl-thumbnail||image||b0a576227425f14f922f773bc3f0ed08', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6a/ff/6aff18bbce51c1985ee090e19cf2d2ad/vestibulum.jpg", "size": [428, 293]}'),
('sorl-thumbnail||image||b1effa6d54497f1e981f642279b13ab9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6e/c7/6ec727796211dfc0f840bedf34cbdc4b/eb825118-d5ef-4732-80c8-8cc10581f4a3.jpg", "size": [575, 375]}'),
('sorl-thumbnail||image||b536269a5bcd274399c3c020ce0372a3', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/domestic-serval.jpg", "size": [700, 528]}'),
('sorl-thumbnail||image||b6f6dce0160718804f4697f81cc8a7ee', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/08/6f/086fe7c7233f4fbc086e7ae5d7474df9/aenean.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||bf29e1b7483ed711e919e16da33a9bae', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/29764ad9-c4ce-4fa9-88bb-11af579a143a.jpg", "size": [700, 533]}'),
('sorl-thumbnail||image||c326c7ceb1db2ee9aa39d071108304fc', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2a/d8/2ad8178a32261a527b590876cb493ac2/domestic-serval.jpg", "size": [207, 156]}'),
('sorl-thumbnail||image||c36221672d2361ae203518939efc8dff', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/8d/ce8df44183e4f63d50a435f4aad1d8d6/black.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||c44f0f826400ff81f50efe99cb9ff6ce', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/koshka-savanna-mirana-shine-golden-irbis.jpg", "size": [371, 256]}'),
('sorl-thumbnail||image||c60966fc81b0ef467c3d320d010fae4e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5c/20/5c20388cc9e4e05559166d55ebba0949/koshka-savanna-madam-de-pompadour.jpg", "size": [166, 118]}'),
('sorl-thumbnail||image||c78122532b5b1116d3cf3ca437e6f37c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3e/5e/3e5e536c28b11262899df6c73f11432f/vestibulum_0fLbUAu.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||c8566dc2b5cc62ae81851416f67ba17b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/70/1a/701a11699472e4cbe71829c8222b46a1/koshka-savanna-neyla.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||ca8a214c7213a343cd6bdd8a2dfd4bf9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e2/f1/e2f1e4c80f8707a746c83d302add02be/black.jpg", "size": [420, 315]}'),
('sorl-thumbnail||image||cba1603bca3388591cbe5ba45e9ec4c8', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/89/7e/897e12532b5ad53b29614b038ba8b6d3/vestibulum.jpg", "size": [217, 159]}'),
('sorl-thumbnail||image||cbb75f030815d41f9ab7909e56ddec68', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/koshka-savanna-neyla.jpg", "size": [371, 256]}'),
('sorl-thumbnail||image||cd8ca8dd913bbb1dd97b67c848cbad9c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d1/3e/d13e50e3afc8712bbbdcc1fe49e0b0b2/praesent.jpg", "size": [140, 159]}'),
('sorl-thumbnail||image||cdcf63c25170ca0d8d2e59be9730840d', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/87/64/87644e47199410cc97f0a41d8a1ea691/koshka-savanna-madam-de-pompadour.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||d99d754576cc976ac1a8343c0ca318fb', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5a/59/5a590e5c66b28107bb3046b973a78f43/molestie.jpg", "size": [434, 362]}'),
('sorl-thumbnail||image||d9dda406238420df678d44d711ee5374', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/03/b4/03b4644fecfa18ae6be4bcc16d5d72ec/domestic-serval.jpg", "size": [156, 118]}'),
('sorl-thumbnail||image||df9b5b16a6516c925b3ba5f74c3a3502', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/01/66/01668fbfafdf110ee7ebdadbda1cfe1b/aenean.jpg", "size": [318, 489]}'),
('sorl-thumbnail||image||e541e4938108381326f96daea26c820b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/64/11/641181d9923f681e552937fd52dec30f/black.jpg", "size": [434, 325]}'),
('sorl-thumbnail||image||e7003a3b681ba405579b1c042a106d05', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ea/03/ea0364f8efeff60fee42226bd4687c91/domestic-serval.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||e828369920c92d911a32f3f54c47489f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/9a/e6/9ae6ad8e4d72977f84a9813069b509a7/chauzi-f1.jpg", "size": [195, 118]}'),
('sorl-thumbnail||image||eb5ec8252bef65978a01f24365ccfae3', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/76/17/7617ae4fbecc7a6bd960920be88c3029/koshka-savanna-madam-de-pompadour.jpg", "size": [207, 147]}'),
('sorl-thumbnail||image||eb686caa512464ccaa849ed22e9dbf94', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/197b9492-6140-4c1f-9eef-363cc8e2b605.jpg", "size": [800, 550]}'),
('sorl-thumbnail||image||f44db18227fbb8ba1c3c0c5073b88924', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/f3637f89-45de-46d6-adbe-a03d5db79d65.jpg", "size": [799, 599]}'),
('sorl-thumbnail||image||f4883481fbedd84f07dddda7d199e089', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f0/ea/f0eaf87ee8e9e781c4295e5717ee0d63/chauzi-f1.jpg", "size": [95, 66]}'),
('sorl-thumbnail||image||f55c50e89b87b4ce14d1d9902955430b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/cd/05/cd058ec9b3aad3259da33702b4a578c8/molestie.jpg", "size": [207, 150]}'),
('sorl-thumbnail||image||facf425ee5d84e8d088f75f4a31ccdf4', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e3/be/e3be2d97ebf5475490ab30b57128794d/a4aeeaec-e1f1-43bd-a1d9-1284089d0135.jpg", "size": [451, 375]}'),
('sorl-thumbnail||image||fb102b9328b46a253fea2e5377ec984c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "catalog/black.jpg", "size": [259, 194]}'),
('sorl-thumbnail||image||fbf19e7f846a3913d472bb63710d8248', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a2/2f/a22f9eab6a4278ca901b33e20ede9280/eb825118-d5ef-4732-80c8-8cc10581f4a3.jpg", "size": [503, 375]}'),
('sorl-thumbnail||image||fe92c2cac06b579a01b935f569fbcf8c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ab/46/ab4695bfbd6d66e6eb8a27a9872592bf/molestie.jpg", "size": [191, 159]}'),
('sorl-thumbnail||thumbnails||0c9d85aff7ef8b3c9089ab76b3eeeac6', '["6d765917bc88ad3b3205acd5de88a38a"]'),
('sorl-thumbnail||thumbnails||13960e3b1d42271e09695a62121bf920', '["d99d754576cc976ac1a8343c0ca318fb"]'),
('sorl-thumbnail||thumbnails||27206ad76a3238aa7dbc505f8d6afe9e', '["3871e42dfa2d93b8b87d2370c5ecd959"]'),
('sorl-thumbnail||thumbnails||5cf5dfed81d7d70ac1d3af887293eeed', '["fbf19e7f846a3913d472bb63710d8248"]'),
('sorl-thumbnail||thumbnails||5e006c799fc017485d556f407f9a41a6', '["32ae528910ef25d6b3d6ac9e724e1333"]'),
('sorl-thumbnail||thumbnails||60ec9b5cfdef3f8e31c93878d670a5cc', '["eb5ec8252bef65978a01f24365ccfae3"]'),
('sorl-thumbnail||thumbnails||6178e1cc11de8c8c1c281ece4f30778c', '["486f6d17f42de9f399e27b5744d59a06"]'),
('sorl-thumbnail||thumbnails||7791a5bccf77b4d57b413116737db5da', '["aec063e8ccdadd0c93d941c5c4b4c93d"]'),
('sorl-thumbnail||thumbnails||85c0d5754dcb84af8c85b14305e7d630', '["df9b5b16a6516c925b3ba5f74c3a3502"]'),
('sorl-thumbnail||thumbnails||9a14e0fa1c8bb31e35ac8391518a22d1', '["6d51f032adab60f9ee742ba8672fb248"]'),
('sorl-thumbnail||thumbnails||a6d577269c6b05a79655e0e5ba0b136b', '["facf425ee5d84e8d088f75f4a31ccdf4"]'),
('sorl-thumbnail||thumbnails||b536269a5bcd274399c3c020ce0372a3', '["c326c7ceb1db2ee9aa39d071108304fc"]'),
('sorl-thumbnail||thumbnails||bf29e1b7483ed711e919e16da33a9bae', '["6a85558703bdc6001d7c9cda9cf4a7f9"]'),
('sorl-thumbnail||thumbnails||c44f0f826400ff81f50efe99cb9ff6ce', '["048eb04711a519211ded96c0598ff357"]'),
('sorl-thumbnail||thumbnails||cbb75f030815d41f9ab7909e56ddec68', '["656cf075ab75e2028df4746773372873"]'),
('sorl-thumbnail||thumbnails||eb686caa512464ccaa849ed22e9dbf94', '["46df6dd8d65e102ae2bee9790addde5e"]'),
('sorl-thumbnail||thumbnails||f44db18227fbb8ba1c3c0c5073b88924', '["5f94a97590bac3d800b21cebf3ecd763"]'),
('sorl-thumbnail||thumbnails||fb102b9328b46a253fea2e5377ec984c', '["e541e4938108381326f96daea26c820b"]');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_aliaspluginmodel`
--
ALTER TABLE `cms_aliaspluginmodel`
  ADD CONSTRAINT `cms_aliaspluginmodel_plugin_id_2e7b802f_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_aliaspluginmod_cmsplugin_ptr_id_5b59cb3c_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_aliasplu_alias_placeholder_id_49af9083_fk_cms_placeholder_id` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_cmsplugin`
--
ALTER TABLE `cms_cmsplugin`
  ADD CONSTRAINT `cms_cmsplugin_parent_id_2b89b923_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_cmsplugin_placeholder_id_41cb13f1_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_globalpagepermission`
--
ALTER TABLE `cms_globalpagepermission`
  ADD CONSTRAINT `cms_globalpagepermission_group_id_748ea6af_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cms_globalpagepermission_user_id_572f1d18_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_globalpagepermission_sites`
--
ALTER TABLE `cms_globalpagepermission_sites`
  ADD CONSTRAINT `cms_globalpagepermission_site_site_id_618ef941_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  ADD CONSTRAINT `globalpagepermission_id_31dcc6a9_fk_cms_globalpagepermission_id` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_page`
--
ALTER TABLE `cms_page`
  ADD CONSTRAINT `cms_page_parent_id_76fe1197_fk_cms_page_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_page_publisher_public_id_27b14e29_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_page_site_id_7245e838_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_pagepermission`
--
ALTER TABLE `cms_pagepermission`
  ADD CONSTRAINT `cms_pagepermission_group_id_7024afda_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `cms_pagepermission_page_id_4fb6ec65_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_pagepermission_user_id_1a3e8e53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_pageuser`
--
ALTER TABLE `cms_pageuser`
  ADD CONSTRAINT `cms_pageuser_created_by_id_3190e3ea_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `cms_pageuser_user_ptr_id_6b58ccde_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_pageusergroup`
--
ALTER TABLE `cms_pageusergroup`
  ADD CONSTRAINT `cms_pageusergroup_created_by_id_4fdafe6a_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `cms_pageusergroup_group_ptr_id_61ee8ff1_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_page_placeholders`
--
ALTER TABLE `cms_page_placeholders`
  ADD CONSTRAINT `cms_page_placeholders_page_id_2425adb6_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_page_placehold_placeholder_id_73892653_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_placeholderreference`
--
ALTER TABLE `cms_placeholderreference`
  ADD CONSTRAINT `cms_placeholderref_cmsplugin_ptr_id_379b411a_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  ADD CONSTRAINT `cms_placeholde_placeholder_ref_id_5d0b7714_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_bannermodel`
--
ALTER TABLE `cms_plugins_bannermodel`
  ADD CONSTRAINT `cms_plugins_banner_cmsplugin_ptr_id_28df89cd_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_blockplugin`
--
ALTER TABLE `cms_plugins_blockplugin`
  ADD CONSTRAINT `cms_plugins_blockplugi_block_id_2510c16e_fk_cms_plugins_block_id` FOREIGN KEY (`block_id`) REFERENCES `cms_plugins_block` (`id`),
  ADD CONSTRAINT `cms_plugins_blockp_cmsplugin_ptr_id_19dcc6ec_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_catsmodel`
--
ALTER TABLE `cms_plugins_catsmodel`
  ADD CONSTRAINT `cms_plugins_catsmo_cmsplugin_ptr_id_20ada262_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_catsmodel_cats`
--
ALTER TABLE `cms_plugins_catsmodel_cats`
  ADD CONSTRAINT `cms_plugins_catsmodel_cats_post_id_761093c9_fk_contents_post_id` FOREIGN KEY (`post_id`) REFERENCES `contents_post` (`id`),
  ADD CONSTRAINT `catsmodel_id_60c2eeec_fk_cms_plugins_catsmodel_cmsplugin_ptr_id` FOREIGN KEY (`catsmodel_id`) REFERENCES `cms_plugins_catsmodel` (`cmsplugin_ptr_id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_contactmodel`
--
ALTER TABLE `cms_plugins_contactmodel`
  ADD CONSTRAINT `cms_plugins_contac_cmsplugin_ptr_id_6c6bf048_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_gallerymodel`
--
ALTER TABLE `cms_plugins_gallerymodel`
  ADD CONSTRAINT `cms_plugins_gallerymo_gallery_id_3f9d3d7f_fk_contents_gallery_id` FOREIGN KEY (`gallery_id`) REFERENCES `contents_gallery` (`id`),
  ADD CONSTRAINT `cms_plugins_galler_cmsplugin_ptr_id_11e11eaa_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_htmlinsertmodel`
--
ALTER TABLE `cms_plugins_htmlinsertmodel`
  ADD CONSTRAINT `cms_plugins_htmlin_cmsplugin_ptr_id_435ecc6f_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_keyword`
--
ALTER TABLE `cms_plugins_keyword`
  ADD CONSTRAINT `cms_plugins_keyword_page_id_52759cba_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_logomodelplugin`
--
ALTER TABLE `cms_plugins_logomodelplugin`
  ADD CONSTRAINT `cms_plugins_logomo_cmsplugin_ptr_id_3bdf2d2d_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_menuinline`
--
ALTER TABLE `cms_plugins_menuinline`
  ADD CONSTRAINT `cms_plugin_id_2ae9feec_fk_cms_plugins_menumodel_cmsplugin_ptr_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_plugins_menumodel` (`cmsplugin_ptr_id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_menumodel`
--
ALTER TABLE `cms_plugins_menumodel`
  ADD CONSTRAINT `cms_plugins_menumo_cmsplugin_ptr_id_6c5693f0_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_sliderimage`
--
ALTER TABLE `cms_plugins_sliderimage`
  ADD CONSTRAINT `cms_plugins_sliderima_slider_id_b2ee7e7_fk_cms_plugins_slider_id` FOREIGN KEY (`slider_id`) REFERENCES `cms_plugins_slider` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_sliderpluginmodel`
--
ALTER TABLE `cms_plugins_sliderpluginmodel`
  ADD CONSTRAINT `cms_plugins_sliderpl_slider_id_39b2f3d0_fk_cms_plugins_slider_id` FOREIGN KEY (`slider_id`) REFERENCES `cms_plugins_slider` (`id`),
  ADD CONSTRAINT `cms_plugins_slider_cmsplugin_ptr_id_504ca62b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_plugins_textmodelplugin`
--
ALTER TABLE `cms_plugins_textmodelplugin`
  ADD CONSTRAINT `cms_plugins_textmo_cmsplugin_ptr_id_5c0a0b9d_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_staticplaceholder`
--
ALTER TABLE `cms_staticplaceholder`
  ADD CONSTRAINT `cms_staticplaceholder_draft_id_36488820_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_staticplaceholder_public_id_510a87f7_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_staticplaceholder_site_id_163af08f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_title`
--
ALTER TABLE `cms_title`
  ADD CONSTRAINT `cms_title_page_id_c6c95ee_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  ADD CONSTRAINT `cms_title_publisher_public_id_2b3e4a1d_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`);

--
-- Ограничения внешнего ключа таблицы `cms_usersettings`
--
ALTER TABLE `cms_usersettings`
  ADD CONSTRAINT `cms_usersettings_clipboard_id_124304f3_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  ADD CONSTRAINT `cms_usersettings_user_id_28ccc2b3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `contents_galleryimage`
--
ALTER TABLE `contents_galleryimage`
  ADD CONSTRAINT `contents_galleryimage_gallery_id_5d6d3b9a_fk_contents_gallery_id` FOREIGN KEY (`gallery_id`) REFERENCES `contents_gallery` (`id`);

--
-- Ограничения внешнего ключа таблицы `contents_post_translation`
--
ALTER TABLE `contents_post_translation`
  ADD CONSTRAINT `contents_post_translation_master_id_3cdcf598_fk_contents_post_id` FOREIGN KEY (`master_id`) REFERENCES `contents_post` (`id`),
  ADD CONSTRAINT `contents_post_translation_pages_id_47e5378b_fk_cms_page_id` FOREIGN KEY (`pages_id`) REFERENCES `cms_page` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_flatpage_sites`
--
ALTER TABLE `django_flatpage_sites`
  ADD CONSTRAINT `django_flatpage_sites_flatpage_id_5c562ec6_fk_django_flatpage_id` FOREIGN KEY (`flatpage_id`) REFERENCES `django_flatpage` (`id`),
  ADD CONSTRAINT `django_flatpage_sites_site_id_3917af27_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Ограничения внешнего ключа таблицы `reversion_revision`
--
ALTER TABLE `reversion_revision`
  ADD CONSTRAINT `reversion_revision_user_id_5b2ec55e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `reversion_version`
--
ALTER TABLE `reversion_version`
  ADD CONSTRAINT `reversion_version_revision_id_4916a950_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`),
  ADD CONSTRAINT `reversion_ver_content_type_id_26d4c4a9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_category`
--
ALTER TABLE `spirit_category`
  ADD CONSTRAINT `parent_id_refs_id_d891e9f3` FOREIGN KEY (`parent_id`) REFERENCES `spirit_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_comment`
--
ALTER TABLE `spirit_comment`
  ADD CONSTRAINT `topic_id_refs_id_ec6b2784` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_commentbookmark`
--
ALTER TABLE `spirit_commentbookmark`
  ADD CONSTRAINT `topic_id_refs_id_8571032e` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_commentflag`
--
ALTER TABLE `spirit_commentflag`
  ADD CONSTRAINT `comment_id_refs_id_96dbe887` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_commenthistory`
--
ALTER TABLE `spirit_commenthistory`
  ADD CONSTRAINT `comment_fk_id_refs_id_7ce56f00` FOREIGN KEY (`comment_fk_id`) REFERENCES `spirit_comment` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_commentlike`
--
ALTER TABLE `spirit_commentlike`
  ADD CONSTRAINT `comment_id_refs_id_5ea54f95` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_flag`
--
ALTER TABLE `spirit_flag`
  ADD CONSTRAINT `comment_id_refs_id_87ed4fc0` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topic`
--
ALTER TABLE `spirit_topic`
  ADD CONSTRAINT `category_id_refs_id_0214d78f` FOREIGN KEY (`category_id`) REFERENCES `spirit_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicfavorite`
--
ALTER TABLE `spirit_topicfavorite`
  ADD CONSTRAINT `topic_id_refs_id_0e92ba90` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicnotification`
--
ALTER TABLE `spirit_topicnotification`
  ADD CONSTRAINT `comment_id_refs_id_a3fbb2ad` FOREIGN KEY (`comment_id`) REFERENCES `spirit_comment` (`id`),
  ADD CONSTRAINT `topic_id_refs_id_dcc5e87d` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicpoll`
--
ALTER TABLE `spirit_topicpoll`
  ADD CONSTRAINT `topic_id_refs_id_f0d0974b` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicpollchoice`
--
ALTER TABLE `spirit_topicpollchoice`
  ADD CONSTRAINT `poll_id_refs_topic_id_ea9f6f23` FOREIGN KEY (`poll_id`) REFERENCES `spirit_topicpoll` (`topic_id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicpollvote`
--
ALTER TABLE `spirit_topicpollvote`
  ADD CONSTRAINT `choice_id_refs_id_e2aed015` FOREIGN KEY (`choice_id`) REFERENCES `spirit_topicpollchoice` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicprivate`
--
ALTER TABLE `spirit_topicprivate`
  ADD CONSTRAINT `topic_id_refs_id_6026bf1e` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_topicunread`
--
ALTER TABLE `spirit_topicunread`
  ADD CONSTRAINT `topic_id_refs_id_6322f34d` FOREIGN KEY (`topic_id`) REFERENCES `spirit_topic` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_user_groups`
--
ALTER TABLE `spirit_user_groups`
  ADD CONSTRAINT `group_id_refs_id_4cbc7fe9` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_7332ad9e` FOREIGN KEY (`user_id`) REFERENCES `spirit_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `spirit_user_user_permissions`
--
ALTER TABLE `spirit_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_17e601e6` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_032f9101` FOREIGN KEY (`user_id`) REFERENCES `spirit_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
