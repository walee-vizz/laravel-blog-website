-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2024 at 06:05 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire_blog_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `text_color`, `bg_color`, `created_at`, `updated_at`) VALUES
(1, 'Cupiditate esse aliquam et occaecati ex.', 'cupiditate-consequuntur-reprehenderit-quia', NULL, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(2, 'Hic accusantium voluptatibus iusto est suscipit hic.', 'qui-quos', NULL, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(3, 'Aut maiores sequi consequatur nostrum.', 'enim-nesciunt-quia-voluptas', NULL, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(4, 'In voluptates et corporis culpa ratione sed beatae.', 'enim-at-in', NULL, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(5, 'Earum illo iusto ipsum asperiores quod.', 'rem-a-molestiae-et', NULL, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(6, 'Category 1', 'category-1', 'lighblue', 'lightgray', '2023-12-04 06:46:05', '2023-12-04 06:46:05'),
(7, 'Category 2', 'category-2', 'lighgreen', 'lightgray', '2023-12-05 08:36:36', '2023-12-05 08:36:36'),
(8, 'laravel', 'laravel', 'white', 'red', '2023-12-12 08:37:22', '2023-12-26 08:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 101, 6, NULL, NULL),
(2, 102, 7, NULL, NULL),
(3, 103, 8, NULL, NULL),
(4, 104, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 102, 'comment updated', '2023-12-18 07:27:46', '2023-12-29 05:33:15'),
(2, 1, 102, 'my name\n', '2023-12-18 07:27:56', '2023-12-18 07:27:56'),
(3, 1, 102, 'This comment ', '2023-12-18 07:32:40', '2023-12-18 07:32:40'),
(4, 1, 102, 'Another comment', '2023-12-18 07:32:49', '2023-12-18 07:32:49'),
(5, 1, 102, 'Another comment is here', '2023-12-18 07:32:57', '2023-12-18 07:32:57'),
(7, 1, 2, 'nice', '2023-12-18 11:14:59', '2023-12-18 11:14:59'),
(8, 1, 101, 'hi', '2023-12-26 08:35:40', '2023-12-26 08:35:40'),
(9, 1, 101, 'hui\n', '2023-12-26 08:35:51', '2023-12-26 08:35:51'),
(10, 71, 102, 'new test comment', '2023-12-29 12:08:27', '2023-12-29 12:08:27'),
(11, 19, 103, 'comment added from admin', '2023-12-29 12:16:26', '2023-12-29 12:16:26'),
(12, 1, 104, 'Really helpfull post.', '2024-01-08 10:54:29', '2024-01-08 10:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_28_130951_create_sessions_table', 1),
(7, '2023_11_29_100831_create_posts_table', 2),
(8, '2023_11_29_100920_create_categories_table', 2),
(10, '2023_11_29_101033_create_category_posts_table', 3),
(11, '2023_12_12_122919_create_post_like_table', 4),
(12, '2023_12_18_112938_create_comments_table', 5),
(14, '2023_12_18_161931_add_role_column_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'https://via.placeholder.com/640x480.png/008811?text=suscipit', 'Animi maxime quas vitae optio nostrum voluptatum in.', 'corrupti-veniam-numquam', 'Quis omnis provident neque eius omnis. Molestias minus assumenda vel quod. Vel consequuntur ipsa quae consectetur. Consequatur quia rerum et est occaecati. Sit occaecati ipsa voluptatem qui. Sed aut eum non nihil. Veniam est aliquam nesciunt aperiam quibusdam dignissimos.', '2023-12-03 18:18:06', 0, '2023-12-08 08:31:49', '2023-11-29 05:54:00', '2023-12-08 08:31:49'),
(2, 3, 'https://via.placeholder.com/640x480.png/00bb99?text=nesciunt', 'Consectetur dolor perspiciatis nam rem dignissimos iure.', 'et-hic-ducimus-illo-qui', 'Aliquid sed recusandae excepturi voluptatem quia. Quaerat enim deleniti soluta. Perferendis molestias asperiores et et architecto. Enim voluptatum molestiae numquam iste eos dolores ducimus. Expedita debitis magnam fugiat asperiores. Omnis iure sint consequatur voluptatem tenetur. Dolorem et totam eligendi voluptates quas repellat animi quo.', '2023-12-05 12:37:27', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(3, 4, 'https://via.placeholder.com/640x480.png/0088cc?text=iste', 'Qui quaerat atque illo quas dolores asperiores et.', 'quia-sit-aut-reprehenderit', 'Officiis a in vitae quia ex repudiandae quibusdam facilis. Molestiae mollitia voluptate sit enim ipsam est non. Voluptatem quidem quaerat consequatur sit. Velit enim vitae alias pariatur vel facilis quam repellat. Quidem possimus qui deleniti eos mollitia occaecati velit. At est qui cum quas temporibus sit vel id. Qui reiciendis dolores similique quos quasi consequatur ipsa eius. Excepturi quidem non nesciunt nemo voluptatibus.', '2023-12-03 13:25:05', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(4, 5, 'https://via.placeholder.com/640x480.png/005566?text=itaque', 'Consequuntur soluta nostrum dolores quisquam quod nulla.', 'quia-libero-minima', 'Laboriosam dolorem deleniti est. Quisquam necessitatibus quos consectetur voluptate expedita. Aperiam aperiam dolores quia cumque est provident est. Consequatur aliquid nisi rerum itaque. Impedit corrupti est esse mollitia fugiat ea quis nesciunt. Qui est pariatur autem et provident et. Neque eum sequi et quod. Voluptates eligendi molestiae praesentium quisquam aut et. Dignissimos nemo illo quia adipisci.', '2023-12-01 11:05:41', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(5, 6, 'https://via.placeholder.com/640x480.png/00cc11?text=quia', 'Et placeat nisi nemo aliquam.', 'aspernatur-asperiores-sed-et-laudantium', 'Aperiam possimus autem ratione culpa laboriosam. Dolores eligendi tempora magnam totam est necessitatibus qui. Sit nam quis laboriosam facilis. Animi dolorem iusto animi aliquid. Ut eos et minus sed et. Numquam saepe et quaerat itaque enim. Dignissimos omnis earum quod minima inventore nihil. Vero quod saepe quia quasi molestias. Facere ipsa aliquid vitae quia aut molestiae.', '2023-12-04 10:33:23', 1, NULL, '2023-11-29 05:54:00', '2023-12-04 07:57:15'),
(6, 7, 'https://via.placeholder.com/640x480.png/00aa22?text=repellat', 'Natus aut maxime asperiores voluptate quis.', 'reprehenderit-quaerat-et', 'Totam assumenda expedita sequi aspernatur. Voluptas dolores voluptate quidem itaque. Est dolorum aut excepturi ut sequi temporibus sint tenetur. Dignissimos eum sapiente quis quia numquam soluta. Neque esse minus labore voluptas non a. Ipsum cum ea impedit cum in qui modi. Id fuga sit quia ea. Officiis necessitatibus non ad dolorem est dolorem. Nulla eveniet quibusdam doloribus error.', '2023-11-25 11:58:42', 1, NULL, '2023-11-29 05:54:00', '2023-12-04 07:57:28'),
(7, 8, 'https://via.placeholder.com/640x480.png/00cc77?text=sint', 'Officia illum adipisci dolorem corporis perspiciatis.', 'perferendis-repudiandae-occaecati', 'Voluptatem totam autem et quasi. Explicabo sequi doloribus placeat veniam nesciunt. Quia aut eum labore sequi molestias officia ut. Suscipit fugit necessitatibus ut. Reprehenderit sit enim debitis culpa deleniti. Sint et quo blanditiis qui. Aut rerum rem aut dolorum. Quaerat cumque accusantium quisquam. At cumque et veritatis ad eos. Et facilis et est debitis distinctio iste. Totam repellat explicabo delectus. Incidunt eius earum tempora provident beatae. A non molestias dolorem reiciendis dolores molestias numquam fugiat. Quo dolorum dolore mollitia exercitationem eos dolore ipsam.', '2023-12-01 23:26:00', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(8, 9, 'https://via.placeholder.com/640x480.png/00ffff?text=quia', 'Rerum quam dolores corporis sed.', 'impedit-similique-corrupti', 'A voluptate sit nihil suscipit nihil et architecto eos. Aut velit voluptate ad odio non ab. Qui sint rerum cum aut omnis expedita iure quia. Est a dolores adipisci perferendis commodi. Provident odio dignissimos perferendis illum repellendus. Quia voluptatum sint qui fugiat. Doloremque odit quis temporibus voluptatum veniam. Minima sequi occaecati et aut. Modi itaque quia provident ad tempora. Quos dolorum sint cupiditate quod ipsum nobis impedit quis. Exercitationem qui pariatur molestiae eaque commodi perspiciatis.', '2023-11-24 21:57:42', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(9, 10, 'https://via.placeholder.com/640x480.png/00ee11?text=quas', 'Debitis itaque delectus repudiandae.', 'odit-voluptatum', 'Nulla perspiciatis odit et. Voluptatem rerum voluptatum ea officia qui. Doloribus numquam harum consequatur. Fugit ipsum quod distinctio consequatur. Inventore atque in dolor iure. Qui aliquam tempora eos commodi quo magnam est quo. Error dolore tempore eius error quidem perspiciatis quis sed. Non quibusdam voluptatibus est. Sed culpa quibusdam dicta hic. Quia voluptatem laboriosam perferendis delectus et. Rerum iste recusandae explicabo eos voluptatem non et voluptatum. Tempore excepturi vel voluptas consectetur dicta commodi doloremque commodi. Voluptate mollitia officia consequatur dolorum inventore. Placeat quia nihil reprehenderit sapiente fugit consequatur. Aut repellendus est ipsam quis dolores dolor excepturi.', '2023-11-30 01:12:15', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(10, 11, 'https://via.placeholder.com/640x480.png/004422?text=ut', 'Quia adipisci consequatur nisi minus dolor iusto blanditiis.', 'saepe-nesciunt-dolores', 'Non vitae deleniti deserunt iusto quos. Delectus quasi officia vero odit autem. Ipsam occaecati consequatur voluptas neque qui. Voluptatem ipsam beatae aut inventore odit. Enim blanditiis ut impedit esse et vel accusamus. Eaque neque fugit quasi incidunt voluptate quibusdam eum ipsam. Omnis non excepturi rem.', '2023-11-25 15:46:18', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(11, 12, 'https://via.placeholder.com/640x480.png/00cc88?text=delectus', 'Atque voluptas sit tempore iure.', 'provident-error-ipsam-aut', 'Nihil hic eaque velit quaerat ullam. Dolorem et distinctio quas saepe totam ex autem dolore. Est sunt doloremque esse explicabo sit. Corrupti maiores ipsam aut est dignissimos aliquam. Dolor architecto qui ducimus tenetur voluptatum autem. Qui cupiditate provident veniam aut itaque sequi in. Unde vitae nostrum commodi accusamus molestias consectetur. Eos sit architecto voluptas exercitationem perspiciatis voluptas. Omnis voluptatem expedita velit laboriosam autem excepturi. Ullam quia est voluptatum. Adipisci cumque quos rerum quidem voluptas aut ratione aliquid. Odio ratione hic iusto repellat aspernatur molestiae. Dolor nisi sint recusandae est rerum doloremque. Quos et quia qui et quia nostrum.', '2023-11-22 22:39:34', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(12, 13, 'https://via.placeholder.com/640x480.png/008888?text=quas', 'Consequatur recusandae aut minima.', 'quia-blanditiis-recusandae', 'Laudantium et enim in ut. Nostrum velit minus quis placeat. Rerum illum est qui consequatur et impedit. Quia explicabo ab autem aut debitis. Nostrum aut ut soluta reiciendis est deserunt. Qui voluptatum aut deleniti dolorem. Voluptatem et est odit fugit. Molestias voluptatem veniam et consequatur. Autem et illo iusto accusamus nam consequatur voluptatem quo. Illum non neque distinctio fuga.', '2023-11-23 23:32:35', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(13, 14, 'https://via.placeholder.com/640x480.png/00bbff?text=sit', 'Distinctio rem minus atque cum dolor qui.', 'error-in-totam', 'Minus omnis vitae numquam reiciendis voluptates quibusdam dolorum. Reiciendis possimus fugit ipsa. Inventore harum consequatur quaerat qui numquam odit et. Sint voluptatem et accusamus. Ut aperiam numquam quia sed ipsa et. Dignissimos quas sequi eligendi. Libero blanditiis quo dolor omnis. Enim nulla consectetur qui harum praesentium. Eveniet velit nam cumque et occaecati corporis.', '2023-12-05 00:52:22', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(14, 15, 'https://via.placeholder.com/640x480.png/0055cc?text=corporis', 'Tempore cumque et voluptas qui.', 'est-vitae-in', 'Dolores neque voluptatem nihil itaque ad soluta eos. Et magni in cum est ratione qui incidunt vel. Adipisci quia explicabo adipisci aut atque tenetur excepturi est. Aperiam quos in quia voluptatibus tempora. In ea dolorum voluptas nostrum. Quo distinctio nobis eos quasi maxime fuga ea. Fugiat enim libero aut provident consequatur voluptatum in. Aut consequatur sunt dolores.', '2023-11-30 05:26:01', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(15, 16, 'https://via.placeholder.com/640x480.png/009999?text=ab', 'Omnis repellendus et sit.', 'corrupti-est', 'Beatae recusandae ipsum autem recusandae totam earum. Vitae deleniti quo qui vitae. Nesciunt distinctio eum similique cum eligendi. Non ducimus voluptatem reiciendis sint sapiente repudiandae. Quidem ipsam ipsam quidem omnis voluptas mollitia est adipisci. Quos voluptatem ipsum magni est. Dicta iure sit architecto quos reprehenderit est neque. Et ipsum porro sint deserunt asperiores est ipsum aut. Quisquam rerum cumque labore nam doloremque. Asperiores maiores eum aperiam est ad et. Ea pariatur magni nisi aperiam est delectus voluptatum. Porro et hic qui possimus aperiam.', '2023-11-26 22:48:27', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(16, 17, 'https://via.placeholder.com/640x480.png/003355?text=nobis', 'Omnis excepturi minus accusamus aliquid voluptas tempora perferendis.', 'nesciunt-et-autem', 'Est vero et ipsa nesciunt neque dolor. Ab animi repellat aut velit quod harum est. Recusandae earum dolor dignissimos. Esse reprehenderit et est fugiat quos similique rerum. Consequatur magni debitis fuga ad. Culpa doloremque quis atque repellendus atque alias id ipsum. Fugit omnis eum et sed. Libero eos est sunt nulla vel modi sit. Sint dolorem soluta est repellendus nihil voluptatum est repellat. Sunt incidunt distinctio veritatis esse. Id at ex similique quae quia odit. Vitae in porro velit. Repudiandae earum ducimus eaque aliquam. Laboriosam et ea aperiam.', '2023-11-28 17:35:12', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(17, 18, 'https://via.placeholder.com/640x480.png/009966?text=suscipit', 'Ullam animi aut illum optio.', 'porro-dolor-vel-ipsam', 'Aperiam pariatur quia maxime. Facilis culpa sit deserunt id voluptate velit. Voluptas laudantium dolorem nihil magnam officia eligendi omnis. Dolor enim nihil est in. Ratione cupiditate et est id. Voluptatem ut et mollitia aperiam est sint dicta est. Et itaque neque esse sed debitis. Nihil pariatur id error ut sed et ad. Blanditiis animi deleniti ullam aliquid qui tempore. Culpa culpa facilis ducimus quaerat. Molestiae ducimus molestiae vel explicabo magni quia ad. Omnis vero eos exercitationem est dolore et. Commodi vero reprehenderit eos numquam fugit sit aliquam numquam.', '2023-11-30 00:25:32', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(18, 19, 'https://via.placeholder.com/640x480.png/004422?text=quam', 'Illo molestiae praesentium officiis deleniti dolores libero.', 'voluptatem-consequatur-voluptatem', 'Velit consequatur voluptatem ut. Eos accusamus distinctio quam. Autem sit beatae ut consequatur aliquam. Libero numquam modi ab consequatur. Non eveniet totam sit sint eligendi. Magnam recusandae dolores deleniti dolorem. Rerum minima consectetur atque non cupiditate fuga. Nesciunt consequatur commodi et rerum accusantium quia. Non totam quo totam aut id soluta enim. Voluptas qui inventore dolor vel labore vitae et. Hic repudiandae corrupti soluta quod ex eum ut. Eos aliquam aperiam cum sit eos quia odit perspiciatis. Placeat quibusdam ab autem beatae reiciendis.', '2023-11-27 10:30:27', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(19, 20, 'https://via.placeholder.com/640x480.png/004422?text=fugiat', 'Ea aliquam nesciunt eligendi labore.', 'alias-nobis-sed-qui', 'Et ab et deserunt voluptates dolore sit animi. Quos neque reiciendis fugit ut unde tempore et. Ea quisquam rerum exercitationem ut eos nihil. Corporis sint nostrum placeat et et dolor. Velit quia debitis quasi. Saepe accusamus est beatae. Animi doloribus voluptatem natus sunt eos architecto. Dolor esse sit provident. Numquam et rerum iure est. Sed ex vel deleniti id reprehenderit iusto. Ducimus eveniet nobis voluptatibus ex ullam. In odit molestias occaecati ut ea.', '2023-11-30 19:24:37', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(20, 21, 'https://via.placeholder.com/640x480.png/001166?text=accusantium', 'Dolorem iusto quis eius aut quis autem blanditiis dolor.', 'eos-saepe-exercitationem-excepturi', 'Nesciunt dolores voluptatem unde deleniti. Ut officiis porro magni a at rerum ea. Nihil quos et reiciendis repellat. Est quia aut autem amet. Qui delectus eligendi voluptatum vero perspiciatis et molestiae. Sed aliquam maiores quas earum nesciunt asperiores laudantium. Blanditiis illo minima est molestias dicta distinctio sed. Et odit qui natus soluta. Autem aut pariatur neque possimus provident rerum. Commodi harum rem accusantium modi. Corrupti neque sed nobis facilis iste. Earum quam qui in. Fugit est suscipit aliquid accusantium. Sunt et excepturi nihil repellat.', '2023-11-25 18:07:45', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(21, 22, 'https://via.placeholder.com/640x480.png/00aa99?text=explicabo', 'Qui recusandae molestias consequuntur sint molestias sit.', 'libero-error-aut-architecto', 'Sit pariatur et nobis non. Aliquam est quod et voluptates tempora omnis. Accusantium molestias quod ut distinctio. Incidunt similique eum incidunt est nesciunt quidem. Accusantium mollitia culpa cumque dolor neque in et. Impedit vitae aliquam quasi veritatis pariatur quam optio odio. Temporibus sed aliquam qui sed cum et mollitia. Nostrum at perspiciatis quidem esse dignissimos. Earum quo blanditiis velit aut sed eaque possimus. Porro et voluptatum consequatur voluptate quia magni. Porro iure laudantium esse sequi quibusdam fuga pariatur.', '2023-12-03 09:07:20', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(22, 23, 'https://via.placeholder.com/640x480.png/00ff00?text=nostrum', 'Incidunt doloribus eos quia vero magni consequatur reiciendis.', 'quaerat-nisi-neque', 'Doloremque consectetur repellendus eos suscipit rem fugit sed eum. Voluptatem necessitatibus aperiam dolorum. Omnis odit molestias architecto quia quaerat minima id voluptas. Officiis voluptatem maiores voluptatem sed ea. Corporis tempora magnam qui officia. Omnis minus delectus earum mollitia omnis labore dolorem quia. Nisi dolor pariatur modi. Est veritatis tempore repudiandae sed eum recusandae. Quo provident tenetur ut sapiente.', '2023-11-26 04:15:20', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(23, 24, 'https://via.placeholder.com/640x480.png/00cc66?text=voluptatum', 'Laudantium ut non fugiat et dolor provident atque.', 'beatae-autem-ut-accusantium-iste', 'Expedita libero dolor ipsum deleniti. Praesentium blanditiis sed sapiente nesciunt eos. Quae consequatur quia quos ad corporis beatae qui voluptate. A voluptatem provident recusandae error nesciunt molestiae et dolor. Mollitia corporis non autem ea odit est ut hic. Quis non natus officia voluptatem harum ab. Iure nisi voluptate voluptas eos temporibus. Laudantium voluptates temporibus voluptatem maxime. Enim numquam enim odio dolorem laudantium at vero dolorem. Aut perspiciatis veniam molestiae. Quidem animi asperiores rem delectus commodi maxime. Omnis magnam vel reprehenderit non perferendis sed veritatis. Tempore iste earum est accusamus asperiores. Sunt illum officiis nesciunt quisquam quasi.', '2023-12-02 18:22:25', 0, NULL, '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(24, 25, 'https://via.placeholder.com/640x480.png/0022aa?text=dolor', 'Ut eius itaque ipsum explicabo libero mollitia.', 'veritatis-illum-quam', 'Ut qui natus laudantium facilis cumque. Laudantium molestiae odit soluta similique et. Sit quam veritatis mollitia assumenda sed sint. Incidunt doloremque autem dolor molestiae eos laborum. Explicabo vero et dolor corrupti aut sint. Debitis aut odit quia omnis. Doloribus fugit tenetur officiis neque laudantium modi. Quidem qui explicabo eveniet aliquam impedit ipsum dolores. Alias laborum et ipsa suscipit. Eaque voluptatibus corrupti atque ipsum est quas. Et minus ut autem deleniti. Qui est blanditiis ea aspernatur vitae laudantium doloremque sint.', '2023-12-05 11:49:57', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(25, 26, 'https://via.placeholder.com/640x480.png/00aaff?text=quae', 'Dolor quasi sequi itaque et natus nobis.', 'maiores-voluptas-est-et', 'Dolorem ut quaerat praesentium odit. At qui quasi consequatur unde unde. Maiores sunt laudantium et. Qui non maxime eum. Mollitia nisi cumque in est. Ut dolores dolore illo aut. Voluptatem tempora eos quos. Consequuntur neque magnam eligendi earum omnis iusto iure. Dicta voluptate velit labore temporibus doloribus. Itaque natus modi omnis rem nemo ipsa similique. Aut harum eos repellendus sed. Veritatis occaecati dignissimos sed illo. Similique fugit voluptatem porro eaque sed et.', '2023-12-01 20:28:27', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(26, 27, 'https://via.placeholder.com/640x480.png/00dd66?text=dolore', 'Voluptatem laboriosam excepturi nobis iusto.', 'placeat-ea-impedit-cum', 'Laborum velit qui dolores qui. Qui nihil magnam sit et animi cupiditate. Dolore et voluptates sed voluptatem consequatur. Ratione quia molestias rem saepe ea. Accusantium ducimus totam sed maxime repudiandae distinctio. Sit nostrum repellat beatae excepturi. Eos sapiente vitae eveniet aspernatur harum. Rerum quidem laudantium quis reiciendis. Et expedita eum maxime possimus consequatur.', '2023-12-01 05:15:34', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(27, 28, 'https://via.placeholder.com/640x480.png/006699?text=quam', 'Ut architecto aliquid explicabo exercitationem.', 'sit-a-excepturi', 'Et doloribus dolorem et impedit fugiat vero odio. Magni repudiandae quia nihil et eos dolores placeat. Incidunt sunt voluptas laborum eius at quod voluptatem consequatur. Reiciendis similique laboriosam dolores aut. Quis impedit nesciunt distinctio exercitationem dolor. Ea odit similique laborum. Id sapiente praesentium dolor cumque. Blanditiis aut tenetur est voluptas. In porro blanditiis repellat iure et. Aut ratione labore corporis fugiat ut. Debitis eos velit unde. Ab dolores explicabo dolores labore soluta ullam doloremque. Non sit et ut maxime quisquam eaque. Occaecati eius ea veniam ut alias dicta atque.', '2023-11-26 00:47:43', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(28, 29, 'https://via.placeholder.com/640x480.png/00bb11?text=quas', 'Commodi ratione omnis unde nostrum.', 'necessitatibus-ab-blanditiis', 'Quia quasi nisi ea beatae qui. Praesentium consequatur quis doloremque omnis. Earum ex vero ad iusto est est optio. Voluptatem nemo ut explicabo. Perspiciatis rem illum veritatis praesentium rerum ut officiis. Esse mollitia debitis officiis autem molestiae ea quidem minus. Hic sed id enim praesentium eius. Itaque officia sint et id harum officia quisquam. Itaque rerum quis quaerat voluptatibus distinctio natus. Qui minima ab sunt sapiente. Aut necessitatibus doloribus nulla quidem. Repellat at placeat repellat. Molestiae illum illo aliquid eos blanditiis. Laborum fuga corrupti aut a repellat magnam.', '2023-12-03 19:13:35', 1, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(29, 30, 'https://via.placeholder.com/640x480.png/00bb22?text=qui', 'Exercitationem molestiae deleniti consequuntur officiis dolor consequuntur voluptas.', 'nostrum-nihil-quo-esse', 'Nihil ipsa mollitia corrupti iusto. Rem deserunt consequuntur nisi. Quisquam dolor recusandae laboriosam hic in eos nihil. Inventore rerum aut eaque omnis optio. Repudiandae et velit alias ratione. Voluptate aut praesentium est et enim iusto. Sunt sint veniam repellat omnis qui. Et sed dolore qui voluptatem consequatur soluta asperiores. Ut et explicabo aut assumenda earum quia. Dolorem consequuntur debitis eos tenetur perferendis aut accusamus. Aut officiis architecto molestiae ipsa ullam suscipit illum dolores. Minima qui ratione sapiente illo non molestias. Ut nihil officia voluptas sit nam nisi qui. Temporibus cumque rem quia tempore vel consectetur et dolores.', '2023-12-04 22:53:22', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(30, 31, 'https://via.placeholder.com/640x480.png/0077ff?text=praesentium', 'Vero enim dicta esse pariatur id sed explicabo.', 'maxime-nobis-et', 'Nulla ex vel iure repellat eos impedit delectus. Eveniet odit quam eum eum. Deleniti at cum eos unde voluptatem totam omnis. Fugiat sint reiciendis error. Beatae quis recusandae reprehenderit eos sed quasi ut. Illum doloribus quia id velit reprehenderit in. Debitis deserunt iure et sed. Culpa rerum vel tenetur nisi aut est aut sequi. Ipsam totam fuga pariatur rerum. Et nihil voluptas incidunt velit quia.', '2023-11-29 06:10:29', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(31, 32, 'https://via.placeholder.com/640x480.png/00ee33?text=accusantium', 'Molestiae beatae fugiat id vel.', 'velit-nihil-excepturi', 'Maxime ratione ea vitae totam. Animi perferendis quia soluta ratione. Corrupti dolor impedit mollitia nostrum dicta velit. Distinctio aut ad aliquam ad iusto. Voluptas sit ab autem qui. Nihil qui dolor numquam est eligendi. Porro est omnis et ipsa provident alias dolor quo.', '2023-11-27 13:27:55', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(32, 33, 'https://via.placeholder.com/640x480.png/00ff66?text=optio', 'Et quia similique nihil.', 'cupiditate-et-nihil', 'Facere autem qui et aut. Nostrum eveniet saepe quas non. Laboriosam vero non aut officiis consequatur velit est ipsum. Explicabo reprehenderit dolorem rerum quaerat est molestias. Quis aliquam consequatur et ut magni ipsa. Labore sit aut officia et animi sunt quo. Odit odio eligendi vitae numquam excepturi. Deserunt ut aut ipsum dolorum voluptatem tenetur. Nostrum eligendi itaque ut ea non. Non porro enim tempora quis eos magni dignissimos molestiae. Tempore adipisci assumenda fuga est. Quo necessitatibus et laudantium aut in omnis. Distinctio maiores optio sapiente mollitia et ratione.', '2023-11-25 16:35:24', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(33, 34, 'https://via.placeholder.com/640x480.png/0077ff?text=ab', 'Quisquam sunt omnis voluptas eos maxime aut libero.', 'sit-hic-omnis-labore', 'Sit et animi cupiditate aliquam. Rerum commodi explicabo sit quia vitae hic dicta aliquam. Aut laboriosam repudiandae quaerat atque. Enim et quisquam distinctio quis qui itaque. Quia et eum alias odit. Accusamus aut velit vel et asperiores corrupti explicabo. Delectus deleniti at architecto exercitationem et tempore. Perspiciatis veniam omnis vitae dolores aut corrupti. Ad minima voluptatem perspiciatis consequatur culpa ut in voluptatum.', '2023-11-27 23:36:10', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(34, 35, 'https://via.placeholder.com/640x480.png/0011dd?text=veniam', 'Vero impedit explicabo veritatis non quo minus.', 'aut-et-incidunt', 'Odio laudantium aut distinctio delectus consectetur tempora porro. Molestiae et quisquam voluptas non fuga est facere nulla. Hic nihil dolore velit deleniti velit et pariatur. Aliquam sint neque ea quidem. Qui sapiente natus eum ut saepe. Illo dolorum adipisci dolorum sit. Maiores occaecati ducimus facilis doloribus. Nisi sunt nemo dignissimos illum.', '2023-11-22 11:01:52', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(35, 36, 'https://via.placeholder.com/640x480.png/007755?text=hic', 'Aut et eaque veritatis ipsa repudiandae.', 'ullam-quidem-asperiores', 'Nihil earum ea animi unde excepturi perspiciatis repellendus. Rerum mollitia aliquam repellendus possimus qui placeat. Amet aut tenetur veritatis distinctio. Iusto esse id voluptates perferendis aliquid. Est non odit ab repellat id non corrupti. Commodi qui ipsum ad explicabo libero ut adipisci. Perspiciatis sint nesciunt amet voluptatem error nisi ut.', '2023-11-23 16:17:59', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(36, 37, 'https://via.placeholder.com/640x480.png/0000ff?text=repellat', 'Excepturi quisquam non sit aliquam.', 'iure-dolorem-sunt-nesciunt-blanditiis', 'Pariatur adipisci culpa ratione rerum velit explicabo voluptas. Dolorem qui atque recusandae consectetur aut sit non aut. Aliquam error est consequatur id sapiente quam. Numquam corrupti quo harum aut eveniet quidem error et. Eveniet tempore aut quam ut vitae id totam. Aliquam tempore temporibus autem in tempora. Est nihil est et sed quasi. Atque eos sed voluptate vero cumque. Velit et voluptas ratione aliquid ut. Quam dolor sapiente a ad qui sit. Molestias exercitationem facere quaerat nam cumque pariatur. Totam libero vel perspiciatis commodi. Repellendus ut dolorum vero quaerat ab dolores. Et fuga rerum saepe est veniam.', '2023-11-25 14:14:50', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(37, 38, 'https://via.placeholder.com/640x480.png/0011dd?text=commodi', 'Et qui minima soluta velit dolorem quaerat iure.', 'ut-quod-aut-amet', 'Voluptatem asperiores dolor molestias ipsam facere cum. Et necessitatibus sit laudantium eius fugit. Accusamus adipisci sunt expedita sint cupiditate doloremque voluptas magnam. Enim consequatur aliquam sit assumenda. Qui quis aspernatur labore incidunt quia. Culpa minus minus omnis sed cum quas doloribus. Aliquid quod laudantium quidem eos quo quae. Molestias optio quaerat officiis aut beatae omnis consequatur. Eveniet qui et sed nemo. Non doloremque temporibus sequi et laboriosam magnam.', '2023-11-25 09:11:40', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(38, 39, 'https://via.placeholder.com/640x480.png/00cc22?text=est', 'Dolor delectus et iusto explicabo eum.', 'laborum-pariatur-deserunt-quidem', 'Mollitia ipsam impedit quas aut veniam. Pariatur et architecto veniam qui molestiae rerum itaque. Consectetur et tempore in magni aut mollitia sunt. Sunt modi quis quaerat ut dignissimos nesciunt ut. Voluptatem quia et dolorem laboriosam molestiae quis nihil. Quasi et cupiditate excepturi. In culpa occaecati labore eveniet ut eos. Suscipit reprehenderit necessitatibus odit est quisquam. Autem laudantium voluptas quo ratione et rerum temporibus rem. Et soluta qui quia est alias sunt officiis molestiae. Aliquid hic voluptatem explicabo laudantium dolorum. Doloremque est aut laudantium perspiciatis quae impedit. Quos quia maiores eos unde dolore est consequatur.', '2023-11-24 21:40:48', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(39, 40, 'https://via.placeholder.com/640x480.png/00ff88?text=magni', 'Incidunt voluptatem aut quasi placeat sunt hic assumenda.', 'aliquid-saepe-rerum', 'Non temporibus rerum sed sunt. Distinctio perferendis consequatur maxime suscipit illum. Minima harum ea sunt distinctio doloremque accusantium. Voluptas laborum ratione omnis autem error enim fuga ut. Quia fuga nisi eaque eius voluptates in dolorum. Et provident aut quia voluptatem aut corrupti ea. Voluptas corporis iure ea est ipsa voluptas aut. Exercitationem possimus asperiores facere voluptatem odio aspernatur. Repudiandae ut quia sequi qui. Magni aut animi voluptatem natus asperiores enim. Nobis laborum incidunt repellat esse et. Aut architecto et libero rerum explicabo molestias.', '2023-11-28 16:13:32', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(40, 41, 'https://via.placeholder.com/640x480.png/001166?text=quia', 'Eius illum quia consequatur ipsam veritatis qui.', 'praesentium-impedit-possimus-cum', 'Repellat natus consequatur illum doloribus explicabo sit at. Consequatur voluptas non quia at eos omnis. Quis quia commodi dolore eos et pariatur ea. Sit dolorum illo animi reprehenderit autem quo architecto. Eos repellat omnis iusto cumque. Incidunt necessitatibus corrupti blanditiis itaque perferendis vel dignissimos. Ducimus sint et nesciunt commodi. Et sed culpa necessitatibus est eius deleniti ut blanditiis.', '2023-11-22 12:41:22', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(41, 42, 'https://via.placeholder.com/640x480.png/0099bb?text=illo', 'Nisi tenetur et dolorum illo soluta laborum.', 'quasi-expedita-ad', 'Ducimus sequi quo pariatur sit ducimus fugiat. Eum non inventore cumque dolores numquam qui illo. Vel vel est odit. Asperiores laborum ex praesentium et distinctio. Est eum qui commodi esse praesentium animi cum. Sint maxime deleniti et sint voluptas doloremque omnis. Tenetur porro expedita doloribus ut nobis culpa. A pariatur et enim illo. Porro dolore sed dignissimos quis. Perferendis eum alias incidunt. Id ut ipsum tempore nemo officia. Rem velit quos reiciendis minus explicabo. Iusto iste enim dignissimos occaecati velit.', '2023-11-22 10:07:49', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(42, 43, 'https://via.placeholder.com/640x480.png/000022?text=ut', 'Eaque a ab nihil et placeat illo.', 'et-iure-cupiditate-qui', 'Ducimus nemo et animi aperiam reiciendis beatae possimus. Enim fugiat officia accusamus voluptates. Quibusdam magni qui voluptates aliquam adipisci. Aut voluptatem culpa et. Iste et odit consequatur provident ipsum consequuntur. Consequatur dolorum explicabo non. Et omnis soluta porro et. Debitis non ipsam possimus.', '2023-11-23 22:48:07', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(43, 44, 'https://via.placeholder.com/640x480.png/000088?text=velit', 'Iusto voluptates assumenda quia et quisquam.', 'sunt-officiis-maiores-quos', 'Voluptatem aut libero ea fugit harum. Iusto voluptatem facilis dolor mollitia. Iusto dolore iste velit et iste dolores error. Cumque facilis mollitia consequatur labore est inventore. Autem aut laborum voluptate. Odit cum ut quis vel. Architecto in nam voluptatibus ipsa eum voluptatibus dolores. Et nihil eos quam qui. Est velit magni sit sit. Est nobis quisquam iure nostrum. Qui reprehenderit sequi maxime tempore. Qui omnis quia aliquid voluptas quaerat.', '2023-11-30 11:47:12', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(44, 45, 'https://via.placeholder.com/640x480.png/0099bb?text=est', 'Et soluta quod corrupti ut officiis ut repudiandae.', 'fuga-hic-saepe', 'Quis rerum laboriosam voluptatem vitae. Accusamus odio voluptates et assumenda repellat. Soluta laborum veniam tempore. Voluptatibus placeat aspernatur quod quia. Quae dicta deserunt id. Ducimus aut perspiciatis delectus ut rem. Quos deserunt aut ut hic voluptatem aperiam. Occaecati rerum adipisci asperiores. Omnis occaecati modi quo et. Eligendi eum facilis qui nobis possimus fugit at. Fugit dolorum occaecati ipsam sed fugit. Nihil suscipit a consequatur aspernatur.', '2023-11-22 10:17:40', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(45, 46, 'https://via.placeholder.com/640x480.png/00ff99?text=inventore', 'In architecto quisquam iste maiores nihil.', 'eius-dolorem-doloremque-quae', 'Unde quod quas minus. Rerum et iure deserunt natus in. Laboriosam optio quia et quaerat. Suscipit rerum laudantium non itaque voluptatem praesentium facilis. Quod nihil fugit iure porro dolor voluptates dolorum. Ex et dolores vero ducimus sit. A eligendi pariatur veniam dolore. Vitae recusandae perferendis non aut. Tenetur sint voluptatum et non illum magni. Similique animi tempora ad blanditiis.', '2023-12-02 03:17:53', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(46, 47, 'https://via.placeholder.com/640x480.png/00ccaa?text=excepturi', 'Maxime consectetur qui occaecati ducimus consequuntur dolor.', 'temporibus-quibusdam-doloribus-velit', 'Dolor magni esse libero sint cumque soluta eos. Sed eos ad quod. Delectus mollitia et laboriosam pariatur. Et amet qui ea fugit dolore inventore quo. Tempore qui suscipit quis ex. Animi omnis voluptatem vel optio velit impedit et. Ipsa et eum nemo et amet vel. Distinctio a architecto officiis eos.', '2023-11-23 06:53:15', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(47, 48, 'https://via.placeholder.com/640x480.png/001177?text=iure', 'Quidem provident ipsam blanditiis omnis molestias molestiae.', 'libero-voluptates-cupiditate-nostrum', 'Quia expedita veniam corrupti aut. Sed voluptate deleniti quaerat autem dolores nihil. Perferendis ad qui veritatis quasi possimus iste et maxime. Qui minus nemo neque adipisci ea dolorem quia. Non ut voluptatem qui quisquam. Corrupti accusamus impedit exercitationem. Commodi omnis tempora quis ut nihil veritatis consectetur. Ab omnis quibusdam dolor mollitia asperiores quia. Laborum qui reprehenderit optio et dolor. Consequatur aut aut dolorum. Consequatur doloremque distinctio repudiandae numquam. Facere laboriosam aliquam repellat vero aut.', '2023-11-24 07:11:36', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(48, 49, 'https://via.placeholder.com/640x480.png/001122?text=nesciunt', 'Voluptates omnis est voluptatem omnis.', 'et-omnis-explicabo-dicta', 'Repellendus consequatur sequi eum. Sint ullam voluptatum nulla est. Totam quidem qui numquam quia. Et dolor amet consequuntur officia qui aut eum. Et nostrum nobis omnis quia. Voluptatem iusto nisi id molestiae. Sapiente mollitia cupiditate voluptatem qui occaecati. Sed fugit dignissimos qui maxime accusantium in et qui. Et omnis eaque est nam harum sint. Voluptatem placeat corrupti non error. Voluptas ratione quia voluptas. Dolores exercitationem quia sunt aperiam asperiores. Possimus consequatur enim rerum tempore dolor possimus voluptate.', '2023-12-03 23:03:41', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(49, 50, 'https://via.placeholder.com/640x480.png/00ff11?text=dolores', 'Et quo eos libero est maxime voluptatum.', 'quia-pariatur-iusto', 'Ut molestiae consequatur vel ut velit. Distinctio ea quo animi cumque. Hic vero voluptates quod pariatur et dolores nulla. Aut ipsam corrupti doloremque est ut. Est soluta nihil quod dolore. Atque ea nesciunt est quam et nihil. Quo maxime natus esse facilis. Autem atque facere doloremque quos libero sint.', '2023-12-02 23:19:46', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(50, 51, 'https://via.placeholder.com/640x480.png/0066dd?text=quas', 'Reprehenderit quasi est reprehenderit et nulla.', 'vel-occaecati-tempora-aperiam', 'Corrupti pariatur consequuntur autem itaque blanditiis sit unde consequuntur. Quis recusandae sint debitis asperiores itaque nesciunt ut. Nostrum in enim sed saepe consequatur. Accusantium autem dolores tempore autem non modi sunt voluptatem. Deleniti eveniet maxime iusto at et officia unde. Magni facilis dolores distinctio iusto minus. Reiciendis deserunt et aperiam dicta perferendis. Nam velit beatae omnis sunt architecto.', '2023-12-01 18:12:21', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(51, 52, 'https://via.placeholder.com/640x480.png/00aa00?text=sed', 'Recusandae sint ea voluptate natus.', 'in-dolorem-corrupti', 'Voluptatem odit totam quia eum eos nesciunt quam. Minima quam animi id. Sint nobis autem quidem molestiae. Impedit aut perferendis reiciendis et quo voluptatem. Quia neque saepe occaecati nesciunt enim ex laborum pariatur. Fugiat illum vel est recusandae perspiciatis. Facere odit nemo aut et.', '2023-11-27 09:39:46', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(52, 53, 'https://via.placeholder.com/640x480.png/00bb44?text=totam', 'Voluptate quis mollitia eveniet maxime amet consectetur.', 'libero-deleniti-quasi', 'Dolorem consequatur sit iure accusantium. Qui aut in repellendus qui. Eum blanditiis quo necessitatibus ut repellendus fugit quo. Quo vero aperiam soluta dolores culpa qui minus ratione. Laboriosam accusantium delectus eos sed. Qui autem praesentium facilis quod eum dicta culpa. Natus sed placeat quibusdam quia pariatur tenetur expedita vel. Nulla qui voluptas est numquam est. Quis iste corporis cupiditate doloremque consequatur. Saepe a consequuntur voluptas ex non. Ut quod veritatis vero quam autem temporibus ut velit. Voluptatem ut harum ut itaque.', '2023-11-28 07:22:45', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(53, 54, 'https://via.placeholder.com/640x480.png/00aa33?text=laboriosam', 'Ut aperiam magni similique molestiae sed.', 'sint-itaque-quasi-minima', 'Illo aut quia veritatis aut voluptatem iste. Temporibus sed consectetur dignissimos. Iure eveniet sapiente accusamus corporis nostrum ipsa exercitationem. In atque ipsam inventore officia repellendus. Blanditiis repellendus laudantium voluptate nam ut voluptate dolores. Dolorem suscipit aut id incidunt doloremque molestias. Debitis tempore doloribus eum ipsa tempora.', '2023-11-28 18:18:23', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(54, 55, 'https://via.placeholder.com/640x480.png/003333?text=totam', 'Excepturi facere modi minima quia saepe praesentium.', 'autem-repellendus-accusantium', 'Aspernatur eveniet consequatur ut voluptas occaecati incidunt. Totam voluptatem voluptas repellendus quis dolorem repudiandae. Iusto repellat dolorem vero aliquid. Molestias dolorem incidunt vel at voluptatem consectetur non voluptatem. Molestias nisi consequatur mollitia veritatis hic molestiae. Incidunt magnam earum doloribus in. Consequatur neque aliquid accusantium consequatur voluptas. Placeat rerum repellendus eligendi laborum laborum. Quas est quasi possimus magni velit et in vitae. Tempora esse molestias enim dolor.', '2023-12-04 04:24:59', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(55, 56, 'https://via.placeholder.com/640x480.png/00ee44?text=quos', 'Doloremque maxime odio impedit ut laborum est aliquam ut.', 'ipsum-praesentium-odio', 'Aperiam quos iusto sed. Repellendus omnis quo omnis aliquam sapiente. Consectetur architecto accusantium hic quaerat corporis rerum. Quo omnis dolores id quos dolores dolor. Tenetur est molestias porro assumenda dolorem necessitatibus. Id voluptatem quisquam dignissimos voluptas assumenda velit velit soluta. Aut consequuntur quisquam maxime qui enim. Id incidunt aut culpa impedit nihil alias ipsa impedit. Cupiditate cupiditate incidunt ad aliquam. Nam dolore eos doloribus maiores ullam. Consequatur nobis vel et dolores perferendis quam et corporis. Rerum et laudantium commodi rerum et neque esse. Dolor officia autem quis recusandae. Quo unde quia ea error et iste. Tempore sint dolore ipsa.', '2023-11-30 12:37:26', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(56, 57, 'https://via.placeholder.com/640x480.png/0011cc?text=exercitationem', 'Id aut voluptatum accusamus sunt dolores.', 'magnam-harum-deleniti-quia', 'Id tenetur omnis et voluptas deserunt dolorum quidem. Distinctio in consequuntur debitis qui optio aut eveniet qui. Aut culpa cumque ipsum. Ipsum ipsam aut rem tenetur ut hic harum. In culpa est rerum nam ut blanditiis. Esse ab rem natus sit itaque doloribus qui enim. Dolorem dolores fugit eveniet culpa aut id eius aut. Dolorem est error explicabo veritatis sint sint enim doloribus. Odio quia esse iure vel unde veniam. Voluptas ut odio hic accusamus. Fugit optio nemo deleniti sed. Optio nemo repellendus aut.', '2023-12-05 16:55:04', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(57, 58, 'https://via.placeholder.com/640x480.png/007788?text=quas', 'Placeat quia esse quaerat nam ea enim at sunt.', 'omnis-quibusdam-quae', 'Corrupti in doloremque nihil quisquam dolor. Et corporis maiores aliquam et. Distinctio rerum cumque iure et voluptatem voluptate. Et blanditiis velit et maxime praesentium. Sed voluptatem voluptas soluta et dolorem. Qui qui et laudantium voluptatem error reprehenderit aut. Distinctio et consequatur alias quo architecto ea officia. Dolorem laborum nostrum laborum reiciendis quod a. Aut consequatur libero voluptas debitis. Voluptates et dicta aliquam rem et suscipit sapiente. Nam sit ipsum qui sit modi quo ut. Eum laboriosam voluptatem rerum vitae. In culpa quasi est consequuntur et aut. Velit et ea omnis et et.', '2023-11-24 12:13:53', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(58, 59, 'https://via.placeholder.com/640x480.png/000011?text=qui', 'Pariatur alias qui non adipisci et qui vel.', 'non-et-cumque-eum', 'Sit vel quam occaecati rem temporibus qui. Consequuntur voluptate fugiat excepturi illum ad consequatur. Sed incidunt earum error voluptas aut. Saepe omnis pariatur repudiandae aut labore eos quibusdam. Minima inventore sunt quos voluptatem sint. Qui quae maxime cumque et incidunt impedit similique. Quidem recusandae animi magnam provident molestias qui. Possimus voluptatem sint dolorem iusto. Cumque qui mollitia repudiandae. Ullam ipsum error nostrum cupiditate aut. Doloremque molestias ratione omnis sint blanditiis. Suscipit ratione dolore qui vero impedit optio.', '2023-11-28 16:30:46', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(59, 60, 'https://via.placeholder.com/640x480.png/005555?text=ipsum', 'Accusantium fugiat odio voluptas voluptatem repellendus possimus.', 'ea-molestiae-velit', 'Aperiam nulla provident sit rerum nesciunt. Voluptatem iure voluptates ducimus qui dignissimos corrupti occaecati. Nihil sequi quos id perspiciatis exercitationem. Et excepturi odit enim qui commodi illum. Veritatis sint harum saepe rem nulla est. Voluptatem animi est perferendis reiciendis quis adipisci. Autem consequatur id et sunt aspernatur aspernatur voluptatem.', '2023-11-26 13:24:05', 0, NULL, '2023-11-29 05:54:01', '2023-11-29 05:54:01'),
(60, 61, 'https://via.placeholder.com/640x480.png/005599?text=error', 'Commodi in ratione veniam quibusdam voluptate.', 'tempora-doloribus-ea-et', 'Non placeat quibusdam consequuntur nam qui. Incidunt sit temporibus culpa magnam odio. Reiciendis error est quod qui. Maxime consequatur nesciunt ducimus fugit. Doloremque et ipsa in aut. Non quod sit ea nostrum consectetur hic ex quidem. Nihil voluptas et rerum quia mollitia nisi. Iure reiciendis excepturi inventore sint iure. Veniam maiores sapiente odit placeat magni quibusdam voluptas. Fuga illo possimus iure blanditiis rerum vitae dolor. Voluptatibus ut atque eligendi quo. Harum quod molestiae adipisci consequatur harum qui. Commodi soluta pariatur iste in assumenda. Eum asperiores accusantium et facilis.', '2023-11-29 08:30:05', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(61, 62, 'https://via.placeholder.com/640x480.png/003366?text=minima', 'Tempora illum aperiam amet eos optio.', 'neque-aut-maiores', 'Et voluptatem impedit praesentium dolorem cumque et aut. Ad consequatur dolor dolor id. Itaque voluptatum ab aut consectetur quae dolores et minima. Autem officiis eligendi pariatur ut modi praesentium impedit. Fuga libero nobis et maxime quae iste. Ab tempora cumque non est ullam voluptas. Pariatur accusantium enim suscipit aliquid quas. Cumque architecto incidunt et modi tempora praesentium rerum. Sit magni recusandae quisquam vitae possimus eum. Incidunt sit iste nihil est voluptas autem quis nulla. At facilis aut veniam suscipit.', '2023-11-30 12:13:15', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(62, 63, 'https://via.placeholder.com/640x480.png/005577?text=cum', 'Id in fugit id accusamus optio deserunt.', 'molestias-sed-atque', 'Quia delectus eum saepe consequatur cumque. Officia at dolores amet quasi fugiat vero ut eos. Atque reiciendis sint praesentium libero. Ipsam ut magni sapiente ut. Expedita et unde impedit corporis ut veniam iusto enim. Vitae dignissimos nisi et ipsa. Autem sunt temporibus facilis earum. Deserunt odio dolores dolores. Fugit sed harum consequuntur earum qui id atque vel. Aliquid quia repellat assumenda. Consequatur repudiandae voluptas error qui dolore ut ex.', '2023-11-28 09:22:13', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(63, 64, 'https://via.placeholder.com/640x480.png/005588?text=optio', 'Dolor ut aperiam incidunt dolore aliquid.', 'non-nisi-nulla-nobis', 'Voluptatem ad nisi fugiat qui perferendis quod voluptatem. Perferendis et magnam quas beatae aut odio. Quo et odio sed odit voluptates at. Enim vero dolorum quia. Quo et et eligendi enim repellat veritatis eaque. Eius et laudantium ea mollitia eaque quis perferendis. Eveniet numquam consequatur sit dolore earum molestias cum. Incidunt provident quaerat pariatur voluptate quisquam. Aut voluptatem odit et id quibusdam. Molestias rerum omnis sit quia assumenda itaque maxime. Harum optio magnam consectetur adipisci minima facilis odit. Perspiciatis quibusdam quasi error in vero. Tempora quod labore in enim magnam aut vel.', '2023-11-29 13:08:54', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(64, 65, 'https://via.placeholder.com/640x480.png/00bb77?text=laudantium', 'Sint necessitatibus sunt qui iure aperiam voluptas cumque.', 'magni-suscipit-voluptas-dignissimos', 'Fugiat et asperiores sit aut sunt hic. Aut illum molestias reprehenderit tempora dignissimos. Necessitatibus doloribus et repellat odio eum sit. Debitis ipsum distinctio eligendi nam repudiandae. Voluptate deleniti debitis consequatur inventore repellendus. Doloribus cum et sit ut assumenda vel. Odit animi ad incidunt labore. Quod eum et sit ipsam. Qui tenetur sed sit quia iure qui suscipit. Corrupti eos tempora numquam placeat sed incidunt eligendi. Itaque doloribus molestiae eaque quis qui quia excepturi. Aut deleniti aut nisi non voluptatem. Perspiciatis illo aut quas blanditiis aut quas.', '2023-11-27 16:25:24', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(65, 66, 'https://via.placeholder.com/640x480.png/006699?text=rem', 'Qui eius quia qui doloribus beatae officiis necessitatibus.', 'voluptas-culpa-odit-omnis', 'Quibusdam non atque quas aut temporibus. Temporibus quia saepe sed magni dolorem ad vel. Qui cupiditate nobis molestiae. Vitae velit beatae sit neque autem qui qui. Sit labore fugit et ut placeat voluptas. Nihil aut eum sit repellat in. Illum sed debitis voluptatum ipsa deserunt a eveniet. In reiciendis enim quia libero eum perspiciatis doloribus corrupti.', '2023-11-29 07:37:44', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(66, 67, 'https://via.placeholder.com/640x480.png/003311?text=dolorem', 'Velit dolorem eos illo sapiente quod.', 'vitae-eos-quo-in', 'Vel libero doloremque dicta autem neque libero. Temporibus voluptatem sit harum sit autem eos. Aut quasi impedit qui deserunt sit explicabo doloribus. Qui consequuntur beatae molestias voluptas nam. Aliquam veniam aliquid quo suscipit recusandae veniam. Officia non id soluta at odit blanditiis quaerat. Id impedit ut inventore assumenda alias consequatur ut aut. Mollitia id nemo maiores quae enim officia. Ducimus aut exercitationem in fugit quia inventore assumenda.', '2023-11-26 02:00:31', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(67, 68, 'https://via.placeholder.com/640x480.png/00ee66?text=pariatur', 'Consequatur et voluptatum quaerat.', 'illum-nobis-facilis', 'Voluptatem alias iusto sint dolor. A ipsam est esse suscipit. Eos molestias est nesciunt qui. Consequatur ut id rerum laudantium officia optio. Blanditiis nulla officia cum eaque quo architecto. Quibusdam consequatur in esse quia. Accusantium non laudantium voluptatem illo delectus consectetur ea.', '2023-11-27 20:55:24', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(68, 69, 'https://via.placeholder.com/640x480.png/004444?text=a', 'Nobis et molestiae porro quaerat.', 'nisi-voluptatibus-voluptatem-ab', 'Beatae voluptatem et doloribus adipisci itaque voluptatum ad. Voluptatibus quo similique tenetur nihil facere quae. Voluptatem quaerat harum tenetur voluptas qui temporibus et. Consequatur iusto est fugit sint. Consequatur temporibus ut vel ab qui ut. Id officia mollitia porro non eius. Et numquam quam libero fugiat eligendi sapiente sed. Veritatis dolores error iure omnis corrupti voluptatem.', '2023-12-02 05:54:38', 1, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(69, 70, 'https://via.placeholder.com/640x480.png/009933?text=quia', 'Provident ad consectetur impedit.', 'voluptatum-culpa-et', 'Nesciunt repellendus dolore cum fuga officiis quia. Omnis rem quo et aut. Necessitatibus dolore explicabo placeat est. Amet pariatur voluptas quo sed quaerat rerum voluptatem sapiente. Quasi fuga molestias dolor similique tempora voluptate sapiente modi. Est rem enim qui dolores in et. Blanditiis est ab sequi aut itaque consequatur ut. Eius illum eligendi aut ut velit ea officiis. Velit et ut aliquam sapiente exercitationem. Fuga ipsa officia sunt dignissimos.', '2023-11-22 21:48:01', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `slug`, `body`, `published_at`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(70, 71, 'https://via.placeholder.com/640x480.png/002233?text=amet', 'Eum consectetur voluptas unde optio necessitatibus nihil.', 'dolorem-aut-praesentium-numquam', 'Necessitatibus vel enim molestiae voluptatibus aliquam aspernatur ducimus. Blanditiis aut voluptatibus blanditiis corrupti quis. Dolor ea non et veniam enim velit. Ab dolorum quod quas cumque delectus. Sit maiores consequatur molestiae voluptate. Corrupti nostrum ducimus iste aut. In ad sint repudiandae earum quo. Officiis qui nesciunt illum accusantium voluptate enim aut. Optio sequi commodi qui et. Quia aliquid aut odio corporis omnis est. Aperiam placeat est vero reprehenderit. Expedita qui reiciendis neque.', '2023-11-26 12:54:32', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(71, 72, 'https://via.placeholder.com/640x480.png/00ee33?text=voluptate', 'Excepturi consectetur commodi quis quia et aut.', 'ut-ut-quo', 'Quis odit facere qui et voluptatem itaque ab. Laborum numquam voluptas perferendis et reiciendis. Sequi aut quaerat voluptatum omnis ducimus. Rerum voluptatem deserunt aut corrupti id quasi alias. Et cumque qui vero sequi recusandae. Maiores placeat voluptatem et alias dolores. Asperiores quo quae beatae. Iste beatae consectetur ipsa nesciunt. Et in unde at fuga explicabo dolor et omnis. Et rem nostrum dolore explicabo. Maxime molestiae pariatur sunt.', '2023-11-26 04:11:43', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(72, 73, 'https://via.placeholder.com/640x480.png/0099cc?text=itaque', 'Quis sunt possimus velit cumque.', 'ratione-rerum-non-est', 'Voluptatem quia cumque consequatur est. Enim quam ut maxime assumenda atque saepe deserunt. Ab qui libero repellendus sequi qui deserunt inventore minus. Repudiandae id deserunt voluptates eum qui. Est quo qui tempore. Voluptatem quae rem consequuntur. Modi voluptas ratione in sunt voluptatem sapiente sit. Qui beatae dolorum fugit et amet a ex. Et magnam aut dicta illum nam magnam ea.', '2023-12-01 20:24:11', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(73, 74, 'https://via.placeholder.com/640x480.png/00bbff?text=et', 'Sit officiis commodi nihil dolore nisi.', 'qui-perspiciatis-est', 'Repudiandae accusantium explicabo dolores. Necessitatibus quidem fuga dolores consequatur maxime. Qui illo sint quam et. Neque nesciunt dolores et sint et exercitationem sint pariatur. Et reiciendis sed quidem voluptatem. Soluta libero occaecati dicta aperiam veritatis omnis earum. Nisi sapiente a ducimus vitae voluptates sed qui nemo. Ut voluptatem corporis eos sapiente error qui necessitatibus. Totam et a accusamus excepturi. Velit omnis suscipit est assumenda consequatur accusantium est. Quo odit eos et consequatur.', '2023-12-03 13:12:39', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(74, 75, 'https://via.placeholder.com/640x480.png/003300?text=sequi', 'Nemo sed ut voluptate tenetur qui.', 'maxime-aperiam-possimus-est', 'Libero delectus ut molestiae perspiciatis tenetur a vitae. Molestiae assumenda suscipit est. Eaque perferendis eligendi facilis deserunt debitis pariatur. Aspernatur voluptas repellat qui deserunt et rerum. Quis fugiat atque quas molestiae quidem qui. Molestiae esse ab vitae officia pariatur at. Aut vitae consectetur non reprehenderit. Cupiditate eos dignissimos aliquid voluptatem. Quod optio ad dolores cum facere rem. Ipsum perferendis cum non rerum. In natus necessitatibus et. Repellat voluptatum sed quasi nostrum quia et porro. Quos et tenetur ab ipsum adipisci consectetur. Provident sunt quidem reprehenderit aliquam fuga eligendi.', '2023-11-25 21:58:11', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(75, 76, 'https://via.placeholder.com/640x480.png/003333?text=vel', 'Fuga exercitationem quibusdam eos officiis quia aut.', 'sint-nulla-necessitatibus-temporibus', 'Non aut et perferendis. Nulla consequuntur molestiae aperiam voluptatibus autem. Qui provident omnis nemo autem et quod optio quo. Et sunt autem totam quos sint neque harum minima. Dolores sit dolorem fugiat ea quia. Eum accusantium eligendi sed omnis quibusdam facilis numquam. Sed ratione debitis iste vel. Aut quia laborum repellendus mollitia quia est et ullam. Dolore soluta incidunt maiores doloremque amet. Deleniti quo ut quo necessitatibus eos ut. Blanditiis ut facere placeat dolorem. Enim maxime ratione in similique quidem ut. Doloribus amet beatae aut quasi nobis tempore reiciendis. Libero occaecati numquam non et omnis.', '2023-12-05 10:10:04', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(76, 77, 'https://via.placeholder.com/640x480.png/007777?text=maiores', 'Quidem suscipit delectus voluptas officiis excepturi harum.', 'et-rem-quibusdam-voluptatem', 'Qui natus iste enim ut autem quis dolorem. Reprehenderit accusantium est assumenda nisi error necessitatibus. Quasi dolor quo recusandae eos maiores non. Quo quae reiciendis laudantium est commodi. A porro recusandae reprehenderit. Odio nobis velit sed similique id. Aut eius iusto accusamus fugit voluptas quisquam. Nobis eum quas commodi nihil. Nesciunt fugiat quos nobis illum voluptatem. Modi natus qui sit doloribus atque accusantium. Provident mollitia et incidunt reprehenderit ea reiciendis pariatur.', '2023-12-04 01:39:21', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(77, 78, 'https://via.placeholder.com/640x480.png/007733?text=et', 'Ut voluptatem quae eos autem fugiat.', 'repellat-temporibus-placeat', 'Ut aliquam alias fugiat non nesciunt ducimus. Officiis nulla earum qui ut quibusdam. Sunt error corrupti quam. Aut adipisci nam est et suscipit. Error perferendis est quos nam. Dolores nesciunt aut autem. Qui consequatur illum cupiditate repellat et quod. Veniam et corrupti earum. Autem repudiandae maiores velit labore quo rem vero. Id et praesentium veniam ipsum molestiae tenetur. Sint dolorem eligendi necessitatibus eius doloribus. Quia sint ut adipisci animi. Doloremque voluptatem qui at non quia animi. Numquam quis adipisci sunt vel nulla aut. Ipsum quidem totam dolor sed doloremque earum recusandae.', '2023-11-29 17:46:47', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(78, 79, 'https://via.placeholder.com/640x480.png/00dd00?text=et', 'Commodi placeat quos aliquam tempore omnis explicabo.', 'qui-animi-vel-debitis-eum', 'Facere odio itaque nisi fuga vel et. Non voluptatem magni accusantium dicta et eius amet culpa. Vel deleniti non illum nihil. Dolores rem consequatur unde minima quisquam. Illo ipsam ducimus et molestiae a et praesentium. Est cumque consequuntur et dolores voluptatem voluptas. Voluptate recusandae qui veniam et est explicabo quae. Tenetur totam exercitationem debitis rem molestias tenetur quas. Dolores possimus nesciunt laborum voluptatibus. Aliquid voluptatibus qui ipsam corporis eaque officiis eaque repellendus.', '2023-12-01 21:24:12', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(79, 80, 'https://via.placeholder.com/640x480.png/003311?text=voluptas', 'Nostrum tenetur ut aut laboriosam earum.', 'voluptas-inventore-et-voluptates', 'Voluptatem nam veritatis aut suscipit dolore quidem eligendi voluptatem. Error est iusto enim. Odit provident quia tempore eos adipisci. Quia quasi adipisci omnis magni est et. Itaque non facilis deserunt architecto. Omnis laboriosam aut aut deserunt. Asperiores beatae itaque possimus nam minus sed itaque. Autem cum numquam vitae et nobis inventore et. Consequatur laboriosam repudiandae quaerat labore cupiditate. Beatae reiciendis tempora est veniam nisi.', '2023-11-25 19:30:10', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(80, 81, 'https://via.placeholder.com/640x480.png/00ccee?text=aut', 'Nulla illo molestias sit modi.', 'sequi-dicta-consectetur', 'Rem repellendus ducimus cupiditate totam dolorem ut dolorem. Eveniet reprehenderit ea dignissimos perferendis facilis dolor. Deleniti sed ipsam tenetur. Amet fugit velit repellendus. Et non ad sit tenetur suscipit. Fugit ea nisi enim dolorum iste. Temporibus ut rerum vero. Error aut laborum quisquam. Quos est beatae voluptatem est dolorum. Eaque maiores provident temporibus quia dignissimos incidunt. Minus beatae sint voluptatum qui. Possimus amet rerum eos iste adipisci explicabo. Earum quis tempora veniam eius asperiores veniam rem. Quasi est voluptate odit dolores qui aperiam.', '2023-12-02 18:27:59', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(81, 82, 'https://via.placeholder.com/640x480.png/00aa22?text=rem', 'Nulla qui odit qui reiciendis explicabo.', 'et-ad', 'Et veniam quas aut modi. Ut quis autem reiciendis. Optio ex necessitatibus temporibus vel sint placeat. Quo voluptatibus qui nobis quam. Fuga consequuntur nulla eligendi harum eaque eos a. Error in non neque nobis et quia ex. Assumenda doloribus nulla veritatis beatae et itaque mollitia quod. Et asperiores consequatur deserunt quia magnam quia. Voluptatem et quia ad laudantium nulla qui neque. Delectus impedit dolorum sunt magni doloremque. Temporibus perferendis exercitationem modi eos culpa animi.', '2023-11-26 23:07:39', 1, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(82, 83, 'https://via.placeholder.com/640x480.png/00aa22?text=perferendis', 'Eligendi et sunt atque voluptate laboriosam accusantium.', 'tempore-autem-praesentium', 'Doloribus qui quis eos exercitationem. Dolorem est consequatur in et accusantium. Enim nisi quisquam impedit repellat. Est dolorem fuga fugit qui. Voluptates hic deleniti distinctio porro suscipit. Libero consequatur architecto adipisci. Sed illo dolorem aut ut. Veritatis vel rerum qui animi enim. Nemo velit at ea sed. Nisi temporibus harum ea rerum atque. Tempora aut quisquam aperiam animi praesentium quia veniam.', '2023-12-05 17:21:34', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(83, 84, 'https://via.placeholder.com/640x480.png/0000bb?text=aut', 'Quos est dolores vel.', 'modi-nemo-ipsam-ipsum', 'Ut quia reprehenderit non error. Natus officia aut sit accusantium neque qui. Explicabo delectus veritatis unde aut non non itaque. Distinctio eum id qui hic aut corrupti voluptates optio. Deleniti vel aut illo nihil sit eveniet. Praesentium fugiat aliquam at illo. Mollitia aut et ipsam quas ipsam inventore maiores. Iusto voluptates sequi omnis rerum est temporibus. Aut tenetur non repellat voluptatibus temporibus qui natus adipisci. Non mollitia architecto odio officia dolorem.', '2023-12-02 15:34:14', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(84, 85, 'https://via.placeholder.com/640x480.png/006677?text=quas', 'Sit et aspernatur culpa assumenda.', 'quos-sunt-necessitatibus', 'Quasi quis adipisci id architecto labore quia. Voluptate omnis fugiat ipsam qui. Aut et qui deserunt autem debitis itaque minima. Quia et repudiandae dolorem voluptatum. Voluptatibus ut dolorem sunt porro consectetur. Molestias vitae id quasi ducimus labore rerum. Sint tempora occaecati natus voluptates et ab at. Reiciendis molestiae sit eius excepturi. Dolores sunt modi velit voluptatem sequi.', '2023-12-02 19:24:29', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(85, 86, 'https://via.placeholder.com/640x480.png/00ff44?text=quos', 'Qui vel nihil fugiat reiciendis nam delectus.', 'recusandae-ut-explicabo-et', 'Qui quidem est quis omnis ex accusamus iure. Ullam quas ea qui esse fugiat reprehenderit repellat. Velit reiciendis ipsum magni dolor perferendis natus. Quis tenetur hic et qui quidem optio corporis architecto. Voluptatibus nulla praesentium et quia accusantium. Mollitia deserunt laudantium quis quia. Distinctio iure sit deleniti qui omnis laudantium et. Nobis a porro rem rem aliquid. Iusto earum veritatis aliquam laudantium. Est odit sit qui laboriosam qui. Tempora voluptate dolor suscipit molestias.', '2023-11-24 20:29:08', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(86, 87, 'https://via.placeholder.com/640x480.png/00bbdd?text=qui', 'Ipsum doloremque veniam impedit accusamus et qui cum.', 'fuga-sunt', 'Similique nesciunt hic corrupti alias dolorum. Ut et eos vel iste cum quibusdam. Aut quisquam delectus tempore. Cumque illo magnam corrupti. Culpa et ut iusto ipsam eum dolorem eum. Architecto quia odio consectetur. Accusantium quaerat fuga repellat. Quo illum et iste ad.', '2023-12-01 15:59:30', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(87, 88, 'https://via.placeholder.com/640x480.png/00dddd?text=perferendis', 'Ut consequatur nihil soluta dolorum ad alias.', 'culpa-maiores-rerum', 'Atque veritatis est suscipit accusamus sit quae. A porro placeat voluptas dolorum delectus corrupti quas. Repellendus sint quis modi ipsum. Veniam excepturi et adipisci consequatur voluptates architecto. Odit aperiam voluptatem voluptatum aliquid blanditiis rem possimus. Dolores occaecati iusto sint saepe. Est harum eos cum aliquam. Est et qui itaque consequatur corrupti nemo tempora.', '2023-11-26 21:45:31', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(88, 89, 'https://via.placeholder.com/640x480.png/00eebb?text=nemo', 'Ipsam rerum necessitatibus maxime sequi temporibus aut.', 'suscipit-ad-rerum-recusandae', 'Aliquid tempore et sequi provident autem rem aut. Consequuntur explicabo debitis et magni dolorum aliquid dolores. Voluptatem id molestiae in corporis dicta repellendus dicta. Commodi saepe optio est ut dolor. Possimus accusamus et autem quod. Nihil non odio quis exercitationem laudantium quam cum. Et culpa quasi aut est ab quia dolore. Voluptatibus consequatur neque doloremque harum dolore facere quia. Voluptate voluptatibus neque qui suscipit est. Autem ratione temporibus accusamus eveniet quo repellat. Alias fugit fuga velit rem possimus ipsa rem sit. Eos suscipit sed perferendis quidem. Ipsam quis mollitia voluptatum.', '2023-12-02 08:45:55', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(89, 90, 'https://via.placeholder.com/640x480.png/00ee55?text=id', 'Laboriosam in quo ipsam ut accusamus.', 'nisi-itaque-dolorem-necessitatibus', 'Velit aut neque voluptatum similique iste pariatur. Ut aspernatur earum ea rem beatae quos. Sequi eos ut sed explicabo. Eum at dolorem commodi architecto adipisci. Unde ex aperiam vero. Optio ipsam temporibus aut laboriosam cumque. Deserunt dignissimos laborum praesentium id est reiciendis quia. Voluptatem tempore repellat ullam dolorem qui quis voluptatem. At eius autem quos excepturi occaecati vel. Ea officia quia numquam aliquam dolorum eos et. Rerum consequuntur quaerat nihil est optio.', '2023-11-26 21:57:56', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(90, 91, 'https://via.placeholder.com/640x480.png/00dd22?text=corrupti', 'Suscipit fugit voluptatum itaque aut sit non quibusdam ut.', 'atque-ducimus-soluta-illo', 'Nemo et tempora facere quia nobis quia aut est. Aliquam et ratione omnis laboriosam magni. Et temporibus et saepe deleniti. Non culpa dignissimos et aut. Ea sit molestiae sed excepturi. Maiores repudiandae dolores inventore voluptate aliquam placeat. Voluptate nulla dolorem est laborum. Praesentium eum qui voluptas assumenda enim corporis laboriosam. Delectus molestias aliquid consequatur laboriosam perferendis voluptatem eius. Quis ipsam doloribus iste officia. Vero animi et hic. Voluptatibus voluptates voluptas recusandae suscipit dolores in vitae. Rem ratione qui laborum earum ut est est.', '2023-11-27 14:21:45', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(91, 92, 'https://via.placeholder.com/640x480.png/000077?text=eaque', 'Id minima provident quo tenetur maiores qui consequuntur quae.', 'accusamus-est-nihil', 'Explicabo quia tempora ullam autem amet vero. Laboriosam earum iure explicabo maiores. Cumque dolorum nam dolor tempora consequatur deserunt rerum. Omnis ut hic quia nemo ipsum architecto harum. Est ipsa reprehenderit modi expedita. Nemo quod ad non dolore. Et omnis enim dolor alias quod quasi. Blanditiis non explicabo veniam facere. Quia ut repellendus ut aut maiores.', '2023-12-05 16:01:07', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(92, 93, 'https://via.placeholder.com/640x480.png/0055aa?text=nam', 'Ab repudiandae non laborum error aut omnis.', 'assumenda-illum-dolor', 'Vel quia recusandae et sint. Molestiae recusandae aut voluptas sunt non nemo est. Accusantium dolores velit nostrum voluptas. Ipsa voluptatem voluptas molestiae tempora voluptatibus similique voluptatem. Occaecati cum facilis quasi impedit sint. Ipsam doloremque ut ab vel exercitationem. Omnis est non consequatur deserunt reiciendis dolores ut.', '2023-12-04 21:23:40', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(93, 94, 'https://via.placeholder.com/640x480.png/0088ee?text=nobis', 'Quis alias accusamus voluptas unde dolores.', 'vel-velit-quidem-placeat', 'Non alias veniam culpa saepe est. Praesentium consequatur non omnis repellendus autem labore nobis provident. Fuga accusantium ut ut et odio. Aperiam est consequatur quis aut voluptate. Incidunt et recusandae quia nesciunt sint. Eveniet cumque perspiciatis repellendus in. Quibusdam iusto animi ut et earum ut. Consequatur repudiandae neque accusamus id reiciendis est. Explicabo quia accusantium doloremque modi cumque consequatur fugit optio. Nisi possimus esse voluptas nemo quod possimus. Voluptas voluptatem suscipit facilis quia qui maiores assumenda.', '2023-11-25 04:00:54', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(94, 95, 'https://via.placeholder.com/640x480.png/006611?text=rerum', 'Tempora nihil non cum quis ad in aperiam officia.', 'quia-dolore-est', 'Reiciendis quis totam dolor iusto magni voluptatem enim. Quo eaque est tenetur vero dolor quod aspernatur. Est enim rerum voluptate sint perspiciatis tenetur. Magnam labore quo eveniet inventore velit quia pariatur. Temporibus dolor ratione earum quia animi eos omnis. Atque sed incidunt nihil est. Nam aut non saepe repudiandae ut ut. Animi velit voluptates animi quos quidem tempore. Error maiores maiores dicta illum ut.', '2023-11-26 04:38:54', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(95, 96, 'https://via.placeholder.com/640x480.png/009944?text=nulla', 'Quibusdam quas eos unde ratione officia a.', 'et-numquam-officia', 'Consequatur vero dolorem facilis occaecati. Praesentium ea et non. Laborum exercitationem nobis rerum sed facilis maiores. Perspiciatis qui perspiciatis esse nemo non omnis dolor. Consequuntur aliquid magnam fugit. Animi dicta illum non iure. Iste praesentium atque voluptatem quia voluptas laboriosam. Et deserunt magni earum consequatur. Aut veritatis sunt occaecati a odit sed. Provident voluptatem ut et autem repudiandae occaecati architecto esse. Culpa quod suscipit totam accusantium.', '2023-11-26 14:04:25', 1, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(96, 97, 'https://via.placeholder.com/640x480.png/0099ff?text=sed', 'Consequuntur eveniet minus numquam laboriosam facilis.', 'cum-doloribus-et-ab', 'Unde officia rem esse qui quisquam quia quis rerum. Error itaque quod quo tempora eius. Quas non fuga qui sapiente iure quae architecto. At recusandae deleniti sed minima dolor quod. Et tenetur exercitationem possimus numquam aspernatur dolorem laborum. Adipisci enim tempora ipsum quod. Officia eveniet assumenda quia autem. Maxime omnis voluptate esse sapiente et quae. Debitis est est vero hic rerum. Cum eos voluptate quia corrupti veritatis cumque. Commodi et earum quia alias veniam velit autem accusantium. Aut et iusto explicabo officia ex. Et mollitia vel in qui aut. Ea sit veritatis ea et et non assumenda.', '2023-11-22 12:23:17', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(97, 98, 'https://via.placeholder.com/640x480.png/0099ee?text=nobis', 'Esse et quae ex ad.', 'illo-ipsum-sit', 'Sit facere doloremque ipsum cum dolor blanditiis. Consequatur voluptatem cupiditate consequatur sed nostrum fugit. Voluptatem est excepturi natus assumenda tempore laudantium. Est aspernatur nostrum cupiditate ut ullam rem. Et possimus at praesentium quis odit voluptatibus. Eaque doloribus voluptatem sint quae iusto sed. Nesciunt quo quia adipisci dolorem neque quis. Sed repellendus vel voluptates doloribus. Reiciendis consectetur illo nesciunt soluta impedit omnis officia velit. Id voluptas aliquid repellendus animi placeat. Maxime laudantium voluptate voluptatem veritatis. Enim illo vel atque officia repellat. Assumenda autem harum ducimus dolorum nesciunt omnis modi. Officia labore quos ut voluptas.', '2023-12-03 11:47:30', 0, NULL, '2023-11-29 05:54:02', '2023-11-29 05:54:02'),
(98, 99, 'https://via.placeholder.com/640x480.png/00bb11?text=porro', 'Aliquid est nisi quam amet quo sit corrupti.', 'quo-possimus-aspernatur-ipsam', 'Adipisci impedit animi expedita dolore similique. Consequuntur sapiente error aliquam dolor eos. Est voluptatem iste vel repellat cumque doloremque. Quis in earum eum. Et quae et sint eaque quo. Nisi minus cupiditate corporis voluptatum praesentium. Aperiam dolor debitis in velit. Sit nostrum quisquam esse. Sapiente rerum alias corporis et. Inventore repellendus tempore sint rem soluta voluptatibus. Fuga quia et laboriosam repellat error. Ea qui aliquid adipisci ipsum assumenda. Aspernatur placeat iure et illo necessitatibus voluptas consequatur vel. Quibusdam voluptas autem libero hic corrupti id.', '2023-11-26 11:59:03', 0, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(99, 100, 'https://via.placeholder.com/640x480.png/00ccee?text=mollitia', 'Adipisci qui non praesentium aut laborum eos.', 'nobis-laudantium-totam', 'Ut temporibus voluptatem totam ratione inventore. Quas aut exercitationem sit perferendis. Libero perferendis voluptatem aperiam itaque provident dolores. Culpa vero dolores nesciunt delectus distinctio in ducimus. Quia quos eum cupiditate vitae exercitationem qui ipsum. Iure quae labore nihil quae sint. Aut dolor itaque quia et et sequi eos. Aut repellendus consectetur in aut. Culpa ea unde at fugit culpa minus doloremque.', '2023-11-27 14:53:13', 0, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(100, 101, 'https://via.placeholder.com/640x480.png/00aa77?text=consequuntur', 'Maiores ullam molestiae libero sit dicta sint quia.', 'odio-delectus-tenetur-libero', 'Aut mollitia quis optio nulla aut explicabo. Quis eos numquam et aspernatur. Quia officia quia est quis dolorem magnam omnis eum. Cumque maxime fugiat et sequi asperiores. Enim consectetur voluptatem eos porro omnis est. Neque accusantium dicta facere sit est excepturi vel. Sunt at ducimus consequatur necessitatibus est. Totam ipsa perferendis excepturi. Pariatur repudiandae maiores aut veniam. Autem quaerat excepturi deserunt. Illum et voluptatibus et perspiciatis ab quia. Ut reprehenderit facere et dolor quos. Et blanditiis harum voluptas quibusdam omnis. Qui veritatis autem quas aperiam debitis quibusdam.', '2023-11-26 08:23:56', 0, NULL, '2023-11-29 05:54:03', '2023-11-29 05:54:03'),
(101, 1, 'posts/thumnails/2CPe4k9wtjPL0zJCVyxMEdXz8qlJQD-metabXlfcHJvZmlsZV9pbWFnZS5qcGc=-.jpg', 'First Post', 'first-post', '<p>Hey,<br>This is my first blog post that i am writing for this site thanks for reading it out.</p><p>Thanks!</p><p>Waleed Khan,</p>', '2023-12-03 12:49:14', 1, NULL, '2023-12-04 07:49:35', '2023-12-04 07:54:21'),
(102, 1, 'posts/thumnails/XHSJjnKV0Ps9gqqvSJpHW6jNSET1BZ-metadmlkZW8taG9tZS1iYW5uZXIuanBn-.jpg', 'Second Post', 'second-post', '<p>Hey,<br>&nbsp;This is our second post that we are writing for this new blog website being created in laravel using filament php&nbsp; and livewire.</p>', '2023-12-04 13:37:57', 1, NULL, '2023-12-05 08:38:19', '2023-12-05 08:38:19'),
(103, 1, 'posts/thumnails/y9idIX6hut5bmiCYO0ZdhktTw4usc3-metaYmFubmVyMy5qcGc=-.jpg', 'Laravel livewire', 'laravel-livewire', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aliquid optio quos maiores error nihil voluptas nemo, eaque</p><p>est reiciendis at? Accusantium laborum ab labore, dolor repellat officiis. Fuga, quis delectus.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla, laboriosam, assumenda quos voluptates omnis dolor minima</p><p>corporis ratione necessitatibus eum numquam. Eos iure distinctio nam, odit voluptas sint? Et, aliquid?</p><p>Consectetur nam sequi ex. Incidunt eius reiciendis recusandae eum amet quod, exercitationem similique rerum optio</p><p>commodi natus asperiores impedit ad quae error non. Voluptates alias, non ipsum error quis corporis.</p><p>Enim voluptatem sapiente quae iusto rerum? Tempora sint voluptates nulla officia non facilis sed, consequuntur, magni</p><p>neque commodi dolorum magnam. Veritatis voluptas pariatur accusamus tempore ut illo eum laudantium eaque!</p><p>Eveniet, debitis asperiores non doloremque qui nam maiores alias labore soluta sequi repellendus nisi et, dolor tempora</p><p>ipsa? Reprehenderit ex illum ullam deleniti! Magni cupiditate reprehenderit quo doloribus aliquam sint.</p><p>Deleniti corrupti fuga pariatur earum cumque, veritatis aperiam repellendus incidunt voluptatum dolorum illum repellat</p><p>quisquam velit eaque! Neque blanditiis, corrupti recusandae laboriosam, veniam enim facilis delectus consectetur vel</p><p>illum laborum!</p><p>Perspiciatis, suscipit nam non iusto molestias voluptatibus, soluta harum quia mollitia quisquam at vel temporibus velit</p><p>quis, possimus similique perferendis ipsam? Beatae, perferendis. Officia praesentium, asperiores saepe accusamus</p><p>adipisci fugiat!</p><p>Minima aperiam quo fugiat iste itaque! Iste laborum cumque quo iusto odit, quidem aliquam aspernatur praesentium optio</p><p>unde mollitia dolorum reiciendis doloribus corrupti dolores consequuntur. Quaerat labore voluptatibus pariatur</p><p>assumenda.</p><p>Nesciunt distinctio beatae quod accusantium sit eius sapiente non fuga quam dolorum deleniti, ab eos. Consequatur</p><p>similique expedita sit placeat assumenda aliquid soluta ipsum quos ducimus at saepe, natus sint.</p><p>Est exercitationem, culpa libero voluptates magnam cum voluptatibus eum qui odio inventore adipisci atque quam magni</p><p>quia a. Tempora id omnis quidem rem ab totam. Nostrum nesciunt quae esse vitae!</p><p>Laudantium quod quisquam nihil accusantium eum in tenetur velit nostrum laborum quos tempora voluptas perspiciatis</p><p>possimus consequuntur a dolore placeat odit voluptatibus et, eligendi similique quia vero? Voluptate, et unde!</p><p><br></p>', '2023-12-11 13:36:24', 0, NULL, '2023-12-12 08:37:34', '2023-12-12 08:37:34'),
(104, 1, 'posts/thumnails/x3J0X5kTtibiYVRWVNI5M1IgxwszVJ-metabGl2ZXdpcmUtbGFyYXZlbC5qcGc=-.jpg', ' Getting Started with Livewire 3 in Laravel: A Comprehensive User Guide', 'getting-started-with-livewire-3-in-laravel-a-comprehensive-user-guide', '<h2>Introduction&nbsp;</h2><p>Livewire is an innovative Laravel package that empowers developers to build dynamic web applications with minimal effort on the frontend. With the release of Livewire version 3, exciting new features and improvements have been introduced. In this comprehensive user guide, we\'ll walk you through the process of getting started with Livewire 3 in Laravel.</p><h2>Prerequisites</h2><p>Before we start, ensure that you have the following prerequisites in place:</p><ol><li><strong>Laravel </strong>: Install a fresh Laravel project using Composer.</li></ol><pre>composer create-project laravel/laravel my-livewire-project</pre><ol><li><strong>Composer</strong>: Make sure you have Composer installed globally on your machine.<br>Composer Installation Guide</li></ol><h2>Installing Livewire 3</h2><p>To integrate Livewire 3 into your Laravel project, run the following Composer command:</p><pre>composer require livewire/livewire</pre><p>After the installation, publish Livewire\'s assets using:</p><pre>php artisan livewire:publish --assets</pre><p>This command ensures that Livewire\'s JavaScript and CSS files are available in your project.</p><h2>Basic Usage</h2><h3>1. Creating a Livewire Component</h3><p>Livewire components act as encapsulated sections of your application. To create one, use the following Artisan command:</p><pre>php artisan make:livewire HelloWorld</pre><p><br>This will generate a new Livewire component named <strong>HelloWorld</strong> in the <strong>app/Http/Livewire</strong> directory.</p><h3>2. Updating the Component</h3><p>Open the generated <strong>HelloWorld.php</strong> file and define your component\'s properties and methods. For example:</p><pre>// app/Http/Livewire/HelloWorld.php\n\nnamespace App\\Http\\Livewire;\n\nuse Livewire\\Component;\n\nclass HelloWorld extends Component\n{\n    public $name = \'World\';\n\n    public function render()\n    {\n        return view(\'livewire.hello-world\');\n    }\n}\n<br></pre><h3>3. Creating a Blade View</h3><p>Create a Blade view for your Livewire component. In this case, create a file named <strong>hello-world.blade.php</strong> in the <strong>resources/views/livewire</strong> directory:</p><pre>&lt;!-- resources/views/livewire/hello-world.blade.php --&gt;\n\n&lt;div&gt;\n    &lt;h1&gt;Hello, {{ $name }}!&lt;/h1&gt;\n    &lt;input wire:model=\"name\" type=\"text\"&gt;\n&lt;/div&gt;\n<br></pre><h3>4. Using the Component</h3><p>Include your Livewire component in a Blade view or layout. For example, in <strong>resources/views/welcome.blade.php</strong>:</p><pre>&lt;!-- resources/views/welcome.blade.php --&gt;\n\n&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n    &lt;title&gt;Livewire Laravel 3&lt;/title&gt;\n    @livewireStyles\n&lt;/head&gt;\n&lt;body&gt;\n    @livewire(\'hello-world\')\n\n    @livewireScripts\n&lt;/body&gt;\n&lt;/html&gt;\n<br></pre><h3>5. Running the Application</h3><p>Run your Laravel development server:</p><pre>php artisan serve</pre><p>Visit http://localhost:8000 in your browser, and you should see your Livewire component in action.</p><h2>Advanced Features</h2><p>Explore Livewire\'s advanced features, such as form submissions, validation, events, and more. The official Livewire documentation is an excellent resource for in-depth information on these features.</p><h2>Conclusion</h2><p>Congratulations! You\'ve successfully set up and created a basic Livewire component in Laravel. Dive into the rich capabilities of Livewire to build interactive and dynamic web applications effortlessly. For more detailed information, consult the official documentation. Happy coding!</p><p><br></p>', '2024-01-07 04:31:23', 1, NULL, '2024-01-08 10:31:01', '2024-01-08 11:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(7, 1, 2, '2023-12-12 08:26:55', '2023-12-12 08:26:55'),
(12, 1, 56, '2023-12-12 08:31:41', '2023-12-12 08:31:41'),
(15, 1, 82, '2023-12-12 12:04:49', '2023-12-12 12:04:49'),
(17, 1, 102, '2023-12-18 06:23:57', '2023-12-18 06:23:57'),
(18, 1, 91, '2023-12-26 08:15:37', '2023-12-26 08:15:37'),
(26, 1, 103, '2023-12-29 12:04:25', '2023-12-29 12:04:25'),
(27, 1, 104, '2024-01-08 10:54:00', '2024-01-08 10:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PtU8gqw724ElaKcrSLi0VssO1FxCvQzvucZn4ECN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaXN6NHdPWXRFTnRhZE1TYVVJV2VxbFdoQU5DVmxVMWt5aGI5TDJEZCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjk2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYmxvZy9nZXR0aW5nLXN0YXJ0ZWQtd2l0aC1saXZld2lyZS0zLWluLWxhcmF2ZWwtYS1jb21wcmVoZW5zaXZlLXVzZXItZ3VpZGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkSkFtL2FjT2NYSFo2T0FHaVFmbnlHdTFxLlF5NHJUVWdWdVNQdkUxdlZxcDJKaGpYbXlPbEciO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1704737030);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `role`, `created_at`, `updated_at`) VALUES
(1, 'waleed khan', 'walee@mail.com', NULL, '$2y$12$JAm/acOcXHZ6OAGiQfnyGu1q.Qy4rTUgVuSPvE1vVqp2JhjXmyOlG', NULL, NULL, NULL, NULL, NULL, 'profile-photos/pXIAewRx8SGfpK210jSgIHojn62dfzQKegMByEWS.jpg', 'ADMIN', '2023-11-28 08:18:15', '2023-12-21 06:28:14'),
(2, 'The Editor', 'editor@mail.com', '2023-11-29 05:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'gR7Tpkc31D', NULL, 'profile-photos/user_profile_image.jpg', 'EDITOR', '2023-11-29 05:53:57', '2024-01-08 12:57:43'),
(3, 'Dr. Demond Runolfsson', 'gdaugherty@example.org', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wNSeOtN6QG', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(4, 'Kaylie Ernser I', 'epowlowski@example.net', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0eCUciDdiZ', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(5, 'Dino Dicki', 'uwillms@example.org', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vzHkPrfCy3', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(6, 'Dr. Forrest Pfeffer', 'bsatterfield@example.net', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YNXVVw8u7x', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(7, 'Golda Dietrich', 'xfeest@example.org', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UVkuHWUbSG', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(8, 'Ora Schiller III', 'jimmy37@example.net', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TvkLyElSa7', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(9, 'Mr. Freeman Sauer V', 'cdeckow@example.net', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jBUYxZmIz3', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(10, 'Darien Kuhlman I', 'bennie.durgan@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hADkioJO8O', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(11, 'Nyah Yost', 'christine03@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dG1NZ8HkfP', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(12, 'Prof. Ida Kulas', 'fabian.williamson@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'w6QlppkxQS', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(13, 'Alfreda Paucek', 'leonor.reilly@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cEYGlOuqkc', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(14, 'Ezekiel Effertz', 'ntremblay@example.net', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'fleuSv041g', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(15, 'Mrs. Eleanora Watsica', 'umarks@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qx4i3zbLZF', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(16, 'Brandy Blick', 'turner.ignatius@example.org', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rbKz6nnR6G', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(17, 'Miss Destany Kessler', 'anastacio59@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'UKGWhFn5jm', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(18, 'Freeda Blick MD', 'elian99@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rREqIIqQ51', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(19, 'Alexandria Wyman', 'cormier.giovanni@example.org', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BrxLaf2Lm1', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(20, 'Cleora Ankunding', 'bradley.spencer@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'rB96SqiTUf', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(21, 'Angelo Ruecker', 'rmayert@example.org', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'weVwbRzPqd', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(22, 'Tristin Barrows', 'fhahn@example.com', '2023-11-29 05:53:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9ZwvZ4h5Yj', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:57', '2023-11-29 05:53:57'),
(23, 'Mrs. Cristal Witting II', 'ryley.lesch@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YOh78KnPqg', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(24, 'Faustino Willms', 'carroll36@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ALnCrsCzta', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(25, 'Dr. Zakary Johnston', 'beryl74@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'CrTW7usD7N', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(26, 'Krystina Hagenes', 'ulemke@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4NOgMl1vrk', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(27, 'Mustafa Dooley', 'sawayn.danika@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DbAWG7ZG3J', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(28, 'Colt Huels IV', 'zieme.doris@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'RhltG5dN4t', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(29, 'Vilma Crooks', 'ihansen@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'eIhw0xkgic', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(30, 'Giles Schmidt', 'lionel11@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'EVCD7oQ6Cr', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(31, 'Mr. Mathew Hand', 'ehickle@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'DJHh0QBBBI', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(32, 'Dr. Kip Hoppe III', 'hessel.dan@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HxY9vbbPBX', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(33, 'Zakary Gibson', 'sim41@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qkIx0GNKPZ', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(34, 'Raul Pfeffer', 'hmccullough@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'n7P1hm8vWH', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(35, 'Prof. Jermain Heller', 'helene83@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wFv15VaTKj', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(36, 'Prof. Nat Hauck PhD', 'aliya.williamson@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'YJrzni9CzM', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(37, 'Noble Hayes', 'mcglynn.nikita@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'OtrnoeYAt6', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(38, 'Bill Hand DDS', 'davon.trantow@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'lgzADpcHta', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(39, 'Annabell Stanton', 'karlie.maggio@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uD5IrsvXJA', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(40, 'Barney Swift', 'knikolaus@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1yx76obbG1', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(41, 'Leopoldo Nitzsche', 'kara04@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '3BADifV5nE', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(42, 'Nya Runolfsson', 'orin.ziemann@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jiMFRMZ9eN', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(43, 'Lysanne Smith', 'ahmed07@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'iFpgY2yDxH', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(44, 'Mrs. Selena Ernser', 'davonte.hilpert@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MlBklCXilI', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(45, 'Miss Lavada Gaylord', 'bernice44@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'aTsMCUOajQ', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(46, 'Orie Strosin', 'beatty.shyann@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8nS2U3kZsL', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(47, 'Aron Cartwright', 'bdurgan@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'k3ppuogRZh', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(48, 'Edmund Cronin', 'ofeil@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0DXkSc390w', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(49, 'Lisette Hills', 'dmurazik@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'y366g6BzVI', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(50, 'Alison Runolfsdottir', 'orlando.mitchell@example.net', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MjuegTVAme', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(51, 'Mr. Marlin O\'Reilly II', 'palma54@example.org', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'KAqAaizT3u', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(52, 'Lexus Wiegand', 'concepcion.turner@example.com', '2023-11-29 05:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uW8n5ZOsXg', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:58', '2023-11-29 05:53:58'),
(53, 'Quincy White', 'krajcik.kelvin@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'j6Gkctpo3m', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(54, 'Mr. Rick Mraz', 'bhaley@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'wKNOyBFLAy', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(55, 'Miss Emelie Adams Sr.', 'ondricka.mary@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9Y8frZSndf', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(56, 'Mr. Ari Walker V', 'squitzon@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yPllDYwf2Z', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(57, 'Lucious Heathcote', 'ookon@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'qchc5Dpv7C', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(58, 'Mitchel Altenwerth', 'qhartmann@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '71aOzPBmcW', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(59, 'Prof. Terrill Schimmel', 'keven.trantow@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2w7SeAgOC7', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(60, 'Miss Kallie Denesik', 'harrison36@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'aviSc9AaCG', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(61, 'Miss Gracie Crooks DVM', 'durgan.mabel@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tRpEYgexYl', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(62, 'Miss Kiera Kuhlman I', 'lockman.golden@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SM09GNnIKd', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(63, 'Yvonne Bauch I', 'cummerata.alexander@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'G2zuNZweF8', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(64, 'Germaine Weber', 'orlando17@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'jWd93koeBN', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(65, 'Dudley Kemmer', 'wilkinson.eva@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'z1U2kwBpXb', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(66, 'Kara Kuhn', 'becker.sheridan@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MndbAg8CfY', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(67, 'Noah Cormier', 'jensen75@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'zo0nQuaDvU', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(68, 'Mr. Justen Hackett', 'hrodriguez@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'cA7eWSbg9z', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(69, 'Luther Bins', 'kbogan@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'FZXM0vT235', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(70, 'Jerod Stehr', 'winnifred92@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BkiPpBfNtZ', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(71, 'Aisha Veum', 'zprice@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LMSjsy180R', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(72, 'Prof. Consuelo Larkin', 'baylee.beier@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'FZahyojuzG', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(73, 'Elenora Jast', 'xconn@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Ol0PqfGffW', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(74, 'Emerson Price', 'dax24@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '4hB8NwHdAe', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(75, 'Dr. Assunta Johnston', 'dixie.runolfsdottir@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'BuAh2IXyZD', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(76, 'Rosella Jacobs', 'balistreri.adolphus@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JTQBx9EScd', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(77, 'Prof. Amy Carter I', 'steve38@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'HdN04tR3Wz', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(78, 'Kariane Hartmann', 'lemke.darien@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'MlolDgdZy6', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(79, 'Libby Prohaska Sr.', 'rau.reba@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'x7CLCM7E68', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(80, 'Lucius Walsh', 'tess.johns@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PPp20pdbrH', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(81, 'Gregory McKenzie DDS', 'gaylord.pat@example.org', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'JGxG7L5Xeb', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(82, 'Hank Hackett', 'langworth.nickolas@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'PiXCksqGQ6', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(83, 'Irwin Kovacek', 'deion.buckridge@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ImWEqROydo', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(84, 'Donnell Luettgen', 'leffler.king@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'a2rAiwL4Uw', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(85, 'Pat Halvorson', 'xframi@example.com', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '85LZ7dOWap', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(86, 'Vincenza Goyette', 'muriel14@example.net', '2023-11-29 05:53:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'FA9wJJQiEC', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:53:59', '2023-11-29 05:53:59'),
(87, 'Jadon Satterfield', 'jana.jacobi@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'dAe3mtLfmg', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(88, 'Jordyn Carter', 'rebekah.marvin@example.org', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6EmfYO8UoH', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(89, 'Brennan Powlowski III', 'kohara@example.org', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'AU2sOWm0Da', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(90, 'Meta Langosh', 'jortiz@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'yhTxz0hS6L', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(91, 'Camryn Turcotte', 'odie.goodwin@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xsgrFGxUZx', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(92, 'Johnson Harber', 'virgil.berge@example.com', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'mxiEafQN2l', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(93, 'Clair Rippin', 'psmitham@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '9wlZB5kcju', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(94, 'Myrl Green', 'kutch.melisa@example.com', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'uCzZI6vL4Y', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(95, 'Nasir Wuckert', 'ttillman@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xmhC8rwywx', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(96, 'Dr. Burnice Kirlin', 'leola.goldner@example.org', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'pyGtkEeFfx', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(97, 'Mrs. Madalyn Daugherty IV', 'xdach@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '0DnxR5OamP', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(98, 'Concepcion Harvey Jr.', 'roob.laurianne@example.com', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'tNITAlqQtl', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(99, 'Alverta Keebler', 'sylvester.waelchi@example.org', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'xPyWN6aLqP', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(100, 'Garfield Howell', 'bheidenreich@example.net', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'e8zfTIBKxu', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00'),
(101, 'Miss Mariam Dibbert IV', 'rosalia16@example.org', '2023-11-29 05:54:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'K0WyzDrkla', NULL, 'profile-photos/user_profile_image.jpg', 'USER', '2023-11-29 05:54:00', '2023-11-29 05:54:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_like_user_id_index` (`user_id`),
  ADD KEY `post_like_post_id_index` (`post_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
