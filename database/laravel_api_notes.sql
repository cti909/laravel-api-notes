-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2023 at 08:39 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api_notes`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_26_013015_create_notes_table', 1),
(6, '2023_06_28_084626_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(6, 'App\\Models\\User', 16),
(7, 'App\\Models\\User', 16),
(8, 'App\\Models\\User', 16),
(9, 'App\\Models\\User', 16),
(10, 'App\\Models\\User', 16),
(6, 'App\\Models\\User', 17),
(7, 'App\\Models\\User', 17),
(8, 'App\\Models\\User', 17),
(9, 'App\\Models\\User', 17),
(10, 'App\\Models\\User', 17),
(6, 'App\\Models\\User', 18),
(7, 'App\\Models\\User', 18),
(8, 'App\\Models\\User', 18),
(9, 'App\\Models\\User', 18),
(10, 'App\\Models\\User', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `text`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peter 1', 'Aut natus debitis nesciunt quis tempore quibusdam. Et amet ducimus quia. Ab incidunt autem eos aut. Quaerat repellat error et non consequuntur. Vel dolores sint illum officia incidunt quo.', 'https://via.placeholder.com/640x480.png/0044bb?text=autem', 1, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(4, 'Freida Lang', 'Et sequi accusantium perferendis et. Iste a laudantium quae reiciendis odio quisquam culpa. Illo dolorum cumque ipsam dolorem excepturi sit. Et nihil et officia eos.', 'https://via.placeholder.com/640x480.png/0033bb?text=est', 1, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(5, 'Kiarra Homenick', 'Hic mollitia perferendis tenetur possimus labore. Consequatur saepe tempore qui dolorem ipsum. Quis a explicabo quia excepturi. Voluptatem numquam officiis et consectetur accusantium beatae.', 'https://via.placeholder.com/640x480.png/0088ee?text=numquam', 1, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(6, 'Juston Lueilwitz', 'Eaque enim sit sint ducimus aspernatur et autem inventore. Aut exercitationem quia culpa vero laborum error. Suscipit sit sunt adipisci quibusdam consequatur quo.', 'https://via.placeholder.com/640x480.png/007722?text=ab', 2, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(7, 'Rahsaan Reinger', 'Nisi quae eum voluptatem soluta eveniet veniam. Omnis vitae omnis perferendis excepturi harum doloremque tempore voluptatem. Id occaecati praesentium sed ea.', 'https://via.placeholder.com/640x480.png/000099?text=ullam', 2, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(8, 'Evans Lueilwitz Jr.', 'Quia quo quas consequatur qui eaque eum pariatur. Deserunt eaque autem voluptas. Dicta ut iure sit sint facilis.', 'https://via.placeholder.com/640x480.png/002200?text=voluptatibus', 2, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(9, 'Bryon Durgan', 'Expedita iure molestiae placeat qui pariatur et dolor. Omnis exercitationem praesentium sint. Consequatur quae nesciunt omnis consequatur laboriosam excepturi in.', 'https://via.placeholder.com/640x480.png/0055ff?text=sed', 2, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(10, 'Mr. Jerome Halvorson III', 'Qui explicabo sequi laborum est. Nostrum consequatur cumque non et. Consequuntur libero quisquam qui nesciunt porro.', 'https://via.placeholder.com/640x480.png/00dd99?text=ipsum', 2, '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(11, 'Robyn Witting III', 'Aspernatur sint repellat accusamus eum consequuntur. Quia molestiae eos doloremque delectus officiis.', 'https://via.placeholder.com/640x480.png/004411?text=excepturi', 3, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(12, 'Abbey Murazik', 'Voluptatem nesciunt qui accusamus dolorem laborum suscipit. Ut est est molestiae distinctio fuga.', 'https://via.placeholder.com/640x480.png/00eeff?text=ducimus', 3, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(13, 'Yesenia Mayert', 'Aspernatur voluptatem rerum provident fuga consequatur inventore earum molestiae. Quaerat voluptate voluptates cum fugit voluptatem quisquam. Delectus optio velit qui vel voluptatum aut.', 'https://via.placeholder.com/640x480.png/003300?text=quis', 3, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(14, 'Miss Treva Harvey I', 'Odit quo voluptates eaque iure atque. Nulla placeat qui voluptatem ducimus dolorem et et quia. Voluptas occaecati sit et aliquid delectus. Consectetur expedita qui laborum suscipit labore.', 'https://via.placeholder.com/640x480.png/00cc00?text=similique', 3, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(15, 'Mrs. Athena Leffler IV', 'Repellendus minus voluptatem sed autem. Hic suscipit velit et voluptas voluptas quaerat voluptas. Aut perspiciatis officiis quae autem nostrum laboriosam.', 'https://via.placeholder.com/640x480.png/0000bb?text=nesciunt', 3, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(16, 'Karelle Bartell', 'Non quia architecto omnis ab ipsum libero. Alias nemo vero eius blanditiis ratione et. Sint optio perferendis qui consequuntur consectetur. Aspernatur voluptatem blanditiis aperiam velit.', 'https://via.placeholder.com/640x480.png/00bb33?text=provident', 4, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(17, 'Prof. Emmet Wilderman Jr.', 'Voluptatem fugiat eaque accusantium voluptatem hic. In tenetur ea consectetur.', 'https://via.placeholder.com/640x480.png/00ccdd?text=non', 4, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(18, 'Mr. Humberto Mertz', 'Dolorem molestias modi temporibus magni. Deleniti non quia et molestias omnis. Quia natus voluptatibus voluptas labore autem qui. Provident qui voluptatum aut quam.', 'https://via.placeholder.com/640x480.png/003355?text=dicta', 4, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(19, 'Oscar Klocko', 'Accusamus dolore et rerum vero ut tempore eos. Omnis porro quas illo aut nisi laborum consectetur. Est pariatur explicabo et voluptas neque rerum delectus libero. Est sed rerum et dolor.', 'https://via.placeholder.com/640x480.png/0088aa?text=esse', 4, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(20, 'Ryley Orn', 'Quia architecto totam consequuntur qui ut voluptatem quis. Quis ratione nostrum ratione similique nobis deserunt. Sequi sit unde eaque assumenda quis nemo.', 'https://via.placeholder.com/640x480.png/000077?text=voluptatem', 4, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(21, 'Lexie Auer', 'Incidunt molestias facere architecto quia quis. Similique non ratione in sed qui suscipit. In vel nihil quasi perferendis.', 'https://via.placeholder.com/640x480.png/0022dd?text=laborum', 5, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(22, 'Emilia Von', 'Nobis quis harum ea possimus. Tempora qui laudantium ut nostrum aut odit maiores cum. Occaecati architecto aut eius ducimus quaerat. Assumenda mollitia doloremque nemo velit odit molestiae.', 'https://via.placeholder.com/640x480.png/000077?text=explicabo', 5, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(23, 'Mr. Cullen Kozey', 'Et blanditiis velit voluptatem adipisci. Libero modi illo incidunt esse id. Ea nihil eligendi accusantium tempore dolorem.', 'https://via.placeholder.com/640x480.png/00bbcc?text=optio', 5, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(24, 'Enola Leannon', 'Exercitationem deserunt aperiam delectus repellendus officia. Ipsam in blanditiis non dicta. Aliquid consequatur quisquam sunt sit sunt accusamus cupiditate accusantium.', 'https://via.placeholder.com/640x480.png/00ee44?text=iure', 5, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(25, 'Mrs. Alysa Armstrong II', 'Necessitatibus eos voluptatem quo incidunt voluptas dolore provident. Numquam nam iure amet iure omnis et rerum. Magnam voluptate fuga eum magni adipisci occaecati.', 'https://via.placeholder.com/640x480.png/003300?text=et', 5, '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(26, 'Mr. Jayme Heidenreich III', 'At modi facere modi. Voluptatem nesciunt et perspiciatis similique officia accusamus. Esse mollitia sed sit voluptatem corrupti.', 'https://via.placeholder.com/640x480.png/00aa66?text=ex', 6, '2023-07-04 03:33:21', '2023-07-04 03:33:21'),
(27, 'Makayla McDermott Sr.', 'Accusamus nobis veritatis sit et aperiam ducimus. Eaque vel itaque ut culpa doloribus id. Dolorum molestiae voluptas est magni corrupti deleniti. Asperiores quia ratione et tempore.', 'https://via.placeholder.com/640x480.png/0066cc?text=quia', 6, '2023-07-04 03:33:21', '2023-07-04 03:33:21'),
(28, 'Brain Toy', 'Eum possimus maxime enim enim numquam voluptatum. Est aliquid dolore laborum. Sapiente consequatur laudantium aut aliquam ratione eum.', 'https://via.placeholder.com/640x480.png/0088ff?text=accusantium', 6, '2023-07-04 03:33:21', '2023-07-04 03:33:21'),
(29, 'Mr. Quinn Halvorson', 'Aut explicabo beatae vitae dolorem. Neque aut nihil voluptate ea fugit vero. Fugit recusandae nihil dolore non saepe. Dignissimos ea deleniti et quas.', 'https://via.placeholder.com/640x480.png/00aacc?text=esse', 6, '2023-07-04 03:33:21', '2023-07-04 03:33:21'),
(30, 'Sebastian Dickens DVM', 'Vel voluptatum necessitatibus ratione enim et hic. Ab quisquam odit dignissimos inventore voluptas.', 'https://via.placeholder.com/640x480.png/00bb77?text=aut', 6, '2023-07-04 03:33:21', '2023-07-04 03:33:21'),
(31, 'Jarod Towne', 'Possimus odio consequuntur hic in similique. Magni non eum eum nesciunt eligendi voluptatibus aut sed. Consequatur deserunt consequatur et.', 'https://via.placeholder.com/640x480.png/0011cc?text=et', 7, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(32, 'Lupe Schuppe', 'Enim deleniti sint voluptatum consequatur. Recusandae debitis ullam sed esse qui quo.', 'https://via.placeholder.com/640x480.png/00bb44?text=et', 7, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(33, 'Prof. Jerod Volkman', 'Dolor ad quia aut cupiditate tempora sequi. Ut molestiae ea placeat autem placeat officiis et.', 'https://via.placeholder.com/640x480.png/004433?text=autem', 7, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(34, 'Theodore Stanton', 'Magnam non ratione magnam harum libero. In consectetur sit dolor et. Explicabo dolores at aliquam dignissimos officia quo iusto. Asperiores voluptas ut voluptas et cum rem omnis.', 'https://via.placeholder.com/640x480.png/0044cc?text=neque', 7, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(35, 'Mrs. Nora Daugherty II', 'Quia numquam quos sunt velit sit placeat mollitia tempore. Illum fugit porro dolore harum quos vero. Aspernatur ullam tempore neque nesciunt.', 'https://via.placeholder.com/640x480.png/00dd88?text=nam', 7, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(36, 'Chelsea Mitchell', 'Sed eos aliquid non. Autem ipsum necessitatibus voluptas fuga et.', 'https://via.placeholder.com/640x480.png/00dd44?text=quos', 8, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(37, 'Hallie Kunde', 'Deserunt autem reiciendis harum ex. Ex illo sit et dolore. Et culpa esse aliquid exercitationem molestiae. Exercitationem ducimus optio quis aut quae.', 'https://via.placeholder.com/640x480.png/007777?text=est', 8, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(38, 'Mitchel Wiza', 'Odio est possimus autem placeat eveniet. Ipsam blanditiis recusandae incidunt atque voluptas sint odio. Ut architecto est dolores est qui odio.', 'https://via.placeholder.com/640x480.png/00bb88?text=minima', 8, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(39, 'Kraig Daniel', 'Explicabo inventore debitis quisquam quaerat. Sunt optio adipisci eos aspernatur hic molestiae occaecati. Rem nihil necessitatibus dolorem et id sunt totam. Voluptas sunt ut non rerum.', 'https://via.placeholder.com/640x480.png/0011ee?text=atque', 8, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(40, 'Alysha Weimann DVM', 'Quae ut excepturi aliquid omnis cumque. Aspernatur id reprehenderit quisquam doloribus. Voluptates earum quas est provident veniam et ipsam.', 'https://via.placeholder.com/640x480.png/001100?text=quae', 8, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(41, 'Benny McDermott', 'Laudantium totam quas dicta. Vero distinctio hic ea earum. Ut ea eaque laborum sequi assumenda dicta.', 'https://via.placeholder.com/640x480.png/0033ff?text=ullam', 9, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(42, 'Vincent Crona', 'Fugiat autem vel odio est modi. Ipsa quis laudantium facere architecto et atque quia. Voluptates possimus voluptatum blanditiis voluptas alias impedit.', 'https://via.placeholder.com/640x480.png/0066bb?text=et', 9, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(43, 'Al Rutherford', 'Voluptatem voluptates rerum eos quis quis dolorem. Eaque omnis rerum qui tempora suscipit quod quibusdam. Nihil error dolorem quas recusandae rerum velit est.', 'https://via.placeholder.com/640x480.png/005500?text=praesentium', 9, '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(44, 'Bryana Bosco', 'Voluptates maxime ut voluptatem sed provident voluptas consectetur. Sit qui commodi sint omnis. Et quis fugit sapiente rem voluptates illo. Qui non id quam qui quo.', 'https://via.placeholder.com/640x480.png/00dd77?text=provident', 9, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(45, 'Burley Gorczany MD', 'Et animi non dolores rerum itaque consequuntur consequatur. Cupiditate aspernatur repellat sed autem distinctio nobis maiores. Est eum culpa autem libero repellendus eum.', 'https://via.placeholder.com/640x480.png/0044dd?text=modi', 9, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(46, 'Sebastian Anderson Sr.', 'Occaecati explicabo accusamus placeat praesentium. Quos voluptas molestias non quis laboriosam minus maiores. Error maiores et non id. Dolor accusantium autem enim.', 'https://via.placeholder.com/640x480.png/009955?text=et', 10, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(47, 'Nicklaus Shanahan III', 'Vel ex esse quis quae aperiam id. Rem nostrum ipsam cum rerum.', 'https://via.placeholder.com/640x480.png/000011?text=aut', 10, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(48, 'Miss Ruthe Gibson I', 'Nostrum commodi sint deleniti. Vel voluptates quaerat ut quia omnis odit dolorum. Esse est nobis exercitationem omnis.', 'https://via.placeholder.com/640x480.png/00bb66?text=deserunt', 10, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(49, 'Reginald Hettinger', 'Dolorem assumenda et neque id quidem quasi et adipisci. Aliquam magnam aut est corporis officiis eum autem. Est voluptas consequatur neque ducimus optio. Est ut delectus dolores.', 'https://via.placeholder.com/640x480.png/00ff99?text=nobis', 10, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(50, 'Leonie Orn DVM', 'Autem et et rerum quibusdam corporis architecto pariatur. Repellat aliquam laboriosam aspernatur nemo dolorum velit voluptas. Harum est beatae deleniti voluptatum.', 'https://via.placeholder.com/640x480.png/006600?text=corporis', 10, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(51, 'Prof. Eriberto Spencer', 'Sint rem nesciunt aut officia eaque. Deleniti aspernatur est ut. Laboriosam et molestiae facere velit labore eveniet tempore. Sequi vitae quisquam rerum ullam voluptatibus ipsum.', 'https://via.placeholder.com/640x480.png/0022cc?text=atque', 11, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(52, 'Ella Corkery PhD', 'Perspiciatis velit inventore voluptatibus veniam. Quo impedit autem qui voluptas id neque nihil sit. Facilis iste accusantium numquam adipisci in. Saepe sed in facere dolore voluptate dolore.', 'https://via.placeholder.com/640x480.png/008877?text=omnis', 11, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(53, 'Deontae Zieme', 'At hic accusamus error alias. Et sed explicabo est aut. Iure tempora consequatur ad quidem aliquid vero.', 'https://via.placeholder.com/640x480.png/003377?text=expedita', 11, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(54, 'Jalen Nienow', 'Quam repudiandae omnis voluptatem. Sed possimus nesciunt quo. Illo maxime inventore magnam vitae. Odio iure voluptatem iusto maiores harum.', 'https://via.placeholder.com/640x480.png/0044cc?text=delectus', 11, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(55, 'Chauncey Zieme', 'Et ut sit aspernatur. Ducimus et praesentium atque atque laudantium eum. Consequatur sed est doloribus quidem sit accusantium perferendis.', 'https://via.placeholder.com/640x480.png/00eeff?text=cum', 11, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(56, 'Dr. Dameon Blick', 'Numquam minus omnis molestias debitis voluptatem. Perspiciatis consequatur in a et et vero. Est optio fugit rerum qui.', 'https://via.placeholder.com/640x480.png/003377?text=nisi', 12, '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(57, 'Kareem Prosacco II', 'Minima iusto illo totam molestias non. Et sit consequatur autem repellat a. Incidunt omnis ipsum architecto voluptas rerum sit velit.', 'https://via.placeholder.com/640x480.png/000077?text=quia', 12, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(58, 'Mr. Kade Shields III', 'Debitis illo autem aut cupiditate dolore. Asperiores laudantium sunt earum rerum quibusdam. Ex quos aut laborum et itaque voluptatum aut. Quasi autem sint atque dignissimos odio eos est rerum.', 'https://via.placeholder.com/640x480.png/000011?text=repellat', 12, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(59, 'Dr. Murl White', 'Ut dolorem ullam nam magnam eaque magnam. Aut exercitationem et sunt. Quis molestias aut dolore odio corporis a. Debitis blanditiis quaerat et ut cumque sunt consectetur.', 'https://via.placeholder.com/640x480.png/00ddee?text=repudiandae', 12, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(60, 'Audrey Boyle', 'Sunt delectus fugit delectus. Et inventore deserunt numquam necessitatibus corrupti error. Fugit consequatur nisi alias vel voluptas molestiae. Vel tenetur omnis qui sit maiores voluptas.', 'https://via.placeholder.com/640x480.png/005566?text=nulla', 12, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(61, 'Elenor Abbott', 'Sint doloremque fugiat cumque tenetur atque et. Dignissimos dolores est corrupti. Enim corporis deserunt officia. Ipsa ut itaque velit sit nihil quam enim.', 'https://via.placeholder.com/640x480.png/00aabb?text=modi', 13, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(62, 'Danyka Langworth', 'Consequatur voluptatem nam corrupti labore. Magnam similique tenetur ipsam incidunt sed molestiae laudantium consectetur. Eos impedit sunt cupiditate non nihil nulla.', 'https://via.placeholder.com/640x480.png/00bb88?text=omnis', 13, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(63, 'Mrs. Laila Haley', 'Quisquam ut illo quidem maxime. Qui voluptatem facere explicabo possimus. Est commodi distinctio et ea. Impedit recusandae cum magnam dolor.', 'https://via.placeholder.com/640x480.png/0022dd?text=accusantium', 13, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(64, 'Ethel Rolfson', 'Consequuntur facilis nemo quibusdam repellendus dolore ex dolores. Delectus aut nihil sit aut consequatur. Quia eos perferendis voluptatem et.', 'https://via.placeholder.com/640x480.png/00ddbb?text=est', 13, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(65, 'Dr. Augustine Rolfson', 'Et sint iure adipisci odit consequatur incidunt. Rerum inventore autem dolorem at enim architecto.', 'https://via.placeholder.com/640x480.png/003300?text=consequuntur', 13, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(66, 'Mr. Monroe VonRueden', 'Atque nisi reiciendis nihil aut ullam et veniam. Voluptas laborum possimus officiis esse rerum iusto. Illo illo ut error cum doloribus voluptas.', 'https://via.placeholder.com/640x480.png/00aa88?text=consequatur', 14, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(67, 'Dr. Karianne Kautzer', 'Asperiores harum quis architecto facere. Autem consectetur voluptas quo laborum at. Omnis accusantium libero mollitia ipsum et.', 'https://via.placeholder.com/640x480.png/0099aa?text=aut', 14, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(68, 'Ms. Ocie Miller', 'Quaerat rerum quas facilis inventore. Quia ullam animi voluptas qui id cumque. Dolorem ex sed dolor aut enim libero velit. Vitae nobis similique iusto doloribus ratione.', 'https://via.placeholder.com/640x480.png/0044aa?text=et', 14, '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(69, 'Mr. Christopher Heidenreich', 'Quaerat rerum necessitatibus odio dolorem non. Et necessitatibus sequi temporibus et. Corporis veritatis quo dolorum optio aut explicabo qui voluptatum. Dolor unde modi et aut adipisci.', 'https://via.placeholder.com/640x480.png/00bbbb?text=laborum', 14, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(70, 'Santino Abernathy Jr.', 'Suscipit sint aliquid eaque adipisci eum rerum sit. Sit atque error libero iusto nihil. Commodi ad totam expedita sequi.', 'https://via.placeholder.com/640x480.png/001199?text=rerum', 14, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(71, 'Edmond Kilback', 'Ut nulla beatae quia. Est laboriosam non illo non ad quisquam.', 'https://via.placeholder.com/640x480.png/00aa22?text=omnis', 15, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(72, 'Lonnie Nienow', 'Perferendis nisi qui praesentium eos recusandae odit. Voluptate ab distinctio esse voluptate et quidem. Consequatur atque inventore velit id eius.', 'https://via.placeholder.com/640x480.png/0055cc?text=eum', 15, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(73, 'Ms. Shayna Rodriguez II', 'Vero vel et ipsum ut. Veritatis maxime voluptate repellendus tenetur ullam eum magnam. Excepturi assumenda provident iusto et.', 'https://via.placeholder.com/640x480.png/00aaee?text=autem', 15, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(74, 'Kameron Gleichner', 'Non eveniet reprehenderit et. Quia nihil voluptatibus dignissimos tempore quod explicabo. Reprehenderit reprehenderit nostrum quia libero ducimus. Esse minima voluptatem aut.', 'https://via.placeholder.com/640x480.png/00ff99?text=ratione', 15, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(75, 'Prof. Yazmin Purdy Jr.', 'Iste quia alias eveniet autem ullam praesentium. Animi ea eligendi numquam. Sit laudantium et sed et nihil fuga nulla.', 'https://via.placeholder.com/640x480.png/00eecc?text=voluptatem', 15, '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(76, 'stiod', 'axc', 's', 1, '2023-07-20 03:46:45', '2023-07-20 03:46:45'),
(82, 'accii lux', 'acv', NULL, 16, '2023-07-20 07:16:45', '2023-07-20 09:38:50'),
(83, 'sing', 'andree', NULL, 16, '2023-07-20 07:17:31', '2023-07-20 09:40:42'),
(85, 'singer', 'sing my song', NULL, 16, '2023-07-20 09:40:17', '2023-07-20 09:40:17'),
(92, 'sf', 'wfa<br/>sf<br/>sf', NULL, 16, '2023-07-21 06:59:14', '2023-07-21 07:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-user', 'api', '2023-07-04 03:33:17', '2023-07-04 03:33:17'),
(2, 'read-all-user', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(3, 'read-detail-user', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(4, 'update-user', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(5, 'delete-user', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(6, 'create-note', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(7, 'read-all-note', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(8, 'read-detail-note', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(9, 'update-note', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(10, 'delete-note', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18'),
(2, 'member', 'api', '2023-07-04 03:33:18', '2023-07-04 03:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_email_code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_email_expired_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `otp_email_code`, `otp_email_expired_at`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Hadley Kozey MD', 'xkoelpin@example.org', 'https://via.placeholder.com/640x480.png/00ddaa?text=provident', '617013', '2023-07-04 03:33:19', '2023-07-04 03:33:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ku9n35p4l6', '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(2, 'Kaitlin Jenkins', 'lloyd.hudson@example.net', 'https://via.placeholder.com/640x480.png/007755?text=beatae', '116127', '2023-07-04 03:33:19', '2023-07-04 03:33:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pGut09gph1', '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(3, 'Rudolph Gibson', 'hauck.freddy@example.com', 'https://via.placeholder.com/640x480.png/000011?text=et', '894068', '2023-07-04 03:33:19', '2023-07-04 03:33:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u2ZmiKMYuK', '2023-07-04 03:33:19', '2023-07-04 03:33:19'),
(4, 'Shaniya Mayer', 'kris.jessy@example.net', 'https://via.placeholder.com/640x480.png/00cc00?text=dolore', '126517', '2023-07-04 03:33:19', '2023-07-04 03:33:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aseo66Oz6H', '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(5, 'Aryanna Toy III', 'osvaldo.keeling@example.net', 'https://via.placeholder.com/640x480.png/00bb77?text=labore', '864403', '2023-07-04 03:33:19', '2023-07-04 03:33:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zra5HtNFwY', '2023-07-04 03:33:20', '2023-07-04 03:33:20'),
(6, 'Christopher Hills MD', 'hklein@example.org', 'https://via.placeholder.com/640x480.png/008866?text=culpa', '304886', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Y9urUQxcE', '2023-07-04 03:33:21', '2023-07-04 03:33:21'),
(7, 'Mallory Steuber', 'haylee98@example.com', 'https://via.placeholder.com/640x480.png/00aabb?text=voluptas', '471170', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YHARipuEmC', '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(8, 'Diamond Romaguera', 'schmeler.blaise@example.com', 'https://via.placeholder.com/640x480.png/005544?text=iste', '500079', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dBrgKsbEI8', '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(9, 'Prof. Oral Dooley', 'chase93@example.net', 'https://via.placeholder.com/640x480.png/0099ee?text=quia', '237363', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'okFVeLO8v7', '2023-07-04 03:33:22', '2023-07-04 03:33:22'),
(10, 'Dr. Cristina Jones', 'lmayert@example.net', 'https://via.placeholder.com/640x480.png/008899?text=architecto', '345553', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LLbLcbf9DP', '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(11, 'Dr. Danielle Stamm', 'frankie.moen@example.org', 'https://via.placeholder.com/640x480.png/00dd77?text=debitis', '385069', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nctRjHR6z5', '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(12, 'Prof. Bryana Roberts', 'oharvey@example.org', 'https://via.placeholder.com/640x480.png/0044bb?text=in', '621297', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3bV3RyagZz', '2023-07-04 03:33:23', '2023-07-04 03:33:23'),
(13, 'Berry Bergnaum', 'preston.herzog@example.org', 'https://via.placeholder.com/640x480.png/001133?text=qui', '896705', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BddKX7oa07', '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(14, 'Jordane Gutmann V', 'madaline23@example.org', 'https://via.placeholder.com/640x480.png/00aa77?text=voluptate', '990691', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cARzYX2lPI', '2023-07-04 03:33:24', '2023-07-04 03:33:24'),
(15, 'Mr. Hugh Armstrong', 'von.hailie@example.com', 'https://via.placeholder.com/640x480.png/001111?text=est', '724622', '2023-07-04 03:33:21', '2023-07-04 03:33:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TeDv5TpXFN', '2023-07-04 03:33:25', '2023-07-04 03:33:25'),
(16, 'Cong Tien', 'dctien1257@gmail.com', NULL, '228272', '2023-07-04 07:33:44', '2023-07-04 07:35:12', '$2y$10$COiy9WCkoL9RwTl/sps1Uu3zi8rmTI4jy008szZtiDrOahiDHB2Me', NULL, '2023-07-04 03:44:12', '2023-07-04 07:35:12'),
(17, 'Thanh Tu', 'gosu@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$wPPmkBipyvD4VUspRlPFXuhZNFu.ArE8gNExE7czaJFxKjjRzCHSC', NULL, '2023-07-19 03:09:43', '2023-07-19 03:09:43'),
(18, 'Phong Hung', 'phongbk@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$oVtb10seoZPoVlUaXcaSQeFdVba4D5eH/uHQHEj5yJMFuzdlj02IK', NULL, '2023-07-19 03:14:32', '2023-07-19 03:14:32');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
