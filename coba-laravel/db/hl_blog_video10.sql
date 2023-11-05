-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 02:12 PM
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
(1, 'Web Programming', 'web-programming', '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(2, 'Personal', 'personal', '2023-11-05 07:02:14', '2023-11-05 07:02:14');

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
(6, '2023_11_04_084545_create_categories_table', 1);

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
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Assumenda sed ducimus consequatur maiores.', 'laboriosam-odit-velit-dolores-molestias-ducimus', 'Omnis et ut nulla aspernatur soluta voluptas rerum. Voluptatem qui sed aut omnis. Quia laboriosam sed quia sapiente. Repudiandae eos consequatur quia quas quia.', 'Quisquam voluptatem facere ut dolorum. Non aspernatur ut similique odio et. Earum neque velit nihil sunt saepe. Quia laudantium dignissimos distinctio. Ut aliquid sunt sequi. Voluptas eos non nobis magni. Eum repellat sequi exercitationem culpa delectus omnis.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(2, 1, 3, 'Vel quo.', 'sint-et-ea-qui-aut-quas', 'Laborum omnis rerum incidunt expedita omnis rerum. Ut adipisci itaque autem ut dolorem accusantium. Odit rerum repudiandae ut excepturi et.', 'Et aliquam itaque magni dolor ut velit dolor. Maiores corporis et accusamus ipsam velit pariatur saepe. Omnis quos atque quo atque fugit. Autem et est nihil repellat odio facere. Qui ipsam reiciendis omnis omnis optio qui.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(3, 2, 2, 'Hic ipsa sit recusandae et nostrum aspernatur voluptas dolores laborum.', 'voluptatum-unde-maiores-impedit-enim-iure-voluptas', 'Doloribus ducimus dicta saepe. Blanditiis iste eos sunt modi et quia. Quis quod nesciunt similique eaque qui sapiente. Nihil eius nulla error mollitia.', 'Cum nobis enim explicabo et neque. Nihil sit fuga ex repellendus quidem quo. Iusto vel sapiente voluptatem deserunt tenetur unde. Impedit quod voluptate dolorem ut voluptatem veritatis molestias corporis. Sequi totam est dolore voluptatem. Non molestias enim qui ipsam repudiandae repudiandae magnam. Alias omnis aut non iste eveniet est. Nesciunt est nobis saepe eum qui qui autem. Aut voluptas sed quia consequatur. Et soluta itaque nam nobis.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(4, 1, 2, 'Aut exercitationem distinctio occaecati quae nihil velit odit.', 'incidunt-nam-beatae-ad-voluptas', 'Iure commodi deserunt consectetur temporibus. Dolorem iure aut ea rerum molestias velit. Voluptate nulla cupiditate vero amet quia excepturi ea. Facere consectetur non fuga veniam et temporibus. Qui non dolorem eaque minima aspernatur.', 'Eaque facere deserunt doloremque reiciendis omnis qui. Veniam qui reiciendis suscipit quibusdam est nulla expedita. Assumenda vel voluptas ipsam quis odio repudiandae. Earum blanditiis et harum enim. Dolor dolores iusto deleniti qui ex. Quidem ad sunt fuga. Qui nostrum dolorem nobis non.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(5, 2, 1, 'Sed exercitationem in provident enim aut natus cupiditate laborum.', 'dolorum-cumque-illum-ipsam-aut-fugit-explicabo', 'Ut harum explicabo laboriosam aut velit ex deleniti consequuntur. Rerum cupiditate consequatur repellat iusto et quaerat. Qui distinctio id corporis et repellendus.', 'Et amet vitae distinctio id consequuntur et. Et eius fugit sint odit dignissimos. Corporis architecto est iusto omnis autem est odio. Id aut quia delectus nemo ratione officiis. Dolore deserunt incidunt officia quisquam velit. Distinctio et quaerat quasi qui. Nemo perferendis mollitia quasi repellat quae consectetur fugit. Iusto facere est ullam corrupti porro inventore.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(6, 1, 1, 'Alias eveniet rerum sapiente est.', 'nesciunt-dolor-non-recusandae-minima-et-eum-velit', 'Rerum laborum id fugiat unde. Molestiae deserunt et illum et qui explicabo. Quia eligendi nesciunt iusto sed et quia. Dolore delectus inventore voluptas.', 'Et ducimus ullam libero. Exercitationem perferendis nesciunt veniam temporibus deleniti rerum odio. Amet quam non quia enim recusandae ut expedita. Aut dolor porro soluta aut ipsa. Omnis aut perspiciatis officia nulla. Nihil debitis qui voluptatem qui consequatur eligendi. Sunt quia quia a possimus ut. Ea aperiam aliquam quasi temporibus dicta dolor. Quo veniam est similique corrupti qui voluptatem. Ut est ex in ullam maxime animi consectetur.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(7, 2, 3, 'Eum ipsum et ducimus minima voluptas nihil aut et qui.', 'alias-vel-perspiciatis-eos-vel-voluptatibus', 'Reiciendis et dicta et itaque recusandae excepturi. Ab accusamus culpa atque aut fuga. Quis corporis omnis repellendus.', 'Quam ut et occaecati dolorum minus ea maxime. Neque esse quae saepe non fuga quia. Ipsum eaque repudiandae blanditiis facilis rem et. Quisquam ea animi quisquam dolores. Consequatur sed dolor ut illum. Quis et omnis minus est dolor quasi. Ea nihil fugit tempore culpa.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(8, 1, 3, 'Laborum aut aut non fugit.', 'dignissimos-repellat-quae-eos-rem-eos-eos-rerum-asperiores', 'Laboriosam dicta corrupti odit voluptate at qui commodi. Nesciunt molestiae dolorum incidunt enim enim aspernatur. Sequi voluptates et sint. Perspiciatis incidunt neque tenetur voluptas enim officia quam. Dolorum corporis iusto ipsa fugit ex.', 'Vel nemo impedit nisi dolore qui earum illo. Voluptatem alias et praesentium sed quas. Quos recusandae cupiditate tenetur minus vitae quis doloribus. Ea consectetur numquam ea rerum et quis. Eveniet officiis omnis pariatur quaerat asperiores temporibus doloremque. Nulla vel quas natus incidunt qui eos nihil quia. Ipsam nobis eum exercitationem ut. Quibusdam voluptatum autem id nihil est.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(9, 2, 1, 'Odit debitis aut accusantium perspiciatis voluptas mollitia ex ratione aut repudiandae.', 'occaecati-autem-dolor-et-et-a', 'Velit doloremque eos aut qui modi maxime voluptatem deleniti. Reiciendis necessitatibus voluptatum praesentium explicabo ullam eveniet tenetur id. Illo maiores autem ea cumque. In blanditiis et dicta laborum amet.', 'Earum necessitatibus deleniti omnis ipsam non sit ut. Dolor deserunt autem sed quis est aspernatur quas. Dolorem quo aperiam et. Iure soluta nobis id omnis quo.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(10, 2, 3, 'Optio sunt et.', 'placeat-at-ipsam-ipsam-itaque-excepturi-id-recusandae', 'Mollitia laudantium quidem praesentium omnis. Et provident nobis voluptatem voluptatem suscipit quas amet natus. Laudantium provident ducimus dolores deleniti est nihil. Ipsa nobis eum reprehenderit sit explicabo necessitatibus.', 'Optio officia consequatur aliquam ut consequuntur. Quas reprehenderit qui et enim temporibus quam qui. Nihil deleniti non ut molestiae voluptas. Dicta dignissimos fuga veniam ea dolores aliquam aut. Animi amet reiciendis eveniet quia deleniti rerum similique. Aut repudiandae doloremque ut quia illum est voluptatem. Quam et et et molestiae hic et.', NULL, '2023-11-05 07:02:14', '2023-11-05 07:02:14');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hani Kezia Laksita', 'nasyiah.nurul', 'tania19@example.com', '2023-11-05 07:02:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '04wkYXXbmE', '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(2, 'Utama Hidayat', 'handayani.shania', 'fkurniawan@example.net', '2023-11-05 07:02:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mg3IZ93hEf', '2023-11-05 07:02:14', '2023-11-05 07:02:14'),
(3, 'Uli Hassanah M.Farm', 'mustika.prabowo', 'syahrini.namaga@example.net', '2023-11-05 07:02:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LArEv1nAaw', '2023-11-05 07:02:14', '2023-11-05 07:02:14');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
