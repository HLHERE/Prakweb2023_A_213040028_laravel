-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2023 at 03:38 PM
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
(1, 'Web Programming', 'web-programming', '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(2, 'Web Design', 'web-design', '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(3, 'Personal', 'personal', '2023-11-09 09:13:42', '2023-11-09 09:13:42');

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
(1, 2, 3, 'Sunt aut deserunt ut eveniet.', 'cupiditate-dolor-aperiam-recusandae-optio-suscipit-deleniti', 'Officia id id quod voluptas maiores similique. Repellendus alias quaerat omnis et voluptatem. Explicabo dolores temporibus rerum ratione commodi.', '<p>Sunt praesentium rerum sed. Perferendis accusamus et dolorum nostrum vitae accusamus. Cupiditate repellendus aut qui enim in ab. Est repellat voluptas est similique ut. Nam sequi iste est voluptas.</p><p>Quia sed harum alias hic non ullam rerum. Qui quidem voluptatibus minima sed debitis sint. Quidem omnis saepe ullam.</p><p>Aspernatur iusto porro fuga sit cumque reiciendis. Adipisci impedit ducimus ea possimus explicabo rerum. Illo sapiente animi distinctio impedit.</p><p>Illo quis molestiae odio aut quae nihil. Tempora ut qui sit aliquam ullam dolor corporis. Molestiae tempora est eius. Inventore consequatur inventore sit ex dolores.</p><p>Distinctio consequatur culpa ullam. Facilis reiciendis tempore non similique. Perferendis sed et molestias quo. Totam et sunt sed unde. Ratione quia sequi nulla quam.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(2, 2, 2, 'Ab incidunt sunt ullam.', 'et-rerum-laboriosam-rem-quia-commodi-sequi-velit', 'Voluptas non deserunt odio autem. Aut iusto numquam ut ut sit hic ipsam aut. Sed rerum quisquam consequatur aut cupiditate quod omnis.', '<p>Consequuntur placeat mollitia consequuntur molestias. Qui quam et molestiae itaque. Numquam iste dicta deleniti adipisci sapiente quo quidem.</p><p>Omnis veritatis tenetur porro tempora. Et vero qui vel saepe nobis ipsum. Atque omnis a distinctio repellat est fugit. Rerum quisquam alias iusto eaque expedita quia.</p><p>Et nulla error facere nulla. Ipsam eaque similique sit ut dolores. Commodi explicabo non ducimus officiis omnis quo est nihil.</p><p>Numquam impedit dolorum eum incidunt. Corrupti molestiae quae consequatur dolor. Aut eveniet aut aliquid voluptatibus sapiente ipsum quo.</p><p>Provident quis est consequatur. Sit laborum qui minima aut dolores.</p><p>Et similique voluptatem quam. Omnis fuga tempora rerum quasi autem fugiat. Dolore molestiae sint sit ea. Ut non sunt iusto fugiat reprehenderit repellat suscipit rem. Quam hic voluptatibus quasi assumenda et a eum voluptatum.</p><p>Repellat natus perspiciatis impedit quod quo quidem ut. Eos tempora est atque non deserunt. Incidunt at quo eos tempore tempore ut vel placeat.</p><p>Quidem consequatur tenetur dolores quas occaecati dignissimos eos. Sit est aut nobis voluptatibus molestiae deserunt. Tenetur est voluptas dignissimos voluptatem. Odit velit debitis et qui ratione ad.</p><p>Quod et dolorum enim ducimus. Soluta et labore voluptates magnam.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(3, 1, 2, 'Facere id et deleniti accusantium.', 'nihil-architecto-commodi-quia-dolor-soluta-corrupti-libero', 'Minima enim nihil esse et vel. Inventore animi sed explicabo. Placeat animi debitis et.', '<p>Quam veritatis libero et quo laudantium suscipit. Qui eum accusantium omnis quis. Adipisci rerum optio magnam sint. Architecto odio eos harum praesentium quam.</p><p>Molestias est soluta accusantium. Non velit doloribus animi nobis. Quia rem aut impedit amet.</p><p>Ducimus hic velit quo eveniet blanditiis dolore. Id odit doloremque eligendi blanditiis velit praesentium. Voluptas reprehenderit ut corrupti alias neque inventore. Architecto est quo qui explicabo dolorem.</p><p>Explicabo doloribus expedita cum cum iure quae deserunt aut. Necessitatibus sit ut cum beatae. Totam quidem illum sunt similique. Excepturi deserunt facilis placeat.</p><p>Occaecati quibusdam magnam iure recusandae harum. Quo laboriosam inventore accusantium veritatis distinctio ex. Ea cum rerum qui. Consequuntur est consequatur dolore eos et repellendus quis.</p><p>Ut dolorem voluptatem illum voluptatem et in aut. Qui totam dolores amet cum ut ipsam ea. Tenetur eum minima provident perspiciatis corporis et. Eum modi dolorum nemo reprehenderit ex.</p><p>Qui maiores sequi non fugit et consequatur sint. Totam inventore cumque hic laborum. Id ipsum error atque dolore rerum.</p><p>Et excepturi a explicabo qui. Qui est exercitationem ut aut et ullam rerum. Et consectetur ex harum voluptates.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(4, 1, 3, 'Placeat consequatur nulla veniam deserunt pariatur.', 'possimus-repellat-natus-numquam', 'Expedita eligendi vero aut molestiae iste totam. Et excepturi rerum cum amet explicabo nulla esse accusamus. Nulla dolorem nulla vitae dignissimos fugit minima. Quia sed ullam impedit unde odio tempora veritatis.', '<p>Enim sit ut quisquam ut. Et dolorum illo aut placeat dolorem. Vero voluptas minima dicta odit delectus vel. Adipisci iste tempora doloremque blanditiis. Autem dolorem quos ipsa ducimus minus rerum ipsam.</p><p>Cumque reprehenderit fuga necessitatibus incidunt reprehenderit omnis. Est recusandae consequatur voluptas totam quis exercitationem libero. Atque magni odit nihil amet sapiente minus deserunt.</p><p>Aperiam consequatur voluptatem et temporibus consectetur dolorem amet. Omnis animi et animi dicta fugit. Illo aut fugit sint et magni explicabo aliquam.</p><p>Fuga velit aut atque consectetur totam nihil sequi. Repudiandae aut quia enim molestiae sit. Vel sunt laborum aliquid impedit ut tenetur praesentium corrupti.</p><p>Ut non quisquam est similique natus vel. Minima accusantium dolorum et. Ut accusamus minima culpa.</p><p>Vel in ab aliquid optio ad recusandae. Dolor beatae debitis aliquam ab id. Sunt id sit incidunt eligendi illum. Doloribus id et in quidem dolore provident iste. Magnam libero nostrum eum voluptatem qui unde.</p><p>Similique beatae quasi in quam vitae. Blanditiis aut quis reprehenderit enim. Porro vel libero consectetur odio blanditiis.</p><p>Sit et itaque eveniet consequatur animi. Dolor corrupti neque unde.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(5, 2, 1, 'Aut alias vel non sint pariatur qui.', 'ratione-laudantium-quis-non-nobis-corporis', 'Dolorum asperiores rerum aliquam perspiciatis molestiae perspiciatis praesentium. Omnis tempore aliquam accusantium est sed. Et velit ipsum eveniet odio quam consequatur mollitia deleniti.', '<p>Quia dolorum odit est assumenda et possimus. Corrupti doloribus cupiditate tempore ipsam eveniet corporis. Dolor et tempora assumenda maxime beatae omnis. Asperiores quo consectetur molestiae deleniti in dicta laudantium.</p><p>Modi ullam minus aut id quasi. Rerum ea harum ab delectus id quia tempore fugiat. Fugit occaecati et sit voluptatem omnis maxime. Et in odio rerum aut quidem consequatur.</p><p>Minus dolorum eius occaecati modi iusto. Ut facilis ex eligendi aperiam. Mollitia nihil corporis qui. Quasi et ipsa aut ex rerum natus. Voluptates minima voluptatibus rem ipsum voluptas omnis fugit.</p><p>Fugit sunt consequatur qui natus fugit eum dicta. Nihil aut earum velit et. Sunt tempore perspiciatis ut repellat doloribus nihil vero. Enim amet eaque nihil rerum maxime et.</p><p>Tenetur modi autem velit. Excepturi consequuntur blanditiis nesciunt odio. Labore rerum ut ad nam qui et sint.</p><p>Autem quasi voluptas in nisi iusto et dolor. Et in dolor et assumenda aliquam voluptas atque. Esse voluptas dolorum illum molestiae facere. Illum voluptas repellat non possimus.</p><p>Ad occaecati sunt repudiandae rem voluptatem. Id omnis est magni et officia qui. Veritatis id maxime delectus architecto aut et.</p><p>Eos qui qui est. Rerum cupiditate praesentium ut esse et dolorem. Maiores similique debitis voluptas. Dolorem corrupti officia sit.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(6, 2, 3, 'Molestiae pariatur placeat earum reiciendis ducimus.', 'iusto-ut-est-corrupti-adipisci-est-dolorum-id', 'Velit accusamus est sint quam omnis recusandae. Et reiciendis quia et debitis et eaque. Modi accusamus itaque tempora. Occaecati et ipsam assumenda a nihil.', '<p>Odit aut fuga quia soluta qui ut magni. Sit a autem voluptas sit. Quia ad est voluptas quibusdam soluta nesciunt repellendus. Qui quis dolorem voluptatem.</p><p>Illo vitae quaerat doloribus sint. Molestiae autem ad est explicabo facilis. Dicta qui qui aut qui exercitationem voluptatum. Eos dolor sed facere eum aut et. Fugiat dicta sit omnis perspiciatis.</p><p>Tempore nihil reprehenderit praesentium veritatis dolor. Voluptatem et cupiditate eos nobis quisquam. Pariatur ut fugiat non pariatur recusandae. Qui quidem reprehenderit autem sint.</p><p>Laudantium quia ducimus dolores. Dolores quis voluptates quos tempora libero vitae amet. Eos sequi modi earum nobis. Mollitia dolores et quibusdam voluptatem facere voluptatem possimus.</p><p>Nisi qui eligendi commodi et pariatur. Nihil minus et ex voluptas. Debitis neque quisquam et neque.</p><p>Ratione id nobis in et cumque quis. Sint velit voluptatibus veniam et facilis voluptas minima sunt.</p><p>Cupiditate distinctio rerum aut sed. Consequatur quam inventore debitis consequatur. Nihil sunt eos consequatur dicta aperiam.</p><p>Vel porro aperiam sint. Qui hic omnis blanditiis soluta. Facilis nesciunt dolorum pariatur excepturi incidunt quisquam voluptate. Dolorem quae commodi delectus consectetur. Ut eum vitae a.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(7, 1, 3, 'Voluptatum deleniti iusto suscipit consectetur.', 'eos-velit-eum-sit-est-labore', 'Sed facere rem exercitationem. Earum voluptatum qui unde quisquam. Qui quo deserunt ut quia tenetur. Rerum voluptate voluptas numquam voluptatem et.', '<p>Ut et rerum exercitationem amet ut. Eius sed dignissimos quibusdam ut. Aut eum et et ea ratione pariatur aut pariatur.</p><p>Qui pariatur consequatur repellat quibusdam qui. Minima accusamus pariatur eum soluta sapiente libero. Ea possimus aut explicabo vero quia porro.</p><p>Accusamus labore voluptas illum nemo et similique architecto. Quisquam nisi assumenda vel qui vero. Dolores atque beatae aut enim. Omnis voluptatem dolorum voluptas voluptates aut similique.</p><p>Debitis voluptas maxime facere temporibus rerum. Labore dicta voluptatem vel qui dolorem quam quia.</p><p>Voluptates amet sit aliquid ipsa. Consequatur tempora qui consequatur placeat. Provident odio maiores impedit expedita quia.</p><p>Voluptatem quo quia sunt qui incidunt eaque. Illum inventore quam ut tempora rem magnam dolore. Vel animi ut sed sed. Nemo sint consequatur necessitatibus enim omnis rerum. Quis nulla architecto rerum ipsum et.</p><p>Neque non sunt sunt sequi nostrum qui. Consequuntur eos accusamus suscipit doloremque natus. Expedita mollitia quae id consequatur. Totam harum omnis exercitationem ea eveniet in nobis.</p><p>Laboriosam unde qui ullam praesentium eos dolor et aut. Unde excepturi nemo in qui dolor a sapiente. Iste totam dolorem et a explicabo. Facilis et voluptatem est aut aut excepturi sunt.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(8, 1, 2, 'Consequatur nesciunt eos velit laborum perferendis.', 'minima-commodi-aperiam-atque-asperiores', 'Laborum est nam soluta unde aut. Aspernatur corporis error suscipit eum nesciunt cupiditate reprehenderit. Sit commodi laudantium et et.', '<p>Recusandae accusamus dolorum asperiores accusamus. Quod consequatur accusantium quidem. Explicabo dolorum explicabo in repellat neque recusandae.</p><p>Sit aut distinctio aut aperiam nulla aut ullam. Ex quo molestias dolore. Iusto est sunt autem debitis et optio velit. Amet voluptatem quisquam ex saepe sint similique.</p><p>Sapiente consectetur et ut aperiam. Corporis ex sit quo commodi eveniet laborum. Reiciendis quaerat amet eius exercitationem illum aut in sunt. Assumenda sit aut voluptatem voluptatibus consequatur aperiam. Facere dolorem est sed explicabo ipsum nisi qui.</p><p>Autem vel error provident et enim facilis. Nisi nostrum doloribus rem quo numquam eos aperiam.</p><p>Eligendi nam modi voluptatem occaecati. Cumque quae voluptatem velit ea qui. Ut quibusdam beatae id provident dolorem earum. Molestiae in voluptate incidunt sunt eum dignissimos.</p><p>In accusamus et voluptate omnis delectus quis veritatis. Nostrum tenetur modi dolores. Sed praesentium natus a voluptatibus. Repellendus voluptatem asperiores temporibus eveniet cum natus.</p><p>Iste ut fugiat voluptatum numquam et voluptas nam nihil. Vel et sint labore voluptate et est autem voluptatibus. Dolores ea maiores voluptatem rem totam quidem.</p><p>Eligendi dignissimos nam aut deserunt repellendus tenetur dolores. Ut earum neque error libero ut fugit veritatis. Tenetur et voluptas consequatur vitae perspiciatis assumenda laudantium.</p><p>Commodi architecto modi temporibus esse magni rem impedit. Veniam voluptatibus minus fuga in doloremque ut. Aut odit deserunt vel nesciunt porro et.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(9, 1, 1, 'Impedit doloremque eaque expedita.', 'necessitatibus-excepturi-voluptatem-quos-non', 'Dolorem labore est autem perferendis. Error fugit ea odio corrupti hic rerum ratione. Et sunt voluptatem fugiat ullam. Omnis quae voluptate culpa. Sunt culpa magnam veniam rerum et.', '<p>Inventore occaecati quod impedit eius id aut sed. Et dolorum dolor corrupti inventore doloribus. Ut fuga molestiae illo. Labore natus sunt voluptas nobis.</p><p>Voluptatibus vel dicta neque et quis ut. Cum culpa aut deleniti eius. Voluptatem porro id voluptate est omnis. Explicabo mollitia sint iure. Adipisci modi deleniti sed amet aut eligendi.</p><p>Vitae eaque saepe voluptatem dolores dignissimos reiciendis id. Non qui consectetur accusamus facere sint non. Voluptas suscipit est mollitia exercitationem fugit. Cupiditate quod odio quo voluptas fugit numquam.</p><p>Officiis eveniet ut veniam est quis. Consequatur officia velit minus. Sed nulla et atque necessitatibus et aut. Eum et autem explicabo praesentium officiis.</p><p>Suscipit ex dolores dolores dignissimos. Et voluptatem ducimus illum. Dicta quibusdam tempore enim.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(10, 2, 1, 'Eos dolores.', 'qui-vel-qui-laboriosam-corporis-corporis', 'Hic facere quibusdam qui tempora. Est ex incidunt nisi cupiditate. Consequatur odio numquam nesciunt ipsam ipsum id harum omnis. Deserunt quis atque eius hic cupiditate aut minima accusantium.', '<p>Nihil hic architecto voluptas. Blanditiis hic occaecati totam omnis. Atque saepe accusamus nostrum qui sed. Veniam reprehenderit magni pariatur vel cumque.</p><p>Est ut nulla quas voluptates in aliquid. Totam maxime molestias corporis quas ullam inventore asperiores. Non sed quae nihil libero quibusdam laborum doloribus. Nisi nihil nisi harum ut qui.</p><p>Aut deleniti molestias exercitationem ea voluptatem voluptatum impedit reprehenderit. Minus magni voluptas ut sunt.</p><p>Dicta beatae nulla autem ut debitis ullam. Eum aut quibusdam fugit voluptatem qui cumque aut. Quod voluptas quos architecto sed.</p><p>Ipsa quasi quia eum in quia. Qui at voluptas dolor culpa quo eum similique. Atque autem soluta dolorem. Sint eligendi et et.</p><p>Recusandae laudantium totam laudantium ut et et et. Qui ipsum placeat corporis sunt labore vel. Est odit tempora omnis maxime doloremque consequuntur.</p>', NULL, '2023-11-09 09:13:42', '2023-11-09 09:13:42');

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
(1, 'Septi Oktaviani', 'soleh24', 'ypradana@gmail.com', '2023-11-09 09:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zGCTFh2Wv6VmttxBAWxGgeWgnBLumFwB00byxgQIxSszdjWUv1L9gOtC11Jn', '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(2, 'Jane Riyanti', 'adhiarja83', 'najwa.uwais@gmail.com', '2023-11-09 09:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tycf72sCqz', '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(3, 'Imam Saputra', 'kusmawati.suci', 'sudiati.paulin@example.net', '2023-11-09 09:13:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N9dD0kHz24', '2023-11-09 09:13:42', '2023-11-09 09:13:42'),
(12, 'mochamad haykal alvegio hadian', 'haykal', 'haykal@gmail.com', NULL, '$2y$10$xA7F1u0yKoHxY1HSxeHsvO6s7h9nZjC7rVmMqQamKUaNr6mKVn.2O', NULL, '2023-11-16 10:23:01', '2023-11-16 10:23:01'),
(13, 'monkey D Luffy', 'crack', 'sasa@gmail.com', NULL, '$2y$10$QFbUyQXY3ohAyqeqVMTs6eVcw6ePjmQoQgg8Pbg8Ryw4B8hff7YWK', NULL, '2023-11-24 22:34:50', '2023-11-24 22:34:50');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
