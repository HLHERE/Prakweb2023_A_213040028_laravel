-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2023 at 08:29 AM
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
-- Database: `hl_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(2, 'Web Design', 'web-design', '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(3, 'Personal', 'personal', '2023-11-26 21:10:51', '2023-11-26 21:10:51');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_04_041807_create_posts_table', 1),
(6, '2023_11_04_084545_create_categories_table', 1),
(7, '2023_11_27_082349_add_is_admin_to_users_table', 2);

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
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Repellat nesciunt vitae.', 'sunt-natus-quidem-corporis-quaerat-quos', NULL, 'Rerum illum quis sit incidunt debitis suscipit numquam. Aut itaque aut laudantium a. Quidem nam eos nisi voluptates molestiae.', '<p>Aperiam voluptas quo recusandae fuga quia ea. Adipisci vel molestiae molestiae repellendus nemo non. Excepturi voluptas expedita quaerat.</p><p>Et nesciunt mollitia laborum est voluptatem id eos. Neque sit sint iure dolores officiis magni. Nihil tempore cumque laborum eos qui aliquid.</p><p>Ex voluptatem deserunt voluptates pariatur nesciunt. Aspernatur debitis mollitia eligendi consequatur. Amet sequi quae ut sequi. Sint quam totam autem vel porro nulla.</p><p>Et magni at odit. Quis et nulla ipsa voluptatem. Voluptas voluptate nobis eaque recusandae repellendus consectetur. Et ea velit rerum hic ea.</p><p>Quas neque ex ut suscipit eos. Error velit voluptas nam. Et cumque et repudiandae qui quidem est architecto. Blanditiis culpa voluptatem quam.</p><p>Praesentium cum dolores et corrupti magnam alias. Praesentium qui et in quasi quas mollitia. Voluptatem nihil est consequatur quibusdam consequatur rerum delectus.</p><p>Illum culpa expedita quisquam voluptatem et corporis. Dolores quod amet ea nisi animi similique. Tempore itaque dolorem maxime exercitationem eos. Dolorem alias praesentium qui saepe nihil.</p><p>Autem sunt sapiente excepturi eaque consequatur. Molestiae voluptatem officia nostrum velit. Voluptatum aut omnis est dolor. Sequi debitis at eveniet sit.</p><p>Quis cumque consequatur non sunt voluptatem rem ex. Et fugit consequatur debitis voluptas optio corrupti voluptatem. Officia totam vel quisquam nesciunt quisquam. Vero vel quibusdam facere atque. Alias eum maiores voluptatum eius ratione hic nam.</p><p>Officia maxime corporis dolor dolores consequatur tempore. Voluptates est nemo repellat quia distinctio provident. Deleniti aut nihil occaecati rem est. Inventore dolorem quia qui molestiae et placeat aliquid.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(2, 1, 3, 'Eos fugit aut cupiditate minus quam vel vel.', 'quia-perspiciatis-corrupti-facere', NULL, 'Repudiandae et vel occaecati sed omnis et dolor. Iusto sit nihil corrupti error totam delectus. Eveniet ut earum unde adipisci voluptas ullam est molestiae. Molestiae eum id molestiae eligendi qui sit hic et.', '<p>Et tempore quis in hic laudantium. Aliquid repellendus eius fuga. Quo illo repellendus voluptate veritatis itaque magni quod itaque.</p><p>Voluptas aut quo tenetur voluptatem ut atque. Veritatis ex illum occaecati enim quisquam.</p><p>Aperiam qui eum excepturi magnam ut labore vero. Omnis nihil et ut iusto.</p><p>Repellendus doloribus numquam deserunt non. Sequi voluptas aut quidem magnam quasi eum. Accusamus ea aliquam rerum asperiores.</p><p>Optio delectus quae temporibus ut sint vel. Eum vel aliquid dolores minus. Animi numquam exercitationem aliquam. Vel quis ad minus nemo.</p><p>Doloribus quo aut facere labore eveniet voluptates blanditiis repellendus. Itaque alias dolor quos doloremque. Quos est sint fugit itaque. Omnis quis autem ipsam exercitationem ducimus sint. Sint aut dolorum dolores cumque facere possimus eius.</p><p>Est cupiditate aut omnis voluptatibus impedit vel distinctio explicabo. Laudantium debitis voluptatum quod accusantium ea fuga tempore. Ut dolorem molestiae fuga impedit nam quod optio. Nulla cum ut iure ab ullam iure.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(3, 2, 1, 'Quia cupiditate quia qui labore possimus occaecati est.', 'rerum-et-occaecati-placeat-distinctio-ut-veritatis-est', NULL, 'Doloremque velit quasi ut maiores sit consequatur inventore. Ipsa nostrum qui repudiandae possimus tenetur.', '<p>Velit distinctio soluta blanditiis quam possimus sed. Reiciendis ut ut iste fugiat autem illum. Omnis est ea fugiat aliquid quaerat consequatur accusamus. Sed commodi a qui quas. Doloribus ea laudantium facilis quasi.</p><p>Est in voluptatem neque qui. Blanditiis doloribus ipsam sint veniam distinctio qui. Consectetur rerum iusto quis et ut accusantium.</p><p>In et suscipit cumque ea quaerat quo nesciunt. Et reiciendis dolores mollitia et temporibus magni ratione. Reprehenderit assumenda qui assumenda saepe ut aut. Laudantium tempore incidunt alias eligendi natus. Dolorum et in laborum nemo minus inventore.</p><p>Unde magni ipsum atque voluptatem quibusdam. Voluptatum corrupti ut quae incidunt totam. Et molestiae ut sunt quasi inventore voluptatem sit.</p><p>Ut voluptas aperiam asperiores ut nam dolorem qui animi. Sunt debitis quaerat voluptas eaque nihil quia sed. Voluptatem porro rem aliquam quam vitae sed. Laborum labore ad sed.</p><p>Illum corrupti et placeat sapiente quibusdam et tenetur. Quam sint enim iusto culpa doloremque eum sit libero. Voluptatem quam dignissimos quis laudantium et.</p><p>Sit pariatur provident enim facilis. Nostrum earum rem recusandae iusto eum repudiandae. Sint aut et ipsam eveniet error at illo.</p><p>Libero aperiam molestias facilis rerum praesentium animi. Voluptatem aperiam eos omnis facilis vitae eveniet laborum laborum. Vel nihil illo facilis consequatur aut perspiciatis. Est laudantium et ut eius occaecati suscipit.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(4, 2, 3, 'Sit reiciendis sequi quis.', 'architecto-perspiciatis-ab-et-soluta-aliquid-non-corporis', NULL, 'Molestiae nemo nihil hic quasi at harum labore voluptatibus. Velit magni nisi quae quia qui minus quis ut. Adipisci recusandae vitae omnis nihil ea recusandae.', '<p>Fugiat occaecati voluptatem velit enim atque. Laudantium aut corrupti quam voluptas quod similique sit. Iure voluptas rerum minus veritatis soluta non neque. Molestiae molestiae non distinctio saepe animi.</p><p>Rerum nemo quis pariatur sed ullam qui veritatis. Molestias voluptatem incidunt et alias. Illo dicta soluta corrupti asperiores qui ut mollitia molestias.</p><p>Repellendus voluptatem placeat voluptatibus. Qui illum quod molestias rerum id enim qui nihil. Assumenda sed optio tempora ut similique omnis. Quia quia est eaque iusto nihil. Nam cum quisquam esse et voluptatem odio aut.</p><p>Autem numquam incidunt sit magnam exercitationem placeat et. Perspiciatis consequuntur ratione rerum cupiditate libero. Nisi rerum sint sunt fugit.</p><p>Ut ut quis quisquam sapiente qui. Fuga alias odio et repellendus cumque ut. Adipisci laudantium earum sunt numquam est quos esse. Odit aut soluta est. Cumque iure et et.</p><p>Voluptatum sunt quis et magnam quidem doloribus. Et ex dolorum maxime dolorem. Provident ratione officiis sit modi cumque beatae accusamus.</p><p>Dolorum cum et consectetur vitae enim vel. Recusandae excepturi harum soluta non.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(5, 1, 3, 'Natus reiciendis excepturi occaecati est.', 'sunt-illum-cum-sapiente-iusto', NULL, 'Officia dolor porro ducimus odit ducimus sequi. Sit harum inventore at error ut. Et officia non ipsum consequuntur. Ipsam magni est quisquam omnis et aut.', '<p>Et voluptatum magnam dolores voluptatem. Natus iusto soluta libero fuga ipsa quas ab.</p><p>Reiciendis exercitationem odio iusto qui. Eaque voluptates voluptatibus eaque perspiciatis magnam. Rerum aperiam aut omnis quo ut et qui. Vitae cumque maiores est sit assumenda enim aut.</p><p>Deserunt modi saepe voluptatem. Et velit impedit mollitia eaque. Aliquid eligendi officiis nostrum modi perspiciatis vel.</p><p>Sed in et exercitationem ratione id quo aliquam. Quidem quisquam dolores deserunt ut voluptas officia et reprehenderit. Maiores veniam ut et enim odit illo.</p><p>A consequuntur perspiciatis ad quia nobis nostrum laboriosam quam. Qui debitis aspernatur inventore maiores voluptas voluptatibus aperiam. Aspernatur non autem iusto sequi quae porro. Voluptatem natus sunt dolores necessitatibus.</p><p>Assumenda vel sed aut non. Distinctio molestiae totam est in. Eius beatae aspernatur eius impedit necessitatibus nihil. Voluptas inventore deleniti vitae minima.</p><p>Non accusamus ea laboriosam est corporis tenetur ratione. Tenetur assumenda ducimus voluptatibus repudiandae blanditiis. Consectetur et nihil enim earum enim. Omnis id velit ea voluptatibus praesentium corrupti.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(6, 2, 3, 'Qui dignissimos quibusdam officiis est.', 'ut-eum-voluptates-ut-commodi-molestiae-ipsum', NULL, 'Sed ea similique eveniet voluptas et quos iusto. Voluptas reprehenderit unde corporis. Et aut eius esse culpa.', '<p>Accusantium rerum omnis atque. Ducimus deserunt dolor ea occaecati. Ex pariatur dolorem adipisci nesciunt quaerat. Id et enim amet reprehenderit. Iste voluptatibus omnis provident placeat illo.</p><p>Sequi est quia sit dolorum. Quod impedit molestiae sit qui enim dolor delectus. Similique id libero perferendis laboriosam occaecati est nulla.</p><p>Quis dolorem qui autem ullam molestiae delectus. Aspernatur voluptas vitae minima dolorem.</p><p>Quia quibusdam eveniet occaecati eveniet fugiat omnis. Non amet voluptas aut quibusdam et eum. Error nam debitis enim earum corrupti maiores. Mollitia reiciendis labore repellat incidunt quo quidem. Quos sunt maxime alias quia aspernatur et et id.</p><p>Voluptatum hic sed quibusdam est repellat. Dolores eum a est ad magnam error. Saepe culpa quibusdam dolorem sed. Laboriosam consequuntur qui quibusdam voluptatem.</p><p>Qui ad natus optio a veritatis eveniet. A expedita consequuntur autem ea ad. Sed quo architecto officiis. Delectus et est consequuntur maiores rem itaque voluptatem. Tenetur saepe dolorum rerum illum et animi nobis.</p><p>Sunt omnis veritatis magnam et et reiciendis voluptatem. Eos impedit qui qui atque.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(7, 2, 2, 'Aspernatur voluptatibus rem.', 'impedit-accusamus-qui-vitae', NULL, 'Officia velit quia qui quo tempore similique. Incidunt ducimus eius sunt ea. Dolor vel modi a et. Nesciunt enim et ut accusamus et perferendis.', '<p>Est labore nostrum eveniet praesentium quam consequatur. Laboriosam reiciendis in voluptatum ab eos laboriosam. Deleniti corporis repudiandae qui nihil maiores. Velit ipsam totam repudiandae cupiditate et.</p><p>Quibusdam asperiores ut excepturi et quia fugit. Reprehenderit voluptatem mollitia ad nesciunt laudantium. Veniam animi tenetur dignissimos laudantium illo. Rerum cum voluptate vel eum.</p><p>Velit ab ea deserunt sed. Blanditiis deserunt sunt numquam ducimus id.</p><p>Dolores placeat sint numquam velit fuga ut est perferendis. Mollitia aut tenetur cum consequatur occaecati est quaerat nemo. Fugiat perferendis sed sint eligendi nostrum ut est.</p><p>Ut ratione odit quam. Dolor porro et tempora voluptates tempora commodi. Et est et pariatur reprehenderit nam aut est. Sunt dolor est aperiam quis et.</p><p>Corrupti et consequuntur animi assumenda illo. Est et ipsam ut consequatur suscipit quae.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(8, 2, 2, 'Quis qui qui quia.', 'aspernatur-inventore-voluptatem-dolorem-eos-ut', NULL, 'Mollitia enim dolores ut sed qui distinctio debitis. Placeat recusandae non et et amet eligendi minima. Et delectus beatae consequuntur quis deleniti. Rerum animi et et recusandae est saepe.', '<p>Hic ut molestiae et rerum nulla labore rerum. Rerum non amet dolor totam reprehenderit consequatur. Temporibus omnis esse similique expedita velit magni fuga cumque. Consequatur dignissimos mollitia voluptatem quaerat quas nobis.</p><p>Ut consequuntur tempora laborum et nesciunt voluptatibus et. Sunt minima ea est laborum hic repellat velit. Exercitationem ex quos et eligendi molestiae quia ipsa. Sed hic dignissimos animi.</p><p>Non tempore voluptas excepturi. Odit laudantium sapiente voluptatem aut quia architecto. Eius voluptate repellendus sapiente illo.</p><p>Sapiente explicabo corrupti reprehenderit. Laboriosam consequatur et est incidunt. Quisquam omnis quod quaerat et vero minus accusantium.</p><p>Magni distinctio incidunt soluta sit velit vitae neque. Repellendus laboriosam delectus dolores necessitatibus. Nam repudiandae minus et ut.</p><p>Perferendis repudiandae omnis distinctio sit voluptas velit asperiores nihil. Exercitationem voluptatibus id enim sit magni. Voluptas est ad beatae est magnam sit. Maiores eum alias omnis maiores.</p><p>Maxime est eum unde repudiandae voluptatum aut sequi. Soluta expedita accusantium ullam aperiam. Ipsa veritatis maxime fuga omnis.</p><p>Ea repellat adipisci tenetur dolorum dolores dolorum. Voluptatem nulla perferendis illum sint soluta ut. Officia totam id doloremque et.</p><p>Aliquid est rerum tempore aspernatur. Qui rerum ratione distinctio dolores. Est libero voluptatum nisi omnis dolorum autem.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(9, 2, 3, 'Deleniti consequatur atque esse commodi dicta.', 'in-velit-quia-aliquam-molestiae', NULL, 'Autem voluptates aliquam iusto eligendi soluta recusandae. Unde saepe et corporis adipisci magnam qui.', '<p>Aut blanditiis quod sed iure. Officiis eum voluptatem voluptas praesentium. Sint perspiciatis molestias quae qui sunt molestiae maiores. Tenetur qui dolor autem rerum.</p><p>Amet quia aliquam minus ad corporis blanditiis eligendi. Aperiam vel rerum qui optio error. Et exercitationem dicta repellat qui quam.</p><p>Minima ut minima qui reprehenderit. Nisi dolorum ducimus quia veritatis qui ipsam. Velit nemo quo neque est itaque. Quod numquam ipsa vel in.</p><p>Facere occaecati atque vero quis reprehenderit corporis recusandae. Officia eos qui eligendi exercitationem id neque accusamus.</p><p>Voluptas delectus blanditiis ratione nemo et asperiores. Sit occaecati tempora consequatur eveniet voluptate possimus tenetur. Autem non dolor pariatur consequatur.</p><p>Corrupti omnis porro eligendi. Distinctio dolorem quis cum commodi voluptatem voluptas. Reiciendis perferendis est quis voluptatem.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(10, 2, 3, 'Magnam sit.', 'minima-ratione-alias-repellat-aperiam-vel', NULL, 'Eum impedit quibusdam voluptatem voluptatum. Debitis id aut consequuntur culpa iste quo ipsum. Ut voluptas molestiae animi voluptas voluptas tempore.', '<p>Asperiores tempora maxime recusandae ipsa consectetur voluptas odit. Consequatur aut beatae sequi soluta earum eligendi. Dicta tenetur laudantium ut fuga harum sunt sint.</p><p>Magni ut saepe aut consequatur vel minus. Ratione in voluptatibus omnis rerum expedita qui iusto. Quos qui unde aliquid dolore nobis saepe. Deserunt earum unde rerum tempore ipsum minus ut.</p><p>Expedita saepe voluptatibus a nulla non nesciunt. Ex doloremque possimus assumenda qui. Delectus nihil sed voluptas qui.</p><p>Et earum itaque dolorem sit enim ut. Sapiente error veniam libero et. Error error dolorem labore officiis deserunt possimus.</p><p>Voluptas a laudantium perspiciatis doloremque dolores. Deleniti quasi eaque et occaecati laboriosam itaque sunt aspernatur. Omnis optio aut molestiae dolorem. Autem perspiciatis a ipsum eveniet.</p><p>Et architecto est saepe non ducimus. Facilis aut aut dignissimos molestiae aut perferendis deserunt. Provident et nulla qui explicabo libero. In id consequatur et nihil recusandae sequi. Eius amet nulla distinctio optio vel sit.</p>', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51'),
(12, 3, 2, 'ini adalah post pertama saya', 'ini-adalah-post-pertama-saya', 'post-images/PLnP3LEq5R39o1IOClI2hAU5OfuLcc2orVIA7oaN.jpg', 'halo perkenalkan saya', '<div>halo perkenalkan saya</div>', NULL, '2023-11-26 21:35:18', '2023-11-26 21:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Monkey D Luffy', 'monkey d luffy', 'Monkey@gmail.com', NULL, '$2y$10$pwHtHMsxph8Ocn6qtXRJeuFNkfbyoEkHzc6OPNJj2m.LnJ2mg73rK', NULL, '2023-11-26 21:10:51', '2023-11-26 21:10:51', 1),
(2, 'Lamar Setiawan S.Sos', 'hamima21', 'paiman.rahayu@example.org', '2023-11-26 21:10:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ytRLNr4lChF78NO0rjtCS3rAgma4TzO3dgkIZPwLCAysugLvFdf9EYxqRnY1', '2023-11-26 21:10:51', '2023-11-26 21:10:51', 0),
(3, 'Heryanto Waskita S.T.', 'hzulaika', 'cici67@example.org', '2023-11-26 21:10:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0bUFFixgzcnCv9r49D6Os8tZnAV9JypdMh4g9pt5J18NhlPtaZXbd2BueKDF', '2023-11-26 21:10:51', '2023-11-26 21:10:51', 0),
(4, 'Cindy Padmasari', 'intan.kusmawati', 'raina60@example.net', '2023-11-26 21:10:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zAPtlIqOsWHcTobgY366ew52wwxjyy1I30NEPjDMjigd72vF15cXb23vTpjk', '2023-11-26 21:10:51', '2023-11-26 21:10:51', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
