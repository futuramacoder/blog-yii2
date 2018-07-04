-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 13 2018 г., 11:22
-- Версия сервера: 5.7.13
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `article-store`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text,
  `status` int(11) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `price` float DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `content`, `status`, `created_at`, `category_id`, `price`) VALUES
(7, '<p>Эта платная статья проверка!!!</p>\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p>\r\n\r\n<p><span style="color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p>\r\n', '<div style="margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p style="text-align:justify"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n\r\n<div style="margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">\r\n<h2>Why do we use it?</h2>\r\n\r\n<p style="text-align:justify">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;">\r\n<h2>Where does it come from?</h2>\r\n\r\n<p style="text-align:justify">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style="text-align:justify">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<p style="text-align:justify"><img alt="" src="/web/upload/global/slide1.jpg" style="height:544px; width:1920px" /></p>\r\n</div>\r\n', 1, 1504157708, 1, 60);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '6', 1502776307),
('moderator', '7', 1502778444);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('Admin', 1, 'Admin', NULL, NULL, 1502776294, 1502776294),
('managePosts', 2, 'Менеджер постов', NULL, NULL, 1502776294, 1502776294),
('manageUsers', 2, 'Менеджер пользователей', NULL, NULL, 1502776294, 1502776294),
('moderator', 1, 'Модератор', NULL, NULL, 1502776294, 1502776294),
('viewAdminPage', 2, 'Просмотр админки', NULL, NULL, 1502776294, 1502776294);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('moderator', 'managePosts'),
('Admin', 'manageUsers'),
('Admin', 'moderator'),
('moderator', 'viewAdminPage');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `status`, `created_at`, `category_id`) VALUES
(3, '<p>Пост 3 Я изменил этот пост</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt="" src="/web/upload/global/2.jpg" style="height:321px; width:700px" /></p>\r\n\r\n<p><img alt="" src="/web/upload/global/slide1.jpg" style="height:544px; width:1920px" /></p>\r\n', 1, 1503478771, 1),
(4, '<p>Пост 4 What is Lorem Ipsum?</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p><img alt="" src="/web/upload/global/slide1.jpg" style="height:170px; width:600px" /></p>\r\n', 1, 1503302857, 1),
(5, '<p>Пост 5 What is Lorem Ipsum?</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt="" src="/web/upload/global/slide1.jpg" style="height:544px; width:1920px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1503303606, 2),
(6, '<p>Пост 6 What is Lorem Ipsum?</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 1503479483, 3),
(7, '<p>Пост 7 What is Lorem Ipsum?</p>\r\n', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 1503302925, 2),
(8, 'Пост 8 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 3),
(9, 'Пост 9 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 1),
(10, 'Пост 10 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 3),
(11, 'Пост 11 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 1),
(12, 'Пост 12 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 1),
(13, 'Пост 13 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 1),
(14, 'Пост 14 What is Lorem Ipsum?', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, 0, 5),
(15, '<p>Title</p>\r\n', '<p><span style="color:rgb(0, 0, 0); font-family:roboto slab,serif; font-size:16px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version</span></p>\r\n\r\n<p><span style="color:rgb(0, 0, 0); font-family:roboto slab,serif; font-size:16px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version</span></p>\r\n\r\n<p><span style="color:rgb(0, 0, 0); font-family:roboto slab,serif; font-size:16px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including version</span></p>\r\n', 1, 1503480010, 1),
(16, '<p>&laquo;Use the index, Luke&raquo;: подборка бесплатных книг по SQL и теории баз данных</p>\r\n', '<p>SQL (англ. structured query language&nbsp;&mdash; &laquo;язык структурированных запросов&raquo;)&nbsp;&mdash; язык программирования, применяемый для создания, модификации и&nbsp;управления данными в&nbsp;реляционной базе данных, управляемой соответствующей системой управления базами данных. Появился в&nbsp;1974 году как язык для экспериментальной реляционной СУБД IBM System R&nbsp;и&nbsp;породил множество диалектов для различных СУБД.</p>\r\n\r\n<p>В&nbsp;этой подборке собраны книги, посвящённые языку SQL и&nbsp;теории реляционных баз данных. Если вы&nbsp;знаете другие книги, которыми стоит поделиться с&nbsp;читателями, оставляйте их&nbsp;в&nbsp;комментариях.</p>\r\n\r\n<h3>A Primer on&nbsp;SQL</h3>\r\n\r\n<div class="row-fluid" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; width: 670px; font-family: Arimo, Helvetica, sans-serif; font-size: 14px;">\r\n<div class="span4" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; float: left; min-height: 30px; margin-left: 0px; width: 211.875px;"><a class="lightbox" href="https://cdn.tproger.ru/wp-content/uploads/2017/08/hero-1.jpg" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; color: rgb(4, 164, 156); text-decoration-line: none !important; transition: none !important; transform: none !important;"><img alt="" class="aligncenter lazy lazy-loaded size-medium wp-image-46638" src="https://cdn.tproger.ru/wp-content/uploads/2017/08/hero-1-216x280.jpg" style="-webkit-font-smoothing:antialiased; border-radius:2px; border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:auto; margin:5px auto; max-width:100%; opacity:1; transition:opacity 0.3s ease-in-out; vertical-align:middle; width:auto" /></a></div>\r\n\r\n<div class="span8" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; float: left; min-height: 30px; margin-left: 17.1719px; width: 440.938px;">\r\n<p><a href="https://leanpub.com/aprimeronsql/read" rel="noopener noreferrer" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; color: rgb(4, 164, 156); max-width: 100%; margin: 0px; position: relative; padding: 0px; line-height: 25.6px; text-decoration-line: none !important; transition: none !important; transform: none !important;" target="_blank">Эта книга</a>&nbsp;предназначена для знакомства с SQL. Знания предмета не требуются, достаточно лишь иметь базовое представление о работе с компьютеров. В книге не рассматривается конкретная реализация SQL, поэтому использовать книгу как шпаргалку не рекомендуется.</p>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<h3>&laquo;Use The Index, Luke!&raquo;</h3>\r\n\r\n<div class="row-fluid" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; width: 670px; font-family: Arimo, Helvetica, sans-serif; font-size: 14px;">\r\n<div class="span4" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; float: left; min-height: 30px; margin-left: 0px; width: 211.875px;"><a class="lightbox" href="https://cdn.tproger.ru/wp-content/uploads/2017/08/9783950307825_h600.jpg" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; color: rgb(4, 164, 156); text-decoration-line: none !important; transition: none !important; transform: none !important;"><img alt="" class="aligncenter lazy lazy-loaded size-medium wp-image-46639" src="https://cdn.tproger.ru/wp-content/uploads/2017/08/9783950307825_h600-182x280.jpg" style="-webkit-font-smoothing:antialiased; border-radius:2px; border-style:initial; border-width:0px; box-sizing:border-box; display:block; height:auto; margin:5px auto; max-width:100%; opacity:1; transition:opacity 0.3s ease-in-out; vertical-align:middle; width:auto" /></a></div>\r\n\r\n<div class="span8" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; float: left; min-height: 30px; margin-left: 17.1719px; width: 440.938px;">\r\n<p><a href="http://use-the-index-luke.com/sql/table-of-contents" rel="noopener noreferrer" style="box-sizing: border-box; -webkit-font-smoothing: antialiased; color: rgb(4, 164, 156); max-width: 100%; margin: 0px; position: relative; padding: 0px; line-height: 25.6px; text-decoration-line: none !important; transition: none !important; transform: none !important;" target="_blank">Данная HTML-книга</a>&nbsp;является бесплатной веб-версией книги &laquo;SQL Performance Explained&raquo;. Она целиком посвящена производительности баз данных и способам её повышения.</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n', 1, 1503994950, 2),
(17, '<p><strong>Заработок в Интернете</strong></p>\r\n', '<p><span style="color:rgb(85, 85, 85); font-family:verdana,arial; font-size:14px">Здравствуйте, уважаемые читатели блога. На этой странице я хочу затронуть довольно-таки актуальную и злободневную тему заработка в интернете. Способов заработать в сети довольно много, но не все они идеальны и не все они будут одинаково полезны и эффективны.</span></p>\r\n\r\n<p><span style="color:rgb(85, 85, 85); font-family:verdana,arial; font-size:14px">Сразу оговорюсь, что для полноценной реализации некоторых из описанных ниже вариантов желательно иметь свой сайт, причем, величина дохода во многом будет напрямую зависеть от его&nbsp;</span><a href="http://ktonanovenkogo.ru/vokrug-da-okolo/schetchiki/kak-uznat-proverit-poseshhaemost-sajta-statistika-poseshhenij-rejtingi-sajtov-po-poseshhaemosti-schetchiki-pokazatel-otkazov.html" style="margin: 0px; padding: 0px; border: none; color: rgb(24, 110, 174); text-decoration-line: none; outline: none; font-family: verdana; font-size: 14px;" target="_blank">посещаемости</a><span style="color:rgb(85, 85, 85); font-family:verdana,arial; font-size:14px">.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Нет, конечно же, можно зарабатывать в интернете и не имея своего сайта, но тут возможны два нюанса. Во-первых, доход в большинстве случаев будет в разы (или даже на порядок) меньше, чем в случае использования своего собственного раскрученного интернет проекта (<a href="http://ktonanovenkogo.ru/seo/search/samostoyatelnoe-prodvizhenie-sajta-kak-prodvigat-samomu-vnutrennej-optimizaciej.html" style="margin: 0px; padding: 0px; border: none; color: rgb(24, 110, 174); text-decoration-line: none; outline: none; font-family: verdana; font-size: 14px;" target="_blank">раскрутка сайта самостоятельно</a>).</p>\r\n\r\n<p>Во-вторых, имея свой интернет ресурс, большую часть дохода можно будет отнести к так называемому пассивному заработку. Т.е. вы сможете спокойно уехать в отпуск, а поток денег практически не уменьшится.</p>\r\n\r\n<p>Нет, конечно же, можно зарабатывать в интернете и не имея своего сайта, но тут возможны два нюанса. Во-первых, доход в большинстве случаев будет в разы (или даже на порядок) меньше, чем в случае использования своего собственного раскрученного интернет проекта (<a href="http://ktonanovenkogo.ru/seo/search/samostoyatelnoe-prodvizhenie-sajta-kak-prodvigat-samomu-vnutrennej-optimizaciej.html" style="color: rgb(24, 110, 174); margin: 0px; padding: 0px; border: none; text-decoration-line: none; outline: none; font-family: verdana; font-size: 14px;" target="_blank">раскрутка сайта самостоятельно</a>).</p>\r\n\r\n<p>Во-вторых, имея свой интернет ресурс, большую часть дохода можно будет отнести к так называемому пассивному заработку. Т.е. вы сможете спокойно уехать в отпуск, а поток денег практически не уменьшится.</p>\r\n\r\n<p>Нет, конечно же, можно зарабатывать в интернете и не имея своего сайта, но тут возможны два нюанса. Во-первых, доход в большинстве случаев будет в разы (или даже на порядок) меньше, чем в случае использования своего собственного раскрученного интернет проекта (<a href="http://ktonanovenkogo.ru/seo/search/samostoyatelnoe-prodvizhenie-sajta-kak-prodvigat-samomu-vnutrennej-optimizaciej.html" style="color: rgb(24, 110, 174); margin: 0px; padding: 0px; border: none; text-decoration-line: none; outline: none; font-family: verdana; font-size: 14px;" target="_blank">раскрутка сайта самостоятельно</a>).</p>\r\n\r\n<p>Во-вторых, имея свой интернет ресурс, большую часть дохода можно будет отнести к так называемому пассивному заработку. Т.е. вы сможете спокойно уехать в отпуск, а поток денег практически не уменьшится.</p>\r\n', 1, 1509886571, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Обучение'),
(2, 'Заработок'),
(3, 'Семья'),
(4, 'Стиль жизни'),
(5, 'Игры'),
(7, 'Школа');

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Blogs/Blog3/f0a54f.jpg', 3, 0, 'Blog', 'e8cdec1893-3', ''),
(2, 'Blogs/Blog3/5d417b.jpg', 3, 0, 'Blog', '9d481dc936-4', ''),
(3, 'Blogs/Blog3/ef27f3.jpg', 3, 0, 'Blog', '6afa045c8c-2', ''),
(4, 'Blogs/Blog3/e3df46.jpg', 3, 0, 'Blog', '8f0360bb04-5', ''),
(5, 'Blogs/Blog3/5864b9.jpg', 3, 1, 'Blog', 'c962a91363-1', ''),
(6, 'Blogs/Blog6/a6daf9.png', 6, 1, 'Blog', '65a2c6bf15-1', ''),
(7, 'Blogs/Blog15/250f3c.jpg', 15, 1, 'Blog', '276309cf30-1', ''),
(8, 'Blogs/Blog16/3de641.jpg', 16, 1, 'Blog', '27749d1064-1', ''),
(9, 'Blogs/Blog17/cc8cfe.jpg', 17, 0, 'Blog', '9b4a2db587-3', ''),
(10, 'Articles/Article7/92c8f4.jpg', 7, 0, 'Article', '96d227ba0f-2', ''),
(11, 'Articles/Article7/d20e85.jpg', 7, 1, 'Article', 'd4942dafb2-1', ''),
(12, 'Blogs/Blog17/dfcc84.jpg', 17, 0, 'Blog', '5d245f28f8-2', ''),
(13, 'Blogs/Blog17/8f5786.jpg', 17, 1, 'Blog', '0f36b45fa2-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1502705527),
('m140209_132017_init', 1502706836),
('m140403_174025_create_account_table', 1502706837),
('m140504_113157_update_tables', 1502706841),
('m140504_130429_create_token_table', 1502706842),
('m140506_102106_rbac_init', 1502705585),
('m140622_111540_create_image_table', 1503305195),
('m140622_111545_add_name_to_image_table', 1503305196),
('m140830_171933_fix_ip_field', 1502706842),
('m140830_172703_change_account_table_name', 1502706843),
('m141222_110026_update_ip_field', 1502706843),
('m141222_135246_alter_username_length', 1502706844),
('m150614_103145_update_social_account_table', 1502706846),
('m150623_212711_fix_username_notnull', 1502706846),
('m151218_234654_add_timezone_to_profile', 1502706846),
('m160929_103127_add_last_login_at_to_user_table', 1502706847),
('m170830_085630_create_article_table', 1504083644);

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `social_account`
--

CREATE TABLE IF NOT EXISTS `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `token`
--

CREATE TABLE IF NOT EXISTS `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(8, 'HVL-K1H4g_yX8hY2ZVDin69GjTncObeV', 1502778499, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(6, 'Admin', 'barca.100@bk.ru', '$2y$12$ekkxxY6ABGx/UvxW4vpBTeUEnEGXvd8CgOslzqppAu1JzCHQNjLGO', 'DEKIYp4sJ9_4CpBFjm4MX8kXVjFbt-tn', 1502776111, NULL, NULL, '127.0.0.1', 1502776094, 1502776094, 0, 1509886372),
(7, 'Moderator', 'barca.1000@bk.ru', '$2y$12$iGt81mG7XNn1QPU45WeoPe7tL9m006BY63/qvzy1tOGXoRZXziBKa', 'o054mLz4IxvUnaA6aPAnTSzPRSfaQ2cp', 1502778373, NULL, NULL, '127.0.0.1', 1502778349, 1502778349, 0, 1503476616),
(8, 'User', 'user@user.kz', '$2y$12$WW.ti2tFtcn8tHZMLnO.NezjlExLc/kS3qUwkbsvbY7j30EQnHg7G', 'Cid4ShU3-5TKaSHoJWtmspiLW4KCwzi3', NULL, NULL, NULL, '127.0.0.1', 1502778499, 1502778499, 0, 1502778645);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Индексы таблицы `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
