-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 19 2021 г., 16:27
-- Версия сервера: 10.2.40-MariaDB-cll-lve
-- Версия PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `p-312330_zere-mebel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `attributes`
--

INSERT INTO `attributes` (`id`, `product_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'РАЗМЕР СПАЛЬНОГО МЕСТА', '145 х 200', '2019-12-14 05:43:51', '2019-12-14 05:43:51'),
(3, 1, 'ЯЩИК ДЛЯ БЕЛЬЯ', 'Есть', '2019-12-14 05:49:50', '2019-12-14 05:49:50'),
(4, 3, 'РАЗМЕР СПАЛЬНОГО МЕСТА', '195 х 135', '2019-12-21 06:33:39', '2019-12-21 06:33:39'),
(5, 3, 'НАПОЛНИТЕЛЬ', 'Независимый пружинный блок, или пружинный блок боннель, съёмный чехол', '2019-12-21 06:33:49', '2019-12-21 06:33:49'),
(6, 3, 'ЯЩИК ДЛЯ БЕЛЬЯ', 'Есть', '2019-12-21 06:33:56', '2019-12-21 06:33:56'),
(7, 3, 'МЕХАНИЗМ ТРАНСФОРМАЦИИ', 'двухпозиционная книжка', '2019-12-21 06:34:03', '2019-12-21 06:34:03'),
(8, 3, 'ДОПОЛНИТЕЛЬНО', 'Две декоративные подушки в комплекте', '2019-12-21 06:34:11', '2019-12-21 06:34:11'),
(9, 4, '33', '6251321232321311', '2020-01-21 00:49:50', '2020-01-21 00:49:50'),
(10, 4, '3213213', '323', '2020-01-21 00:49:59', '2020-01-21 00:49:59'),
(11, 6, 'guyg', 'gfcdgf', '2020-01-22 06:34:42', '2020-01-22 06:34:42'),
(12, 6, 'kfvmhlf', 'lkgjhf', '2020-01-22 06:35:33', '2020-01-22 06:35:33');

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`, `img`, `created_at`, `updated_at`) VALUES
(4, 'Молочный глянец в крапинках', 'brands/December2020/dusjb77YbVW9ejEubFB9.jpg', '2020-01-31 07:59:00', '2020-12-14 11:04:39'),
(5, 'Черный глянец в крапинках', 'brands/December2020/0CZRTjCEvpt6eCNjmhVb.jpg', '2020-01-31 08:00:00', '2020-12-14 11:04:14'),
(6, 'Красный глянец в крапинках', 'brands/December2020/naZxsv2OGhQLEySJ8ktm.jpg', '2020-01-31 08:00:00', '2020-12-14 11:03:48'),
(7, 'Черный глянец в крокодил', 'brands/December2020/2kXp9w4rI8MJ6gJtDy5Q.jpg', '2020-01-31 08:02:00', '2020-12-14 11:03:19'),
(8, 'Темный малина в ромбиках', 'brands/December2020/gtmnysTdjapWKw8oynaS.jpg', '2020-01-31 08:05:00', '2020-12-14 11:02:56'),
(10, 'Черный матовый прессованый кожзам', 'brands/December2020/SUtVREhZa4nI4isrvqg1.jpg', '2020-01-31 08:08:00', '2020-12-14 11:02:20'),
(11, 'Зеленый бирюза', 'brands/December2020/YHBQUBKrCx0O6l0AF0C1.jpg', '2020-01-31 08:10:00', '2020-12-14 11:01:49'),
(12, 'Вишневый матовый', 'brands/December2020/eeogR05HSmNVzHtMmiUJ.jpg', '2020-01-31 08:11:00', '2020-12-14 11:01:26'),
(13, 'Коричневый', 'brands/December2020/G1AnPFDhXKquAkwYm1iD.jpg', '2020-01-31 08:12:00', '2020-12-14 11:00:31'),
(14, 'Сиреневый', 'brands/December2020/zkxJoM6l2sHo8WG11OjO.jpg', '2020-01-31 08:13:00', '2020-12-14 10:59:56'),
(15, 'Черный с точками', 'brands/December2020/y0sO35YZKbHUIIJ8ITxG.jpg', '2020-01-31 08:14:00', '2020-12-14 10:59:24'),
(16, 'Бронзовые волны', 'brands/December2020/ZJg1lqZU7FG4zAO7QKFk.jpg', '2020-01-31 08:15:00', '2020-12-14 10:58:59'),
(17, 'Золотистый в ромбиках', 'brands/December2020/4AUVhnKfqCxIJnUUXNeI.jpg', '2020-01-31 08:16:00', '2020-12-14 10:58:23'),
(18, 'Баклажан', 'brands/December2020/PpHqWhLHCZb0dJp3hcyK.jpg', '2020-01-31 08:17:00', '2020-12-14 10:57:44'),
(20, 'Белый матовый', 'brands/December2020/G3XCZgLoa9Ykp2B6x1cx.jpg', '2020-01-31 08:21:00', '2020-12-14 10:57:13'),
(21, 'Красный в ромбиках', 'brands/December2020/cSiiesik7fCFCn5ayZpl.jpg', '2020-01-31 08:22:00', '2020-12-14 10:56:44'),
(22, 'Волнистый серебро', 'brands/December2020/QHssp2egJ3c5j6hASaQb.jpg', '2020-01-31 08:23:00', '2020-12-14 10:56:22'),
(23, 'Черный глянец без узоров', 'brands/December2020/BMbdnK2hAEwL8Q6AzKkT.jpg', '2020-01-31 08:24:00', '2020-12-14 10:55:59'),
(24, 'Черный глянец в капельках', 'brands/December2020/IkexDkIuEm69aDX7ztw0.jpg', '2020-01-31 08:25:00', '2020-12-14 10:55:35'),
(25, 'Кедровый белый', 'brands/December2020/zG8avaHBS1poeLkRxIR8.jpg', '2020-01-31 08:26:00', '2020-12-14 10:55:04'),
(26, 'Голубая бирюза', 'brands/December2020/DD0lh4ItzBHWx1lG0slP.jpg', '2020-01-31 08:27:00', '2020-12-14 10:54:44'),
(27, 'Золотистый шик', 'brands/December2020/cGOWDXVIkdQnWB9Fo6V8.jpg', '2020-01-31 08:29:00', '2020-12-14 10:54:21'),
(28, 'Фиолетовый шик', 'brands/December2020/fHCxYsrY4CSIqRnzEVHW.jpg', '2020-01-31 08:29:00', '2020-12-14 10:53:58'),
(29, 'Красный шик', 'brands/December2020/sdZn0gt4PEM6vtkTmvDG.jpg', '2020-01-31 08:30:00', '2020-12-14 10:53:29');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Электроприборы', 'myagkaya-mebel', NULL, 'categories/January2020/wNkfRBvuw1Ce27s6RNI8.jpg', '2019-12-12 09:58:00', '2020-01-24 03:25:45'),
(2, 'Оборудование для косметологии', 'kukhnya', NULL, 'categories/January2020/A5yUuWSZfMtGeRSTI5pa.jpg', '2019-12-21 06:40:00', '2020-01-24 03:24:13'),
(3, 'Оборудования для мейкап (визажные)', 'spalnya', NULL, 'categories/January2020/8HVOekTsejWa3irsLQZ2.jpg', '2019-12-21 06:41:00', '2020-01-24 03:38:02'),
(4, 'Оборудования для барбершоп', 'detskaya', NULL, 'categories/January2020/whlrFe1tHfJamr2ylHnx.jpg', '2019-12-21 06:43:00', '2020-01-24 03:20:42'),
(5, 'Нейл оборудования', 'stoly-i-stulya', NULL, 'categories/January2020/hHrudwPO0d9Lb2E3Bbbv.jpg', '2020-01-07 05:29:00', '2020-01-24 03:33:16'),
(6, 'Оборудование для парикмахерской', 'asd', NULL, 'categories/January2020/JEiqxUyoKSqi5e0xXFJ0.jpg', '2020-01-22 06:28:00', '2020-01-24 03:34:33'),
(7, 'Помощники для мастеров', 'pomoshchniki-dlya-masterov', NULL, 'categories/January2020/wQVWxfeFVKvdiNvv5Sct.jpg', '2020-01-24 03:27:52', '2020-01-24 03:27:52'),
(8, 'Диваны для ожидания', 'divany-dlya-ozhidaniya', NULL, 'categories/January2020/0n2fdfxgAwVaniQt690y.jpg', '2020-01-24 03:30:55', '2020-01-24 03:30:55'),
(9, 'Стулья для мастеров', 'stulya-dlya-masterov', 'Стулья для мастеров на колесиках, с регулируемой высотой', 'categories/March2020/i7YaxBr3b5HdkLhFT03n.jpg', '2020-01-28 09:48:00', '2020-03-30 11:55:12'),
(10, 'Галерея \"Салон красоты под ключ, готовые решения\".', 'komplekty', 'Готовые решения для вашего салона', 'categories/December2020/0rsnwUKaEWBaBMiPPkwS.jpg', '2020-12-15 12:03:00', '2021-08-07 02:15:03');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(27, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 5, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(30, 5, 'created_at', 'timestamp', 'Создан', 0, 1, 1, 1, 0, 1, '{}', 6),
(31, 5, 'updated_at', 'timestamp', 'Изменен', 0, 0, 0, 0, 0, 0, '{}', 7),
(32, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(33, 6, 'category_id', 'text', 'Категория', 1, 1, 1, 1, 1, 1, '{}', 2),
(34, 6, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 4),
(35, 6, 'desc', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(36, 6, 'created_at', 'timestamp', 'Создан', 0, 1, 1, 1, 0, 1, '{}', 7),
(37, 6, 'updated_at', 'timestamp', 'Изменен', 0, 0, 0, 0, 0, 0, '{}', 8),
(38, 6, 'subcategory_belongsto_category_relationship', 'relationship', 'Категория', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(39, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 7, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 7, 'subcategory_id', 'text', 'Subcategory Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(42, 7, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 4),
(43, 7, 'slug', 'text', 'Slug', 1, 0, 0, 0, 0, 1, '{}', 5),
(44, 7, 'desc', 'text', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 6),
(45, 7, 'img', 'multiple_images', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 7),
(46, 7, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 8),
(47, 7, 'size', 'text', 'Размеры', 1, 1, 1, 1, 1, 1, '{}', 9),
(48, 7, 'created_at', 'timestamp', 'Создан', 0, 1, 1, 1, 0, 1, '{}', 12),
(49, 7, 'updated_at', 'timestamp', 'Изменен', 0, 0, 0, 0, 0, 0, '{}', 13),
(50, 7, 'product_belongsto_category_relationship', 'relationship', 'Категория', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(51, 7, 'product_belongsto_subcategory_relationship', 'relationship', 'Подкатегория', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Subcategory\",\"table\":\"subcategories\",\"type\":\"belongsTo\",\"column\":\"subcategory_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(52, 7, 'sale_price', 'text', 'Скидка(Цена)', 0, 1, 1, 1, 1, 1, '{}', 10),
(53, 7, 'new', 'checkbox', 'Новая', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":false}', 11),
(54, 5, 'slug', 'text', 'Slug', 1, 0, 0, 0, 0, 1, '{}', 4),
(55, 5, 'img', 'image', 'Картинка', 1, 1, 1, 1, 1, 1, '{}', 5),
(56, 7, 'product_hasmany_attribute_relationship', 'relationship', 'Аттрибуты', 0, 0, 0, 0, 0, 0, '{\"model\":\"App\\\\Attribute\",\"table\":\"attributes\",\"type\":\"hasMany\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attributes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(57, 6, 'slug', 'text', 'Slug', 1, 0, 0, 0, 0, 1, '{}', 6),
(58, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 8, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, '{}', 3),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-11-28 08:44:40', '2019-11-28 08:44:40'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-11-28 08:44:40', '2019-11-28 08:44:40'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-11-28 08:44:40', '2019-11-28 08:44:40'),
(5, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-28 12:16:47', '2020-01-07 05:22:48'),
(6, 'subcategories', 'subcategories', 'Subcategory', 'Subcategories', NULL, 'App\\Subcategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-28 12:17:57', '2020-01-07 05:25:55'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, 'App\\Http\\Controllers\\VoyagerProductsController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-09 09:43:44', '2020-01-07 05:28:08'),
(8, 'brands', 'brands', 'Brand', 'Brands', NULL, 'App\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-19 06:36:38', '2020-01-19 06:36:38');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-11-28 08:44:41', '2019-11-28 08:44:41');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-11-28 08:44:41', '2019-11-28 08:44:41', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-11-28 08:44:42', '2020-01-19 06:36:52', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2019-11-28 08:44:42', '2020-01-19 06:36:52', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-11-28 08:44:42', '2019-11-28 08:44:42', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-11-28 08:44:42', '2020-01-19 06:36:52', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-11-28 08:44:42', '2020-01-07 05:18:12', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-11-28 08:44:42', '2020-01-07 05:18:12', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-11-28 08:44:42', '2020-01-07 05:18:12', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-11-28 08:44:42', '2020-01-07 05:18:12', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2019-11-28 08:44:42', '2020-01-19 06:36:52', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-11-28 08:44:46', '2020-01-07 05:18:12', 'voyager.hooks', NULL),
(13, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 3, '2019-11-28 12:16:47', '2020-01-07 05:18:56', 'voyager.categories.index', 'null'),
(14, 1, 'Subcategories', '', '_self', 'voyager-window-list', '#000000', NULL, 4, '2019-11-28 12:17:57', '2020-01-07 05:19:46', 'voyager.subcategories.index', 'null'),
(15, 1, 'Products', '', '_self', 'voyager-basket', '#000000', NULL, 5, '2019-12-09 09:43:45', '2020-01-07 05:21:29', 'voyager.products.index', 'null'),
(16, 1, 'Brands', '', '_self', 'voyager-diamond', '#000000', NULL, 6, '2020-01-19 06:36:38', '2020-01-19 06:37:16', 'voyager.brands.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(36, '2019_11_28_165919_create_categories_table', 2),
(37, '2019_11_28_170649_create_subcategories_table', 2),
(38, '2019_12_07_114939_create_products_table', 2),
(39, '2019_12_14_100139_create_attributes_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-11-28 08:44:43', '2019-11-28 08:44:43'),
(2, 'browse_bread', NULL, '2019-11-28 08:44:43', '2019-11-28 08:44:43'),
(3, 'browse_database', NULL, '2019-11-28 08:44:43', '2019-11-28 08:44:43'),
(4, 'browse_media', NULL, '2019-11-28 08:44:43', '2019-11-28 08:44:43'),
(5, 'browse_compass', NULL, '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(6, 'browse_menus', 'menus', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(7, 'read_menus', 'menus', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(8, 'edit_menus', 'menus', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(9, 'add_menus', 'menus', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(10, 'delete_menus', 'menus', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(11, 'browse_roles', 'roles', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(12, 'read_roles', 'roles', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(13, 'edit_roles', 'roles', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(14, 'add_roles', 'roles', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(15, 'delete_roles', 'roles', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(16, 'browse_users', 'users', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(17, 'read_users', 'users', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(18, 'edit_users', 'users', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(19, 'add_users', 'users', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(20, 'delete_users', 'users', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(21, 'browse_settings', 'settings', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(22, 'read_settings', 'settings', '2019-11-28 08:44:44', '2019-11-28 08:44:44'),
(23, 'edit_settings', 'settings', '2019-11-28 08:44:45', '2019-11-28 08:44:45'),
(24, 'add_settings', 'settings', '2019-11-28 08:44:45', '2019-11-28 08:44:45'),
(25, 'delete_settings', 'settings', '2019-11-28 08:44:45', '2019-11-28 08:44:45'),
(26, 'browse_hooks', NULL, '2019-11-28 08:44:46', '2019-11-28 08:44:46'),
(32, 'browse_categories', 'categories', '2019-11-28 12:16:47', '2019-11-28 12:16:47'),
(33, 'read_categories', 'categories', '2019-11-28 12:16:47', '2019-11-28 12:16:47'),
(34, 'edit_categories', 'categories', '2019-11-28 12:16:47', '2019-11-28 12:16:47'),
(35, 'add_categories', 'categories', '2019-11-28 12:16:47', '2019-11-28 12:16:47'),
(36, 'delete_categories', 'categories', '2019-11-28 12:16:47', '2019-11-28 12:16:47'),
(37, 'browse_subcategories', 'subcategories', '2019-11-28 12:17:57', '2019-11-28 12:17:57'),
(38, 'read_subcategories', 'subcategories', '2019-11-28 12:17:57', '2019-11-28 12:17:57'),
(39, 'edit_subcategories', 'subcategories', '2019-11-28 12:17:57', '2019-11-28 12:17:57'),
(40, 'add_subcategories', 'subcategories', '2019-11-28 12:17:57', '2019-11-28 12:17:57'),
(41, 'delete_subcategories', 'subcategories', '2019-11-28 12:17:57', '2019-11-28 12:17:57'),
(42, 'browse_products', 'products', '2019-12-09 09:43:45', '2019-12-09 09:43:45'),
(43, 'read_products', 'products', '2019-12-09 09:43:45', '2019-12-09 09:43:45'),
(44, 'edit_products', 'products', '2019-12-09 09:43:45', '2019-12-09 09:43:45'),
(45, 'add_products', 'products', '2019-12-09 09:43:45', '2019-12-09 09:43:45'),
(46, 'delete_products', 'products', '2019-12-09 09:43:45', '2019-12-09 09:43:45'),
(47, 'browse_brands', 'brands', '2020-01-19 06:36:38', '2020-01-19 06:36:38'),
(48, 'read_brands', 'brands', '2020-01-19 06:36:38', '2020-01-19 06:36:38'),
(49, 'edit_brands', 'brands', '2020-01-19 06:36:38', '2020-01-19 06:36:38'),
(50, 'add_brands', 'brands', '2020-01-19 06:36:38', '2020-01-19 06:36:38'),
(51, 'delete_brands', 'brands', '2020-01-19 06:36:38', '2020-01-19 06:36:38');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(25, 1),
(26, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `subcategory_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `title`, `slug`, `desc`, `img`, `price`, `sale_price`, `size`, `new`, `created_at`, `updated_at`) VALUES
(7, 6, 4, 'Парикмахерские кресло К-02', 'parikmakherskie-kreslo-k-02', 'Парикмахерские кресла К-02 гидравлическая, высота подъема механизма очень высокой. Расцветки на выбор. Ткань - кожзаменитель, подлокотники пластиковые.', '[\"products\\/December2020\\/bOOjHQ0CXYjf4a6DOx8M.jpg\",\"products\\/December2020\\/zR3g6qgeEI5jlYms3QVW.jpg\"]', 38000, 38000, 'ширина 50см', 1, '2020-01-26 12:15:00', '2021-09-12 21:59:49'),
(8, 6, 4, 'Кресла парикмахерские Z-03', 'kresla-parikmakherskie-z-03', 'Парикмахерское кресло, материал из кожзаменителя или экокожи, расцветки на выбор. Подлокотники месталлические. Гидравлика на блине. Максимум 54 см высота.', '[\"products\\/January2020\\/UuE9lzL21xqp3q8DSUWu.jpg\"]', 48000, 48000, 'Ширина 50см.', 1, '2020-01-26 12:20:00', '2021-09-12 21:58:30'),
(9, 6, 4, 'Кресло парикмахерское К-05', 'kreslo-parikmakherskoe-k-05', 'Паримахерские кресла квадратные, с квадратными блинами и с металлическими ручками, материалы - кожзаменитель, расцветки на выбор.', '[\"products\\/December2020\\/K6Hna5rB8VJkOhDVc6Vb.jpg\"]', 50000, 50000, 'ширина 50см', 0, '2020-01-26 12:26:00', '2021-09-12 21:58:49'),
(10, 6, 4, 'Кресло парикмахерское К-06', 'kreslo-parikmakherskoe-k-06', 'Паримахерские кресла квадратные, с квадратными блинами и с металлическими ручками, с черной вставкой из мрамора, материалы - кожзаменитель, расцветки на выбор.', '[\"products\\/January2020\\/kU10HMZZLdkoMLoldZYC.jpg\",\"products\\/December2020\\/XnZBlkj7CrQVOmy2xxNb.jpg\"]', 50000, 50000, 'ширина 50см', 1, '2020-01-26 12:35:00', '2021-09-12 22:00:24'),
(11, 6, 4, 'Парикмахерские кресло K-07', 'parikmakherskie-kreslo-k-07', 'Паримахерские кресла квадратные, с квадратными блинами, материалы - кожзаменитель, расцветки на выбор.', '[\"products\\/January2020\\/CK9YilXycRUHqx0sABF3.jpg\",\"products\\/December2020\\/zm7JvpQ4Abxg6MB5q7Fx.jpg\"]', 48000, NULL, 'ширина 50см', 1, '2020-01-26 12:41:00', '2021-09-12 21:57:26'),
(12, 6, 4, 'Парикмахерские кресло K-08', 'parikmakherskie-kreslo-k-08', 'Паримахерские кресла c настоящими деревянными подлокотниками с квадратными блинами, материалы - кожзаменитель или экокожа, расцветки на выбор. Очень качественный товар, подъемник поднимает высоко.', '[\"products\\/December2020\\/Iv4NUcdDVpSQnfEJyGXC.jpg\"]', 50000, NULL, 'ширина 50см', 1, '2020-01-26 12:48:00', '2021-09-12 21:57:11'),
(13, 6, 8, 'Лежачая мойка для головы с пластиковой раковиной Л-81', 'lezhachaya-moyka-dlya-golovy-s-plastikovoy-rakovinoy-l-81', 'Лежачая мойка для головы с пластиковой раковиной, смесители в комплекте. Материал дивана кожзам, расцветки на выбор, раковина из толстого пластика, прочная, вполне заменяющий привычную керамическую раковину.', '[\"products\\/January2020\\/jvviq540jFdmuIFWqqcc.jpg\"]', 85000, NULL, 'Размер: длина 130см, ширина 60см, высота 80 см', 1, '2020-01-28 10:08:00', '2021-01-16 12:58:02'),
(14, 6, 8, 'Лежачая мойка для головы с керамической чашкой Л-82оч', 'lezhachaya-moyka-dlya-golovy-s-keramicheskoy-chashkoy-l-82och', 'Лежачая мойка для головы с черной овальной керамической чашкой', '[\"products\\/January2020\\/0S1IMkDp9eklk3KGylgk.jpg\"]', 110000, NULL, 'Длина 130см, ширина 60см, высота 80см.', 1, '2020-01-28 10:17:00', '2021-09-12 21:56:47'),
(15, 6, 8, 'Лежачая мойка для головы с керамической чашкой Л-82об', 'lezhachaya-moyka-dlya-golovy-s-keramicheskoy-chashkoy-l-82ob', 'Мойка лежачая для головы, с белой овальной керамической раковиной, смесители, резинки для головы и шеи в комплекте.', '[\"products\\/December2020\\/DLWWLyqDIotrP7WLa72m.jpg\",\"products\\/August2021\\/iqhznkEBxucz198KD9Xz.jpg\",\"products\\/August2021\\/DvELYbv5bLXnyQR6nMgh.jpg\",\"products\\/August2021\\/gA38wDpXOQer6folTxAp.jpg\",\"products\\/August2021\\/itDuZL0RQ8wlmptvk9LK.jpg\",\"products\\/August2021\\/B24X9sscmCig2nnljxrB.jpg\"]', 110000, NULL, 'Размер: длина 130см, ширина 60см, высота 80 см', 1, '2020-01-28 10:31:00', '2021-09-12 21:56:31'),
(16, 6, 22, 'Лежачая мойка Геленваген Л-82ч', 'lezhachaya-moyka-gelenvagen-l-82ch', 'Лежачая мойка для головы с черной квадратной керамической чашкой', '[\"products\\/January2020\\/g858WjcSWSgoFHrr3SJo.jpg\"]', 110000, NULL, 'Размер: длина 130см, ширина 60см, высота 80 см', 1, '2020-01-28 10:33:00', '2021-09-12 21:55:57'),
(17, 6, 22, 'Лежачая мойка Геленваген Л-82б', 'lezhachaya-moyka-gelenvagen-l-82b', 'Лежачая мойка для головы с белой квадратной керамической чашкой', '[\"products\\/December2020\\/llbiB7nWn7oBcN3DEnA9.jpg\"]', 110000, NULL, 'Размер: длина 130см, ширина 60см, высота 80 см', 1, '2020-01-28 10:37:00', '2021-09-12 21:55:42'),
(18, 6, 22, 'Сидячая мойка для головы С-92ч', 'sidyachaya-moyka-dlya-golovy-s-92ch', 'Мойка для мытья головы, с черной  керамической чашкой, раковина регулируется по росту человека вверх вниз. Материал дивана кожзам, с металлическими подлокотниками.', '[\"products\\/December2020\\/lelK5kgqz3y6ScvINSHI.jpg\"]', 115000, NULL, 'Размер: длина 115см, ширина 60см, высота 90 см', 1, '2020-01-28 10:46:00', '2021-09-12 21:55:21'),
(19, 6, 22, 'Сидячая мойка для головы С-92б', 'sidyachaya-moyka-dlya-golovy-s-92b', 'Сидячая мойка, с регулируемой белой керамической чашкой. Расветки выберите из раздела Ткани. Материал кожзам. Корпус железа. Смесители в комплекте', '[\"products\\/December2020\\/tPWcutPy8qIPA714sWpO.jpg\",\"products\\/August2021\\/kMRJJfCRJj9BhzOxggr1.jpg\",\"products\\/August2021\\/zTPYKLQioPF8rTx5XeWO.jpg\"]', 115000, 115000, 'Размер: длина 115см, ширина 60см, высота 90 см', 1, '2020-02-02 11:51:00', '2021-09-12 21:53:38'),
(20, 6, 22, 'Сидячая мойка Maxi', 'sidyachaya-moyka-maxi', 'Сидячая мойка, с регулируемой черной керамической чашкой. Расветки выберите из раздела Ткани. Материал кожзам. Корпус железа. Смесители в комплекте', '[\"products\\/February2020\\/sBYcBDZ4Y05HfB5LdsZv.jpg\"]', 115000, NULL, 'Длина 120см, ширина 70см, высота 100см, вес 80 кг.', 1, '2020-02-02 11:57:00', '2021-09-12 21:55:05'),
(21, 6, 22, 'Сидячая мойка Maxi', 'sidyachaya-moyka-maxi', 'Сидячая мойка, с регулируемой белой керамической чашкой. Расветки выберите из раздела Ткани. Материал кожзам. Корпус железа. Смесители в комплекте', '[\"products\\/February2020\\/N0JRSe8X9yXvPsI1m5eG.jpg\"]', 115000, NULL, 'Длина 120см, ширина 70см, высота 100см, вес 80 кг.', 1, '2020-02-02 11:58:00', '2021-09-12 21:54:48'),
(24, 6, 9, 'Тележка парикмахерская-  031', 'telezhka-parikmakherskaya-031', 'Тележка парикмахерская на колесиках, многофункциональный. материал пластик.', '[\"products\\/December2020\\/KyvdDpnLgfp28AXjGO88.jpg\"]', 20000, NULL, 'высота 90см', 0, '2020-02-02 12:26:00', '2021-09-12 21:54:31'),
(25, 6, 9, 'Тележка парикмахерская-  008', 'telezhka-parikmakherskaya-008', 'Тележка парикмахерская на колесиках, полки, подстаканник для покраски. материал пластик.', '[\"products\\/December2020\\/qKY4tCXQMfTjo3R1rQiv.jpg\"]', 14000, NULL, 'высота', 0, '2020-02-02 12:28:00', '2021-08-29 01:05:15'),
(28, 6, 9, 'Помощник парикмахерский - 035', 'pomoshchnik-parikmakherskiy-035', 'Цвет черно-белый', '[\"products\\/December2020\\/5cgeM3e09pEuEeD4io0n.jpg\"]', 23000, NULL, 'размер', 0, '2020-02-02 12:32:00', '2021-01-02 04:23:06'),
(29, 6, 11, 'Пуфик детский', 'pufik-detskiy', 'Расцветки выберите из раздела ткани', '[\"products\\/December2020\\/gGNowgVgLhenT2Yw1obn.jpg\"]', 10000, NULL, 'ширина стандарт 50см', 0, '2020-02-02 12:36:00', '2021-08-29 01:04:24'),
(30, 6, 10, 'Зеркало рамные', 'zerkalo-ramnye', 'материал рамки из пластика.', '[\"products\\/February2020\\/syMkJEvUdcGeLkjGDtEd.jpg\",\"products\\/February2020\\/F5THUfNmMzuMEg6k3qTZ.jpg\",\"products\\/February2020\\/IgD5V2hdIqCRro8OOYdY.jpg\",\"products\\/February2020\\/qEIvFHIq5O1B3i85lUlk.jpg\",\"products\\/October2021\\/giiuhKgy1wB0CtTmzr4M.jpg\"]', 25000, NULL, 'ширина 80, высота 180', 1, '2020-02-02 12:38:00', '2021-10-06 07:36:42'),
(31, 6, 14, 'Машинки для стрижки N', 'mashinki-dlya-strizhki-n', 'Беспроводные', '[\"products\\/December2020\\/phWp0xwMOyfxQSBBfb64.jpg\",\"products\\/December2020\\/se3l01djAzw898UxXh8D.jpg\",\"products\\/December2020\\/1LocrE7fZ3e2nVP8RRzh.jpg\",\"products\\/December2020\\/ZfR1gLqnka8jbJpsEOi8.jpg\",\"products\\/December2020\\/FEN0YLNfzozkt1uRNr2t.jpg\"]', 19000, NULL, 'стандарт', 0, '2020-02-02 12:43:00', '2021-08-29 01:03:26'),
(32, 6, 14, 'Машинки для стрижки Phaeton', 'mashinki-dlya-strizhki-phaeton', 'Беспроводные', '[\"products\\/December2020\\/5gqJLDWwQ4Koy9CCcE5V.jpg\",\"products\\/December2020\\/TDkCXtl3hBsuHKLyWBLg.jpg\"]', 19000, NULL, 'стандарт', 0, '2020-02-02 12:46:00', '2021-08-29 01:03:02'),
(33, 6, 1, 'Стерилизатор для инструментов', 'sterilizator-dlya-instrumentov', 'Стерилизатор для инструментов мастера', '[\"products\\/December2020\\/xJ5WJcBb1gBw9xVeocXu.jpg\"]', 24000, 24000, 'стандарт', 1, '2020-02-02 12:49:00', '2021-08-12 05:25:12'),
(34, 6, 1, 'Стерилизатор для инструментов и полотенец', 'sterilizator-dlya-instrumentov-i-polotenets', 'Стерилизатор для инструментов и полотенец', '[\"products\\/December2020\\/s8vOI3XQZKUKjwttxuzZ.jpg\"]', 35000, NULL, 'стандарт', 1, '2020-02-02 12:50:00', '2021-09-12 21:53:21'),
(35, 6, 12, 'Кресла парикмахерский M-12', 'kresla-parikmakherskiy-m-12', 'Кресло парикмахерское с откидной спинкой и подголовоником. Гидравлика', '[\"products\\/December2020\\/ljYQjTXlnjzfYHP3mgeH.jpg\"]', 65000, NULL, 'ширина 50см', 0, '2020-02-02 12:53:00', '2021-09-12 21:52:59'),
(36, 6, 21, 'Кресло парикмахерское мужское М-13', 'kreslo-parikmakherskoe-muzhskoe-m-13', 'Парикмахерское кресло барбершоп, с откидной спинкой и подголовником. Расцветки выберите из раздела ткани.', '[\"products\\/December2020\\/6Rl880Ng5fOYSG7Os6iB.jpg\"]', 78000, NULL, 'ширина 50см', 0, '2020-02-02 13:00:00', '2021-09-12 21:52:36'),
(37, 9, 41, 'Маникюрные кресло', 'manikyurnye-kreslo', 'На колесиках, высота регулируется. Расцветки на выбор', '[\"products\\/December2020\\/b2kyFXzrvXq8nT9LFFgS.jpg\"]', 20000, NULL, 'стандарт', 0, '2020-02-03 10:15:00', '2021-09-12 21:52:15'),
(38, 9, 40, 'Пуфик для мастера', 'pufik-dlya-mastera', 'На колесиках, высота регулируется. Расцветки на выбор', '[\"products\\/December2020\\/PsTjHxFOpzYBOYM97Oyw.jpg\"]', 13000, NULL, 'стандарт', 0, '2020-02-03 10:17:00', '2021-01-02 04:17:37'),
(39, 9, 39, 'Стул-седло или Пони', 'stul-sedlo-ili-poni', 'На колесиках, высота регулируется. Цвет- черный.', '[\"products\\/December2020\\/yePa6RJFeF2wztxTlAnX.jpg\"]', 26000, 26000, 'стандарт', 0, '2020-02-03 10:19:00', '2021-09-12 21:51:53'),
(40, 8, NULL, 'Диван для ожидания', 'divan-dlya-ozhidaniya', 'Диван для ожидания с зарядкой для телефона', '[\"products\\/December2020\\/gwmwYEamgBf4vXe5e9oC.jpg\"]', 65000, NULL, 'ширина 120, длина 65см', 1, '2020-02-03 10:22:00', '2021-08-29 01:01:27'),
(41, 1, NULL, 'Вапоризатор', 'vaporizator', 'Вапоризатор – это косметологическое устройство, главной функцией которого является генерация пара. При чем, речь идет не только о простом водяном паре, но и о паре с добавлением аромамасел, косметологических компонентов, лифтинг-составов и т. д. Благодаря такой функции, прибор позволяет не только очищать кожу, но и насыщать ее определенными компонентами.', '[\"products\\/December2020\\/oNqioUjiyDGSWVWwxKEu.jpg\"]', 28000, NULL, 'стандарт', 1, '2020-02-03 10:29:00', '2021-08-12 05:27:27'),
(42, 6, 1, 'Стерилизатор для инструментов', 'sterilizator-dlya-instrumentov', 'предназначен для стерилизации инструмента. Регулярная стерилизация инструмента позволит мастеру обезопасить себя и своих клиентов от различного рода инфекций и грибков.', '[\"products\\/December2020\\/Tdl4ChVl1dOWbxvSpKDi.jpg\"]', 24000, 24000, 'стандарт', 0, '2020-02-03 10:32:00', '2021-08-07 02:13:25'),
(43, 6, 1, 'Стерилизатор для инструментов и полотенец', 'sterilizator-dlya-instrumentov-i-polotenets', 'Стерилизатор для инструментов и полотенец', '[\"products\\/December2020\\/oY9SKQkkJDRNCutnTJr1.jpg\"]', 35000, NULL, 'стандарт', 0, '2020-02-03 10:39:00', '2021-09-12 21:50:55'),
(44, 2, 30, 'Помощник косметолога с зелёным стеклом', 'pomoshchnik-kosmetologa-s-zelenym-steklom', 'Корпус железный, полки стекляные', '[\"products\\/December2020\\/0m0BATMRbkxVOyxup8k8.jpg\"]', 20000, NULL, 'стандарт', 0, '2020-02-03 10:47:00', '2021-09-12 21:50:34'),
(45, 2, 30, 'Помощник косметолога белый 03', 'pomoshchnik-kosmetologa-belyy-03', 'Корпус железный, полки стекляные', '[\"products\\/December2020\\/HpQSHGwIHGxE3nNSGPS3.jpg\"]', 20000, NULL, 'стандарт', 0, '2020-02-03 10:49:00', '2021-09-12 21:49:59'),
(46, 2, 7, 'Лампа-лупа', 'lampa-lupa', 'Лампа-лупа светодиодная', '[\"products\\/December2020\\/hIdGeeGj9se9dSvEuLnN.jpg\"]', 17000, 18000, 'стандарт', 0, '2020-02-03 10:52:00', '2021-09-12 21:50:14'),
(47, 1, NULL, 'Вапоризатор', 'vaporizator', 'Вапоризатор – это косметологическое устройство, главной функцией которого является генерация пара. При чем, речь идет не только о простом водяном паре, но и о паре с добавлением аромамасел, косметологических компонентов, лифтинг-составов и т. д. Благодаря такой функции, прибор позволяет не только очищать кожу, но и насыщать ее определенными компонентами.', '[\"products\\/December2020\\/EOH9NArZrGvcakokGLGh.jpg\"]', 28000, NULL, 'стандарт', 0, '2020-02-03 10:55:00', '2021-08-12 05:24:42'),
(48, 2, 31, 'Стул для мастера', 'stul-dlya-mastera', 'Круглый стул мастера на колесиках, высота регулируется. Расцветки на выбор, в разделе -ткани, с лева сайта.', '[\"products\\/December2020\\/odlLdGVFmGcWAutzNB9j.jpg\"]', 13000, NULL, 'высота максимум 54, минимум 40см', 0, '2020-02-06 03:34:00', '2021-01-02 04:17:04'),
(50, 1, 37, 'Лампа sun+5', 'lampa-sun5', 'По форме лампа - полусферическая и напоминает шлем мотоциклиста. Лампа обладает оптимальными размерами, чтобы в ней удобно располагалась ладонь или ступня, если вы делаете педикюр.  Производитель заявляет следующие параметры:  мощность: 48 Вт; габариты: 220*195*105 мм; длина волны: 365+405 nm; дно - съемное. Магнитное дно лампы не зеркальное, закрывает боковую и заднюю часть прибора. Если вы нечаянно положили кисточку рядом с лампой, то она не засохнет. Наличие дна исключает такую возможность. Еще одним преимуществом является то, что лампа не скользит и более устойчиво стоит на столе. Также ее легко отсоединить и протереть от капель лака.  Сверху лампы располагаются функциональные кнопки. Вы можете задать время на 10, 30, 60 сек. Кнопка включения выполняет функцию активации пониженного электропотребления: мощность лампы снижается вдвое, постепенно наращивая мощность. Это очень удобно, если вы работаете с гелевыми материалами, ведь при полимеризации на чувствительных ногтях они могут вызвать чувство жжения и тогда нужно будет убавить температуру.', '[\"products\\/December2020\\/cYyPf5JMIMdiTJ1SDeni.jpg\"]', 9000, NULL, 'стандарт', 0, '2020-02-06 04:12:00', '2021-08-12 05:24:21'),
(51, 3, 26, 'Стул барный для визажа', 'stul-barnyy-dlya-vizazha', 'Стульчики для визажа. Расцветки можно выбрать', '[\"products\\/December2020\\/KQofeOtfhJX9c0IE5LfO.jpg\"]', 18000, NULL, 'Максимум 87см, минимум 52см', 0, '2020-02-06 04:39:00', '2021-09-12 21:49:16'),
(52, 3, 27, 'Кресла для визажа', 'kresla-dlya-vizazha', 'Спинка кресло откидывается, с подголовником. Материал кожзам. Расцветки на выбор', '[\"products\\/December2020\\/GXmZKPVxXtFgJHY6f8LH.jpg\"]', 65000, NULL, 'Максимум 54см, минимум 42см', 0, '2020-02-06 04:44:00', '2021-09-12 21:48:56'),
(53, 5, 16, 'Педикюрное кресло без ванночки', 'pedikyurnoe-kreslo-bez-vannochki', 'Педикюрное кресло без ванночки, подставка для ног регулируется по высоте, спинка регулируется в 3 положения, лежа, полулежа, сидя. материал кожзам. Место для  съемной ванночки. Расцветки есть. уточняйте', '[\"products\\/December2020\\/2nCPjTr9Xs1k8Ksn5e7s.jpg\"]', 80000, NULL, 'Размер: длина 115см, ширина 60см.', 0, '2020-02-06 04:51:00', '2021-08-29 00:58:29'),
(54, 5, 16, 'Педикюрное кресло в ванной', 'pedikyurnoe-kreslo-v-vannoy', 'Педикюрное кресло с ванной, подставка для ног регулируется по высоте, спинка регулируется в 3 положения, лежа, полулежа, сидя. материал кожзам. Корпус поворачивается 360 градусов. Подключение к горячей и холодной воде, слив. Место для  съемной ванночки. Расцветки есть. уточняйте', '[\"products\\/December2020\\/mtwzgAxCttim367QoS4d.jpg\"]', 135000, NULL, 'Размер: длина 115см, ширина 60см.', 1, '2020-02-06 05:03:00', '2021-09-12 21:48:34'),
(55, 5, 16, 'Педикюрное кресло  без ванночки -Трансформер', 'pedikyurnoe-kreslo-bez-vannochki-transformer', 'Педикюрное кресло без ванночки, подставка для ног регулируется по высоте, спинка регулируется в 3 положения, лежа, полулежа, сидя. материал кожзам. Место для  съемной ванночки раздвигается. Расцветки есть. уточняйте', '[\"products\\/December2020\\/gf7sISzKYjgUjy4EGHbp.jpg\"]', 115000, NULL, 'ширина 76см, длина 80см, длина с ванной 120см', 1, '2020-02-06 05:15:00', '2021-09-12 21:48:08'),
(56, 5, 16, 'Педикюрное кресло  с ванной -Трансформер', 'pedikyurnoe-kreslo-s-vannoy-transformer', 'Педикюрное кресло с ванной, подставка для ног регулируется по высоте, спинка регулируется в 3 положения, лежа, полулежа, сидя. материал кожзам. Ванночка задвигается внутрь. Подключение  горячей и холодной воды. Расцветки есть. уточняйте', '[\"products\\/March2020\\/i30ciZN0RlkkV2G2T4rv.jpg\"]', 165000, NULL, 'ширина 76см, длина 80 см, длина с ванной 120см', 1, '2020-02-06 08:39:00', '2021-09-12 21:47:46'),
(57, 5, 17, 'Маникюрное кресло', 'manikyurnoe-kreslo', 'Кресло маникюрное со спинкой, на колесиках, регулируется по высоте. Расцветки на выбор в разделе ткани', '[\"products\\/December2020\\/ZaFh8sJU97xT5IgzZ2LU.jpg\"]', 20000, NULL, 'стандарт', 0, '2020-02-06 08:50:00', '2021-09-12 21:47:21'),
(58, 5, 40, 'Стул мастера', 'stul-mastera', 'Стул круглый для мастера колесиках с регулируемой высотой.', '[\"products\\/December2020\\/dwMucjn1cS2PYY24fe8u.jpg\"]', 13000, 13000, 'стандарт', 0, '2020-02-06 08:53:00', '2021-08-29 00:56:51'),
(60, 4, 12, 'Барбершоп кресло M-13', 'barbershop-kreslo-m-13', 'Барбершоп кресло - материал кожзам. Подлокотник металлический. Расцветки на выбор', '[\"products\\/December2020\\/swDZTbrN4XARnqWpUW8s.jpg\"]', 78000, 78000, 'стандарт', 0, '2020-02-26 01:33:00', '2021-09-12 21:46:56'),
(61, 4, 12, 'Кресло Барбершоп Б-20', 'kreslo-barbershop-b-20', 'Эта модель прекрасно подойдет для современного мужского салона красоты. Строгие линии, темный цвет кожзаменителя, удобные подлокотники, широкое посадочное место, мощная подставка для ног - делают кресло по истине мужским. Кресло оснащено удобным подголовником с регулировкой высоты, подставкой для ног с упором в пол и полотенцедержателем. Синхронизированная регулировка угла наклона спинки и подножки позволяет разместить клиента с максимальным комфортом. Дизайн кресла прост и лаконичен, мягкий элемент декорирован двойной строчкой контрастной по цвету. Хромированные элементы отлично дополняют и подчеркивают особый стиль данной модели. В качестве материалов изготовления применяется эластичный наполнитель и стойкий к износу кожзаменитель – эти материалы не только эстетичны, но и долговечны.', '[\"products\\/August2021\\/rdhDBQkmhAhkIoD6EJ61.jpg\",\"products\\/August2021\\/P3DKybJ9m60GCRw5pKSC.jpg\",\"products\\/August2021\\/0mzXM7MhcKTZMAPpzPCG.jpg\"]', 175000, 175000, 'стандарт', 0, '2020-02-26 01:42:00', '2021-09-12 21:46:36'),
(62, 4, 12, 'Кресло Барбершоп Б-22 в наличий есть', 'kreslo-barbershop-b-22-v-nalichiy-est', 'Комфортное Barber кресло \"Б-20\" для посетителя салона на гидравлическом подъемнике с подлокотниками. Оснащено гидравлическим подъемником, подголовником и подножкой. Ослепительный и незабвенный стиль представленного кресла для салона красоты делает его не просто многофункциональной вещью в интерьере, но и делает кресло фокусом всего салона.', '[\"products\\/December2020\\/BjOgDgX0KKts5dr6Flis.jpg\"]', 200000, 200000, 'стандарт', 1, '2020-02-26 01:46:00', '2021-09-12 21:46:10'),
(63, 4, 23, 'Барбер пул -100', 'barber-pul-100', 'это отличительный знак барбершопа, символ мужской парикмахерской, имеющий давнюю историю. Купить Барбер Пул и установить его возле входа – это значит подчеркнуть особый статус заведения, дать понять потенциальным клиентам, что за дверью их ждет стильный интерьер и высокопрофессиональное обслуживание.', '[\"products\\/December2020\\/XNua9UladTekGhwJ6sxc.jpg\"]', 24000, NULL, '80см', 0, '2020-02-26 01:57:00', '2021-09-12 21:44:34'),
(64, 4, 23, 'Барбер пул -200', 'barber-pul-200', 'это отличительный знак барбершопа, символ мужской парикмахерской, имеющий давнюю историю. Купить Барбер Пул и установить его возле входа – это значит подчеркнуть особый статус заведения, дать понять потенциальным клиентам, что за дверью их ждет стильный интерьер и высокопрофессиональное обслуживание.', '[\"products\\/December2020\\/me9uWSLt9IbovfsJz3bQ.jpg\"]', 25000, NULL, '80см', 0, '2020-02-26 01:58:00', '2021-09-12 21:44:16'),
(65, 4, 23, 'Барбер пул -300', 'barber-pul-300', 'это отличительный знак барбершопа, символ мужской парикмахерской, имеющий давнюю историю. Купить Барбер Пул и установить его возле входа – это значит подчеркнуть особый статус заведения, дать понять потенциальным клиентам, что за дверью их ждет стильный интерьер и высокопрофессиональное обслуживание.', '[\"products\\/December2020\\/aYvyCj270M2SGKkW1QJb.jpg\"]', 28000, NULL, '80см', 0, '2020-02-26 02:00:00', '2021-09-12 21:43:27'),
(66, 4, 23, 'Барпер пул-250', 'barper-pul-250', 'это отличительный знак барбершопа, символ мужской парикмахерской, имеющий давнюю историю. Купить Барбер Пул и установить его возле входа – это значит подчеркнуть особый статус заведения, дать понять потенциальным клиентам, что за дверью их ждет стильный интерьер и высокопрофессиональное обслуживание.', '[\"products\\/December2020\\/8AamhhU3Xp8czD8V0vkw.jpg\"]', 25000, NULL, '57см', 0, '2020-02-26 02:01:00', '2021-09-12 21:36:54'),
(67, 6, 8, 'Мойка для головы Р-70', 'moyka-dlya-golovy-r-70', 'Мойка для головы без сиденья, раковина пластиковая регулируемая, смеситель в комплекте', '[\"products\\/December2020\\/l8WvKgN2shSS5EpuguXp.jpg\"]', 65000, 65000, 'Высота 90см', 0, '2020-02-26 02:35:00', '2021-09-12 21:37:28'),
(68, 6, 8, 'Мойка для головы Изящность', 'moyka-dlya-golovy-izyashchnost', 'Мойка для головы сидячая, материал сиденья и чашки пластиковая. Смеситель в комплекте. Воду можно подключить из под пола, или сбоку.', '[\"products\\/December2020\\/cXtjuXMj6aps4E3fJNKA.jpg\"]', 125000, 125000, 'Длина 115, ширина 60, высота 90см', 1, '2020-02-26 02:37:00', '2021-09-12 21:34:50'),
(69, 6, 24, 'Помощник парикмахерский - 035', 'pomoshchnik-parikmakherskiy-035', 'Помогайка для стилиста', '[\"products\\/December2020\\/7Bkbzn9NUmNHKlDCOC7k.jpg\"]', 23000, NULL, 'стандарт', 0, '2020-02-26 02:39:00', '2021-01-02 04:01:46'),
(70, 6, 24, 'Помощник 031', 'pomoshchnik-031', 'Помогайка для стилиста', '[\"products\\/December2020\\/Fdd2PJaiAtfxWARIPe4A.jpg\"]', 20000, 20000, 'стандарт', 0, '2020-02-26 02:40:00', '2021-09-12 21:29:15'),
(71, 6, 24, 'Помощник 008', 'pomoshchnik-008', 'Помогайка для стилиста', '[\"products\\/December2020\\/dTPjVHPmqEx7OqbNt9D0.jpg\"]', 14000, 14000, 'стандарт', 0, '2020-02-26 02:41:00', '2021-09-12 21:29:34'),
(72, 5, 20, 'Педикюрный помощник 2 в 1', 'pedikyurnyy-pomoshchnik-2-v-1', 'Педикюрный помощник + стул для мастера 2 в 1', '[\"products\\/December2020\\/7fQjryZkN5xLbQ6jTvbn.jpg\"]', 22000, NULL, 'стандарт', 0, '2020-02-26 02:50:00', '2021-08-29 00:52:38'),
(73, 5, 19, 'Лампа маникюрный настольный - M', 'lampa-manikyurnyy-nastolnyy-m', 'Настольная лампа', '[\"products\\/December2020\\/9i5mugzmUpzYPbk9KpAv.jpg\"]', 6500, NULL, 'стандарт', 0, '2020-02-26 02:54:00', '2021-01-02 04:00:02'),
(74, 5, 19, 'Лампа маникюрный настольный - S', 'lampa-manikyurnyy-nastolnyy-s', 'Лампа настольная для маникюра.', '[\"products\\/December2020\\/vxie234NNJB3mfKJvWdW.jpg\"]', 3000, NULL, 'миниатюрный', 0, '2020-02-26 02:56:00', '2020-12-14 11:47:58'),
(76, 6, 9, 'Парикмахерская тележка - 037', 'parikmakherskaya-telezhka-037', 'Очень качественный парикмахерский с двумя выдвижными ушками, многофункиональный для инструментов. Помощник', '[\"products\\/December2020\\/eeIusq7mzRK3IpWs4NaV.jpg\"]', 25000, NULL, 'Стандарт', 0, '2020-12-14 07:46:00', '2021-09-12 21:28:34'),
(77, 6, 8, 'Мойка для головы Л-84', 'moyka-dlya-golovy-l-84', 'Лежачая удобная парикмахерская мойка для головы, с керамической раковиной, есть с черной или белой чашкой. Смесители, резиночки для головы в комплекте. Материал кожзам. Под раковиной Железный корпус держатель, не ржавеет, не воняет, после влаги, как например если бы там стоят из дсп,и кожи. отличное!', '[\"products\\/December2020\\/OPgjjEPLPtlWzbWNBD2r.jpg\"]', 100000, NULL, '130 длина, ширина 65', 0, '2020-12-14 07:50:00', '2021-09-12 21:27:54'),
(78, 6, 4, 'Парикмахерское кресло К-07', 'parikmakherskoe-kreslo-k-07', 'Гидравлическая основа парикмахерское кресла, высоко поднимается. Выше 60см. Материал кожзам. Материал обивки выбирайте в разделе ткани', '[\"products\\/December2020\\/oAmeyU716EyPHw5YAToj.jpg\",\"products\\/December2020\\/HbiI5VL21YnB9NRAtokL.jpg\",\"products\\/December2020\\/JENFKUdXN93ZO8ONY1mQ.jpg\",\"products\\/August2021\\/OuGBasNjSQtQpywyPySF.jpg\",\"products\\/August2021\\/N55wDsR2viXy92p3UkGo.jpg\"]', 48000, NULL, 'Стандарт', 1, '2020-12-14 07:54:00', '2021-09-12 21:27:19'),
(79, 8, NULL, 'Диван для ожидания', 'divan-dlya-ozhidaniya', 'Диван для ожидания с зарядкой для телефона. Расцветки выбирайте в разделе - ткани.', '[\"products\\/December2020\\/sjXDgT7xIpyRyHDtqbWf.jpg\"]', 65000, NULL, '130 длина, ширина 65', 0, '2020-12-14 07:56:00', '2021-08-29 00:50:50'),
(80, 6, 8, 'Мойка для головы Л-84', 'moyka-dlya-golovy-l-84', 'Лежачая мойка для головы, с керамической раковиной, смесители, сеточки для волос и резиночки для головы и шеи в комплекте. Материалы кожзам, расцветки на ваше усмотрение. В разделе Ткани, слева в вернём углу.', '[\"products\\/December2020\\/Z57Iy7ABtpi6hp5IDdVF.jpg\"]', 100000, 100000, '130 длина, ширина 65', 1, '2020-12-15 02:35:00', '2021-08-29 00:49:23'),
(81, 10, NULL, 'Комплект для салона красоты, цвет черный 3д.', 'komplekt-dlya-salona-krasoty-tsvet-chernyy-3d', 'Мойка для головы лежачая с пластиковой раковиной модель Л-81, цена 85000тг, кресла модель К-05 с нержавеющими подлокотниками 1шт 48000тг, вам нужно только выбрать количество кресел и моек. Цена указана за 1шт мойку и 1шт кресло.', '[\"products\\/December2020\\/X1xqfk1E9eKh7GPUTUEn.jpg\"]', 135000, NULL, 'Стандарт ширина 60см', 0, '2020-12-15 12:09:00', '2021-09-12 21:26:37'),
(82, 6, 8, 'Мойка парикмахерская С-91', 'moyka-parikmakherskaya-s-91', 'Парикмахерская мойка для головы э, с прочной пластиковой раковиной, которая регулируется по высоте роста человека, у всех наших моек, смесители и резиночки для шеи в комплекте идут. Материал кожзам выберите в разделе Ткани слева в верхнем углу. Подлокотник нержавейка, корпус под мойкой железо, не воняет от влаги, не хрустнет как ДСП, не будет ржаветь.', '[\"products\\/December2020\\/C4i664YXpysfeoAj3JWR.jpg\"]', 105000, 105000, 'Длина 115см, ширина 60см', 0, '2020-12-15 12:29:00', '2021-08-29 00:50:12'),
(83, 6, 4, 'Парикмахерское кресло К-09', 'parikmakherskoe-kreslo-k-09', 'Парикмахерское кресло к-09, очень удобное кресло для клиента, округленная трендовый стиль. Расцветки на выбор, белые, черные, красные и т.д. где можно выбрать в разделе Ткани на левом верхнем углу сайта.', '[\"products\\/December2020\\/DLuEsszss8Gh4rhNzM4a.jpg\"]', 50000, NULL, 'Стандарт ширина 60см', 0, '2020-12-15 12:34:00', '2021-09-12 21:26:09'),
(84, 6, 8, 'Мойка парикмахерская Л-83', 'moyka-parikmakherskaya-l-83', 'Удобная лежачая парикмахерское кресло-мойка, с мягкими кожаными подлокотники, расцветки в ассортименте в разделе Ткани слева сайта в верхнем углу. Смесители и все комплектующие идёт в комплекте..', '[\"products\\/December2020\\/TLJpLKXwgBtrMGzFOKjd.jpg\"]', 80000, 80000, '130 длина, ширина 65', 0, '2020-12-15 12:39:00', '2021-08-29 00:46:50'),
(85, 6, 4, 'Кресло парикмахерское К-10', 'kreslo-parikmakherskoe-k-10', 'Сильное парикмахерское кресло К-10, с очень красивые дизайном, и высоком подъемнтиком, расцветки на выбор, в разделе ткани слева ввернем углу сайтан. Все товары из Гуаньчжоу качественные.', '[\"products\\/December2020\\/snqZ6aky9LhDeNbBKjOT.jpg\",\"products\\/December2020\\/WKwMhoZhKaOS2tai7jZ1.jpg\",\"products\\/December2020\\/RWbww3vz9l5dpr51K2PV.jpg\",\"products\\/August2021\\/NScpS7rLp9eh1clb5H6J.jpg\",\"products\\/August2021\\/HkAproPITPQpDvoIjy7P.jpg\",\"products\\/August2021\\/iNPPKujdz2jmjYQpbeGt.jpg\"]', 60000, NULL, 'Стандарт ширина 60см', 0, '2020-12-16 13:58:00', '2021-09-12 21:25:40'),
(86, 6, 8, 'Мойка парикмахерская С-92', 'moyka-parikmakherskaya-s-92', 'Сидячая компактная мойка для головы, с регулируемой керамической чашкой, с металлическим подлокотником, смесители все в комплекте. Железный нержавеющий корпус под раковиной. Материал кожзам. Раковина на выбор белая и или черная чашка. Диван очень удобный и упругий.', '[\"products\\/December2020\\/viosm48RRpcrvN8sKWrN.jpg\",\"products\\/December2020\\/97Si87E0oDxgMI8evjct.jpg\",\"products\\/August2021\\/4qkFuKSbN2ToFNkI4PFR.jpg\",\"products\\/August2021\\/KWMTjJofOCWZP79ZLiy9.jpg\",\"products\\/August2021\\/8XpglxjX87BxvvFIGEFh.jpg\"]', 115000, NULL, 'Длина 115см, ширина 60см, высота 90см', 1, '2020-12-18 00:56:00', '2021-09-12 21:40:09'),
(87, 6, 8, 'Сидячая мойка для головы С-93', 'sidyachaya-moyka-dlya-golovy-s-93', 'Парикмахерская мойка для головы более широкая мойка чем обычные мойки, положение, сидячая, раковина керамическая регулируется.', '[\"products\\/December2020\\/6n3hgBlyHXRRfPDCrwk8.jpg\",\"products\\/December2020\\/jPzJDUe96S6cZGlV2klZ.jpg\"]', 115000, NULL, '120 на 65', 0, '2020-12-18 01:06:00', '2021-09-12 21:42:56'),
(88, 6, 8, 'Мойка для головы С-95', 'moyka-dlya-golovy-s-95', 'Мойка парикмахерская сидячая компактная, материал кожзам. Расцветки на выбор, в разделе Ткани на верхнем углу сайта', '[\"products\\/December2020\\/OHkmTWUVvQXDGKTshDiq.jpg\",\"products\\/December2020\\/qpsZnsCsfOmDzKE272eh.jpg\"]', 105000, 105000, '115 на 65см', 0, '2020-12-18 01:14:00', '2021-09-12 21:24:39'),
(89, 6, 8, 'Мойка для головы С-94', 'moyka-dlya-golovy-s-94', 'Сидячая удобная Парикмахерская мойка с регулируемой прочной пластиковой раковиной. Расцветки выбирайте в разделе Ткани, на левом верхнем углу сайта', '[\"products\\/December2020\\/9Q6nWAx2QKvnSK6FpSAS.jpg\",\"products\\/December2020\\/PAm1XiExoPDxnzR9cA7C.jpg\"]', 100000, 100000, 'Длина 115, ширина 65см. Высота 90см', 1, '2020-12-18 01:27:00', '2021-09-12 21:24:16'),
(90, 4, 12, 'Барбершоп кресло Б-24', 'barbershop-kreslo-b-24', 'Красивый модный Барбершоп кресло.', '[\"products\\/January2021\\/WU6qug6lzngs7sI2FPoW.jpg\",\"products\\/August2021\\/bdUL3THEsj1MGv2R6p1R.jpg\",\"products\\/August2021\\/fscWrB9rUFOcFUintDvB.jpg\",\"products\\/August2021\\/wBRtV6CXipPZX68YiDSa.jpg\",\"products\\/August2021\\/AlosO8zX1Cj3tx7T6DG1.jpg\"]', 170000, 160000, 'Стандарт', 1, '2021-01-03 13:05:00', '2021-08-29 00:43:00'),
(91, 4, 12, 'Кресло Барбершоп Б-26-z', 'kreslo-barbershop-b-26-z', 'Расцветки есть', '[\"products\\/January2021\\/YaCACjqRGpTVG1jTfQjS.jpg\",\"products\\/August2021\\/XjIcamy53qR53DyeBNBv.jpg\"]', 280000, 280000, 'Стандарт', 1, '2021-01-26 13:29:00', '2021-08-29 00:42:40'),
(93, 4, 12, 'Кресло Барбершоп Винтажное Б-26-s', 'kreslo-barbershop-vintazhnoe-b-26-s', 'Винтажное барбер кресло Б-26(S)    которое выгодно выделит Ваш Барбершоп среди сотен других. Элегантный дизайн кресла с отделкой пуговицами, обрамленное рамой серебристого и золотистого оттенка с кованными элементами придают этому креслу барбера шика и неповторимости.  Откидывающаяся спинка и регулируемая подставка для ног, а также регулируемый подголовник обеспечивают максимальный комфорт для клиента.    Элегантные подлокотники, обитые кожзаменителем Откидывающаяся спинка  для максимального комфорта клиента  Регулируемый съемный подголовник  Регулируемая подставка для ног, а основание - круглый диск для большей устойчивости', '[\"products\\/January2021\\/ciC0EmRyPqhgTjaZG8A0.jpg\"]', 260000, 260000, 'Стандарт', 1, '2021-01-26 13:30:00', '2021-09-28 08:26:12'),
(94, 6, 4, 'Парикмахерское кресло К-07 с бриллиантами', 'parikmakherskoe-kreslo-k-07-s-brilliantami', 'Расцветки есть, в разделе Ткани слева верхнем углу сайта. гидравлика высоко поднимает, подставка для ног у всех кресел в комплекте.', '[\"products\\/January2021\\/M6dK1RlPARvD9tX0ZJXj.jpg\",\"products\\/January2021\\/Ih8zDo2n5XMIctCaVVJt.jpg\",\"products\\/January2021\\/vCp0Qu6ZtHoD88HyV6yN.jpg\",\"products\\/January2021\\/TZLld9JTBYFA2PxyVtEO.jpg\",\"products\\/August2021\\/27URsDemgVqT4z07FsBH.jpg\",\"products\\/August2021\\/txZKJpMq34SQTKc4UyiO.jpg\",\"products\\/August2021\\/3hUwwpk0sXYW487ECWLv.jpg\"]', 48000, NULL, 'Стандарт ширина 60см', 1, '2021-01-26 13:33:00', '2021-09-12 21:41:58'),
(95, 6, 8, 'Мойка для головы Л-84 с бриллиантами', 'moyka-dlya-golovy-l-84-s-brilliantami', 'Очень удобная лежачая парикмахерская мойка. Европейский стандарт. Расцветки в разделе ткани, в верхнем углу сайта', '[\"products\\/January2021\\/YuBiKPpcFhYGPhJxgT2A.jpg\",\"products\\/January2021\\/FY6KZ2etBNoLu3l52A70.jpg\",\"products\\/January2021\\/gSZJ3sH9h2PpG8ixHYRT.jpg\",\"products\\/August2021\\/r00DrUWNHcEjO2DtBZGT.jpg\",\"products\\/August2021\\/9WwB0JxaMYZMtyqXqFzQ.jpg\",\"products\\/August2021\\/o6aC64p6K4rlNQ5Ekbjo.jpg\"]', 100000, 100000, '130 длина, ширина 65', 1, '2021-01-26 13:35:00', '2021-09-12 21:22:38'),
(96, 4, 34, 'Вапоризатор 2 в 1', 'vaporizator-2-v-1', 'Есть холодная и горячая регулирование пар.', '[\"products\\/January2021\\/vISWxqL7dG6CiqMteivU.jpg\"]', 28000, NULL, 'Стандарт', 0, '2021-01-26 13:37:00', '2021-09-12 21:41:36'),
(97, 1, 34, 'Вапоризатор 2 в 1', 'vaporizator-2-v-1', 'Есть холодная и горячая регулирование пар.', '[\"products\\/January2021\\/iVB1k0QDa7mvmG5ekUNM.jpg\"]', 28000, 28000, 'Стандарт', 0, '2021-01-26 13:38:00', '2021-08-07 02:11:07'),
(98, 1, 28, 'Селфи лампа Диаметр 48', 'selfi-lampa-diametr-48', 'Есть пульт управления яркости и тонов.', '[\"products\\/January2021\\/MKfMo1ZjbgtTE9o8R1Du.jpg\",\"products\\/August2021\\/mrEfKPmg3ApxnSIdm6HR.jpg\"]', 24000, NULL, '48d', 1, '2021-01-31 11:42:00', '2021-09-12 21:21:43'),
(100, 1, 28, 'Двойная селфи лампа светодиодная', 'dvoynaya-selfi-lampa-svetodiodnaya', 'Профессиональная светодиодная лампа для визажистов, лэшмейкера, мастера ПМ (перманентного макияжа), косметолога, мастера депиляции и эпиляции, мастера тату салонов и для наращивания ресниц. Имеется регулировка цветовой температуры, яркости. Две лампы на гнущихся основах, которые могут работать отдельно. Не громоздкая и позволяет удобно выставить свет для работы, фиксирует любой угол наклона. Идет в комплектации с металлическим штативом до двух метров высотой.', '[\"products\\/January2021\\/oBWMBQ1D1DBeMxOoIsJf.jpg\"]', 24000, 22000, 'Стандарт', 1, '2021-01-31 11:47:00', '2021-09-12 21:21:27'),
(101, 4, 12, 'Барбершоп кресло Б-21', 'barbershop-kreslo-b-21', 'Кресло для барбершопа премиум класса. Материал отборная сталь и кожзамы премиум класса.', '[\"products\\/January2021\\/YsP5elFjnRFFEj5ZD2DF.jpg\"]', 175000, 175000, 'Стандарт', 1, '2021-01-31 11:52:00', '2021-09-12 21:21:12'),
(102, 6, 8, 'Мойка для головы С-95 с бриллиантами', 'moyka-dlya-golovy-s-95-s-brilliantami', 'Комфортная сидячая мойка, с материалом кожзам высшего класса, регулируемая керамическая раковина белая или черная, смесители в комплекте. Расцветки на выбор в разделе Ткани в левом верхнем углу сайта.', '[\"products\\/January2021\\/M9g5HynK04MRbpszSabZ.jpg\",\"products\\/August2021\\/8WyealgwAy6WOb7lJGS3.jpg\",\"products\\/August2021\\/cHPSvbPWRcRiRS8pQtDo.jpg\",\"products\\/August2021\\/XpccNXn71yq8kaXkUQo3.jpg\",\"products\\/August2021\\/ZDPONiw0bNY2UvFYLINt.jpg\",\"products\\/August2021\\/92huyP1s1ge8pp3j8YPp.jpg\",\"products\\/August2021\\/zFS8vCwN9OBb7uv9OC6x.jpg\"]', 105000, 105000, 'Длина 115см, ширина 60см', 1, '2021-01-31 11:56:00', '2021-09-12 21:39:21'),
(103, 6, 10, 'Зеркало серебристое ажурное', 'zerkalo-serebristoe-azhurnoe', 'Материал пластик', '[\"products\\/January2021\\/pcUJiIlYxZSeY3PFOkcl.jpg\",\"products\\/August2021\\/Z38IfLeezU7kdCZZe5Lb.jpg\",\"products\\/August2021\\/r4lZUQXIyYjQRFpW8uWZ.jpg\"]', 25000, 25000, '180 на 80', 1, '2021-01-31 11:57:00', '2021-08-12 05:49:55'),
(104, 6, 9, 'Парикмахерский помощник', 'parikmakherskiy-pomoshchnik', 'Прочный качественный триллер для парикмахеров. Держатель железный круг. Компактный, стильный. Цвета черные и красные', '[\"products\\/January2021\\/uYgCNonjC0EsJbuVwImm.jpg\",\"products\\/January2021\\/yRRffCix05hnDO6f4ss6.jpg\"]', 22000, 22000, 'Стандарт', 1, '2021-01-31 12:00:00', '2021-08-29 00:39:39'),
(105, 6, 8, 'Мойка Gold', 'moyka-gold', 'Мойки лежачие и сидячие на выбор.', '[\"products\\/August2021\\/E1DuR5ZByxGsdrYuG2zQ.jpg\",\"products\\/August2021\\/3wqPLQy3SYCWd6SKwze8.jpg\",\"products\\/August2021\\/yMUn1mFw6VFffWSJWryn.jpg\",\"products\\/August2021\\/o6GvFkQhW9KgPIDnfyHT.jpg\",\"products\\/August2021\\/BXETbBWB6mnZyU9Fg8Vw.jpg\",\"products\\/August2021\\/H9OY0S67SC71wdqe7MZi.jpg\",\"products\\/August2021\\/OECQ4bAwpWKgxlonH7eJ.jpg\",\"products\\/August2021\\/qGlOv84jRnc3R1ZVaBz5.jpg\",\"products\\/August2021\\/5mjF3YxRT8V7uwiQ053G.jpg\"]', 135000, NULL, '115 на 60', 0, '2021-08-12 00:39:00', '2021-09-12 21:19:53'),
(107, 6, 4, 'Парикмахерское кресло К-11', 'parikmakherskoe-kreslo-k-11', 'Материал кожзам, цвет обивки в разделе Ткани. Подставка для ног у всех кресел в комплекте. Диски квадратыные и круглые на выбор, гидравлика высоко поджимает.', '[\"products\\/August2021\\/ZQ59Sq6UWDxWdxxaZOPC.jpg\",\"products\\/August2021\\/8Ux1HIjkJlcAUR0nk7yG.jpg\",\"products\\/August2021\\/9BRVVoG5efI9QLUocAG0.jpg\",\"products\\/August2021\\/JHcJRTWYN4PXmkcWxMqn.jpg\"]', 55000, NULL, 'Стандарт ширина 60см', 0, '2021-08-12 03:32:00', '2021-09-12 21:40:41'),
(108, 6, 8, 'Мойка для головы Л-83 с бриллиантами', 'moyka-dlya-golovy-l-83-s-brilliantami', 'Лежачая мойка для головы с пластиковый раковиной. Расцветки на выбор', '[\"products\\/August2021\\/wBIuxymICu2zp7vmPwPL.jpg\",\"products\\/August2021\\/EV7TxhDxLpFkLjjkBeWW.jpg\",\"products\\/August2021\\/0KUPtsfH03pXscjstKjf.jpg\"]', 80000, 80000, '130 длина, ширина 60', 1, '2021-08-12 05:18:00', '2021-08-29 00:38:39'),
(109, 4, 12, 'Винтажное барбер кресло Б-28', 'vintazhnoe-barber-kreslo-b-28', 'Стильное винтажное кресло Б-28 идеально для барбершопа VIP класса.Мужские парикмахерские кресла Б-28 станут ярким акцентом интерьера. Кресла доступны в черном цвете, так же возможно коричневый и болотно-зеленый, и другие на ваш вкус и цвет.. Обивка - мягкая и комфортна эко-кожа.Полировка металла под хром. Помимо превосходных эстетических характеристик,кресло Б-28 характеризуется превосходными техническими характеристиками - высокое качество изготовления. Кресло выполнено из нержавеющей стали, основание-усиленная хромированная основа.  Мужское парикмахерское кресло Б-28 оснащено регулируемым по высоте съемным  подголовником. Рычаг регулировки спинки позволяет менять угол наклона спинки. Подножка выполнена из нержавеющей стали,оснащена подушкой. Винтажные барбер кресла Б-28 - это надежность и качество! Доставка по всей СНГ. огромный выбор кресел, кресла в наличии.', '[\"products\\/August2021\\/vAvT2vaIwX2C6DA04zkh.jpg\",\"products\\/August2021\\/nyx4ZY2uyYwIK9zv1EQX.jpg\",\"products\\/August2021\\/3ooVWlogHeHltDnAREDf.jpg\"]', 260000, NULL, 'Стандарт', 1, '2021-08-12 05:42:00', '2021-09-28 08:15:31'),
(110, 6, 8, 'Парикмахерская мойка для головы Л-83', 'parikmakherskaya-moyka-dlya-golovy-l-83', 'Мега удобная, качественная, и супер цена для такой мойки. Мойка для головы лежачая с пластиковой раковиной модель Л-81 с бриллиантами.Материал кожзам. Высота 80, длина 130, ширина 60см. Раковина из качественного прочного пластика. Корпус под раковиной съемная, крашеное железо. Смесители резиночки для головы в комплекте. Расцветки в разделе \"Ткани\"', '[\"products\\/October2021\\/CUI6dvVC72LCX2aFhJnF.jpg\",\"products\\/October2021\\/FYjo43FKwJCy2GLoJxY2.jpg\",\"products\\/October2021\\/NlQcWt2BQvAi6pxHhk4n.jpg\"]', 80000, 80000, '130 длина, ширина 60', 1, '2021-10-06 06:12:00', '2021-10-06 06:27:38'),
(111, 6, 10, 'Зеркало с подсветкой', 'zerkalo-s-podsvetkoy', 'Зеркало включается на движение руки', '[\"products\\/October2021\\/aitJPdMFvkmvmfE9wDZK.jpg\"]', 27000, 27000, '100:80см', 1, '2021-10-06 06:15:00', '2021-10-06 06:20:00'),
(112, 6, 10, 'Зеркало с сенсорной лампой', 'zerkalo-s-sensornoy-lampoy', 'Включается касанием рук.', '[\"products\\/October2021\\/MuQpXTWcsQZ76Altp8w7.jpg\"]', 25000, 25000, '100:80см', 1, '2021-10-06 06:19:39', '2021-10-06 06:19:39'),
(113, 6, 10, 'Зеркало с подсветкой', 'zerkalo-s-podsvetkoy', 'Круглое, включается касанием Touch.', '[\"products\\/October2021\\/q7Z4jDdOliC1pt3tH2WM.jpg\"]', 25000, 25000, '80 diameter', 0, '2021-10-06 06:23:01', '2021-10-06 06:23:01'),
(114, 6, 8, 'Мойка для салона красоты Al-01', 'moyka-dlya-salona-krasoty-al-01', 'Мойка лежачая для головы, современный красивый стиль с алюминиевыми боками. Так же к ним есть комплект парикмахерские кресла. Материал: кожзам, алюминий, раковина керамика, все в комплекте. Расцветки', '[\"products\\/October2021\\/fZjUT9iFYVoygbeoAvQ8.jpg\",\"products\\/October2021\\/e1xX2HgwoZGjmQfkwT9m.jpg\",\"products\\/October2021\\/jbI6wr2Tm5bGEtEfqU9D.jpg\",\"products\\/October2021\\/Z7UDm5EXVCR4TBZhEWK7.jpg\",\"products\\/October2021\\/iWzKyf1KKWYHXfsoQO8y.jpg\",\"products\\/October2021\\/KojgNHvdNSgjWbyffmDv.jpg\"]', 135000, 135000, '130 длина, ширина 60', 1, '2021-10-06 06:55:00', '2021-10-06 07:01:26'),
(115, 4, 12, 'Кресло для Барбера Б-22', 'kreslo-dlya-barbera-b-22', 'Улучшенный дизайн, очень удобные, материал Кожзам. Расцветки есть, белые, черные коричневый, зеленые и голубые, синие, золотистые и т.д', '[\"products\\/October2021\\/ZyHQXk2ZS0BgOpatZb08.jpg\",\"products\\/October2021\\/znXK1KTk7nptDs8HXgKZ.jpg\",\"products\\/October2021\\/8vIQEnaFrXJ33E7k9iBh.jpg\",\"products\\/October2021\\/XmaeEqzEfmcxJSI0mL8D.jpg\",\"products\\/October2021\\/iBreybTTGhP2xvmtfgna.jpg\",\"products\\/October2021\\/ENwrpFIuYtuP0G58M6jw.jpg\"]', 200000, NULL, 'Стандарт', 1, '2021-10-06 07:05:00', '2021-10-06 07:09:48'),
(116, 4, 12, 'Кресло Барбера Б-21', 'kreslo-barbera-b-21', 'Лучшее кресло года для Барбершоп!', '[\"products\\/October2021\\/UMcPyEzrZqdVg0RtwpxU.jpg\",\"products\\/October2021\\/32JlsDrmgj6thoqV0fM2.jpg\",\"products\\/October2021\\/g7YaHyosH1vW6B5K7n39.jpg\",\"products\\/October2021\\/SrTiZRouCkdMbSC71Yh6.jpg\"]', 175000, NULL, 'Стандарт', 0, '2021-10-06 07:12:00', '2021-10-06 07:15:47'),
(117, 4, 34, 'Вапоризатор Черный', 'vaporizator-chernyy', 'С двум трубками, холодный и горячий.', '[\"products\\/October2021\\/7hD0WZdP9VOGXdPKmdd6.jpg\",\"products\\/October2021\\/XJ6fQH4uCEEVGKcKVfL9.jpg\"]', 30000, NULL, 'Стандарт', 0, '2021-10-06 07:19:00', '2021-10-06 07:20:21'),
(118, 1, 1, 'Стерилизатор Карма 2 в 1', 'sterilizator-karma-2-v-1', 'Большой стерилизатор для полотенец, и ультрафиолетовый', '[\"products\\/October2021\\/mvqjZ1z4NEFHlC96LUrC.jpg\"]', 50000, NULL, 'Стандарт', 0, '2021-10-06 07:22:17', '2021-10-06 07:22:17'),
(119, 4, 23, 'Барберпул 400', 'barberpul-400', 'Дерзкий барберпул.', '[\"products\\/October2021\\/ULO8BGSVtYvtkre4ybEr.jpg\",\"products\\/October2021\\/qYIfe51xcKJ956zPAFm5.jpg\",\"products\\/October2021\\/xXpZT3kwmUkKYhZRSXq2.jpg\",\"products\\/October2021\\/PeXMCHfw64yhqN7lpAlT.jpg\"]', 28000, NULL, '80см', 0, '2021-10-06 07:23:00', '2021-10-06 07:28:46'),
(120, 5, 31, 'Стул мастера сол спинкой 0303', 'stul-mastera-sol-spinkoy-0303', 'Качественный, удобный.', '[\"products\\/October2021\\/epEwfoTk0Z9Y6X8fTZbB.jpg\"]', 26000, NULL, 'Стандарт', 0, '2021-10-06 07:31:46', '2021-10-06 07:31:46'),
(121, 5, 31, 'Стульчик мастера 0404', 'stulchik-mastera-0404', 'Со спинкой. Цвет черный', '[\"products\\/October2021\\/AcvvdlvFGJaaweoD08xm.jpg\"]', 21000, NULL, 'Стандарт', 0, '2021-10-06 07:32:58', '2021-10-06 07:32:58'),
(122, 6, 15, 'Подставка для фена', 'podstavka-dlya-fena', 'Подставка для фена разноцветные на выбор', '[\"products\\/October2021\\/euGLe4aOQcPSNgduO4Ag.jpg\",\"products\\/October2021\\/VAqX4oCQqXBnlqKdxL93.jpg\"]', 5000, NULL, 'Стандарт', 0, '2021-10-06 07:34:00', '2021-10-06 07:34:43');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-11-28 08:44:42', '2019-11-28 08:44:42'),
(2, 'user', 'Normal User', '2019-11-28 08:44:43', '2019-11-28 08:44:43'),
(3, 'manager', 'Manager', '2020-01-07 05:16:20', '2020-01-07 05:16:20');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Оборудование для салонов красоты - Алматы', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Магазин оборудования для салонов красоты - Интернет магазин мебели - Быстрая доставка - Мебель со склада - купить в Алматы', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/January2020/dYeWWHoIIlbxA1dcsIIt.png', '', 'image', 4, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', 'UA-185500841-1', '', 'text', 6, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Zere', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 1, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 2, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', 'UA-185500841-1', '', 'text', 3, 'Admin'),
(12, 'site.location', 'Контакт - Локация', 'Алма-Ата, Доспановой 47', NULL, 'text', 7, 'Site'),
(13, 'site.number', 'Контакт - Номер', '+77016612712', NULL, 'text', 8, 'Site'),
(14, 'site.schedule', 'Контакт - Режим', 'Прием звонков: с 9:00 до 21:00 Ежедневно, по ватсапу можно писать и позднее время.', NULL, 'text', 10, 'Site'),
(15, 'site.email', 'Контакт - Почта', 'zeremebel@gmail.com', NULL, 'text', 11, 'Site'),
(16, 'site.vkontakte', 'Вконтакте', 'https://vk.com/', NULL, 'text', 12, 'Site'),
(17, 'site.facebook', 'Facebook', 'https://m.facebook.com/otkroysalon/', NULL, 'text', 13, 'Site'),
(18, 'site.instagram', 'Instagram', 'https://instagram.com/beauty_magazin21', NULL, 'text', 14, 'Site'),
(19, 'site.twitter', 'Twitter', 'https://twitter.com', NULL, 'text', 15, 'Site'),
(20, 'site.whatsapp', 'Контакт - WhatsApp', '87016612712', NULL, 'text', 9, 'Site'),
(21, 'site.slide_1', 'Slide 1', 'settings/August2021/0GCFKlljHTxIyArCZrS6.jpg', NULL, 'image', 16, 'Site'),
(22, 'site.slide_2', 'Slide 2', 'settings/October2021/fIWqlRpN3UMlu81kVbLW.jpg', NULL, 'image', 17, 'Site'),
(23, 'site.slide_3', 'Slide 3', 'settings/August2021/Y6arQBa9FRLZVcnJIyHP.jpg', NULL, 'image', 18, 'Site'),
(24, 'site.keywords', 'Keywords', '?магазин профессионального оборудования +для салонов красоты оборудование +для парикмахерских +и салонов красоты оборудование +для салонов красоты оборудование +для салонов красоты купить оборудование +для салонов красоты +оптом оборудование салона красоты, список профессиональное оборудование +для салонов красоты салон красоты оборудование цена купить мебель +для салона красоты магазин мебели +для салона красоты мебель +для салона красоты интернет мебель +для салона красоты интернет магазин мебель +для салонов красоты мебель +для салонов красоты бу +качественное оборудование используется +в парикмахерской купить парикмахерское оборудование куплю парикмахерское оборудование б +у лучшее парикмахерское оборудование магазины парикмахерского оборудования новейшее оборудование +и технологии применяются +в парикмахерских оборудование +для парикмахерских +и салонов оборудование +для парикмахерских +и салонов красоты оборудование +для парикмахерских красоты оборудование класса парикмахерской оборудование парикмахерского зала оборудование парикмахерского места оснащение парикмахерским оборудованием официальный сайт парикмахерского оборудования парикмахерские инструменты оборудование парикмахерское оборудование парикмахерское оборудование +в алматы парикмахерское оборудование б +у парикмахерское оборудование комплекты парикмахерское оборудование цены парикмахерское оборудование эконом класса помещение +и оборудование парикмахерских сайт парикмахерского оборудования содержание +и оборудование парикмахерских типы парикмахерского оборудования устройство оборудования парикмахерской фото парикмахерского оборудования', NULL, 'text', 3, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'Стерилизатор', 'divany', NULL, '2019-12-12 09:59:00', '2020-01-24 03:43:35'),
(4, 6, 'Парикмахерские кресла', 'ldfgjd', 'кресла для стрижки', '2020-01-22 06:29:00', '2020-01-24 03:42:11'),
(7, 1, 'Лампа-лупа для косметолога', 'lampa-lupa-dlya-kosmetologa', 'Лампа-лупа для косметолога, светодиодная с регулировкой яркости света.', '2020-01-26 12:06:00', '2020-01-26 12:07:39'),
(8, 6, 'Мойка парикмахерская', 'moyka-parikmakherskaya', 'Мойки для мытья головы', '2020-01-28 09:05:22', '2020-01-28 09:05:22'),
(9, 6, 'Тележки парикмахерские', 'telezhki-parikmakherskie', 'Помощники парикмахерские', '2020-01-28 09:06:54', '2020-01-28 09:06:54'),
(10, 6, 'Зеркало', 'zerkalo', 'Зеркала с рамкой, настенные', '2020-01-28 09:08:34', '2020-01-28 09:08:34'),
(11, 6, 'Детский пуфик', 'detskiy-pufik', 'Пуфик для стрижки детей', '2020-01-28 09:10:58', '2020-01-28 09:10:58'),
(12, 6, 'Кресло Барбершоп', 'kreslo-barbershop', 'Кресла для стрижки, с откидываемой спинкой.', '2020-01-28 09:11:48', '2020-01-28 09:11:48'),
(13, 6, 'Стерилизатор', 'sterilizator', 'Стерилизатор для инструментов и полотенец', '2020-01-28 09:12:49', '2020-01-28 09:12:49'),
(14, 6, 'Машинки для стрижки', 'mashinki-dlya-strizhki', 'Машинки для стрижки беспроводные.', '2020-01-28 09:13:39', '2020-01-28 09:13:39'),
(15, 6, 'Фен', 'fen', 'Профессиональные фены для сушки волос', '2020-01-28 09:14:44', '2020-01-28 09:14:44'),
(16, 5, 'Педикюрные кресла', 'pedikyurnye-kresla', 'Кресла педикюрные, с ванной или без ванны на выбор. Спинки регулируется в 3 положения.', '2020-01-28 09:16:27', '2020-01-28 09:16:27'),
(17, 5, 'Маникюрные стулья', 'manikyurnye-stulya', 'Маникюрные стулья для клиентов и мастеров.', '2020-01-28 09:17:15', '2020-01-28 09:17:15'),
(18, 5, 'Лампа для сушки ногтей', 'lampa-dlya-sushki-nogtey', 'Sun 5+', '2020-01-28 09:17:55', '2020-01-28 09:17:55'),
(19, 5, 'Лампа настольная', 'lampa-nastolnaya', 'Осветительный прибор', '2020-01-28 09:19:08', '2020-01-28 09:19:08'),
(20, 5, 'Педикюрный помощник 2 в 1', 'pedikyurnyy-pomoshchnik-2-v-1', 'Педикюрный помощник + стул для мастера', '2020-01-28 09:20:23', '2020-01-28 09:20:23'),
(21, 4, 'Кресло Барбершоп', 'kreslo-barbershop', 'кресла для стрижки для мужчин', '2020-01-28 09:21:10', '2020-01-28 09:21:10'),
(22, 4, 'Мойка парикмахерская', 'moyki-dlya-golovy', 'Парикмахерская мойка с креслом и без кресла - Договор купли продажи мойки головы - Быстрая доставка - Мебель со склада- Отправка по Казахстану', '2020-01-28 09:23:00', '2020-11-01 12:35:18'),
(23, 4, 'Барберпул', 'barberpul', 'Осветительный  прибор  рекламного характера для барбершоп', '2020-01-28 09:24:52', '2020-01-28 09:24:52'),
(24, 4, 'Троллер', 'troller', 'Помогайка для стилиста', '2020-01-28 09:25:54', '2020-01-28 09:25:54'),
(25, 4, 'Машинки для стрижки', 'mashinki-dlya-strizhki', 'Машинки для стрижки беспроводные.', '2020-01-28 09:26:47', '2020-01-28 09:26:47'),
(26, 3, 'Стульчик для визажа', 'stulchik-dlya-vizazha', 'Стульчик для визажа с регулируемой высотой', '2020-01-28 09:28:09', '2020-01-28 09:28:09'),
(27, 3, 'Кресла для визажиста', 'kresla-dlya-vizazhista', 'Кресла с откидной спинкой и подголовником.', '2020-01-28 09:29:00', '2020-01-28 09:29:00'),
(28, 3, 'Кольцевая лампа', 'koltsevaya-lampa', 'Лампа для визажиста, селфи лампа.', '2020-01-28 09:33:43', '2020-01-28 09:33:43'),
(29, 2, 'Лампа-лупа для косметолога', 'lampa-lupa-dlya-kosmetologa', 'Лампа-лупа светодиодная', '2020-01-28 09:34:26', '2020-01-28 09:34:26'),
(30, 2, 'Помощник косметолога', 'pomoshchnik-kosmetologa', 'Тележки косметолога', '2020-01-28 09:35:17', '2020-01-28 09:35:17'),
(31, 2, 'Стульчик мастера', 'stulchik-mastera', 'Стулья для мастера колесиках с регулируемой высотой.', '2020-01-28 09:36:21', '2020-01-28 09:36:21'),
(33, 1, 'Фены', 'feny', 'Фен для сушки волос', '2020-01-28 09:39:08', '2020-01-28 09:39:08'),
(34, 2, 'Вапоризатор', 'vaporizator', 'Устройство с функцией генераций пар.', '2020-01-28 09:41:00', '2020-01-28 09:42:35'),
(35, 1, 'Вапоризатор', 'vaporizator', 'Устройство с функцией генерации пар.', '2020-01-28 09:42:16', '2020-01-28 09:42:16'),
(36, 1, 'Лампа для визажа', 'lampa-dlya-vizazha', 'Лампа кольцевая, селфи лампа.', '2020-01-28 09:43:52', '2020-01-28 09:43:52'),
(37, 1, 'Лампа Sun 5+', 'lampa-sun-5', 'Лампа для сушки ногтей после покрытий лаком.', '2020-01-28 09:45:33', '2020-01-28 09:45:33'),
(38, 1, 'Машинки для стрижки', 'mashinki-dlya-strizhki', 'Машинки для стрижки беспроводные.', '2020-01-28 09:46:30', '2020-01-28 09:46:30'),
(39, 9, 'Седло-пони', 'sedlo-poni', 'Стульчик седло ортопедический', '2020-01-28 09:49:24', '2020-01-28 09:49:24'),
(40, 9, 'Круглые стулья для мастера', 'kruglye-stulya-dlya-mastera', 'Круглые стулья для мастера без спинки, с регулируемой высотой на колесиках.', '2020-01-28 09:50:17', '2020-01-28 09:50:17'),
(41, 9, 'Стул мастера со спинкой.', 'stul-mastera-so-spinkoy', 'Стульчик  со спинкой, на колесиках с регулируемой высотой', '2020-01-28 09:52:25', '2020-01-28 09:52:25');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'amangeldiyev.amantur@gmail.com', 'users/default.png', NULL, '$2y$10$hJwu0r3StSUyOFbSa0zwvO8bWqS696iDWGYmxQF/c.BDW90bevRGK', NULL, NULL, '2019-11-28 08:45:24', '2019-11-28 08:45:24'),
(2, 3, 'Альмира', 'info@zere-mebel.kz', 'users/default.png', NULL, '$2y$10$ezNsJ2/74BuFoqWFbbZh5uTZnwHLgRQLzD0rrhkL8Mn0ln5SCCz12', 'LUvmGfzK4p9yG9GISPNQ3bxkTSS4ZJYCtI9d0J8smcp9DgR8WCQpCUvooeBO', '{\"locale\":\"ru\"}', '2020-01-07 05:17:08', '2021-11-17 23:29:49');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
